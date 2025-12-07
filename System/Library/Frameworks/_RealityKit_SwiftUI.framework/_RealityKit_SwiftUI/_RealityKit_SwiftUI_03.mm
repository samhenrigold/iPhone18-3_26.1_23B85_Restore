uint64_t lazy protocol witness table accessor for type UUID and conformance UUID(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for FreeformMiniView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for FreeformMiniView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t objectdestroy_141Tm()
{

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<SubscriptionView<Published<UIInterfaceOrientation>.Publisher, SubscriptionView<Publishers.Autoconnect<Publishers.MakeConnectable<NSNotificationCenter.Publisher>>, ModifiedContent<FreeformMiniViewWrapper, _AppearanceActionModifier>>>, _RotationEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<SubscriptionView<Published<UIInterfaceOrientation>.Publisher, SubscriptionView<Publishers.Autoconnect<Publishers.MakeConnectable<NSNotificationCenter.Publisher>>, ModifiedContent<FreeformMiniViewWrapper, _AppearanceActionModifier>>>, _RotationEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<SubscriptionView<Published<UIInterfaceOrientation>.Publisher, SubscriptionView<Publishers.Autoconnect<Publishers.MakeConnectable<NSNotificationCenter.Publisher>>, ModifiedContent<FreeformMiniViewWrapper, _AppearanceActionModifier>>>, _RotationEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA16SubscriptionViewVy7Combine9PublishedV9PublisherVySo22UIInterfaceOrientationV_GAEyAF10PublishersO11AutoconnectCy_AO15MakeConnectableVy_So20NSNotificationCenterC10FoundationEAIVGGACy012_RealityKit_aB0012FreeformMiniF7Wrapper33_3779DB7E999291C1C0BBA21A79DFAE44LLVAA25_AppearanceActionModifierVGGGAA15_RotationEffectVGMd, &_s7SwiftUI15ModifiedContentVyAA16SubscriptionViewVy7Combine9PublishedV9PublisherVySo22UIInterfaceOrientationV_GAEyAF10PublishersO11AutoconnectCy_AO15MakeConnectableVy_So20NSNotificationCenterC10FoundationEAIVGGACy012_RealityKit_aB0012FreeformMiniF7Wrapper33_3779DB7E999291C1C0BBA21A79DFAE44LLVAA25_AppearanceActionModifierVGGGAA15_RotationEffectVGMR);
    lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type SubscriptionView<Published<UIInterfaceOrientation>.Publisher, SubscriptionView<Publishers.Autoconnect<Publishers.MakeConnectable<NSNotificationCenter.Publisher>>, ModifiedContent<FreeformMiniViewWrapper, _AppearanceActionModifier>>> and conformance SubscriptionView<A, B>, &_s7SwiftUI16SubscriptionViewVy7Combine9PublishedV9PublisherVySo22UIInterfaceOrientationV_GACyAD10PublishersO11AutoconnectCy_AM15MakeConnectableVy_So20NSNotificationCenterC10FoundationEAGVGGAA15ModifiedContentVy012_RealityKit_aB0012FreeformMiniD7Wrapper33_3779DB7E999291C1C0BBA21A79DFAE44LLVAA25_AppearanceActionModifierVGGGMd, &_s7SwiftUI16SubscriptionViewVy7Combine9PublishedV9PublisherVySo22UIInterfaceOrientationV_GACyAD10PublishersO11AutoconnectCy_AM15MakeConnectableVy_So20NSNotificationCenterC10FoundationEAGVGGAA15ModifiedContentVy012_RealityKit_aB0012FreeformMiniD7Wrapper33_3779DB7E999291C1C0BBA21A79DFAE44LLVAA25_AppearanceActionModifierVGGGMR, MEMORY[0x277CDDB50]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<SubscriptionView<Published<UIInterfaceOrientation>.Publisher, SubscriptionView<Publishers.Autoconnect<Publishers.MakeConnectable<NSNotificationCenter.Publisher>>, ModifiedContent<FreeformMiniViewWrapper, _AppearanceActionModifier>>>, _RotationEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FreeformMiniViewWrapper and conformance FreeformMiniViewWrapper(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type FreeformMiniViewWrapper and conformance FreeformMiniViewWrapper;
  if (!lazy protocol witness table cache variable for type FreeformMiniViewWrapper and conformance FreeformMiniViewWrapper)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FreeformMiniViewWrapper and conformance FreeformMiniViewWrapper);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FreeformMiniViewWrapper and conformance FreeformMiniViewWrapper;
  if (!lazy protocol witness table cache variable for type FreeformMiniViewWrapper and conformance FreeformMiniViewWrapper)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FreeformMiniViewWrapper and conformance FreeformMiniViewWrapper);
  }

  return result;
}

Swift::Float __swiftcall RampAnimation.update(time:)(Swift::Double time)
{
  *(v1 + 64) = time;
  v3 = *(v1 + 48);
  v2.n128_u64[0] = 0;
  v4 = 0.0;
  if (v3 <= time)
  {
    v5 = *(v1 + 56);
    v4 = 1.0;
    if (v5 >= time)
    {
      v4 = (time - v3) / (v5 - v3);
    }
  }

  v6 = *(v1 + 72);
  v7 = (1.0 - v4) * v6;
  v8 = v6 + (v4 * (1.0 - v6));
  if (*(v1 + 24))
  {
    v8 = v7;
  }

  if (v8 <= 0.0)
  {
    v8 = 0.0;
  }

  if (v8 <= 1.0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1.0;
  }

  v10 = *(v1 + 32);
  if (v10)
  {
    v10(v9, v2);
  }

  return v9;
}

uint64_t RampAnimation.__deallocating_deinit()
{
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed ObjectCaptureSession.Frame.Feedback, @in_guaranteed ARCamera.TrackingState) -> ())?(*(v0 + 32), *(v0 + 40));

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type RampAnimation.AnimType and conformance RampAnimation.AnimType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type RampAnimation.AnimType and conformance RampAnimation.AnimType;
  if (!lazy protocol witness table cache variable for type RampAnimation.AnimType and conformance RampAnimation.AnimType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RampAnimation.AnimType and conformance RampAnimation.AnimType);
  }

  return result;
}

double AnimatedTargetTransformProvider.updateAnimation()()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  result = *(v0 + 24);
  if (v2 <= result && result < v1)
  {
    v5 = 1.0;
    if (result > v1 || (v5 = (result - v2) / (v1 - v2), v6 = 0.0, v5 > 0.0) && (v6 = 1.0, v5 <= 1.0))
    {
      v6 = v5;
    }

    v7 = (v6 * v6) / ((((v6 * v6) - v5) + ((v6 * v6) - v5)) + 1.0);
    v17 = vmlaq_n_f32(*(v0 + 128), vsubq_f32(*(v0 + 176), *(v0 + 128)), v7);
    v18 = vmlaq_n_f32(*(v0 + 96), vsubq_f32(*(v0 + 144), *(v0 + 96)), v7);
    simd_slerp(*(v0 + 112), *(v0 + 160), v7);
    v16 = v8;
    static simd_quatf.identity.getter();
    *(v0 + 48) = v18;
    *(v0 + 64) = v16;
    *(v0 + 80) = v17;
    v2 = *(v0 + 32);
    v1 = *(v0 + 40);
    result = *(v0 + 24);
  }

  v9 = v2 <= result && result < v1;
  if (!v9 && (*(v0 + 264) & 1) == 0)
  {
    v10 = *(v0 + 256);
    v12 = *(v0 + 224);
    v11 = *(v0 + 240);
    v13 = *(v0 + 208);
    v14 = *(v0 + 64);
    v15 = *(v0 + 80);
    *(v0 + 96) = *(v0 + 48);
    *(v0 + 112) = v14;
    *(v0 + 128) = v15;
    *(v0 + 144) = v13;
    *(v0 + 160) = v12;
    *(v0 + 176) = v11;
    if (v10 <= result + 0.2)
    {
      v10 = result + 0.2;
    }

    *(v0 + 32) = result;
    *(v0 + 40) = v10;
    result = 0.0;
    *(v0 + 208) = 0u;
    *(v0 + 224) = 0u;
    *(v0 + 240) = 0u;
    *(v0 + 256) = 0;
    *(v0 + 264) = 1;
  }

  return result;
}

__n128 __swift_memcpy56_16(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AnimatedTargetTransformProvider.Target(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 56))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AnimatedTargetTransformProvider.Target(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 56) = v3;
  return result;
}

void simd_slerp(float32x4_t a1, float32x4_t a2, float a3)
{
  v3 = vmulq_f32(a1, a2);
  v4 = vextq_s8(v3, v3, 8uLL);
  *v3.f32 = vadd_f32(*v3.f32, *v4.f32);
  v3.f32[0] = vaddv_f32(*v3.f32);
  v4.i64[0] = 0;
  _simd_slerp_internal(a1, vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v3, v4)), 0), vnegq_f32(a2), a2), a3);
}

void _simd_slerp_internal(float32x4_t a1, float32x4_t a2, float a3)
{
  v5 = 1.0 - a3;
  v6 = vsubq_f32(a1, a2);
  v7 = vmulq_f32(v6, v6);
  v8 = vaddq_f32(a1, a2);
  v9 = vmulq_f32(v8, v8);
  v10 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v7.i8, *&vextq_s8(v7, v7, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v9.i8, *&vextq_s8(v9, v9, 8uLL)))));
  v11 = v10 + v10;
  if ((v10 + v10) != 0.0)
  {
    sinf(v11);
  }

  if ((v5 * v11) != 0.0)
  {
    sinf(v5 * v11);
  }

  v12 = v11 * a3;
  if (v12 != 0.0)
  {
    sinf(v12);
  }
}

uint64_t AppleDepthHelper.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t FrameCache.CacheEntry.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t FrameCache.push(arFrame:textureYCbCr:textureDepth:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 24);
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = v4;
  v10 = swift_allocObject();
  *(v10 + 16) = partial apply for closure #1 in FrameCache.push(arFrame:textureYCbCr:textureDepth:);
  *(v10 + 24) = v9;
  v14[4] = partial apply for thunk for @callee_guaranteed () -> ();
  v14[5] = v10;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = thunk for @escaping @callee_guaranteed () -> ();
  v14[3] = &block_descriptor_1;
  v11 = _Block_copy(v14);
  swift_unknownObjectRetain();

  v12 = a1;
  swift_unknownObjectRetain();

  dispatch_sync(v8, v11);
  _Block_release(v11);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in FrameCache.push(arFrame:textureYCbCr:textureDepth:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FrameCache.CacheEntry();
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  swift_beginAccess();
  swift_unknownObjectRetain();

  v9 = a1;
  v10 = swift_unknownObjectRetain();
  MEMORY[0x23EEAF620](v10);
  if (*((*(a4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
}

uint64_t closure #1 in FrameCache.pop(arFrame:textureYCbCr:textureDepth:)@<X0>(void **a2@<X1>, uint64_t *a3@<X2>, unint64_t a4@<X3>, char *a5@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    v16 = 0;
LABEL_26:
    *a5 = v16;
    return result;
  }

  v10 = result;
  swift_beginAccess();
  v11 = *(v10 + 16);
  if (!(v11 >> 62))
  {
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  if (!__CocoaSet.count.getter())
  {
LABEL_15:

    v16 = 0;
    goto LABEL_26;
  }

LABEL_4:
  if ((v11 & 0xC000000000000001) != 0)
  {

    v12 = MEMORY[0x23EEAFC40](0, v11);
  }

  else
  {
    if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v12 = *(v11 + 32);
  }

  v13 = v12[2];
  v14 = *a2;
  *a2 = v13;
  v15 = v13;

  *a3 = v12[3];
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *a4 = v12[4];
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  result = swift_beginAccess();
  a4 = *(v10 + 16);
  a2 = (a4 >> 62);
  if (!(a4 >> 62))
  {
    if (*((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_9;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  result = __CocoaSet.count.getter();
  if (result)
  {
    result = __CocoaSet.count.getter();
    if (result)
    {
LABEL_9:
      if ((a4 & 0xC000000000000001) == 0)
      {
        if (!*((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

        if (!a2)
        {
          goto LABEL_12;
        }

        goto LABEL_23;
      }

LABEL_22:
      MEMORY[0x23EEAFC40](0, a4);
      if (!a2)
      {
LABEL_12:
        result = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_24;
      }

LABEL_23:
      result = __CocoaSet.count.getter();
LABEL_24:
      if (result)
      {
        v16 = 1;
        specialized Array.replaceSubrange<A>(_:with:)(0, 1);
        swift_endAccess();

        goto LABEL_26;
      }

      goto LABEL_28;
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t FrameCache.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t FrameCache.init()()
{
  v8[0] = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v8[0] - 8);
  MEMORY[0x28223BE20](v8[0]);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v4);
  v5 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = MEMORY[0x277D84F90];
  *(v0 + 16) = MEMORY[0x277D84F90];
  type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.unspecified.getter();
  v8[1] = v6;
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, *MEMORY[0x277D85260], v8[0]);
  *(v0 + 24) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  return v0;
}

id ARFrame.depthMap.getter()
{
  v1 = [v0 sceneDepth];
  if (v1)
  {

    result = [v0 sceneDepth];
    if (!result)
    {
      return result;
    }

LABEL_6:
    v3 = result;
    v4 = [result depthMap];

    return v4;
  }

  result = [v0 smoothedSceneDepth];
  if (result)
  {

    result = [v0 smoothedSceneDepth];
    if (result)
    {
      goto LABEL_6;
    }
  }

  return result;
}

id ARFrameProcessor.computeTexture(from:planeIndex:format:)(__CVBuffer *a1, size_t a2, MTLPixelFormat a3)
{
  textureOut[4] = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  v7 = *(v3 + 112);
  if (v7)
  {
    v8 = v7;
    WidthOfPlane = CVPixelBufferGetWidthOfPlane(a1, a2);
    HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, a2);
    textureOut[0] = 0;
    TextureFromImage = CVMetalTextureCacheCreateTextureFromImage(0, v8, a1, 0, a3, WidthOfPlane, HeightOfPlane, a2, textureOut);
    v12 = textureOut[0];
    if (TextureFromImage)
    {
      textureOut[0] = 0;

      v12 = textureOut[0];
    }

    if (v12)
    {
      v13 = v12;
      v14 = CVMetalTextureGetTexture(v13);

      return v14;
    }
  }

  return 0;
}

id ARFrameProcessor.computeYCbCrTexture(from:)(__CVBuffer *a1)
{
  IOSurface = CVPixelBufferGetIOSurface(a1);
  if (IOSurface)
  {
    v4 = *(v1 + 120);
    v5 = IOSurface;
    if (v4 == 1)
    {
      IOSurfaceGetYCbCrMatrix();
      v6 = v1;
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      __swift_project_value_buffer(v7, logger);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 67109120;
        swift_beginAccess();
        *(v10 + 4) = 0;
        _os_log_impl(&dword_23B824000, v8, v9, "Unsupported color matrix: %u", v10, 8u);
        MEMORY[0x23EEB0B70](v10, -1, -1);
      }

      *(v6 + 120) = 0;
    }

    v11 = ARFrameProcessor.computeTexture(from:planeIndex:format:)(a1, 0, 0x208uLL);
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, logger);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_23B824000, v13, v14, "Cannot get ioSurface from Color Buffer!", v15, 2u);
      MEMORY[0x23EEB0B70](v15, -1, -1);
    }

    return 0;
  }

  return v11;
}

id *ARFrameProcessor.deinit()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t ARFrameProcessor.__deallocating_deinit()
{
  ARFrameProcessor.deinit();

  return swift_deallocClassInstance();
}

uint64_t specialized ARFrameProcessor.init(device:)(void *a1)
{
  type metadata accessor for FrameCache();
  swift_allocObject();
  *(v1 + 16) = FrameCache.init()();
  *(v1 + 24) = 998445679;
  *(v1 + 32) = 5;
  *(v1 + 56) = 0;
  *(v1 + 112) = 0;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 120) = 1;
  *(v1 + 128) = 0x400E000000000000;
  *(v1 + 96) = 0;
  *(v1 + 104) = a1;
  swift_beginAccess();
  swift_unknownObjectRetain();
  CVMetalTextureCacheCreate(0, 0, a1, 0, (v1 + 112));
  swift_endAccess();
  v3 = [objc_allocWithZone(MEMORY[0x277CD7528]) initWithDevice:a1 kernelDiameter:5];
  *(v1 + 40) = v3;
  LODWORD(v4) = 998445679;
  [v3 setEpsilon_];
  *(v1 + 48) = [objc_allocWithZone(MEMORY[0x277CD74E0]) initWithDevice_];
  return v1;
}

unint64_t lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes()
{
  result = lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes;
  if (!lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A];
  if (!lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A]);
  }

  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for Model3DLocation(uint64_t a1)
{
  result = type metadata singleton initialization cache for Model3DLocation;
  if (!type metadata singleton initialization cache for Model3DLocation)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for Model3DLocation(uint64_t a1)
{
  type metadata accessor for (named: String, bundle: NSBundle?)(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for URL();
    if (v2 <= 0x3F)
    {
      type metadata accessor for AssetDescriptorRef();
      if (v3 <= 0x3F)
      {
        type metadata accessor for (Entity.ConfigurationCatalog, configurations: [String : String]?)(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for Entity();
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata accessor for (named: String, bundle: NSBundle?)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (named: String, bundle: NSBundle?))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo8NSBundleCSgMd, &_sSo8NSBundleCSgMR);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (named: String, bundle: NSBundle?));
    }
  }
}

void Model3DLocation.hash(into:)(uint64_t a1)
{
  v62 = a1;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_10RealityKit6EntityC0B10FoundationE20ConfigurationCatalogV0F3SetV5valuetMd, &_sSS3key_10RealityKit6EntityC0B10FoundationE20ConfigurationCatalogV0F3SetV5valuetMR);
  v2 = MEMORY[0x28223BE20](v69);
  v68 = (&v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v2);
  v67 = &v57 - v4;
  v5 = type metadata accessor for Entity.ConfigurationCatalog();
  v60 = *(v5 - 8);
  v61 = v5;
  MEMORY[0x28223BE20](v5);
  v59 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AssetDescriptorRef();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Model3DLocation(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Model3DLocation(v1, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        (*(v12 + 32))(v14, v17, v11);
        MEMORY[0x23EEAFE40](2);
        lazy protocol witness table accessor for type Model3DLocation and conformance Model3DLocation(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
        dispatch thunk of Hashable.hash(into:)();
        (*(v12 + 8))(v14, v11);
      }

      else
      {
        (*(v8 + 32))(v10, v17, v7);
        MEMORY[0x23EEAFE40](3);
        MEMORY[0x23EEADA50](&v74, MEMORY[0x277D841D8], MEMORY[0x277D841D8]);
        MEMORY[0x23EEAFE40](v74);
        (*(v8 + 8))(v10, v7);
      }
    }

    else
    {
      v22 = *(v17 + 2);
      MEMORY[0x23EEAFE40](1);
      String.hash(into:)();

      if (v22)
      {
        Hasher._combine(_:)(1u);
        v23 = v22;
        NSObject.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }
    }
  }

  else if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      MEMORY[0x23EEAFE40](6);
      dispatch thunk of Entity.name.getter();
      String.hash(into:)();

      v21 = Entity.id.getter();
      MEMORY[0x23EEAFE60](v21);
    }

    else
    {
      MEMORY[0x23EEAFE40](0);
    }
  }

  else
  {
    v19 = v62;
    if (EnumCaseMultiPayload == 3)
    {
      v20 = *(v17 + 2);
      MEMORY[0x23EEAFE40](4);
      if (v20)
      {
        v74 = v20;
        Hasher._combine(_:)(1u);
        type metadata accessor for Entity();
        lazy protocol witness table accessor for type Model3DLocation and conformance Model3DLocation(&lazy protocol witness table cache variable for type Entity and conformance Entity, MEMORY[0x277CDB1C8], MEMORY[0x277CDB1D0]);

        dispatch thunk of Hashable.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }
    }

    else
    {
      v57 = *&v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV_SDyS2SGSg14configurationstMd, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV_SDyS2SGSg14configurationstMR) + 48)];
      (*(v60 + 32))(v59, v17, v61);
      MEMORY[0x23EEAFE40](5);
      v24 = Entity.ConfigurationCatalog.configurationSets.getter();
      v25 = *(v24 + 16);
      if (v25)
      {
        v74 = MEMORY[0x277D84F90];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v25, 0);
        v26 = v74;
        v27 = v24 + 64;
        v28 = _HashTable.startBucket.getter();
        v29 = 0;
        v30 = *(v24 + 36);
        v58 = v24 + 72;
        v63 = v25;
        v64 = v30;
        v65 = v24 + 64;
        v66 = v24;
        while ((v28 & 0x8000000000000000) == 0 && v28 < 1 << *(v24 + 32))
        {
          if ((*(v27 + 8 * (v28 >> 6)) & (1 << v28)) == 0)
          {
            goto LABEL_47;
          }

          if (v30 != *(v24 + 36))
          {
            goto LABEL_48;
          }

          v71 = v28 >> 6;
          v72 = 1 << v28;
          v70 = v29;
          v32 = v69;
          v33 = *(v69 + 48);
          v34 = *(v24 + 56);
          v35 = (*(v24 + 48) + 16 * v28);
          v37 = *v35;
          v36 = v35[1];
          v38 = type metadata accessor for Entity.ConfigurationCatalog.ConfigurationSet();
          v39 = *(v38 - 8);
          v40 = v26;
          v41 = v67;
          (*(v39 + 16))(&v67[v33], v34 + *(v39 + 72) * v28, v38);
          v42 = v68;
          v73 = v37;
          *v68 = v37;
          *(v42 + 8) = v36;
          v43 = &v41[v33];
          v26 = v40;
          (*(v39 + 32))(v42 + *(v32 + 48), v43, v38);
          swift_bridgeObjectRetain_n();
          outlined destroy of PerspectiveCameraComponent?(v42, &_sSS3key_10RealityKit6EntityC0B10FoundationE20ConfigurationCatalogV0F3SetV5valuetMd, &_sSS3key_10RealityKit6EntityC0B10FoundationE20ConfigurationCatalogV0F3SetV5valuetMR);
          v74 = v40;
          v45 = *(v40 + 16);
          v44 = *(v40 + 24);
          if (v45 >= v44 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1);
            v26 = v74;
          }

          *(v26 + 16) = v45 + 1;
          v46 = v26 + 16 * v45;
          *(v46 + 32) = v73;
          *(v46 + 40) = v36;
          v24 = v66;
          v31 = 1 << *(v66 + 32);
          if (v28 >= v31)
          {
            goto LABEL_49;
          }

          v27 = v65;
          v47 = *(v65 + 8 * v71);
          if ((v47 & v72) == 0)
          {
            goto LABEL_50;
          }

          LODWORD(v30) = v64;
          if (v64 != *(v66 + 36))
          {
            goto LABEL_51;
          }

          v48 = v47 & (-2 << (v28 & 0x3F));
          if (v48)
          {
            v31 = __clz(__rbit64(v48)) | v28 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v49 = v71 << 6;
            v50 = v71 + 1;
            v51 = (v58 + 8 * v71);
            while (v50 < (v31 + 63) >> 6)
            {
              v53 = *v51++;
              v52 = v53;
              v49 += 64;
              ++v50;
              if (v53)
              {
                outlined consume of [String : Entity.ConfigurationCatalog.ConfigurationSet].Index._Variant(v28, v64, 0);
                v31 = __clz(__rbit64(v52)) + v49;
                goto LABEL_17;
              }
            }

            outlined consume of [String : Entity.ConfigurationCatalog.ConfigurationSet].Index._Variant(v28, v64, 0);
          }

LABEL_17:
          v29 = v70 + 1;
          v28 = v31;
          if (v70 + 1 == v63)
          {

            v19 = v62;
            goto LABEL_39;
          }
        }

        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      else
      {

        v26 = MEMORY[0x277D84F90];
LABEL_39:
        MEMORY[0x23EEAFE40](*(v26 + 16));
        v54 = *(v26 + 16);
        if (v54)
        {
          v55 = v26 + 40;
          do
          {

            String.hash(into:)();

            v55 += 16;
            --v54;
          }

          while (v54);
        }

        v56 = v57;
        if (v57)
        {
          Hasher._combine(_:)(1u);
          specialized Dictionary<>.hash(into:)(v19, v56);
        }

        else
        {
          Hasher._combine(_:)(0);
        }

        (*(v60 + 8))(v59, v61);
      }
    }
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Model3DLocation()
{
  Hasher.init(_seed:)();
  Model3DLocation.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Model3DLocation(uint64_t a1)
{
  Hasher.init(_seed:)();
  Model3DLocation.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SSTt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

void specialized Dictionary<>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      MEMORY[0x23EEAFE40](v7);
      return;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      do
      {
LABEL_9:
        v5 &= v5 - 1;

        String.hash(into:)();

        String.hash(into:)();

        v7 ^= Hasher._finalize()();
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
}

uint64_t specialized static Model3DLocation.== infix(_:_:)(char *a1, uint64_t a2)
{
  v91 = a1;
  v3 = type metadata accessor for Entity.ConfigurationCatalog();
  v84 = *(v3 - 8);
  v85 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v82 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v83 = &v80 - v6;
  v7 = type metadata accessor for AssetDescriptorRef();
  v89 = *(v7 - 8);
  v90 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v81 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v80 = &v80 - v10;
  v11 = type metadata accessor for URL();
  v87 = *(v11 - 8);
  v88 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v80 - v15;
  v17 = type metadata accessor for Model3DLocation(0);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v86 = &v80 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v80 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v80 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = (&v80 - v29);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI15Model3DLocationO_ACtMd, &_s19_RealityKit_SwiftUI15Model3DLocationO_ACtMR);
  v32 = MEMORY[0x28223BE20](v31 - 8);
  v34 = &v80 - v33;
  v35 = &v80 + *(v32 + 56) - v33;
  outlined init with copy of Model3DLocation(v91, &v80 - v33);
  v36 = a2;
  v37 = v35;
  outlined init with copy of Model3DLocation(v36, v35);
  v38 = v34;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v86 = v16;
    v91 = v14;
    v53 = v87;
    v52 = v88;
    v55 = v89;
    v54 = v90;
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        outlined init with copy of Model3DLocation(v38, v28);
        v56 = v37;
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v57 = v53;
          v58 = *(v53 + 32);
          v59 = v86;
          v60 = v52;
          v58(v86, v28, v52);
          v61 = v91;
          v58(v91, v56, v60);
          v50 = static URL.== infix(_:_:)();
          v62 = *(v57 + 8);
          v62(v61, v60);
          v62(v59, v60);
          goto LABEL_43;
        }

        (*(v53 + 8))(v28, v52);
      }

      else
      {
        outlined init with copy of Model3DLocation(v38, v25);
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          v68 = *(v55 + 32);
          v69 = v80;
          v68(v80, v25, v54);
          v70 = v81;
          v68(v81, v37, v54);
          v71 = MEMORY[0x277D841D8];
          MEMORY[0x23EEADA50](&v93, MEMORY[0x277D841D8], MEMORY[0x277D841D8]);
          v72 = v93;
          MEMORY[0x23EEADA50](&v92, v71, v71);
          v73 = *(v55 + 8);
          v73(v70, v54);
          v73(v69, v54);
          v50 = v72 == v92;
          goto LABEL_43;
        }

        (*(v55 + 8))(v25, v54);
      }

      goto LABEL_26;
    }

    outlined init with copy of Model3DLocation(v38, v30);
    v66 = *v30;
    v65 = v30[1];
    v67 = v30[2];
    if (swift_getEnumCaseMultiPayload())
    {

      goto LABEL_26;
    }

    v74 = *(v37 + 2);
    if (v66 == *v37 && v65 == *(v37 + 1))
    {
    }

    else
    {
      v76 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v76 & 1) == 0)
      {

LABEL_39:
        v50 = 0;
        goto LABEL_42;
      }
    }

    if (v67)
    {
      if (!v74)
      {
        goto LABEL_39;
      }

      type metadata accessor for NSBundle();
      v67 = v67;
      v50 = static NSObject.== infix(_:_:)();
    }

    else
    {
      if (!v74)
      {
        goto LABEL_47;
      }

      v50 = 0;
      v67 = v74;
    }

LABEL_42:

    goto LABEL_43;
  }

  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload != 3)
    {
      v40 = v86;
      outlined init with copy of Model3DLocation(v34, v86);
      v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV_SDyS2SGSg14configurationstMd, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV_SDyS2SGSg14configurationstMR) + 48);
      v42 = *(v40 + v41);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v43 = *&v37[v41];
        v45 = v83;
        v44 = v84;
        v46 = *(v84 + 32);
        v47 = v40;
        v48 = v85;
        v46(v83, v47, v85);
        v49 = v82;
        v46(v82, v37, v48);
        if ((static Entity.ConfigurationCatalog.== infix(_:_:)() & 1) == 0)
        {

          goto LABEL_34;
        }

        if (v42)
        {
          if (v43)
          {

            v50 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SSTt1g5(v42, v43);

            swift_bridgeObjectRelease_n();
            v51 = *(v44 + 8);
            v51(v49, v48);
            v51(v45, v48);
LABEL_43:
            outlined destroy of Model3DLocation(v38);
            return v50 & 1;
          }

LABEL_34:

          v77 = *(v44 + 8);
          v77(v49, v48);
          v77(v45, v48);
          v50 = 0;
          goto LABEL_43;
        }

        v79 = *(v44 + 8);
        v79(v49, v48);
        v79(v45, v48);
        if (v43)
        {

          v50 = 0;
          goto LABEL_43;
        }

LABEL_47:
        v50 = 1;
        goto LABEL_43;
      }

      (*(v84 + 8))(v40, v85);
    }

    goto LABEL_26;
  }

  if (EnumCaseMultiPayload == 5)
  {
    outlined init with copy of Model3DLocation(v34, v20);
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      v63 = Entity.id.getter();
      v64 = Entity.id.getter();

      v50 = v63 == v64;
      goto LABEL_43;
    }

    goto LABEL_26;
  }

  if (swift_getEnumCaseMultiPayload() != 6)
  {
LABEL_26:
    outlined destroy of PerspectiveCameraComponent?(v38, &_s19_RealityKit_SwiftUI15Model3DLocationO_ACtMd, &_s19_RealityKit_SwiftUI15Model3DLocationO_ACtMR);
    v50 = 0;
    return v50 & 1;
  }

  outlined destroy of Model3DLocation(v34);
  v50 = 1;
  return v50 & 1;
}

