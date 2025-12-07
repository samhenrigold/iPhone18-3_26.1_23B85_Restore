void VideoMessagePlayerManager.setupVideo(with:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for URL();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for AVAsset, 0x1E6987E28);
  (*(v6 + 16))(v9, a1, v4);
  v11 = @nonobjc AVAsset.__allocating_init(url:)(v9, v10);
  v12 = objc_allocWithZone(MEMORY[0x1E69880B0]);
  v14 = @nonobjc AVPlayerItem.init(asset:automaticallyLoadedAssetKeys:)(v11, &outlined read-only object #0 of VideoMessagePlayerManager.setupVideo(with:), v13);
  OUTLINED_FUNCTION_9_86();
  v16 = *(v15 + 80);
  OUTLINED_FUNCTION_9_86();
  v18 = *(v17 + 88);
  v19 = *(v18 + 40);
  v20 = v14;
  v19(v14, v16, v18);
  VideoMessagePlayerManager.setupVideo(with:)(a2);
}

id @nonobjc AVAsset.__allocating_init(url:)@<X0>(uint64_t a1@<X0>, NSURL *a2@<X8>)
{
  URL._bridgeToObjectiveC()(a2);
  v4 = v3;
  v5 = [swift_getObjCClassFromMetadata() assetWithURL_];

  type metadata accessor for URL();
  OUTLINED_FUNCTION_7_0();
  (*(v6 + 8))(a1);
  return v5;
}

void closure #1 in VideoMessagePlayerManager.setUpNotifications()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v10 = MEMORY[0x1E69E7D40];
  if (Strong && (v11 = *(Strong + *(*Strong + 104)), v12 = , v13 = (*((*v10 & *v11) + 0xF0))(v12), v11, !v13) || (swift_beginAccess(), (v14 = swift_weakLoadStrong()) != 0) && (v15 = *(v14 + *(*v14 + 104)), v16 = , v17 = (*((*v10 & *v15) + 0xF0))(v16), v15, v17 == 1))
  {
    swift_beginAccess();
    v18 = swift_weakLoadStrong();
    if (v18)
    {
      v19 = *(v18 + *(*v18 + 104));

      (*((*v10 & *v19) + 0xF8))(3);
    }

    swift_beginAccess();
    v20 = swift_weakLoadStrong();
    if (v20)
    {
      v21 = v20;
      v22 = *(*v20 + 96);
      swift_beginAccess();
      if (__swift_getEnumTagSinglePayload(v21 + v22, 1, a3))
      {
      }

      else
      {
        (*(v6 + 16))(v8, v21 + v22, a3);

        (*(a4 + 48))(*MEMORY[0x1E6960CC0], *(MEMORY[0x1E6960CC0] + 8), *(MEMORY[0x1E6960CC0] + 16), a3, a4);
        (*(v6 + 8))(v8, a3);
      }
    }
  }
}

uint64_t closure #2 in VideoMessagePlayerManager.setUpNotifications()(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    VideoMessagePlayerManager.updatePlayer(with:)(v2);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    VideoMessagePlayerManager.updateHostController(using:)(v2);
  }

  return result;
}

uint64_t VideoMessagePlayerManager.updatePlayer(with:)(unsigned __int8 a1)
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  if (a1 > 1u)
  {
    swift_beginAccess();
    v6 = *(v2 + 80);
    if (!__swift_getEnumTagSinglePayload(v1 + v3, 1, v6))
    {
      v7.n128_u64[0] = 0;
      (*(*(v2 + 88) + 16))(v6, v7);
    }
  }

  else
  {
    swift_beginAccess();
    v4 = *(v2 + 80);
    if (!__swift_getEnumTagSinglePayload(v1 + v3, 1, v4))
    {
      v5.n128_u32[0] = 1.0;
      (*(*(v2 + 88) + 16))(v4, v5);
    }
  }

  return swift_endAccess();
}

void VideoMessagePlayerManager.updateHostController(using:)(char a1)
{
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v6[4] = partial apply for closure #1 in VideoMessagePlayerManager.updateHostController(using:);
  v6[5] = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = thunk for @escaping @callee_guaranteed () -> ();
  v6[3] = &block_descriptor_83;
  v5 = _Block_copy(v6);

  [v3 animateWithDuration:v5 animations:0.25];
  _Block_release(v5);
}

uint64_t closure #1 in VideoMessagePlayerManager.fetchDuration(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return MEMORY[0x1EEE6DFA0](closure #1 in VideoMessagePlayerManager.fetchDuration(from:), 0, 0);
}

uint64_t closure #1 in VideoMessagePlayerManager.fetchDuration(from:)()
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v0[8] = type metadata accessor for MainActor();
    v0[9] = static MainActor.shared.getter();
    v3 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x1EEE6DFA0](closure #1 in VideoMessagePlayerManager.fetchDuration(from:), v3, v2);
  }

  else
  {
    OUTLINED_FUNCTION_13();

    return v4();
  }
}

{
  OUTLINED_FUNCTION_24_0();
  v1 = *(v0 + 48);

  *(v0 + 80) = [v1 asset];

  return MEMORY[0x1EEE6DFA0](closure #1 in VideoMessagePlayerManager.fetchDuration(from:), 0, 0);
}

{
  OUTLINED_FUNCTION_24_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12AVFoundation15AVAsyncPropertyCySo7AVAssetCSo6CMTimeaGMd, &_s12AVFoundation15AVAsyncPropertyCySo7AVAssetCSo6CMTimeaGMR);
  *(v0 + 88) = static AVPartialAsyncProperty<A>.duration.getter();
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = closure #1 in VideoMessagePlayerManager.fetchDuration(from:);
  OUTLINED_FUNCTION_3_0();

  return MEMORY[0x1EEE68140]();
}

{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 80);
  if (v0)
  {

    v4 = closure #1 in CallHoldingButtonViewController.buttonTapped();
  }

  else
  {

    v4 = closure #1 in VideoMessagePlayerManager.fetchDuration(from:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  OUTLINED_FUNCTION_24_0();
  *(v0 + 112) = *(v0 + 144);
  *(v0 + 128) = *(v0 + 160);
  *(v0 + 136) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in VideoMessagePlayerManager.fetchDuration(from:), v2, v1);
}

void closure #1 in VideoMessagePlayerManager.fetchDuration(from:)()
{
  v1 = v0[16];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];
  v5 = v0[7];

  closure #1 in closure #1 in VideoMessagePlayerManager.fetchDuration(from:)(v5, v3, v2, v1);
  if (v4)
  {
  }

  else
  {

    MEMORY[0x1EEE6DFA0](closure #1 in CallHoldingButtonViewController.buttonTapped(), 0, 0);
  }
}

uint64_t closure #1 in closure #1 in VideoMessagePlayerManager.fetchDuration(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + *(*a1 + 104));
  CMTime.seconds.getter();
  if (v5 <= 0.0)
  {
    goto LABEL_6;
  }

  if (one-time initialization token for timeFormatter != -1)
  {
    swift_once();
  }

  v6 = static NSDateComponentsFormatter.timeFormatter;
  CMTime.seconds.getter();
  v7 = [v6 stringFromTimeInterval_];

  if (v7)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
LABEL_6:
    v8 = static String.localizedStringWithFormat(_:_:)();
    v10 = v11;
  }

  return (*((*MEMORY[0x1E69E7D40] & *v4) + 0x158))(v8, v10);
}

void closure #1 in VideoMessagePlayerManager.updateHostController(using:)(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong navigationController];

    if (v5)
    {
      v6 = [v5 navigationBar];

      v7 = 1.0;
      if (!a2)
      {
        v7 = 0.0;
      }

      [v6 setAlpha_];
    }
  }
}

uint64_t VideoMessagePlayerManager.deinit()
{
  v1 = *(*v0 + 96);
  type metadata accessor for Optional();
  OUTLINED_FUNCTION_7_0();
  (*(v2 + 8))(v0 + v1);
  OUTLINED_FUNCTION_0_1();

  OUTLINED_FUNCTION_0_1();

  OUTLINED_FUNCTION_0_1();

  OUTLINED_FUNCTION_0_1();
  MEMORY[0x1BFB23F10](v0 + *(v4 + 128));
  return v0;
}

uint64_t VideoMessagePlayerManager.__deallocating_deinit()
{
  VideoMessagePlayerManager.deinit();

  return swift_deallocClassInstance();
}

id (*protocol witness for VideoMessagePlayer.rate.modify in conformance AVPlayer(uint64_t a1))(uint64_t a1, double a2)
{
  v3 = *v1;
  *a1 = *v1;
  [v3 rate];
  *(a1 + 8) = v4;
  return protocol witness for VideoMessagePlayer.rate.modify in conformance AVPlayer;
}

id @nonobjc AVPlayer.currentItem.getter()
{
  v1 = [v0 currentItem];

  return v1;
}

Class protocol witness for VideoMessagePlayer.init(playerItem:) in conformance AVPlayer@<X0>(AVPlayerItem_optional a1@<0:X0, 8:X1, 16:W2.1>, Class *a2@<X8>)
{
  result = AVPlayer.__allocating_init(playerItem:)(a1).super.isa;
  *a2 = result;
  return result;
}

AVPlayer __swiftcall AVPlayer.__allocating_init(playerItem:)(AVPlayerItem_optional playerItem)
{
  isa = playerItem.value.super.isa;
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPlayerItem_];

  v4 = v2;
  result._player = v3;
  result.super.isa = v4;
  return result;
}

id @nonobjc AVPlayer.seek(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[0] = a1;
  v5[1] = a2;
  v5[2] = a3;
  return [v3 seekToTime_];
}

id @nonobjc AVPlayerItem.init(asset:automaticallyLoadedAssetKeys:)(void *a1, uint64_t a2, double a3)
{
  if (a2)
  {
    v5.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  v6 = [v3 initWithAsset:a1 automaticallyLoadedAssetKeys:v5.super.isa];

  return v6;
}

uint64_t type metadata completion function for VideoMessagePlayerManager(uint64_t a1)
{
  result = type metadata accessor for Optional();
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

uint64_t partial apply for closure #1 in VideoMessagePlayerManager.fetchDuration(from:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[6];
  v6 = v1[7];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #2 in closure #1 in variable initialization expression of static CallScreeningViewModelComposer.viewModel;

  return closure #1 in VideoMessagePlayerManager.fetchDuration(from:)(a1, v4, v5, v7, v6);
}

void specialized Array.reserveCapacity(_:)(uint64_t a1)
{
  v3 = *v1;
  if (!swift_isUniquelyReferenced_nonNull_native() || a1 > *(v3 + 24) >> 1)
  {
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v3 = v4;
  }

  *v1 = v3;
}

Swift::Int CellularAudioSampleNormalizer.Errors.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CellularAudioSampleNormalizer.Errors(uint64_t a1)
{
  Hasher.init(_seed:)();
  CellularAudioSampleNormalizer.Errors.hash(into:)();
  return Hasher._finalize()();
}

void CellularAudioSampleNormalizer.frameCount.getter()
{
  if (*(v0 + 24) == 1)
  {
    OUTLINED_FUNCTION_0_1();
    (*(v1 + 488))();
    OUTLINED_FUNCTION_0_1();
    (*(v2 + 512))();
    OUTLINED_FUNCTION_8_90();
    if (v5 ^ v6 | v4)
    {
      if (v3 > -9.2234e18)
      {
        if (v3 < 9.2234e18)
        {
          *(v0 + 16) = v3;
          *(v0 + 24) = 0;
          return;
        }

        goto LABEL_9;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_9:
    __break(1u);
  }
}

uint64_t CellularAudioSampleNormalizer.frameCount.setter(uint64_t result)
{
  *(v1 + 16) = result;
  *(v1 + 24) = 0;
  return result;
}

uint64_t CellularAudioSampleNormalizer.frameCount.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_4_3(a1);
  CellularAudioSampleNormalizer.frameCount.getter();
  *v1 = v2;
  return OUTLINED_FUNCTION_8_1();
}

void *CellularAudioSampleNormalizer.frameCount.modify(void *result)
{
  v1 = result[1];
  *(v1 + 16) = *result;
  *(v1 + 24) = 0;
  return result;
}

void CellularAudioSampleNormalizer.log2FrameCount.getter()
{
  if (*(v0 + 40) == 1)
  {
    OUTLINED_FUNCTION_0_1();
    v2 = (*(v1 + 200))();
    v3 = round(log2(v2));
    if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v3 > -1.0)
    {
      if (v3 < 1.84467441e19)
      {
        *(v0 + 32) = v3;
        *(v0 + 40) = 0;
        return;
      }

      goto LABEL_9;
    }

    __break(1u);
LABEL_9:
    __break(1u);
  }
}

uint64_t CellularAudioSampleNormalizer.log2FrameCount.setter(uint64_t result)
{
  *(v1 + 32) = result;
  *(v1 + 40) = 0;
  return result;
}

uint64_t CellularAudioSampleNormalizer.log2FrameCount.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_4_3(a1);
  CellularAudioSampleNormalizer.log2FrameCount.getter();
  *v1 = v2;
  return OUTLINED_FUNCTION_8_1();
}

void *CellularAudioSampleNormalizer.log2FrameCount.modify(void *result)
{
  v1 = result[1];
  *(v1 + 32) = *result;
  *(v1 + 40) = 0;
  return result;
}

uint64_t CellularAudioSampleNormalizer.bufferSizePowerOf2.getter()
{
  if (*(v0 + 56) != 1)
  {
    return *(v0 + 48);
  }

  OUTLINED_FUNCTION_0_1();
  v2 = (*(v1 + 224))();
  if (v2 >= 0x40)
  {
    result = 0;
  }

  else
  {
    result = 1 << v2;
  }

  *(v0 + 48) = result;
  *(v0 + 56) = 0;
  return result;
}

uint64_t CellularAudioSampleNormalizer.bufferSizePowerOf2.setter(uint64_t result)
{
  *(v1 + 48) = result;
  *(v1 + 56) = 0;
  return result;
}

uint64_t CellularAudioSampleNormalizer.bufferSizePowerOf2.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_4_3(a1);
  *v1 = CellularAudioSampleNormalizer.bufferSizePowerOf2.getter();
  return OUTLINED_FUNCTION_8_1();
}

void *CellularAudioSampleNormalizer.bufferSizePowerOf2.modify(void *result)
{
  v1 = result[1];
  *(v1 + 48) = *result;
  *(v1 + 56) = 0;
  return result;
}

uint64_t CellularAudioSampleNormalizer.inputCount.getter()
{
  if (*(v0 + 72) != 1)
  {
    return *(v0 + 64);
  }

  OUTLINED_FUNCTION_0_1();
  result = (*(v1 + 248))() / 2;
  *(v0 + 64) = result;
  *(v0 + 72) = 0;
  return result;
}

uint64_t CellularAudioSampleNormalizer.inputCount.setter(uint64_t result)
{
  *(v1 + 64) = result;
  *(v1 + 72) = 0;
  return result;
}

uint64_t CellularAudioSampleNormalizer.inputCount.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_4_3(a1);
  *v1 = CellularAudioSampleNormalizer.inputCount.getter();
  return OUTLINED_FUNCTION_8_1();
}

void *CellularAudioSampleNormalizer.inputCount.modify(void *result)
{
  v1 = result[1];
  *(v1 + 64) = *result;
  *(v1 + 72) = 0;
  return result;
}

float CellularAudioSampleNormalizer.normalizationFactor.getter()
{
  if ((*(v0 + 80) & 1) == 0)
  {
    return *(v0 + 76);
  }

  OUTLINED_FUNCTION_0_1();
  result = 2.0 / (*(v1 + 272))();
  *(v0 + 76) = result;
  *(v0 + 80) = 0;
  return result;
}

uint64_t *(*CellularAudioSampleNormalizer.normalizationFactor.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  *(a1 + 8) = CellularAudioSampleNormalizer.normalizationFactor.getter();
  return CellularAudioSampleNormalizer.normalizationFactor.modify;
}

uint64_t *CellularAudioSampleNormalizer.normalizationFactor.modify(uint64_t *result)
{
  v1 = *result;
  *(v1 + 76) = *(result + 2);
  *(v1 + 80) = 0;
  return result;
}

uint64_t key path setter for CellularAudioSampleNormalizer.realBuffer : CellularAudioSampleNormalizer(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 328);

  return v2(v3);
}

uint64_t CellularAudioSampleNormalizer.realBuffer.getter()
{
  if (*(v0 + 88))
  {
    v1 = *(v0 + 88);
  }

  else
  {
    OUTLINED_FUNCTION_0_1();
    v3 = (*(v2 + 272))();
    v1 = _sSa9repeating5countSayxGx_SitcfCSf_Tt1g5(v3, 0.0);
    *(v0 + 88) = v1;
  }

  return v1;
}

uint64_t CellularAudioSampleNormalizer.realBuffer.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_4_3(a1);
  *v1 = CellularAudioSampleNormalizer.realBuffer.getter();
  return OUTLINED_FUNCTION_8_1();
}

double CellularAudioSampleNormalizer.realBuffer.modify(void *a1)
{
  *(a1[1] + 88) = *a1;

  return result;
}

uint64_t key path setter for CellularAudioSampleNormalizer.imagBuffer : CellularAudioSampleNormalizer(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 352);

  return v2(v3);
}

uint64_t CellularAudioSampleNormalizer.imagBuffer.getter()
{
  if (*(v0 + 96))
  {
    v1 = *(v0 + 96);
  }

  else
  {
    OUTLINED_FUNCTION_0_1();
    v3 = (*(v2 + 272))();
    v1 = _sSa9repeating5countSayxGx_SitcfCSf_Tt1g5(v3, 0.0);
    *(v0 + 96) = v1;
  }

  return v1;
}

uint64_t CellularAudioSampleNormalizer.imagBuffer.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_4_3(a1);
  *v1 = CellularAudioSampleNormalizer.imagBuffer.getter();
  return OUTLINED_FUNCTION_8_1();
}

double CellularAudioSampleNormalizer.imagBuffer.modify(void *a1)
{
  *(a1[1] + 96) = *a1;

  return result;
}

uint64_t key path setter for CellularAudioSampleNormalizer.transferBuffer : CellularAudioSampleNormalizer(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 376);

  return v2(v3);
}

uint64_t CellularAudioSampleNormalizer.transferBuffer.getter()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 104);
  }

  else
  {
    OUTLINED_FUNCTION_0_1();
    v3 = (*(v2 + 248))();
    v1 = _sSa9repeating5countSayxGx_SitcfCSf_Tt1g5(v3, 0.0);
    *(v0 + 104) = v1;
  }

  return v1;
}

uint64_t CellularAudioSampleNormalizer.transferBuffer.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_4_3(a1);
  *v1 = CellularAudioSampleNormalizer.transferBuffer.getter();
  return OUTLINED_FUNCTION_8_1();
}

double CellularAudioSampleNormalizer.transferBuffer.modify(void *a1)
{
  *(a1[1] + 104) = *a1;

  return result;
}

uint64_t key path setter for CellularAudioSampleNormalizer.magnitudes : CellularAudioSampleNormalizer(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 400);

  return v2(v3);
}

uint64_t CellularAudioSampleNormalizer.magnitudes.getter()
{
  if (*(v0 + 112))
  {
    v1 = *(v0 + 112);
  }

  else
  {
    OUTLINED_FUNCTION_0_1();
    v3 = (*(v2 + 272))();
    v1 = _sSa9repeating5countSayxGx_SitcfCSf_Tt1g5(v3, 0.0);
    *(v0 + 112) = v1;
  }

  return v1;
}

uint64_t CellularAudioSampleNormalizer.magnitudes.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_4_3(a1);
  *v1 = CellularAudioSampleNormalizer.magnitudes.getter();
  return OUTLINED_FUNCTION_8_1();
}

double CellularAudioSampleNormalizer.magnitudes.modify(void *a1)
{
  *(a1[1] + 112) = *a1;

  return result;
}

uint64_t key path setter for CellularAudioSampleNormalizer.hannWindow : CellularAudioSampleNormalizer(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 424);

  return v2(v3);
}

vDSP_Length CellularAudioSampleNormalizer.hannWindow.getter()
{
  if (*(v0 + 120))
  {
    v1 = *(v0 + 120);
  }

  else
  {
    v1 = closure #1 in CellularAudioSampleNormalizer.hannWindow.getter(v0);
    *(v0 + 120) = v1;
  }

  return v1;
}

vDSP_Length closure #1 in CellularAudioSampleNormalizer.hannWindow.getter(uint64_t a1)
{
  v1 = *(*a1 + 248);
  v2 = v1();
  v3 = _sSa9repeating5countSayxGx_SitcfCSf_Tt1g5(v2, 0.0);
  result = v1();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v3 = v6;
    }

    vDSP_hann_window((v3 + 32), v5, 2);
    return v3;
  }

  return result;
}

uint64_t CellularAudioSampleNormalizer.hannWindow.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_4_3(a1);
  *v1 = CellularAudioSampleNormalizer.hannWindow.getter();
  return OUTLINED_FUNCTION_8_1();
}

double CellularAudioSampleNormalizer.hannWindow.modify(void *a1)
{
  *(a1[1] + 120) = *a1;

  return result;
}

FFTSetup CellularAudioSampleNormalizer.fftSetup.getter()
{
  if (*(v0 + 136) != 1)
  {
    return *(v0 + 128);
  }

  OUTLINED_FUNCTION_0_1();
  v2 = (*(v1 + 224))();
  result = vDSP_create_fftsetup(v2, 0);
  *(v0 + 128) = result;
  *(v0 + 136) = 0;
  return result;
}

uint64_t CellularAudioSampleNormalizer.fftSetup.setter(uint64_t result)
{
  *(v1 + 128) = result;
  *(v1 + 136) = 0;
  return result;
}

uint64_t CellularAudioSampleNormalizer.fftSetup.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_4_3(a1);
  *v1 = CellularAudioSampleNormalizer.fftSetup.getter();
  return OUTLINED_FUNCTION_8_1();
}

void *CellularAudioSampleNormalizer.fftSetup.modify(void *result)
{
  v1 = result[1];
  *(v1 + 128) = *result;
  *(v1 + 136) = 0;
  return result;
}

uint64_t CellularAudioSampleNormalizer.tapType.setter(char a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_6_0(v2 + 137, a2);
  *(v2 + 137) = a1 & 1;
  return result;
}

uint64_t CellularAudioSampleNormalizer.sampleRate.setter(float a1, uint64_t a2, uint64_t a3)
{
  result = OUTLINED_FUNCTION_6_0(v3 + 152, a3);
  *(v3 + 152) = a1;
  return result;
}

uint64_t CellularAudioSampleNormalizer.refreshFrequency.setter(float a1, uint64_t a2, uint64_t a3)
{
  result = OUTLINED_FUNCTION_6_0(v3 + 156, a3);
  *(v3 + 156) = a1;
  return result;
}

uint64_t CellularAudioSampleNormalizer.__allocating_init(with:numBands:)(char a1, uint64_t a2)
{
  v4 = swift_allocObject();
  CellularAudioSampleNormalizer.init(with:numBands:)(a1 & 1, a2);
  return v4;
}

uint64_t CellularAudioSampleNormalizer.init(with:numBands:)(char a1, uint64_t a2)
{
  *(v2 + 16) = 0;
  *(v2 + 24) = 1;
  *(v2 + 32) = 0;
  *(v2 + 40) = 1;
  *(v2 + 48) = 0;
  *(v2 + 56) = 1;
  *(v2 + 64) = 0;
  *(v2 + 72) = 1;
  *(v2 + 76) = 0;
  *(v2 + 80) = 1;
  *(v2 + 88) = 0u;
  *(v2 + 104) = 0u;
  *(v2 + 120) = 0u;
  *(v2 + 136) = 1;
  *(v2 + 152) = 0x41A00000473B8000;
  *(v2 + 137) = a1 & 1;
  *(v2 + 144) = a2;
  return v2;
}

uint64_t CellularAudioSampleNormalizer.deinit()
{
  OUTLINED_FUNCTION_0_1();
  v2 = (*(v1 + 440))();
  vDSP_destroy_fftsetup(v2);

  return v0;
}

uint64_t CellularAudioSampleNormalizer.__deallocating_deinit()
{
  CellularAudioSampleNormalizer.deinit();

  return swift_deallocClassInstance();
}

OpaqueFFTSetup *CellularAudioSampleNormalizer.process(_:sampleCount:)(uint64_t a1, unsigned int a2)
{
  result = CellularAudioSampleNormalizer.fft(samples:count:)(a1, a2);
  if (!v2)
  {
    CellularAudioSampleNormalizer.bin(fftSamples:)(result);
    v5 = v4;

    return v5;
  }

  return result;
}

OpaqueFFTSetup *CellularAudioSampleNormalizer.fft(samples:count:)(uint64_t a1, unsigned int a2)
{
  v70 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = _sSa9repeating5countSayxGx_SitcfCSf_Tt1g5(a2, 0.0);
  OUTLINED_FUNCTION_0_1();
  v6 += 34;
  v7 = *v6;
  v8 = v6;
  if ((*v6)() < a2)
  {
    if (one-time initialization token for audioNormalizer != -1)
    {
      OUTLINED_FUNCTION_4_125();
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.audioNormalizer);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 67109376;
      *(v12 + 4) = a2;
      *(v12 + 8) = 2048;
      *(v12 + 10) = v7();

      _os_log_impl(&dword_1BBC58000, v10, v11, "Invalid sample. count (%u) > bufferSize (%ld)", v12, 0x12u);
      MEMORY[0x1BFB23DF0](v12, -1, -1);
    }

    else
    {
    }

    lazy protocol witness table accessor for type CellularAudioSampleNormalizer.Errors and conformance CellularAudioSampleNormalizer.Errors();
    swift_allocError();
    swift_willThrow();

    return v8;
  }

  OUTLINED_FUNCTION_9_87();
  v64 = (*(v13 + 336))(v69);
  v15 = v14;
  v16 = *v14;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v15 = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _ArrayBuffer._consumeAndCreateNew()();
    v16 = v56;
    *v15 = v56;
  }

  OUTLINED_FUNCTION_9_87();
  v61 = (*(v18 + 360))(v68);
  v20 = v19;
  v21 = *v19;
  v22 = swift_isUniquelyReferenced_nonNull_native();
  *v20 = v21;
  v65 = v5;
  v63 = v15;
  v60 = v20;
  if ((v22 & 1) == 0)
  {
    specialized _ArrayBuffer._consumeAndCreateNew()();
    v21 = v57;
    *v20 = v57;
  }

  v62 = v16;
  v59 = v21;
  __Z.realp = (v16 + 32);
  __Z.imagp = (v21 + 32);
  OUTLINED_FUNCTION_9_87();
  v24 = (*(v23 + 416))();
  OUTLINED_FUNCTION_7_88();
  v26 = *(v25 + 384);
  v27 = v26(v67);
  v29 = v28;
  specialized Array.reserveCapacity(_:)(0);
  v30 = *v29;

  MEMORY[0x1BFB24040](a1, 1, v24 + 32, 1, v30 + 32, 1, v4);
  v27(v67, 0);

  v31 = v26(v67);
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  *v33 = v34;
  if ((v35 & 1) == 0)
  {
    specialized _ArrayBuffer._consumeAndCreateNew()();
    v34 = v58;
    *v33 = v58;
  }

  OUTLINED_FUNCTION_9_87();
  (*(v36 + 368))();

  vDSP_ctoz(v34 + 4, 2, &__Z, 1, v4);
  v31(v67, 0);
  OUTLINED_FUNCTION_7_88();
  result = (*(v37 + 440))();
  if (result)
  {
    v39 = result;
    OUTLINED_FUNCTION_9_87();
    v41 = (*(v40 + 224))();
    vDSP_fft_zrip(v39, &__Z, 1, v41, 1);
    OUTLINED_FUNCTION_7_88();
    v43 = (*(v42 + 408))(v67);
    v45 = v44;
    specialized Array.reserveCapacity(_:)(0);
    v46 = *v45;

    vDSP_zvmags(&__Z, 1, (v46 + 32), 1, v4);
    v43(v67, 0);

    OUTLINED_FUNCTION_7_88();
    v48 = *(v47 + 392);
    v67[0] = v48();
    MEMORY[0x1EEE9AC00](*(v67[0] + 16));
    v50 = _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1gq5(v49, _s10Accelerate6vForceO4sqrtySaySfGxAA0A6BufferRzSf7ElementRtzlFZySrySfGz_SiztXEfU_AE_Tt1G5TA);

    OUTLINED_FUNCTION_7_88();
    v52 = (*(v51 + 400))(v50);
    v53 = (v48)(v52);
    OUTLINED_FUNCTION_7_88();
    LODWORD(v67[0]) = (*(v54 + 296))();
    v8 = v65;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v8 = v55;
    }

    MEMORY[0x1BFB24050](v53 + 32, 1, v67, v8 + 4, 1, v4);

    *v60 = v59;
    v61(v68, 0);
    *v63 = v62;
    v64(v69, 0);
    return v8;
  }

  __break(1u);
  return result;
}

