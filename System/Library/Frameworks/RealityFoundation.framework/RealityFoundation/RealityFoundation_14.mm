void specialized Entity.ComponentSet.set<A>(_:)(uint64_t a1, float a2)
{
  if (one-time initialization token for $current != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  if (v20)
  {
    swift_unknownObjectRelease();
    if (REEntityGetComponent())
    {
      REBillboardComponentGetBlendFactor();
      v5 = v4;
      v6 = MEMORY[0x1E69E7CC0];
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1VyAE18BillboardComponentVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1VyAE18BillboardComponentVGTt0g5Tf4g_n(v6);
      v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1VyAE18BillboardComponentVGTt0g5Tf4g_n(v6);

      v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1VyAE18BillboardComponentVGTt0g5Tf4g_n(v6);

      KeyPath = swift_getKeyPath();
      if (v5 == a2)
      {
      }

      else
      {
        v10 = KeyPath;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA18BillboardComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA18BillboardComponentV_SfGMR);
        v11 = swift_allocObject();
        *(v11 + 16) = v5;
        *(v11 + 24) = v10;
        swift_retain_n();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v11, v10, isUniquelyReferenced_nonNull_native);
        v13 = swift_allocObject();
        *(v13 + 16) = a2;
        *(v13 + 24) = v10;

        v14 = swift_isUniquelyReferenced_nonNull_native();
        v20 = v8;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, v10, v14);
      }

      if ((_s17RealityFoundation23ComponentAnimatableDataV2eeoiySbACyxG_AEtFZAA09BillboardC0V_Tt1B5(v7, v8) & 1) != 0 || (TaskLocal.get()(), !v20))
      {
      }

      else if (REEntityGetComponent())
      {
        REBillboardComponentGetBlendFactor();
        v18 = v15;
        v19 = 0;
        ObjectType = swift_getObjectType();
        v20 = v7;
        v17 = v8;
        (*(v21 + 8))(a1, &v18, &v20, &v17, &type metadata for BillboardComponent, &protocol witness table for BillboardComponent, ObjectType, v21);

        swift_unknownObjectRelease();
      }

      else
      {
        __break(1u);
      }
    }
  }

  else
  {
    LOBYTE(v20) = 0;
    _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation09BillboardD0V_TtB5Tf4ndn_n(LODWORD(a2), a1);
  }
}

void BillboardActionHandler.actionUpdated(event:)(char *__src)
{
  memcpy(v48, __src, sizeof(v48));
  v3 = *(__src + 4);
  v52 = *(__src + 3);
  v53 = v3;
  v54[0] = *(__src + 5);
  *(v54 + 13) = *(__src + 93);
  v4 = *(__src + 2);
  v50 = *(__src + 1);
  v51 = v4;
  v49 = v48[13];
  if (v48[13])
  {
    outlined init with copy of Entity?(&v49, v45);
    if (REEntityGetComponent())
    {
      REBillboardComponentGetBlendFactor();
      if ((v48[24] & 1) == 0)
      {
        v5 = *&v48[23];
        specialized ActionEvent.animationState.getter(&v42);
        if (!v43)
        {
          outlined destroy of BodyTrackingComponent?(&v49, &_s10RealityKit6EntityCSgMd, &_s10RealityKit6EntityCSgMR);
          outlined destroy of BodyTrackingComponent?(&v42, &_s17RealityFoundation22AnimationStateProtocol_pSgMd, &_s17RealityFoundation22AnimationStateProtocol_pSgMR);
          return;
        }

        outlined init with take of ForceEffectBase(&v42, v45);
        if (*(v1 + 4) != 1)
        {
          v23 = *v1;
          v24 = v46;
          v25 = v47;
          __swift_project_boxed_opaque_existential_1(v45, v46);
          v40 = *(v25 + 24);
          AssociatedTypeWitness = swift_getAssociatedTypeWitness();
          v27 = type metadata accessor for Optional();
          v41 = &v39;
          v28 = *(v27 - 8);
          v29 = MEMORY[0x1EEE9AC00](v27);
          v31 = &v39 - v30;
          v40(v24, v25, v29);
          v32 = *(AssociatedTypeWitness - 8);
          if ((*(v32 + 48))(v31, 1, AssociatedTypeWitness) == 1)
          {
            outlined destroy of BodyTrackingComponent?(&v49, &_s10RealityKit6EntityCSgMd, &_s10RealityKit6EntityCSgMR);
            (*(v28 + 8))(v31, v27);
            goto LABEL_21;
          }

          v43 = AssociatedTypeWitness;
          AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v42);
          (*(v32 + 32))(boxed_opaque_existential_1, v31, AssociatedTypeWitness);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimatableData_pMd, &_s17RealityFoundation14AnimatableData_pMR);
          if (swift_dynamicCast())
          {
            v34 = *&v48[16];
            v35 = BillboardAction.transitionInValue(initialValue:normalizedTime:eventDuration:)(v23, v5, *&v48[16]);
            v36 = v35 * BillboardAction.transitionOutValue(initialValue:normalizedTime:eventDuration:)(v23, v5, v34);
            v37 = v46;
            v38 = v47;
            __swift_project_boxed_opaque_existential_1(v45, v46);
            *&v42 = v36;
            (*(v38 + 64))(&v42, MEMORY[0x1E69E6448], v37, v38);
          }
        }

        outlined destroy of BodyTrackingComponent?(&v49, &_s10RealityKit6EntityCSgMd, &_s10RealityKit6EntityCSgMR);
LABEL_21:
        __swift_destroy_boxed_opaque_existential_1(v45);
        return;
      }
    }

    else
    {
      v45[0] = 0;
      v45[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(78);
      MEMORY[0x1C68F3410](0x2072656C646E6148, 0xEC00000020726F66);
      *&v42 = &type metadata for BillboardAction;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation15BillboardActionVmMd, &_s17RealityFoundation15BillboardActionVmMR);
      v14 = String.init<A>(describing:)();
      MEMORY[0x1C68F3410](v14);

      MEMORY[0x1C68F3410](0xD00000000000003DLL, 0x80000001C18E0F10);
      REEntityGetName();
      v15 = String.init(cString:)();
      MEMORY[0x1C68F3410](v15);

      MEMORY[0x1C68F3410](39, 0xE100000000000000);
      v17 = v45[0];
      v16 = v45[1];
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      __swift_project_value_buffer(v18, static AnimationLogger.logger);

      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v45[0] = v22;
        *v21 = 136315138;
        *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v16, v45);
        _os_log_impl(&dword_1C1358000, v19, v20, "%s", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v22);
        MEMORY[0x1C6902A30](v22, -1, -1);
        MEMORY[0x1C6902A30](v21, -1, -1);
      }
    }

    outlined destroy of BodyTrackingComponent?(&v49, &_s10RealityKit6EntityCSgMd, &_s10RealityKit6EntityCSgMR);
    return;
  }

  _StringGuts.grow(_:)(46);

  strcpy(v45, "Handler for ");
  BYTE5(v45[1]) = 0;
  HIWORD(v45[1]) = -5120;
  *&v42 = &type metadata for BillboardAction;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation15BillboardActionVmMd, &_s17RealityFoundation15BillboardActionVmMR);
  v6 = String.init<A>(describing:)();
  MEMORY[0x1C68F3410](v6);

  MEMORY[0x1C68F3410](0xD000000000000020, 0x80000001C18E08A0);
  v8 = v45[0];
  v7 = v45[1];
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static AnimationLogger.logger);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v45[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, v45);
    _os_log_impl(&dword_1C1358000, v10, v11, "%s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1C6902A30](v13, -1, -1);
    MEMORY[0x1C6902A30](v12, -1, -1);
  }
}

void BillboardActionHandler.actionEnded(event:)(uint64_t a1)
{
  if (*(a1 + 104))
  {
    if ((*(v1 + 4) & 1) == 0)
    {
      v2 = *v1;

      specialized Entity.ComponentSet.set<A>(_:)(v3, v2);
    }
  }

  else
  {
    _StringGuts.grow(_:)(46);

    strcpy(v12, "Handler for ");
    BYTE5(v12[1]) = 0;
    HIWORD(v12[1]) = -5120;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation15BillboardActionVmMd, &_s17RealityFoundation15BillboardActionVmMR);
    v4 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v4);

    MEMORY[0x1C68F3410](0xD000000000000020, 0x80000001C18E08A0);
    v6 = v12[0];
    v5 = v12[1];
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static AnimationLogger.logger);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12[0] = v11;
      *v10 = 136315138;
      *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, v12);
      _os_log_impl(&dword_1C1358000, v8, v9, "%s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x1C6902A30](v11, -1, -1);
      MEMORY[0x1C6902A30](v10, -1, -1);
    }
  }
}

uint64_t outlined init with copy of Entity?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityCSgMd, &_s10RealityKit6EntityCSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for BillboardActionHandler(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for BillboardActionHandler(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
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

  *(result + 5) = v3;
  return result;
}

uint64_t specialized static __RKVisibilityShowScaleDownAnimation.createVisibilityShowScaleDownAnimation(transform:_:localBoundingBox:variant:duration:distance:orientation:additive:)(__n128 *a1, uint64_t a2, _BYTE *a3, char a4, float a5, float a6, float32x4_t a7)
{
  v55 = a1[1];
  if (*a3)
  {
    if (*a3 == 1)
    {
      v57._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 105, 0, MEMORY[0x1E69E7CC0]);
      v8 = &outlined read-only object #0 of static __RKVisibilityShowScaleDownAnimation.createVisibilityShowScaleDownAnimation(transform:_:localBoundingBox:variant:duration:distance:orientation:additive:);
    }

    else
    {
      v57._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 89, 0, MEMORY[0x1E69E7CC0]);
      v8 = &outlined read-only object #1 of static __RKVisibilityShowScaleDownAnimation.createVisibilityShowScaleDownAnimation(transform:_:localBoundingBox:variant:duration:distance:orientation:additive:);
    }

    __makeXfos(_:_:)(v8, &v57);
  }

  else
  {
    v57._rawValue = MEMORY[0x1E69E7CC0];
  }

  rawValue = v57._rawValue;
  if (!*(v57._rawValue + 2))
  {

    return MEMORY[0x1E69E7CC0];
  }

  RESampledAnimationDefaultParameters();
  v10 = rawValue[2];
  if (v10)
  {
    v11 = &rawValue[6 * v10];
    v53 = *v11;
    v54 = *(v11 - 1);
    v52 = v11[1];
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_10;
    }
  }

  else
  {
LABEL_41:
    __break(1u);
  }

  rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10 + 1, 1, rawValue);
LABEL_10:
  v10 = rawValue[2];
  v12 = rawValue[3];
  v13 = v10 + 1;
  if (v10 >= v12 >> 1)
  {
    rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v10 + 1, 1, rawValue);
  }

  rawValue[2] = v13;
  v14 = rawValue + 2;
  v15 = &rawValue[6 * v10 + 4];
  *v15 = v54;
  v15[1] = v53;
  v15[2] = v52;
  v57._rawValue = rawValue;
  v16 = 0.0;
  v17 = 8;
  do
  {
    v18 = *&rawValue[v17];
    v19 = fabsf(*&v18);
    if ((LODWORD(v19) & 0x7FFFFF) != 0)
    {
      v20 = v16;
    }

    else
    {
      v20 = v19;
    }

    if ((~LODWORD(v19) & 0x7F800000) != 0)
    {
      v20 = v19;
    }

    if (v19 >= v16)
    {
      v16 = v20;
    }

    v21 = fabsf(*(&v18 + 1));
    if (v21 >= v16)
    {
      if ((LODWORD(v21) & 0x7FFFFF) == 0)
      {
        v16 = v21;
      }

      if ((~LODWORD(v21) & 0x7F800000) != 0)
      {
        v16 = v21;
      }
    }

    v22 = fabsf(*(&v18 + 2));
    if (v22 >= v16)
    {
      if ((~LODWORD(v22) & 0x7F800000) != 0)
      {
        v16 = v22;
      }

      else if ((LODWORD(v22) & 0x7FFFFF) == 0)
      {
        v16 = v22;
      }
    }

    v17 += 6;
    --v13;
  }

  while (v13);
  v23 = 0;
  v24 = a6 / v16;
  v25 = v16 <= 0.0;
  v26 = 1.0;
  if (!v25)
  {
    v26 = v24;
  }

  v27 = vmulq_f32(v55, v55);
  *v27.i8 = vadd_f32(*v27.i8, *&vextq_s8(v27, v27, 8uLL));
  v27.i32[0] = vadd_f32(*v27.i8, vdup_lane_s32(*v27.i8, 1)).u32[0];
  v28 = vrecpe_f32(v27.u32[0]);
  v29 = vmul_f32(v28, vrecps_f32(v27.u32[0], v28));
  v30 = vmulq_n_f32(vmulq_f32(v55, xmmword_1C1899C90), vmul_f32(v29, vrecps_f32(v27.u32[0], v29)).f32[0]);
  v31 = vnegq_f32(a7);
  v32 = vtrn2q_s32(a7, vtrn1q_s32(a7, v31));
  v33 = vrev64q_s32(a7);
  v33.i32[0] = v31.i32[1];
  v33.i32[3] = v31.i32[2];
  v34 = vaddq_f32(vmlaq_n_f32(vmulq_lane_f32(vextq_s8(a7, v31, 8uLL), *v30.f32, 1), vextq_s8(v32, v32, 8uLL), v30.f32[0]), vmlaq_laneq_f32(vmulq_laneq_f32(a7, v30, 3), v33, v30, 2));
  v35 = vmulq_f32(v34, xmmword_1C1899C90);
  v36 = vnegq_f32(v35);
  v37 = vtrn2q_s32(v35, vtrn1q_s32(v35, v36));
  v38 = vextq_s8(v37, v37, 8uLL);
  v39 = vrev64q_s32(v35);
  v39.i32[0] = v36.i32[1];
  v39.i32[3] = v36.i32[2];
  v40 = vdupq_lane_s32(*v34.f32, 0);
  v41 = vextq_s8(v35, v36, 8uLL);
  v42 = vdupq_laneq_s32(v34, 2);
  v43 = 8;
  do
  {
    if (v23 >= *v14)
    {
      __break(1u);
      goto LABEL_41;
    }

    v44 = vsubq_f32(*&rawValue[v43], *&v14[6 * *v14]);
    v45 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v41, vmuls_lane_f32(v26, *v44.f32, 1)), v38, v26 * v44.f32[0]), v39, vmuls_lane_f32(v26, v44, 2));
    v46 = vnegq_f32(v45);
    v47 = vtrn2q_s32(v45, vtrn1q_s32(v45, v46));
    v48 = vrev64q_s32(v45);
    v48.i32[0] = v46.i32[1];
    v48.i32[3] = v46.i32[2];
    v49 = vaddq_f32(vmlaq_f32(vmulq_laneq_f32(v45, v34, 3), v48, v42), vmlaq_f32(vmulq_lane_f32(vextq_s8(v45, v46, 8uLL), *v34.f32, 1), vextq_s8(v47, v47, 8uLL), v40));
    v49.i32[3] = a7.i32[3];
    ++v23;
    *&rawValue[v43] = v49;
    v43 += 6;
  }

  while (v10 + 1 != v23);
  result = REAssetManagerTimelineAssetCreateSRTSampledAnimation();
  if (result)
  {
    v51 = result;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys13OpaquePointerVGMd, &_ss23_ContiguousArrayStorageCys13OpaquePointerVGMR);
    result = swift_allocObject();
    *(result + 16) = xmmword_1C1887600;
    *(result + 32) = v51;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized static __RKVisibilityShowScaleAnimation.createVisibilityShowScaleAnimation(transform:_:localBoundingBox:variant:duration:distance:orientation:additive:)(float32x4_t *a1, uint64_t a2, _BYTE *a3, char a4, float a5, float a6, float32x4_t a7)
{
  v55 = a1[1];
  if (*a3)
  {
    if (*a3 == 1)
    {
      v57._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 127, 0, MEMORY[0x1E69E7CC0]);
      v8 = &outlined read-only object #1 of static __RKVisibilityShowScaleAnimation.createVisibilityShowScaleAnimation(transform:_:localBoundingBox:variant:duration:distance:orientation:additive:);
    }

    else
    {
      v57._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 124, 0, MEMORY[0x1E69E7CC0]);
      v8 = &outlined read-only object #2 of static __RKVisibilityShowScaleAnimation.createVisibilityShowScaleAnimation(transform:_:localBoundingBox:variant:duration:distance:orientation:additive:);
    }
  }

  else
  {
    v57._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 53, 0, MEMORY[0x1E69E7CC0]);
    v8 = &outlined read-only object #0 of static __RKVisibilityShowScaleAnimation.createVisibilityShowScaleAnimation(transform:_:localBoundingBox:variant:duration:distance:orientation:additive:);
  }

  __makeXfos(_:_:)(v8, &v57);
  rawValue = v57._rawValue;
  if (!*(v57._rawValue + 2))
  {

    return MEMORY[0x1E69E7CC0];
  }

  RESampledAnimationDefaultParameters();
  v10 = rawValue[2];
  if (v10)
  {
    v11 = &rawValue[6 * v10];
    v53 = *v11;
    v54 = *(v11 - 1);
    v52 = v11[1];
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_9;
    }
  }

  else
  {
LABEL_40:
    __break(1u);
  }

  rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10 + 1, 1, rawValue);
LABEL_9:
  v10 = rawValue[2];
  v12 = rawValue[3];
  v13 = v10 + 1;
  if (v10 >= v12 >> 1)
  {
    rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v10 + 1, 1, rawValue);
  }

  rawValue[2] = v13;
  v14 = rawValue + 2;
  v15 = &rawValue[6 * v10 + 4];
  *v15 = v54;
  v15[1] = v53;
  v15[2] = v52;
  v57._rawValue = rawValue;
  v16 = 0.0;
  v17 = 8;
  do
  {
    v18 = *&rawValue[v17];
    v19 = fabsf(*&v18);
    if ((LODWORD(v19) & 0x7FFFFF) != 0)
    {
      v20 = v16;
    }

    else
    {
      v20 = v19;
    }

    if ((~LODWORD(v19) & 0x7F800000) != 0)
    {
      v20 = v19;
    }

    if (v19 >= v16)
    {
      v16 = v20;
    }

    v21 = fabsf(*(&v18 + 1));
    if (v21 >= v16)
    {
      if ((LODWORD(v21) & 0x7FFFFF) == 0)
      {
        v16 = v21;
      }

      if ((~LODWORD(v21) & 0x7F800000) != 0)
      {
        v16 = v21;
      }
    }

    v22 = fabsf(*(&v18 + 2));
    if (v22 >= v16)
    {
      if ((~LODWORD(v22) & 0x7F800000) != 0)
      {
        v16 = v22;
      }

      else if ((LODWORD(v22) & 0x7FFFFF) == 0)
      {
        v16 = v22;
      }
    }

    v17 += 6;
    --v13;
  }

  while (v13);
  v23 = 0;
  v24 = a6 / v16;
  v25 = v16 <= 0.0;
  v26 = 1.0;
  if (!v25)
  {
    v26 = v24;
  }

  v27 = vmulq_f32(v55, v55);
  *v27.i8 = vadd_f32(*v27.i8, *&vextq_s8(v27, v27, 8uLL));
  v27.i32[0] = vadd_f32(*v27.i8, vdup_lane_s32(*v27.i8, 1)).u32[0];
  v28 = vrecpe_f32(v27.u32[0]);
  v29 = vmul_f32(v28, vrecps_f32(v27.u32[0], v28));
  v30 = vmulq_n_f32(vmulq_f32(v55, xmmword_1C1899C90), vmul_f32(v29, vrecps_f32(v27.u32[0], v29)).f32[0]);
  v31 = vnegq_f32(a7);
  v32 = vtrn2q_s32(a7, vtrn1q_s32(a7, v31));
  v33 = vrev64q_s32(a7);
  v33.i32[0] = v31.i32[1];
  v33.i32[3] = v31.i32[2];
  v34 = vaddq_f32(vmlaq_n_f32(vmulq_lane_f32(vextq_s8(a7, v31, 8uLL), *v30.f32, 1), vextq_s8(v32, v32, 8uLL), v30.f32[0]), vmlaq_laneq_f32(vmulq_laneq_f32(a7, v30, 3), v33, v30, 2));
  v35 = vmulq_f32(v34, xmmword_1C1899C90);
  v36 = vnegq_f32(v35);
  v37 = vtrn2q_s32(v35, vtrn1q_s32(v35, v36));
  v38 = vextq_s8(v37, v37, 8uLL);
  v39 = vrev64q_s32(v35);
  v39.i32[0] = v36.i32[1];
  v39.i32[3] = v36.i32[2];
  v40 = vdupq_lane_s32(*v34.f32, 0);
  v41 = vextq_s8(v35, v36, 8uLL);
  v42 = vdupq_laneq_s32(v34, 2);
  v43 = 8;
  do
  {
    if (v23 >= *v14)
    {
      __break(1u);
      goto LABEL_40;
    }

    v44 = vsubq_f32(*&rawValue[v43], *&v14[6 * *v14]);
    v45 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v41, vmuls_lane_f32(v26, *v44.f32, 1)), v38, v26 * v44.f32[0]), v39, vmuls_lane_f32(v26, v44, 2));
    v46 = vnegq_f32(v45);
    v47 = vtrn2q_s32(v45, vtrn1q_s32(v45, v46));
    v48 = vrev64q_s32(v45);
    v48.i32[0] = v46.i32[1];
    v48.i32[3] = v46.i32[2];
    v49 = vaddq_f32(vmlaq_f32(vmulq_laneq_f32(v45, v34, 3), v48, v42), vmlaq_f32(vmulq_lane_f32(vextq_s8(v45, v46, 8uLL), *v34.f32, 1), vextq_s8(v47, v47, 8uLL), v40));
    v49.i32[3] = a7.i32[3];
    ++v23;
    *&rawValue[v43] = v49;
    v43 += 6;
  }

  while (v10 + 1 != v23);
  result = REAssetManagerTimelineAssetCreateSRTSampledAnimation();
  if (result)
  {
    v51 = result;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys13OpaquePointerVGMd, &_ss23_ContiguousArrayStorageCys13OpaquePointerVGMR);
    result = swift_allocObject();
    *(result + 16) = xmmword_1C1887600;
    *(result + 32) = v51;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t PhysicsJoint.addToSimulation()(uint64_t a1, uint64_t a2)
{
  v7[4] = a2;
  v7[3] = a1;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
  (*(*(a1 - 8) + 16))(boxed_opaque_existential_1, v2, a1);
  v5 = specialized static PhysicsJointCreator.addToSimulation(_:)(v7);
  __swift_destroy_boxed_opaque_existential_1(v7);
  return v5;
}

uint64_t PhysicsFixedJoint.init(pin0:pin1:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 160) = 0;
  outlined init with take of GeometricPin(a1, a3);

  return outlined init with take of GeometricPin(a2, a3 + 80);
}

uint64_t static PhysicsFixedJoint.== infix(_:_:)(float32x4_t *a1, float32x4_t *a2)
{
  if (specialized static GeometricPin.== infix(_:_:)(a1, a2) && specialized static GeometricPin.== infix(_:_:)(a1 + 5, a2 + 5) && a1[10].u8[0] == a2[10].u8[0])
  {
    v4 = a1[10].i8[1] ^ a2[10].i8[1] ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PhysicsFixedJoint(float32x4_t *a1, float32x4_t *a2)
{
  if (specialized static GeometricPin.== infix(_:_:)(a1, a2) && specialized static GeometricPin.== infix(_:_:)(a1 + 5, a2 + 5) && a1[10].u8[0] == a2[10].u8[0])
  {
    v4 = a1[10].i8[1] ^ a2[10].i8[1] ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t PhysicsRevoluteJoint.angularLimit.setter(uint64_t result, char a2)
{
  *(v2 + 164) = result;
  *(v2 + 172) = a2 & 1;
  return result;
}

uint64_t PhysicsSphericalJoint.init(pin0:pin1:angularLimitInYZ:checksForInternalCollisions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *(a6 + 161) = 0;
  outlined init with take of GeometricPin(a1, a6);
  result = outlined init with take of GeometricPin(a2, a6 + 80);
  *(a6 + 164) = a3;
  *(a6 + 172) = a4 & 1;
  *(a6 + 160) = a5;
  return result;
}

uint64_t PhysicsDistanceJoint.init(pin0:pin1:distanceLimit:checksForInternalCollisions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>, float a5@<S0>, float a6@<S1>)
{
  *(a4 + 161) = 0;
  *(a4 + 172) = 1008981770;
  outlined init with take of GeometricPin(a1, a4);
  result = outlined init with take of GeometricPin(a2, a4 + 80);
  *(a4 + 164) = a5;
  *(a4 + 168) = a6;
  *(a4 + 160) = a3;
  return result;
}

BOOL static PhysicsCustomJoint.MotionLimit.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  if (*(a1 + 8) == 1)
  {
    v4 = v2 == 0;
    if (v2)
    {
      LOBYTE(v5) = 0;
    }

    else
    {
      v5 = *(a2 + 8);
    }

    if (v4)
    {
      v3 = 0;
    }

    if (*a1)
    {
      v6 = v3;
    }

    else
    {
      v6 = v5;
    }

    return v6 & 1;
  }

  else
  {
    return (a2[1] & 1) == 0 && COERCE_FLOAT(HIDWORD(*a1)) == *(&v2 + 1) && COERCE_FLOAT(*a1) == *&v2;
  }
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance PhysicsCustomJoint.MotionLimit(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  if (*(a1 + 8) == 1)
  {
    v4 = v2 == 0;
    if (v2)
    {
      LOBYTE(v5) = 0;
    }

    else
    {
      v5 = *(a2 + 8);
    }

    if (v4)
    {
      v3 = 0;
    }

    if (*a1)
    {
      v6 = v3;
    }

    else
    {
      v6 = v5;
    }

    return v6 & 1;
  }

  else
  {
    return (a2[1] & 1) == 0 && COERCE_FLOAT(HIDWORD(*a1)) == *(&v2 + 1) && COERCE_FLOAT(*a1) == *&v2;
  }
}

void PhysicsCustomJoint.linearMotionAlongX.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 172);
  *a1 = *(v1 + 164);
  *(a1 + 8) = v2;
}

uint64_t PhysicsCustomJoint.linearMotionAlongX.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 164) = *result;
  *(v1 + 172) = v2;
  return result;
}

void PhysicsCustomJoint.linearMotionAlongY.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 184);
  *a1 = *(v1 + 176);
  *(a1 + 8) = v2;
}

uint64_t PhysicsCustomJoint.linearMotionAlongY.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 176) = *result;
  *(v1 + 184) = v2;
  return result;
}

void PhysicsCustomJoint.linearMotionAlongZ.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 196);
  *a1 = *(v1 + 188);
  *(a1 + 8) = v2;
}

uint64_t PhysicsCustomJoint.linearMotionAlongZ.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 188) = *result;
  *(v1 + 196) = v2;
  return result;
}

void PhysicsCustomJoint.angularMotionAroundX.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 208);
  *a1 = *(v1 + 200);
  *(a1 + 8) = v2;
}

uint64_t PhysicsCustomJoint.angularMotionAroundX.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 200) = *result;
  *(v1 + 208) = v2;
  return result;
}

void PhysicsCustomJoint.angularMotionAroundY.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 220);
  *a1 = *(v1 + 212);
  *(a1 + 8) = v2;
}

uint64_t PhysicsCustomJoint.angularMotionAroundY.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 212) = *result;
  *(v1 + 220) = v2;
  return result;
}

void PhysicsCustomJoint.angularMotionAroundZ.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 232);
  *a1 = *(v1 + 224);
  *(a1 + 8) = v2;
}

uint64_t PhysicsCustomJoint.angularMotionAroundZ.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 224) = *result;
  *(v1 + 232) = v2;
  return result;
}