uint64_t outlined init with copy of Model3DLocation(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Model3DLocation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Model3DLocation(uint64_t a1)
{
  v2 = type metadata accessor for Model3DLocation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t type metadata accessor for NSBundle()
{
  result = lazy cache variable for type metadata for NSBundle;
  if (!lazy cache variable for type metadata for NSBundle)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSBundle);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Model3DLocation and conformance Model3DLocation(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double specialized static MiniViewHelpers.getMiniViewRotation(deviceOrientation:interfaceOrientation:)(unint64_t a1, uint64_t a2)
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, logger);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315394;
    type metadata accessor for UIDeviceOrientation(0);
    v9 = String.init<A>(describing:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v18);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    type metadata accessor for UIInterfaceOrientation(0);
    v12 = String.init<A>(describing:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v18);

    *(v7 + 14) = v14;
    _os_log_impl(&dword_23B824000, v5, v6, "getMiniViewRotation: Device orientation: %s  interfaceOrientation: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEB0B70](v8, -1, -1);
    MEMORY[0x23EEB0B70](v7, -1, -1);
  }

  result = 0.0;
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      if (a1 >= 7)
      {
        return result;
      }

      v16 = &unk_23B91CF18;
      goto LABEL_18;
    }

    if (a2 == 4 && a1 < 7)
    {
      v16 = &unk_23B91CEE0;
      goto LABEL_18;
    }
  }

  else
  {
    if (a2 == 1)
    {
      if (a1 - 2 >= 3)
      {
        return result;
      }

      v17 = &unk_23B91CE90 + 8 * a1 - 16;
      return *v17;
    }

    if (a2 == 2 && a1 < 7)
    {
      v16 = &unk_23B91CEA8;
LABEL_18:
      v17 = &v16[8 * a1];
      return *v17;
    }
  }

  return result;
}

double specialized static MiniViewHelpers.computeLookAt(cameraWorld:objectWorld:objectExtents:)(float32x4_t a1, float32x4_t a2, float32x2_t a3)
{
  v3 = vsubq_f32(a2, a1);
  v4 = vmulq_f32(v3, v3);
  *&v5 = v4.f32[2] + vaddv_f32(*v4.f32);
  *v4.f32 = vrsqrte_f32(v5);
  *v4.f32 = vmul_f32(*v4.f32, vrsqrts_f32(v5, vmul_f32(*v4.f32, *v4.f32)));
  v18 = vmulq_n_f32(v3, vmul_f32(*v4.f32, vrsqrts_f32(v5, vmul_f32(*v4.f32, *v4.f32))).f32[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23B91A6D0;
  *(inited + 32) = v18.u32[0];
  *(inited + 40) = v18.i32[2];
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(inited);
  v16 = v7;
  v8 = swift_setDeallocating();
  specialized static MathHelpers.angleBetween(_:_:)(v18, v16, v8, v9, v10);
  v12 = v11 / 1.3963;
  v13 = 0.0;
  if (v12 > 0.0)
  {
    v13 = 1.0;
    if (v12 <= 1.0)
    {
      v13 = v12;
    }
  }

  v19 = vmuls_lane_f32(0.25, a3, 1) * (1.0 - v13);
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of static MiniViewHelpers.computeLookAt(cameraWorld:objectWorld:objectExtents:));
  *&result = vsubq_f32(a2, vmulq_n_f32(v14, v19)).u64[0];
  return result;
}

uint64_t protocol witness for View.body.getter in conformance ARKitCoachingView@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for DataModel(0);
  lazy protocol witness table accessor for type DataModel and conformance DataModel();

  result = ObservedObject.init(wrappedValue:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type DataModel and conformance DataModel()
{
  result = lazy protocol witness table cache variable for type DataModel and conformance DataModel;
  if (!lazy protocol witness table cache variable for type DataModel and conformance DataModel)
  {
    type metadata accessor for DataModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DataModel and conformance DataModel);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ARKitCoachingView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ARKitCoachingView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ARCoachingOverlayViewWrapper and conformance ARCoachingOverlayViewWrapper(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type ARCoachingOverlayViewWrapper and conformance ARCoachingOverlayViewWrapper;
  if (!lazy protocol witness table cache variable for type ARCoachingOverlayViewWrapper and conformance ARCoachingOverlayViewWrapper)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARCoachingOverlayViewWrapper and conformance ARCoachingOverlayViewWrapper);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARCoachingOverlayViewWrapper and conformance ARCoachingOverlayViewWrapper;
  if (!lazy protocol witness table cache variable for type ARCoachingOverlayViewWrapper and conformance ARCoachingOverlayViewWrapper)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARCoachingOverlayViewWrapper and conformance ARCoachingOverlayViewWrapper);
  }

  return result;
}

id protocol witness for UIViewRepresentable.makeUIView(context:) in conformance ARCoachingOverlayViewWrapper()
{
  result = *(*(v0 + 8) + 24);
  if (result)
  {
    return result;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ARCoachingOverlayViewWrapper(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ARCoachingOverlayViewWrapper and conformance ARCoachingOverlayViewWrapper(a1, a2, a3);

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ARCoachingOverlayViewWrapper(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ARCoachingOverlayViewWrapper and conformance ARCoachingOverlayViewWrapper(a1, a2, a3);

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance ARCoachingOverlayViewWrapper(uint64_t a1, uint64_t a2, uint64_t a3)
{
  lazy protocol witness table accessor for type ARCoachingOverlayViewWrapper and conformance ARCoachingOverlayViewWrapper(a1, a2, a3);
  UIViewRepresentable.body.getter();
  __break(1u);
}

void one-time initialization function for pipWindowWidthPercent()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  v2 = 0.95;
  if (v1 == 1)
  {
    v2 = 0.7;
  }

  pipWindowWidthPercent = *&v2;
}

uint64_t closure #1 in ARObjectCapturingView.body.getter@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = static Alignment.center.getter();
  v8 = v7;
  closure #1 in closure #1 in ARObjectCapturingView.body.getter(a2, a1, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v43, __src, sizeof(v43));
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(__dst, v41, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEy012_RealityKit_aB0015ObjectSelectionD0VAA23_SafeAreaIgnoringLayoutVGAA25_AllowsHitTestingModifierVGAF05ShakeR0VGAA013_TraitWritingR0VyAA010TransitionT3KeyVGGSg_AEyAEyAF013ReticleCenterD033_EA5701D4B6F676E94D8ABFCFB3B0751BLLVAVGAA06_FrameN0VGSgAEyAF013StackableMiniD0VyAEyAF022CoveragePointCloudMiniD0VAA08_OverlayR0VyAA017StrokeBorderShapeD0VyAA6CircleVAA5ColorVAA05EmptyD0VGSgGGGAVGSgAEyAEyAF013ARKitCoachingD0VAJGA2_GSgtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEy012_RealityKit_aB0015ObjectSelectionD0VAA23_SafeAreaIgnoringLayoutVGAA25_AllowsHitTestingModifierVGAF05ShakeR0VGAA013_TraitWritingR0VyAA010TransitionT3KeyVGGSg_AEyAEyAF013ReticleCenterD033_EA5701D4B6F676E94D8ABFCFB3B0751BLLVAVGAA06_FrameN0VGSgAEyAF013StackableMiniD0VyAEyAF022CoveragePointCloudMiniD0VAA08_OverlayR0VyAA017StrokeBorderShapeD0VyAA6CircleVAA5ColorVAA05EmptyD0VGSgGGGAVGSgAEyAEyAF013ARKitCoachingD0VAJGA2_GSgtGMR);
  outlined destroy of PerspectiveCameraComponent?(v43, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEy012_RealityKit_aB0015ObjectSelectionD0VAA23_SafeAreaIgnoringLayoutVGAA25_AllowsHitTestingModifierVGAF05ShakeR0VGAA013_TraitWritingR0VyAA010TransitionT3KeyVGGSg_AEyAEyAF013ReticleCenterD033_EA5701D4B6F676E94D8ABFCFB3B0751BLLVAVGAA06_FrameN0VGSgAEyAF013StackableMiniD0VyAEyAF022CoveragePointCloudMiniD0VAA08_OverlayR0VyAA017StrokeBorderShapeD0VyAA6CircleVAA5ColorVAA05EmptyD0VGSgGGGAVGSgAEyAEyAF013ARKitCoachingD0VAJGA2_GSgtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEy012_RealityKit_aB0015ObjectSelectionD0VAA23_SafeAreaIgnoringLayoutVGAA25_AllowsHitTestingModifierVGAF05ShakeR0VGAA013_TraitWritingR0VyAA010TransitionT3KeyVGGSg_AEyAEyAF013ReticleCenterD033_EA5701D4B6F676E94D8ABFCFB3B0751BLLVAVGAA06_FrameN0VGSgAEyAF013StackableMiniD0VyAEyAF022CoveragePointCloudMiniD0VAA08_OverlayR0VyAA017StrokeBorderShapeD0VyAA6CircleVAA5ColorVAA05EmptyD0VGSgGGGAVGSgAEyAEyAF013ARKitCoachingD0VAJGA2_GSgtGMR);
  memcpy(__src, __dst, sizeof(__src));
  v9 = static Edge.Set.all.getter();
  swift_beginAccess();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16SubscriptionViewVy7Combine9PublishedV9PublisherVy012_RealityKit_aB09DataModelC5StateO_GAA15ModifiedContentVyAA6ZStackVyAA05TupleD0VyAPyAPyAPyAPyAI015ObjectSelectionD0VAA23_SafeAreaIgnoringLayoutVGAA25_AllowsHitTestingModifierVGAI05ShakeZ0VGAA013_TraitWritingZ0VyAA18TransitionTraitKeyVGGSg_APyAPyAI013ReticleCenterD033_EA5701D4B6F676E94D8ABFCFB3B0751BLLVA8_GAA06_FrameV0VGSgAPyAI013StackableMiniD0VyAPyAI022CoveragePointCloudMiniD0VAA08_OverlayZ0VyAA017StrokeBorderShapeD0VyAA6CircleVAA5ColorVAA05EmptyD0VGSgGGGA8_GSgAPyAPyAI013ARKitCoachingD0VAXGA16_GSgtGGAXGGMd, &_s7SwiftUI16SubscriptionViewVy7Combine9PublishedV9PublisherVy012_RealityKit_aB09DataModelC5StateO_GAA15ModifiedContentVyAA6ZStackVyAA05TupleD0VyAPyAPyAPyAPyAI015ObjectSelectionD0VAA23_SafeAreaIgnoringLayoutVGAA25_AllowsHitTestingModifierVGAI05ShakeZ0VGAA013_TraitWritingZ0VyAA18TransitionTraitKeyVGGSg_APyAPyAI013ReticleCenterD033_EA5701D4B6F676E94D8ABFCFB3B0751BLLVA8_GAA06_FrameV0VGSgAPyAI013StackableMiniD0VyAPyAI022CoveragePointCloudMiniD0VAA08_OverlayZ0VyAA017StrokeBorderShapeD0VyAA6CircleVAA5ColorVAA05EmptyD0VGSgGGGA8_GSgAPyAPyAI013ARKitCoachingD0VAXGA16_GSgtGGAXGGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy19_RealityKit_SwiftUI9DataModelC5StateOGMd, &_s7Combine9PublishedVy19_RealityKit_SwiftUI9DataModelC5StateOGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  v11 = swift_allocObject();
  v12 = a2[5];
  *(v11 + 5) = a2[4];
  *(v11 + 6) = v12;
  *(v11 + 7) = a2[6];
  v13 = a2[1];
  *(v11 + 1) = *a2;
  *(v11 + 2) = v13;
  v14 = a2[3];
  *(v11 + 3) = a2[2];
  *(v11 + 4) = v14;
  *a3 = v6;
  *(a3 + 8) = v8;
  memcpy((a3 + 16), __src, 0x1D8uLL);
  *(a3 + 488) = v9;
  v15 = (a3 + *(v10 + 56));
  *v15 = partial apply for closure #2 in closure #1 in ARObjectCapturingView.body.getter;
  v15[1] = v11;
  swift_beginAccess();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16SubscriptionViewVy7Combine9PublishedV9PublisherVySb_GACyAHy012_RealityKit_aB09DataModelC5StateO_GAA15ModifiedContentVyAA6ZStackVyAA05TupleD0VyAQyAQyAQyAQyAJ015ObjectSelectionD0VAA23_SafeAreaIgnoringLayoutVGAA25_AllowsHitTestingModifierVGAJ05ShakeZ0VGAA013_TraitWritingZ0VyAA18TransitionTraitKeyVGGSg_AQyAQyAJ013ReticleCenterD033_EA5701D4B6F676E94D8ABFCFB3B0751BLLVA9_GAA06_FrameV0VGSgAQyAJ013StackableMiniD0VyAQyAJ022CoveragePointCloudMiniD0VAA08_OverlayZ0VyAA017StrokeBorderShapeD0VyAA6CircleVAA5ColorVAA05EmptyD0VGSgGGGA9_GSgAQyAQyAJ013ARKitCoachingD0VAYGA17_GSgtGGAYGGGMd, &_s7SwiftUI16SubscriptionViewVy7Combine9PublishedV9PublisherVySb_GACyAHy012_RealityKit_aB09DataModelC5StateO_GAA15ModifiedContentVyAA6ZStackVyAA05TupleD0VyAQyAQyAQyAQyAJ015ObjectSelectionD0VAA23_SafeAreaIgnoringLayoutVGAA25_AllowsHitTestingModifierVGAJ05ShakeZ0VGAA013_TraitWritingZ0VyAA18TransitionTraitKeyVGGSg_AQyAQyAJ013ReticleCenterD033_EA5701D4B6F676E94D8ABFCFB3B0751BLLVA9_GAA06_FrameV0VGSgAQyAJ013StackableMiniD0VyAQyAJ022CoveragePointCloudMiniD0VAA08_OverlayZ0VyAA017StrokeBorderShapeD0VyAA6CircleVAA5ColorVAA05EmptyD0VGSgGGGA9_GSgAQyAQyAJ013ARKitCoachingD0VAYGA17_GSgtGGAYGGGMR);
  outlined init with copy of ARObjectCapturingView(a2, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  v17 = swift_allocObject();
  v18 = a2[5];
  *(v17 + 5) = a2[4];
  *(v17 + 6) = v18;
  *(v17 + 7) = a2[6];
  v19 = a2[1];
  *(v17 + 1) = *a2;
  *(v17 + 2) = v19;
  v20 = a2[3];
  *(v17 + 3) = a2[2];
  *(v17 + 4) = v20;
  v21 = (a3 + *(v16 + 56));
  *v21 = partial apply for closure #3 in closure #1 in ARObjectCapturingView.body.getter;
  v21[1] = v17;
  swift_beginAccess();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16SubscriptionViewVy7Combine9PublishedV9PublisherVySb_GACyAiCyAHy012_RealityKit_aB09DataModelC5StateO_GAA15ModifiedContentVyAA6ZStackVyAA05TupleD0VyAQyAQyAQyAQyAJ015ObjectSelectionD0VAA23_SafeAreaIgnoringLayoutVGAA25_AllowsHitTestingModifierVGAJ05ShakeZ0VGAA013_TraitWritingZ0VyAA18TransitionTraitKeyVGGSg_AQyAQyAJ013ReticleCenterD033_EA5701D4B6F676E94D8ABFCFB3B0751BLLVA9_GAA06_FrameV0VGSgAQyAJ013StackableMiniD0VyAQyAJ022CoveragePointCloudMiniD0VAA08_OverlayZ0VyAA017StrokeBorderShapeD0VyAA6CircleVAA5ColorVAA05EmptyD0VGSgGGGA9_GSgAQyAQyAJ013ARKitCoachingD0VAYGA17_GSgtGGAYGGGGMd, &_s7SwiftUI16SubscriptionViewVy7Combine9PublishedV9PublisherVySb_GACyAiCyAHy012_RealityKit_aB09DataModelC5StateO_GAA15ModifiedContentVyAA6ZStackVyAA05TupleD0VyAQyAQyAQyAQyAJ015ObjectSelectionD0VAA23_SafeAreaIgnoringLayoutVGAA25_AllowsHitTestingModifierVGAJ05ShakeZ0VGAA013_TraitWritingZ0VyAA18TransitionTraitKeyVGGSg_AQyAQyAJ013ReticleCenterD033_EA5701D4B6F676E94D8ABFCFB3B0751BLLVA9_GAA06_FrameV0VGSgAQyAJ013StackableMiniD0VyAQyAJ022CoveragePointCloudMiniD0VAA08_OverlayZ0VyAA017StrokeBorderShapeD0VyAA6CircleVAA5ColorVAA05EmptyD0VGSgGGGA9_GSgAQyAQyAJ013ARKitCoachingD0VAYGA17_GSgtGGAYGGGGMR);
  outlined init with copy of ARObjectCapturingView(a2, v41);
  Published.projectedValue.getter();
  swift_endAccess();
  v23 = swift_allocObject();
  v24 = a2[5];
  v23[5] = a2[4];
  v23[6] = v24;
  v23[7] = a2[6];
  v25 = a2[1];
  v23[1] = *a2;
  v23[2] = v25;
  v26 = a2[3];
  v23[3] = a2[2];
  v23[4] = v26;
  v27 = (a3 + *(v22 + 56));
  *v27 = partial apply for closure #4 in closure #1 in ARObjectCapturingView.body.getter;
  v27[1] = v23;
  swift_beginAccess();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16SubscriptionViewVy7Combine9PublishedV9PublisherVySb_GACyAiCyAiCyAHy012_RealityKit_aB09DataModelC5StateO_GAA15ModifiedContentVyAA6ZStackVyAA05TupleD0VyAQyAQyAQyAQyAJ015ObjectSelectionD0VAA23_SafeAreaIgnoringLayoutVGAA25_AllowsHitTestingModifierVGAJ05ShakeZ0VGAA013_TraitWritingZ0VyAA18TransitionTraitKeyVGGSg_AQyAQyAJ013ReticleCenterD033_EA5701D4B6F676E94D8ABFCFB3B0751BLLVA9_GAA06_FrameV0VGSgAQyAJ013StackableMiniD0VyAQyAJ022CoveragePointCloudMiniD0VAA08_OverlayZ0VyAA017StrokeBorderShapeD0VyAA6CircleVAA5ColorVAA05EmptyD0VGSgGGGA9_GSgAQyAQyAJ013ARKitCoachingD0VAYGA17_GSgtGGAYGGGGGMd, &_s7SwiftUI16SubscriptionViewVy7Combine9PublishedV9PublisherVySb_GACyAiCyAiCyAHy012_RealityKit_aB09DataModelC5StateO_GAA15ModifiedContentVyAA6ZStackVyAA05TupleD0VyAQyAQyAQyAQyAJ015ObjectSelectionD0VAA23_SafeAreaIgnoringLayoutVGAA25_AllowsHitTestingModifierVGAJ05ShakeZ0VGAA013_TraitWritingZ0VyAA18TransitionTraitKeyVGGSg_AQyAQyAJ013ReticleCenterD033_EA5701D4B6F676E94D8ABFCFB3B0751BLLVA9_GAA06_FrameV0VGSgAQyAJ013StackableMiniD0VyAQyAJ022CoveragePointCloudMiniD0VAA08_OverlayZ0VyAA017StrokeBorderShapeD0VyAA6CircleVAA5ColorVAA05EmptyD0VGSgGGGA9_GSgAQyAQyAJ013ARKitCoachingD0VAYGA17_GSgtGGAYGGGGGMR);
  outlined init with copy of ARObjectCapturingView(a2, v41);
  Published.projectedValue.getter();
  swift_endAccess();
  v29 = swift_allocObject();
  v30 = a2[5];
  *(v29 + 5) = a2[4];
  *(v29 + 6) = v30;
  *(v29 + 7) = a2[6];
  v31 = a2[1];
  *(v29 + 1) = *a2;
  *(v29 + 2) = v31;
  v32 = a2[3];
  *(v29 + 3) = a2[2];
  *(v29 + 4) = v32;
  v33 = (a3 + *(v28 + 56));
  *v33 = partial apply for closure #5 in closure #1 in ARObjectCapturingView.body.getter;
  v33[1] = v29;
  swift_beginAccess();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16SubscriptionViewVy7Combine9PublishedV9PublisherVySb_GACyAiCyAiCyAiCyAHy012_RealityKit_aB09DataModelC5StateO_GAA15ModifiedContentVyAA6ZStackVyAA05TupleD0VyAQyAQyAQyAQyAJ015ObjectSelectionD0VAA23_SafeAreaIgnoringLayoutVGAA25_AllowsHitTestingModifierVGAJ05ShakeZ0VGAA013_TraitWritingZ0VyAA18TransitionTraitKeyVGGSg_AQyAQyAJ013ReticleCenterD033_EA5701D4B6F676E94D8ABFCFB3B0751BLLVA9_GAA06_FrameV0VGSgAQyAJ013StackableMiniD0VyAQyAJ022CoveragePointCloudMiniD0VAA08_OverlayZ0VyAA017StrokeBorderShapeD0VyAA6CircleVAA5ColorVAA05EmptyD0VGSgGGGA9_GSgAQyAQyAJ013ARKitCoachingD0VAYGA17_GSgtGGAYGGGGGGMd, &_s7SwiftUI16SubscriptionViewVy7Combine9PublishedV9PublisherVySb_GACyAiCyAiCyAiCyAHy012_RealityKit_aB09DataModelC5StateO_GAA15ModifiedContentVyAA6ZStackVyAA05TupleD0VyAQyAQyAQyAQyAJ015ObjectSelectionD0VAA23_SafeAreaIgnoringLayoutVGAA25_AllowsHitTestingModifierVGAJ05ShakeZ0VGAA013_TraitWritingZ0VyAA18TransitionTraitKeyVGGSg_AQyAQyAJ013ReticleCenterD033_EA5701D4B6F676E94D8ABFCFB3B0751BLLVA9_GAA06_FrameV0VGSgAQyAJ013StackableMiniD0VyAQyAJ022CoveragePointCloudMiniD0VAA08_OverlayZ0VyAA017StrokeBorderShapeD0VyAA6CircleVAA5ColorVAA05EmptyD0VGSgGGGA9_GSgAQyAQyAJ013ARKitCoachingD0VAYGA17_GSgtGGAYGGGGGGMR);
  outlined init with copy of ARObjectCapturingView(a2, v41);
  Published.projectedValue.getter();
  swift_endAccess();
  v35 = swift_allocObject();
  v36 = a2[5];
  v35[5] = a2[4];
  v35[6] = v36;
  v35[7] = a2[6];
  v37 = a2[1];
  v35[1] = *a2;
  v35[2] = v37;
  v38 = a2[3];
  v35[3] = a2[2];
  v35[4] = v38;
  v39 = (a3 + *(v34 + 56));
  *v39 = partial apply for closure #6 in closure #1 in ARObjectCapturingView.body.getter;
  v39[1] = v35;
  return outlined init with copy of ARObjectCapturingView(a2, v41);
}