void CellularAudioSampleNormalizer.bin(fftSamples:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 144);
  v5 = _sSa9repeating5countSayxGx_SitcfCSf_Tt1g5(v4, 0.0);
  v6 = v4 - 1;
  if (__OFSUB__(v4, 1))
  {
    goto LABEL_71;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
    goto LABEL_72;
  }

  v7 = v5;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_73;
  }

  while (1)
  {
    v8 = *(v7 + 16);
    if (!v8)
    {
      break;
    }

    *(v7 + 32) = 0;
    v51 = v7 + 32;
    if (v6)
    {
      if (v8 == 1)
      {
        goto LABEL_83;
      }

      if (v6 >= v8)
      {
        goto LABEL_84;
      }

      bzero((v7 + 36), 4 * v4 - 4);
    }

    v9 = (*v2 + 488);
    v10 = *v9;
    v11 = (*v9)();
    v52 = *(a1 + 16);
    v12 = (100.0 / v11) * v52;
    OUTLINED_FUNCTION_8_90();
    if (!(v13 ^ v14 | v23))
    {
      goto LABEL_75;
    }

    if (v12 <= -9.2234e18)
    {
      goto LABEL_76;
    }

    if (v12 >= 9.2234e18)
    {
      goto LABEL_77;
    }

    v6 = v2;
    v10();
    OUTLINED_FUNCTION_8_90();
    if (!(v13 ^ v14 | v23))
    {
      goto LABEL_78;
    }

    if (v15 <= -9.2234e18)
    {
      goto LABEL_79;
    }

    if (v15 >= 9.2234e18)
    {
      goto LABEL_80;
    }

    v16 = v12;
    v17 = v15;
    v18 = v15 - v12;
    if (v15 < v12)
    {
      goto LABEL_81;
    }

    if (__OFSUB__(v15, v12))
    {
      goto LABEL_82;
    }

    v19 = v4;
    v20 = v18;
    v50 = a1 + 32;
    a1 = 2139095040;
    v21 = v16;
    v53 = v7;
    v54 = v2;
    while (1)
    {
      if (__OFSUB__(v21, v16))
      {
        __break(1u);
        goto LABEL_61;
      }

      v22 = (v19 * (v21 - v16)) / v20;
      v23 = (LODWORD(v22) & 0x7F800000) != 0x7F800000 || (LODWORD(v22) & 0x7FFFFF) == 0;
      if (v23)
      {
        if ((LODWORD(v22) & 0x7F800000) == 0x7F800000)
        {
          goto LABEL_63;
        }

        if (v22 <= -9.2234e18)
        {
          goto LABEL_64;
        }

        if (v22 >= 9.2234e18)
        {
          goto LABEL_65;
        }

        v24 = v22;
        if (v4 > v22)
        {
          if (v21 >= v52)
          {
            goto LABEL_68;
          }

          if ((v24 & 0x8000000000000000) != 0)
          {
            goto LABEL_69;
          }

          if (*(v7 + 16) <= v24)
          {
            goto LABEL_70;
          }

          *(v51 + 4 * v24) = *(v50 + 4 * v21) + *(v51 + 4 * v24);
        }
      }

      else
      {
        (*(*v2 + 464))();
        if (one-time initialization token for audioNormalizer != -1)
        {
          OUTLINED_FUNCTION_4_125();
          swift_once();
        }

        v25 = type metadata accessor for Logger();
        __swift_project_value_buffer(v25, static Logger.audioNormalizer);
        v6 = Logger.logObject.getter();
        v26 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v6, v26))
        {
          v27 = swift_slowAlloc();
          v28 = v16;
          v29 = v4;
          v30 = swift_slowAlloc();
          v55 = v30;
          *v27 = 136315138;
          v31 = String.init<A>(reflecting:)();
          v33 = v17;
          v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, &v55);

          *(v27 + 4) = v34;
          v17 = v33;
          _os_log_impl(&dword_1BBC58000, v6, v26, "current band for tapType %s is NaN", v27, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v30);
          v35 = v30;
          v4 = v29;
          v16 = v28;
          v7 = v53;
          v2 = v54;
          MEMORY[0x1BFB23DF0](v35, -1, -1);
          v36 = v27;
          a1 = 2139095040;
          MEMORY[0x1BFB23DF0](v36, -1, -1);
        }
      }

      if (v17 == v21)
      {
        break;
      }

      v14 = __OFADD__(v21++, 1);
      if (v14)
      {
        goto LABEL_62;
      }
    }

    v37 = 0;
    v38 = *(*v2 + 464);
    a1 = *v2 + 464;
    while (1)
    {
      v6 = v2;
      v39 = v38();
      v40 = *(v7 + 16);
      if (v39)
      {
        v41 = 3.0;
        if (v37 >= v40)
        {
          goto LABEL_67;
        }
      }

      else
      {
        v41 = 6.0;
        if (v37 >= v40)
        {
          goto LABEL_66;
        }
      }

      v6 = v7 + 4 * v37;
      v42 = *(v6 + 32) * v41;
      *(v6 + 32) = v42;
      if (v37 >= v40)
      {
        break;
      }

      v43 = powf(v42, 0.66667);
      if (v43 <= 1.0)
      {
        v44 = v43;
      }

      else
      {
        v44 = 1.0;
      }

      v45 = v37;
      if (v37 > 4)
      {
        v46 = ((v45 + -5.0) * -0.08) + 1.0;
      }

      else
      {
        v46 = (powf(v45 * 0.4, 0.33333) * 0.5) + 0.5;
      }

      v47 = v44 * v46;
      *(v6 + 32) = v44 * v46;
      v48 = 1.0;
      if (v47 > 1.0 || (v48 = 0.0, v47 <= 0.02))
      {
        *(v6 + 32) = v48;
      }

      if (v4 == ++v37)
      {
        return;
      }
    }

LABEL_61:
    __break(1u);
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
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    specialized _ArrayBuffer._consumeAndCreateNew()();
    v7 = v49;
  }

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
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
}

uint64_t protocol witness for AudioSampleNormalizer.init(with:numBands:) in conformance CellularAudioSampleNormalizer@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 536))(a1 & 1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CellularAudioSampleNormalizer(uint64_t a1)
{
  swift_getWitnessTable();

  return AudioSampleNormalizer.description.getter(a1);
}

uint64_t _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1gq5(uint64_t result, uint64_t (*a2)(void *, uint64_t *))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v4 = result;
  if (result)
  {
    v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v5 + 16) = v4;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  v6 = v5 + 32;
  v7[1] = v4;
  v8 = 0;
  v7[0] = v5 + 32;
  result = a2(v7, &v8);
  if (v2)
  {
    if (v8 <= v4)
    {
      if (!v7[0])
      {
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      if (v6 == v7[0])
      {
        *(v5 + 16) = v8;

        return v5;
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v8 > v4)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v7[0])
  {
    if (v6 == v7[0])
    {
      *(v5 + 16) = v8;
      return v5;
    }

    goto LABEL_19;
  }

LABEL_21:
  __break(1u);
  return result;
}

void _s10Accelerate6vForceO4sqrt_6resultyx_q_ztAA0A6BufferRzAA0a7MutableE0R_Sf7ElementRtzSfAHRt_r0_lFZSaySfG_SrySfGTt1g5(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 8))
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v2 >> 31)
  {
LABEL_6:
    __break(1u);
LABEL_7:
    __break(1u);
  }

  v3 = *(a1 + 16);
  if (!*a2)
  {
    goto LABEL_7;
  }

  vvsqrtf(*a2, (a1 + 32), &v3);
}

unint64_t lazy protocol witness table accessor for type CellularAudioSampleNormalizer.Errors and conformance CellularAudioSampleNormalizer.Errors()
{
  result = lazy protocol witness table cache variable for type CellularAudioSampleNormalizer.Errors and conformance CellularAudioSampleNormalizer.Errors;
  if (!lazy protocol witness table cache variable for type CellularAudioSampleNormalizer.Errors and conformance CellularAudioSampleNormalizer.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CellularAudioSampleNormalizer.Errors and conformance CellularAudioSampleNormalizer.Errors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CellularAudioSampleNormalizer.Errors and conformance CellularAudioSampleNormalizer.Errors;
  if (!lazy protocol witness table cache variable for type CellularAudioSampleNormalizer.Errors and conformance CellularAudioSampleNormalizer.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CellularAudioSampleNormalizer.Errors and conformance CellularAudioSampleNormalizer.Errors);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for CellularAudioSampleNormalizer(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CellularAudioSampleNormalizer and conformance CellularAudioSampleNormalizer();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type CellularAudioSampleNormalizer and conformance CellularAudioSampleNormalizer()
{
  result = lazy protocol witness table cache variable for type CellularAudioSampleNormalizer and conformance CellularAudioSampleNormalizer;
  if (!lazy protocol witness table cache variable for type CellularAudioSampleNormalizer and conformance CellularAudioSampleNormalizer)
  {
    type metadata accessor for CellularAudioSampleNormalizer();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CellularAudioSampleNormalizer and conformance CellularAudioSampleNormalizer);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CellularAudioSampleNormalizer.Errors(_BYTE *result, int a2, int a3)
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

uint64_t (*ShutterModel.targetPercentComplete.modify())()
{
  v1 = OUTLINED_FUNCTION_39_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_47(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_41_15(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_42_2(v4);
  return AudioPowerSpectrumViewModel.remotePowerSpectrum.modify;
}

uint64_t key path setter for ShutterModel.$targetPercentComplete : ShutterModel(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy12CoreGraphics7CGFloatV_GMd, &_s7Combine9PublishedV9PublisherVy12CoreGraphics7CGFloatV_GMR);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1, v5);
  return (*(**a2 + 208))(v7);
}

uint64_t ShutterModel.$targetPercentComplete.modify()
{
  v1 = OUTLINED_FUNCTION_40_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_7(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy12CoreGraphics7CGFloatV_GMd, &_s7Combine9PublishedV9PublisherVy12CoreGraphics7CGFloatV_GMR);
  OUTLINED_FUNCTION_46_0(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_37_24(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_42_0(v8);
  OUTLINED_FUNCTION_19_31();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy12CoreGraphics7CGFloatVGMd, &_s7Combine9PublishedVy12CoreGraphics7CGFloatVGMR);
  OUTLINED_FUNCTION_55_2();
  swift_endAccess();
  return OUTLINED_FUNCTION_38_0();
}

uint64_t key path getter for ShutterModel.isActive : ShutterModel@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 224))();
  *a2 = result & 1;
  return result;
}

uint64_t (*ShutterModel.isActive.modify())()
{
  v1 = OUTLINED_FUNCTION_39_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_47(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_41_15(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_42_2(v4);
  return AudioPowerSpectrumViewModel.remotePowerSpectrum.modify;
}

uint64_t key path setter for ShutterModel.$isActive : ShutterModel(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1, v5);
  return (*(**a2 + 256))(v7);
}

uint64_t ShutterModel.$isActive.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  OUTLINED_FUNCTION_1();
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

uint64_t ShutterModel.$isActive.modify()
{
  v1 = OUTLINED_FUNCTION_40_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_7(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  OUTLINED_FUNCTION_46_0(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_37_24(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_42_0(v8);
  OUTLINED_FUNCTION_19_31();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  OUTLINED_FUNCTION_55_2();
  swift_endAccess();
  return OUTLINED_FUNCTION_38_0();
}

void ShutterModel.$targetPercentComplete.modify(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 48);
  v6 = *(*a1 + 56);
  if (a2)
  {
    v7 = v4[4];
    v8 = v4[5];
    (*(v8 + 16))(*(*a1 + 48), v6, v7);
    a3(v5);
    (*(v8 + 8))(v6, v7);
  }

  else
  {
    a3(*(*a1 + 56));
  }

  free(v6);
  free(v5);

  free(v4);
}

uint64_t key path getter for ShutterModel.mode : ShutterModel@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 272))();
  *a2 = result;
  return result;
}

uint64_t ShutterModel.mode.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t ShutterModel.mode.setter(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*ShutterModel.mode.modify())()
{
  v1 = OUTLINED_FUNCTION_39_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_47(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_41_15(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_42_2(v4);
  return AudioPowerSpectrumViewModel.remotePowerSpectrum.modify;
}

uint64_t key path setter for ShutterModel.$mode : ShutterModel(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit18ShutterButtonStyleV05InnerH0O_GMd, &_s7Combine9PublishedV9PublisherVy15ConversationKit18ShutterButtonStyleV05InnerH0O_GMR);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1, v5);
  return (*(**a2 + 304))(v7);
}

uint64_t ShutterModel.$mode.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit18ShutterButtonStyleV05InnerH0O_GMd, &_s7Combine9PublishedV9PublisherVy15ConversationKit18ShutterButtonStyleV05InnerH0O_GMR);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_25_0(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_50();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit18ShutterButtonStyleV05InnerG0OGMd, &_s7Combine9PublishedVy15ConversationKit18ShutterButtonStyleV05InnerG0OGMR);
  OUTLINED_FUNCTION_67(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_61();
  return v6(v5);
}

uint64_t ShutterModel.$mode.modify()
{
  v1 = OUTLINED_FUNCTION_40_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_7(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit18ShutterButtonStyleV05InnerH0O_GMd, &_s7Combine9PublishedV9PublisherVy15ConversationKit18ShutterButtonStyleV05InnerH0O_GMR);
  OUTLINED_FUNCTION_46_0(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_37_24(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_42_0(v8);
  OUTLINED_FUNCTION_19_31();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit18ShutterButtonStyleV05InnerG0OGMd, &_s7Combine9PublishedVy15ConversationKit18ShutterButtonStyleV05InnerG0OGMR);
  OUTLINED_FUNCTION_55_2();
  swift_endAccess();
  return OUTLINED_FUNCTION_38_0();
}

uint64_t (*ShutterModel.diameter.modify())()
{
  v1 = OUTLINED_FUNCTION_39_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_47(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_41_15(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_42_2(v4);
  return AudioPowerSpectrumViewModel.remotePowerSpectrum.modify;
}

uint64_t key path setter for ShutterModel.$diameter : ShutterModel(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy12CoreGraphics7CGFloatV_GMd, &_s7Combine9PublishedV9PublisherVy12CoreGraphics7CGFloatV_GMR);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1, v5);
  return (*(**a2 + 352))(v7);
}

uint64_t ShutterModel.$diameter.modify()
{
  v1 = OUTLINED_FUNCTION_40_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_7(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy12CoreGraphics7CGFloatV_GMd, &_s7Combine9PublishedV9PublisherVy12CoreGraphics7CGFloatV_GMR);
  OUTLINED_FUNCTION_46_0(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_37_24(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_42_0(v8);
  OUTLINED_FUNCTION_19_31();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy12CoreGraphics7CGFloatVGMd, &_s7Combine9PublishedVy12CoreGraphics7CGFloatVGMR);
  OUTLINED_FUNCTION_55_2();
  swift_endAccess();
  return OUTLINED_FUNCTION_38_0();
}

uint64_t (*ShutterModel.lineThickness.modify())()
{
  v1 = OUTLINED_FUNCTION_39_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_47(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_41_15(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_42_2(v4);
  return LinkDetailHeaderView.invitedMemberHandles.modify;
}

uint64_t key path setter for ShutterModel.$lineThickness : ShutterModel(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy12CoreGraphics7CGFloatV_GMd, &_s7Combine9PublishedV9PublisherVy12CoreGraphics7CGFloatV_GMR);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1, v5);
  return (*(**a2 + 400))(v7);
}

uint64_t ShutterModel.$lineThickness.modify()
{
  v1 = OUTLINED_FUNCTION_40_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_7(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy12CoreGraphics7CGFloatV_GMd, &_s7Combine9PublishedV9PublisherVy12CoreGraphics7CGFloatV_GMR);
  OUTLINED_FUNCTION_46_0(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_37_24(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_42_0(v8);
  OUTLINED_FUNCTION_19_31();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy12CoreGraphics7CGFloatVGMd, &_s7Combine9PublishedVy12CoreGraphics7CGFloatVGMR);
  OUTLINED_FUNCTION_55_2();
  swift_endAccess();
  return OUTLINED_FUNCTION_38_0();
}

uint64_t (*ShutterModel.gapWidth.modify())()
{
  v1 = OUTLINED_FUNCTION_39_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_47(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_41_15(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_42_2(v4);
  return AudioPowerSpectrumViewModel.remotePowerSpectrum.modify;
}

uint64_t key path setter for ShutterModel.$gapWidth : ShutterModel(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy12CoreGraphics7CGFloatV_GMd, &_s7Combine9PublishedV9PublisherVy12CoreGraphics7CGFloatV_GMR);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1, v5);
  return (*(**a2 + 448))(v7);
}

uint64_t ShutterModel.$gapWidth.modify()
{
  v1 = OUTLINED_FUNCTION_40_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_7(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy12CoreGraphics7CGFloatV_GMd, &_s7Combine9PublishedV9PublisherVy12CoreGraphics7CGFloatV_GMR);
  OUTLINED_FUNCTION_46_0(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_37_24(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_42_0(v8);
  OUTLINED_FUNCTION_19_31();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy12CoreGraphics7CGFloatVGMd, &_s7Combine9PublishedVy12CoreGraphics7CGFloatVGMR);
  OUTLINED_FUNCTION_55_2();
  swift_endAccess();
  return OUTLINED_FUNCTION_38_0();
}

double ShutterModel.targetPercentComplete.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v3;
}

uint64_t ShutterModel.targetPercentComplete.setter(uint64_t a1, uint64_t a2, double a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t key path setter for ShutterModel.$actualPercentComplete : ShutterModel(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy12CoreGraphics7CGFloatV_GMd, &_s7Combine9PublishedV9PublisherVy12CoreGraphics7CGFloatV_GMR);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - v4;
  (*(v6 + 16))(&v8 - v4, a1, v3);
  return ShutterModel.$actualPercentComplete.setter(v5);
}

uint64_t ShutterModel.$targetPercentComplete.setter(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy12CoreGraphics7CGFloatV_GMd, &_s7Combine9PublishedV9PublisherVy12CoreGraphics7CGFloatV_GMR);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_21();
  v7 = MEMORY[0x1EEE9AC00](v6);
  (*(v5 + 16))(&v10 - v8, a1, v3, v7);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy12CoreGraphics7CGFloatVGMd, &_s7Combine9PublishedVy12CoreGraphics7CGFloatVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(a1, v3);
}

uint64_t key path getter for ShutterModel.showsProgress : ShutterModel@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 512))();
  *a2 = result & 1;
  return result;
}

uint64_t (*ShutterModel.showsProgress.modify())()
{
  v1 = OUTLINED_FUNCTION_39_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_47(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_41_15(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_42_2(v4);
  return AudioPowerSpectrumViewModel.remotePowerSpectrum.modify;
}

uint64_t key path setter for ShutterModel.$showsProgress : ShutterModel(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1, v5);
  return (*(**a2 + 544))(v7);
}

uint64_t ShutterModel.$showsProgress.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  OUTLINED_FUNCTION_1();
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

uint64_t ShutterModel.$showsProgress.modify()
{
  v1 = OUTLINED_FUNCTION_40_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_7(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  OUTLINED_FUNCTION_46_0(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_37_24(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_42_0(v8);
  OUTLINED_FUNCTION_19_31();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  OUTLINED_FUNCTION_55_2();
  swift_endAccess();
  return OUTLINED_FUNCTION_38_0();
}

uint64_t ShutterModel.__allocating_init(_:)(double a1)
{
  v2 = swift_allocObject();
  ShutterModel.init(_:)(a1);
  return v2;
}

uint64_t ShutterModel.init(_:)(double a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit18ShutterButtonStyleV05InnerG0OGMd, &_s7Combine9PublishedVy15ConversationKit18ShutterButtonStyleV05InnerG0OGMR);
  OUTLINED_FUNCTION_1();
  v31 = v4;
  v32 = v3;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v29 - v6;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  OUTLINED_FUNCTION_1();
  v9 = v8;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy12CoreGraphics7CGFloatVGMd, &_s7Combine9PublishedVy12CoreGraphics7CGFloatVGMR);
  OUTLINED_FUNCTION_1();
  v15 = v14;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v29 - v17;
  v19 = OBJC_IVAR____TtC15ConversationKit12ShutterModel__targetPercentComplete;
  v34 = 0;
  Published.init(initialValue:)();
  v20 = *(v15 + 32);
  v20(v1 + v19, v18, v13);
  v21 = OBJC_IVAR____TtC15ConversationKit12ShutterModel__isActive;
  LOBYTE(v34) = 1;
  Published.init(initialValue:)();
  v30 = *(v9 + 32);
  v30(v1 + v21, v12, v33);
  v22 = OBJC_IVAR____TtC15ConversationKit12ShutterModel__mode;
  LOBYTE(v34) = 2;
  Published.init(initialValue:)();
  (*(v31 + 32))(v1 + v22, v7, v32);
  OUTLINED_FUNCTION_21_47(0x404C000000000000);
  Published.init(initialValue:)();
  v23 = OUTLINED_FUNCTION_11_87();
  (v20)(v23);
  OUTLINED_FUNCTION_21_47(0x4012000000000000);
  Published.init(initialValue:)();
  v24 = OUTLINED_FUNCTION_11_87();
  (v20)(v24);
  OUTLINED_FUNCTION_21_47(0x4008000000000000);
  Published.init(initialValue:)();
  v25 = OUTLINED_FUNCTION_11_87();
  (v20)(v25);
  v34 = 0;
  Published.init(initialValue:)();
  v26 = OUTLINED_FUNCTION_11_87();
  (v20)(v26);
  v27 = OBJC_IVAR____TtC15ConversationKit12ShutterModel__showsProgress;
  LOBYTE(v34) = 0;
  Published.init(initialValue:)();
  v30(v1 + v27, v12, v33);
  *(v1 + OBJC_IVAR____TtC15ConversationKit12ShutterModel__percentComplete) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit12ShutterModel_timerSink) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit12ShutterModel_timerUpdateInterval) = 0x3F91111111111111;
  *(v1 + 16) = a1;
  return v1;
}

Swift::Void __swiftcall ShutterModel.start()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v15 - v3;
  OUTLINED_FUNCTION_0_1();
  (*(v5 + 232))(0);
  v6 = OBJC_IVAR____TtC15ConversationKit12ShutterModel_timerSink;
  if (!*(v0 + OBJC_IVAR____TtC15ConversationKit12ShutterModel_timerSink))
  {
    v7 = swift_allocObject();
    *(v7 + 16) = (*(*v0 + 176))() * v0[2];
    (*(*v0 + 184))(1.0);
    type metadata accessor for NSTimer();
    v8 = [objc_opt_self() mainRunLoop];
    v9 = type metadata accessor for NSRunLoop.SchedulerOptions();
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v9);
    v10 = static NSTimer.publish(every:tolerance:on:in:options:)();

    outlined destroy of NSRunLoop.SchedulerOptions?(v4);
    v16 = v10;
    type metadata accessor for NSTimer.TimerPublisher();
    lazy protocol witness table accessor for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher();
    v11 = ConnectablePublisher.autoconnect()();

    v16 = v11;
    v12 = swift_allocObject();
    swift_weakInit();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = v7;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>();
    v14 = Publisher<>.sink(receiveValue:)();

    *(v1 + v6) = v14;
  }
}

unint64_t lazy protocol witness table accessor for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher()
{
  result = lazy protocol witness table cache variable for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher;
  if (!lazy protocol witness table cache variable for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher)
  {
    type metadata accessor for NSTimer.TimerPublisher();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher);
  }

  return result;
}

double *closure #1 in ShutterModel.start()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = *(result + OBJC_IVAR____TtC15ConversationKit12ShutterModel_timerUpdateInterval);
    swift_beginAccess();
    v7 = v6 + *(a3 + 16);
    *(a3 + 16) = v7;
    v8 = v7 / v5[2];
    *(v5 + OBJC_IVAR____TtC15ConversationKit12ShutterModel__percentComplete) = v8;
    ShutterModel.actualPercentComplete.setter(v8);
    v9 = swift_beginAccess();
    if (v5[2] <= *(a3 + 16))
    {
      (*(*v5 + 632))(v9);
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>()
{
  result = lazy protocol witness table cache variable for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>;
  if (!lazy protocol witness table cache variable for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>);
  }

  return result;
}

Swift::Void __swiftcall ShutterModel.pause()()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit12ShutterModel_timerSink) = 0;

  OUTLINED_FUNCTION_0_1();
  (*(v1 + 184))();
  OUTLINED_FUNCTION_0_1();
  v3 = *(v2 + 232);

  v3(1);
}

Swift::Void __swiftcall ShutterModel.stop()()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit12ShutterModel__percentComplete) = 0;
  ShutterModel.actualPercentComplete.setter(0.0);
  OUTLINED_FUNCTION_0_1();
  (*(v1 + 184))(0.0);
  v2 = *(*v0 + 624);

  v2();
}

uint64_t ShutterModel.deinit()
{
  v1 = OBJC_IVAR____TtC15ConversationKit12ShutterModel__targetPercentComplete;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy12CoreGraphics7CGFloatVGMd, &_s7Combine9PublishedVy12CoreGraphics7CGFloatVGMR);
  OUTLINED_FUNCTION_7_0();
  v4 = *(v3 + 8);
  v4(v0 + v1, v2);
  v5 = OBJC_IVAR____TtC15ConversationKit12ShutterModel__isActive;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  OUTLINED_FUNCTION_7_0();
  v8 = *(v7 + 8);
  v8(v0 + v5, v6);
  v9 = OBJC_IVAR____TtC15ConversationKit12ShutterModel__mode;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit18ShutterButtonStyleV05InnerG0OGMd, &_s7Combine9PublishedVy15ConversationKit18ShutterButtonStyleV05InnerG0OGMR);
  OUTLINED_FUNCTION_7_0();
  (*(v10 + 8))(v0 + v9);
  v11 = OUTLINED_FUNCTION_3_20(OBJC_IVAR____TtC15ConversationKit12ShutterModel__diameter);
  (v4)(v11);
  v12 = OUTLINED_FUNCTION_3_20(OBJC_IVAR____TtC15ConversationKit12ShutterModel__lineThickness);
  (v4)(v12);
  v13 = OUTLINED_FUNCTION_3_20(OBJC_IVAR____TtC15ConversationKit12ShutterModel__gapWidth);
  (v4)(v13);
  v14 = OUTLINED_FUNCTION_3_20(OBJC_IVAR____TtC15ConversationKit12ShutterModel__actualPercentComplete);
  (v4)(v14);
  v8(v0 + OBJC_IVAR____TtC15ConversationKit12ShutterModel__showsProgress, v6);

  return v0;
}

uint64_t ShutterModel.__deallocating_deinit()
{
  ShutterModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance ShutterModel@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ShutterModel(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for ShutterModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for ShutterModel;
  if (!type metadata singleton initialization cache for ShutterModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for ShutterModel(uint64_t a1)
{
  type metadata accessor for Published<Bool>(319, &lazy cache variable for type metadata for Published<CGFloat>, MEMORY[0x1E69E7DE0]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Published<Bool>(319, &lazy cache variable for type metadata for Published<Bool>, MEMORY[0x1E69E6370]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Published<Bool>(319, &lazy cache variable for type metadata for Published<ShutterButtonStyle.InnerStyle>, &type metadata for ShutterButtonStyle.InnerStyle);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t HUDActivityManager.BannerUpdate.init(score:type:requestedSizeClass:temporary:associatedCall:uuid:controlsManager:shouldRemoveAfterBannerDismissal:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, char a10)
{
  v17 = *a1;
  v18 = type metadata accessor for HUDActivityManager.BannerUpdate(0);
  v19 = a8 + v18[11];
  *(v19 + 8) = 0;
  swift_unknownObjectWeakInit();
  *a8 = v17;
  outlined init with copy of ConversationControlsType(a2, a8 + 8);
  *(a8 + 56) = a3;
  *(a8 + 64) = a4 & 1;
  *(v19 + 8) = a6;
  swift_unknownObjectWeakAssign();
  *(a8 + 65) = a5;
  v20 = v18[8];
  v21 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_29_2();
  v23 = v22;
  (*(v22 + 16))(a8 + v20, a7, v21);
  static Date.now.getter();
  swift_unknownObjectRelease();
  (*(v23 + 8))(a7, v21);
  result = outlined destroy of ConversationControlsType(a2);
  *(a8 + v18[10]) = a9;
  *(a8 + v18[12]) = a10;
  return result;
}

uint64_t specialized Collection.firstIndex(where:)(uint64_t a1)
{
  v19 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  v7 = v6 - v5;
  type metadata accessor for HUDActivityManager.BannerUpdate(0);
  OUTLINED_FUNCTION_1();
  v18 = v8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  v11 = v10 - v9;
  v12 = 0;
  v20 = *(a1 + 16);
  v13 = (v3 + 16);
  v14 = (v3 + 8);
  while (1)
  {
    if (v20 == v12)
    {

      return 0;
    }

    OUTLINED_FUNCTION_40_3();
    OUTLINED_FUNCTION_0_1();
    (*(v15 + 232))();
    (*v13)(v7, v11 + *(v18 + 32), v19);
    outlined destroy of HUDActivityManager.BannerUpdate(v11);
    v16 = static UUID.== infix(_:_:)();
    (*v14)(v7, v19);
    if (v16)
    {
      break;
    }

    ++v12;
  }

  return v12;
}

uint64_t specialized RangeReplaceableCollection<>.popLast()@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMd, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for HUDActivityManager.BannerUpdate(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    specialized Array._customRemoveLast()(v5);
    if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v5, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMd, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMR);
      specialized Array.remove(at:)(*(*v1 + 16) - 1, a1);
    }

    else
    {
      outlined init with take of HUDActivityManager.BannerUpdate(v5, v8);
      outlined init with take of HUDActivityManager.BannerUpdate(v8, a1);
    }

    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v6);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v6);
  }
}

void ConversationControlsType.defaultRelevanceScore.getter(uint64_t *a1@<X8>)
{
  outlined init with copy of ConversationControlsType(v1, &v12);
  if (v15 == 4)
  {
    outlined destroy of ConversationControlsType(&v12);
LABEL_17:
    v11 = 0x4089000000000000;
    goto LABEL_18;
  }

  if (v15 != 5)
  {
    if (v15 != 7 || ((OUTLINED_FUNCTION_11_49(v14, v13), v5 = v4 & 0xFFFFFFFFFFFFFFEFLL, v6 = v4 & 0xFFFFFFFFFFFFFFFDLL, v7 = v4 - 25, v6 != 20) ? (v8 = v5 == 5) : (v8 = 1), !v8 ? (v9 = v7 > 1) : (v9 = 0), !v9 ? (v10 = v3 == 0) : (v10 = 0), !v10))
    {
      *a1 = 0x4082C00000000000;
      outlined destroy of ConversationControlsType(&v12);
      return;
    }

    goto LABEL_17;
  }

  v11 = 0x4085E00000000000;
LABEL_18:
  *a1 = v11;
}

uint64_t ConversationControlsType.isTemporary.getter()
{
  outlined init with copy of ConversationControlsType(v0, &v10);
  if (v15 == 4 || v15 == 6)
  {
    v2 = 0;
LABEL_32:
    outlined destroy of ConversationControlsType(&v10);
    return v2;
  }

  if (v15 != 7 || v13 | v14 | v10 | v12 | v11 && (v10 != 5 ? (v3 = (v10 & 0xFFFFFFFFFFFFFFFBLL) == 2) : (v3 = 1), !v3 ? (v4 = v10 == 8) : (v4 = 1), !v4 ? (v5 = v10 == 21) : (v5 = 1), !v5 ? (v6 = v10 == 26) : (v6 = 1), !v6 ? (v7 = (v10 & 0xFFFFFFFFFFFFFFFELL) == 28) : (v7 = 1), !v7 ? (v8 = v10 == 30) : (v8 = 1), !v8 || v13 | v14 | v12 | v11))
  {
    v2 = 1;
    goto LABEL_32;
  }

  return 0;
}

uint64_t ConversationControlsType.shouldRemoveAfterBannerDismissal.getter()
{
  outlined init with copy of ConversationControlsType(v0, &v5);
  if (v8 == 7)
  {
    OUTLINED_FUNCTION_11_49(v7, v6);
    if (v2 == 2 && v1 == 0)
    {
      return 1;
    }
  }

  outlined destroy of ConversationControlsType(&v5);
  return 0;
}

uint64_t key path getter for HUDActivity.dismissed : HUDActivity@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 136))();
  *a2 = result & 1;
  return result;
}

uint64_t HUDActivity.dismissed.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_38_2();
  static Published.subscript.getter();

  return v1;
}

