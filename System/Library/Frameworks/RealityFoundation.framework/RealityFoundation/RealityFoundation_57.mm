void __RKEntityInteractionSpecification.encode(to:at:)(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void *, void *)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t *a6@<X8>)
{
  v10 = *a1;
  v11 = a1[1];
  v14 = *(a1 + 1);
  outlined init with copy of Any(a2, v16);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKObjectPath, 0x1E69DED68);
  if (swift_dynamicCast())
  {
    v16[0] = v10;
    v16[1] = v11;
    v17 = v14;
    v12 = (a3)(v16);
    if (v6)
    {
    }

    else
    {
      v13 = v12;
      a6[3] = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKNode, 0x1E69DED60);

      *a6 = v13;
    }
  }

  else
  {
    a4();
    swift_allocError();
    swift_willThrow();
  }
}

unint64_t lazy protocol witness table accessor for type Error #1 in __RKEntityTriggerSpecification.encode(to:at:) and conformance Error #1 in __RKEntityTriggerSpecification.encode(to:at:)()
{
  result = lazy protocol witness table cache variable for type Error #1 in __RKEntityTriggerSpecification.encode(to:at:) and conformance Error #1 in __RKEntityTriggerSpecification.encode(to:at:);
  if (!lazy protocol witness table cache variable for type Error #1 in __RKEntityTriggerSpecification.encode(to:at:) and conformance Error #1 in __RKEntityTriggerSpecification.encode(to:at:))
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Error #1 in __RKEntityTriggerSpecification.encode(to:at:), &unk_1F4120FC0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Error #1 in __RKEntityTriggerSpecification.encode(to:at:) and conformance Error #1 in __RKEntityTriggerSpecification.encode(to:at:));
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Error #1 in __RKEntityTriggerSpecification.encode(to:at:) and conformance Error #1 in __RKEntityTriggerSpecification.encode(to:at:);
  if (!lazy protocol witness table cache variable for type Error #1 in __RKEntityTriggerSpecification.encode(to:at:) and conformance Error #1 in __RKEntityTriggerSpecification.encode(to:at:))
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Error #1 in __RKEntityTriggerSpecification.encode(to:at:), &unk_1F4120FC0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Error #1 in __RKEntityTriggerSpecification.encode(to:at:) and conformance Error #1 in __RKEntityTriggerSpecification.encode(to:at:));
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Error #1 in __RKEntityActionSpecification.encode(to:at:) and conformance Error #1 in __RKEntityActionSpecification.encode(to:at:)()
{
  result = lazy protocol witness table cache variable for type Error #1 in __RKEntityActionSpecification.encode(to:at:) and conformance Error #1 in __RKEntityActionSpecification.encode(to:at:);
  if (!lazy protocol witness table cache variable for type Error #1 in __RKEntityActionSpecification.encode(to:at:) and conformance Error #1 in __RKEntityActionSpecification.encode(to:at:))
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Error #1 in __RKEntityActionSpecification.encode(to:at:), &unk_1F4120F30, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Error #1 in __RKEntityActionSpecification.encode(to:at:) and conformance Error #1 in __RKEntityActionSpecification.encode(to:at:));
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Error #1 in __RKEntityActionSpecification.encode(to:at:) and conformance Error #1 in __RKEntityActionSpecification.encode(to:at:);
  if (!lazy protocol witness table cache variable for type Error #1 in __RKEntityActionSpecification.encode(to:at:) and conformance Error #1 in __RKEntityActionSpecification.encode(to:at:))
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Error #1 in __RKEntityActionSpecification.encode(to:at:), &unk_1F4120F30, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Error #1 in __RKEntityActionSpecification.encode(to:at:) and conformance Error #1 in __RKEntityActionSpecification.encode(to:at:));
  }

  return result;
}

uint64_t __RKEntityInteractionSpecification.encode(to:at:sceneSpecifier:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  v4 = a1[1];
  v6[0] = *a1;
  v6[1] = v4;
  return (a4)(v6, a2, a3);
}

uint64_t protocol witness for __USDEncodablePublic.encode(to:at:sceneSpecifier:) in conformance __RKEntityInteractionSpecification(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(_OWORD *))
{
  v6 = a1[1];
  v8[0] = *a1;
  v8[1] = v6;
  return (a6)(v8, a2, a3, a4, a5);
}

void __RKEntityActionSpecification.setEaseType(ease:easeType:on:)(_BYTE *a1, _BYTE *a2, void *a3)
{
  if (*a1)
  {
    v4 = *MEMORY[0x1E69DEE28];
    if (*a2 > 1u)
    {
      if (*a2 != 2)
      {
        v12 = 0;
        goto LABEL_16;
      }

      v6 = 0xE500000000000000;
      v5 = 0x74756F6E69;
    }

    else
    {
      if (*a2)
      {
        v5 = 7632239;
      }

      else
      {
        v5 = 28265;
      }

      if (*a2)
      {
        v6 = 0xE300000000000000;
      }

      else
      {
        v6 = 0xE200000000000000;
      }
    }

    v14 = objc_allocWithZone(MEMORY[0x1E69DED80]);
    v15 = MEMORY[0x1C68F3280](v5, v6);

    v12 = [v14 initWithString_];

LABEL_16:
    v16 = MEMORY[0x1C68F3280](0x6570795465736165, 0xE800000000000000);
    v10 = [a3 newPropertyWithName:v16 type:v4 role:0];

    if (v10)
    {
      if (v12)
      {
        v17 = v12;
        [v10 setTokenValue_];
      }

      else
      {
        lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
        swift_allocError();
        *v21 = 0u;
        *(v21 + 16) = 0u;
        *(v21 + 32) = 0;
        swift_willThrow();
      }

      goto LABEL_24;
    }

    lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
    swift_allocError();
    *v18 = xmmword_1C18D17E0;
    *(v18 + 16) = v4;
    *(v18 + 24) = 0;
    *(v18 + 32) = a3;
    swift_willThrow();
    v19 = a3;
    v20 = v4;
    goto LABEL_23;
  }

  v7 = *MEMORY[0x1E69DEE28];
  v8 = objc_allocWithZone(MEMORY[0x1E69DED80]);
  v9 = MEMORY[0x1C68F3280](1701736302, 0xE400000000000000);
  v10 = [v8 initWithString_];

  v11 = MEMORY[0x1C68F3280](0x6570795465736165, 0xE800000000000000);
  v12 = [a3 newPropertyWithName:v11 type:v7 role:0];

  if (v12)
  {
    if (v10)
    {
      v13 = v10;
      [v12 setTokenValue_];

      return;
    }

    lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
    swift_allocError();
    *v25 = 0u;
    *(v25 + 16) = 0u;
    *(v25 + 32) = 0;
    swift_willThrow();
LABEL_23:
    v10 = v12;
    goto LABEL_24;
  }

  lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
  swift_allocError();
  *v22 = xmmword_1C18D17E0;
  *(v22 + 16) = v7;
  *(v22 + 24) = 0;
  *(v22 + 32) = a3;
  swift_willThrow();
  v23 = v7;
  v24 = a3;
LABEL_24:
}

void __RKEntityActionSpecification.setRotationAxis(direction:axis:on:)(_BYTE *a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v6 = 1.0;
  if (*a1)
  {
    v6 = -1.0;
  }

  v17 = v6;
  v7 = *MEMORY[0x1E69DEDA0];
  v8 = 0uLL;
  v9 = 0.0;
  if ((a4 & 1) == 0)
  {
    v8 = vcvtq_f64_f32(a2);
    v9 = *&a3;
  }

  v15 = v9;
  v16 = v8;
  v10 = MEMORY[0x1C68F3280](1936291937, 0xE400000000000000, a3);
  v11 = [a5 newPropertyWithName:v10 type:v7 role:0];

  if (v11)
  {
    v18[0] = vmulq_n_f64(v16, v17);
    v18[1] = COERCE_UNSIGNED_INT64(v17 * v15);
    [v11 setDouble3Value_];
  }

  else
  {
    lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
    swift_allocError();
    *v12 = xmmword_1C18D17F0;
    *(v12 + 16) = v7;
    *(v12 + 24) = 0;
    *(v12 + 32) = a5;
    swift_willThrow();
    v13 = v7;
    v14 = a5;
  }
}

void makeParentNode #1 (from:baseName:) in __RKEntityActionSpecification.encode(to:at:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  USKObjectPath.deletingLastPathComponent()();
  v8 = v7;
  v22 = a2;
  USKObjectPath.appendingPathComponent(_:)(a2, a3);
  v10 = v9;
  v11 = [a4 nodeAtPath_];
  if (v11)
  {
    v12 = 0;
    while (1)
    {

      if (__OFADD__(v12, 1))
      {
        break;
      }

      MEMORY[0x1C68F3410](95, 0xE100000000000000);
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1C68F3410](v13);

      v14 = [v8 stringValue];
      if (v14)
      {
        v15 = v14;
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;
      }

      else
      {
        v16 = 0;
        v18 = 0xE000000000000000;
      }

      MEMORY[0x1C68F3410](47, 0xE100000000000000);
      MEMORY[0x1C68F3410](v22, a3);
      v19 = objc_allocWithZone(MEMORY[0x1E69DED68]);
      v20 = MEMORY[0x1C68F3280](v16, v18);

      v21 = [v19 initWithString_];

      if (!v21)
      {
        goto LABEL_11;
      }

      v11 = [a4 nodeAtPath_];
      ++v12;
      v10 = v21;
      if (!v11)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
LABEL_9:
  }
}

uint64_t closure #18 in __RKEntityActionSpecification.encode(to:at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = type metadata accessor for __RKEntityTransformActionArguments(0);
  v5 = (a1 + *(result + 24));
  v6 = v5[2].i8[0];
  v7 = 0uLL;
  v8 = 0uLL;
  if ((v6 & 1) == 0)
  {
    v7 = vcvtq_f64_f32(*v5);
    v8 = vcvtq_f64_f32(v5[1]);
  }

  *a2 = v7;
  *(a2 + 16) = v8;
  *(a2 + 32) = v6;
  return result;
}

uint64_t closure #19 in __RKEntityActionSpecification.encode(to:at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = type metadata accessor for __RKEntityTransformActionArguments(0);
  v5 = (a1 + *(result + 20));
  v6 = v5[2].i8[0];
  if (v6)
  {
    v7 = 0uLL;
    v8 = 0.0;
  }

  else
  {
    v7 = vcvtq_f64_f32(*v5);
    v8 = COERCE_FLOAT(*&v5[1]);
  }

  *a2 = v7;
  *(a2 + 16) = v8;
  *(a2 + 24) = 0;
  *(a2 + 32) = v6;
  return result;
}

unint64_t lazy protocol witness table accessor for type InteractionSpecificationsUSDEncodingErrors and conformance InteractionSpecificationsUSDEncodingErrors()
{
  result = lazy protocol witness table cache variable for type InteractionSpecificationsUSDEncodingErrors and conformance InteractionSpecificationsUSDEncodingErrors;
  if (!lazy protocol witness table cache variable for type InteractionSpecificationsUSDEncodingErrors and conformance InteractionSpecificationsUSDEncodingErrors)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InteractionSpecificationsUSDEncodingErrors, &type metadata for InteractionSpecificationsUSDEncodingErrors, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type InteractionSpecificationsUSDEncodingErrors and conformance InteractionSpecificationsUSDEncodingErrors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InteractionSpecificationsUSDEncodingErrors and conformance InteractionSpecificationsUSDEncodingErrors;
  if (!lazy protocol witness table cache variable for type InteractionSpecificationsUSDEncodingErrors and conformance InteractionSpecificationsUSDEncodingErrors)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InteractionSpecificationsUSDEncodingErrors, &type metadata for InteractionSpecificationsUSDEncodingErrors, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type InteractionSpecificationsUSDEncodingErrors and conformance InteractionSpecificationsUSDEncodingErrors);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type USKScene.NewNodeError and conformance USKScene.NewNodeError()
{
  result = lazy protocol witness table cache variable for type USKScene.NewNodeError and conformance USKScene.NewNodeError;
  if (!lazy protocol witness table cache variable for type USKScene.NewNodeError and conformance USKScene.NewNodeError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for USKScene.NewNodeError, &type metadata for USKScene.NewNodeError, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type USKScene.NewNodeError and conformance USKScene.NewNodeError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError()
{
  result = lazy protocol witness table cache variable for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError;
  if (!lazy protocol witness table cache variable for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for USKNode.NewPropertyError, &type metadata for USKNode.NewPropertyError, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError);
  }

  return result;
}

uint64_t _s10RealityKit29__RKEntityActionSpecificationOWOcTm_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s10RealityKit29__RKEntityActionSpecificationOWOhTm_1(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s10RealityKit29__RKEntityHideActionArgumentsVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t AnimationState.defaultSource.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + 24))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVySfGMd, &_s17RealityFoundation14AnimationStateVySfGMR);
    if (swift_dynamicCast())
    {
      if (RETimelineEventGetDefaultSourceFloatValue())
      {
        v5 = *(a1 + 16);
LABEL_22:
        swift_dynamicCast();
        return (*(*(v5 - 8) + 56))(a2, 0, 1, v5);
      }

      return (*(*(*(a1 + 16) - 8) + 56))(a2, 1, 1, *(a1 + 16));
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVySdGMd, &_s17RealityFoundation14AnimationStateVySdGMR);
    if (swift_dynamicCast())
    {
      if (RETimelineEventGetDefaultSourceDoubleValue())
      {
        v5 = *(a1 + 16);
        goto LABEL_22;
      }

      return (*(*(*(a1 + 16) - 8) + 56))(a2, 1, 1, *(a1 + 16));
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVys5SIMD2VySfGGMd, &_s17RealityFoundation14AnimationStateVys5SIMD2VySfGGMR);
    if (swift_dynamicCast())
    {
      if (RETimelineEventGetDefaultSourceVector2FValue())
      {
        v8 = &_ss5SIMD2VySfGMd;
        v9 = &_ss5SIMD2VySfGMR;
LABEL_20:
        __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
LABEL_21:
        v5 = *(a1 + 16);
        goto LABEL_22;
      }

      return (*(*(*(a1 + 16) - 8) + 56))(a2, 1, 1, *(a1 + 16));
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVys5SIMD3VySfGGMd, &_s17RealityFoundation14AnimationStateVys5SIMD3VySfGGMR);
    if (swift_dynamicCast())
    {
      if (RETimelineEventGetDefaultSourceVector3FValue())
      {
        v8 = &_ss5SIMD3VySfGMd;
        v9 = &_ss5SIMD3VySfGMR;
        goto LABEL_20;
      }

      return (*(*(*(a1 + 16) - 8) + 56))(a2, 1, 1, *(a1 + 16));
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVys5SIMD4VySfGGMd, &_s17RealityFoundation14AnimationStateVys5SIMD4VySfGGMR);
    if (swift_dynamicCast())
    {
      if (RETimelineEventGetDefaultSourceVector4FValue())
      {
        v8 = &_ss5SIMD4VySfGMd;
        v9 = &_ss5SIMD4VySfGMR;
        goto LABEL_20;
      }

      return (*(*(*(a1 + 16) - 8) + 56))(a2, 1, 1, *(a1 + 16));
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVySo10simd_quatfaGMd, &_s17RealityFoundation14AnimationStateVySo10simd_quatfaGMR);
    if (swift_dynamicCast())
    {
      if (RETimelineEventGetDefaultSourceQuaternionFValue())
      {
        type metadata accessor for simd_quatf(0);
        goto LABEL_21;
      }

      return (*(*(*(a1 + 16) - 8) + 56))(a2, 1, 1, *(a1 + 16));
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVy0A3Kit9TransformVGMd, &_s17RealityFoundation14AnimationStateVy0A3Kit9TransformVGMR);
    if (!swift_dynamicCast())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVyAA15JointTransformsVGMd, &_s17RealityFoundation14AnimationStateVyAA15JointTransformsVGMR);
      if (swift_dynamicCast())
      {
        swift_dynamicCast();
        v11 = v15;
        v12 = v16;
        v13 = v17;
        AnimationState<>.defaultSource.getter(&v10);
        if (v10)
        {
          v14 = v10;
          v5 = *(a1 + 16);
          goto LABEL_22;
        }
      }

      return (*(*(*(a1 + 16) - 8) + 56))(a2, 1, 1, *(a1 + 16));
    }

    if (!RETimelineEventGetDefaultSourceSRTValue())
    {
      return (*(*(*(a1 + 16) - 8) + 56))(a2, 1, 1, *(a1 + 16));
    }

    if (one-time initialization token for identity != -1)
    {
      swift_once();
    }

    type metadata accessor for Optional();
    return swift_dynamicCast();
  }

  else
  {
    v6 = *(*(*(a1 + 16) - 8) + 56);

    return v6(a2, 1, 1);
  }
}

uint64_t AnimationState.defaultTarget.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + 24))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVySfGMd, &_s17RealityFoundation14AnimationStateVySfGMR);
    if (swift_dynamicCast())
    {
      if (RETimelineEventGetDefaultTargetFloatValue())
      {
        v5 = *(a1 + 16);
LABEL_22:
        swift_dynamicCast();
        return (*(*(v5 - 8) + 56))(a2, 0, 1, v5);
      }

      return (*(*(*(a1 + 16) - 8) + 56))(a2, 1, 1, *(a1 + 16));
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVySdGMd, &_s17RealityFoundation14AnimationStateVySdGMR);
    if (swift_dynamicCast())
    {
      if (RETimelineEventGetDefaultTargetDoubleValue())
      {
        v5 = *(a1 + 16);
        goto LABEL_22;
      }

      return (*(*(*(a1 + 16) - 8) + 56))(a2, 1, 1, *(a1 + 16));
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVys5SIMD2VySfGGMd, &_s17RealityFoundation14AnimationStateVys5SIMD2VySfGGMR);
    if (swift_dynamicCast())
    {
      if (RETimelineEventGetDefaultTargetVector2FValue())
      {
        v8 = &_ss5SIMD2VySfGMd;
        v9 = &_ss5SIMD2VySfGMR;
LABEL_20:
        __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
LABEL_21:
        v5 = *(a1 + 16);
        goto LABEL_22;
      }

      return (*(*(*(a1 + 16) - 8) + 56))(a2, 1, 1, *(a1 + 16));
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVys5SIMD3VySfGGMd, &_s17RealityFoundation14AnimationStateVys5SIMD3VySfGGMR);
    if (swift_dynamicCast())
    {
      if (RETimelineEventGetDefaultTargetVector3FValue())
      {
        v8 = &_ss5SIMD3VySfGMd;
        v9 = &_ss5SIMD3VySfGMR;
        goto LABEL_20;
      }

      return (*(*(*(a1 + 16) - 8) + 56))(a2, 1, 1, *(a1 + 16));
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVys5SIMD4VySfGGMd, &_s17RealityFoundation14AnimationStateVys5SIMD4VySfGGMR);
    if (swift_dynamicCast())
    {
      if (RETimelineEventGetDefaultTargetVector4FValue())
      {
        v8 = &_ss5SIMD4VySfGMd;
        v9 = &_ss5SIMD4VySfGMR;
        goto LABEL_20;
      }

      return (*(*(*(a1 + 16) - 8) + 56))(a2, 1, 1, *(a1 + 16));
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVySo10simd_quatfaGMd, &_s17RealityFoundation14AnimationStateVySo10simd_quatfaGMR);
    if (swift_dynamicCast())
    {
      if (RETimelineEventGetDefaultTargetQuaternionFValue())
      {
        type metadata accessor for simd_quatf(0);
        goto LABEL_21;
      }

      return (*(*(*(a1 + 16) - 8) + 56))(a2, 1, 1, *(a1 + 16));
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVy0A3Kit9TransformVGMd, &_s17RealityFoundation14AnimationStateVy0A3Kit9TransformVGMR);
    if (!swift_dynamicCast())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVyAA15JointTransformsVGMd, &_s17RealityFoundation14AnimationStateVyAA15JointTransformsVGMR);
      if (swift_dynamicCast())
      {
        swift_dynamicCast();
        v11 = v15;
        v12 = v16;
        v13 = v17;
        AnimationState<>.defaultTarget.getter(&v10);
        if (v10)
        {
          v14 = v10;
          v5 = *(a1 + 16);
          goto LABEL_22;
        }
      }

      return (*(*(*(a1 + 16) - 8) + 56))(a2, 1, 1, *(a1 + 16));
    }

    if (!RETimelineEventGetDefaultTargetSRTValue())
    {
      return (*(*(*(a1 + 16) - 8) + 56))(a2, 1, 1, *(a1 + 16));
    }

    if (one-time initialization token for identity != -1)
    {
      swift_once();
    }

    type metadata accessor for Optional();
    return swift_dynamicCast();
  }

  else
  {
    v6 = *(*(*(a1 + 16) - 8) + 56);

    return v6(a2, 1, 1);
  }
}

void AnimationState<>.defaultSource.getter(void (*a1)(uint64_t, uint64_t, uint64_t)@<X0>, char **a2@<X8>)
{
  v4 = *(v2 + 24);
  if (v4 && (SkeletalPoseJointCount = RETimelineEventGetSkeletalPoseJointCount(), SkeletalPoseJointCount >= 1))
  {
    v7 = SkeletalPoseJointCount;
    v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v8 + 16) = v7;
    a1(v4, v8 + 32, v7);
    *(v8 + 16) = v7;
    v9 = (v8 + 64);
    v10 = MEMORY[0x1E69E7CC0];
    do
    {
      v15 = *(v9 - 1);
      v16 = *(v9 - 2);
      v14 = *v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
      }

      v12 = *(v10 + 2);
      v11 = *(v10 + 3);
      if (v12 >= v11 >> 1)
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v10);
      }

      *(v10 + 2) = v12 + 1;
      v13 = &v10[48 * v12];
      *(v13 + 2) = v16;
      *(v13 + 3) = v15;
      *(v13 + 4) = v14;
      v9 += 3;
      --v7;
    }

    while (v7);
  }

  else
  {
    v10 = 0;
  }

  *a2 = v10;
}

uint64_t AnimationState.storeAnimatedValue<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  MEMORY[0x1EEE9AC00](v7);
  MEMORY[0x1EEE9AC00](v8);
  MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v48 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v48 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v48 - v18;
  MEMORY[0x1EEE9AC00](v20);
  MEMORY[0x1EEE9AC00](v21);
  v30 = &v48 - v29;
  v31 = v3[3];
  if (!v31)
  {
    return 0;
  }

  v52 = v24;
  v53 = v25;
  v50 = v28;
  v51 = v23;
  v54 = v27;
  v49 = v26;
  v32 = v22;
  v33 = *v3;
  v34 = v3[1];
  v35 = v3[2];
  v56 = *v3;
  v57 = v34;
  v58 = v35;
  v59 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVySfGMd, &_s17RealityFoundation14AnimationStateVySfGMR);
  v55 = a2;
  if (swift_dynamicCast())
  {
    v36 = *(v6 + 16);
    v36(v30, v32, a3);
    if (swift_dynamicCast())
    {
      v36(v54, v32, a3);
      swift_dynamicCast();
      return RETimelineEventSetAnimatedFloatValue();
    }
  }

  v56 = v33;
  v57 = v34;
  v58 = v35;
  v59 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVySdGMd, &_s17RealityFoundation14AnimationStateVySdGMR);
  if (swift_dynamicCast())
  {
    v38 = *(v6 + 16);
    v38(v19, v32, a3);
    if (swift_dynamicCast())
    {
      v38(v54, v32, a3);
      swift_dynamicCast();
      return RETimelineEventSetAnimatedDoubleValue();
    }
  }

  v56 = v33;
  v57 = v34;
  v58 = v35;
  v59 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVys5SIMD2VySfGGMd, &_s17RealityFoundation14AnimationStateVys5SIMD2VySfGGMR);
  if (swift_dynamicCast())
  {
    v39 = *(v6 + 16);
    v39(v16, v32, a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD2VySfGMd, &_ss5SIMD2VySfGMR);
    if (swift_dynamicCast())
    {
      v39(v54, v32, a3);
      swift_dynamicCast();
      return RETimelineEventSetAnimatedVector2FValue();
    }
  }

  v56 = v33;
  v57 = v34;
  v58 = v35;
  v59 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVys5SIMD3VySfGGMd, &_s17RealityFoundation14AnimationStateVys5SIMD3VySfGGMR);
  if (swift_dynamicCast())
  {
    v40 = *(v6 + 16);
    v40(v13, v32, a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
    if (swift_dynamicCast())
    {
      v40(v54, v32, a3);
      swift_dynamicCast();
      return RETimelineEventSetAnimatedVector3FValue();
    }
  }

  v56 = v33;
  v57 = v34;
  v58 = v35;
  v59 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVys5SIMD4VySfGGMd, &_s17RealityFoundation14AnimationStateVys5SIMD4VySfGGMR);
  if (swift_dynamicCast())
  {
    v41 = *(v6 + 16);
    v41(v53, v32, a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD4VySfGMd, &_ss5SIMD4VySfGMR);
    if (swift_dynamicCast())
    {
      v41(v54, v32, a3);
      swift_dynamicCast();
      return RETimelineEventSetAnimatedVector4FValue();
    }
  }

  v56 = v33;
  v57 = v34;
  v58 = v35;
  v59 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVySo10simd_quatfaGMd, &_s17RealityFoundation14AnimationStateVySo10simd_quatfaGMR);
  if (swift_dynamicCast())
  {
    v42 = *(v6 + 16);
    v42(v52, v32, a3);
    type metadata accessor for simd_quatf(0);
    if (swift_dynamicCast())
    {
      v42(v54, v32, a3);
      swift_dynamicCast();
      return RETimelineEventSetAnimatedQuaternionFValue();
    }
  }

  v56 = v33;
  v57 = v34;
  v58 = v35;
  v59 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVy0A3Kit9TransformVGMd, &_s17RealityFoundation14AnimationStateVy0A3Kit9TransformVGMR);
  if (swift_dynamicCast())
  {
    v43 = *(v6 + 16);
    v43(v51, v32, a3);
    if (swift_dynamicCast())
    {
      v43(v54, v32, a3);
      swift_dynamicCast();
      return RETimelineEventSetAnimatedSRTValue();
    }
  }

  v56 = v33;
  v57 = v34;
  v58 = v35;
  v59 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVyAA15JointTransformsVGMd, &_s17RealityFoundation14AnimationStateVyAA15JointTransformsVGMR);
  result = swift_dynamicCast();
  if (result)
  {
    v44 = *(v6 + 16);
    v44(v50, v32, a3);
    if (swift_dynamicCast())
    {

      v56 = v33;
      v57 = v34;
      v58 = v35;
      v59 = v31;
      swift_dynamicCast();
      v45 = v61;
      v44(v49, v32, a3);
      swift_dynamicCast();
      v46 = v60;
      if (v45 && RETimelineEventGetSkeletalPoseJointCount() == *(v46 + 16))
      {
        v47 = RETimelineEventSetAnimatedSkeletalPoseJoints();

        return v47;
      }
    }

    return 0;
  }

  return result;
}

uint64_t AnimationState<>.defaultSourceJoints(index:count:transforms:)(uint64_t a1, uint64_t a2, char **a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v5 = *(v4 + 24);
  if (!v5)
  {
    return 0;
  }

  result = RETimelineEventGetSkeletalPoseJointCount();
  if (result < 1)
  {
    return 0;
  }

  v11 = a1 + a2;
  if (__OFADD__(a1, a2))
  {
    __break(1u);
  }

  else
  {
    if (result < v11)
    {
      return 0;
    }

    v13 = *a3;
    if (*(*a3 + 2) < a2)
    {

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a2, 0, MEMORY[0x1E69E7CC0]);
      v13 = result;
      *a3 = result;
    }

    if (v11 >= a1)
    {
      if (v11 == a1)
      {
        return 1;
      }

      do
      {
        v14 = a4(v5, a1);
        v12 = v14 != 0;
        if (!v14)
        {
          break;
        }

        v19 = v14[1];
        v20 = *v14;
        v18 = v14[2];
        if (one-time initialization token for identity != -1)
        {
          swift_once();
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 2) + 1, 1, v13);
        }

        v16 = *(v13 + 2);
        v15 = *(v13 + 3);
        if (v16 >= v15 >> 1)
        {
          v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v13);
        }

        *(v13 + 2) = v16 + 1;
        v17 = &v13[48 * v16];
        *(v17 + 2) = v20;
        *(v17 + 3) = v19;
        *(v17 + 4) = v18;
        *a3 = v13;
        ++a1;
        --a2;
      }

      while (a2);
      return v12;
    }
  }

  __break(1u);
  return result;
}

uint64_t AnimationState<>.storeAnimatedJoints(transforms:jointIndex:)(__n128 *a1, uint64_t a2)
{
  if (!*(v2 + 24))
  {
    return 0;
  }

  result = RETimelineEventGetSkeletalPoseJointCount();
  v6 = a1[1].n128_u64[0];
  if (!__OFADD__(a2, v6))
  {
    if (result >= (a2 + v6))
    {
      v8 = 0;
      for (i = a1 + 4; ; i += 3)
      {
        v7 = v6 == v8;
        if (v6 == v8)
        {
          break;
        }

        if (__OFADD__(a2, v8))
        {
          __break(1u);
          goto LABEL_12;
        }

        ++v8;
        result = RETimelineEventSetAnimatedSkeletalPoseJointValue();
        if ((result & 1) == 0)
        {
          return v7;
        }
      }

      return v7;
    }

    return 0;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t type metadata instantiation function for AnimationState(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_17RealityFoundation26SpatialStereoImageMetadataVSg(uint64_t a1)
{
  v1 = *(a1 + 312);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for ImagePresentationComponent.ImagePair.MetadataPair(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 696))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 344);
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

uint64_t storeEnumTagSinglePayload for ImagePresentationComponent.ImagePair.MetadataPair(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
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
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 696) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 696) = 0;
    }

    if (a2)
    {
      *(result + 344) = a2;
    }
  }

  return result;
}

uint64_t specialized static ImagePresentationComponent.ImagePair.imagePairAndMetadata(imageSource:options:)(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(v3 + 1352) = a2;
  *(v3 + 680) = a1;
  *(v3 + 2819) = *a3;
  return MEMORY[0x1EEE6DFA0](specialized static ImagePresentationComponent.ImagePair.imagePairAndMetadata(imageSource:options:), 0, 0);
}

uint64_t specialized static ImagePresentationComponent.ImagePair.imagePairAndMetadata(imageSource:options:)()
{
  SpatialStereoImageMetadata.init(source:)(*(v0 + 1352), (v0 + 16));
  v1 = *(v0 + 2819);
  memcpy((v0 + 1360), (v0 + 16), 0x298uLL);
  destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError();
  *(v0 + 2024) = *(v0 + 648);
  *(v0 + 2820) = *(v0 + 656);
  *(v0 + 2792) = *(v0 + 660);
  *(v0 + 2821) = *(v0 + 668);
  *(v0 + 2817) = v1;
  outlined init with copy of SpatialStereoImageMetadata(v0 + 16, v0 + 2032);
  v2 = swift_task_alloc();
  *(v0 + 2696) = v2;
  *v2 = v0;
  v2[1] = specialized static ImagePresentationComponent.ImagePair.imagePairAndMetadata(imageSource:options:);

  return CGImageSourceRef.spatialTextures(metadata:options:)(v0 + 16, (v0 + 2817));
}