uint64_t PhysicsCustomJoint.init(pin0:pin1:linearMotionAlongX:linearMotionAlongY:linearMotionAlongZ:angularMotionAroundX:angularMotionAroundY:angularMotionAroundZ:checksForInternalCollisions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, char a10)
{
  v11 = *a3;
  v12 = *(a3 + 8);
  v13 = *a4;
  v14 = *(a4 + 8);
  v15 = *a5;
  v16 = *(a5 + 8);
  v17 = *a6;
  v18 = *(a6 + 8);
  v19 = *a7;
  v23 = *(a7 + 8);
  v22 = *a8;
  v21 = *(a8 + 8);
  *(a9 + 161) = 0;
  outlined init with take of GeometricPin(a1, a9);
  result = outlined init with take of GeometricPin(a2, a9 + 80);
  *(a9 + 164) = v11;
  *(a9 + 172) = v12;
  *(a9 + 176) = v13;
  *(a9 + 184) = v14;
  *(a9 + 188) = v15;
  *(a9 + 196) = v16;
  *(a9 + 200) = v17;
  *(a9 + 208) = v18;
  *(a9 + 212) = v19;
  *(a9 + 220) = v23;
  *(a9 + 224) = v22;
  *(a9 + 232) = v21;
  *(a9 + 160) = a10;
  return result;
}

RealityFoundation::PhysicsJoints __swiftcall PhysicsJoints.init()()
{
  v1 = MEMORY[0x1E69E7CC0];
  *v0 = 0;
  v0[1] = v1;
  return result;
}

uint64_t PhysicsJoints.init(arrayLiteral:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = result;
  return result;
}

double PhysicsJoints.init(_:)@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = MEMORY[0x1EEE9AC00](v4);
  (*(v7 + 16))(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12PhysicsJoint_pMd, &_s17RealityFoundation12PhysicsJoint_pMR);
  v8 = Array.init<A>(_:)();
  *a2 = 0;
  a2[1] = v8;

  __swift_destroy_boxed_opaque_existential_1(a1);

  return result;
}

Swift::Int __swiftcall PhysicsJoints.index(before:)(Swift::Int before)
{
  v1 = __OFSUB__(before, 1);
  result = before - 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall PhysicsJoints.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

unint64_t PhysicsJoints.subscript.getter@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(v2 + 8);
    if (*(v3 + 16) > result)
    {
      return outlined init with copy of __REAssetService(v3 + 40 * result + 32, a2);
    }
  }

  __break(1u);
  return result;
}

uint64_t key path getter for PhysicsJoints.subscript(_:) : PhysicsJoints@<X0>(uint64_t result@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = *(result + 8);
    if (v3 < *(v4 + 16))
    {
      return outlined init with copy of __REAssetService(v4 + 40 * v3 + 32, a3);
    }
  }

  __break(1u);
  return result;
}

uint64_t key path setter for PhysicsJoints.subscript(_:) : PhysicsJoints(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = *a3;
  outlined init with copy of __REAssetService(a1, v8);
  v5 = *(a2 + 8);
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
  v5 = result;
  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v4 < v5[2])
  {
    v7 = &v5[5 * v4];
    __swift_destroy_boxed_opaque_existential_1(v7 + 4);
    result = outlined init with take of ForceEffectBase(v8, (v7 + 4));
    *(a2 + 8) = v5;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t PhysicsJoints.subscript.setter(__int128 *a1, unint64_t a2)
{
  v5 = *(v2 + 8);
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
  v5 = result;
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v5[2] > a2)
  {
    v7 = &v5[5 * a2];
    __swift_destroy_boxed_opaque_existential_1(v7 + 4);
    result = outlined init with take of ForceEffectBase(a1, (v7 + 4));
    *(v2 + 8) = v5;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t (*PhysicsJoints.subscript.modify(uint64_t (**a1)(), unint64_t a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x68uLL);
  }

  *a1 = result;
  *(result + 10) = a2;
  *(result + 11) = v2;
  v6 = *(v2 + 8);
  *(result + 12) = v6;
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v6 + 16) > a2)
  {
    outlined init with copy of __REAssetService(v6 + 40 * a2 + 32, result);
    return PhysicsJoints.subscript.modify;
  }

  __break(1u);
  return result;
}

void PhysicsJoints.subscript.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    outlined init with copy of __REAssetService(*a1, v2 + 40);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4 = *(v2 + 96);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew()(*(v2 + 96));
    }

    v5 = *(v2 + 80);
    if (v4[2] > v5)
    {
      v6 = *(v2 + 88);
      v7 = &v4[5 * v5];
      __swift_destroy_boxed_opaque_existential_1(v7 + 4);
      outlined init with take of ForceEffectBase((v2 + 40), (v7 + 4));
      *(v6 + 8) = v4;
      __swift_destroy_boxed_opaque_existential_1(v2);
      goto LABEL_9;
    }

    __break(1u);
    goto LABEL_13;
  }

  v8 = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v2 + 96);
  if ((v8 & 1) == 0)
  {
LABEL_13:
    v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
  }

  v9 = *(v2 + 80);
  if (v4[2] <= v9)
  {
    __break(1u);
    return;
  }

  v10 = *(v2 + 88);
  v11 = &v4[5 * v9];
  __swift_destroy_boxed_opaque_existential_1(v11 + 4);
  outlined init with take of ForceEffectBase(v2, (v11 + 4));
  *(v10 + 8) = v4;
LABEL_9:

  free(v2);
}

uint64_t PhysicsJoints.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8, v9, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay17RealityFoundation12PhysicsJoint_pGMd, &_sSay17RealityFoundation12PhysicsJoint_pGMR);
  return Array.replaceSubrange<A>(_:with:)();
}

uint64_t protocol witness for MutableCollection.subscript.setter in conformance PhysicsJoints(__int128 *a1, unint64_t *a2)
{
  v4 = *a2;
  v5 = *(v2 + 8);
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
  v5 = result;
  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v4 < v5[2])
  {
    v7 = &v5[5 * v4];
    __swift_destroy_boxed_opaque_existential_1(v7 + 4);
    result = outlined init with take of ForceEffectBase(a1, (v7 + 4));
    *(v2 + 8) = v5;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t (*protocol witness for MutableCollection.subscript.modify in conformance PhysicsJoints(uint64_t (***a1)(), unint64_t *a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  *(v4 + 32) = PhysicsJoints.subscript.modify(v4, *a2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

double protocol witness for MutableCollection.subscript.setter in conformance PhysicsJoints(uint64_t **a1, uint64_t *a2)
{
  specialized _writeBackMutableSlice<A, B>(_:bounds:slice:)(v2, *a2, a2[1], *a1, a1[1], a1[2], a1[3]);

  return result;
}

uint64_t (*protocol witness for MutableCollection.subscript.modify in conformance PhysicsJoints(void *a1, uint64_t *a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = specialized MutableCollection<>.subscript.modify(v4, *a2, a2[1]);
  return protocol witness for AnimationDefinition.bindTarget.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for MutableCollection.partition(by:) in conformance PhysicsJoints@<X0>(uint64_t *a1@<X8>, uint64_t (*a2)(void *)@<X0>, uint64_t a3@<X1>))(void *)
{
  result = specialized MutableCollection<>._partitionImpl(by:)(a2, a3);
  if (!v3)
  {
    *a1 = result;
  }

  return result;
}

void protocol witness for RangeReplaceableCollection.init() in conformance PhysicsJoints(void *a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  *a1 = 0;
  a1[1] = v1;
}

uint64_t protocol witness for RangeReplaceableCollection.replaceSubrange<A>(_:with:) in conformance PhysicsJoints(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  PhysicsJoints.replaceSubrange<A>(_:with:)(*a1, a1[1], a2, a3, a4);
  v6 = *(*(a3 - 8) + 8);

  return v6(a2, a3);
}

__int128 *protocol witness for RangeReplaceableCollection.init(repeating:count:) in conformance PhysicsJoints@<X0>(__int128 *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  if (!a2)
  {
    result = __swift_destroy_boxed_opaque_existential_1(result);
    v4 = 0;
    v5 = MEMORY[0x1E69E7CC0];
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    *&v6[0] = a2;
    outlined init with take of ForceEffectBase(result, v6 + 8);
    result = specialized RangeReplaceableCollection.append<A>(contentsOf:)(v6);
    v4 = v7;
    v5 = v8;
LABEL_5:
    *a3 = v4;
    a3[1] = v5;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for RangeReplaceableCollection.append(_:) in conformance PhysicsJoints(__int128 *a1)
{
  v2 = *(*(v1 + 8) + 16);
  outlined init with take of ForceEffectBase(a1, v5);
  outlined init with copy of CollectionOfOne<PhysicsJoint>(v5, v4);
  specialized Array.replaceSubrange<A>(_:with:)(v2, v2, v4);
  return outlined destroy of BodyTrackingComponent?(v5, &_ss15CollectionOfOneVy17RealityFoundation12PhysicsJoint_pGMd, &_ss15CollectionOfOneVy17RealityFoundation12PhysicsJoint_pGMR);
}

_OWORD *specialized RangeReplaceableCollection.append<A>(contentsOf:)(_OWORD *result)
{
  v2 = result[1];
  v12[0] = *result;
  v12[1] = v2;
  v12[2] = result[2];
  v13 = 0;
  v3 = *&v12[0];
  if (!*&v12[0])
  {
    return outlined destroy of BodyTrackingComponent?(v12, &_ss16IndexingIteratorVys8RepeatedVy17RealityFoundation12PhysicsJoint_pGGMd, &_ss16IndexingIteratorVys8RepeatedVy17RealityFoundation12PhysicsJoint_pGGMR);
  }

  if (*&v12[0] >= 1)
  {
    v8 = *&v12[0];
    v9 = v1;
    v4 = *(v1 + 8);
    while (v3)
    {
      v6 = v4[2];
      outlined init with copy of __REAssetService(v12 + 8, v11);
      outlined init with copy of CollectionOfOne<PhysicsJoint>(v11, v10);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v6 >= v4[3] >> 1)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v6 + 1, 1, v4);
      }

      v5 = &v4[5 * v6];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12PhysicsJoint_pMd, &_s17RealityFoundation12PhysicsJoint_pMR);
      swift_arrayDestroy();
      memmove(v5 + 9, v5 + 4, 40 * (v4[2] - v6));
      ++v4[2];
      outlined init with copy of __REAssetService(v10, (v5 + 4));
      outlined destroy of BodyTrackingComponent?(v10, &_ss15CollectionOfOneVy17RealityFoundation12PhysicsJoint_pGMd, &_ss15CollectionOfOneVy17RealityFoundation12PhysicsJoint_pGMR);
      result = outlined destroy of BodyTrackingComponent?(v11, &_ss15CollectionOfOneVy17RealityFoundation12PhysicsJoint_pGMd, &_ss15CollectionOfOneVy17RealityFoundation12PhysicsJoint_pGMR);
      if (!--v3)
      {
        *(v9 + 8) = v4;
        v13 = v8;
        return outlined destroy of BodyTrackingComponent?(v12, &_ss16IndexingIteratorVys8RepeatedVy17RealityFoundation12PhysicsJoint_pGGMd, &_ss16IndexingIteratorVys8RepeatedVy17RealityFoundation12PhysicsJoint_pGGMR);
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for RangeReplaceableCollection.insert(_:at:) in conformance PhysicsJoints(__int128 *a1, unint64_t *a2)
{
  v2 = *a2;
  outlined init with take of ForceEffectBase(a1, v5);
  outlined init with copy of CollectionOfOne<PhysicsJoint>(v5, v4);
  specialized Array.replaceSubrange<A>(_:with:)(v2, v2, v4);
  return outlined destroy of BodyTrackingComponent?(v5, &_ss15CollectionOfOneVy17RealityFoundation12PhysicsJoint_pGMd, &_ss15CollectionOfOneVy17RealityFoundation12PhysicsJoint_pGMR);
}

unint64_t *protocol witness for RangeReplaceableCollection.remove(at:) in conformance PhysicsJoints@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[1];
  v4 = *(v3 + 16);
  if (*v2 == v4)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v5 < v4)
  {
    outlined init with copy of __REAssetService(v3 + 40 * v5 + 32, a2);
    return specialized Array.replaceSubrange<A>(_:with:)(v5, v5 + 1);
  }

LABEL_7:
  __break(1u);
  return result;
}

double protocol witness for RangeReplaceableCollection._customRemoveLast() in conformance PhysicsJoints@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

unint64_t specialized RangeReplaceableCollection.removeFirst()@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v3 + 16);
  if (*v1 == v4)
  {
    __break(1u);
    goto LABEL_6;
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v2 < v4)
  {
    outlined init with copy of __REAssetService(v3 + 40 * v2 + 32, a1);
    return specialized Array.replaceSubrange<A>(_:with:)(v2, v2 + 1);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t protocol witness for RangeReplaceableCollection.removeFirst(_:) in conformance PhysicsJoints(uint64_t result)
{
  if (result)
  {
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      v2 = *v1;
      result = specialized BidirectionalCollection.index(_:offsetBy:limitedBy:)();
      if (v3)
      {
LABEL_9:
        __break(1u);
        return result;
      }

      if (result >= v2)
      {
        return specialized Array.replaceSubrange<A>(_:with:)(v2, result);
      }
    }

    __break(1u);
    goto LABEL_9;
  }

  return result;
}

void protocol witness for RangeReplaceableCollection.removeAll(keepingCapacity:) in conformance PhysicsJoints(char a1)
{
  if (a1)
  {
    v2 = *(v1[1] + 16);
    if (v2 < *v1)
    {
      __break(1u);
    }

    else
    {
      specialized Array.replaceSubrange<A>(_:with:)(*v1, v2);
    }
  }

  else
  {

    v3 = MEMORY[0x1E69E7CC0];
    *v1 = 0;
    v1[1] = v3;
  }
}

uint64_t protocol witness for RangeReplaceableCollection.removeAll(where:) in conformance PhysicsJoints(uint64_t (*a1)(__int128 *), unint64_t *a2)
{
  result = specialized MutableCollection._halfStablePartition(isSuffixElement:)(a1, a2);
  if (!v3)
  {
    v5 = *(*(v2 + 8) + 16);
    if (v5 < result)
    {
      __break(1u);
    }

    else
    {
      return specialized Array.replaceSubrange<A>(_:with:)(result, v5);
    }
  }

  return result;
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance PhysicsJoints@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = result;
  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance PhysicsJoints(uint64_t (**a1)(), unint64_t *a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x28uLL);
  }

  *a1 = result;
  v6 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v7 = *(v2 + 8);
    if (v6 < *(v7 + 16))
    {
      outlined init with copy of __REAssetService(v7 + 40 * v6 + 32, result);
      return protocol witness for Collection.subscript.read in conformance PhysicsJoints;
    }
  }

  __break(1u);
  return result;
}

void protocol witness for Collection.subscript.read in conformance PhysicsJoints(void **a1)
{
  v1 = *a1;
  __swift_destroy_boxed_opaque_existential_1(*a1);

  free(v1);
}

uint64_t protocol witness for Collection.subscript.getter in conformance PhysicsJoints@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *v2;
  result = v2[1];
  v6 = *(result + 16);
  if (v6 < *v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  v7 = *a1;
  if (*a1 < v5)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v8 = a1[1];
  if (v6 >= v8)
  {
    a2[2] = v5;
    a2[3] = result;
    *a2 = v7;
    a2[1] = v8;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t protocol witness for Collection.indices.getter in conformance PhysicsJoints@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  v4 = *(v2 + 16);
  a1[2] = v3;
  a1[3] = v4;
}

void protocol witness for Sequence.makeIterator() in conformance PhysicsJoints(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v2;
}

void *protocol witness for Sequence._copyToContiguousArray() in conformance PhysicsJoints()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(*v0, *(v0 + 8));

  return v1;
}

unint64_t specialized MutableCollection._halfStablePartition(isSuffixElement:)(uint64_t (*a1)(__int128 *), unint64_t *a2)
{
  v5 = a2;
  v7 = v2[1];
  v8 = specialized Collection.firstIndex(where:)(a1, a2, *v2, v7);
  if (!v3)
  {
    if (v9)
    {
      return v7[2];
    }

    v4 = v8;
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
LABEL_27:
      __break(1u);
    }

    else if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_6:
      v16 = v2;
      v2[1] = v7;
      v11 = v7[2];
      if (v10 == v11)
      {
LABEL_7:
        v16[1] = v7;
        return v4;
      }

      v19 = v7 + 4;
      v13 = &v7[5 * v4 + 9];
      while (1)
      {
        if (v10 >= v11)
        {
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

        outlined init with copy of __REAssetService(v13, v18);
        v2 = v5;
        v14 = a1(v18);
        __swift_destroy_boxed_opaque_existential_1(v18);
        if ((v14 & 1) == 0)
        {
          if (v10 != v4)
          {
            if ((v4 & 0x8000000000000000) != 0)
            {
              goto LABEL_24;
            }

            v2 = v5;
            v5 = v7[2];
            if (v4 >= v5)
            {
              goto LABEL_25;
            }

            v15 = &v19[5 * v4];
            outlined init with copy of __REAssetService(v15, v18);
            if (v10 >= v5)
            {
              goto LABEL_26;
            }

            outlined init with copy of __REAssetService(v13, v17);
            __swift_destroy_boxed_opaque_existential_1(v15);
            outlined init with take of ForceEffectBase(v17, v15);
            if (v10 >= v7[2])
            {
              __break(1u);
              v16[1] = v7;
              __swift_destroy_boxed_opaque_existential_1(v18);
              return v4;
            }

            __swift_destroy_boxed_opaque_existential_1(v13);
            outlined init with take of ForceEffectBase(v18, v13);
            v5 = v2;
          }

          ++v4;
        }

        ++v10;
        v11 = v7[2];
        v13 += 5;
        if (v10 == v11)
        {
          goto LABEL_7;
        }
      }
    }

    v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
    goto LABEL_6;
  }

  return v4;
}

uint64_t specialized static PhysicsJoints.== infix(_:_:)(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  v3 = *(a2 + 8);
  v4 = *(v2 + 16);
  if (v4 != *(v3 + 16))
  {
    return 0;
  }

  v5 = 0;
  v6 = v2 + 32;
  v7 = v3 + 32;
  do
  {
    v8 = v4 == v5;
    if (v4 == v5)
    {
      break;
    }

    if (v5 >= *(v2 + 16))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return result;
    }

    ++v5;
    result = outlined init with copy of __REAssetService(v6, v11);
    if (v5 - 1 >= *(v3 + 16))
    {
      goto LABEL_11;
    }

    v6 += 40;
    outlined init with copy of __REAssetService(v7, v10);
    v9 = areJointDefinitionsEqual(_:_:)(v11, v10);
    __swift_destroy_boxed_opaque_existential_1(v10);
    result = __swift_destroy_boxed_opaque_existential_1(v11);
    v7 += 40;
  }

  while ((v9 & 1) != 0);
  return v8;
}