uint64_t HUDActivity.dismissed.setter(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void (*HUDActivity.dismissed.modify(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v2;
  v2[4] = swift_getKeyPath();
  v2[5] = swift_getKeyPath();
  v2[6] = static Published.subscript.modify();
  return LinkDetailHeaderView.invitedMemberHandles.modify;
}

uint64_t key path setter for HUDActivity.$dismissed : HUDActivity(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1, v5);
  return (*(**a2 + 168))(v7);
}

uint64_t HUDActivity.$dismissed.getter()
{
  v0 = OUTLINED_FUNCTION_112_1();
  OUTLINED_FUNCTION_30_2(v0, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HUDActivity.$dismissed.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_309();
  v8(v7);
  OUTLINED_FUNCTION_30_2(v1 + OBJC_IVAR____TtC15ConversationKit11HUDActivity__dismissed, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(a1, v3);
}

void (*HUDActivity.$dismissed.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v3[4] = v4;
  OUTLINED_FUNCTION_9_0(v4);
  v3[5] = v5;
  v7 = *(v6 + 64);
  v3[6] = __swift_coroFrameAllocStub(v7);
  v3[7] = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_30_2(v1 + OBJC_IVAR____TtC15ConversationKit11HUDActivity__dismissed, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return HUDActivity.$dismissed.modify;
}

void HUDActivity.$dismissed.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {
    v5 = v2[4];
    v6 = v2[5];
    (*(v6 + 16))(*(*a1 + 48), v4, v5);
    HUDActivity.$dismissed.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    HUDActivity.$dismissed.setter(*(*a1 + 56));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t HUDActivity.isShowing.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit11HUDActivity_isShowing;
  OUTLINED_FUNCTION_4_0(v0 + OBJC_IVAR____TtC15ConversationKit11HUDActivity_isShowing, v3);
  return *(v0 + v1);
}

uint64_t HUDActivity.isShowing.setter(char a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit11HUDActivity_isShowing;
  v4 = OUTLINED_FUNCTION_112_1();
  result = OUTLINED_FUNCTION_3_5(v4, v5);
  *(v1 + v3) = a1;
  return result;
}

uint64_t HUDActivity.activityId.getter()
{
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_0();
  v0 = OUTLINED_FUNCTION_97_6();

  return v1(v0);
}

uint64_t key path setter for HUDActivity.relatedUpdate : HUDActivity(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HUDActivityManager.BannerUpdate(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of HUDActivityManager.BannerUpdate(a1, v6);
  return (*(**a2 + 240))(v6);
}

uint64_t HUDActivity.relatedUpdate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15ConversationKit11HUDActivity_relatedUpdate;
  v4 = OUTLINED_FUNCTION_112_1();
  OUTLINED_FUNCTION_4_0(v4, v5);
  return outlined init with copy of HUDActivityManager.BannerUpdate(v1 + v3, a1);
}

uint64_t outlined init with copy of HUDActivityManager.BannerUpdate(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HUDActivityManager.BannerUpdate(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t HUDActivity.relatedUpdate.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit11HUDActivity_relatedUpdate;
  v4 = OUTLINED_FUNCTION_112_1();
  OUTLINED_FUNCTION_30_2(v4, v5);
  outlined assign with take of HUDActivityManager.BannerUpdate(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t outlined assign with take of HUDActivityManager.BannerUpdate(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HUDActivityManager.BannerUpdate(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t HUDActivity.apertureHandle.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit11HUDActivity_apertureHandle;
  v4 = OUTLINED_FUNCTION_112_1();
  OUTLINED_FUNCTION_3_5(v4, v5);
  *(v1 + v3) = a1;
}

BOOL HUDActivity.isPersistent.getter()
{
  v0 = type metadata accessor for HUDActivityManager.BannerUpdate(0);
  v1 = OUTLINED_FUNCTION_22(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_8();
  v4 = v3 - v2;
  OUTLINED_FUNCTION_0_1();
  (*(v5 + 232))();
  outlined init with copy of ConversationControlsType(v4 + 8, v7);
  outlined destroy of HUDActivityManager.BannerUpdate(v4);
  LOBYTE(v4) = ConversationControlsType.isTemporary.getter();
  outlined destroy of ConversationControlsType(v7);
  return (v4 & 1) == 0;
}

uint64_t HUDActivity.init(withUpdate:dismissHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a3;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v24 - v12;
  v14 = OBJC_IVAR____TtC15ConversationKit11HUDActivity__dismissed;
  v25 = 0;
  Published.init(initialValue:)();
  (*(v11 + 32))(v3 + v14, v13, v10);
  *(v3 + OBJC_IVAR____TtC15ConversationKit11HUDActivity_isShowing) = 0;
  v15 = (v3 + OBJC_IVAR____TtC15ConversationKit11HUDActivity_dismissHandler);
  *v15 = 0;
  v15[1] = 0;
  v16 = OBJC_IVAR____TtC15ConversationKit11HUDActivity_activityManager;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v17 = static HUDActivityManager.shared;
  *(v3 + v16) = static HUDActivityManager.shared;
  *(v3 + OBJC_IVAR____TtC15ConversationKit11HUDActivity_apertureHandle) = 0;
  outlined init with copy of HUDActivityManager.BannerUpdate(a1, v3 + OBJC_IVAR____TtC15ConversationKit11HUDActivity_relatedUpdate);
  v18 = *v15;
  v19 = v15[1];
  v20 = v24;
  *v15 = a2;
  v15[1] = v20;
  v21 = v17;
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v18, v19);
  v22 = type metadata accessor for HUDActivityManager.BannerUpdate(0);
  (*(v7 + 16))(v9, a1 + *(v22 + 32), v6);
  outlined destroy of HUDActivityManager.BannerUpdate(a1);
  (*(v7 + 32))(v3 + OBJC_IVAR____TtC15ConversationKit11HUDActivity_activityId, v9, v6);
  return v3;
}

Swift::Void __swiftcall HUDActivity.start()()
{
  v0 = type metadata accessor for HUDActivityManager.BannerUpdate(0);
  v1 = OUTLINED_FUNCTION_22(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_8();
  v4 = v3 - v2;
  OUTLINED_FUNCTION_0_1();
  v6 = *(v5 + 232);
  v6();
  v7 = OUTLINED_FUNCTION_75_11();
  HUDActivityManager.enqueueUpdate(_:)(v7);
  v8 = outlined destroy of HUDActivityManager.BannerUpdate(v4);
  (v6)(v8);
  v9 = OUTLINED_FUNCTION_75_11();
  v10 = HUDActivityManager.couldPresentUpdateIfPossible(_:)(v9);
  v11 = outlined destroy of HUDActivityManager.BannerUpdate(v4);
  if (v10)
  {
    (v6)(v11);
    v12 = OUTLINED_FUNCTION_75_11();

    outlined destroy of HUDActivityManager.BannerUpdate(v4);
  }
}

void HUDActivityManager.enqueueUpdate(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___CNKHUDActivityManager_updates;
  swift_beginAccess();
  v5 = *(v1 + v4);
  v10[2] = a1;

  v6 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v10, v5);

  if (!v6)
  {
    swift_beginAccess();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v7 = *(*(v2 + v4) + 16);
    specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v7);
    v8 = *(v2 + v4);
    *(v8 + 16) = v7 + 1;
    v9 = *(type metadata accessor for HUDActivityManager.BannerUpdate(0) - 8);
    outlined init with copy of HUDActivityManager.BannerUpdate(a1, v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v7);
    *(v2 + v4) = v8;
    swift_endAccess();
  }
}

uint64_t HUDActivityManager.couldPresentUpdateIfPossible(_:)(uint64_t a1)
{
  v2 = type metadata accessor for HUDActivityManager.BannerUpdate(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSg_AFtMd, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSg_AFtMR);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMd, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v21 - v16;
  HUDActivityManager.bannerUpdateForPresentation()(&v21 - v16);
  outlined init with copy of HUDActivityManager.BannerUpdate(a1, v14);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v2);
  v18 = *(v6 + 56);
  outlined init with copy of HUDActivityManager.BannerUpdate?(v17, v8);
  outlined init with copy of HUDActivityManager.BannerUpdate?(v14, &v8[v18]);
  if (__swift_getEnumTagSinglePayload(v8, 1, v2) != 1)
  {
    outlined init with copy of HUDActivityManager.BannerUpdate?(v8, v11);
    if (__swift_getEnumTagSinglePayload(&v8[v18], 1, v2) != 1)
    {
      outlined init with take of HUDActivityManager.BannerUpdate(&v8[v18], v4);
      v19 = static HUDActivityManager.BannerUpdate.== infix(_:_:)(v11, v4);
      outlined destroy of HUDActivityManager.BannerUpdate(v4);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v14, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMd, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMR);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v17, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMd, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMR);
      outlined destroy of HUDActivityManager.BannerUpdate(v11);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v8, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMd, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMR);
      return v19 & 1;
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v14, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMd, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMR);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v17, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMd, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMR);
    outlined destroy of HUDActivityManager.BannerUpdate(v11);
    goto LABEL_6;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v14, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMd, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMR);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v17, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMd, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMR);
  if (__swift_getEnumTagSinglePayload(&v8[v18], 1, v2) != 1)
  {
LABEL_6:
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v8, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSg_AFtMd, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSg_AFtMR);
    v19 = 0;
    return v19 & 1;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v8, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMd, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMR);
  v19 = 1;
  return v19 & 1;
}

Swift::Void __swiftcall HUDActivity.end()()
{
  v1 = v0;
  if (one-time initialization token for banners != -1)
  {
    OUTLINED_FUNCTION_0_178(&one-time initialization token for banners);
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.banners);
  OUTLINED_FUNCTION_28_0();

  v3 = Logger.logObject.getter();
  static os_log_type_t.default.getter();

  if (OUTLINED_FUNCTION_317())
  {
    v4 = OUTLINED_FUNCTION_42();
    v14 = OUTLINED_FUNCTION_23();
    *v4 = 136315138;
    type metadata accessor for HUDActivity(0);

    v5 = String.init<A>(reflecting:)();
    v7 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v6, &v14);

    *(v4 + 4) = v7;
    OUTLINED_FUNCTION_85();
    _os_log_impl(v8, v9, v10, v11, v4, 0xCu);
    OUTLINED_FUNCTION_94_8();
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_18();
  }

  (*(*v1 + 144))(1);
  v12 = *(v1 + OBJC_IVAR____TtC15ConversationKit11HUDActivity_dismissHandler);
  if (v12)
  {
    v13 = *(v1 + OBJC_IVAR____TtC15ConversationKit11HUDActivity_dismissHandler + 8);

    v12(v1);
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v12, v13);
  }
}

uint64_t static HUDActivity.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_24_1();
  v5 = type metadata accessor for HUDActivityManager.BannerUpdate(v4);
  v6 = OUTLINED_FUNCTION_22(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_27_9();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  if (static UUID.== infix(_:_:)())
  {
    OUTLINED_FUNCTION_0_1();
    v11 = (*(v10 + 232))();
    (*(*a2 + 232))(v11);
    v12 = static HUDActivityManager.BannerUpdate.== infix(_:_:)(v9, v2);
    outlined destroy of HUDActivityManager.BannerUpdate(v2);
    outlined destroy of HUDActivityManager.BannerUpdate(v9);
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t static HUDActivityManager.BannerUpdate.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || (static ConversationControlsType.== infix(_:_:)(a1 + 8, a2 + 8) & 1) == 0)
  {
    goto LABEL_5;
  }

  v4 = *(a2 + 64);
  if ((*(a1 + 64) & 1) == 0)
  {
    if (*(a1 + 56) != *(a2 + 56))
    {
      v4 = 1;
    }

    if (v4)
    {
      goto LABEL_5;
    }

LABEL_10:
    v7 = type metadata accessor for HUDActivityManager.BannerUpdate(0);
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();
      OUTLINED_FUNCTION_54_13();
      v9 = v8();
      v11 = v10;
      swift_unknownObjectRelease();
    }

    else
    {
      v9 = 0;
      v11 = 0;
    }

    v12 = a2 + *(v7 + 44);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v13 = *(v12 + 8);
      ObjectType = swift_getObjectType();
      v15 = (*(v13 + 56))(ObjectType, v13);
      v17 = v16;
      swift_unknownObjectRelease();
      if (v11)
      {
        if (v17)
        {
          if (v9 == v15 && v11 == v17)
          {

            v5 = 1;
          }

          else
          {
            OUTLINED_FUNCTION_309();
            v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
          }

          goto LABEL_27;
        }

        goto LABEL_22;
      }

      if (v17)
      {
        v5 = 0;
        goto LABEL_27;
      }
    }

    else if (v11)
    {
LABEL_22:
      v5 = 0;
LABEL_27:

      return v5 & 1;
    }

    v5 = 1;
    return v5 & 1;
  }

  if (*(a2 + 64))
  {
    goto LABEL_10;
  }

LABEL_5:
  v5 = 0;
  return v5 & 1;
}

uint64_t HUDActivity.hash(into:)()
{
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = type metadata accessor for HUDActivityManager.BannerUpdate(v1);
  v3 = OUTLINED_FUNCTION_22(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v6 = v5 - v4;
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_2_143();
  _s10Foundation4UUIDVACSHAAWlTm_6(v7, v8, MEMORY[0x1E69695B8]);
  v9 = dispatch thunk of Hashable.hash(into:)();
  (*(*v0 + 232))(v9);
  v10 = OUTLINED_FUNCTION_75_11();
  HUDActivityManager.BannerUpdate.hash(into:)(v10);
  return outlined destroy of HUDActivityManager.BannerUpdate(v6);
}

uint64_t HUDActivity.deinit()
{
  v1 = OBJC_IVAR____TtC15ConversationKit11HUDActivity__dismissed;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  OUTLINED_FUNCTION_7_0();
  (*(v2 + 8))(v0 + v1);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(*(v0 + OBJC_IVAR____TtC15ConversationKit11HUDActivity_dismissHandler), *(v0 + OBJC_IVAR____TtC15ConversationKit11HUDActivity_dismissHandler + 8));

  v3 = OBJC_IVAR____TtC15ConversationKit11HUDActivity_activityId;
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_0();
  (*(v4 + 8))(v0 + v3);
  outlined destroy of HUDActivityManager.BannerUpdate(v0 + OBJC_IVAR____TtC15ConversationKit11HUDActivity_relatedUpdate);

  return v0;
}

uint64_t HUDActivity.__deallocating_deinit()
{
  HUDActivity.deinit();

  return swift_deallocClassInstance();
}

Swift::Int HUDActivity.hashValue.getter()
{
  Hasher.init(_seed:)();
  OUTLINED_FUNCTION_0_1();
  (*(v0 + 312))(v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance HUDActivity(uint64_t a1)
{
  Hasher.init(_seed:)();
  (*(**v1 + 312))(v3);
  return Hasher._finalize()();
}

uint64_t CoupledHUDActivity.childActivityObserver.setter(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKitP33_1110C52F52D8EDCF5F7A893547109D2918CoupledHUDActivity_childActivityObserver);
  *(v1 + OBJC_IVAR____TtC15ConversationKitP33_1110C52F52D8EDCF5F7A893547109D2918CoupledHUDActivity_childActivityObserver) = result;
  if (v2)
  {

    MEMORY[0x1BFB21000](v2, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
  }

  return result;
}

uint64_t CoupledHUDActivity.childActivity.didset()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v25 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v27 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA9PublishedV0C0VySb_GGMd, &_s7Combine14AsyncPublisherVyAA9PublishedV0C0VySb_GGMR);
  v28 = *(v8 - 8);
  v9 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - v12;
  result = CoupledHUDActivity.childActivityObserver.setter(0);
  v15 = *(v0 + OBJC_IVAR____TtC15ConversationKitP33_1110C52F52D8EDCF5F7A893547109D2918CoupledHUDActivity_childActivity);
  if (v15)
  {
    v25 = v8;
    v26 = v4;
    v16 = *(**(v0 + OBJC_IVAR____TtC15ConversationKitP33_1110C52F52D8EDCF5F7A893547109D2918CoupledHUDActivity_parentActivity) + 280);

    if (v16(v17))
    {
    }

    else
    {
      (*(*v15 + 160))();
      v18 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Published<Bool>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR, MEMORY[0x1E695C068]);
      MEMORY[0x1BFB1DE80](v5, v18);
      (*(v27 + 8))(v7, v5);
      v19 = type metadata accessor for TaskPriority();
      __swift_storeEnumTagSinglePayload(v26, 1, 1, v19);
      v20 = v28;
      v21 = v25;
      (*(v28 + 16))(v10, v13, v25);
      v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
      v23 = swift_allocObject();
      *(v23 + 16) = 0;
      *(v23 + 24) = 0;
      (*(v20 + 32))(v23 + v22, v10, v21);
      *(v23 + ((v9 + v22 + 7) & 0xFFFFFFFFFFFFFFF8)) = v1;

      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
      CoupledHUDActivity.childActivityObserver.setter(v24);

      return (*(v20 + 8))(v13, v21);
    }
  }

  return result;
}

uint64_t closure #1 in CoupledHUDActivity.childActivity.didset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[6] = *a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySb_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySb_G_GMR);
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in CoupledHUDActivity.childActivity.didset, 0, 0);
}

uint64_t closure #1 in CoupledHUDActivity.childActivity.didset()
{
  OUTLINED_FUNCTION_24_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA9PublishedV0C0VySb_GGMd, &_s7Combine14AsyncPublisherVyAA9PublishedV0C0VySb_GGMR);
  AsyncPublisher.makeAsyncIterator()();
  OUTLINED_FUNCTION_0_2(&lazy protocol witness table cache variable for type AsyncPublisher<Published<Bool>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySb_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySb_G_GMR);
  swift_task_alloc();
  OUTLINED_FUNCTION_14_4();
  *(v0 + 80) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_16_57(v1);

  return MEMORY[0x1EEE6D8C8](v3);
}

{
  OUTLINED_FUNCTION_24_0();
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = closure #1 in CoupledHUDActivity.childActivity.didset;
  }

  else
  {
    v2 = closure #1 in CoupledHUDActivity.childActivity.didset;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  *(v0 + 105) = *(v0 + 104);
  return MEMORY[0x1EEE6DFA0](closure #1 in CoupledHUDActivity.childActivity.didset, 0, 0);
}

{
  v21 = v0;
  v1 = *(v0 + 105);
  if (v1 == 2)
  {
    v2 = OUTLINED_FUNCTION_80_5();
    v3(v2);

    OUTLINED_FUNCTION_13();

    return v4();
  }

  else if (v1)
  {
    if (one-time initialization token for banners != -1)
    {
      OUTLINED_FUNCTION_0_178(&one-time initialization token for banners);
    }

    v6 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v6, static Logger.banners);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 40);
      v10 = OUTLINED_FUNCTION_42();
      v11 = OUTLINED_FUNCTION_23();
      v20 = v11;
      *v10 = 136315138;
      *(v0 + 24) = v9;

      v12 = String.init<A>(reflecting:)();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v20);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_1BBC58000, v7, v8, "CoupledHUDActivity - Learned about childActivity dismissing. Ending CoupledHUDActivity %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_26();
    }

    type metadata accessor for MainActor();
    *(v0 + 96) = static MainActor.shared.getter();
    OUTLINED_FUNCTION_28_0();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x1EEE6DFA0](closure #1 in CoupledHUDActivity.childActivity.didset, v16, v15);
  }

  else
  {
    OUTLINED_FUNCTION_0_2(&lazy protocol witness table cache variable for type AsyncPublisher<Published<Bool>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySb_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySb_G_GMR);
    swift_task_alloc();
    OUTLINED_FUNCTION_14_4();
    *(v0 + 80) = v17;
    *v17 = v18;
    v19 = OUTLINED_FUNCTION_16_57(v17);

    return MEMORY[0x1EEE6D8C8](v19);
  }
}

{
  OUTLINED_FUNCTION_24_0();
  *(v0 + 16) = *(v0 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v1 = MEMORY[0x1E69E73E0];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6C240](v2, v1, v3);
}

{
  OUTLINED_FUNCTION_24_0();

  CoupledHUDActivity.end()();

  return MEMORY[0x1EEE6DFA0](closure #1 in CoupledHUDActivity.childActivity.didset, 0, 0);
}

{
  OUTLINED_FUNCTION_24_0();
  v0 = OUTLINED_FUNCTION_80_5();
  v1(v0);

  OUTLINED_FUNCTION_13();

  return v2();
}

uint64_t CoupledHUDActivity.end()()
{
  result = (*(**(v0 + OBJC_IVAR____TtC15ConversationKitP33_1110C52F52D8EDCF5F7A893547109D2918CoupledHUDActivity_parentActivity) + 304))();
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKitP33_1110C52F52D8EDCF5F7A893547109D2918CoupledHUDActivity_childActivity);
  if (v2)
  {
    v3 = *(*v2 + 304);

    v3(v4);
  }

  return result;
}

uint64_t CoupledHUDActivity.childActivity.setter(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC15ConversationKitP33_1110C52F52D8EDCF5F7A893547109D2918CoupledHUDActivity_childActivity) = a1;

  CoupledHUDActivity.childActivity.didset();
}

uint64_t CoupledHUDActivity.init(withUpdate:dismissHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for HUDActivityManager.BannerUpdate(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + OBJC_IVAR____TtC15ConversationKitP33_1110C52F52D8EDCF5F7A893547109D2918CoupledHUDActivity_banner + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + OBJC_IVAR____TtC15ConversationKitP33_1110C52F52D8EDCF5F7A893547109D2918CoupledHUDActivity_childActivityObserver) = 0;
  *(v3 + OBJC_IVAR____TtC15ConversationKitP33_1110C52F52D8EDCF5F7A893547109D2918CoupledHUDActivity_childActivity) = 0;
  outlined init with copy of HUDActivityManager.BannerUpdate(a1, v9);
  type metadata accessor for HUDActivity(0);
  swift_allocObject();
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(a2, a3);
  *(v3 + OBJC_IVAR____TtC15ConversationKitP33_1110C52F52D8EDCF5F7A893547109D2918CoupledHUDActivity_parentActivity) = HUDActivity.init(withUpdate:dismissHandler:)(v9, a2, a3);
  outlined init with copy of HUDActivityManager.BannerUpdate(a1, v9);
  v10 = HUDActivity.init(withUpdate:dismissHandler:)(v9, 0, 0);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(a2, a3);
  outlined destroy of HUDActivityManager.BannerUpdate(a1);
  return v10;
}

uint64_t CoupledHUDActivity.relatedUpdate.setter(uint64_t a1)
{
  v3 = type metadata accessor for HUDActivityManager.BannerUpdate(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + OBJC_IVAR____TtC15ConversationKitP33_1110C52F52D8EDCF5F7A893547109D2918CoupledHUDActivity_parentActivity);
  outlined init with copy of HUDActivityManager.BannerUpdate(a1, v5);
  (*(*v6 + 240))(v5);
  return outlined destroy of HUDActivityManager.BannerUpdate(a1);
}

void (*CoupledHUDActivity.relatedUpdate.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(type metadata accessor for HUDActivityManager.BannerUpdate(0) - 8) + 64);
  a1[1] = __swift_coroFrameAllocStub(v3);
  a1[2] = __swift_coroFrameAllocStub(v3);
  (*(**(v1 + OBJC_IVAR____TtC15ConversationKitP33_1110C52F52D8EDCF5F7A893547109D2918CoupledHUDActivity_parentActivity) + 232))();
  return CoupledHUDActivity.relatedUpdate.modify;
}

void CoupledHUDActivity.relatedUpdate.modify(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    outlined init with copy of HUDActivityManager.BannerUpdate(v3, v2);
    CoupledHUDActivity.relatedUpdate.setter(v2);
    outlined destroy of HUDActivityManager.BannerUpdate(v3);
  }

  else
  {
    CoupledHUDActivity.relatedUpdate.setter(v3);
  }

  free(v3);

  free(v2);
}

uint64_t CoupledHUDActivity.__ivar_destroyer()
{

  outlined destroy of weak InCallControlsBaseCellDelegate?(v0 + OBJC_IVAR____TtC15ConversationKitP33_1110C52F52D8EDCF5F7A893547109D2918CoupledHUDActivity_banner);
}

uint64_t CoupledHUDActivity.deinit()
{
  HUDActivity.deinit();

  outlined destroy of weak InCallControlsBaseCellDelegate?(v0 + OBJC_IVAR____TtC15ConversationKitP33_1110C52F52D8EDCF5F7A893547109D2918CoupledHUDActivity_banner);

  return v0;
}

uint64_t CoupledHUDActivity.__deallocating_deinit()
{
  CoupledHUDActivity.deinit();

  return swift_deallocClassInstance();
}

id HUDActivityManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t key path getter for HUDActivityManager.displayResolver : HUDActivityManager@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x80))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for HUDActivityManager.displayResolver : HUDActivityManager(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x88);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t HUDActivityManager.displayResolver.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___CNKHUDActivityManager_displayResolver);
  OUTLINED_FUNCTION_3_5(v5, v7);
  *v5 = a1;
  v5[1] = a2;
  return swift_unknownObjectRelease();
}

void protocol witness for RawRepresentable.init(rawValue:) in conformance HUDActivityManager.RelevanceScore(Swift::Double *a1@<X0>, uint64_t a2@<X8>)
{
  HUDActivityManager.RelevanceScore.init(rawValue:)(*a1);
  *a2 = v3;
  *(a2 + 8) = 0;
}

double HUDActivityManager.BannerUpdate.score.getter@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t HUDActivityManager.BannerUpdate.uuid.getter()
{
  type metadata accessor for HUDActivityManager.BannerUpdate(0);
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_0();
  v0 = OUTLINED_FUNCTION_97_6();

  return v1(v0);
}

uint64_t HUDActivityManager.BannerUpdate.timestamp.getter()
{
  type metadata accessor for HUDActivityManager.BannerUpdate(0);
  type metadata accessor for Date();
  OUTLINED_FUNCTION_7_0();
  v0 = OUTLINED_FUNCTION_97_6();

  return v1(v0);
}

void *HUDActivityManager.BannerUpdate.controlsManager.getter()
{
  v1 = *(v0 + *(type metadata accessor for HUDActivityManager.BannerUpdate(0) + 40));
  v2 = v1;
  return v1;
}

uint64_t key path getter for HUDActivityManager.BannerUpdate.associatedCall : HUDActivityManager.BannerUpdate@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for HUDActivityManager.BannerUpdate(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of HUDActivityManager.BannerUpdate(a1, v7);
  v8 = &v7[*(v5 + 52)];
  Strong = swift_unknownObjectWeakLoadStrong();
  v10 = *(v8 + 1);
  result = outlined destroy of HUDActivityManager.BannerUpdate(v7);
  *a2 = Strong;
  a2[1] = v10;
  return result;
}

uint64_t key path setter for HUDActivityManager.BannerUpdate.associatedCall : HUDActivityManager.BannerUpdate(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *(a2 + *(type metadata accessor for HUDActivityManager.BannerUpdate(0) + 44) + 8) = v2;

  return swift_unknownObjectWeakAssign();
}

BOOL static HUDActivityManager.BannerUpdate.< infix(_:_:)(double *a1, double *a2)
{
  outlined init with copy of ConversationControlsType((a1 + 1), v6);
  outlined init with copy of ConversationControlsType((a2 + 1), v7);
  if (v6[40] == 1)
  {
    if (v8 == 1)
    {
      v4 = *a1 < *a2;
      outlined destroy of ConversationControlsType(v7);
      outlined destroy of ConversationControlsType(v6);
    }

    else
    {
      outlined destroy of ConversationControlsType(v6);
      outlined destroy of ConversationControlsType(v7);
      return 0;
    }
  }

  else if (v8 == 1)
  {
    outlined destroy of ConversationControlsType(v7);
    outlined destroy of ConversationControlsType(v6);
    return 1;
  }

  else
  {
    if (*a1 >= *a2)
    {
      if (*a1 == *a2)
      {
        type metadata accessor for HUDActivityManager.BannerUpdate(0);
        v4 = Date.compare(_:)() == -1;
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = 1;
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s15ConversationKit0A12ControlsTypeO_ACtMd, &_s15ConversationKit0A12ControlsTypeO_ACtMR);
  }

  return v4;
}

void HUDActivityManager.BannerUpdate.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  if (*v1 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x1BFB22680](*&v3);
  ConversationControlsType.hash(into:)(a1);
  if (*(v1 + 64) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v4 = *(v1 + 56);
    Hasher._combine(_:)(1u);
    MEMORY[0x1BFB22640](v4);
  }

  v5 = v1 + *(type metadata accessor for HUDActivityManager.BannerUpdate(0) + 44);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 56))(ObjectType, v6);
    swift_unknownObjectRelease();
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int HUDActivityManager.BannerUpdate.hashValue.getter()
{
  Hasher.init(_seed:)();
  HUDActivityManager.BannerUpdate.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance HUDActivityManager.BannerUpdate(uint64_t a1)
{
  Hasher.init(_seed:)();
  HUDActivityManager.BannerUpdate.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t key path getter for HUDActivityManager.bannerPresentationManager : HUDActivityManager@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xB0))();
  *a2 = result;
  return result;
}

uint64_t key path setter for HUDActivityManager.bannerPresentationManager : HUDActivityManager(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xB8);
  v4 = *a1;
  return v3(v2);
}

void HUDActivityManager.bannerPresentationManager.setter(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
  }

  else
  {
    swift_unknownObjectWeakAssign();
  }
}

void (*HUDActivityManager.bannerPresentationManager.modify(uint64_t *a1))(void **a1, char a2)
{
  a1[1] = v1;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return HUDActivityManager.bannerPresentationManager.modify;
}

void HUDActivityManager.bannerPresentationManager.modify(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    HUDActivityManager.bannerPresentationManager.setter(v2);
  }

  else
  {
    HUDActivityManager.bannerPresentationManager.setter(*a1);
  }
}

void HUDActivityManager.presentedActivity.didset(uint64_t a1)
{
  v3 = OBJC_IVAR___CNKHUDActivityManager_presentedActivity;
  v4 = *(v1 + OBJC_IVAR___CNKHUDActivityManager_presentedActivity);
  if (v4)
  {
    v5 = OBJC_IVAR____TtC15ConversationKit11HUDActivity_isShowing;
    swift_beginAccess();
    *(v4 + v5) = 1;
  }

  if (a1)
  {
    v6 = OBJC_IVAR____TtC15ConversationKit11HUDActivity_apertureHandle;
    swift_beginAccess();
    *(a1 + v6) = 0;
  }

  v7 = *(v1 + v3);
  if (v7)
  {
    type metadata accessor for ApertureController();

    v8 = static ApertureController.shared.getter();
    v9 = ApertureController.apertureHandle.getter();

    v10 = OBJC_IVAR____TtC15ConversationKit11HUDActivity_apertureHandle;
    swift_beginAccess();
    *(v7 + v10) = v9;
  }
}

uint64_t HUDActivityManager.presentedActivity.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___CNKHUDActivityManager_presentedActivity);
  *(v1 + OBJC_IVAR___CNKHUDActivityManager_presentedActivity) = a1;

  HUDActivityManager.presentedActivity.didset(v2);
}