uint64_t closure #1 in closure #1 in ARObjectCapturingView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v56 = a3;
  v5 = type metadata accessor for OpacityTransition();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v50 - v10;
  v140 = *(a1 + 16);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  State.wrappedValue.getter();
  v54 = v5;
  v55 = v9;
  if (v125 == 1)
  {
    GeometryProxy.size.getter();
    v13 = v12;
    GeometryProxy.size.getter();
    v15 = v14;
    v140 = *(a1 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySdGMd, &_s7SwiftUI5StateVySdGMR);
    State.wrappedValue.getter();
    v76 = v125;
    v77 = static Edge.Set.all.getter();
    v140 = *(a1 + 48);
    State.wrappedValue.getter();
    v75 = v125;
    GeometryProxy.size.getter();
    v17 = v16 * *(a1 + 96);
    v74 = *(a1 + 104);
    OpacityTransition.init()();
    (*(v6 + 16))(v9, v11, v5);
    lazy protocol witness table accessor for type DataModel and conformance DataModel(&lazy protocol witness table cache variable for type OpacityTransition and conformance OpacityTransition, MEMORY[0x277CE0068], MEMORY[0x277CE0060]);
    v73 = AnyTransition.init<A>(_:)();
    v18 = v11;
    (*(v6 + 8))(v11, v5);
    v71 = 0x4039000000000000;
    v72 = v77;
  }

  else
  {
    v18 = v11;
    v71 = 0;
    v72 = 0;
    v75 = 0;
    v76 = 0;
    v73 = 0;
    v74 = 0;
    v13 = 0;
    v15 = 0;
    v17 = 0.0;
  }

  v165[0] = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v165, &v140, &_s7SwiftUI14ObservedObjectVy012_RealityKit_aB09DataModelCGMd, &_s7SwiftUI14ObservedObjectVy012_RealityKit_aB09DataModelCGMR);
  swift_retain_n();
  static Published.subscript.getter(&v140);

  v59 = a1;
  v53 = v6;
  if (v140 == 1)
  {
    type metadata accessor for DataModel(0);
    lazy protocol witness table accessor for type DataModel and conformance DataModel(&lazy protocol witness table cache variable for type DataModel and conformance DataModel, type metadata accessor for DataModel, &protocol conformance descriptor for DataModel);
    v19 = ObservedObject.init(wrappedValue:)();
    v69 = v20;
    v70 = v19;
    v21 = v18;
    OpacityTransition.init()();
    v22 = v54;
    (*(v6 + 16))(v55, v18, v54);
    lazy protocol witness table accessor for type DataModel and conformance DataModel(&lazy protocol witness table cache variable for type OpacityTransition and conformance OpacityTransition, MEMORY[0x277CE0068], MEMORY[0x277CE0060]);
    v68 = AnyTransition.init<A>(_:)();
    (*(v6 + 8))(v18, v22);
    GeometryProxy.size.getter();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v66 = v154;
    v67 = v153;
    v23 = 1065353216;
    v64 = v156;
    v65 = v155;
    *&v63[4] = 0x404000003E99999ALL;
    *v63 = 1045220557;
    v77 = 0x404E000000000000;
    v61 = v157;
    v62 = 0x3FD0000000000000;
    v60 = v158;
  }

  else
  {
    outlined destroy of PerspectiveCameraComponent?(v165, &_s7SwiftUI14ObservedObjectVy012_RealityKit_aB09DataModelCGMd, &_s7SwiftUI14ObservedObjectVy012_RealityKit_aB09DataModelCGMR);
    v69 = 0;
    v70 = 0;
    v77 = 0;
    v61 = 0;
    v62 = 0;
    memset(v63, 0, sizeof(v63));
    v64 = 0;
    v23 = 0;
    v67 = 0;
    v68 = 0;
    v65 = 0;
    v66 = 0;
    v60 = 0;
    v21 = v18;
  }

  GeometryProxy.size.getter();
  v25 = v24;
  GeometryProxy.size.getter();
  if (v26 < v25)
  {
    v25 = v26;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v140);

  v57 = v23;
  if (v140 == 1)
  {
    if (one-time initialization token for pipWindowWidthPercent != -1)
    {
      swift_once();
    }

    v52 = a2;
    v27 = *&pipWindowWidthPercent;
    type metadata accessor for DataModel(0);
    lazy protocol witness table accessor for type DataModel and conformance DataModel(&lazy protocol witness table cache variable for type DataModel and conformance DataModel, type metadata accessor for DataModel, &protocol conformance descriptor for DataModel);

    v28 = ObservedObject.init(wrappedValue:)();
    v50 = v29;
    v51 = v28;
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter(&v140);

    v31 = v140;
    if (!v140)
    {
      __break(1u);
      return result;
    }

    specialized CoveragePointCloudMiniView.init(model:renderer:)(v140, v78);

    outlined destroy of PerspectiveCameraComponent?(v165, &_s7SwiftUI14ObservedObjectVy012_RealityKit_aB09DataModelCGMd, &_s7SwiftUI14ObservedObjectVy012_RealityKit_aB09DataModelCGMR);
    v32 = static Alignment.center.getter();
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v81 = 0u;
    v82 = 0u;
    *&v86 = v32;
    *(&v86 + 1) = v33;
    *&v79[88] = v86;
    memset(&v79[8], 0, 80);
    v109 = 0u;
    v110 = 0u;
    v107 = 0u;
    v108 = 0u;
    v106 = 0u;
    *&v111 = v32;
    *(&v111 + 1) = v33;
    outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(&v81, &v140, &_s7SwiftUI16_OverlayModifierVyAA21StrokeBorderShapeViewVyAA6CircleVAA5ColorVAA05EmptyH0VGSgGMd, &_s7SwiftUI16_OverlayModifierVyAA21StrokeBorderShapeViewVyAA6CircleVAA5ColorVAA05EmptyH0VGSgGMR);
    outlined destroy of PerspectiveCameraComponent?(&v106, &_s7SwiftUI16_OverlayModifierVyAA21StrokeBorderShapeViewVyAA6CircleVAA5ColorVAA05EmptyH0VGSgGMd, &_s7SwiftUI16_OverlayModifierVyAA21StrokeBorderShapeViewVyAA6CircleVAA5ColorVAA05EmptyH0VGSgGMR);
    outlined destroy of PerspectiveCameraComponent?(v165, &_s7SwiftUI14ObservedObjectVy012_RealityKit_aB09DataModelCGMd, &_s7SwiftUI14ObservedObjectVy012_RealityKit_aB09DataModelCGMR);
    OpacityTransition.init()();
    v34 = v53;
    v35 = v54;
    (*(v53 + 16))(v55, v21, v54);
    lazy protocol witness table accessor for type DataModel and conformance DataModel(&lazy protocol witness table cache variable for type OpacityTransition and conformance OpacityTransition, MEMORY[0x277CE0068], MEMORY[0x277CE0060]);
    v36 = AnyTransition.init<A>(_:)();
    (*(v34 + 8))(v21, v35);
    *v126 = v25 * v27;
    *(&v126[7] + 8) = *&v79[48];
    *(&v126[8] + 8) = *&v79[64];
    *(&v126[9] + 8) = *&v79[80];
    *(&v126[3] + 8) = v78[3];
    *(&v126[4] + 8) = *v79;
    *(&v126[5] + 8) = *&v79[16];
    *(&v126[6] + 8) = *&v79[32];
    *(v126 + 8) = v78[0];
    *(&v126[1] + 8) = v78[1];
    *&v125 = v51;
    *(&v125 + 1) = v50;
    *(&v126[2] + 8) = v78[2];
    *(&v126[10] + 1) = *&v79[96];
    *&v127 = 0x4034000000000000;
    *(&v127 + 1) = v36;
    closure #1 in BoundingBoxRotateManipulator.requestAsyncModelLoad()();
    v150 = v126[9];
    v151 = v126[10];
    v152 = v127;
    v146 = v126[5];
    v147 = v126[6];
    v148 = v126[7];
    v149 = v126[8];
    v142 = v126[1];
    v143 = v126[2];
    v144 = v126[3];
    v145 = v126[4];
    v140 = v125;
    v141 = v126[0];
    v23 = v57;
  }

  else
  {
    outlined destroy of PerspectiveCameraComponent?(v165, &_s7SwiftUI14ObservedObjectVy012_RealityKit_aB09DataModelCGMd, &_s7SwiftUI14ObservedObjectVy012_RealityKit_aB09DataModelCGMR);
    _s7SwiftUI15ModifiedContentVy012_RealityKit_aB017StackableMiniViewVyACyAD018CoveragePointCloudhI0VAA16_OverlayModifierVyAA017StrokeBorderShapeI0VyAA6CircleVAA5ColorVAA05EmptyI0VGSgGGGAA013_TraitWritingN0VyAA010TransitionU3KeyVGGSgWOi0_(&v140);
  }

  v125 = *(v59 + 64);
  State.wrappedValue.getter();
  if (v106 == 1)
  {
    type metadata accessor for DataModel(0);
    lazy protocol witness table accessor for type DataModel and conformance DataModel(&lazy protocol witness table cache variable for type DataModel and conformance DataModel, type metadata accessor for DataModel, &protocol conformance descriptor for DataModel);
    v37 = ObservedObject.init(wrappedValue:)();
    v58 = v38;
    v59 = v37;
    v39 = static Edge.Set.all.getter();
    GeometryProxy.size.getter();
    GeometryProxy.size.getter();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v41 = v159;
    v40 = v160;
    v42 = v161;
    v43 = v162;
    v44 = v39;
    v46 = v163;
    v45 = v164;
  }

  else
  {
    outlined destroy of PerspectiveCameraComponent?(v165, &_s7SwiftUI14ObservedObjectVy012_RealityKit_aB09DataModelCGMd, &_s7SwiftUI14ObservedObjectVy012_RealityKit_aB09DataModelCGMR);
    v58 = 0;
    v59 = 0;
    v41 = 0;
    v40 = 0;
    v42 = 0;
    v43 = 0;
    v46 = 0;
    v45 = 0;
    v44 = 0;
  }

  v94[0] = v71;
  v94[1] = 0;
  *&v95 = v13;
  *(&v95 + 1) = v15;
  *&v96 = v76;
  *(&v96 + 1) = v72;
  *&v97 = v75;
  *(&v97 + 1) = v17;
  *&v98 = v74;
  *(&v98 + 1) = v73;
  v80[1] = v95;
  v80[2] = v96;
  v80[3] = v97;
  *&v99 = v70;
  *(&v99 + 1) = v69;
  v80[4] = v98;
  v80[0] = v71;
  v91 = v150;
  v92 = v151;
  v93 = v152;
  v87 = v146;
  v88 = v147;
  v89 = v148;
  v90 = v149;
  v83 = v142;
  v84 = v143;
  v85 = v144;
  v86 = v145;
  v81 = v140;
  v82 = v141;
  *&v100 = v77;
  *(&v100 + 1) = v77;
  *&v101 = v62;
  *(&v101 + 1) = *v63;
  *&v102 = __PAIR64__(v23, *&v63[8]);
  *(&v102 + 1) = v68;
  *&v103 = v67;
  *(&v103 + 1) = v66;
  *&v104 = v65;
  *(&v104 + 1) = v64;
  *&v105 = v61;
  *(&v105 + 1) = v60;
  v80[5] = v99;
  v80[6] = v100;
  v80[9] = v103;
  v80[10] = v104;
  v80[7] = v101;
  v80[8] = v102;
  v108 = v142;
  v109 = v143;
  v106 = v140;
  v107 = v141;
  v112 = v146;
  v113 = v147;
  v110 = v144;
  v111 = v145;
  v118 = v152;
  v117 = v151;
  v116 = v150;
  v114 = v148;
  v115 = v149;
  v80[21] = v149;
  v80[22] = v150;
  v80[23] = v151;
  v80[24] = v152;
  v80[17] = v145;
  v80[18] = v146;
  v80[19] = v147;
  v80[20] = v148;
  v80[13] = v141;
  v80[14] = v142;
  v80[15] = v143;
  v80[16] = v144;
  v80[11] = v105;
  v80[12] = v140;
  *&v119 = v59;
  *(&v119 + 1) = v58;
  *&v120 = v44;
  *(&v120 + 1) = v41;
  *&v121 = v40;
  *(&v121 + 1) = v42;
  *&v122 = v43;
  *(&v122 + 1) = v46;
  v123 = v45;
  *&v80[29] = v45;
  v80[27] = v121;
  v80[28] = v122;
  v80[25] = v119;
  v80[26] = v120;
  v47 = v42;
  v48 = v43;
  v49 = v45;
  memcpy(v56, v80, 0x1D8uLL);
  v124[0] = v59;
  v124[1] = v58;
  v124[2] = v44;
  v124[3] = v41;
  v124[4] = v40;
  v124[5] = v47;
  v124[6] = v48;
  v124[7] = v46;
  v124[8] = v49;
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v94, &v125, &_s7SwiftUI15ModifiedContentVyACyACyACy012_RealityKit_aB019ObjectSelectionViewVAA23_SafeAreaIgnoringLayoutVGAA25_AllowsHitTestingModifierVGAD05ShakeQ0VGAA013_TraitWritingQ0VyAA010TransitionS3KeyVGGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyACy012_RealityKit_aB019ObjectSelectionViewVAA23_SafeAreaIgnoringLayoutVGAA25_AllowsHitTestingModifierVGAD05ShakeQ0VGAA013_TraitWritingQ0VyAA010TransitionS3KeyVGGSgMR);
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(&v99, &v125, &_s7SwiftUI15ModifiedContentVyACy012_RealityKit_aB017ReticleCenterView33_EA5701D4B6F676E94D8ABFCFB3B0751BLLVAA21_TraitWritingModifierVyAA010TransitionR3KeyVGGAA12_FrameLayoutVGSgMd, &_s7SwiftUI15ModifiedContentVyACy012_RealityKit_aB017ReticleCenterView33_EA5701D4B6F676E94D8ABFCFB3B0751BLLVAA21_TraitWritingModifierVyAA010TransitionR3KeyVGGAA12_FrameLayoutVGSgMR);
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(&v106, &v125, &_s7SwiftUI15ModifiedContentVy012_RealityKit_aB017StackableMiniViewVyACyAD018CoveragePointCloudhI0VAA16_OverlayModifierVyAA017StrokeBorderShapeI0VyAA6CircleVAA5ColorVAA05EmptyI0VGSgGGGAA013_TraitWritingN0VyAA010TransitionU3KeyVGGSgMd, &_s7SwiftUI15ModifiedContentVy012_RealityKit_aB017StackableMiniViewVyACyAD018CoveragePointCloudhI0VAA16_OverlayModifierVyAA017StrokeBorderShapeI0VyAA6CircleVAA5ColorVAA05EmptyI0VGSgGGGAA013_TraitWritingN0VyAA010TransitionU3KeyVGGSgMR);
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(&v119, &v125, &_s7SwiftUI15ModifiedContentVyACy012_RealityKit_aB017ARKitCoachingViewVAA23_SafeAreaIgnoringLayoutVGAA06_FrameM0VGSgMd, &_s7SwiftUI15ModifiedContentVyACy012_RealityKit_aB017ARKitCoachingViewVAA23_SafeAreaIgnoringLayoutVGAA06_FrameM0VGSgMR);
  outlined destroy of PerspectiveCameraComponent?(v124, &_s7SwiftUI15ModifiedContentVyACy012_RealityKit_aB017ARKitCoachingViewVAA23_SafeAreaIgnoringLayoutVGAA06_FrameM0VGSgMd, &_s7SwiftUI15ModifiedContentVyACy012_RealityKit_aB017ARKitCoachingViewVAA23_SafeAreaIgnoringLayoutVGAA06_FrameM0VGSgMR);
  v126[9] = v91;
  v126[10] = v92;
  v127 = v93;
  v126[5] = v87;
  v126[6] = v88;
  v126[7] = v89;
  v126[8] = v90;
  v126[1] = v83;
  v126[2] = v84;
  v126[3] = v85;
  v126[4] = v86;
  v125 = v81;
  v126[0] = v82;
  outlined destroy of PerspectiveCameraComponent?(&v125, &_s7SwiftUI15ModifiedContentVy012_RealityKit_aB017StackableMiniViewVyACyAD018CoveragePointCloudhI0VAA16_OverlayModifierVyAA017StrokeBorderShapeI0VyAA6CircleVAA5ColorVAA05EmptyI0VGSgGGGAA013_TraitWritingN0VyAA010TransitionU3KeyVGGSgMd, &_s7SwiftUI15ModifiedContentVy012_RealityKit_aB017StackableMiniViewVyACyAD018CoveragePointCloudhI0VAA16_OverlayModifierVyAA017StrokeBorderShapeI0VyAA6CircleVAA5ColorVAA05EmptyI0VGSgGGGAA013_TraitWritingN0VyAA010TransitionU3KeyVGGSgMR);
  v128[0] = v70;
  v128[1] = v69;
  v128[2] = v77;
  v128[3] = v77;
  v128[4] = v62;
  v129 = *v63;
  v130 = *&v63[4];
  v131 = v57;
  v132 = v68;
  v133 = v67;
  v134 = v66;
  v135 = v65;
  v136 = v64;
  v137 = v61;
  v138 = v60;
  outlined destroy of PerspectiveCameraComponent?(v128, &_s7SwiftUI15ModifiedContentVyACy012_RealityKit_aB017ReticleCenterView33_EA5701D4B6F676E94D8ABFCFB3B0751BLLVAA21_TraitWritingModifierVyAA010TransitionR3KeyVGGAA12_FrameLayoutVGSgMd, &_s7SwiftUI15ModifiedContentVyACy012_RealityKit_aB017ReticleCenterView33_EA5701D4B6F676E94D8ABFCFB3B0751BLLVAA21_TraitWritingModifierVyAA010TransitionR3KeyVGGAA12_FrameLayoutVGSgMR);
  v139[0] = v71;
  v139[1] = 0;
  v139[2] = v13;
  v139[3] = v15;
  v139[4] = v76;
  v139[5] = v72;
  v139[6] = v75;
  *&v139[7] = v17;
  v139[8] = v74;
  v139[9] = v73;
  return outlined destroy of PerspectiveCameraComponent?(v139, &_s7SwiftUI15ModifiedContentVyACyACyACy012_RealityKit_aB019ObjectSelectionViewVAA23_SafeAreaIgnoringLayoutVGAA25_AllowsHitTestingModifierVGAD05ShakeQ0VGAA013_TraitWritingQ0VyAA010TransitionS3KeyVGGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyACy012_RealityKit_aB019ObjectSelectionViewVAA23_SafeAreaIgnoringLayoutVGAA25_AllowsHitTestingModifierVGAD05ShakeQ0VGAA013_TraitWritingQ0VyAA010TransitionS3KeyVGGSgMR);
}

uint64_t closure #2 in closure #1 in ARObjectCapturingView.body.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataModel.State(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v35 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v35 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = v35 - v14;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, logger);
  outlined init with copy of DataModel.State(a1, v15);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v35[0] = a2;
    v20 = v19;
    v21 = swift_slowAlloc();
    *&v36 = v21;
    *v20 = 136446210;
    outlined init with copy of DataModel.State(v15, v13);
    v22 = String.init<A>(describing:)();
    v24 = v23;
    outlined destroy of DataModel.State(v15);
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v36);

    *(v20 + 4) = v25;
    _os_log_impl(&dword_23B824000, v17, v18, "onReceive() state = %{public}s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v21);
    MEMORY[0x23EEB0B70](v21, -1, -1);
    v26 = v20;
    a2 = v35[0];
    MEMORY[0x23EEB0B70](v26, -1, -1);
  }

  else
  {

    outlined destroy of DataModel.State(v15);
  }

  outlined init with copy of DataModel.State(a1, v10);
  v27 = type metadata accessor for DataModel.Error(0);
  v28 = *(*(v27 - 8) + 48);
  v29 = v28(v10, 8, v27);
  v30 = outlined destroy of DataModel.State(v10);
  if (v29 == 4)
  {
    MEMORY[0x28223BE20](v30);
    v35[-2] = a2;
    static Animation.default.getter();
    withAnimation<A>(_:_:)();

    v36 = *(a2 + 32);
    v35[1] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySdGMd, &_s7SwiftUI5StateVySdGMR);
    return State.wrappedValue.setter();
  }

  else
  {
    outlined init with copy of DataModel.State(a1, v7);
    v32 = v28(v7, 8, v27);
    v33 = outlined destroy of DataModel.State(v7);
    if (v32 == 5)
    {
      v34 = static Animation.easeOut(duration:)();
      MEMORY[0x28223BE20](v34);
      v35[-2] = a2;
    }

    else
    {
      MEMORY[0x28223BE20](v33);
      v35[-2] = a2;
      static Animation.default.getter();
    }

    withAnimation<A>(_:_:)();
  }
}

uint64_t closure #1 in closure #2 in closure #1 in ARObjectCapturingView.body.getter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v4);

  v2 = v4;
  v4 = *(a1 + 16);
  v5 = (v2 & 1) == 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  return State.wrappedValue.setter();
}

uint64_t closure #3 in closure #1 in ARObjectCapturingView.body.getter(char *a1, uint64_t a2)
{
  v4 = type metadata accessor for DataModel.State(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v6);

  v8 = type metadata accessor for DataModel.Error(0);
  LODWORD(a1) = (*(*(v8 - 8) + 48))(v6, 8, v8);
  result = outlined destroy of DataModel.State(v6);
  if (a1 == 4)
  {
    MEMORY[0x28223BE20](result);
    *&v10[-16] = a2;
    v10[-8] = v7;
    static Animation.default.getter();
    withAnimation<A>(_:_:)();
  }

  return result;
}

void *closure #4 in closure #1 in ARObjectCapturingView.body.getter(_BYTE *a1, _OWORD *a2)
{
  v33 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v34 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchTime();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v12);
  v17 = &v27 - v16;
  if (*a1 == 1)
  {
    v35[0] = a2[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySdGMd, &_s7SwiftUI5StateVySdGMR);
    result = State.wrappedValue.getter();
    if (aBlock[0] < 0.001)
    {
      v18 = static Animation.linear(duration:)();
      v32 = v7;
      MEMORY[0x28223BE20](v18);
      *(&v27 - 2) = a2;
      v31 = v4;
      withAnimation<A>(_:_:)();

      type metadata accessor for OS_dispatch_queue();
      v28 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      + infix(_:_:)();
      v19 = *(v11 + 8);
      v29 = v11 + 8;
      v30 = v19;
      v19(v14, v10);
      v20 = swift_allocObject();
      v21 = a2[5];
      v20[5] = a2[4];
      v20[6] = v21;
      v20[7] = a2[6];
      v22 = a2[1];
      v20[1] = *a2;
      v20[2] = v22;
      v23 = a2[3];
      v20[3] = a2[2];
      v20[4] = v23;
      *&aBlock[4] = partial apply for closure #2 in closure #4 in closure #1 in ARObjectCapturingView.body.getter;
      *&aBlock[5] = v20;
      *&aBlock[0] = MEMORY[0x277D85DD0];
      *&aBlock[1] = 1107296256;
      *&aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      *&aBlock[3] = &block_descriptor_2;
      v24 = _Block_copy(aBlock);
      outlined init with copy of ARObjectCapturingView(a2, v35);

      static DispatchQoS.unspecified.getter();
      *&v35[0] = MEMORY[0x277D84F90];
      lazy protocol witness table accessor for type DataModel and conformance DataModel(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
      v25 = v33;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v26 = v28;
      MEMORY[0x23EEAF910](v17, v9, v6, v24);
      _Block_release(v24);

      (*(v31 + 8))(v6, v25);
      (*(v34 + 8))(v9, v32);
      return v30(v17, v10);
    }
  }

  return result;
}

uint64_t closure #5 in closure #1 in ARObjectCapturingView.body.getter(uint64_t a1)
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();
}

_BYTE *closure #6 in closure #1 in ARObjectCapturingView.body.getter(_BYTE *result, uint64_t a2)
{
  if (*result == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
    return State.wrappedValue.setter();
  }

  return result;
}

uint64_t protocol witness for View.body.getter in conformance ARObjectCapturingView@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v3 = v1[5];
  v12[4] = v1[4];
  v12[5] = v3;
  v12[6] = v1[6];
  v4 = v1[1];
  v12[0] = *v1;
  v12[1] = v4;
  v5 = v1[3];
  v12[2] = v1[2];
  v12[3] = v5;
  v6 = swift_allocObject();
  v7 = v1[5];
  *(v6 + 5) = v1[4];
  *(v6 + 6) = v7;
  *(v6 + 7) = v1[6];
  v8 = v1[1];
  *(v6 + 1) = *v1;
  *(v6 + 2) = v8;
  v9 = v1[3];
  *(v6 + 3) = v1[2];
  *(v6 + 4) = v9;
  *a1 = partial apply for closure #1 in ARObjectCapturingView.body.getter;
  a1[1] = v6;
  return outlined init with copy of ARObjectCapturingView(v12, &v11);
}

double ReticleCenterView.theta.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v5);

  result = 0.0;
  if (sqrtf(vaddv_f32(vmul_f32(v5, v5))) > 0.01)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v5);

    v1 = vmul_f32(v5, v5);
    v1.i32[0] = vadd_f32(v1, vdup_lane_s32(v1, 1)).u32[0];
    v2 = vrsqrte_f32(v1.u32[0]);
    v3 = vmul_f32(v2, vrsqrts_f32(v1.u32[0], vmul_f32(v2, v2)));
    v4 = vmul_n_f32(v5, vmul_f32(v3, vrsqrts_f32(v1.u32[0], vmul_f32(v3, v3))).f32[0]);
    return atan2f(v4.f32[1], v4.f32[0]);
  }

  return result;
}

uint64_t ReticleCenterView.alpha.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v2);

  if (sqrtf(vaddv_f32(vmul_f32(v2, v2))) >= *(v0 + 40))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v2);

    if (*(v0 + 44) >= sqrtf(vaddv_f32(vmul_f32(v2, v2))))
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(&v2);
    }
  }

  return result;
}

uint64_t ReticleCenterView.arrowFade.getter()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 52);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v4);

  if (sqrtf(vaddv_f32(vmul_f32(v4, v4))) >= (v2 - v1))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v4);

    if (v2 >= sqrtf(vaddv_f32(vmul_f32(v4, v4))))
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(&v4);
    }
  }

  return result;
}

uint64_t closure #1 in ReticleCenterView.body.getter@<X0>(double *a1@<X0>, void *a2@<X8>)
{
  v25 = a2;
  v3 = type metadata accessor for OpacityTransition();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v26 = static HorizontalAlignment.center.getter();
  v55 = 1;
  closure #1 in closure #1 in ReticleCenterView.body.getter(a1, &v48);
  v62 = *&v49[80];
  v63 = *&v49[96];
  v58 = *&v49[16];
  v59 = *&v49[32];
  v61 = *&v49[64];
  v60 = *&v49[48];
  v57 = *v49;
  v56 = v48;
  v65[6] = *&v49[80];
  v65[7] = *&v49[96];
  v65[2] = *&v49[16];
  v65[3] = *&v49[32];
  v65[4] = *&v49[48];
  v65[5] = *&v49[64];
  v64 = v49[112];
  v66 = v49[112];
  v65[0] = v48;
  v65[1] = *v49;
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(&v56, &v33, &_s7SwiftUI9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAGyAGyAGyAA6CircleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA13_OffsetEffectVGAA09_RotationQ0VGAEtGMd, &_s7SwiftUI9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAGyAGyAGyAA6CircleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA13_OffsetEffectVGAA09_RotationQ0VGAEtGMR);
  outlined destroy of PerspectiveCameraComponent?(v65, &_s7SwiftUI9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAGyAGyAGyAA6CircleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA13_OffsetEffectVGAA09_RotationQ0VGAEtGMd, &_s7SwiftUI9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAGyAGyAGyAA6CircleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA13_OffsetEffectVGAA09_RotationQ0VGAEtGMR);
  *&v54[87] = v61;
  *&v54[103] = v62;
  *&v54[119] = v63;
  *&v54[23] = v57;
  *&v54[39] = v58;
  *&v54[55] = v59;
  *&v54[71] = v60;
  v54[135] = v64;
  *&v54[7] = v56;
  v24 = v55;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v48);

  v10 = 0;
  if (v48 == 1)
  {
    ReticleCenterView.arrowFade.getter();
    v10 = v11;
  }

  OpacityTransition.init()();
  v12 = *(v4 + 16);
  v12(v7, v9, v3);
  lazy protocol witness table accessor for type DataModel and conformance DataModel(&lazy protocol witness table cache variable for type OpacityTransition and conformance OpacityTransition, MEMORY[0x277CE0068], MEMORY[0x277CE0060]);
  v21 = AnyTransition.init<A>(_:)();
  v13 = *(v4 + 8);
  v13(v9, v3);
  v23 = static HorizontalAlignment.center.getter();
  LOBYTE(v48) = 1;
  closure #2 in closure #1 in ReticleCenterView.body.getter(a1, v31);
  *&v28[23] = v31[1];
  *&v28[39] = v31[2];
  *&v28[55] = v31[3];
  v28[71] = v32;
  *&v28[7] = v31[0];
  v22 = v48;
  OpacityTransition.init()();
  v12(v7, v9, v3);
  v14 = AnyTransition.init<A>(_:)();
  v13(v9, v3);
  v15 = v26;
  v33 = v26;
  v16 = v24;
  LOBYTE(v34[0]) = v24;
  *(&v34[2] + 1) = *&v54[32];
  *(&v34[1] + 1) = *&v54[16];
  *(&v34[5] + 1) = *&v54[80];
  *(&v34[6] + 1) = *&v54[96];
  *(&v34[7] + 1) = *&v54[112];
  *(&v34[8] + 1) = *&v54[128];
  *(&v34[3] + 1) = *&v54[48];
  *(&v34[4] + 1) = *&v54[64];
  *(v34 + 1) = *v54;
  *(&v34[8] + 9) = *v30;
  HIDWORD(v34[8]) = *&v30[3];
  *&v35 = v10;
  v17 = v21;
  *(&v35 + 1) = v21;
  v27[4] = v34[3];
  v27[5] = v34[4];
  v27[6] = v34[5];
  v27[7] = v34[6];
  v27[0] = v26;
  v27[1] = v34[0];
  v27[2] = v34[1];
  v27[3] = v34[2];
  v27[8] = v34[7];
  v27[9] = v34[8];
  v18 = v23;
  v36[0] = v23;
  v36[1] = 0;
  v19 = v22;
  LOBYTE(v37[0]) = v22;
  *(&v37[4] + 1) = *&v28[64];
  *(&v37[3] + 1) = *&v28[48];
  *(&v37[2] + 1) = *&v28[32];
  *(&v37[1] + 1) = *&v28[16];
  *(v37 + 1) = *v28;
  *(&v37[4] + 9) = *v29;
  HIDWORD(v37[4]) = *&v29[3];
  v27[10] = v35;
  v27[11] = v23;
  v27[14] = v37[2];
  v27[15] = v37[3];
  v27[16] = v37[4];
  v38 = v14;
  *&v27[17] = v14;
  v27[12] = v37[0];
  v27[13] = v37[1];
  memcpy(v25, v27, 0x118uLL);
  v42 = *&v28[16];
  v43 = *&v28[32];
  v44 = *&v28[48];
  v39[0] = v18;
  v39[1] = 0;
  v40 = v19;
  v45 = *&v28[64];
  v41 = *v28;
  *v46 = *v29;
  *&v46[3] = *&v29[3];
  v47 = v14;
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(&v33, &v48, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA6SpacerV_ACyACyACyACyAA6CircleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA13_OffsetEffectVGAA09_RotationR0VGAItGGAA08_OpacityR0VGAA06_TraitlM0VyAA010TransitionuK0VGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA6SpacerV_ACyACyACyACyAA6CircleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA13_OffsetEffectVGAA09_RotationR0VGAItGGAA08_OpacityR0VGAA06_TraitlM0VyAA010TransitionuK0VGGMR);
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v36, &v48, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6SpacerV_ACy012_RealityKit_aB0013RotatingArrowG033_EA5701D4B6F676E94D8ABFCFB3B0751BLLVAA14_OpacityEffectVGAItGGAA21_TraitWritingModifierVyAA010TransitionW3KeyVGGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6SpacerV_ACy012_RealityKit_aB0013RotatingArrowG033_EA5701D4B6F676E94D8ABFCFB3B0751BLLVAA14_OpacityEffectVGAItGGAA21_TraitWritingModifierVyAA010TransitionW3KeyVGGMR);
  outlined destroy of PerspectiveCameraComponent?(v39, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6SpacerV_ACy012_RealityKit_aB0013RotatingArrowG033_EA5701D4B6F676E94D8ABFCFB3B0751BLLVAA14_OpacityEffectVGAItGGAA21_TraitWritingModifierVyAA010TransitionW3KeyVGGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6SpacerV_ACy012_RealityKit_aB0013RotatingArrowG033_EA5701D4B6F676E94D8ABFCFB3B0751BLLVAA14_OpacityEffectVGAItGGAA21_TraitWritingModifierVyAA010TransitionW3KeyVGGMR);
  *&v49[81] = *&v54[80];
  *&v49[97] = *&v54[96];
  *&v49[113] = *&v54[112];
  *&v49[17] = *&v54[16];
  *&v49[33] = *&v54[32];
  *&v49[49] = *&v54[48];
  *&v49[65] = *&v54[64];
  v48 = v15;
  v49[0] = v16;
  v50 = *&v54[128];
  *&v49[1] = *v54;
  *v51 = *v30;
  *&v51[3] = *&v30[3];
  v52 = v10;
  v53 = v17;
  return outlined destroy of PerspectiveCameraComponent?(&v48, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA6SpacerV_ACyACyACyACyAA6CircleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA13_OffsetEffectVGAA09_RotationR0VGAItGGAA08_OpacityR0VGAA06_TraitlM0VyAA010TransitionuK0VGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA6SpacerV_ACyACyACyACyAA6CircleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA13_OffsetEffectVGAA09_RotationR0VGAItGGAA08_OpacityR0VGAA06_TraitlM0VyAA010TransitionuK0VGGMR);
}

uint64_t closure #1 in closure #1 in ReticleCenterView.body.getter@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  ReticleCenterView.alpha.getter();
  v7 = v6;
  ReticleCenterView.arrowFade.getter();
  v8 = 0.0;
  if (v9 >= 1.0)
  {
    v10 = 0.75;
    if (v7 <= 0.75)
    {
      v10 = v7;
    }

    v11 = a1[2];
    if (a1[3] < v11)
    {
      v11 = a1[3];
    }

    v12 = a1[4] * v11;
    v8 = sin((v10 + v10) * 3.14159265) * v12;
  }

  v13 = ReticleCenterView.theta.getter();
  static UnitPoint.center.getter();
  *&v25[0] = KeyPath;
  *(&v25[0] + 1) = v4;
  v25[1] = v39;
  v14 = v39;
  v15 = v40;
  v25[2] = v40;
  v25[3] = v41;
  v26 = v8;
  v27 = 0;
  *&v28 = v13;
  *(&v28 + 1) = v16;
  v29 = v17;
  *&v23[39] = v40;
  *&v23[23] = v39;
  *&v23[7] = v25[0];
  *&v23[103] = v17;
  *&v23[87] = v28;
  *&v23[71] = *&v8;
  *&v23[55] = v41;
  v18 = *&v23[48];
  *(a2 + 41) = *&v23[32];
  v19 = *v23;
  *(a2 + 25) = *&v23[16];
  *(a2 + 9) = v19;
  *(a2 + 104) = *&v23[95];
  v20 = *&v23[64];
  *(a2 + 89) = *&v23[80];
  v24 = 1;
  v22[104] = 1;
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 73) = v20;
  *(a2 + 57) = v18;
  *(a2 + 120) = 0;
  *(a2 + 128) = 1;
  v30[0] = KeyPath;
  v30[1] = v4;
  v33 = v41;
  v32 = v15;
  v31 = v14;
  v34 = v8;
  v35 = 0;
  v36 = v13;
  v37 = v16;
  v38 = v17;
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v25, v22, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6CircleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA13_OffsetEffectVGAA09_RotationN0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6CircleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA13_OffsetEffectVGAA09_RotationN0VGMR);
  return outlined destroy of PerspectiveCameraComponent?(v30, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6CircleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA13_OffsetEffectVGAA09_RotationN0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6CircleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA13_OffsetEffectVGAA09_RotationN0VGMR);
}

uint64_t closure #2 in closure #1 in ReticleCenterView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DataModel.State(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v19[-v8];
  v10 = a1[2];
  v11 = a1[3];
  v12 = ReticleCenterView.theta.getter();
  ReticleCenterView.alpha.getter();
  v14 = v13;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v9);

  v15 = type metadata accessor for DataModel.Error(0);
  (*(*(v15 - 8) + 56))(v7, 6, 8, v15);
  v16 = specialized static DataModel.State.== infix(_:_:)(v9, v7);
  outlined destroy of DataModel.State(v7);
  result = outlined destroy of DataModel.State(v9);
  v18 = 0;
  if (v16)
  {
    result = ReticleCenterView.arrowFade.getter();
  }

  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = v10;
  *(a2 + 24) = v11;
  *(a2 + 32) = v12;
  *(a2 + 40) = v14;
  *(a2 + 48) = v18;
  *(a2 + 56) = 0;
  *(a2 + 64) = 1;
  return result;
}