BOOL specialized static PhysicsCustomJoint.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (!specialized static GeometricPin.== infix(_:_:)(a1, a2) || !specialized static GeometricPin.== infix(_:_:)((a1 + 80), (a2 + 80)) || *(a1 + 160) != *(a2 + 160) || *(a1 + 161) != *(a2 + 161))
  {
    return 0;
  }

  v5 = *(a1 + 164);
  v6 = *(a2 + 164);
  if (*(a1 + 172) == 1)
  {
    if (v5)
    {
      if (v6)
      {
        v7 = *(a2 + 172);
      }

      else
      {
        v7 = 0;
      }

      if ((v7 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v6)
      {
        LOBYTE(v8) = 0;
      }

      else
      {
        v8 = *(a2 + 172);
      }

      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    if (*(a2 + 172))
    {
      return 0;
    }

    result = 0;
    if (*&v5 != *&v6 || *(&v5 + 1) != *(&v6 + 1))
    {
      return result;
    }
  }

  v9 = *(a1 + 176);
  v10 = *(a2 + 176);
  if (*(a1 + 184) == 1)
  {
    if (v9)
    {
      if (v10)
      {
        v11 = *(a2 + 184);
      }

      else
      {
        v11 = 0;
      }

      if ((v11 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v10)
      {
        LOBYTE(v12) = 0;
      }

      else
      {
        v12 = *(a2 + 184);
      }

      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    if (*(a2 + 184))
    {
      return 0;
    }

    result = 0;
    if (*&v9 != *&v10 || *(&v9 + 1) != *(&v10 + 1))
    {
      return result;
    }
  }

  v13 = *(a1 + 188);
  v14 = *(a2 + 188);
  if (*(a1 + 196) == 1)
  {
    if (v13)
    {
      if (v14)
      {
        v15 = *(a2 + 196);
      }

      else
      {
        v15 = 0;
      }

      if ((v15 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v14)
      {
        LOBYTE(v16) = 0;
      }

      else
      {
        v16 = *(a2 + 196);
      }

      if ((v16 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    if (*(a2 + 196))
    {
      return 0;
    }

    result = 0;
    if (*&v13 != *&v14 || *(&v13 + 1) != *(&v14 + 1))
    {
      return result;
    }
  }

  v17 = *(a1 + 200);
  v18 = *(a2 + 200);
  if (*(a1 + 208) == 1)
  {
    if (v17)
    {
      if (v18)
      {
        v19 = *(a2 + 208);
      }

      else
      {
        v19 = 0;
      }

      if ((v19 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v18)
      {
        LOBYTE(v20) = 0;
      }

      else
      {
        v20 = *(a2 + 208);
      }

      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    if (*(a2 + 208))
    {
      return 0;
    }

    result = 0;
    if (*&v17 != *&v18 || *(&v17 + 1) != *(&v18 + 1))
    {
      return result;
    }
  }

  v21 = *(a1 + 212);
  v22 = *(a2 + 212);
  if (*(a1 + 220) == 1)
  {
    if (v21)
    {
      if (v22)
      {
        v23 = *(a2 + 220);
      }

      else
      {
        v23 = 0;
      }

      if ((v23 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v22)
      {
        LOBYTE(v24) = 0;
      }

      else
      {
        v24 = *(a2 + 220);
      }

      if ((v24 & 1) == 0)
      {
        return 0;
      }
    }

LABEL_82:
    v25 = *(a1 + 224);
    v26 = *(a2 + 224);
    if (*(a1 + 232) == 1)
    {
      if (v25)
      {
        if (*(a2 + 232))
        {
          return v26 != 0;
        }
      }

      else if (*(a2 + 232))
      {
        return v26 == 0;
      }
    }

    else if ((*(a2 + 232) & 1) == 0 && *&v25 == *&v26 && *(&v25 + 1) == *(&v26 + 1))
    {
      return 1;
    }

    return 0;
  }

  if (*(a2 + 220))
  {
    return 0;
  }

  result = 0;
  if (*&v21 == *&v22 && *(&v21 + 1) == *(&v22 + 1))
  {
    goto LABEL_82;
  }

  return result;
}

BOOL specialized static PhysicsDistanceJoint.== infix(_:_:)(float32x4_t *a1, float32x4_t *a2)
{
  if (specialized static GeometricPin.== infix(_:_:)(a1, a2) && specialized static GeometricPin.== infix(_:_:)(a1 + 5, a2 + 5) && a1[10].u8[0] == a2[10].u8[0] && a1[10].u8[1] == a2[10].u8[1] && (a1[10].f32[1] == a2[10].f32[1] ? (v4 = a1[10].f32[2] == a2[10].f32[2]) : (v4 = 0), v4))
  {
    return a1[10].f32[3] == a2[10].f32[3];
  }

  else
  {
    return 0;
  }
}

BOOL specialized static PhysicsRevoluteJoint.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (!specialized static GeometricPin.== infix(_:_:)(a1, a2) || !specialized static GeometricPin.== infix(_:_:)((a1 + 80), (a2 + 80)) || *(a1 + 160) != *(a2 + 160) || *(a1 + 161) != *(a2 + 161))
  {
    return 0;
  }

  if ((*(a1 + 172) & 1) == 0)
  {
    if ((*(a2 + 172) & 1) == 0)
    {
      v5 = *(a1 + 164);
      v6 = *(a2 + 164);
      if (*&v5 == *&v6 && *(&v5 + 1) == *(&v6 + 1))
      {
        return 1;
      }
    }

    return 0;
  }

  return (*(a2 + 172) & 1) != 0;
}

uint64_t specialized static PhysicsSphericalJoint.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (!specialized static GeometricPin.== infix(_:_:)(a1, a2) || !specialized static GeometricPin.== infix(_:_:)((a1 + 80), (a2 + 80)) || *(a1 + 160) != *(a2 + 160) || *(a1 + 161) != *(a2 + 161))
  {
    return 0;
  }

  if (*(a1 + 172))
  {
    return *(a2 + 172);
  }

  if (*(a2 + 172))
  {
    return 0;
  }

  v5 = *(a1 + 164);
  v6 = *(a2 + 164);
  if (*&v5 != *&v6)
  {
    return 0;
  }

  return *(&v5 + 1) == *(&v6 + 1);
}

unint64_t instantiation function for generic protocol witness table for PhysicsFixedJoint(uint64_t a1)
{
  result = lazy protocol witness table accessor for type PhysicsFixedJoint and conformance PhysicsFixedJoint();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type PhysicsFixedJoint and conformance PhysicsFixedJoint()
{
  result = lazy protocol witness table cache variable for type PhysicsFixedJoint and conformance PhysicsFixedJoint;
  if (!lazy protocol witness table cache variable for type PhysicsFixedJoint and conformance PhysicsFixedJoint)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PhysicsFixedJoint, &type metadata for PhysicsFixedJoint, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PhysicsFixedJoint and conformance PhysicsFixedJoint);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhysicsFixedJoint and conformance PhysicsFixedJoint;
  if (!lazy protocol witness table cache variable for type PhysicsFixedJoint and conformance PhysicsFixedJoint)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PhysicsFixedJoint, &type metadata for PhysicsFixedJoint, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PhysicsFixedJoint and conformance PhysicsFixedJoint);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for PhysicsSphericalJoint(uint64_t a1)
{
  result = lazy protocol witness table accessor for type PhysicsSphericalJoint and conformance PhysicsSphericalJoint();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type PhysicsSphericalJoint and conformance PhysicsSphericalJoint()
{
  result = lazy protocol witness table cache variable for type PhysicsSphericalJoint and conformance PhysicsSphericalJoint;
  if (!lazy protocol witness table cache variable for type PhysicsSphericalJoint and conformance PhysicsSphericalJoint)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PhysicsSphericalJoint, &type metadata for PhysicsSphericalJoint, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PhysicsSphericalJoint and conformance PhysicsSphericalJoint);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhysicsSphericalJoint and conformance PhysicsSphericalJoint;
  if (!lazy protocol witness table cache variable for type PhysicsSphericalJoint and conformance PhysicsSphericalJoint)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PhysicsSphericalJoint, &type metadata for PhysicsSphericalJoint, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PhysicsSphericalJoint and conformance PhysicsSphericalJoint);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for PhysicsRevoluteJoint(uint64_t a1)
{
  result = lazy protocol witness table accessor for type PhysicsRevoluteJoint and conformance PhysicsRevoluteJoint();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type PhysicsRevoluteJoint and conformance PhysicsRevoluteJoint()
{
  result = lazy protocol witness table cache variable for type PhysicsRevoluteJoint and conformance PhysicsRevoluteJoint;
  if (!lazy protocol witness table cache variable for type PhysicsRevoluteJoint and conformance PhysicsRevoluteJoint)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PhysicsRevoluteJoint, &type metadata for PhysicsRevoluteJoint, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PhysicsRevoluteJoint and conformance PhysicsRevoluteJoint);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhysicsRevoluteJoint and conformance PhysicsRevoluteJoint;
  if (!lazy protocol witness table cache variable for type PhysicsRevoluteJoint and conformance PhysicsRevoluteJoint)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PhysicsRevoluteJoint, &type metadata for PhysicsRevoluteJoint, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PhysicsRevoluteJoint and conformance PhysicsRevoluteJoint);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for PhysicsPrismaticJoint(uint64_t a1)
{
  result = lazy protocol witness table accessor for type PhysicsPrismaticJoint and conformance PhysicsPrismaticJoint();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type PhysicsPrismaticJoint and conformance PhysicsPrismaticJoint()
{
  result = lazy protocol witness table cache variable for type PhysicsPrismaticJoint and conformance PhysicsPrismaticJoint;
  if (!lazy protocol witness table cache variable for type PhysicsPrismaticJoint and conformance PhysicsPrismaticJoint)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PhysicsPrismaticJoint, &type metadata for PhysicsPrismaticJoint, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PhysicsPrismaticJoint and conformance PhysicsPrismaticJoint);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhysicsPrismaticJoint and conformance PhysicsPrismaticJoint;
  if (!lazy protocol witness table cache variable for type PhysicsPrismaticJoint and conformance PhysicsPrismaticJoint)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PhysicsPrismaticJoint, &type metadata for PhysicsPrismaticJoint, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PhysicsPrismaticJoint and conformance PhysicsPrismaticJoint);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for PhysicsDistanceJoint(uint64_t a1)
{
  result = lazy protocol witness table accessor for type PhysicsDistanceJoint and conformance PhysicsDistanceJoint();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type PhysicsDistanceJoint and conformance PhysicsDistanceJoint()
{
  result = lazy protocol witness table cache variable for type PhysicsDistanceJoint and conformance PhysicsDistanceJoint;
  if (!lazy protocol witness table cache variable for type PhysicsDistanceJoint and conformance PhysicsDistanceJoint)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PhysicsDistanceJoint, &type metadata for PhysicsDistanceJoint, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PhysicsDistanceJoint and conformance PhysicsDistanceJoint);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhysicsDistanceJoint and conformance PhysicsDistanceJoint;
  if (!lazy protocol witness table cache variable for type PhysicsDistanceJoint and conformance PhysicsDistanceJoint)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PhysicsDistanceJoint, &type metadata for PhysicsDistanceJoint, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PhysicsDistanceJoint and conformance PhysicsDistanceJoint);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for PhysicsCustomJoint(uint64_t a1)
{
  result = lazy protocol witness table accessor for type PhysicsCustomJoint and conformance PhysicsCustomJoint();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type PhysicsCustomJoint and conformance PhysicsCustomJoint()
{
  result = lazy protocol witness table cache variable for type PhysicsCustomJoint and conformance PhysicsCustomJoint;
  if (!lazy protocol witness table cache variable for type PhysicsCustomJoint and conformance PhysicsCustomJoint)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PhysicsCustomJoint, &type metadata for PhysicsCustomJoint, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PhysicsCustomJoint and conformance PhysicsCustomJoint);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhysicsCustomJoint and conformance PhysicsCustomJoint;
  if (!lazy protocol witness table cache variable for type PhysicsCustomJoint and conformance PhysicsCustomJoint)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PhysicsCustomJoint, &type metadata for PhysicsCustomJoint, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PhysicsCustomJoint and conformance PhysicsCustomJoint);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhysicsJoints and conformance PhysicsJoints()
{
  result = lazy protocol witness table cache variable for type PhysicsJoints and conformance PhysicsJoints;
  if (!lazy protocol witness table cache variable for type PhysicsJoints and conformance PhysicsJoints)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PhysicsJoints, &type metadata for PhysicsJoints, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PhysicsJoints and conformance PhysicsJoints);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhysicsJoints and conformance PhysicsJoints;
  if (!lazy protocol witness table cache variable for type PhysicsJoints and conformance PhysicsJoints)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PhysicsJoints, &type metadata for PhysicsJoints, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PhysicsJoints and conformance PhysicsJoints);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhysicsJoints and conformance PhysicsJoints;
  if (!lazy protocol witness table cache variable for type PhysicsJoints and conformance PhysicsJoints)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PhysicsJoints, &type metadata for PhysicsJoints, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PhysicsJoints and conformance PhysicsJoints);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhysicsJoints and conformance PhysicsJoints;
  if (!lazy protocol witness table cache variable for type PhysicsJoints and conformance PhysicsJoints)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PhysicsJoints, &type metadata for PhysicsJoints, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PhysicsJoints and conformance PhysicsJoints);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhysicsJoints and conformance PhysicsJoints;
  if (!lazy protocol witness table cache variable for type PhysicsJoints and conformance PhysicsJoints)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PhysicsJoints, &type metadata for PhysicsJoints, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PhysicsJoints and conformance PhysicsJoints);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type DefaultIndices<PhysicsJoints> and conformance <> DefaultIndices<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    v8 = lazy protocol witness table accessor for type PhysicsJoints and conformance PhysicsJoints();
    result = swift_getWitnessTable(a4, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Slice<PhysicsJoints> and conformance <> Slice<A>(unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVy17RealityFoundation13PhysicsJointsVGMd, &_ss5SliceVy17RealityFoundation13PhysicsJointsVGMR);
    v8 = a2();
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhysicsFixedJoint(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 162))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PhysicsFixedJoint(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 160) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 162) = 1;
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

    *(result + 162) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhysicsSphericalJoint(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 173))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PhysicsSphericalJoint(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 172) = 0;
    *(result + 168) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 173) = 1;
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

    *(result + 173) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhysicsDistanceJoint(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PhysicsDistanceJoint(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhysicsCustomJoint(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 233))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PhysicsCustomJoint(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 232) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 233) = 1;
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

    *(result + 233) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for PhysicsCustomJoint.MotionLimit(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t getEnumTag for PhysicsCustomJoint.MotionLimit(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for PhysicsCustomJoint.MotionLimit(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t outlined init with copy of CollectionOfOne<PhysicsJoint>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15CollectionOfOneVy17RealityFoundation12PhysicsJoint_pGMd, &_ss15CollectionOfOneVy17RealityFoundation12PhysicsJoint_pGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

Swift::Void __swiftcall __makeXfos(_:_:)(Swift::OpaquePointer a1, Swift::OpaquePointer *a2)
{
  v4 = *(a1._rawValue + 2);
  v5 = v4 / 0xA;
  rawValue = a2->_rawValue;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= rawValue[3] >> 1)
  {
    a2->_rawValue = rawValue;
    if (!v4)
    {
      return;
    }
  }

  else
  {
    if (rawValue[2] <= v5)
    {
      v16 = v4 / 0xA;
    }

    else
    {
      v16 = rawValue[2];
    }

    rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v16, 0, rawValue);
    a2->_rawValue = rawValue;
    if (!v4)
    {
      return;
    }
  }

  v17 = 0;
  v18 = a1._rawValue + 32;
  while (1)
  {
    v19 = __OFADD__(v17, 10) ? 0x7FFFFFFFFFFFFFFFLL : v17 + 10;
    if (v17 >= v4)
    {
      break;
    }

    if (v17 + 1 >= v4)
    {
      goto LABEL_30;
    }

    if (v17 + 2 >= v4)
    {
      goto LABEL_31;
    }

    if (v17 + 3 >= v4)
    {
      goto LABEL_32;
    }

    if (v17 + 4 >= v4)
    {
      goto LABEL_33;
    }

    if (v17 + 5 >= v4)
    {
      goto LABEL_34;
    }

    if (v17 + 6 >= v4)
    {
      goto LABEL_35;
    }

    if (v17 + 7 >= v4)
    {
      goto LABEL_36;
    }

    v20 = v17 + 8;
    if (v17 + 8 >= v4)
    {
      goto LABEL_37;
    }

    v21 = v17 + 9;
    if (__OFADD__(v17, 9))
    {
      goto LABEL_38;
    }

    if (v21 >= v4)
    {
      goto LABEL_39;
    }

    LODWORD(v14) = *&v18[4 * v17];
    LODWORD(v13) = *&v18[4 * v17 + 4];
    LODWORD(v10) = *&v18[4 * v17 + 8];
    LODWORD(v22) = *&v18[4 * v17 + 12];
    LODWORD(v11) = *&v18[4 * v17 + 16];
    LODWORD(v9) = *&v18[4 * v17 + 20];
    v23 = *&v18[4 * v17 + 24];
    LODWORD(v8) = *&v18[4 * v17 + 28];
    v25 = rawValue[2];
    v24 = rawValue[3];
    LODWORD(v15) = *&v18[4 * v20];
    LODWORD(v12) = *&v18[4 * v21];
    if (v25 >= v24 >> 1)
    {
      v38 = v8;
      v39 = v22;
      v36 = v9;
      v37 = v23;
      v34 = v11;
      v35 = v10;
      v32 = v13;
      v33 = v12;
      v30 = v15;
      v31 = v14;
      v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, rawValue);
      v15 = v30;
      v14 = v31;
      v13 = v32;
      v12 = v33;
      v11 = v34;
      v10 = v35;
      v9 = v36;
      v23 = v37;
      v8 = v38;
      LODWORD(v22) = v39;
      rawValue = v29;
    }

    *&v26 = __PAIR64__(v13, v14);
    *(&v26 + 1) = v10;
    DWORD1(v22) = v11;
    *(&v22 + 1) = __PAIR64__(v23, v9);
    *&v27 = __PAIR64__(v15, v8);
    *(&v27 + 1) = v12;
    rawValue[2] = v25 + 1;
    v28 = &rawValue[6 * v25];
    v28[2] = v26;
    v28[3] = v22;
    v28[4] = v27;
    v17 = v19;
    if (v19 >= v4)
    {
      a2->_rawValue = rawValue;
      return;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
}

void __RKEntityTagsComponent.buildTagsCache()()
{
  v1 = *v0;
  if (*v0)
  {
    v2 = v0[1];
    if (v2 < 0)
    {
      __break(1u);
    }

    else if (v2)
    {
      v10 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
      do
      {
        v3 = String.init(utf8String:)();
        if (v4)
        {
          v5 = v3;
        }

        else
        {
          v5 = 0;
        }

        if (v4)
        {
          v6 = v4;
        }

        else
        {
          v6 = 0xE000000000000000;
        }

        v8 = *(v10 + 16);
        v7 = *(v10 + 24);
        if (v8 >= v7 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1);
        }

        *(v10 + 16) = v8 + 1;
        v9 = v10 + 16 * v8;
        *(v9 + 32) = v5;
        *(v9 + 40) = v6;
        v1 += 8;
        --v2;
      }

      while (v2);
    }
  }
}

uint64_t __RKEntityTagsComponent.tags.getter()
{
  if (!*(v0 + 16))
  {

    __RKEntityTagsComponent.buildTagsCache()();
    v2 = v1;

    *(v0 + 16) = v2;
  }
}

void __RKEntityTagsComponent.tags.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  if (!v4)
  {
    v5 = *(v2 + 24);
    *__s = *v2;
    v26 = 0;
    v27 = v5;

    __RKEntityTagsComponent.buildTagsCache()();
    v4 = v6;

    *(v2 + 16) = v4;
  }

  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(a1, v4) & 1) != 0 || (, *(v2 + 24) = 0, , , *(v2 + 16) = a1, v7 = *(a1 + 16), (*(v2 + 8) = v7) == 0))
  {
  }

  else
  {
    if (v7 >> 60)
    {
      goto LABEL_42;
    }

    if ((8 * v7) < 0xFFFFFFFF80000000)
    {
LABEL_43:
      __break(1u);
    }

    else if ((8 * v7) <= 0x7FFFFFFF)
    {
      v8 = RECIntrospectionAlloc();
      v9 = v8;
      v10 = 0;
      for (i = (a1 + 40); ; i += 2)
      {
        v13 = *(i - 1);
        v12 = *i;
        MEMORY[0x1EEE9AC00](v8);
        if ((v12 & 0x1000000000000000) != 0)
        {
          break;
        }

        if ((v12 & 0x2000000000000000) != 0)
        {
          *__s = v13;
          *&__s[8] = v12 & 0xFFFFFFFFFFFFFFLL;

          v20 = strlen(__s);
          v21 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            __break(1u);
LABEL_37:
            __break(1u);
LABEL_38:
            __break(1u);
LABEL_39:
            __break(1u);
LABEL_40:
            __break(1u);
LABEL_41:
            __break(1u);
LABEL_42:
            __break(1u);
            goto LABEL_43;
          }

          if (v21 < 0xFFFFFFFF80000000)
          {
            goto LABEL_38;
          }

          if (v21 > 0x7FFFFFFF)
          {
            goto LABEL_40;
          }

          v22 = RECIntrospectionAlloc();
          v23 = v22;
          if (v22 != __s || v22 >= &__s[v21])
          {
            memmove(v22, __s, v21);
          }

          *(v9 + 8 * v10) = v23;
          goto LABEL_30;
        }

        if ((v13 & 0x1000000000000000) == 0)
        {
          break;
        }

        v14 = ((v12 & 0xFFFFFFFFFFFFFFFLL) + 32);

        v15 = strlen(v14);
        v16 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_37;
        }

        if (v16 < 0xFFFFFFFF80000000)
        {
          goto LABEL_39;
        }

        if (v16 > 0x7FFFFFFF)
        {
          goto LABEL_41;
        }

        v17 = RECIntrospectionAlloc();
        v18 = v17;
        if (v17 != v14 || v17 >= &v14[v16])
        {
          memmove(v17, ((v12 & 0xFFFFFFFFFFFFFFFLL) + 32), v16);
        }

        *(v9 + 8 * v10) = v18;

LABEL_10:
        if (v7 == ++v10)
        {

          *v2 = v9;
          type metadata accessor for ArrayPointerCleanupHelper();
          v24 = swift_allocObject();
          *(v24 + 16) = v9;
          *(v24 + 24) = v7;
          *(v2 + 24) = v24;
          return;
        }
      }

      _StringGuts._slowWithCString<A>(_:)();
LABEL_30:

      goto LABEL_10;
    }

    __break(1u);
  }
}

char *closure #1 in __RKEntityTagsComponent.tags.setter(const char *a1, uint64_t a2, uint64_t a3)
{
  result = strlen(a1);
  v7 = (result + 1);
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v7 < 0xFFFFFFFF80000000)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v7 > 0x7FFFFFFF)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  result = RECIntrospectionAlloc();
  v8 = result;
  if (result != a1 || result >= &a1[v7])
  {
    result = memmove(result, a1, v7);
  }

  *(a2 + 8 * a3) = v8;
  return result;
}

void (*__RKEntityTagsComponent.tags.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = *(v1 + 16);
  if (!v3)
  {

    v4 = v1;
    __RKEntityTagsComponent.buildTagsCache()();
    v6 = v5;

    v3 = v6;
    *(v4 + 16) = v6;
  }

  *a1 = v3;

  return __RKEntityTagsComponent.tags.modify;
}

void __RKEntityTagsComponent.tags.modify(uint64_t *a1, char a2)
{
  if (a2)
  {

    __RKEntityTagsComponent.tags.setter(v2);
  }

  else
  {
    __RKEntityTagsComponent.tags.setter(*a1);
  }
}

uint64_t __RKEntityTagsComponent.Registration.init()()
{
  REStructBuilderCreate();
  String.utf8CString.getter();
  v2 = REStructBuilderInit();

  if (!v2 || (String.utf8CString.getter(), REStructBuilderAddMemberArrayWithCountDataTypeWithTag(), , (v3 = RECIntrospectionStructRegister()) == 0))
  {
    lazy protocol witness table accessor for type __RKEntityTagsComponent.Registration.RegistrationError and conformance __RKEntityTagsComponent.Registration.RegistrationError();
    swift_allocError();
    swift_willThrow();
    goto LABEL_6;
  }

  *(v0 + 16) = v3;
  v4 = specialized String.withCString<A>(_:)(0x736761544552, 0xE600000000000000, v3);
  if (v1)
  {
LABEL_6:
    REStructBuilderDestroy();
    type metadata accessor for __RKEntityTagsComponent.Registration();
    swift_deallocPartialClassInstance();
    return v0;
  }

  *(v0 + 24) = v4;
  REStructBuilderDestroy();
  return v0;
}

uint64_t closure #1 in __RKEntityTagsComponent.Registration.init()@<X0>(uint64_t *a3@<X8>)
{
  result = RECustomComponentTypeCreate();
  if (result)
  {
    *a3 = result;
  }

  else
  {
    lazy protocol witness table accessor for type __RKEntityTagsComponent.Registration.RegistrationError and conformance __RKEntityTagsComponent.Registration.RegistrationError();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

double @objc createTagsComponentObject(componentType:)()
{
  v0 = swift_slowAlloc();
  result = 0.0;
  *v0 = 0u;
  v0[1] = 0u;
  return result;
}

void @objc destroyTagsComponentObject(componentType:rawComponentPointer:)(uint64_t a1, uint64_t a2)
{
  outlined destroy of __RKEntityTagsComponent(a2);

  JUMPOUT(0x1C6902A30);
}

uint64_t __RKEntityTagsComponent.Registration.deinit()
{
  RECustomComponentTypeDestroy();
  RECIntrospectionStructUnregister();
  return v0;
}

uint64_t __RKEntityTagsComponent.Registration.__deallocating_deinit()
{
  RECustomComponentTypeDestroy();
  RECIntrospectionStructUnregister();

  return swift_deallocClassInstance();
}

double static __RKEntityTagsComponent.registration.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t static __RKEntityTagsComponent.registration.setter(void *a1)
{
  swift_beginAccess();
  static __RKEntityTagsComponent.registration = a1;
}

uint64_t key path setter for static __RKEntityTagsComponent.registration : __RKEntityTagsComponent.Type(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  static __RKEntityTagsComponent.registration = v1;
}

void ArrayPointerCleanupHelper.__deallocating_deinit()
{
  v1 = *(v0 + 24);
  if (v1 < 0)
  {
    __break(1u);
  }

  else
  {
    if (v1)
    {
      v2 = 0;
      do
      {
        v3 = v2 + 1;
        RECIntrospectionFree();
        v2 = v3;
      }

      while (v1 != v3);
    }

    RECIntrospectionFree();

    swift_deallocClassInstance();
  }
}

uint64_t Entity.__tags.getter()
{
  swift_beginAccess();
  if (!static __RKEntityTagsComponent.registration)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (!REEntityGetCustomComponent())
  {
    return MEMORY[0x1E69E7CC0];
  }

  Object = RECustomComponentGetObject();
  if (!Object)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (*(Object + 16))
  {
  }

  v1 = Object;

  __RKEntityTagsComponent.buildTagsCache()();
  v3 = v2;

  *(v1 + 16) = v3;

  result = *(v1 + 16);
  if (result)
  {
  }

  __break(1u);
  return result;
}

void Entity.__tags.setter(uint64_t a1)
{
  swift_beginAccess();
  if (!static __RKEntityTagsComponent.registration)
  {
LABEL_7:

    return;
  }

  if (*(a1 + 16))
  {
    if ((REEntityGetCustomComponent() || REEntityAddComponentByClass()) && RECustomComponentGetObject())
    {
      __RKEntityTagsComponent.tags.setter(a1);
      return;
    }

    goto LABEL_7;
  }

  if (REEntityGetCustomComponent())
  {
    REEntityRemoveComponentByClass();
  }
}

void (*Entity.__tags.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  if (!static __RKEntityTagsComponent.registration || !REEntityGetCustomComponent() || (Object = RECustomComponentGetObject()) == 0)
  {
    v10 = MEMORY[0x1E69E7CC0];
    goto LABEL_11;
  }

  if (*(Object + 16) || (v6 = Object, , __RKEntityTagsComponent.buildTagsCache()(), v8 = v7, , , *(v6 + 16) = v8, , (result = *(v6 + 16)) != 0))
  {

LABEL_11:
    *(v4 + 24) = v10;
    return Entity.__tags.modify;
  }

  __break(1u);
  return result;
}

void Entity.__tags.modify(void **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 3);
  if (a2)
  {

    Entity.__tags.setter(v4);
  }

  else
  {
    Entity.__tags.setter(v3);
  }

  free(v2);
}

uint64_t getEnumTagSinglePayload for __RKEntityTagsComponent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for __RKEntityTagsComponent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type __RKEntityTagsComponent.Registration.RegistrationError and conformance __RKEntityTagsComponent.Registration.RegistrationError()
{
  result = lazy protocol witness table cache variable for type __RKEntityTagsComponent.Registration.RegistrationError and conformance __RKEntityTagsComponent.Registration.RegistrationError;
  if (!lazy protocol witness table cache variable for type __RKEntityTagsComponent.Registration.RegistrationError and conformance __RKEntityTagsComponent.Registration.RegistrationError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityTagsComponent.Registration.RegistrationError, &type metadata for __RKEntityTagsComponent.Registration.RegistrationError, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityTagsComponent.Registration.RegistrationError and conformance __RKEntityTagsComponent.Registration.RegistrationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityTagsComponent.Registration.RegistrationError and conformance __RKEntityTagsComponent.Registration.RegistrationError;
  if (!lazy protocol witness table cache variable for type __RKEntityTagsComponent.Registration.RegistrationError and conformance __RKEntityTagsComponent.Registration.RegistrationError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityTagsComponent.Registration.RegistrationError, &type metadata for __RKEntityTagsComponent.Registration.RegistrationError, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityTagsComponent.Registration.RegistrationError and conformance __RKEntityTagsComponent.Registration.RegistrationError);
  }

  return result;
}

uint64_t specialized static __RKVisibilityShowDropAnimation.createVisibilityShowDropAnimation(transform:_:localBoundingBox:variant:duration:distance:orientation:additive:)(float32x4_t *a1, uint64_t a2, _BYTE *a3, char a4, float a5, float a6, float32x4_t a7)
{
  v55 = a1[1];
  if (*a3)
  {
    if (*a3 == 1)
    {
      v57._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 174, 0, MEMORY[0x1E69E7CC0]);
      v8 = &outlined read-only object #1 of static __RKVisibilityShowDropAnimation.createVisibilityShowDropAnimation(transform:_:localBoundingBox:variant:duration:distance:orientation:additive:);
    }

    else
    {
      v57._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 104, 0, MEMORY[0x1E69E7CC0]);
      v8 = &outlined read-only object #2 of static __RKVisibilityShowDropAnimation.createVisibilityShowDropAnimation(transform:_:localBoundingBox:variant:duration:distance:orientation:additive:);
    }
  }

  else
  {
    v57._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 79, 0, MEMORY[0x1E69E7CC0]);
    v8 = &outlined read-only object #0 of static __RKVisibilityShowDropAnimation.createVisibilityShowDropAnimation(transform:_:localBoundingBox:variant:duration:distance:orientation:additive:);
  }

  __makeXfos(_:_:)(v8, &v57);
  rawValue = v57._rawValue;
  if (!*(v57._rawValue + 2))
  {

    return MEMORY[0x1E69E7CC0];
  }

  RESampledAnimationDefaultParameters();
  v10 = rawValue[2];
  if (v10)
  {
    v11 = &rawValue[6 * v10];
    v53 = *v11;
    v54 = *(v11 - 1);
    v52 = v11[1];
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_9;
    }
  }

  else
  {
LABEL_40:
    __break(1u);
  }

  rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10 + 1, 1, rawValue);
LABEL_9:
  v10 = rawValue[2];
  v12 = rawValue[3];
  v13 = v10 + 1;
  if (v10 >= v12 >> 1)
  {
    rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v10 + 1, 1, rawValue);
  }

  rawValue[2] = v13;
  v14 = rawValue + 2;
  v15 = &rawValue[6 * v10 + 4];
  *v15 = v54;
  v15[1] = v53;
  v15[2] = v52;
  v57._rawValue = rawValue;
  v16 = 0.0;
  v17 = 8;
  do
  {
    v18 = *&rawValue[v17];
    v19 = fabsf(*&v18);
    if ((LODWORD(v19) & 0x7FFFFF) != 0)
    {
      v20 = v16;
    }

    else
    {
      v20 = v19;
    }

    if ((~LODWORD(v19) & 0x7F800000) != 0)
    {
      v20 = v19;
    }

    if (v19 >= v16)
    {
      v16 = v20;
    }

    v21 = fabsf(*(&v18 + 1));
    if (v21 >= v16)
    {
      if ((LODWORD(v21) & 0x7FFFFF) == 0)
      {
        v16 = v21;
      }

      if ((~LODWORD(v21) & 0x7F800000) != 0)
      {
        v16 = v21;
      }
    }

    v22 = fabsf(*(&v18 + 2));
    if (v22 >= v16)
    {
      if ((~LODWORD(v22) & 0x7F800000) != 0)
      {
        v16 = v22;
      }

      else if ((LODWORD(v22) & 0x7FFFFF) == 0)
      {
        v16 = v22;
      }
    }

    v17 += 6;
    --v13;
  }

  while (v13);
  v23 = 0;
  v24 = a6 / v16;
  v25 = v16 <= 0.0;
  v26 = 1.0;
  if (!v25)
  {
    v26 = v24;
  }

  v27 = vmulq_f32(v55, v55);
  *v27.i8 = vadd_f32(*v27.i8, *&vextq_s8(v27, v27, 8uLL));
  v27.i32[0] = vadd_f32(*v27.i8, vdup_lane_s32(*v27.i8, 1)).u32[0];
  v28 = vrecpe_f32(v27.u32[0]);
  v29 = vmul_f32(v28, vrecps_f32(v27.u32[0], v28));
  v30 = vmulq_n_f32(vmulq_f32(v55, xmmword_1C1899C90), vmul_f32(v29, vrecps_f32(v27.u32[0], v29)).f32[0]);
  v31 = vnegq_f32(a7);
  v32 = vtrn2q_s32(a7, vtrn1q_s32(a7, v31));
  v33 = vrev64q_s32(a7);
  v33.i32[0] = v31.i32[1];
  v33.i32[3] = v31.i32[2];
  v34 = vaddq_f32(vmlaq_n_f32(vmulq_lane_f32(vextq_s8(a7, v31, 8uLL), *v30.f32, 1), vextq_s8(v32, v32, 8uLL), v30.f32[0]), vmlaq_laneq_f32(vmulq_laneq_f32(a7, v30, 3), v33, v30, 2));
  v35 = vmulq_f32(v34, xmmword_1C1899C90);
  v36 = vnegq_f32(v35);
  v37 = vtrn2q_s32(v35, vtrn1q_s32(v35, v36));
  v38 = vextq_s8(v37, v37, 8uLL);
  v39 = vrev64q_s32(v35);
  v39.i32[0] = v36.i32[1];
  v39.i32[3] = v36.i32[2];
  v40 = vdupq_lane_s32(*v34.f32, 0);
  v41 = vextq_s8(v35, v36, 8uLL);
  v42 = vdupq_laneq_s32(v34, 2);
  v43 = 8;
  do
  {
    if (v23 >= *v14)
    {
      __break(1u);
      goto LABEL_40;
    }

    v44 = vsubq_f32(*&rawValue[v43], *&v14[6 * *v14]);
    v45 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v41, vmuls_lane_f32(v26, *v44.f32, 1)), v38, v26 * v44.f32[0]), v39, vmuls_lane_f32(v26, v44, 2));
    v46 = vnegq_f32(v45);
    v47 = vtrn2q_s32(v45, vtrn1q_s32(v45, v46));
    v48 = vrev64q_s32(v45);
    v48.i32[0] = v46.i32[1];
    v48.i32[3] = v46.i32[2];
    v49 = vaddq_f32(vmlaq_f32(vmulq_laneq_f32(v45, v34, 3), v48, v42), vmlaq_f32(vmulq_lane_f32(vextq_s8(v45, v46, 8uLL), *v34.f32, 1), vextq_s8(v47, v47, 8uLL), v40));
    v49.i32[3] = a7.i32[3];
    ++v23;
    *&rawValue[v43] = v49;
    v43 += 6;
  }

  while (v10 + 1 != v23);
  result = REAssetManagerTimelineAssetCreateSRTSampledAnimation();
  if (result)
  {
    v51 = result;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys13OpaquePointerVGMd, &_ss23_ContiguousArrayStorageCys13OpaquePointerVGMR);
    result = swift_allocObject();
    *(result + 16) = xmmword_1C1887600;
    *(result + 32) = v51;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t StateMachineCondition.init(_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v10 = *a3;
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = v10;
  v11 = type metadata accessor for StateMachineCondition(0, a5, a6, a4);
  v12 = *(*(a5 - 8) + 32);
  v13 = a7 + *(v11 + 40);

  return v12(v13, a4, a5);
}