{
  v1 = *(v0 + 2704);
  v2 = *(v0 + 2024);

  outlined destroy of SpatialStereoImageMetadata(v0 + 16);
  v3 = *(v0 + 48);
  v4 = *(v0 + 72);
  *(v0 + 2800) = v4;
  v5 = *(v0 + 16);
  v6 = *(v0 + 20);
  *(v0 + 2804) = v5;
  *(v0 + 2808) = v6;
  v7 = *(v0 + 24);
  *(v0 + 2812) = v7;
  if (v2 == v3)
  {
    v8 = 0;
LABEL_5:
    v9 = *(v0 + 2016);
    v59 = *(v0 + 1360);
    v57 = *(v0 + 1392);
    v58 = *(v0 + 1376);
    v55 = *(v0 + 1424);
    v56 = *(v0 + 1408);
    v53 = *(v0 + 1456);
    v54 = *(v0 + 1440);
    v51 = *(v0 + 1488);
    v52 = *(v0 + 1472);
    v50 = *(v0 + 1504);
    v10 = *(v0 + 1520);
    v11 = *(v0 + 1536);
    v12 = *(v0 + 1552);
    v13 = *(v0 + 1568);
    v14 = *(v0 + 1584);
    v15 = *(v0 + 1600);
    v16 = *(v0 + 1616);
    v17 = *(v0 + 1632);
    v18 = *(v0 + 1648);
    v19 = *(v0 + 1664);
    v20 = *(v0 + 1680);
    v21 = *(v0 + 1696);
    v22 = *(v0 + 1712);
    v23 = *(v0 + 1728);
    v24 = *(v0 + 1744);
    v25 = *(v0 + 1760);
    v26 = *(v0 + 1776);
    v27 = *(v0 + 1792);
    v28 = *(v0 + 1808);
    v29 = *(v0 + 1824);
    v30 = *(v0 + 1840);
    v31 = *(v0 + 1856);
    v32 = *(v0 + 2704);
    v33 = *(v0 + 2821);
    v34 = *(v0 + 2820);
    v35 = *(v0 + 2024);
    v36 = *(v0 + 680);
    v37 = *(v0 + 1872);
    v38 = *(v0 + 1888);
    v39 = *(v0 + 1904);
    v40 = *(v0 + 1920);
    v41 = *(v0 + 1936);
    v42 = *(v0 + 1952);
    v43 = *(v0 + 1968);
    v44 = *(v0 + 1984);
    v45 = *(v0 + 2000);
    *(v36 + 60) = *(v0 + 2792);
    *(v36 + 80) = v59;
    *(v36 + 96) = v58;
    *(v36 + 112) = v57;
    *(v36 + 128) = v56;
    *(v36 + 144) = v55;
    *(v36 + 160) = v54;
    *(v36 + 176) = v53;
    *(v36 + 192) = v52;
    *(v36 + 208) = v51;
    *(v36 + 224) = v50;
    *(v36 + 240) = v10;
    *(v36 + 256) = v11;
    *(v36 + 272) = v12;
    *(v36 + 288) = v13;
    *(v36 + 304) = v14;
    *(v36 + 320) = v15;
    *(v36 + 336) = v16;
    *(v36 + 352) = v17;
    *(v36 + 368) = v18;
    *(v36 + 384) = v19;
    *(v36 + 400) = v20;
    *(v36 + 416) = v21;
    *(v36 + 432) = v22;
    *(v36 + 448) = v23;
    *(v36 + 464) = v24;
    *(v36 + 480) = v25;
    *(v36 + 496) = v26;
    *(v36 + 512) = v27;
    *(v36 + 528) = v28;
    *(v36 + 544) = v29;
    *(v36 + 560) = v30;
    *(v36 + 576) = v31;
    *(v36 + 592) = v37;
    *(v36 + 608) = v38;
    *(v36 + 624) = v39;
    *(v36 + 640) = v40;
    *(v36 + 656) = v41;
    *(v36 + 672) = v42;
    *(v36 + 688) = v43;
    *(v36 + 704) = v44;
    *(v36 + 720) = v45;
    *v36 = v32;
    *(v36 + 8) = v8;
    *(v36 + 16) = v4;
    *(v36 + 24) = v1;
    *(v36 + 32) = v4 | (v5 << 32);
    *(v36 + 40) = v6 | (v7 << 32);
    *(v36 + 48) = v35;
    *(v36 + 56) = v34;
    *(v36 + 68) = v33;
    *(v36 + 736) = v9;
    v46 = *(v0 + 8);

    return v46();
  }

  if (*(v0 + 2024) == *(v0 + 352))
  {
    v8 = 1;
    goto LABEL_5;
  }

  *(v0 + 2818) = *(v0 + 2819);
  v48 = swift_task_alloc();
  *(v0 + 2760) = v48;
  *v48 = v0;
  v48[1] = specialized static ImagePresentationComponent.ImagePair.imagePairAndMetadata(imageSource:options:);
  v49 = *(v0 + 2024);

  return CGImageSourceRef.monoTexture(index:options:)(v49, (v0 + 2818));
}

{
  v2 = *(v0 + 2016);
  v51 = *(v0 + 1376);
  v52 = *(v0 + 1360);
  v49 = *(v0 + 1408);
  v50 = *(v0 + 1392);
  v47 = *(v0 + 1440);
  v48 = *(v0 + 1424);
  v45 = *(v0 + 1472);
  v46 = *(v0 + 1456);
  v43 = *(v0 + 1504);
  v44 = *(v0 + 1488);
  v42 = *(v0 + 1520);
  v3 = *(v0 + 1536);
  v4 = *(v0 + 1552);
  v5 = *(v0 + 1568);
  v6 = *(v0 + 1584);
  v7 = *(v0 + 1600);
  v8 = *(v0 + 1616);
  v9 = *(v0 + 1632);
  v10 = *(v0 + 1648);
  v11 = *(v0 + 1664);
  v12 = *(v0 + 1680);
  v13 = *(v0 + 1696);
  v14 = *(v0 + 1712);
  v15 = *(v0 + 1728);
  v16 = *(v0 + 1744);
  v17 = *(v0 + 1760);
  v18 = *(v0 + 1776);
  v19 = *(v0 + 1792);
  v20 = *(v0 + 1808);
  v21 = *(v0 + 1824);
  v22 = *(v0 + 1840);
  v23 = *(v0 + 1856);
  v24 = *(v0 + 2776);
  v25 = *(v0 + 2704);
  v26 = *(v0 + 2821);
  v27 = *(v0 + 2820);
  v28 = *(v0 + 2024);
  v29 = *(v0 + 680);
  v30 = *(v0 + 1872);
  v31 = *(v0 + 1888);
  v32 = *(v0 + 1904);
  v33 = *(v0 + 1920);
  v34 = *(v0 + 1936);
  v35 = *(v0 + 1952);
  v36 = *(v0 + 1968);
  v37 = *(v0 + 1984);
  v38 = *(v0 + 2000);
  v39 = *(v0 + 2792);
  *(v29 + 32) = *(v0 + 2800);
  *(v29 + 16) = v39;
  *(v29 + 60) = v39;
  *(v29 + 80) = v52;
  *(v29 + 96) = v51;
  *(v29 + 112) = v50;
  *(v29 + 128) = v49;
  *(v29 + 144) = v48;
  *(v29 + 160) = v47;
  *(v29 + 176) = v46;
  *(v29 + 192) = v45;
  *(v29 + 208) = v44;
  *(v29 + 224) = v43;
  *(v29 + 240) = v42;
  *(v29 + 256) = v3;
  *(v29 + 272) = v4;
  *(v29 + 288) = v5;
  *(v29 + 304) = v6;
  *(v29 + 320) = v7;
  *(v29 + 336) = v8;
  *(v29 + 352) = v9;
  *(v29 + 368) = v10;
  *(v29 + 384) = v11;
  *(v29 + 400) = v12;
  *(v29 + 416) = v13;
  *(v29 + 432) = v14;
  *(v29 + 448) = v15;
  *(v29 + 464) = v16;
  *(v29 + 480) = v17;
  *(v29 + 496) = v18;
  *(v29 + 512) = v19;
  *(v29 + 528) = v20;
  *(v29 + 544) = v21;
  *(v29 + 560) = v22;
  *(v29 + 576) = v23;
  *(v29 + 592) = v30;
  *(v29 + 608) = v31;
  *(v29 + 624) = v32;
  *(v29 + 640) = v33;
  *(v29 + 656) = v34;
  *(v29 + 672) = v35;
  *(v29 + 688) = v36;
  *(v29 + 704) = v37;
  *(v29 + 720) = v38;
  *v29 = v24;
  *(v29 + 8) = 0;
  *(v29 + 24) = v25;
  *(v29 + 48) = v28;
  *(v29 + 56) = v27;
  *(v29 + 68) = v26;
  *(v29 + 736) = v2;
  v40 = *(v0 + 8);

  return v40();
}

{
  v2 = *(v0 + 1344);
  v49 = *(v0 + 704);
  v47 = *(v0 + 736);
  v48 = *(v0 + 720);
  v45 = *(v0 + 768);
  v46 = *(v0 + 752);
  v43 = *(v0 + 800);
  v44 = *(v0 + 784);
  v41 = *(v0 + 832);
  v42 = *(v0 + 816);
  v3 = *(v0 + 848);
  v4 = *(v0 + 864);
  v5 = *(v0 + 880);
  v6 = *(v0 + 896);
  v7 = *(v0 + 912);
  v8 = *(v0 + 928);
  v9 = *(v0 + 944);
  v10 = *(v0 + 960);
  v11 = *(v0 + 976);
  v12 = *(v0 + 992);
  v13 = *(v0 + 1008);
  v14 = *(v0 + 1024);
  v15 = *(v0 + 1040);
  v16 = *(v0 + 1056);
  v17 = *(v0 + 1072);
  v18 = *(v0 + 1088);
  v19 = *(v0 + 1104);
  v20 = *(v0 + 1120);
  v21 = *(v0 + 1136);
  v22 = *(v0 + 1152);
  v23 = *(v0 + 1168);
  v24 = *(v0 + 1184);
  v25 = *(v0 + 2784);
  v26 = *(v0 + 2736);
  v27 = *(v0 + 2728);
  v28 = *(v0 + 2720);
  v29 = *(v0 + 680);
  v30 = *(v0 + 1200);
  v31 = *(v0 + 1216);
  v32 = *(v0 + 1232);
  v33 = *(v0 + 1248);
  v34 = *(v0 + 1264);
  v35 = *(v0 + 1280);
  v36 = *(v0 + 1296);
  v37 = *(v0 + 1312);
  v38 = *(v0 + 1328);
  *(v29 + 80) = *(v0 + 688);
  *(v29 + 96) = v49;
  *(v29 + 112) = v48;
  *(v29 + 128) = v47;
  *(v29 + 144) = v46;
  *(v29 + 160) = v45;
  *(v29 + 176) = v44;
  *(v29 + 192) = v43;
  *(v29 + 208) = v42;
  *(v29 + 224) = v41;
  *(v29 + 240) = v3;
  *(v29 + 256) = v4;
  *(v29 + 272) = v5;
  *(v29 + 288) = v6;
  *(v29 + 304) = v7;
  *(v29 + 320) = v8;
  *(v29 + 336) = v9;
  *(v29 + 352) = v10;
  *(v29 + 368) = v11;
  *(v29 + 384) = v12;
  *(v29 + 400) = v13;
  *(v29 + 416) = v14;
  *(v29 + 432) = v15;
  *(v29 + 448) = v16;
  *(v29 + 464) = v17;
  *(v29 + 480) = v18;
  *(v29 + 496) = v19;
  *(v29 + 512) = v20;
  *(v29 + 528) = v21;
  *(v29 + 544) = v22;
  *(v29 + 560) = v23;
  *(v29 + 576) = v24;
  *(v29 + 592) = v30;
  *(v29 + 608) = v31;
  *(v29 + 624) = v32;
  *(v29 + 640) = v33;
  *(v29 + 656) = v34;
  *(v29 + 672) = v35;
  *(v29 + 688) = v36;
  *(v29 + 704) = v37;
  *(v29 + 720) = v38;
  *v29 = v25;
  *(v29 + 8) = 0;
  *(v29 + 16) = HIDWORD(v27);
  *(v29 + 24) = 0;
  *(v29 + 32) = 0;
  *(v29 + 40) = 0;
  *(v29 + 48) = v28;
  *(v29 + 56) = v27;
  *(v29 + 60) = HIDWORD(v27);
  *(v29 + 64) = v26;
  *(v29 + 68) = BYTE4(v26) & 1;
  *(v29 + 736) = v2;
  v39 = *(v0 + 8);

  return v39();
}

{
  return (*(v0 + 8))();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  return (*(v0 + 8))();
}

uint64_t specialized static ImagePresentationComponent.ImagePair.imagePairAndMetadata(imageSource:options:)(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 2704) = a1;
  *(v3 + 2712) = v1;

  if (v1)
  {
    outlined destroy of SpatialStereoImageMetadata(v3 + 16);
    outlined destroy of SpatialStereoImageMetadata(v3 + 16);
    v4 = specialized static ImagePresentationComponent.ImagePair.imagePairAndMetadata(imageSource:options:);
  }

  else
  {
    v4 = specialized static ImagePresentationComponent.ImagePair.imagePairAndMetadata(imageSource:options:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v4 = *v2;
  *(*v2 + 2752) = v1;

  if (v1)
  {
    v5 = specialized static ImagePresentationComponent.ImagePair.imagePairAndMetadata(imageSource:options:);
  }

  else
  {
    *(v4 + 2784) = a1;
    v5 = specialized static ImagePresentationComponent.ImagePair.imagePairAndMetadata(imageSource:options:);
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

{
  v4 = *v2;
  *(*v2 + 2768) = v1;

  if (v1)
  {
    outlined destroy of SpatialStereoImageMetadata(v4 + 16);
    v5 = specialized static ImagePresentationComponent.ImagePair.imagePairAndMetadata(imageSource:options:);
  }

  else
  {

    *(v4 + 2776) = a1;
    v5 = specialized static ImagePresentationComponent.ImagePair.imagePairAndMetadata(imageSource:options:);
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t specialized ImagePresentationComponent.ImagePair.init(contentsOf:options:)(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(v3 + 1512) = a2;
  *(v3 + 760) = a1;
  *(v3 + 1589) = *a3;
  return MEMORY[0x1EEE6DFA0](specialized ImagePresentationComponent.ImagePair.init(contentsOf:options:), 0, 0);
}

uint64_t specialized ImagePresentationComponent.ImagePair.init(contentsOf:options:)@<X0>(NSURL *a1@<X8>)
{
  URL._bridgeToObjectiveC()(a1);
  v3 = v2;
  v4 = CGImageSourceCreateWithURL(v2, 0);
  *(v1 + 1520) = v4;

  if (v4)
  {
    *(v1 + 1588) = *(v1 + 1589);
    v5 = v4;
    v6 = swift_task_alloc();
    *(v1 + 1528) = v6;
    *v6 = v1;
    v6[1] = specialized ImagePresentationComponent.ImagePair.init(contentsOf:options:);

    return specialized static ImagePresentationComponent.ImagePair.imagePairAndMetadata(imageSource:options:)(v1 + 16, v5, (v1 + 1588));
  }

  else
  {
    lazy protocol witness table accessor for type ImagePresentationComponent.ImagePresentationComponentError and conformance ImagePresentationComponent.ImagePresentationComponentError();
    swift_allocError();
    swift_willThrow();
    v8 = *(v1 + 1512);
    v9 = type metadata accessor for URL();
    (*(*(v9 - 8) + 8))(v8, v9);
    v10 = *(v1 + 8);

    return v10();
  }
}

uint64_t specialized ImagePresentationComponent.ImagePair.init(contentsOf:options:)()
{
  v2 = *v1;
  v3 = *v1;
  v3[192] = v0;
  v4 = v2[2];
  v3[193] = v4;
  v5 = v2[3];
  v3[194] = v5;
  v6 = *(v3 + 8);
  *(v3 + 396) = v6;
  v55 = *(v3 + 7);
  v56 = *(v3 + 5);
  *(v3 + 195) = v56;
  v3[197] = v55;
  v7 = *(v3 + 72);
  v8 = *(v3 + 76);
  v40 = *(v3 + 84);
  v24 = *(v3 + 9);
  v25 = *(v3 + 7);
  v18 = *(v3 + 8);
  v19 = *(v3 + 6);
  v22 = *(v3 + 13);
  v23 = *(v3 + 11);
  v16 = *(v3 + 12);
  v17 = *(v3 + 10);
  v20 = *(v3 + 17);
  v21 = *(v3 + 15);
  v14 = *(v3 + 16);
  v15 = *(v3 + 14);
  v54 = *(v3 + 19);
  v39 = *(v3 + 18);
  v53 = *(v3 + 21);
  v38 = *(v3 + 20);
  v52 = *(v3 + 23);
  v37 = *(v3 + 22);
  v51 = *(v3 + 25);
  v36 = *(v3 + 24);
  v50 = *(v3 + 27);
  v35 = *(v3 + 26);
  v49 = *(v3 + 29);
  v34 = *(v3 + 28);
  v48 = *(v3 + 31);
  v33 = *(v3 + 30);
  v47 = *(v3 + 33);
  v31 = *(v3 + 34);
  v32 = *(v3 + 32);
  v45 = *(v3 + 37);
  v46 = *(v3 + 35);
  v29 = *(v3 + 38);
  v30 = *(v3 + 36);
  v43 = *(v3 + 41);
  v44 = *(v3 + 39);
  v27 = *(v3 + 42);
  v28 = *(v3 + 40);
  v41 = *(v3 + 45);
  v42 = *(v3 + 43);
  v26 = *(v3 + 44);
  v9 = v2[92];
  v10 = v2[93];
  v11 = v2[94];

  if (v0)
  {
    v12 = specialized ImagePresentationComponent.ImagePair.init(contentsOf:options:);
  }

  else
  {
    *(v3 + 53) = v19;
    *(v3 + 54) = v25;
    *(v3 + 55) = v18;
    *(v3 + 56) = v24;
    *(v3 + 57) = v17;
    *(v3 + 58) = v23;
    *(v3 + 59) = v16;
    *(v3 + 60) = v22;
    *(v3 + 61) = v15;
    *(v3 + 62) = v21;
    *(v3 + 63) = v14;
    *(v3 + 64) = v20;
    v3[96] = v4;
    v3[97] = v5;
    *(v3 + 196) = v6;
    *(v3 + 99) = v56;
    *(v3 + 101) = v55;
    *(v3 + 824) = v7;
    *(v3 + 828) = v8;
    *(v3 + 836) = v40;
    *(v3 + 65) = v39;
    *(v3 + 66) = v54;
    *(v3 + 67) = v38;
    *(v3 + 68) = v53;
    *(v3 + 69) = v37;
    *(v3 + 70) = v52;
    *(v3 + 71) = v36;
    *(v3 + 72) = v51;
    *(v3 + 73) = v35;
    *(v3 + 74) = v50;
    *(v3 + 75) = v34;
    *(v3 + 76) = v49;
    *(v3 + 77) = v33;
    *(v3 + 78) = v48;
    *(v3 + 79) = v32;
    *(v3 + 80) = v47;
    *(v3 + 81) = v31;
    *(v3 + 82) = v46;
    *(v3 + 83) = v30;
    *(v3 + 84) = v45;
    *(v3 + 85) = v29;
    *(v3 + 86) = v44;
    *(v3 + 87) = v28;
    *(v3 + 88) = v43;
    *(v3 + 89) = v27;
    *(v3 + 90) = v42;
    *(v3 + 91) = v26;
    *(v3 + 92) = v41;
    v3[186] = v9;
    v3[187] = v10;
    v3[188] = v11;
    outlined destroy of ImagePresentationComponent.ImagePair.MetadataPair((v3 + 102));
    v12 = specialized ImagePresentationComponent.ImagePair.init(contentsOf:options:);
  }

  return MEMORY[0x1EEE6DFA0](v12, 0, 0);
}

{
  v1 = *(v0 + 1576);
  v11 = *(v0 + 1560);
  v2 = *(v0 + 1584);
  v3 = *(v0 + 1552);
  v4 = *(v0 + 1544);
  v5 = *(v0 + 1520);
  v6 = *(v0 + 1512);
  v7 = *(v0 + 760);

  v8 = type metadata accessor for URL();
  (*(*(v8 - 8) + 8))(v6, v8);
  *v7 = v4;
  *(v7 + 8) = v3;
  *(v7 + 16) = v2;
  *(v7 + 24) = v11;
  *(v7 + 40) = v1;
  v9 = *(v0 + 8);

  return v9();
}

{
  v1 = v0[190];

  v2 = v0[189];
  v3 = type metadata accessor for URL();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v0[1];

  return v4();
}

void specialized ImagePresentationComponent.ImagePair.init(imageSource:options:)(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v5 = a1;
  SpatialStereoImageMetadata.init(source:)(v5, &v28);
  v6 = v33;
  v7 = v34;
  LOBYTE(v27[0]) = v4;
  v8 = CGImageSourceRef.spatialTextures(metadata:options:)(&v28, v27);
  if (v8)
  {
    v9 = v8;
    v10 = v31;
    v11 = v31 | (v28 << 32);
    v12 = v29;
    if (v6 == v30)
    {
      v13 = 0;
LABEL_14:

      outlined destroy of SpatialStereoImageMetadata(&v28);
      v15 = v9;
      v7 = v10;
      goto LABEL_15;
    }

    if (v6 == v32)
    {
      v13 = 1;
      goto LABEL_14;
    }

    outlined destroy of SpatialStereoImageMetadata(&v28);
    LOBYTE(v27[0]) = v4;
    v21 = CGImageSourceRef.monoTexture(index:options:)(v6, v27);
    if (v21)
    {
      v15 = v21;

      v13 = 0;
      goto LABEL_15;
    }

    if (one-time initialization token for ImageLogger != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, ImageLogger);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1C1358000, v23, v24, "ImagePair failed to load monoscopic image", v25, 2u);
      MEMORY[0x1C6902A30](v25, -1, -1);
    }

    v26 = specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    outlined init with copy of __REAssetService(v26 + 120, v27);
    v15 = closure #1 in static TextureResource.builtinTexture(named:)(v27, 0xD000000000000013, 0x80000001C18EF580);

    __swift_destroy_boxed_opaque_existential_1(v27);
    v13 = 0;
    goto LABEL_11;
  }

  outlined destroy of SpatialStereoImageMetadata(&v28);
  LOBYTE(v27[0]) = v4;
  v14 = CGImageSourceRef.monoTexture(index:options:)(v6, v27);
  if (!v14)
  {
    if (one-time initialization token for ImageLogger != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, ImageLogger);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1C1358000, v17, v18, "ImagePair failed to load monoscopic image", v19, 2u);
      MEMORY[0x1C6902A30](v19, -1, -1);
    }

    v20 = specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    outlined init with copy of __REAssetService(v20 + 120, v27);
    v15 = closure #1 in static TextureResource.builtinTexture(named:)(v27, 0xD000000000000013, 0x80000001C18EF580);

    __swift_destroy_boxed_opaque_existential_1(v27);
    v13 = 0;
    v9 = 0;
    v11 = 0;
    v12 = 0;
LABEL_11:
    v7 = 1;
    goto LABEL_15;
  }

  v15 = v14;

  v13 = 0;
  v9 = 0;
  v11 = 0;
  v12 = 0;
LABEL_15:
  *a3 = v15;
  *(a3 + 8) = v13;
  *(a3 + 16) = v7;
  *(a3 + 24) = v9;
  *(a3 + 32) = v11;
  *(a3 + 40) = v12;
}

uint64_t __RKEntitySpinAction.__allocating_init(targetEntity:duration:iterations:direction:axis:)(uint64_t a1, char *a2, float a3, float a4, __n128 a5)
{
  v9 = swift_allocObject();
  v10 = *a2;
  *(v9 + 152) = 0;
  *(v9 + 160) = 1;
  *(v9 + 168) = 0u;
  *(v9 + 184) = 0u;
  *(v9 + 200) = 0u;
  *(v9 + 216) = 0u;
  *(v9 + 232) = 0u;
  *(v9 + 108) = a3;
  *(v9 + 112) = a4;
  *(v9 + 128) = a5;
  *(v9 + 144) = v10;
  return __RKEntityAction.init(targetEntity:)(a1);
}

RealityKit::__RKEntitySpinDirectionType_optional __swiftcall __RKEntitySpinDirectionType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of __RKEntitySpinDirectionType.init(rawValue:), v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *v4 = v7;
  return result;
}

uint64_t __RKEntitySpinDirectionType.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x7369776B636F6C63;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance __RKEntitySpinDirectionType(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v3 = 0x7369776B636F6C63;
  }

  if (v2)
  {
    v4 = 0xE900000000000065;
  }

  else
  {
    v4 = 0x80000001C18DDB90;
  }

  if (*a2)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v5 = 0x7369776B636F6C63;
  }

  if (*a2)
  {
    v6 = 0x80000001C18DDB90;
  }

  else
  {
    v6 = 0xE900000000000065;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance __RKEntitySpinDirectionType()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double protocol witness for Hashable.hash(into:) in conformance __RKEntitySpinDirectionType(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance __RKEntitySpinDirectionType()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.init(rawValue:) in conformance __RKEntitySpinDirectionType(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of __RKEntitySpinDirectionType.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance __RKEntitySpinDirectionType(unint64_t *a1@<X8>)
{
  v2 = 0x80000001C18DDB90;
  v3 = 0x7369776B636F6C63;
  if (*v1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v2 = 0xE900000000000065;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t __RKEntitySpinAction.init(targetEntity:duration:iterations:direction:axis:)(uint64_t a1, char *a2, float a3, float a4, __n128 a5)
{
  v6 = *a2;
  *(v5 + 152) = 0;
  *(v5 + 160) = 1;
  *(v5 + 168) = 0u;
  *(v5 + 184) = 0u;
  *(v5 + 200) = 0u;
  *(v5 + 216) = 0u;
  *(v5 + 232) = 0u;
  *(v5 + 108) = a3;
  *(v5 + 112) = a4;
  *(v5 + 128) = a5;
  *(v5 + 144) = v6;
  return __RKEntityAction.init(targetEntity:)(a1);
}

uint64_t __RKEntitySpinAction.perform(with:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So29REAnimationHasTerminatedEventVGAF15AnimationEventsO08PlaybackL0VGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So29REAnimationHasTerminatedEventVGAF15AnimationEventsO08PlaybackL0VGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v76 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So28REAnimationHasCompletedEventVGAF15AnimationEventsO08PlaybackL0VGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So28REAnimationHasCompletedEventVGAF15AnimationEventsO08PlaybackL0VGMR);
  v9 = *(v8 - 1);
  MEMORY[0x1EEE9AC00](v8);
  v87 = &v76 - v10;
  v11 = *(a1 + 8);
  swift_beginAccess();
  v12 = v2[1].i64[0];
  v99 = 91;
  v100 = 0xE100000000000000;
  v89 = v8;
  v88 = v9;
  if (v12)
  {
    v95 = 0;
    v96 = 0xE000000000000000;
    v104 = v12;

    _print_unlocked<A, B>(_:_:)();
    v13 = v95;
    v14 = v96;
  }

  else
  {
    v14 = 0xE300000000000000;
    v13 = 7104878;
  }

  MEMORY[0x1C68F3410](v13, v14);

  MEMORY[0x1C68F3410](8285, 0xE200000000000000);
  v15 = StaticString.description.getter();
  MEMORY[0x1C68F3410](v15);

  MEMORY[0x1C68F3410](8250, 0xE200000000000000);

  v17 = v99;
  v16 = v100;
  v18 = v2[1].i64[0];
  if (!v18)
  {
    static os_log_type_t.error.getter();
    specialized InteractionsLogger.log(_:_:)();
LABEL_28:

    return 0;
  }

  swift_beginAccess();
  if (v2[6].i8[8] == 1 && v2[6].i64[0] == 1)
  {
    swift_beginAccess();
    if (v2[6].i8[9] == 1)
    {

LABEL_14:
      v99 = v17;
      v100 = v16;
      v21 = static os_log_type_t.error.getter();
      specialized InteractionsLogger.log(_:_:)(v21, &v99);

      return 0;
    }
  }

  if (!RESceneGetECSManagerNullable())
  {
    goto LABEL_14;
  }

  v86 = v18;
  v19 = *(v18 + 16);
  RERigidBodyComponentGetComponentType();
  ComponentByClass = REEntityGetComponentByClass();
  if (ComponentByClass)
  {
    MotionType = RERigidBodyComponentGetMotionType();
    if (MotionType != 1)
    {
      RERigidBodyComponentSetMotionType();
      RENetworkMarkComponentDirty();
    }
  }

  else
  {
    MotionType = 0;
  }

  if (!REEntityGetSceneNullable() || !RESceneGetECSManagerNullable() || (ServiceLocator = REECSManagerGetServiceLocator(), !MEMORY[0x1C68FE1F0](ServiceLocator)))
  {

    goto LABEL_28;
  }

  v84 = v19;
  v23 = v2[6].i64[0];
  v24 = v2[6].i8[8];
  v2[6].i64[0] = 1;
  v2[6].i8[8] = 1;
  v99 = v23;
  LOBYTE(v100) = v24;
  __RKEntityAction.state.didset(&v99);
  if (v2[7].f32[0] <= 0.0)
  {
    v2[7].i32[0] = 1065353216;
  }

  v25 = v2[9].i8[0];
  if (v25)
  {
    v26 = 0x80000001C18DDB90;
  }

  else
  {
    v26 = 0xE900000000000065;
  }

  v83 = MotionType;
  if ((v25 & 1) != 0 || v26 != 0xE900000000000065)
  {
    MotionType = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (MotionType)
    {
      v27 = -0.19635;
    }

    else
    {
      v27 = 0.19635;
    }
  }

  else
  {

    v27 = -0.19635;
  }

  v29 = v2[7].f32[0] + -1.0;
  v30 = COERCE_UNSIGNED_INT(fabs(v29));
  if (v30 > 2139095039)
  {
    __break(1u);
    goto LABEL_52;
  }

  v30 = 3741319169;
  if (v29 <= -9.2234e18)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (v29 >= 9.2234e18)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v82 = v11;
  v77 = v17;
  v78 = v7;
  v79 = v5;
  v80 = v16;
  v30 = &v105;
  v81 = v4;
  v4 = v29;
  if ((v29 & 0x8000000000000000) == 0)
  {
    v31 = 0;
    v26 = MEMORY[0x1E69E7CC0];
    v90 = xmmword_1C1887620;
    while (1)
    {
      for (i = 0; i != 32; ++i)
      {
        v91 = v2[8];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v26 + 2) + 1, 1, v26);
        }

        v34 = *(v26 + 2);
        v33 = *(v26 + 3);
        MotionType = v34 + 1;
        if (v34 >= v33 >> 1)
        {
          v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v26);
        }

        v35 = __sincosf_stret((v27 * i) * 0.5);
        v36 = vmulq_n_f32(v91, v35.__sinval);
        v36.i32[3] = LODWORD(v35.__cosval);
        *(v26 + 2) = MotionType;
        v37 = &v26[48 * v34];
        *(v37 + 2) = v90;
        *(v37 + 3) = v36;
        *(v37 + 8) = 0;
        *(v37 + 9) = 0;
      }

      if (v31 == v4)
      {
        break;
      }

      if (__OFADD__(v31++, 1))
      {
        __break(1u);
        break;
      }
    }

    v91 = v2[8];
    v30 = *(v26 + 3);
    v4 = v34 + 2;
    if ((v34 + 2) <= (v30 >> 1))
    {
      goto LABEL_49;
    }

    goto LABEL_55;
  }

LABEL_54:
  __break(1u);
LABEL_55:
  v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v4, 1, v26);