void *protocol witness for View.body.getter in conformance ReticleCenterView@<X0>(uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v11[0] = *v2;
  v11[1] = v4;
  v11[2] = *(v2 + 32);
  v12 = *(v2 + 48);
  v5 = static Alignment.center.getter();
  v7 = v6;
  closure #1 in ReticleCenterView.body.getter(v11, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v14, __src, sizeof(v14));
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(__dst, &v9, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA6VStackVyACyAA6SpacerV_AEyAEyAEyAEyAA6CircleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA13_OffsetEffectVGAA09_RotationR0VGAItGGAA08_OpacityR0VGAA06_TraitlM0VyAA010TransitionuK0VGG_AEyAGyACyAI_AEy012_RealityKit_aB0013RotatingArrowD033_EA5701D4B6F676E94D8ABFCFB3B0751BLLVA3_GAItGGA9_GtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA6VStackVyACyAA6SpacerV_AEyAEyAEyAEyAA6CircleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA13_OffsetEffectVGAA09_RotationR0VGAItGGAA08_OpacityR0VGAA06_TraitlM0VyAA010TransitionuK0VGG_AEyAGyACyAI_AEy012_RealityKit_aB0013RotatingArrowD033_EA5701D4B6F676E94D8ABFCFB3B0751BLLVA3_GAItGGA9_GtGMR);
  outlined destroy of PerspectiveCameraComponent?(v14, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA6VStackVyACyAA6SpacerV_AEyAEyAEyAEyAA6CircleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA13_OffsetEffectVGAA09_RotationR0VGAItGGAA08_OpacityR0VGAA06_TraitlM0VyAA010TransitionuK0VGG_AEyAGyACyAI_AEy012_RealityKit_aB0013RotatingArrowD033_EA5701D4B6F676E94D8ABFCFB3B0751BLLVA3_GAItGGA9_GtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA6VStackVyACyAA6SpacerV_AEyAEyAEyAEyAA6CircleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA13_OffsetEffectVGAA09_RotationR0VGAItGGAA08_OpacityR0VGAA06_TraitlM0VyAA010TransitionuK0VGG_AEyAGyACyAI_AEy012_RealityKit_aB0013RotatingArrowD033_EA5701D4B6F676E94D8ABFCFB3B0751BLLVA3_GAItGGA9_GtGMR);
  *a2 = v5;
  a2[1] = v7;
  return memcpy(a2 + 2, __dst, 0x118uLL);
}

void protocol witness for View.body.getter in conformance RotatingArrowView(uint64_t a2@<X8>)
{
  static UnitPoint.center.getter();
  v5 = v4;
  v7 = v6;
  static UnitPoint.center.getter();
  v10 = *(v2 + 16);
  v11 = *(v2 + 24);
  if (v11 <= 0.5)
  {
    v11 = 0.5;
  }

  *a2 = *v2;
  *(a2 + 16) = vextq_s8(v10, v10, 8uLL);
  *(a2 + 32) = v5;
  *(a2 + 40) = v7;
  *(a2 + 48) = v11;
  *(a2 + 56) = v11;
  *(a2 + 64) = v8;
  *(a2 + 72) = v9;
  *(a2 + 80) = v10.i64[1];
}

uint64_t ArrowView.body.getter@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a4@<D2>)
{
  v7 = type metadata accessor for Image.ResizingMode();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  Image.init(systemName:)();
  (*(v8 + 104))(v10, *MEMORY[0x277CE0FE0], v7);
  v11 = Image.resizable(capInsets:resizingMode:)();

  (*(v8 + 8))(v10, v7);
  v19 = v11;
  LOWORD(v20) = 257;
  static Font.Weight.bold.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA18_AspectRatioLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA18_AspectRatioLayoutVGMR);
  lazy protocol witness table accessor for type ModifiedContent<Image, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>();
  View.fontWeight(_:)();

  v12 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  v14 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA5ImageVAA18_AspectRatioLayoutVG_Qo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA5ImageVAA18_AspectRatioLayoutVG_Qo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMR) + 36));
  *v14 = KeyPath;
  v14[1] = v12;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v15 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA5ImageVAA18_AspectRatioLayoutVG_Qo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA06_FrameL0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA5ImageVAA18_AspectRatioLayoutVG_Qo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA06_FrameL0VGMR) + 36));
  v16 = v20;
  *v15 = v19;
  v15[1] = v16;
  v15[2] = v21;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA5ImageVAA18_AspectRatioLayoutVG_Qo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA06_FrameL0VGAA13_OffsetEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA5ImageVAA18_AspectRatioLayoutVG_Qo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA06_FrameL0VGAA13_OffsetEffectVGMR);
  v18 = a1 + *(result + 36);
  *v18 = a2 * 0.5 * (1.0 - a4 + 1.0 - a4 + -1.0);
  *(v18 + 8) = 0;
  return result;
}

double specialized ARObjectCapturingView.init(model:)@<D0>(uint64_t a2@<X8>)
{
  type metadata accessor for DataModel(0);
  lazy protocol witness table accessor for type DataModel and conformance DataModel(&lazy protocol witness table cache variable for type DataModel and conformance DataModel, type metadata accessor for DataModel, &protocol conformance descriptor for DataModel);
  v3 = ObservedObject.init(wrappedValue:)();
  v5 = v4;
  State.init(wrappedValue:)();
  State.init(wrappedValue:)();
  State.init(wrappedValue:)();
  State.init(wrappedValue:)();
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  *(a2 + 48) = v7;
  *(a2 + 56) = v8;
  *(a2 + 64) = v7;
  *(a2 + 72) = v8;
  *(a2 + 80) = 0;
  result = 0.2;
  *(a2 + 88) = xmmword_23B91D0F0;
  *(a2 + 104) = 0x3FF8000000000000;
  return result;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t getEnumTagSinglePayload for ARObjectCapturingView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ARObjectCapturingView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t objectdestroyTm_2()
{

  return MEMORY[0x2821FE8E8](v0, 128, 7);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t outlined destroy of DataModel.State(uint64_t a1)
{
  v2 = type metadata accessor for DataModel.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of DataModel.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataModel.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double _s7SwiftUI15ModifiedContentVy012_RealityKit_aB017StackableMiniViewVyACyAD018CoveragePointCloudhI0VAA16_OverlayModifierVyAA017StrokeBorderShapeI0VyAA6CircleVAA5ColorVAA05EmptyI0VGSgGGGAA013_TraitWritingN0VyAA010TransitionU3KeyVGGSgWOi0_(_OWORD *a1)
{
  result = 0.0;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t lazy protocol witness table accessor for type DataModel and conformance DataModel(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ReticleCenterView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ReticleCenterView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ArrowView, _RotationEffect>, _ScaleEffect>, _OpacityEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ArrowView, _RotationEffect>, _ScaleEffect>, _OpacityEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ArrowView, _RotationEffect>, _ScaleEffect>, _OpacityEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACy012_RealityKit_aB09ArrowView33_EA5701D4B6F676E94D8ABFCFB3B0751BLLVAA15_RotationEffectVGAA06_ScaleR0VGAA08_OpacityR0VGMd, &_s7SwiftUI15ModifiedContentVyACyACy012_RealityKit_aB09ArrowView33_EA5701D4B6F676E94D8ABFCFB3B0751BLLVAA15_RotationEffectVGAA06_ScaleR0VGAA08_OpacityR0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ArrowView, _RotationEffect>, _ScaleEffect> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ArrowView, _RotationEffect>, _ScaleEffect>, _OpacityEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ArrowView, _RotationEffect>, _ScaleEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ArrowView, _RotationEffect>, _ScaleEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ArrowView, _RotationEffect>, _ScaleEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy012_RealityKit_aB09ArrowView33_EA5701D4B6F676E94D8ABFCFB3B0751BLLVAA15_RotationEffectVGAA06_ScaleR0VGMd, &_s7SwiftUI15ModifiedContentVyACy012_RealityKit_aB09ArrowView33_EA5701D4B6F676E94D8ABFCFB3B0751BLLVAA15_RotationEffectVGAA06_ScaleR0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<ArrowView, _RotationEffect> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ArrowView, _RotationEffect>, _ScaleEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ArrowView, _RotationEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ArrowView, _RotationEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ArrowView, _RotationEffect> and conformance <> ModifiedContent<A, B>)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy012_RealityKit_aB09ArrowView33_EA5701D4B6F676E94D8ABFCFB3B0751BLLVAA15_RotationEffectVGMd, &_s7SwiftUI15ModifiedContentVy012_RealityKit_aB09ArrowView33_EA5701D4B6F676E94D8ABFCFB3B0751BLLVAA15_RotationEffectVGMR);
    lazy protocol witness table accessor for type ArrowView and conformance ArrowView(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ArrowView, _RotationEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ArrowView and conformance ArrowView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type ArrowView and conformance ArrowView;
  if (!lazy protocol witness table cache variable for type ArrowView and conformance ArrowView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArrowView and conformance ArrowView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Image, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Image, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Image, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA18_AspectRatioLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA18_AspectRatioLayoutVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Image, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _OffsetEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _OffsetEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _OffsetEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA5ImageVAA18_AspectRatioLayoutVG_Qo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA06_FrameL0VGAA13_OffsetEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA5ImageVAA18_AspectRatioLayoutVG_Qo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA06_FrameL0VGAA13_OffsetEffectVGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _OffsetEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA5ImageVAA18_AspectRatioLayoutVG_Qo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA06_FrameL0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA5ImageVAA18_AspectRatioLayoutVG_Qo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA06_FrameL0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA5ImageVAA18_AspectRatioLayoutVG_Qo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA5ImageVAA18_AspectRatioLayoutVG_Qo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA18_AspectRatioLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA18_AspectRatioLayoutVGMR);
    lazy protocol witness table accessor for type ModifiedContent<Image, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd, _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

Swift::Int TubeGenerator.Error.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x23EEAFE40](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TubeGenerator<A>.Error(uint64_t a1)
{
  Hasher.init(_seed:)();
  TubeGenerator.Error.hash(into:)(v3, *v1);
  return Hasher._finalize()();
}

uint64_t TubeGenerator.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t type metadata instantiation function for TubeGenerator.CurvePoint(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t one-time initialization function for instance()
{
  type metadata accessor for HapticManager();
  swift_allocObject();
  result = HapticManager.init()();
  static HapticManager.instance = result;
  return result;
}

void HapticManager.enabled.didset(char a1)
{
  if (*(v1 + 16) != (a1 & 1))
  {
    if (*(v1 + 16))
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v2 = type metadata accessor for Logger();
      __swift_project_value_buffer(v2, logger);
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        _os_log_impl(&dword_23B824000, v3, v4, "HapticManager was switched to enabled=true.  Turning on haptics...", v5, 2u);
        MEMORY[0x23EEB0B70](v5, -1, -1);
      }

      HapticManager.start()();
    }

    else
    {
      v6 = v1;
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      __swift_project_value_buffer(v7, logger);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_23B824000, v8, v9, "HapticManager was switched to enabled=false.  Turning off haptics...", v10, 2u);
        MEMORY[0x23EEB0B70](v10, -1, -1);
      }

      if (*(v6 + 17) == 1)
      {

        HapticManager.stopHapticEngine()();
      }
    }
  }
}

uint64_t HapticManager.init()()
{
  v1 = v0;
  *(v0 + 16) = 1;
  *(v0 + 18) = 1;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  v2 = [objc_msgSend(objc_opt_self() capabilitiesForHardware)];
  swift_unknownObjectRelease();
  *(v0 + 17) = v2;
  if (v2)
  {
    v3 = specialized HapticManager.createShotHapticPattern()();
    v4 = *(v0 + 32);
    *(v0 + 32) = v3;

    HapticManager.createAndStartHapticEngine()();
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, logger);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_23B824000, v6, v7, "Haptics not supported!", v8, 2u);
      MEMORY[0x23EEB0B70](v8, -1, -1);
    }

    return 0;
  }

  return v1;
}

Swift::Void __swiftcall HapticManager.start()()
{
  if (*(v0 + 17) == 1)
  {
    HapticManager.startHapticEngineIfNecessary()();
  }
}

Swift::Void __swiftcall HapticManager.playShotHaptic()()
{
  v24[1] = *MEMORY[0x277D85DE8];
  if (*(v0 + 17) == 1)
  {
    v1 = v0;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, logger);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_23B824000, v3, v4, "Playing shot haptic...", v5, 2u);
      MEMORY[0x23EEB0B70](v5, -1, -1);
    }

    if (*(v1 + 16))
    {
      if (*(v1 + 32))
      {
        HapticManager.start()();
        v6 = *(v1 + 24);
        if (v6)
        {
          v7 = *(v1 + 32);
          if (v7)
          {
            v24[0] = 0;
            v8 = [v6 createPlayerWithPattern:v7 error:v24];
            v9 = v24[0];
            if (v8)
            {
              v10 = v8;
              v24[0] = 0;
              v11 = v9;
              if ([v10 startAtTime:v24 error:0.0])
              {
                v12 = v24[0];
                v13 = Logger.logObject.getter();
                v14 = static os_log_type_t.default.getter();
                if (os_log_type_enabled(v13, v14))
                {
                  v15 = swift_slowAlloc();
                  *v15 = 0;
                  _os_log_impl(&dword_23B824000, v13, v14, "... done playing shot haptic.", v15, 2u);
                  MEMORY[0x23EEB0B70](v15, -1, -1);
                }

                swift_unknownObjectRelease();
LABEL_25:

                return;
              }

              v20 = v24[0];
              v19 = _convertNSErrorToError(_:)();

              swift_willThrow();
              swift_unknownObjectRelease();
            }

            else
            {
              v18 = v24[0];
              v19 = _convertNSErrorToError(_:)();

              swift_willThrow();
            }

            v13 = Logger.logObject.getter();
            v21 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v13, v21))
            {
              v22 = swift_slowAlloc();
              *v22 = 0;
              _os_log_impl(&dword_23B824000, v13, v21, "Failed to play the shot haptic pattern!", v22, 2u);
              MEMORY[0x23EEB0B70](v22, -1, -1);
            }

            goto LABEL_25;
          }

LABEL_29:
          __break(1u);
          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_29;
    }

    oslog = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(oslog, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_23B824000, oslog, v16, "... not play haptic.  Haptics was disabled.", v17, 2u);
      MEMORY[0x23EEB0B70](v17, -1, -1);
    }
  }
}

void HapticManager.createAndStartHapticEngine()()
{
  v35 = *MEMORY[0x277D85DE8];
  if (*(v0 + 17) != 1)
  {
    return;
  }

  v1 = [objc_opt_self() sharedInstance];
  aBlock = 0;
  v2 = [objc_allocWithZone(MEMORY[0x277CBF6B0]) initWithAudioSession:v1 error:&aBlock];
  v3 = aBlock;
  if (!v2)
  {
LABEL_19:
    v26 = v3;
    v27 = _convertNSErrorToError(_:)();

    swift_willThrow();
    aBlock = 0;
    v29 = 0xE000000000000000;
    _StringGuts.grow(_:)(32);
    MEMORY[0x23EEAF590](0xD00000000000001ELL, 0x800000023B925AF0);
    v34 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    _print_unlocked<A, B>(_:_:)();
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v4 = *(v0 + 24);
  *(v0 + 24) = v2;
  v1 = v2;

  v32 = partial apply for closure #1 in HapticManager.createAndStartHapticEngine();
  v33 = v0;
  aBlock = MEMORY[0x277D85DD0];
  v29 = 1107296256;
  v30 = thunk for @escaping @callee_guaranteed (@unowned CHHapticEngineStoppedReason) -> ();
  v31 = &block_descriptor_22;
  v5 = _Block_copy(&aBlock);

  [v1 setStoppedHandler_];
  _Block_release(v5);

  v6 = *(v0 + 24);
  if (!v6)
  {
    __break(1u);
    goto LABEL_18;
  }

  v32 = partial apply for closure #2 in HapticManager.createAndStartHapticEngine();
  v33 = v0;
  aBlock = MEMORY[0x277D85DD0];
  v29 = 1107296256;
  v30 = thunk for @escaping @callee_guaranteed () -> ();
  v31 = &block_descriptor_25;
  v1 = _Block_copy(&aBlock);

  v7 = v6;

  [v7 setResetHandler_];
  _Block_release(v1);

  v3 = *(v0 + 24);
  if (!v3)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  aBlock = 0;
  v8 = [v3 startAndReturnError_];
  v9 = aBlock;
  if (v8)
  {
    *(v0 + 18) = 0;
    v10 = one-time initialization token for logger;
    v11 = v9;
    if (v10 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, logger);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_23B824000, v13, v14, "Successfully started the haptic engine!", v15, 2u);
      MEMORY[0x23EEB0B70](v15, -1, -1);
    }
  }

  else
  {
    v16 = aBlock;
    v17 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, logger);
    v19 = v17;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      v24 = v17;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 4) = v25;
      *v23 = v25;
      _os_log_impl(&dword_23B824000, v20, v21, "The engine failed to start with error: %@", v22, 0xCu);
      outlined destroy of PerspectiveCameraComponent?(v23, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x23EEB0B70](v23, -1, -1);
      MEMORY[0x23EEB0B70](v22, -1, -1);
    }

    else
    {
    }
  }
}

void closure #1 in HapticManager.createAndStartHapticEngine()(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, logger);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = a1;
    _os_log_impl(&dword_23B824000, v5, v6, "Stop Handler: The engine stopped for reason: %ld", v7, 0xCu);
    MEMORY[0x23EEB0B70](v7, -1, -1);
  }

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  v10 = os_log_type_enabled(v8, v9);
  if (a1 > 2)
  {
    if (a1 <= 4)
    {
      if (a1 == 3)
      {
        if (v10)
        {
          v11 = "Idle timeout.";
          goto LABEL_29;
        }
      }

      else if (v10)
      {
        v11 = "Finished.";
LABEL_29:
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_23B824000, v8, v9, v11, v12, 2u);
        MEMORY[0x23EEB0B70](v12, -1, -1);
        goto LABEL_30;
      }

      goto LABEL_30;
    }

    if (a1 == 5)
    {
      if (v10)
      {
        v11 = "Engine destroyed.";
        goto LABEL_29;
      }

      goto LABEL_30;
    }

    if (a1 == 6)
    {
      if (v10)
      {
        v11 = "Controller disconnected.";
        goto LABEL_29;
      }

      goto LABEL_30;
    }

LABEL_21:
    if (v10)
    {
      v11 = "Unknown error";
      goto LABEL_29;
    }

    goto LABEL_30;
  }

  if (a1 == -1)
  {
    if (v10)
    {
      v11 = "System error.";
      goto LABEL_29;
    }

    goto LABEL_30;
  }

  if (a1 == 1)
  {
    if (v10)
    {
      v11 = "Audio session interrupt.";
      goto LABEL_29;
    }

    goto LABEL_30;
  }

  if (a1 != 2)
  {
    goto LABEL_21;
  }

  if (v10)
  {
    v11 = "Application suspended.";
    goto LABEL_29;
  }

LABEL_30:

  *(a2 + 18) = 1;
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned CHHapticEngineStoppedReason) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void closure #2 in HapticManager.createAndStartHapticEngine()(uint64_t a1)
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23B824000, v3, v4, "The engine reset --> Restarting now!", v5, 2u);
    MEMORY[0x23EEB0B70](v5, -1, -1);
  }

  *(a1 + 18) = 1;
}

void HapticManager.startHapticEngineIfNecessary()()
{
  v13[1] = *MEMORY[0x277D85DE8];
  if (*(v0 + 18) == 1)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, logger);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_23B824000, v2, v3, "Starting the haptic engine...", v4, 2u);
      MEMORY[0x23EEB0B70](v4, -1, -1);
    }

    v5 = *(v0 + 24);
    if (v5)
    {
      v13[0] = 0;
      v6 = [v5 startAndReturnError_];
      v7 = v13[0];
      if (v6)
      {
        *(v0 + 18) = 0;
        v8 = v7;
        v9 = Logger.logObject.getter();
        v10 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          *v11 = 0;
          _os_log_impl(&dword_23B824000, v9, v10, "... successfully started the haptic engine!", v11, 2u);
          MEMORY[0x23EEB0B70](v11, -1, -1);
        }
      }

      else
      {
        v12 = v13[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void HapticManager.stopHapticEngine()()
{
  v1 = v0;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23B824000, v3, v4, "Stopping the haptic engine...", v5, 2u);
    MEMORY[0x23EEB0B70](v5, -1, -1);
  }

  v6 = *(v1 + 24);
  if (v6)
  {
    v9[4] = partial apply for closure #1 in HapticManager.stopHapticEngine();
    v9[5] = v1;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
    v9[3] = &block_descriptor_3;
    v7 = _Block_copy(v9);
    v8 = v6;

    [v8 stopWithCompletionHandler_];
    _Block_release(v7);
  }

  else
  {
    __break(1u);
  }
}

void closure #1 in HapticManager.stopHapticEngine()(NSObject *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = a1;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, logger);
    v5 = a1;
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      v9 = a1;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v10;
      *v8 = v10;
      _os_log_impl(&dword_23B824000, oslog, v6, "Haptic Engine Shutdown Error: %@", v7, 0xCu);
      outlined destroy of PerspectiveCameraComponent?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x23EEB0B70](v8, -1, -1);
      MEMORY[0x23EEB0B70](v7, -1, -1);

      v11 = oslog;
    }

    else
    {

      v11 = a1;
    }
  }

  else
  {
    *(a2 + 18) = 1;
  }
}

void specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo18CHHapticPatternKeyaypGMd, &_ss18_DictionaryStorageCySo18CHHapticPatternKeyaypGMR);
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v7 = 0;
  while (v4)
  {
LABEL_15:
    v10 = (v7 << 9) | (8 * __clz(__rbit64(v4)));
    v11 = *(*(a1 + 48) + v10);
    v23 = *(*(a1 + 56) + v10);
    v12 = v11;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDySo18CHHapticPatternKeyaSDyABypGGGMd, &_sSaySDySo18CHHapticPatternKeyaSDyABypGGGMR);
    swift_dynamicCast();
    outlined init with take of Any(&v24[8], v22);
    outlined init with take of Any(v22, v24);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    Hasher.init(_seed:)();
    String.hash(into:)();
    v13 = Hasher._finalize()();

    v14 = -1 << *(v1 + 32);
    v15 = v13 & ~v14;
    v16 = v15 >> 6;
    if (((-1 << v15) & ~*(v6 + 8 * (v15 >> 6))) == 0)
    {
      v17 = 0;
      v18 = (63 - v14) >> 6;
      while (++v16 != v18 || (v17 & 1) == 0)
      {
        v19 = v16 == v18;
        if (v16 == v18)
        {
          v16 = 0;
        }

        v17 |= v19;
        v20 = *(v6 + 8 * v16);
        if (v20 != -1)
        {
          v8 = __clz(__rbit64(~v20)) + (v16 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v8 = __clz(__rbit64((-1 << v15) & ~*(v6 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v6 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
    v4 &= v4 - 1;
    *(*(v1 + 48) + 8 * v8) = v12;
    outlined init with take of Any(v24, (*(v1 + 56) + 32 * v8));
    ++*(v1 + 16);
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v5)
    {

      return;
    }

    v4 = *(a1 + 64 + 8 * v9);
    ++v7;
    if (v4)
    {
      v7 = v9;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

uint64_t HapticManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id @nonobjc CHHapticPattern.init(dictionary:)(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  type metadata accessor for CHHapticPatternKey(0);
  lazy protocol witness table accessor for type CHHapticPatternKey and conformance CHHapticPatternKey();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v7[0] = 0;
  v3 = [v1 initWithDictionary:isa error:v7];

  if (v3)
  {
    v4 = v7[0];
  }

  else
  {
    v5 = v7[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v3;
}

id specialized HapticManager.createShotHapticPattern()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo18CHHapticPatternKeya_SaySDyADSDyADypGGGtGMd, &_ss23_ContiguousArrayStorageCySo18CHHapticPatternKeya_SaySDyADSDyADypGGGtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23B91A6F0;
  v31 = *MEMORY[0x277CBF688];
  *(inited + 32) = *MEMORY[0x277CBF688];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySDySo18CHHapticPatternKeyaSDyADypGGGMd, &_ss23_ContiguousArrayStorageCySDySo18CHHapticPatternKeyaSDyADypGGGMR);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_23B91A6F0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo18CHHapticPatternKeya_SDyADypGtGMd, &_ss23_ContiguousArrayStorageCySo18CHHapticPatternKeya_SDyADypGtGMR);
  v1 = swift_initStackObject();
  *(v1 + 16) = xmmword_23B91A6F0;
  v2 = *MEMORY[0x277CBF658];
  *(v1 + 32) = *MEMORY[0x277CBF658];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo18CHHapticPatternKeya_yptGMd, &_ss23_ContiguousArrayStorageCySo18CHHapticPatternKeya_yptGMR);
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_23B91A6D0;
  v4 = *MEMORY[0x277CBF670];
  *(v3 + 32) = *MEMORY[0x277CBF670];
  v5 = *MEMORY[0x277CBF650];
  type metadata accessor for CHHapticEventType(0);
  *(v3 + 40) = v5;
  v6 = *MEMORY[0x277CBF690];
  *(v3 + 64) = v7;
  *(v3 + 72) = v6;
  v8 = MEMORY[0x277D839F8];
  *(v3 + 80) = 0;
  v9 = *MEMORY[0x277CBF660];
  *(v3 + 104) = v8;
  *(v3 + 112) = v9;
  *(v3 + 144) = v8;
  *(v3 + 120) = 0x3FE0000000000000;
  v10 = v31;
  v11 = v2;
  v12 = v4;
  v13 = v5;
  v14 = v6;
  v15 = v9;
  v16 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo18CHHapticPatternKeya_ypTt0g5Tf4g_n(v3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18CHHapticPatternKeya_yptMd, &_sSo18CHHapticPatternKeya_yptMR);
  swift_arrayDestroy();
  *(v1 + 40) = v16;
  v17 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo18CHHapticPatternKeya_SDyADypGTt0g5Tf4g_n(v1);
  swift_setDeallocating();
  outlined destroy of PerspectiveCameraComponent?(v1 + 32, &_sSo18CHHapticPatternKeya_SDyABypGtMd, &_sSo18CHHapticPatternKeya_SDyABypGtMR);
  *(v32 + 32) = v17;
  *(inited + 40) = v32;
  v18 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo18CHHapticPatternKeya_SaySDyADSDyADypGGGTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of PerspectiveCameraComponent?(inited + 32, &_sSo18CHHapticPatternKeya_SaySDyABSDyABypGGGtMd, &_sSo18CHHapticPatternKeya_SaySDyABSDyABypGGGtMR);
  specialized _dictionaryUpCast<A, B, C, D>(_:)(v18);
  v20 = v19;

  v21 = objc_allocWithZone(MEMORY[0x277CBF6D0]);
  v22 = @nonobjc CHHapticPattern.init(dictionary:)(v20);
  v27 = v22;
  if (v22)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, logger);
    v24 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v29))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_23B824000, v24, v29, "Created the shot haptic pattern!", v26, 2u);
      goto LABEL_12;
    }
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, logger);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_23B824000, v24, v25, "Can't create the shot haptic pattern!", v26, 2u);
      v27 = 0;
LABEL_12:
      MEMORY[0x23EEB0B70](v26, -1, -1);
      goto LABEL_13;
    }

    v27 = 0;
  }

LABEL_13:

  return v27;
}

unint64_t lazy protocol witness table accessor for type CHHapticPatternKey and conformance CHHapticPatternKey()
{
  result = lazy protocol witness table cache variable for type CHHapticPatternKey and conformance CHHapticPatternKey;
  if (!lazy protocol witness table cache variable for type CHHapticPatternKey and conformance CHHapticPatternKey)
  {
    type metadata accessor for CHHapticPatternKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CHHapticPatternKey and conformance CHHapticPatternKey);
  }

  return result;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t static RangefinderManager.raycastOntoScene(clipSpacePoint:scene:maxDistance:)@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v5 = type metadata accessor for CollisionGroup();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Type = type metadata accessor for CollisionCastQueryType();
  v10 = *(Type - 8);
  MEMORY[0x28223BE20](Type);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  active = dispatch thunk of Scene.internalActiveCamera.getter();
  if (active)
  {
    specialized static Ray3D.worldRay(through:using:)(active, v26, a2);
    if ((v27 & 1) == 0)
    {
      v25[0] = v26[0];
      v25[1] = v26[1];
      (*(v10 + 104))(v12, *MEMORY[0x277CDAE48], Type);
      static CollisionGroup.all.getter();
      v21 = Scene.raycast(origin:direction:length:query:mask:relativeTo:)();
      (*(v6 + 8))(v8, v5);
      (*(v10 + 8))(v12, Type);
      if (*(v21 + 16))
      {
        v22 = type metadata accessor for CollisionCastHit();
        v23 = *(v22 - 8);
        (*(v23 + 16))(a1, v21 + ((*(v23 + 80) + 32) & ~*(v23 + 80)), v22);

        return (*(v23 + 56))(a1, 0, 1, v22);
      }

      else
      {

        v24 = type metadata accessor for CollisionCastHit();
        return (*(*(v24 - 8) + 56))(a1, 1, 1, v24);
      }
    }
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, logger);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_23B824000, v15, v16, "Can't get a camera to raycast!", v17, 2u);
    MEMORY[0x23EEB0B70](v17, -1, -1);
  }

  v18 = type metadata accessor for CollisionCastHit();
  v19 = *(*(v18 - 8) + 56);

  return v19(a1, 1, 1, v18);
}

uint64_t RangefinderManager.init(from:using:)(_OWORD *a1, void *a2)
{
  v3 = v2;
  *(v3 + 44) = 0;
  *(v3 + 56) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 64) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 80) = 0;
  *(v3 + 16) = *a1;
  *(v3 + 28) = *(a1 + 12);
  swift_unknownObjectWeakAssign();
  type metadata accessor for RaycastMeshTrackingEntity(0);
  swift_allocObject();

  *(v3 + 80) = RaycastMeshTrackingEntity.init(descriptor:using:manager:)(a1, a2, v3);

  return v3;
}

Swift::Void __swiftcall RangefinderManager.detach()()
{
  if (*(v0 + 44) != 1)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, logger);
    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(oslog, v8))
    {
      goto LABEL_18;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "Rangefinder is not attached... cannot detach!";
    goto LABEL_17;
  }

  v1 = v0;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23B824000, v3, v4, "Detaching Rangefinder entity...", v5, 2u);
    MEMORY[0x23EEB0B70](v5, -1, -1);
  }

  *(v1 + 44) = 0;
  if (!*(v1 + 80))
  {
    __break(1u);
    goto LABEL_22;
  }

  type metadata accessor for RaycastMeshTrackingEntity(0);

  HasHierarchy.removeFromParent(preservingWorldTransform:)(0);

  v6 = *(v1 + 80);
  if (!v6)
  {
LABEL_22:
    __break(1u);
    return;
  }

  *(v6 + direct field offset for RaycastMeshTrackingEntity.scaleFilter) = 0;

  *(v6 + direct field offset for RaycastMeshTrackingEntity.rotationFilter) = 0;

  v7 = *(v1 + 64);
  *(v1 + 64) = 0;
  if (v7 && swift_unknownObjectWeakLoadStrong())
  {
    specialized RangefinderObserver.zoneDidChange(_:)(0);
    swift_unknownObjectRelease();
  }

  oslog = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(oslog, v8))
  {
    goto LABEL_18;
  }

  v9 = swift_slowAlloc();
  *v9 = 0;
  v10 = "... detached Rangefinder entity.";