uint64_t HUDActivityManager.activityForUpdate(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for HUDActivityManager.BannerUpdate(0);
  v5 = OUTLINED_FUNCTION_22(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v8 = v7 - v6;
  v9 = OBJC_IVAR___CNKHUDActivityManager_activities;
  OUTLINED_FUNCTION_4_0(v2 + OBJC_IVAR___CNKHUDActivityManager_activities, v19);
  v10 = *(v2 + v9);
  v16 = a1;

  specialized Sequence.first(where:)(partial apply for closure #1 in HUDActivityManager.activityForUpdate(_:), v15, v10);
  v12 = v11;

  if (!v12)
  {
    outlined init with copy of HUDActivityManager.BannerUpdate(a1, v8);
    OUTLINED_FUNCTION_20();
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for CoupledHUDActivity(0);
    swift_allocObject();
    v12 = CoupledHUDActivity.init(withUpdate:dismissHandler:)(v8, partial apply for closure #2 in implicit closure #1 in HUDActivityManager.activityForUpdate(_:), v13);
  }

  OUTLINED_FUNCTION_30_2(v2 + v9, v17);

  specialized Set._Variant.insert(_:)(&v18, v12);
  swift_endAccess();

  return v12;
}

uint64_t closure #1 in HUDActivityManager.activityForUpdate(_:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for HUDActivityManager.BannerUpdate(0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(**(*a1 + OBJC_IVAR____TtC15ConversationKitP33_1110C52F52D8EDCF5F7A893547109D2918CoupledHUDActivity_parentActivity) + 232))(v5);
  LOBYTE(a1) = static HUDActivityManager.BannerUpdate.== infix(_:_:)(v7, a2);
  outlined destroy of HUDActivityManager.BannerUpdate(v7);
  return a1 & 1;
}

void HUDActivityManager.updateWith(_:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMd, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMR);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  v74 = &v73 - v6;
  v73 = type metadata accessor for HUDActivityManager.BannerUpdate(0);
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_17();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v73 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v75 = &v73 - v17;
  if (*(v0 + OBJC_IVAR___CNKHUDActivityManager_presentedActivity))
  {
    OUTLINED_FUNCTION_0_1();
    v19 = *(v18 + 232);

    v21 = v75;
    v19(v20);
    v22 = static HUDActivityManager.BannerUpdate.== infix(_:_:)(v3, v21);
    outlined destroy of HUDActivityManager.BannerUpdate(v21);
    if (v22)
    {
      v76 = 26;
      v77 = 0u;
      v78 = 0u;
      v79 = 7;
      v23 = static ConversationControlsType.== infix(_:_:)(v3 + 8, &v76);
      outlined destroy of ConversationControlsType(&v76);
      if (v23)
      {
        if (one-time initialization token for banners != -1)
        {
          OUTLINED_FUNCTION_0_178(&one-time initialization token for banners);
        }

        v24 = type metadata accessor for Logger();
        __swift_project_value_buffer(v24, static Logger.banners);
        v25 = OUTLINED_FUNCTION_28_0();
        outlined init with copy of HUDActivityManager.BannerUpdate(v25, v15);
        v26 = Logger.logObject.getter();
        static os_log_type_t.default.getter();
        OUTLINED_FUNCTION_45_2();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = OUTLINED_FUNCTION_42();
          v29 = OUTLINED_FUNCTION_23();
          v76 = v29;
          *v28 = 136315138;
          v30 = v74;
          outlined init with copy of HUDActivityManager.BannerUpdate(v15, v74);
          OUTLINED_FUNCTION_12();
          __swift_storeEnumTagSinglePayload(v31, v32, v33, v73);
          specialized >> prefix<A>(_:)();
          v35 = v34;
          v37 = v36;
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v30, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMd, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMR);
          outlined destroy of HUDActivityManager.BannerUpdate(v15);
          getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, &v76);
          OUTLINED_FUNCTION_95_6();
          *(v28 + 4) = v30;
          OUTLINED_FUNCTION_70_5();
          _os_log_impl(v38, v39, v40, v41, v28, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v29);
          OUTLINED_FUNCTION_2_2();
          OUTLINED_FUNCTION_3_83();
        }

        else
        {

          outlined destroy of HUDActivityManager.BannerUpdate(v15);
        }

        goto LABEL_21;
      }
    }
  }

  v42 = OBJC_IVAR___CNKHUDActivityManager_updates;
  OUTLINED_FUNCTION_4_0(v1 + OBJC_IVAR___CNKHUDActivityManager_updates, &v76);

  OUTLINED_FUNCTION_46();
  specialized Collection<>.firstIndex(of:)();
  v44 = v43;
  v46 = v45;

  if ((v46 & 1) == 0)
  {
    OUTLINED_FUNCTION_30_2(v1 + v42, v80);
    v47 = v75;
    specialized Array.remove(at:)(v44, v75);
    outlined destroy of HUDActivityManager.BannerUpdate(v47);
    swift_endAccess();
  }

  OUTLINED_FUNCTION_30_2(v1 + v42, v80);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  v48 = *(*(v1 + v42) + 16);
  specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v48);
  v49 = *(v1 + v42);
  *(v49 + 16) = v48 + 1;
  OUTLINED_FUNCTION_40_3();
  outlined init with copy of HUDActivityManager.BannerUpdate(v3, v49 + v50 + *(v8 + 72) * v48);
  *(v1 + v42) = v49;
  swift_endAccess();
  if (one-time initialization token for banners != -1)
  {
    OUTLINED_FUNCTION_0_178(&one-time initialization token for banners);
  }

  v51 = type metadata accessor for Logger();
  __swift_project_value_buffer(v51, static Logger.banners);
  v52 = OUTLINED_FUNCTION_28_0();
  outlined init with copy of HUDActivityManager.BannerUpdate(v52, v12);
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = OUTLINED_FUNCTION_42();
    v56 = OUTLINED_FUNCTION_23();
    v80[0] = v56;
    *v55 = 136315138;
    v57 = v3;
    v58 = v74;
    outlined init with copy of HUDActivityManager.BannerUpdate(v12, v74);
    OUTLINED_FUNCTION_12();
    __swift_storeEnumTagSinglePayload(v59, v60, v61, v73);
    specialized >> prefix<A>(_:)();
    v63 = v62;
    v65 = v64;
    v66 = v58;
    v3 = v57;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v66, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMd, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMR);
    outlined destroy of HUDActivityManager.BannerUpdate(v12);
    v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v65, v80);

    *(v55 + 4) = v67;
    _os_log_impl(&dword_1BBC58000, v53, v54, "HUDActivityManager - adding bannerUpdate: %s", v55, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v56);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  else
  {

    outlined destroy of HUDActivityManager.BannerUpdate(v12);
  }

  HUDActivityManager.checkUpdatesAndPresentIfNeeded()();
  if (v68)
  {
    v69 = *(*v68 + 232);

    v71 = v75;
    v69(v70);
    v72 = static HUDActivityManager.BannerUpdate.== infix(_:_:)(v3, v71);
    outlined destroy of HUDActivityManager.BannerUpdate(v71);
    if (v72)
    {
    }

    else
    {
      (*((*MEMORY[0x1E69E7D40] & *v1) + 0x110))(v3);
    }
  }

LABEL_21:
  OUTLINED_FUNCTION_30_0();
}

uint64_t HUDActivityManager.checkUpdatesAndPresentIfNeeded()()
{
  v1 = type metadata accessor for HUDActivityManager.BannerUpdate(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v187 = &v176 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v184 = &v176 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v183 = &v176 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v189 = &v176 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v188 = &v176 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v176 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v176 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v176 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v176 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMd, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMR);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v176 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v176 - v28;
  v30 = HUDActivityManager.bannerUpdateForPresentation()(&v176 - v28);
  outlined init with copy of HUDActivityManager.BannerUpdate?(v29, v26);
  if (__swift_getEnumTagSinglePayload(v26, 1, v1) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v29, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMd, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMR);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v26, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMd, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMR);
    return 0;
  }

  v191 = v23;
  outlined init with take of HUDActivityManager.BannerUpdate(v26, v23);
  v32 = HUDActivityManager.presentedDynamicIsland.getter();
  v185 = v33;
  v34 = MEMORY[0x1E69E7D40];
  v35 = v0;
  if (v32)
  {
    v36 = v32;
    goto LABEL_5;
  }

  v60 = MEMORY[0x1E69E7D40];
  v61 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xB0))();
  if (!v61 || (v62 = v61, v63 = (*((*v60 & *v61) + 0x250))(), v62, !v63))
  {
LABEL_76:
    if (one-time initialization token for banners != -1)
    {
      swift_once();
    }

    v166 = type metadata accessor for Logger();
    __swift_project_value_buffer(v166, static Logger.banners);
    v167 = Logger.logObject.getter();
    v168 = static os_log_type_t.error.getter();
    v169 = os_log_type_enabled(v167, v168);
    v170 = v191;
    if (v169)
    {
      v171 = swift_slowAlloc();
      *v171 = 0;
      _os_log_impl(&dword_1BBC58000, v167, v168, "HUDActivityManager - Unable to makeSystemApertureElementProvider", v171, 2u);
      MEMORY[0x1BFB23DF0](v171, -1, -1);
    }

    lazy protocol witness table accessor for type BannerPresentationError and conformance BannerPresentationError();
    v31 = swift_allocError();
    *v172 = 8;
    v152 = v170;
    goto LABEL_81;
  }

  type metadata accessor for SystemBannerHostViewController(0);
  v64 = swift_dynamicCastClass();
  if (!v64)
  {
    swift_unknownObjectRelease();
    goto LABEL_76;
  }

  v36 = v64;
  v185 = &protocol witness table for SystemBannerHostViewController;
  v34 = v60;
LABEL_5:
  v176 = OBJC_IVAR___CNKHUDActivityManager_presentedActivity;
  v190 = v35;
  v37 = *(v35 + OBJC_IVAR___CNKHUDActivityManager_presentedActivity);
  v182 = v29;
  v186 = v36;
  if (v30)
  {
    if (v37)
    {
      v38 = OBJC_IVAR____TtC15ConversationKitP33_1110C52F52D8EDCF5F7A893547109D2918CoupledHUDActivity_parentActivity;
      v39 = *(**(v37 + OBJC_IVAR____TtC15ConversationKitP33_1110C52F52D8EDCF5F7A893547109D2918CoupledHUDActivity_parentActivity) + 232);
      v40 = v34;

      v39(v41);
      v42 = v20[65];
      v43 = outlined destroy of HUDActivityManager.BannerUpdate(v20);
      v34 = v40;
      if ((v42 & 1) == 0)
      {
        (*(**(v37 + v38) + 232))(v43);
        v44 = OBJC_IVAR___CNKHUDActivityManager_updates;
        v45 = v190;
        swift_beginAccess();
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v46 = *(*(v45 + v44) + 16);
        specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v46);
        v47 = *(v45 + v44);
        *(v47 + 16) = v46 + 1;
        outlined init with take of HUDActivityManager.BannerUpdate(v20, v47 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v46);
        *(v45 + v44) = v47;
        swift_endAccess();
        v34 = v40;
      }
    }

    (*((*v34 & *v190) + 0x110))(v191);

    type metadata accessor for CoupledHUDActivity(0);
    v37 = swift_dynamicCastClass();
    if (!v37)
    {
    }

    v48 = &unk_1EDDB4000;
    if (one-time initialization token for banners != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    __swift_project_value_buffer(v49, static Logger.banners);
    v50 = v190;
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v197[0] = v54;
      *v53 = 136315138;
      v55 = HUDActivityManager.presentedDynamicIsland.getter();
      if (v55)
      {
        v193[0] = v55;
        v193[1] = v56;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit14ActivityBanner_pMd, &_s15ConversationKit14ActivityBanner_pMR);
        v57 = String.init<A>(reflecting:)();
        v59 = v58;
      }

      else
      {
        v57 = 7104878;
        v59 = 0xE300000000000000;
      }

      v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v59, v197);

      *(v53 + 4) = v65;
      _os_log_impl(&dword_1BBC58000, v51, v52, "HUDActivityManager - current DI %s", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v54);
      MEMORY[0x1BFB23DF0](v54, -1, -1);
      MEMORY[0x1BFB23DF0](v53, -1, -1);

      v48 = &unk_1EDDB4000;
    }

    else
    {
    }

    v29 = v182;
    if (v37)
    {
      *(v37 + OBJC_IVAR____TtC15ConversationKitP33_1110C52F52D8EDCF5F7A893547109D2918CoupledHUDActivity_banner + 8) = v185;
      swift_unknownObjectWeakAssign();
    }
  }

  else
  {

    v48 = &unk_1EDDB4000;
  }

  if ((SBUIIsSystemApertureEnabled() & 1) == 0)
  {
    if (v48[504] != -1)
    {
      swift_once();
    }

    v66 = type metadata accessor for Logger();
    __swift_project_value_buffer(v66, static Logger.banners);
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&dword_1BBC58000, v67, v68, "HUDActivityManager - Invalid state: features.isSystemApertureEnabled is false but presentedSystemApertureElement != nil", v69, 2u);
      MEMORY[0x1BFB23DF0](v69, -1, -1);
    }
  }

  ConversationControlsType.associatedNotice.getter(v193);
  v70 = v194;
  if (v194)
  {
    v71 = v195;
    __swift_project_boxed_opaque_existential_1(v193, v194);
    (*(v71 + 64))(v197, v70, v71);
    v72 = v197[0];
    __swift_destroy_boxed_opaque_existential_1(v193);
    if (specialized == infix<A>(_:_:)(v72, 0))
    {
      v73 = MEMORY[0x1E69E7D40];
      v74 = (*((*MEMORY[0x1E69E7D40] & *v190) + 0xB0))();
      if (v74)
      {
        v75 = v74;
        v76 = (*((*v73 & *v74) + 0x1E8))();

        if (v76)
        {
          v77 = (*((*v73 & *v76) + 0x1D8))();

          if (v77 == 3)
          {
            ObjectType = swift_getObjectType();
            v180 = (v185[1])(ObjectType);
            goto LABEL_40;
          }
        }
      }
    }
  }

  else
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v193, &_s15ConversationKit6Notice_pSgMd, &_s15ConversationKit6Notice_pSgMR);
  }

  v180 = 1;
LABEL_40:
  v79 = v191;
  v80 = swift_getObjectType();
  v81 = v185[1];
  v177 = v80;
  if (v81())
  {
    ConversationControlsType.associatedNotice.getter(v193);
    v82 = v194;
    if (v194)
    {
      v83 = v195;
      __swift_project_boxed_opaque_existential_1(v193, v194);
      (*(v83 + 64))(v197, v82, v83);
      v84 = v197[0];
      __swift_destroy_boxed_opaque_existential_1(v193);
      v85 = specialized == infix<A>(_:_:)(v84, 0);
      goto LABEL_45;
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v193, &_s15ConversationKit6Notice_pSgMd, &_s15ConversationKit6Notice_pSgMR);
  }

  v85 = 0;
LABEL_45:
  v178 = v85;
  v179 = v37;
  v86 = v48[504];
  v87 = v14;
  if (v86 != -1)
  {
    swift_once();
  }

  v88 = type metadata accessor for Logger();
  v89 = __swift_project_value_buffer(v88, static Logger.banners);
  outlined init with copy of HUDActivityManager.BannerUpdate(v79, v17);
  outlined init with copy of HUDActivityManager.BannerUpdate(v79, v14);
  v90 = v188;
  outlined init with copy of HUDActivityManager.BannerUpdate(v79, v188);
  swift_unknownObjectRetain();
  v181 = v89;
  v91 = Logger.logObject.getter();
  v92 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v91, v92))
  {
    v93 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    v197[0] = v94;
    *v93 = 136447490;
    outlined init with copy of ConversationControlsType((v17 + 8), v193);
    v95 = specialized >> prefix<A>(_:)(v193);
    v97 = v96;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v193, &_s15ConversationKit0A12ControlsTypeOSgMd, &_s15ConversationKit0A12ControlsTypeOSgMR);
    outlined destroy of HUDActivityManager.BannerUpdate(v17);
    v98 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v95, v97, v197);

    *(v93 + 4) = v98;
    *(v93 + 12) = 2080;
    ConversationControlsType.associatedNotice.getter(v193);
    v99 = specialized >> prefix<A>(_:)(v193);
    v101 = v100;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v193, &_s15ConversationKit6Notice_pSgMd, &_s15ConversationKit6Notice_pSgMR);
    outlined destroy of HUDActivityManager.BannerUpdate(v87);
    v102 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v99, v101, v197);

    *(v93 + 14) = v102;
    *(v93 + 22) = 2082;
    v193[0] = (v185[2])(v177);
    v103 = String.init<A>(reflecting:)();
    v105 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v103, v104, v197);

    *(v93 + 24) = v105;
    *(v93 + 32) = 2082;
    if (*(v90 + 64))
    {
      v106 = 7104878;
      outlined destroy of HUDActivityManager.BannerUpdate(v90);
      v107 = 0xE300000000000000;
    }

    else
    {
      v193[0] = *(v90 + 56);
      v106 = String.init<A>(reflecting:)();
      v107 = v110;
      outlined destroy of HUDActivityManager.BannerUpdate(v90);
    }

    v108 = v189;
    v111 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v106, v107, v197);

    *(v93 + 34) = v111;
    *(v93 + 42) = 1024;
    *(v93 + 44) = v180 & 1;
    *(v93 + 48) = 1024;
    v109 = v178;
    *(v93 + 50) = v178 & 1;
    _os_log_impl(&dword_1BBC58000, v91, v92, "HUDActivityManager - updateSystemApertureElement type:%{public}s,\nnotice:%s,\ncurrent sizeClass:%{public}s,\nupdated sizeClass:%{public}s,\nshouldDismissPresentedBanner:%{BOOL}d,\nshouldIgnoreSizeClassUpdate:%{BOOL}d", v93, 0x36u);
    swift_arrayDestroy();
    MEMORY[0x1BFB23DF0](v94, -1, -1);
    MEMORY[0x1BFB23DF0](v93, -1, -1);

    v29 = v182;
    v79 = v191;
  }

  else
  {

    outlined destroy of HUDActivityManager.BannerUpdate(v90);
    outlined destroy of HUDActivityManager.BannerUpdate(v87);
    outlined destroy of HUDActivityManager.BannerUpdate(v17);
    v108 = v189;
    v109 = v178;
  }

  v112 = v179;
  if ((v109 & 1) == 0)
  {
    v113 = *(v79 + 56);
    v114 = *(v79 + 64);
    if (v179)
    {
      goto LABEL_55;
    }

    goto LABEL_58;
  }

  v113 = 0;
  v114 = 1;
  if (!v179)
  {
LABEL_58:
    lazy protocol witness table accessor for type SystemBannerHostError and conformance SystemBannerHostError();
    v123 = swift_allocError();
    *v124 = 3;
    swift_willThrow();
    v197[0] = v123;
    v126 = v123;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v127 = swift_dynamicCast();
    v128 = v187;
    if (v127)
    {
      if (v196 == 3)
      {

        v157 = v184;
        outlined init with copy of HUDActivityManager.BannerUpdate(v79, v184);
        v158 = Logger.logObject.getter();
        v159 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v158, v159))
        {
          v160 = swift_slowAlloc();
          v161 = swift_slowAlloc();
          v192 = v161;
          *v160 = 136446210;
          outlined init with copy of ConversationControlsType(v157 + 8, v193);
          v162 = specialized >> prefix<A>(_:)(v193);
          v164 = v163;
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v193, &_s15ConversationKit0A12ControlsTypeOSgMd, &_s15ConversationKit0A12ControlsTypeOSgMR);
          outlined destroy of HUDActivityManager.BannerUpdate(v157);
          v165 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v162, v164, &v192);

          *(v160 + 4) = v165;
          _os_log_impl(&dword_1BBC58000, v158, v159, "HUDActivityManager - Unable to update presented system aperture element during continuity session for type %{public}s", v160, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v161);
          MEMORY[0x1BFB23DF0](v161, -1, -1);
          MEMORY[0x1BFB23DF0](v160, -1, -1);
        }

        else
        {

          outlined destroy of HUDActivityManager.BannerUpdate(v157);
        }

        lazy protocol witness table accessor for type BannerPresentationError and conformance BannerPresentationError();
        v31 = swift_allocError();
        v174 = 10;
        goto LABEL_86;
      }

      if (v196 == 2)
      {

        v129 = v183;
        outlined init with copy of HUDActivityManager.BannerUpdate(v79, v183);
        v130 = Logger.logObject.getter();
        v131 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v130, v131))
        {
          v132 = swift_slowAlloc();
          v133 = swift_slowAlloc();
          v192 = v133;
          *v132 = 136446210;
          outlined init with copy of ConversationControlsType(v129 + 8, v193);
          v134 = specialized >> prefix<A>(_:)(v193);
          v136 = v135;
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v193, &_s15ConversationKit0A12ControlsTypeOSgMd, &_s15ConversationKit0A12ControlsTypeOSgMR);
          outlined destroy of HUDActivityManager.BannerUpdate(v129);
          v137 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v134, v136, &v192);

          *(v132 + 4) = v137;
          _os_log_impl(&dword_1BBC58000, v130, v131, "HUDActivityManager - Unable to update presented system aperture element for unsupported type %{public}s", v132, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v133);
          MEMORY[0x1BFB23DF0](v133, -1, -1);
          MEMORY[0x1BFB23DF0](v132, -1, -1);
        }

        else
        {

          outlined destroy of HUDActivityManager.BannerUpdate(v129);
        }

        lazy protocol witness table accessor for type BannerPresentationError and conformance BannerPresentationError();
        v31 = swift_allocError();
        v174 = 9;
LABEL_86:
        *v173 = v174;
        swift_unknownObjectRelease();

        outlined destroy of HUDActivityManager.BannerUpdate(v79);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v29, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMd, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMR);

        return v31;
      }
    }

    outlined init with copy of HUDActivityManager.BannerUpdate(v79, v128);
    v138 = v123;
    v139 = Logger.logObject.getter();
    v140 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v139, v140))
    {
      v141 = swift_slowAlloc();
      v142 = swift_slowAlloc();
      v197[0] = v142;
      *v141 = 136446466;
      outlined init with copy of ConversationControlsType(v128 + 8, v193);
      v143 = specialized >> prefix<A>(_:)(v193);
      v145 = v144;
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v193, &_s15ConversationKit0A12ControlsTypeOSgMd, &_s15ConversationKit0A12ControlsTypeOSgMR);
      outlined destroy of HUDActivityManager.BannerUpdate(v128);
      v146 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v143, v145, v197);
      v79 = v191;

      *(v141 + 4) = v146;
      *(v141 + 12) = 2080;
      v193[0] = v123;
      v147 = v123;
      v148 = String.init<A>(reflecting:)();
      v150 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v148, v149, v197);

      *(v141 + 14) = v150;
      v29 = v182;
      _os_log_impl(&dword_1BBC58000, v139, v140, "HUDActivityManager - Unable to update presented system aperture element for type %{public}s: %s", v141, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFB23DF0](v142, -1, -1);
      MEMORY[0x1BFB23DF0](v141, -1, -1);
    }

    else
    {

      outlined destroy of HUDActivityManager.BannerUpdate(v128);
    }

    dismissExistingBanner #1 () in HUDActivityManager.checkUpdatesAndPresentIfNeeded()(v180 & 1);
    lazy protocol witness table accessor for type BannerPresentationError and conformance BannerPresentationError();
    v31 = swift_allocError();
    *v151 = 8;

    swift_unknownObjectRelease();

    v152 = v79;
LABEL_81:
    outlined destroy of HUDActivityManager.BannerUpdate(v152);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v29, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMd, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMR);
    return v31;
  }

LABEL_55:
  outlined init with copy of HUDActivityManager.BannerUpdate(v79, v108);

  v115 = Logger.logObject.getter();
  v116 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v115, v116))
  {
    v117 = swift_slowAlloc();
    v118 = swift_slowAlloc();
    v197[0] = v118;
    *v117 = 136446210;
    outlined init with copy of ConversationControlsType(v108 + 8, v193);
    v119 = specialized >> prefix<A>(_:)(v193);
    v121 = v120;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v193, &_s15ConversationKit0A12ControlsTypeOSgMd, &_s15ConversationKit0A12ControlsTypeOSgMR);
    outlined destroy of HUDActivityManager.BannerUpdate(v108);
    v122 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v119, v121, v197);
    v79 = v191;

    *(v117 + 4) = v122;
    v29 = v182;
    _os_log_impl(&dword_1BBC58000, v115, v116, "HUDActivityManager - Updating banner %{public}s", v117, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v118);
    MEMORY[0x1BFB23DF0](v118, -1, -1);
    MEMORY[0x1BFB23DF0](v117, -1, -1);
  }

  else
  {

    outlined destroy of HUDActivityManager.BannerUpdate(v108);
  }

  v125 = v190;
  HUDActivityManager.present(_:with:)(v112, v113, v114);

  v153 = *(v125 + v176);
  if (v153)
  {
    v154 = OBJC_IVAR____TtC15ConversationKit11HUDActivity_isShowing;
    swift_beginAccess();
    *(v153 + v154) = 0;
  }

  HUDActivityManager.presentedActivity.setter(v155);
  Strong = swift_unknownObjectWeakLoadStrong();
  HUDActivityManager.presentedDynamicIsland.setter(Strong);
  swift_unknownObjectRelease();
  outlined destroy of HUDActivityManager.BannerUpdate(v79);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v29, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMd, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMR);
  return 0;
}

uint64_t HUDActivityManager.activityWith(_:)()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x118))();
  v3 = v2;

  return v3;
}

Swift::Void __swiftcall HUDActivityManager.dismissPresentedActivity()()
{
  if (*&v0[OBJC_IVAR___CNKHUDActivityManager_presentedActivity])
  {
    v1 = v0;
    OUTLINED_FUNCTION_28_0();

    HUDActivityManager.dismissActivity(_:)();
  }
}

Swift::Void __swiftcall HUDActivityManager.reset()()
{
  v1 = OBJC_IVAR___CNKHUDActivityManager_updates;
  OUTLINED_FUNCTION_3_5(v0 + OBJC_IVAR___CNKHUDActivityManager_updates, v5);
  *(v0 + v1) = MEMORY[0x1E69E7CC0];

  v2 = OBJC_IVAR___CNKHUDActivityManager_activities;
  OUTLINED_FUNCTION_3_5(v0 + OBJC_IVAR___CNKHUDActivityManager_activities, &v4);
  *(v0 + v2) = MEMORY[0x1E69E7CD0];

  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x128))(v3);
}

Swift::Void __swiftcall HUDActivityManager.dismissTemporaryActivity()()
{
  if (*(v0 + OBJC_IVAR___CNKHUDActivityManager_presentedActivity))
  {

    if (!HUDActivity.isPersistent.getter())
    {
      HUDActivityManager.dismissActivity(_:)();
    }
  }
}

void HUDActivityManager.shouldUpdate()()
{
  OUTLINED_FUNCTION_29();
  v6 = type metadata accessor for HUDActivityManager.BannerUpdate(0);
  v7 = OUTLINED_FUNCTION_9_0(v6);
  v9 = v8;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_38_9();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_71_0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v38 - v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_27_9();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_117_0();
  v17 = OBJC_IVAR___CNKHUDActivityManager_updates;
  OUTLINED_FUNCTION_4_0(v1 + OBJC_IVAR___CNKHUDActivityManager_updates, &v42);
  v18 = *(v1 + v17);
  v19 = *(v18 + 16);
  if (v19)
  {
    outlined init with copy of HUDActivityManager.BannerUpdate(v18 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * (v19 - 1), v0);
    v20 = *(v1 + OBJC_IVAR___CNKHUDActivityManager_presentedActivity);
    if (v20)
    {
      OUTLINED_FUNCTION_0_1();
      v22 = *(v21 + 232);

      v22(v23);

      outlined init with take of HUDActivityManager.BannerUpdate(v14, v2);
      static ConversationControlsType.== infix(_:_:)(v0 + 8, v2 + 8);
      if (one-time initialization token for banners != -1)
      {
        OUTLINED_FUNCTION_0_178(&one-time initialization token for banners);
      }

      v24 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_52(v24, static Logger.banners);
      outlined init with copy of HUDActivityManager.BannerUpdate(v2, v5);
      outlined init with copy of HUDActivityManager.BannerUpdate(v2, v4);
      outlined init with copy of HUDActivityManager.BannerUpdate(v0, v3);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();
      if (OUTLINED_FUNCTION_46_1(v26))
      {
        swift_slowAlloc();
        v39 = OUTLINED_FUNCTION_90_6();
        v41 = v39;
        *v20 = 136315906;
        outlined init with copy of ConversationControlsType((v5 + 1), v40);
        v27 = OUTLINED_FUNCTION_93_6(*v5);
        v29 = v28;
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v40, &_s15ConversationKit0A12ControlsTypeO_AA18HUDActivityManagerC14RelevanceScoreVtSgMd, &_s15ConversationKit0A12ControlsTypeO_AA18HUDActivityManagerC14RelevanceScoreVtSgMR);
        outlined destroy of HUDActivityManager.BannerUpdate(v5);
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v41);

        OUTLINED_FUNCTION_60_12();
        v30 = String.init<A>(reflecting:)();
        v32 = v31;
        outlined destroy of HUDActivityManager.BannerUpdate(v4);
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v41);

        OUTLINED_FUNCTION_89_5();
        v33 = OUTLINED_FUNCTION_93_6(*v3);
        v35 = v34;
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v40, &_s15ConversationKit0A12ControlsTypeO_AA18HUDActivityManagerC14RelevanceScoreVtSgMd, &_s15ConversationKit0A12ControlsTypeO_AA18HUDActivityManagerC14RelevanceScoreVtSgMR);
        outlined destroy of HUDActivityManager.BannerUpdate(v3);
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, &v41);
        OUTLINED_FUNCTION_95_6();
        OUTLINED_FUNCTION_58_13();
        OUTLINED_FUNCTION_65_13(&dword_1BBC58000, v36, v37, "HUDActivityManager - current score: %s, temporary: %s, new score: %s shouldUpdate: %{BOOL}d");
        OUTLINED_FUNCTION_88_5();
        OUTLINED_FUNCTION_18();
        OUTLINED_FUNCTION_27();
      }

      else
      {

        outlined destroy of HUDActivityManager.BannerUpdate(v3);
        outlined destroy of HUDActivityManager.BannerUpdate(v4);
        outlined destroy of HUDActivityManager.BannerUpdate(v5);
      }

      outlined destroy of HUDActivityManager.BannerUpdate(v2);
      outlined destroy of HUDActivityManager.BannerUpdate(v0);
    }

    else
    {
      outlined destroy of HUDActivityManager.BannerUpdate(v0);
    }
  }

  OUTLINED_FUNCTION_30_0();
}

void HUDActivityManager.shouldReplace()()
{
  OUTLINED_FUNCTION_29();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMd, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMR);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_91_9();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_38_9();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_71_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_52_15();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_27_9();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_117_0();
  v16 = OBJC_IVAR___CNKHUDActivityManager_updates;
  OUTLINED_FUNCTION_4_0(v1 + OBJC_IVAR___CNKHUDActivityManager_updates, &v38);
  v17 = *(v1 + v16);
  if (*(v17 + 16) || *(v1 + OBJC_IVAR___CNKHUDActivityManager_presentedActivity))
  {
    specialized BidirectionalCollection.last.getter(v17);
    OUTLINED_FUNCTION_43_13(v4);
    if (v18)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v4, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMd, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMR);
    }

    else
    {
      outlined init with take of HUDActivityManager.BannerUpdate(v4, v0);
      if (*(v1 + OBJC_IVAR___CNKHUDActivityManager_presentedActivity))
      {
        OUTLINED_FUNCTION_0_1();
        v20 = *(v19 + 232);

        v20(v21);

        outlined init with take of HUDActivityManager.BannerUpdate(v7, v2);
        if (static HUDActivityManager.BannerUpdate.< infix(_:_:)(v0, v2) && *(v2 + 65) == 1)
        {
          ConversationControlsType.isInterruptable.getter();
        }

        if (one-time initialization token for banners != -1)
        {
          OUTLINED_FUNCTION_0_178(&one-time initialization token for banners);
        }

        v22 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_52(v22, static Logger.banners);
        outlined init with copy of HUDActivityManager.BannerUpdate(v2, v6);
        outlined init with copy of HUDActivityManager.BannerUpdate(v2, v5);
        outlined init with copy of HUDActivityManager.BannerUpdate(v0, v3);
        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.default.getter();
        if (OUTLINED_FUNCTION_46_1(v24))
        {
          swift_slowAlloc();
          v37 = OUTLINED_FUNCTION_90_6();
          *v7 = 136315906;
          outlined init with copy of ConversationControlsType((v6 + 1), v36);
          v25 = OUTLINED_FUNCTION_93_6(*v6);
          v27 = v26;
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v36, &_s15ConversationKit0A12ControlsTypeO_AA18HUDActivityManagerC14RelevanceScoreVtSgMd, &_s15ConversationKit0A12ControlsTypeO_AA18HUDActivityManagerC14RelevanceScoreVtSgMR);
          outlined destroy of HUDActivityManager.BannerUpdate(v6);
          getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v37);

          OUTLINED_FUNCTION_60_12();
          v28 = String.init<A>(reflecting:)();
          v30 = v29;
          outlined destroy of HUDActivityManager.BannerUpdate(v5);
          getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v37);

          OUTLINED_FUNCTION_89_5();
          v31 = OUTLINED_FUNCTION_93_6(*v3);
          v33 = v32;
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v36, &_s15ConversationKit0A12ControlsTypeO_AA18HUDActivityManagerC14RelevanceScoreVtSgMd, &_s15ConversationKit0A12ControlsTypeO_AA18HUDActivityManagerC14RelevanceScoreVtSgMR);
          outlined destroy of HUDActivityManager.BannerUpdate(v3);
          getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, &v37);
          OUTLINED_FUNCTION_95_6();
          OUTLINED_FUNCTION_58_13();
          OUTLINED_FUNCTION_65_13(&dword_1BBC58000, v34, v35, "HUDActivityManager - current score: %s, temporary: %s, new score: %s shouldReplace: %{BOOL}d");
          OUTLINED_FUNCTION_88_5();
          OUTLINED_FUNCTION_18();
          OUTLINED_FUNCTION_27();
        }

        else
        {

          outlined destroy of HUDActivityManager.BannerUpdate(v3);
          outlined destroy of HUDActivityManager.BannerUpdate(v5);
          outlined destroy of HUDActivityManager.BannerUpdate(v6);
        }

        outlined destroy of HUDActivityManager.BannerUpdate(v2);
        outlined destroy of HUDActivityManager.BannerUpdate(v0);
      }

      else
      {
        outlined destroy of HUDActivityManager.BannerUpdate(v0);
      }
    }
  }

  OUTLINED_FUNCTION_30_0();
}