LABEL_49:
  v39 = __sincosf_stret((v27 * 32.0) * 0.5);
  v40 = vmulq_n_f32(v91, v39.__sinval);
  v40.i32[3] = LODWORD(v39.__cosval);
  *(v26 + 2) = v4;
  v41 = &v26[48 * MotionType + 32];
  *v41 = v90;
  *(v41 + 16) = v40;
  *(v41 + 32) = 0;
  *(v41 + 40) = 0;
  RESampledAnimationDefaultParameters();
  v42 = *(v26 + 2);
  v43 = v2[6].f32[3];
  LOBYTE(v99) = 1;
  v100 = "Transform.transform";
  LOBYTE(v101) = 1;
  BYTE1(v101) &= 1u;
  *(&v101 + 1) = v43 / (v42 - 1);
  LODWORD(v102) = 0;
  *(&v102 + 1) = v43;
  result = REAssetManagerTimelineAssetCreateSRTSampledAnimation();
  if (result)
  {
    v44 = result;
    v45 = ComponentByClass == 0;

    REAnimationComponentGetComponentType();
    v46 = v84;
    REEntityGetOrAddComponentByClass();
    v99 = 2;
    LODWORD(v100) = 5120;
    v101 = "SPIN";
    LOBYTE(v102) = 0;
    v2[9].i64[1] = REAnimationComponentPlay();
    v2[10].i8[0] = 0;
    v47 = swift_allocObject();
    swift_weakInit();
    v48 = swift_allocObject();
    *(v48 + 16) = v47;
    *(v48 + 24) = v46;
    *(v48 + 32) = v83;
    *(v48 + 36) = v45;
    v49 = v2[2].i64[0];
    v50 = v2[2].i64[1];
    v2[2].i64[0] = partial apply for specialized closure #1 in __RKEntitySpinAction.perform(with:);
    v2[2].i64[1] = v48;

    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v49, v50);

    *&v90 = type metadata accessor for Entity();
    v97 = v90;
    v98 = &protocol witness table for Entity;
    v51 = v86;
    v95 = v86;
    v52 = swift_allocObject();
    swift_weakInit();

    Scene.eventService.getter(&v99);
    v53 = v102;
    v54 = v103;
    __swift_project_boxed_opaque_existential_1(&v99, v102);
    type metadata accessor for REAnimationHasCompletedEvent(0);
    EventService.publisher<A>(for:on:)(v55, &v95, v53, v55, v54);
    v91.i64[0] = v44;
    v56 = v92;
    v57 = v93;
    v58 = v94;
    __swift_destroy_boxed_opaque_existential_1(&v99);
    *(swift_allocObject() + 16) = 0;
    v99 = v56;
    v100 = v57;
    v101 = v58;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So28REAnimationHasCompletedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So28REAnimationHasCompletedEventVGMR);
    ComponentByClass = protocol conformance descriptor for Scene.CorePublisher<A>;
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<REAnimationHasCompletedEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So28REAnimationHasCompletedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So28REAnimationHasCompletedEventVGMR, protocol conformance descriptor for Scene.CorePublisher<A>);
    v59 = v87;
    Publisher.compactMap<A>(_:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So28REAnimationHasCompletedEventVGAH15AnimationEventsO08PlaybackM0VGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So28REAnimationHasCompletedEventVGAH15AnimationEventsO08PlaybackM0VGGMR);
    v60 = swift_allocObject();
    (*(v88 + 32))(&v60[*(*v60 + *MEMORY[0x1E695BEE8] + 16)], v59, v89);
    v99 = v60;
    v61 = swift_allocObject();
    *(v61 + 16) = partial apply for closure #2 in __RKEntitySpinAction.perform(with:);
    *(v61 + 24) = v52;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO17PlaybackCompletedVGMd, &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO17PlaybackCompletedVGMR);
    v89 = protocol conformance descriptor for Scene.Publisher<A>;
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type Scene.Publisher<AnimationEvents.PlaybackCompleted> and conformance Scene.Publisher<A>, &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO17PlaybackCompletedVGMd, &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO17PlaybackCompletedVGMR, protocol conformance descriptor for Scene.Publisher<A>);
    v62 = Publisher<>.sink(receiveValue:)();

    v63 = type metadata accessor for AnyCancellable();
    v102 = v63;
    v103 = MEMORY[0x1E695BF08];

    v99 = v62;
    outlined destroy of BodyTrackingComponent?(&v95, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
    swift_beginAccess();
    outlined assign with take of Cancellable?(&v99, &v2[10].i64[1]);
    swift_endAccess();
    v97 = v90;
    v98 = &protocol witness table for Entity;
    v95 = v51;
    v64 = swift_allocObject();
    swift_weakInit();

    Scene.eventService.getter(&v99);
    v65 = v102;
    v66 = v103;
    __swift_project_boxed_opaque_existential_1(&v99, v102);
    type metadata accessor for REAnimationHasTerminatedEvent(0);
    EventService.publisher<A>(for:on:)(v67, &v95, v65, v67, v66);
    v68 = v92;
    v69 = v93;
    v70 = v94;
    __swift_destroy_boxed_opaque_existential_1(&v99);
    *(swift_allocObject() + 16) = 0;
    v99 = v68;
    v100 = v69;
    v101 = v70;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So29REAnimationHasTerminatedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So29REAnimationHasTerminatedEventVGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<REAnimationHasTerminatedEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So29REAnimationHasTerminatedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So29REAnimationHasTerminatedEventVGMR, ComponentByClass);
    v71 = v78;
    Publisher.compactMap<A>(_:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So29REAnimationHasTerminatedEventVGAH15AnimationEventsO08PlaybackM0VGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So29REAnimationHasTerminatedEventVGAH15AnimationEventsO08PlaybackM0VGGMR);
    v72 = swift_allocObject();
    (*(v79 + 32))(&v72[*(*v72 + *MEMORY[0x1E695BEE8] + 16)], v71, v81);
    v99 = v72;
    v73 = swift_allocObject();
    *(v73 + 16) = partial apply for closure #3 in __RKEntitySpinAction.perform(with:);
    *(v73 + 24) = v64;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO18PlaybackTerminatedVGMd, &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO18PlaybackTerminatedVGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type Scene.Publisher<AnimationEvents.PlaybackTerminated> and conformance Scene.Publisher<A>, &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO18PlaybackTerminatedVGMd, &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO18PlaybackTerminatedVGMR, v89);
    v74 = Publisher<>.sink(receiveValue:)();

    v102 = v63;
    v103 = MEMORY[0x1E695BF08];

    v99 = v74;
    outlined destroy of BodyTrackingComponent?(&v95, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
    swift_beginAccess();
    outlined assign with take of Cancellable?(&v99, &v2[13]);
    swift_endAccess();
    v99 = v77;
    v100 = v80;
    v75 = static os_log_type_t.debug.getter();
    specialized InteractionsLogger.log(_:_:)(v75, &v99);

    RERelease();

    return 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized closure #1 in __RKEntitySpinAction.perform(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    swift_beginAccess();
    outlined init with copy of Cancellable?(v5 + 168, &v8);
    if (*(&v9 + 1))
    {
      outlined init with copy of __REAssetService(&v8, v6);
      outlined destroy of BodyTrackingComponent?(&v8, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
      __swift_project_boxed_opaque_existential_1(v6, v7);
      dispatch thunk of Cancellable.cancel()();
      __swift_destroy_boxed_opaque_existential_1(v6);
    }

    else
    {
      outlined destroy of BodyTrackingComponent?(&v8, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
    }

    v10 = 0;
    v8 = 0u;
    v9 = 0u;
    swift_beginAccess();
    outlined assign with take of Cancellable?(&v8, v5 + 168);
    swift_endAccess();
    swift_beginAccess();
    outlined init with copy of Cancellable?(v5 + 208, &v8);
    if (*(&v9 + 1))
    {
      outlined init with copy of __REAssetService(&v8, v6);
      outlined destroy of BodyTrackingComponent?(&v8, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
      __swift_project_boxed_opaque_existential_1(v6, v7);
      dispatch thunk of Cancellable.cancel()();
      __swift_destroy_boxed_opaque_existential_1(v6);
    }

    else
    {
      outlined destroy of BodyTrackingComponent?(&v8, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
    }

    v10 = 0;
    v8 = 0u;
    v9 = 0u;
    swift_beginAccess();
    outlined assign with take of Cancellable?(&v8, v5 + 208);
    swift_endAccess();
    swift_beginAccess();
    if (*(v5 + 16))
    {

      REAnimationComponentGetComponentType();
      if (REEntityGetComponentByClass())
      {
        if (REAnimationComponentHasRunningAnimations())
        {
          if ((REAnimationComponentAllAnimationsCompleted() & 1) != 0 || (swift_beginAccess(), *(v5 + 104) == 1) && *(v5 + 96) == 3)
          {
            REAnimationComponentStopAllAnimations();
            RENetworkMarkComponentDirty();
          }
        }
      }

      *(v5 + 152) = 0;
      *(v5 + 160) = 1;
    }

    RERigidBodyComponentGetComponentType();
    if (REEntityGetComponentByClass() && (a3 & 0x100000000) == 0 && a3 != 1)
    {
      RERigidBodyComponentSetMotionType();
      RENetworkMarkComponentDirty();
    }
  }

  return result;
}

uint64_t closure #2 in __RKEntitySpinAction.perform(with:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    if ((*(result + 160) & 1) != 0 || *(v2 + 16) != *(result + 152))
    {
    }

    else
    {
      swift_beginAccess();
      v5 = *(v4 + 96);
      v6 = *(v4 + 104);
      *(v4 + 96) = 2;
      *(v4 + 104) = 1;
      v7 = v5;
      v8 = v6;

      __RKEntityAction.state.didset(&v7);
    }
  }

  return result;
}

uint64_t __RKEntitySpinAction.copy(with:)@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 144);
  v8 = *(v1 + 128);
  v4 = type metadata accessor for __RKEntitySpinAction();
  v5 = swift_allocObject();
  *(v5 + 152) = 0;
  *(v5 + 160) = 1;
  *(v5 + 168) = 0u;
  *(v5 + 184) = 0u;
  *(v5 + 200) = 0u;
  *(v5 + 216) = 0u;
  *(v5 + 232) = 0u;
  *(v5 + 108) = *(v1 + 108);
  *(v5 + 128) = v8;
  *(v5 + 144) = v3;

  result = __RKEntityAction.init(targetEntity:)(v6);
  a1[3] = v4;
  *a1 = result;
  return result;
}

uint64_t __RKEntitySpinAction.clone(matching:newEntity:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  if (v3 && *(a1 + 16) == *(v3 + 16))
  {
    v5 = *(v1 + 144);
    v8 = *(v1 + 128);
    type metadata accessor for __RKEntitySpinAction();
    v6 = swift_allocObject();
    *(v6 + 152) = 0;
    *(v6 + 160) = 1;
    *(v6 + 168) = 0u;
    *(v6 + 184) = 0u;
    *(v6 + 200) = 0u;
    *(v6 + 216) = 0u;
    *(v6 + 232) = 0u;
    *(v6 + 108) = *(v1 + 108);
    *(v6 + 128) = v8;
    *(v6 + 144) = v5;

    return __RKEntityAction.init(targetEntity:)(v7);
  }

  else
  {
    __RKEntitySpinAction.copy(with:)(v10);
    type metadata accessor for __RKEntityAction();
    if (swift_dynamicCast())
    {
      return v9;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t __RKEntitySpinAction.deinit()
{
  swift_beginAccess();
  *(v0 + 96) = 2;
  *(v0 + 104) = 1;

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 32), *(v0 + 40));
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 48), *(v0 + 56));

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 72), *(v0 + 80));
  outlined destroy of BodyTrackingComponent?(v0 + 168, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  outlined destroy of BodyTrackingComponent?(v0 + 208, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  return v0;
}

uint64_t __RKEntitySpinAction.__deallocating_deinit()
{
  swift_beginAccess();
  *(v0 + 96) = 2;
  *(v0 + 104) = 1;

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 32), *(v0 + 40));
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 48), *(v0 + 56));

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 72), *(v0 + 80));

  outlined destroy of BodyTrackingComponent?(v0 + 168, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  outlined destroy of BodyTrackingComponent?(v0 + 208, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);

  return swift_deallocClassInstance();
}

void __swiftcall PerspectiveCameraComponent.init(near:far:fieldOfViewInDegrees:)(RealityKit::PerspectiveCameraComponent *__return_ptr retstr, Swift::Float near, Swift::Float far, Swift::Float fieldOfViewInDegrees)
{
  retstr->near = near;
  retstr->far = far;
  retstr->fieldOfViewInDegrees = fieldOfViewInDegrees;
  retstr->fieldOfViewOrientation = RealityFoundation_CameraFieldOfViewOrientation_vertical;
}

void __swiftcall PerspectiveCameraComponent.init(near:far:fieldOfViewInDegrees:fieldOfViewOrientation:)(RealityKit::PerspectiveCameraComponent *__return_ptr retstr, Swift::Float near, Swift::Float far, Swift::Float fieldOfViewInDegrees, RealityFoundation::CameraFieldOfViewOrientation fieldOfViewOrientation)
{
  v5 = *fieldOfViewOrientation;
  retstr->near = near;
  retstr->far = far;
  retstr->fieldOfViewInDegrees = fieldOfViewInDegrees;
  retstr->fieldOfViewOrientation = v5;
}

uint64_t static PerspectiveCameraComponent.__fromCore(_:)@<X0>(uint64_t a2@<X8>)
{
  REPerspectiveCameraComponentGetNear();
  v4 = v3;
  REPerspectiveCameraComponentGetFar();
  v6 = v5;
  REPerspectiveCameraComponentGetFieldOfView();
  v8 = v7;
  result = REPerspectiveCameraComponentGetFieldOfViewDirection();
  *a2 = v4;
  *(a2 + 4) = v6;
  *(a2 + 8) = v8;
  *(a2 + 12) = result == 0;
  return result;
}

uint64_t protocol witness for Component.__toCore(_:) in conformance PerspectiveCameraComponent(void *a1)
{
  REPerspectiveCameraComponentSetNear();
  REPerspectiveCameraComponentSetFar();
  REPerspectiveCameraComponentSetFieldOfView();
  REPerspectiveCameraComponentSetFieldOfViewDirection();

  return RENetworkMarkComponentDirty();
}

uint64_t PerspectiveCameraComponent.__toCore(_:)(void *a1)
{
  REPerspectiveCameraComponentSetNear();
  REPerspectiveCameraComponentSetFar();
  REPerspectiveCameraComponentSetFieldOfView();
  REPerspectiveCameraComponentSetFieldOfViewDirection();

  return RENetworkMarkComponentDirty();
}

Swift::Void __swiftcall Entity.turnIntoNinja()()
{
  REHideEntity();
  Entity.ensureAnchorComponent()();
  memset(v12, 0, sizeof(v12));
  v13 = xmmword_1C1898F00;

  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFAA015SynchronizationD0V_TtB5(v12, 0, v0);
  specialized static SceneManager.customComponentType(_:)(&type metadata for __EntityInfoComponent, &protocol witness table for __EntityInfoComponent);
  CustomComponent = REEntityGetCustomComponent();

  if (!CustomComponent)
  {

    __EntityInfoComponent.init(entity:)(&v10);
    _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFAA02__c4InfoD0V_TtB5Tf4ndn_n(v10, v11, v0);
  }

  specialized static SceneManager.customComponentType(_:)(&type metadata for __EntityInfoComponent, &protocol witness table for __EntityInfoComponent);
  if (!REEntityGetCustomComponent())
  {
    goto LABEL_18;
  }

  Object = RECustomComponentGetObject();
  if (!Object)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  static __EntityInfoComponent.__load(from:)(Object, &v10);
  v3 = v11;
  if (v11 == 1)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v4 = v10;
  if (!v10)
  {
LABEL_20:
    __break(1u);
    return;
  }

  if (*v10 != 42)
  {
    v5 = String.init(utf8String:)();
    if (v6)
    {
      v7 = v5;
    }

    else
    {
      v7 = 0;
    }

    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = 0xE000000000000000;
    }

    v4 = specialized static __EntityInfoComponent.makeRawData(isNinja:entityTypeName:)(1, v7, v8);

    type metadata accessor for IntrospectionDataCleanupHelper();
    v9 = swift_allocObject();
    *(v9 + 16) = v4;

    v3 = v9;
  }

  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFAA02__c4InfoD0V_TtB5Tf4ndn_n(v4, v3, v0);

  outlined consume of CustomMaterial.Blending(v4, v3);
}

void Entity.isNinja.getter()
{
  specialized static SceneManager.customComponentType(_:)(&type metadata for __EntityInfoComponent, &protocol witness table for __EntityInfoComponent);
  if (REEntityGetCustomComponent())
  {
    Object = RECustomComponentGetObject();
    if (Object)
    {
      v1 = *Object;
      if (*(Object + 8))
      {
        v2 = 1;
      }

      else
      {
        v2 = v1 == 0;
      }

      if (v2)
      {
      }

      else
      {
        v3 = *v1;
        v4 = String.init(utf8String:)();
        if (v5)
        {
          v6 = v4;
        }

        else
        {
          v6 = 0;
        }

        if (v5)
        {
          v7 = v5;
        }

        else
        {
          v7 = 0xE000000000000000;
        }

        v1 = specialized static __EntityInfoComponent.makeRawData(isNinja:entityTypeName:)(v3 == 42, v6, v7);

        type metadata accessor for IntrospectionDataCleanupHelper();
        *(swift_allocObject() + 16) = v1;
      }

      if (v1)
      {

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

uint64_t __EntityInfoComponent.init(entity:)@<X0>(void *a2@<X8>)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = NSStringFromClass(ObjCClassFromMetadata);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v10 = *(v8 + 2);
  v9 = *(v8 + 3);
  if (v10 >= v9 >> 1)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v8);
  }

  *(v8 + 2) = v10 + 1;
  v8[v10 + 32] = 13;
  v17 = v8;
  specialized Array.append<A>(contentsOf:)(v5, v7);
  v11 = v17;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 2) + 1, 1, v17);
    v11 = result;
  }

  v14 = *(v11 + 16);
  v13 = *(v11 + 24);
  v15 = v14 + 1;
  if (v14 >= v13 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v11);
    v11 = result;
  }

  *(v11 + 16) = v15;
  *(v11 + 32 + v14) = 0;
  if (v14 > 0x7FFFFFFE)
  {
    __break(1u);
  }

  else
  {
    v16 = RECIntrospectionAlloc();
    memmove(v16, (v11 + 32), v15);

    *a2 = v16;
    type metadata accessor for IntrospectionDataCleanupHelper();
    result = swift_allocObject();
    *(result + 16) = v16;
    a2[1] = result;
  }

  return result;
}

void static __EntityInfoComponent.__load(from:)(unsigned __int8 **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v3 == 0;
  }

  if (v6)
  {
    *a2 = v3;
    a2[1] = v4;
  }

  else
  {
    v7 = *v3;
    v8 = String.init(utf8String:)();
    if (v9)
    {
      v10 = v8;
    }

    else
    {
      v10 = 0;
    }

    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0xE000000000000000;
    }

    v12 = specialized static __EntityInfoComponent.makeRawData(isNinja:entityTypeName:)(v7 == 42, v10, v11);

    *a2 = v12;
    type metadata accessor for IntrospectionDataCleanupHelper();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    a2[1] = v13;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance __EntityInfoComponent.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7954797469746E65;
  }

  else
  {
    v3 = 0x616A6E694E7369;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xEE00656D614E6570;
  }

  if (*a2)
  {
    v5 = 0x7954797469746E65;
  }

  else
  {
    v5 = 0x616A6E694E7369;
  }

  if (*a2)
  {
    v6 = 0xEE00656D614E6570;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance __EntityInfoComponent.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double protocol witness for Hashable.hash(into:) in conformance __EntityInfoComponent.CodingKeys(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance __EntityInfoComponent.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.init(rawValue:) in conformance __EntityInfoComponent.CodingKeys(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of __EntityInfoComponent.CodingKeys.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance __EntityInfoComponent.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = 0x616A6E694E7369;
  if (*v1)
  {
    v2 = 0x7954797469746E65;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xEE00656D614E6570;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance __EntityInfoComponent.CodingKeys()
{
  if (*v0)
  {
    return 0x7954797469746E65;
  }

  else
  {
    return 0x616A6E694E7369;
  }
}

void protocol witness for CodingKey.init(stringValue:) in conformance __EntityInfoComponent.CodingKeys(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of __EntityInfoComponent.CodingKeys.init(rawValue:), v3);

  if (v5 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v5)
  {
    v6 = 0;
  }

  *a2 = v6;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance __EntityInfoComponent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __EntityInfoComponent.CodingKeys and conformance __EntityInfoComponent.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance __EntityInfoComponent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __EntityInfoComponent.CodingKeys and conformance __EntityInfoComponent.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t __EntityInfoComponent.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10RealityKit21__EntityInfoComponentV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy10RealityKit21__EntityInfoComponentV10CodingKeysOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __EntityInfoComponent.CodingKeys and conformance __EntityInfoComponent.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v16 = 1;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v12 = specialized static __EntityInfoComponent.makeRawData(isNinja:entityTypeName:)(v9 & 1, v10, v11);

  (*(v6 + 8))(v8, v5);
  type metadata accessor for IntrospectionDataCleanupHelper();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *a2 = v12;
  a2[1] = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void __EntityInfoComponent.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10RealityKit21__EntityInfoComponentV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy10RealityKit21__EntityInfoComponentV10CodingKeysOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __EntityInfoComponent.CodingKeys and conformance __EntityInfoComponent.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v8)
  {
    v11 = 0;
    KeyedEncodingContainer.encode(_:forKey:)();
    if (v2)
    {
      (*(v5 + 8))(v7, v4);
    }

    else
    {
      String.init(utf8String:)();
      v10 = 1;
      KeyedEncodingContainer.encode(_:forKey:)();
      (*(v5 + 8))(v7, v4);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t static __EntityInfoComponent.__addIntrospectionData(_:)(uint64_t result)
{
  if (result)
  {
    return REStructBuilderAddMemberDataTypeWithTag();
  }

  return result;
}

void static __EntityInfoComponent.__free(to:offset:)(void *a1)
{
  if (!a1[1] && *a1)
  {
    RECIntrospectionFree();
  }

  outlined destroy of __EntityInfoComponent(a1);

  JUMPOUT(0x1C6902A30);
}

void static __EntityInfoComponent.__load(from:offset:)(unsigned __int8 **a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = &type metadata for __EntityInfoComponent;
  a2[4] = &protocol witness table for __EntityInfoComponent;
  v3 = *a1;
  v4 = a1[1];
  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v3 == 0;
  }

  if (v6)
  {
    *a2 = v3;
    a2[1] = v4;
  }

  else
  {
    v7 = *v3;
    v8 = String.init(utf8String:)();
    if (v9)
    {
      v10 = v8;
    }

    else
    {
      v10 = 0;
    }

    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0xE000000000000000;
    }

    v12 = specialized static __EntityInfoComponent.makeRawData(isNinja:entityTypeName:)(v7 == 42, v10, v11);

    *a2 = v12;
    type metadata accessor for IntrospectionDataCleanupHelper();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    a2[1] = v13;
  }
}

void protocol witness for static Component.__free(to:offset:) in conformance __EntityInfoComponent(void *a1)
{
  if (!a1[1] && *a1)
  {
    RECIntrospectionFree();
  }

  outlined destroy of __EntityInfoComponent(a1);

  JUMPOUT(0x1C6902A30);
}

uint64_t protocol witness for static Component.__addIntrospectionData(_:) in conformance __EntityInfoComponent(uint64_t result)
{
  if (result)
  {
    return REStructBuilderAddMemberDataTypeWithTag();
  }

  return result;
}

void protocol witness for static Component.__load(from:offset:) in conformance __EntityInfoComponent(unsigned __int8 **a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  a2[3] = a3;
  a2[4] = a4;
  static __EntityInfoComponent.__load(from:)(a1, a2);
}

uint64_t Entity.ensureAnchorComponent()()
{
  v7[1] = *MEMORY[0x1E69E9840];
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  REAnchorComponentGetComponentType();
  ComponentByClass = REEntityGetComponentByClass();
  if (ComponentByClass)
  {
    UUID.init()();
  }

  else
  {
    v5 = REComponentCreateByType();
    result = UUID.init()();
    if (!v5)
    {
      __break(1u);
      return result;
    }
  }

  REAnchorComponentSetAnchorIdentifier();
  REAnchorComponentSetWorldTransform();
  if (!ComponentByClass)
  {
    REEntityAddExistingComponent();
    RERelease();
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t specialized static __EntityInfoComponent.makeRawData(isNinja:entityTypeName:)(char a1, Swift::Int a2, unint64_t a3)
{
  if (a1)
  {
    v5 = 42;
  }

  else
  {
    v5 = 13;
  }

  v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(MEMORY[0x1E69E7CC0] + 16) + 1, 1, MEMORY[0x1E69E7CC0]);
  v8 = *(v6 + 2);
  v7 = *(v6 + 3);
  if (v8 >= v7 >> 1)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1, v6);
  }

  *(v6 + 2) = v8 + 1;
  v6[v8 + 32] = v5;
  v15 = v6;

  specialized Array.append<A>(contentsOf:)(a2, a3);
  v9 = v15;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 2) + 1, 1, v15);
    v9 = result;
  }

  v12 = *(v9 + 16);
  v11 = *(v9 + 24);
  v13 = v12 + 1;
  if (v12 >= v11 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v9);
    v9 = result;
  }

  *(v9 + 16) = v13;
  *(v9 + 32 + v12) = 0;
  if (v12 > 0x7FFFFFFE)
  {
    __break(1u);
  }

  else
  {
    v14 = RECIntrospectionAlloc();
    memmove(v14, (v9 + 32), v13);

    return v14;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type __EntityInfoComponent.CodingKeys and conformance __EntityInfoComponent.CodingKeys()
{
  result = lazy protocol witness table cache variable for type __EntityInfoComponent.CodingKeys and conformance __EntityInfoComponent.CodingKeys;
  if (!lazy protocol witness table cache variable for type __EntityInfoComponent.CodingKeys and conformance __EntityInfoComponent.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __EntityInfoComponent.CodingKeys, &type metadata for __EntityInfoComponent.CodingKeys, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __EntityInfoComponent.CodingKeys and conformance __EntityInfoComponent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __EntityInfoComponent.CodingKeys and conformance __EntityInfoComponent.CodingKeys;
  if (!lazy protocol witness table cache variable for type __EntityInfoComponent.CodingKeys and conformance __EntityInfoComponent.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __EntityInfoComponent.CodingKeys, &type metadata for __EntityInfoComponent.CodingKeys, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __EntityInfoComponent.CodingKeys and conformance __EntityInfoComponent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __EntityInfoComponent.CodingKeys and conformance __EntityInfoComponent.CodingKeys;
  if (!lazy protocol witness table cache variable for type __EntityInfoComponent.CodingKeys and conformance __EntityInfoComponent.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __EntityInfoComponent.CodingKeys, &type metadata for __EntityInfoComponent.CodingKeys, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __EntityInfoComponent.CodingKeys and conformance __EntityInfoComponent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __EntityInfoComponent.CodingKeys and conformance __EntityInfoComponent.CodingKeys;
  if (!lazy protocol witness table cache variable for type __EntityInfoComponent.CodingKeys and conformance __EntityInfoComponent.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __EntityInfoComponent.CodingKeys, &type metadata for __EntityInfoComponent.CodingKeys, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __EntityInfoComponent.CodingKeys and conformance __EntityInfoComponent.CodingKeys);
  }

  return result;
}

uint64_t PhotogrammetrySession.Configuration.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 1;
  *(a1 + 2) = 0;
  v2 = type metadata accessor for PhotogrammetrySession.Configuration(0);
  v3 = *(v2 + 28);
  v4 = type metadata accessor for URL();
  result = (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  *(a1 + *(v2 + 32)) = 0;
  return result;
}

uint64_t static PhotogrammetrySession.isSupported.getter()
{
  type metadata accessor for PhotogrammetrySession();
  return static PhotogrammetrySession.isSupported.getter() & 1;
}

{
  return MEMORY[0x1EEDF99C8]();
}

__n128 PhotogrammetrySession.Request.Geometry.orientedBounds.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 48);
  v3 = *(v1 + 64);
  v4 = *(v1 + 80);
  *a1 = result;
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  return result;
}

__int128 *PhotogrammetrySession.Request.Geometry.init(orientedBounds:transform:)@<X0>(__int128 *result@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>, __n128 a4@<Q1>, __n128 a5@<Q2>)
{
  v5 = *result;
  v6 = result[1];
  v7 = result[2];
  *a2 = a3;
  *(a2 + 16) = a4;
  *(a2 + 32) = a5;
  *(a2 + 48) = v5;
  *(a2 + 64) = v6;
  *(a2 + 80) = v7;
  return result;
}

void OrientedBoundingBox.init(orientation:boundingBox:)(__n128 *a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4@<Q2>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
}

uint64_t PhotogrammetrySession.__allocating_init(input:configuration:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotogrammetrySession.Configuration(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PhotogrammetrySession.InputSource(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    *v13 = 0;
    _os_log_impl(&dword_1C1358000, v11, v12, "~~~ PhotogrammetrySession init was called! ~~~", v13, 2u);
    MEMORY[0x1C6902A30](v13, -1, -1);
  }

  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v9, a1, v14);
  swift_storeEnumTagMultiPayload();
  outlined init with copy of PhotogrammetrySession.Configuration(a2, v6, type metadata accessor for PhotogrammetrySession.Configuration);
  type metadata accessor for PhotogrammetrySession(0);
  swift_allocObject();
  v16 = PhotogrammetrySession.init(source:configuration:)(v9, v6);
  outlined destroy of PhotogrammetrySession.Configuration(a2, type metadata accessor for PhotogrammetrySession.Configuration);
  (*(v15 + 8))(a1, v14);
  return v16;
}

uint64_t PhotogrammetrySession.__allocating_init<A>(input:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a2;
  v27 = a1;
  v5 = type metadata accessor for PhotogrammetrySession.Configuration(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for PhotogrammetrySession.InputSource(0);
  MEMORY[0x1EEE9AC00](v25);
  v13 = (&v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, logger);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v24 = a3;
    v18 = v17;
    *v17 = 0;
    _os_log_impl(&dword_1C1358000, v15, v16, "~~~ PhotogrammetrySession init was called! ~~~", v17, 2u);
    a3 = v24;
    MEMORY[0x1C6902A30](v18, -1, -1);
  }

  v19 = v27;
  (*(v8 + 16))(v11, v27, a3);
  *v13 = AnySequence.init<A>(_:)();
  swift_storeEnumTagMultiPayload();
  v20 = v26;
  outlined init with copy of PhotogrammetrySession.Configuration(v26, v7, type metadata accessor for PhotogrammetrySession.Configuration);
  type metadata accessor for PhotogrammetrySession(0);
  swift_allocObject();
  v21 = PhotogrammetrySession.init(source:configuration:)(v13, v7);
  outlined destroy of PhotogrammetrySession.Configuration(v20, type metadata accessor for PhotogrammetrySession.Configuration);
  (*(v8 + 8))(v19, a3);
  return v21;
}

uint64_t PhotogrammetrySession.Error.localizedDescription.getter()
{
  v1 = type metadata accessor for PhotogrammetrySession.Error(0);
  MEMORY[0x1EEE9AC00](v1);
  outlined init with copy of PhotogrammetrySession.Configuration(v0, &v4 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhotogrammetrySession.Error);
  return String.init<A>(describing:)();
}

uint64_t PhotogrammetrySession.Configuration.checkpointDirectory.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for PhotogrammetrySession.Configuration(0) + 28);

  return outlined assign with take of URL?(a1, v3);
}

uint64_t PhotogrammetrySession.Configuration.ignoreBoundingBox.getter()
{
  return *(v0 + *(type metadata accessor for PhotogrammetrySession.Configuration(0) + 32));
}

{
  return MEMORY[0x1EEDF99F0]();
}