uint64_t StateMachineCondition.parameterName.getter()
{
  v1 = *v0;

  return v1;
}

void StateMachineCondition.parameterName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t StateMachineCondition.referencedParameters.getter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation29StateMachineParameterProtocol_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation29StateMachineParameterProtocol_pGMR);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C1887600;
  v5 = *v1;
  v4 = v1[1];
  v11[0] = 0;
  v11[1] = 0;
  v12 = -1;
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  *(v3 + 56) = type metadata accessor for StateMachineParameter(0, v7, v6, v8);
  *(v3 + 64) = &protocol witness table for StateMachineParameter<A>;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v3 + 32));

  StateMachineParameter.init(name:bindTarget:)(v5, v4, v11, v7, v6, boxed_opaque_existential_1);
  return v3;
}

Swift::Int StateMachineConditionOperator.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

uint64_t StateMachineConditionTrigger.parameterName.getter()
{
  v1 = *v0;

  return v1;
}

void StateMachineConditionTrigger.parameterName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t StateMachineConditionTrigger.referencedParameters.getter()
{
  v2 = *v0;
  v1 = v0[1];

  outlined consume of BindTarget?(0, 0, 0xFFu);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation29StateMachineParameterProtocol_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation29StateMachineParameterProtocol_pGMR);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C1887600;
  *(v3 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21StateMachineParameterVySbGMd, &_s17RealityFoundation21StateMachineParameterVySbGMR);
  *(v3 + 64) = &protocol witness table for StateMachineParameter<A>;
  v4 = swift_allocObject();
  *(v3 + 32) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  *(v4 + 48) = 511;
  return v3;
}

unint64_t lazy protocol witness table accessor for type StateMachineConditionOperator and conformance StateMachineConditionOperator()
{
  result = lazy protocol witness table cache variable for type StateMachineConditionOperator and conformance StateMachineConditionOperator;
  if (!lazy protocol witness table cache variable for type StateMachineConditionOperator and conformance StateMachineConditionOperator)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StateMachineConditionOperator, &type metadata for StateMachineConditionOperator, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type StateMachineConditionOperator and conformance StateMachineConditionOperator);
  }

  return result;
}

uint64_t protocol witness for StateMachineConditionProtocol.referencedParameters.getter in conformance StateMachineConditionTrigger()
{
  v2 = *v0;
  v1 = v0[1];

  outlined consume of BindTarget?(0, 0, 0xFFu);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation29StateMachineParameterProtocol_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation29StateMachineParameterProtocol_pGMR);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C1887600;
  *(v3 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21StateMachineParameterVySbGMd, &_s17RealityFoundation21StateMachineParameterVySbGMR);
  *(v3 + 64) = &protocol witness table for StateMachineParameter<A>;
  v4 = swift_allocObject();
  *(v3 + 32) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  *(v4 + 48) = 511;
  return v3;
}

uint64_t type metadata completion function for StateMachineCondition(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StateMachineCondition(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 17) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 17) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void storeEnumTagSinglePayload for StateMachineCondition(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 17) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 17] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

uint64_t getEnumTagSinglePayload for StateMachineConditionOperator(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for StateMachineConditionOperator(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t one-time initialization function for notificationName()
{
  result = MEMORY[0x1C68F3280](0xD00000000000001ELL, 0x80000001C18E11E0);
  static NotificationAction.notificationName = result;
  return result;
}

id static NotificationAction.notificationName.getter()
{
  if (one-time initialization token for notificationName != -1)
  {
    swift_once();
  }

  v1 = static NotificationAction.notificationName;

  return v1;
}

uint64_t NotificationAction.name.getter()
{
  v1 = *v0;

  return v1;
}

void NotificationAction.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

RealityFoundation::NotificationAction __swiftcall NotificationAction.init(name:customArguments:)(Swift::String name, Swift::OpaquePointer customArguments)
{
  *v2 = name;
  *(v2 + 16) = customArguments;
  result.name = name;
  result.customArguments = customArguments;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance NotificationAction.CodingKeys()
{
  if (*v0)
  {
    return 0x72416D6F74737563;
  }

  else
  {
    return 1701667182;
  }
}

void protocol witness for CodingKey.init(stringValue:) in conformance NotificationAction.CodingKeys(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x72416D6F74737563 && a2 == 0xEF73746E656D7567)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NotificationAction.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NotificationAction.CodingKeys and conformance NotificationAction.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NotificationAction.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NotificationAction.CodingKeys and conformance NotificationAction.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NotificationAction.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation18NotificationActionV10CodingKeys33_EFEB959AF5F46945FA966D8F01E07A61LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation18NotificationActionV10CodingKeys33_EFEB959AF5F46945FA966D8F01E07A61LLOGMR);
  v10 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v8 - v5;
  v9 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NotificationAction.CodingKeys and conformance NotificationAction.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v11 = v9;
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    lazy protocol witness table accessor for type [String : String] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B], MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v10 + 8))(v6, v4);
}

unint64_t lazy protocol witness table accessor for type NotificationAction.CodingKeys and conformance NotificationAction.CodingKeys()
{
  result = lazy protocol witness table cache variable for type NotificationAction.CodingKeys and conformance NotificationAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type NotificationAction.CodingKeys and conformance NotificationAction.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NotificationAction.CodingKeys, &unk_1F40F4010, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NotificationAction.CodingKeys and conformance NotificationAction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NotificationAction.CodingKeys and conformance NotificationAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type NotificationAction.CodingKeys and conformance NotificationAction.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NotificationAction.CodingKeys, &unk_1F40F4010, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NotificationAction.CodingKeys and conformance NotificationAction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NotificationAction.CodingKeys and conformance NotificationAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type NotificationAction.CodingKeys and conformance NotificationAction.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NotificationAction.CodingKeys, &unk_1F40F4010, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NotificationAction.CodingKeys and conformance NotificationAction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NotificationAction.CodingKeys and conformance NotificationAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type NotificationAction.CodingKeys and conformance NotificationAction.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NotificationAction.CodingKeys, &unk_1F40F4010, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NotificationAction.CodingKeys and conformance NotificationAction.CodingKeys);
  }

  return result;
}

void NotificationAction.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation18NotificationActionV10CodingKeys33_EFEB959AF5F46945FA966D8F01E07A61LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation18NotificationActionV10CodingKeys33_EFEB959AF5F46945FA966D8F01E07A61LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NotificationAction.CodingKeys and conformance NotificationAction.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v16 = 0;
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    v11 = v10;
    v12 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    v15 = 1;
    lazy protocol witness table accessor for type [String : String] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B], MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    v13 = v14[1];
    *a2 = v12;
    a2[1] = v11;
    a2[2] = v13;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t getEnumTagSinglePayload for NotificationAction(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for NotificationAction(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void specialized NotificationActionHandler.postNotification(event:)(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1887600;
  *(inited + 32) = 0xD000000000000029;
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 40) = 0x80000001C18E1150;
  *(inited + 48) = v1;
  *(inited + 56) = v4;

  v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of BodyTrackingComponent?(inited + 32, &_sSS_yptMd, &_sSS_yptMR);
  v23 = v6;
  if ((*(v2 + 40) & 1) == 0 && swift_weakLoadStrong())
  {
    SceneNullable = REEntityGetSceneNullable();
    if (SceneNullable)
    {
      v8 = SceneNullable;
      if (RESceneGetSwiftObject())
      {

        v9 = type metadata accessor for Scene();
        v10 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        v9 = type metadata accessor for Scene();
        swift_allocObject();
        v10 = Scene.init(coreScene:)(v8);
      }

      type metadata accessor for Scene();
      v22 = v9;
      *&v21 = v10;
      outlined init with take of Any(&v21, v20);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v20, 0xD000000000000024, 0x80000001C18E1120, isUniquelyReferenced_nonNull_native);
      v23 = v6;
      goto LABEL_8;
    }
  }

  specialized Dictionary._Variant.removeValue(forKey:)(0xD000000000000024, 0x80000001C18E1120, &v21);
  outlined destroy of BodyTrackingComponent?(&v21, &_sypSgMd, &_sypSgMR);
LABEL_8:
  if ((*(v2 + 40) & 1) != 0 || (Strong = swift_weakLoadStrong()) == 0)
  {
    specialized Dictionary._Variant.removeValue(forKey:)(0xD00000000000002BLL, 0x80000001C18E1180, &v21);
    outlined destroy of BodyTrackingComponent?(&v21, &_sypSgMd, &_sypSgMR);
    v13 = v23;
  }

  else
  {
    v12 = Strong;
    v22 = type metadata accessor for Entity();
    *&v21 = v12;
    outlined init with take of Any(&v21, v20);
    v13 = v23;
    v14 = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v20, 0xD00000000000002BLL, 0x80000001C18E1180, v14);
  }

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
  *&v21 = v3;
  outlined init with take of Any(&v21, v20);

  v15 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v20, 0xD00000000000002ELL, 0x80000001C18E11B0, v15);
  v16 = [objc_opt_self() defaultCenter];
  if (one-time initialization token for notificationName != -1)
  {
    swift_once();
  }

  v17 = static NotificationAction.notificationName;
  specialized _dictionaryUpCast<A, B, C, D>(_:)(v13);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v16 postNotificationName:v17 object:0 userInfo:isa];
}

uint64_t __RKEntityInteractionSpecification.init(decodeContext:)@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for __RKEntityActionSpecification(0);
  v49 = *(v4 - 8);
  v50 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v44 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for __RKEntityTriggerSpecification(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v47 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit29__RKEntityActionSpecificationOSgMd, &_s10RealityKit29__RKEntityActionSpecificationOSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v46 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v51 = &v42 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit30__RKEntityTriggerSpecificationOSgMd, &_s10RealityKit30__RKEntityTriggerSpecificationOSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v42 - v17);
  v19 = type metadata accessor for __RKEntityInteractionSpecification(0);
  v20 = *(v19 + 24);
  v45 = a2;
  v21 = (a2 + v20);
  *v21 = 0;
  v21[1] = 0;
  v42 = v19;
  v43 = v21;
  v22 = *a1;
  v23 = a1[1];
  v24 = a1[2];
  v56 = a1[3];
  v25 = a1[4];
  v54 = a1[5];
  v55 = v25;
  v26 = v22;
  v27 = v23;
  v52 = v24;

  outlined init with copy of [String : String](&v56, v53, &_sSDyS2SGMd, &_sSDyS2SGMR);
  outlined init with copy of [String : String](&v55, v53, &_sSDySS10Foundation4UUIDVGMd, &_sSDySS10Foundation4UUIDVGMR);
  outlined init with copy of [String : String](&v54, v53, &_sSDyS2SGMd, &_sSDyS2SGMR);
  v28 = v48;
  __RKEntityTriggerSpecification.init(decodeContext:)(a1, v18);
  if (v28)
  {

    v29 = 1;
  }

  else
  {
    v29 = 0;
  }

  (*(v7 + 56))(v18, v29, 1, v6);
  v48 = v26;
  v30 = v27;

  outlined init with copy of [String : String](&v56, v53, &_sSDyS2SGMd, &_sSDyS2SGMR);
  outlined init with copy of [String : String](&v55, v53, &_sSDySS10Foundation4UUIDVGMd, &_sSDySS10Foundation4UUIDVGMR);
  outlined init with copy of [String : String](&v54, v53, &_sSDyS2SGMd, &_sSDyS2SGMR);
  v31 = v51;
  __RKEntityActionSpecification.init(decodeContext:)(a1, v51);
  v33 = v49;
  v32 = v50;
  (*(v49 + 56))(v31, 0, 1, v50);
  outlined init with copy of [String : String](v18, v15, &_s10RealityKit30__RKEntityTriggerSpecificationOSgMd, &_s10RealityKit30__RKEntityTriggerSpecificationOSgMR);
  if ((*(v7 + 48))(v15, 1, v6) == 1)
  {
    v34 = &_s10RealityKit30__RKEntityTriggerSpecificationOSgMd;
    v35 = &_s10RealityKit30__RKEntityTriggerSpecificationOSgMR;
LABEL_8:
    outlined destroy of BodyTrackingComponent?(v15, v34, v35);
    lazy protocol witness table accessor for type __RKEntityInteractionSpecification.InteractionUSDLoadingError and conformance __RKEntityInteractionSpecification.InteractionUSDLoadingError();
    swift_allocError();
    swift_willThrow();

    outlined destroy of BodyTrackingComponent?(&v56, &_sSDyS2SGMd, &_sSDyS2SGMR);
    outlined destroy of BodyTrackingComponent?(&v55, &_sSDySS10Foundation4UUIDVGMd, &_sSDySS10Foundation4UUIDVGMR);
    outlined destroy of BodyTrackingComponent?(&v54, &_sSDyS2SGMd, &_sSDyS2SGMR);
    outlined destroy of BodyTrackingComponent?(v31, &_s10RealityKit29__RKEntityActionSpecificationOSgMd, &_s10RealityKit29__RKEntityActionSpecificationOSgMR);
    return outlined destroy of BodyTrackingComponent?(v18, &_s10RealityKit30__RKEntityTriggerSpecificationOSgMd, &_s10RealityKit30__RKEntityTriggerSpecificationOSgMR);
  }

  v36 = v33;
  v37 = v47;
  _s10RealityKit30__RKEntityTriggerSpecificationOWObTm_0(v15, v47, type metadata accessor for __RKEntityTriggerSpecification);
  v15 = v46;
  outlined init with copy of [String : String](v31, v46, &_s10RealityKit29__RKEntityActionSpecificationOSgMd, &_s10RealityKit29__RKEntityActionSpecificationOSgMR);
  if ((*(v36 + 48))(v15, 1, v32) == 1)
  {
    outlined destroy of __RKEntityTriggerSpecification(v37);
    v34 = &_s10RealityKit29__RKEntityActionSpecificationOSgMd;
    v35 = &_s10RealityKit29__RKEntityActionSpecificationOSgMR;
    goto LABEL_8;
  }

  outlined destroy of BodyTrackingComponent?(&v56, &_sSDyS2SGMd, &_sSDyS2SGMR);
  outlined destroy of BodyTrackingComponent?(&v55, &_sSDySS10Foundation4UUIDVGMd, &_sSDySS10Foundation4UUIDVGMR);
  outlined destroy of BodyTrackingComponent?(&v54, &_sSDyS2SGMd, &_sSDyS2SGMR);
  outlined destroy of BodyTrackingComponent?(v31, &_s10RealityKit29__RKEntityActionSpecificationOSgMd, &_s10RealityKit29__RKEntityActionSpecificationOSgMR);
  outlined destroy of BodyTrackingComponent?(v18, &_s10RealityKit30__RKEntityTriggerSpecificationOSgMd, &_s10RealityKit30__RKEntityTriggerSpecificationOSgMR);
  v39 = v44;
  _s10RealityKit30__RKEntityTriggerSpecificationOWObTm_0(v15, v44, type metadata accessor for __RKEntityActionSpecification);
  v40 = v45;
  _s10RealityKit30__RKEntityTriggerSpecificationOWObTm_0(v37, v45, type metadata accessor for __RKEntityTriggerSpecification);
  result = _s10RealityKit30__RKEntityTriggerSpecificationOWObTm_0(v39, v40 + *(v42 + 20), type metadata accessor for __RKEntityActionSpecification);
  v41 = v43;
  *v43 = 0;
  v41[1] = 0;
  return result;
}

unint64_t lazy protocol witness table accessor for type __RKEntityInteractionSpecification.InteractionUSDLoadingError and conformance __RKEntityInteractionSpecification.InteractionUSDLoadingError()
{
  result = lazy protocol witness table cache variable for type __RKEntityInteractionSpecification.InteractionUSDLoadingError and conformance __RKEntityInteractionSpecification.InteractionUSDLoadingError;
  if (!lazy protocol witness table cache variable for type __RKEntityInteractionSpecification.InteractionUSDLoadingError and conformance __RKEntityInteractionSpecification.InteractionUSDLoadingError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityInteractionSpecification.InteractionUSDLoadingError, &type metadata for __RKEntityInteractionSpecification.InteractionUSDLoadingError, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityInteractionSpecification.InteractionUSDLoadingError and conformance __RKEntityInteractionSpecification.InteractionUSDLoadingError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityInteractionSpecification.InteractionUSDLoadingError and conformance __RKEntityInteractionSpecification.InteractionUSDLoadingError;
  if (!lazy protocol witness table cache variable for type __RKEntityInteractionSpecification.InteractionUSDLoadingError and conformance __RKEntityInteractionSpecification.InteractionUSDLoadingError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityInteractionSpecification.InteractionUSDLoadingError, &type metadata for __RKEntityInteractionSpecification.InteractionUSDLoadingError, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityInteractionSpecification.InteractionUSDLoadingError and conformance __RKEntityInteractionSpecification.InteractionUSDLoadingError);
  }

  return result;
}

uint64_t outlined destroy of __RKEntityTriggerSpecification(uint64_t a1)
{
  v2 = type metadata accessor for __RKEntityTriggerSpecification(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s10RealityKit30__RKEntityTriggerSpecificationOWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void MetalCapture.start(captureScope:outputURL:device:)(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v15[3] = *MEMORY[0x1E69E9840];
  if ((*(v3 + 16) & 1) == 0)
  {
    *(v3 + 16) = 1;
    *(v3 + 32) = a1;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    v7 = [objc_allocWithZone(MEMORY[0x1E6973FF8]) init];
    v8 = a1;
    if (!a1)
    {
      swift_unknownObjectRetain();
      v8 = a3;
    }

    swift_unknownObjectRetain();
    [v7 setCaptureObject_];
    swift_unknownObjectRelease();
    [v7 setDestination_];
    URL._bridgeToObjectiveC()(v9);
    v11 = v10;
    [v7 setOutputURL_];

    v12 = *(v4 + 24);
    v15[0] = 0;
    if ([v12 startCaptureWithDescriptor:v7 error:v15])
    {
      v13 = v15[0];
      if (a1)
      {
        [a1 beginScope];
      }
    }

    else
    {
      v14 = v15[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v15[0] = 0;
      v15[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(32);
      MEMORY[0x1C68F3410](0xD00000000000001ELL, 0x80000001C18E1370);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      _print_unlocked<A, B>(_:_:)();
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }
}

uint64_t MetalCapture.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

char *getTriangleOpacityResults(mxiScene:)(void *a1)
{
  v3 = v1;
  v128 = *MEMORY[0x1E69E9840];
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v97 - v10;
  v12 = MTLCreateSystemDefaultDevice();
  if (!v12)
  {
    lazy protocol witness table accessor for type GetTriangleOpacityResultsError and conformance GetTriangleOpacityResultsError();
    swift_allocError();
    swift_willThrow();
    return v2;
  }

  v123 = v12;
  static URL.temporaryDirectory.getter();
  URL.appendingPathComponent(_:)();
  v13 = *(v6 + 8);
  v122 = v6 + 8;
  v13(v8, v5);
  v14 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
  v15 = URL.absoluteString.getter();
  v16 = MEMORY[0x1C68F3280](v15);

  v125 = 0;
  v121 = v14;
  LODWORD(v14) = [v14 removeItemAtPath:v16 error:&v125];

  if (v14)
  {
    v17 = v125;
  }

  else
  {
    v18 = v125;
    v19 = _convertNSErrorToError(_:)();

    swift_willThrow();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1C1887600;
    v125 = 0;
    v126.i64[0] = 0xE000000000000000;
    _StringGuts.grow(_:)(27);
    MEMORY[0x1C68F3410](0x6D657220656C6946, 0xEE00203A6C61766FLL);
    v124[0] = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x1C68F3410](0x616620746F6E202CLL, 0xEB000000006C6174);
    v21 = v125;
    v22 = v126.i64[0];
    *(v20 + 56) = MEMORY[0x1E69E6158];
    *(v20 + 32) = v21;
    *(v20 + 40) = v22;
    print(_:separator:terminator:)();

    v3 = 0;
  }

  type metadata accessor for MetalCapture();
  inited = swift_initStackObject();
  *(inited + 16) = 0;
  *(inited + 24) = [objc_opt_self() sharedCaptureManager];
  *(inited + 32) = 0;
  v24 = [objc_opt_self() standardUserDefaults];
  v25 = MEMORY[0x1C68F3280](0xD000000000000026, 0x80000001C18E1250);
  v2 = [v24 BOOLForKey_];

  LODWORD(v119) = v2;
  if (v2)
  {
    MetalCapture.start(captureScope:outputURL:device:)(0, v11, v123);
  }

  v26 = [a1 triangleCount];
  if ((v26 & 0x8000000000000000) != 0)
  {
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
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  v27 = v26;
  v120 = v13;
  v28 = v26 >> 1;
  if (((v26 >> 1) * 11) >> 64 != (11 * (v26 >> 1)) >> 63)
  {
    goto LABEL_86;
  }

  v118 = 11 * (v26 >> 1);
  v29 = [v123 newCommandQueue];
  if (!v29)
  {
    lazy protocol witness table accessor for type GetTriangleOpacityResultsError and conformance GetTriangleOpacityResultsError();
    swift_allocError();
    swift_willThrow();

    swift_unknownObjectRelease();
    swift_setDeallocating();

LABEL_23:
    swift_unknownObjectRelease();
    v51 = v11;
LABEL_24:
    v52 = v5;
LABEL_25:
    v120(v51, v52);
    return v2;
  }

  v2 = v29;
  v115 = v28;
  v30 = [objc_allocWithZone(MEMORY[0x1E6974008]) init];
  v31 = [v2 commandBufferWithDescriptor_];
  if (!v31)
  {
    lazy protocol witness table accessor for type GetTriangleOpacityResultsError and conformance GetTriangleOpacityResultsError();
    swift_allocError();
    swift_willThrow();

    swift_unknownObjectRelease();
LABEL_22:
    swift_unknownObjectRelease();
    swift_setDeallocating();

    goto LABEL_23;
  }

  v111 = v27;
  v116 = v30;
  v32 = v31;
  v33 = [objc_allocWithZone(MEMORY[0x1E6974028]) init];
  v34 = [v32 computeCommandEncoderWithDescriptor_];
  if (!v34)
  {
    lazy protocol witness table accessor for type GetTriangleOpacityResultsError and conformance GetTriangleOpacityResultsError();
    swift_allocError();
    swift_willThrow();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    goto LABEL_22;
  }

  v112 = v32;
  v109 = a1;
  v114 = v34;
  v117 = v11;
  v35 = MEMORY[0x1C68F3280](0xD00000000000001BLL, 0x80000001C18E1280);
  v36 = [objc_opt_self() bundleWithIdentifier_];

  if (!v36)
  {
    lazy protocol witness table accessor for type GetTriangleOpacityResultsError and conformance GetTriangleOpacityResultsError();
    swift_allocError();
    swift_willThrow();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_setDeallocating();

LABEL_29:
    swift_unknownObjectRelease();
    v51 = v117;
    goto LABEL_24;
  }

  v107 = v3;
  v110 = v2;
  v125 = 0;
  v2 = v123;
  v37 = [v123 newDefaultLibraryWithBundle:v36 error:&v125];
  v38 = v36;
  if (!v37)
  {
    v54 = v33;
    v55 = v125;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_setDeallocating();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    goto LABEL_29;
  }

  v39 = v37;
  v108 = v38;
  v113 = v5;
  v40 = v125;
  v41 = MEMORY[0x1C68F3280](0xD000000000000011, 0x80000001C18E12A0);
  v42 = [v39 newFunctionWithName_];

  if (!v42)
  {
    lazy protocol witness table accessor for type GetTriangleOpacityResultsError and conformance GetTriangleOpacityResultsError();
    swift_allocError();
    swift_willThrow();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_setDeallocating();

LABEL_32:
    swift_unknownObjectRelease();
    v51 = v117;
    v52 = v113;
    goto LABEL_25;
  }

  v106 = v39;
  v125 = 0;
  v43 = [v123 newComputePipelineStateWithFunction:v42 error:&v125];
  v2 = v110;
  if (!v43)
  {
    v56 = v33;
    v57 = v125;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_unknownObjectRelease();
    swift_setDeallocating();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    goto LABEL_32;
  }

  v44 = v43;
  v105 = inited;
  v102 = v42;
  v104 = v33;
  v45 = v125;
  v46 = v114;
  [v114 setComputePipelineState_];
  v103 = v44;
  *&v47 = MTLSizeMake([v44 threadExecutionWidth], &v125).u64[0];
  v100 = v125;
  v98 = v126.i64[1];
  v99 = v126.i64[0];
  v48 = [v109 colorTexture];
  if (v119)
  {
    v49 = [objc_allocWithZone(MEMORY[0x1E69741C0]) init];
    [v49 setUsage_];
    [v49 setWidth_];
    [v49 setHeight_];
    [v49 setPixelFormat_];
    [v49 setStorageMode_];
    [v49 setDepth_];
    [v49 setMipmapLevelCount_];
    [v49 setResourceOptions_];
    [v49 setArrayLength_];
    v50 = [v123 newTextureWithDescriptor_];

    [v46 setTexture:v48 atIndex:0];
    v101 = v50;
    [v46 setTexture:v50 atIndex:1];
  }

  else
  {
    [v46 setTexture:v48 atIndex:0];
    v101 = 0;
  }

  v58 = v117;
  v59 = v116;
  v60 = v111;
  v61 = v115;
  if ((v118 - 0x2000000000000000) >> 62 != 3)
  {
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  v2 = v123;
  v62 = [v123 newBufferWithLength:4 * v118 options:0];
  if (!v62)
  {
    lazy protocol witness table accessor for type GetTriangleOpacityResultsError and conformance GetTriangleOpacityResultsError();
    swift_allocError();
    swift_willThrow();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v80 = v105;
    swift_setDeallocating();

    swift_unknownObjectRelease();
    v120(v58, v113);
    return v2;
  }

  v111 = v48;
  v63 = v114;
  v115 = v62;
  [v114 setBuffer:v62 offset:0 atIndex:0];
  v64 = v109;
  [v63 setBuffer:objc_msgSend(v109 offset:sel_triangleIndices) atIndex:{0, 1}];
  swift_unknownObjectRelease();
  [v63 setBuffer:objc_msgSend(v64 offset:sel_vertexUVs) atIndex:{0, 2}];
  swift_unknownObjectRelease();
  [v63 setBuffer:objc_msgSend(v64 offset:sel_vertexPositions) atIndex:{0, 3}];
  swift_unknownObjectRelease();
  [v63 setBuffer:objc_msgSend(v64 offset:sel_triangleSliceIndices) atIndex:{0, 4}];
  swift_unknownObjectRelease();
  if (v60 >> 33)
  {
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
  }

  v127 = v61;
  v65 = v123;
  v97[1] = [v123 newBufferWithBytes:&v127 length:4 options:0];
  [v63 setBuffer_offset_atIndex_];
  [v63 setBuffer:objc_msgSend(v65 offset:sel_newBufferWithBytes_length_options_ atIndex:{&unk_1F40E41D0, 4, 0)}];
  v126 = vdupq_n_s64(1uLL);
  v124[0] = v100;
  v124[1] = v99;
  v124[2] = v98;
  v125 = v61;
  [v63 dispatchThreadgroups:&v125 threadsPerThreadgroup:v124];
  [v63 endEncoding];
  v66 = v112;
  [v112 commit];
  [v66 waitUntilCompleted];
  if (v119 && *(v105 + 16) == 1)
  {
    v67 = *(v105 + 32);
    if (v67)
    {
      [v67 endScope];
    }

    [*(v105 + 24) stopCapture];
  }

  v68 = v115;
  v69 = [swift_unknownObjectRetain() contents];
  v70 = v68;
  v119 = _sSv17RealityFoundationE7toArray0C08capacitySayxGxm_SitlFs6UInt32V_Ttg5(v118, v69);
  v71 = v109;
  v72 = [v109 triangleIndices];
  v73 = [v72 contents];
  v74 = v72;
  v75 = [v71 triangleCount];
  if (!is_mul_ok(v75, 3uLL))
  {
    goto LABEL_97;
  }

  v76 = 3 * v75;
  v77 = v113;
  v78 = v117;
  if (v76 < 0)
  {
    goto LABEL_98;
  }

  v118 = _sSv17RealityFoundationE7toArray0C08capacitySayxGxm_SitlFs6UInt32V_Ttg5(v76, v73);
  if (v60 < 2)
  {
    v2 = MEMORY[0x1E69E7CC0];
LABEL_46:
    v120(v78, v77);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v79 = v105;
    swift_setDeallocating();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    return v2;
  }

  v81 = 0;
  v82 = v119 + 9;
  v2 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (!v61)
    {
      goto LABEL_87;
    }

    v83 = v119[2];
    if (v81 >= v83)
    {
      goto LABEL_88;
    }

    if (v81 + 1 >= v83)
    {
      goto LABEL_89;
    }

    if (v81 + 2 >= v83)
    {
      goto LABEL_90;
    }

    if (v81 + 3 >= v83)
    {
      goto LABEL_91;
    }

    if (v81 + 8 >= v83 || v81 + 7 >= v83)
    {
      goto LABEL_92;
    }

    if (v81 + 9 >= v83)
    {
      goto LABEL_93;
    }

    if (v81 + 10 >= v83)
    {
      goto LABEL_94;
    }

    if (*(v82 - 1) != 99 || *v82)
    {
      break;
    }

    v84 = v82[7];
    v85 = v82[8];
    if (v82[1])
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
      }

      v87 = *(v2 + 2);
      v86 = *(v2 + 3);
      v88 = v87 + 1;
      if (v87 >= v86 >> 1)
      {
        v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v86 > 1), v87 + 1, 1, v2);
      }

      v89 = 0;
    }

    else
    {
      v90 = v82[2];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (v90)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
        }

        v87 = *(v2 + 2);
        v92 = *(v2 + 3);
        v88 = v87 + 1;
        if (v87 >= v92 >> 1)
        {
          v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v92 > 1), v87 + 1, 1, v2);
        }

        v89 = 2;
      }

      else
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
        }

        v87 = *(v2 + 2);
        v93 = *(v2 + 3);
        v88 = v87 + 1;
        v89 = 1;
        if (v87 >= v93 >> 1)
        {
          v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v93 > 1), v87 + 1, 1, v2);
        }
      }
    }

    *(v2 + 2) = v88;
    v2[v87 + 32] = v89;
    if (!v84)
    {
      v95 = *(v2 + 3);
      v96 = v88 + 1;
      if (v85)
      {
        v94 = 2;
      }

      else
      {
        v94 = 1;
      }

      if (v88 < v95 >> 1)
      {
        goto LABEL_78;
      }

LABEL_84:
      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v95 > 1), v96, 1, v2);
      goto LABEL_78;
    }

    v94 = 0;
    v95 = *(v2 + 3);
    v96 = v88 + 1;
    if (v88 >= v95 >> 1)
    {
      goto LABEL_84;
    }