LABEL_17:
  _os_log_impl(&dword_23B824000, oslog, v8, v10, v9, 2u);
  MEMORY[0x23EEB0B70](v9, -1, -1);
LABEL_18:
}

uint64_t RangefinderManager.__deallocating_deinit()
{
  outlined destroy of weak RangefinderDelegate?(v0 + 48);
  MEMORY[0x23EEB0C40](v0 + 72);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RaycastMeshTrackingEntity(uint64_t a1)
{
  result = type metadata singleton initialization cache for RaycastMeshTrackingEntity;
  if (!type metadata singleton initialization cache for RaycastMeshTrackingEntity)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t one-time initialization function for query()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14QueryPredicateVy0A3Kit6EntityCGMd, &_s17RealityFoundation14QueryPredicateVy0A3Kit6EntityCGMR);
  MEMORY[0x28223BE20](v0 - 8);
  v1 = type metadata accessor for EntityQuery();
  __swift_allocate_value_buffer(v1, static RaycastMeshTrackingComponent.query);
  __swift_project_value_buffer(v1, static RaycastMeshTrackingComponent.query);
  v2 = type metadata accessor for Entity();
  lazy protocol witness table accessor for type RaycastMeshTrackingComponent and conformance RaycastMeshTrackingComponent(v2, v3, v4);
  static QueryPredicate.has<A>(_:)();
  return EntityQuery.init(where:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14QueryPredicateVy0A3Kit6EntityCGMd, &_s17RealityFoundation14QueryPredicateVy0A3Kit6EntityCGMR);
  MEMORY[0x28223BE20](v0 - 8);
  v1 = type metadata accessor for EntityQuery();
  __swift_allocate_value_buffer(v1, static ImplicitAnimationSystem.query);
  __swift_project_value_buffer(v1, static ImplicitAnimationSystem.query);
  v2 = type metadata accessor for Entity();
  lazy protocol witness table accessor for type ImplicitAnimationComponent and conformance ImplicitAnimationComponent(v2, v3, v4);
  static QueryPredicate.has<A>(_:)();
  return EntityQuery.init(where:)();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RaycastMeshTrackingComponent.ReticleDescriptor.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = lazy protocol witness table accessor for type RaycastMeshTrackingComponent.ReticleDescriptor.CodingKeys and conformance RaycastMeshTrackingComponent.ReticleDescriptor.CodingKeys(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RaycastMeshTrackingComponent.ReticleDescriptor.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = lazy protocol witness table accessor for type RaycastMeshTrackingComponent.ReticleDescriptor.CodingKeys and conformance RaycastMeshTrackingComponent.ReticleDescriptor.CodingKeys(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

Swift::Float __swiftcall RaycastMeshTrackingComponent.computeAlpha(distance:)(Swift::Float distance)
{
  v3 = v1[4];
  v2 = v1[5];
  v4 = 0.0;
  if (v3 > distance || v2 < distance)
  {
    return v4;
  }

  v6 = v1[6];
  if (v3 > (v3 + v6))
  {
    __break(1u);
  }

  else
  {
    if ((v3 + v6) > distance)
    {
      v7 = distance - v3;
      return v7 / v6;
    }

    if ((v2 - v6) <= v2)
    {
      v4 = 1.0;
      if (v2 <= distance || (v2 - v6) > distance)
      {
        return v4;
      }

      v7 = v2 - distance;
      return v7 / v6;
    }
  }

  __break(1u);
  return distance;
}

uint64_t RaycastMeshTrackingComponent.ReticleDescriptor.encode(to:)(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v7 = v5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v15 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = *v7;
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD2VySfGMd, &_ss5SIMD2VySfGMR);
  lazy protocol witness table accessor for type SIMD2<Float> and conformance SIMD2<A>(&lazy protocol witness table cache variable for type SIMD2<Float> and conformance SIMD2<A>, MEMORY[0x277D84AD0]);
  v13 = v15;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v13)
  {
    LOBYTE(v17) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v17) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = v7[2];
    v16 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySfGMd, &_sSnySfGMR);
    lazy protocol witness table accessor for type Range<Float> and conformance <> Range<A>(&lazy protocol witness table cache variable for type Range<Float> and conformance <> Range<A>, MEMORY[0x277D83AA0], MEMORY[0x277D83D08]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v17) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v10 + 8))(v12, v9);
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance RaycastMeshTrackingComponent.ReticleDescriptor.CodingKeys()
{
  v1 = *v0;
  v2 = 0x737569646172;
  v3 = 0x696361704F78616DLL;
  if (v1 == 3)
  {
    v4 = 0xD000000000000012;
  }

  else
  {
    v4 = 0x697469736E617274;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RaycastMeshTrackingComponent.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = lazy protocol witness table accessor for type RaycastMeshTrackingComponent.CodingKeys and conformance RaycastMeshTrackingComponent.CodingKeys(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RaycastMeshTrackingComponent.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = lazy protocol witness table accessor for type RaycastMeshTrackingComponent.CodingKeys and conformance RaycastMeshTrackingComponent.CodingKeys(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

double protocol witness for Decodable.init(from:) in conformance RaycastMeshTrackingComponent.ReticleDescriptor@<D0>(void (*a1)(_OWORD *__return_ptr)@<X3>, _OWORD *a2@<X8>)
{
  a1(v5);
  if (!v2)
  {
    *a2 = v5[0];
    result = *(v5 + 12);
    *(a2 + 12) = *(v5 + 12);
  }

  return result;
}

uint64_t RaycastMeshTrackingEntity.init()()
{
  *(v0 + direct field offset for RaycastMeshTrackingEntity.manager) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + direct field offset for RaycastMeshTrackingEntity.lastGoodScale) = 1065353216;
  *(v0 + direct field offset for RaycastMeshTrackingEntity.rotationFilter) = 0;
  *(v0 + direct field offset for RaycastMeshTrackingEntity.scaleFilter) = 0;
  *(v0 + direct field offset for RaycastMeshTrackingEntity.fadeFilter) = 0;
  *(v0 + direct field offset for RaycastMeshTrackingEntity.cameraZFilter) = 0;
  *(v0 + direct field offset for RaycastMeshTrackingEntity.ringEntity) = 0;
  *(v0 + direct field offset for RaycastMeshTrackingEntity.sphereEntity) = 0;
  *(v0 + direct field offset for RaycastMeshTrackingEntity.useScaleFilter) = 1;
  *(v0 + direct field offset for RaycastMeshTrackingEntity.loadTask) = 0;

  return Entity.init()();
}

uint64_t RaycastMeshTrackingEntity.init(descriptor:using:manager:)(_OWORD *a1, void *a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v49 = &v42 - v8;
  v9 = type metadata accessor for UnlitMaterial();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v50 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Entity.ComponentSet();
  v45 = *(v12 - 8);
  v46 = v12;
  MEMORY[0x28223BE20](v12);
  v44 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + direct field offset for RaycastMeshTrackingEntity.manager) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + direct field offset for RaycastMeshTrackingEntity.lastGoodScale) = 1065353216;
  *(v3 + direct field offset for RaycastMeshTrackingEntity.rotationFilter) = 0;
  *(v3 + direct field offset for RaycastMeshTrackingEntity.scaleFilter) = 0;
  *(v3 + direct field offset for RaycastMeshTrackingEntity.fadeFilter) = 0;
  *(v3 + direct field offset for RaycastMeshTrackingEntity.cameraZFilter) = 0;
  *(v3 + direct field offset for RaycastMeshTrackingEntity.ringEntity) = 0;
  *(v3 + direct field offset for RaycastMeshTrackingEntity.sphereEntity) = 0;
  *(v3 + direct field offset for RaycastMeshTrackingEntity.useScaleFilter) = 1;
  *(v3 + direct field offset for RaycastMeshTrackingEntity.loadTask) = 0;
  v14 = Entity.init()();
  swift_unknownObjectWeakAssign();
  *(v14 + direct field offset for RaycastMeshTrackingEntity.manager) = a3;

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  v48 = __swift_project_value_buffer(v15, logger);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  v18 = os_log_type_enabled(v16, v17);
  v47 = a1;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v51 = v43;
    *v19 = 136315138;
    *v52 = *a1;
    *&v52[12] = *(a1 + 12);
    v20 = String.init<A>(describing:)();
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v51);

    *(v19 + 4) = v22;
    _os_log_impl(&dword_23B824000, v16, v17, "Creating a rangefinder reticle entity: %s", v19, 0xCu);
    v23 = v43;
    __swift_destroy_boxed_opaque_existential_0Tm(v43);
    MEMORY[0x23EEB0B70](v23, -1, -1);
    MEMORY[0x23EEB0B70](v19, -1, -1);
  }

  v24 = v50;
  if (static RaycastMeshTrackingEntity.isFirstInstance == 1)
  {
    type metadata accessor for RaycastMeshTrackingSystem();
    lazy protocol witness table accessor for type RaycastMeshTrackingSystem and conformance RaycastMeshTrackingSystem();
    static System.registerSystem()();
    static RaycastMeshTrackingEntity.isFirstInstance = 0;
  }

  v25 = v44;
  dispatch thunk of Entity.components.getter();

  v27 = *(v47 + 6);
  *v52 = *v47;
  *&v52[8] = *(v47 + 8);
  *&v52[24] = v27;
  lazy protocol witness table accessor for type RaycastMeshTrackingComponent and conformance RaycastMeshTrackingComponent(v26, v28, v29);
  Entity.ComponentSet.set<A>(_:)();
  (*(v45 + 8))(v25, v46);
  [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
  UnlitMaterial.init(color:)();
  v30 = type metadata accessor for TaskPriority();
  v31 = v49;
  (*(*(v30 - 8) + 56))(v49, 1, 1, v30);
  type metadata accessor for MainActor();

  v32 = static MainActor.shared.getter();
  v33 = swift_allocObject();
  v34 = MEMORY[0x277D85700];
  v33[2] = v32;
  v33[3] = v34;
  v33[4] = v14;
  *(v14 + direct field offset for RaycastMeshTrackingEntity.loadTask) = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v31, &async function pointer to partial apply for closure #1 in RaycastMeshTrackingEntity.startLoadingRingEntity(), v33);

  type metadata accessor for MeshResource();
  static MeshResource.generateSphere(radius:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit8Material_pGMd, &_ss23_ContiguousArrayStorageCy10RealityKit8Material_pGMR);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_23B91A6F0;
  v36 = MEMORY[0x277CDAC30];
  *(v35 + 56) = v9;
  *(v35 + 64) = v36;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v35 + 32));
  (*(v10 + 16))(boxed_opaque_existential_1, v24, v9);
  type metadata accessor for ModelEntity();
  swift_allocObject();
  *(v14 + direct field offset for RaycastMeshTrackingEntity.sphereEntity) = ModelEntity.init(mesh:materials:)();

  type metadata accessor for RaycastMeshTrackingEntity(0);
  HasHierarchy.addChild(_:preservingWorldTransform:)();

  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_23B824000, v38, v39, "... done loading reticle geometry!", v40, 2u);
    MEMORY[0x23EEB0B70](v40, -1, -1);
  }

  else
  {
  }

  (*(v10 + 8))(v24, v9);
  return v14;
}

Swift::Void __swiftcall RaycastMeshTrackingEntity.targetOrientation(_:dt:)(simd_quatf *_, Swift::Double dt)
{
  v4 = v3;
  v5 = *&dt;
  v6 = direct field offset for RaycastMeshTrackingEntity.rotationFilter;
  v7 = *(v2 + direct field offset for RaycastMeshTrackingEntity.rotationFilter);
  if (v7)
  {
    v8 = *(v7 + 16);
    v9 = *(v7 + 48);
  }

  else
  {
    v14 = *&dt;
    type metadata accessor for RotationFilter();
    v7 = swift_allocObject();
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of RotationFilter.init(alphaDensity:startValue:));
    HIDWORD(v10) = 1.0;
    *(v7 + 32) = v10;
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #1 of RotationFilter.init(alphaDensity:startValue:));
    v5 = v14;
    *(v7 + 16) = 0x4000000000000000;
    *(v7 + 32) = v14;
    *(v7 + 48) = v14;
    *(v2 + v6) = v7;
    v8 = 2.0;
    v9 = v14;
  }

  *(v7 + 32) = v5;
  v11 = v8 * v4;
  if (v11 <= 0.0)
  {
    v11 = 0.0;
  }

  v12 = 1.0;
  if (v11 <= 1.0)
  {
    v12 = v11;
  }

  simd_slerp(v9, v5, v12);
  *(v7 + 48) = v13;
  type metadata accessor for RaycastMeshTrackingEntity(0);

  HasTransform.setOrientation(_:relativeTo:)();
}

uint64_t RaycastMeshTrackingEntity.targetScale(_:dt:)(__n128 a1, double a2)
{
  v4 = direct field offset for RaycastMeshTrackingEntity.scaleFilter;
  v5 = *(v2 + direct field offset for RaycastMeshTrackingEntity.scaleFilter);
  v13 = a1;
  if (v5)
  {
    v14 = *(v5 + 48);
  }

  else
  {
    type metadata accessor for Vec3Filter();
    v6 = swift_allocObject();
    a1 = v13;
    v5 = v6;
    *(v6 + 16) = 0x4000000000000000;
    *(v6 + 32) = v13;
    *(v6 + 48) = v13;
    *(v2 + v4) = v6;
    v14 = v13;
  }

  *(v5 + 32) = a1;
  v7 = a2 + a2;
  if (v7 <= 0.0)
  {
    v7 = 0.0;
  }

  if (v7 <= 1.0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 1.0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23B91A6D0;
  *(inited + 32) = v8;
  *(inited + 36) = v8;
  *(inited + 40) = v8;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(inited);
  v12 = v10;
  swift_setDeallocating();
  *(v5 + 48) = vmlaq_f32(v14, vsubq_f32(v13, v14), v12);
  type metadata accessor for RaycastMeshTrackingEntity(0);
  return HasTransform.setScale(_:relativeTo:)();
}

Swift::Void __swiftcall RaycastMeshTrackingEntity.targetFade(_:dt:)(Swift::Float _, Swift::Double dt)
{
  v5 = type metadata accessor for __EntityRef();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = direct field offset for RaycastMeshTrackingEntity.fadeFilter;
  v10 = *(v2 + direct field offset for RaycastMeshTrackingEntity.fadeFilter);
  if (v10)
  {
    v11 = *(v10 + 16);
    v12 = *(v10 + 28);
  }

  else
  {
    type metadata accessor for FloatFilter();
    v10 = swift_allocObject();
    *(v10 + 16) = 0x400C000000000000;
    *(v10 + 24) = _;
    *(v10 + 28) = _;
    *(v2 + v9) = v10;
    v11 = 3.5;
    v12 = _;
  }

  v13 = v11 * dt;
  v14 = 1.0;
  if (v13 <= 1.0)
  {
    v14 = v13;
  }

  v15 = v13 > 0.0;
  v16 = 0.0;
  if (v15)
  {
    v16 = v14;
  }

  *(v10 + 24) = _;
  *(v10 + 28) = v12 + ((_ - v12) * v16);
  dispatch thunk of Entity.__coreEntity.getter();
  MEMORY[0x23EEAC640](&v19, MEMORY[0x277D841D8], MEMORY[0x277D841D8]);
  (*(v6 + 8))(v8, v5);
  REHierarchicalFadeComponentGetComponentType();
  v17 = REEntityGetOrAddComponentByClass();
  REHierarchicalFadeComponentSetOpacity();
  MEMORY[0x23EEB00C0](v17);
}

uint64_t RaycastMeshTrackingEntity.targetPosition(_:viewToWorld:dt:)(__n128 a1, simd_float4 a2, simd_float4 a3, simd_float4 a4, simd_float4 a5, double a6)
{
  v27.columns[0] = a2;
  v27.columns[1] = a3;
  v27.columns[2] = a4;
  v27.columns[3] = a5;
  v24 = __invert_f4(v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23B91A6E0;
  *(inited + 32) = a1.n128_u64[0];
  *(inited + 40) = a1.n128_u32[2];
  *(inited + 44) = 1065353216;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(inited);
  v23 = v9;
  swift_setDeallocating();
  v25 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v24.columns[0], v23.f32[0]), v24.columns[1], *v23.f32, 1), v24.columns[2], v23, 2), v24.columns[3], v23, 3);
  v10 = direct field offset for RaycastMeshTrackingEntity.cameraZFilter;
  v11 = *(v6 + direct field offset for RaycastMeshTrackingEntity.cameraZFilter);
  if (!v11)
  {
    type metadata accessor for FloatFilter();
    v11 = swift_allocObject();
    *(v11 + 16) = 0x4014000000000000;
    *(v11 + 24) = v25.i32[2];
    *(v11 + 28) = v25.i32[2];
    *(v6 + v10) = v11;
  }

  *(v11 + 24) = v25.i32[2];
  v12 = v11;
  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_23B91A6D0;
  *(v13 + 32) = v25.i64[0];
  v14 = *(v12 + 16) * a6;
  v15 = 1.0;
  if (v14 <= 1.0)
  {
    v15 = *(v12 + 16) * a6;
  }

  v16 = v14 > 0.0;
  v17 = 0.0;
  if (v16)
  {
    v17 = v15;
  }

  v18 = *(v12 + 28) + ((v25.f32[2] - *(v12 + 28)) * v17);
  *(v12 + 28) = v18;
  *(v13 + 40) = v18;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(v13);
  v26 = v19;
  swift_setDeallocating();
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_23B91A6E0;
  *(v20 + 32) = v26;
  *(v20 + 40) = DWORD2(v26);
  *(v20 + 44) = 1065353216;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(v20);
  swift_setDeallocating();
  type metadata accessor for RaycastMeshTrackingEntity(0);

  HasTransform.setPosition(_:relativeTo:)();
}

uint64_t RaycastMeshTrackingEntity.__ivar_destroyer()
{

  MEMORY[0x23EEB0C40](v0 + direct field offset for RaycastMeshTrackingEntity.arView);
}

uint64_t RaycastMeshTrackingEntity.deinit()
{
  v1 = direct field offset for RaycastMeshTrackingEntity.loadTask;
  if (*(v0 + direct field offset for RaycastMeshTrackingEntity.loadTask))
  {

    MEMORY[0x23EEAF7A0](v2, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
  }

  *(v0 + v1) = 0;

  v3 = Entity.deinit();

  MEMORY[0x23EEB0C40](v3 + direct field offset for RaycastMeshTrackingEntity.arView);

  return v3;
}

uint64_t RaycastMeshTrackingEntity.__deallocating_deinit()
{
  RaycastMeshTrackingEntity.deinit();

  return swift_deallocClassInstance();
}

uint64_t closure #1 in RaycastMeshTrackingEntity.startLoadingRingEntity()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = type metadata accessor for UnlitMaterial();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[10] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[11] = v7;
  v4[12] = v6;

  return MEMORY[0x2822009F8](closure #1 in RaycastMeshTrackingEntity.startLoadingRingEntity(), v7, v6);
}

uint64_t closure #1 in RaycastMeshTrackingEntity.startLoadingRingEntity()()
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[13] = __swift_project_value_buffer(v1, logger);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_23B824000, v2, v3, "Async loading the reticle model...", v4, 2u);
    MEMORY[0x23EEB0B70](v4, -1, -1);
  }

  v0[14] = type metadata accessor for ModelEntity();
  if (one-time initialization token for bundle != -1)
  {
    swift_once();
  }

  v5 = static BoundingBoxHelpers.bundle;
  v6 = static BoundingBoxHelpers.bundle;
  v7 = swift_task_alloc();
  v0[15] = v7;
  *v7 = v0;
  v7[1] = closure #1 in RaycastMeshTrackingEntity.startLoadingRingEntity();

  return MEMORY[0x282129BD0](0xD000000000000012, 0x800000023B925C70, v5);
}

{

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_23B824000, v1, v2, "Failed to load the reticle model!", v3, 2u);
    MEMORY[0x23EEB0B70](v3, -1, -1);
  }

  *(*(v0 + 48) + direct field offset for RaycastMeshTrackingEntity.loadTask) = 0;

  v4 = *(v0 + 8);

  return v4();
}

{

  [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
  UnlitMaterial.init(color:)();
  v1 = HasModel.model.modify();
  v3 = v2;
  v4 = type metadata accessor for ModelComponent();
  if (!(*(*(v4 - 8) + 48))(v3, 1, v4))
  {
    v6 = v0[8];
    v5 = v0[9];
    v7 = v0[7];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit8Material_pGMd, &_ss23_ContiguousArrayStorageCy10RealityKit8Material_pGMR);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_23B91A6F0;
    v9 = MEMORY[0x277CDAC30];
    *(v8 + 56) = v7;
    *(v8 + 64) = v9;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v8 + 32));
    (*(v6 + 16))(boxed_opaque_existential_1, v5, v7);
    ModelComponent.materials.setter();
  }

  v1(v0 + 2, 0);
  v11 = v0[16];
  v12 = v0[6];
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of closure #1 in RaycastMeshTrackingEntity.startLoadingRingEntity());
  HasTransform.scale.setter();
  v13 = direct field offset for RaycastMeshTrackingEntity.ringEntity;
  if (*(v12 + direct field offset for RaycastMeshTrackingEntity.ringEntity))
  {

    HasHierarchy.removeFromParent(preservingWorldTransform:)(0);
  }

  else
  {
  }

  *(v12 + v13) = v11;
  swift_retain_n();

  type metadata accessor for RaycastMeshTrackingEntity(0);
  HasHierarchy.addChild(_:preservingWorldTransform:)();

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  v16 = os_log_type_enabled(v14, v15);
  v18 = v0[8];
  v17 = v0[9];
  v19 = v0[7];
  if (v16)
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_23B824000, v14, v15, "... Done async loading the reticle model.", v20, 2u);
    MEMORY[0x23EEB0B70](v20, -1, -1);
  }

  else
  {
  }

  (*(v18 + 8))(v17, v19);
  *(v0[6] + direct field offset for RaycastMeshTrackingEntity.loadTask) = 0;

  v21 = v0[1];

  return v21();
}

uint64_t closure #1 in RaycastMeshTrackingEntity.startLoadingRingEntity()(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 128) = a1;

  if (v1)
  {

    v4 = *(v3 + 88);
    v5 = *(v3 + 96);
    v6 = closure #1 in RaycastMeshTrackingEntity.startLoadingRingEntity();
  }

  else
  {
    v4 = *(v3 + 88);
    v5 = *(v3 + 96);
    v6 = closure #1 in RaycastMeshTrackingEntity.startLoadingRingEntity();
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

double one-time initialization function for minimumReticleSizeMeters()
{
  result = 7.70312334e-27;
  minimumReticleSizeMeters = xmmword_23B91D830;
  return result;
}

uint64_t RaycastMeshTrackingSystem.init(scene:)()
{
  v1 = v0;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23B824000, v3, v4, "Initing RaycastMeshTrackingSystem...", v5, 2u);
    MEMORY[0x23EEB0B70](v5, -1, -1);
  }

  return v1;
}

__n128 __swift_memcpy28_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type RaycastMeshTrackingComponent and conformance RaycastMeshTrackingComponent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type RaycastMeshTrackingComponent and conformance RaycastMeshTrackingComponent;
  if (!lazy protocol witness table cache variable for type RaycastMeshTrackingComponent and conformance RaycastMeshTrackingComponent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RaycastMeshTrackingComponent and conformance RaycastMeshTrackingComponent);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RangefinderManager.Zone and conformance RangefinderManager.Zone(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type RangefinderManager.Zone and conformance RangefinderManager.Zone;
  if (!lazy protocol witness table cache variable for type RangefinderManager.Zone and conformance RangefinderManager.Zone)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RangefinderManager.Zone and conformance RangefinderManager.Zone);
  }

  return result;
}

uint64_t protocol witness for System.init(scene:) in conformance RaycastMeshTrackingSystem@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for RaycastMeshTrackingSystem();
  v2 = swift_allocObject();
  result = RaycastMeshTrackingSystem.init(scene:)();
  *a1 = v2;
  return result;
}

void specialized RangefinderManager.attach(attacher:)(uint64_t a1)
{
  if (*(a1 + 44) == 1)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, logger);
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(oslog, v2))
    {
      goto LABEL_14;
    }

    v3 = swift_slowAlloc();
    *v3 = 0;
    v4 = "Rangefinder is already attached... not attaching again!";
    goto LABEL_13;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, logger);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_23B824000, v7, v8, "Attaching Rangefinder entity...", v9, 2u);
    MEMORY[0x23EEB0B70](v9, -1, -1);
  }

  if (!*(a1 + 80))
  {
    __break(1u);
    return;
  }

  DataModel.addToScene(entity:)(v10);

  *(a1 + 44) = 1;
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    v4 = "... attached Rangefinder entity.";
LABEL_13:
    _os_log_impl(&dword_23B824000, oslog, v2, v4, v3, 2u);
    MEMORY[0x23EEB0B70](v3, -1, -1);
  }

LABEL_14:
}

void specialized static RangefinderManager.worldRayThrough(clipSpacePoint:scene:)(float32x4_t *a9@<X8>, double a10@<D0>)
{
  active = dispatch thunk of Scene.internalActiveCamera.getter();
  if (active && (specialized static Ray3D.worldRay(through:using:)(active, v22, a10), v20 = v22[1], v21 = v22[0], v13 = v23, , (v23 & 1) == 0))
  {
    v19 = v20;
    v18 = v21;
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, logger);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_23B824000, v15, v16, "Can't get a camera to raycast!", v17, 2u);
      MEMORY[0x23EEB0B70](v17, -1, -1);
    }

    v18 = 0uLL;
    v13 = 1;
    v19 = 0uLL;
  }

  *a9 = v18;
  a9[1] = v19;
  a9[2].i8[0] = v13;
}

uint64_t specialized RaycastMeshTrackingComponent.ReticleDescriptor.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19_RealityKit_SwiftUI28RaycastMeshTrackingComponentV17ReticleDescriptorV10CodingKeys09_91E6A1C2P22C8457E7BFC2D745D2CAA14LLOGMd, &_ss22KeyedDecodingContainerVy19_RealityKit_SwiftUI28RaycastMeshTrackingComponentV17ReticleDescriptorV10CodingKeys09_91E6A1C2P22C8457E7BFC2D745D2CAA14LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of RaycastMeshTrackingComponent.ReticleDescriptor.init(from:));
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type RaycastMeshTrackingComponent.ReticleDescriptor.CodingKeys and conformance RaycastMeshTrackingComponent.ReticleDescriptor.CodingKeys(v9, v10, v11);
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD2VySfGMd, &_ss5SIMD2VySfGMR);
  HIBYTE(v21) = 0;
  lazy protocol witness table accessor for type SIMD2<Float> and conformance SIMD2<A>(&lazy protocol witness table cache variable for type SIMD2<Float> and conformance SIMD2<A>, MEMORY[0x277D84AD8]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v12 = v22;
  LOBYTE(v22) = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v14 = v13;
  LOBYTE(v22) = 2;
  KeyedDecodingContainer.decode(_:forKey:)();
  v16 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySfGMd, &_sSnySfGMR);
  HIBYTE(v21) = 3;
  lazy protocol witness table accessor for type Range<Float> and conformance <> Range<A>(&lazy protocol witness table cache variable for type Range<Float> and conformance <> Range<A>, MEMORY[0x277D83AC8], MEMORY[0x277D83D38]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v17 = v22;
  LOBYTE(v22) = 4;
  KeyedDecodingContainer.decode(_:forKey:)();
  v19 = v18;
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  *a2 = v12;
  *(a2 + 8) = v14;
  *(a2 + 12) = v16;
  *(a2 + 16) = v17;
  *(a2 + 24) = v19;
  return result;
}

uint64_t specialized RaycastMeshTrackingComponent.ReticleDescriptor.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x800000023B925C90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x737569646172 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x696361704F78616DLL && a2 == 0xEA00000000007974 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x800000023B925CB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x697469736E617274 && a2 == 0xEF68746469576E6FLL)
  {

    return 4;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t specialized RaycastMeshTrackingComponent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19_RealityKit_SwiftUI28RaycastMeshTrackingComponentV10CodingKeys09_91E6A1C2N22C8457E7BFC2D745D2CAA14LLOGMd, &_ss22KeyedDecodingContainerVy19_RealityKit_SwiftUI28RaycastMeshTrackingComponentV10CodingKeys09_91E6A1C2N22C8457E7BFC2D745D2CAA14LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type RaycastMeshTrackingComponent.CodingKeys and conformance RaycastMeshTrackingComponent.CodingKeys(v9, v10, v11);
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD2VySfGMd, &_ss5SIMD2VySfGMR);
  HIBYTE(v21) = 0;
  lazy protocol witness table accessor for type SIMD2<Float> and conformance SIMD2<A>(&lazy protocol witness table cache variable for type SIMD2<Float> and conformance SIMD2<A>, MEMORY[0x277D84AD8]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v12 = v22;
  LOBYTE(v22) = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v14 = v13;
  LOBYTE(v22) = 2;
  KeyedDecodingContainer.decode(_:forKey:)();
  v16 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySfGMd, &_sSnySfGMR);
  HIBYTE(v21) = 3;
  lazy protocol witness table accessor for type Range<Float> and conformance <> Range<A>(&lazy protocol witness table cache variable for type Range<Float> and conformance <> Range<A>, MEMORY[0x277D83AC8], MEMORY[0x277D83D38]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v17 = v22;
  LOBYTE(v22) = 4;
  KeyedDecodingContainer.decode(_:forKey:)();
  v19 = v18;
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  *a2 = v12;
  *(a2 + 8) = v14;
  *(a2 + 12) = v16;
  *(a2 + 16) = v17;
  *(a2 + 24) = v19;
  return result;
}