uint64_t PhotogrammetrySession.Configuration.ignoreBoundingBox.setter(char a1)
{
  result = type metadata accessor for PhotogrammetrySession.Configuration(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t PhotogrammetrySession.Configuration.init(checkpointDirectory:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 1;
  *(a2 + 2) = 0;
  v4 = type metadata accessor for PhotogrammetrySession.Configuration(0);
  v5 = *(v4 + 28);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v9 = *(v7 + 56);
  v9(a2 + v5, 1, 1, v6);
  *(a2 + *(v4 + 32)) = 0;
  outlined destroy of BodyTrackingComponent?(a2 + v5, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v7 + 32))(a2 + v5, a1, v6);

  return (v9)(a2 + v5, 0, 1, v6);
}

__n128 PhotogrammetrySession.Request.Geometry.orientedBounds.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  v1[3] = *a1;
  v1[4] = v3;
  v1[5] = v4;
  return result;
}

void (*PhotogrammetrySession.Request.Geometry.orientedBounds.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  *a1 = v3;
  *(v3 + 48) = v1;
  v4 = v1[4];
  v5 = v1[5];
  *v3 = v1[3];
  *(v3 + 16) = v4;
  *(v3 + 32) = v5;
  return PhotogrammetrySession.Request.Geometry.orientedBounds.modify;
}

void PhotogrammetrySession.Request.Geometry.orientedBounds.modify(void **a1)
{
  v1 = *a1;
  v2 = v1[6];
  v3 = *(v1 + 1);
  v4 = *(v1 + 2);
  v2[3] = *v1;
  v2[4] = v3;
  v2[5] = v4;
  free(v1);
}

double PhotogrammetrySession.Request.Geometry.bounds.getter()
{
  v2 = *(v0 + 64);
  v3 = *(v0 + 80);
  simd_matrix4x4(*(v0 + 48));
  return REAABBTransform(v2, v3);
}

void PhotogrammetrySession.Request.Geometry.bounds.setter(__n128 a1, __n128 a2)
{
  *(v2 + 48) = *&zmmword_1C1887630[48];
  *(v2 + 64) = a1;
  *(v2 + 80) = a2;
}

__n128 (*PhotogrammetrySession.Request.Geometry.bounds.modify(uint64_t *a1))(void **a1)
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
  v8 = *(v1 + 64);
  v9 = *(v1 + 80);
  simd_matrix4x4(*(v1 + 48));
  *&v5 = REAABBTransform(v8, v9);
  *v4 = v5;
  v4[1] = v6;
  return PhotogrammetrySession.Request.Geometry.bounds.modify;
}

__n128 PhotogrammetrySession.Request.Geometry.bounds.modify(void **a1)
{
  v1 = *a1;
  v2 = v1[4];
  v3 = *v1;
  v4 = *(v1 + 1);
  v2[3] = *&zmmword_1C1887630[48];
  v2[4] = v3;
  v2[5] = v4;
  free(v1);
  return result;
}

void PhotogrammetrySession.Request.Geometry.transform.setter(__n128 a1, __n128 a2, __n128 a3)
{
  *v3 = a1;
  v3[1] = a2;
  v3[2] = a3;
}

void PhotogrammetrySession.Request.Geometry.init(bounds:transform:)(uint64_t a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4@<Q2>, __n128 a5@<Q3>, __n128 a6@<Q4>)
{
  *a1 = a4;
  *(a1 + 16) = a5;
  *(a1 + 32) = a6;
  *(a1 + 48) = *&zmmword_1C1887630[48];
  *(a1 + 64) = a2;
  *(a1 + 80) = a3;
}

uint64_t PhotogrammetrySession.Request.Geometry.hash(into:)()
{
  v2 = v0[1];
  v3 = v0[3];
  specialized SIMD.hash(into:)();
  specialized SIMD.hash(into:)(v2);
  specialized SIMD.hash(into:)();
  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  specialized SIMD.hash(into:)();
  specialized SIMD.hash(into:)(v3);
  specialized SIMD.hash(into:)();
  specialized SIMD.hash(into:)();

  return specialized SIMD.hash(into:)();
}

Swift::Int PhotogrammetrySession.Request.Geometry.hashValue.getter()
{
  v2 = v0[1];
  v3 = v0[3];
  Hasher.init(_seed:)();
  specialized SIMD.hash(into:)();
  specialized SIMD.hash(into:)(v2);
  specialized SIMD.hash(into:)();
  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  specialized SIMD.hash(into:)();
  specialized SIMD.hash(into:)(v3);
  specialized SIMD.hash(into:)();
  specialized SIMD.hash(into:)();
  specialized SIMD.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PhotogrammetrySession.Request.Geometry()
{
  v2 = v0[1];
  v3 = v0[3];
  Hasher.init(_seed:)();
  specialized SIMD.hash(into:)();
  specialized SIMD.hash(into:)(v2);
  specialized SIMD.hash(into:)();
  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  specialized SIMD.hash(into:)();
  specialized SIMD.hash(into:)(v3);
  specialized SIMD.hash(into:)();
  specialized SIMD.hash(into:)();
  specialized SIMD.hash(into:)();
  return Hasher._finalize()();
}

uint64_t PhotogrammetrySession.Request.init(modelFile:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV3url_07RealityA021PhotogrammetrySessionC7RequestO6DetailO6detailAI8GeometryVSg8geometrytMd, &_s10Foundation3URLV3url_07RealityA021PhotogrammetrySessionC7RequestO6DetailO6detailAI8GeometryVSg8geometrytMR) + 64);
  v5 = type metadata accessor for URL();
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0u;
  *(v4 + 96) = 1;
  type metadata accessor for PhotogrammetrySession.Request(0);

  return swift_storeEnumTagMultiPayload();
}

void PhotogrammetrySession.Request.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PhotogrammetrySession.Request(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PhotogrammetrySession.Configuration(v2, v9, type metadata accessor for PhotogrammetrySession.Request);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v22 = *v9;
      v21 = *(v9 + 1);
      v23 = *(v9 + 2);
      v24 = *(v9 + 3);
      v25 = *(v9 + 4);
      v26 = *(v9 + 5);
      v28 = *(v9 + 6);
      v27 = *(v9 + 7);
      v29 = *(v9 + 9);
      v38 = *(v9 + 8);
      v39.n128_u64[0] = v27;
      v30 = *(v9 + 11);
      v40 = *(v9 + 10);
      v41.n128_u64[0] = v29;
      v42.n128_u64[0] = v30;
      v31 = v9[96];
      MEMORY[0x1C68F4C10](1);
      MEMORY[0x1C68F4C10](0);
      if (v31 == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v33.n128_u64[0] = v22;
        v33.n128_u64[1] = v21;
        v35 = v33;
        v33.n128_u64[0] = v23;
        v33.n128_u64[1] = v24;
        v36 = v33;
        v33.n128_u64[0] = v25;
        v33.n128_u64[1] = v26;
        v37 = v33;
        v33.n128_u64[0] = v28;
        v33.n128_u64[1] = v39.n128_u64[0];
        v39 = v33;
        v33.n128_u64[0] = v38;
        v33.n128_u64[1] = v41.n128_u64[0];
        v41 = v33;
        v33.n128_u64[0] = v40;
        v33.n128_u64[1] = v42.n128_u64[0];
        v42 = v33;
        Hasher._combine(_:)(1u);
        specialized SIMD.hash(into:)();
        specialized SIMD.hash(into:)(v36);
        specialized SIMD.hash(into:)();
        if (one-time initialization token for identity != -1)
        {
          swift_once();
        }

        specialized SIMD.hash(into:)();
        specialized SIMD.hash(into:)(v39);
        specialized SIMD.hash(into:)();
        specialized SIMD.hash(into:)();
        specialized SIMD.hash(into:)();
      }
    }

    else
    {
      v12 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV3url_07RealityA021PhotogrammetrySessionC7RequestO6DetailO6detailAI8GeometryVSg8geometrytMd, &_s10Foundation3URLV3url_07RealityA021PhotogrammetrySessionC7RequestO6DetailO6detailAI8GeometryVSg8geometrytMR) + 64)];
      v13 = *v12;
      v14 = *(v12 + 1);
      v15 = *(v12 + 2);
      v35.n128_u64[0] = *(v12 + 3);
      v16 = *(v12 + 4);
      v37.n128_u64[0] = *(v12 + 5);
      v17 = *(v12 + 7);
      v36.n128_u64[0] = *(v12 + 6);
      v18 = *(v12 + 9);
      v38 = *(v12 + 8);
      v39.n128_u64[0] = v17;
      v41.n128_u64[0] = v18;
      v19 = *(v12 + 11);
      v40 = *(v12 + 10);
      v42.n128_u64[0] = v19;
      v20 = v12[96];
      (*(v4 + 32))(v6, v9, v3);
      MEMORY[0x1C68F4C10](0);
      lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
      dispatch thunk of Hashable.hash(into:)();
      MEMORY[0x1C68F4C10](0);
      if (v20 == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v32.n128_u64[0] = v13;
        v32.n128_u64[1] = v14;
        v34 = v32;
        v32.n128_u64[0] = v15;
        v32.n128_u64[1] = v35.n128_u64[0];
        v35 = v32;
        v32.n128_u64[0] = v16;
        v32.n128_u64[1] = v37.n128_u64[0];
        v37 = v32;
        v32.n128_u64[0] = v36.n128_u64[0];
        v32.n128_u64[1] = v39.n128_u64[0];
        v39 = v32;
        v32.n128_u64[0] = v38;
        v32.n128_u64[1] = v41.n128_u64[0];
        v41 = v32;
        v32.n128_u64[0] = v40;
        v32.n128_u64[1] = v42.n128_u64[0];
        v42 = v32;
        Hasher._combine(_:)(1u);
        specialized SIMD.hash(into:)();
        specialized SIMD.hash(into:)(v35);
        specialized SIMD.hash(into:)();
        if (one-time initialization token for identity != -1)
        {
          swift_once();
        }

        specialized SIMD.hash(into:)();
        specialized SIMD.hash(into:)(v39);
        specialized SIMD.hash(into:)();
        specialized SIMD.hash(into:)();
        specialized SIMD.hash(into:)();
      }

      (*(v4 + 8))(v6, v3);
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      v11 = 2;
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v11 = 3;
    }

    else
    {
      v11 = 4;
    }

    MEMORY[0x1C68F4C10](v11);
  }
}

Swift::Int PhotogrammetrySession.Request.hashValue.getter()
{
  Hasher.init(_seed:)();
  PhotogrammetrySession.Request.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PhotogrammetrySession.Request()
{
  Hasher.init(_seed:)();
  PhotogrammetrySession.Request.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PhotogrammetrySession.Request()
{
  Hasher.init(_seed:)();
  PhotogrammetrySession.Request.hash(into:)(v1);
  return Hasher._finalize()();
}

__n128 PhotogrammetrySession.Pose.transform.getter()
{
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of PhotogrammetrySession.Pose.transform.getter);
  if (one-time initialization token for identity != -1)
  {
    v1 = result;
    swift_once();
    return v1;
  }

  return result;
}

uint64_t PhotogrammetrySession.PointCloud.Point.color.getter()
{
  return *(v0 + 16);
}

{
  return MEMORY[0x1EEDF99A0]();
}

uint64_t PhotogrammetrySession.Output.ProgressInfo.estimatedRemainingTime.getter()
{
  return *v0;
}

{
  return MEMORY[0x1EEDF9AB0]();
}

Swift::Int PhotogrammetrySession.Output.ProcessingStage.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

unint64_t PhotogrammetrySession.Output.localizedDescription.getter()
{
  v1 = type metadata accessor for PhotogrammetrySession.Request(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v37 - v5;
  v7 = type metadata accessor for PhotogrammetrySession.Output(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  outlined init with copy of PhotogrammetrySession.Configuration(v0, &v37 - v11, type metadata accessor for PhotogrammetrySession.Output);
  v12 = String.init<A>(describing:)();
  outlined init with copy of PhotogrammetrySession.Configuration(v0, v9, type metadata accessor for PhotogrammetrySession.Output);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload > 7)
    {
      if (EnumCaseMultiPayload == 8)
      {

        return 0xD000000000000032;
      }

      if (EnumCaseMultiPayload == 9)
      {

        return 0xD000000000000076;
      }

      v30 = type metadata accessor for PhotogrammetrySession.Output;
      v31 = v9;
LABEL_25:
      outlined destroy of PhotogrammetrySession.Configuration(v31, v30);
      return v12;
    }

    if (EnumCaseMultiPayload != 5)
    {
      if (EnumCaseMultiPayload == 6)
      {

        return 0xD00000000000001ALL;
      }

      else
      {

        return 0xD00000000000002BLL;
      }
    }

    v24 = v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21PhotogrammetrySessionC7RequestO_AC6OutputO12ProgressInfoVtMd, &_s17RealityFoundation21PhotogrammetrySessionC7RequestO_AC6OutputO12ProgressInfoVtMR) + 48);
    v25 = *v24;
    v26 = v24[8];
    v27 = v24[9];
    outlined init with take of PhotogrammetrySession.Request(v9, v6);
    v41 = 0;
    v42 = 0xE000000000000000;
    _StringGuts.grow(_:)(27);

    v41 = 0x2074736575716552;
    v42 = 0xE800000000000000;
    outlined init with copy of PhotogrammetrySession.Configuration(v6, v3, type metadata accessor for PhotogrammetrySession.Request);
    v28 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v28);

    MEMORY[0x1C68F3410](0x736572676F727020, 0xEE003D6F666E4973);
    v38 = v25;
    v39 = v26;
    v40 = v27;
    v29 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v29);

    goto LABEL_17;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {

      v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21PhotogrammetrySessionC7RequestO_AC6ResultOtMd, &_s17RealityFoundation21PhotogrammetrySessionC7RequestO_AC6ResultOtMR) + 48);
      outlined init with take of PhotogrammetrySession.Request(v9, v6);
      v41 = 0;
      v42 = 0xE000000000000000;
      _StringGuts.grow(_:)(21);

      v41 = 0x2074736575716552;
      v42 = 0xE800000000000000;
      outlined init with copy of PhotogrammetrySession.Configuration(v6, v3, type metadata accessor for PhotogrammetrySession.Request);
      v35 = String.init<A>(describing:)();
      MEMORY[0x1C68F3410](v35);

      MEMORY[0x1C68F3410](0x74656C706D6F6320, 0xEB000000002E6465);
      v12 = v41;
      outlined destroy of PhotogrammetrySession.Configuration(v6, type metadata accessor for PhotogrammetrySession.Request);
      v30 = type metadata accessor for PhotogrammetrySession.Result;
      v31 = v9 + v34;
      goto LABEL_25;
    }

    v20 = *(v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21PhotogrammetrySessionC7RequestO_s5Error_ptMd, &_s17RealityFoundation21PhotogrammetrySessionC7RequestO_s5Error_ptMR) + 48));
    outlined init with take of PhotogrammetrySession.Request(v9, v6);
    v41 = 0;
    v42 = 0xE000000000000000;
    _StringGuts.grow(_:)(35);

    v41 = 0x2074736575716552;
    v42 = 0xE800000000000000;
    outlined init with copy of PhotogrammetrySession.Configuration(v6, v3, type metadata accessor for PhotogrammetrySession.Request);
    v21 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v21);

    MEMORY[0x1C68F3410](0xD000000000000015, 0x80000001C18EFAE0);
    swift_getErrorValue();
    v22 = Error.localizedDescription.getter();
    MEMORY[0x1C68F3410](v22);

    MEMORY[0x1C68F3410](11810, 0xE200000000000000);

    goto LABEL_18;
  }

  if (EnumCaseMultiPayload == 2)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21PhotogrammetrySessionC7RequestO_Sd16fractionCompletetMd, &_s17RealityFoundation21PhotogrammetrySessionC7RequestO_Sd16fractionCompletetMR);
    outlined init with take of PhotogrammetrySession.Request(v9, v6);
    v41 = 0;
    v42 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);
    MEMORY[0x1C68F3410](0x2074736575716552, 0xE800000000000000);
    outlined init with copy of PhotogrammetrySession.Configuration(v6, v3, type metadata accessor for PhotogrammetrySession.Request);
    v23 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v23);

    MEMORY[0x1C68F3410](0x736572676F727020, 0xEA00000000003D73);
    Double.write<A>(to:)();
LABEL_17:
    MEMORY[0x1C68F3410](46, 0xE100000000000000);
LABEL_18:
    v12 = v41;
    v30 = type metadata accessor for PhotogrammetrySession.Request;
    v31 = v6;
    goto LABEL_25;
  }

  if (EnumCaseMultiPayload == 3)
  {

    v15 = *v9;
    v14 = v9[1];
    v16 = v9[2];
    v41 = 0;
    v42 = 0xE000000000000000;
    _StringGuts.grow(_:)(49);

    v41 = 0x6920656C706D6153;
    v42 = 0xEA00000000003D64;
    v38 = v15;
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1C68F3410](v17);

    MEMORY[0x1C68F3410](0xD000000000000022, 0x80000001C18EFA40);
    MEMORY[0x1C68F3410](v14, v16);

    v18 = 46;
    v19 = 0xE100000000000000;
  }

  else
  {

    v32 = *v9;
    v41 = 0;
    v42 = 0xE000000000000000;
    _StringGuts.grow(_:)(84);
    MEMORY[0x1C68F3410](0x6920656C706D6153, 0xEA00000000003D64);
    v38 = v32;
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1C68F3410](v33);

    v18 = 0xD000000000000048;
    v19 = 0x80000001C18EF9F0;
  }

  MEMORY[0x1C68F3410](v18, v19);
  return v41;
}

uint64_t PhotogrammetrySession.Outputs.Iterator.next()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](PhotogrammetrySession.Outputs.Iterator.next(), 0, 0);
}

uint64_t PhotogrammetrySession.Outputs.Iterator.next()()
{
  v1 = v0[3];
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v1, v2);
  v7 = (*(v3 + 32) + **(v3 + 32));
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = PhotogrammetrySession.Outputs.Iterator.next();
  v5 = v0[2];

  return v7(v5, v2, v3);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance PhotogrammetrySession.Outputs.Iterator(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](protocol witness for AsyncIteratorProtocol.next() in conformance PhotogrammetrySession.Outputs.Iterator, 0, 0);
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance PhotogrammetrySession.Outputs.Iterator()
{
  v1 = v0[3];
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v1, v2);
  v7 = (*(v3 + 32) + **(v3 + 32));
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = protocol witness for AsyncIteratorProtocol.next() in conformance PhotogrammetrySession.Outputs.Iterator;
  v5 = v0[2];

  return v7(v5, v2, v3);
}

uint64_t _s17RealityFoundation21PhotogrammetrySessionC7OutputsV8IteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTW(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = v4;
  v5[7] = a4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return MEMORY[0x1EEE6DFA0](_s17RealityFoundation21PhotogrammetrySessionC7OutputsV8IteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTY0_, 0, 0);
}

uint64_t _s17RealityFoundation21PhotogrammetrySessionC7OutputsV8IteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTY0_()
{
  v1 = v0[6];
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v1, v2);
  v7 = (*(v3 + 32) + **(v3 + 32));
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = _s17RealityFoundation21PhotogrammetrySessionC7OutputsV8IteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ1_;
  v5 = v0[3];

  return v7(v5, v2, v3);
}

uint64_t _s17RealityFoundation21PhotogrammetrySessionC7OutputsV8IteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ1_()
{
  v2 = *v1;
  v2[9] = v0;

  if (v0)
  {
    if (v2[4])
    {
      swift_getObjectType();
      v3 = dispatch thunk of Actor.unownedExecutor.getter();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    return MEMORY[0x1EEE6DFA0](_s17RealityFoundation21PhotogrammetrySessionC7OutputsV8IteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTY2_, v3, v5);
  }

  else
  {
    v6 = v2[1];

    return v6();
  }
}

uint64_t _s17RealityFoundation21PhotogrammetrySessionC7OutputsV8IteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTY2_()
{
  v1 = v0[9];
  v2 = v0[7];
  v0[2] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  swift_willThrowTypedImpl();
  *v2 = v1;
  v3 = v0[1];

  return v3();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PhotogrammetrySession.process(requests:)(Swift::OpaquePointer requests)
{
  outlined init with copy of __REAssetService(v1 + OBJC_IVAR____TtC17RealityFoundation21PhotogrammetrySession_photogrammetrySession, v4);
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  v3 = off_1F4104580;
  type metadata accessor for PhotogrammetrySessionImpl(0);
  v3(requests._rawValue);
  __swift_destroy_boxed_opaque_existential_1(v4);
}

Swift::Void __swiftcall PhotogrammetrySession.cancel()()
{
  v1 = __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC17RealityFoundation21PhotogrammetrySession_photogrammetrySession), *(v0 + OBJC_IVAR____TtC17RealityFoundation21PhotogrammetrySession_photogrammetrySession + 24));
  v2 = *v1;
  v3 = *(*v1 + OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_serialExecutor);
  v4 = swift_allocObject();
  *(v4 + 16) = partial apply for closure #1 in PhotogrammetrySessionImpl.cancel();
  *(v4 + 24) = v2;
  v6[4] = _sIg_Ieg_TRTA_0;
  v6[5] = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = thunk for @escaping @callee_guaranteed () -> ();
  v6[3] = &block_descriptor_50;
  v5 = _Block_copy(v6);

  dispatch_sync(v3, v5);
  _Block_release(v5);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }
}

double PhotogrammetrySession.activeRequests.getter()
{
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC17RealityFoundation21PhotogrammetrySession_photogrammetrySession), *(v0 + OBJC_IVAR____TtC17RealityFoundation21PhotogrammetrySession_photogrammetrySession + 24));

  return result;
}

uint64_t PhotogrammetrySession.outputs.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *__swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC17RealityFoundation21PhotogrammetrySession_photogrammetrySession), *(v1 + OBJC_IVAR____TtC17RealityFoundation21PhotogrammetrySession_photogrammetrySession + 24)) + 16;

  return outlined init with copy of PhotogrammetrySession.Outputs(v3, a1);
}

uint64_t PhotogrammetrySession.init(source:configuration:)(uint64_t a1, uint64_t a2)
{
  v62 = a2;
  v4 = type metadata accessor for PhotogrammetrySession.Configuration(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v52 = (&v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v53 = &v50 - v7;
  v61 = type metadata accessor for UUID();
  v66 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v54 = &v50 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v50 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v56 = &v50 - v16;
  v17 = type metadata accessor for URL();
  v57 = *(v17 - 8);
  v58 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v55 = &v50 - v21;
  v22 = type metadata accessor for PhotogrammetrySession.InputSource(0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = (&v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = OBJC_IVAR____TtC17RealityFoundation21PhotogrammetrySession_sessionID;
  UUID.init()();
  v60 = a1;
  outlined init with copy of PhotogrammetrySession.Configuration(a1, v24, type metadata accessor for PhotogrammetrySession.InputSource);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v35 = v57;
    v36 = v55;
    v37 = v24;
    v38 = v58;
    (*(v57 + 32))(v55, v37, v58);
    v39 = *(v66 + 16);
    v51 = v2;
    v54 = v25;
    v40 = v2 + v25;
    v41 = v19;
    v42 = v56;
    v43 = v61;
    v39(v56, v40, v61);
    v39(v14, v42, v43);
    (*(v35 + 16))(v41, v36, v38);
    v44 = v53;
    outlined init with copy of PhotogrammetrySession.Configuration(v62, v53, type metadata accessor for PhotogrammetrySession.Configuration);
    v45 = v59;
    v46 = specialized PhotogrammetrySessionImpl.__allocating_init(id:input:configuration:)(v14, v41, v44);
    v28 = v51;
    if (v45)
    {
      outlined destroy of PhotogrammetrySession.Configuration(v62, type metadata accessor for PhotogrammetrySession.Configuration);
      outlined destroy of PhotogrammetrySession.Configuration(v60, type metadata accessor for PhotogrammetrySession.InputSource);
      v34 = *(v66 + 8);
      v30 = v61;
      v34(v56, v61);
      (*(v57 + 8))(v55, v58);
      v25 = v54;
      goto LABEL_6;
    }

    v48 = v46;
    v64 = type metadata accessor for PhotogrammetrySessionImpl(0);
    v65 = &protocol witness table for PhotogrammetrySessionImpl;
    *&v63 = v48;
    outlined destroy of PhotogrammetrySession.Configuration(v62, type metadata accessor for PhotogrammetrySession.Configuration);
    outlined destroy of PhotogrammetrySession.Configuration(v60, type metadata accessor for PhotogrammetrySession.InputSource);
    (*(v66 + 8))(v56, v61);
    (*(v57 + 8))(v55, v58);
LABEL_9:
    outlined init with take of ForceEffectBase(&v63, v28 + OBJC_IVAR____TtC17RealityFoundation21PhotogrammetrySession_photogrammetrySession);
    return v28;
  }

  v26 = *v24;
  v27 = *(v66 + 16);
  v28 = v2;
  v29 = v54;
  v30 = v61;
  v27(v54, v2 + v25, v61);
  v27(v9, v29, v30);
  v31 = v52;
  outlined init with copy of PhotogrammetrySession.Configuration(v62, v52, type metadata accessor for PhotogrammetrySession.Configuration);

  v32 = v59;
  v33 = specialized PhotogrammetrySessionImpl.__allocating_init<A>(id:input:configuration:)(v9, v26, v31);
  if (!v32)
  {
    v47 = v33;
    v64 = type metadata accessor for PhotogrammetrySessionImpl(0);
    v65 = &protocol witness table for PhotogrammetrySessionImpl;

    *&v63 = v47;
    outlined destroy of PhotogrammetrySession.Configuration(v62, type metadata accessor for PhotogrammetrySession.Configuration);
    outlined destroy of PhotogrammetrySession.Configuration(v60, type metadata accessor for PhotogrammetrySession.InputSource);
    (*(v66 + 8))(v29, v30);
    goto LABEL_9;
  }

  outlined destroy of PhotogrammetrySession.Configuration(v62, type metadata accessor for PhotogrammetrySession.Configuration);
  outlined destroy of PhotogrammetrySession.Configuration(v60, type metadata accessor for PhotogrammetrySession.InputSource);
  v34 = *(v66 + 8);
  v34(v29, v30);
LABEL_6:
  v34((v28 + v25), v30);
  type metadata accessor for PhotogrammetrySession(0);
  swift_deallocPartialClassInstance();
  return v28;
}

uint64_t PhotogrammetrySession.deinit()
{
  v1 = OBJC_IVAR____TtC17RealityFoundation21PhotogrammetrySession_sessionID;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC17RealityFoundation21PhotogrammetrySession_photogrammetrySession));
  return v0;
}

uint64_t PhotogrammetrySession.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC17RealityFoundation21PhotogrammetrySession_sessionID;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC17RealityFoundation21PhotogrammetrySession_photogrammetrySession));

  return swift_deallocClassInstance();
}

uint64_t OrientedBoundingBox.hash(into:)()
{
  v2 = *v0;
  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  specialized SIMD.hash(into:)();
  specialized SIMD.hash(into:)(v2);
  specialized SIMD.hash(into:)();
  specialized SIMD.hash(into:)();

  return specialized SIMD.hash(into:)();
}

Swift::Int OrientedBoundingBox.hashValue.getter()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  specialized SIMD.hash(into:)();
  specialized SIMD.hash(into:)(v2);
  specialized SIMD.hash(into:)();
  specialized SIMD.hash(into:)();
  specialized SIMD.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance OrientedBoundingBox()
{
  v2 = *v0;
  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  specialized SIMD.hash(into:)();
  specialized SIMD.hash(into:)(v2);
  specialized SIMD.hash(into:)();
  specialized SIMD.hash(into:)();

  return specialized SIMD.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance OrientedBoundingBox()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  specialized SIMD.hash(into:)();
  specialized SIMD.hash(into:)(v2);
  specialized SIMD.hash(into:)();
  specialized SIMD.hash(into:)();
  specialized SIMD.hash(into:)();
  return Hasher._finalize()();
}

uint64_t PhotogrammetrySession.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC17RealityFoundation21PhotogrammetrySession_sessionID;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t protocol witness for Identifiable.id.getter in conformance PhotogrammetrySession@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC17RealityFoundation21PhotogrammetrySession_sessionID;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

__n128 PhotogrammetrySession.Pose.intrinsics.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 48);
  *a1 = *(v1 + 32);
  *(a1 + 16) = v3;
  result = *(v1 + 64);
  *(a1 + 32) = result;
  *(a1 + 48) = v2;
  return result;
}

uint64_t PhotogrammetrySession.Pose.lensDistortionData.getter@<X0>(void *a1@<X8>)
{
  outlined init with copy of [String : String](v1 + 88, &v8, &_sypSgMd, &_sypSgMR);
  if (v9)
  {
    outlined init with take of Any(&v8, &v10);
    result = swift_dynamicCast();
    v4 = v6;
    v5 = v7;
  }

  else
  {
    result = outlined destroy of BodyTrackingComponent?(&v8, &_sypSgMd, &_sypSgMR);
    v4 = 0;
    v5 = 0;
  }

  *a1 = v4;
  a1[1] = v5;
  return result;
}

uint64_t specialized static OrientedBoundingBox.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (vminv_u16(vmovn_s32(vceqq_f32(*a1, *a2))))
  {
    return specialized static BoundingBox.== infix(_:_:)(*(a1 + 16), *(a1 + 32), *(a2 + 16), *(a2 + 32));
  }

  else
  {
    return 0;
  }
}

uint64_t specialized static PhotogrammetrySession.Request.Geometry.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v8 = *(a1 + 48);
  v5 = *(a1 + 80);
  v6 = *(a1 + 64);
  v7 = *(a2 + 48);
  v3 = *(a2 + 80);
  v4 = *(a2 + 64);
  if ((specialized static Transform.== infix(_:_:)(*a1, *(a1 + 16), *(a1 + 32), *a2, *(a2 + 16), *(a2 + 32)) & 1) == 0 || (~vaddvq_s32(vandq_s8(vceqq_f32(v8, v7), xmmword_1C189FFB0)) & 0xF) != 0)
  {
    return 0;
  }

  return specialized static BoundingBox.== infix(_:_:)(v6, v5, v4, v3);
}

uint64_t specialized static PhotogrammetrySession.Request.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v44 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PhotogrammetrySession.Request(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v43 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21PhotogrammetrySessionC7RequestO_AEtMd, &_s17RealityFoundation21PhotogrammetrySessionC7RequestO_AEtMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v43 + *(v15 + 56) - v14;
  v17 = a1;
  v18 = &v43 - v14;
  outlined init with copy of PhotogrammetrySession.Configuration(v17, &v43 - v14, type metadata accessor for PhotogrammetrySession.Request);
  outlined init with copy of PhotogrammetrySession.Configuration(a2, v16, type metadata accessor for PhotogrammetrySession.Request);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        goto LABEL_26;
      }
    }

    else if (EnumCaseMultiPayload == 3)
    {
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        goto LABEL_26;
      }
    }

    else if (swift_getEnumCaseMultiPayload() == 4)
    {
      goto LABEL_26;
    }

    goto LABEL_17;
  }

  v20 = v44;
  if (!EnumCaseMultiPayload)
  {
    outlined init with copy of PhotogrammetrySession.Configuration(v18, v12, type metadata accessor for PhotogrammetrySession.Request);
    v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV3url_07RealityA021PhotogrammetrySessionC7RequestO6DetailO6detailAI8GeometryVSg8geometrytMd, &_s10Foundation3URLV3url_07RealityA021PhotogrammetrySessionC7RequestO6DetailO6detailAI8GeometryVSg8geometrytMR) + 64);
    v22 = *&v12[v21 + 80];
    v58 = *&v12[v21 + 64];
    v59 = v22;
    v60 = v12[v21 + 96];
    v23 = *&v12[v21 + 16];
    v54 = *&v12[v21];
    v55 = v23;
    v24 = *&v12[v21 + 48];
    v56 = *&v12[v21 + 32];
    v57 = v24;
    if (swift_getEnumCaseMultiPayload())
    {
      (*(v20 + 8))(v12, v4);
LABEL_17:
      outlined destroy of BodyTrackingComponent?(v18, &_s17RealityFoundation21PhotogrammetrySessionC7RequestO_AEtMd, &_s17RealityFoundation21PhotogrammetrySessionC7RequestO_AEtMR);
      return 0;
    }

    v38 = *&v16[v21 + 80];
    v51 = *&v16[v21 + 64];
    v52 = v38;
    v53 = v16[v21 + 96];
    v39 = *&v16[v21 + 16];
    v47 = *&v16[v21];
    v48 = v39;
    v40 = *&v16[v21 + 48];
    v49 = *&v16[v21 + 32];
    v50 = v40;
    (*(v20 + 32))(v6, v16, v4);
    v41 = static URL.== infix(_:_:)();
    v42 = *(v20 + 8);
    v42(v6, v4);
    v42(v12, v4);
    if ((v41 & 1) == 0)
    {
      goto LABEL_27;
    }

    v65 = v58;
    v66 = v59;
    v67 = v60;
    v61 = v54;
    v62 = v55;
    v63 = v56;
    v64 = v57;
    v68 = v47;
    v69 = v48;
    v74 = v53;
    v72 = v51;
    v73 = v52;
    v70 = v49;
    v71 = v50;
    if (v60)
    {
      goto LABEL_21;
    }

    v45[4] = v58;
    v45[5] = v59;
    v46 = v60;
    v45[0] = v54;
    v45[1] = v55;
    v45[2] = v56;
    v45[3] = v57;
    if (v74)
    {
LABEL_27:
      outlined destroy of PhotogrammetrySession.Configuration(v18, type metadata accessor for PhotogrammetrySession.Request);
      return 0;
    }

    v36 = v45;