LABEL_78:
    *(v2 + 2) = v96;
    v2[v88 + 32] = v94;
    v81 += 11;
    v82 += 11;
    --v61;
    v77 = v113;
    v78 = v117;
    if (!v61)
    {
      goto LABEL_46;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type GetTriangleOpacityResultsError and conformance GetTriangleOpacityResultsError()
{
  result = lazy protocol witness table cache variable for type GetTriangleOpacityResultsError and conformance GetTriangleOpacityResultsError;
  if (!lazy protocol witness table cache variable for type GetTriangleOpacityResultsError and conformance GetTriangleOpacityResultsError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for GetTriangleOpacityResultsError, &type metadata for GetTriangleOpacityResultsError, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type GetTriangleOpacityResultsError and conformance GetTriangleOpacityResultsError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GetTriangleOpacityResultsError and conformance GetTriangleOpacityResultsError;
  if (!lazy protocol witness table cache variable for type GetTriangleOpacityResultsError and conformance GetTriangleOpacityResultsError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for GetTriangleOpacityResultsError, &type metadata for GetTriangleOpacityResultsError, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type GetTriangleOpacityResultsError and conformance GetTriangleOpacityResultsError);
  }

  return result;
}

int64x2_t MTLSizeMake@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  result = vdupq_n_s64(1uLL);
  *(a2 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type TriangleOpacityResult and conformance TriangleOpacityResult()
{
  result = lazy protocol witness table cache variable for type TriangleOpacityResult and conformance TriangleOpacityResult;
  if (!lazy protocol witness table cache variable for type TriangleOpacityResult and conformance TriangleOpacityResult)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TriangleOpacityResult, &type metadata for TriangleOpacityResult, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TriangleOpacityResult and conformance TriangleOpacityResult);
  }

  return result;
}

char *specialized static EmphasizeAnimations.makeTransforms(_:_:)(uint64_t a1, char **a2)
{
  v4 = *(a1 + 16);
  v5 = v4 / 0xA;
  v6 = *a2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v6 + 3) >> 1)
  {
    *a2 = v6;
    if (!v4)
    {
      return result;
    }
  }

  else
  {
    if (*(v6 + 2) <= v5)
    {
      v10 = v4 / 0xA;
    }

    else
    {
      v10 = *(v6 + 2);
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 0, v6);
    v6 = result;
    *a2 = result;
    if (!v4)
    {
      return result;
    }
  }

  v11 = a1 + 32;
  if (one-time initialization token for identity != -1)
  {
LABEL_41:
    result = swift_once();
  }

  v12 = 0;
  do
  {
    if (__OFADD__(v12, 10))
    {
      v13 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v12 + 10;
    }

    if (v12 >= v4)
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    if (v12 + 1 >= v4)
    {
      goto LABEL_31;
    }

    if (v12 + 2 >= v4)
    {
      goto LABEL_32;
    }

    if (v12 + 3 >= v4)
    {
      goto LABEL_33;
    }

    if (v12 + 4 >= v4)
    {
      goto LABEL_34;
    }

    if (v12 + 5 >= v4)
    {
      goto LABEL_35;
    }

    if (v12 + 6 >= v4)
    {
      goto LABEL_36;
    }

    if (v12 + 7 >= v4)
    {
      goto LABEL_37;
    }

    if (v12 + 8 >= v4)
    {
      goto LABEL_38;
    }

    v14 = v12 + 9;
    if (__OFADD__(v12, 9))
    {
      goto LABEL_39;
    }

    if (v14 >= v4)
    {
      goto LABEL_40;
    }

    LODWORD(v15) = *(v11 + 4 * v12);
    DWORD1(v15) = *(v11 + 4 * (v12 + 1));
    *(&v15 + 1) = *(v11 + 4 * (v12 + 2));
    LODWORD(v16) = *(v11 + 4 * (v12 + 3));
    LODWORD(v9) = *(v11 + 4 * (v12 + 4));
    *&v8 = *(v11 + 4 * (v12 + 5));
    LODWORD(v17) = *(v11 + 4 * (v12 + 7));
    DWORD1(v17) = *(v11 + 4 * (v12 + 8));
    *(&v17 + 1) = *(v11 + 4 * v14);
    v19 = *(v6 + 2);
    v18 = *(v6 + 3);
    if (v19 >= v18 >> 1)
    {
      v24 = v16;
      v25 = v15;
      v22 = v9;
      v23 = v8;
      v21 = v17;
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v6);
      v17 = v21;
      v9 = v22;
      v8 = v23;
      LODWORD(v16) = v24;
      v15 = v25;
      v6 = result;
    }

    DWORD1(v16) = v9;
    *(&v16 + 1) = v8;
    *(v6 + 2) = v19 + 1;
    v20 = &v6[48 * v19];
    *(v20 + 2) = v15;
    *(v20 + 3) = v16;
    *(v20 + 4) = v17;
    v12 = v13;
  }

  while (v13 < v4);
  *a2 = v6;
  return result;
}

char *specialized static EmphasizeAnimations.createEmphasizePulseAnimation(style:)(_BYTE *a1)
{
  if (*a1)
  {
    if (*a1 == 1)
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 107, 0, MEMORY[0x1E69E7CC0]);
    }

    else
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 99, 0, MEMORY[0x1E69E7CC0]);
    }
  }

  else
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 71, 0, MEMORY[0x1E69E7CC0]);
  }

  specialized static EmphasizeAnimations.makeTransforms(_:_:)(v1, &v3);

  return v3;
}

char *specialized static EmphasizeAnimations.bakeEmphasisTransforms(_:transforms:isAdditive:)(uint64_t a1, char *a2, char a3)
{

  REEntityComputeMeshBounds();
  v50 = v5;
  v49 = v6;
  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlFAA9TransformV_Tt0B5Tf4dn_n(v51);
  if ((v52 & 1) == 0)
  {
    v46 = v51[1];
    v47 = v51[0];
    v7 = v51[2];
    goto LABEL_5;
  }

  if (one-time initialization token for identity != -1)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v46 = xmmword_1EBEB2BB0;
    v47 = static Transform.identity;
    v7 = xmmword_1EBEB2BC0;
LABEL_5:
    v45 = v7;
    v8 = *(a2 + 2);
    if (!v8)
    {
      return a2;
    }

    v9 = 0;
    v10 = 0;
    v11 = vsubq_f32(v49, v50);
    v11.f32[0] = (v11.f32[2] + (v11.f32[1] + (v11.f32[0] + 0.0))) / 3.0;
    v49 = v11;
    v48 = *(a2 + 4);
    v43 = vdupq_laneq_s32(v46, 2);
    v44 = vdupq_lane_s32(*v46.f32, 0);
    v12 = vmulq_f32(v46, xmmword_1C1899C90);
    v13 = vnegq_f32(v12);
    v14 = vtrn2q_s32(v12, vtrn1q_s32(v12, v13));
    v15 = vextq_s8(v14, v14, 8uLL);
    v16 = vrev64q_s32(v12);
    v16.i32[0] = v13.i32[1];
    v40 = vextq_s8(v12, v13, 8uLL);
    v16.i32[3] = v13.i32[2];
    v41 = v16;
    v42 = v15;
    while (v10 < *(a2 + 2))
    {
      v50 = *&a2[v9 + 64];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a2 = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
      }

      v30 = vsubq_f32(v50, v48);
      *v29.f32 = vmul_n_f32(*v30.f32, v49.f32[0]);
      v31 = vmuls_lane_f32(v49.f32[0], v30, 2);
      v30.i64[0] = v29.i64[0];
      v30.i64[1] = LODWORD(v31);
      v32 = &a2[v9];
      *&a2[v9 + 64] = v30;
      if ((a3 & 1) == 0)
      {
        v33 = *(a2 + 2);
        if (v10 >= v33)
        {
          goto LABEL_21;
        }

        v34 = v32[2];
        v35 = *&a2[v9 + 48];
        if (one-time initialization token for identity == -1)
        {
          if (v10 >= v33)
          {
            goto LABEL_18;
          }
        }

        else
        {
          v50 = v29;
          v38 = *&a2[v9 + 48];
          v39 = v31;
          v37 = v32[2];
          swift_once();
          v34 = v37;
          v35 = v38;
          v31 = v39;
          v29.i64[0] = v50.i64[0];
          if (v10 >= *(a2 + 2))
          {
LABEL_18:
            __break(1u);
            return a2;
          }
        }

        v17 = vmulq_f32(v47, v34);
        v17.i32[3] = 0;
        v18 = vnegq_f32(v35);
        v19 = vtrn2q_s32(v35, vtrn1q_s32(v35, v18));
        v20 = vmlaq_f32(vmulq_lane_f32(vextq_s8(v35, v18, 8uLL), *v46.f32, 1), vextq_s8(v19, v19, 8uLL), v44);
        v21 = vrev64q_s32(v35);
        v21.i32[0] = v18.i32[1];
        v21.i32[3] = v18.i32[2];
        v22 = vmlaq_f32(vmulq_laneq_f32(v35, v46, 3), v21, v43);
        v23 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v40, vmuls_lane_f32(v47.f32[1], *v29.f32, 1)), v42, v47.f32[0] * v29.f32[0]), v41, v47.f32[2] * v31);
        v24 = vnegq_f32(v23);
        v25 = vtrn2q_s32(v23, vtrn1q_s32(v23, v24));
        v26 = vmlaq_f32(vmulq_lane_f32(vextq_s8(v23, v24, 8uLL), *v46.f32, 1), vextq_s8(v25, v25, 8uLL), v44);
        v27 = vrev64q_s32(v23);
        v27.i32[0] = v24.i32[1];
        v27.i32[3] = v24.i32[2];
        v28 = vaddq_f32(v45, vaddq_f32(vmlaq_f32(vmulq_laneq_f32(v23, v46, 3), v27, v43), v26));
        v28.i32[3] = 0;
        v32[2] = v17;
        *&a2[v9 + 48] = vaddq_f32(v22, v20);
        v32[4] = v28;
      }

      ++v10;
      v9 += 48;
      if (v8 == v10)
      {
        return a2;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    swift_once();
  }
}

uint64_t REEncoder.__deallocating_deinit()
{
  REEncoderDestroy();

  return swift_deallocClassInstance();
}

uint64_t REEncoder.encode<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 16);
  v7 = type metadata accessor for PrivateEncoder();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E7CC0];
  *(v8 + 32) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs17CodingUserInfoKeyV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v8 + 40) = v9;
  *(v8 + 48) = 0;
  *(v8 + 16) = v6;
  *(v8 + 24) = v9;
  if (!REEncoderOpen())
  {
    v18[3] = v7;
    v18[4] = lazy protocol witness table accessor for type SingleValueEC and conformance SingleValueEC(&lazy protocol witness table cache variable for type PrivateEncoder and conformance PrivateEncoder, type metadata accessor for PrivateEncoder, protocol conformance descriptor for PrivateEncoder);
    v18[0] = v8;

    v10 = a1;
    dispatch thunk of Encodable.encode(to:)();
    if (v4)
    {

      __swift_destroy_boxed_opaque_existential_1(v18);
      return v10;
    }

    __swift_destroy_boxed_opaque_existential_1(v18);
    PrivateDecoder.terminateContainers(_:)(0);
    if (!REEncoderClose())
    {
      v17 = REEncoderCopyToCFData();
      v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

      return v10;
    }
  }

  v10 = specialized static REEncoder.Error.getStatus(_:)(v6);
  v12 = v11;
  v14 = v13;
  lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error();
  swift_allocError();
  *v15 = v10;
  *(v15 + 8) = v12;
  *(v15 + 16) = v14 & 1;
  swift_willThrow();

  return v10;
}

uint64_t PrivateEncoder.writeKey(_:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of CodingKey.intValue.getter();
  v4 = v3;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of CodingKey.stringValue.getter();
  if ((v4 & 1) == 0)
  {

    v5 = *(v1 + 16);
    result = REEncoderWriteInt64();
    if (!result)
    {
      return result;
    }

    goto LABEL_5;
  }

  v5 = *(v1 + 16);
  String.utf8CString.getter();

  v6 = REEncoderWriteString();

  if (v6)
  {
LABEL_5:
    v8 = specialized static REEncoder.Error.getStatus(_:)(v5);
    v10 = v9;
    v12 = v11;
    lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error();
    swift_allocError();
    *v13 = v8;
    *(v13 + 8) = v10;
    *(v13 + 16) = v12 & 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t PrivateEncoder.container<A>(keyedBy:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  PrivateDecoder.terminateContainers(_:)(*(*(v3 + 24) + 16) + 1);
  swift_beginAccess();
  v7 = *(v3 + 40);
  v8 = *(v7 + 16);
  v9 = *(v3 + 24);
  if (*(v9 + 16) >= v8)
  {
    v10 = 0;
  }

  else
  {
    outlined init with copy of [String : String](v7 + 48 * v8 - 16, &v27, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_p_Sb5keyedtMd, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_p_Sb5keyedtMR);
    v10 = v28[24];
    outlined init with take of ForceEffectBase(&v27, &v23);
    v26 = v10;
    outlined destroy of BodyTrackingComponent?(&v23, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_p_Sb5keyedtMd, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_p_Sb5keyedtMR);
    v9 = *(v3 + 24);
  }

  *(v3 + 48) = v10;
  PrivateDecoder.terminateContainers(_:)(*(v9 + 16));
  v12 = type metadata accessor for KeyedEC(0, a2, a3, v11);
  v13 = *(v4 + 24);

  v14 = KeyedEC.__allocating_init(encoder:codingPath:)(v4, v13);
  *(v4 + 48) = 0;
  v24 = v12;
  v25 = &protocol witness table for KeyedEC<A>;
  *&v23 = v14;
  outlined init with take of ForceEffectBase(&v23, &v27);
  v28[24] = 1;
  swift_beginAccess();
  v15 = *(v4 + 40);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + 40) = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15[2] + 1, 1, v15);
    *(v4 + 40) = v15;
  }

  v18 = v15[2];
  v17 = v15[3];
  if (v18 >= v17 >> 1)
  {
    v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v15);
  }

  v15[2] = v18 + 1;
  v19 = &v15[6 * v18];
  v20 = v27;
  v21 = *v28;
  *(v19 + 57) = *&v28[9];
  v19[2] = v20;
  v19[3] = v21;
  *(v4 + 40) = v15;
  swift_endAccess();
  *&v27 = v14;
  swift_getWitnessTable(protocol conformance descriptor for KeyedEC<A>, v12);
  return KeyedEncodingContainer.init<A>(_:)();
}

uint64_t KeyedEC.__allocating_init(encoder:codingPath:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *(result + 64) = 0;
  *(result + 16) = a1;
  *(result + 24) = a2;
  if ((*(a1 + 48) & 1) == 0)
  {
    v5 = result;
    REEncoderBeginContainer();
    return v5;
  }

  return result;
}

uint64_t PrivateEncoder.unkeyedContainer()@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  PrivateDecoder.terminateContainers(_:)(*(*(v1 + 24) + 16) + 1);
  swift_beginAccess();
  v3 = *(v1 + 40);
  v4 = *(v3 + 16);
  v5 = *(v1 + 24);
  if (*(v5 + 16) >= v4)
  {
    v7 = 0;
  }

  else
  {
    outlined init with copy of [String : String](v3 + 48 * v4 - 16, &v23, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_p_Sb5keyedtMd, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_p_Sb5keyedtMR);
    v6 = v24[24];
    outlined init with take of ForceEffectBase(&v23, &v19);
    v22 = v6;
    outlined destroy of BodyTrackingComponent?(&v19, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_p_Sb5keyedtMd, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_p_Sb5keyedtMR);
    v7 = v6 ^ 1;
    v5 = *(v1 + 24);
  }

  *(v1 + 48) = v7;
  PrivateDecoder.terminateContainers(_:)(*(v5 + 16));
  v8 = *(v1 + 24);
  v9 = type metadata accessor for UnkeyedEC();
  v10 = swift_allocObject();
  *(v10 + 32) = 0u;
  *(v10 + 48) = 0u;
  *(v10 + 64) = 0u;
  *(v10 + 16) = v1;
  *(v10 + 24) = v8;
  if (*(v1 + 48) == 1)
  {
  }

  else
  {

    REEncoderBeginContainer();
  }

  *(v1 + 48) = 0;
  v20 = v9;
  v21 = &protocol witness table for UnkeyedEC;
  *&v19 = v10;
  outlined init with take of ForceEffectBase(&v19, &v23);
  v24[24] = 0;
  swift_beginAccess();
  v11 = *(v1 + 40);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 40) = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11[2] + 1, 1, v11);
    *(v1 + 40) = v11;
  }

  v14 = v11[2];
  v13 = v11[3];
  if (v14 >= v13 >> 1)
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v11);
  }

  v11[2] = v14 + 1;
  v15 = &v11[6 * v14];
  v16 = v23;
  v17 = *v24;
  *(v15 + 57) = *&v24[9];
  v15[2] = v16;
  v15[3] = v17;
  *(v1 + 40) = v11;
  swift_endAccess();
  a1[3] = v9;
  result = lazy protocol witness table accessor for type SingleValueEC and conformance SingleValueEC(&lazy protocol witness table cache variable for type UnkeyedEC and conformance UnkeyedEC, type metadata accessor for UnkeyedEC, protocol conformance descriptor for UnkeyedEC);
  a1[4] = result;
  *a1 = v10;
  return result;
}

double protocol witness for Encoder.singleValueContainer() in conformance PrivateEncoder@<D0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = type metadata accessor for SingleValueEC();
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  a1[3] = v5;
  a1[4] = lazy protocol witness table accessor for type SingleValueEC and conformance SingleValueEC(&lazy protocol witness table cache variable for type SingleValueEC and conformance SingleValueEC, type metadata accessor for SingleValueEC, protocol conformance descriptor for SingleValueEC);
  *a1 = v6;

  return result;
}