void HUDActivityManager.dismissActivity(_:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  v3 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v83 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v82 = v7 - v6;
  v89 = type metadata accessor for HUDActivityManager.BannerUpdate(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_17();
  v92 = (v9 - v10);
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v79 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_22(v14);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v79 - v16;
  if (one-time initialization token for banners != -1)
  {
    OUTLINED_FUNCTION_0_178(&one-time initialization token for banners);
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logger.banners);
  v19 = v0;

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  v22 = os_log_type_enabled(v20, v21);
  v23 = &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyAA5ImageV_Qo_AA16_FixedSizeLayoutVGMd;
  v90 = v2;
  if (v22)
  {
    v24 = OUTLINED_FUNCTION_30_1();
    v91 = OUTLINED_FUNCTION_29_7();
    v96[0] = v91;
    *v24 = 136315394;
    v25 = *&v19[OBJC_IVAR___CNKHUDActivityManager_presentedActivity];
    if (v25)
    {
      (*(v83 + 16))(v17, v25 + OBJC_IVAR____TtC15ConversationKit11HUDActivity_activityId, v3);
      v26 = 0;
    }

    else
    {
      v26 = 1;
    }

    __swift_storeEnumTagSinglePayload(v17, v26, 1, v3);
    specialized >> prefix<A>(_:)(v17, v27, v28, v29, v30, v31, v32, v33, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v17, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v34 = OUTLINED_FUNCTION_46();
    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, v36);

    *(v24 + 4) = v37;
    *(v24 + 12) = 2080;
    v38 = OBJC_IVAR____TtC15ConversationKit11HUDActivity_activityId;
    OUTLINED_FUNCTION_2_143();
    _s10Foundation4UUIDVACSHAAWlTm_6(v39, v40, MEMORY[0x1E69695E0]);
    v23 = (v90 + v38);
    v41 = dispatch thunk of CustomStringConvertible.description.getter();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, v96);
    OUTLINED_FUNCTION_28_0();

    *(v24 + 14) = v23;
    _os_log_impl(&dword_1BBC58000, v20, v21, "HUDActivityManager Trying to dismiss activity %s -- %s", v24, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_239();
    OUTLINED_FUNCTION_27();
  }

  v87 = v3;
  v43 = OBJC_IVAR___CNKHUDActivityManager_activities;
  OUTLINED_FUNCTION_4_0(&v19[OBJC_IVAR___CNKHUDActivityManager_activities], &v95);
  v86 = v19;
  v81 = v43;
  v85 = *&v19[v43];
  v44 = v85;
  if ((v85 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    v45 = OUTLINED_FUNCTION_17_1();
    v23 = type metadata accessor for CoupledHUDActivity(v45);
    _s10Foundation4UUIDVACSHAAWlTm_6(&lazy protocol witness table cache variable for type CoupledHUDActivity and conformance HUDActivity, type metadata accessor for CoupledHUDActivity, &protocol conformance descriptor for HUDActivity);
    OUTLINED_FUNCTION_46();
    Set.Iterator.init(_cocoa:)();
    v44 = v96[0];
    v46 = v96[1];
    v47 = v96[2];
    v48 = v96[3];
    v49 = v96[4];
  }

  else
  {
    v50 = -1 << *(v85 + 32);
    v46 = v85 + 56;
    v47 = ~v50;
    v51 = -v50;
    if (v51 < 64)
    {
      v52 = ~(-1 << v51);
    }

    else
    {
      v52 = -1;
    }

    v49 = v52 & *(v85 + 56);
    swift_bridgeObjectRetain_n();
    v48 = 0;
  }

  v53 = v90;
  v84 = v47;
  v54 = (v47 + 64) >> 6;
  v91 = v44;
  while (v44 < 0)
  {
    v60 = __CocoaSet.Iterator.next()();
    if (!v60)
    {
      goto LABEL_51;
    }

    v93 = v60;
    type metadata accessor for CoupledHUDActivity(0);
    swift_dynamicCast();
    v57 = v48;
    v58 = v49;
    if (!v94[0])
    {
LABEL_59:
      v44 = v91;
LABEL_51:
      OUTLINED_FUNCTION_83_8(v44);
      v70 = v86;
      goto LABEL_52;
    }

LABEL_24:
    OUTLINED_FUNCTION_0_1();
    v62 = (*(v61 + 232))();
    (*(*v53 + 232))(v62);
    v23 = v92;
    if (*v13 != *v92 || (static ConversationControlsType.== infix(_:_:)((v13 + 8), (v92 + 1)) & 1) == 0)
    {
      goto LABEL_28;
    }

    v63 = *(v23 + 64);
    if (v13[64])
    {
      if (!*(v23 + 64))
      {
        goto LABEL_28;
      }

LABEL_32:
      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_getObjectType();
        OUTLINED_FUNCTION_54_13();
        v80 = v64();
        v88 = v65;
        swift_unknownObjectRelease();
      }

      else
      {
        v80 = 0;
        v88 = 0;
      }

      if (!swift_unknownObjectWeakLoadStrong())
      {
        v23 = v92;
        if (v88)
        {
LABEL_45:

          outlined destroy of HUDActivityManager.BannerUpdate(v23);
          outlined destroy of HUDActivityManager.BannerUpdate(v13);
          goto LABEL_50;
        }

        v68 = 0;
        goto LABEL_48;
      }

      swift_getObjectType();
      OUTLINED_FUNCTION_54_13();
      v79 = v66();
      v68 = v67;
      swift_unknownObjectRelease();
      if (!v88)
      {
        v23 = v92;
LABEL_48:
        outlined destroy of HUDActivityManager.BannerUpdate(v23);
        outlined destroy of HUDActivityManager.BannerUpdate(v13);
        if (!v68)
        {
          goto LABEL_62;
        }

        goto LABEL_50;
      }

      v23 = v92;
      if (!v68)
      {
        goto LABEL_45;
      }

      if (v80 == v79 && v88 == v68)
      {
        goto LABEL_61;
      }

      LODWORD(v80) = _stringCompareWithSmolCheck(_:_:expecting:)();

      outlined destroy of HUDActivityManager.BannerUpdate(v23);
      outlined destroy of HUDActivityManager.BannerUpdate(v13);
      if (v80)
      {
        goto LABEL_62;
      }

LABEL_50:
      v48 = v57;
      v49 = v58;
      v53 = v90;
      v44 = v91;
    }

    else
    {
      if (*(v13 + 7) != v23[7])
      {
        v63 = 1;
      }

      if ((v63 & 1) == 0)
      {
        goto LABEL_32;
      }

LABEL_28:

      outlined destroy of HUDActivityManager.BannerUpdate(v23);
      outlined destroy of HUDActivityManager.BannerUpdate(v13);
      v48 = v57;
      v49 = v58;
      v44 = v91;
    }
  }

  v55 = v48;
  v56 = v49;
  v57 = v48;
  if (v49)
  {
LABEL_20:
    v58 = (v56 - 1) & v56;
    v59 = *(*(v44 + 48) + ((v57 << 9) | (8 * __clz(__rbit64(v56)))));

    if (!v59)
    {
      goto LABEL_59;
    }

    goto LABEL_24;
  }

  while (1)
  {
    v57 = v55 + 1;
    if (__OFADD__(v55, 1))
    {
      break;
    }

    if (v57 >= v54)
    {
      goto LABEL_51;
    }

    v56 = *(v46 + 8 * v57);
    ++v55;
    if (v56)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_61:

  outlined destroy of HUDActivityManager.BannerUpdate(v23);
  outlined destroy of HUDActivityManager.BannerUpdate(v13);
LABEL_62:
  OUTLINED_FUNCTION_83_8(v91);
  v70 = v86;
  OUTLINED_FUNCTION_30_2(v86 + v81, v94);
  specialized Set._Variant.remove(_:)();
  swift_endAccess();

LABEL_52:
  v71 = *(v70 + OBJC_IVAR___CNKHUDActivityManager_presentedActivity);
  v72 = v87;
  if (v71)
  {
    v73 = v83;
    v74 = v82;
    (*(v83 + 16))(v82, v71 + OBJC_IVAR____TtC15ConversationKit11HUDActivity_activityId, v87);

    v75 = static UUID.== infix(_:_:)();
    (*(v73 + 8))(v74, v72);
    if (v75)
    {
      HUDActivityManager.presentedActivity.setter(0);
      v76 = HUDActivityManager.checkUpdatesAndPresentIfNeeded()();

      goto LABEL_58;
    }
  }

  v77 = OBJC_IVAR___CNKHUDActivityManager_updates;
  OUTLINED_FUNCTION_30_2(v70 + OBJC_IVAR___CNKHUDActivityManager_updates, v94);
  v78 = v90;

  if (*(*(v70 + v77) + 16) < specialized MutableCollection._halfStablePartition(isSuffixElement:)((v70 + v77), v78))
  {
    __break(1u);
  }

  else
  {
    specialized Array.replaceSubrange<A>(_:with:)();
    swift_endAccess();
LABEL_58:
    OUTLINED_FUNCTION_30_0();
  }
}

id HUDActivityManager.init()()
{
  v1 = &v0[OBJC_IVAR___CNKHUDActivityManager_displayResolver];
  *v1 = 0;
  *(v1 + 1) = 0;
  v2 = OBJC_IVAR___CNKHUDActivityManager_features;
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for shared);
  }

  v3 = static Features.shared;
  *&v0[v2] = static Features.shared;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR___CNKHUDActivityManager_presentedActivity] = 0;
  *&v0[OBJC_IVAR___CNKHUDActivityManager_updates] = MEMORY[0x1E69E7CC0];
  *&v0[OBJC_IVAR___CNKHUDActivityManager_activities] = MEMORY[0x1E69E7CD0];
  v6.receiver = v0;
  v6.super_class = type metadata accessor for HUDActivityManager();
  v4 = v3;
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t ApertureController.systemApertureElementIsShowingHUD.getter()
{
  v1 = type metadata accessor for ApertureDisplayLayout();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_27_9();
  MEMORY[0x1EEE9AC00](v5);
  ApertureController.currentLayout.getter();
  (*(v3 + 104))(v0, *MEMORY[0x1E6995B18], v1);
  v6 = static ApertureDisplayLayout.== infix(_:_:)();
  v7 = *(v3 + 8);
  v7(v0, v1);
  v8 = OUTLINED_FUNCTION_309();
  (v7)(v8);
  return v6 & 1;
}

uint64_t ApertureController.updateContent(for:using:controllingWith:fromActivityManager:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  OUTLINED_FUNCTION_22(v1);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v11 - v3;
  v5 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  type metadata accessor for MainActor();
  v6 = v0;
  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E85E0];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v6;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfC16CommunicationsUI21ApertureElementHandleC_Tt2g5();
}

uint64_t closure #1 in ApertureController.updateContent(for:using:controllingWith:fromActivityManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI25ApertureAccessoryTemplateVSgMd, &_s16CommunicationsUI25ApertureAccessoryTemplateVSgMR);
  v4[4] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[5] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in ApertureController.updateContent(for:using:controllingWith:fromActivityManager:), v6, v5);
}

uint64_t closure #1 in ApertureController.updateContent(for:using:controllingWith:fromActivityManager:)()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);

  v3 = [objc_allocWithZone(MEMORY[0x1E69DD258]) init];
  v4 = type metadata accessor for ApertureAccessoryTemplate();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v4);
  v5 = ApertureController.present(_:apertureAccessories:animated:)();

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v1, &_s16CommunicationsUI25ApertureAccessoryTemplateVSgMd, &_s16CommunicationsUI25ApertureAccessoryTemplateVSgMR);
  *v2 = v5;

  OUTLINED_FUNCTION_13();

  return v6();
}

uint64_t HUDActivityManager.bannerUpdateForPresentation()(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMd, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v59 = &v51 - v5;
  v6 = type metadata accessor for HUDActivityManager.BannerUpdate(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = OBJC_IVAR___CNKHUDActivityManager_updates;
  swift_beginAccess();
  specialized MutableCollection<>.sort(by:)(&v1[v10]);
  swift_endAccess();
  if (one-time initialization token for banners != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  v12 = __swift_project_value_buffer(v11, static Logger.banners);
  v13 = v1;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v54 = v7;
    v57 = v15;
    v58 = v12;
    v16 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v63[0] = v55;
    v56 = v16;
    *v16 = 136315138;
    v17 = *&v2[v10];
    v18 = *(v17 + 16);
    v19 = MEMORY[0x1E69E7CC0];
    if (v18)
    {
      v51 = v14;
      v52 = v6;
      v53 = a1;
      v62 = MEMORY[0x1E69E7CC0];

      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18, 0);
      v19 = v62;
      v20 = v17 + ((*(v54 + 80) + 32) & ~*(v54 + 80));
      v21 = *(v54 + 72);
      do
      {
        outlined init with copy of HUDActivityManager.BannerUpdate(v20, v9);
        outlined init with copy of ConversationControlsType((v9 + 1), v60);
        v22 = *v9;
        outlined destroy of HUDActivityManager.BannerUpdate(v9);
        v61 = v22;
        v62 = v19;
        v24 = *(v19 + 16);
        v23 = *(v19 + 24);
        if (v24 >= v23 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
          v19 = v62;
        }

        *(v19 + 16) = v24 + 1;
        v25 = v19 + 56 * v24;
        v26 = v60[0];
        v27 = v60[1];
        v28 = v60[2];
        *(v25 + 80) = v61;
        *(v25 + 48) = v27;
        *(v25 + 64) = v28;
        *(v25 + 32) = v26;
        v20 += v21;
        --v18;
      }

      while (v18);

      v6 = v52;
      a1 = v53;
      v14 = v51;
    }

    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A12ControlsTypeO_AA18HUDActivityManagerC14RelevanceScoreVtMd, &_s15ConversationKit0A12ControlsTypeO_AA18HUDActivityManagerC14RelevanceScoreVtMR);
    v30 = MEMORY[0x1BFB20D10](v19, v29);
    v32 = v31;

    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, v63);

    v34 = v56;
    *(v56 + 1) = v33;
    _os_log_impl(&dword_1BBC58000, v14, v57, "HUDActivityManager currentUpdates: %s", v34, 0xCu);
    v35 = v55;
    __swift_destroy_boxed_opaque_existential_1(v55);
    MEMORY[0x1BFB23DF0](v35, -1, -1);
    MEMORY[0x1BFB23DF0](v34, -1, -1);
  }

  else
  {
  }

  HUDActivityManager.shouldReplace()();
  v37 = v36;
  v38 = v13;
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *&v60[0] = v42;
    *v41 = 67109378;
    *(v41 + 4) = v37 & 1;
    *(v41 + 8) = 2080;
    HUDActivityManager.shouldUpdate()();
    LOBYTE(v63[0]) = v43 & 1;
    v44 = String.init<A>(reflecting:)();
    v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, v60);

    *(v41 + 10) = v46;
    _os_log_impl(&dword_1BBC58000, v39, v40, "HUDActivityManager - shouldReplace: %{BOOL}d shouldUpdate: %s", v41, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v42);
    MEMORY[0x1BFB23DF0](v42, -1, -1);
    MEMORY[0x1BFB23DF0](v41, -1, -1);
  }

  v47 = v59;
  if (v37 & 1) != 0 || (HUDActivityManager.shouldUpdate()(), (v48))
  {
    HUDActivityManager.getCurrentUpdate()(v47);
    if (__swift_getEnumTagSinglePayload(v47, 1, v6) != 1)
    {
      outlined init with take of HUDActivityManager.BannerUpdate(v47, a1);
      v49 = 0;
      goto LABEL_20;
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v47, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMd, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMR);
  }

  v37 = 0;
  v49 = 1;
LABEL_20:
  __swift_storeEnumTagSinglePayload(a1, v49, 1, v6);
  return v37 & 1;
}

uint64_t HUDActivityManager.presentedDynamicIsland.getter()
{
  v1 = Features.isModernBannerSystemEnabled.getter();
  v2 = MEMORY[0x1E69E7D40];
  v3 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xB0))();
  v4 = v3;
  if ((v1 & 1) == 0)
  {
    if (v3)
    {
      v7 = (*((*v2 & *v3) + 0x200))();

      return v7;
    }

    return 0;
  }

  if (!v3)
  {
    return 0;
  }

  v5 = (*((*v2 & *v3) + 0x218))();

  if (!v5)
  {
    return 0;
  }

  ObjectType = swift_getObjectType();
  v7 = dynamic_cast_existential_1_conditional(v5, ObjectType, &protocol descriptor for ActivityBanner);
  if (!v7)
  {
    swift_unknownObjectRelease();
  }

  return v7;
}

uint64_t HUDActivityManager.presentedDynamicIsland.setter(uint64_t a1)
{
  v3 = Features.isModernBannerSystemEnabled.getter();
  v4 = MEMORY[0x1E69E7D40];
  v5 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xB0))();
  v6 = v5;
  if (v3)
  {
    if (v5)
    {
      if (a1)
      {
        v7 = swift_dynamicCastObjCProtocolConditional();
        if (v7)
        {
          swift_unknownObjectRetain();
        }
      }

      else
      {
        v7 = 0;
      }

      (*((*v4 & *v6) + 0x220))(v7);

      return swift_unknownObjectRelease();
    }
  }

  else if (v5)
  {
    if (a1)
    {
      type metadata accessor for SystemBannerHostViewController(0);
      v8 = swift_dynamicCastClass();
      if (v8)
      {
        swift_unknownObjectRetain();
      }
    }

    else
    {
      v8 = 0;
    }

    (*((*v4 & *v6) + 0x208))(v8);
  }

  return swift_unknownObjectRelease();
}

uint64_t HUDActivityManager.forceSuppressSystemApertureOverAssociatedScene.getter()
{
  OUTLINED_FUNCTION_137();
  v1 = (*(v0 + 176))();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  OUTLINED_FUNCTION_26_40();
  v4 = (*(v3 + 512))();

  if (!v4)
  {
    return 0;
  }

  OUTLINED_FUNCTION_137();
  v6 = (*(v5 + 1096))();

  return v6 & 1;
}

void (*HUDActivityManager.forceSuppressSystemApertureOverAssociatedScene.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = HUDActivityManager.forceSuppressSystemApertureOverAssociatedScene.getter() & 1;
  return HUDActivityManager.forceSuppressSystemApertureOverAssociatedScene.modify;
}

uint64_t HUDActivityManager.getCurrentUpdate()@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMd, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v21[-v8];
  v10 = type metadata accessor for HUDActivityManager.BannerUpdate(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  specialized RangeReplaceableCollection<>.popLast()(v9);
  swift_endAccess();
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) != 1)
  {
    outlined init with take of HUDActivityManager.BannerUpdate(v9, v12);
    outlined init with take of HUDActivityManager.BannerUpdate(v12, a1);
    goto LABEL_6;
  }

  v13 = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v9, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMd, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMR);
  if (!(*((*MEMORY[0x1E69E7D40] & *v1) + 0x80))(v13))
  {
    memset(v21, 0, 40);
    v21[40] = -1;
    goto LABEL_8;
  }

  v15 = v14;
  ObjectType = swift_getObjectType();
  (*(v15 + 40))(v21, ObjectType, v15);
  swift_unknownObjectRelease();
  if (v21[40] == 255)
  {
LABEL_8:
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v21, &_s15ConversationKit0A12ControlsTypeOSgMd, &_s15ConversationKit0A12ControlsTypeOSgMR);
    v18 = a1;
    v19 = 1;
    return __swift_storeEnumTagSinglePayload(v18, v19, 1, v10);
  }

  v22 = *v21;
  v23[0] = *&v21[16];
  *(v23 + 9) = *&v21[25];
  outlined init with copy of ConversationControlsType(&v22, v21);
  UUID.init()();
  v17 = a1 + v10[11];
  *(v17 + 8) = 0;
  swift_unknownObjectWeakInit();
  *a1 = 0x4082C00000000000;
  outlined init with copy of ConversationControlsType(v21, a1 + 8);
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  *(v17 + 8) = 0;
  swift_unknownObjectWeakAssign();
  *(a1 + 65) = 1;
  (*(v4 + 16))(a1 + v10[8], v6, v3);
  static Date.now.getter();
  (*(v4 + 8))(v6, v3);
  outlined destroy of ConversationControlsType(v21);
  outlined destroy of ConversationControlsType(&v22);
  *(a1 + v10[10]) = 0;
  *(a1 + v10[12]) = 0;
LABEL_6:
  v18 = a1;
  v19 = 0;
  return __swift_storeEnumTagSinglePayload(v18, v19, 1, v10);
}

void dismissExistingBanner #1 () in HUDActivityManager.checkUpdatesAndPresentIfNeeded()(char a1)
{
  if (a1)
  {
    if (one-time initialization token for banners != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Logger.banners);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1BBC58000, v2, v3, "HUDActivityManager - Dismissing current banner", v4, 2u);
      MEMORY[0x1BFB23DF0](v4, -1, -1);
    }

    v5._countAndFlagsBits = 0;
    v5._object = 0xE000000000000000;
    HUDActivityManager.dismissPresentedBanner(forReason:animated:)(v5, 0);
  }
}

Swift::Void __swiftcall HUDActivityManager.dismissPresentedBanner(forReason:animated:)(Swift::String forReason, Swift::Bool animated)
{
  object = forReason._object;
  countAndFlagsBits = forReason._countAndFlagsBits;
  v6 = [objc_opt_self() sharedInstance];
  v10 = [v6 pendingUpgradeCall];

  v7 = v10;
  if (!v10)
  {
    v8 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0xB0))();
    if (!v8)
    {
      return;
    }

    v9 = v8;
    v11 = MEMORY[0x1BFB209B0](countAndFlagsBits, object);
    [v9 dismissPresentedBannerForReason:v11 animated:animated];

    v7 = v11;
  }
}

void HUDActivityManager.present(_:with:)(uint64_t a1, uint64_t a2, int a3)
{
  v63 = a2;
  v62 = a3;
  v4 = type metadata accessor for HUDActivityManager.BannerUpdate(0);
  v58 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v57 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = v5;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v55 - v8;
  (*(**(a1 + OBJC_IVAR____TtC15ConversationKitP33_1110C52F52D8EDCF5F7A893547109D2918CoupledHUDActivity_parentActivity) + 232))(v7);
  v60 = a1;
  v10 = a1 + OBJC_IVAR____TtC15ConversationKitP33_1110C52F52D8EDCF5F7A893547109D2918CoupledHUDActivity_banner;
  Strong = swift_unknownObjectWeakLoadStrong();
  v61 = *(v10 + 8);
  v12 = *&v9[*(v4 + 40)];
  v13 = MEMORY[0x1E69E7D40];
  v14 = v12;
  if (!v12)
  {
    v15 = &v9[*(v4 + 44)];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v16 = v13;
      v56 = Strong;
      v17 = *(v15 + 1);
      v18 = type metadata accessor for ConversationControlsManager(0);
      ObjectType = swift_getObjectType();
      v20 = swift_unknownObjectRetain();
      v14 = specialized ConversationControlsManager.__allocating_init(activeCall:)(v20, v18, ObjectType, v17, v21, v22, v23, v24, v55, v56);
      v25 = (*v13 & *v64) + 176;
      v26 = *((*v13 & *v64) + 0xB0);
      v55 = v25;
      v27 = v26();
      if (v27)
      {
        v28 = v27;
        v29 = (*((*v16 & *v27) + 0x128))();
      }

      else
      {
        v29 = 0;
      }

      v35 = (*((*v16 & *v14) + 0x520))(v29);
      (v26)(v35);
      v36 = (*((*v16 & *v14) + 0x4C0))();
      v37 = (v26)(v36);
      if (v37)
      {
        v38 = v37;
        v39 = *(v37 + OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_gameControllerManager);
      }

      else
      {
        v39 = 0;
      }

      Strong = v56;
      v13 = MEMORY[0x1E69E7D40];
      (*((*MEMORY[0x1E69E7D40] & *v14) + 0x348))(v39);
      swift_unknownObjectRelease();
      if (!Strong)
      {
        goto LABEL_15;
      }

      goto LABEL_7;
    }

    v14 = 0;
  }

  if (!Strong)
  {
LABEL_15:
    v40 = v12;
    goto LABEL_16;
  }

LABEL_7:
  v30 = swift_getObjectType();
  v31 = v61;
  v32 = *(v61 + 32);
  v33 = v12;
  swift_unknownObjectRetain();
  v34 = v69;
  v32(v9 + 8, v63, v62 & 1, v14, 0, v30, v31);
  v69 = v34;
  if (v34)
  {
    outlined destroy of HUDActivityManager.BannerUpdate(v9);
    swift_unknownObjectRelease_n();

    return;
  }

  swift_unknownObjectRelease();
  v13 = MEMORY[0x1E69E7D40];
LABEL_16:
  v41 = outlined init with copy of ConversationControlsType((v9 + 8), &aBlock);
  if (v68 == 4)
  {
    v41 = outlined destroy of ConversationControlsType(&aBlock);
    goto LABEL_27;
  }

  if (v68 == 5 || v68 == 7 && (aBlock != 31 ? (v42 = aBlock == 26) : (v42 = 1), v42 && (v43 = vorrq_s8(v66, v67), !*&vorr_s8(*v43.i8, *&vextq_s8(v43, v43, 8uLL)))))
  {
LABEL_27:
    v44 = (*((*v13 & *v64) + 0xB0))(v41);
    if (v44)
    {
      v45 = v44;
      v46 = (*((*v13 & *v44) + 0x110))();

      if (v46)
      {
        v47 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v48 = swift_allocObject();
        swift_weakInit();
        v49 = v57;
        outlined init with copy of HUDActivityManager.BannerUpdate(v9, v57);
        v50 = (*(v58 + 80) + 24) & ~*(v58 + 80);
        v51 = (v59 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
        v52 = swift_allocObject();
        v56 = Strong;
        v53 = v52;
        *(v52 + 16) = v47;
        outlined init with take of HUDActivityManager.BannerUpdate(v49, v52 + v50);
        *(v53 + v51) = v48;
        v67.i64[1] = partial apply for closure #1 in HUDActivityManager.present(_:with:);
        v68 = v53;
        aBlock = MEMORY[0x1E69E9820];
        v66.i64[0] = 1107296256;
        v66.i64[1] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
        v67.i64[0] = &block_descriptor_84;
        v54 = _Block_copy(&aBlock);

        [v46 bannerPresentationManagerRequestToPresentBanner_];
        _Block_release(v54);
        swift_unknownObjectRelease();
      }
    }

    swift_unknownObjectRelease();

    goto LABEL_31;
  }

  swift_unknownObjectRelease();

  outlined destroy of ConversationControlsType(&aBlock);
LABEL_31:
  outlined destroy of HUDActivityManager.BannerUpdate(v9);
}

void closure #1 in HUDActivityManager.present(_:with:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = MEMORY[0x1E69E7D40];
  if (Strong)
  {
    v8 = Strong;
    v9 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0xB0))();

    if (v9)
    {
      v10 = (*((*v7 & *v9) + 0x110))();

      if (v10)
      {
        if ([v10 respondsToSelector_])
        {
          v11 = [v10 bannerPresentationManagerWantsSpringBoardIsLockedStatus];
          swift_unknownObjectRelease();
          if ((a1 & 1) == 0)
          {
            return;
          }

          goto LABEL_10;
        }

        swift_unknownObjectRelease();
      }
    }
  }

  if ((a1 & 1) == 0)
  {
    return;
  }

  v11 = 0;
LABEL_10:
  outlined init with copy of ConversationControlsType(a3 + 8, &v19);
  if (v22 == 5 || v22 == 7 && (v19 != 31 ? (v12 = v19 == 26) : (v12 = 1), v12 && (v13 = vorrq_s8(v20, v21), !*&vorr_s8(*v13.i8, *&vextq_s8(v13, v13, 8uLL)))) || (outlined destroy of ConversationControlsType(&v19), (v11 & 1) == 0))
  {
    if (one-time initialization token for banners != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.banners);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1BBC58000, v15, v16, "HUDActivityManager - Presenting banner because ICS full screen", v17, 2u);
      MEMORY[0x1BFB23DF0](v17, -1, -1);
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      v18 = (*((*v7 & *static BannerActivityManager.shared) + 0x110))(a3);
      CoupledHUDActivity.childActivity.setter(v18);
    }
  }
}

id one-time initialization function for shared(uint64_t a1, uint64_t (*a2)(uint64_t), void *a3)
{
  result = [objc_allocWithZone(a2(a1)) init];
  *a3 = result;
  return result;
}

uint64_t key path getter for BannerActivityManager.bannerPresentationManager : BannerActivityManager@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x90))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for BannerActivityManager.bannerPresentationManager : BannerActivityManager(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x98);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t (*BannerActivityManager.bannerPresentationManager.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v1;
  v3 = v1 + OBJC_IVAR____TtC15ConversationKit21BannerActivityManager__bannerPresentationManager;
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a1 = Strong;
  a1[1] = v5;
  return BannerActivityManager.bannerPresentationManager.modify;
}

uint64_t key path getter for BannerActivityManager.callUIPresentationStateProvider : BannerActivityManager@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xC0))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for BannerActivityManager.callUIPresentationStateProvider : BannerActivityManager(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xC8);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t BannerActivityManager.bannerPresentationManager.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3 + *a3;
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
  }

  else
  {
    *(v5 + 8) = a2;
    swift_unknownObjectWeakAssign();
  }

  return swift_unknownObjectRelease();
}

uint64_t (*BannerActivityManager.callUIPresentationStateProvider.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v1;
  v3 = v1 + OBJC_IVAR____TtC15ConversationKit21BannerActivityManager__callUIPresentationStateProvider;
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a1 = Strong;
  a1[1] = v5;
  return BannerActivityManager.callUIPresentationStateProvider.modify;
}

uint64_t BannerActivityManager.bannerPresentationManager.modify(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v4 = a1[1];
  if ((a2 & 1) == 0)
  {
    return a3(*a1, v4);
  }

  v5 = swift_unknownObjectRetain();
  a3(v5, v4);

  return swift_unknownObjectRelease();
}

Swift::Int BannerActivityManager.DismissActivityRequest.Reason.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](0);
  return Hasher._finalize()();
}