LABEL_25:
    if (specialized static PhotogrammetrySession.Request.Geometry.== infix(_:_:)(v36, &v68))
    {
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  outlined init with copy of PhotogrammetrySession.Configuration(v18, v9, type metadata accessor for PhotogrammetrySession.Request);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    goto LABEL_17;
  }

  v25 = *(v16 + 5);
  v72 = *(v16 + 4);
  v73 = v25;
  v74 = v16[96];
  v26 = *(v16 + 1);
  v68 = *v16;
  v69 = v26;
  v27 = *(v16 + 3);
  v70 = *(v16 + 2);
  v71 = v27;
  v28 = *(v9 + 1);
  v61 = *v9;
  v62 = v28;
  v29 = *(v9 + 2);
  v30 = *(v9 + 3);
  v31 = *(v9 + 4);
  v32 = *(v9 + 5);
  v67 = v9[96];
  v65 = v31;
  v66 = v32;
  v63 = v29;
  v64 = v30;
  if ((v67 & 1) == 0)
  {
    v33 = *(v9 + 5);
    v58 = *(v9 + 4);
    v59 = v33;
    v60 = v9[96];
    v34 = *(v9 + 1);
    v54 = *v9;
    v55 = v34;
    v35 = *(v9 + 3);
    v56 = *(v9 + 2);
    v57 = v35;
    if (v74)
    {
      goto LABEL_27;
    }

    v36 = &v54;
    goto LABEL_25;
  }

LABEL_21:
  if ((v74 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_26:
  outlined destroy of PhotogrammetrySession.Configuration(v18, type metadata accessor for PhotogrammetrySession.Request);
  return 1;
}

uint64_t specialized static PhotogrammetrySession.Configuration.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSg_ADtMd, &_s10Foundation3URLVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v24 - v13;
  if (__PAIR64__(a1[1], *a1) != __PAIR64__(a2[1], *a2) || a1[2] != a2[2])
  {
    goto LABEL_9;
  }

  v15 = v12;
  v24 = type metadata accessor for PhotogrammetrySession.Configuration(0);
  v16 = *(v24 + 28);
  v17 = *(v15 + 48);
  outlined init with copy of [String : String](&a1[v16], v14, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v25 = v17;
  outlined init with copy of [String : String](&a2[v16], &v14[v17], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v18 = *(v5 + 48);
  if (v18(v14, 1, v4) == 1)
  {
    if (v18(&v14[v25], 1, v4) == 1)
    {
      outlined destroy of BodyTrackingComponent?(v14, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
LABEL_12:
      v20 = a1[*(v24 + 32)] ^ a2[*(v24 + 32)] ^ 1;
      return v20 & 1;
    }

    goto LABEL_8;
  }

  outlined init with copy of [String : String](v14, v10, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v19 = v25;
  if (v18(&v14[v25], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_8:
    outlined destroy of BodyTrackingComponent?(v14, &_s10Foundation3URLVSg_ADtMd, &_s10Foundation3URLVSg_ADtMR);
    goto LABEL_9;
  }

  (*(v5 + 32))(v7, &v14[v19], v4);
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
  v22 = dispatch thunk of static Equatable.== infix(_:_:)();
  v23 = *(v5 + 8);
  v23(v7, v4);
  v23(v10, v4);
  outlined destroy of BodyTrackingComponent?(v14, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if (v22)
  {
    goto LABEL_12;
  }

LABEL_9:
  v20 = 0;
  return v20 & 1;
}

NSObject *specialized PhotogrammetrySessionImpl.__allocating_init<A>(id:input:configuration:)(uint64_t a1, void *a2, NSObject *a3)
{
  v93 = a2;
  v94 = a1;
  v92 = type metadata accessor for UUID();
  v4 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v89 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for PhotogrammetrySession.Configuration(0);
  MEMORY[0x1EEE9AC00](v90);
  v7 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v79 - v9);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v79 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v79 - v18;
  v20 = v91;
  specialized static PhotogrammetrySessionImpl.verifyFreeStorageForSequenceInputOrThrow(configuration:)(a3);
  v91 = v20;
  if (v20)
  {

    outlined destroy of PhotogrammetrySession.Configuration(a3, type metadata accessor for PhotogrammetrySession.Configuration);
    (*(v4 + 8))(v94, v92);
    return v10;
  }

  v86 = v13;
  v87 = v4;
  v81 = v7;
  v82 = v10;
  v80 = v16;
  v84 = v14;
  v21 = v90;
  v22 = *(v90 + 28);
  v88 = a3;
  outlined init with copy of [String : String](a3 + v22, v19, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v23 = type metadata accessor for URL();
  v24 = (*(*(v23 - 8) + 48))(v19, 1, v23);
  outlined destroy of BodyTrackingComponent?(v19, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if (v24 == 1)
  {
    if (one-time initialization token for logger == -1)
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
  v25 = type metadata accessor for Logger();
  v83 = __swift_project_value_buffer(v25, logger);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.info.getter();
  v28 = os_log_type_enabled(v26, v27);
  v29 = v89;
  v30 = v86;
  if (v28)
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_1C1358000, v26, v27, "Creating internal photogrammetry session from photogrammetry samples...", v31, 2u);
    MEMORY[0x1C6902A30](v31, -1, -1);
  }

  v32 = type metadata accessor for PhotogrammetrySession.Configuration();
  v85 = &v79;
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v79 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PhotogrammetrySession.Configuration(v88, v30, type metadata accessor for PhotogrammetrySession.Configuration);
  PhotogrammetrySession.Configuration.init(_:)(v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12_SequenceBoxCys07LazyMapA0Vys03AnyA0Vy17RealityFoundation20PhotogrammetrySampleVG6CoreOCAHVGGMd, &_ss12_SequenceBoxCys07LazyMapA0Vys03AnyA0Vy17RealityFoundation20PhotogrammetrySampleVG6CoreOCAHVGGMR);
  v36 = swift_allocObject();
  v36[2] = v93;
  v36[3] = closure #1 in PhotogrammetrySessionImpl.init<A>(id:input:configuration:);
  v36[4] = 0;
  v37 = MEMORY[0x1EEE9AC00](v36);
  (*(v33 + 16))(v35, v35, v32, v37);
  type metadata accessor for PhotogrammetrySession();
  swift_allocObject();

  v38 = v91;
  v39 = PhotogrammetrySession.init(photogrammetrySamples:configuration:)();
  if (!v38)
  {
    v41 = v39;
    v42 = v87;
    v43 = v92;
    (*(v87 + 16))(v29, v94, v92);
    v44 = v82;
    outlined init with copy of PhotogrammetrySession.Configuration(v88, v82, type metadata accessor for PhotogrammetrySession.Configuration);
    type metadata accessor for PhotogrammetrySessionImpl(0);
    swift_allocObject();
    v10 = PhotogrammetrySessionImpl.init(id:using:configuration:)(v29, v41, v44);
    (*(v33 + 8))(v35, v32);

    PhotogrammetrySessionImpl.logAnalyticsEvents(sourceType:)(1);

    outlined destroy of PhotogrammetrySession.Configuration(v88, type metadata accessor for PhotogrammetrySession.Configuration);
    (*(v42 + 8))(v94, v43);
    return v10;
  }

  v40 = v21;
  (*(v33 + 8))(v35, v32);

  v96 = v38;
  v45 = type metadata accessor for PhotogrammetrySession.Error();
  v46 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v48 = &v79 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v50 = (*(v46 + 88))(v48, v45);
    v51 = v50;
    if (MEMORY[0x1E6998308] && v50 == *MEMORY[0x1E6998308])
    {

      v52 = v81;
      outlined init with copy of PhotogrammetrySession.Configuration(v88, v81, type metadata accessor for PhotogrammetrySession.Configuration);
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        LODWORD(v91) = v54;
        v56 = v52;
        v57 = v55;
        v93 = swift_slowAlloc();
        v95 = v93;
        *v57 = 141558274;
        *(v57 + 4) = 1752392040;
        *(v57 + 12) = 2080;
        outlined init with copy of [String : String](v56 + *(v40 + 28), v80, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        v58 = String.init<A>(describing:)();
        v60 = v59;
        outlined destroy of PhotogrammetrySession.Configuration(v56, type metadata accessor for PhotogrammetrySession.Configuration);
        v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v60, &v95);

        *(v57 + 14) = v61;
        _os_log_impl(&dword_1C1358000, v53, v91, "Internal photogrammetry session init for photogrammetry samples failed for checkpointDirectory = %{mask.hash}s", v57, 0x16u);
        v62 = v93;
        __swift_destroy_boxed_opaque_existential_1(v93);
        MEMORY[0x1C6902A30](v62, -1, -1);
        MEMORY[0x1C6902A30](v57, -1, -1);
      }

      else
      {

        outlined destroy of PhotogrammetrySession.Configuration(v52, type metadata accessor for PhotogrammetrySession.Configuration);
      }

      v75 = v87;
      lazy protocol witness table accessor for type PhotogrammetrySession.Error and conformance PhotogrammetrySession.Error();
      swift_allocError();
      (*(v46 + 104))(v76, v51, v45);
      swift_willThrow();
      outlined destroy of PhotogrammetrySession.Configuration(v88, type metadata accessor for PhotogrammetrySession.Configuration);
      isa = v75[1].isa;
      v10 = v75 + 1;
      isa(v94, v92);
LABEL_26:

      return v10;
    }

    if (MEMORY[0x1E69982F8] && v50 == *MEMORY[0x1E69982F8])
    {

      v10 = Logger.logObject.getter();
      v63 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v10, v63))
      {
        v64 = swift_slowAlloc();
        *v64 = 0;
        _os_log_impl(&dword_1C1358000, v10, v63, "Internal photogrammetry session init for photogrammetry samples failed!", v64, 2u);
        MEMORY[0x1C6902A30](v64, -1, -1);
      }

      lazy protocol witness table accessor for type PhotogrammetrySession.Error and conformance PhotogrammetrySession.Error();
      swift_allocError();
      (*(v46 + 104))(v65, v51, v45);
      swift_willThrow();
      outlined destroy of PhotogrammetrySession.Configuration(v88, type metadata accessor for PhotogrammetrySession.Configuration);
      (*(v87 + 8))(v94, v92);
      goto LABEL_26;
    }

    (*(v46 + 8))(v48, v45);
  }

  v66 = v38;
  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v96 = v70;
    *v69 = 136446210;
    swift_getErrorValue();
    v71 = Error.localizedDescription.getter();
    v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, v72, &v96);

    *(v69 + 4) = v73;
    _os_log_impl(&dword_1C1358000, v67, v68, "Internal photogrammetry session init for photogrammetry samples failed with %{public}s", v69, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v70);
    MEMORY[0x1C6902A30](v70, -1, -1);
    MEMORY[0x1C6902A30](v69, -1, -1);
  }

  v74 = v87;
  v10 = v88;
  swift_willThrow();
  outlined destroy of PhotogrammetrySession.Configuration(v10, type metadata accessor for PhotogrammetrySession.Configuration);
  (*(v74 + 8))(v94, v92);
  return v10;
}

uint64_t outlined init with copy of PhotogrammetrySession.Configuration(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined assign with take of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of PhotogrammetrySession.Configuration(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of PhotogrammetrySession.Request(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotogrammetrySession.Request(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double block_copy_helper_50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t lazy protocol witness table accessor for type PhotogrammetrySession.Configuration.SampleOrdering and conformance PhotogrammetrySession.Configuration.SampleOrdering()
{
  result = lazy protocol witness table cache variable for type PhotogrammetrySession.Configuration.SampleOrdering and conformance PhotogrammetrySession.Configuration.SampleOrdering;
  if (!lazy protocol witness table cache variable for type PhotogrammetrySession.Configuration.SampleOrdering and conformance PhotogrammetrySession.Configuration.SampleOrdering)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PhotogrammetrySession.Configuration.SampleOrdering, &type metadata for PhotogrammetrySession.Configuration.SampleOrdering, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PhotogrammetrySession.Configuration.SampleOrdering and conformance PhotogrammetrySession.Configuration.SampleOrdering);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhotogrammetrySession.Configuration.FeatureSensitivity and conformance PhotogrammetrySession.Configuration.FeatureSensitivity()
{
  result = lazy protocol witness table cache variable for type PhotogrammetrySession.Configuration.FeatureSensitivity and conformance PhotogrammetrySession.Configuration.FeatureSensitivity;
  if (!lazy protocol witness table cache variable for type PhotogrammetrySession.Configuration.FeatureSensitivity and conformance PhotogrammetrySession.Configuration.FeatureSensitivity)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PhotogrammetrySession.Configuration.FeatureSensitivity, &type metadata for PhotogrammetrySession.Configuration.FeatureSensitivity, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PhotogrammetrySession.Configuration.FeatureSensitivity and conformance PhotogrammetrySession.Configuration.FeatureSensitivity);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhotogrammetrySession.Request.Detail and conformance PhotogrammetrySession.Request.Detail()
{
  result = lazy protocol witness table cache variable for type PhotogrammetrySession.Request.Detail and conformance PhotogrammetrySession.Request.Detail;
  if (!lazy protocol witness table cache variable for type PhotogrammetrySession.Request.Detail and conformance PhotogrammetrySession.Request.Detail)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PhotogrammetrySession.Request.Detail, &type metadata for PhotogrammetrySession.Request.Detail, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PhotogrammetrySession.Request.Detail and conformance PhotogrammetrySession.Request.Detail);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhotogrammetrySession.Request.Geometry and conformance PhotogrammetrySession.Request.Geometry()
{
  result = lazy protocol witness table cache variable for type PhotogrammetrySession.Request.Geometry and conformance PhotogrammetrySession.Request.Geometry;
  if (!lazy protocol witness table cache variable for type PhotogrammetrySession.Request.Geometry and conformance PhotogrammetrySession.Request.Geometry)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PhotogrammetrySession.Request.Geometry, &type metadata for PhotogrammetrySession.Request.Geometry, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PhotogrammetrySession.Request.Geometry and conformance PhotogrammetrySession.Request.Geometry);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhotogrammetrySession.Output.ProcessingStage and conformance PhotogrammetrySession.Output.ProcessingStage()
{
  result = lazy protocol witness table cache variable for type PhotogrammetrySession.Output.ProcessingStage and conformance PhotogrammetrySession.Output.ProcessingStage;
  if (!lazy protocol witness table cache variable for type PhotogrammetrySession.Output.ProcessingStage and conformance PhotogrammetrySession.Output.ProcessingStage)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PhotogrammetrySession.Output.ProcessingStage, &type metadata for PhotogrammetrySession.Output.ProcessingStage, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PhotogrammetrySession.Output.ProcessingStage and conformance PhotogrammetrySession.Output.ProcessingStage);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhotogrammetrySession.Outputs.Iterator and conformance PhotogrammetrySession.Outputs.Iterator()
{
  result = lazy protocol witness table cache variable for type PhotogrammetrySession.Outputs.Iterator and conformance PhotogrammetrySession.Outputs.Iterator;
  if (!lazy protocol witness table cache variable for type PhotogrammetrySession.Outputs.Iterator and conformance PhotogrammetrySession.Outputs.Iterator)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PhotogrammetrySession.Outputs.Iterator, &type metadata for PhotogrammetrySession.Outputs.Iterator, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PhotogrammetrySession.Outputs.Iterator and conformance PhotogrammetrySession.Outputs.Iterator);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OrientedBoundingBox and conformance OrientedBoundingBox()
{
  result = lazy protocol witness table cache variable for type OrientedBoundingBox and conformance OrientedBoundingBox;
  if (!lazy protocol witness table cache variable for type OrientedBoundingBox and conformance OrientedBoundingBox)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OrientedBoundingBox, &type metadata for OrientedBoundingBox, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type OrientedBoundingBox and conformance OrientedBoundingBox);
  }

  return result;
}

uint64_t type metadata completion function for PhotogrammetrySession(uint64_t a1)
{
  result = type metadata accessor for UUID();
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

uint64_t dispatch thunk of PhotogrammetrySession.process(requests:)()
{
  return (*(*v0 + 96))();
}

{
  return MEMORY[0x1EEDF9B10]();
}

uint64_t dispatch thunk of PhotogrammetrySession.cancel()()
{
  return (*(*v0 + 104))();
}

{
  return MEMORY[0x1EEDF9AD0]();
}

uint64_t type metadata completion function for PhotogrammetrySession.Error(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for (requiredBytes: Int64)();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for (requiredBytes: Int64)()
{
  result = lazy cache variable for type metadata for (requiredBytes: Int64);
  if (!lazy cache variable for type metadata for (requiredBytes: Int64))
  {
    result = MEMORY[0x1E69E7360];
    atomic_store(MEMORY[0x1E69E7360], &lazy cache variable for type metadata for (requiredBytes: Int64));
  }

  return result;
}

void type metadata completion function for PhotogrammetrySession.Configuration(uint64_t a1)
{
  type metadata accessor for URL?(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void type metadata accessor for URL?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for URL?)
  {
    type metadata accessor for URL();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for URL?);
    }
  }
}

void type metadata accessor for (url: URL, detail: PhotogrammetrySession.Request.Detail, geometry: PhotogrammetrySession.Request.Geometry?)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (url: URL, detail: PhotogrammetrySession.Request.Detail, geometry: PhotogrammetrySession.Request.Geometry?))
  {
    type metadata accessor for URL();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s17RealityFoundation21PhotogrammetrySessionC7RequestO8GeometryVSgMd, &_s17RealityFoundation21PhotogrammetrySessionC7RequestO8GeometryVSgMR);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (url: URL, detail: PhotogrammetrySession.Request.Detail, geometry: PhotogrammetrySession.Request.Geometry?));
    }
  }
}

void type metadata accessor for (detail: PhotogrammetrySession.Request.Detail, geometry: PhotogrammetrySession.Request.Geometry?)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (detail: PhotogrammetrySession.Request.Detail, geometry: PhotogrammetrySession.Request.Geometry?))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s17RealityFoundation21PhotogrammetrySessionC7RequestO8GeometryVSgMd, &_s17RealityFoundation21PhotogrammetrySessionC7RequestO8GeometryVSgMR);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (detail: PhotogrammetrySession.Request.Detail, geometry: PhotogrammetrySession.Request.Geometry?));
    }
  }
}

uint64_t type metadata completion function for PhotogrammetrySession.Result(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ModelEntity();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

__n128 __swift_memcpy120_16(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PhotogrammetrySession.Pose(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 120))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 112);
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

uint64_t storeEnumTagSinglePayload for PhotogrammetrySession.Pose(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 120) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 120) = 0;
    }

    if (a2)
    {
      *(result + 112) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy20_16(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

void type metadata completion function for PhotogrammetrySession.Output(uint64_t a1)
{
  type metadata accessor for (PhotogrammetrySession.Request, Error)(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for (PhotogrammetrySession.Request, PhotogrammetrySession.Result)(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for (PhotogrammetrySession.Request, fractionComplete: Double)(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for (id: Int, reason: String)();
        if (v4 <= 0x3F)
        {
          type metadata accessor for (id: Int)();
          if (v5 <= 0x3F)
          {
            type metadata accessor for (PhotogrammetrySession.Request, PhotogrammetrySession.Output.ProgressInfo)(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for (PhotogrammetrySession.Request, Error)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (PhotogrammetrySession.Request, Error))
  {
    type metadata accessor for PhotogrammetrySession.Request(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (PhotogrammetrySession.Request, Error));
    }
  }
}

void type metadata accessor for (PhotogrammetrySession.Request, PhotogrammetrySession.Result)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (PhotogrammetrySession.Request, PhotogrammetrySession.Result))
  {
    type metadata accessor for PhotogrammetrySession.Request(255);
    type metadata accessor for PhotogrammetrySession.Result(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (PhotogrammetrySession.Request, PhotogrammetrySession.Result));
    }
  }
}

void type metadata accessor for (PhotogrammetrySession.Request, fractionComplete: Double)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (PhotogrammetrySession.Request, fractionComplete: Double))
  {
    type metadata accessor for PhotogrammetrySession.Request(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (PhotogrammetrySession.Request, fractionComplete: Double));
    }
  }
}

void type metadata accessor for (id: Int, reason: String)()
{
  if (!lazy cache variable for type metadata for (id: Int, reason: String))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (id: Int, reason: String));
    }
  }
}

uint64_t type metadata accessor for (id: Int)()
{
  result = lazy cache variable for type metadata for (id: Int);
  if (!lazy cache variable for type metadata for (id: Int))
  {
    result = MEMORY[0x1E69E6530];
    atomic_store(MEMORY[0x1E69E6530], &lazy cache variable for type metadata for (id: Int));
  }

  return result;
}

void type metadata accessor for (PhotogrammetrySession.Request, PhotogrammetrySession.Output.ProgressInfo)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (PhotogrammetrySession.Request, PhotogrammetrySession.Output.ProgressInfo))
  {
    type metadata accessor for PhotogrammetrySession.Request(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (PhotogrammetrySession.Request, PhotogrammetrySession.Output.ProgressInfo));
    }
  }
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PhotogrammetrySession.Output.ProgressInfo(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 10))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 9);
  if (v3 <= 6)
  {
    v4 = 6;
  }

  else
  {
    v4 = *(a1 + 9);
  }

  v5 = v4 - 7;
  if (v3 < 6)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for PhotogrammetrySession.Output.ProgressInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 8) = 0;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 6;
    }
  }

  return result;
}

uint64_t type metadata completion function for PhotogrammetrySession.Request(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319, a2, a3);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void type metadata accessor for AnySequence<PhotogrammetrySample>()
{
  if (!lazy cache variable for type metadata for AnySequence<PhotogrammetrySample>)
  {
    v0 = type metadata accessor for AnySequence();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnySequence<PhotogrammetrySample>);
    }
  }
}

uint64_t ShaderGraphMaterial.parameterNames.getter()
{
  swift_beginAccess();
  v0 = REMaterialAssetCopyVisibleShaderGraphParameterNames();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = v0;
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

void ShaderGraphMaterial.getParameter(name:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = v3[5];
  v39 = v3[4];
  v40 = v7;
  v41[0] = v3[6];
  *(v41 + 9) = *(v3 + 105);
  v8 = v3[1];
  v35 = *v3;
  v36 = v8;
  v9 = v3[3];
  v37 = v3[2];
  v38 = v9;
  swift_beginAccess();
  v10 = MEMORY[0x1C68F3280](a1, a2);
  IsVisibleShaderGraphParameter = REMaterialAssetIsVisibleShaderGraphParameter();

  if (IsVisibleShaderGraphParameter)
  {
    *&v22 = 3027236;
    *(&v22 + 1) = 0xE300000000000000;
    MEMORY[0x1C68F3410](a1, a2);
    v12 = v22;
    v34[3] = &type metadata for ShaderGraphMaterial;
    v34[4] = &protocol witness table for ShaderGraphMaterial;
    v13 = swift_allocObject();
    v34[0] = v13;
    v14 = v40;
    v13[5] = v39;
    v13[6] = v14;
    v13[7] = v41[0];
    *(v13 + 121) = *(v41 + 9);
    v15 = v36;
    v13[1] = v35;
    v13[2] = v15;
    v16 = v38;
    v13[3] = v37;
    v13[4] = v16;
    __swift_project_boxed_opaque_existential_1(v34, &type metadata for ShaderGraphMaterial);
    outlined init with copy of ShaderGraphMaterial(&v35, &v22);
    Material.subscript.getter(v27, v12, *(&v12 + 1), &type metadata for ShaderGraphMaterial, &protocol witness table for ShaderGraphMaterial);

    if (v28 == 255)
    {
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v33 = v28;
    }

    else
    {
      v22 = v27[0];
      v23 = v27[1];
      v24 = v27[2];
      v25 = v27[3];
      v26 = v28;
      MaterialParameters.Value.init(_:)(&v22, &v29);
    }

    outlined destroy of MaterialParameters(v34);
    v17 = v33;
    v26 = v33;
    v22 = v29;
    v23 = v30;
    v24 = v31;
    v25 = v32;
    if (v33 == 255)
    {
      v19 = v32;
      *(a3 + 32) = v31;
      *(a3 + 48) = v19;
      *(a3 + 64) = v33;
      v20 = v30;
      *a3 = v29;
      *(a3 + 16) = v20;
      return;
    }

    v18 = *(&v22 + 1);
    if (v33)
    {
      *a3 = v22;
      *(a3 + 8) = v18;
      v21 = v31;
      *(a3 + 16) = v30;
      *(a3 + 32) = v21;
      *(a3 + 48) = v32;
    }

    else
    {

      outlined destroy of BodyTrackingComponent?(&v22, &_s17RealityFoundation18MaterialParametersV5ValueOSgMd, &_s17RealityFoundation18MaterialParametersV5ValueOSgMR);
      *a3 = v18;
      v17 = 1;
    }
  }

  else
  {
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    v17 = -1;
  }

  *(a3 + 64) = v17;
}

unint64_t specialized Collection.subscript.getter(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return String.subscript.getter();
  }

  __break(1u);
  return result;
}

void ShaderGraphMaterial.faceCulling.getter(char *a1@<X8>)
{
  v2 = 2;
  if ((*(v1 + 120) & 1) == 0)
  {
    if (*(v1 + 112) >= 3uLL)
    {
      v2 = 2;
    }

    else
    {
      v2 = *(v1 + 112);
    }
  }

  *a1 = v2;
}

void thunk for @escaping @callee_guaranteed (@unowned OpaquePointer?, @guaranteed CFErrorRef?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

Swift::Int ShaderGraphMaterial.Error.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

uint64_t ShaderGraphMaterial.__resource.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

double ShaderGraphMaterial.__parameterBlock.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;

  v6 = v5;

  return result;
}

void ShaderGraphMaterial.__parameterBlock.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a1[2];
  v5 = a1[3];

  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  *(v1 + 32) = v5;
}

id ShaderGraphMaterial.__directUniformsState.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[5];
  v3 = v1[6];
  v4 = v1[7];
  v5 = v1[8];
  v6 = v1[9];
  v7 = v1[10];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return outlined copy of DirectUniformsState(v2, v3, v4, v5, v6, v7);
}

__n128 ShaderGraphMaterial.__directUniformsState.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  outlined consume of DirectUniformsState(*(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 80));
  result = *a1;
  *(v1 + 56) = *(a1 + 16);
  *(v1 + 40) = result;
  *(v1 + 72) = v3;
  *(v1 + 80) = v4;
  return result;
}

uint64_t static ShaderGraphMaterial.parameterHandle(name:)@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  MEMORY[0x1C68F3410](a2, a3);
  type metadata accessor for MaterialParameters.Handle.SharedHandle();
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 36) = 1;
  String.utf8CString.getter();

  v5 = RESerializedMaterialParameterHandleCreate();

  *(v4 + 16) = v5;
  *a1 = v4;
  return result;
}

uint64_t ShaderGraphMaterial.setParameter(handle:value:)(uint64_t *a1, __int128 *a2)
{
  v4 = v2;
  v5 = *a1;
  v6 = a2[3];
  v77 = a2[2];
  v78 = v6;
  v79 = *(a2 + 64);
  v7 = a2[1];
  v75 = *a2;
  v76 = v7;
  v8 = *(v5 + 24);
  v9 = *v4;
  swift_beginAccess();
  if (!v8 || *(v9 + 16) != v8)
  {
    v10 = *(v4 + 5);
    v11 = *(v4 + 3);
    v65 = *(v4 + 4);
    v66 = v10;
    v12 = *(v4 + 5);
    v67[0] = *(v4 + 6);
    *(v67 + 9) = *(v4 + 105);
    v13 = *(v4 + 1);
    v61 = *v4;
    v62 = v13;
    v14 = *(v4 + 3);
    v16 = *v4;
    v15 = *(v4 + 1);
    v63 = *(v4 + 2);
    v64 = v14;
    v58 = v65;
    v59 = v12;
    v60[0] = *(v4 + 6);
    *(v60 + 9) = *(v4 + 105);
    v54 = v16;
    v55 = v15;
    v56 = v63;
    v57 = v11;
    v52[0] = v5;
    outlined init with copy of ShaderGraphMaterial(&v61, v53);
    v17 = ShaderGraphMaterial.isVisibleHandle(_:)(v52);
    v72 = v58;
    v73 = v59;
    v74[0] = v60[0];
    *(v74 + 9) = *(v60 + 9);
    v68 = v54;
    v69 = v55;
    v70 = v56;
    v71 = v57;
    outlined destroy of ShaderGraphMaterial(&v68);
    if ((v17 & 1) == 0)
    {
      lazy protocol witness table accessor for type ShaderGraphMaterial.Error and conformance ShaderGraphMaterial.Error();
      swift_allocError();
      *v31 = 1;
      return swift_willThrow();
    }

    v18 = v61.i64[0];
    swift_beginAccess();
    *(v5 + 24) = *(v18 + 16);
  }

  v70 = v77;
  v71 = v78;
  LOBYTE(v72) = v79;
  v68 = v75;
  v69 = v76;
  v19 = MaterialParameters.Value.getMaterialParameterType()();
  v21 = v19;
  if ((*(v5 + 36) & 1) != 0 || *(v5 + 32) != v19)
  {
    swift_beginAccess();
    ParameterTypeWithHandle = REMaterialAssetGetParameterTypeWithHandle();
    v23 = *(v4 + 5);
    v24 = *(v4 + 3);
    v72 = *(v4 + 4);
    v73 = v23;
    v25 = *(v4 + 5);
    v74[0] = *(v4 + 6);
    *(v74 + 9) = *(v4 + 105);
    v26 = *(v4 + 1);
    v68 = *v4;
    v69 = v26;
    v27 = *(v4 + 3);
    v29 = *v4;
    v28 = *(v4 + 1);
    v70 = *(v4 + 2);
    v71 = v27;
    v65 = v72;
    v66 = v25;
    v67[0] = *(v4 + 6);
    *(v67 + 9) = *(v4 + 105);
    v61 = v29;
    v62 = v28;
    v63 = v70;
    v64 = v24;
    ShaderGraphMaterial.validateParameterType(providedType:typeInEngine:)(v21, ParameterTypeWithHandle);
    if (v3)
    {
      v58 = v65;
      v59 = v66;
      v60[0] = v67[0];
      *(v60 + 9) = *(v67 + 9);
      v54 = v61;
      v55 = v62;
      v56 = v63;
      v57 = v64;
      outlined init with copy of ShaderGraphMaterial(&v68, v53);
      v30 = &v54;
      return outlined destroy of ShaderGraphMaterial(v30);
    }

    v58 = v65;
    v59 = v66;
    v60[0] = v67[0];
    *(v60 + 9) = *(v67 + 9);
    v54 = v61;
    v55 = v62;
    v56 = v63;
    v57 = v64;
    outlined init with copy of ShaderGraphMaterial(&v68, v53);
    outlined destroy of ShaderGraphMaterial(&v54);
    *(v5 + 32) = v21;
    *(v5 + 36) = 0;
  }

  if (v21 == 1)
  {
    v33 = *(v4 + 5);
    v72 = *(v4 + 4);
    v73 = v33;
    v74[0] = *(v4 + 6);
    *(v74 + 9) = *(v4 + 105);
    v34 = *(v4 + 3);
    v70 = *(v4 + 2);
    v71 = v34;
    v35 = *(v4 + 1);
    v68 = *v4;
    v69 = v35;
    outlined init with copy of ShaderGraphMaterial(&v68, &v61);
    Key = RESerializedMaterialParameterHandleGetKey();
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;

    v40 = String.index(_:offsetBy:)();
    v41 = specialized Collection.subscript.getter(v40, v37, v39);
    v43 = v42;
    v45 = v44;
    v47 = v46;

    v48 = MEMORY[0x1C68F3380](v41, v43, v45, v47);
    v50 = v49;

    v65 = v72;
    v66 = v73;
    v67[0] = v74[0];
    *(v67 + 9) = *(v74 + 9);
    v61 = v68;
    v62 = v69;
    v63 = v70;
    v64 = v71;
    v56 = v77;
    v57 = v78;
    LOBYTE(v58) = v79;
    v54 = v75;
    v55 = v76;
    ShaderGraphMaterial.validateTextureParameterType(keyName:value:)(v48, v50, &v54);
    if (v3)
    {

      v30 = &v68;
      return outlined destroy of ShaderGraphMaterial(v30);
    }

    outlined destroy of ShaderGraphMaterial(&v68);
  }

  v63 = v77;
  v64 = v78;
  LOBYTE(v65) = v79;
  v61 = v75;
  v62 = v76;
  __RKMaterialParameterBlock.Parameter.init(_:)(&v61, &v68, v76, v75, v20);
  outlined init with copy of MaterialParameters.Value(&v75, &v61);
  KeyUnownedCString = RESerializedMaterialParameterHandleGetKeyUnownedCString();
  v63 = v70;
  v64 = v71;
  LOBYTE(v65) = v72;
  v61 = v68;
  v62 = v69;
  __RKMaterialParameterBlock.unsafeSet(parameter:value:)(KeyUnownedCString, &v61);
  return outlined destroy of __RKMaterialParameterBlock.Parameter(&v68);
}