void specialized RaycastMeshTrackingSystem.updateCollisionHit(raycastEntity:raycastComponent:collisionHit:context:)(uint64_t a1, uint64_t a2)
{
  SceneUpdateContext.scene.getter();
  v4 = dispatch thunk of Scene.defaultCamera.getter();

  if (!v4)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  type metadata accessor for Entity();
  HasTransform.transformMatrix(relativeTo:)();
  v28 = v6;
  *dt = v5;
  v26 = v8;
  v27 = v7;

  CollisionCastHit.position.getter();
  v25 = v9;
  SceneUpdateContext.deltaTime.getter();
  RaycastMeshTrackingEntity.targetPosition(_:viewToWorld:dt:)(v25, *dt, v28, v27, v26, v10);
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of RaycastMeshTrackingSystem.updateCollisionHit(raycastEntity:raycastComponent:collisionHit:context:));
  *dta = v11;
  CollisionCastHit.normal.getter();
  dta[0] = simd_quaternion(*dta, v12);
  updated = SceneUpdateContext.deltaTime.getter();
  RaycastMeshTrackingEntity.targetOrientation(_:dt:)(updated, dta[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23B91A6D0;
  v15 = *(a2 + 8);
  *(inited + 32) = v15;
  *(inited + 36) = v15;
  *(inited + 40) = v15;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(inited);
  dtb = v16;
  swift_setDeallocating();
  CollisionCastHit.distance.getter();
  v18 = (RaycastMeshTrackingComponent.computeAlpha(distance:)(v17) * *(a2 + 12)) + 0.0;
  SceneUpdateContext.deltaTime.getter();
  RaycastMeshTrackingEntity.targetScale(_:dt:)(dtb, v19);
  SceneUpdateContext.deltaTime.getter();
  RaycastMeshTrackingEntity.targetFade(_:dt:)(v18, v20);
  CollisionCastHit.distance.getter();
  if (v21 >= *(a2 + 16))
  {
    if (*(a2 + 20) >= v21)
    {
      v22 = 2;
    }

    else
    {
      v22 = 3;
    }
  }

  else
  {
    v22 = 1;
  }

  v23 = *(a1 + direct field offset for RaycastMeshTrackingEntity.manager);
  if (!v23)
  {
    goto LABEL_13;
  }

  v24 = *(v23 + 64);
  *(v23 + 64) = v22;
  if (v24 != v22)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      specialized RangefinderObserver.zoneDidChange(_:)(v22);
      swift_unknownObjectRelease();
    }
  }
}

void *specialized RaycastMeshTrackingSystem.update(context:)(uint64_t a1)
{
  v79 = type metadata accessor for CollisionGroup();
  v88 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v78 = &v63 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Type = type metadata accessor for CollisionCastQueryType();
  v3 = *(Type - 8);
  MEMORY[0x28223BE20](Type);
  v76 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit16CollisionCastHitVSgMd, &_s10RealityKit16CollisionCastHitVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v87 = &v63 - v6;
  v86 = type metadata accessor for CollisionCastHit();
  v89 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v84 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for Entity.ComponentSet();
  v8 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v90 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation11QueryResultV8IteratorVy0A3Kit6EntityC_GMd, &_s17RealityFoundation11QueryResultV8IteratorVy0A3Kit6EntityC_GMR);
  v93 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v63 - v11;
  updated = type metadata accessor for SystemUpdateCondition();
  v14 = *(updated - 8);
  MEMORY[0x28223BE20](updated);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation11QueryResultVy0A3Kit6EntityCGMd, &_s17RealityFoundation11QueryResultVy0A3Kit6EntityCGMR);
  v92 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v18 = &v63 - v17;
  if (one-time initialization token for query != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for EntityQuery();
  __swift_project_value_buffer(v19, static RaycastMeshTrackingComponent.query);
  static SystemUpdateCondition.rendering.getter();
  SceneUpdateContext.entities(matching:updatingSystemWhen:)();
  (*(v14 + 8))(v16, updated);
  SceneUpdateContext.scene.getter();
  v20 = dispatch thunk of Scene.defaultCamera.getter();

  if (v20)
  {
    v22 = a1;
    v85 = type metadata accessor for Entity();
    HasTransform.transformMatrix(relativeTo:)();
    v83 = v23;
    v82 = v24;
    v81 = v25;
    v80 = v26;

    v27 = v94;
    QueryResult.makeIterator()();
    result = QueryResult.Iterator.next()();
    if (v95 != 0.0)
    {
      v28 = 0;
      v29 = (v8 + 8);
      v69 = (v3 + 104);
      v68 = *MEMORY[0x277CDAE48];
      v67 = (v88 + 1);
      v66 = (v3 + 8);
      v65 = v89 + 16;
      v30 = (v89 + 56);
      v75 = (v89 + 48);
      v73 = (v89 + 32);
      v72 = (v89 + 8);
      do
      {
        if (v28)
        {
          __break(1u);
          goto LABEL_36;
        }

        v31 = v90;
        v32 = dispatch thunk of Entity.components.getter();
        lazy protocol witness table accessor for type RaycastMeshTrackingComponent and conformance RaycastMeshTrackingComponent(v32, v33, v34);
        Entity.ComponentSet.subscript.getter();
        (*v29)(v31, v91);
        if (v99)
        {
          goto LABEL_32;
        }

        v71 = v30;
        v35 = v29;
        v36 = v95;
        *v105 = v95;
        v105[1] = v96;
        v105[2] = v97;
        v106 = v98;
        type metadata accessor for RaycastMeshTrackingEntity(0);
        result = swift_dynamicCastClass();
        v88 = result;
        if (!result)
        {
          goto LABEL_37;
        }

        _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of RaycastMeshTrackingSystem.update(context:));
        v74 = v37;

        HasTransform.setScale(_:relativeTo:)();

        v70 = v22;
        *&v74 = SceneUpdateContext.scene.getter();
        active = dispatch thunk of Scene.internalActiveCamera.getter();
        if (active)
        {
          specialized static Ray3D.worldRay(through:using:)(active, v100, v36);
          if ((v101 & 1) == 0)
          {
            v64 = v100[1];
            v63 = v100[0];
            v44 = v76;
            v45 = Type;
            (*v69)(v76, v68, Type);
            v46 = v78;
            static CollisionGroup.all.getter();
            v47 = Scene.raycast(origin:direction:length:query:mask:relativeTo:)();
            (*v67)(v46, v79);
            (*v66)(v44, v45);
            if (*(v47 + 16))
            {
              (*(v89 + 16))(v87, v47 + ((*(v89 + 80) + 32) & ~*(v89 + 80)), v86);

              v43 = 0;
            }

            else
            {

              v43 = 1;
            }

            v27 = v94;
            goto LABEL_21;
          }
        }

        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v39 = type metadata accessor for Logger();
        __swift_project_value_buffer(v39, logger);
        v40 = Logger.logObject.getter();
        v41 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          *v42 = 0;
          _os_log_impl(&dword_23B824000, v40, v41, "Can't get a camera to raycast!", v42, 2u);
          MEMORY[0x23EEB0B70](v42, -1, -1);
        }

        v43 = 1;
LABEL_21:
        v29 = v35;
        v30 = v71;
        v48 = v87;
        v49 = v86;
        (*v71)(v87, v43, 1, v86);

        v50 = (*v75)(v48, 1, v49);
        v22 = v70;
        if (v50 == 1)
        {
          outlined destroy of CollisionCastHit?(v48);
          SceneUpdateContext.scene.getter();
          v51 = dispatch thunk of Scene.internalActiveCamera.getter();

          if (!v51)
          {
            goto LABEL_38;
          }

          specialized static Ray3D.worldRay(through:using:)(v51, &v102, v36);

          v52 = v104;
          v64 = v103;
          if (v104)
          {
            _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #1 of RaycastMeshTrackingSystem.update(context:));
          }

          else
          {
            v53.n128_f64[0] = Ray3D.point(t:)(0.5, v102, v103);
          }

          v74 = v53;
          SceneUpdateContext.deltaTime.getter();
          RaycastMeshTrackingEntity.targetPosition(_:viewToWorld:dt:)(v74, v83, v82, v81, v80, v56);
          if ((v52 & 1) == 0)
          {
            _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #2 of RaycastMeshTrackingSystem.update(context:));
            v57.i32[3] = 0;
            v57.i64[0] = vsubq_f32(0, v64).u64[0];
            v57.f32[2] = 0.0 - v64.f32[2];
            v59.n128_f64[0] = simd_quaternion(v58, v57);
            v74 = v59;
            v60 = SceneUpdateContext.deltaTime.getter();
            RaycastMeshTrackingEntity.targetOrientation(_:dt:)(v60, *&v74);
          }

          if (one-time initialization token for minimumReticleSizeMeters != -1)
          {
            swift_once();
          }

          v74 = minimumReticleSizeMeters;
          SceneUpdateContext.deltaTime.getter();
          RaycastMeshTrackingEntity.targetScale(_:dt:)(v74, v61);
          SceneUpdateContext.deltaTime.getter();
          RaycastMeshTrackingEntity.targetFade(_:dt:)(0.0, v62);
LABEL_32:

          goto LABEL_33;
        }

        v54 = v84;
        (*v73)(v84, v48, v49);
        specialized RaycastMeshTrackingSystem.updateCollisionHit(raycastEntity:raycastComponent:collisionHit:context:)(v88, v105);

        v55 = v54;
        v27 = v94;
        (*v72)(v55, v49);
LABEL_33:
        result = QueryResult.Iterator.next()();
        v28 = 1;
      }

      while (v95 != 0.0);
    }

    (*(v93 + 8))(v12, v10);
    return (*(v92 + 8))(v18, v27);
  }

  else
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
  }

  return result;
}

uint64_t outlined destroy of CollisionCastHit?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit16CollisionCastHitVSgMd, &_s10RealityKit16CollisionCastHitVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type RaycastMeshTrackingComponent.CodingKeys and conformance RaycastMeshTrackingComponent.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type RaycastMeshTrackingComponent.CodingKeys and conformance RaycastMeshTrackingComponent.CodingKeys;
  if (!lazy protocol witness table cache variable for type RaycastMeshTrackingComponent.CodingKeys and conformance RaycastMeshTrackingComponent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RaycastMeshTrackingComponent.CodingKeys and conformance RaycastMeshTrackingComponent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RaycastMeshTrackingComponent.CodingKeys and conformance RaycastMeshTrackingComponent.CodingKeys;
  if (!lazy protocol witness table cache variable for type RaycastMeshTrackingComponent.CodingKeys and conformance RaycastMeshTrackingComponent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RaycastMeshTrackingComponent.CodingKeys and conformance RaycastMeshTrackingComponent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RaycastMeshTrackingComponent.CodingKeys and conformance RaycastMeshTrackingComponent.CodingKeys;
  if (!lazy protocol witness table cache variable for type RaycastMeshTrackingComponent.CodingKeys and conformance RaycastMeshTrackingComponent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RaycastMeshTrackingComponent.CodingKeys and conformance RaycastMeshTrackingComponent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RaycastMeshTrackingComponent.CodingKeys and conformance RaycastMeshTrackingComponent.CodingKeys;
  if (!lazy protocol witness table cache variable for type RaycastMeshTrackingComponent.CodingKeys and conformance RaycastMeshTrackingComponent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RaycastMeshTrackingComponent.CodingKeys and conformance RaycastMeshTrackingComponent.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type SIMD2<Float> and conformance SIMD2<A>(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SIMD2VySfGMd, &_ss5SIMD2VySfGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Range<Float> and conformance <> Range<A>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSnySfGMd, &_sSnySfGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RaycastMeshTrackingComponent.ReticleDescriptor.CodingKeys and conformance RaycastMeshTrackingComponent.ReticleDescriptor.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type RaycastMeshTrackingComponent.ReticleDescriptor.CodingKeys and conformance RaycastMeshTrackingComponent.ReticleDescriptor.CodingKeys;
  if (!lazy protocol witness table cache variable for type RaycastMeshTrackingComponent.ReticleDescriptor.CodingKeys and conformance RaycastMeshTrackingComponent.ReticleDescriptor.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RaycastMeshTrackingComponent.ReticleDescriptor.CodingKeys and conformance RaycastMeshTrackingComponent.ReticleDescriptor.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RaycastMeshTrackingComponent.ReticleDescriptor.CodingKeys and conformance RaycastMeshTrackingComponent.ReticleDescriptor.CodingKeys;
  if (!lazy protocol witness table cache variable for type RaycastMeshTrackingComponent.ReticleDescriptor.CodingKeys and conformance RaycastMeshTrackingComponent.ReticleDescriptor.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RaycastMeshTrackingComponent.ReticleDescriptor.CodingKeys and conformance RaycastMeshTrackingComponent.ReticleDescriptor.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RaycastMeshTrackingComponent.ReticleDescriptor.CodingKeys and conformance RaycastMeshTrackingComponent.ReticleDescriptor.CodingKeys;
  if (!lazy protocol witness table cache variable for type RaycastMeshTrackingComponent.ReticleDescriptor.CodingKeys and conformance RaycastMeshTrackingComponent.ReticleDescriptor.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RaycastMeshTrackingComponent.ReticleDescriptor.CodingKeys and conformance RaycastMeshTrackingComponent.ReticleDescriptor.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RaycastMeshTrackingComponent.ReticleDescriptor.CodingKeys and conformance RaycastMeshTrackingComponent.ReticleDescriptor.CodingKeys;
  if (!lazy protocol witness table cache variable for type RaycastMeshTrackingComponent.ReticleDescriptor.CodingKeys and conformance RaycastMeshTrackingComponent.ReticleDescriptor.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RaycastMeshTrackingComponent.ReticleDescriptor.CodingKeys and conformance RaycastMeshTrackingComponent.ReticleDescriptor.CodingKeys);
  }

  return result;
}

uint64_t partial apply for closure #1 in RaycastMeshTrackingEntity.startLoadingRingEntity()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = ObjectCaptureSession.Updates.Iterator.next();

  return closure #1 in RaycastMeshTrackingEntity.startLoadingRingEntity()(a1, v4, v5, v6);
}

unint64_t lazy protocol witness table accessor for type RaycastMeshTrackingSystem and conformance RaycastMeshTrackingSystem()
{
  result = lazy protocol witness table cache variable for type RaycastMeshTrackingSystem and conformance RaycastMeshTrackingSystem;
  if (!lazy protocol witness table cache variable for type RaycastMeshTrackingSystem and conformance RaycastMeshTrackingSystem)
  {
    type metadata accessor for RaycastMeshTrackingSystem();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RaycastMeshTrackingSystem and conformance RaycastMeshTrackingSystem);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RaycastMeshTrackingComponent.ReticleDescriptor.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RaycastMeshTrackingComponent.ReticleDescriptor.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t static BoundingBoxHelpers.makeBoxMaterial()@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for PhysicallyBasedMaterial.EmissiveColor();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation18MaterialParametersV7TextureVSgMd, &_s17RealityFoundation18MaterialParametersV7TextureVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15 - v4;
  v6 = type metadata accessor for PhysicallyBasedMaterial.BaseColor();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = type metadata accessor for PhysicallyBasedMaterial();
  v8 = MEMORY[0x277CDB510];
  a1[3] = v7;
  a1[4] = v8;
  __swift_allocate_boxed_opaque_existential_1(a1);
  PhysicallyBasedMaterial.init()();
  v9 = objc_opt_self();
  v10 = [v9 whiteColor];
  v11 = type metadata accessor for MaterialParameters.Texture();
  v12 = *(*(v11 - 8) + 56);
  v12(v5, 1, 1, v11);
  PhysicallyBasedMaterial.BaseColor.init(tint:texture:)();
  PhysicallyBasedMaterial.baseColor.setter();
  v13 = [v9 whiteColor];
  v12(v5, 1, 1, v11);
  PhysicallyBasedMaterial.EmissiveColor.init(color:texture:)();
  PhysicallyBasedMaterial.emissiveColor.setter();
  return PhysicallyBasedMaterial.emissiveIntensity.setter();
}

id one-time initialization function for bundle(uint64_t a1)
{
  type metadata accessor for BoundingBoxHelpers();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  static BoundingBoxHelpers.bundle = result;
  return result;
}

{
  type metadata accessor for BaseRenderer();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  static BaseRenderer.bundle = result;
  return result;
}

{
  type metadata accessor for VoxelRenderer();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  static VoxelRenderer.bundle = result;
  return result;
}

float closure #1 in variable initialization expression of static BoundingBoxHelpers.automaticBoundingBoxPaddingFactor()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v24 - v1;
  v3 = specialized static BoundingBoxHelpers.getCoreOCVersion()();
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = v4;
  v25[0] = 0x312E362E38;
  v25[1] = 0xE500000000000000;
  v6 = v3;
  v24[0] = v3;
  v24[1] = v4;
  v7 = type metadata accessor for Locale();
  v8 = (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  lazy protocol witness table accessor for type String and conformance String(v8, v9, v10);
  v11 = StringProtocol.compare<A>(_:options:range:locale:)();
  outlined destroy of Locale?(v2);
  if (v11 != -1)
  {

LABEL_4:
    v12 = specialized static ExperimentSettings.loadAutomaticBoundingBoxPadding(default:)(1.25);
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, logger);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 134349056;
      *(v16 + 4) = v12;
      _os_log_impl(&dword_23B824000, v14, v15, "Assuming box padding is: %{public}f", v16, 0xCu);
      MEMORY[0x23EEB0B70](v16, -1, -1);
    }

    return v12;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, logger);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v25[0] = v21;
    *v20 = 136446210;
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, v25);

    *(v20 + 4) = v22;
    _os_log_impl(&dword_23B824000, v18, v19, "Got internal OCS version %{public}s so assuming box padding is 1.1", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v21);
    MEMORY[0x23EEB0B70](v21, -1, -1);
    MEMORY[0x23EEB0B70](v20, -1, -1);
  }

  else
  {
  }

  return 1.1;
}

float32x4_t specialized static BoundingBoxHelpers.ensuringPositiveDeterminant(matrix:)(float32x4_t result, int8x16_t a2, int8x16_t a3, int8x16_t a4)
{
  v4 = vextq_s8(a3, a3, 8uLL);
  v5 = vextq_s8(a4, a4, 0xCuLL);
  v6 = vextq_s8(a3, a3, 0xCuLL);
  v7 = vextq_s8(a4, a4, 8uLL);
  v8 = vextq_s8(a4, a4, 4uLL);
  v9 = vextq_s8(a3, a3, 4uLL);
  v10 = vmulq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(vextq_s8(a2, a2, 8uLL), vmlaq_f32(vmulq_f32(v5, vnegq_f32(v9)), v8, v6)), vmlaq_f32(vmulq_f32(v7, vnegq_f32(v6)), v5, v4), vextq_s8(a2, a2, 4uLL)), vmlaq_f32(vmulq_f32(v8, vnegq_f32(v4)), v7, v9), vextq_s8(a2, a2, 0xCuLL)), result);
  v11 = vextq_s8(v10, v10, 8uLL).u64[0];
  if (vaddv_f32(vsub_f32(vzip1_s32(*v10.i8, v11), vzip2_s32(*v10.i8, v11))) <= 0.0)
  {
    v19 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23B91A6E0;
    *(inited + 32) = v19;
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(inited);
    v20 = v13;
    swift_setDeallocating();
    v14 = swift_initStackObject();
    *(v14 + 16) = xmmword_23B91A6E0;
    *(v14 + 32) = a2;
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(v14);
    swift_setDeallocating();
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_23B91A6E0;
    *(v15 + 32) = vneg_f32(*a3.i8);
    *(v15 + 40) = -*&a3.i32[2];
    *(v15 + 44) = a3.i32[3];
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(v15);
    swift_setDeallocating();
    v16 = swift_initStackObject();
    *(v16 + 16) = xmmword_23B91A6E0;
    *(v16 + 32) = a4;
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(v16);
    swift_setDeallocating();
    return v20;
  }

  return result;
}

__n128 specialized static BoundingBoxHelpers.getBoundingSphere(boxWorld:)(float32x4_t *a1)
{
  if (a1[4].i8[0])
  {
    result.n128_u64[0] = 0;
  }

  else
  {
    v7 = a1[3];
    v5 = a1[1];
    v6 = a1[2];
    v4 = *a1;
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of static BoundingBoxHelpers.getBoundingSphere(boxWorld:));
    v3 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v4, v2.f32[0]), v5, *v2.f32, 1), v6, v2, 2), v7, v2, 3);
    v3.i32[3] = 0;
    v8 = v3;
    Transform.init(matrix:)();
    return v8;
  }

  return result;
}

uint64_t specialized static BoundingBoxHelpers.getCoreOCVersion()()
{
  type metadata accessor for PhotogrammetrySession();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = [v1 infoDictionary];

  if (v2)
  {
    v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v3 + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001ALL, 0x800000023B925D00), (v5 & 1) != 0))
    {
      outlined init with copy of Any(*(v3 + 56) + 32 * v4, v8);

      if (swift_dynamicCast())
      {
        return v7;
      }
    }

    else
    {
    }
  }

  return 0;
}

__n64 specialized static BoundingBoxHelpers.getSquishedBoxBottomTransform(boxWorld:)(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  *v4.i64 = Transform.init(matrix:)();
  v11 = v6;
  v12 = v5;
  if (one-time initialization token for automaticBoundingBoxPaddingFactor != -1)
  {
    v10 = v4;
    swift_once();
    v4 = v10;
  }

  v7.n128_u64[0] = vmulq_n_f32(v4, 1.0 / *&static BoundingBoxHelpers.automaticBoundingBoxPaddingFactor).u64[0];
  v7.n128_u64[1] = COERCE_UNSIGNED_INT(vmuls_lane_f32(1.0 / *&static BoundingBoxHelpers.automaticBoundingBoxPaddingFactor, v4, 2));
  v9 = v7;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of static BoundingBoxHelpers.getSquishedBoxBottomTransform(boxWorld:));
  specialized simd_float4x4.init(translation:rotation:scale:)(v11, v12, v9);
  result.n64_f64[0] = Transform.init(matrix:)();
  result.n64_u32[1] = 1.0;
  return result;
}

double specialized static BoundingBoxHelpers.asSRTMatrix(box:)(uint64_t a1, float32x4_t a2, float32x4_t a3)
{
  Transform.init()();
  v4.n128_u64[0] = vsubq_f32(a3, a2).u64[0];
  v4.n128_f32[2] = a3.f32[2] - a2.f32[2];
  v4.n128_u32[3] = 0;
  v5.i64[0] = 0x3F0000003F000000;
  v5.i64[1] = 0x3F0000003F000000;
  v6.i64[0] = vmulq_f32(vaddq_f32(a2, a3), v5).u64[0];
  v6.f32[2] = (a2.f32[2] + a3.f32[2]) * 0.5;
  v6.i32[3] = 0;

  return specialized simd_float4x4.init(translation:rotation:scale:)(v6, v3, v4);
}

unint64_t lazy protocol witness table accessor for type String and conformance String(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

uint64_t outlined destroy of Locale?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void specialized static BoundingBoxHelpers.computeScaleFromScreenSize(sphereWorld:pixels:arView:lastGoodScale:)(void *a1, float *a2, float32x4_t a3, double a4)
{
  if (a1)
  {
    v6 = a1;
    dispatch thunk of ARView.cameraTransform.getter();
    specialized simd_float4x4.init(translation:rotation:scale:)(v9, v8, v7);
    v10 = COERCE_DOUBLE(ARView.project(_:)());
    if (v12)
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      __swift_project_value_buffer(v13, logger);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_23B824000, v14, v15, "Can't project the bounding sphere center to the screen coordinates, not resizing.", v16, 2u);
        MEMORY[0x23EEB0B70](v16, -1, -1);
      }

      goto LABEL_10;
    }

    v17 = v10;
    v18 = v11;
    v19 = a4 * 0.5 + v10;
    Transform.init()();
    v36 = v20;
    specialized SIMD.subscript.getter(xmmword_23B91DE30, COERCE_DOUBLE(2));
    v22 = vsubq_f32(v21, a3);
    v22.i32[3] = 0;
    v37 = v22;
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of static BoundingBoxHelpers.computeScaleFromScreenSize(sphereWorld:pixels:arView:lastGoodScale:));
    *v24.i64 = simd_quaternion(v23, v37);
    specialized simd_float4x4.init(translation:rotation:scale:)(a3, v24, v36);
    v25 = ARView.unproject(_:ontoPlane:relativeToCamera:)();
    if (v27)
    {
LABEL_10:

      return;
    }

    v28.i64[0] = v25;
    v28.i64[1] = v26;
    v29 = vsubq_f32(v28, a3);
    v30 = vmulq_f32(v29, v29);
    v31 = sqrtf(v30.f32[2] + (((*&v25 - a3.f32[0]) * (*&v25 - a3.f32[0])) + v30.f32[1]));
    v32 = v6;
    [v32 bounds];
    v39.x = v19;
    v39.y = v18;
    if (CGRectContainsPoint(v41, v39) && (v33 = v32, [v33 bounds], v40.x = v17, v40.y = v18, v34 = CGRectContainsPoint(v42, v40), v33, v34))
    {

      *a2 = v31;
    }

    else
    {
      v35 = v32;
      [v35 bounds];
      CGRectGetWidth(v43);
      [v35 bounds];
      CGRectGetHeight(v44);
      [v35 center];
      [v35 center];
    }
  }
}

double specialized static BoundingBoxHelpers.stretchedBoundingBox(box:axis:delta:)(__n128 a1, __n128 a2, __n128 a3, __n128 a4, float32x4_t a5, float a6)
{
  *v6.i64 = Transform.init(matrix:)();
  v8 = vabsq_f32(a5);
  v9 = vmuls_lane_f32(a6, v8, 2);
  *v8.f32 = vadd_f32(vmul_n_f32(*v8.f32, a6), *v6.f32);
  v8.f32[2] = v9 + v6.f32[2];
  v8.i32[3] = 0;
  v10 = vmaxnmq_f32(v8, xmmword_23B91DE50);
  v10.i32[3] = 0;
  v11 = vminnmq_f32(v10, xmmword_23B91DE60);
  v12 = vsubq_f32(v11, v6);
  v13 = vmulq_f32(v7, xmmword_23B91C020);
  v14 = vnegq_f32(v13);
  v15 = vtrn2q_s32(v13, vtrn1q_s32(v13, v14));
  v16 = vrev64q_s32(v13);
  v16.i32[0] = v14.i32[1];
  v16.i32[3] = v14.i32[2];
  v17 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(vextq_s8(v13, v14, 8uLL), vmuls_lane_f32(vmuls_lane_f32(0.5, *v12.f32, 1), *a5.f32, 1)), vextq_s8(v15, v15, 8uLL), (0.5 * v12.f32[0]) * a5.f32[0]), v16, vmuls_lane_f32(vmuls_lane_f32(0.5, v12, 2), a5, 2));
  v18 = vnegq_f32(v17);
  v19 = vtrn2q_s32(v17, vtrn1q_s32(v17, v18));
  v20 = vrev64q_s32(v17);
  v20.i32[0] = v18.i32[1];
  v20.i32[3] = v18.i32[2];
  v22 = vaddq_f32(v21, vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v17, v7, 3), v20, v7, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v17, v18, 8uLL), *v7.f32, 1), vextq_s8(v19, v19, 8uLL), v7.f32[0])));
  v22.i32[3] = 0;

  return specialized simd_float4x4.init(translation:rotation:scale:)(v22, v7, v11);
}

double specialized static BoundingBoxHelpers.unpaddedBoundingBox(boxWorld:)(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  *v4.i64 = Transform.init(matrix:)();
  v7 = v4;
  v8 = v6;
  if (one-time initialization token for automaticBoundingBoxPaddingFactor != -1)
  {
    v13 = v5;
    v11 = v7;
    v12 = v6;
    swift_once();
    v7 = v11;
    v8 = v12;
    v5 = v13;
  }

  v9.n128_u64[0] = vmulq_n_f32(v7, 1.0 / *&static BoundingBoxHelpers.automaticBoundingBoxPaddingFactor).u64[0];
  v9.n128_u64[1] = COERCE_UNSIGNED_INT(vmuls_lane_f32(1.0 / *&static BoundingBoxHelpers.automaticBoundingBoxPaddingFactor, v7, 2));

  return specialized simd_float4x4.init(translation:rotation:scale:)(v8, v5, v9);
}

__n128 specialized static BoundingBoxHelpers.paddedBoundingBox(box:scale:padBottomFace:)(char a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5, float a6)
{
  *v7.i64 = Transform.init(matrix:)();
  v20 = v7;
  v21 = v8;
  v23 = v9;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of static BoundingBoxHelpers.paddedBoundingBox(box:scale:padBottomFace:));
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #1 of static BoundingBoxHelpers.paddedBoundingBox(box:scale:padBottomFace:));
  v30 = v10;
  if (a1)
  {
    v11.n128_u64[0] = vmulq_n_f32(v20, a6).u64[0];
    v11.n128_u64[1] = COERCE_UNSIGNED_INT(vmuls_lane_f32(a6, v20, 2));
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23B91A6D0;
    *(inited + 32) = vmul_f32(__PAIR64__(((a6 + -1.0) * 0.5) + 1.0, LODWORD(a6)), *v20.f32);
    *(inited + 40) = vmuls_lane_f32(a6, v20, 2);
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(inited);
    v28 = v13;
    swift_setDeallocating();
    v11 = v28;
  }

  *v14.i64 = specialized simd_float4x4.init(translation:rotation:scale:)(v21, v23, v11);
  v29 = v14;
  v31 = vsubq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v14, v30.f32[0]), v15, *v30.f32, 1), v16, v30, 2), v17, v30, 3), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a2, v30.f32[0]), a3, *v30.f32, 1), a4, v30, 2), a5, v30, 3));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_23B91A6D0;
  *(v18 + 32) = 0;
  *(v18 + 36) = v31.i32[1];
  *(v18 + 40) = 0;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(v18);
  swift_setDeallocating();
  return v29;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance BoundingBoxScaleManipulator.Face.Which@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized BoundingBoxScaleManipulator.Face.Which.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t one-time initialization function for normals()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5SIMD3VySfGGMd, &_ss23_ContiguousArrayStorageCys5SIMD3VySfGGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_23B91AE90;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for normals);
  *(v0 + 32) = v1;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #1 of one-time initialization function for normals);
  *(v0 + 48) = v2;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #2 of one-time initialization function for normals);
  *(v0 + 64) = v3;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #3 of one-time initialization function for normals);
  *(v0 + 80) = v4;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #4 of one-time initialization function for normals);
  *(v0 + 96) = v5;
  result = _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #5 of one-time initialization function for normals);
  *(v0 + 112) = v7;
  static BoundingBoxScaleManipulator.Face.normals = v0;
  return result;
}