void BannerActivityManager.start(_:)()
{
  OUTLINED_FUNCTION_29();
  v5 = v0;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMd, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMR);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_91_9();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_39_3();
  if (one-time initialization token for banners != -1)
  {
    OUTLINED_FUNCTION_0_178(&one-time initialization token for banners);
  }

  v13 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v13, static Logger.banners);
  outlined init with copy of HUDActivityManager.BannerUpdate(v7, v3);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_46_1(v15))
  {
    v16 = OUTLINED_FUNCTION_42();
    v17 = OUTLINED_FUNCTION_23();
    v33[0] = v17;
    *v16 = 136315138;
    outlined init with copy of HUDActivityManager.BannerUpdate(v3, v2);
    OUTLINED_FUNCTION_12();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v10);
    specialized >> prefix<A>(_:)();
    v22 = v21;
    v32 = v1;
    v23 = v5;
    v24 = v7;
    v26 = v25;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v2, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMd, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMR);
    outlined destroy of HUDActivityManager.BannerUpdate(v3);
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v26, v33);
    v7 = v24;
    v5 = v23;
    v1 = v32;

    *(v16 + 4) = v27;
    _os_log_impl(&dword_1BBC58000, v14, v4, "BannerActivityManager - start bannerUpdate: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  else
  {

    outlined destroy of HUDActivityManager.BannerUpdate(v3);
  }

  v28 = (*((*MEMORY[0x1E69E7D40] & *v5) + 0x140))(v7);

  if (v28)
  {
    v30 = *(*v28 + 232);

    v30(v31);
    outlined init with copy of ConversationControlsType(v1 + 8, v33);
    outlined destroy of HUDActivityManager.BannerUpdate(v1);
    BannerActivityManager.presentNewBanner(as:type:activityUUID:fromActivityManager:)(0, v33, v28 + OBJC_IVAR____TtC15ConversationKit11HUDActivity_activityId, 1);

    outlined destroy of ConversationControlsType(v33);
  }

  OUTLINED_FUNCTION_30_0();
}

uint64_t BannerActivityManager.dismissPresentedActivity(request:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return (*((*MEMORY[0x1E69E7D40] & *static HUDActivityManager.shared) + 0x138))();
}

void BannerActivityManager.presentTopMostUpdate()()
{
  OUTLINED_FUNCTION_29();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMd, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMR);
  v5 = OUTLINED_FUNCTION_22(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_17();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_26_7();
  v10 = type metadata accessor for HUDActivityManager.BannerUpdate(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_117_0();
  OUTLINED_FUNCTION_30_2(v1 + OBJC_IVAR____TtC15ConversationKit21BannerActivityManager_updates, v37);
  specialized RangeReplaceableCollection<>.popLast()(v3);
  swift_endAccess();
  if (__swift_getEnumTagSinglePayload(v3, 1, v10) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v3, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMd, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMR);
  }

  else
  {
    outlined init with take of HUDActivityManager.BannerUpdate(v3, v0);
    v13 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x140))(v0);

    if (v13)
    {
      if (one-time initialization token for banners != -1)
      {
        OUTLINED_FUNCTION_0_178(&one-time initialization token for banners);
      }

      v15 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_52(v15, static Logger.banners);

      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = OUTLINED_FUNCTION_42();
        v36 = OUTLINED_FUNCTION_23();
        v37[0] = v36;
        *v18 = 136315138;
        v35 = v17;
        (*(*v13 + 232))();
        OUTLINED_FUNCTION_12();
        __swift_storeEnumTagSinglePayload(v19, v20, v21, v10);
        specialized >> prefix<A>(_:)();
        v23 = v22;
        v25 = v24;
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v8, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMd, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMR);
        v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, v37);

        *(v18 + 4) = v26;
        _os_log_impl(&dword_1BBC58000, v16, v35, "BannerActivityManager - HUDActivityPresenting: %s", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v36);
        OUTLINED_FUNCTION_3_83();
        OUTLINED_FUNCTION_27();
      }

      (*(*v13 + 232))();
      outlined init with copy of ConversationControlsType(v2 + 8, v37);
      outlined destroy of HUDActivityManager.BannerUpdate(v2);
      BannerActivityManager.presentNewBanner(as:type:activityUUID:fromActivityManager:)(0, v37, v13 + OBJC_IVAR____TtC15ConversationKit11HUDActivity_activityId, 1);

      outlined destroy of ConversationControlsType(v37);
    }

    else
    {
      if (one-time initialization token for banners != -1)
      {
        OUTLINED_FUNCTION_0_178(&one-time initialization token for banners);
      }

      v27 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_52(v27, static Logger.banners);
      v28 = Logger.logObject.getter();
      static os_log_type_t.default.getter();
      OUTLINED_FUNCTION_45_2();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = OUTLINED_FUNCTION_33();
        *v30 = 0;
        OUTLINED_FUNCTION_85();
        _os_log_impl(v31, v32, v33, v34, v30, 2u);
        OUTLINED_FUNCTION_18();
      }
    }

    outlined destroy of HUDActivityManager.BannerUpdate(v0);
  }

  OUTLINED_FUNCTION_30_0();
}

uint64_t BannerActivityManager.isPresentingFullScreenCallUI.getter()
{
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xC0))();
  if (result)
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    LOBYTE(v3) = (*(v3 + 8))(ObjectType, v3);
    swift_unknownObjectRelease();
    return v3 & 1;
  }

  return result;
}

BOOL BannerActivityManager.canPresent(_:)(double *a1)
{
  v5 = v1;
  v7 = type metadata accessor for HUDActivityManager.BannerUpdate(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_17();
  v160 = v9 - v10;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v159 = v12;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v173 = v14;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v172 = v16;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v165 = v18;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  v164 = v20;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  v163 = v22;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5();
  v171 = v24;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5();
  v168 = v26;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v27);
  v161 = &v157 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMd, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMR);
  v30 = OUTLINED_FUNCTION_22(v29);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_17();
  v162 = v31 - v32;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_5();
  v167 = v34;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_5();
  v166 = v36;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_52_15();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_71_0();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_26_7();
  v40 = OBJC_IVAR____TtC15ConversationKit21BannerActivityManager_updates;
  OUTLINED_FUNCTION_4_0(&v1[OBJC_IVAR____TtC15ConversationKit21BannerActivityManager_updates], v177);
  specialized BidirectionalCollection.last.getter(*&v1[v40]);
  v41 = *&v1[OBJC_IVAR____TtC15ConversationKit21BannerActivityManager_presentedActivity];
  if (v41)
  {
    OUTLINED_FUNCTION_0_1();
    v43 = *(v42 + 232);

    v43(v44);

    v45 = 0;
  }

  else
  {
    v45 = 1;
  }

  v174 = v7;
  __swift_storeEnumTagSinglePayload(v3, v45, 1, v7);
  if (one-time initialization token for banners != -1)
  {
    OUTLINED_FUNCTION_0_178(&one-time initialization token for banners);
  }

  v46 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v46, static Logger.banners);
  outlined init with copy of HUDActivityManager.BannerUpdate?(v3, v4);
  v47 = v5;
  v170 = v41;
  v48 = Logger.logObject.getter();
  static os_log_type_t.default.getter();

  if (OUTLINED_FUNCTION_317())
  {
    v49 = OUTLINED_FUNCTION_30_1();
    v50 = OUTLINED_FUNCTION_29_7();
    v169 = v2;
    v176 = v50;
    *v49 = 136315394;
    specialized >> prefix<A>(_:)();
    v158 = v3;
    v52 = v51;
    v157 = a1;
    v54 = v53;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v4, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMd, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMR);
    v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v54, &v176);

    *(v49 + 4) = v55;
    *(v49 + 12) = 2080;
    v175 = *&v5[v40];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15ConversationKit18HUDActivityManagerC12BannerUpdateVGMd, &_sSay15ConversationKit18HUDActivityManagerC12BannerUpdateVGMR);
    v56 = String.init<A>(reflecting:)();
    v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v57, &v176);
    a1 = v157;

    *(v49 + 14) = v58;
    v3 = v158;
    OUTLINED_FUNCTION_3_134();
    _os_log_impl(v59, v60, v61, v62, v63, 0x16u);
    swift_arrayDestroy();
    v2 = v169;
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_239();
  }

  else
  {

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v4, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMd, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMR);
  }

  v64 = v172;
  v65 = v173;
  v66 = BannerActivityManager.isPresentingFullScreenCallUI.getter();
  v67 = v171;
  if ((v66 & 1) != 0 && (ConversationControlsType.canShowOverICS.getter(), (v68 & 1) == 0))
  {
    v118 = v161;
    outlined init with copy of HUDActivityManager.BannerUpdate(a1, v161);
    v119 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    OUTLINED_FUNCTION_45_2();
    v121 = os_log_type_enabled(v119, v120);
    v122 = v174;
    if (v121)
    {
      v123 = OUTLINED_FUNCTION_42();
      v176 = OUTLINED_FUNCTION_23();
      *v123 = 136315138;
      v124 = v166;
      outlined init with copy of HUDActivityManager.BannerUpdate(v118, v166);
      OUTLINED_FUNCTION_12();
      __swift_storeEnumTagSinglePayload(v125, v126, v127, v122);
      specialized >> prefix<A>(_:)();
      v128 = v2;
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v124, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMd, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMR);
      outlined destroy of HUDActivityManager.BannerUpdate(v118);
      v129 = OUTLINED_FUNCTION_66_8();

      *(v123 + 4) = v129;
      v2 = v128;
      OUTLINED_FUNCTION_3_134();
      _os_log_impl(v130, v131, v132, v133, v134, 0xCu);
      OUTLINED_FUNCTION_9_88();
      OUTLINED_FUNCTION_239();
    }

    else
    {

      outlined destroy of HUDActivityManager.BannerUpdate(v118);
    }

    v79 = 0;
  }

  else
  {
    v69 = v174;
    if (__swift_getEnumTagSinglePayload(v2, 1, v174) != 1 || (OUTLINED_FUNCTION_43_13(v3), !v70))
    {
      v89 = v167;
      outlined init with copy of HUDActivityManager.BannerUpdate?(v3, v167);
      OUTLINED_FUNCTION_43_13(v89);
      if (!v70)
      {
        v96 = v89;
        v97 = v168;
        outlined init with take of HUDActivityManager.BannerUpdate(v96, v168);
        outlined init with copy of HUDActivityManager.BannerUpdate(a1, v67);
        v98 = v163;
        outlined init with copy of HUDActivityManager.BannerUpdate(v97, v163);
        v99 = v164;
        outlined init with copy of HUDActivityManager.BannerUpdate(v97, v164);
        v100 = Logger.logObject.getter();
        static os_log_type_t.default.getter();
        OUTLINED_FUNCTION_45_2();
        if (os_log_type_enabled(v100, v101))
        {
          v103 = swift_slowAlloc();
          v176 = OUTLINED_FUNCTION_23();
          *v103 = 67109378;
          v104 = *v67 < *v98;
          v169 = v2;
          v105 = !v104;
          outlined destroy of HUDActivityManager.BannerUpdate(v67);
          outlined destroy of HUDActivityManager.BannerUpdate(v98);
          *(v103 + 4) = v105;
          *(v103 + 8) = 2080;
          v106 = v99;
          v107 = v99;
          v108 = v166;
          outlined init with copy of HUDActivityManager.BannerUpdate(v106, v166);
          v109 = OUTLINED_FUNCTION_20_4();
          OUTLINED_FUNCTION_82_10(v109, v110, v111, v69);
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v108, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMd, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMR);
          outlined destroy of HUDActivityManager.BannerUpdate(v107);
          v112 = OUTLINED_FUNCTION_66_8();

          *(v103 + 10) = v112;
          v2 = v169;
          OUTLINED_FUNCTION_3_134();
          _os_log_impl(v113, v114, v115, v116, v117, 0x12u);
          OUTLINED_FUNCTION_9_88();
          OUTLINED_FUNCTION_239();
        }

        else
        {
          outlined destroy of HUDActivityManager.BannerUpdate(v67);
          outlined destroy of HUDActivityManager.BannerUpdate(v98);

          outlined destroy of HUDActivityManager.BannerUpdate(v99);
        }

        v153 = *a1;
        v154 = v168;
LABEL_43:
        v155 = *v154;
        outlined destroy of HUDActivityManager.BannerUpdate(v154);
        v79 = v153 >= v155;
        goto LABEL_44;
      }

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v89, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMd, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMR);
      v90 = v162;
      outlined init with copy of HUDActivityManager.BannerUpdate?(v2, v162);
      OUTLINED_FUNCTION_43_13(v90);
      if (!v70)
      {
        v135 = v90;
        v136 = v165;
        outlined init with take of HUDActivityManager.BannerUpdate(v135, v165);
        outlined init with copy of HUDActivityManager.BannerUpdate(a1, v64);
        outlined init with copy of HUDActivityManager.BannerUpdate(v136, v65);
        v137 = v159;
        outlined init with copy of HUDActivityManager.BannerUpdate(v136, v159);
        v138 = Logger.logObject.getter();
        static os_log_type_t.default.getter();
        OUTLINED_FUNCTION_45_2();
        if (os_log_type_enabled(v138, v139))
        {
          v141 = swift_slowAlloc();
          v176 = OUTLINED_FUNCTION_23();
          *v141 = 67109378;
          v104 = *v64 < *v65;
          v169 = v2;
          v142 = !v104;
          outlined destroy of HUDActivityManager.BannerUpdate(v64);
          outlined destroy of HUDActivityManager.BannerUpdate(v65);
          *(v141 + 4) = v142;
          *(v141 + 8) = 2080;
          v143 = v166;
          outlined init with copy of HUDActivityManager.BannerUpdate(v137, v166);
          v144 = OUTLINED_FUNCTION_20_4();
          OUTLINED_FUNCTION_82_10(v144, v145, v146, v69);
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v143, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMd, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMR);
          outlined destroy of HUDActivityManager.BannerUpdate(v137);
          v147 = OUTLINED_FUNCTION_66_8();

          *(v141 + 10) = v147;
          v2 = v169;
          OUTLINED_FUNCTION_3_134();
          _os_log_impl(v148, v149, v150, v151, v152, 0x12u);
          OUTLINED_FUNCTION_9_88();
          OUTLINED_FUNCTION_239();
        }

        else
        {
          outlined destroy of HUDActivityManager.BannerUpdate(v64);
          outlined destroy of HUDActivityManager.BannerUpdate(v65);

          outlined destroy of HUDActivityManager.BannerUpdate(v137);
        }

        v153 = *a1;
        v154 = v165;
        goto LABEL_43;
      }

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v90, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMd, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMR);
      v91 = Logger.logObject.getter();
      v92 = static os_log_type_t.default.getter();
      if (OUTLINED_FUNCTION_25(v92))
      {
        v93 = OUTLINED_FUNCTION_33();
        OUTLINED_FUNCTION_50_0(v93);
        OUTLINED_FUNCTION_7_4(&dword_1BBC58000, v94, v95, "BannerActivityManager - allowing presentation3 ");
        OUTLINED_FUNCTION_26();
      }

      goto LABEL_40;
    }

    v71 = v160;
    outlined init with copy of HUDActivityManager.BannerUpdate(a1, v160);
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v72, v73))
    {

      outlined destroy of HUDActivityManager.BannerUpdate(v71);
LABEL_40:
      v79 = 1;
      goto LABEL_44;
    }

    v74 = OUTLINED_FUNCTION_42();
    v75 = OUTLINED_FUNCTION_23();
    v76 = v69;
    v169 = v2;
    v176 = v75;
    *v74 = 136315138;
    v77 = v71;
    v78 = v166;
    outlined init with copy of HUDActivityManager.BannerUpdate(v71, v166);
    v79 = 1;
    v80 = OUTLINED_FUNCTION_20_4();
    OUTLINED_FUNCTION_82_10(v80, v81, v82, v76);
    v84 = v83;
    v85 = v3;
    v87 = v86;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v78, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMd, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMR);
    outlined destroy of HUDActivityManager.BannerUpdate(v77);
    v88 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, v87, &v176);
    v3 = v85;

    *(v74 + 4) = v88;
    _os_log_impl(&dword_1BBC58000, v72, v73, "BannerActivityManager - allowing presentation of %s because no banners are tracked", v74, 0xCu);
    OUTLINED_FUNCTION_94_8();
    v2 = v169;
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_26();
  }

LABEL_44:
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v2, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMd, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMR);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v3, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMd, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMR);
  return v79;
}

void BannerActivityManager.presentIfAble(_:)()
{
  OUTLINED_FUNCTION_29();
  v5 = v0;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMd, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMR);
  v9 = OUTLINED_FUNCTION_22(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_39_3();
  v11 = type metadata accessor for HUDActivityManager.BannerUpdate(0);
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_52_15();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_27_9();
  v17.n128_f64[0] = MEMORY[0x1EEE9AC00](v16);
  v19 = &v83 - v18;
  if ((*((*MEMORY[0x1E69E7D40] & *v0) + 0x138))(v7, v17))
  {
    if (one-time initialization token for banners != -1)
    {
      OUTLINED_FUNCTION_0_178(&one-time initialization token for banners);
    }

    v20 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v20, static Logger.banners);
    outlined init with copy of HUDActivityManager.BannerUpdate(v7, v19);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_46_1(v22))
    {
      v23 = OUTLINED_FUNCTION_42();
      v88 = v7;
      v24 = v23;
      v25 = OUTLINED_FUNCTION_23();
      v89[0] = v25;
      *v24 = 136315138;
      outlined init with copy of HUDActivityManager.BannerUpdate(v19, v3);
      OUTLINED_FUNCTION_12();
      __swift_storeEnumTagSinglePayload(v26, v27, v28, v11);
      specialized >> prefix<A>(_:)();
      v30 = v29;
      v32 = v31;
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v3, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMd, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMR);
      outlined destroy of HUDActivityManager.BannerUpdate(v19);
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, v89);
      OUTLINED_FUNCTION_95_6();
      *(v24 + 4) = v30;
      OUTLINED_FUNCTION_302(&dword_1BBC58000, v21, v4, "BannerActivityManager - presenting new bannerUpdate: %s");
      __swift_destroy_boxed_opaque_existential_1(v25);
      OUTLINED_FUNCTION_27();
      v7 = v88;
      OUTLINED_FUNCTION_27();
    }

    else
    {

      outlined destroy of HUDActivityManager.BannerUpdate(v19);
    }

    outlined init with copy of HUDActivityManager.BannerUpdate(v7, v1);
    OUTLINED_FUNCTION_20();
    v45 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for HUDActivity(0);
    swift_allocObject();
    *&v5[OBJC_IVAR____TtC15ConversationKit21BannerActivityManager_presentedActivity] = HUDActivity.init(withUpdate:dismissHandler:)(v1, partial apply for closure #1 in BannerActivityManager.presentIfAble(_:), v45);

    goto LABEL_27;
  }

  v88 = v11;
  v33 = v7;
  v85 = v3;
  v86 = v2;
  v34 = OBJC_IVAR____TtC15ConversationKit21BannerActivityManager_presentedActivity;
  if (*&v0[OBJC_IVAR____TtC15ConversationKit21BannerActivityManager_presentedActivity])
  {
    OUTLINED_FUNCTION_56_15();
    v36 = *(v35 + 232);

    v36(v37);
    outlined init with copy of ConversationControlsType(v1 + 8, v89);
    outlined destroy of HUDActivityManager.BannerUpdate(v1);
    v38 = static ConversationControlsType.== infix(_:_:)(v89, v7 + 8);
    outlined destroy of ConversationControlsType(v89);
    if (v38)
    {
      if (one-time initialization token for banners != -1)
      {
        OUTLINED_FUNCTION_0_178(&one-time initialization token for banners);
      }

      v39 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_52(v39, static Logger.banners);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.default.getter();
      if (OUTLINED_FUNCTION_25(v41))
      {
        v42 = OUTLINED_FUNCTION_33();
        OUTLINED_FUNCTION_50_0(v42);
        OUTLINED_FUNCTION_7_4(&dword_1BBC58000, v43, v44, "BannerActivityManager - allowing banner update since it has the same type as currently presented update");
        OUTLINED_FUNCTION_26();
      }

      goto LABEL_27;
    }
  }

  v46 = OBJC_IVAR____TtC15ConversationKit21BannerActivityManager_updates;
  OUTLINED_FUNCTION_30_2(&v5[OBJC_IVAR____TtC15ConversationKit21BannerActivityManager_updates], v89);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  v47 = *(*&v5[v46] + 16);
  specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v47);
  v48 = *&v5[v46];
  *(v48 + 16) = v47 + 1;
  OUTLINED_FUNCTION_40_3();
  outlined init with copy of HUDActivityManager.BannerUpdate(v33, v48 + v49 + *(v13 + 72) * v47);
  *&v5[v46] = v48;
  specialized MutableCollection<>.sort(by:)();
  swift_endAccess();
  if (one-time initialization token for banners != -1)
  {
    OUTLINED_FUNCTION_0_178(&one-time initialization token for banners);
  }

  v50 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v50, static Logger.banners);
  outlined init with copy of HUDActivityManager.BannerUpdate(v33, v4);
  v87 = v48;
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.default.getter();
  v53 = os_log_type_enabled(v51, v52);
  v54 = v88;
  v84 = v34;
  if (v53)
  {
    v55 = OUTLINED_FUNCTION_42();
    v56 = OUTLINED_FUNCTION_23();
    v89[0] = v56;
    *v55 = 136315138;
    v57 = v85;
    outlined init with copy of HUDActivityManager.BannerUpdate(v4, v85);
    v58 = OUTLINED_FUNCTION_20_4();
    OUTLINED_FUNCTION_82_10(v58, v59, v60, v54);
    v62 = v61;
    v64 = v63;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v57, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMd, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMR);
    outlined destroy of HUDActivityManager.BannerUpdate(v4);
    v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v64, v89);

    *(v55 + 4) = v65;
    _os_log_impl(&dword_1BBC58000, v51, v52, "BannerActivityManager - cannot present banner so queueing it up %s", v55, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v56);
    OUTLINED_FUNCTION_3_83();
    OUTLINED_FUNCTION_2_2();
  }

  else
  {

    outlined destroy of HUDActivityManager.BannerUpdate(v4);
  }

  v66 = v5;
  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v67, v68))
  {
    v69 = OUTLINED_FUNCTION_30_1();
    v89[0] = OUTLINED_FUNCTION_29_7();
    *v69 = 136315394;
    if (*&v5[v84])
    {
      OUTLINED_FUNCTION_0_1();
      v71 = *(v70 + 232);

      v73 = v86;
      v71(v72);

      v74 = 0;
    }

    else
    {
      v74 = 1;
      v73 = v86;
    }

    OUTLINED_FUNCTION_82_10(v73, v74, 1, v88);
    v76 = v75;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v73, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMd, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMR);
    v77 = OUTLINED_FUNCTION_69_7();
    v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v76, v78);

    *(v69 + 4) = v79;
    *(v69 + 12) = 2080;
    v89[6] = *&v5[v46];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15ConversationKit18HUDActivityManagerC12BannerUpdateVGMd, &_sSay15ConversationKit18HUDActivityManagerC12BannerUpdateVGMR);
    v80 = String.init<A>(reflecting:)();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v81, v89);
    OUTLINED_FUNCTION_28_0();

    *(v69 + 14) = v79;
    _os_log_impl(&dword_1BBC58000, v67, v68, "BannerActivityManager -Current state after queue:%s CurrentUpdates %s", v69, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_2_2();
  }

  lazy protocol witness table accessor for type BannerPresentationError and conformance BannerPresentationError();
  swift_allocError();
  *v82 = 8;
LABEL_27:
  OUTLINED_FUNCTION_30_0();
}

void closure #2 in implicit closure #1 in HUDActivityManager.activityForUpdate(_:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  OUTLINED_FUNCTION_4_0(a2 + 16, v7);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    a3(a1);
  }
}

Swift::Bool __swiftcall BannerActivityManager.presentHUD()()
{
  OUTLINED_FUNCTION_29();
  v3 = type metadata accessor for HUDActivityManager.BannerUpdate(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_17();
  v118 = v5 - v6;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v119 = v8;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v114 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMd, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMR);
  v13 = OUTLINED_FUNCTION_22(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_27_9();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v121 = v15;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_26_7();
  if (one-time initialization token for banners != -1)
  {
    OUTLINED_FUNCTION_0_178(&one-time initialization token for banners);
  }

  v17 = type metadata accessor for Logger();
  v18 = __swift_project_value_buffer(v17, static Logger.banners);
  v19 = v0;
  v122 = v18;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  v22 = &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyAA5ImageV_Qo_AA16_FixedSizeLayoutVGMd;
  if (os_log_type_enabled(v20, v21))
  {
    v117 = v21;
    v120 = v11;
    v23 = OUTLINED_FUNCTION_30_1();
    v116 = OUTLINED_FUNCTION_29_7();
    v125[0] = v116;
    *v23 = 136315394;
    if (*&v19[OBJC_IVAR____TtC15ConversationKit21BannerActivityManager_presentedActivity])
    {
      OUTLINED_FUNCTION_0_1();
      v25 = *(v24 + 232);

      v25(v26);
      v22 = &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyAA5ImageV_Qo_AA16_FixedSizeLayoutVGMd;

      v27 = 0;
    }

    else
    {
      v27 = 1;
    }

    __swift_storeEnumTagSinglePayload(v2, v27, 1, v3);
    specialized >> prefix<A>(_:)();
    v29 = v28;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v2, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMd, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMR);
    v30 = OUTLINED_FUNCTION_69_7();
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v29, v31);

    *(v23 + 4) = v32;
    *(v23 + 12) = 2080;
    v33 = v22[398];
    OUTLINED_FUNCTION_4_0(&v19[v33], &v123);
    v124[0] = *&v19[v33];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15ConversationKit18HUDActivityManagerC12BannerUpdateVGMd, &_sSay15ConversationKit18HUDActivityManagerC12BannerUpdateVGMR);
    v34 = String.init<A>(reflecting:)();
    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, v125);

    *(v23 + 14) = v36;
    _os_log_impl(&dword_1BBC58000, v20, v117, "BannerActivityManager -PresentedActivity:%s CurrentUpdates %s", v23, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_3_83();
    OUTLINED_FUNCTION_239();

    v11 = v120;
  }

  else
  {
  }

  v37 = *&v19[OBJC_IVAR____TtC15ConversationKit21BannerActivityManager_presentedActivity];
  if (v37)
  {
    OUTLINED_FUNCTION_56_15();
    v39 = *(v38 + 280);

    if (v39(v40))
    {

      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.default.getter();

      v43 = os_log_type_enabled(v41, v42);
      v115 = v3;
      if (v43)
      {
        v44 = OUTLINED_FUNCTION_42();
        v125[0] = OUTLINED_FUNCTION_23();
        *v44 = 136315138;
        OUTLINED_FUNCTION_56_15();
        v46 = v121;
        (*(v45 + 232))();
        OUTLINED_FUNCTION_12();
        __swift_storeEnumTagSinglePayload(v47, v48, v49, v3);
        specialized >> prefix<A>(_:)();
        v51 = v50;
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v46, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMd, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMR);
        v52 = OUTLINED_FUNCTION_69_7();
        v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v51, v53);

        *(v44 + 4) = v54;
        OUTLINED_FUNCTION_70_5();
        OUTLINED_FUNCTION_302(v55, v56, v57, v58);
        OUTLINED_FUNCTION_9_88();
        OUTLINED_FUNCTION_27();
      }

      goto LABEL_23;
    }
  }

  OUTLINED_FUNCTION_30_2(&v19[v22[398]], v125);
  specialized RangeReplaceableCollection<>.popLast()(v1);
  swift_endAccess();
  if (__swift_getEnumTagSinglePayload(v1, 1, v3) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v1, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMd, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMR);
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_25(v60))
    {
      v61 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_50_0(v61);
      OUTLINED_FUNCTION_7_4(&dword_1BBC58000, v62, v63, "BannerActivityManager - Default HUD should be presented");
      OUTLINED_FUNCTION_26();
    }
  }

  else
  {
    outlined init with take of HUDActivityManager.BannerUpdate(v1, v11);
    v64 = v119;
    outlined init with copy of HUDActivityManager.BannerUpdate(v11, v119);
    v65 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    OUTLINED_FUNCTION_45_2();
    v67 = os_log_type_enabled(v65, v66);
    v115 = v3;
    if (v67)
    {
      v68 = OUTLINED_FUNCTION_42();
      v125[0] = OUTLINED_FUNCTION_23();
      *v68 = 136315138;
      v69 = v121;
      outlined init with copy of HUDActivityManager.BannerUpdate(v64, v121);
      v70 = OUTLINED_FUNCTION_20_4();
      OUTLINED_FUNCTION_82_10(v70, v71, v72, v3);
      v74 = v73;
      v120 = v11;
      v76 = v75;
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v69, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMd, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMR);
      outlined destroy of HUDActivityManager.BannerUpdate(v64);
      v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v76, v125);
      v11 = v120;

      *(v68 + 4) = v77;
      OUTLINED_FUNCTION_70_5();
      _os_log_impl(v78, v79, v80, v81, v68, 0xCu);
      OUTLINED_FUNCTION_94_8();
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_3_83();
    }

    else
    {

      outlined destroy of HUDActivityManager.BannerUpdate(v64);
    }

    OUTLINED_FUNCTION_85_5();
    v37 = (*(v82 + 320))(v11);
    v84 = v83;
    outlined destroy of HUDActivityManager.BannerUpdate(v11);

    if (v37)
    {
LABEL_23:

      v85 = Logger.logObject.getter();
      v86 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v85, v86))
      {
        v87 = OUTLINED_FUNCTION_42();
        v125[0] = OUTLINED_FUNCTION_23();
        *v87 = 136315138;
        OUTLINED_FUNCTION_56_15();
        v89 = v121;
        (*(v88 + 232))();
        v90 = OUTLINED_FUNCTION_20_4();
        OUTLINED_FUNCTION_82_10(v90, v91, v92, v115);
        v94 = v93;
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v89, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMd, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMR);
        v95 = OUTLINED_FUNCTION_69_7();
        v97 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v95, v94, v96);

        *(v87 + 4) = v97;
        OUTLINED_FUNCTION_70_5();
        OUTLINED_FUNCTION_302(v98, v99, v100, v101);
        OUTLINED_FUNCTION_9_88();
        OUTLINED_FUNCTION_27();
      }

      OUTLINED_FUNCTION_85_5();
      if ((*(v102 + 144))())
      {
        v104 = v103;
        ObjectType = swift_getObjectType();
        memset(v125, 0, sizeof(v125));
        v126 = 7;
        OUTLINED_FUNCTION_56_15();
        v107 = v118;
        (*(v106 + 232))();
        outlined init with copy of ConversationControlsType(v107 + 8, v124);
        outlined destroy of HUDActivityManager.BannerUpdate(v107);
        (*(v104 + 16))(0, v125, v124, v37 + OBJC_IVAR____TtC15ConversationKit11HUDActivity_activityId, 1, 0, 0, ObjectType, v104);

        swift_unknownObjectRelease();
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v124, &_s15ConversationKit0A12ControlsTypeOSgMd, &_s15ConversationKit0A12ControlsTypeOSgMR);
        outlined destroy of ConversationControlsType(v125);
      }

      else
      {
      }

      goto LABEL_31;
    }
  }

  v108 = Logger.logObject.getter();
  v109 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_25(v109))
  {
    v110 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_50_0(v110);
    OUTLINED_FUNCTION_7_4(&dword_1BBC58000, v111, v112, "BannerActivityManager -No activity");
    OUTLINED_FUNCTION_26();
  }

LABEL_31:
  OUTLINED_FUNCTION_30_0();
  return result;
}