uint64_t ShaderGraphMaterial.isVisibleHandle(_:)(uint64_t a1)
{
  Key = RESerializedMaterialParameterHandleGetKey();
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  v17[0] = 46;
  v17[1] = 0xE100000000000000;
  v16[2] = v17;
  v5 = specialized Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)(0x7FFFFFFFFFFFFFFFLL, 1, partial apply for specialized closure #1 in Collection<>.split(separator:maxSplits:omittingEmptySubsequences:), v16, v2, v4, v17);
  if (v5[2] == 2)
  {
    v6 = v5[8];
    v7 = v5[9];
    v8 = v5[10];
    v9 = v5[11];

    v10 = MEMORY[0x1C68F3380](v6, v7, v8, v9);
    v12 = v11;

    swift_beginAccess();
    v13 = MEMORY[0x1C68F3280](v10, v12);

    IsVisibleShaderGraphParameter = REMaterialAssetIsVisibleShaderGraphParameter();

    return IsVisibleShaderGraphParameter;
  }

  else
  {

    return 0;
  }
}

uint64_t ShaderGraphMaterial.validateParameterType(providedType:typeInEngine:)(uint64_t result, int a2)
{
  if (!a2)
  {
    v2 = 1;
LABEL_13:
    lazy protocol witness table accessor for type ShaderGraphMaterial.Error and conformance ShaderGraphMaterial.Error();
    swift_allocError();
    *v3 = v2;
    return swift_willThrow();
  }

  if (a2 != result && (a2 != 5 || result != 4) && (result != 5 || a2 != 4) && (a2 != 20 || result != 19))
  {
    v2 = 0;
    if (result != 20 || a2 != 19)
    {
      goto LABEL_13;
    }
  }

  return result;
}

void ShaderGraphMaterial.getParameter(handle:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v6 = *v2;
  v5 = v2[1];
  v7 = *(v2 + 16);
  v8 = v2[3];
  v9 = v2[4];
  v10 = *(*a1 + 24);
  swift_beginAccess();
  if (!v10 || *(v6 + 16) != v10)
  {
    *&v28 = v6;
    *(&v28 + 1) = v5;
    LOBYTE(v29) = v7;
    *(&v29 + 1) = *(v2 + 17);
    DWORD1(v29) = *(v2 + 5);
    *(&v29 + 1) = v8;
    *v30 = v9;
    v31 = *(v2 + 9);
    v32 = *(v2 + 11);
    v33 = *(v2 + 13);
    v34 = *(v2 + 120);
    *&v30[8] = *(v2 + 5);
    *&v30[24] = *(v2 + 7);
    *&v23 = v4;
    if ((ShaderGraphMaterial.isVisibleHandle(_:)(&v23) & 1) == 0)
    {
      *(a2 + 32) = 0u;
      *(a2 + 48) = 0u;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      v16 = -1;
      goto LABEL_13;
    }

    *(v4 + 24) = *(v6 + 16);
  }

  Key = RESerializedMaterialParameterHandleGetKey();
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15 = v9;

  specialized String.withCString<A>(_:)(v12, v14, v15, &v28);

  v16 = v30[32];
  if (v30[32] == 255)
  {
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    v21[0] = v28;
    v21[1] = v29;
    v21[2] = *v30;
    v21[3] = *&v30[16];
    v22 = v30[32];
    MaterialParameters.Value.init(_:)(v21, &v23);
    v16 = v27;
    if (v27 == 255)
    {
      v18 = v26;
      *(a2 + 32) = v25;
      *(a2 + 48) = v18;
      *(a2 + 64) = v27;
      v19 = v24;
      *a2 = v23;
      *(a2 + 16) = v19;
      return;
    }

    v17 = *(&v23 + 1);
    if (v27)
    {
      *a2 = v23;
      *(a2 + 8) = v17;
      v20 = v25;
      *(a2 + 16) = v24;
      *(a2 + 32) = v20;
      *(a2 + 48) = v26;
    }

    else
    {

      outlined destroy of BodyTrackingComponent?(&v23, &_s17RealityFoundation18MaterialParametersV5ValueOSgMd, &_s17RealityFoundation18MaterialParametersV5ValueOSgMR);
      *a2 = v17;
      v16 = 1;
    }
  }

LABEL_13:
  *(a2 + 64) = v16;
}

void ShaderGraphMaterial.setParameter(name:value:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v5 = v3;
  v8 = a3[3];
  v85 = a3[2];
  v86 = v8;
  v87 = *(a3 + 64);
  v9 = a3[1];
  v83 = *a3;
  v84 = v9;
  v10 = v3[5];
  v88[4] = v3[4];
  v88[5] = v10;
  v89[0] = v3[6];
  *(v89 + 9) = *(v3 + 105);
  v11 = v3[1];
  v88[0] = *v3;
  v88[1] = v11;
  v12 = v3[3];
  v88[2] = v3[2];
  v88[3] = v12;
  swift_beginAccess();
  outlined init with copy of ShaderGraphMaterial(v88, v77);
  v13 = MEMORY[0x1C68F3280](a1, a2);
  IsVisibleShaderGraphParameter = REMaterialAssetIsVisibleShaderGraphParameter();

  outlined destroy of ShaderGraphMaterial(v88);
  if (IsVisibleShaderGraphParameter)
  {
    *&v70 = 3027236;
    *(&v70 + 1) = 0xE300000000000000;
    MEMORY[0x1C68F3410](a1, a2);
    v15 = v70;
    String.utf8CString.getter();
    ParameterType = REMaterialAssetGetParameterType();

    v17 = v5[5];
    v18 = v5[3];
    v80 = v5[4];
    v81 = v17;
    v19 = v5[5];
    v82[0] = v5[6];
    *(v82 + 9) = *(v5 + 105);
    v20 = v5[1];
    v77[0] = *v5;
    v77[1] = v20;
    v21 = v5[3];
    v23 = *v5;
    v22 = v5[1];
    v78 = v5[2];
    v79 = v21;
    v74 = v80;
    v75 = v19;
    v76[0] = v5[6];
    *(v76 + 9) = *(v5 + 105);
    v70 = v23;
    v71 = v22;
    v72 = v78;
    v73 = v18;
    v65 = v85;
    v66 = v86;
    LOBYTE(v67) = v87;
    v63 = v83;
    v64 = v84;
    v24 = MaterialParameters.Value.getMaterialParameterType()();
    ShaderGraphMaterial.validateParameterType(providedType:typeInEngine:)(v24, ParameterType);
    if (v4)
    {
      v67 = v74;
      v68 = v75;
      *v69 = v76[0];
      *&v69[9] = *(v76 + 9);
      v63 = v70;
      v64 = v71;
      v65 = v72;
      v66 = v73;
      outlined init with copy of ShaderGraphMaterial(v77, &v56);
      outlined destroy of ShaderGraphMaterial(&v63);
    }

    else
    {
      v67 = v74;
      v68 = v75;
      *v69 = v76[0];
      *&v69[9] = *(v76 + 9);
      v63 = v70;
      v64 = v71;
      v65 = v72;
      v66 = v73;
      outlined init with copy of ShaderGraphMaterial(v77, &v56);
      outlined destroy of ShaderGraphMaterial(&v63);
      if (ParameterType == 1)
      {
        v26 = v5[5];
        v27 = v5[3];
        v60 = v5[4];
        v61 = v26;
        v28 = v5[5];
        v62[0] = v5[6];
        *(v62 + 9) = *(v5 + 105);
        v29 = v5[1];
        v56 = *v5;
        v57 = v29;
        v30 = v5[3];
        v32 = *v5;
        v31 = v5[1];
        v58 = v5[2];
        v59 = v30;
        v53 = v60;
        v54 = v28;
        v55[0] = v5[6];
        *(v55 + 9) = *(v5 + 105);
        v49 = v32;
        v50 = v31;
        v51 = v58;
        v52 = v27;
        v46 = v85;
        v47 = v86;
        v48 = v87;
        v44 = v83;
        v45 = v84;
        outlined init with copy of ShaderGraphMaterial(&v56, v42);
        ShaderGraphMaterial.validateTextureParameterType(keyName:value:)(a1, a2, &v44);
        v42[4] = v53;
        v42[5] = v54;
        v43[0] = v55[0];
        *(v43 + 9) = *(v55 + 9);
        v42[0] = v49;
        v42[1] = v50;
        v42[2] = v51;
        v42[3] = v52;
        outlined destroy of ShaderGraphMaterial(v42);
      }

      v51 = v85;
      v52 = v86;
      LOBYTE(v53) = v87;
      v49 = v83;
      v50 = v84;
      v33 = v5[5];
      v60 = v5[4];
      v61 = v33;
      v62[0] = v5[6];
      *(v62 + 9) = *(v5 + 105);
      v34 = v5[1];
      v56 = *v5;
      v57 = v34;
      v35 = v5[3];
      v58 = v5[2];
      v59 = v35;
      *(&v45 + 1) = &type metadata for ShaderGraphMaterial;
      *&v46 = &protocol witness table for ShaderGraphMaterial;
      v36 = swift_allocObject();
      *&v44 = v36;
      v37 = v5[5];
      v36[5] = v5[4];
      v36[6] = v37;
      v36[7] = v5[6];
      *(v36 + 121) = *(v5 + 105);
      v38 = v5[1];
      v36[1] = *v5;
      v36[2] = v38;
      v39 = *(v5 + 2);
      v40 = *(v5 + 3);
      v36[3] = v39;
      v36[4] = v40;
      __RKMaterialParameterBlock.Parameter.init(_:)(&v49, v42, v39, v40, v41);
      __swift_mutable_project_boxed_opaque_existential_1(&v44, &type metadata for ShaderGraphMaterial);
      outlined init with copy of MaterialParameters.Value(&v83, &v49);
      outlined init with copy of ShaderGraphMaterial(&v56, &v49);
      Material.subscript.setter(v42, v15, *(&v15 + 1), &type metadata for ShaderGraphMaterial, &protocol witness table for ShaderGraphMaterial);
      specialized Material.parameters.setter(&v44);
    }
  }

  else
  {
    lazy protocol witness table accessor for type ShaderGraphMaterial.Error and conformance ShaderGraphMaterial.Error();
    swift_allocError();
    *v25 = 1;
    swift_willThrow();
  }
}

void ShaderGraphMaterial.validateTextureParameterType(keyName:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *a3;
  v3 = *(a3 + 8);
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  v11 = *(a3 + 32);
  v12 = *(a3 + 40);
  v13 = *(a3 + 48);
  v14 = *(a3 + 56);
  v7 = *(a3 + 64);
  swift_beginAccess();
  String.utf8CString.getter();
  TextureParameterType = REMaterialAssetGetTextureParameterType();

  if (TextureParameterType)
  {
    if (v7 == 1)
    {

      if (RETextureAssetGetTextureType())
      {
        lazy protocol witness table accessor for type ShaderGraphMaterial.Error and conformance ShaderGraphMaterial.Error();
        swift_allocError();
        *v9 = 0;
        swift_willThrow();
      }

      outlined consume of MaterialParameters.Value(v4, v3, v6, v5, v11, v12, v13, v14, 1);
    }
  }

  else
  {
    lazy protocol witness table accessor for type ShaderGraphMaterial.Error and conformance ShaderGraphMaterial.Error();
    swift_allocError();
    *v10 = 0;
    swift_willThrow();
  }
}

unsigned __int8 *(*ShaderGraphMaterial.triangleFillMode.modify(uint64_t a1))(unsigned __int8 *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 96) == 1;
  return ShaderGraphMaterial.triangleFillMode.modify;
}

uint64_t ShaderGraphMaterial.__faceCullMode.setter(uint64_t result, char a2)
{
  *(v2 + 112) = result;
  *(v2 + 120) = a2 & 1;
  return result;
}

uint64_t protocol witness for Material.__faceCullMode.setter in conformance ShaderGraphMaterial(uint64_t result, char a2)
{
  *(v2 + 112) = result;
  *(v2 + 120) = a2 & 1;
  return result;
}

id protocol witness for Material.__directUniformsState.getter in conformance ShaderGraphMaterial@<X0>(void *a1@<X8>)
{
  v2 = v1[5];
  v3 = v1[6];
  v4 = v1[7];
  v5 = v1[8];
  v6 = v1[9];
  v7 = v1[10];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return outlined copy of DirectUniformsState(v2, v3, v4, v5, v6, v7);
}

void ShaderGraphMaterial._Proto_Program.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  swift_beginAccess();
  MEMORY[0x1C68F4C10](*(v2 + 16));
  v3 = *(v1 + 24);
  NSObject.hash(into:)();
}

uint64_t ShaderGraphMaterial._Proto_Program.__allocating_init(from:constantValues:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  swift_allocObject();
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  *v5 = v2;
  v5[1] = ShaderGraphMaterial._Proto_Program.__allocating_init(from:constantValues:);

  return specialized ShaderGraphMaterial._Proto_Program.init(from:constantValues:)(a1, a2);
}

uint64_t ShaderGraphMaterial._Proto_Program.__allocating_init(from:constantValues:)(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t ShaderGraphMaterial._Proto_Program.init(from:constantValues:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  *v5 = v2;
  v5[1] = ShaderGraphMaterial._Proto_Program.init(from:constantValues:);

  return specialized ShaderGraphMaterial._Proto_Program.init(from:constantValues:)(a1, a2);
}

uint64_t ShaderGraphMaterial._Proto_Program.__allocating_init(named:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_allocObject();
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = static ShapeResource.generateBox(width:height:depth:);

  return ShaderGraphMaterial._Proto_Program.init(named:from:)(a1, a2, a3, a4);
}

uint64_t ShaderGraphMaterial._Proto_Program.init(named:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[71] = v4;
  v5[70] = a4;
  v5[69] = a3;
  v5[68] = a2;
  v5[67] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine22AsyncThrowingPublisherVy10RealityKit11LoadRequestCy0E10Foundation19ShaderGraphMaterialVGGMd, &_s7Combine22AsyncThrowingPublisherVy10RealityKit11LoadRequestCy0E10Foundation19ShaderGraphMaterialVGGMR);
  v5[72] = v6;
  v5[73] = *(v6 - 8);
  v5[74] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine22AsyncThrowingPublisherV8IteratorVy10RealityKit11LoadRequestCy0F10Foundation19ShaderGraphMaterialVG_GMd, &_s7Combine22AsyncThrowingPublisherV8IteratorVy10RealityKit11LoadRequestCy0F10Foundation19ShaderGraphMaterialVG_GMR);
  v5[75] = v7;
  v5[76] = *(v7 - 8);
  v5[77] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](ShaderGraphMaterial._Proto_Program.init(named:from:), 0, 0);
}

uint64_t ShaderGraphMaterial._Proto_Program.init(named:from:)()
{
  v1 = *(v0 + 592);
  v2 = *(v0 + 584);
  v24 = *(v0 + 576);
  v3 = *(v0 + 568);
  v4 = *(v0 + 560);
  v5 = *(v0 + 552);
  v6 = *(v0 + 544);
  v7 = *(v0 + 536);
  *(v3 + 24) = [objc_allocWithZone(MEMORY[0x1E6974060]) init];
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = v6;
  v8[4] = v5;
  v8[5] = v4;
  v9 = swift_allocObject();
  *(v9 + 16) = partial apply for closure #1 in ShaderGraphMaterial._Proto_Program.init(named:from:);
  *(v9 + 24) = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCy0A10Foundation19ShaderGraphMaterialVGMd, &_s10RealityKit11LoadRequestCy0A10Foundation19ShaderGraphMaterialVGMR);
  v11 = swift_allocObject();
  _ss6ResultOy17RealityFoundation19ShaderGraphMaterialVs5Error_pGSgWOi0_(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOyAA19ShaderGraphMaterialVs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOyAA19ShaderGraphMaterialVs5Error_pGSgGMR);
  v12 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v13 = swift_allocObject();
  v14 = *(v0 + 96);
  *(v12 + 88) = *(v0 + 80);
  *(v12 + 104) = v14;
  *(v12 + 120) = *(v0 + 112);
  *(v12 + 130) = *(v0 + 122);
  v15 = *(v0 + 32);
  *(v12 + 24) = *(v0 + 16);
  *(v12 + 40) = v15;
  v16 = *(v0 + 64);
  *(v12 + 56) = *(v0 + 48);
  *(v13 + 16) = 0;
  *(v12 + 16) = v13;
  *(v12 + 72) = v16;
  *(v11 + 16) = v12;
  v17 = swift_allocObject();
  v17[2] = _ss6ResultOy17RealityFoundation19ShaderGraphMaterialVs5Error_pGIeghn_Iegg_AByxsAF_pGRi_zRi0_zlyAEIsegn_Iegg_TRTA_0;
  v17[3] = v9;
  v17[4] = v12;
  v17[5] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy17RealityFoundation19ShaderGraphMaterialVs5Error_pGMd, &_s7Combine6FutureCy17RealityFoundation19ShaderGraphMaterialVs5Error_pGMR);
  swift_allocObject();
  outlined copy of Data._Representation(v5, v4);

  *(v11 + 24) = Future.init(_:)();
  v19 = specialized LoadRequest<A>.thenWaitForResourceSharing()(v18);
  *(v0 + 624) = v19;

  *(v0 + 528) = v19;
  v20 = lazy protocol witness table accessor for type LoadRequest<ShaderGraphMaterial> and conformance LoadRequest<A>();

  MEMORY[0x1C68F2E40](v0 + 528, v10, v20);
  AsyncThrowingPublisher.makeAsyncIterator()();
  (*(v2 + 8))(v1, v24);
  v21 = swift_task_alloc();
  *(v0 + 632) = v21;
  *v21 = v0;
  v21[1] = ShaderGraphMaterial._Proto_Program.init(named:from:);
  v22 = *(v0 + 600);

  return MEMORY[0x1EEDB5D38](v0 + 144, v22);
}

{
  *(*v1 + 640) = v0;

  if (v0)
  {
    v2 = ShaderGraphMaterial._Proto_Program.init(named:from:);
  }

  else
  {
    v2 = ShaderGraphMaterial._Proto_Program.init(named:from:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = *(v0 + 432);
  *(v1 + 24) = [objc_allocWithZone(MEMORY[0x1E6974060]) init];
  type metadata accessor for MainActor();
  *(v0 + 488) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](ShaderGraphMaterial._Proto_Program.init(named:from:), v3, v2);
}

{
  v1 = v0[52];
  v2 = v0[53];
  v3 = v0[51];

  v0[62] = static ShaderGraphMaterial.loadAsync(named:from:)(v3, v1, v2);

  return MEMORY[0x1EEE6DFA0](ShaderGraphMaterial._Proto_Program.init(named:from:), 0, 0);
}

{
  v2 = v0[56];
  v1 = v0[57];
  v3 = v0[55];
  v0[50] = v0[62];

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCy0A10Foundation19ShaderGraphMaterialVGMd, &_s10RealityKit11LoadRequestCy0A10Foundation19ShaderGraphMaterialVGMR);
  v5 = lazy protocol witness table accessor for type LoadRequest<ShaderGraphMaterial> and conformance LoadRequest<A>();
  MEMORY[0x1C68F2E40](v0 + 50, v4, v5);
  AsyncThrowingPublisher.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v6 = swift_task_alloc();
  v0[63] = v6;
  *v6 = v0;
  v6[1] = ShaderGraphMaterial._Proto_Program.init(named:from:);
  v7 = v0[58];

  return MEMORY[0x1EEDB5D38](v0 + 2, v7);
}

{
  *(*v1 + 512) = v0;

  if (v0)
  {
    v2 = ShaderGraphMaterial._Proto_Program.init(named:from:);
  }

  else
  {
    v2 = ShaderGraphMaterial._Proto_Program.init(named:from:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = *(v0 + 80);
  v2 = *(v0 + 96);
  *(v0 + 336) = v1;
  *(v0 + 352) = v2;
  v3 = *(v0 + 112);
  *(v0 + 368) = v3;
  v4 = *(v0 + 121);
  *(v0 + 377) = v4;
  v5 = *(v0 + 16);
  v6 = *(v0 + 32);
  *(v0 + 272) = v5;
  *(v0 + 288) = v6;
  v7 = *(v0 + 48);
  v8 = *(v0 + 64);
  *(v0 + 304) = v7;
  *(v0 + 320) = v8;
  *(v0 + 144) = v5;
  *(v0 + 160) = v6;
  *(v0 + 176) = v7;
  *(v0 + 192) = v8;
  *(v0 + 208) = v1;
  *(v0 + 224) = v2;
  *(v0 + 240) = v3;
  *(v0 + 249) = v4;
  v9 = _s17RealityFoundation19ShaderGraphMaterialVSgWOg((v0 + 144));
  v11 = *(v0 + 472);
  v10 = *(v0 + 480);
  v12 = *(v0 + 464);
  if (v9 == 1)
  {
    type metadata accessor for CancellationError();
    _sS2cEs5ErrorsWlTm_1(&lazy protocol witness table cache variable for type CancellationError and conformance CancellationError, 255, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
    swift_allocError();
    CancellationError.init()();
    swift_willThrow();

    (*(v11 + 8))(v10, v12);
    v13 = *(v0 + 424);

    type metadata accessor for ShaderGraphMaterial._Proto_Program();
    swift_deallocPartialClassInstance();
    v14 = type metadata accessor for URL();
    (*(*(v14 - 8) + 8))(v13, v14);

    v15 = *(v0 + 8);

    return v15();
  }

  else
  {
    v17 = *(v0 + 424);
    v18 = *(v0 + 432);
    (*(v11 + 8))(*(v0 + 480), *(v0 + 464));

    *(v18 + 16) = *(v0 + 144);

    outlined destroy of BodyTrackingComponent?(v0 + 272, &_s17RealityFoundation19ShaderGraphMaterialVSgMd, &_s17RealityFoundation19ShaderGraphMaterialVSgMR);
    v19 = type metadata accessor for URL();
    (*(*(v19 - 8) + 8))(v17, v19);

    v20 = *(v0 + 8);
    v21 = *(v0 + 432);

    return v20(v21);
  }
}

{
  v2 = v0[59];
  v1 = v0[60];
  v3 = v0[58];

  (*(v2 + 8))(v1, v3);
  v4 = v0[53];

  type metadata accessor for ShaderGraphMaterial._Proto_Program();
  swift_deallocPartialClassInstance();
  v5 = type metadata accessor for URL();
  (*(*(v5 - 8) + 8))(v4, v5);

  v6 = v0[1];

  return v6();
}

void closure #1 in ShaderGraphMaterial._Proto_Program.init(named:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  swift_unownedRetainStrong();

  isa = Data._bridgeToObjectiveC()().super.isa;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  aBlock[4] = partial apply for implicit closure #2 in implicit closure #1 in static ShaderGraphMaterial.loadAsyncFromMaterialX(materialLabel:url:fulfill:);
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer?, @guaranteed CFErrorRef?) -> ();
  aBlock[3] = &block_descriptor_51;
  v8 = _Block_copy(aBlock);

  String.utf8CString.getter();
  RIOEntityUsingMaterialCreateFromInMemoryDataBufferAsync();

  _Block_release(v8);
}

uint64_t ShaderGraphMaterial._Proto_Program.__allocating_init(named:from:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_allocObject();
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = static ShapeResource.generateBox(width:height:depth:);

  return ShaderGraphMaterial._Proto_Program.init(named:from:in:)(a1, a2, a3, a4, a5);
}

uint64_t ShaderGraphMaterial._Proto_Program.init(named:from:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[55] = a5;
  v6[56] = v5;
  v6[53] = a3;
  v6[54] = a4;
  v6[51] = a1;
  v6[52] = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine22AsyncThrowingPublisherVy10RealityKit11LoadRequestCy0E10Foundation19ShaderGraphMaterialVGGMd, &_s7Combine22AsyncThrowingPublisherVy10RealityKit11LoadRequestCy0E10Foundation19ShaderGraphMaterialVGGMR);
  v6[57] = v7;
  v6[58] = *(v7 - 8);
  v6[59] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine22AsyncThrowingPublisherV8IteratorVy10RealityKit11LoadRequestCy0F10Foundation19ShaderGraphMaterialVG_GMd, &_s7Combine22AsyncThrowingPublisherV8IteratorVy10RealityKit11LoadRequestCy0F10Foundation19ShaderGraphMaterialVG_GMR);
  v6[60] = v8;
  v6[61] = *(v8 - 8);
  v6[62] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](ShaderGraphMaterial._Proto_Program.init(named:from:in:), 0, 0);
}

uint64_t ShaderGraphMaterial._Proto_Program.init(named:from:in:)()
{
  v1 = *(v0 + 448);
  *(v1 + 24) = [objc_allocWithZone(MEMORY[0x1E6974060]) init];
  type metadata accessor for MainActor();
  *(v0 + 504) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](ShaderGraphMaterial._Proto_Program.init(named:from:in:), v3, v2);
}

{
  v1 = v0[54];
  v2 = v0[55];
  v4 = v0[52];
  v3 = v0[53];
  v5 = v0[51];

  v0[64] = static ShaderGraphMaterial.loadAsync(named:from:in:)(v5, v4, v3, v1, v2);

  return MEMORY[0x1EEE6DFA0](ShaderGraphMaterial._Proto_Program.init(named:from:in:), 0, 0);
}

{
  v2 = v0[58];
  v1 = v0[59];
  v3 = v0[57];
  v0[50] = v0[64];

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCy0A10Foundation19ShaderGraphMaterialVGMd, &_s10RealityKit11LoadRequestCy0A10Foundation19ShaderGraphMaterialVGMR);
  v5 = lazy protocol witness table accessor for type LoadRequest<ShaderGraphMaterial> and conformance LoadRequest<A>();
  MEMORY[0x1C68F2E40](v0 + 50, v4, v5);
  AsyncThrowingPublisher.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v6 = swift_task_alloc();
  v0[65] = v6;
  *v6 = v0;
  v6[1] = ShaderGraphMaterial._Proto_Program.init(named:from:in:);
  v7 = v0[60];

  return MEMORY[0x1EEDB5D38](v0 + 2, v7);
}

{
  *(*v1 + 528) = v0;

  if (v0)
  {
    v2 = ShaderGraphMaterial._Proto_Program.init(named:from:in:);
  }

  else
  {
    v2 = ShaderGraphMaterial._Proto_Program.init(named:from:in:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = *(v0 + 80);
  v2 = *(v0 + 96);
  *(v0 + 336) = v1;
  *(v0 + 352) = v2;
  v3 = *(v0 + 112);
  *(v0 + 368) = v3;
  v4 = *(v0 + 121);
  *(v0 + 377) = v4;
  v5 = *(v0 + 16);
  v6 = *(v0 + 32);
  *(v0 + 272) = v5;
  *(v0 + 288) = v6;
  v7 = *(v0 + 48);
  v8 = *(v0 + 64);
  *(v0 + 304) = v7;
  *(v0 + 320) = v8;
  *(v0 + 144) = v5;
  *(v0 + 160) = v6;
  *(v0 + 176) = v7;
  *(v0 + 192) = v8;
  *(v0 + 208) = v1;
  *(v0 + 224) = v2;
  *(v0 + 240) = v3;
  *(v0 + 249) = v4;
  v9 = _s17RealityFoundation19ShaderGraphMaterialVSgWOg((v0 + 144));
  v11 = *(v0 + 488);
  v10 = *(v0 + 496);
  v12 = *(v0 + 480);
  if (v9 == 1)
  {
    v13 = *(v0 + 440);
    type metadata accessor for CancellationError();
    _sS2cEs5ErrorsWlTm_1(&lazy protocol witness table cache variable for type CancellationError and conformance CancellationError, 255, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
    swift_allocError();
    CancellationError.init()();
    swift_willThrow();

    (*(v11 + 8))(v10, v12);
    type metadata accessor for ShaderGraphMaterial._Proto_Program();
    swift_deallocPartialClassInstance();

    v14 = *(v0 + 8);

    return v14();
  }

  else
  {
    v17 = *(v0 + 440);
    v16 = *(v0 + 448);
    (*(v11 + 8))(*(v0 + 496), *(v0 + 480));

    *(v16 + 16) = *(v0 + 144);

    outlined destroy of BodyTrackingComponent?(v0 + 272, &_s17RealityFoundation19ShaderGraphMaterialVSgMd, &_s17RealityFoundation19ShaderGraphMaterialVSgMR);

    v18 = *(v0 + 8);
    v19 = *(v0 + 448);

    return v18(v19);
  }
}

{
  v2 = v0[61];
  v1 = v0[62];
  v3 = v0[60];
  v4 = v0[55];

  (*(v2 + 8))(v1, v3);
  type metadata accessor for ShaderGraphMaterial._Proto_Program();
  swift_deallocPartialClassInstance();

  v5 = v0[1];

  return v5();
}

uint64_t ShaderGraphMaterial._Proto_Program.__allocating_init(named:from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = static ShapeResource.generateBox(width:height:depth:);

  return ShaderGraphMaterial._Proto_Program.init(named:from:)(a1, a2, a3);
}

uint64_t ShaderGraphMaterial._Proto_Program.init(named:from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[53] = a3;
  v4[54] = v3;
  v4[51] = a1;
  v4[52] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine22AsyncThrowingPublisherVy10RealityKit11LoadRequestCy0E10Foundation19ShaderGraphMaterialVGGMd, &_s7Combine22AsyncThrowingPublisherVy10RealityKit11LoadRequestCy0E10Foundation19ShaderGraphMaterialVGGMR);
  v4[55] = v5;
  v4[56] = *(v5 - 8);
  v4[57] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine22AsyncThrowingPublisherV8IteratorVy10RealityKit11LoadRequestCy0F10Foundation19ShaderGraphMaterialVG_GMd, &_s7Combine22AsyncThrowingPublisherV8IteratorVy10RealityKit11LoadRequestCy0F10Foundation19ShaderGraphMaterialVG_GMR);
  v4[58] = v6;
  v4[59] = *(v6 - 8);
  v4[60] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](ShaderGraphMaterial._Proto_Program.init(named:from:), 0, 0);
}