void BoundingBoxScaleManipulator.FaceHandle.enabled.willset(char a1)
{
  if (*(v1 + 32) != (a1 & 1))
  {
    if (*(v1 + 32))
    {
      if ((a1 & 1) == 0)
      {
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v2 = type metadata accessor for Logger();
        __swift_project_value_buffer(v2, logger);

        v3 = Logger.logObject.getter();
        v4 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v3, v4))
        {
          v5 = swift_slowAlloc();
          v6 = swift_slowAlloc();
          v18 = v6;
          *v5 = 136446210;
          v7 = String.init<A>(describing:)();
          v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v18);

          *(v5 + 4) = v9;
          _os_log_impl(&dword_23B824000, v3, v4, "Disabling handle: %{public}s", v5, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v6);
          MEMORY[0x23EEB0B70](v6, -1, -1);
          MEMORY[0x23EEB0B70](v5, -1, -1);
        }

        type metadata accessor for Entity();
        HasHierarchy.removeFromParent(preservingWorldTransform:)(0);
      }
    }

    else if (a1)
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      __swift_project_value_buffer(v10, logger);

      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v18 = v14;
        *v13 = 136446210;
        v15 = String.init<A>(describing:)();
        v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v18);

        *(v13 + 4) = v17;
        _os_log_impl(&dword_23B824000, v11, v12, "Enabling handle: %{public}s", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v14);
        MEMORY[0x23EEB0B70](v14, -1, -1);
        MEMORY[0x23EEB0B70](v13, -1, -1);
      }

      if (swift_weakLoadStrong())
      {

        type metadata accessor for Entity();
        HasHierarchy.addChild(_:preservingWorldTransform:)();
      }
    }
  }
}

void BoundingBoxScaleManipulator.FaceHandle.modelEntity.didset()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit18CollisionComponentVSgMd, &_s10RealityKit18CollisionComponentVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v24 - v2;
  v4 = type metadata accessor for CollisionFilter();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CollisionComponent.Mode();
  isa = v7[-1].isa;
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CollisionComponent();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 64))
  {
    v27 = v7;
    type metadata accessor for Entity();
    v26 = v10;

    HasHierarchy.addChild(_:preservingWorldTransform:)();
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of BoundingBoxScaleManipulator.FaceHandle.modelEntity.didset);
    v24 = v15;
    type metadata accessor for ModelEntity();
    v25 = v6;
    HasTransform.setScale(_:relativeTo:)();
    BoundingBoxScaleManipulator.FaceHandle.rotationFromNormal()();
    HasTransform.setOrientation(_:relativeTo:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_23B91A700;
    v17 = *(v0 + 16);
    type metadata accessor for ShapeResource();
    v18.n128_u32[0] = 1.0;
    if (v17 < 2)
    {
      v18.n128_f32[0] = 0.5;
    }

    *(v16 + 32) = MEMORY[0x23EEAC950](v18);
    (*(isa + 13))(v26, *MEMORY[0x277CDADC0], v27);
    static CollisionFilter.default.getter();
    CollisionComponent.init(shapes:mode:filter:)();
    (*(v12 + 16))(v3, v14, v11);
    (*(v12 + 56))(v3, 0, 1, v11);
    v19 = dispatch thunk of Entity.components.modify();
    Entity.ComponentSet.subscript.setter();
    v19(v28, 0);

    (*(v12 + 8))(v14, v11);
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, logger);
    v27 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_23B824000, v27, v21, "Failed to load modelEntity for the FaceHandle!", v22, 2u);
      MEMORY[0x23EEB0B70](v22, -1, -1);
    }

    v23 = v27;
  }
}

void BoundingBoxScaleManipulator.FaceHandle.rotationFromNormal()()
{
  v1 = *(v0 + 16);
  if (v1 > 1)
  {
    if (one-time initialization token for normals == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of BoundingBoxScaleManipulator.FaceHandle.rotationFromNormal());
  if (one-time initialization token for normals != -1)
  {
    v8 = v2;
    swift_once();
    v2 = v8;
  }

  if (*(static BoundingBoxScaleManipulator.Face.normals + 2) <= v1)
  {
    __break(1u);
LABEL_12:
    swift_once();
LABEL_9:
    if (*(static BoundingBoxScaleManipulator.Face.normals + 2) <= v1)
    {
      __break(1u);
    }

    else
    {
      v7 = *(static BoundingBoxScaleManipulator.Face.normals + v1 + 2);
      _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #1 of BoundingBoxScaleManipulator.FaceHandle.rotationFromNormal());
      v5 = vmulq_f32(v7, v4);
      v6 = acosf(v5.f32[2] + vaddv_f32(*v5.f32));
      _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #2 of BoundingBoxScaleManipulator.FaceHandle.rotationFromNormal());
      __sincosf_stret(v6 * 0.5);
    }

    return;
  }

  v3 = *(static BoundingBoxScaleManipulator.Face.normals + v1 + 2);

  simd_quaternion(v2, v3);
}

uint64_t BoundingBoxScaleManipulator.FaceHandle.loadModel()()
{
  v1 = v0;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = 0xED0000656C646E61;
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, logger);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    *v6 = 136446466;
    v8 = *(v1 + 16);
    if (v8 >= 2)
    {
      v9 = 0x48656C7573706143;
    }

    else
    {
      v9 = 0x646E614865636146;
    }

    if (v8 < 2)
    {
      v2 = 0xEA0000000000656CLL;
    }

    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v2, &v20);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2082;
    v11 = String.init<A>(describing:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v20);

    *(v6 + 14) = v13;
    _os_log_impl(&dword_23B824000, v4, v5, "Loading model: %{public}s for face: %{public}s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEB0B70](v7, -1, -1);
    MEMORY[0x23EEB0B70](v6, -1, -1);
  }

  v14 = *(v1 + 16);
  type metadata accessor for Entity();
  if (one-time initialization token for bundle != -1)
  {
    swift_once();
  }

  if (v14 >= 2)
  {
    v15 = 0xED0000656C646E61;
  }

  else
  {
    v15 = 0xEA0000000000656CLL;
  }

  if (v14 >= 2)
  {
    v16 = 0x48656C7573706143;
  }

  else
  {
    v16 = 0x646E614865636146;
  }

  v17 = MEMORY[0x23EEAD3D0](v16, v15, static BoundingBoxHelpers.bundle);

  *(v1 + 80) = v17;

  v20 = v17;
  swift_retain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA11ModelEntityCGMd, &_s10RealityKit11LoadRequestCyAA11ModelEntityCGMR);
  lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type LoadRequest<ModelEntity> and conformance LoadRequest<A>, &_s10RealityKit11LoadRequestCyAA11ModelEntityCGMd, &_s10RealityKit11LoadRequestCyAA11ModelEntityCGMR, MEMORY[0x277CDABA0]);
  v18 = Publisher.sink(receiveCompletion:receiveValue:)();

  *(v1 + 88) = v18;
}

uint64_t closure #1 in BoundingBoxScaleManipulator.FaceHandle.loadModel()(void **a1, uint64_t a2)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = v3;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, logger);
    v6 = v3;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v16 = v10;
      *v9 = 136446210;
      v11 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v12 = String.init<A>(describing:)();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v16);

      *(v9 + 4) = v14;
      _os_log_impl(&dword_23B824000, v7, v8, "Can't load the FaceHandle model!  error = %{public}s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v10);
      MEMORY[0x23EEB0B70](v10, -1, -1);
      MEMORY[0x23EEB0B70](v9, -1, -1);
    }

    else
    {
    }
  }

  *(a2 + 88) = 0;

  *(a2 + 80) = 0;
}

uint64_t closure #2 in BoundingBoxScaleManipulator.FaceHandle.loadModel()(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, logger);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134349056;
    *(v7 + 4) = *(a2 + 16);

    _os_log_impl(&dword_23B824000, v5, v6, "Face handle id=%{public}ld loaded!", v7, 0xCu);
    MEMORY[0x23EEB0B70](v7, -1, -1);
  }

  else
  {
  }

  *(a2 + 64) = v3;
  swift_retain_n();

  BoundingBoxScaleManipulator.FaceHandle.modelEntity.didset();

  if (*(a2 + 64))
  {

    type metadata accessor for ModelEntity();
    v9 = HasModel.model.modify();
    v11 = v10;
    v12 = type metadata accessor for ModelComponent();
    if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit8Material_pGMd, &_ss23_ContiguousArrayStorageCy10RealityKit8Material_pGMR);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_23B91A6F0;
      v14 = *(a2 + 16);
      v15 = objc_allocWithZone(MEMORY[0x277D75348]);
      if (v14 == 1)
      {
        v16 = 0.5;
      }

      else
      {
        v16 = 1.0;
      }

      [v15 initWithRed:1.0 green:0.0 blue:0.0 alpha:v16];
      v17 = type metadata accessor for UnlitMaterial();
      v18 = MEMORY[0x277CDAC30];
      *(v13 + 56) = v17;
      *(v13 + 64) = v18;
      __swift_allocate_boxed_opaque_existential_1((v13 + 32));
      UnlitMaterial.init(color:)();
      ModelComponent.materials.setter();
    }

    v9(&v19, 0);
  }

  return result;
}

uint64_t BoundingBoxScaleManipulator.FaceHandle.faceCenterPosLocal(extents:)()
{
  v1 = *(v0 + 16);
  if (one-time initialization token for normals != -1)
  {
    result = swift_once();
  }

  if (*(static BoundingBoxScaleManipulator.Face.normals + 2) <= v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t BoundingBoxScaleManipulator.FaceHandle.setPositionLocal(extents:minDistance:)(double a1, float a2)
{
  BoundingBoxScaleManipulator.FaceHandle.faceCenterPosLocal(extents:)();
  v3 = *(v2 + 16);
  if (v3 < 2)
  {
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of BoundingBoxScaleManipulator.FaceHandle.setPositionLocal(extents:minDistance:));
LABEL_13:
    type metadata accessor for Entity();
    HasHierarchy.parent.getter();
    HasTransform.setPosition(_:relativeTo:)();
  }

  if (one-time initialization token for normals != -1)
  {
    swift_once();
  }

  if (*(static BoundingBoxScaleManipulator.Face.normals + 2) <= v3)
  {
    __break(1u);
LABEL_15:

    MEMORY[0x23EEAFC40](0, v3);

    goto LABEL_9;
  }

  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of BoundingBoxScaleManipulator.FaceHandle.setPositionLocal(extents:minDistance:));
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #1 of BoundingBoxScaleManipulator.FaceHandle.setPositionLocal(extents:minDistance:));
    v11 = v8;
    goto LABEL_12;
  }

  v5 = Strong;
  result = swift_beginAccess();
  v3 = *(v5 + 40);
  if ((v3 & 0xC000000000000001) != 0)
  {
    goto LABEL_15;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_9:
    type metadata accessor for Entity();

    HasTransform.position.getter();
    v11 = v7;

LABEL_12:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23B91A6D0;
    HIDWORD(v10) = v11;
    LODWORD(v10) = 0;
    *(inited + 32) = v10;
    *(inited + 40) = 0;
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(inited);
    swift_setDeallocating();
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

float BoundingBoxScaleManipulator.FaceHandle.computeScaleFromScreenSize(pixels:arView:)(void *a1, double a2)
{
  swift_beginAccess();
  type metadata accessor for Entity();
  HasTransform.visualBounds(recursive:relativeTo:excludeInactive:)();
  BoundingBox.center.getter();
  v8 = v5;
  BoundingBox.extents.getter();
  specialized static BoundingBoxHelpers.computeScaleFromScreenSize(sphereWorld:pixels:arView:lastGoodScale:)(a1, (v2 + 72), v8, a2);
  LODWORD(a2) = v6;
  swift_endAccess();
  return *&a2;
}

uint64_t BoundingBoxScaleManipulator.FaceHandle.__deallocating_deinit()
{
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t BoundingBoxScaleManipulator.FaceHandleContainer.update(time:in:)(void *a1, double a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(*(v2 + 48) + 16);
  if (v6)
  {
    swift_beginAccess();
    v7 = 4;
    while (1)
    {
      v8 = v7 - 4;
      v9 = *(v3 + 48);
      if ((v7 - 4) >= *(v9 + 16))
      {
        break;
      }

      v10 = *(v9 + 8 * v7);
      if (v10)
      {
        v11 = *(v10 + 48);
        if (v11 <= *(v10 + 64))
        {
          v12 = *(v10 + 56);
        }

        else
        {
          v12 = *(v10 + 16) + a2;
          *(v10 + 48) = a2;
          *(v10 + 56) = v12;
          v11 = a2;
        }

        *(v10 + 64) = a2;
        v13 = 0.0;
        if (v11 <= a2)
        {
          v13 = 1.0;
          if (v12 >= a2)
          {
            v13 = (a2 - v11) / (v12 - v11);
          }
        }

        v14 = *(v10 + 72);
        v15 = (1.0 - v13) * v14;
        v16 = v14 + (v13 * (1.0 - v14));
        if (*(v10 + 24))
        {
          v16 = v15;
        }

        if (v16 <= 0.0)
        {
          v16 = 0.0;
        }

        if (v16 <= 1.0)
        {
          v17 = v16;
        }

        else
        {
          v17 = 1.0;
        }

        v18 = *(v10 + 32);
        if (v18)
        {

          v18(v19, v17);
        }

        else
        {
        }

        if (v17 > 0.0)
        {
          v20 = v17;
        }

        else
        {
          v20 = 0.0;
        }

        v21 = *(v3 + 40);
        if ((v21 & 0xC000000000000001) != 0)
        {

          v22 = MEMORY[0x23EEAFC40](v7 - 4, v21);
        }

        else
        {
          if (v8 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_63;
          }

          v22 = *(v21 + 8 * v7);
        }

        *(v22 + 52) = ((v20 * v20) / ((((v20 * v20) - v17) + ((v20 * v20) - v17)) + 1.0)) + 1.0;

        if (*(v10 + 56) < *(v10 + 64))
        {
          swift_beginAccess();
          v23 = *(v3 + 48);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v3 + 48) = v23;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v23 = specialized _ArrayBuffer._consumeAndCreateNew()(v23);
            *(v3 + 48) = v23;
          }

          if (v8 >= *(v23 + 16))
          {
            goto LABEL_64;
          }

          *(v23 + 8 * v7) = 0;
          *(v3 + 48) = v23;
          swift_endAccess();
        }
      }

      ++v7;
      if (!--v6)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

LABEL_35:
  if (a1)
  {
    result = dispatch thunk of ARView.cameraTransform.getter();
    if ((*(v3 + 112) & 1) == 0)
    {
      v29 = *(v3 + 64);
      v30 = *(v3 + 80);
      v31 = *(v3 + 96);
      v32 = *(v3 + 32);
      if (!v32)
      {
        goto LABEL_42;
      }

      v42 = *(v3 + 96);
      v43 = *(v3 + 80);
      v44 = *(v3 + 64);
      v45 = v28;
      v46 = v27;
      v48 = v26;
      v33 = *(v32 + 16);
      result = swift_beginAccess();
      v34 = *(v3 + 40);
      if ((v34 & 0xC000000000000001) != 0)
      {

        v40 = MEMORY[0x23EEAFC40](1, v34);

        v41 = *(v40 + 16);
        result = swift_unknownObjectRelease();
        v35 = v33 == v41;
      }

      else
      {
        if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
        {
          __break(1u);
          return result;
        }

        v35 = v33 == *(*(v34 + 40) + 16);
      }

      v27 = v46;
      v26 = v48;
      v29 = v44;
      v28 = v45;
      v31 = v42;
      v30 = v43;
      if (!v35)
      {
LABEL_42:
        specialized BoundingBoxScaleManipulator.FaceHandleContainer.updateBottomHandleState(time:cameraWorld:boxWorld:)(result, v26, v27, v28, v29, v30, v31);
      }
    }
  }

  if (*(v3 + 112))
  {
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of BoundingBoxScaleManipulator.FaceHandleContainer.update(time:in:));
  }

  else
  {
    v36 = *(v3 + 64);
  }

  result = BoundingBoxScaleManipulator.FaceHandleContainer.setScaleFromScreenConstraints(arView:extents:)(a1, v36);
  if ((*(v3 + 112) & 1) == 0 && (*(v3 + 120) & 1) == 0)
  {
    v47 = *(v3 + 64);
    LODWORD(a2) = *(v3 + 116);
    swift_beginAccess();
    v3 = *(v3 + 40);
    if (!(v3 >> 62))
    {
      v37 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_50:

      if (!v37)
      {
      }

      for (i = 0; ; ++i)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          MEMORY[0x23EEAFC40](i, v3);
          v39 = i + 1;
          if (__OFADD__(i, 1))
          {
            goto LABEL_59;
          }
        }

        else
        {
          if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_65;
          }

          v39 = i + 1;
          if (__OFADD__(i, 1))
          {
LABEL_59:
            __break(1u);
          }
        }

        BoundingBoxScaleManipulator.FaceHandle.setPositionLocal(extents:minDistance:)(v47, *&a2);

        if (v39 == v37)
        {
        }
      }
    }

LABEL_66:
    v37 = __CocoaSet.count.getter();
    goto LABEL_50;
  }

  return result;
}

uint64_t BoundingBoxScaleManipulator.FaceHandleContainer.load()()
{
  v1 = v0;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23B824000, v3, v4, "Loading face handles...", v5, 2u);
    MEMORY[0x23EEB0B70](v5, -1, -1);
  }

  swift_beginAccess();
  v6 = *(v1 + 40);
  if (!(v6 >> 62))
  {
    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_7;
    }

LABEL_13:
    __break(1u);
    return result;
  }

  result = __CocoaSet.count.getter();
  if (result)
  {
    goto LABEL_13;
  }

LABEL_7:
  type metadata accessor for BoundingBoxScaleManipulator.FaceHandle();
  v8 = 0;
  __asm { FMOV            V8.2S, #1.0 }

  do
  {
    v14 = outlined read-only object #0 of BoundingBoxScaleManipulator.FaceHandleContainer.load()[v8 + 32];
    v15 = swift_allocObject();
    swift_weakInit();
    *(v15 + 32) = 0;
    type metadata accessor for Entity();
    swift_allocObject();

    *(v15 + 40) = Entity.init()();
    *(v15 + 48) = 0;
    *(v15 + 52) = _D8;
    *(v15 + 60) = 1065353216;
    *(v15 + 64) = 0;
    *(v15 + 72) = 1065353216;
    *(v15 + 80) = 0;
    *(v15 + 88) = 0;
    *(v15 + 16) = v14;
    swift_weakAssign();
    BoundingBoxScaleManipulator.FaceHandle.loadModel()();

    swift_beginAccess();

    MEMORY[0x23EEAF620](v16);
    if (*((*(v1 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 40) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    ++v8;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    BoundingBoxScaleManipulator.FaceHandle.enabled.willset(1);
    *(v15 + 32) = 1;
  }

  while (v8 != 6);
  return result;
}

uint64_t BoundingBoxScaleManipulator.FaceHandleContainer.updateGrabbedHandleState(_:)(uint64_t result)
{
  v2 = v1;
  v3 = result;
  v4 = *(v1 + 32);
  if (v4)
  {
    v5 = one-time initialization token for logger;

    if (v5 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, logger);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v30[0] = v10;
      *v9 = 136446210;
      v11 = String.init<A>(describing:)();
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v30);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_23B824000, v7, v8, "Ramping out current grabbedHandle=%{public}s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v10);
      MEMORY[0x23EEB0B70](v10, -1, -1);
      MEMORY[0x23EEB0B70](v9, -1, -1);
    }

    *(v4 + 48) = 0;
    v14 = *(v4 + 16);
    type metadata accessor for RampAnimation();
    v15 = swift_allocObject();
    *(v15 + 48) = 0;
    *(v15 + 56) = 0;
    *(v15 + 64) = 0xFFF0000000000000;
    *(v15 + 24) = 1;
    *(v15 + 16) = 0x3FA999999999999ALL;
    *(v15 + 32) = 0;
    *(v15 + 40) = 0;
    *(v15 + 72) = 1065353216;
    swift_beginAccess();
    v16 = *(v2 + 48);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 48) = v16;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew()(v16);
      *(v2 + 48) = v16;
    }

    if (*(v16 + 16) <= v14)
    {
      __break(1u);
LABEL_20:
      swift_once();
      goto LABEL_12;
    }

    *(v16 + 8 * v14 + 32) = v15;
    *(v2 + 48) = v16;
    swift_endAccess();
  }

  if (!v3)
  {
    return result;
  }

  v18 = one-time initialization token for logger;

  if (v18 != -1)
  {
    goto LABEL_20;
  }

LABEL_12:
  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, logger);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v30[0] = v23;
    *v22 = 136446210;
    v24 = String.init<A>(describing:)();
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, v30);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_23B824000, v20, v21, "Ramping in a new grabbedHandle=%{public}s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v23);
    MEMORY[0x23EEB0B70](v23, -1, -1);
    MEMORY[0x23EEB0B70](v22, -1, -1);
  }

  *(v3 + 48) = 1;
  v27 = *(v3 + 16);
  type metadata accessor for RampAnimation();
  v28 = swift_allocObject();
  *(v28 + 48) = 0;
  *(v28 + 56) = 0;
  *(v28 + 64) = 0xFFF0000000000000;
  *(v28 + 24) = 0;
  *(v28 + 16) = 0x3FA999999999999ALL;
  *(v28 + 72) = 0;
  *(v28 + 32) = 0;
  *(v28 + 40) = 0;
  swift_beginAccess();
  v29 = *(v2 + 48);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 48) = v29;
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v29);
    v29 = result;
    *(v2 + 48) = result;
  }

  if (*(v29 + 16) <= v27)
  {
    __break(1u);
  }

  else
  {
    *(v29 + 8 * v27 + 32) = v28;
    *(v2 + 48) = v29;
    swift_endAccess();
  }

  return result;
}

uint64_t BoundingBoxScaleManipulator.FaceHandleContainer.setScaleFromScreenConstraints(arView:extents:)(void *a1, float32x4_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v5 = *(v2 + 40);
  if ((v5 & 0xC000000000000001) == 0)
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_32;
    }

    if (a1)
    {
      goto LABEL_4;
    }

LABEL_10:
    if (one-time initialization token for logger == -1)
    {
LABEL_11:
      v12 = type metadata accessor for Logger();
      __swift_project_value_buffer(v12, logger);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 134349056;
        *(v15 + 4) = 0x4072C00000000000;
        _os_log_impl(&dword_23B824000, v13, v14, "Can't get arView!  Using default screen size for handle constraint %{public}f", v15, 0xCu);
        MEMORY[0x23EEB0B70](v15, -1, -1);
      }

      v11 = 300.0;
      goto LABEL_15;
    }

LABEL_32:
    swift_once();
    goto LABEL_11;
  }

  MEMORY[0x23EEAFC40](0, v5);

  if (!a1)
  {
    goto LABEL_10;
  }

LABEL_4:
  v6 = a1;
  [v6 bounds];
  Width = CGRectGetWidth(v26);
  [v6 bounds];
  Height = CGRectGetHeight(v27);

  if (Height >= Width)
  {
    v9 = Width;
  }

  else
  {
    v9 = Height;
  }

  v10 = v9 * 0.4;
  v11 = 200.0;
  if (v10 > 200.0)
  {
    v11 = v10;
  }

LABEL_15:
  v16 = BoundingBoxScaleManipulator.FaceHandle.computeScaleFromScreenSize(pixels:arView:)(a1, v11);

  v17 = vabsq_f32(a2);
  *(v3 + 24) = v16;
  *(v3 + 28) = fmaxf(fmaxf(v17.f32[0], v17.f32[2]), v17.f32[1]) * 0.1;
  v18 = *(v3 + 40);
  if (v18 >> 62)
  {
    goto LABEL_30;
  }

  v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_17:

  if (v19)
  {
    v20 = 0;
    do
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x23EEAFC40](v20, v18);
        v22 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
LABEL_27:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v20 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_30:
          v19 = __CocoaSet.count.getter();
          goto LABEL_17;
        }

        v21 = *(v18 + 8 * v20 + 32);

        v22 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          goto LABEL_27;
        }
      }

      v23 = *(v3 + 28);
      *(v21 + 60) = v23;
      if (*(v21 + 64))
      {
        type metadata accessor for ModelEntity();

        HasHierarchy.parent.getter();
        HasTransform.setScale(_:relativeTo:)();
      }

      ++v20;
    }

    while (v22 != v19);
  }

  *(v3 + 116) = *(v3 + 24);
  *(v3 + 120) = 0;
  return result;
}

uint64_t BoundingBoxScaleManipulator.FaceHandleContainer.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t BoundingBoxScaleManipulator.init()()
{
  v1 = v0;
  swift_weakInit();
  *(v0 + 24) = 0;
  *(v0 + 32) = 0x3FC999999999999ALL;
  type metadata accessor for Entity();
  swift_allocObject();
  *(v0 + 40) = Entity.init()();
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 81) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  *(v0 + 160) = 0u;
  *(v0 + 176) = 0u;
  *(v0 + 192) = 0u;
  *(v0 + 208) = 1;
  *(v0 + 216) = 0;
  type metadata accessor for BoundingBoxScaleManipulator.FaceHandleContainer();
  swift_allocObject();

  v3 = specialized BoundingBoxScaleManipulator.FaceHandleContainer.init(entity:)(v2);

  *(v1 + 48) = v3;
  return v1;
}

void BoundingBoxScaleManipulator.attach(model:target:enabled:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for Scene.AnchorCollection();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, logger);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_23B824000, v13, v14, "Attaching bounding box scale manipulator...", v15, 2u);
    MEMORY[0x23EEB0B70](v15, -1, -1);
  }

  swift_weakAssign();
  *(v4 + 24) = a2;

  v16 = *(a1 + 16);
  if (v16)
  {
    v17 = v16;
    BoundingBoxScaleManipulator.cancelFadeInAnimation(opacity:)(0.0);
    dispatch thunk of ARView.scene.getter();
    dispatch thunk of Scene.anchors.getter();

    _s10RealityKit6EntityCACSQAAWlTm_0(&lazy protocol witness table cache variable for type Scene.AnchorCollection and conformance Scene.AnchorCollection, MEMORY[0x277CDB0C0], MEMORY[0x277CDB0D0]);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    if (v21[4] == v21[0])
    {
      (*(v9 + 8))(v11, v8);
    }

    else
    {
      v18 = dispatch thunk of Collection.subscript.read();

      v18(v21, 0);
      (*(v9 + 8))(v11, v8);
      HasHierarchy.addChild(_:preservingWorldTransform:)();
    }

    BoundingBoxScaleManipulator.attachGestures()();
    BoundingBoxScaleManipulator.subscribeToUpdateEvents()();
    v19 = *(v4 + 96);
    *(v4 + 96) = a3 & 1;
    if (v19 != (a3 & 1))
    {
      if (a3)
      {
        BoundingBoxScaleManipulator.attachGestures()();
      }

      else
      {
        BoundingBoxScaleManipulator.detachGestures()();
      }
    }

    BoundingBoxScaleManipulator.startFadeInAnimation()();
  }
}

Swift::Void __swiftcall BoundingBoxScaleManipulator.detach()()
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, logger);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_23B824000, v1, v2, "Detaching bounding box scale manipulator...", v3, 2u);
    MEMORY[0x23EEB0B70](v3, -1, -1);
  }

  BoundingBoxScaleManipulator.unsubscribeFromUpdateEvents()();
  BoundingBoxScaleManipulator.detachGestures()();
  type metadata accessor for Entity();
  HasHierarchy.removeFromParent(preservingWorldTransform:)(0);
  BoundingBoxScaleManipulator.cancelFadeInAnimation(opacity:)(0.0);

  swift_weakAssign();
}

uint64_t BoundingBoxScaleManipulator.update(deltaTime:)(double a1)
{
  v2 = *(v1 + 104) + a1;
  *(v1 + 104) = v2;
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = *(result + 16);
    v5 = v4;
    BoundingBoxScaleManipulator.FaceHandleContainer.update(time:in:)(v4, v2);

    swift_beginAccess();
    outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v1 + 112, &v11, &_s19_RealityKit_SwiftUI9Animation_pSgMd, &_s19_RealityKit_SwiftUI9Animation_pSgMR);
    if (v12)
    {
      outlined init with take of Animation(&v11, v13);
      __swift_project_boxed_opaque_existential_1(v13, v14);
      RampAnimation.update(time:)(*(v1 + 104));
      v6 = __swift_project_boxed_opaque_existential_1(v13, v14);
      if (*(*v6 + 56) < *(*v6 + 64))
      {
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v7 = type metadata accessor for Logger();
        __swift_project_value_buffer(v7, logger);
        v8 = Logger.logObject.getter();
        v9 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v8, v9))
        {
          v10 = swift_slowAlloc();
          *v10 = 0;
          _os_log_impl(&dword_23B824000, v8, v9, "Fade in complete!  Culling animation.", v10, 2u);
          MEMORY[0x23EEB0B70](v10, -1, -1);
        }

        BoundingBoxScaleManipulator.cancelFadeInAnimation(opacity:)(1.0);
      }

      return __swift_destroy_boxed_opaque_existential_0Tm(v13);
    }

    else
    {

      return outlined destroy of PerspectiveCameraComponent?(&v11, &_s19_RealityKit_SwiftUI9Animation_pSgMd, &_s19_RealityKit_SwiftUI9Animation_pSgMR);
    }
  }

  return result;
}

uint64_t BoundingBoxScaleManipulator.startFadeInAnimation()()
{
  v1 = *(v0 + 48);
  result = swift_beginAccess();
  v3 = *(v1 + 40);
  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_10:
    v7 = swift_allocObject();
    swift_weakInit();
    v8 = type metadata accessor for RampAnimation();
    v9 = swift_allocObject();
    *(v9 + 64) = 0xFFF0000000000000;
    *(v9 + 24) = 0;
    *(v9 + 16) = 0x3FC999999999999ALL;
    *(v9 + 32) = partial apply for closure #1 in BoundingBoxScaleManipulator.startFadeInAnimation();
    *(v9 + 40) = v7;
    *(v9 + 72) = 0;
    v10 = *(v0 + 104);
    *(v9 + 48) = v10;
    *(v9 + 56) = v10 + 0.2;
    v11[3] = v8;
    v11[4] = &protocol witness table for RampAnimation;
    v11[0] = v9;
    swift_beginAccess();
    outlined assign with take of Cancellable?(v11, v0 + 112, &_s19_RealityKit_SwiftUI9Animation_pSgMd, &_s19_RealityKit_SwiftUI9Animation_pSgMR);
    return swift_endAccess();
  }

  result = __CocoaSet.count.getter();
  v4 = result;
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v4 >= 1)
  {

    for (i = 0; i != v4; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x23EEAFC40](i, v3);
      }

      else
      {
      }

      *(v6 + 56) = 0;
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in BoundingBoxScaleManipulator.startFadeInAnimation()(uint64_t a1, float a2)
{
  v2 = a2;
  if (a2 > 1.0)
  {
    a2 = 1.0;
  }

  if (v2 > 0.0)
  {
    v3 = a2;
  }

  else
  {
    v3 = 0.0;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = *(result + 48);
    result = swift_beginAccess();
    v6 = *(v5 + 40);
    if (v6 >> 62)
    {
      result = __CocoaSet.count.getter();
      v7 = result;
      if (result)
      {
LABEL_9:
        if (v7 < 1)
        {
          __break(1u);
        }

        else
        {
          v8 = (v3 * v3) / ((((v3 * v3) - v2) + ((v3 * v3) - v2)) + 1.0);

          for (i = 0; i != v7; ++i)
          {
            if ((v6 & 0xC000000000000001) != 0)
            {
              v10 = MEMORY[0x23EEAFC40](i, v6);
            }

            else
            {
            }

            *(v10 + 56) = v8;
          }
        }

        return result;
      }
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
        goto LABEL_9;
      }
    }
  }

  return result;
}