uint64_t BannerActivityManager.presentNewBanner(as:type:activityUUID:fromActivityManager:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  result = (*((*MEMORY[0x1E69E7D40] & *v4) + 0x90))();
  if (result)
  {
    v11 = v10;
    ObjectType = swift_getObjectType();
    (*(v11 + 8))(a1, a2, a3, a4 & 1, 0, 0, ObjectType, v11);

    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall BannerActivityManager.dismissPresentedBanner(forReason:animated:)(Swift::String forReason, Swift::Bool animated)
{
  if ((*((*MEMORY[0x1E69E7D40] & *v2) + 0x90))())
  {
    swift_getObjectType();
    v3 = OUTLINED_FUNCTION_309();
    v4(v3);

    swift_unknownObjectRelease();
  }
}

void BannerActivityManager.bannerDismissed(_:)()
{
  OUTLINED_FUNCTION_29();
  v134 = v4;
  v5 = OUTLINED_FUNCTION_17_1();
  v6 = type metadata accessor for HUDActivityManager.BannerUpdate(v5);
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v136 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMd, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMR);
  v11 = OUTLINED_FUNCTION_22(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_17();
  v125 = v12 - v13;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_38_9();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_71_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_26_7();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v131 = v18;
  v132 = v17;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_8();
  v129 = v20 - v19;
  if (one-time initialization token for banners != -1)
  {
    OUTLINED_FUNCTION_0_178(&one-time initialization token for banners);
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static Logger.banners);
  swift_unknownObjectRetain();
  v22 = v0;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  swift_unknownObjectRelease();
  v124 = v2;
  v126 = v3;
  v128 = v6;
  if (os_log_type_enabled(v23, v24))
  {
    v25 = OUTLINED_FUNCTION_30_1();
    v140[0] = OUTLINED_FUNCTION_29_7();
    *v25 = 136315394;
    ObjectType = swift_getObjectType();
    (*(v134 + 24))(ObjectType);
    OUTLINED_FUNCTION_2_143();
    _s10Foundation4UUIDVACSHAAWlTm_6(v27, v28, MEMORY[0x1E69695E0]);
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    (*(v131 + 8))(v129, v132);
    v30 = OUTLINED_FUNCTION_38_2();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, v32);
    OUTLINED_FUNCTION_28_0();

    *(v25 + 4) = v29;
    *(v25 + 12) = 2080;
    if (*&v22[OBJC_IVAR____TtC15ConversationKit21BannerActivityManager_presentedActivity])
    {
      OUTLINED_FUNCTION_0_1();
      v34 = *(v33 + 232);

      v34(v35);

      v36 = 0;
    }

    else
    {
      v36 = 1;
    }

    __swift_storeEnumTagSinglePayload(v1, v36, 1, v6);
    specialized >> prefix<A>(_:)();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v1, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMd, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMR);
    v37 = OUTLINED_FUNCTION_46();
    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, v39);

    *(v25 + 14) = v40;
    _os_log_impl(&dword_1BBC58000, v23, v24, "BannerActivityManager - banner dismissed %s, presented activity %s", v25, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_239();
    OUTLINED_FUNCTION_27();
  }

  v41 = v22;
  v42 = Logger.logObject.getter();
  static os_log_type_t.default.getter();

  if (OUTLINED_FUNCTION_317())
  {
    v43 = OUTLINED_FUNCTION_42();
    v44 = OUTLINED_FUNCTION_23();
    v140[0] = v44;
    *v43 = 136315138;
    v45 = OBJC_IVAR____TtC15ConversationKit21BannerActivityManager_updates;
    OUTLINED_FUNCTION_4_0(&v41[OBJC_IVAR____TtC15ConversationKit21BannerActivityManager_updates], v138);
    v139[0] = *&v41[v45];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15ConversationKit18HUDActivityManagerC12BannerUpdateVGMd, &_sSay15ConversationKit18HUDActivityManagerC12BannerUpdateVGMR);
    v46 = String.init<A>(reflecting:)();
    v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, v140);

    *(v43 + 4) = v48;
    OUTLINED_FUNCTION_85();
    OUTLINED_FUNCTION_302(v49, v50, v51, v52);
    __swift_destroy_boxed_opaque_existential_1(v44);
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_27();
  }

  v53 = OBJC_IVAR____TtC15ConversationKit21BannerActivityManager_presentedActivity;
  v54 = *&v41[OBJC_IVAR____TtC15ConversationKit21BannerActivityManager_presentedActivity];
  if (v54)
  {
    v55 = *(*v54 + 232);

    (v55)(v56);
    v57 = *(v136 + 65);
    outlined destroy of HUDActivityManager.BannerUpdate(v136);
    if (v57 == 1)
    {
      v58 = v41;
      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v59, v60))
      {
        v61 = OUTLINED_FUNCTION_42();
        v62 = OUTLINED_FUNCTION_23();
        v140[0] = v62;
        *v61 = 136315138;
        v137 = v53;
        if (*&v41[v53])
        {
          OUTLINED_FUNCTION_0_1();
          v64 = *(v63 + 232);

          v66 = v126;
          v64(v65);

          v67 = 0;
        }

        else
        {
          v67 = 1;
          v66 = v126;
        }

        OUTLINED_FUNCTION_82_10(v66, v67, 1, v128);
        v91 = v90;
        v93 = v92;
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v66, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMd, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMR);
        v94 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v91, v93, v140);

        *(v61 + 4) = v94;
        _os_log_impl(&dword_1BBC58000, v59, v60, "BannerActivityManager - temporary banner dismissed %s", v61, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v62);
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_2_2();

        v53 = v137;
      }

      else
      {
      }

      if (*&v41[v53])
      {
        OUTLINED_FUNCTION_0_1();
        v96 = *(v95 + 304);

        v96(v97);
      }

      *&v41[v53] = 0;

      BannerActivityManager.presentTopMostUpdate()();

      goto LABEL_41;
    }

    v68 = swift_getObjectType();
    (*(v134 + 24))(v68);
    v69 = static UUID.== infix(_:_:)();
    v70 = (*(v131 + 8))(v129, v132);
    if (v69)
    {
      (v55)(v70);
      v71 = *(v136 + *(v6 + 48));
      outlined destroy of HUDActivityManager.BannerUpdate(v136);
      if (v71 == 1)
      {
        v72 = Logger.logObject.getter();
        v73 = static os_log_type_t.default.getter();
        if (OUTLINED_FUNCTION_25(v73))
        {
          v74 = OUTLINED_FUNCTION_33();
          OUTLINED_FUNCTION_50_0(v74);
          OUTLINED_FUNCTION_7_4(&dword_1BBC58000, v75, v76, "BannerActivityManager - presented activity dismissed, skipping queueing the dismissed activity");
          OUTLINED_FUNCTION_26();
        }
      }

      else
      {
        v82 = v41;
        v83 = Logger.logObject.getter();
        v84 = static os_log_type_t.default.getter();
        v135 = v82;

        if (os_log_type_enabled(v83, v84))
        {
          v133 = v84;
          v85 = OUTLINED_FUNCTION_42();
          v130 = OUTLINED_FUNCTION_23();
          v140[0] = v130;
          *v85 = 136315138;
          if (*&v41[v53])
          {
            OUTLINED_FUNCTION_0_1();
            v127 = *(v86 + 232);

            v88 = v124;
            v127(v87);

            v89 = 0;
          }

          else
          {
            v89 = 1;
            v88 = v124;
          }

          __swift_storeEnumTagSinglePayload(v88, v89, 1, v128);
          specialized >> prefix<A>(_:)();
          v99 = v98;
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v88, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMd, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMR);
          v100 = OUTLINED_FUNCTION_38_2();
          getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v100, v101, v102);
          OUTLINED_FUNCTION_28_0();

          *(v85 + 4) = v99;
          _os_log_impl(&dword_1BBC58000, v83, v133, "BannerActivityManager - presented activity dismissed so queueing %s", v85, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v130);
          OUTLINED_FUNCTION_3_83();
          OUTLINED_FUNCTION_239();
        }

        v55();
        v103 = OBJC_IVAR____TtC15ConversationKit21BannerActivityManager_updates;
        OUTLINED_FUNCTION_30_2(&v135[OBJC_IVAR____TtC15ConversationKit21BannerActivityManager_updates], v140);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v104 = *(*&v135[v103] + 16);
        specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v104);
        v105 = *&v135[v103];
        *(v105 + 16) = v104 + 1;
        OUTLINED_FUNCTION_40_3();
        outlined init with take of HUDActivityManager.BannerUpdate(v136, v105 + v106 + *(v107 + 72) * v104);
        *&v135[v103] = v105;
        specialized MutableCollection<>.sort(by:)();
        swift_endAccess();
      }

      *&v41[v53] = 0;

      v108 = v41;
      v77 = Logger.logObject.getter();
      v109 = static os_log_type_t.default.getter();

      if (!os_log_type_enabled(v77, v109))
      {
        goto LABEL_40;
      }

      v110 = OUTLINED_FUNCTION_30_1();
      v139[0] = OUTLINED_FUNCTION_29_7();
      *v110 = 136315394;
      if (*&v41[v53])
      {
        OUTLINED_FUNCTION_0_1();
        v112 = *(v111 + 232);

        v112(v113);

        v114 = 0;
      }

      else
      {
        v114 = 1;
      }

      __swift_storeEnumTagSinglePayload(v125, v114, 1, v128);
      specialized >> prefix<A>(_:)();
      v116 = v115;
      v118 = v117;
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v125, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMd, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMR);
      v119 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v116, v118, v139);

      *(v110 + 4) = v119;
      *(v110 + 12) = 2080;
      v120 = OBJC_IVAR____TtC15ConversationKit21BannerActivityManager_updates;
      OUTLINED_FUNCTION_4_0(&v108[OBJC_IVAR____TtC15ConversationKit21BannerActivityManager_updates], v140);
      v138[3] = *&v108[v120];

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15ConversationKit18HUDActivityManagerC12BannerUpdateVGMd, &_sSay15ConversationKit18HUDActivityManagerC12BannerUpdateVGMR);
      v121 = String.init<A>(reflecting:)();
      v123 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v121, v122, v139);

      *(v110 + 14) = v123;
      _os_log_impl(&dword_1BBC58000, v77, v109, "BannerActivityManager -Current state after queue:%s CurrentUpdates %s", v110, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_2_2();
    }

    else
    {
      v77 = Logger.logObject.getter();
      v78 = static os_log_type_t.default.getter();
      if (!OUTLINED_FUNCTION_25(v78))
      {
LABEL_40:

        goto LABEL_41;
      }

      v79 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_50_0(v79);
      OUTLINED_FUNCTION_7_4(&dword_1BBC58000, v80, v81, "BannerActivityManager - not tracking dismissed banner");
    }

    OUTLINED_FUNCTION_26();
    goto LABEL_40;
  }

LABEL_41:
  OUTLINED_FUNCTION_30_0();
}

Swift::Void __swiftcall BannerActivityManager.presentNextBannerIfNeeded()()
{
  v1 = v0;
  if (one-time initialization token for banners != -1)
  {
    OUTLINED_FUNCTION_0_178(&one-time initialization token for banners);
  }

  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v2, static Logger.banners);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_33();
    *v5 = 0;
    _os_log_impl(&dword_1BBC58000, v3, v4, "BannerActivityManager - Present next banner if needed", v5, 2u);
    OUTLINED_FUNCTION_27();
  }

  v6 = OBJC_IVAR____TtC15ConversationKit21BannerActivityManager_presentedActivity;
  if (*&v0[OBJC_IVAR____TtC15ConversationKit21BannerActivityManager_presentedActivity])
  {
    v7 = v0;
    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v8))
    {
      v9 = OUTLINED_FUNCTION_42();
      v15 = OUTLINED_FUNCTION_23();
      *v9 = 136315138;
      if (*&v1[v6])
      {
        type metadata accessor for HUDActivity(0);

        v10 = String.init<A>(reflecting:)();
        v12 = v11;
      }

      else
      {
        v12 = 0xE300000000000000;
        v10 = 7104878;
      }

      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, &v15);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_1BBC58000, oslog, v8, "BannerActivityManager - Already presenting an activity %s", v9, 0xCu);
      OUTLINED_FUNCTION_9_88();
      OUTLINED_FUNCTION_26();
    }

    else
    {
    }
  }

  else
  {

    BannerActivityManager.presentTopMostUpdate()();
  }
}

id BannerActivityManager.init()()
{
  v1 = OBJC_IVAR____TtC15ConversationKit21BannerActivityManager_features;
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for shared);
  }

  v2 = static Features.shared;
  *&v0[v1] = static Features.shared;
  *&v0[OBJC_IVAR____TtC15ConversationKit21BannerActivityManager__bannerPresentationManager + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC15ConversationKit21BannerActivityManager__callUIPresentationStateProvider + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC15ConversationKit21BannerActivityManager_presentedActivity] = 0;
  *&v0[OBJC_IVAR____TtC15ConversationKit21BannerActivityManager_updates] = MEMORY[0x1E69E7CC0];
  v5.receiver = v0;
  v5.super_class = type metadata accessor for BannerActivityManager();
  v3 = v2;
  return objc_msgSendSuper2(&v5, sel_init);
}

id HUDActivityManager.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t partial apply for closure #1 in ApertureController.updateContent(for:using:controllingWith:fromActivityManager:)()
{
  v2 = *(v0 + 32);
  swift_task_alloc();
  OUTLINED_FUNCTION_14_4();
  *(v1 + 16) = v3;
  *v3 = v4;
  v3[1] = partial apply for closure #1 in closure #1 in variable initialization expression of static CallScreeningViewModelComposer.viewModel;
  v5 = OUTLINED_FUNCTION_16_2();

  return closure #1 in ApertureController.updateContent(for:using:controllingWith:fromActivityManager:)(v5, v6, v7, v2);
}

uint64_t outlined init with copy of HUDActivityManager.BannerUpdate?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMd, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of HUDActivityManager.BannerUpdate(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HUDActivityManager.BannerUpdate(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type BannerPresentationError and conformance BannerPresentationError()
{
  result = lazy protocol witness table cache variable for type BannerPresentationError and conformance BannerPresentationError;
  if (!lazy protocol witness table cache variable for type BannerPresentationError and conformance BannerPresentationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BannerPresentationError and conformance BannerPresentationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BannerPresentationError and conformance BannerPresentationError;
  if (!lazy protocol witness table cache variable for type BannerPresentationError and conformance BannerPresentationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BannerPresentationError and conformance BannerPresentationError);
  }

  return result;
}

uint64_t _s10Foundation4UUIDVACSHAAWlTm_6(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type HUDActivityManager.RelevanceScore and conformance HUDActivityManager.RelevanceScore()
{
  result = lazy protocol witness table cache variable for type HUDActivityManager.RelevanceScore and conformance HUDActivityManager.RelevanceScore;
  if (!lazy protocol witness table cache variable for type HUDActivityManager.RelevanceScore and conformance HUDActivityManager.RelevanceScore)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HUDActivityManager.RelevanceScore and conformance HUDActivityManager.RelevanceScore);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BannerActivityManager.DismissActivityRequest.Reason and conformance BannerActivityManager.DismissActivityRequest.Reason()
{
  result = lazy protocol witness table cache variable for type BannerActivityManager.DismissActivityRequest.Reason and conformance BannerActivityManager.DismissActivityRequest.Reason;
  if (!lazy protocol witness table cache variable for type BannerActivityManager.DismissActivityRequest.Reason and conformance BannerActivityManager.DismissActivityRequest.Reason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BannerActivityManager.DismissActivityRequest.Reason and conformance BannerActivityManager.DismissActivityRequest.Reason);
  }

  return result;
}

void type metadata completion function for HUDActivity(uint64_t a1)
{
  _s7Combine9PublishedVySbGMaTm_1(319, &lazy cache variable for type metadata for Published<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E695C070]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UUID();
    if (v2 <= 0x3F)
    {
      type metadata accessor for HUDActivityManager.BannerUpdate(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void type metadata completion function for HUDActivityManager.BannerUpdate(uint64_t a1)
{
  _s7Combine9PublishedVySbGMaTm_1(319, &lazy cache variable for type metadata for ConversationControlsSizeClass?, &type metadata for ConversationControlsSizeClass, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UUID();
    if (v2 <= 0x3F)
    {
      type metadata accessor for Date();
      if (v3 <= 0x3F)
      {
        type metadata accessor for ConversationControlsManager?(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void _s7Combine9PublishedVySbGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void type metadata accessor for ConversationControlsManager?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ConversationControlsManager?)
  {
    type metadata accessor for ConversationControlsManager(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ConversationControlsManager?);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for BannerActivityManager.DismissActivityRequest(_BYTE *result, int a2, int a3)
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

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v117 = a1;
  v136 = type metadata accessor for HUDActivityManager.BannerUpdate(0);
  v124 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v121 = &v113 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v131 = &v113 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v113 - v10);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v113 - v13);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v113 - v16);
  MEMORY[0x1EEE9AC00](v18);
  v129 = (&v113 - v19);
  MEMORY[0x1EEE9AC00](v20);
  v116 = (&v113 - v21);
  MEMORY[0x1EEE9AC00](v22);
  v115 = (&v113 - v23);
  v126 = a3;
  v24 = *(a3 + 8);
  if (v24 < 1)
  {
    v26 = MEMORY[0x1E69E7CC0];
LABEL_127:
    a3 = *v117;
    if (!*v117)
    {
      goto LABEL_168;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = v127;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_129:
      v107 = v26 + 16;
      v108 = *(v26 + 2);
      for (i = v26; v108 >= 2; v26 = i)
      {
        if (!*v126)
        {
          goto LABEL_165;
        }

        v109 = &v26[16 * v108];
        v26 = *v109;
        v110 = &v107[2 * v108];
        v111 = *(v110 + 1);
        specialized _merge<A>(low:mid:high:buffer:by:)(*v126 + *(v124 + 72) * *v109, *v126 + *(v124 + 72) * *v110, *v126 + *(v124 + 72) * v111, a3);
        if (v14)
        {
          break;
        }

        if (v111 < v26)
        {
          goto LABEL_153;
        }

        if (v108 - 2 >= *v107)
        {
          goto LABEL_154;
        }

        *v109 = v26;
        *(v109 + 1) = v111;
        v112 = *v107 - v108;
        if (*v107 < v108)
        {
          goto LABEL_155;
        }

        v108 = *v107 - 1;
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v110 + 16, v112, v110);
        *v107 = v108;
      }

LABEL_137:

      return;
    }

LABEL_162:
    v26 = specialized _ArrayBuffer._consumeAndCreateNew()(v26);
    goto LABEL_129;
  }

  v114 = a4;
  v25 = 0;
  v26 = MEMORY[0x1E69E7CC0];
  v122 = v17;
  while (1)
  {
    v27 = v25;
    v28 = v25 + 1;
    if (v25 + 1 < v24)
    {
      v29 = *v126;
      v30 = *(v124 + 72);
      v31 = *v126 + v30 * v28;
      v118 = v25;
      v130 = v25 + 1;
      v32 = v115;
      v123 = v24;
      outlined init with copy of HUDActivityManager.BannerUpdate(v31, v115);
      v33 = v29 + v30 * v27;
      v34 = v116;
      outlined init with copy of HUDActivityManager.BannerUpdate(v33, v116);
      LODWORD(i) = static HUDActivityManager.BannerUpdate.< infix(_:_:)(v32, v34);
      outlined destroy of HUDActivityManager.BannerUpdate(v34);
      v35 = v32;
      v28 = v130;
      outlined destroy of HUDActivityManager.BannerUpdate(v35);
      v36 = v123;
      v37 = v118 + 2;
      v125 = v30;
      v38 = v29 + v30 * (v118 + 2);
      while (1)
      {
        a3 = v37;
        if (v28 + 1 >= v36)
        {
          break;
        }

        v39 = v129;
        outlined init with copy of HUDActivityManager.BannerUpdate(v38, v129);
        outlined init with copy of HUDActivityManager.BannerUpdate(v31, v17);
        outlined init with copy of ConversationControlsType((v39 + 1), v132);
        outlined init with copy of ConversationControlsType((v17 + 1), v134);
        if (v133 == 1)
        {
          if (v135 == 1)
          {
            v40 = *v129 < *v17;
            outlined destroy of ConversationControlsType(v134);
            outlined destroy of ConversationControlsType(v132);
          }

          else
          {
            outlined destroy of ConversationControlsType(v132);
            outlined destroy of ConversationControlsType(v134);
            v40 = 0;
          }
        }

        else if (v135 == 1)
        {
          outlined destroy of ConversationControlsType(v134);
          outlined destroy of ConversationControlsType(v132);
          v40 = 1;
        }

        else
        {
          if (*v129 >= *v17)
          {
            v40 = *v129 == *v17 && Date.compare(_:)() == -1;
          }

          else
          {
            v40 = 1;
          }

          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v132, &_s15ConversationKit0A12ControlsTypeO_ACtMd, &_s15ConversationKit0A12ControlsTypeO_ACtMR);
        }

        outlined destroy of HUDActivityManager.BannerUpdate(v17);
        outlined destroy of HUDActivityManager.BannerUpdate(v129);
        v38 += v125;
        v31 += v125;
        ++v28;
        v37 = a3 + 1;
        v36 = v123;
        if ((i ^ v40))
        {
          goto LABEL_21;
        }
      }

      v28 = v36;
LABEL_21:
      if ((i & 1) == 0)
      {
        goto LABEL_41;
      }

      v27 = v118;
      if (v28 < v118)
      {
        goto LABEL_159;
      }

      if (v118 < v28)
      {
        i = v26;
        if (v36 >= a3)
        {
          v41 = a3;
        }

        else
        {
          v41 = v36;
        }

        a3 = v125 * (v41 - 1);
        v42 = v125 * v41;
        v43 = v118;
        v44 = v118 * v125;
        v45 = v28;
        v130 = v28;
        do
        {
          if (v43 != --v45)
          {
            v46 = *v126;
            if (!*v126)
            {
              goto LABEL_166;
            }

            outlined init with take of HUDActivityManager.BannerUpdate(v46 + v44, v121);
            v47 = v44 < a3 || v46 + v44 >= v46 + v42;
            if (v47)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v44 != a3)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            outlined init with take of HUDActivityManager.BannerUpdate(v121, v46 + a3);
            v28 = v130;
          }

          ++v43;
          a3 -= v125;
          v42 -= v125;
          v44 += v125;
        }

        while (v43 < v45);
        v26 = i;
        v17 = v122;
LABEL_41:
        v27 = v118;
      }
    }

    v48 = v126[1];
    if (v28 < v48)
    {
      if (__OFSUB__(v28, v27))
      {
        goto LABEL_158;
      }

      if (v28 - v27 < v114)
      {
        break;
      }
    }

LABEL_71:
    if (v28 < v27)
    {
      goto LABEL_157;
    }

    v58 = swift_isUniquelyReferenced_nonNull_native();
    v130 = v28;
    if ((v58 & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v26 + 2) + 1, 1, v26);
      v26 = v104;
    }

    v60 = *(v26 + 2);
    v59 = *(v26 + 3);
    v61 = v60 + 1;
    if (v60 >= v59 >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v59 > 1, v60 + 1, 1, v26);
      v26 = v105;
    }

    *(v26 + 2) = v61;
    v62 = v26 + 32;
    v63 = &v26[16 * v60 + 32];
    v64 = v130;
    *v63 = v27;
    *(v63 + 1) = v64;
    v125 = *v117;
    if (!v125)
    {
      goto LABEL_167;
    }

    if (v60)
    {
      v25 = v130;
      i = v26;
      while (1)
      {
        v65 = v61 - 1;
        v66 = &v62[16 * v61 - 16];
        v67 = &v26[16 * v61];
        if (v61 >= 4)
        {
          break;
        }

        if (v61 == 3)
        {
          v68 = *(v26 + 4);
          v69 = *(v26 + 5);
          v78 = __OFSUB__(v69, v68);
          v70 = v69 - v68;
          v71 = v78;
LABEL_92:
          if (v71)
          {
            goto LABEL_144;
          }

          v83 = *v67;
          v82 = *(v67 + 1);
          v84 = __OFSUB__(v82, v83);
          v85 = v82 - v83;
          v86 = v84;
          if (v84)
          {
            goto LABEL_147;
          }

          v87 = *(v66 + 1);
          v88 = v87 - *v66;
          if (__OFSUB__(v87, *v66))
          {
            goto LABEL_150;
          }

          if (__OFADD__(v85, v88))
          {
            goto LABEL_152;
          }

          if (v85 + v88 >= v70)
          {
            if (v70 < v88)
            {
              v65 = v61 - 2;
            }

            goto LABEL_114;
          }

          goto LABEL_107;
        }

        if (v61 < 2)
        {
          goto LABEL_146;
        }

        v90 = *v67;
        v89 = *(v67 + 1);
        v78 = __OFSUB__(v89, v90);
        v85 = v89 - v90;
        v86 = v78;
LABEL_107:
        if (v86)
        {
          goto LABEL_149;
        }

        v92 = *v66;
        v91 = *(v66 + 1);
        v78 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v78)
        {
          goto LABEL_151;
        }

        if (v93 < v85)
        {
          goto LABEL_123;
        }

LABEL_114:
        if (v65 - 1 >= v61)
        {
          __break(1u);
LABEL_139:
          __break(1u);
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
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
          goto LABEL_161;
        }

        if (!*v126)
        {
          goto LABEL_164;
        }

        v97 = v14;
        v14 = v11;
        v98 = &v62[16 * v65 - 16];
        v26 = *v98;
        v99 = v62;
        a3 = v65;
        v100 = &v62[16 * v65];
        v101 = *(v100 + 1);
        v102 = v127;
        specialized _merge<A>(low:mid:high:buffer:by:)(*v126 + *(v124 + 72) * *v98, *v126 + *(v124 + 72) * *v100, *v126 + *(v124 + 72) * v101, v125);
        v127 = v102;
        if (v102)
        {
          goto LABEL_137;
        }

        if (v101 < v26)
        {
          goto LABEL_139;
        }

        v103 = *(i + 2);
        if (a3 > v103)
        {
          goto LABEL_140;
        }

        *v98 = v26;
        *(v98 + 1) = v101;
        if (a3 >= v103)
        {
          goto LABEL_141;
        }

        v61 = v103 - 1;
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v100 + 16, v103 - 1 - a3, v100);
        v26 = i;
        *(i + 2) = v103 - 1;
        v17 = v122;
        v25 = v130;
        v62 = v99;
        v11 = v14;
        v14 = v97;
        if (v103 <= 2)
        {
          goto LABEL_123;
        }
      }

      v72 = &v62[16 * v61];
      v73 = *(v72 - 8);
      v74 = *(v72 - 7);
      v78 = __OFSUB__(v74, v73);
      v75 = v74 - v73;
      if (v78)
      {
        goto LABEL_142;
      }

      v77 = *(v72 - 6);
      v76 = *(v72 - 5);
      v78 = __OFSUB__(v76, v77);
      v70 = v76 - v77;
      v71 = v78;
      if (v78)
      {
        goto LABEL_143;
      }

      v79 = *(v67 + 1);
      v80 = v79 - *v67;
      if (__OFSUB__(v79, *v67))
      {
        goto LABEL_145;
      }

      v78 = __OFADD__(v70, v80);
      v81 = v70 + v80;
      if (v78)
      {
        goto LABEL_148;
      }

      if (v81 >= v75)
      {
        v95 = *v66;
        v94 = *(v66 + 1);
        v78 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v78)
        {
          goto LABEL_156;
        }

        if (v70 < v96)
        {
          v65 = v61 - 2;
        }

        goto LABEL_114;
      }

      goto LABEL_92;
    }

    v25 = v130;
LABEL_123:
    v24 = v126[1];
    if (v25 >= v24)
    {
      goto LABEL_127;
    }
  }

  v49 = v27 + v114;
  if (__OFADD__(v27, v114))
  {
    goto LABEL_160;
  }

  if (v49 >= v48)
  {
    v49 = v126[1];
  }

  if (v49 < v27)
  {
LABEL_161:
    __break(1u);
    goto LABEL_162;
  }

  if (v28 == v49)
  {
    goto LABEL_71;
  }

  i = v26;
  v50 = *v126;
  v51 = *(v124 + 72);
  v52 = *v126 + v51 * (v28 - 1);
  a3 = -v51;
  v118 = v27;
  v53 = v27 - v28;
  v119 = v51;
  v54 = v50 + v28 * v51;
  v120 = v49;
LABEL_51:
  v130 = v28;
  v55 = v54;
  v123 = v53;
  v125 = v52;
  while (1)
  {
    outlined init with copy of HUDActivityManager.BannerUpdate(v55, v14);
    outlined init with copy of HUDActivityManager.BannerUpdate(v52, v11);
    outlined init with copy of ConversationControlsType((v14 + 1), v132);
    outlined init with copy of ConversationControlsType((v11 + 1), v134);
    if (v133 == 1)
    {
      if (v135 != 1)
      {
        outlined destroy of ConversationControlsType(v132);
        outlined destroy of ConversationControlsType(v134);
        outlined destroy of HUDActivityManager.BannerUpdate(v11);
        outlined destroy of HUDActivityManager.BannerUpdate(v14);
LABEL_69:
        v28 = v130 + 1;
        v52 = v125 + v119;
        v53 = v123 - 1;
        v54 += v119;
        if (v130 + 1 == v120)
        {
          v28 = v120;
          v26 = i;
          v17 = v122;
          v27 = v118;
          goto LABEL_71;
        }

        goto LABEL_51;
      }

      v56 = *v14 < *v11;
      outlined destroy of ConversationControlsType(v134);
      outlined destroy of ConversationControlsType(v132);
    }

    else
    {
      if (v135 == 1)
      {
        outlined destroy of ConversationControlsType(v134);
        outlined destroy of ConversationControlsType(v132);
        outlined destroy of HUDActivityManager.BannerUpdate(v11);
        outlined destroy of HUDActivityManager.BannerUpdate(v14);
        goto LABEL_64;
      }

      v56 = *v14 < *v11 || *v14 == *v11 && Date.compare(_:)() == -1;
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v132, &_s15ConversationKit0A12ControlsTypeO_ACtMd, &_s15ConversationKit0A12ControlsTypeO_ACtMR);
    }

    outlined destroy of HUDActivityManager.BannerUpdate(v11);
    outlined destroy of HUDActivityManager.BannerUpdate(v14);
    if (!v56)
    {
      goto LABEL_69;
    }

LABEL_64:
    if (!v50)
    {
      break;
    }

    v57 = v131;
    outlined init with take of HUDActivityManager.BannerUpdate(v55, v131);
    swift_arrayInitWithTakeFrontToBack();
    outlined init with take of HUDActivityManager.BannerUpdate(v57, v52);
    v52 += a3;
    v55 += a3;
    v47 = __CFADD__(v53++, 1);
    if (v47)
    {
      goto LABEL_69;
    }
  }

  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4;
  type metadata accessor for HUDActivityManager.BannerUpdate(0);
  OUTLINED_FUNCTION_1();
  v114 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_17();
  v109 = v13 - v14;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v124 = v16;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_71_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_39_3();
  v118 = a3;
  v19 = *(a3 + 8);
  if (v19 < 1)
  {
    v21 = MEMORY[0x1E69E7CC0];
LABEL_100:
    a3 = *a1;
    if (!*a1)
    {
      goto LABEL_141;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_102:
      v96 = (v21 + 16);
      v95 = *(v21 + 16);
      for (i = v21; v95 >= 2; v21 = i)
      {
        if (!*v118)
        {
          goto LABEL_138;
        }

        v97 = (v21 + 16 * v95);
        v21 = *v97;
        v98 = &v96[2 * v95];
        v99 = *(v98 + 1);
        specialized _merge<A>(low:mid:high:buffer:by:)(*v118 + *(v114 + 72) * *v97, *v118 + *(v114 + 72) * *v98, *v118 + *(v114 + 72) * v99, a3);
        if (v8)
        {
          break;
        }

        if (v99 < v21)
        {
          goto LABEL_126;
        }

        if (v95 - 2 >= *v96)
        {
          goto LABEL_127;
        }

        *v97 = v21;
        v97[1] = v99;
        v100 = *v96 - v95;
        if (*v96 < v95)
        {
          goto LABEL_128;
        }

        v95 = *v96 - 1;
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v98 + 16, v100, v98);
        *v96 = v95;
      }

LABEL_110:

      return;
    }