uint64_t ShaderGraphMaterial._Proto_Program.__allocating_init(materialXLabel:data:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_allocObject();
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = CustomMaterial.Program.__allocating_init(surfaceShader:geometryModifier:descriptor:);

  return ShaderGraphMaterial._Proto_Program.init(materialXLabel:data:)(a1, a2, a3, a4);
}

uint64_t ShaderGraphMaterial._Proto_Program.init(materialXLabel:data:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[71] = v4;
  v5[70] = a4;
  v5[69] = a3;
  v5[68] = a2;
  v5[67] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine22AsyncThrowingPublisherVy10RealityKit11LoadRequestCy0E10Foundation19ShaderGraphMaterialVGGMd, &_s7Combine22AsyncThrowingPublisherVy10RealityKit11LoadRequestCy0E10Foundation19ShaderGraphMaterialVGGMR);
  v5[72] = v6;
  v5[73] = *(v6 - 8);
  v5[74] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine22AsyncThrowingPublisherV8IteratorVy10RealityKit11LoadRequestCy0F10Foundation19ShaderGraphMaterialVG_GMd, &_s7Combine22AsyncThrowingPublisherV8IteratorVy10RealityKit11LoadRequestCy0F10Foundation19ShaderGraphMaterialVG_GMR);
  v5[75] = v7;
  v5[76] = *(v7 - 8);
  v5[77] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](ShaderGraphMaterial._Proto_Program.init(materialXLabel:data:), 0, 0);
}

uint64_t ShaderGraphMaterial._Proto_Program.init(materialXLabel:data:)()
{
  v1 = *(v0 + 592);
  v25 = *(v0 + 584);
  v24 = *(v0 + 576);
  v2 = *(v0 + 568);
  v3 = *(v0 + 560);
  v4 = *(v0 + 552);
  v5 = *(v0 + 544);
  v6 = *(v0 + 536);
  *(v2 + 24) = [objc_allocWithZone(MEMORY[0x1E6974060]) init];
  v7 = *(*(specialized static __ServiceLocator.shared.getter() + 168) + 16);
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = v4;
  v8[4] = v3;
  v8[5] = v6;
  v8[6] = v5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCy0A10Foundation19ShaderGraphMaterialVGMd, &_s10RealityKit11LoadRequestCy0A10Foundation19ShaderGraphMaterialVGMR);
  v10 = swift_allocObject();
  _ss6ResultOy17RealityFoundation19ShaderGraphMaterialVs5Error_pGSgWOi0_(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOyAA19ShaderGraphMaterialVs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOyAA19ShaderGraphMaterialVs5Error_pGSgGMR);
  v11 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v12 = swift_allocObject();
  v13 = *(v0 + 96);
  *(v11 + 88) = *(v0 + 80);
  *(v11 + 104) = v13;
  *(v11 + 120) = *(v0 + 112);
  *(v11 + 130) = *(v0 + 122);
  v14 = *(v0 + 32);
  *(v11 + 24) = *(v0 + 16);
  *(v11 + 40) = v14;
  v15 = *(v0 + 64);
  *(v11 + 56) = *(v0 + 48);
  *(v12 + 16) = 0;
  *(v11 + 16) = v12;
  *(v11 + 72) = v15;
  *(v10 + 16) = v11;
  v16 = swift_allocObject();
  v16[2] = partial apply for closure #1 in static ShaderGraphMaterial.loadMaterialXAsync(_:data:);
  v16[3] = v8;
  v16[4] = v11;
  v16[5] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy17RealityFoundation19ShaderGraphMaterialVs5Error_pGMd, &_s7Combine6FutureCy17RealityFoundation19ShaderGraphMaterialVs5Error_pGMR);
  swift_allocObject();
  v17 = v7;
  outlined copy of Data._Representation(v4, v3);

  *(v10 + 24) = Future.init(_:)();
  v19 = specialized LoadRequest<A>.thenWaitForResourceSharing()(v18);
  *(v0 + 624) = v19;

  *(v0 + 528) = v19;
  v20 = lazy protocol witness table accessor for type LoadRequest<ShaderGraphMaterial> and conformance LoadRequest<A>();

  MEMORY[0x1C68F2E40](v0 + 528, v9, v20);
  AsyncThrowingPublisher.makeAsyncIterator()();
  (*(v25 + 8))(v1, v24);
  v21 = swift_task_alloc();
  *(v0 + 632) = v21;
  *v21 = v0;
  v21[1] = ShaderGraphMaterial._Proto_Program.init(materialXLabel:data:);
  v22 = *(v0 + 600);

  return MEMORY[0x1EEDB5D38](v0 + 144, v22);
}

{
  *(*v1 + 640) = v0;

  if (v0)
  {
    v2 = ShaderGraphMaterial._Proto_Program.init(materialXLabel:data:);
  }

  else
  {
    v2 = ShaderGraphMaterial._Proto_Program.init(materialXLabel:data:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = *(v0 + 208);
  v2 = *(v0 + 224);
  *(v0 + 464) = v1;
  *(v0 + 480) = v2;
  v3 = *(v0 + 240);
  *(v0 + 496) = v3;
  v4 = *(v0 + 249);
  *(v0 + 505) = v4;
  v5 = *(v0 + 144);
  v6 = *(v0 + 160);
  *(v0 + 400) = v5;
  *(v0 + 416) = v6;
  v7 = *(v0 + 176);
  v8 = *(v0 + 192);
  *(v0 + 432) = v7;
  *(v0 + 448) = v8;
  *(v0 + 272) = v5;
  *(v0 + 288) = v6;
  *(v0 + 304) = v7;
  *(v0 + 320) = v8;
  *(v0 + 336) = v1;
  *(v0 + 352) = v2;
  *(v0 + 368) = v3;
  *(v0 + 377) = v4;
  v9 = _s17RealityFoundation19ShaderGraphMaterialVSgWOg((v0 + 272));
  v10 = *(v0 + 616);
  v11 = *(v0 + 608);
  v12 = *(v0 + 600);
  if (v9 == 1)
  {
    v13 = *(v0 + 560);
    v14 = *(v0 + 552);
    type metadata accessor for CancellationError();
    _sS2cEs5ErrorsWlTm_1(&lazy protocol witness table cache variable for type CancellationError and conformance CancellationError, 255, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
    swift_allocError();
    CancellationError.init()();
    swift_willThrow();

    outlined consume of Data._Representation(v14, v13);
    (*(v11 + 8))(v10, v12);

    type metadata accessor for ShaderGraphMaterial._Proto_Program();
    swift_deallocPartialClassInstance();

    v15 = *(v0 + 8);

    return v15();
  }

  else
  {
    v17 = *(v0 + 568);
    v18 = *(v0 + 560);
    v19 = *(v0 + 552);
    (*(v11 + 8))(*(v0 + 616), *(v0 + 600));

    outlined consume of Data._Representation(v19, v18);
    *(v17 + 16) = *(v0 + 272);

    outlined destroy of BodyTrackingComponent?(v0 + 400, &_s17RealityFoundation19ShaderGraphMaterialVSgMd, &_s17RealityFoundation19ShaderGraphMaterialVSgMR);

    v20 = *(v0 + 8);
    v21 = *(v0 + 568);

    return v20(v21);
  }
}

{
  v1 = v0[77];
  v2 = v0[76];
  v3 = v0[75];
  v4 = v0[70];
  v5 = v0[69];

  outlined consume of Data._Representation(v5, v4);
  (*(v2 + 8))(v1, v3);

  type metadata accessor for ShaderGraphMaterial._Proto_Program();
  swift_deallocPartialClassInstance();

  v6 = v0[1];

  return v6();
}

uint64_t ShaderGraphMaterial._Proto_Program.deinit()
{

  return v0;
}

uint64_t ShaderGraphMaterial._Proto_Program.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

Swift::Int ShaderGraphMaterial._Proto_Program.hashValue.getter()
{
  v1 = v0;
  Hasher.init(_seed:)();
  v2 = *(v0 + 16);
  swift_beginAccess();
  MEMORY[0x1C68F4C10](*(v2 + 16));
  v3 = *(v1 + 24);
  NSObject.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance ShaderGraphMaterial._Proto_Program(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  swift_beginAccess();
  MEMORY[0x1C68F4C10](*(v3 + 16));
  v4 = *(v2 + 24);
  NSObject.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ShaderGraphMaterial._Proto_Program()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  v2 = *(*v0 + 16);
  swift_beginAccess();
  MEMORY[0x1C68F4C10](*(v2 + 16));
  v3 = *(v1 + 24);
  NSObject.hash(into:)();

  return Hasher._finalize()();
}

uint64_t ShaderGraphMaterial._proto_program.getter()
{
  v1 = *v0;
  v2 = objc_allocWithZone(MEMORY[0x1E6974060]);

  v3 = [v2 init];
  type metadata accessor for ShaderGraphMaterial._Proto_Program();
  v4 = swift_allocObject();
  v5 = [objc_allocWithZone(MEMORY[0x1E6974060]) init];
  *(v4 + 24) = v3;

  *(v4 + 16) = v1;
  return v4;
}

void key path getter for ShaderGraphMaterial._proto_program : ShaderGraphMaterial(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = objc_allocWithZone(MEMORY[0x1E6974060]);

  v5 = [v4 init];
  type metadata accessor for ShaderGraphMaterial._Proto_Program();
  v6 = swift_allocObject();
  v7 = [objc_allocWithZone(MEMORY[0x1E6974060]) init];
  *(v6 + 24) = v5;

  *(v6 + 16) = v3;
  *a2 = v6;
}

uint64_t key path setter for ShaderGraphMaterial._proto_program : ShaderGraphMaterial(uint64_t *a1, uint64_t a2, __n128 a3)
{
  v4 = *a1;
  v5 = REMaterialParameterBlockValueCreate();

  *(a2 + 8) = MEMORY[0x1E69E7CC0];
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = v5;
  v6 = *(v4 + 16);

  *a2 = v6;
  return result;
}

uint64_t ShaderGraphMaterial._proto_program.setter(uint64_t a1, __n128 a2)
{
  v4 = REMaterialParameterBlockValueCreate();

  *(v2 + 8) = MEMORY[0x1E69E7CC0];
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = v4;
  v5 = *(a1 + 16);

  *v2 = v5;
  return result;
}

uint64_t (*ShaderGraphMaterial._proto_program.modify(uint64_t *a1))(uint64_t *a1, char a2, __n128 a3)
{
  v3 = *v1;
  a1[1] = v1;
  a1[2] = v3;
  v4 = objc_allocWithZone(MEMORY[0x1E6974060]);

  v5 = [v4 init];
  type metadata accessor for ShaderGraphMaterial._Proto_Program();
  v6 = swift_allocObject();
  v7 = [objc_allocWithZone(MEMORY[0x1E6974060]) init];
  *(v6 + 24) = v5;

  *(v6 + 16) = v3;
  *a1 = v6;
  return ShaderGraphMaterial._proto_program.modify;
}

uint64_t ShaderGraphMaterial._proto_program.modify(uint64_t *a1, char a2, __n128 a3)
{
  v3 = a1[1];
  v4 = *a1;
  if (a2)
  {

    v5 = REMaterialParameterBlockValueCreate();
    v6 = *(v3 + 32);

    *(v3 + 8) = MEMORY[0x1E69E7CC0];
    *(v3 + 16) = 0;
    *(v3 + 24) = 0;
    *(v3 + 32) = v5;
    v7 = *(v4 + 16);

    *v3 = v7;
  }

  else
  {
    v9 = REMaterialParameterBlockValueCreate();
    v10 = *(v3 + 32);

    *(v3 + 8) = MEMORY[0x1E69E7CC0];
    *(v3 + 16) = 0;
    *(v3 + 24) = 0;
    *(v3 + 32) = v9;
    v11 = *(v4 + 16);

    *v3 = v11;
  }

  return result;
}

uint64_t ShaderGraphMaterial.init(_Proto_program:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 96) = 0;
  *(a2 + 104) = 257;
  *(a2 + 112) = 0;
  *(a2 + 120) = 1;
  *a2 = *(a1 + 16);
  swift_retain_n();
  v3 = REMaterialParameterBlockValueCreate();
  *(a2 + 8) = MEMORY[0x1E69E7CC0];
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = v3;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = xmmword_1C18A9570;
  swift_beginAccess();

  ByteSizeOfSGUniforms = REMaterialAssetGetByteSizeOfSGUniforms();

  if (ByteSizeOfSGUniforms < 0)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 88) = ByteSizeOfSGUniforms;
  }

  return result;
}

uint64_t ShaderGraphMaterial._Proto_Program.__allocating_init(archive:constantValues:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v3[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](ShaderGraphMaterial._Proto_Program.__allocating_init(archive:constantValues:), 0, 0);
}

uint64_t ShaderGraphMaterial._Proto_Program.__allocating_init(archive:constantValues:)()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v4;
  v6[5] = v3;
  v6[6] = v2;
  outlined copy of Data._Representation(v4, v3);
  v7 = v2;
  v8 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC10RealityKit18__MaterialResourceC_Tt2g5(0, 0, v1, &async function pointer to partial apply for closure #1 in ShaderGraphMaterial._Proto_Program.init(archive:constantValues:), v6);
  v0[7] = v8;
  v9 = swift_task_alloc();
  v0[8] = v9;
  v10 = type metadata accessor for __MaterialResource();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *v9 = v0;
  v9[1] = ShaderGraphMaterial._Proto_Program.__allocating_init(archive:constantValues:);
  v12 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v0 + 2, v8, v10, v11, v12);
}

{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = ShaderGraphMaterial._Proto_Program.__allocating_init(archive:constantValues:);
  }

  else
  {
    v2 = ShaderGraphMaterial._Proto_Program.__allocating_init(archive:constantValues:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v0[10] = v0[2];
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = ShaderGraphMaterial._Proto_Program.__allocating_init(archive:constantValues:);

  return specialized RequestLoadable.awaitForResourceSharing()();
}

{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = ShaderGraphMaterial._Proto_Program.__allocating_init(archive:constantValues:);
  }

  else
  {
    v2 = ShaderGraphMaterial._Proto_Program.__allocating_init(archive:constantValues:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = v0[10];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[3];
  type metadata accessor for ShaderGraphMaterial._Proto_Program();
  v5 = swift_allocObject();
  v6 = [objc_allocWithZone(MEMORY[0x1E6974060]) init];

  outlined consume of Data._Representation(v4, v2);
  *(v5 + 24) = v3;

  *(v5 + 16) = v1;

  v7 = v0[1];

  return v7(v5);
}

{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];

  outlined consume of Data._Representation(v3, v1);

  v4 = v0[1];

  return v4();
}

{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];

  outlined consume of Data._Representation(v3, v1);

  v4 = v0[1];

  return v4();
}

uint64_t closure #1 in ShaderGraphMaterial._Proto_Program.init(archive:constantValues:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[27] = a5;
  v6[28] = a6;
  v6[25] = a1;
  v6[26] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in ShaderGraphMaterial._Proto_Program.init(archive:constantValues:), 0, 0);
}

uint64_t closure #1 in ShaderGraphMaterial._Proto_Program.init(archive:constantValues:)()
{
  v1 = specialized static __ServiceLocator.shared.getter();
  v0[30] = v1;
  swift_beginAccess();
  outlined init with copy of __REAssetService(v1 + 120, (v0 + 2));
  outlined init with copy of __REAssetService(v1 + 120, (v0 + 7));
  v2 = v0[10];
  v3 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v2);

  __REAssetService.asManager.getter(v2, v3);
  v0[31] = v4;
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  isa = Data._bridgeToObjectiveC()().super.isa;
  REAssetManagerShaderGraphMemoryAssetCreate();

  v0[32] = REMaterialAssetBuilderCreate();
  if (REAssetManagerCreateAssetHandle())
  {
    v6 = v0[29];
    REMaterialAssetBuilderSetMaterialDefinition();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11REShaderAPIVGMd, &_ss23_ContiguousArrayStorageCySo11REShaderAPIVGMR);
    inited = swift_initStackObject();
    v0[33] = inited;
    *(inited + 16) = xmmword_1C1897FC0;
    *(inited + 32) = 0x200000001;
    v0[34] = REFunctionLinkBuilderCreate();
    REFunctionLinkBuilderSetShaderStage();
    REFunctionLinkBuilderSetShaderFunctionName();
    REFunctionLinkBuilderSetLinkedFunctionName();
    REFunctionLinkBuilderSetLinkedFunctionLibrary();
    REFunctionLinkBuilderSetLinkedShaderAPIs();

    REFunctionLinkBuilderSetFunctionConstantValues();
    REMaterialAssetBuilderAddFunctionLinkBuilder();
    v8 = swift_initStackObject();
    v0[35] = v8;
    *(v8 + 16) = xmmword_1C1897FC0;
    *(v8 + 32) = 0x800000004;
    v0[36] = REFunctionLinkBuilderCreate();
    REFunctionLinkBuilderSetShaderStage();
    REFunctionLinkBuilderSetShaderFunctionName();
    REFunctionLinkBuilderSetLinkedFunctionName();
    REFunctionLinkBuilderSetLinkedFunctionLibrary();
    REFunctionLinkBuilderSetLinkedShaderAPIs();

    REFunctionLinkBuilderSetFunctionConstantValues();
    REMaterialAssetBuilderAddFunctionLinkBuilder();
    v9 = v0[5];
    v10 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v9);
    (*(v10 + 32))(v9, v10);
    v11 = REAssetManagerMaterialAssetBuilderBuild();
    v12 = type metadata accessor for TaskPriority();
    (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
    type metadata accessor for MainActor();
    v13 = static MainActor.shared.getter();
    v14 = swift_allocObject();
    v15 = MEMORY[0x1E69E85E0];
    v14[2] = v13;
    v14[3] = v15;
    v14[4] = v11;
    v16 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC10RealityKit18__MaterialResourceC_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in closure #1 in ShaderGraphMaterial._Proto_Program.init(archive:constantValues:), v14);
    v0[37] = v16;
    v17 = swift_task_alloc();
    v0[38] = v17;
    v18 = type metadata accessor for __MaterialResource();
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    *v17 = v0;
    v17[1] = closure #1 in ShaderGraphMaterial._Proto_Program.init(archive:constantValues:);
    v20 = v0[25];
    v21 = MEMORY[0x1E69E7288];

    return MEMORY[0x1EEE6DA10](v20, v16, v18, v19, v21);
  }

  else
  {
    lazy protocol witness table accessor for type ShaderGraphMaterial.Error and conformance ShaderGraphMaterial.Error();
    swift_allocError();
    *v22 = 2;
    swift_willThrow();
    RERelease();

    __swift_destroy_boxed_opaque_existential_1(v0 + 2);

    v23 = v0[1];

    return v23();
  }
}

{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = closure #1 in ShaderGraphMaterial._Proto_Program.init(archive:constantValues:);
  }

  else
  {
    v2 = closure #1 in ShaderGraphMaterial._Proto_Program.init(archive:constantValues:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{

  RERelease();
  RERelease();
  RERelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

{

  RERelease();
  RERelease();
  RERelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in closure #1 in ShaderGraphMaterial._Proto_Program.init(archive:constantValues:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in ShaderGraphMaterial._Proto_Program.init(archive:constantValues:), v6, v5);
}

uint64_t closure #1 in closure #1 in ShaderGraphMaterial._Proto_Program.init(archive:constantValues:)()
{
  v1 = v0[3];
  v2 = v0[2];

  type metadata accessor for __MaterialResource();
  v3 = swift_allocObject();
  RERetain();
  *(v3 + 16) = v1;
  REAssetHandleLoadNow();
  REAssetSetSwiftObject();
  *v2 = v3;
  v4 = v0[1];

  return v4();
}

uint64_t ShaderGraphMaterial._Proto_Program.archive.getter()
{
  swift_beginAccess();
  result = REMaterialAssetGetFunctionLinkCount();
  if ((result & 0x8000000000000000) == 0)
  {
    v1 = result;
    for (i = 0; ; ++i)
    {
      if (v1 == i)
      {
        return 0;
      }

      if (__OFADD__(i, 1))
      {
        break;
      }

      swift_beginAccess();
      REMaterialAssetGetFunctionLinkAtIndex();
      result = REFunctionLinkGetStage();
      if ((result - 3) <= 1)
      {
        REFunctionLinkGetLinkedFunctionLibrary();
        v3 = REMaterialAssetGetShaderGraphArchive();
        v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

        return v4;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unsigned __int8 *ShaderGraphMaterial.faceCulling.setter(unsigned __int8 *result)
{
  v2 = *result;
  v3 = v2 == 1;
  v4 = v2 > 1;
  v5 = v3;
  *(v1 + 112) = v5;
  *(v1 + 120) = v4;
  return result;
}

uint64_t *(*ShaderGraphMaterial.faceCulling.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  v2 = 2;
  if ((*(v1 + 120) & 1) == 0)
  {
    if (*(v1 + 112) >= 3uLL)
    {
      v2 = 2;
    }

    else
    {
      v2 = *(v1 + 112);
    }
  }

  *(a1 + 8) = v2;
  return ShaderGraphMaterial.faceCulling.modify;
}

uint64_t *ShaderGraphMaterial.faceCulling.modify(uint64_t *result)
{
  v1 = *result;
  v2 = *(result + 8);
  v3 = v2 == 1;
  v4 = v2 > 1;
  v5 = v3;
  *(v1 + 112) = v5;
  *(v1 + 120) = v4;
  return result;
}

uint64_t (*ShaderGraphMaterial.writesDepth.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 104);
  return ShaderGraphMaterial.writesDepth.modify;
}

uint64_t (*ShaderGraphMaterial.readsDepth.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 105);
  return ShaderGraphMaterial.readsDepth.modify;
}

unint64_t lazy protocol witness table accessor for type ShaderGraphMaterial.Error and conformance ShaderGraphMaterial.Error()
{
  result = lazy protocol witness table cache variable for type ShaderGraphMaterial.Error and conformance ShaderGraphMaterial.Error;
  if (!lazy protocol witness table cache variable for type ShaderGraphMaterial.Error and conformance ShaderGraphMaterial.Error)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ShaderGraphMaterial.Error, &type metadata for ShaderGraphMaterial.Error, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ShaderGraphMaterial.Error and conformance ShaderGraphMaterial.Error);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShaderGraphMaterial.Error and conformance ShaderGraphMaterial.Error;
  if (!lazy protocol witness table cache variable for type ShaderGraphMaterial.Error and conformance ShaderGraphMaterial.Error)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ShaderGraphMaterial.Error, &type metadata for ShaderGraphMaterial.Error, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ShaderGraphMaterial.Error and conformance ShaderGraphMaterial.Error);
  }

  return result;
}

BOOL specialized static ShaderGraphMaterial._Proto_Program.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  v4 = *(a1 + 16);
  swift_beginAccess();
  MEMORY[0x1C68F4C10](*(v4 + 16));
  v5 = *(a1 + 24);
  NSObject.hash(into:)();

  v6 = Hasher._finalize()();
  Hasher.init(_seed:)();
  v7 = *(a2 + 16);
  swift_beginAccess();
  MEMORY[0x1C68F4C10](*(v7 + 16));
  v8 = *(a2 + 24);
  NSObject.hash(into:)();

  return v6 == Hasher._finalize()();
}

uint64_t specialized ShaderGraphMaterial._Proto_Program.init(from:constantValues:)(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  return MEMORY[0x1EEE6DFA0](specialized ShaderGraphMaterial._Proto_Program.init(from:constantValues:), 0, 0);
}

uint64_t specialized ShaderGraphMaterial._Proto_Program.init(from:constantValues:)()
{
  v1 = v0[11];
  v2 = v0[12];
  *(v2 + 24) = [objc_allocWithZone(MEMORY[0x1E6974060]) init];
  v3 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v3 + 120, (v0 + 2));
  v4 = v0[5];
  v5 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
  v6 = *(v5 + 32);

  v6(v4, v5);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  swift_beginAccess();
  v7 = REShaderGraphMaterialRebuildWithFunctionConstants();
  type metadata accessor for __MaterialResource();
  v8 = swift_allocObject();
  RERetain();
  *(v8 + 16) = v7;
  REAssetHandleLoadNow();
  REAssetSetSwiftObject();

  v9 = *(v2 + 24);
  *(v2 + 16) = v8;
  *(v2 + 24) = v1;
  v10 = v1;

  v11 = v0[1];
  v12 = v0[12];

  return v11(v12);
}

unint64_t lazy protocol witness table accessor for type LoadRequest<ShaderGraphMaterial> and conformance LoadRequest<A>()
{
  result = lazy protocol witness table cache variable for type LoadRequest<ShaderGraphMaterial> and conformance LoadRequest<A>;
  if (!lazy protocol witness table cache variable for type LoadRequest<ShaderGraphMaterial> and conformance LoadRequest<A>)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10RealityKit11LoadRequestCy0A10Foundation19ShaderGraphMaterialVGMd, &_s10RealityKit11LoadRequestCy0A10Foundation19ShaderGraphMaterialVGMR);
    result = swift_getWitnessTable(protocol conformance descriptor for LoadRequest<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type LoadRequest<ShaderGraphMaterial> and conformance LoadRequest<A>);
  }

  return result;
}

uint64_t partial apply for closure #1 in ShaderGraphMaterial._Proto_Program.init(archive:constantValues:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for specialized closure #1 in ShaderCacheLoader.loadResource(forKey:);

  return closure #1 in ShaderGraphMaterial._Proto_Program.init(archive:constantValues:)(a1, v4, v5, v6, v7, v8);
}

uint64_t _sS2cEs5ErrorsWlTm_1(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = a3(a2);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ShaderGraphMaterial(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 121))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ShaderGraphMaterial(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 121) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 121) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of ShaderGraphMaterial._Proto_Program.__allocating_init(from:constantValues:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(v2 + 112) + **(v2 + 112));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = dispatch thunk of ShaderGraphMaterial._Proto_Program.__allocating_init(named:from:);

  return v8(a1, a2);
}

uint64_t dispatch thunk of ShaderGraphMaterial._Proto_Program.__allocating_init(named:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(v4 + 120) + **(v4 + 120));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = dispatch thunk of ShaderGraphMaterial._Proto_Program.__allocating_init(named:from:);

  return v12(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ShaderGraphMaterial._Proto_Program.__allocating_init(named:from:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(v5 + 128) + **(v5 + 128));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = dispatch thunk of ShaderGraphMaterial._Proto_Program.__allocating_init(named:from:);

  return v14(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of ShaderGraphMaterial._Proto_Program.__allocating_init(named:from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(v3 + 136) + **(v3 + 136));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = dispatch thunk of ShaderGraphMaterial._Proto_Program.__allocating_init(named:from:);

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of ShaderGraphMaterial._Proto_Program.__allocating_init(materialXLabel:data:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(v4 + 144) + **(v4 + 144));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = dispatch thunk of CustomMaterial.Program.__allocating_init(surfaceShader:geometryModifier:descriptor:);

  return v12(a1, a2, a3, a4);
}

uint64_t partial apply for closure #1 in closure #1 in ShaderGraphMaterial._Proto_Program.init(archive:constantValues:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in TextureResource.PartialContents.init(source:mipmaps:);

  return closure #1 in closure #1 in ShaderGraphMaterial._Proto_Program.init(archive:constantValues:)(a1, v4, v5, v6);
}

double block_copy_helper_51(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t Scene.physicsOrigin.getter()
{
  REPhysicsOriginComponentGetComponentType();
  RESceneGetComponentsOfClass();
  if (v0 < 1)
  {
    return 0;
  }

  Entity = REComponentGetEntity();
  if (REEntityGetSwiftObject())
  {
    type metadata accessor for Entity();
    return swift_dynamicCastClassUnconditional();
  }

  else
  {
    result = REEntityIsBeingDestroyed();
    if (result)
    {
      __break(1u);
    }

    else
    {
      specialized static Entity.entityInfoType(_:)(Entity);
      if (v3)
      {
        v4 = (*(v3 + 232))();
        v5 = *(v4 + 16);

        MEMORY[0x1C68F9740](v5, 0);
        *(v4 + 16) = Entity;
        MEMORY[0x1C68F9740](Entity, v4);

        return v4;
      }

      else
      {
        return makeEntity(for:)(Entity);
      }
    }
  }

  return result;
}

void *Scene.physicsOrigin.setter(uint64_t a1)
{
  REPhysicsOriginComponentGetComponentType();
  result = RESceneGetComponentsOfClass();
  if (v3 >= 1)
  {
    do
    {
      REComponentGetEntity();
      REPhysicsOriginComponentGetComponentType();
      REEntityRemoveComponentByClass();
      REPhysicsOriginComponentGetComponentType();
      result = RESceneGetComponentsOfClass();
    }

    while (v4 > 0);
  }

  if (a1)
  {
    REPhysicsOriginComponentGetComponentType();
    REEntityGetOrAddComponentByClass();
  }

  return result;
}

uint64_t (*Scene.physicsOrigin.modify(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = Scene.physicsOrigin.getter();
  return Scene.physicsOrigin.modify;
}

void *Scene.physicsOrigin.modify(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return Scene.physicsOrigin.setter(*a1);
  }

  Scene.physicsOrigin.setter(v2);
}

uint64_t NetPassthroughEncoder.encode<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v5 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v7 = v6;

  if (!v4)
  {
    v9 = *(v3 + 24);
    v10 = *(v3 + 32);
    *(v3 + 24) = v5;
    *(v3 + 32) = v7;
    return outlined consume of Data._Representation(v9, v10);
  }

  return result;
}

uint64_t NetPassthroughDecoder.decode<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = a1;
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v3 + 24);
  v10 = *(v3 + 32);

  outlined copy of Data._Representation(v9, v10);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v4)
  {
    outlined consume of Data._Representation(v9, v10);
  }

  else
  {
    v12 = v14;
    (*(v6 + 8))(v14, a2);
    outlined consume of Data._Representation(v9, v10);

    return (*(v6 + 32))(v12, v8, a2);
  }
}