uint64_t KeyedEC.encodeNil(forKey:)(uint64_t a1)
{
  v3 = v1;
  v5 = *v1;
  v6 = v1[2];
  v7 = v5;
  PrivateDecoder.terminateContainers(_:)(*(v3[3] + 16) + 1);
  v19 = *(v7 + 80);
  v17 = v19;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
  (*(*(v17 - 8) + 16))(boxed_opaque_existential_1, a1);
  PrivateEncoder.writeKey(_:)(v18);
  result = __swift_destroy_boxed_opaque_existential_1(v18);
  if (!v2)
  {
    v10 = *(v6 + 16);
    result = REEncoderWriteNil();
    if (result)
    {
      v11 = specialized static REEncoder.Error.getStatus(_:)(v10);
      v13 = v12;
      v15 = v14;
      lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error();
      swift_allocError();
      *v16 = v11;
      *(v16 + 8) = v13;
      *(v16 + 16) = v15 & 1;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t KeyedEC.encode(_:forKey:)(char a1, uint64_t a2)
{
  v4 = v2;
  v6 = *v2;
  v7 = v2[2];
  v8 = v6;
  PrivateDecoder.terminateContainers(_:)(*(v4[3] + 16) + 1);
  v20 = *(v8 + 80);
  v18 = v20;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
  (*(*(v18 - 8) + 16))(boxed_opaque_existential_1, a2);
  PrivateEncoder.writeKey(_:)(v19);
  result = __swift_destroy_boxed_opaque_existential_1(v19);
  if (!v3)
  {
    v11 = *(v7 + 16);
    result = REEncoderWriteBool();
    if (result)
    {
      v12 = specialized static REEncoder.Error.getStatus(_:)(v11);
      v14 = v13;
      v16 = v15;
      lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error();
      swift_allocError();
      *v17 = v12;
      *(v17 + 8) = v14;
      *(v17 + 16) = v16 & 1;
      return swift_willThrow();
    }
  }

  return result;
}

{
  v4 = v2;
  v6 = *v2;
  v7 = v2[2];
  v8 = v6;
  PrivateDecoder.terminateContainers(_:)(*(v4[3] + 16) + 1);
  v20 = *(v8 + 80);
  v18 = v20;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
  (*(*(v18 - 8) + 16))(boxed_opaque_existential_1, a2);
  PrivateEncoder.writeKey(_:)(v19);
  result = __swift_destroy_boxed_opaque_existential_1(v19);
  if (!v3)
  {
    v11 = *(v7 + 16);
    result = REEncoderWriteInt8();
    if (result)
    {
      v12 = specialized static REEncoder.Error.getStatus(_:)(v11);
      v14 = v13;
      v16 = v15;
      lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error();
      swift_allocError();
      *v17 = v12;
      *(v17 + 8) = v14;
      *(v17 + 16) = v16 & 1;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t KeyedEC.encode(_:forKey:)(uint64_t a1, double a2)
{
  v4 = v2;
  v6 = *v2;
  v7 = v2[2];
  v8 = v6;
  PrivateDecoder.terminateContainers(_:)(*(v4[3] + 16) + 1);
  v20 = *(v8 + 80);
  v18 = v20;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
  (*(*(v18 - 8) + 16))(boxed_opaque_existential_1, a1);
  PrivateEncoder.writeKey(_:)(v19);
  result = __swift_destroy_boxed_opaque_existential_1(v19);
  if (!v3)
  {
    v11 = *(v7 + 16);
    result = REEncoderWriteDouble();
    if (result)
    {
      v12 = specialized static REEncoder.Error.getStatus(_:)(v11);
      v14 = v13;
      v16 = v15;
      lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error();
      swift_allocError();
      *v17 = v12;
      *(v17 + 8) = v14;
      *(v17 + 16) = v16 & 1;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t KeyedEC.encode(_:forKey:)(uint64_t a1, float a2)
{
  v4 = v2;
  v6 = *v2;
  v7 = v2[2];
  v8 = v6;
  PrivateDecoder.terminateContainers(_:)(*(v4[3] + 16) + 1);
  v20 = *(v8 + 80);
  v18 = v20;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
  (*(*(v18 - 8) + 16))(boxed_opaque_existential_1, a1);
  PrivateEncoder.writeKey(_:)(v19);
  result = __swift_destroy_boxed_opaque_existential_1(v19);
  if (!v3)
  {
    v11 = *(v7 + 16);
    result = REEncoderWriteFloat();
    if (result)
    {
      v12 = specialized static REEncoder.Error.getStatus(_:)(v11);
      v14 = v13;
      v16 = v15;
      lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error();
      swift_allocError();
      *v17 = v12;
      *(v17 + 8) = v14;
      *(v17 + 16) = v16 & 1;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t KeyedEC.encode(_:forKey:)(uint64_t a1, uint64_t a2)
{
  return KeyedEC.encode(_:forKey:)(a1, a2, MEMORY[0x1E69988E0]);
}

{
  return KeyedEC.encode(_:forKey:)(a1, a2, MEMORY[0x1E69988D8]);
}

{
  return KeyedEC.encode(_:forKey:)(a1, a2, MEMORY[0x1E69988F0]);
}

{
  return KeyedEC.encode(_:forKey:)(a1, a2, MEMORY[0x1E69988E8]);
}

{
  return KeyedEC.encode(_:forKey:)(a1, a2);
}

{
  return KeyedEC.encode(_:forKey:)(a1, a2);
}

uint64_t KeyedEC.encode(_:forKey:)(__int16 a1, uint64_t a2)
{
  v4 = v2;
  v6 = *v2;
  v7 = v2[2];
  v8 = v6;
  PrivateDecoder.terminateContainers(_:)(*(v4[3] + 16) + 1);
  v20 = *(v8 + 80);
  v18 = v20;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
  (*(*(v18 - 8) + 16))(boxed_opaque_existential_1, a2);
  PrivateEncoder.writeKey(_:)(v19);
  result = __swift_destroy_boxed_opaque_existential_1(v19);
  if (!v3)
  {
    v11 = *(v7 + 16);
    result = REEncoderWriteInt16();
    if (result)
    {
      v12 = specialized static REEncoder.Error.getStatus(_:)(v11);
      v14 = v13;
      v16 = v15;
      lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error();
      swift_allocError();
      *v17 = v12;
      *(v17 + 8) = v14;
      *(v17 + 16) = v16 & 1;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t KeyedEC.encode(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v7 = *v3;
  v8 = v3[2];
  v9 = v7;
  PrivateDecoder.terminateContainers(_:)(*(v5[3] + 16) + 1);
  v22 = *(v9 + 80);
  v20 = v22;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
  (*(*(v20 - 8) + 16))(boxed_opaque_existential_1, a3);
  PrivateEncoder.writeKey(_:)(v21);
  result = __swift_destroy_boxed_opaque_existential_1(v21);
  if (!v4)
  {
    v12 = *(v8 + 16);
    String.utf8CString.getter();
    v13 = REEncoderWriteString();

    if (v13)
    {
      v14 = specialized static REEncoder.Error.getStatus(_:)(v12);
      v16 = v15;
      v18 = v17;
      lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error();
      swift_allocError();
      *v19 = v14;
      *(v19 + 8) = v16;
      *(v19 + 16) = v18 & 1;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t KeyedEC.encode(_:forKey:)(unsigned __int8 a1, uint64_t a2)
{
  v4 = v2;
  v6 = *v2;
  v7 = v2[2];
  v8 = v6;
  PrivateDecoder.terminateContainers(_:)(*(v4[3] + 16) + 1);
  v20 = *(v8 + 80);
  v18 = v20;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
  (*(*(v18 - 8) + 16))(boxed_opaque_existential_1, a2);
  PrivateEncoder.writeKey(_:)(v19);
  result = __swift_destroy_boxed_opaque_existential_1(v19);
  if (!v3)
  {
    v11 = *(v7 + 16);
    result = REEncoderWriteUInt8();
    if (result)
    {
      v12 = specialized static REEncoder.Error.getStatus(_:)(v11);
      v14 = v13;
      v16 = v15;
      lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error();
      swift_allocError();
      *v17 = v12;
      *(v17 + 8) = v14;
      *(v17 + 16) = v16 & 1;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t KeyedEC.encode(_:forKey:)(unsigned __int16 a1, uint64_t a2)
{
  v4 = v2;
  v6 = *v2;
  v7 = v2[2];
  v8 = v6;
  PrivateDecoder.terminateContainers(_:)(*(v4[3] + 16) + 1);
  v20 = *(v8 + 80);
  v18 = v20;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
  (*(*(v18 - 8) + 16))(boxed_opaque_existential_1, a2);
  PrivateEncoder.writeKey(_:)(v19);
  result = __swift_destroy_boxed_opaque_existential_1(v19);
  if (!v3)
  {
    v11 = *(v7 + 16);
    result = REEncoderWriteUInt16();
    if (result)
    {
      v12 = specialized static REEncoder.Error.getStatus(_:)(v11);
      v14 = v13;
      v16 = v15;
      lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error();
      swift_allocError();
      *v17 = v12;
      *(v17 + 8) = v14;
      *(v17 + 16) = v16 & 1;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t KeyedEC.encode(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, const char *, uint64_t))
{
  v6 = v3;
  v9 = *v3;
  v10 = v3[2];
  v11 = v9;
  PrivateDecoder.terminateContainers(_:)(*(v6[3] + 16) + 1);
  v23 = *(v11 + 80);
  v21 = v23;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
  (*(*(v21 - 8) + 16))(boxed_opaque_existential_1, a2);
  PrivateEncoder.writeKey(_:)(v22);
  result = __swift_destroy_boxed_opaque_existential_1(v22);
  if (!v4)
  {
    v14 = *(v10 + 16);
    result = a3(v14, "", a1);
    if (result)
    {
      v15 = specialized static REEncoder.Error.getStatus(_:)(v14);
      v17 = v16;
      v19 = v18;
      lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error();
      swift_allocError();
      *v20 = v15;
      *(v20 + 8) = v17;
      *(v20 + 16) = v19 & 1;
      return swift_willThrow();
    }
  }

  return result;
}

{
  v6 = v3;
  v9 = *v3;
  v10 = v3[2];
  v11 = v9;
  PrivateDecoder.terminateContainers(_:)(*(v6[3] + 16) + 1);
  v23 = *(v11 + 80);
  v21 = v23;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
  (*(*(v21 - 8) + 16))(boxed_opaque_existential_1, a2);
  PrivateEncoder.writeKey(_:)(v22);
  result = __swift_destroy_boxed_opaque_existential_1(v22);
  if (!v4)
  {
    v14 = *(v10 + 16);
    result = a3(v14, "", a1);
    if (result)
    {
      v15 = specialized static REEncoder.Error.getStatus(_:)(v14);
      v17 = v16;
      v19 = v18;
      lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error();
      swift_allocError();
      *v20 = v15;
      *(v20 + 8) = v17;
      *(v20 + 16) = v19 & 1;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t KeyedEC.encode<A>(_:forKey:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v31 = a3;
  v25 = a1;
  v27 = *v4;
  v6 = *(v27 + 80);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - v11;
  v13 = v4[2];
  v30 = v14;
  PrivateDecoder.terminateContainers(_:)(*(*(v14 + 24) + 16) + 1);
  v26 = v7;
  v15 = *(v7 + 16);
  v28 = a2;
  v16 = v15;
  v15(v12, a2, v6);
  swift_beginAccess();
  v17 = *(v13 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v13 + 24) = v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17[2] + 1, 1, v17);
    *(v13 + 24) = v17;
  }

  v20 = v17[2];
  v19 = v17[3];
  if (v20 >= v19 >> 1)
  {
    v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v17);
    *(v13 + 24) = v17;
  }

  v16(v9, v12, v6);
  v21 = *(v27 + 88);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v20, v9, (v13 + 24), v6, v21);
  (*(v26 + 8))(v12, v6);
  *(v13 + 24) = v17;
  swift_endAccess();
  v33 = v6;
  v34 = v21;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v32);
  v16(boxed_opaque_existential_1, v28, v6);
  v23 = v29;
  PrivateEncoder.writeKey(_:)(v32);
  if (!v23)
  {
    __swift_destroy_boxed_opaque_existential_1(v32);
    v33 = type metadata accessor for PrivateEncoder();
    v34 = lazy protocol witness table accessor for type SingleValueEC and conformance SingleValueEC(&lazy protocol witness table cache variable for type PrivateEncoder and conformance PrivateEncoder, type metadata accessor for PrivateEncoder, protocol conformance descriptor for PrivateEncoder);
    v32[0] = v13;

    dispatch thunk of Encodable.encode(to:)();
  }

  __swift_destroy_boxed_opaque_existential_1(v32);
  return $defer #1 <A><A1>() in KeyedEC.encode<A>(_:forKey:)(v30);
}

uint64_t KeyedEC.nestedContainer<A>(keyedBy:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (v4 + 4);
  v7 = *v4;
  swift_beginAccess();
  outlined init with copy of [String : String]((v4 + 4), v27, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMd, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMR);
  if (v28)
  {
    outlined init with copy of __REAssetService(v27, v24);
    outlined destroy of BodyTrackingComponent?(v27, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMd, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMR);
    v8 = v25;
    v9 = v26;
    __swift_project_boxed_opaque_existential_1(v24, v25);
    (*(v9 + 8))(v8, v9);
    __swift_destroy_boxed_opaque_existential_1(v24);
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(v27, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMd, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMR);
  }

  v10 = v4[2];
  v11 = v4[3];
  PrivateDecoder.terminateContainers(_:)(*(v11 + 16) + 1);
  v12 = *(v7 + 80);
  v13 = *(v7 + 88);
  v28 = v12;
  v29 = v13;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
  v15 = *(*(v12 - 8) + 16);
  v15(boxed_opaque_existential_1, a2, v12);
  PrivateEncoder.writeKey(_:)(v27);
  __swift_destroy_boxed_opaque_existential_1(v27);
  v17 = type metadata accessor for KeyedEC(0, a3, a4, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1887600;
  *(inited + 56) = v12;
  *(inited + 64) = v13;
  v19 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
  v15(v19, a2, v12);
  v27[0] = v11;

  specialized Array.append<A>(contentsOf:)(inited);
  v20 = KeyedEC.__allocating_init(encoder:codingPath:)(v10, v27[0]);
  v28 = v17;
  v29 = &protocol witness table for KeyedEC<A>;
  v27[0] = v20;
  swift_beginAccess();

  outlined assign with take of Terminatable?(v27, v6);
  swift_endAccess();
  v27[0] = v20;
  swift_getWitnessTable(protocol conformance descriptor for KeyedEC<A>, v17);
  return KeyedEncodingContainer.init<A>(_:)();
}

uint64_t KeyedEC.nestedUnkeyedContainer(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = (v2 + 4);
  v5 = *v2;
  swift_beginAccess();
  outlined init with copy of [String : String]((v2 + 4), v24, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMd, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMR);
  if (v25)
  {
    outlined init with copy of __REAssetService(v24, v21);
    outlined destroy of BodyTrackingComponent?(v24, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMd, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMR);
    v6 = v22;
    v7 = v23;
    __swift_project_boxed_opaque_existential_1(v21, v22);
    (*(v7 + 8))(v6, v7);
    __swift_destroy_boxed_opaque_existential_1(v21);
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(v24, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMd, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMR);
  }

  v8 = v2[2];
  v9 = v2[3];
  PrivateDecoder.terminateContainers(_:)(*(v9 + 16) + 1);
  v11 = *(v5 + 88);
  v25 = *(v5 + 80);
  v10 = v25;
  v26 = v11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24);
  v13 = *(*(v10 - 8) + 16);
  v13(boxed_opaque_existential_1, a1, v10);
  PrivateEncoder.writeKey(_:)(v24);
  __swift_destroy_boxed_opaque_existential_1(v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1887600;
  *(inited + 56) = v10;
  *(inited + 64) = v11;
  v15 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
  v13(v15, a1, v10);
  v24[0] = v9;

  specialized Array.append<A>(contentsOf:)(inited);
  v16 = v24[0];
  v17 = type metadata accessor for UnkeyedEC();
  v18 = swift_allocObject();
  *(v18 + 32) = 0u;
  *(v18 + 48) = 0u;
  *(v18 + 64) = 0u;
  *(v18 + 16) = v8;
  *(v18 + 24) = v16;
  if (*(v8 + 48) == 1)
  {
  }

  else
  {

    REEncoderBeginContainer();
  }

  v25 = v17;
  v26 = &protocol witness table for UnkeyedEC;
  v24[0] = v18;
  swift_beginAccess();

  outlined assign with take of Terminatable?(v24, v4);
  swift_endAccess();
  a2[3] = v17;
  result = lazy protocol witness table accessor for type SingleValueEC and conformance SingleValueEC(&lazy protocol witness table cache variable for type UnkeyedEC and conformance UnkeyedEC, type metadata accessor for UnkeyedEC, protocol conformance descriptor for UnkeyedEC);
  a2[4] = result;
  *a2 = v18;
  return result;
}

uint64_t KeyedEC.superEncoder()@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(*v1 + 80);
  v4 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  dispatch thunk of CodingKey.init(stringValue:)();
  v7 = *(v3 - 8);
  result = (*(v7 + 48))(v6, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    KeyedEC.superEncoder(forKey:)(v6, a1);
    return (*(v7 + 8))(v6, v3);
  }

  return result;
}

uint64_t KeyedEC.superEncoder(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *v2;
  v6 = v2[3];
  v7 = *(v2[2] + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1887600;
  v9 = *(v5 + 80);
  *(inited + 56) = v9;
  *(inited + 64) = *(v5 + 88);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_1, a1, v9);

  specialized Array.append<A>(contentsOf:)(inited);
  v11 = type metadata accessor for PrivateEncoder();
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E7CC0];
  *(v12 + 32) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs17CodingUserInfoKeyV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v12 + 40) = v13;
  *(v12 + 48) = 0;
  *(v12 + 16) = v7;
  *(v12 + 24) = v6;
  a2[3] = v11;
  result = lazy protocol witness table accessor for type SingleValueEC and conformance SingleValueEC(&lazy protocol witness table cache variable for type PrivateEncoder and conformance PrivateEncoder, type metadata accessor for PrivateEncoder, protocol conformance descriptor for PrivateEncoder);
  a2[4] = result;
  *a2 = v12;
  return result;
}

uint64_t KeyedEC.deinit()
{

  outlined destroy of BodyTrackingComponent?(v0 + 32, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMd, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMR);
  return v0;
}

uint64_t KeyedEC.__deallocating_deinit()
{
  KeyedEC.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encode(_:forKey:) in conformance KeyedEC<A>(char a1, uint64_t a2)
{
  return KeyedEC.encode(_:forKey:)(a1, a2);
}

{
  return KeyedEC.encode(_:forKey:)(a1, a2);
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encode(_:forKey:) in conformance KeyedEC<A>(uint64_t a1, uint64_t a2)
{
  return KeyedEC.encode(_:forKey:)(a1, a2);
}

{
  return KeyedEC.encode(_:forKey:)(a1, a2);
}

{
  return sub_1C136040C(a1, a2);
}

{
  return sub_1C1360430(a1, a2);
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encode(_:forKey:) in conformance KeyedEC<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return protocol witness for KeyedEncodingContainerProtocol.encode(_:forKey:) in conformance KeyedEC<A>(a1, a2, a3, a4, a5, MEMORY[0x1E69E71F0]);
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encode(_:forKey:) in conformance KeyedEC<A>(a1, a2, a3, a4, a5, MEMORY[0x1E69E71F8]);
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance KeyedEC<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for KeyedEC(0, *(a3 + 80), *(a3 + 88), a4);
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance KeyedEC<A>(a1, a2, a3, a4, MEMORY[0x1E69E71A0]);
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance KeyedEC<A>(a1, a2, a3, a4, MEMORY[0x1E69E71A8]);
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance KeyedEC<A>(a1, a2, a3, a4, MEMORY[0x1E69E71C0]);
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance KeyedEC<A>(a1, a2, a3, a4, MEMORY[0x1E69E71D0]);
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance KeyedEC<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for KeyedEC(0, *(a4 + 80), *(a4 + 88), a4);
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance KeyedEC<A>(a1, a2, a3, a4, a5, MEMORY[0x1E69E7180]);
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance KeyedEC<A>(a1, a2, a3, a4, a5, MEMORY[0x1E69E7190]);
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance KeyedEC<A>(a1, a2, a3, a4, a5, MEMORY[0x1E69E71B8]);
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance KeyedEC<A>(a1, a2, a3, a4, a5, MEMORY[0x1E69E7198]);
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance KeyedEC<A>(a1, a2, a3, a4, a5, MEMORY[0x1E69E71E0]);
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance KeyedEC<A>(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance KeyedEC<A>(a1, a2, a3, a4, MEMORY[0x1E69E7188]);
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance KeyedEC<A>(a1, a2, a3, a4, MEMORY[0x1E69E71B0]);
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance KeyedEC<A>(a1, a2, a3, a4, MEMORY[0x1E69E71D8]);
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance KeyedEC<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance KeyedEC<A>(a1, a2, a3, a4, a5, a6, MEMORY[0x1E69E71C8]);
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance KeyedEC<A>(a1, a2, a3, a4, a5, a6, MEMORY[0x1E69E71E8]);
}

uint64_t KeyedEC.terminate()(uint64_t (*a1)(void))
{
  swift_beginAccess();
  outlined init with copy of [String : String](v1 + 32, v10, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMd, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMR);
  if (v11)
  {
    outlined init with copy of __REAssetService(v10, v7);
    outlined destroy of BodyTrackingComponent?(v10, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMd, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMR);
    v3 = v8;
    v4 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    (*(v4 + 8))(v3, v4);
    result = __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    result = outlined destroy of BodyTrackingComponent?(v10, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMd, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMR);
  }

  v6 = *(v1 + 16);
  if ((*(v6 + 48) & 1) == 0)
  {
    return a1(*(v6 + 16));
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance UnkeyedEC.IndexedCodingKey@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  lazy protocol witness table accessor for type Int and conformance Int();
  result = BinaryInteger.description.getter();
  *a2 = a1;
  a2[1] = 0;
  a2[2] = result;
  a2[3] = v5;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance UnkeyedEC.IndexedCodingKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UnkeyedEC.IndexedCodingKey and conformance UnkeyedEC.IndexedCodingKey();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance UnkeyedEC.IndexedCodingKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UnkeyedEC.IndexedCodingKey and conformance UnkeyedEC.IndexedCodingKey();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> UnkeyedEC.encodeNil()()
{
  v2 = v0 + 16;
  v1 = *(v0 + 16);
  PrivateDecoder.terminateContainers(_:)(*(*(v2 + 8) + 16) + 1);
  v3 = *(v1 + 16);
  if (REEncoderWriteNil())
  {
    v4 = specialized static REEncoder.Error.getStatus(_:)(v3);
    v6 = v5;
    v8 = v7;
    lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error();
    swift_allocError();
    *v9 = v4;
    *(v9 + 8) = v6;
    *(v9 + 16) = v8 & 1;
    swift_willThrow();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> UnkeyedEC.encode(_:)(Swift::Bool a1)
{
  v3 = v1 + 16;
  v2 = *(v1 + 16);
  PrivateDecoder.terminateContainers(_:)(*(*(v3 + 8) + 16) + 1);
  v4 = *(v2 + 16);
  if (REEncoderWriteBool())
  {
    v5 = specialized static REEncoder.Error.getStatus(_:)(v4);
    v7 = v6;
    v9 = v8;
    lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error();
    swift_allocError();
    *v10 = v5;
    *(v10 + 8) = v7;
    *(v10 + 16) = v9 & 1;
    swift_willThrow();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> UnkeyedEC.encode(_:)(Swift::Double a1)
{
  v3 = v1 + 16;
  v2 = *(v1 + 16);
  PrivateDecoder.terminateContainers(_:)(*(*(v3 + 8) + 16) + 1);
  v4 = *(v2 + 16);
  if (REEncoderWriteDouble())
  {
    v5 = specialized static REEncoder.Error.getStatus(_:)(v4);
    v7 = v6;
    v9 = v8;
    lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error();
    swift_allocError();
    *v10 = v5;
    *(v10 + 8) = v7;
    *(v10 + 16) = v9 & 1;
    swift_willThrow();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> UnkeyedEC.encode(_:)(Swift::Float a1)
{
  v3 = v1 + 16;
  v2 = *(v1 + 16);
  PrivateDecoder.terminateContainers(_:)(*(*(v3 + 8) + 16) + 1);
  v4 = *(v2 + 16);
  if (REEncoderWriteFloat())
  {
    v5 = specialized static REEncoder.Error.getStatus(_:)(v4);
    v7 = v6;
    v9 = v8;
    lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error();
    swift_allocError();
    *v10 = v5;
    *(v10 + 8) = v7;
    *(v10 + 16) = v9 & 1;
    swift_willThrow();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> UnkeyedEC.encode(_:)(Swift::Int8 a1)
{
  v3 = v1 + 16;
  v2 = *(v1 + 16);
  PrivateDecoder.terminateContainers(_:)(*(*(v3 + 8) + 16) + 1);
  v4 = *(v2 + 16);
  if (REEncoderWriteInt8())
  {
    v5 = specialized static REEncoder.Error.getStatus(_:)(v4);
    v7 = v6;
    v9 = v8;
    lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error();
    swift_allocError();
    *v10 = v5;
    *(v10 + 8) = v7;
    *(v10 + 16) = v9 & 1;
    swift_willThrow();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> UnkeyedEC.encode(_:)(Swift::Int16 a1)
{
  v3 = v1 + 16;
  v2 = *(v1 + 16);
  PrivateDecoder.terminateContainers(_:)(*(*(v3 + 8) + 16) + 1);
  v4 = *(v2 + 16);
  if (REEncoderWriteInt16())
  {
    v5 = specialized static REEncoder.Error.getStatus(_:)(v4);
    v7 = v6;
    v9 = v8;
    lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error();
    swift_allocError();
    *v10 = v5;
    *(v10 + 8) = v7;
    *(v10 + 16) = v9 & 1;
    swift_willThrow();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> UnkeyedEC.encode(_:)(Swift::UInt8 a1)
{
  v3 = v1 + 16;
  v2 = *(v1 + 16);
  PrivateDecoder.terminateContainers(_:)(*(*(v3 + 8) + 16) + 1);
  v4 = *(v2 + 16);
  if (REEncoderWriteUInt8())
  {
    v5 = specialized static REEncoder.Error.getStatus(_:)(v4);
    v7 = v6;
    v9 = v8;
    lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error();
    swift_allocError();
    *v10 = v5;
    *(v10 + 8) = v7;
    *(v10 + 16) = v9 & 1;
    swift_willThrow();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> UnkeyedEC.encode(_:)(Swift::UInt16 a1)
{
  v3 = v1 + 16;
  v2 = *(v1 + 16);
  PrivateDecoder.terminateContainers(_:)(*(*(v3 + 8) + 16) + 1);
  v4 = *(v2 + 16);
  if (REEncoderWriteUInt16())
  {
    v5 = specialized static REEncoder.Error.getStatus(_:)(v4);
    v7 = v6;
    v9 = v8;
    lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error();
    swift_allocError();
    *v10 = v5;
    *(v10 + 8) = v7;
    *(v10 + 16) = v9 & 1;
    swift_willThrow();
  }
}

uint64_t UnkeyedEC.encode(_:)(uint64_t a1, uint64_t (*a2)(uint64_t, const char *, uint64_t))
{
  v6 = v2 + 16;
  v5 = *(v2 + 16);
  PrivateDecoder.terminateContainers(_:)(*(*(v6 + 8) + 16) + 1);
  v7 = *(v5 + 16);
  result = a2(v7, "", a1);
  if (result)
  {
    v9 = specialized static REEncoder.Error.getStatus(_:)(v7);
    v11 = v10;
    v13 = v12;
    lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error();
    swift_allocError();
    *v14 = v9;
    *(v14 + 8) = v11;
    *(v14 + 16) = v13 & 1;
    return swift_willThrow();
  }

  return result;
}

{
  v6 = v2 + 16;
  v5 = *(v2 + 16);
  PrivateDecoder.terminateContainers(_:)(*(*(v6 + 8) + 16) + 1);
  v7 = *(v5 + 16);
  result = a2(v7, "", a1);
  if (result)
  {
    v9 = specialized static REEncoder.Error.getStatus(_:)(v7);
    v11 = v10;
    v13 = v12;
    lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error();
    swift_allocError();
    *v14 = v9;
    *(v14 + 8) = v11;
    *(v14 + 16) = v13 & 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t UnkeyedEC.encode<A>(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v7 = v3[2];
  PrivateDecoder.terminateContainers(_:)(*(v3[3] + 16) + 1);
  v8 = v3[9];
  *&v20 = v8;
  lazy protocol witness table accessor for type Int and conformance Int();
  v9 = &v20;
  v10 = BinaryInteger.description.getter();
  v12 = *(v5 + 72);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    v9 = v10;
    v4 = v11;
    *(v5 + 72) = v14;
    swift_beginAccess();
    a1 = *(v7 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v7 + 24) = a1;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_3;
    }
  }

  a1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2] + 1, 1, a1);
  *(v7 + 24) = a1;
LABEL_3:
  v17 = a1[2];
  v16 = a1[3];
  if (v17 >= v16 >> 1)
  {
    a1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, a1);
  }

  v21 = &unk_1F40F4468;
  v22 = lazy protocol witness table accessor for type UnkeyedEC.IndexedCodingKey and conformance UnkeyedEC.IndexedCodingKey();
  v18 = swift_allocObject();
  *&v20 = v18;
  *(v18 + 16) = v8;
  *(v18 + 24) = 0;
  *(v18 + 32) = v9;
  *(v18 + 40) = v4;
  a1[2] = v17 + 1;
  outlined init with take of ForceEffectBase(&v20, &a1[5 * v17 + 4]);
  *(v7 + 24) = a1;
  swift_endAccess();
  v21 = type metadata accessor for PrivateEncoder();
  v22 = lazy protocol witness table accessor for type SingleValueEC and conformance SingleValueEC(&lazy protocol witness table cache variable for type PrivateEncoder and conformance PrivateEncoder, type metadata accessor for PrivateEncoder, protocol conformance descriptor for PrivateEncoder);
  *&v20 = v7;

  dispatch thunk of Encodable.encode(to:)();
  __swift_destroy_boxed_opaque_existential_1(&v20);
  return $defer #1 <A><A1>() in KeyedEC.encode<A>(_:forKey:)(v5);
}

uint64_t UnkeyedEC.encode<A>(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v24[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v24[-v13];
  (*(v7 + 16))(v9, a1, a2, v12);
  dispatch thunk of Sequence.makeIterator()();
  swift_getAssociatedConformanceWitness();
  while (1)
  {
    dispatch thunk of IteratorProtocol.next()();
    if (v24[31] == 2)
    {
      break;
    }

    v15 = *(v4 + 16);
    PrivateDecoder.terminateContainers(_:)(*(*(v4 + 24) + 16) + 1);
    v16 = *(v15 + 16);
    if (REEncoderWriteBool())
    {
      v17 = specialized static REEncoder.Error.getStatus(_:)(v16);
      v19 = v18;
      v21 = v20;
      lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error();
      swift_allocError();
      *v22 = v17;
      *(v22 + 8) = v19;
      *(v22 + 16) = v21 & 1;
      swift_willThrow();
      return (*(v11 + 8))(v14, AssociatedTypeWitness);
    }
  }

  return (*(v11 + 8))(v14, AssociatedTypeWitness);
}

{
  v4 = v3;
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v24[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v24[-v13];
  (*(v7 + 16))(v9, a1, a2, v12);
  dispatch thunk of Sequence.makeIterator()();
  swift_getAssociatedConformanceWitness();
  while (1)
  {
    dispatch thunk of IteratorProtocol.next()();
    if (v24[24])
    {
      break;
    }

    v15 = *(v4 + 16);
    PrivateDecoder.terminateContainers(_:)(*(*(v4 + 24) + 16) + 1);
    v16 = *(v15 + 16);
    if (REEncoderWriteDouble())
    {
      v17 = specialized static REEncoder.Error.getStatus(_:)(v16);
      v19 = v18;
      v21 = v20;
      lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error();
      swift_allocError();
      *v22 = v17;
      *(v22 + 8) = v19;
      *(v22 + 16) = v21 & 1;
      swift_willThrow();
      return (*(v11 + 8))(v14, AssociatedTypeWitness);
    }
  }

  return (*(v11 + 8))(v14, AssociatedTypeWitness);
}

{
  v4 = v3;
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v24 - v13;
  (*(v7 + 16))(v9, a1, a2, v12);
  dispatch thunk of Sequence.makeIterator()();
  swift_getAssociatedConformanceWitness();
  while (1)
  {
    dispatch thunk of IteratorProtocol.next()();
    if (v25)
    {
      break;
    }

    v15 = *(v4 + 16);
    PrivateDecoder.terminateContainers(_:)(*(*(v4 + 24) + 16) + 1);
    v16 = *(v15 + 16);
    if (REEncoderWriteFloat())
    {
      v17 = specialized static REEncoder.Error.getStatus(_:)(v16);
      v19 = v18;
      v21 = v20;
      lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error();
      swift_allocError();
      *v22 = v17;
      *(v22 + 8) = v19;
      *(v22 + 16) = v21 & 1;
      swift_willThrow();
      return (*(v11 + 8))(v14, AssociatedTypeWitness);
    }
  }

  return (*(v11 + 8))(v14, AssociatedTypeWitness);
}

{
  return UnkeyedEC.encode<A>(contentsOf:)(a1, a2, a3, MEMORY[0x1E69988E0]);
}

{
  v4 = v3;
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v24[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v24[-v13];
  (*(v7 + 16))(v9, a1, a2, v12);
  dispatch thunk of Sequence.makeIterator()();
  swift_getAssociatedConformanceWitness();
  while (1)
  {
    dispatch thunk of IteratorProtocol.next()();
    if (v24[31])
    {
      break;
    }

    v15 = *(v4 + 16);
    PrivateDecoder.terminateContainers(_:)(*(*(v4 + 24) + 16) + 1);
    v16 = *(v15 + 16);
    if (REEncoderWriteInt8())
    {
      v17 = specialized static REEncoder.Error.getStatus(_:)(v16);
      v19 = v18;
      v21 = v20;
      lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error();
      swift_allocError();
      *v22 = v17;
      *(v22 + 8) = v19;
      *(v22 + 16) = v21 & 1;
      swift_willThrow();
      return (*(v11 + 8))(v14, AssociatedTypeWitness);
    }
  }

  return (*(v11 + 8))(v14, AssociatedTypeWitness);
}

{
  v4 = v3;
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v24[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v24[-v13];
  (*(v7 + 16))(v9, a1, a2, v12);
  dispatch thunk of Sequence.makeIterator()();
  swift_getAssociatedConformanceWitness();
  while (1)
  {
    dispatch thunk of IteratorProtocol.next()();
    if (v24[30])
    {
      break;
    }

    v15 = *(v4 + 16);
    PrivateDecoder.terminateContainers(_:)(*(*(v4 + 24) + 16) + 1);
    v16 = *(v15 + 16);
    if (REEncoderWriteInt16())
    {
      v17 = specialized static REEncoder.Error.getStatus(_:)(v16);
      v19 = v18;
      v21 = v20;
      lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error();
      swift_allocError();
      *v22 = v17;
      *(v22 + 8) = v19;
      *(v22 + 16) = v21 & 1;
      swift_willThrow();
      return (*(v11 + 8))(v14, AssociatedTypeWitness);
    }
  }

  return (*(v11 + 8))(v14, AssociatedTypeWitness);
}

{
  return UnkeyedEC.encode<A>(contentsOf:)(a1, a2, a3, MEMORY[0x1E69988D8]);
}

{
  return UnkeyedEC.encode<A>(contentsOf:)(a1, a2, a3, MEMORY[0x1E69988F0]);
}

{
  v4 = v3;
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v24[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v24[-v13];
  (*(v7 + 16))(v9, a1, a2, v12);
  dispatch thunk of Sequence.makeIterator()();
  swift_getAssociatedConformanceWitness();
  while (1)
  {
    dispatch thunk of IteratorProtocol.next()();
    if (v24[31])
    {
      break;
    }

    v15 = *(v4 + 16);
    PrivateDecoder.terminateContainers(_:)(*(*(v4 + 24) + 16) + 1);
    v16 = *(v15 + 16);
    if (REEncoderWriteUInt8())
    {
      v17 = specialized static REEncoder.Error.getStatus(_:)(v16);
      v19 = v18;
      v21 = v20;
      lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error();
      swift_allocError();
      *v22 = v17;
      *(v22 + 8) = v19;
      *(v22 + 16) = v21 & 1;
      swift_willThrow();
      return (*(v11 + 8))(v14, AssociatedTypeWitness);
    }
  }

  return (*(v11 + 8))(v14, AssociatedTypeWitness);
}

{
  v4 = v3;
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v24[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v24[-v13];
  (*(v7 + 16))(v9, a1, a2, v12);
  dispatch thunk of Sequence.makeIterator()();
  swift_getAssociatedConformanceWitness();
  while (1)
  {
    dispatch thunk of IteratorProtocol.next()();
    if (v24[30])
    {
      break;
    }

    v15 = *(v4 + 16);
    PrivateDecoder.terminateContainers(_:)(*(*(v4 + 24) + 16) + 1);
    v16 = *(v15 + 16);
    if (REEncoderWriteUInt16())
    {
      v17 = specialized static REEncoder.Error.getStatus(_:)(v16);
      v19 = v18;
      v21 = v20;
      lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error();
      swift_allocError();
      *v22 = v17;
      *(v22 + 8) = v19;
      *(v22 + 16) = v21 & 1;
      swift_willThrow();
      return (*(v11 + 8))(v14, AssociatedTypeWitness);
    }
  }

  return (*(v11 + 8))(v14, AssociatedTypeWitness);
}

{
  return UnkeyedEC.encode<A>(contentsOf:)(a1, a2, a3, MEMORY[0x1E69988E8]);
}

{
  return UnkeyedEC.encode<A>(contentsOf:)(a1, a2, a3);
}

{
  return UnkeyedEC.encode<A>(contentsOf:)(a1, a2, a3);
}

double UnkeyedEC.encode<A>(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v26 = *(AssociatedTypeWitness - 8);
  v11 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v24 - v12;
  (*(v7 + 16))(v9, a1, a2, v11);
  dispatch thunk of Sequence.makeIterator()();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of IteratorProtocol.next()();
  if (v25)
  {
    while (1)
    {
      v14 = *(v4 + 16);
      PrivateDecoder.terminateContainers(_:)(*(*(v4 + 24) + 16) + 1);
      v15 = *(v14 + 16);
      String.utf8CString.getter();
      v16 = REEncoderWriteString();

      if (v16)
      {
        break;
      }

      dispatch thunk of IteratorProtocol.next()();
      if (!v25)
      {
        goto LABEL_4;
      }
    }

    v18 = specialized static REEncoder.Error.getStatus(_:)(v15);
    v20 = v19;
    v22 = v21;
    lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error();
    swift_allocError();
    *v23 = v18;
    *(v23 + 8) = v20;
    *(v23 + 16) = v22 & 1;
    swift_willThrow();
    (*(v26 + 8))(v13, AssociatedTypeWitness);
  }

  else
  {
LABEL_4:
    (*(v26 + 8))(v13, AssociatedTypeWitness);
  }

  return result;
}

uint64_t UnkeyedEC.encode<A>(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int (*a4)(uint64_t, const char *, uint64_t))
{
  v6 = v4;
  v9 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v27 = *(AssociatedTypeWitness - 8);
  v13 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = &v26 - v14;
  (*(v9 + 16))(v11, a1, a2, v13);
  dispatch thunk of Sequence.makeIterator()();
  swift_getAssociatedConformanceWitness();
  while (1)
  {
    dispatch thunk of IteratorProtocol.next()();
    if (v29)
    {
      break;
    }

    v16 = v28;
    v17 = *(v6 + 16);
    PrivateDecoder.terminateContainers(_:)(*(*(v6 + 24) + 16) + 1);
    v18 = *(v17 + 16);
    if (a4(v18, "", v16))
    {
      v19 = specialized static REEncoder.Error.getStatus(_:)(v18);
      v21 = v20;
      v23 = v22;
      lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error();
      swift_allocError();
      *v24 = v19;
      *(v24 + 8) = v21;
      *(v24 + 16) = v23 & 1;
      swift_willThrow();
      return (*(v27 + 8))(v15, AssociatedTypeWitness);
    }
  }

  return (*(v27 + 8))(v15, AssociatedTypeWitness);
}

{
  v6 = v4;
  v9 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v28 = *(AssociatedTypeWitness - 8);
  v13 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = v26 - v14;
  (*(v9 + 16))(v11, a1, a2, v13);
  dispatch thunk of Sequence.makeIterator()();
  swift_getAssociatedConformanceWitness();
  while (1)
  {
    dispatch thunk of IteratorProtocol.next()();
    if (v27)
    {
      break;
    }

    v16 = v26[2];
    v17 = *(v6 + 16);
    PrivateDecoder.terminateContainers(_:)(*(*(v6 + 24) + 16) + 1);
    v18 = *(v17 + 16);
    if (a4(v18, "", v16))
    {
      v19 = specialized static REEncoder.Error.getStatus(_:)(v18);
      v21 = v20;
      v23 = v22;
      lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error();
      swift_allocError();
      *v24 = v19;
      *(v24 + 8) = v21;
      *(v24 + 16) = v23 & 1;
      swift_willThrow();
      return (*(v28 + 8))(v15, AssociatedTypeWitness);
    }
  }

  return (*(v28 + 8))(v15, AssociatedTypeWitness);
}

uint64_t UnkeyedEC.encode<A>(contentsOf:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v30 = a4;
  v32 = a1;
  v31 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v26 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = (&v25 - v7);
  v9 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v25 - v10;
  v12 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v27 = *(v16 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v25 - v18;
  (*(v12 + 16))(v15, v32, a2, v17);
  dispatch thunk of Sequence.makeIterator()();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v31 = v19;
  v21 = v26;
  v32 = v16;
  v29 = AssociatedConformanceWitness;
  dispatch thunk of IteratorProtocol.next()();
  v28 = *(v21 + 48);
  if (v28(v11, 1, AssociatedTypeWitness) != 1)
  {
    v22 = *(v21 + 32);
    v23 = (v21 + 8);
    while (1)
    {
      v22(v8, v11, AssociatedTypeWitness);
      UnkeyedEC.encode<A>(_:)(v8, AssociatedTypeWitness, v30);
      if (v4)
      {
        break;
      }

      (*v23)(v8, AssociatedTypeWitness);
      dispatch thunk of IteratorProtocol.next()();
      if (v28(v11, 1, AssociatedTypeWitness) == 1)
      {
        return (*(v27 + 8))(v31, v32);
      }
    }

    (*v23)(v8, AssociatedTypeWitness);
  }

  return (*(v27 + 8))(v31, v32);
}

uint64_t UnkeyedEC.nestedContainer<A>(keyedBy:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  outlined init with copy of [String : String]((v3 + 4), v26, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMd, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMR);
  if (v27)
  {
    outlined init with copy of __REAssetService(v26, v23);
    outlined destroy of BodyTrackingComponent?(v26, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMd, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMR);
    v7 = v24;
    v8 = v25;
    __swift_project_boxed_opaque_existential_1(v23, v24);
    (*(v8 + 8))(v7, v8);
    __swift_destroy_boxed_opaque_existential_1(v23);
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(v26, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMd, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMR);
  }

  v9 = v3[2];
  v10 = v3[3];
  PrivateDecoder.terminateContainers(_:)(*(v10 + 16) + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1887600;
  v12 = v3[9];
  v26[0] = v12;
  lazy protocol witness table accessor for type Int and conformance Int();

  result = BinaryInteger.description.getter();
  v16 = v3[9];
  v17 = v16 + 1;
  if (__OFADD__(v16, 1))
  {
    __break(1u);
  }

  else
  {
    v18 = result;
    v19 = v14;
    v20 = type metadata accessor for KeyedEC(0, a2, a3, v15);
    v4[9] = v17;
    *(inited + 56) = &unk_1F40F4468;
    *(inited + 64) = lazy protocol witness table accessor for type UnkeyedEC.IndexedCodingKey and conformance UnkeyedEC.IndexedCodingKey();
    v21 = swift_allocObject();
    *(inited + 32) = v21;
    *(v21 + 16) = v12;
    *(v21 + 24) = 0;
    *(v21 + 32) = v18;
    *(v21 + 40) = v19;
    v26[0] = v10;
    specialized Array.append<A>(contentsOf:)(inited);
    v22 = KeyedEC.__allocating_init(encoder:codingPath:)(v9, v26[0]);
    v27 = v20;
    v28 = &protocol witness table for KeyedEC<A>;
    v26[0] = v22;
    swift_beginAccess();

    outlined assign with take of Terminatable?(v26, (v4 + 4));
    swift_endAccess();
    v26[0] = v22;
    swift_getWitnessTable(protocol conformance descriptor for KeyedEC<A>, v20);
    return KeyedEncodingContainer.init<A>(_:)();
  }

  return result;
}

uint64_t UnkeyedEC.nestedUnkeyedContainer()@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  swift_beginAccess();
  outlined init with copy of [String : String]((v1 + 4), v24, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMd, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMR);
  if (v25)
  {
    outlined init with copy of __REAssetService(v24, v21);
    outlined destroy of BodyTrackingComponent?(v24, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMd, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMR);
    v4 = v22;
    v5 = v23;
    __swift_project_boxed_opaque_existential_1(v21, v22);
    (*(v5 + 8))(v4, v5);
    __swift_destroy_boxed_opaque_existential_1(v21);
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(v24, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMd, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMR);
  }

  v6 = v1[2];
  v7 = v1[3];
  PrivateDecoder.terminateContainers(_:)(*(v7 + 16) + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1887600;
  v9 = v1[9];
  v24[0] = v9;
  lazy protocol witness table accessor for type Int and conformance Int();

  result = BinaryInteger.description.getter();
  v12 = v1[9];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    v15 = result;
    v16 = v11;
    v2[9] = v14;
    *(inited + 56) = &unk_1F40F4468;
    *(inited + 64) = lazy protocol witness table accessor for type UnkeyedEC.IndexedCodingKey and conformance UnkeyedEC.IndexedCodingKey();
    v17 = swift_allocObject();
    *(inited + 32) = v17;
    *(v17 + 16) = v9;
    *(v17 + 24) = 0;
    *(v17 + 32) = v15;
    *(v17 + 40) = v16;
    v24[0] = v7;
    specialized Array.append<A>(contentsOf:)(inited);
    v18 = v24[0];
    v19 = type metadata accessor for UnkeyedEC();
    v20 = swift_allocObject();
    *(v20 + 32) = 0u;
    *(v20 + 48) = 0u;
    *(v20 + 64) = 0u;
    *(v20 + 16) = v6;
    *(v20 + 24) = v18;
    if (*(v6 + 48) == 1)
    {
    }

    else
    {

      REEncoderBeginContainer();
    }

    v25 = v19;
    v26 = &protocol witness table for UnkeyedEC;
    v24[0] = v20;
    swift_beginAccess();

    outlined assign with take of Terminatable?(v24, (v2 + 4));
    swift_endAccess();
    a1[3] = v19;
    result = lazy protocol witness table accessor for type SingleValueEC and conformance SingleValueEC(&lazy protocol witness table cache variable for type UnkeyedEC and conformance UnkeyedEC, type metadata accessor for UnkeyedEC, protocol conformance descriptor for UnkeyedEC);
    a1[4] = result;
    *a1 = v20;
  }

  return result;
}

uint64_t UnkeyedEC.superEncoder()@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = v1[3];
  v5 = *(v1[2] + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1887600;
  v7 = v1[9];
  lazy protocol witness table accessor for type Int and conformance Int();

  result = BinaryInteger.description.getter();
  v10 = v1[9];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    v13 = result;
    v14 = v9;
    v2[9] = v12;
    *(inited + 56) = &unk_1F40F4468;
    *(inited + 64) = lazy protocol witness table accessor for type UnkeyedEC.IndexedCodingKey and conformance UnkeyedEC.IndexedCodingKey();
    v15 = swift_allocObject();
    *(inited + 32) = v15;
    *(v15 + 16) = v7;
    *(v15 + 24) = 0;
    *(v15 + 32) = v13;
    *(v15 + 40) = v14;
    specialized Array.append<A>(contentsOf:)(inited);
    v16 = v4;
    v17 = type metadata accessor for PrivateEncoder();
    v18 = swift_allocObject();
    v19 = MEMORY[0x1E69E7CC0];
    *(v18 + 32) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs17CodingUserInfoKeyV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    *(v18 + 40) = v19;
    *(v18 + 48) = 0;
    *(v18 + 16) = v5;
    *(v18 + 24) = v16;
    a1[3] = v17;
    result = lazy protocol witness table accessor for type SingleValueEC and conformance SingleValueEC(&lazy protocol witness table cache variable for type PrivateEncoder and conformance PrivateEncoder, type metadata accessor for PrivateEncoder, protocol conformance descriptor for PrivateEncoder);
    a1[4] = result;
    *a1 = v18;
  }

  return result;
}

uint64_t protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance UnkeyedEC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  PrivateDecoder.terminateContainers(_:)(*(*(*v2 + 24) + 16) + 1);
  v4 = *(*(v3 + 16) + 16);
  String.utf8CString.getter();
  v5 = REEncoderWriteString();

  if (v5)
  {
    v7 = specialized static REEncoder.Error.getStatus(_:)(v4);
    v9 = v8;
    v11 = v10;
    lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error();
    swift_allocError();
    *v12 = v7;
    *(v12 + 8) = v9;
    *(v12 + 16) = v11 & 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance UnkeyedEC()
{
  return UnkeyedEncodingContainer.encode(_:)();
}

{
  return UnkeyedEncodingContainer.encode(_:)();
}

uint64_t protocol witness for UnkeyedEncodingContainer.encode<A>(contentsOf:) in conformance UnkeyedEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return UnkeyedEC.encode<A>(contentsOf:)(a1, a2, a3);
}

{
  return UnkeyedEC.encode<A>(contentsOf:)(a1, a2, a3);
}

{
  return UnkeyedEC.encode<A>(contentsOf:)(a1, a2, a3);
}

{
  return UnkeyedEC.encode<A>(contentsOf:)(a1, a2, a3);
}

{
  return UnkeyedEC.encode<A>(contentsOf:)(a1, a2, a3);
}

{
  return UnkeyedEC.encode<A>(contentsOf:)(a1, a2, a3);
}

{
  return UnkeyedEC.encode<A>(contentsOf:)(a1, a2, a3);
}

{
  return UnkeyedEC.encode<A>(contentsOf:)(a1, a2, a3);
}

{
  return UnkeyedEC.encode<A>(contentsOf:)(a1, a2, a3);
}

{
  return sub_1C13604C0(a1, a2, a3);
}

{
  return sub_1C13604E4(a1, a2, a3);
}

uint64_t protocol witness for UnkeyedEncodingContainer.encode<A>(contentsOf:) in conformance UnkeyedEC(uint64_t a1, uint64_t a2, char *a3)
{
  return UnkeyedEC.encode<A>(contentsOf:)(a1, a2, a3, MEMORY[0x1E69E7578]);
}

{
  return UnkeyedEC.encode<A>(contentsOf:)(a1, a2, a3, MEMORY[0x1E69E77C0]);
}

uint64_t SingleValueEC.encode<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v6[3] = type metadata accessor for PrivateEncoder();
  v6[4] = lazy protocol witness table accessor for type SingleValueEC and conformance SingleValueEC(&lazy protocol witness table cache variable for type PrivateEncoder and conformance PrivateEncoder, type metadata accessor for PrivateEncoder, protocol conformance descriptor for PrivateEncoder);
  v6[0] = v4;

  dispatch thunk of Encodable.encode(to:)();
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t protocol witness for SingleValueEncodingContainer.encodeNil() in conformance SingleValueEC()
{
  v1 = *(*(*v0 + 16) + 16);
  result = REEncoderWriteNil();
  if (result)
  {
    v3 = specialized static REEncoder.Error.getStatus(_:)(v1);
    v5 = v4;
    v7 = v6;
    lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error();
    swift_allocError();
    *v8 = v3;
    *(v8 + 8) = v5;
    *(v8 + 16) = v7 & 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t protocol witness for SingleValueEncodingContainer.encode(_:) in conformance SingleValueEC(char a1)
{
  v2 = *(*(*v1 + 16) + 16);
  result = REEncoderWriteBool();
  if (result)
  {
    v4 = specialized static REEncoder.Error.getStatus(_:)(v2);
    v6 = v5;
    v8 = v7;
    lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error();
    swift_allocError();
    *v9 = v4;
    *(v9 + 8) = v6;
    *(v9 + 16) = v8 & 1;
    return swift_willThrow();
  }

  return result;
}

{
  v2 = *(*(*v1 + 16) + 16);
  result = REEncoderWriteInt8();
  if (result)
  {
    v4 = specialized static REEncoder.Error.getStatus(_:)(v2);
    v6 = v5;
    v8 = v7;
    lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error();
    swift_allocError();
    *v9 = v4;
    *(v9 + 8) = v6;
    *(v9 + 16) = v8 & 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t protocol witness for SingleValueEncodingContainer.encode(_:) in conformance SingleValueEC(uint64_t a1, uint64_t a2)
{
  v3 = *(*(*v2 + 16) + 16);
  String.utf8CString.getter();
  v4 = REEncoderWriteString();

  if (v4)
  {
    v6 = specialized static REEncoder.Error.getStatus(_:)(v3);
    v8 = v7;
    v10 = v9;
    lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error();
    swift_allocError();
    *v11 = v6;
    *(v11 + 8) = v8;
    *(v11 + 16) = v10 & 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t protocol witness for SingleValueEncodingContainer.encode(_:) in conformance SingleValueEC(double a1)
{
  v2 = *(*(*v1 + 16) + 16);
  result = REEncoderWriteDouble();
  if (result)
  {
    v4 = specialized static REEncoder.Error.getStatus(_:)(v2);
    v6 = v5;
    v8 = v7;
    lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error();
    swift_allocError();
    *v9 = v4;
    *(v9 + 8) = v6;
    *(v9 + 16) = v8 & 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t protocol witness for SingleValueEncodingContainer.encode(_:) in conformance SingleValueEC(float a1)
{
  v2 = *(*(*v1 + 16) + 16);
  result = REEncoderWriteFloat();
  if (result)
  {
    v4 = specialized static REEncoder.Error.getStatus(_:)(v2);
    v6 = v5;
    v8 = v7;
    lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error();
    swift_allocError();
    *v9 = v4;
    *(v9 + 8) = v6;
    *(v9 + 16) = v8 & 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t protocol witness for SingleValueEncodingContainer.encode(_:) in conformance SingleValueEC(__int16 a1)
{
  v2 = *(*(*v1 + 16) + 16);
  result = REEncoderWriteInt16();
  if (result)
  {
    v4 = specialized static REEncoder.Error.getStatus(_:)(v2);
    v6 = v5;
    v8 = v7;
    lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error();
    swift_allocError();
    *v9 = v4;
    *(v9 + 8) = v6;
    *(v9 + 16) = v8 & 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t protocol witness for SingleValueEncodingContainer.encode(_:) in conformance SingleValueEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return protocol witness for SingleValueEncodingContainer.encode(_:) in conformance SingleValueEC(a1, a2, a3, MEMORY[0x1E69988D8]);
}

{
  return protocol witness for SingleValueEncodingContainer.encode(_:) in conformance SingleValueEC(a1, a2, a3, MEMORY[0x1E69988E8]);
}

{
  return sub_1C1360508(a1, a2, a3);
}

{
  return sub_1C1360534(a1, a2, a3);
}

uint64_t protocol witness for SingleValueEncodingContainer.encode(_:) in conformance SingleValueEC()
{
  return SingleValueEncodingContainer.encode(_:)();
}

{
  return SingleValueEncodingContainer.encode(_:)();
}

uint64_t protocol witness for SingleValueEncodingContainer.encode(_:) in conformance SingleValueEC(unsigned __int8 a1)
{
  v2 = *(*(*v1 + 16) + 16);
  result = REEncoderWriteUInt8();
  if (result)
  {
    v4 = specialized static REEncoder.Error.getStatus(_:)(v2);
    v6 = v5;
    v8 = v7;
    lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error();
    swift_allocError();
    *v9 = v4;
    *(v9 + 8) = v6;
    *(v9 + 16) = v8 & 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t protocol witness for SingleValueEncodingContainer.encode(_:) in conformance SingleValueEC(unsigned __int16 a1)
{
  v2 = *(*(*v1 + 16) + 16);
  result = REEncoderWriteUInt16();
  if (result)
  {
    v4 = specialized static REEncoder.Error.getStatus(_:)(v2);
    v6 = v5;
    v8 = v7;
    lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error();
    swift_allocError();
    *v9 = v4;
    *(v9 + 8) = v6;
    *(v9 + 16) = v8 & 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t protocol witness for SingleValueEncodingContainer.encode(_:) in conformance SingleValueEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, const char *, uint64_t))
{
  v5 = *(*(*v4 + 16) + 16);
  result = a4(v5, "", a1);
  if (result)
  {
    v7 = specialized static REEncoder.Error.getStatus(_:)(v5);
    v9 = v8;
    v11 = v10;
    lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error();
    swift_allocError();
    *v12 = v7;
    *(v12 + 8) = v9;
    *(v12 + 16) = v11 & 1;
    return swift_willThrow();
  }

  return result;
}

{
  v5 = *(*(*v4 + 16) + 16);
  result = a4(v5, "", a1);
  if (result)
  {
    v7 = specialized static REEncoder.Error.getStatus(_:)(v5);
    v9 = v8;
    v11 = v10;
    lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error();
    swift_allocError();
    *v12 = v7;
    *(v12 + 8) = v9;
    *(v12 + 16) = v11 & 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t REDecoder.__deallocating_deinit()
{
  REDecoderDestroy();

  return swift_deallocClassInstance();
}

uint64_t REDecoder.decode<A>(_:from:)@<X0>(uint64_t a1@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  type metadata accessor for PrivateDecoder();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E7CC0];
  *(v7 + 32) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs17CodingUserInfoKeyV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v7 + 40) = v8;
  *(v7 + 48) = 0;
  *(v7 + 16) = v6;
  *(v7 + 24) = v8;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v10 = REDecoderSetFromCFData();

  if (v10 || REDecoderOpen())
  {
    v11 = specialized static REDecoder.Error.getStatus(_:)(v6);
    v13 = v12;
    v15 = v14;
    lazy protocol witness table accessor for type REDecoder.Error and conformance REDecoder.Error();
    swift_allocError();
    *v16 = v11;
    *(v16 + 8) = v13;
    *(v16 + 16) = v15 & 1;
    swift_willThrow();
  }

  else
  {
    lazy protocol witness table accessor for type SingleValueEC and conformance SingleValueEC(&lazy protocol witness table cache variable for type PrivateDecoder and conformance PrivateDecoder, type metadata accessor for PrivateDecoder, protocol conformance descriptor for PrivateDecoder);

    dispatch thunk of Decodable.init(from:)();
    if (!v24)
    {
      PrivateDecoder.terminateContainers(_:)(0);
      if (REDecoderClose())
      {
        v18 = specialized static REDecoder.Error.getStatus(_:)(v6);
        v20 = v19;
        v22 = v21;
        lazy protocol witness table accessor for type REDecoder.Error and conformance REDecoder.Error();
        swift_allocError();
        *v23 = v18;
        *(v23 + 8) = v20;
        *(v23 + 16) = v22 & 1;
        swift_willThrow();

        return (*(*(a1 - 8) + 8))(a3, a1);
      }
    }
  }
}

uint64_t PrivateEncoder.terminateContainers(_:)(uint64_t a1)
{
  v2 = v1;
  result = swift_beginAccess();
  v5 = *(v1 + 40);
  v6 = v5[2];
  if (v6 > a1)
  {
    while (1)
    {
      result = swift_beginAccess();
      if (!v6)
      {
        break;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      *(v2 + 40) = v5;
      if (result)
      {
        v7 = v5[2];
        if (!v7)
        {
          goto LABEL_8;
        }
      }

      else
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
        v5 = result;
        v7 = *(result + 16);
        if (!v7)
        {
LABEL_8:
          __break(1u);
          return result;
        }
      }

      v5[2] = v7 - 1;
      *(v2 + 40) = v5;
      v8 = &v5[6 * v7];
      v9 = *(v8 - 1);
      v10 = *v8;
      *&v14[9] = *(v8 + 9);
      v13 = v9;
      *v14 = v10;
      swift_endAccess();
      v11 = *&v14[8];
      v12 = *&v14[16];
      __swift_project_boxed_opaque_existential_1(&v13, *&v14[8]);
      (*(v12 + 8))(v11, v12);
      result = __swift_destroy_boxed_opaque_existential_1(&v13);
      v5 = *(v2 + 40);
      v6 = v5[2];
      if (v6 <= a1)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t PrivateDecoder.decode(_:)()
{
  v1 = *(v0 + 16);
  if (REDecoderReadString())
  {
    v2 = specialized static REDecoder.Error.getStatus(_:)(v1);
    v4 = v3;
    v6 = v5;
  }

  else
  {
    v4 = 0x80000001C18E1640;
    v6 = 1;
    v2 = 0xD000000000000017;
  }

  lazy protocol witness table accessor for type REDecoder.Error and conformance REDecoder.Error();
  swift_allocError();
  *v7 = v2;
  *(v7 + 8) = v4;
  *(v7 + 16) = v6 & 1;
  return swift_willThrow();
}

uint64_t PrivateDecoder.container<A>(keyedBy:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  swift_beginAccess();
  PrivateDecoder.terminateContainers(_:)(*(*(v3 + 24) + 16) + 1);
  swift_beginAccess();
  v9 = *(v3 + 40);
  v10 = *(v9 + 16);
  v11 = *(v3 + 24);
  if (*(v11 + 16) >= v10)
  {
    v12 = 0;
  }

  else
  {
    outlined init with copy of [String : String](v9 + 48 * v10 - 16, &v31, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_p_Sb5keyedtMd, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_p_Sb5keyedtMR);
    v12 = v32[24];
    outlined init with take of ForceEffectBase(&v31, &v27);
    v30 = v12;
    outlined destroy of BodyTrackingComponent?(&v27, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_p_Sb5keyedtMd, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_p_Sb5keyedtMR);
    v11 = *(v3 + 24);
  }

  *(v3 + 48) = v12;
  PrivateDecoder.terminateContainers(_:)(*(v11 + 16));
  v14 = type metadata accessor for KeyedDC(0, a2, a3, v13);
  v15 = *(v6 + 24);

  v18 = specialized KeyedDC.__allocating_init(decoder:codingPath:)(v6, v15, v16, v17);

  if (!v5)
  {
    *(v6 + 48) = 0;
    v28 = v14;
    v29 = &protocol witness table for KeyedDC<A>;
    *&v27 = v18;
    outlined init with take of ForceEffectBase(&v27, &v31);
    v32[24] = 1;
    swift_beginAccess();
    v20 = *(v6 + 40);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v6 + 40) = v20;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20[2] + 1, 1, v20);
      *(v6 + 40) = v20;
    }

    v23 = v20[2];
    v22 = v20[3];
    if (v23 >= v22 >> 1)
    {
      v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v20);
    }

    v20[2] = v23 + 1;
    v24 = &v20[6 * v23];
    v25 = v31;
    v26 = *v32;
    *(v24 + 57) = *&v32[9];
    v24[2] = v25;
    v24[3] = v26;
    *(v6 + 40) = v20;
    swift_endAccess();
    *&v31 = v18;
    swift_getWitnessTable(protocol conformance descriptor for KeyedDC<A>, v14);
    return KeyedDecodingContainer.init<A>(_:)();
  }

  return result;
}

uint64_t PrivateDecoder.unkeyedContainer()@<X0>(uint64_t *a1@<X8>)
{
  v3 = v2;
  swift_beginAccess();
  PrivateDecoder.terminateContainers(_:)(*(*(v1 + 24) + 16) + 1);
  swift_beginAccess();
  v5 = *(v1 + 40);
  v6 = *(v5 + 16);
  v7 = *(v1 + 24);
  if (*(v7 + 16) >= v6)
  {
    v9 = 0;
  }

  else
  {
    outlined init with copy of [String : String](v5 + 48 * v6 - 16, &v25, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_p_Sb5keyedtMd, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_p_Sb5keyedtMR);
    v8 = v26[24];
    outlined init with take of ForceEffectBase(&v25, &v21);
    v24 = v8;
    outlined destroy of BodyTrackingComponent?(&v21, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_p_Sb5keyedtMd, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_p_Sb5keyedtMR);
    v9 = v8 ^ 1;
    v7 = *(v1 + 24);
  }

  *(v1 + 48) = v9;
  PrivateDecoder.terminateContainers(_:)(*(v7 + 16));
  v10 = *(v1 + 24);

  v11 = specialized UnkeyedDC.__allocating_init(decoder:codingPath:)(v1, v10);

  if (!v3)
  {
    *(v1 + 48) = 0;
    v13 = type metadata accessor for UnkeyedDC();
    v22 = v13;
    v23 = &protocol witness table for UnkeyedDC;
    *&v21 = v11;
    outlined init with take of ForceEffectBase(&v21, &v25);
    v26[24] = 0;
    swift_beginAccess();
    v14 = *(v1 + 40);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + 40) = v14;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14[2] + 1, 1, v14);
      *(v1 + 40) = v14;
    }

    v17 = v14[2];
    v16 = v14[3];
    if (v17 >= v16 >> 1)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v14);
    }

    v14[2] = v17 + 1;
    v18 = &v14[6 * v17];
    v19 = v25;
    v20 = *v26;
    *(v18 + 57) = *&v26[9];
    v18[2] = v19;
    v18[3] = v20;
    *(v1 + 40) = v14;
    swift_endAccess();
    a1[3] = v13;
    result = lazy protocol witness table accessor for type SingleValueEC and conformance SingleValueEC(&lazy protocol witness table cache variable for type UnkeyedDC and conformance UnkeyedDC, type metadata accessor for UnkeyedDC, protocol conformance descriptor for UnkeyedDC);
    a1[4] = result;
    *a1 = v11;
  }

  return result;
}

uint64_t PrivateEncoder.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

double protocol witness for Decoder.singleValueContainer() in conformance PrivateDecoder@<D0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = type metadata accessor for SingleValueDC();
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  a1[3] = v5;
  a1[4] = lazy protocol witness table accessor for type SingleValueEC and conformance SingleValueEC(&lazy protocol witness table cache variable for type SingleValueDC and conformance SingleValueDC, type metadata accessor for SingleValueDC, protocol conformance descriptor for SingleValueDC);
  *a1 = v6;

  return result;
}

uint64_t KeyedDC.allKeys.getter()
{
  if (*(v0 + 72))
  {
    v1 = *(v0 + 72);
  }

  else
  {
    v1 = KeyedDC._allKeys.getter();
    *(v0 + 72) = v1;
  }

  return v1;
}

uint64_t KeyedDC._allKeys.getter()
{
  v1 = v0;
  v88 = *MEMORY[0x1E69E9840];
  v2 = *v0;
  v3 = *(*v0 + 80);
  v79 = type metadata accessor for Optional();
  v4 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v6 = v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v70 = v68 - v8;
  v9 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v80 = v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v78 = v68 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v69 = v68 - v15;
  v86 = static Array._allocateUninitialized(_:)();
  v16 = v0[2];
  v17 = REDecoderContainerElementCount();
  v68[1] = v2;
  if (v17)
  {
    type metadata accessor for OS_os_log();
    v18 = static OS_os_log.default.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = v1;
      v21 = swift_slowAlloc();
      *v21 = 134217984;
      *(v21 + 4) = v17;
      _os_log_impl(&dword_1C1358000, v18, v19, "Warning: Dictionary contains an odd number of elements: %ld", v21, 0xCu);
      v22 = v21;
      v1 = v20;
      MEMORY[0x1C6902A30](v22, -1, -1);
    }
  }

  v23 = v17 / 2;
  v77 = type metadata accessor for Array();
  Array.reserveCapacity(_:)(v17 / 2);
  if (v17 < -1)
  {
    goto LABEL_44;
  }

  if ((v17 + 1) < 3)
  {
    return v86;
  }

  v25 = v4;
  v26 = 0;
  v81 = v17 / 2;
  v82 = (v9 + 48);
  v75 = (v9 + 16);
  v76 = (v9 + 32);
  v71 = (v9 + 8);
  v72 = v6;
  v73 = v16;
  v74 = (v25 + 8);
  while (1)
  {
    if (v23 == v26)
    {
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
    }

    v84 = -1;
    v85 = 0;
    v87 = 0;
    REDecoderContainerGetKeyAndOffset();
    if (!v87)
    {
      v30 = v70;
      dispatch thunk of CodingKey.init(intValue:)();
      if ((*v82)(v30, 1, v3) == 1)
      {
        (*v74)(v30, v79);
      }

      else
      {
        v31 = v69;
        (*v76)(v69, v30, v3);
        (*v75)(v78, v31, v3);
        Array.append(_:)();
        v32 = v84;
        v33 = v85;
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v83 = v1[10];
        v35 = v83;
        v1[10] = 0x8000000000000000;
        v36 = specialized __RawDictionaryStorage.find<A>(_:)(v33);
        v38 = v35[2];
        v39 = (v37 & 1) == 0;
        v40 = __OFADD__(v38, v39);
        v41 = v38 + v39;
        if (v40)
        {
          goto LABEL_41;
        }

        v42 = v37;
        if (v35[3] >= v41)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v66 = v1;
            v67 = v36;
            specialized _NativeDictionary.copy()();
            v36 = v67;
            v1 = v66;
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v41, isUniquelyReferenced_nonNull_native);
          v36 = specialized __RawDictionaryStorage.find<A>(_:)(v33);
          if ((v42 & 1) != (v43 & 1))
          {
            goto LABEL_46;
          }
        }

        v63 = v83;
        if (v42)
        {
          *(v83[7] + 8 * v36) = v32;
        }

        else
        {
          v83[(v36 >> 6) + 8] |= 1 << v36;
          *(v63[6] + 8 * v36) = v33;
          *(v63[7] + 8 * v36) = v32;
          v64 = v63[2];
          v40 = __OFADD__(v64, 1);
          v65 = v64 + 1;
          if (v40)
          {
            goto LABEL_43;
          }

          v63[2] = v65;
        }

        v1[10] = v63;
        swift_endAccess();
        (*v71)(v69, v3);
        v6 = v72;
      }

      goto LABEL_10;
    }

    v27 = String.init(cString:)();
    v29 = v28;

    dispatch thunk of CodingKey.init(stringValue:)();
    if ((*v82)(v6, 1, v3) == 1)
    {

      (*v74)(v6, v79);
      goto LABEL_11;
    }

    v44 = v80;
    (*v76)(v80, v6, v3);
    (*v75)(v78, v44, v3);
    Array.append(_:)();
    v45 = v84;
    swift_beginAccess();
    v46 = swift_isUniquelyReferenced_nonNull_native();
    v47 = v1;
    v48 = v46;
    v83 = v47[11];
    v49 = v83;
    v50 = v47;
    v47[11] = 0x8000000000000000;
    v52 = specialized __RawDictionaryStorage.find<A>(_:)(v27, v29);
    v53 = v49[2];
    v54 = (v51 & 1) == 0;
    v55 = v53 + v54;
    if (__OFADD__(v53, v54))
    {
      goto LABEL_40;
    }

    v56 = v51;
    if (v49[3] >= v55)
    {
      if ((v48 & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
      }

      goto LABEL_27;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v55, v48);
    v57 = specialized __RawDictionaryStorage.find<A>(_:)(v27, v29);
    if ((v56 & 1) != (v58 & 1))
    {
      break;
    }

    v52 = v57;
LABEL_27:
    v1 = v50;
    if (v56)
    {

      v59 = v83;
      *(v83[7] + 8 * v52) = v45;
    }

    else
    {
      v59 = v83;
      v83[(v52 >> 6) + 8] |= 1 << v52;
      v60 = (v59[6] + 16 * v52);
      *v60 = v27;
      v60[1] = v29;
      *(v59[7] + 8 * v52) = v45;
      v61 = v59[2];
      v40 = __OFADD__(v61, 1);
      v62 = v61 + 1;
      if (v40)
      {
        goto LABEL_42;
      }

      v59[2] = v62;
    }

    v50[11] = v59;
    swift_endAccess();
    (*v71)(v80, v3);
    v6 = v72;
LABEL_10:
    v23 = v81;
LABEL_11:
    if (v23 == ++v26)
    {
      return v86;
    }
  }

  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_46:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t KeyedDC.contains(_:)()
{
  KeyedDC.allKeys.getter();

  v1 = dispatch thunk of CodingKey.intValue.getter();
  v3 = v2;
  v4 = dispatch thunk of CodingKey.stringValue.getter();
  v6 = v5;
  if ((v3 & 1) == 0)
  {

    swift_beginAccess();
    if (*(*(v0 + 80) + 16))
    {
      specialized __RawDictionaryStorage.find<A>(_:)(v1);
      v9 = v10;
      return v9 & 1;
    }

LABEL_7:
    v9 = 0;
    return v9 & 1;
  }

  v7 = v4;
  swift_beginAccess();
  if (!*(*(v0 + 88) + 16))
  {

    goto LABEL_7;
  }

  specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
  v9 = v8;

  return v9 & 1;
}

uint64_t KeyedDC.readKey(_:)()
{
  KeyedDC.allKeys.getter();

  v1 = dispatch thunk of CodingKey.intValue.getter();
  v3 = v2;
  v4 = dispatch thunk of CodingKey.stringValue.getter();
  v6 = v5;
  if (v3)
  {
    swift_beginAccess();
    if (*(*(v0 + 88) + 16))
    {

      specialized __RawDictionaryStorage.find<A>(_:)(v4, v6);
      if (v7)
      {

        return REDecoderContainerSetOffset();
      }
    }

    type metadata accessor for OS_os_log();

    v15 = static OS_os_log.default.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v22 = v18;
      *v17 = 136315138;
      *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v6, &v22);
      _os_log_impl(&dword_1C1358000, v15, v16, "Warning: Dictionary does not contain key: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x1C6902A30](v18, -1, -1);
      MEMORY[0x1C6902A30](v17, -1, -1);
    }

    v22 = 0;
    v23 = 0xE000000000000000;
    _StringGuts.grow(_:)(46);

    v22 = 0xD00000000000002BLL;
    v23 = 0x80000001C18E16B0;
  }

  else
  {
    swift_beginAccess();
    if (*(*(v0 + 80) + 16))
    {
      specialized __RawDictionaryStorage.find<A>(_:)(v1);
      if (v8)
      {

        return REDecoderContainerSetOffset();
      }
    }

    type metadata accessor for OS_os_log();
    v10 = static OS_os_log.default.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v22 = v13;
      *v12 = 134218242;
      *(v12 + 4) = v1;
      *(v12 + 12) = 2080;
      *(v12 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v6, &v22);
      _os_log_impl(&dword_1C1358000, v10, v11, "Warning: Dictionary does not contain key: %ld %s", v12, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x1C6902A30](v13, -1, -1);
      MEMORY[0x1C6902A30](v12, -1, -1);
    }

    v22 = 0;
    v23 = 0xE000000000000000;
    _StringGuts.grow(_:)(49);

    v22 = 0xD00000000000002ALL;
    v23 = 0x80000001C18E16E0;
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1C68F3410](v14);

    MEMORY[0x1C68F3410](8736, 0xE200000000000000);
  }

  MEMORY[0x1C68F3410](v4, v6);

  MEMORY[0x1C68F3410](34, 0xE100000000000000);
  v19 = v22;
  v20 = v23;
  lazy protocol witness table accessor for type REDecoder.Error and conformance REDecoder.Error();
  swift_allocError();
  *v21 = v19;
  *(v21 + 8) = v20;
  *(v21 + 16) = 1;
  return swift_willThrow();
}

uint64_t KeyedDC.decodeNil(forKey:)()
{
  PrivateDecoder.terminateContainers(_:)(*(*(v0 + 24) + 16) + 1);
  Nil = KeyedDC.readKey(_:)();
  if (!v1)
  {
    Nil = REDecoderTryReadNil();
  }

  return Nil & 1;
}

uint64_t KeyedDC.decode(_:forKey:)()
{
  v2 = *(v0 + 16);
  PrivateDecoder.terminateContainers(_:)(*(*(v0 + 24) + 16) + 1);
  KeyedDC.readKey(_:)();
  if (!v1)
  {
    v4 = *(v2 + 16);
    if (REDecoderReadBool())
    {
      v5 = specialized static REDecoder.Error.getStatus(_:)(v4);
      v7 = v6;
      v9 = v8;
      lazy protocol witness table accessor for type REDecoder.Error and conformance REDecoder.Error();
      swift_allocError();
      *v10 = v5;
      *(v10 + 8) = v7;
      *(v10 + 16) = v9 & 1;
      swift_willThrow();
    }

    else
    {
      v3 = 0;
    }
  }

  return v3 & 1;
}

{
  PrivateDecoder.terminateContainers(_:)(*(*(v0 + 24) + 16) + 1);
  result = KeyedDC.readKey(_:)();
  if (!v1)
  {
    return PrivateDecoder.decode(_:)();
  }

  return result;
}

double KeyedDC.decode(_:forKey:)()
{
  v2 = *(v0 + 16);
  PrivateDecoder.terminateContainers(_:)(*(*(v0 + 24) + 16) + 1);
  KeyedDC.readKey(_:)();
  if (!v1)
  {
    v4 = *(v2 + 16);
    if (REDecoderReadDouble())
    {
      v5 = specialized static REDecoder.Error.getStatus(_:)(v4);
      v7 = v6;
      v9 = v8;
      lazy protocol witness table accessor for type REDecoder.Error and conformance REDecoder.Error();
      swift_allocError();
      *v10 = v5;
      *(v10 + 8) = v7;
      *(v10 + 16) = v9 & 1;
      swift_willThrow();
    }

    else
    {
      return 0.0;
    }
  }

  return result;
}

float KeyedDC.decode(_:forKey:)()
{
  v2 = *(v0 + 16);
  PrivateDecoder.terminateContainers(_:)(*(*(v0 + 24) + 16) + 1);
  KeyedDC.readKey(_:)();
  if (!v1)
  {
    v4 = *(v2 + 16);
    if (REDecoderReadFloat())
    {
      v5 = specialized static REDecoder.Error.getStatus(_:)(v4);
      v7 = v6;
      v9 = v8;
      lazy protocol witness table accessor for type REDecoder.Error and conformance REDecoder.Error();
      swift_allocError();
      *v10 = v5;
      *(v10 + 8) = v7;
      *(v10 + 16) = v9 & 1;
      swift_willThrow();
    }

    else
    {
      return 0.0;
    }
  }

  return result;
}

uint64_t KeyedDC.decode(_:forKey:)(uint64_t a1)
{
  return KeyedDC.decode(_:forKey:)(a1, MEMORY[0x1E6998898]);
}

{
  return KeyedDC.decode(_:forKey:)(a1, MEMORY[0x1E69988A0]);
}

{
  return KeyedDC.decode(_:forKey:)(a1, MEMORY[0x1E6998888]);
}

{
  return KeyedDC.decode(_:forKey:)(a1, MEMORY[0x1E6998890]);
}

{
  return KeyedDC.decode(_:forKey:)(a1, MEMORY[0x1E69988B8]);
}

{
  return KeyedDC.decode(_:forKey:)(a1, MEMORY[0x1E69988C0]);
}

{
  return KeyedDC.decode(_:forKey:)(a1, MEMORY[0x1E69988A8]);
}

{
  return KeyedDC.decode(_:forKey:)(a1, MEMORY[0x1E69988B0]);
}

{
  return KeyedDC.decode(_:forKey:)(a1);
}

{
  return KeyedDC.decode(_:forKey:)(a1);
}

uint64_t KeyedDC.decode(_:forKey:)(uint64_t a1, unsigned int (*a2)(uint64_t, const char *, unsigned __int8 *))
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = *(v2 + 16);
  PrivateDecoder.terminateContainers(_:)(*(*(v2 + 24) + 16) + 1);
  result = KeyedDC.readKey(_:)();
  if (!v3)
  {
    v14 = 0;
    v7 = *(v5 + 16);
    if (a2(v7, "", &v14))
    {
      v8 = specialized static REDecoder.Error.getStatus(_:)(v7);
      v10 = v9;
      v12 = v11;
      lazy protocol witness table accessor for type REDecoder.Error and conformance REDecoder.Error();
      swift_allocError();
      *v13 = v8;
      *(v13 + 8) = v10;
      *(v13 + 16) = v12 & 1;
      return swift_willThrow();
    }

    else
    {
      return v14;
    }
  }

  return result;
}

uint64_t KeyedDC.decode(_:forKey:)(uint64_t a1, unsigned int (*a2)(uint64_t, const char *, unsigned __int16 *))
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = *(v2 + 16);
  PrivateDecoder.terminateContainers(_:)(*(*(v2 + 24) + 16) + 1);
  result = KeyedDC.readKey(_:)();
  if (!v3)
  {
    v14 = 0;
    v7 = *(v5 + 16);
    if (a2(v7, "", &v14))
    {
      v8 = specialized static REDecoder.Error.getStatus(_:)(v7);
      v10 = v9;
      v12 = v11;
      lazy protocol witness table accessor for type REDecoder.Error and conformance REDecoder.Error();
      swift_allocError();
      *v13 = v8;
      *(v13 + 8) = v10;
      *(v13 + 16) = v12 & 1;
      return swift_willThrow();
    }

    else
    {
      return v14;
    }
  }

  return result;
}

uint64_t KeyedDC.decode(_:forKey:)(uint64_t a1, unsigned int (*a2)(uint64_t, const char *, unsigned int *))
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = *(v2 + 16);
  PrivateDecoder.terminateContainers(_:)(*(*(v2 + 24) + 16) + 1);
  result = KeyedDC.readKey(_:)();
  if (!v3)
  {
    v14 = 0;
    v7 = *(v5 + 16);
    if (a2(v7, "", &v14))
    {
      v8 = specialized static REDecoder.Error.getStatus(_:)(v7);
      v10 = v9;
      v12 = v11;
      lazy protocol witness table accessor for type REDecoder.Error and conformance REDecoder.Error();
      swift_allocError();
      *v13 = v8;
      *(v13 + 8) = v10;
      *(v13 + 16) = v12 & 1;
      return swift_willThrow();
    }

    else
    {
      return v14;
    }
  }

  return result;
}

uint64_t KeyedDC.decode(_:forKey:)(uint64_t a1, unsigned int (*a2)(uint64_t, const char *, void *))
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = *(v2 + 16);
  PrivateDecoder.terminateContainers(_:)(*(*(v2 + 24) + 16) + 1);
  result = KeyedDC.readKey(_:)();
  if (!v3)
  {
    v14[0] = 0;
    v7 = *(v5 + 16);
    if (a2(v7, "", v14))
    {
      v8 = specialized static REDecoder.Error.getStatus(_:)(v7);
      v10 = v9;
      v12 = v11;
      lazy protocol witness table accessor for type REDecoder.Error and conformance REDecoder.Error();
      swift_allocError();
      *v13 = v8;
      *(v13 + 8) = v10;
      *(v13 + 16) = v12 & 1;
      return swift_willThrow();
    }

    else
    {
      return v14[0];
    }
  }

  return result;
}

uint64_t KeyedDC.decode<A>(_:forKey:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v28 = a3;
  v6 = v5;
  v32 = a4;
  v23[1] = a5;
  v25 = *v5;
  v8 = *(v25 + 80);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v23 - v13;
  v15 = v5[2];
  PrivateDecoder.terminateContainers(_:)(*(v5[3] + 16) + 1);
  v16 = *(v9 + 16);
  v26 = a2;
  v24 = v16;
  v16(v14, a2, v8);
  swift_beginAccess();
  v17 = *(v15 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v15 + 24) = v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17[2] + 1, 1, v17);
    *(v15 + 24) = v17;
  }

  v20 = v17[2];
  v19 = v17[3];
  if (v20 >= v19 >> 1)
  {
    v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v17);
    *(v15 + 24) = v17;
  }

  v24(v11, v14, v8);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v20, v11, (v15 + 24), v8, *(v25 + 88));
  (*(v9 + 8))(v14, v8);
  *(v15 + 24) = v17;
  swift_endAccess();
  v21 = v27;
  KeyedDC.readKey(_:)();
  if (!v21)
  {
    v30 = type metadata accessor for PrivateDecoder();
    v31 = lazy protocol witness table accessor for type SingleValueEC and conformance SingleValueEC(&lazy protocol witness table cache variable for type PrivateDecoder and conformance PrivateDecoder, type metadata accessor for PrivateDecoder, protocol conformance descriptor for PrivateDecoder);
    v29 = v15;

    dispatch thunk of Decodable.init(from:)();
  }

  return $defer #1 <A><A1>() in KeyedEC.encode<A>(_:forKey:)(v6);
}

uint64_t $defer #1 <A><A1>() in KeyedEC.encode<A>(_:forKey:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_beginAccess();
  v2 = *(v1 + 24);
  if (!v2[2])
  {
    __break(1u);
LABEL_6:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
    v2 = result;
    v4 = *(result + 16);
    if (v4)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_6;
  }

  v4 = v2[2];
  if (v4)
  {
LABEL_4:
    v5 = v4 - 1;
    __swift_destroy_boxed_opaque_existential_1(&v2[5 * v4 - 1]);
    v2[2] = v5;
    *(v1 + 24) = v2;
    return swift_endAccess();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t KeyedDC.nestedContainer<A>(keyedBy:forKey:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v36 = a4;
  v9 = *v4;
  swift_beginAccess();
  v29 = (v4 + 4);
  outlined init with copy of [String : String]((v4 + 4), v33, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMd, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMR);
  if (v34)
  {
    outlined init with copy of __REAssetService(v33, v30);
    outlined destroy of BodyTrackingComponent?(v33, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMd, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMR);
    v10 = a1;
    v11 = v9;
    v12 = a3;
    v13 = a2;
    v15 = v31;
    v14 = v32;
    __swift_project_boxed_opaque_existential_1(v30, v31);
    v16 = *(v14 + 8);
    v17 = v14;
    a2 = v13;
    a3 = v12;
    v9 = v11;
    a1 = v10;
    v16(v15, v17);
    __swift_destroy_boxed_opaque_existential_1(v30);
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(v33, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMd, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMR);
  }

  v18 = v4[2];
  PrivateDecoder.terminateContainers(_:)(*(v4[3] + 16) + 1);
  result = KeyedDC.readKey(_:)();
  if (!v5)
  {
    v21 = type metadata accessor for KeyedDC(0, a2, a3, v20);
    v22 = v4[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C1887600;
    v24 = *(v9 + 80);
    *(inited + 56) = v24;
    *(inited + 64) = *(v9 + 88);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
    (*(*(v24 - 8) + 16))(boxed_opaque_existential_1, a1, v24);
    v33[0] = v22;

    specialized Array.append<A>(contentsOf:)(inited);
    v28 = specialized KeyedDC.__allocating_init(decoder:codingPath:)(v18, v33[0], v26, v27);

    v34 = v21;
    v35 = &protocol witness table for KeyedDC<A>;
    v33[0] = v28;
    swift_beginAccess();

    outlined assign with take of Terminatable?(v33, v29);
    swift_endAccess();
    v33[0] = v28;
    swift_getWitnessTable(protocol conformance descriptor for KeyedDC<A>, v21);
    return KeyedDecodingContainer.init<A>(_:)();
  }

  return result;
}

uint64_t KeyedDC.nestedUnkeyedContainer(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = (v2 + 4);
  v7 = *v2;
  swift_beginAccess();
  outlined init with copy of [String : String]((v2 + 4), v21, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMd, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMR);
  if (v22)
  {
    outlined init with copy of __REAssetService(v21, v18);
    outlined destroy of BodyTrackingComponent?(v21, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMd, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMR);
    v8 = v19;
    v9 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    (*(v9 + 8))(v8, v9);
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(v21, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMd, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMR);
  }

  v10 = v2[2];
  PrivateDecoder.terminateContainers(_:)(*(v2[3] + 16) + 1);
  result = KeyedDC.readKey(_:)();
  if (!v3)
  {
    v12 = v2[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C1887600;
    v14 = *(v7 + 80);
    *(inited + 56) = v14;
    *(inited + 64) = *(v7 + 88);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
    (*(*(v14 - 8) + 16))(boxed_opaque_existential_1, a1, v14);
    v21[0] = v12;

    specialized Array.append<A>(contentsOf:)(inited);
    v16 = specialized UnkeyedDC.__allocating_init(decoder:codingPath:)(v10, v21[0]);

    v17 = type metadata accessor for UnkeyedDC();
    v22 = v17;
    v23 = &protocol witness table for UnkeyedDC;
    v21[0] = v16;
    swift_beginAccess();

    outlined assign with take of Terminatable?(v21, v6);
    swift_endAccess();
    a2[3] = v17;
    result = lazy protocol witness table accessor for type SingleValueEC and conformance SingleValueEC(&lazy protocol witness table cache variable for type UnkeyedDC and conformance UnkeyedDC, type metadata accessor for UnkeyedDC, protocol conformance descriptor for UnkeyedDC);
    a2[4] = result;
    *a2 = v16;
  }

  return result;
}

uint64_t KeyedDC.superDecoder()@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(*v1 + 80);
  v4 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  dispatch thunk of CodingKey.init(stringValue:)();
  v7 = *(v3 - 8);
  result = (*(v7 + 48))(v6, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    KeyedDC.superDecoder(forKey:)(v6, a1);
    return (*(v7 + 8))(v6, v3);
  }

  return result;
}

uint64_t KeyedDC.superDecoder(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *v2;
  v6 = v2[3];
  v7 = *(v2[2] + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1887600;
  v9 = *(v5 + 80);
  *(inited + 56) = v9;
  *(inited + 64) = *(v5 + 88);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_1, a1, v9);

  specialized Array.append<A>(contentsOf:)(inited);
  v11 = type metadata accessor for PrivateDecoder();
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E7CC0];
  *(v12 + 32) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs17CodingUserInfoKeyV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v12 + 40) = v13;
  *(v12 + 48) = 0;
  *(v12 + 16) = v7;
  *(v12 + 24) = v6;
  a2[3] = v11;
  result = lazy protocol witness table accessor for type SingleValueEC and conformance SingleValueEC(&lazy protocol witness table cache variable for type PrivateDecoder and conformance PrivateDecoder, type metadata accessor for PrivateDecoder, protocol conformance descriptor for PrivateDecoder);
  a2[4] = result;
  *a2 = v12;
  return result;
}

void *KeyedDC.deinit()
{

  outlined destroy of BodyTrackingComponent?(v0 + 32, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMd, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMR);

  return v0;
}

uint64_t KeyedDC.__deallocating_deinit()
{
  KeyedDC.deinit();

  return swift_deallocClassInstance();
}