LABEL_135:
    v21 = specialized _ArrayBuffer._consumeAndCreateNew()(v21);
    goto LABEL_102;
  }

  v103 = a4;
  v20 = 0;
  v21 = MEMORY[0x1E69E7CC0];
  v110 = v5;
  while (1)
  {
    v22 = v20;
    v23 = v20 + 1;
    if (v20 + 1 < v19)
    {
      a3 = *(v114 + 72);
      v24 = v20 + 1;
      v25 = *v118 + a3 * v23;
      v26 = *v118;
      v119 = v19;
      outlined init with copy of HUDActivityManager.BannerUpdate(v25, v5);
      outlined init with copy of HUDActivityManager.BannerUpdate(v26 + a3 * v22, v6);
      v27 = *v5;
      v28 = OUTLINED_FUNCTION_84_7();
      outlined destroy of HUDActivityManager.BannerUpdate(v28);
      outlined destroy of HUDActivityManager.BannerUpdate(v5);
      v29 = v119;
      v104 = v22;
      v30 = v22 + 2;
      v115 = a3;
      v31 = v26 + a3 * (v22 + 2);
      while (1)
      {
        v32 = v30;
        if (v24 + 1 >= v29)
        {
          break;
        }

        ++v24;
        a3 = v27 < v7;
        outlined init with copy of HUDActivityManager.BannerUpdate(v31, v5);
        outlined init with copy of HUDActivityManager.BannerUpdate(v25, v6);
        v33 = *v5;
        v34 = *v6;
        outlined destroy of HUDActivityManager.BannerUpdate(v6);
        outlined destroy of HUDActivityManager.BannerUpdate(v5);
        v29 = v119;
        v31 += v115;
        v25 += v115;
        v30 = v32 + 1;
        if (v27 < v7 == v33 >= v34)
        {
          goto LABEL_9;
        }
      }

      v24 = v29;
LABEL_9:
      if (v27 < v7)
      {
        if (v24 < v104)
        {
          goto LABEL_132;
        }

        v23 = v24;
        if (v104 >= v24)
        {
          v22 = v104;
          goto LABEL_31;
        }

        v120 = v21;
        v101 = v8;
        if (v29 >= v32)
        {
          v35 = v32;
        }

        else
        {
          v35 = v29;
        }

        v36 = v115 * (v35 - 1);
        v37 = v115 * v35;
        v38 = v104 * v115;
        v39 = v104;
        do
        {
          if (v39 != --v23)
          {
            a3 = *v118;
            if (!*v118)
            {
              goto LABEL_139;
            }

            outlined init with take of HUDActivityManager.BannerUpdate(a3 + v38, v109);
            v40 = v38 < v36 || a3 + v38 >= (a3 + v37);
            if (v40)
            {
              OUTLINED_FUNCTION_77_11();
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v38 != v36)
            {
              OUTLINED_FUNCTION_77_11();
              swift_arrayInitWithTakeBackToFront();
            }

            outlined init with take of HUDActivityManager.BannerUpdate(v109, a3 + v36);
          }

          ++v39;
          v36 -= v115;
          v37 -= v115;
          v38 += v115;
        }

        while (v39 < v23);
        v8 = v101;
        v21 = v120;
      }

      v23 = v24;
      v22 = v104;
    }

LABEL_31:
    v41 = v118[1];
    if (v23 < v41)
    {
      if (__OFSUB__(v23, v22))
      {
        goto LABEL_131;
      }

      if (v23 - v22 < v103)
      {
        break;
      }
    }

LABEL_47:
    if (v23 < v22)
    {
      goto LABEL_130;
    }

    v117 = v23;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v21 + 16) + 1, 1, v21);
      v21 = v93;
    }

    a3 = *(v21 + 16);
    v53 = *(v21 + 24);
    v54 = a3 + 1;
    if (a3 >= v53 >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v53 > 1, a3 + 1, 1, v21);
      v21 = v94;
    }

    *(v21 + 16) = v54;
    v55 = v21 + 32;
    v56 = (v21 + 32 + 16 * a3);
    *v56 = v22;
    v56[1] = v117;
    v113 = *a1;
    if (!*a1)
    {
      goto LABEL_140;
    }

    if (a3)
    {
      v122 = v21;
      while (1)
      {
        v57 = v54 - 1;
        v58 = (v55 + 16 * (v54 - 1));
        v59 = (v21 + 16 * v54);
        if (v54 >= 4)
        {
          break;
        }

        if (v54 == 3)
        {
          v60 = *(v21 + 32);
          v61 = *(v21 + 40);
          v70 = __OFSUB__(v61, v60);
          v62 = v61 - v60;
          v63 = v70;
LABEL_68:
          if (v63)
          {
            goto LABEL_117;
          }

          v75 = *v59;
          v74 = v59[1];
          v76 = __OFSUB__(v74, v75);
          v77 = v74 - v75;
          v78 = v76;
          if (v76)
          {
            goto LABEL_120;
          }

          v79 = v58[1];
          v80 = v79 - *v58;
          if (__OFSUB__(v79, *v58))
          {
            goto LABEL_123;
          }

          if (__OFADD__(v77, v80))
          {
            goto LABEL_125;
          }

          if (v77 + v80 >= v62)
          {
            if (v62 < v80)
            {
              v57 = v54 - 2;
            }

            goto LABEL_90;
          }

          goto LABEL_83;
        }

        if (v54 < 2)
        {
          goto LABEL_119;
        }

        v82 = *v59;
        v81 = v59[1];
        v70 = __OFSUB__(v81, v82);
        v77 = v81 - v82;
        v78 = v70;
LABEL_83:
        if (v78)
        {
          goto LABEL_122;
        }

        v84 = *v58;
        v83 = v58[1];
        v70 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v70)
        {
          goto LABEL_124;
        }

        if (v85 < v77)
        {
          goto LABEL_97;
        }

LABEL_90:
        if (v57 - 1 >= v54)
        {
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        if (!*v118)
        {
          goto LABEL_137;
        }

        v89 = (v55 + 16 * (v57 - 1));
        v90 = *v89;
        a3 = v57;
        v91 = v55 + 16 * v57;
        v21 = *(v91 + 8);
        specialized _merge<A>(low:mid:high:buffer:by:)(*v118 + *(v114 + 72) * *v89, *v118 + *(v114 + 72) * *v91, *v118 + *(v114 + 72) * v21, v113);
        if (v8)
        {
          goto LABEL_110;
        }

        if (v21 < v90)
        {
          goto LABEL_112;
        }

        v8 = *(v122 + 16);
        if (a3 > v8)
        {
          goto LABEL_113;
        }

        *v89 = v90;
        v89[1] = v21;
        if (a3 >= v8)
        {
          goto LABEL_114;
        }

        v54 = v8 - 1;
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((v91 + 16), v8 - 1 - a3, v91);
        v21 = v122;
        *(v122 + 16) = v8 - 1;
        v92 = v8 > 2;
        v8 = 0;
        v5 = v110;
        if (!v92)
        {
          goto LABEL_97;
        }
      }

      v64 = v55 + 16 * v54;
      v65 = *(v64 - 64);
      v66 = *(v64 - 56);
      v70 = __OFSUB__(v66, v65);
      v67 = v66 - v65;
      if (v70)
      {
        goto LABEL_115;
      }

      v69 = *(v64 - 48);
      v68 = *(v64 - 40);
      v70 = __OFSUB__(v68, v69);
      v62 = v68 - v69;
      v63 = v70;
      if (v70)
      {
        goto LABEL_116;
      }

      v71 = v59[1];
      v72 = v71 - *v59;
      if (__OFSUB__(v71, *v59))
      {
        goto LABEL_118;
      }

      v70 = __OFADD__(v62, v72);
      v73 = v62 + v72;
      if (v70)
      {
        goto LABEL_121;
      }

      if (v73 >= v67)
      {
        v87 = *v58;
        v86 = v58[1];
        v70 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v70)
        {
          goto LABEL_129;
        }

        if (v62 < v88)
        {
          v57 = v54 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_68;
    }

LABEL_97:
    v20 = v117;
    v19 = v118[1];
    if (v117 >= v19)
    {
      goto LABEL_100;
    }
  }

  v42 = v22 + v103;
  if (__OFADD__(v22, v103))
  {
    goto LABEL_133;
  }

  if (v42 >= v41)
  {
    v42 = v118[1];
  }

  if (v42 < v22)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v23 == v42)
  {
    goto LABEL_47;
  }

  v121 = v21;
  v102 = v8;
  v43 = *v118;
  v44 = *(v114 + 72);
  v45 = *v118 + v44 * (v23 - 1);
  v46 = -v44;
  v105 = v22;
  v47 = v22 - v23;
  v107 = v44;
  v108 = v42;
  v48 = *v118 + v23 * v44;
LABEL_40:
  v116 = v23;
  v49 = v48;
  v111 = v47;
  v112 = v45;
  v50 = v45;
  while (1)
  {
    outlined init with copy of HUDActivityManager.BannerUpdate(v49, v5);
    outlined init with copy of HUDActivityManager.BannerUpdate(v50, v6);
    v51 = *v5;
    v52 = OUTLINED_FUNCTION_84_7();
    outlined destroy of HUDActivityManager.BannerUpdate(v52);
    outlined destroy of HUDActivityManager.BannerUpdate(v5);
    if (v51 >= v7)
    {
LABEL_45:
      v23 = v116 + 1;
      v45 = v112 + v107;
      v47 = v111 - 1;
      v48 += v107;
      if (v116 + 1 == v108)
      {
        v23 = v108;
        v8 = v102;
        v21 = v121;
        v22 = v105;
        goto LABEL_47;
      }

      goto LABEL_40;
    }

    if (!v43)
    {
      break;
    }

    a3 = v124;
    outlined init with take of HUDActivityManager.BannerUpdate(v49, v124);
    swift_arrayInitWithTakeFrontToBack();
    outlined init with take of HUDActivityManager.BannerUpdate(v124, v50);
    v50 += v46;
    v49 += v46;
    v40 = __CFADD__(v47++, 1);
    if (v40)
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
}

void specialized _merge<A>(low:mid:high:buffer:by:)(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v55 = a3;
  v8 = OUTLINED_FUNCTION_24_1();
  v9 = type metadata accessor for HUDActivityManager.BannerUpdate(v8);
  MEMORY[0x1EEE9AC00](v9);
  v56 = (&v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v50 - v13);
  v16 = *(v15 + 72);
  if (!v16)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  v17 = a2 - v4;
  v18 = a2 - v4 == 0x8000000000000000 && v16 == -1;
  if (v18)
  {
    goto LABEL_61;
  }

  v19 = v55 - a2;
  if (v55 - a2 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_62;
  }

  v52 = v12;
  v21 = v17 / v16;
  v59 = v4;
  v58 = a4;
  v22 = v19 / v16;
  if (v17 / v16 >= v19 / v16)
  {
    v54 = v4;
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, v19 / v16, a4);
    v32 = a4 + v22 * v16;
    v33 = -v16;
    v34 = v32;
    v35 = v55;
    v53 = v33;
LABEL_37:
    v55 = a2 + v33;
    v36 = v35;
    v51 = v34;
    v37 = v34;
    while (1)
    {
      if (v32 <= a4)
      {
        v59 = a2;
        v57 = v37;
        goto LABEL_59;
      }

      if (a2 <= v54)
      {
        break;
      }

      v38 = a2;
      v39 = v36 + v53;
      v40 = v32 + v53;
      v41 = v32;
      outlined init with copy of HUDActivityManager.BannerUpdate(v32 + v53, v14);
      outlined init with copy of HUDActivityManager.BannerUpdate(v55, v56);
      v42 = *v14;
      v43 = OUTLINED_FUNCTION_84_7();
      outlined destroy of HUDActivityManager.BannerUpdate(v43);
      outlined destroy of HUDActivityManager.BannerUpdate(v14);
      if (v42 < v5)
      {
        v45 = v36 < a2 || v39 >= a2;
        v35 = v39;
        if (v45)
        {
          a2 = v55;
          swift_arrayInitWithTakeFrontToBack();
          v35 = v39;
          v34 = v37;
          v33 = v53;
          v32 = v41;
        }

        else
        {
          v46 = v37;
          v34 = v37;
          v47 = v55;
          a2 = v55;
          v33 = v53;
          v32 = v41;
          if (v36 != v38)
          {
            v48 = v35;
            v49 = v46;
            swift_arrayInitWithTakeBackToFront();
            v32 = v41;
            v35 = v48;
            a2 = v47;
            v34 = v49;
          }
        }

        goto LABEL_37;
      }

      if (v36 < v41 || v39 >= v41)
      {
        OUTLINED_FUNCTION_57_16();
        swift_arrayInitWithTakeFrontToBack();
        v32 = v40;
        v37 = v40;
      }

      else
      {
        v37 = v40;
        v18 = v41 == v36;
        v36 = v39;
        v32 = v40;
        if (!v18)
        {
          OUTLINED_FUNCTION_57_16();
          swift_arrayInitWithTakeBackToFront();
          v32 = v40;
          v37 = v40;
        }
      }
    }

    v59 = a2;
    v57 = v51;
  }

  else
  {
    v23 = OUTLINED_FUNCTION_38_2();
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v23, v24, a4);
    v25 = a4 + v21 * v16;
    v57 = v25;
    while (a4 < v25 && a2 < v55)
    {
      outlined init with copy of HUDActivityManager.BannerUpdate(a2, v14);
      v27 = v56;
      outlined init with copy of HUDActivityManager.BannerUpdate(a4, v56);
      v28 = *v14;
      v29 = *v27;
      outlined destroy of HUDActivityManager.BannerUpdate(v27);
      outlined destroy of HUDActivityManager.BannerUpdate(v14);
      if (v28 >= v29)
      {
        if (v4 < a4 || v4 >= a4 + v16)
        {
          OUTLINED_FUNCTION_79_11();
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v4 != a4)
        {
          OUTLINED_FUNCTION_79_11();
          swift_arrayInitWithTakeBackToFront();
        }

        v58 = a4 + v16;
        a4 += v16;
      }

      else
      {
        if (v4 < a2 || v4 >= a2 + v16)
        {
          OUTLINED_FUNCTION_79_11();
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v4 != a2)
        {
          OUTLINED_FUNCTION_79_11();
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v16;
      }

      v4 += v16;
      v59 = v4;
    }
  }

LABEL_59:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v59, &v58, &v57);
}

void partial apply for closure #1 in HUDActivityManager.present(_:with:)(char a1)
{
  v3 = type metadata accessor for HUDActivityManager.BannerUpdate(0);
  OUTLINED_FUNCTION_9_0(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v9 = *(v1 + 16);
  v10 = *(v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  closure #1 in HUDActivityManager.present(_:with:)(a1, v9, v1 + v8, v10);
}

uint64_t partial apply for closure #1 in CoupledHUDActivity.childActivity.didset()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA9PublishedV0C0VySb_GGMd, &_s7Combine14AsyncPublisherVyAA9PublishedV0C0VySb_GGMR);
  OUTLINED_FUNCTION_9_0(v2);
  v5 = *(v0 + ((*(v4 + 64) + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  swift_task_alloc();
  OUTLINED_FUNCTION_14_4();
  *(v1 + 16) = v6;
  *v6 = v7;
  v6[1] = partial apply for closure #2 in closure #1 in variable initialization expression of static CallScreeningViewModelComposer.viewModel;
  v8 = OUTLINED_FUNCTION_16_2();

  return closure #1 in CoupledHUDActivity.childActivity.didset(v8, v9, v10, v11, v5);
}

void InCallControlsPTTCallDetailsViewModel.init(pttCall:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 provider];
  v5 = [v4 localizedName];

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = outlined bridged method (ob) of @objc TUCallProvider.bundleIdentifier.getter([a1 provider]);
  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0xE000000000000000;
  }

  v13 = [a1 channelDisplayName];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  *a2 = v6;
  a2[1] = v8;
  a2[2] = v11;
  a2[3] = v12;
  a2[4] = v14;
  a2[5] = v16;
  a2[6] = a1;
}

uint64_t InCallControlsPTTCallDetailsViewModel.providerName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t InCallControlsPTTCallDetailsViewModel.providerBundleIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t InCallControlsPTTCallDetailsViewModel.channelName.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t InCallControlsPTTCallDetailsViewModel.init(providerName:providerBundleIdentifier:channelName:pttCall:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
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

uint64_t >> prefix<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - v6;
  v8 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v18 - v14;
  (*(v5 + 16))(v7, a1, v4, v13);
  if (__swift_getEnumTagSinglePayload(v7, 1, a2) == 1)
  {
    (*(v5 + 8))(v7, v4);
    return 7104878;
  }

  else
  {
    (*(v8 + 32))(v15, v7, a2);
    (*(v8 + 16))(v11, v15, a2);
    v16 = String.init<A>(reflecting:)();
    (*(v8 + 8))(v15, a2);
  }

  return v16;
}

uint64_t *OS_os_log.conversationKit.unsafeMutableAddressor()
{
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  return &static OS_os_log.conversationKit;
}

uint64_t String.init(namedPropertyValues:for:)(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = *(a1 + 16);
  if (v4)
  {
    v28 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v5 = v28;
    v6 = a1 + 32;
    do
    {
      outlined init with copy of (name: String, value: Any?)(v6, &v25, &_sSS4name_ypSg5valuetMd, "0M\b");
      v23 = v25;
      v24 = v26;

      MEMORY[0x1BFB20B10](61, 0xE100000000000000);
      outlined init with copy of (name: String, value: Any?)(&v27, &v20, &_sypSgMd, &_sypSgMR);
      if (v21)
      {
        outlined init with take of Any(&v20, v22);
        outlined init with copy of Any(v22, &v20);
        v7 = String.init<A>(reflecting:)();
        v9 = v8;
        __swift_destroy_boxed_opaque_existential_1(v22);
      }

      else
      {
        outlined destroy of Any?(&v20, &_sypSgMd, &_sypSgMR);
        v9 = 0xE300000000000000;
        v7 = 7104878;
      }

      MEMORY[0x1BFB20B10](v7, v9);

      MEMORY[0x1BFB20B10](41, 0xE100000000000000);
      v10 = v23;
      v11 = v24;
      outlined destroy of Any?(&v25, &_sSS4name_ypSg5valuetMd, "0M\b");
      v28 = v5;
      v12 = *(v5 + 16);
      if (v12 >= *(v5 + 24) >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v5 = v28;
      }

      *(v5 + 16) = v12 + 1;
      v13 = v5 + 16 * v12;
      *(v13 + 32) = v10;
      *(v13 + 40) = v11;
      v6 += 48;
      --v4;
    }

    while (v4);

    v2 = a2;
  }

  else
  {

    v5 = MEMORY[0x1E69E7CC0];
  }

  v25 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v14 = BidirectionalCollection<>.joined(separator:)();
  v16 = v15;

  v25 = 60;
  v26 = 0xE100000000000000;
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  swift_getDynamicType();
  v17 = _typeName(_:qualified:)();
  MEMORY[0x1BFB20B10](v17);

  MEMORY[0x1BFB20B10](32, 0xE100000000000000);
  MEMORY[0x1BFB20B10](v14, v16);

  MEMORY[0x1BFB20B10](62, 0xE100000000000000);
  String.init<A>(_:)();
  __swift_destroy_boxed_opaque_existential_1(v2);
  return OUTLINED_FUNCTION_46();
}

void **OS_os_log.conversationKitOversized.unsafeMutableAddressor()
{
  if (one-time initialization token for conversationKitOversized != -1)
  {
    swift_once();
  }

  return &static OS_os_log.conversationKitOversized;
}

uint64_t one-time initialization function for recents(uint64_t a1)
{
  return OUTLINED_FUNCTION_2_144(a1, &static Log.recents, 0x73746E65636552);
}

{
  return OUTLINED_FUNCTION_2_144(a1, &static Logger.recents, 0x73746E65636552);
}

uint64_t one-time initialization function for banners()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.banners);
  v1 = OUTLINED_FUNCTION_46();
  __swift_project_value_buffer(v1, v2);
  OUTLINED_FUNCTION_4_126();
  return OUTLINED_FUNCTION_43_18(23, v3, v4);
}

uint64_t one-time initialization function for conversationControlsGaming()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.conversationControlsGaming);
  v1 = OUTLINED_FUNCTION_46();
  __swift_project_value_buffer(v1, v2);
  OUTLINED_FUNCTION_0_179();
  return OUTLINED_FUNCTION_43_18(43, v3, v4);
}

uint64_t one-time initialization function for conversationController()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.conversationController);
  v1 = OUTLINED_FUNCTION_46();
  __swift_project_value_buffer(v1, v2);
  OUTLINED_FUNCTION_0_179();
  return OUTLINED_FUNCTION_43_18(38, v3, v4);
}

uint64_t one-time initialization function for audioTap()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.audioTap);
  v1 = OUTLINED_FUNCTION_46();
  __swift_project_value_buffer(v1, v2);
  OUTLINED_FUNCTION_0_179();
  return OUTLINED_FUNCTION_43_18(29, v3, v4);
}

uint64_t one-time initialization function for answeringMachine()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.answeringMachine);
  v1 = OUTLINED_FUNCTION_46();
  __swift_project_value_buffer(v1, v2);
  OUTLINED_FUNCTION_8_91();
  return OUTLINED_FUNCTION_7_89(v3 + 16);
}

uint64_t one-time initialization function for shareableContent()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.shareableContent);
  v1 = OUTLINED_FUNCTION_46();
  __swift_project_value_buffer(v1, v2);
  OUTLINED_FUNCTION_8_91();
  return OUTLINED_FUNCTION_7_89(v3 + 20);
}

uint64_t one-time initialization function for audioNormalizer()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.audioNormalizer);
  v1 = OUTLINED_FUNCTION_46();
  __swift_project_value_buffer(v1, v2);
  OUTLINED_FUNCTION_4_126();
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for attentionAwareness()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.attentionAwareness);
  __swift_project_value_buffer(v0, static Logger.attentionAwareness);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for peoplePicker()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.peoplePicker);
  v1 = OUTLINED_FUNCTION_46();
  __swift_project_value_buffer(v1, v2);
  OUTLINED_FUNCTION_4_126();
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for peoplePickerAutocomplete()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.peoplePickerAutocomplete);
  v1 = OUTLINED_FUNCTION_46();
  __swift_project_value_buffer(v1, v2);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for participant()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.participant);
  v1 = OUTLINED_FUNCTION_46();
  __swift_project_value_buffer(v1, v2);
  OUTLINED_FUNCTION_4_126();
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for sensitiveContentController()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.sensitiveContentController);
  v1 = OUTLINED_FUNCTION_46();
  __swift_project_value_buffer(v1, v2);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for recordingSession()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.recordingSession);
  v1 = OUTLINED_FUNCTION_46();
  __swift_project_value_buffer(v1, v2);
  OUTLINED_FUNCTION_8_91();
  return OUTLINED_FUNCTION_7_89(v3 | 0xF);
}

uint64_t one-time initialization function for appleIntelligence()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.appleIntelligence);
  __swift_project_value_buffer(v0, static Logger.appleIntelligence);
  return Logger.init(subsystem:category:)();
}

uint64_t Logger.recordingSession.unsafeMutableAddressor(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v4, a2);
}

uint64_t static Log.default.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, a2);
  OUTLINED_FUNCTION_2_3();
  v8 = *(v7 + 16);

  return v8(a4);
}

uint64_t outlined init with copy of (name: String, value: Any?)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_2_3();
  v5 = OUTLINED_FUNCTION_46();
  v6(v5);
  return a2;
}

uint64_t NSNotificationCenter.post(_:afterAnimatorCompletes:)(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for Notification();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = aBlock - v11;
  v13 = *(v6 + 16);
  v13(aBlock - v11, a1, v5, v10);
  (v13)(v8, v12, v5);
  v14 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v15 = swift_allocObject();
  (*(v6 + 32))(v15 + v14, v12, v5);
  *(v15 + ((v7 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = v2;
  if (a2)
  {
    v16 = *(v6 + 8);
    v17 = v2;
    swift_unknownObjectRetain();
    v16(v8, v5);
    v18 = swift_allocObject();
    *(v18 + 16) = partial apply for closure #1 in NSNotificationCenter.post(_:afterAnimatorCompletes:);
    *(v18 + 24) = v15;
    aBlock[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_85;
    v19 = _Block_copy(aBlock);

    [a2 addCompletion_];
    _Block_release(v19);

    return swift_unknownObjectRelease();
  }

  else
  {
    closure #1 in NSNotificationCenter.post(_:afterAnimatorCompletes:)(v8, v2);

    return (*(v6 + 8))(v8, v5);
  }
}

void specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  v24 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo21NSAttributedStringKeyaypGMd, &_ss18_DictionaryStorageCySo21NSAttributedStringKeyaypGMR);
    v1 = OUTLINED_FUNCTION_6_98();
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
  }

  v2 = v24 + 64;
  OUTLINED_FUNCTION_0_180();
  v5 = v4 & v3;
  v7 = (v6 + 63) >> 6;
  v8 = v1 + 64;

  v9 = 0;
  if (!v5)
  {
    goto LABEL_5;
  }

  do
  {
LABEL_9:
    v11 = OUTLINED_FUNCTION_5_122(__rbit64(v5), v24);
    swift_unknownObjectRetain();
    swift_dynamicCast();
    outlined init with take of Any((v26 + 8), v25);
    outlined init with take of Any(v25, v26);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    Hasher.init(_seed:)();
    String.hash(into:)();
    v12 = Hasher._finalize()();

    OUTLINED_FUNCTION_7_90();
    if (((v14 << (v12 & ~v13)) & ~*(v8 + 8 * ((v12 & ~v13) >> 6))) == 0)
    {
      OUTLINED_FUNCTION_3_21();
      while (1)
      {
        OUTLINED_FUNCTION_19_2();
        if (v18)
        {
          if (v16)
          {
            goto LABEL_23;
          }
        }

        if (v15 == v17)
        {
          v15 = 0;
        }

        if (*(v8 + 8 * v15) != -1)
        {
          OUTLINED_FUNCTION_2_0();
          goto LABEL_19;
        }
      }
    }

    OUTLINED_FUNCTION_4_12();
LABEL_19:
    OUTLINED_FUNCTION_9_90();
    *(v8 + v19) |= v20;
    v5 &= v21;
    *(*(v1 + 48) + 8 * v22) = v11;
    OUTLINED_FUNCTION_12_73();
    outlined init with take of Any(v26, v23);
    OUTLINED_FUNCTION_4_127();
  }

  while (v5);
LABEL_5:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return;
    }

    v5 = *(v2 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, "@M\b");
    v2 = OUTLINED_FUNCTION_6_98();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v8 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v10 = __clz(__rbit64(v5)) | (v8 << 6);
    v11 = (*(a1 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    outlined init with copy of Any(*(a1 + 56) + 32 * v10, v35);
    *&v34 = v13;
    *(&v34 + 1) = v12;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    outlined init with take of Any(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    outlined init with take of Any(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    outlined init with take of Any(v31, v32);
    v14 = AnyHashable._rawHashValue(seed:)(*(v2 + 40)) & ~(-1 << *(v2 + 32));
    if (((-1 << v14) & ~*(v7 + 8 * (v14 >> 6))) == 0)
    {
      OUTLINED_FUNCTION_3_21();
      while (1)
      {
        OUTLINED_FUNCTION_19_2();
        if (v18)
        {
          if (v16)
          {
            goto LABEL_26;
          }
        }

        if (v15 == v17)
        {
          v15 = 0;
        }

        if (*(v7 + 8 * v15) != -1)
        {
          OUTLINED_FUNCTION_2_0();
          goto LABEL_22;
        }
      }
    }

    OUTLINED_FUNCTION_4_12();
LABEL_22:
    v5 &= v5 - 1;
    OUTLINED_FUNCTION_8_3();
    *(v7 + v19) |= v20;
    v22 = *(v2 + 48) + 40 * v21;
    *v22 = v24;
    *(v22 + 16) = v25;
    *(v22 + 32) = v26;
    OUTLINED_FUNCTION_12_73();
    outlined init with take of Any(v32, v23);
    OUTLINED_FUNCTION_4_127();
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, "@M\b");
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v8 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    outlined init with copy of Any(*(a1 + 56) + ((v8 << 11) | (32 * __clz(__rbit64(v5)))), v30);
    v29[0] = v30[0];
    v29[1] = v30[1];
    swift_dynamicCast();
    outlined init with take of Any(v29, v23);
    v24 = v20;
    v25 = v21;
    v26 = v22;
    outlined init with take of Any(v23, v27);
    v20 = v24;
    v21 = v25;
    v22 = v26;
    outlined init with take of Any(v27, v28);
    v10 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));
    v11 = -1 << *(v2 + 32);
    v12 = v10 & ~v11;
    v13 = v12 >> 6;
    if (((-1 << v12) & ~*(v7 + 8 * (v12 >> 6))) == 0)
    {
      v15 = 0;
      v16 = (63 - v11) >> 6;
      while (++v13 != v16 || (v15 & 1) == 0)
      {
        v17 = v13 == v16;
        if (v13 == v16)
        {
          v13 = 0;
        }

        v15 |= v17;
        v18 = *(v7 + 8 * v13);
        if (v18 != -1)
        {
          v14 = __clz(__rbit64(~v18)) + (v13 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v14 = __clz(__rbit64((-1 << v12) & ~*(v7 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
    v19 = *(v2 + 48) + 40 * v14;
    *v19 = v20;
    *(v19 + 16) = v21;
    *(v19 + 32) = v22;
    outlined init with take of Any(v28, (*(v2 + 56) + 32 * v14));
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

{
  v20 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo29UIFontDescriptorAttributeNameaypGMd, &_ss18_DictionaryStorageCySo29UIFontDescriptorAttributeNameaypGMR);
    v3 = OUTLINED_FUNCTION_6_98();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  v4 = v20 + 64;
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
    v10 = OUTLINED_FUNCTION_5_122(__rbit64(v7), v20);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDySo26UIFontDescriptorFeatureKeyaSiGGMd, &_sSaySDySo26UIFontDescriptorFeatureKeyaSiGGMR);
    swift_dynamicCast();
    outlined init with take of Any((v22 + 8), v21);
    outlined init with take of Any(v21, v22);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    Hasher.init(_seed:)();
    String.hash(into:)();
    Hasher._finalize()();

    OUTLINED_FUNCTION_7_90();
    OUTLINED_FUNCTION_8_92();
    if (v11)
    {
      OUTLINED_FUNCTION_3_21();
      while (1)
      {
        OUTLINED_FUNCTION_19_2();
        if (v11)
        {
          if (v13)
          {
            goto LABEL_23;
          }
        }

        if (v12 == v14)
        {
          v12 = 0;
        }

        if (*(v2 + 8 * v12) != -1)
        {
          OUTLINED_FUNCTION_2_0();
          goto LABEL_19;
        }
      }
    }

    OUTLINED_FUNCTION_4_12();
LABEL_19:
    OUTLINED_FUNCTION_9_90();
    *(v2 + v15) |= v16;
    v7 &= v17;
    *(*(v3 + 48) + 8 * v18) = v10;
    OUTLINED_FUNCTION_12_73();
    outlined init with take of Any(v22, v19);
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

    v7 = *(v4 + 8 * v9);
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