uint64_t NetPassthroughEncoder.__deallocating_deinit()
{

  outlined consume of Data._Representation(*(v0 + 24), *(v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t specialized ecsNetSyncWriteSnapshot(_:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = *MEMORY[0x1E69E9840];
  result = RECustomComponentGetObject();
  if (result)
  {
    v5 = result;
    if (one-time initialization token for handlesToCustomComponentTypes != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v6 = static SceneManager.handlesToCustomComponentTypes;
    if (*(static SceneManager.handlesToCustomComponentTypes + 16) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(a2), (v8 & 1) != 0))
    {
      v9 = (*(v6 + 56) + 16 * v7);
      v10 = *v9;
      v11 = v9[1];
      v12 = swift_endAccess();
      v13 = MEMORY[0x1EEE9AC00](v12);
      (*(v11 + 32))(v5, v10, v11, v13);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSE_pMd, &_sSE_pMR);
      if (swift_dynamicCast())
      {
        outlined init with take of ForceEffectBase(&v29, v32);
        v14 = type metadata accessor for NetPassthroughEncoder();
        v15 = swift_allocObject();
        type metadata accessor for JSONEncoder();
        swift_allocObject();
        *(v15 + 16) = JSONEncoder.init()();
        *(v15 + 24) = xmmword_1C18A2C50;
        v17 = v33;
        v16 = v34;
        v18 = __swift_project_boxed_opaque_existential_1(v32, v33);
        *(&v30 + 1) = v14;
        v31 = &protocol witness table for NetPassthroughEncoder;
        *&v29 = v15;

        __swift_project_boxed_opaque_existential_1(&v29, v14);
        NetPassthroughEncoder.encode<A>(_:)(v18, v17, v16);
        __swift_destroy_boxed_opaque_existential_1(&v29);
        v20 = *(v15 + 24);
        v19 = *(v15 + 32);
        v21 = v19 >> 62;
        if ((v19 >> 62) > 1)
        {
          if (v21 != 2)
          {
            goto LABEL_28;
          }

          v23 = *(v20 + 16);
          v22 = *(v20 + 24);
          v24 = v22 - v23;
          if (!__OFSUB__(v22, v23))
          {
            goto LABEL_21;
          }

          __break(1u);
        }

        else if (!v21)
        {
          *&v29 = *(v15 + 24);
          WORD4(v29) = v19;
          BYTE10(v29) = BYTE2(v19);
          BYTE11(v29) = BYTE3(v19);
          BYTE12(v29) = BYTE4(v19);
          BYTE13(v29) = BYTE5(v19);
LABEL_33:
          v26 = RENetSyncBufferWrite();
          outlined consume of Data._Representation(v20, v19);
          if (v26)
          {

            __swift_destroy_boxed_opaque_existential_1(v32);
            return 1;
          }

          v27 = static os_log_type_t.error.getter();
          type metadata accessor for OS_os_log();
          v28 = static OS_os_log.default.getter();
          os_log(_:dso:log:_:_:)(v27, &dword_1C1358000, v28, "ecsNetSyncWriteSnapshot: RENetSyncBufferWrite() failed!", 55, 2, MEMORY[0x1E69E7CC0]);

          __swift_destroy_boxed_opaque_existential_1(v32);
          return 0;
        }

        if (__OFSUB__(HIDWORD(v20), v20))
        {
          goto LABEL_38;
        }

        v24 = HIDWORD(v20) - v20;
LABEL_21:
        if ((v24 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (!HIDWORD(v24))
        {
          if (v21 == 2)
          {
            v25 = *(v20 + 16);

            if (!__DataStorage._bytes.getter() || !__OFSUB__(v25, __DataStorage._offset.getter()))
            {
LABEL_32:
              MEMORY[0x1C68F2040]();
              goto LABEL_33;
            }

            __break(1u);
LABEL_28:
            *(&v29 + 6) = 0;
            *&v29 = 0;
            goto LABEL_33;
          }

          if (v20 <= v20 >> 32)
          {

            if (!__DataStorage._bytes.getter() || !__OFSUB__(v20, __DataStorage._offset.getter()))
            {
              goto LABEL_32;
            }

LABEL_40:
            __break(1u);
          }

LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      v31 = 0;
      v29 = 0u;
      v30 = 0u;
      outlined destroy of BodyTrackingComponent?(&v29, &_sSE_pSgMd, &_sSE_pSgMR);
    }

    else
    {
      swift_endAccess();
    }

    return 0;
  }

  return result;
}

uint64_t specialized ecsNetSyncReadSnapshot(_:_:_:_:_:_:)(uint64_t a1, uint64_t a2, _BYTE *a3, unint64_t a4)
{
  result = RECustomComponentGetObject();
  if (result)
  {
    v8 = result;
    if (one-time initialization token for handlesToCustomComponentTypes != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v9 = static SceneManager.handlesToCustomComponentTypes;
    if (*(static SceneManager.handlesToCustomComponentTypes + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(a2), (v11 & 1) != 0))
    {
      v12 = (*(v9 + 56) + 16 * v10);
      v13 = *v12;
      v14 = v12[1];
      v15 = swift_endAccess();
      v16 = MEMORY[0x1EEE9AC00](v15);
      (*(v14 + 32))(v8, v13, v14, v16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSe_pMd, &_sSe_pMR);
      if (swift_dynamicCast())
      {
        outlined init with take of ForceEffectBase(&v26, v29);
        v17 = specialized Data.init(bytes:count:)(a3, a4);
        v19 = v18;
        v20 = type metadata accessor for NetPassthroughDecoder();
        v21 = swift_allocObject();
        type metadata accessor for JSONDecoder();
        swift_allocObject();
        v21[2] = JSONDecoder.init()();
        v21[3] = v17;
        v21[4] = v19;
        *(&v27 + 1) = v20;
        v28 = &protocol witness table for NetPassthroughDecoder;
        *&v26 = v21;
        v23 = v30;
        v22 = v31;
        v24 = __swift_mutable_project_boxed_opaque_existential_1(v29, v30);

        __swift_project_boxed_opaque_existential_1(&v26, v20);
        NetPassthroughDecoder.decode<A>(_:)(v24, v23, v22);
        __swift_destroy_boxed_opaque_existential_1(&v26);
        outlined init with copy of __REAssetService(v29, &v26);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
        swift_dynamicCast();
        (*(v14 + 40))(v25, v8, 0, 1, v13, v14);

        __swift_destroy_boxed_opaque_existential_1(v25);
        __swift_destroy_boxed_opaque_existential_1(v29);
        return 1;
      }

      v28 = 0;
      v26 = 0u;
      v27 = 0u;
      outlined destroy of BodyTrackingComponent?(&v26, &_sSe_pSgMd, &_sSe_pSgMR);
    }

    else
    {
      swift_endAccess();
    }

    return 0;
  }

  return result;
}

CGColorRef HasPointLight.light.getter@<X0>(uint64_t a1@<X8>)
{
  (*(*v1 + 96))(&v11);
  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlFAA010PointLightD0V_Tt0B5(&v7);

  result = v7;
  if (v7)
  {
    v4 = v10;
    v6 = v8;
    v5 = v9;
  }

  else
  {
    result = CGColorCreateGenericRGB(1.0, 1.0, 1.0, 1.0);
    v4 = 2.0;
    v5 = 1092616192;
    v6 = 1188210565;
  }

  *a1 = result;
  *(a1 + 8) = v6;
  *(a1 + 12) = v5;
  *(a1 + 16) = v4;
  return result;
}

uint64_t key path setter for HasPointLight.light : <A>A(uint64_t a1)
{
  v1 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = *(a1 + 8);
  v5 = v1;
  v2 = v4[0];
  return HasPointLight.light.setter(v4);
}

uint64_t HasPointLight.light.setter(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = (*(*v1 + 112))(v7);
  _s10RealityKit6EntityC12ComponentSetV0A10FoundationEyxSgxmcAF028_ImplicitlyAnimatableBuiltinD0RzluisAA010PointLightD0V_Tt0B5(v2, v3, v4);
  return v5(v7, 0);
}

void (*HasPointLight.light.modify(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  *a1 = v3;
  *(v3 + 56) = v1;
  HasPointLight.light.getter(v3 + 32);
  return HasPointLight.light.modify;
}

void HasPointLight.light.modify(id **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = *(*a1 + 12);
  v6 = *(*(*a1)[7] + 112);
  if (a2)
  {
    v7 = v3;
    v8 = v6(v2);
    _s10RealityKit6EntityC12ComponentSetV0A10FoundationEyxSgxmcAF028_ImplicitlyAnimatableBuiltinD0RzluisAA010PointLightD0V_Tt0B5(v3, v4, v5);
    v8(v2, 0);
  }

  else
  {
    v9 = v6(*a1);
    _s10RealityKit6EntityC12ComponentSetV0A10FoundationEyxSgxmcAF028_ImplicitlyAnimatableBuiltinD0RzluisAA010PointLightD0V_Tt0B5(v3, v4, v5);
    v9(v2, 0);
  }

  free(v2);
}

uint64_t AudioUnitResource.__allocating_init(audioComponentDescription:layoutTag:)(unint64_t a1, unint64_t a2, int a3, uint64_t a4)
{
  v5 = a2;
  v6 = a1;
  v7 = HIDWORD(a1);
  v8 = HIDWORD(a2);
  swift_allocObject();
  v9 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v9 + 120, &v15);
  v10 = v19;
  v11 = v20;
  __swift_project_boxed_opaque_existential_1(&v15, v19);
  (*(v11 + 32))(v10, v11);
  __swift_destroy_boxed_opaque_existential_1(&v15);
  v15 = __PAIR64__(v7, v6);
  v16 = v5;
  v17 = v8;
  v18 = a3;
  v12 = REAudioGeneratorAssetCreate();
  v13 = AudioResource.init(fromCore:)(v12);

  REAudioGeneratorAssetSetLayoutTag();
  RERelease();

  return v13;
}

uint64_t AudioUnitResource.init(audioComponentDescription:layoutTag:)(unint64_t a1, unint64_t a2, int a3, uint64_t a4)
{
  v5 = a2;
  v6 = a1;
  v7 = HIDWORD(a1);
  v8 = HIDWORD(a2);
  v9 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v9 + 120, &v15);
  v10 = v19;
  v11 = v20;
  __swift_project_boxed_opaque_existential_1(&v15, v19);
  (*(v11 + 32))(v10, v11);
  __swift_destroy_boxed_opaque_existential_1(&v15);
  v15 = __PAIR64__(v7, v6);
  v16 = v5;
  v17 = v8;
  v18 = a3;
  v12 = REAudioGeneratorAssetCreate();
  v13 = AudioResource.init(fromCore:)(v12);

  REAudioGeneratorAssetSetLayoutTag();
  RERelease();

  return v13;
}

uint64_t AudioUnitResource.deinit()
{
  v1 = v0;
  if (one-time initialization token for audio != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.audio);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = REAssetGetAssetId();

    _os_log_impl(&dword_1C1358000, v3, v4, "[API/RealityKit] AudioResource.deinit() for REAssetID: %llu", v5, 0xCu);
    MEMORY[0x1C6902A30](v5, -1, -1);
  }

  else
  {
  }

  REAssetSetSwiftObject();
  RERelease();
  return v1;
}

uint64_t AudioUnitResource.__deallocating_deinit()
{
  if (one-time initialization token for audio != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.audio);

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 134217984;
    *(v3 + 4) = REAssetGetAssetId();

    _os_log_impl(&dword_1C1358000, v1, v2, "[API/RealityKit] AudioResource.deinit() for REAssetID: %llu", v3, 0xCu);
    MEMORY[0x1C6902A30](v3, -1, -1);
  }

  else
  {
  }

  REAssetSetSwiftObject();
  RERelease();

  return swift_deallocClassInstance();
}

uint64_t specialized Sequence.contains(where:)(uint64_t a1, uint64_t *a2)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v2 = a2;
  v3 = 0;
  v4 = a1 + 32;
  v16 = *(a1 + 16);
  v15 = a1 + 32;
  while (2)
  {
    v5 = (v4 + 16 * v3);
    v6 = v5[1];
    v8 = *v2;
    v7 = v2[1];
    if (*v2 == *v5 && v7 == v6)
    {
      return 1;
    }

    v19 = *v5;
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      return 1;
    }

    v18 = v3 + 1;

    v10 = 4;
    v11 = &unk_1F40E4018;
    do
    {
      v13 = *(v11 - 1);
      v12 = *v11;

      MEMORY[0x1C68F3410](46, 0xE100000000000000);

      MEMORY[0x1C68F3410](v13, v12);

      if (v8 == v19 && v7 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 1;
      }

      v11 += 2;
      --v10;
    }

    while (v10);

    result = 0;
    v2 = a2;
    v3 = v18;
    v4 = v15;
    if (v18 != v16)
    {
      continue;
    }

    break;
  }

  return result;
}

double specialized __REAssetService.getDependenciesRecursively(asset:result:visited:includingSelf:)(uint64_t a1, void *a2, uint64_t *a3, char a4)
{
  if (!specialized Set.contains(_:)(a1, *a3))
  {

    specialized Set._Variant.insert(_:)(&v15, a1);

    v9 = __REAssetManager.__getDependencies(asset:)(a1);
    v10 = v9;
    if (v9 >> 62)
    {
      v11 = __CocoaSet.count.getter();
      if (!v11)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v11)
      {
        goto LABEL_11;
      }
    }

    if (v11 < 1)
    {
      __break(1u);
LABEL_16:
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_13:
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      return result;
    }

    for (i = 0; i != v11; ++i)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x1C68F41F0](i, v10);
      }

      else
      {
        v13 = *(v10 + 8 * i + 32);
      }

      specialized __REAssetService.getDependenciesRecursively(asset:result:visited:includingSelf:)(v13, a2, a3, 1);
    }

LABEL_11:

    if ((a4 & 1) == 0)
    {
      return result;
    }

    MEMORY[0x1C68F3650](v14);
    if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_13;
    }

    goto LABEL_16;
  }

  return result;
}

uint64_t static __REAssetBundle.__init_REKit2(realityFile:assetService:coreServiceLocator:_:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, _BYTE *a4@<X3>, uint64_t *a5@<X8>)
{
  v39 = a4;
  v36 = a5;
  v37 = a3;
  v46 = *MEMORY[0x1E69E9840];
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for URL();
  v40 = *(v11 - 8);
  v41 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = 0;
  v14 = *(a2 + 3);
  v15 = *(a2 + 4);
  __swift_project_boxed_opaque_existential_1(a2, v14);
  (*(v15 + 32))(v14, v15);
  v16 = a1;
  v17 = RERealityFileTryCopyURLFromDescriptor();
  v18 = v17;
  if (v45 || !v17)
  {
    UUID.init()();
    _sSo10CFErrorRefaABs5Error10FoundationWlTm_5(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v44[0] = dispatch thunk of CustomStringConvertible.description.getter();
    v44[1] = v19;
    (*(v8 + 8))(v10, v7);
    MEMORY[0x1C68F3410](0x7974696C6165722ELL, 0xE800000000000000);
    URL.init(fileURLWithPath:)();
  }

  else
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v20 = v39;
  outlined init with copy of [String : String]((v39 + 32), &v42, &_s10RealityKit22__DownsamplingStrategy_pSgMd, &_s10RealityKit22__DownsamplingStrategy_pSgMR);
  v21 = v16;
  if (v43)
  {
    outlined init with take of ForceEffectBase(&v42, v44);
    LOBYTE(v42) = *v20;
    v22 = v38;
    v24 = specialized static __REAssetBundle.createDownsampledTextureDescriptors(assetService:realityFile:realityFileURL:downsamplingStrategy:queueOptions:)(a2, v16, v23, v13, v44);
    v25 = v22;
    if (v22)
    {
      __swift_destroy_boxed_opaque_existential_1(v44);
LABEL_25:

      return (*(v40 + 8))(v13, v41);
    }

    v26 = v24;
    __swift_destroy_boxed_opaque_existential_1(v44);
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(&v42, &_s10RealityKit22__DownsamplingStrategy_pSgMd, &_s10RealityKit22__DownsamplingStrategy_pSgMR);
    v26 = 0;
    v25 = v38;
  }

  v27 = URL.lastPathComponent.getter();
  v29 = v28;
  if (v26)
  {
    v30 = v26;
  }

  else
  {
    v30 = MEMORY[0x1E69E7CC0];
  }

  static __REAssetBundle.__init_REKit2(realityFile:realityFilename:downsampledTextureDescriptors:assetService:coreServiceLocator:_:)(v21, v27, v29, v30, a2, v37, v20, v36);
  if (!v25)
  {

    if (!v26)
    {
      goto LABEL_25;
    }

    v33 = v26[2];
    if (v33)
    {

      v34 = 32;
      do
      {
        RERelease();
        v34 += 8;
        --v33;
      }

      while (v33);
      goto LABEL_23;
    }

LABEL_24:

    goto LABEL_25;
  }

  if (!v26)
  {
    goto LABEL_25;
  }

  v31 = v26[2];
  if (!v31)
  {
    goto LABEL_24;
  }

  v32 = 32;
  do
  {
    RERelease();
    v32 += 8;
    --v31;
  }

  while (v31);
LABEL_23:

  swift_bridgeObjectRelease_n();
  return (*(v40 + 8))(v13, v41);
}

uint64_t __REAssetBundle.ExportOptions.PlatformOS.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (v2 <= 1)
  {
    if (!v2)
    {
      v3 = 5459817;
      goto LABEL_12;
    }

    if (v2 == 1)
    {
      v3 = 0x534F63616DLL;
      goto LABEL_12;
    }

LABEL_11:
    v3 = *v0;
    goto LABEL_12;
  }

  if (v2 == 2 || v2 == 3)
  {
    v3 = 0x534F6E6F69736976;
    goto LABEL_12;
  }

  if (v2 != 4)
  {
    goto LABEL_11;
  }

  v3 = 1397716596;
LABEL_12:
  outlined copy of __REAssetBundle.ExportOptions.PlatformOS(v1, v2);
  return v3;
}

void __REAssetBundle.ExportOptions.PlatformOS.init(rawValue:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = a2;
  v5 = a1 == 5459817 && a2 == 0xE300000000000000;
  if (v5 || (v6 = a1, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {

    v6 = 0;
    v3 = 0;
  }

  else if (v6 == 0x534F63616DLL && v3 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = 0;
    v3 = 1;
  }

  else if (v6 == 1397715576 && v3 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v6 == 0x534F6E6F69736976 && v3 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = 0;
    v3 = 2;
  }

  else if (v6 == 1397716596 && v3 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = 0;
    v3 = 4;
  }

  *a3 = v6;
  a3[1] = v3;
}

uint64_t specialized __REAssetManager.loadAssetsAndDependencies<A>(_:)(unint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = a1;
  *v6 = REAssetManagerGetEngineQueue();
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8018], v3);
  v7 = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v6, v3);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_25:
    result = __CocoaSet.count.getter();
    if (!result)
    {
      return result;
    }

    goto LABEL_4;
  }

  v3 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_25;
  }

  result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    return result;
  }

LABEL_4:
  v29 = v3;
  v9 = dispatch_group_create();
  dispatch_group_enter(v9);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  v11 = REAssetManagerGetEngineQueue();
  MEMORY[0x1EEE9AC00](v11);
  *(&v26 - 4) = v1;
  *(&v26 - 3) = v10;
  v28 = v10;
  *(&v26 - 2) = &v32;
  *(&v26 - 1) = v9;
  type metadata accessor for __AssetLoadRequest();
  OS_dispatch_queue.sync<A>(execute:)();

  v12 = v31;
  OS_dispatch_group.wait()();
  swift_beginAccess();
  v13 = *(v10 + 16);
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    if (REAssetLoadRequestGetState() == 1)
    {
    }

    if (v29)
    {
      v15 = __CocoaSet.count.getter();
    }

    else
    {
      v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v16 = MEMORY[0x1E69E7CC0];
    if (v15)
    {
      v26 = v12;
      v27 = v9;
      v30 = MEMORY[0x1E69E7CC0];
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15 & ~(v15 >> 63), 0);
      if (v15 < 0)
      {
        __break(1u);
        return result;
      }

      v17 = 0;
      v16 = v30;
      v29 = a1;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1C68F41F0](v17, v29);
        }

        else
        {
        }

        v18 = REAssetHandleCopyAssetIdentifierString();
        v19 = String.init(_:)(v18);

        v30 = v16;
        v21 = *(v16 + 16);
        v20 = *(v16 + 24);
        if (v21 >= v20 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
          v16 = v30;
        }

        ++v17;
        *(v16 + 16) = v21 + 1;
        *(v16 + 16 * v21 + 32) = v19;
      }

      while (v15 != v17);
      v9 = v27;
    }

    v30 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v22 = BidirectionalCollection<>.joined(separator:)();
    v24 = v23;

    lazy protocol witness table accessor for type __REAsset.LoadError and conformance __REAsset.LoadError();
    swift_allocError();
    *v25 = v22;
    *(v25 + 8) = v24;
    *(v25 + 16) = 0;
    *(v25 + 24) = 0;
    *(v25 + 32) = 0;
  }

  swift_willThrow();
}

uint64_t specialized closure #1 in __REAssetManager.loadAssetsAndDependencies<A>(_:)(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  AssetRequest = REAssetManagerCreateAssetRequest();
  type metadata accessor for __AssetLoadRequest();
  v8 = swift_allocObject();
  *(v8 + 16) = AssetRequest;
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = a4;
  aBlock[4] = partial apply for specialized closure #1 in closure #1 in __REAssetManager.loadAssetsAndDependencies<A>(_:);
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  aBlock[3] = &block_descriptor_35_0;
  v10 = _Block_copy(aBlock);
  v11 = _Block_copy(v10);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v19[4] = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned Bool) -> ();
  v19[5] = v12;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 1107296256;
  v19[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v19[3] = &block_descriptor_41_1;
  v13 = _Block_copy(v19);

  v14 = a4;

  REAssetLoadRequestSetCompletionHandler();
  _Block_release(v13);
  _Block_release(v10);

  if (!(a3 >> 62))
  {
    v16 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_3;
    }

    return v8;
  }

  result = __CocoaSet.count.getter();
  v16 = result;
  if (!result)
  {
    return v8;
  }

LABEL_3:
  if (v16 >= 1)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v16; ++i)
      {
        MEMORY[0x1C68F41F0](i, a3);
        REAssetLoadRequestAddAsset();
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v18 = a3 + 32;
      do
      {
        v18 += 8;
        REAssetLoadRequestAddAsset();
        --v16;
      }

      while (v16);
    }

    return v8;
  }

  __break(1u);
  return result;
}

void specialized closure #1 in closure #1 in __REAssetManager.loadAssetsAndDependencies<A>(_:)(char a1, uint64_t a2, unint64_t a3, dispatch_group_t group)
{
  if (a1)
  {
    goto LABEL_18;
  }

  if (a3 >> 62)
  {
    v7 = __CocoaSet.count.getter();
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v7)
  {
LABEL_17:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v18 = BidirectionalCollection<>.joined(separator:)();
    v20 = v19;

    lazy protocol witness table accessor for type __REAsset.LoadError and conformance __REAsset.LoadError();
    v21 = swift_allocError();
    *v22 = v18;
    *(v22 + 8) = v20;
    *(v22 + 16) = 0;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0;
    swift_beginAccess();
    v23 = *(a2 + 16);
    *(a2 + 16) = v21;

LABEL_18:
    dispatch_group_leave(group);
    return;
  }

  v25 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7 & ~(v7 >> 63), 0);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v24 = group;
    if ((a3 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v7; ++i)
      {
        MEMORY[0x1C68F41F0](i, a3);
        v9 = REAssetHandleCopyAssetIdentifierString();
        v10 = String.init(_:)(v9);
        swift_unknownObjectRelease();
        v12 = *(v25 + 16);
        v11 = *(v25 + 24);
        if (v12 >= v11 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
        }

        *(v25 + 16) = v12 + 1;
        *(v25 + 16 * v12 + 32) = v10;
      }
    }

    else
    {
      v13 = a3 + 32;
      do
      {

        v14 = REAssetHandleCopyAssetIdentifierString();
        v15 = String.init(_:)(v14);

        v17 = *(v25 + 16);
        v16 = *(v25 + 24);
        if (v17 >= v16 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1);
        }

        *(v25 + 16) = v17 + 1;
        *(v25 + 16 * v17 + 32) = v15;
        v13 += 8;
        --v7;
      }

      while (v7);
    }

    group = v24;
    goto LABEL_17;
  }

  __break(1u);
}

void specialized __REAssetManager.loadAssetsAndDependencies<A>(_:with:_:)(unint64_t a1, char a2, uint64_t a3)
{
  v6 = v3;
  v7 = a1;
  if (a2 == 2)
  {
    specialized findAndAddAssetDependencies #1 <A>(assets:dependencies:loadAssets:) in __REAssetManager.loadAssetsAndDependencies<A>(_:with:_:)(a1, a3, 1);
    v33 = v4;
    return;
  }

  if ((a2 & 1) == 0)
  {
    if (a1 >> 62)
    {
LABEL_42:
      v15 = __CocoaSet.count.getter();
      v33 = v4;
      if (!v15)
      {
        return;
      }
    }

    else
    {
      v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v33 = v4;
      if (!v15)
      {
        return;
      }
    }

    v16 = 0;
    v32 = v7 & 0xC000000000000001;
    v31[0] = v7 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v32)
      {
        v17 = MEMORY[0x1C68F41F0](v16, v7);
        v18 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_40;
        }
      }

      else
      {
        if (v16 >= *(v31[0] + 16))
        {
          goto LABEL_41;
        }

        v17 = *(v7 + 8 * v16 + 32);

        v18 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
          goto LABEL_42;
        }
      }

      v34 = v6;
      if (!REAssetHandleIsLoaded())
      {

        goto LABEL_38;
      }

      v19 = v7;
      v20 = v15;
      v21 = __REAssetManager.__getDependencies(asset:)(v17);
      MEMORY[0x1EEE9AC00](v21);
      v29[2] = &v34;
      v4 = v33;
      v5 = specialized Sequence.compactMap<A>(_:)(partial apply for specialized closure #1 in __REAssetService.firstUnloadedAssetIncludingDependencies(_:), v29, v21);
      v33 = v4;

      if (v5 >> 62)
      {
        if (__CocoaSet.count.getter())
        {
LABEL_33:
          if ((v5 & 0xC000000000000001) != 0)
          {
            goto LABEL_47;
          }

          if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {

            goto LABEL_36;
          }

          __break(1u);
          return;
        }
      }

      else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_33;
      }

      ++v16;
      v15 = v20;
      v22 = v18 == v20;
      v7 = v19;
      if (v22)
      {
        return;
      }
    }
  }

  specialized __REAssetManager.loadAssetsAndDependencies<A>(_:)(a1);
  v33 = v4;
  if (v4)
  {
    return;
  }

  if (v7 >> 62)
  {
    v8 = __CocoaSet.count.getter();
    if (!v8)
    {
      return;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      return;
    }
  }

  if (v8 < 1)
  {
    __break(1u);
LABEL_47:
    MEMORY[0x1C68F41F0](0, v5);
LABEL_36:

LABEL_38:
    v34 = 0;
    v35 = 0xE000000000000000;
    _StringGuts.grow(_:)(26);

    v34 = 0xD000000000000018;
    v35 = 0x80000001C18F0040;
    v23 = REAssetHandleCopyAssetIdentifierString();
    countAndFlagsBits = String.init(_:)(v23)._countAndFlagsBits;
    MEMORY[0x1C68F3410](countAndFlagsBits);

    v25 = v34;
    v26 = v35;
    lazy protocol witness table accessor for type SerializationError and conformance SerializationError();
    v27 = swift_allocError();
    *v28 = v25;
    *(v28 + 8) = v26;
    *(v28 + 16) = 1;
    v33 = v27;
    swift_willThrow();
  }

  else
  {
    v9 = 0;
    v10 = MEMORY[0x1E69E7CC0];
    v32 = v7 & 0xC000000000000001;
    *v31 = xmmword_1C1898160;
    v30 = MEMORY[0x1E69E7CC0] >> 62;
    do
    {
      if (v32)
      {
        v13 = MEMORY[0x1C68F41F0](v9, v7);
      }

      else
      {
        v13 = *(v7 + 8 * v9 + 32);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      inited = swift_initStackObject();
      *(inited + 16) = *v31;
      *(inited + 32) = v13;
      v34 = v10;
      if (v30 && __CocoaSet.count.getter())
      {

        _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10RealityKit9__REAssetC_Tt0g5Tf4g_n(v10);
      }

      else
      {

        v11 = MEMORY[0x1E69E7CD0];
      }

      ++v9;
      v36 = v11;
      specialized __REAssetService.getDependenciesRecursively(asset:result:visited:includingSelf:)(v13, &v34, &v36, 0);

      v12 = v34;
      v34 = inited;
      specialized Array.append<A>(contentsOf:)(v12);
      specialized Array.append<A>(contentsOf:)(v34);
    }

    while (v8 != v9);
  }
}

unint64_t specialized findAndAddAssetDependencies #1 <A>(assets:dependencies:loadAssets:) in __REAssetManager.loadAssetsAndDependencies<A>(_:with:_:)(unint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  if (result >> 62)
  {
    goto LABEL_40;
  }

  v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v34 = a3;
      v5 = 0;
      v35 = v3 & 0xC000000000000001;
      v31 = v3 & 0xFFFFFFFFFFFFFF8;
      v30 = v3 + 32;
      v32 = v3;
      v33 = MEMORY[0x1E69E7CC0] >> 62;
      while (1)
      {
        if (v35)
        {
          v6 = MEMORY[0x1C68F41F0](v5, v3);
        }

        else
        {
          if (v5 >= *(v31 + 16))
          {
            goto LABEL_39;
          }

          v6 = *(v30 + 8 * v5);
        }

        if (__OFADD__(v5++, 1))
        {
          goto LABEL_38;
        }

        if (v34)
        {
          REAssetHandleLoadNow();
          if (REAssetHandleLoadFailed())
          {
            v22 = REAssetCopyDescription();
            v23 = String.init(_:)(v22);
            FailedMessage = REAssetHandleCopyLoadFailedMessage();
            v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v27 = v26;

            lazy protocol witness table accessor for type __REAsset.LoadError and conformance __REAsset.LoadError();
            swift_allocError();
            *v28 = v23;
            *(v28 + 16) = v25;
            *(v28 + 24) = v27;
            *(v28 + 32) = 1;
            swift_willThrow();
          }
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1C1898160;
        *(inited + 32) = v6;
        v37 = MEMORY[0x1E69E7CC0];
        if (v33 && __CocoaSet.count.getter())
        {

          _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10RealityKit9__REAssetC_Tt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        }

        else
        {

          v9 = MEMORY[0x1E69E7CD0];
        }

        v36 = v9;
        specialized __REAssetService.getDependenciesRecursively(asset:result:visited:includingSelf:)(v6, &v37, &v36, 0);

        v10 = v37;
        v37 = inited;
        specialized Array.append<A>(contentsOf:)(v10);
        v3 = v37;

        specialized Array.append<A>(contentsOf:)(v11);
        if ((v34 & 1) == 0)
        {
          goto LABEL_4;
        }

        if (v3 >> 62)
        {
          break;
        }

        v12 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v12)
        {
          goto LABEL_17;
        }

LABEL_4:

        v3 = v32;
        if (v5 == v4)
        {
          return result;
        }
      }

      v12 = __CocoaSet.count.getter();
      if (!v12)
      {
        goto LABEL_4;
      }

LABEL_17:
      v13 = 0;
      while (2)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1C68F41F0](v13, v3);
          v14 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          goto LABEL_21;
        }

        if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_37;
        }

        v14 = v13 + 1;
        if (!__OFADD__(v13, 1))
        {
LABEL_21:
          REAssetHandleLoadNow();
          if (REAssetHandleLoadFailed())
          {

            v15 = REAssetCopyDescription();
            v16 = String.init(_:)(v15);
            v17 = REAssetHandleCopyLoadFailedMessage();
            v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v20 = v19;

            lazy protocol witness table accessor for type __REAsset.LoadError and conformance __REAsset.LoadError();
            swift_allocError();
            *v21 = v16;
            *(v21 + 16) = v18;
            *(v21 + 24) = v20;
            *(v21 + 32) = 1;
            swift_willThrow();
          }

          ++v13;
          if (v14 == v12)
          {
            goto LABEL_4;
          }

          continue;
        }

        break;
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      v29 = a3;
      result = __CocoaSet.count.getter();
      a3 = v29;
      v4 = result;
    }

    while (result);
  }

  return result;
}