uint64_t BoundingBoxScaleManipulator.cancelFadeInAnimation(opacity:)(float a1)
{
  v2 = v1;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, logger);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_23B824000, v5, v6, "Cancelling box handle fade in...", v7, 2u);
    MEMORY[0x23EEB0B70](v7, -1, -1);
  }

  v15 = 0;
  memset(v14, 0, sizeof(v14));
  swift_beginAccess();
  outlined assign with take of Cancellable?(v14, v2 + 112, &_s19_RealityKit_SwiftUI9Animation_pSgMd, &_s19_RealityKit_SwiftUI9Animation_pSgMR);
  swift_endAccess();
  v8 = *(v2 + 48);
  result = swift_beginAccess();
  v10 = *(v8 + 40);
  if (v10 >> 62)
  {
    result = __CocoaSet.count.getter();
    v11 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v11)
    {
      return result;
    }
  }

  if (v11 < 1)
  {
    __break(1u);
  }

  else
  {

    for (i = 0; i != v11; ++i)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x23EEAFC40](i, v10);
      }

      else
      {
      }

      *(v13 + 56) = a1;
    }
  }

  return result;
}

uint64_t BoundingBoxScaleManipulator.beginDragGesture(handle:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v1 + 48);
  if (*(v9 + 32))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (*(v2 + 208) != 1)
  {
    __break(1u);
    goto LABEL_17;
  }

  BoundingBoxScaleManipulator.FaceHandleContainer.updateGrabbedHandleState(_:)(v10);
  *(v9 + 32) = a1;

  if (!*(v2 + 24))
  {
LABEL_20:
    __break(1u);
    return result;
  }

  type metadata accessor for Entity();

  HasTransform.transform.getter();
  v21 = v12;
  v22 = v11;
  v20 = v13;

  v14 = v21;
  *(v2 + 160) = v22;
  *(v2 + 176) = v14;
  *(v2 + 192) = v20;
  *(v2 + 208) = 0;
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = *(result + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_detectBoxModel);

    if (v2)
    {
      if (*(v2 + 24) == 2)
      {
        if (one-time initialization token for logger == -1)
        {
LABEL_8:
          v15 = type metadata accessor for Logger();
          __swift_project_value_buffer(v15, logger);
          v16 = Logger.logObject.getter();
          v17 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v16, v17))
          {
            v18 = swift_slowAlloc();
            *v18 = 0;
            _os_log_impl(&dword_23B824000, v16, v17, "Scale widget: Box handle grabbed... switching to manual update mode.", v18, 2u);
            MEMORY[0x23EEB0B70](v18, -1, -1);
          }

          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
          *v8 = static OS_dispatch_queue.main.getter();
          (*(v5 + 104))(v8, *MEMORY[0x277D85200], v4);
          v19 = _dispatchPreconditionTest(_:)();
          result = (*(v5 + 8))(v8, v4);
          if (v19)
          {
            DetectModeBoxModel.performSwitchStateTransitions(from:to:)(*(v2 + 24), 3u);
            *(v2 + 24) = 3;
          }

          __break(1u);
          goto LABEL_19;
        }

LABEL_17:
        swift_once();
        goto LABEL_8;
      }
    }
  }

  return result;
}

void BoundingBoxScaleManipulator.duringDragGesture(startPoint:currentPoint:)(double a1, double a2, double a3, double a4)
{
  v5 = *(v4 + 48);
  v6 = *(v5 + 32);
  if (!v6)
  {
    return;
  }

  v7 = v4;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v9 = Strong;
  type metadata accessor for Entity();

  HasTransform.position(relativeTo:)();
  *oslog = v10;

  v11 = *(v6 + 16);
  v12 = one-time initialization token for normals;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = static BoundingBoxScaleManipulator.Face.normals;
  if (*(static BoundingBoxScaleManipulator.Face.normals + 2) <= v11)
  {
    __break(1u);
    swift_once();
    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, logger);
    osloga = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(osloga, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      v28 = "Scale widget: Constrained drag had no solution!   Ignoring this point.";
      goto LABEL_12;
    }

LABEL_13:

    return;
  }

  HasTransform.convert(direction:to:)();
  v48 = v14;

  v15 = *(v9 + 16);
  if (!v15)
  {
    __break(1u);
    goto LABEL_48;
  }

  v16 = v15;
  ARView.ray(through:)();
  if (v53)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    return;
  }

  v47 = v51;
  v17 = ARView.ray(through:)();
  if (v56)
  {
    goto LABEL_49;
  }

  v46 = v55.i64[0];
  v20 = specialized static Ray3D.closestPointParameter(to:along:)(v17, *&v51, v52, *oslog, v48, v18, v19);
  v22 = v21;
  specialized static Ray3D.closestPointParameter(to:along:)(v20, v54, v55, *oslog, v48, v23, v24);
  v30 = v29;

  if (*(v7 + 208))
  {
    if (one-time initialization token for logger != -1)
    {
      goto LABEL_44;
    }

    goto LABEL_18;
  }

  v32.n128_f64[0] = specialized simd_float4x4.init(translation:rotation:scale:)(*(v7 + 192), *(v7 + 176), *(v7 + 160));
  v36 = *(v6 + 16);
  if (v13[1].i64[0] <= v36)
  {
    __break(1u);
LABEL_46:
    v43 = __CocoaSet.count.getter();
    goto LABEL_26;
  }

  specialized static BoundingBoxHelpers.stretchedBoundingBox(box:axis:delta:)(v32, v33, v34, v35, v13[v36 + 2], v30 - v22);
  if (*(v7 + 24))
  {

    HasTransform.setTransformMatrix(_:relativeTo:)();
  }

  v37 = swift_weakLoadStrong();
  if (!v37)
  {

    return;
  }

  v38 = v37;
  HasTransform.setTransformMatrix(_:relativeTo:)();
  HasTransform.scale(relativeTo:)();
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of BoundingBoxScaleManipulator.duringDragGesture(startPoint:currentPoint:));
  HasTransform.setScale(_:relativeTo:)();
  v39 = *(v38 + 16);
  v46 = v39;
  *v40.i64 = Transform.init(matrix:)();
  v47 = v42;
  v48 = v41;
  *oslog = v40;
  BoundingBoxScaleManipulator.FaceHandleContainer.setScaleFromScreenConstraints(arView:extents:)(v39, v40);
  swift_beginAccess();
  v7 = *(v5 + 40);
  if (v7 >> 62)
  {
    goto LABEL_46;
  }

  v43 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_26:

  if (v43)
  {
    v44 = 0;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        MEMORY[0x23EEAFC40](v44, v7);
        v45 = v44 + 1;
        if (__OFADD__(v44, 1))
        {
LABEL_36:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v44 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_44:
          swift_once();
LABEL_18:
          v31 = type metadata accessor for Logger();
          __swift_project_value_buffer(v31, logger);
          osloga = Logger.logObject.getter();
          v26 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(osloga, v26))
          {
            v27 = swift_slowAlloc();
            *v27 = 0;
            v28 = "Can't get the starting xform for the box manipulator!  Ignoring...";
LABEL_12:
            _os_log_impl(&dword_23B824000, osloga, v26, v28, v27, 2u);
            MEMORY[0x23EEB0B70](v27, -1, -1);
          }

          goto LABEL_13;
        }

        v45 = v44 + 1;
        if (__OFADD__(v44, 1))
        {
          goto LABEL_36;
        }
      }

      if (*(v5 + 120))
      {
        goto LABEL_50;
      }

      BoundingBoxScaleManipulator.FaceHandle.setPositionLocal(extents:minDistance:)(*oslog, *(v5 + 116));

      ++v44;
    }

    while (v45 != v43);
  }

  *(v5 + 64) = *oslog;
  *(v5 + 80) = v48;
  *(v5 + 96) = v47;
  *(v5 + 112) = 0;
}

id BoundingBoxScaleManipulator.panGesture.getter()
{
  v1 = *(v0 + 216);
  if (v1)
  {
    v2 = *(v0 + 216);
  }

  else
  {
    v3 = swift_allocObject();
    swift_weakInit();
    objc_allocWithZone(type metadata accessor for DragFromPointGestureRecognizer());

    v5 = v3;
    v6 = v0;
    v7 = DragFromPointGestureRecognizer.init(manipulator:onPan:)(v4, partial apply for closure #1 in BoundingBoxScaleManipulator.panGesture.getter, v5);
    v8 = *(v0 + 216);
    *(v6 + 216) = v7;
    v2 = v7;

    v1 = 0;
  }

  v9 = v1;
  return v2;
}

uint64_t closure #1 in BoundingBoxScaleManipulator.panGesture.getter(uint64_t a1, double a2, double a3, double a4, double a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    BoundingBoxScaleManipulator.duringDragGesture(startPoint:currentPoint:)(a2, a3, a4, a5);
  }

  return result;
}

void BoundingBoxScaleManipulator.attachGestures()()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, logger);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_23B824000, v3, v4, "Adding pan gesture...", v5, 2u);
      MEMORY[0x23EEB0B70](v5, -1, -1);
    }

    v6 = *(v1 + 16);
    if (v6)
    {
      v7 = v6;
      v8 = BoundingBoxScaleManipulator.panGesture.getter();
      [v7 addGestureRecognizer_];
    }

    else
    {
      __break(1u);
    }
  }
}

void BoundingBoxScaleManipulator.detachGestures()()
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, logger);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_23B824000, v1, v2, "Removing pan gesture...", v3, 2u);
    MEMORY[0x23EEB0B70](v3, -1, -1);
  }

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + 16);
    v6 = v5;

    if (v5)
    {
      v7 = BoundingBoxScaleManipulator.panGesture.getter();
      [v6 removeGestureRecognizer_];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t BoundingBoxScaleManipulator.subscribeToUpdateEvents()()
{
  v1 = v0;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23B824000, v3, v4, "Subscribing to update events...", v5, 2u);
    MEMORY[0x23EEB0B70](v5, -1, -1);
  }

  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    goto LABEL_9;
  }

  v7 = *(Strong + 16);
  v8 = v7;

  if (v7)
  {
    dispatch thunk of ARView.scene.getter();

    type metadata accessor for SceneEvents.Update();
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    swift_allocObject();
    swift_weakInit();
    Scene.subscribe<A>(to:on:_:)();

    outlined destroy of PerspectiveCameraComponent?(v10, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
LABEL_9:
    swift_beginAccess();
    outlined assign with take of Cancellable?(v12, v1 + 56, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
    return swift_endAccess();
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in BoundingBoxScaleManipulator.subscribeToUpdateEvents()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    SceneEvents.Update.deltaTime.getter();
    BoundingBoxScaleManipulator.update(deltaTime:)(v3);
  }

  return result;
}

uint64_t BoundingBoxScaleManipulator.unsubscribeFromUpdateEvents()()
{
  v1 = v0;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23B824000, v3, v4, "Unsubscribing from update events...", v5, 2u);
    MEMORY[0x23EEB0B70](v5, -1, -1);
  }

  swift_beginAccess();
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v1 + 56, &v8, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  if (*(&v9 + 1))
  {
    outlined init with copy of Cancellable(&v8, v7);
    outlined destroy of PerspectiveCameraComponent?(&v8, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    dispatch thunk of Cancellable.cancel()();
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
  }

  else
  {
    outlined destroy of PerspectiveCameraComponent?(&v8, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  }

  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  swift_beginAccess();
  outlined assign with take of Cancellable?(&v8, v1 + 56, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  result = swift_endAccess();
  *(v1 + 104) = 0;
  return result;
}

uint64_t BoundingBoxScaleManipulator.__deallocating_deinit()
{
  swift_weakDestroy();

  outlined destroy of PerspectiveCameraComponent?(v0 + 56, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  outlined destroy of PerspectiveCameraComponent?(v0 + 112, &_s19_RealityKit_SwiftUI9Animation_pSgMd, &_s19_RealityKit_SwiftUI9Animation_pSgMR);

  return swift_deallocClassInstance();
}

uint64_t DragFromPointGestureRecognizer.touchesMoved(_:with:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UITouch, 0x277D75C68);
  lazy protocol witness table accessor for type UITouch and conformance NSObject();
  isa = Set._bridgeToObjectiveC()().super.isa;
  v12.receiver = v3;
  v12.super_class = type metadata accessor for DragFromPointGestureRecognizer();
  objc_msgSendSuper2(&v12, sel_touchesMoved_withEvent_, isa, a2);

  if ((a1 & 0xC000000000000001) != 0)
  {
    result = __CocoaSet.count.getter();
    if (result < 2)
    {
      return result;
    }
  }

  else
  {
    result = *(a1 + 16);
    if (result < 2)
    {
      return result;
    }
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, logger);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_23B824000, v9, v10, "Drag got an extra touch!  failing!", v11, 2u);
    MEMORY[0x23EEB0B70](v11, -1, -1);
  }

  return [v3 setState_];
}

void DragFromPointGestureRecognizer.touchesEnded(_:with:)(uint64_t a1, uint64_t a2, SEL *a3, uint64_t (*a4)(void), const char *a5)
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UITouch, 0x277D75C68);
  lazy protocol witness table accessor for type UITouch and conformance NSObject();
  isa = Set._bridgeToObjectiveC()().super.isa;
  v22.receiver = v5;
  v22.super_class = type metadata accessor for DragFromPointGestureRecognizer();
  objc_msgSendSuper2(&v22, *a3, isa, a2);

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, logger);
    v14 = Logger.logObject.getter();
    v15 = a4();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_23B824000, v14, v15, a5, v16, 2u);
      MEMORY[0x23EEB0B70](v16, -1, -1);
    }

    v17 = *(v12 + 48);
    BoundingBoxScaleManipulator.FaceHandleContainer.updateGrabbedHandleState(_:)(0);
    *(v17 + 32) = 0;

    *(v12 + 176) = 0u;
    *(v12 + 192) = 0u;
    *(v12 + 160) = 0u;
    *(v12 + 208) = 1;
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, logger);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_23B824000, v19, v20, "Manipulator has been destroyed, exiting gesture callbacks...", v21, 2u);
      MEMORY[0x23EEB0B70](v21, -1, -1);
    }
  }
}

uint64_t @objc DragFromPointGestureRecognizer.touchesEnded(_:with:)(void *a1, uint64_t a2, uint64_t a3, void *a4, SEL *a5, uint64_t (*a6)(void), const char *a7)
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UITouch, 0x277D75C68);
  lazy protocol witness table accessor for type UITouch and conformance NSObject();
  v12 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = a4;
  v14 = a1;
  DragFromPointGestureRecognizer.touchesEnded(_:with:)(v12, v13, a5, a6, a7);
}

BOOL DragFromPointGestureRecognizer.gestureRecognizerShouldBegin(_:)(void *a1)
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
  if (static NSObject.== infix(_:_:)())
  {
    v2 = [a1 view];
    [a1 locationInView_];
    v4 = v3;
    v6 = v5;

    DragFromPointGestureRecognizer.findFaceHandle(at:)(v4, v6);
    v8 = v7;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, logger);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v22 = v13;
      *v12 = 136446210;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI27BoundingBoxScaleManipulatorC10FaceHandleCSgMd, &_s19_RealityKit_SwiftUI27BoundingBoxScaleManipulatorC10FaceHandleCSgMR);
      v14 = String.init<A>(describing:)();
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v22);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_23B824000, v10, v11, "Found FaceHandle=%{public}s at hit point.", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
      MEMORY[0x23EEB0B70](v13, -1, -1);
      MEMORY[0x23EEB0B70](v12, -1, -1);
    }

    return v8 != 0;
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, logger);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_23B824000, v19, v20, "delegate got a gestureRecognizer that wasn't self!", v21, 2u);
      MEMORY[0x23EEB0B70](v21, -1, -1);
    }

    return 0;
  }
}

void DragFromPointGestureRecognizer.findFaceHandle(at:)(double a1, double a2)
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, logger);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_23B824000, v16, v17, "Manipulator has been destroyed, exiting gesture callbacks...", v18, 2u);
      MEMORY[0x23EEB0B70](v18, -1, -1);
    }

    return;
  }

  v3 = Strong;
  v4 = swift_weakLoadStrong();
  if (!v4)
  {
LABEL_39:

    return;
  }

  v5 = *(v4 + 16);
  if (!v5)
  {
    goto LABEL_41;
  }

  v6 = v5;
  v7 = ARView.entities(at:)();

  if (v7 >> 62)
  {
    goto LABEL_37;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
LABEL_38:

    goto LABEL_39;
  }

LABEL_6:
  v9 = 0;
  v21 = v3;
  v22 = v7 & 0xC000000000000001;
  v19 = v7 & 0xFFFFFFFFFFFFFF8;
  v20 = v7;
  while (v22)
  {
    MEMORY[0x23EEAFC40](v9, v7);
    v10 = __OFADD__(v9++, 1);
    if (v10)
    {
      goto LABEL_36;
    }

LABEL_14:
    v3 = *(v3 + 48);
    swift_beginAccess();
    v11 = *(v3 + 40);
    if (v11 >> 62)
    {
      v12 = __CocoaSet.count.getter();
    }

    else
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v12)
    {
      v13 = 0;
      do
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x23EEAFC40](v13, v11);
          v14 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            goto LABEL_34;
          }
        }

        else
        {
          if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_35;
          }

          v7 = *(v11 + 8 * v13 + 32);

          v14 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
LABEL_34:
            __break(1u);
LABEL_35:
            __break(1u);
LABEL_36:
            __break(1u);
LABEL_37:
            v8 = __CocoaSet.count.getter();
            if (!v8)
            {
              goto LABEL_38;
            }

            goto LABEL_6;
          }
        }

        if (*(v7 + 64))
        {
          type metadata accessor for Entity();
          _s10RealityKit6EntityCACSQAAWlTm_0(&lazy protocol witness table cache variable for type Entity and conformance Entity, MEMORY[0x277CDB1C8], MEMORY[0x277CDB1D8]);

          v3 = dispatch thunk of static Equatable.== infix(_:_:)();

          if (v3)
          {

            return;
          }
        }

        ++v13;
      }

      while (v14 != v12);
    }

    v7 = v20;
    v3 = v21;
    if (v9 == v8)
    {
      goto LABEL_38;
    }
  }

  if (v9 < *(v19 + 16))
  {

    v10 = __OFADD__(v9++, 1);
    if (v10)
    {
      goto LABEL_36;
    }

    goto LABEL_14;
  }

  __break(1u);
LABEL_41:
  __break(1u);
}

uint64_t specialized BoundingBoxScaleManipulator.FaceHandleContainer.init(entity:)(uint64_t a1)
{
  __asm { FMOV            V0.2S, #1.0 }

  *(v1 + 24) = _D0;
  v8 = MEMORY[0x277D84F90];
  *(v1 + 32) = 0;
  *(v1 + 40) = v8;
  *(v1 + 48) = &outlined read-only object #0 of BoundingBoxScaleManipulator.FaceHandleContainer.init(entity:);
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  *(v1 + 112) = 1;
  *(v1 + 116) = 0;
  *(v1 + 120) = 1;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #1 of BoundingBoxScaleManipulator.FaceHandleContainer.init(entity:));
  *(v1 + 128) = v9;
  *(v1 + 144) = 1017370378;
  *(v1 + 152) = 0x3FA999999999999ALL;
  *(v1 + 16) = a1;

  BoundingBoxScaleManipulator.FaceHandleContainer.load()();
  return v1;
}

unint64_t specialized BoundingBoxScaleManipulator.Face.Which.init(rawValue:)(unint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  return result;
}

uint64_t specialized BoundingBoxScaleManipulator.FaceHandleContainer.updateBottomHandleState(time:cameraWorld:boxWorld:)(uint64_t a1, double a2, double a3, double a4, __n128 a5, float32x4_t a6, float32x4_t a7)
{
  v9 = v7;
  v25 = *(&a4 + 1);
  *v10.i64 = specialized simd_float4x4.init(translation:rotation:scale:)(a7, a6, a5);
  v20 = v10;
  v21 = v11;
  v23 = v12;
  v24 = v13;
  v22 = v7[8];
  swift_beginAccess();
  v14 = v7[2].i64[1];
  if ((v14 & 0xC000000000000001) != 0)
  {

    v15 = MEMORY[0x23EEAFC40](1, v14);
  }

  else
  {
    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
      __break(1u);
      goto LABEL_17;
    }

    v15 = *(v14 + 40);
  }

  LODWORD(v16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v20, *&v22), v21, *&v22, 1), v23, v22, 2), v24, v22, 3).i32[1];
  BoundingBoxScaleManipulator.FaceHandle.enabled.willset(v25 < v16);
  *(v15 + 32) = v25 < v16;

  if (v25 >= v16)
  {
    return result;
  }

  v18 = (v16 - v25) / 0.02;
  if (v18 <= 0.0)
  {
    v18 = 0.0;
  }

  if (v18 <= 1.0)
  {
    v8 = v18;
  }

  else
  {
    v8 = 1.0;
  }

  v9 = v9[2].i64[1];
  if ((v9 & 0xC000000000000001) == 0)
  {
    if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
      __break(1u);
      return result;
    }

    v19 = v9[2].i64[1];

    goto LABEL_13;
  }

LABEL_17:

  v19 = MEMORY[0x23EEAFC40](1, v9);

LABEL_13:
  *(v19 + 56) = v8;
}

uint64_t outlined init with copy of Cancellable(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t outlined assign with take of Cancellable?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t _s10RealityKit6EntityCACSQAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for BoundingBoxScaleManipulator.Face(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BoundingBoxScaleManipulator.Face(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BoundingBoxScaleManipulator.Face.Which and conformance BoundingBoxScaleManipulator.Face.Which(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type BoundingBoxScaleManipulator.Face.Which and conformance BoundingBoxScaleManipulator.Face.Which;
  if (!lazy protocol witness table cache variable for type BoundingBoxScaleManipulator.Face.Which and conformance BoundingBoxScaleManipulator.Face.Which)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BoundingBoxScaleManipulator.Face.Which and conformance BoundingBoxScaleManipulator.Face.Which);
  }

  return result;
}

void BoundingBoxAnimatedUpdater.setTargetWorld(transform:)(__n128 a1, __n128 a2, __n128 a3)
{
  v3[3] = a1;
  v3[4] = a2;
  v3[5] = a3;
  v3[2].n128_u8[8] = 1;
  if (v3[1].n128_u8[0] == 1)
  {
    if (v3[6].n128_u64[0])
    {

      if (AnimationPlaybackController.isPlaying.getter() & 1) == 0 || (dispatch thunk of AnimationPlaybackController.isComplete.getter())
      {
        v4 = dispatch thunk of AnimationPlaybackController.isComplete.getter();

        if ((v4 & 1) == 0)
        {
          return;
        }

        v3[6].n128_u64[0] = 0;
      }
    }

    else
    {

      BoundingBoxAnimatedUpdater.startNewAnimationIfNeeded()();
    }
  }
}

void BoundingBoxAnimatedUpdater.startNewAnimationIfNeeded()()
{
  if (v0[6].n128_u64[0])
  {
    __break(1u);
  }

  else
  {
    v1 = v0;
    if (v0[2].n128_u8[8] == 1)
    {
      if (swift_weakLoadStrong() && (type metadata accessor for Entity(), HasTransform.transformMatrix(relativeTo:)(), , v2.n128_f64[0] = Transform.init(matrix:)(), specialized BoundingBoxAnimatedUpdater.createAnimationResource(fromTransform:toTransform:duration:)(v2, v3, v4, v0[3], v0[4], v0[5], v0[2].n128_f64[0])))
      {
        if (swift_weakLoadStrong())
        {
          v5 = Entity.playAnimation(_:transitionDuration:blendLayerOffset:separateAnimatedValue:startsPaused:clock:)();
        }

        else
        {

          v5 = 0;
        }

        v0[6].n128_u64[0] = v5;
      }

      else
      {
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v6 = type metadata accessor for Logger();
        __swift_project_value_buffer(v6, logger);
        v7 = Logger.logObject.getter();
        v8 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v7, v8))
        {
          v9 = swift_slowAlloc();
          *v9 = 0;
          _os_log_impl(&dword_23B824000, v7, v8, "Failed to make a FromToByAnimation resource!", v9, 2u);
          MEMORY[0x23EEB0B70](v9, -1, -1);
        }
      }

      v1[2].n128_u8[8] = 0;
    }
  }
}

uint64_t BoundingBoxAnimatedUpdater.__deallocating_deinit()
{
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t specialized BoundingBoxAnimatedUpdater.createAnimationResource(fromTransform:toTransform:duration:)(__n128 a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, double a7)
{
  v32 = a6;
  v31 = a5;
  v30 = a4;
  v29 = a3;
  v28 = a2;
  v27 = a1;
  v36 = type metadata accessor for AnimationFillMode();
  MEMORY[0x28223BE20](v36);
  v35 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for AnimationRepeatMode();
  v8 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AnimationTimingFunction();
  MEMORY[0x28223BE20](v11 - 8);
  v26[1] = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation10BindTargetOSgMd, &_s17RealityFoundation10BindTargetOSgMR);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v26 - v14;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation17FromToByAnimationVy0A3Kit9TransformVGMd, &_s17RealityFoundation17FromToByAnimationVy0A3Kit9TransformVGMR);
  v16 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v18 = v26 - v17;
  v46 = v27;
  v47 = v28;
  v48 = v29;
  v49 = 0;
  v42 = v30;
  v43 = v31;
  v44 = v32;
  v45 = 0;
  v40 = 0u;
  v39 = 0u;
  v38 = 0u;
  v41 = 1;
  v19 = *MEMORY[0x277CDB230];
  v20 = type metadata accessor for BindTarget();
  v21 = *(v20 - 8);
  (*(v21 + 104))(v15, v19, v20);
  (*(v21 + 56))(v15, 0, 1, v20);
  static AnimationTimingFunction.linear.getter();
  (*(v8 + 104))(v10, *MEMORY[0x277CDB418], v34);
  v37 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type AnimationFillMode and conformance AnimationFillMode();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay17RealityFoundation17AnimationFillModeVGMd, &_sSay17RealityFoundation17AnimationFillModeVGMR);
  lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type [AnimationFillMode] and conformance [A], &_sSay17RealityFoundation17AnimationFillModeVGMd, &_sSay17RealityFoundation17AnimationFillModeVGMR, MEMORY[0x277D83970]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v22 = v33;
  FromToByAnimation.init(name:from:to:by:duration:timing:isAdditive:bindTarget:blendLayer:repeatMode:fillMode:trimStart:trimEnd:trimDuration:offset:delay:speed:)();
  type metadata accessor for AnimationResource();
  v47.n128_u64[1] = v22;
  v48.n128_u64[0] = lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type FromToByAnimation<Transform> and conformance FromToByAnimation<A>, &_s17RealityFoundation17FromToByAnimationVy0A3Kit9TransformVGMd, &_s17RealityFoundation17FromToByAnimationVy0A3Kit9TransformVGMR, MEMORY[0x277CDB400]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v46);
  (*(v16 + 16))(boxed_opaque_existential_1, v18, v22);
  v24 = static AnimationResource.generate(with:)();
  (*(v16 + 8))(v18, v22);
  __swift_destroy_boxed_opaque_existential_0Tm(&v46);
  return v24;
}

uint64_t specialized BoundingBoxAnimatedUpdater.init(entity:duration:autoStart:)(uint64_t a1, char a2, double a3)
{
  *(v3 + 16) = 0;
  swift_weakInit();
  *(v3 + 40) = 0;
  *(v3 + 96) = 0;
  swift_weakAssign();
  *(v3 + 32) = a3;
  type metadata accessor for Entity();
  HasTransform.transformMatrix(relativeTo:)();
  *&v6 = Transform.init(matrix:)();
  *(v3 + 48) = v6;
  *(v3 + 64) = v7;
  *(v3 + 80) = v8;
  *(v3 + 16) = a2;
  return v3;
}

unint64_t lazy protocol witness table accessor for type AnimationFillMode and conformance AnimationFillMode()
{
  result = lazy protocol witness table cache variable for type AnimationFillMode and conformance AnimationFillMode;
  if (!lazy protocol witness table cache variable for type AnimationFillMode and conformance AnimationFillMode)
  {
    type metadata accessor for AnimationFillMode();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationFillMode and conformance AnimationFillMode);
  }

  return result;
}

uint64_t _s19_RealityKit_SwiftUI13TubeGeneratorC32generateClosedUnitCircleVertices33_4582A7B2C0DC7AC017F89A273C982EDDLL11numSegmentsSays5SIMD4VySfGGSi_tFZSo16CameraPathVertexV_Tt0g5(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (!result)
    {
      return MEMORY[0x277D84F90];
    }

    v2 = 0;
    v3 = 6.2832 / result;
    v4 = MEMORY[0x277D84F90];
    do
    {
      v9 = cosf(v3 * v2);
      v8 = sinf(v3 * v2);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
      }

      v6 = *(v4 + 2);
      v5 = *(v4 + 3);
      if (v6 >= v5 >> 1)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1, v4);
      }

      ++v2;
      *&v7 = __PAIR64__(LODWORD(v8), LODWORD(v9));
      DWORD2(v7) = 0;
      HIDWORD(v7) = 1.0;
      *(v4 + 2) = v6 + 1;
      *&v4[16 * v6 + 32] = v7;
    }

    while (v1 != v2);
    return v4;
  }

  return result;
}