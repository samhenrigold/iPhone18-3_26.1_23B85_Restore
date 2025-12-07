uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU3_AA08FromToBycD0VyAA15JointTransformsVG_Tt0B5(uint64_t *a1)
{
  _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0VyAA17BlendShapeWeightsVG_Tt1B5Tm(a1, &_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGMd, &_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGMR, &_s17RealityFoundation21FromToByActionHandlerVyAA15JointTransformsVGMd, &_s17RealityFoundation21FromToByActionHandlerVyAA15JointTransformsVGMR, &v6);
  v2 = v6;
  if (v6 == 1)
  {
    v3 = 1;
  }

  else
  {
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(16, a1[19], &_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGMd, &_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v4 = a1[37];
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVyAA15JointTransformsVGMd, &_s17RealityFoundation21FromToByActionHandlerVyAA15JointTransformsVGMR);
    v8 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<JointTransforms> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVyAA15JointTransformsVGMd, &_s17RealityFoundation21FromToByActionHandlerVyAA15JointTransformsVGMR, protocol conformance descriptor for FromToByActionHandler<A>);
    v6 = v2;
    swift_beginAccess();

    specialized Dictionary.subscript.setter(&v6, v4);
    swift_endAccess();
    v3 = v2;
  }

  return _s17RealityFoundation17BlendShapeWeightsVSgSgWOe_0(v3);
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU2_AA09BillboardcD0V_Tt0B5Tm(uint64_t *a1, uint64_t a2)
{
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA09BillboardcD0V_Tt1B5(a1, &v8);
  if ((v10 & 1) == 0)
  {
    v5 = v8 | (v9 << 32);
    v6 = v8;
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA09EmphasizeD0V_Tt1B5Tm(a2, a1[17], &type metadata for BillboardAction);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v7 = a1[35];
    v11 = &type metadata for BillboardActionHandler;
    v12 = &protocol witness table for BillboardActionHandler;
    v8 = v6;
    v9 = BYTE4(v5) & 1;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(&v8, v7);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU4_AA09PlayAudiocD0V_Tt0B5(uint64_t a1)
{
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA09PlayAudiocD0V_Tt1B5(a1);
  if (result != 1)
  {
    if (result && (*(a1 + 56) & 1) != 0 && (*(a1 + 136) & 1) == 0)
    {
      v3 = result;
      static Duration.seconds(_:)();
      v4 = Duration.components.getter();
      Duration.components.getter();
      MEMORY[0x1C68F7300](*(v3 + 32), *(v3 + 48), v5 * 1.0e-18 + v4);
      RENetworkMarkComponentDirty();
      AudioPlaybackController.play()();
      result = v3;
    }

    if (one-time initialization token for actionHandlers != -1)
    {
      v8 = result;
      swift_once();
      result = v8;
    }

    v6 = *(a1 + 240);
    v9[3] = &type metadata for PlayAudioActionHandler;
    v9[4] = &protocol witness table for PlayAudioActionHandler;
    v9[0] = result;
    v7 = result;
    swift_beginAccess();

    specialized Dictionary.subscript.setter(v9, v6);
    swift_endAccess();
    return sub_1C136529C(v7);
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU4_AA08FromToBycD0VyAA17BlendShapeWeightsVG_Tt0B5(uint64_t *a1)
{
  _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0VyAA17BlendShapeWeightsVG_Tt1B5Tm(a1, &_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGMR, &_s17RealityFoundation21FromToByActionHandlerVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation21FromToByActionHandlerVyAA17BlendShapeWeightsVGMR, &v6);
  v2 = v6;
  if (v6 == 1)
  {
    v3 = 1;
  }

  else
  {
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(32, a1[19], &_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v4 = a1[37];
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation21FromToByActionHandlerVyAA17BlendShapeWeightsVGMR);
    v8 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<BlendShapeWeights> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation21FromToByActionHandlerVyAA17BlendShapeWeightsVGMR, protocol conformance descriptor for FromToByActionHandler<A>);
    v6 = v2;
    swift_beginAccess();

    specialized Dictionary.subscript.setter(&v6, v4);
    swift_endAccess();
    v3 = v2;
  }

  return _s17RealityFoundation17BlendShapeWeightsVSgSgWOe_0(v3);
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU4_AA08FromToBycD0VyAA15JointTransformsVG_Tt0B5(uint64_t *a1)
{
  _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0VyAA17BlendShapeWeightsVG_Tt1B5Tm(a1, &_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGMd, &_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGMR, &_s17RealityFoundation21FromToByActionHandlerVyAA15JointTransformsVGMd, &_s17RealityFoundation21FromToByActionHandlerVyAA15JointTransformsVGMR, &v6);
  v2 = v6;
  if (v6 == 1)
  {
    v3 = 1;
  }

  else
  {
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(32, a1[19], &_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGMd, &_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v4 = a1[37];
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVyAA15JointTransformsVGMd, &_s17RealityFoundation21FromToByActionHandlerVyAA15JointTransformsVGMR);
    v8 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<JointTransforms> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVyAA15JointTransformsVGMd, &_s17RealityFoundation21FromToByActionHandlerVyAA15JointTransformsVGMR, protocol conformance descriptor for FromToByActionHandler<A>);
    v6 = v2;
    swift_beginAccess();

    specialized Dictionary.subscript.setter(&v6, v4);
    swift_endAccess();
    v3 = v2;
  }

  return _s17RealityFoundation17BlendShapeWeightsVSgSgWOe_0(v3);
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU6_AA08FromToBycD0VyAA17BlendShapeWeightsVG_Tt0B5(uint64_t *a1)
{
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0VyAA17BlendShapeWeightsVG_Tt1B5Tm(a1, &_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGMR, &_s17RealityFoundation21FromToByActionHandlerVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation21FromToByActionHandlerVyAA17BlendShapeWeightsVGMR, &v8);
  v2 = v8;
  if (v8 == 1)
  {
    _s17RealityFoundation17BlendShapeWeightsVSgSgWOe_0(1);
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v9 = 0;
    v5 = 0;
  }

  else
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation21FromToByActionHandlerVyAA17BlendShapeWeightsVGMR);
    v4 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<BlendShapeWeights> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation21FromToByActionHandlerVyAA17BlendShapeWeightsVGMR, protocol conformance descriptor for FromToByActionHandler<A>);
    v5 = *(&v8 + 1);
  }

  *&v8 = v2;
  *(&v8 + 1) = v5;
  v10 = v3;
  v11 = v4;
  v6 = a1[37];
  swift_beginAccess();
  specialized Dictionary.subscript.setter(&v8, v6);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU6_AA08FromToBycD0VyAA15JointTransformsVG_Tt0B5(uint64_t *a1)
{
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0VyAA17BlendShapeWeightsVG_Tt1B5Tm(a1, &_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGMd, &_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGMR, &_s17RealityFoundation21FromToByActionHandlerVyAA15JointTransformsVGMd, &_s17RealityFoundation21FromToByActionHandlerVyAA15JointTransformsVGMR, &v8);
  v2 = v8;
  if (v8 == 1)
  {
    _s17RealityFoundation17BlendShapeWeightsVSgSgWOe_0(1);
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v9 = 0;
    v5 = 0;
  }

  else
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVyAA15JointTransformsVGMd, &_s17RealityFoundation21FromToByActionHandlerVyAA15JointTransformsVGMR);
    v4 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<JointTransforms> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVyAA15JointTransformsVGMd, &_s17RealityFoundation21FromToByActionHandlerVyAA15JointTransformsVGMR, protocol conformance descriptor for FromToByActionHandler<A>);
    v5 = *(&v8 + 1);
  }

  *&v8 = v2;
  *(&v8 + 1) = v5;
  v10 = v3;
  v11 = v4;
  v6 = a1[37];
  swift_beginAccess();
  specialized Dictionary.subscript.setter(&v8, v6);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU6_AA09BillboardcD0V_Tt0B5(uint64_t *a1)
{
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA09BillboardcD0V_Tt1B5(a1, &v6);
  if (v8)
  {
    v2 = 0;
    v3 = 0;
    memset(v9, 0, 24);
  }

  else
  {
    LODWORD(v9[0]) = v6;
    BYTE4(v9[0]) = v7 & 1;
    v3 = &protocol witness table for BillboardActionHandler;
    v2 = &type metadata for BillboardActionHandler;
  }

  v9[3] = v2;
  v9[4] = v3;
  v4 = a1[35];
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v9, v4);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU6_AA011OrbitEntitycD0V_Tt0B5(uint64_t *a1)
{
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA011OrbitEntitycD0V_Tt1B5(a1, &v14);
  v27[8] = v22;
  v27[9] = v23;
  v27[10] = v24;
  v27[11] = v25;
  v27[4] = v18;
  v27[5] = v19;
  v27[6] = v20;
  v27[7] = v21;
  v27[0] = v14;
  v27[1] = v15;
  v27[2] = v16;
  v27[3] = v17;
  if (_s17RealityFoundation24OrbitEntityActionHandlerVSgWOg(v27) == 1)
  {
    v13[8] = v22;
    v13[9] = v23;
    v13[10] = v24;
    v13[11] = v25;
    v13[4] = v18;
    v13[5] = v19;
    v13[6] = v20;
    v13[7] = v21;
    v13[0] = v14;
    v13[1] = v15;
    v13[2] = v16;
    v13[3] = v17;
    outlined destroy of BodyTrackingComponent?(v13, &_s17RealityFoundation24OrbitEntityActionHandlerVSgMd, &_s17RealityFoundation24OrbitEntityActionHandlerVSgMR);
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v26[1] = 0;
    v26[2] = 0;
  }

  else
  {
    v2 = swift_allocObject();
    v5 = v23;
    v2[9] = v22;
    v2[10] = v5;
    v6 = v25;
    v2[11] = v24;
    v2[12] = v6;
    v7 = v19;
    v2[5] = v18;
    v2[6] = v7;
    v8 = v21;
    v2[7] = v20;
    v2[8] = v8;
    v9 = v15;
    v2[1] = v14;
    v2[2] = v9;
    v10 = v17;
    v2[3] = v16;
    v2[4] = v10;
    v4 = &protocol witness table for OrbitEntityActionHandler;
    v3 = &type metadata for OrbitEntityActionHandler;
  }

  v26[0] = v2;
  v26[3] = v3;
  v26[4] = v4;
  v11 = a1[31];
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v26, v11);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAAE10__registeryyFZAA09EmphasizeD0V_Ttg5()
{
  if (one-time initialization token for actionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.actionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.actionTypeMap;
  if (*(static AnimationResource.actionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000021, 0x80000001C18E4550);
    if (v3)
    {
      v8 = *(*(v1 + 56) + 16 * v2);
      result = swift_endAccess();
      if (v8 == &type metadata for EmphasizeAction)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_pXpMd, &_s17RealityFoundation12EntityAction_pXpMR);
      v5 = String.init<A>(describing:)();
      v0 = v6;
      MEMORY[0x1C68F3410](v5);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v0;
  *v0 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&type metadata for EmphasizeAction, &protocol witness table for EmphasizeAction, 0xD000000000000021, 0x80000001C18E4550, isUniquelyReferenced_nonNull_native);
  *v0 = v9;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAAE10__registeryyFZAA09PlayAudioD0V_Ttg5()
{
  if (one-time initialization token for actionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.actionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.actionTypeMap;
  if (*(static AnimationResource.actionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000021, 0x80000001C18E4620);
    if (v3)
    {
      v8 = *(*(v1 + 56) + 16 * v2);
      result = swift_endAccess();
      if (v8 == &type metadata for PlayAudioAction)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_pXpMd, &_s17RealityFoundation12EntityAction_pXpMR);
      v5 = String.init<A>(describing:)();
      v0 = v6;
      MEMORY[0x1C68F3410](v5);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v0;
  *v0 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&type metadata for PlayAudioAction, &protocol witness table for PlayAudioAction, 0xD000000000000021, 0x80000001C18E4620, isUniquelyReferenced_nonNull_native);
  *v0 = v9;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAAE10__registeryyFZAA03Setc8PropertyD0Vy0A3Kit9TransformVG_Ttg5()
{
  if (one-time initialization token for actionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.actionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.actionTypeMap;
  if (*(static AnimationResource.actionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000003FLL, 0x80000001C18E4710);
    if (v3)
    {
      v9 = *(*(v1 + 56) + 16 * v2);
      swift_endAccess();
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVy0A3Kit9TransformVGMd, &_s17RealityFoundation23SetEntityPropertyActionVy0A3Kit9TransformVGMR);
      if (v9 == result)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_pXpMd, &_s17RealityFoundation12EntityAction_pXpMR);
      v5 = String.init<A>(describing:)();
      v0 = v6;
      MEMORY[0x1C68F3410](v5);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVy0A3Kit9TransformVGMd, &_s17RealityFoundation23SetEntityPropertyActionVy0A3Kit9TransformVGMR);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v0;
  *v0 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, &protocol witness table for SetEntityPropertyAction<A>, 0xD00000000000003FLL, 0x80000001C18E4710, isUniquelyReferenced_nonNull_native);
  *v0 = v10;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAAE10__registeryyFZAA03Setc8PropertyD0VySSG_Ttg5()
{
  if (one-time initialization token for actionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.actionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.actionTypeMap;
  if (*(static AnimationResource.actionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000037, 0x80000001C18E47C0);
    if (v3)
    {
      v9 = *(*(v1 + 56) + 16 * v2);
      swift_endAccess();
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySSGMd, &_s17RealityFoundation23SetEntityPropertyActionVySSGMR);
      if (v9 == result)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_pXpMd, &_s17RealityFoundation12EntityAction_pXpMR);
      v5 = String.init<A>(describing:)();
      v0 = v6;
      MEMORY[0x1C68F3410](v5);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySSGMd, &_s17RealityFoundation23SetEntityPropertyActionVySSGMR);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v0;
  *v0 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, &protocol witness table for SetEntityPropertyAction<A>, 0xD000000000000037, 0x80000001C18E47C0, isUniquelyReferenced_nonNull_native);
  *v0 = v10;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAAE10__registeryyFZAA03Setc8PropertyD0VySbG_Ttg5()
{
  if (one-time initialization token for actionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.actionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.actionTypeMap;
  if (*(static AnimationResource.actionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000035, 0x80000001C18E4870);
    if (v3)
    {
      v9 = *(*(v1 + 56) + 16 * v2);
      swift_endAccess();
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySbGMd, &_s17RealityFoundation23SetEntityPropertyActionVySbGMR);
      if (v9 == result)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_pXpMd, &_s17RealityFoundation12EntityAction_pXpMR);
      v5 = String.init<A>(describing:)();
      v0 = v6;
      MEMORY[0x1C68F3410](v5);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySbGMd, &_s17RealityFoundation23SetEntityPropertyActionVySbGMR);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v0;
  *v0 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, &protocol witness table for SetEntityPropertyAction<A>, 0xD000000000000035, 0x80000001C18E4870, isUniquelyReferenced_nonNull_native);
  *v0 = v10;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAAE10__registeryyFZAA03Setc8PropertyD0VySiG_Ttg5()
{
  if (one-time initialization token for actionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.actionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.actionTypeMap;
  if (*(static AnimationResource.actionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000034, 0x80000001C18E4920);
    if (v3)
    {
      v9 = *(*(v1 + 56) + 16 * v2);
      swift_endAccess();
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySiGMd, &_s17RealityFoundation23SetEntityPropertyActionVySiGMR);
      if (v9 == result)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_pXpMd, &_s17RealityFoundation12EntityAction_pXpMR);
      v5 = String.init<A>(describing:)();
      v0 = v6;
      MEMORY[0x1C68F3410](v5);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySiGMd, &_s17RealityFoundation23SetEntityPropertyActionVySiGMR);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v0;
  *v0 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, &protocol witness table for SetEntityPropertyAction<A>, 0xD000000000000034, 0x80000001C18E4920, isUniquelyReferenced_nonNull_native);
  *v0 = v10;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAAE10__registeryyFZAA03Setc8PropertyD0VySo10simd_quatfaG_Ttg5()
{
  if (one-time initialization token for actionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.actionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.actionTypeMap;
  if (*(static AnimationResource.actionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000039, 0x80000001C18E49D0);
    if (v3)
    {
      v9 = *(*(v1 + 56) + 16 * v2);
      swift_endAccess();
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGMd, &_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGMR);
      if (v9 == result)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_pXpMd, &_s17RealityFoundation12EntityAction_pXpMR);
      v5 = String.init<A>(describing:)();
      v0 = v6;
      MEMORY[0x1C68F3410](v5);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGMd, &_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGMR);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v0;
  *v0 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, &protocol witness table for SetEntityPropertyAction<A>, 0xD000000000000039, 0x80000001C18E49D0, isUniquelyReferenced_nonNull_native);
  *v0 = v10;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAAE10__registeryyFZAA03Setc8PropertyD0Vys5SIMD4VySfGG_Ttg5()
{
  if (one-time initialization token for actionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.actionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.actionTypeMap;
  if (*(static AnimationResource.actionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000043, 0x80000001C18E4A80);
    if (v3)
    {
      v9 = *(*(v1 + 56) + 16 * v2);
      swift_endAccess();
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGMR);
      if (v9 == result)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_pXpMd, &_s17RealityFoundation12EntityAction_pXpMR);
      v5 = String.init<A>(describing:)();
      v0 = v6;
      MEMORY[0x1C68F3410](v5);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGMR);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v0;
  *v0 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, &protocol witness table for SetEntityPropertyAction<A>, 0xD000000000000043, 0x80000001C18E4A80, isUniquelyReferenced_nonNull_native);
  *v0 = v10;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAAE10__registeryyFZAA03Setc8PropertyD0Vys5SIMD3VySfGG_Ttg5()
{
  if (one-time initialization token for actionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.actionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.actionTypeMap;
  if (*(static AnimationResource.actionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000043, 0x80000001C18E4B50);
    if (v3)
    {
      v9 = *(*(v1 + 56) + 16 * v2);
      swift_endAccess();
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGMR);
      if (v9 == result)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_pXpMd, &_s17RealityFoundation12EntityAction_pXpMR);
      v5 = String.init<A>(describing:)();
      v0 = v6;
      MEMORY[0x1C68F3410](v5);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGMR);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v0;
  *v0 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, &protocol witness table for SetEntityPropertyAction<A>, 0xD000000000000043, 0x80000001C18E4B50, isUniquelyReferenced_nonNull_native);
  *v0 = v10;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAAE10__registeryyFZAA03Setc8PropertyD0Vys5SIMD2VySfGG_Ttg5()
{
  if (one-time initialization token for actionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.actionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.actionTypeMap;
  if (*(static AnimationResource.actionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000043, 0x80000001C18E4C20);
    if (v3)
    {
      v9 = *(*(v1 + 56) + 16 * v2);
      swift_endAccess();
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGMR);
      if (v9 == result)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_pXpMd, &_s17RealityFoundation12EntityAction_pXpMR);
      v5 = String.init<A>(describing:)();
      v0 = v6;
      MEMORY[0x1C68F3410](v5);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGMR);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v0;
  *v0 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, &protocol witness table for SetEntityPropertyAction<A>, 0xD000000000000043, 0x80000001C18E4C20, isUniquelyReferenced_nonNull_native);
  *v0 = v10;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAAE10__registeryyFZAA03Setc8PropertyD0VySdG_Ttg5()
{
  if (one-time initialization token for actionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.actionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.actionTypeMap;
  if (*(static AnimationResource.actionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000037, 0x80000001C18E4CF0);
    if (v3)
    {
      v9 = *(*(v1 + 56) + 16 * v2);
      swift_endAccess();
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySdGMd, &_s17RealityFoundation23SetEntityPropertyActionVySdGMR);
      if (v9 == result)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_pXpMd, &_s17RealityFoundation12EntityAction_pXpMR);
      v5 = String.init<A>(describing:)();
      v0 = v6;
      MEMORY[0x1C68F3410](v5);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySdGMd, &_s17RealityFoundation23SetEntityPropertyActionVySdGMR);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v0;
  *v0 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, &protocol witness table for SetEntityPropertyAction<A>, 0xD000000000000037, 0x80000001C18E4CF0, isUniquelyReferenced_nonNull_native);
  *v0 = v10;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAAE10__registeryyFZAA03Setc8PropertyD0VySfG_Ttg5()
{
  if (one-time initialization token for actionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.actionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.actionTypeMap;
  if (*(static AnimationResource.actionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000036, 0x80000001C18E4DA0);
    if (v3)
    {
      v9 = *(*(v1 + 56) + 16 * v2);
      swift_endAccess();
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySfGMd, &_s17RealityFoundation23SetEntityPropertyActionVySfGMR);
      if (v9 == result)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_pXpMd, &_s17RealityFoundation12EntityAction_pXpMR);
      v5 = String.init<A>(describing:)();
      v0 = v6;
      MEMORY[0x1C68F3410](v5);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySfGMd, &_s17RealityFoundation23SetEntityPropertyActionVySfGMR);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v0;
  *v0 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, &protocol witness table for SetEntityPropertyAction<A>, 0xD000000000000036, 0x80000001C18E4DA0, isUniquelyReferenced_nonNull_native);
  *v0 = v10;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAAE10__registeryyFZAA08FromToByD0VyAA17BlendShapeWeightsVG_Ttg5()
{
  if (one-time initialization token for actionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.actionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.actionTypeMap;
  if (*(static AnimationResource.actionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000045, 0x80000001C18E4E50);
    if (v3)
    {
      v9 = *(*(v1 + 56) + 16 * v2);
      swift_endAccess();
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGMR);
      if (v9 == result)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_pXpMd, &_s17RealityFoundation12EntityAction_pXpMR);
      v5 = String.init<A>(describing:)();
      v0 = v6;
      MEMORY[0x1C68F3410](v5);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGMR);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v0;
  *v0 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, &protocol witness table for FromToByAction<A>, 0xD000000000000045, 0x80000001C18E4E50, isUniquelyReferenced_nonNull_native);
  *v0 = v10;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAAE10__registeryyFZAA08FromToByD0VyAA15JointTransformsVG_Ttg5()
{
  if (one-time initialization token for actionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.actionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.actionTypeMap;
  if (*(static AnimationResource.actionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000043, 0x80000001C18E4F20);
    if (v3)
    {
      v9 = *(*(v1 + 56) + 16 * v2);
      swift_endAccess();
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGMd, &_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGMR);
      if (v9 == result)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_pXpMd, &_s17RealityFoundation12EntityAction_pXpMR);
      v5 = String.init<A>(describing:)();
      v0 = v6;
      MEMORY[0x1C68F3410](v5);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGMd, &_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGMR);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v0;
  *v0 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, &protocol witness table for FromToByAction<A>, 0xD000000000000043, 0x80000001C18E4F20, isUniquelyReferenced_nonNull_native);
  *v0 = v10;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAAE10__registeryyFZAA08FromToByD0Vy0A3Kit9TransformVG_Ttg5()
{
  if (one-time initialization token for actionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.actionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.actionTypeMap;
  if (*(static AnimationResource.actionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000036, 0x80000001C18E4FF0);
    if (v3)
    {
      v9 = *(*(v1 + 56) + 16 * v2);
      swift_endAccess();
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVy0A3Kit9TransformVGMd, &_s17RealityFoundation14FromToByActionVy0A3Kit9TransformVGMR);
      if (v9 == result)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_pXpMd, &_s17RealityFoundation12EntityAction_pXpMR);
      v5 = String.init<A>(describing:)();
      v0 = v6;
      MEMORY[0x1C68F3410](v5);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVy0A3Kit9TransformVGMd, &_s17RealityFoundation14FromToByActionVy0A3Kit9TransformVGMR);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v0;
  *v0 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, &protocol witness table for FromToByAction<A>, 0xD000000000000036, 0x80000001C18E4FF0, isUniquelyReferenced_nonNull_native);
  *v0 = v10;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAAE10__registeryyFZAA08FromToByD0VySo10simd_quatfaG_Ttg5()
{
  if (one-time initialization token for actionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.actionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.actionTypeMap;
  if (*(static AnimationResource.actionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000030, 0x80000001C18E50A0);
    if (v3)
    {
      v9 = *(*(v1 + 56) + 16 * v2);
      swift_endAccess();
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVySo10simd_quatfaGMd, &_s17RealityFoundation14FromToByActionVySo10simd_quatfaGMR);
      if (v9 == result)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_pXpMd, &_s17RealityFoundation12EntityAction_pXpMR);
      v5 = String.init<A>(describing:)();
      v0 = v6;
      MEMORY[0x1C68F3410](v5);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVySo10simd_quatfaGMd, &_s17RealityFoundation14FromToByActionVySo10simd_quatfaGMR);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v0;
  *v0 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, &protocol witness table for FromToByAction<A>, 0xD000000000000030, 0x80000001C18E50A0, isUniquelyReferenced_nonNull_native);
  *v0 = v10;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAAE10__registeryyFZAA08FromToByD0Vys5SIMD4VySfGG_Ttg5()
{
  if (one-time initialization token for actionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.actionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.actionTypeMap;
  if (*(static AnimationResource.actionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000003ALL, 0x80000001C18E5140);
    if (v3)
    {
      v9 = *(*(v1 + 56) + 16 * v2);
      swift_endAccess();
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGMR);
      if (v9 == result)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_pXpMd, &_s17RealityFoundation12EntityAction_pXpMR);
      v5 = String.init<A>(describing:)();
      v0 = v6;
      MEMORY[0x1C68F3410](v5);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGMR);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v0;
  *v0 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, &protocol witness table for FromToByAction<A>, 0xD00000000000003ALL, 0x80000001C18E5140, isUniquelyReferenced_nonNull_native);
  *v0 = v10;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAAE10__registeryyFZAA08FromToByD0Vys5SIMD3VySfGG_Ttg5()
{
  if (one-time initialization token for actionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.actionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.actionTypeMap;
  if (*(static AnimationResource.actionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000003ALL, 0x80000001C18E51F0);
    if (v3)
    {
      v9 = *(*(v1 + 56) + 16 * v2);
      swift_endAccess();
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGMR);
      if (v9 == result)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_pXpMd, &_s17RealityFoundation12EntityAction_pXpMR);
      v5 = String.init<A>(describing:)();
      v0 = v6;
      MEMORY[0x1C68F3410](v5);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGMR);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v0;
  *v0 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, &protocol witness table for FromToByAction<A>, 0xD00000000000003ALL, 0x80000001C18E51F0, isUniquelyReferenced_nonNull_native);
  *v0 = v10;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAAE10__registeryyFZAA08FromToByD0Vys5SIMD2VySfGG_Ttg5()
{
  if (one-time initialization token for actionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.actionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.actionTypeMap;
  if (*(static AnimationResource.actionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000003ALL, 0x80000001C18E52A0);
    if (v3)
    {
      v9 = *(*(v1 + 56) + 16 * v2);
      swift_endAccess();
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGMR);
      if (v9 == result)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_pXpMd, &_s17RealityFoundation12EntityAction_pXpMR);
      v5 = String.init<A>(describing:)();
      v0 = v6;
      MEMORY[0x1C68F3410](v5);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGMR);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v0;
  *v0 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, &protocol witness table for FromToByAction<A>, 0xD00000000000003ALL, 0x80000001C18E52A0, isUniquelyReferenced_nonNull_native);
  *v0 = v10;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAAE10__registeryyFZAA08FromToByD0VySdG_Ttg5()
{
  if (one-time initialization token for actionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.actionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.actionTypeMap;
  if (*(static AnimationResource.actionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000002ELL, 0x80000001C18E5350);
    if (v3)
    {
      v9 = *(*(v1 + 56) + 16 * v2);
      swift_endAccess();
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVySdGMd, &_s17RealityFoundation14FromToByActionVySdGMR);
      if (v9 == result)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_pXpMd, &_s17RealityFoundation12EntityAction_pXpMR);
      v5 = String.init<A>(describing:)();
      v0 = v6;
      MEMORY[0x1C68F3410](v5);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVySdGMd, &_s17RealityFoundation14FromToByActionVySdGMR);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v0;
  *v0 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, &protocol witness table for FromToByAction<A>, 0xD00000000000002ELL, 0x80000001C18E5350, isUniquelyReferenced_nonNull_native);
  *v0 = v10;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAAE10__registeryyFZAA08FromToByD0VySfG_Ttg5()
{
  if (one-time initialization token for actionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.actionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.actionTypeMap;
  if (*(static AnimationResource.actionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000002DLL, 0x80000001C18E53E0);
    if (v3)
    {
      v9 = *(*(v1 + 56) + 16 * v2);
      swift_endAccess();
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVySfGMd, &_s17RealityFoundation14FromToByActionVySfGMR);
      if (v9 == result)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_pXpMd, &_s17RealityFoundation12EntityAction_pXpMR);
      v5 = String.init<A>(describing:)();
      v0 = v6;
      MEMORY[0x1C68F3410](v5);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVySfGMd, &_s17RealityFoundation14FromToByActionVySfGMR);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v0;
  *v0 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, &protocol witness table for FromToByAction<A>, 0xD00000000000002DLL, 0x80000001C18E53E0, isUniquelyReferenced_nonNull_native);
  *v0 = v10;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAAE10__registeryyFZAA09BillboardD0V_Ttg5()
{
  if (one-time initialization token for actionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.actionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.actionTypeMap;
  if (*(static AnimationResource.actionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000021, 0x80000001C18E5470);
    if (v3)
    {
      v8 = *(*(v1 + 56) + 16 * v2);
      result = swift_endAccess();
      if (v8 == &type metadata for BillboardAction)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_pXpMd, &_s17RealityFoundation12EntityAction_pXpMR);
      v5 = String.init<A>(describing:)();
      v0 = v6;
      MEMORY[0x1C68F3410](v5);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v0;
  *v0 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&type metadata for BillboardAction, &protocol witness table for BillboardAction, 0xD000000000000021, 0x80000001C18E5470, isUniquelyReferenced_nonNull_native);
  *v0 = v9;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAAE10__registeryyFZAA04SpinD0V_Ttg5()
{
  if (one-time initialization token for actionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.actionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.actionTypeMap;
  if (*(static AnimationResource.actionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001CLL, 0x80000001C18E54F0);
    if (v3)
    {
      v8 = *(*(v1 + 56) + 16 * v2);
      result = swift_endAccess();
      if (v8 == &type metadata for SpinAction)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_pXpMd, &_s17RealityFoundation12EntityAction_pXpMR);
      v5 = String.init<A>(describing:)();
      v0 = v6;
      MEMORY[0x1C68F3410](v5);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v0;
  *v0 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&type metadata for SpinAction, &protocol witness table for SpinAction, 0xD00000000000001CLL, 0x80000001C18E54F0, isUniquelyReferenced_nonNull_native);
  *v0 = v9;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAAE10__registeryyFZAA05OrbitcD0V_Ttg5()
{
  if (one-time initialization token for actionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.actionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.actionTypeMap;
  if (*(static AnimationResource.actionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000023, 0x80000001C18E5560);
    if (v3)
    {
      v8 = *(*(v1 + 56) + 16 * v2);
      result = swift_endAccess();
      if (v8 == &type metadata for OrbitEntityAction)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_pXpMd, &_s17RealityFoundation12EntityAction_pXpMR);
      v5 = String.init<A>(describing:)();
      v0 = v6;
      MEMORY[0x1C68F3410](v5);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v0;
  *v0 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&type metadata for OrbitEntityAction, &protocol witness table for OrbitEntityAction, 0xD000000000000023, 0x80000001C18E5560, isUniquelyReferenced_nonNull_native);
  *v0 = v9;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAAE10__registeryyFZAA07ImpulseD0V_Ttg5()
{
  if (one-time initialization token for actionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.actionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.actionTypeMap;
  if (*(static AnimationResource.actionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001FLL, 0x80000001C18E55F0);
    if (v3)
    {
      v8 = *(*(v1 + 56) + 16 * v2);
      result = swift_endAccess();
      if (v8 == &type metadata for ImpulseAction)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_pXpMd, &_s17RealityFoundation12EntityAction_pXpMR);
      v5 = String.init<A>(describing:)();
      v0 = v6;
      MEMORY[0x1C68F3410](v5);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v0;
  *v0 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&type metadata for ImpulseAction, &protocol witness table for ImpulseAction, 0xD00000000000001FLL, 0x80000001C18E55F0, isUniquelyReferenced_nonNull_native);
  *v0 = v9;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAAE10__registeryyFZAA03Setc7EnabledD0V_Ttg5()
{
  if (one-time initialization token for actionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.actionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.actionTypeMap;
  if (*(static AnimationResource.actionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000028, 0x80000001C18E5660);
    if (v3)
    {
      v8 = *(*(v1 + 56) + 16 * v2);
      result = swift_endAccess();
      if (v8 == &type metadata for SetEntityEnabledAction)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_pXpMd, &_s17RealityFoundation12EntityAction_pXpMR);
      v5 = String.init<A>(describing:)();
      v0 = v6;
      MEMORY[0x1C68F3410](v5);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v0;
  *v0 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&type metadata for SetEntityEnabledAction, &protocol witness table for SetEntityEnabledAction, 0xD000000000000028, 0x80000001C18E5660, isUniquelyReferenced_nonNull_native);
  *v0 = v9;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAAE10__registeryyFZAA012NotificationD0V_Ttg5()
{
  if (one-time initialization token for actionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.actionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.actionTypeMap;
  if (*(static AnimationResource.actionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000024, 0x80000001C18E56F0);
    if (v3)
    {
      v8 = *(*(v1 + 56) + 16 * v2);
      result = swift_endAccess();
      if (v8 == &type metadata for NotificationAction)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_pXpMd, &_s17RealityFoundation12EntityAction_pXpMR);
      v5 = String.init<A>(describing:)();
      v0 = v6;
      MEMORY[0x1C68F3410](v5);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v0;
  *v0 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&type metadata for NotificationAction, &protocol witness table for NotificationAction, 0xD000000000000024, 0x80000001C18E56F0, isUniquelyReferenced_nonNull_native);
  *v0 = v9;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAAE10__registeryyFZAA013PlayAnimationD0V_Ttg5()
{
  if (one-time initialization token for actionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.actionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.actionTypeMap;
  if (*(static AnimationResource.actionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000025, 0x80000001C18E5780);
    if (v3)
    {
      v8 = *(*(v1 + 56) + 16 * v2);
      result = swift_endAccess();
      if (v8 == &type metadata for PlayAnimationAction)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_pXpMd, &_s17RealityFoundation12EntityAction_pXpMR);
      v5 = String.init<A>(describing:)();
      v0 = v6;
      MEMORY[0x1C68F3410](v5);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v0;
  *v0 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&type metadata for PlayAnimationAction, &protocol witness table for PlayAnimationAction, 0xD000000000000025, 0x80000001C18E5780, isUniquelyReferenced_nonNull_native);
  *v0 = v9;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAASeRzSERzSe18EventParameterTypeACRpzSEAERQrlE17__registerCodableyyFZAA09EmphasizeD0V_Ttg5()
{
  if (one-time initialization token for codableActionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.codableActionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.codableActionTypeMap;
  if (*(static AnimationResource.codableActionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000021, 0x80000001C18E4550);
    if (v3)
    {
      v10 = *(*(v1 + 56) + 56 * v2);
      result = swift_endAccess();
      if (v10 == &type metadata for EmphasizeAction)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMd, &_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMR);
      v5 = String.init<A>(describing:)();
      v0 = v6;
      MEMORY[0x1C68F3410](v5);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v7 = lazy protocol witness table accessor for type EmphasizeAction and conformance EmphasizeAction();
  v8 = lazy protocol witness table accessor for type EmphasizeAction and conformance EmphasizeAction();
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v0;
  *v0 = 0x8000000000000000;
  v12[0] = &type metadata for EmphasizeAction;
  v12[1] = &protocol witness table for EmphasizeAction;
  v12[2] = v7;
  v12[3] = v8;
  v12[4] = MEMORY[0x1E69E73E0];
  v12[5] = MEMORY[0x1E69E7400];
  v12[6] = MEMORY[0x1E69E73E8];
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v12, 0xD000000000000021, 0x80000001C18E4550, isUniquelyReferenced_nonNull_native);
  *v0 = v11;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAASeRzSERzSe18EventParameterTypeACRpzSEAERQrlE17__registerCodableyyFZAA09PlayAudioD0V_Ttg5()
{
  if (one-time initialization token for codableActionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.codableActionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.codableActionTypeMap;
  if (*(static AnimationResource.codableActionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000021, 0x80000001C18E4620);
    if (v3)
    {
      v10 = *(*(v1 + 56) + 56 * v2);
      result = swift_endAccess();
      if (v10 == &type metadata for PlayAudioAction)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMd, &_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMR);
      v5 = String.init<A>(describing:)();
      v0 = v6;
      MEMORY[0x1C68F3410](v5);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v7 = lazy protocol witness table accessor for type PlayAudioAction and conformance PlayAudioAction();
  v8 = lazy protocol witness table accessor for type PlayAudioAction and conformance PlayAudioAction();
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v0;
  *v0 = 0x8000000000000000;
  v12[0] = &type metadata for PlayAudioAction;
  v12[1] = &protocol witness table for PlayAudioAction;
  v12[2] = v7;
  v12[3] = v8;
  v12[4] = MEMORY[0x1E69E73E0];
  v12[5] = MEMORY[0x1E69E7400];
  v12[6] = MEMORY[0x1E69E73E8];
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v12, 0xD000000000000021, 0x80000001C18E4620, isUniquelyReferenced_nonNull_native);
  *v0 = v11;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAASeRzSERzSe18EventParameterTypeACRpzSEAERQrlE17__registerCodableyyFZAA03Setc8PropertyD0Vy0A3Kit9TransformVG_Ttg5()
{
  if (one-time initialization token for codableActionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.codableActionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.codableActionTypeMap;
  if (*(static AnimationResource.codableActionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000003FLL, 0x80000001C18E4710);
    if (v3)
    {
      v11 = *(*(v1 + 56) + 56 * v2);
      swift_endAccess();
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVy0A3Kit9TransformVGMd, &_s17RealityFoundation23SetEntityPropertyActionVy0A3Kit9TransformVGMR);
      if (v11 == result)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMd, &_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMR);
      v5 = String.init<A>(describing:)();
      v0 = v6;
      MEMORY[0x1C68F3410](v5);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVy0A3Kit9TransformVGMd, &_s17RealityFoundation23SetEntityPropertyActionVy0A3Kit9TransformVGMR);
  v8 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyAction<Transform> and conformance SetEntityPropertyAction<A>, &_s17RealityFoundation23SetEntityPropertyActionVy0A3Kit9TransformVGMd, &_s17RealityFoundation23SetEntityPropertyActionVy0A3Kit9TransformVGMR, protocol conformance descriptor for SetEntityPropertyAction<A>);
  v9 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyAction<Transform> and conformance SetEntityPropertyAction<A>, &_s17RealityFoundation23SetEntityPropertyActionVy0A3Kit9TransformVGMd, &_s17RealityFoundation23SetEntityPropertyActionVy0A3Kit9TransformVGMR, protocol conformance descriptor for SetEntityPropertyAction<A>);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v0;
  *v0 = 0x8000000000000000;
  v13[0] = v7;
  v13[1] = &protocol witness table for SetEntityPropertyAction<A>;
  v13[2] = v8;
  v13[3] = v9;
  v13[4] = MEMORY[0x1E69E73E0];
  v13[5] = MEMORY[0x1E69E7400];
  v13[6] = MEMORY[0x1E69E73E8];
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, 0xD00000000000003FLL, 0x80000001C18E4710, isUniquelyReferenced_nonNull_native);
  *v0 = v12;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAASeRzSERzSe18EventParameterTypeACRpzSEAERQrlE17__registerCodableyyFZAA03Setc8PropertyD0VySSG_Ttg5()
{
  if (one-time initialization token for codableActionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.codableActionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.codableActionTypeMap;
  if (*(static AnimationResource.codableActionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000037, 0x80000001C18E47C0);
    if (v3)
    {
      v11 = *(*(v1 + 56) + 56 * v2);
      swift_endAccess();
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySSGMd, &_s17RealityFoundation23SetEntityPropertyActionVySSGMR);
      if (v11 == result)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMd, &_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMR);
      v5 = String.init<A>(describing:)();
      v0 = v6;
      MEMORY[0x1C68F3410](v5);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySSGMd, &_s17RealityFoundation23SetEntityPropertyActionVySSGMR);
  v8 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyAction<String> and conformance SetEntityPropertyAction<A>, &_s17RealityFoundation23SetEntityPropertyActionVySSGMd, &_s17RealityFoundation23SetEntityPropertyActionVySSGMR, protocol conformance descriptor for SetEntityPropertyAction<A>);
  v9 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyAction<String> and conformance SetEntityPropertyAction<A>, &_s17RealityFoundation23SetEntityPropertyActionVySSGMd, &_s17RealityFoundation23SetEntityPropertyActionVySSGMR, protocol conformance descriptor for SetEntityPropertyAction<A>);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v0;
  *v0 = 0x8000000000000000;
  v13[0] = v7;
  v13[1] = &protocol witness table for SetEntityPropertyAction<A>;
  v13[2] = v8;
  v13[3] = v9;
  v13[4] = MEMORY[0x1E69E73E0];
  v13[5] = MEMORY[0x1E69E7400];
  v13[6] = MEMORY[0x1E69E73E8];
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, 0xD000000000000037, 0x80000001C18E47C0, isUniquelyReferenced_nonNull_native);
  *v0 = v12;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAASeRzSERzSe18EventParameterTypeACRpzSEAERQrlE17__registerCodableyyFZAA03Setc8PropertyD0VySbG_Ttg5()
{
  if (one-time initialization token for codableActionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.codableActionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.codableActionTypeMap;
  if (*(static AnimationResource.codableActionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000035, 0x80000001C18E4870);
    if (v3)
    {
      v11 = *(*(v1 + 56) + 56 * v2);
      swift_endAccess();
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySbGMd, &_s17RealityFoundation23SetEntityPropertyActionVySbGMR);
      if (v11 == result)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMd, &_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMR);
      v5 = String.init<A>(describing:)();
      v0 = v6;
      MEMORY[0x1C68F3410](v5);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySbGMd, &_s17RealityFoundation23SetEntityPropertyActionVySbGMR);
  v8 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyAction<Bool> and conformance SetEntityPropertyAction<A>, &_s17RealityFoundation23SetEntityPropertyActionVySbGMd, &_s17RealityFoundation23SetEntityPropertyActionVySbGMR, protocol conformance descriptor for SetEntityPropertyAction<A>);
  v9 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyAction<Bool> and conformance SetEntityPropertyAction<A>, &_s17RealityFoundation23SetEntityPropertyActionVySbGMd, &_s17RealityFoundation23SetEntityPropertyActionVySbGMR, protocol conformance descriptor for SetEntityPropertyAction<A>);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v0;
  *v0 = 0x8000000000000000;
  v13[0] = v7;
  v13[1] = &protocol witness table for SetEntityPropertyAction<A>;
  v13[2] = v8;
  v13[3] = v9;
  v13[4] = MEMORY[0x1E69E73E0];
  v13[5] = MEMORY[0x1E69E7400];
  v13[6] = MEMORY[0x1E69E73E8];
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, 0xD000000000000035, 0x80000001C18E4870, isUniquelyReferenced_nonNull_native);
  *v0 = v12;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAASeRzSERzSe18EventParameterTypeACRpzSEAERQrlE17__registerCodableyyFZAA03Setc8PropertyD0VySiG_Ttg5()
{
  if (one-time initialization token for codableActionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.codableActionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.codableActionTypeMap;
  if (*(static AnimationResource.codableActionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000034, 0x80000001C18E4920);
    if (v3)
    {
      v11 = *(*(v1 + 56) + 56 * v2);
      swift_endAccess();
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySiGMd, &_s17RealityFoundation23SetEntityPropertyActionVySiGMR);
      if (v11 == result)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMd, &_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMR);
      v5 = String.init<A>(describing:)();
      v0 = v6;
      MEMORY[0x1C68F3410](v5);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySiGMd, &_s17RealityFoundation23SetEntityPropertyActionVySiGMR);
  v8 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyAction<Int> and conformance SetEntityPropertyAction<A>, &_s17RealityFoundation23SetEntityPropertyActionVySiGMd, &_s17RealityFoundation23SetEntityPropertyActionVySiGMR, protocol conformance descriptor for SetEntityPropertyAction<A>);
  v9 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyAction<Int> and conformance SetEntityPropertyAction<A>, &_s17RealityFoundation23SetEntityPropertyActionVySiGMd, &_s17RealityFoundation23SetEntityPropertyActionVySiGMR, protocol conformance descriptor for SetEntityPropertyAction<A>);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v0;
  *v0 = 0x8000000000000000;
  v13[0] = v7;
  v13[1] = &protocol witness table for SetEntityPropertyAction<A>;
  v13[2] = v8;
  v13[3] = v9;
  v13[4] = MEMORY[0x1E69E73E0];
  v13[5] = MEMORY[0x1E69E7400];
  v13[6] = MEMORY[0x1E69E73E8];
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, 0xD000000000000034, 0x80000001C18E4920, isUniquelyReferenced_nonNull_native);
  *v0 = v12;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAASeRzSERzSe18EventParameterTypeACRpzSEAERQrlE17__registerCodableyyFZAA03Setc8PropertyD0VySo10simd_quatfaG_Ttg5()
{
  if (one-time initialization token for codableActionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.codableActionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.codableActionTypeMap;
  if (*(static AnimationResource.codableActionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000039, 0x80000001C18E49D0);
    if (v3)
    {
      v11 = *(*(v1 + 56) + 56 * v2);
      swift_endAccess();
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGMd, &_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGMR);
      if (v11 == result)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMd, &_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMR);
      v5 = String.init<A>(describing:)();
      v0 = v6;
      MEMORY[0x1C68F3410](v5);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGMd, &_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGMR);
  v8 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyAction<simd_quatf> and conformance SetEntityPropertyAction<A>, &_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGMd, &_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGMR, protocol conformance descriptor for SetEntityPropertyAction<A>);
  v9 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyAction<simd_quatf> and conformance SetEntityPropertyAction<A>, &_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGMd, &_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGMR, protocol conformance descriptor for SetEntityPropertyAction<A>);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v0;
  *v0 = 0x8000000000000000;
  v13[0] = v7;
  v13[1] = &protocol witness table for SetEntityPropertyAction<A>;
  v13[2] = v8;
  v13[3] = v9;
  v13[4] = MEMORY[0x1E69E73E0];
  v13[5] = MEMORY[0x1E69E7400];
  v13[6] = MEMORY[0x1E69E73E8];
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, 0xD000000000000039, 0x80000001C18E49D0, isUniquelyReferenced_nonNull_native);
  *v0 = v12;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAASeRzSERzSe18EventParameterTypeACRpzSEAERQrlE17__registerCodableyyFZAA03Setc8PropertyD0Vys5SIMD4VySfGG_Ttg5()
{
  if (one-time initialization token for codableActionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.codableActionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.codableActionTypeMap;
  if (*(static AnimationResource.codableActionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000043, 0x80000001C18E4A80);
    if (v3)
    {
      v11 = *(*(v1 + 56) + 56 * v2);
      swift_endAccess();
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGMR);
      if (v11 == result)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMd, &_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMR);
      v5 = String.init<A>(describing:)();
      v0 = v6;
      MEMORY[0x1C68F3410](v5);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGMR);
  v8 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyAction<SIMD4<Float>> and conformance SetEntityPropertyAction<A>, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGMR, protocol conformance descriptor for SetEntityPropertyAction<A>);
  v9 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyAction<SIMD4<Float>> and conformance SetEntityPropertyAction<A>, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGMR, protocol conformance descriptor for SetEntityPropertyAction<A>);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v0;
  *v0 = 0x8000000000000000;
  v13[0] = v7;
  v13[1] = &protocol witness table for SetEntityPropertyAction<A>;
  v13[2] = v8;
  v13[3] = v9;
  v13[4] = MEMORY[0x1E69E73E0];
  v13[5] = MEMORY[0x1E69E7400];
  v13[6] = MEMORY[0x1E69E73E8];
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, 0xD000000000000043, 0x80000001C18E4A80, isUniquelyReferenced_nonNull_native);
  *v0 = v12;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAASeRzSERzSe18EventParameterTypeACRpzSEAERQrlE17__registerCodableyyFZAA03Setc8PropertyD0Vys5SIMD3VySfGG_Ttg5()
{
  if (one-time initialization token for codableActionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.codableActionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.codableActionTypeMap;
  if (*(static AnimationResource.codableActionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000043, 0x80000001C18E4B50);
    if (v3)
    {
      v11 = *(*(v1 + 56) + 56 * v2);
      swift_endAccess();
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGMR);
      if (v11 == result)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMd, &_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMR);
      v5 = String.init<A>(describing:)();
      v0 = v6;
      MEMORY[0x1C68F3410](v5);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGMR);
  v8 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyAction<SIMD3<Float>> and conformance SetEntityPropertyAction<A>, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGMR, protocol conformance descriptor for SetEntityPropertyAction<A>);
  v9 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyAction<SIMD3<Float>> and conformance SetEntityPropertyAction<A>, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGMR, protocol conformance descriptor for SetEntityPropertyAction<A>);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v0;
  *v0 = 0x8000000000000000;
  v13[0] = v7;
  v13[1] = &protocol witness table for SetEntityPropertyAction<A>;
  v13[2] = v8;
  v13[3] = v9;
  v13[4] = MEMORY[0x1E69E73E0];
  v13[5] = MEMORY[0x1E69E7400];
  v13[6] = MEMORY[0x1E69E73E8];
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, 0xD000000000000043, 0x80000001C18E4B50, isUniquelyReferenced_nonNull_native);
  *v0 = v12;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAASeRzSERzSe18EventParameterTypeACRpzSEAERQrlE17__registerCodableyyFZAA03Setc8PropertyD0Vys5SIMD2VySfGG_Ttg5()
{
  if (one-time initialization token for codableActionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.codableActionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.codableActionTypeMap;
  if (*(static AnimationResource.codableActionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000043, 0x80000001C18E4C20);
    if (v3)
    {
      v11 = *(*(v1 + 56) + 56 * v2);
      swift_endAccess();
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGMR);
      if (v11 == result)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMd, &_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMR);
      v5 = String.init<A>(describing:)();
      v0 = v6;
      MEMORY[0x1C68F3410](v5);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGMR);
  v8 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyAction<SIMD2<Float>> and conformance SetEntityPropertyAction<A>, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGMR, protocol conformance descriptor for SetEntityPropertyAction<A>);
  v9 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyAction<SIMD2<Float>> and conformance SetEntityPropertyAction<A>, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGMR, protocol conformance descriptor for SetEntityPropertyAction<A>);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v0;
  *v0 = 0x8000000000000000;
  v13[0] = v7;
  v13[1] = &protocol witness table for SetEntityPropertyAction<A>;
  v13[2] = v8;
  v13[3] = v9;
  v13[4] = MEMORY[0x1E69E73E0];
  v13[5] = MEMORY[0x1E69E7400];
  v13[6] = MEMORY[0x1E69E73E8];
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, 0xD000000000000043, 0x80000001C18E4C20, isUniquelyReferenced_nonNull_native);
  *v0 = v12;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAASeRzSERzSe18EventParameterTypeACRpzSEAERQrlE17__registerCodableyyFZAA03Setc8PropertyD0VySdG_Ttg5()
{
  if (one-time initialization token for codableActionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.codableActionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.codableActionTypeMap;
  if (*(static AnimationResource.codableActionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000037, 0x80000001C18E4CF0);
    if (v3)
    {
      v11 = *(*(v1 + 56) + 56 * v2);
      swift_endAccess();
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySdGMd, &_s17RealityFoundation23SetEntityPropertyActionVySdGMR);
      if (v11 == result)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMd, &_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMR);
      v5 = String.init<A>(describing:)();
      v0 = v6;
      MEMORY[0x1C68F3410](v5);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySdGMd, &_s17RealityFoundation23SetEntityPropertyActionVySdGMR);
  v8 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyAction<Double> and conformance SetEntityPropertyAction<A>, &_s17RealityFoundation23SetEntityPropertyActionVySdGMd, &_s17RealityFoundation23SetEntityPropertyActionVySdGMR, protocol conformance descriptor for SetEntityPropertyAction<A>);
  v9 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyAction<Double> and conformance SetEntityPropertyAction<A>, &_s17RealityFoundation23SetEntityPropertyActionVySdGMd, &_s17RealityFoundation23SetEntityPropertyActionVySdGMR, protocol conformance descriptor for SetEntityPropertyAction<A>);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v0;
  *v0 = 0x8000000000000000;
  v13[0] = v7;
  v13[1] = &protocol witness table for SetEntityPropertyAction<A>;
  v13[2] = v8;
  v13[3] = v9;
  v13[4] = MEMORY[0x1E69E73E0];
  v13[5] = MEMORY[0x1E69E7400];
  v13[6] = MEMORY[0x1E69E73E8];
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, 0xD000000000000037, 0x80000001C18E4CF0, isUniquelyReferenced_nonNull_native);
  *v0 = v12;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAASeRzSERzSe18EventParameterTypeACRpzSEAERQrlE17__registerCodableyyFZAA03Setc8PropertyD0VySfG_Ttg5()
{
  if (one-time initialization token for codableActionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.codableActionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.codableActionTypeMap;
  if (*(static AnimationResource.codableActionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000036, 0x80000001C18E4DA0);
    if (v3)
    {
      v11 = *(*(v1 + 56) + 56 * v2);
      swift_endAccess();
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySfGMd, &_s17RealityFoundation23SetEntityPropertyActionVySfGMR);
      if (v11 == result)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMd, &_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMR);
      v5 = String.init<A>(describing:)();
      v0 = v6;
      MEMORY[0x1C68F3410](v5);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySfGMd, &_s17RealityFoundation23SetEntityPropertyActionVySfGMR);
  v8 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyAction<Float> and conformance SetEntityPropertyAction<A>, &_s17RealityFoundation23SetEntityPropertyActionVySfGMd, &_s17RealityFoundation23SetEntityPropertyActionVySfGMR, protocol conformance descriptor for SetEntityPropertyAction<A>);
  v9 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyAction<Float> and conformance SetEntityPropertyAction<A>, &_s17RealityFoundation23SetEntityPropertyActionVySfGMd, &_s17RealityFoundation23SetEntityPropertyActionVySfGMR, protocol conformance descriptor for SetEntityPropertyAction<A>);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v0;
  *v0 = 0x8000000000000000;
  v13[0] = v7;
  v13[1] = &protocol witness table for SetEntityPropertyAction<A>;
  v13[2] = v8;
  v13[3] = v9;
  v13[4] = MEMORY[0x1E69E73E0];
  v13[5] = MEMORY[0x1E69E7400];
  v13[6] = MEMORY[0x1E69E73E8];
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, 0xD000000000000036, 0x80000001C18E4DA0, isUniquelyReferenced_nonNull_native);
  *v0 = v12;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAASeRzSERzSe18EventParameterTypeACRpzSEAERQrlE17__registerCodableyyFZAA08FromToByD0VyAA17BlendShapeWeightsVG_Ttg5()
{
  if (one-time initialization token for codableActionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.codableActionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.codableActionTypeMap;
  if (*(static AnimationResource.codableActionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000045, 0x80000001C18E4E50);
    if (v3)
    {
      v11 = *(*(v1 + 56) + 56 * v2);
      swift_endAccess();
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGMR);
      if (v11 == result)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMd, &_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMR);
      v5 = String.init<A>(describing:)();
      v0 = v6;
      MEMORY[0x1C68F3410](v5);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGMR);
  v8 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByAction<BlendShapeWeights> and conformance FromToByAction<A>, &_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGMR, protocol conformance descriptor for FromToByAction<A>);
  v9 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByAction<BlendShapeWeights> and conformance FromToByAction<A>, &_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGMR, protocol conformance descriptor for FromToByAction<A>);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v0;
  *v0 = 0x8000000000000000;
  v13[0] = v7;
  v13[1] = &protocol witness table for FromToByAction<A>;
  v13[2] = v8;
  v13[3] = v9;
  v13[4] = MEMORY[0x1E69E73E0];
  v13[5] = MEMORY[0x1E69E7400];
  v13[6] = MEMORY[0x1E69E73E8];
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, 0xD000000000000045, 0x80000001C18E4E50, isUniquelyReferenced_nonNull_native);
  *v0 = v12;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAASeRzSERzSe18EventParameterTypeACRpzSEAERQrlE17__registerCodableyyFZAA08FromToByD0VyAA15JointTransformsVG_Ttg5()
{
  if (one-time initialization token for codableActionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.codableActionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.codableActionTypeMap;
  if (*(static AnimationResource.codableActionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000043, 0x80000001C18E4F20);
    if (v3)
    {
      v11 = *(*(v1 + 56) + 56 * v2);
      swift_endAccess();
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGMd, &_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGMR);
      if (v11 == result)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMd, &_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMR);
      v5 = String.init<A>(describing:)();
      v0 = v6;
      MEMORY[0x1C68F3410](v5);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGMd, &_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGMR);
  v8 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByAction<JointTransforms> and conformance FromToByAction<A>, &_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGMd, &_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGMR, protocol conformance descriptor for FromToByAction<A>);
  v9 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByAction<JointTransforms> and conformance FromToByAction<A>, &_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGMd, &_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGMR, protocol conformance descriptor for FromToByAction<A>);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v0;
  *v0 = 0x8000000000000000;
  v13[0] = v7;
  v13[1] = &protocol witness table for FromToByAction<A>;
  v13[2] = v8;
  v13[3] = v9;
  v13[4] = MEMORY[0x1E69E73E0];
  v13[5] = MEMORY[0x1E69E7400];
  v13[6] = MEMORY[0x1E69E73E8];
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, 0xD000000000000043, 0x80000001C18E4F20, isUniquelyReferenced_nonNull_native);
  *v0 = v12;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAASeRzSERzSe18EventParameterTypeACRpzSEAERQrlE17__registerCodableyyFZAA08FromToByD0Vy0A3Kit9TransformVG_Ttg5()
{
  if (one-time initialization token for codableActionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.codableActionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.codableActionTypeMap;
  if (*(static AnimationResource.codableActionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000036, 0x80000001C18E4FF0);
    if (v3)
    {
      v11 = *(*(v1 + 56) + 56 * v2);
      swift_endAccess();
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVy0A3Kit9TransformVGMd, &_s17RealityFoundation14FromToByActionVy0A3Kit9TransformVGMR);
      if (v11 == result)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMd, &_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMR);
      v5 = String.init<A>(describing:)();
      v0 = v6;
      MEMORY[0x1C68F3410](v5);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVy0A3Kit9TransformVGMd, &_s17RealityFoundation14FromToByActionVy0A3Kit9TransformVGMR);
  v8 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByAction<Transform> and conformance FromToByAction<A>, &_s17RealityFoundation14FromToByActionVy0A3Kit9TransformVGMd, &_s17RealityFoundation14FromToByActionVy0A3Kit9TransformVGMR, protocol conformance descriptor for FromToByAction<A>);
  v9 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByAction<Transform> and conformance FromToByAction<A>, &_s17RealityFoundation14FromToByActionVy0A3Kit9TransformVGMd, &_s17RealityFoundation14FromToByActionVy0A3Kit9TransformVGMR, protocol conformance descriptor for FromToByAction<A>);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v0;
  *v0 = 0x8000000000000000;
  v13[0] = v7;
  v13[1] = &protocol witness table for FromToByAction<A>;
  v13[2] = v8;
  v13[3] = v9;
  v13[4] = MEMORY[0x1E69E73E0];
  v13[5] = MEMORY[0x1E69E7400];
  v13[6] = MEMORY[0x1E69E73E8];
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, 0xD000000000000036, 0x80000001C18E4FF0, isUniquelyReferenced_nonNull_native);
  *v0 = v12;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAASeRzSERzSe18EventParameterTypeACRpzSEAERQrlE17__registerCodableyyFZAA08FromToByD0VySo10simd_quatfaG_Ttg5()
{
  if (one-time initialization token for codableActionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.codableActionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.codableActionTypeMap;
  if (*(static AnimationResource.codableActionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000030, 0x80000001C18E50A0);
    if (v3)
    {
      v11 = *(*(v1 + 56) + 56 * v2);
      swift_endAccess();
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVySo10simd_quatfaGMd, &_s17RealityFoundation14FromToByActionVySo10simd_quatfaGMR);
      if (v11 == result)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMd, &_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMR);
      v5 = String.init<A>(describing:)();
      v0 = v6;
      MEMORY[0x1C68F3410](v5);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVySo10simd_quatfaGMd, &_s17RealityFoundation14FromToByActionVySo10simd_quatfaGMR);
  v8 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByAction<simd_quatf> and conformance FromToByAction<A>, &_s17RealityFoundation14FromToByActionVySo10simd_quatfaGMd, &_s17RealityFoundation14FromToByActionVySo10simd_quatfaGMR, protocol conformance descriptor for FromToByAction<A>);
  v9 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByAction<simd_quatf> and conformance FromToByAction<A>, &_s17RealityFoundation14FromToByActionVySo10simd_quatfaGMd, &_s17RealityFoundation14FromToByActionVySo10simd_quatfaGMR, protocol conformance descriptor for FromToByAction<A>);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v0;
  *v0 = 0x8000000000000000;
  v13[0] = v7;
  v13[1] = &protocol witness table for FromToByAction<A>;
  v13[2] = v8;
  v13[3] = v9;
  v13[4] = MEMORY[0x1E69E73E0];
  v13[5] = MEMORY[0x1E69E7400];
  v13[6] = MEMORY[0x1E69E73E8];
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, 0xD000000000000030, 0x80000001C18E50A0, isUniquelyReferenced_nonNull_native);
  *v0 = v12;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAASeRzSERzSe18EventParameterTypeACRpzSEAERQrlE17__registerCodableyyFZAA08FromToByD0Vys5SIMD4VySfGG_Ttg5()
{
  if (one-time initialization token for codableActionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.codableActionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.codableActionTypeMap;
  if (*(static AnimationResource.codableActionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000003ALL, 0x80000001C18E5140);
    if (v3)
    {
      v11 = *(*(v1 + 56) + 56 * v2);
      swift_endAccess();
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGMR);
      if (v11 == result)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMd, &_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMR);
      v5 = String.init<A>(describing:)();
      v0 = v6;
      MEMORY[0x1C68F3410](v5);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGMR);
  v8 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByAction<SIMD4<Float>> and conformance FromToByAction<A>, &_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGMR, protocol conformance descriptor for FromToByAction<A>);
  v9 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByAction<SIMD4<Float>> and conformance FromToByAction<A>, &_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGMR, protocol conformance descriptor for FromToByAction<A>);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v0;
  *v0 = 0x8000000000000000;
  v13[0] = v7;
  v13[1] = &protocol witness table for FromToByAction<A>;
  v13[2] = v8;
  v13[3] = v9;
  v13[4] = MEMORY[0x1E69E73E0];
  v13[5] = MEMORY[0x1E69E7400];
  v13[6] = MEMORY[0x1E69E73E8];
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, 0xD00000000000003ALL, 0x80000001C18E5140, isUniquelyReferenced_nonNull_native);
  *v0 = v12;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAASeRzSERzSe18EventParameterTypeACRpzSEAERQrlE17__registerCodableyyFZAA08FromToByD0Vys5SIMD3VySfGG_Ttg5()
{
  if (one-time initialization token for codableActionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.codableActionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.codableActionTypeMap;
  if (*(static AnimationResource.codableActionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000003ALL, 0x80000001C18E51F0);
    if (v3)
    {
      v11 = *(*(v1 + 56) + 56 * v2);
      swift_endAccess();
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGMR);
      if (v11 == result)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMd, &_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMR);
      v5 = String.init<A>(describing:)();
      v0 = v6;
      MEMORY[0x1C68F3410](v5);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGMR);
  v8 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByAction<SIMD3<Float>> and conformance FromToByAction<A>, &_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGMR, protocol conformance descriptor for FromToByAction<A>);
  v9 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByAction<SIMD3<Float>> and conformance FromToByAction<A>, &_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGMR, protocol conformance descriptor for FromToByAction<A>);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v0;
  *v0 = 0x8000000000000000;
  v13[0] = v7;
  v13[1] = &protocol witness table for FromToByAction<A>;
  v13[2] = v8;
  v13[3] = v9;
  v13[4] = MEMORY[0x1E69E73E0];
  v13[5] = MEMORY[0x1E69E7400];
  v13[6] = MEMORY[0x1E69E73E8];
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, 0xD00000000000003ALL, 0x80000001C18E51F0, isUniquelyReferenced_nonNull_native);
  *v0 = v12;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAASeRzSERzSe18EventParameterTypeACRpzSEAERQrlE17__registerCodableyyFZAA08FromToByD0Vys5SIMD2VySfGG_Ttg5()
{
  if (one-time initialization token for codableActionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.codableActionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.codableActionTypeMap;
  if (*(static AnimationResource.codableActionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000003ALL, 0x80000001C18E52A0);
    if (v3)
    {
      v11 = *(*(v1 + 56) + 56 * v2);
      swift_endAccess();
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGMR);
      if (v11 == result)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMd, &_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMR);
      v5 = String.init<A>(describing:)();
      v0 = v6;
      MEMORY[0x1C68F3410](v5);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGMR);
  v8 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByAction<SIMD2<Float>> and conformance FromToByAction<A>, &_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGMR, protocol conformance descriptor for FromToByAction<A>);
  v9 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByAction<SIMD2<Float>> and conformance FromToByAction<A>, &_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGMR, protocol conformance descriptor for FromToByAction<A>);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v0;
  *v0 = 0x8000000000000000;
  v13[0] = v7;
  v13[1] = &protocol witness table for FromToByAction<A>;
  v13[2] = v8;
  v13[3] = v9;
  v13[4] = MEMORY[0x1E69E73E0];
  v13[5] = MEMORY[0x1E69E7400];
  v13[6] = MEMORY[0x1E69E73E8];
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, 0xD00000000000003ALL, 0x80000001C18E52A0, isUniquelyReferenced_nonNull_native);
  *v0 = v12;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAASeRzSERzSe18EventParameterTypeACRpzSEAERQrlE17__registerCodableyyFZAA08FromToByD0VySdG_Ttg5()
{
  if (one-time initialization token for codableActionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.codableActionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.codableActionTypeMap;
  if (*(static AnimationResource.codableActionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000002ELL, 0x80000001C18E5350);
    if (v3)
    {
      v11 = *(*(v1 + 56) + 56 * v2);
      swift_endAccess();
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVySdGMd, &_s17RealityFoundation14FromToByActionVySdGMR);
      if (v11 == result)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMd, &_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMR);
      v5 = String.init<A>(describing:)();
      v0 = v6;
      MEMORY[0x1C68F3410](v5);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVySdGMd, &_s17RealityFoundation14FromToByActionVySdGMR);
  v8 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByAction<Double> and conformance FromToByAction<A>, &_s17RealityFoundation14FromToByActionVySdGMd, &_s17RealityFoundation14FromToByActionVySdGMR, protocol conformance descriptor for FromToByAction<A>);
  v9 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByAction<Double> and conformance FromToByAction<A>, &_s17RealityFoundation14FromToByActionVySdGMd, &_s17RealityFoundation14FromToByActionVySdGMR, protocol conformance descriptor for FromToByAction<A>);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v0;
  *v0 = 0x8000000000000000;
  v13[0] = v7;
  v13[1] = &protocol witness table for FromToByAction<A>;
  v13[2] = v8;
  v13[3] = v9;
  v13[4] = MEMORY[0x1E69E73E0];
  v13[5] = MEMORY[0x1E69E7400];
  v13[6] = MEMORY[0x1E69E73E8];
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, 0xD00000000000002ELL, 0x80000001C18E5350, isUniquelyReferenced_nonNull_native);
  *v0 = v12;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAASeRzSERzSe18EventParameterTypeACRpzSEAERQrlE17__registerCodableyyFZAA08FromToByD0VySfG_Ttg5()
{
  if (one-time initialization token for codableActionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.codableActionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.codableActionTypeMap;
  if (*(static AnimationResource.codableActionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000002DLL, 0x80000001C18E53E0);
    if (v3)
    {
      v11 = *(*(v1 + 56) + 56 * v2);
      swift_endAccess();
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVySfGMd, &_s17RealityFoundation14FromToByActionVySfGMR);
      if (v11 == result)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMd, &_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMR);
      v5 = String.init<A>(describing:)();
      v0 = v6;
      MEMORY[0x1C68F3410](v5);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVySfGMd, &_s17RealityFoundation14FromToByActionVySfGMR);
  v8 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByAction<Float> and conformance FromToByAction<A>, &_s17RealityFoundation14FromToByActionVySfGMd, &_s17RealityFoundation14FromToByActionVySfGMR, protocol conformance descriptor for FromToByAction<A>);
  v9 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByAction<Float> and conformance FromToByAction<A>, &_s17RealityFoundation14FromToByActionVySfGMd, &_s17RealityFoundation14FromToByActionVySfGMR, protocol conformance descriptor for FromToByAction<A>);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v0;
  *v0 = 0x8000000000000000;
  v13[0] = v7;
  v13[1] = &protocol witness table for FromToByAction<A>;
  v13[2] = v8;
  v13[3] = v9;
  v13[4] = MEMORY[0x1E69E73E0];
  v13[5] = MEMORY[0x1E69E7400];
  v13[6] = MEMORY[0x1E69E73E8];
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, 0xD00000000000002DLL, 0x80000001C18E53E0, isUniquelyReferenced_nonNull_native);
  *v0 = v12;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAASeRzSERzSe18EventParameterTypeACRpzSEAERQrlE17__registerCodableyyFZAA09BillboardD0V_Ttg5()
{
  if (one-time initialization token for codableActionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.codableActionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.codableActionTypeMap;
  if (*(static AnimationResource.codableActionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000021, 0x80000001C18E5470);
    if (v3)
    {
      v10 = *(*(v1 + 56) + 56 * v2);
      result = swift_endAccess();
      if (v10 == &type metadata for BillboardAction)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMd, &_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMR);
      v5 = String.init<A>(describing:)();
      v0 = v6;
      MEMORY[0x1C68F3410](v5);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v7 = lazy protocol witness table accessor for type BillboardAction and conformance BillboardAction();
  v8 = lazy protocol witness table accessor for type BillboardAction and conformance BillboardAction();
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v0;
  *v0 = 0x8000000000000000;
  v12[0] = &type metadata for BillboardAction;
  v12[1] = &protocol witness table for BillboardAction;
  v12[2] = v7;
  v12[3] = v8;
  v12[4] = MEMORY[0x1E69E73E0];
  v12[5] = MEMORY[0x1E69E7400];
  v12[6] = MEMORY[0x1E69E73E8];
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v12, 0xD000000000000021, 0x80000001C18E5470, isUniquelyReferenced_nonNull_native);
  *v0 = v11;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAASeRzSERzSe18EventParameterTypeACRpzSEAERQrlE17__registerCodableyyFZAA04SpinD0V_Ttg5()
{
  if (one-time initialization token for codableActionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.codableActionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.codableActionTypeMap;
  if (*(static AnimationResource.codableActionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001CLL, 0x80000001C18E54F0);
    if (v3)
    {
      v10 = *(*(v1 + 56) + 56 * v2);
      result = swift_endAccess();
      if (v10 == &type metadata for SpinAction)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMd, &_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMR);
      v5 = String.init<A>(describing:)();
      v0 = v6;
      MEMORY[0x1C68F3410](v5);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v7 = lazy protocol witness table accessor for type SpinAction and conformance SpinAction();
  v8 = lazy protocol witness table accessor for type SpinAction and conformance SpinAction();
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v0;
  *v0 = 0x8000000000000000;
  v12[0] = &type metadata for SpinAction;
  v12[1] = &protocol witness table for SpinAction;
  v12[2] = v7;
  v12[3] = v8;
  v12[4] = MEMORY[0x1E69E73E0];
  v12[5] = MEMORY[0x1E69E7400];
  v12[6] = MEMORY[0x1E69E73E8];
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v12, 0xD00000000000001CLL, 0x80000001C18E54F0, isUniquelyReferenced_nonNull_native);
  *v0 = v11;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAASeRzSERzSe18EventParameterTypeACRpzSEAERQrlE17__registerCodableyyFZAA05OrbitcD0V_Ttg5()
{
  if (one-time initialization token for codableActionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.codableActionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.codableActionTypeMap;
  if (*(static AnimationResource.codableActionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000023, 0x80000001C18E5560);
    if (v3)
    {
      v10 = *(*(v1 + 56) + 56 * v2);
      result = swift_endAccess();
      if (v10 == &type metadata for OrbitEntityAction)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMd, &_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMR);
      v5 = String.init<A>(describing:)();
      v0 = v6;
      MEMORY[0x1C68F3410](v5);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v7 = lazy protocol witness table accessor for type OrbitEntityAction and conformance OrbitEntityAction();
  v8 = lazy protocol witness table accessor for type OrbitEntityAction and conformance OrbitEntityAction();
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v0;
  *v0 = 0x8000000000000000;
  v12[0] = &type metadata for OrbitEntityAction;
  v12[1] = &protocol witness table for OrbitEntityAction;
  v12[2] = v7;
  v12[3] = v8;
  v12[4] = MEMORY[0x1E69E73E0];
  v12[5] = MEMORY[0x1E69E7400];
  v12[6] = MEMORY[0x1E69E73E8];
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v12, 0xD000000000000023, 0x80000001C18E5560, isUniquelyReferenced_nonNull_native);
  *v0 = v11;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAASeRzSERzSe18EventParameterTypeACRpzSEAERQrlE17__registerCodableyyFZAA07ImpulseD0V_Ttg5()
{
  if (one-time initialization token for codableActionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.codableActionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.codableActionTypeMap;
  if (*(static AnimationResource.codableActionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001FLL, 0x80000001C18E55F0);
    if (v3)
    {
      v10 = *(*(v1 + 56) + 56 * v2);
      result = swift_endAccess();
      if (v10 == &type metadata for ImpulseAction)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMd, &_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMR);
      v5 = String.init<A>(describing:)();
      v0 = v6;
      MEMORY[0x1C68F3410](v5);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v7 = lazy protocol witness table accessor for type ImpulseAction and conformance ImpulseAction();
  v8 = lazy protocol witness table accessor for type ImpulseAction and conformance ImpulseAction();
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v0;
  *v0 = 0x8000000000000000;
  v12[0] = &type metadata for ImpulseAction;
  v12[1] = &protocol witness table for ImpulseAction;
  v12[2] = v7;
  v12[3] = v8;
  v12[4] = MEMORY[0x1E69E73E0];
  v12[5] = MEMORY[0x1E69E7400];
  v12[6] = MEMORY[0x1E69E73E8];
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v12, 0xD00000000000001FLL, 0x80000001C18E55F0, isUniquelyReferenced_nonNull_native);
  *v0 = v11;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAASeRzSERzSe18EventParameterTypeACRpzSEAERQrlE17__registerCodableyyFZAA03Setc7EnabledD0V_Ttg5()
{
  if (one-time initialization token for codableActionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.codableActionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.codableActionTypeMap;
  if (*(static AnimationResource.codableActionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000028, 0x80000001C18E5660);
    if (v3)
    {
      v10 = *(*(v1 + 56) + 56 * v2);
      result = swift_endAccess();
      if (v10 == &type metadata for SetEntityEnabledAction)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMd, &_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMR);
      v5 = String.init<A>(describing:)();
      v0 = v6;
      MEMORY[0x1C68F3410](v5);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v7 = lazy protocol witness table accessor for type SetEntityEnabledAction and conformance SetEntityEnabledAction();
  v8 = lazy protocol witness table accessor for type SetEntityEnabledAction and conformance SetEntityEnabledAction();
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v0;
  *v0 = 0x8000000000000000;
  v12[0] = &type metadata for SetEntityEnabledAction;
  v12[1] = &protocol witness table for SetEntityEnabledAction;
  v12[2] = v7;
  v12[3] = v8;
  v12[4] = MEMORY[0x1E69E73E0];
  v12[5] = MEMORY[0x1E69E7400];
  v12[6] = MEMORY[0x1E69E73E8];
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v12, 0xD000000000000028, 0x80000001C18E5660, isUniquelyReferenced_nonNull_native);
  *v0 = v11;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAASeRzSERzSe18EventParameterTypeACRpzSEAERQrlE17__registerCodableyyFZAA012NotificationD0V_Ttg5()
{
  if (one-time initialization token for codableActionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.codableActionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.codableActionTypeMap;
  if (*(static AnimationResource.codableActionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000024, 0x80000001C18E56F0);
    if (v3)
    {
      v10 = *(*(v1 + 56) + 56 * v2);
      result = swift_endAccess();
      if (v10 == &type metadata for NotificationAction)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMd, &_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMR);
      v5 = String.init<A>(describing:)();
      v0 = v6;
      MEMORY[0x1C68F3410](v5);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v7 = lazy protocol witness table accessor for type NotificationAction and conformance NotificationAction();
  v8 = lazy protocol witness table accessor for type NotificationAction and conformance NotificationAction();
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v0;
  *v0 = 0x8000000000000000;
  v12[0] = &type metadata for NotificationAction;
  v12[1] = &protocol witness table for NotificationAction;
  v12[2] = v7;
  v12[3] = v8;
  v12[4] = MEMORY[0x1E69E73E0];
  v12[5] = MEMORY[0x1E69E7400];
  v12[6] = MEMORY[0x1E69E73E8];
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v12, 0xD000000000000024, 0x80000001C18E56F0, isUniquelyReferenced_nonNull_native);
  *v0 = v11;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAASeRzSERzSe18EventParameterTypeACRpzSEAERQrlE17__registerCodableyyFZAA013PlayAnimationD0V_Ttg5()
{
  if (one-time initialization token for codableActionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.codableActionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.codableActionTypeMap;
  if (*(static AnimationResource.codableActionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000025, 0x80000001C18E5780);
    if (v3)
    {
      v10 = *(*(v1 + 56) + 56 * v2);
      result = swift_endAccess();
      if (v10 == &type metadata for PlayAnimationAction)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMd, &_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMR);
      v5 = String.init<A>(describing:)();
      v0 = v6;
      MEMORY[0x1C68F3410](v5);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v7 = lazy protocol witness table accessor for type PlayAnimationAction and conformance PlayAnimationAction();
  v8 = lazy protocol witness table accessor for type PlayAnimationAction and conformance PlayAnimationAction();
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v0;
  *v0 = 0x8000000000000000;
  v12[0] = &type metadata for PlayAnimationAction;
  v12[1] = &protocol witness table for PlayAnimationAction;
  v12[2] = v7;
  v12[3] = v8;
  v12[4] = MEMORY[0x1E69E73E0];
  v12[5] = MEMORY[0x1E69E7400];
  v12[6] = MEMORY[0x1E69E73E8];
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v12, 0xD000000000000025, 0x80000001C18E5780, isUniquelyReferenced_nonNull_native);
  *v0 = v11;
  return swift_endAccess();
}

uint64_t specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(__int128 *))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    if (a4 <= 15)
    {
      if (a4 <= 3)
      {
        if (a4 != 1)
        {
          if (a4 != 2)
          {
            goto LABEL_148;
          }

          v149 = a5;
          v13 = *a2;
          v12 = a2[1];
          v14 = a2[4];
          v15 = a2[5];
          v5.i32[0] = *(a2 + 14);
          v144 = a2[8];
          v146 = a2[6];
          v141 = a2[9];
          v16 = a2[11];
          v6 = a2[12];
          v139 = *(a2 + 104);
          v148 = a2[10];
          if (REEntityGetSwiftObject())
          {
            type metadata accessor for Entity();
            v17 = swift_dynamicCastClassUnconditional();
            goto LABEL_8;
          }

          goto LABEL_75;
        }

        v149 = a5;
        v45 = *a2;
        v44 = a2[1];
        v46 = a2[4];
        v47 = a2[5];
        v48 = a2[8];
        v49 = a2[9];
        v140 = *(a2 + 80);
        v143 = a2[7];
        v145 = a2[11];
        v147 = a2[12];
        v148 = a2[6];
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v50 = swift_dynamicCastClassUnconditional();
          goto LABEL_32;
        }

        result = REEntityIsBeingDestroyed();
        if ((result & 1) == 0)
        {
          specialized static Entity.entityInfoType(_:)(v45);
          if (v66)
          {
            v51 = (*(v66 + 232))();
            v67 = *(v51 + 16);

            MEMORY[0x1C68F9740](v67, 0);
            *(v51 + 16) = v45;
            MEMORY[0x1C68F9740](v45, v51);

LABEL_46:
            type metadata accessor for AnimationPlaybackController();
            v68 = swift_allocObject();
            *(v68 + 40) = 0;
            swift_weakInit();
            *(v68 + 16) = v44;
            swift_weakAssign();

            *(v68 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v51 + 16));
            v69 = Hasher._finalize()();

            *(v68 + 24) = v69;
            v70 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(v46, 0, v47, v70, v71, &v167);

            if (!v48)
            {
              goto LABEL_116;
            }

            if (REBindPointBoundComponent())
            {
              Entity = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
                type metadata accessor for Entity();
                v73 = swift_dynamicCastClassUnconditional();
LABEL_50:
                v48 = v73;
                goto LABEL_116;
              }

              result = REEntityIsBeingDestroyed();
              if (result)
              {
LABEL_175:
                __break(1u);
                goto LABEL_176;
              }

              specialized static Entity.entityInfoType(_:)(Entity);
              if (!v117)
              {
                v73 = makeEntity(for:)(Entity);
                goto LABEL_50;
              }

              v48 = (*(v117 + 232))();
              v118 = *(v48 + 16);

              MEMORY[0x1C68F9740](v118, 0);
              *(v48 + 16) = Entity;
              MEMORY[0x1C68F9740](Entity, v48);
            }

            else
            {
              v48 = 0;
            }

LABEL_116:
            specialized ActionEventData.action<A>()(&v165);
            v119 = v165 | (v166 << 16);
            if ((v119 & 0xFF0000) != 0x20000)
            {
              WORD4(v150) = v165;
              BYTE10(v150) = BYTE2(v119) & 1;
              BYTE11(v150) = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA09EmphasizeD0VGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA09EmphasizeD0VGMR) & 1;
              *&v150 = v68;
              *&v151 = v48;
              BYTE8(v151) = v140;
              v152 = vcvtq_f64_f32(v49);
              *&v153 = v11;
              *(&v153 + 1) = v143;
              *&v154 = 0xBFF0000000000000;
              BYTE8(v154) = 0;
LABEL_139:
              v127 = v145;
              v123 = v147;
              goto LABEL_140;
            }

            goto LABEL_147;
          }

          v50 = makeEntity(for:)(v45);
LABEL_32:
          v51 = v50;
          goto LABEL_46;
        }

        __break(1u);
        goto LABEL_168;
      }

      if (a4 != 4)
      {
        if (a4 != 8)
        {
          goto LABEL_148;
        }

        v149 = a5;
        v33 = *a2;
        v32 = a2[1];
        v34 = a2[4];
        v35 = a2[5];
        v36 = a2[7];
        v37 = a2[8];
        v142 = *(a2 + 72);
        v145 = a2[10];
        v147 = a2[11];
        v148 = a2[6];
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v38 = swift_dynamicCastClassUnconditional();
        }

        else
        {
          result = REEntityIsBeingDestroyed();
          if (result)
          {
LABEL_173:
            __break(1u);
            goto LABEL_174;
          }

          specialized static Entity.entityInfoType(_:)(v33);
          if (v105)
          {
            v39 = (*(v105 + 232))();
            v106 = *(v39 + 16);

            MEMORY[0x1C68F9740](v106, 0);
            *(v39 + 16) = v33;
            MEMORY[0x1C68F9740](v33, v39);

LABEL_95:
            type metadata accessor for AnimationPlaybackController();
            v107 = swift_allocObject();
            *(v107 + 40) = 0;
            swift_weakInit();
            *(v107 + 16) = v32;
            swift_weakAssign();

            *(v107 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v39 + 16));
            v108 = Hasher._finalize()();

            *(v107 + 24) = v108;
            v109 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(v34, 0, v35, v109, v110, &v167);

            if (!v36)
            {
              goto LABEL_136;
            }

            if (REBindPointBoundComponent())
            {
              v111 = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
                type metadata accessor for Entity();
                v112 = swift_dynamicCastClassUnconditional();
LABEL_99:
                v36 = v112;
                goto LABEL_136;
              }

              result = REEntityIsBeingDestroyed();
              if (result)
              {
LABEL_179:
                __break(1u);
                goto LABEL_180;
              }

              specialized static Entity.entityInfoType(_:)(v111);
              if (!v131)
              {
                v112 = makeEntity(for:)(v111);
                goto LABEL_99;
              }

              v36 = (*(v131 + 232))();
              v132 = *(v36 + 16);

              MEMORY[0x1C68F9740](v132, 0);
              *(v36 + 16) = v111;
              MEMORY[0x1C68F9740](v111, v36);
            }

            else
            {
              v36 = 0;
            }

LABEL_136:
            specialized ActionEventData.action<A>()(&v165);
            v133 = v165 | (v166 << 16);
            if ((v133 & 0xFF0000) != 0x20000)
            {
              WORD4(v150) = v165;
              BYTE10(v150) = BYTE2(v133) & 1;
              BYTE11(v150) = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA09EmphasizeD0VGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA09EmphasizeD0VGMR) & 1;
              *&v150 = v107;
              *&v151 = v36;
              BYTE8(v151) = v142;
              v152 = vcvtq_f64_f32(v37);
              *&v154 = 0;
              v153 = v11;
              BYTE8(v154) = 1;
              goto LABEL_139;
            }

LABEL_147:

LABEL_148:

            return 0;
          }

          v38 = makeEntity(for:)(v33);
        }

        v39 = v38;
        goto LABEL_95;
      }

      v149 = a5;
      v58 = *a2;
      v52 = a2[1];
      v54 = a2[4];
      v59 = a2[5];
      v29 = a2[8];
      v146 = a2[7];
      v5 = a2[9];
      LOBYTE(v144) = *(a2 + 80);
      v148 = a2[6];
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v60 = swift_dynamicCastClassUnconditional();
        goto LABEL_38;
      }

LABEL_59:
      result = REEntityIsBeingDestroyed();
      if (result)
      {
LABEL_169:
        __break(1u);
        goto LABEL_170;
      }

      specialized static Entity.entityInfoType(_:)(v58);
      if (v79)
      {
        v61 = (*(v79 + 232))();
        v80 = *(v61 + 16);

        MEMORY[0x1C68F9740](v80, 0);
        *(v61 + 16) = v58;
        MEMORY[0x1C68F9740](v58, v61);

LABEL_62:
        type metadata accessor for AnimationPlaybackController();
        v81 = swift_allocObject();
        *(v81 + 40) = 0;
        swift_weakInit();
        *(v81 + 16) = v52;
        swift_weakAssign();

        *(v81 + 32) = REEntityGetLocalId();
        Hasher.init(_seed:)();
        MEMORY[0x1C68F4C10](*(v61 + 16));
        v82 = Hasher._finalize()();

        *(v81 + 24) = v82;
        v83 = String.init(cString:)();
        specialized ActionEventData.init(eventID:coreData:typeName:)(v54, 0, v59, v83, v84, &v167);

        if (!v29)
        {
          goto LABEL_121;
        }

        if (REBindPointBoundComponent())
        {
          v85 = REComponentGetEntity();
          if (REEntityGetSwiftObject())
          {
            type metadata accessor for Entity();
            v86 = swift_dynamicCastClassUnconditional();
LABEL_66:
            v29 = v86;
            goto LABEL_121;
          }

          result = REEntityIsBeingDestroyed();
          if (result)
          {
LABEL_176:
            __break(1u);
LABEL_177:
            __break(1u);
            goto LABEL_178;
          }

          specialized static Entity.entityInfoType(_:)(v85);
          if (!v120)
          {
            v86 = makeEntity(for:)(v85);
            goto LABEL_66;
          }

          v29 = (*(v120 + 232))();
          v121 = *(v29 + 16);

          MEMORY[0x1C68F9740](v121, 0);
          *(v29 + 16) = v85;
          MEMORY[0x1C68F9740](v85, v29);
        }

        else
        {
          v29 = 0;
        }

LABEL_121:
        specialized ActionEventData.action<A>()(&v165);
        v122 = v165 | (v166 << 16);
        if ((v122 & 0xFF0000) != 0x20000)
        {
          WORD4(v150) = v165;
          BYTE10(v150) = BYTE2(v122) & 1;
          BYTE11(v150) = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA09EmphasizeD0VGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA09EmphasizeD0VGMR) & 1;
          *&v150 = v81;
          *&v151 = v29;
          BYTE8(v151) = v144;
          v152 = vcvtq_f64_f32(v5);
          *&v153 = v11;
          *(&v153 + 1) = v146;
          v123 = 0xBFF0000000000000;
          *&v154 = 0xBFF0000000000000;
          BYTE8(v154) = 0;
          *&v155 = 0xBFF0000000000000;
LABEL_141:
          BYTE8(v155) = 0;
          *&v156 = v123;
          BYTE8(v156) = 0;
          v161 = v171;
          v160 = v170;
          v159 = v169;
          v157 = v167;
          v158 = v168;
          v162 = v148;
LABEL_151:
          v149(&v150);

          v163[10] = v160;
          v163[11] = v161;
          v164 = v162;
          v163[6] = v156;
          v163[7] = v157;
          v163[8] = v158;
          v163[9] = v159;
          v163[2] = v152;
          v163[3] = v153;
          v163[4] = v154;
          v163[5] = v155;
          v163[0] = v150;
          v163[1] = v151;
          outlined destroy of BodyTrackingComponent?(v163, &_s17RealityFoundation11ActionEventVyAA09EmphasizeC0VGMd, &_s17RealityFoundation11ActionEventVyAA09EmphasizeC0VGMR);
          return 0;
        }

        goto LABEL_147;
      }

      v60 = makeEntity(for:)(v58);
LABEL_38:
      v61 = v60;
      goto LABEL_62;
    }

    if (a4 <= 63)
    {
      if (a4 != 16)
      {
        if (a4 != 32)
        {
          goto LABEL_148;
        }

        v149 = a5;
        v26 = *a2;
        v25 = a2[1];
        v27 = a2[5];
        v28 = a2[6];
        v29 = a2[7];
        v148 = a2[4];
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v30 = swift_dynamicCastClassUnconditional();
        }

        else
        {
          result = REEntityIsBeingDestroyed();
          if (result)
          {
LABEL_172:
            __break(1u);
            goto LABEL_173;
          }

          specialized static Entity.entityInfoType(_:)(v26);
          if (v99)
          {
            v31 = (*(v99 + 232))();
            v100 = *(v31 + 16);

            MEMORY[0x1C68F9740](v100, 0);
            *(v31 + 16) = v26;
            MEMORY[0x1C68F9740](v26, v31);

LABEL_86:
            type metadata accessor for AnimationPlaybackController();
            v58 = swift_allocObject();
            *(v58 + 40) = 0;
            swift_weakInit();
            *(v58 + 16) = v25;
            swift_weakAssign();

            *(v58 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v31 + 16));
            v101 = Hasher._finalize()();

            *(v58 + 24) = v101;
            v102 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v27, v102, v103, &v167);

            if (v29)
            {
              if (REBindPointBoundComponent())
              {
                v59 = REComponentGetEntity();
                if (REEntityGetSwiftObject())
                {
                  goto LABEL_89;
                }

                result = REEntityIsBeingDestroyed();
                if (result)
                {
LABEL_178:
                  __break(1u);
                  goto LABEL_179;
                }

                goto LABEL_129;
              }

              goto LABEL_91;
            }

            goto LABEL_131;
          }

          v30 = makeEntity(for:)(v26);
        }

        v31 = v30;
        goto LABEL_86;
      }

      v149 = a5;
      v53 = *a2;
      v52 = a2[1];
      v54 = a2[3];
      v55 = a2[5];
      v28 = a2[6];
      v29 = a2[7];
      v148 = a2[4];
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v56 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        result = REEntityIsBeingDestroyed();
        if (result)
        {
LABEL_168:
          __break(1u);
          goto LABEL_169;
        }

        specialized static Entity.entityInfoType(_:)(v53);
        if (v74)
        {
          v57 = (*(v74 + 232))();
          v75 = *(v57 + 16);

          MEMORY[0x1C68F9740](v75, 0);
          *(v57 + 16) = v53;
          MEMORY[0x1C68F9740](v53, v57);

LABEL_54:
          type metadata accessor for AnimationPlaybackController();
          v58 = swift_allocObject();
          *(v58 + 40) = 0;
          swift_weakInit();
          *(v58 + 16) = v52;
          swift_weakAssign();

          *(v58 + 32) = REEntityGetLocalId();
          Hasher.init(_seed:)();
          MEMORY[0x1C68F4C10](*(v57 + 16));
          v76 = Hasher._finalize()();

          *(v58 + 24) = v76;
          v77 = String.init(cString:)();
          specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v55, v77, v78, &v167);

          if (v29)
          {
            if (REBindPointBoundComponent())
            {
              v59 = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
LABEL_89:
                type metadata accessor for Entity();
                v104 = swift_dynamicCastClassUnconditional();
LABEL_90:
                v29 = v104;
                goto LABEL_131;
              }

              if (REEntityIsBeingDestroyed())
              {
                __break(1u);
                goto LABEL_59;
              }

LABEL_129:
              specialized static Entity.entityInfoType(_:)(v59);
              if (v128)
              {
                v29 = (*(v128 + 232))();
                v129 = *(v29 + 16);

                MEMORY[0x1C68F9740](v129, 0);
                *(v29 + 16) = v59;
                MEMORY[0x1C68F9740](v59, v29);

                goto LABEL_131;
              }

              v104 = makeEntity(for:)(v59);
              goto LABEL_90;
            }

LABEL_91:
            v29 = 0;
          }

LABEL_131:
          specialized ActionEventData.action<A>()(&v165);
          v130 = v165 | (v166 << 16);
          if ((v130 & 0xFF0000) == 0x20000)
          {
            goto LABEL_147;
          }

          WORD4(v150) = v165;
          BYTE10(v150) = BYTE2(v130) & 1;
          BYTE11(v150) = 1;
          *&v150 = v58;
          *&v151 = v29;
          BYTE8(v151) = 0;
          v152 = 0uLL;
          *&v154 = 0;
          v153 = v11;
          BYTE8(v154) = 1;
          *&v155 = v148;
          BYTE8(v155) = 0;
          goto LABEL_150;
        }

        v56 = makeEntity(for:)(v53);
      }

      v57 = v56;
      goto LABEL_54;
    }

    if (a4 != 64)
    {
      if (a4 != 128)
      {
        goto LABEL_148;
      }

      v149 = a5;
      v41 = *a2;
      v40 = a2[1];
      v13 = a2[3];
      v28 = a2[4];
      v14 = a2[5];
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v42 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        result = REEntityIsBeingDestroyed();
        if (result)
        {
LABEL_174:
          __break(1u);
          goto LABEL_175;
        }

        specialized static Entity.entityInfoType(_:)(v41);
        if (v113)
        {
          v43 = (*(v113 + 232))();
          v114 = *(v43 + 16);

          MEMORY[0x1C68F9740](v114, 0);
          *(v43 + 16) = v41;
          MEMORY[0x1C68F9740](v41, v43);

LABEL_103:
          type metadata accessor for AnimationPlaybackController();
          v15 = swift_allocObject();
          *(v15 + 40) = 0;
          swift_weakInit();
          *(v15 + 16) = v40;
          swift_weakAssign();

          *(v15 + 32) = REEntityGetLocalId();
          Hasher.init(_seed:)();
          MEMORY[0x1C68F4C10](*(v43 + 16));
          v115 = Hasher._finalize()();

          *(v15 + 24) = v115;
          if (v14)
          {
            if (REBindPointBoundComponent())
            {
              v12 = v28;
              v90 = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
                goto LABEL_106;
              }

              result = REEntityIsBeingDestroyed();
              if (result)
              {
LABEL_180:
                __break(1u);
                return result;
              }

              goto LABEL_143;
            }

LABEL_108:
            v14 = 0;
            goto LABEL_146;
          }

          goto LABEL_146;
        }

        v42 = makeEntity(for:)(v41);
      }

      v43 = v42;
      goto LABEL_103;
    }

    v149 = a5;
    v63 = *a2;
    v62 = a2[1];
    v16 = a2[2];
    v13 = a2[3];
    v28 = a2[4];
    v14 = a2[5];
    if (REEntityGetSwiftObject())
    {
      type metadata accessor for Entity();
      v64 = swift_dynamicCastClassUnconditional();
    }

    else
    {
      result = REEntityIsBeingDestroyed();
      if (result)
      {
LABEL_170:
        __break(1u);
LABEL_171:
        __break(1u);
        goto LABEL_172;
      }

      specialized static Entity.entityInfoType(_:)(v63);
      if (v87)
      {
        v65 = (*(v87 + 232))();
        v88 = *(v65 + 16);

        MEMORY[0x1C68F9740](v88, 0);
        *(v65 + 16) = v63;
        MEMORY[0x1C68F9740](v63, v65);

LABEL_70:
        type metadata accessor for AnimationPlaybackController();
        v15 = swift_allocObject();
        *(v15 + 40) = 0;
        swift_weakInit();
        *(v15 + 16) = v62;
        swift_weakAssign();

        *(v15 + 32) = REEntityGetLocalId();
        Hasher.init(_seed:)();
        MEMORY[0x1C68F4C10](*(v65 + 16));
        v89 = Hasher._finalize()();

        *(v15 + 24) = v89;
        if (v14)
        {
          if (REBindPointBoundComponent())
          {
            v12 = v28;
            v90 = REComponentGetEntity();
            if (REEntityGetSwiftObject())
            {
LABEL_106:
              type metadata accessor for Entity();
              v116 = swift_dynamicCastClassUnconditional();
              goto LABEL_107;
            }

            if (REEntityIsBeingDestroyed())
            {
              __break(1u);
LABEL_75:
              result = REEntityIsBeingDestroyed();
              if ((result & 1) == 0)
              {
                specialized static Entity.entityInfoType(_:)(v13);
                if (v91)
                {
                  v18 = (*(v91 + 232))();
                  v92 = *(v18 + 16);

                  MEMORY[0x1C68F9740](v92, 0);
                  *(v18 + 16) = v13;
                  MEMORY[0x1C68F9740](v13, v18);

                  goto LABEL_78;
                }

                v17 = makeEntity(for:)(v13);
LABEL_8:
                v18 = v17;
LABEL_78:
                type metadata accessor for AnimationPlaybackController();
                v93 = swift_allocObject();
                *(v93 + 40) = 0;
                swift_weakInit();
                *(v93 + 16) = v12;
                swift_weakAssign();

                *(v93 + 32) = REEntityGetLocalId();
                Hasher.init(_seed:)();
                MEMORY[0x1C68F4C10](*(v18 + 16));
                v94 = Hasher._finalize()();

                *(v93 + 24) = v94;
                v95 = String.init(cString:)();
                specialized ActionEventData.init(eventID:coreData:typeName:)(v14, 0, v15, v95, v96, &v167);

                if (!v16)
                {
                  goto LABEL_126;
                }

                if (!REBindPointBoundComponent())
                {
                  v16 = 0;
                  goto LABEL_126;
                }

                v97 = REComponentGetEntity();
                if (REEntityGetSwiftObject())
                {
                  type metadata accessor for Entity();
                  v98 = swift_dynamicCastClassUnconditional();
LABEL_82:
                  v16 = v98;
                  goto LABEL_126;
                }

                result = REEntityIsBeingDestroyed();
                if ((result & 1) == 0)
                {
                  specialized static Entity.entityInfoType(_:)(v97);
                  if (!v124)
                  {
                    v98 = makeEntity(for:)(v97);
                    goto LABEL_82;
                  }

                  v16 = (*(v124 + 232))();
                  v125 = *(v16 + 16);

                  MEMORY[0x1C68F9740](v125, 0);
                  *(v16 + 16) = v97;
                  MEMORY[0x1C68F9740](v97, v16);

LABEL_126:
                  specialized ActionEventData.action<A>()(&v165);
                  v126 = v165 | (v166 << 16);
                  if ((v126 & 0xFF0000) != 0x20000)
                  {
                    WORD4(v150) = v165;
                    BYTE10(v150) = BYTE2(v126) & 1;
                    BYTE11(v150) = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA09EmphasizeD0VGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA09EmphasizeD0VGMR) & 1;
                    *&v150 = v93;
                    *&v151 = v16;
                    BYTE8(v151) = v139;
                    v152 = vcvtq_f64_f32(v6);
                    *&v153 = v11;
                    *(&v153 + 1) = v141;
                    *&v154 = v5.f32[0];
                    BYTE8(v154) = 0;
                    v123 = v144;
                    v127 = v146;
LABEL_140:
                    *&v155 = v127;
                    goto LABEL_141;
                  }

                  goto LABEL_147;
                }

                goto LABEL_177;
              }

              goto LABEL_171;
            }

LABEL_143:
            specialized static Entity.entityInfoType(_:)(v90);
            if (v134)
            {
              v14 = (*(v134 + 232))();
              v135 = *(v14 + 16);

              MEMORY[0x1C68F9740](v135, 0);
              *(v14 + 16) = v90;
              MEMORY[0x1C68F9740](v90, v14);

              goto LABEL_145;
            }

            v116 = makeEntity(for:)(v90);
LABEL_107:
            v14 = v116;
LABEL_145:
            v28 = v12;
            goto LABEL_146;
          }

          goto LABEL_108;
        }

LABEL_146:
        v136 = String.init(cString:)();
        specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v13, v136, v137, &v167);

        specialized ActionEventData.action<A>()(&v165);
        v138 = v165 | (v166 << 16);
        if ((v138 & 0xFF0000) == 0x20000)
        {
          goto LABEL_147;
        }

        WORD4(v150) = v165;
        BYTE10(v150) = BYTE2(v138) & 1;
        BYTE11(v150) = 1;
        *&v150 = v15;
        *&v151 = v14;
        BYTE8(v151) = 0;
        v152 = 0uLL;
        *&v154 = 0;
        v153 = v11;
        BYTE8(v154) = 1;
        *&v155 = 0;
        BYTE8(v155) = 1;
LABEL_150:
        *&v156 = 0;
        BYTE8(v156) = 1;
        v159 = v169;
        v160 = v170;
        v161 = v171;
        v158 = v168;
        v157 = v167;
        v162 = v28;
        goto LABEL_151;
      }

      v64 = makeEntity(for:)(v63);
    }

    v65 = v64;
    goto LABEL_70;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static AnimationLogger.logger);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *&v163[0] = v23;
    *v22 = 136315138;
    *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002FLL, 0x80000001C18E4580, v163);
    _os_log_impl(&dword_1C1358000, v20, v21, "%s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x1C6902A30](v23, -1, -1);
    MEMORY[0x1C6902A30](v22, -1, -1);
  }

  return 1;
}

uint64_t specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = &v171;
    if (a4 <= 15)
    {
      if (a4 <= 3)
      {
        if (a4 != 1)
        {
          if (a4 == 2)
          {
            v12 = Strong;
            v155 = a5;
            v14 = *a2;
            v13 = a2[1];
            v15 = a2[4];
            v16 = a2[5];
            v5.i32[0] = *(a2 + 14);
            v145 = a2[9];
            v148 = a2[8];
            v11 = a2[10];
            v17 = a2[11];
            v6 = a2[12];
            v143 = *(a2 + 104);
            v151 = a2[6];
            if (REEntityGetSwiftObject())
            {
              type metadata accessor for Entity();
              v18 = swift_dynamicCastClassUnconditional();
              goto LABEL_8;
            }

            goto LABEL_75;
          }

LABEL_42:

          return 0;
        }

        v48 = Strong;
        v155 = a5;
        v50 = *a2;
        v49 = a2[1];
        v51 = a2[4];
        v53 = a2[5];
        v52 = a2[6];
        v54 = a2[8];
        v55 = a2[9];
        v144 = *(a2 + 80);
        v147 = a2[7];
        v150 = a2[11];
        v153 = a2[12];
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v56 = swift_dynamicCastClassUnconditional();
          goto LABEL_32;
        }

        result = REEntityIsBeingDestroyed();
        if ((result & 1) == 0)
        {
          specialized static Entity.entityInfoType(_:)(v50);
          if (v72)
          {
            v57 = (*(v72 + 232))();
            v73 = *(v57 + 16);

            MEMORY[0x1C68F9740](v73, 0);
            *(v57 + 16) = v50;
            MEMORY[0x1C68F9740](v50, v57);

LABEL_46:
            type metadata accessor for AnimationPlaybackController();
            v74 = swift_allocObject();
            *(v74 + 40) = 0;
            swift_weakInit();
            *(v74 + 16) = v49;
            swift_weakAssign();

            *(v74 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v57 + 16));
            v75 = Hasher._finalize()();

            *(v74 + 24) = v75;
            v76 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(v51, 0, v53, v76, v77, &v192);

            if (!v54)
            {
              goto LABEL_116;
            }

            if (REBindPointBoundComponent())
            {
              Entity = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
                type metadata accessor for Entity();
                v79 = swift_dynamicCastClassUnconditional();
LABEL_50:
                v54 = v79;
                goto LABEL_116;
              }

              result = REEntityIsBeingDestroyed();
              if (result)
              {
LABEL_174:
                __break(1u);
                goto LABEL_175;
              }

              specialized static Entity.entityInfoType(_:)(Entity);
              if (!v123)
              {
                v79 = makeEntity(for:)(Entity);
                goto LABEL_50;
              }

              v54 = (*(v123 + 232))();
              v124 = *(v54 + 16);

              MEMORY[0x1C68F9740](v124, 0);
              *(v54 + 16) = Entity;
              MEMORY[0x1C68F9740](Entity, v54);
            }

            else
            {
              v54 = 0;
            }

LABEL_116:
            specialized ActionEventData.action<A>()(&v187);
            if (*(&v189 + 1))
            {
              v141 = v187;
              v142 = v52;
              v125 = *(&v187 + 1);
              v156[24] = v188 & 1;
              v157 = v189;
              *&v158 = v190;
              BYTE8(v158) = v191 & 1;
              BYTE9(v158) = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA09PlayAudioD0VGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA09PlayAudioD0VGMR) & 1;
              *&v156[8] = v141;
              *&v156[16] = v125;
              *v156 = v74;
              *&v159 = v54;
              BYTE8(v159) = v144;
              v160 = vcvtq_f64_f32(v55);
              *&v161 = v48;
              *(&v161 + 1) = v147;
              *&v162 = 0xBFF0000000000000;
              BYTE8(v162) = 0;
              v127 = v150;
              v126 = v153;
LABEL_129:
              *&v163 = v127;
              BYTE8(v163) = 0;
              *&v164 = v126;
              BYTE8(v164) = 0;
              v167 = v194;
              v168 = v195;
              v169 = v196;
              v166 = v193;
              v165 = v192;
              v130 = v142;
              goto LABEL_140;
            }

LABEL_150:

            outlined consume of SetEntityPropertyAction<Bool>?(v187, *(&v187 + 1), v188, v189, 0);
            return 0;
          }

          v56 = makeEntity(for:)(v50);
LABEL_32:
          v57 = v56;
          goto LABEL_46;
        }

        __break(1u);
        goto LABEL_167;
      }

      if (a4 != 4)
      {
        if (a4 != 8)
        {
          goto LABEL_42;
        }

        v34 = Strong;
        v155 = a5;
        v36 = *a2;
        v35 = a2[1];
        v37 = a2[4];
        v39 = a2[5];
        v38 = a2[6];
        v40 = a2[7];
        v41 = a2[8];
        v146 = *(a2 + 72);
        v149 = a2[10];
        v152 = a2[11];
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v42 = swift_dynamicCastClassUnconditional();
        }

        else
        {
          result = REEntityIsBeingDestroyed();
          if (result)
          {
LABEL_172:
            __break(1u);
            goto LABEL_173;
          }

          specialized static Entity.entityInfoType(_:)(v36);
          if (v111)
          {
            v43 = (*(v111 + 232))();
            v112 = *(v43 + 16);

            MEMORY[0x1C68F9740](v112, 0);
            *(v43 + 16) = v36;
            MEMORY[0x1C68F9740](v36, v43);

LABEL_95:
            type metadata accessor for AnimationPlaybackController();
            v113 = swift_allocObject();
            *(v113 + 40) = 0;
            swift_weakInit();
            *(v113 + 16) = v35;
            swift_weakAssign();

            *(v113 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v43 + 16));
            v114 = Hasher._finalize()();

            *(v113 + 24) = v114;
            v115 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(v37, 0, v39, v115, v116, &v192);

            if (!v40)
            {
              goto LABEL_138;
            }

            if (REBindPointBoundComponent())
            {
              v117 = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
                type metadata accessor for Entity();
                v118 = swift_dynamicCastClassUnconditional();
LABEL_99:
                v40 = v118;
                goto LABEL_138;
              }

              result = REEntityIsBeingDestroyed();
              if (result)
              {
LABEL_178:
                __break(1u);
                goto LABEL_179;
              }

              specialized static Entity.entityInfoType(_:)(v117);
              if (!v135)
              {
                v118 = makeEntity(for:)(v117);
                goto LABEL_99;
              }

              v40 = (*(v135 + 232))();
              v136 = *(v40 + 16);

              MEMORY[0x1C68F9740](v136, 0);
              *(v40 + 16) = v117;
              MEMORY[0x1C68F9740](v117, v40);
            }

            else
            {
              v40 = 0;
            }

LABEL_138:
            specialized ActionEventData.action<A>()(&v187);
            if (*(&v189 + 1))
            {
              *&v156[8] = v187;
              v156[24] = v188 & 1;
              v157 = v189;
              *&v158 = v190;
              BYTE8(v158) = v191 & 1;
              BYTE9(v158) = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA09PlayAudioD0VGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA09PlayAudioD0VGMR) & 1;
              *v156 = v113;
              *&v159 = v40;
              BYTE8(v159) = v146;
              v160 = vcvtq_f64_f32(v41);
              *&v162 = 0;
              v161 = v34;
              BYTE8(v162) = 1;
              *&v163 = v149;
              BYTE8(v163) = 0;
              *&v164 = v152;
              BYTE8(v164) = 0;
              v167 = v194;
              v168 = v195;
              v169 = v196;
              v166 = v193;
              v165 = v192;
              v130 = v38;
              goto LABEL_140;
            }

            goto LABEL_150;
          }

          v42 = makeEntity(for:)(v36);
        }

        v43 = v42;
        goto LABEL_95;
      }

      v26 = Strong;
      v155 = a5;
      v64 = *a2;
      v58 = a2[1];
      v60 = a2[4];
      v65 = a2[5];
      v11 = a2[6];
      v31 = a2[8];
      v5 = a2[9];
      LOBYTE(v148) = *(a2 + 80);
      v151 = a2[7];
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v66 = swift_dynamicCastClassUnconditional();
        goto LABEL_38;
      }

LABEL_59:
      result = REEntityIsBeingDestroyed();
      if (result)
      {
LABEL_168:
        __break(1u);
        goto LABEL_169;
      }

      specialized static Entity.entityInfoType(_:)(v64);
      if (v85)
      {
        v67 = (*(v85 + 232))();
        v86 = *(v67 + 16);

        MEMORY[0x1C68F9740](v86, 0);
        *(v67 + 16) = v64;
        MEMORY[0x1C68F9740](v64, v67);

LABEL_62:
        type metadata accessor for AnimationPlaybackController();
        v87 = swift_allocObject();
        *(v87 + 40) = 0;
        swift_weakInit();
        *(v87 + 16) = v58;
        swift_weakAssign();

        *(v87 + 32) = REEntityGetLocalId();
        Hasher.init(_seed:)();
        MEMORY[0x1C68F4C10](*(v67 + 16));
        v88 = Hasher._finalize()();

        *(v87 + 24) = v88;
        v89 = String.init(cString:)();
        specialized ActionEventData.init(eventID:coreData:typeName:)(v60, 0, v65, v89, v90, &v192);

        if (!v31)
        {
          goto LABEL_122;
        }

        if (REBindPointBoundComponent())
        {
          v91 = REComponentGetEntity();
          if (REEntityGetSwiftObject())
          {
            type metadata accessor for Entity();
            v92 = swift_dynamicCastClassUnconditional();
LABEL_66:
            v31 = v92;
            goto LABEL_122;
          }

          result = REEntityIsBeingDestroyed();
          if (result)
          {
LABEL_175:
            __break(1u);
LABEL_176:
            __break(1u);
            goto LABEL_177;
          }

          specialized static Entity.entityInfoType(_:)(v91);
          if (!v128)
          {
            v92 = makeEntity(for:)(v91);
            goto LABEL_66;
          }

          v31 = (*(v128 + 232))();
          v129 = *(v31 + 16);

          MEMORY[0x1C68F9740](v129, 0);
          *(v31 + 16) = v91;
          MEMORY[0x1C68F9740](v91, v31);
        }

        else
        {
          v31 = 0;
        }

LABEL_122:
        specialized ActionEventData.action<A>()(&v187);
        if (*(&v189 + 1))
        {
          *&v156[8] = v187;
          v156[24] = v188 & 1;
          v157 = v189;
          *&v158 = v190;
          BYTE8(v158) = v191 & 1;
          BYTE9(v158) = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA09PlayAudioD0VGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA09PlayAudioD0VGMR) & 1;
          *v156 = v87;
          *&v159 = v31;
          BYTE8(v159) = v148;
          v160 = vcvtq_f64_f32(v5);
          *&v161 = v26;
          *(&v161 + 1) = v151;
          *&v162 = 0xBFF0000000000000;
          BYTE8(v162) = 0;
          *&v163 = 0xBFF0000000000000;
          BYTE8(v163) = 0;
          *&v164 = 0xBFF0000000000000;
          BYTE8(v164) = 0;
          v167 = v194;
          v168 = v195;
          v169 = v196;
          v166 = v193;
          v165 = v192;
          v130 = v11;
LABEL_140:
          v170 = v130;
          (v155)(v156);

          v183 = v167;
          v184 = v168;
          v185 = v169;
          v186 = v170;
          v179 = v163;
          v180 = v164;
          v181 = v165;
          v182 = v166;
          v175 = v159;
          v176 = v160;
          v177 = v161;
          v178 = v162;
          v171 = *v156;
          v172 = *&v156[16];
          v173 = v157;
          v174 = v158;
LABEL_149:
          outlined destroy of BodyTrackingComponent?(&v171, &_s17RealityFoundation11ActionEventVyAA09PlayAudioC0VGMd, &_s17RealityFoundation11ActionEventVyAA09PlayAudioC0VGMR);
          return 0;
        }

        goto LABEL_150;
      }

      v66 = makeEntity(for:)(v64);
LABEL_38:
      v67 = v66;
      goto LABEL_62;
    }

    if (a4 <= 63)
    {
      if (a4 != 16)
      {
        if (a4 != 32)
        {
          goto LABEL_42;
        }

        v26 = Strong;
        v155 = a5;
        v28 = *a2;
        v27 = a2[1];
        v29 = a2[5];
        v30 = a2[6];
        v31 = a2[7];
        v154 = a2[4];
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v32 = swift_dynamicCastClassUnconditional();
        }

        else
        {
          result = REEntityIsBeingDestroyed();
          if (result)
          {
LABEL_171:
            __break(1u);
            goto LABEL_172;
          }

          specialized static Entity.entityInfoType(_:)(v28);
          if (v105)
          {
            v33 = (*(v105 + 232))();
            v106 = *(v33 + 16);

            MEMORY[0x1C68F9740](v106, 0);
            *(v33 + 16) = v28;
            MEMORY[0x1C68F9740](v28, v33);

LABEL_86:
            type metadata accessor for AnimationPlaybackController();
            v64 = swift_allocObject();
            *(v64 + 40) = 0;
            swift_weakInit();
            *(v64 + 16) = v27;
            swift_weakAssign();

            *(v64 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v33 + 16));
            v107 = Hasher._finalize()();

            *(v64 + 24) = v107;
            v108 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v29, v108, v109, &v192);

            if (v31)
            {
              if (REBindPointBoundComponent())
              {
                v65 = REComponentGetEntity();
                if (REEntityGetSwiftObject())
                {
                  goto LABEL_89;
                }

                result = REEntityIsBeingDestroyed();
                if (result)
                {
LABEL_177:
                  __break(1u);
                  goto LABEL_178;
                }

                goto LABEL_131;
              }

              goto LABEL_91;
            }

            goto LABEL_133;
          }

          v32 = makeEntity(for:)(v28);
        }

        v33 = v32;
        goto LABEL_86;
      }

      v26 = Strong;
      v155 = a5;
      v59 = *a2;
      v58 = a2[1];
      v60 = a2[3];
      v61 = a2[5];
      v30 = a2[6];
      v31 = a2[7];
      v154 = a2[4];
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v62 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        result = REEntityIsBeingDestroyed();
        if (result)
        {
LABEL_167:
          __break(1u);
          goto LABEL_168;
        }

        specialized static Entity.entityInfoType(_:)(v59);
        if (v80)
        {
          v63 = (*(v80 + 232))();
          v81 = *(v63 + 16);

          MEMORY[0x1C68F9740](v81, 0);
          *(v63 + 16) = v59;
          MEMORY[0x1C68F9740](v59, v63);

LABEL_54:
          type metadata accessor for AnimationPlaybackController();
          v64 = swift_allocObject();
          *(v64 + 40) = 0;
          swift_weakInit();
          *(v64 + 16) = v58;
          swift_weakAssign();

          *(v64 + 32) = REEntityGetLocalId();
          Hasher.init(_seed:)();
          MEMORY[0x1C68F4C10](*(v63 + 16));
          v82 = Hasher._finalize()();

          *(v64 + 24) = v82;
          v83 = String.init(cString:)();
          specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v61, v83, v84, &v192);

          if (v31)
          {
            if (REBindPointBoundComponent())
            {
              v65 = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
LABEL_89:
                type metadata accessor for Entity();
                v110 = swift_dynamicCastClassUnconditional();
LABEL_90:
                v31 = v110;
                goto LABEL_133;
              }

              if (REEntityIsBeingDestroyed())
              {
                __break(1u);
                goto LABEL_59;
              }

LABEL_131:
              specialized static Entity.entityInfoType(_:)(v65);
              if (v133)
              {
                v31 = (*(v133 + 232))();
                v134 = *(v31 + 16);

                MEMORY[0x1C68F9740](v134, 0);
                *(v31 + 16) = v65;
                MEMORY[0x1C68F9740](v65, v31);

                goto LABEL_133;
              }

              v110 = makeEntity(for:)(v65);
              goto LABEL_90;
            }

LABEL_91:
            v31 = 0;
          }

LABEL_133:
          specialized ActionEventData.action<A>()(&v187);
          if (!*(&v189 + 1))
          {
            goto LABEL_150;
          }

          *&v156[8] = v187;
          v156[24] = v188 & 1;
          v157 = v189;
          *&v158 = v190;
          BYTE8(v158) = v191 & 1;
          BYTE9(v158) = 1;
          *v156 = v64;
          *&v159 = v31;
          BYTE8(v159) = 0;
          v160 = 0uLL;
          *&v162 = 0;
          v161 = v26;
          BYTE8(v162) = 1;
          *&v163 = v154;
          BYTE8(v163) = 0;
          *&v164 = 0;
          BYTE8(v164) = 1;
          v167 = v194;
          v168 = v195;
          v169 = v196;
          v166 = v193;
          v165 = v192;
          v170 = v30;
          (v155)(v156);
          goto LABEL_148;
        }

        v62 = makeEntity(for:)(v59);
      }

      v63 = v62;
      goto LABEL_54;
    }

    if (a4 != 64)
    {
      if (a4 != 128)
      {
        goto LABEL_42;
      }

      v12 = Strong;
      v45 = *a2;
      v44 = a2[1];
      v14 = a2[3];
      v15 = a2[5];
      v155 = a2[4];
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v46 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        result = REEntityIsBeingDestroyed();
        if (result)
        {
LABEL_173:
          __break(1u);
          goto LABEL_174;
        }

        specialized static Entity.entityInfoType(_:)(v45);
        if (v119)
        {
          v47 = (*(v119 + 232))();
          v120 = *(v47 + 16);

          MEMORY[0x1C68F9740](v120, 0);
          *(v47 + 16) = v45;
          MEMORY[0x1C68F9740](v45, v47);

LABEL_103:
          type metadata accessor for AnimationPlaybackController();
          v16 = swift_allocObject();
          *(v16 + 40) = 0;
          swift_weakInit();
          *(v16 + 16) = v44;
          swift_weakAssign();

          *(v16 + 32) = REEntityGetLocalId();
          Hasher.init(_seed:)();
          MEMORY[0x1C68F4C10](*(v47 + 16));
          v121 = Hasher._finalize()();

          *(v16 + 24) = v121;
          if (v15)
          {
            if (REBindPointBoundComponent())
            {
              v13 = a5;
              v96 = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
                goto LABEL_106;
              }

              result = REEntityIsBeingDestroyed();
              if (result)
              {
LABEL_179:
                __break(1u);
                return result;
              }

              goto LABEL_143;
            }

LABEL_108:
            v15 = 0;
            goto LABEL_146;
          }

          goto LABEL_146;
        }

        v46 = makeEntity(for:)(v45);
      }

      v47 = v46;
      goto LABEL_103;
    }

    v12 = Strong;
    v69 = *a2;
    v68 = a2[1];
    v17 = a2[2];
    v14 = a2[3];
    v15 = a2[5];
    v155 = a2[4];
    if (REEntityGetSwiftObject())
    {
      type metadata accessor for Entity();
      v70 = swift_dynamicCastClassUnconditional();
    }

    else
    {
      result = REEntityIsBeingDestroyed();
      if (result)
      {
LABEL_169:
        __break(1u);
LABEL_170:
        __break(1u);
        goto LABEL_171;
      }

      specialized static Entity.entityInfoType(_:)(v69);
      if (v93)
      {
        v71 = (*(v93 + 232))();
        v94 = *(v71 + 16);

        MEMORY[0x1C68F9740](v94, 0);
        *(v71 + 16) = v69;
        MEMORY[0x1C68F9740](v69, v71);

LABEL_70:
        type metadata accessor for AnimationPlaybackController();
        v16 = swift_allocObject();
        *(v16 + 40) = 0;
        swift_weakInit();
        *(v16 + 16) = v68;
        swift_weakAssign();

        *(v16 + 32) = REEntityGetLocalId();
        Hasher.init(_seed:)();
        MEMORY[0x1C68F4C10](*(v71 + 16));
        v95 = Hasher._finalize()();

        *(v16 + 24) = v95;
        if (v15)
        {
          if (REBindPointBoundComponent())
          {
            v13 = a5;
            v96 = REComponentGetEntity();
            if (REEntityGetSwiftObject())
            {
LABEL_106:
              type metadata accessor for Entity();
              v122 = swift_dynamicCastClassUnconditional();
              goto LABEL_107;
            }

            if (REEntityIsBeingDestroyed())
            {
              __break(1u);
LABEL_75:
              result = REEntityIsBeingDestroyed();
              if ((result & 1) == 0)
              {
                specialized static Entity.entityInfoType(_:)(v14);
                if (v97)
                {
                  v19 = (*(v97 + 232))();
                  v98 = *(v19 + 16);

                  MEMORY[0x1C68F9740](v98, 0);
                  *(v19 + 16) = v14;
                  MEMORY[0x1C68F9740](v14, v19);

                  goto LABEL_78;
                }

                v18 = makeEntity(for:)(v14);
LABEL_8:
                v19 = v18;
LABEL_78:
                type metadata accessor for AnimationPlaybackController();
                v99 = swift_allocObject();
                *(v99 + 40) = 0;
                swift_weakInit();
                *(v99 + 16) = v13;
                swift_weakAssign();

                *(v99 + 32) = REEntityGetLocalId();
                Hasher.init(_seed:)();
                MEMORY[0x1C68F4C10](*(v19 + 16));
                v100 = Hasher._finalize()();

                *(v99 + 24) = v100;
                v101 = String.init(cString:)();
                specialized ActionEventData.init(eventID:coreData:typeName:)(v15, 0, v16, v101, v102, &v192);

                if (!v17)
                {
                  goto LABEL_127;
                }

                if (!REBindPointBoundComponent())
                {
                  v17 = 0;
                  goto LABEL_127;
                }

                v103 = REComponentGetEntity();
                if (REEntityGetSwiftObject())
                {
                  type metadata accessor for Entity();
                  v104 = swift_dynamicCastClassUnconditional();
LABEL_82:
                  v17 = v104;
                  goto LABEL_127;
                }

                result = REEntityIsBeingDestroyed();
                if ((result & 1) == 0)
                {
                  specialized static Entity.entityInfoType(_:)(v103);
                  if (!v131)
                  {
                    v104 = makeEntity(for:)(v103);
                    goto LABEL_82;
                  }

                  v17 = (*(v131 + 232))();
                  v132 = *(v17 + 16);

                  MEMORY[0x1C68F9740](v132, 0);
                  *(v17 + 16) = v103;
                  MEMORY[0x1C68F9740](v103, v17);

LABEL_127:
                  specialized ActionEventData.action<A>()(&v187);
                  if (*(&v189 + 1))
                  {
                    v142 = v11;
                    *&v156[8] = v187;
                    v156[24] = v188 & 1;
                    v157 = v189;
                    *&v158 = v190;
                    BYTE8(v158) = v191 & 1;
                    BYTE9(v158) = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA09PlayAudioD0VGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA09PlayAudioD0VGMR) & 1;
                    *v156 = v99;
                    *&v159 = v17;
                    BYTE8(v159) = v143;
                    v160 = vcvtq_f64_f32(v6);
                    *&v161 = v12;
                    *(&v161 + 1) = v145;
                    *&v162 = v5.f32[0];
                    BYTE8(v162) = 0;
                    v126 = v148;
                    v127 = v151;
                    goto LABEL_129;
                  }

                  goto LABEL_150;
                }

                goto LABEL_176;
              }

              goto LABEL_170;
            }

LABEL_143:
            specialized static Entity.entityInfoType(_:)(v96);
            if (v137)
            {
              v15 = (*(v137 + 232))();
              v138 = *(v15 + 16);

              MEMORY[0x1C68F9740](v138, 0);
              *(v15 + 16) = v96;
              MEMORY[0x1C68F9740](v96, v15);

              goto LABEL_145;
            }

            v122 = makeEntity(for:)(v96);
LABEL_107:
            v15 = v122;
LABEL_145:
            a5 = v13;
            goto LABEL_146;
          }

          goto LABEL_108;
        }

LABEL_146:
        v139 = String.init(cString:)();
        specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v14, v139, v140, &v192);

        specialized ActionEventData.action<A>()(&v187);
        if (!*(&v189 + 1))
        {
          goto LABEL_150;
        }

        *&v156[8] = v187;
        v156[24] = v188 & 1;
        v157 = v189;
        *&v158 = v190;
        BYTE8(v158) = v191 & 1;
        BYTE9(v158) = 1;
        *v156 = v16;
        *&v159 = v15;
        BYTE8(v159) = 0;
        v160 = 0uLL;
        *&v162 = 0;
        v161 = v12;
        BYTE8(v162) = 1;
        *&v163 = 0;
        BYTE8(v163) = 1;
        *&v164 = 0;
        BYTE8(v164) = 1;
        v167 = v194;
        v168 = v195;
        v169 = v196;
        v166 = v193;
        v165 = v192;
        v170 = v155;
        (a5)(v156);
LABEL_148:

        v183 = v167;
        v184 = v168;
        v185 = v169;
        v186 = v170;
        v179 = v163;
        v180 = v164;
        v181 = v165;
        v182 = v166;
        v175 = v159;
        v176 = v160;
        v177 = v161;
        v178 = v162;
        v171 = *v156;
        v172 = *&v156[16];
        v173 = v157;
        v174 = v158;
        goto LABEL_149;
      }

      v70 = makeEntity(for:)(v69);
    }

    v71 = v70;
    goto LABEL_70;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static AnimationLogger.logger);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *&v171 = v24;
    *v23 = 136315138;
    *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002FLL, 0x80000001C18E4580, &v171);
    _os_log_impl(&dword_1C1358000, v21, v22, "%s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x1C6902A30](v24, -1, -1);
    MEMORY[0x1C6902A30](v23, -1, -1);
  }

  return 1;
}

uint64_t specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(_OWORD *), void (*a6)(_OWORD *))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    if (a4 <= 15)
    {
      if (a4 <= 3)
      {
        if (a4 != 1)
        {
          if (a4 == 2)
          {
            a6 = a5;
            v15 = *a2;
            v14 = a2[1];
            v16 = a2[4];
            v17 = a2[5];
            v6.i32[0] = *(a2 + 14);
            v148 = a2[8];
            v151 = a2[6];
            v145 = a2[9];
            v18 = a2[11];
            v7 = a2[12];
            v143 = *(a2 + 104);
            v153 = a2[10];
            if (REEntityGetSwiftObject())
            {
              type metadata accessor for Entity();
              v19 = swift_dynamicCastClassUnconditional();
              goto LABEL_8;
            }

            goto LABEL_75;
          }

LABEL_42:

          return 0;
        }

        v47 = *a2;
        v46 = a2[1];
        v48 = a2[4];
        v49 = a2[5];
        v50 = a2[8];
        v51 = a2[9];
        v144 = *(a2 + 80);
        v147 = a2[11];
        v150 = a2[7];
        v152 = a2[12];
        v153 = a2[6];
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v52 = swift_dynamicCastClassUnconditional();
          goto LABEL_32;
        }

        result = REEntityIsBeingDestroyed();
        if ((result & 1) == 0)
        {
          specialized static Entity.entityInfoType(_:)(v47);
          if (v68)
          {
            v53 = (*(v68 + 232))();
            v69 = *(v53 + 16);

            MEMORY[0x1C68F9740](v69, 0);
            *(v53 + 16) = v47;
            MEMORY[0x1C68F9740](v47, v53);

LABEL_46:
            type metadata accessor for AnimationPlaybackController();
            v70 = swift_allocObject();
            *(v70 + 40) = 0;
            swift_weakInit();
            *(v70 + 16) = v46;
            swift_weakAssign();

            *(v70 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v53 + 16));
            v71 = Hasher._finalize()();

            *(v70 + 24) = v71;
            v72 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(v48, 0, v49, v72, v73, &v165);

            if (v50)
            {
              v74 = a5;
              if (REBindPointBoundComponent())
              {
                Entity = REComponentGetEntity();
                if (REEntityGetSwiftObject())
                {
                  type metadata accessor for Entity();
                  v76 = swift_dynamicCastClassUnconditional();
                }

                else
                {
                  result = REEntityIsBeingDestroyed();
                  if (result)
                  {
LABEL_179:
                    __break(1u);
                    goto LABEL_180;
                  }

                  specialized static Entity.entityInfoType(_:)(Entity);
                  if (v120)
                  {
                    v50 = (*(v120 + 232))();
                    v121 = *(v50 + 16);

                    MEMORY[0x1C68F9740](v121, 0);
                    *(v50 + 16) = Entity;
                    MEMORY[0x1C68F9740](Entity, v50);

                    goto LABEL_120;
                  }

                  v76 = makeEntity(for:)(Entity);
                }

                v50 = v76;
              }

              else
              {
                v50 = 0;
              }
            }

            else
            {
              v74 = a5;
            }

LABEL_120:
            specialized ActionEventData.action<A>()(&v158);
            if (!v160)
            {
              goto LABEL_154;
            }

            __src[5] = v162;
            __src[6] = v163;
            LOBYTE(__src[7]) = v164;
            __src[1] = v158;
            __src[2] = v159;
            __src[3] = v160;
            __src[4] = v161;
            v122 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0Vy0A3Kit9TransformVGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0Vy0A3Kit9TransformVGGMR);
            *(&__src[16] + 8) = v168;
            *(&__src[17] + 8) = v169;
            *(&__src[8] + 8) = vcvtq_f64_f32(v51);
            v123 = v165;
            *(&__src[14] + 8) = v166;
            *(&__src[15] + 8) = v167;
            BYTE1(__src[7]) = v122 & 1;
            *&__src[0] = v70;
            *(&__src[7] + 1) = v50;
            LOBYTE(__src[8]) = v144;
            *(&__src[9] + 1) = v13;
            *&__src[10] = v150;
            *(&__src[10] + 1) = 0xBFF0000000000000;
            LOBYTE(__src[11]) = 0;
            v124 = v147;
            goto LABEL_143;
          }

          v52 = makeEntity(for:)(v47);
LABEL_32:
          v53 = v52;
          goto LABEL_46;
        }

        __break(1u);
        goto LABEL_172;
      }

      if (a4 != 4)
      {
        if (a4 != 8)
        {
          goto LABEL_42;
        }

        v35 = *a2;
        v34 = a2[1];
        v36 = a2[4];
        v37 = a2[5];
        v38 = a2[7];
        v39 = a2[8];
        v146 = *(a2 + 72);
        v149 = a2[10];
        v152 = a2[11];
        v153 = a2[6];
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v40 = swift_dynamicCastClassUnconditional();
        }

        else
        {
          result = REEntityIsBeingDestroyed();
          if (result)
          {
LABEL_177:
            __break(1u);
            goto LABEL_178;
          }

          specialized static Entity.entityInfoType(_:)(v35);
          if (v108)
          {
            v41 = (*(v108 + 232))();
            v109 = *(v41 + 16);

            MEMORY[0x1C68F9740](v109, 0);
            *(v41 + 16) = v35;
            MEMORY[0x1C68F9740](v35, v41);

LABEL_95:
            type metadata accessor for AnimationPlaybackController();
            v110 = swift_allocObject();
            *(v110 + 40) = 0;
            swift_weakInit();
            *(v110 + 16) = v34;
            swift_weakAssign();

            *(v110 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v41 + 16));
            v111 = Hasher._finalize()();

            *(v110 + 24) = v111;
            v112 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(v36, 0, v37, v112, v113, &v165);

            if (v38)
            {
              v74 = a5;
              if (REBindPointBoundComponent())
              {
                v114 = REComponentGetEntity();
                if (REEntityGetSwiftObject())
                {
                  type metadata accessor for Entity();
                  v115 = swift_dynamicCastClassUnconditional();
                }

                else
                {
                  result = REEntityIsBeingDestroyed();
                  if (result)
                  {
LABEL_183:
                    __break(1u);
                    goto LABEL_184;
                  }

                  specialized static Entity.entityInfoType(_:)(v114);
                  if (v134)
                  {
                    v38 = (*(v134 + 232))();
                    v135 = *(v38 + 16);

                    MEMORY[0x1C68F9740](v135, 0);
                    *(v38 + 16) = v114;
                    MEMORY[0x1C68F9740](v114, v38);

                    goto LABEL_141;
                  }

                  v115 = makeEntity(for:)(v114);
                }

                v38 = v115;
              }

              else
              {
                v38 = 0;
              }
            }

            else
            {
              v74 = a5;
            }

LABEL_141:
            specialized ActionEventData.action<A>()(&v158);
            if (!v160)
            {
              goto LABEL_154;
            }

            __src[5] = v162;
            __src[6] = v163;
            LOBYTE(__src[7]) = v164;
            __src[1] = v158;
            __src[2] = v159;
            __src[3] = v160;
            __src[4] = v161;
            v136 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0Vy0A3Kit9TransformVGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0Vy0A3Kit9TransformVGGMR);
            *(&__src[16] + 8) = v168;
            *(&__src[17] + 8) = v169;
            *(&__src[8] + 8) = vcvtq_f64_f32(v39);
            v123 = v165;
            *(&__src[14] + 8) = v166;
            *(&__src[15] + 8) = v167;
            BYTE1(__src[7]) = v136 & 1;
            *&__src[0] = v110;
            *(&__src[7] + 1) = v38;
            LOBYTE(__src[8]) = v146;
            __src[10] = 0uLL;
            *(&__src[9] + 1) = v13;
            LOBYTE(__src[11]) = 1;
            v124 = v149;
LABEL_143:
            *(&__src[11] + 1) = v124;
            LOBYTE(__src[12]) = 0;
            v128 = v152;
            goto LABEL_144;
          }

          v40 = makeEntity(for:)(v35);
        }

        v41 = v40;
        goto LABEL_95;
      }

      a6 = a5;
      v60 = *a2;
      v54 = a2[1];
      v56 = a2[4];
      v61 = a2[5];
      v31 = a2[8];
      v151 = a2[7];
      v6 = a2[9];
      LOBYTE(v148) = *(a2 + 80);
      v153 = a2[6];
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v62 = swift_dynamicCastClassUnconditional();
        goto LABEL_38;
      }

LABEL_59:
      result = REEntityIsBeingDestroyed();
      if (result)
      {
LABEL_173:
        __break(1u);
        goto LABEL_174;
      }

      specialized static Entity.entityInfoType(_:)(v60);
      if (v82)
      {
        v63 = (*(v82 + 232))();
        v83 = *(v63 + 16);

        MEMORY[0x1C68F9740](v83, 0);
        *(v63 + 16) = v60;
        MEMORY[0x1C68F9740](v60, v63);

LABEL_62:
        type metadata accessor for AnimationPlaybackController();
        v84 = swift_allocObject();
        *(v84 + 40) = 0;
        swift_weakInit();
        *(v84 + 16) = v54;
        swift_weakAssign();

        *(v84 + 32) = REEntityGetLocalId();
        Hasher.init(_seed:)();
        MEMORY[0x1C68F4C10](*(v63 + 16));
        v85 = Hasher._finalize()();

        *(v84 + 24) = v85;
        v86 = String.init(cString:)();
        specialized ActionEventData.init(eventID:coreData:typeName:)(v56, 0, v61, v86, v87, &v165);

        if (v31)
        {
          v74 = a6;
          if (REBindPointBoundComponent())
          {
            v88 = REComponentGetEntity();
            if (REEntityGetSwiftObject())
            {
              type metadata accessor for Entity();
              v89 = swift_dynamicCastClassUnconditional();
            }

            else
            {
              result = REEntityIsBeingDestroyed();
              if (result)
              {
LABEL_180:
                __break(1u);
LABEL_181:
                __break(1u);
                goto LABEL_182;
              }

              specialized static Entity.entityInfoType(_:)(v88);
              if (v125)
              {
                v31 = (*(v125 + 232))();
                v126 = *(v31 + 16);

                MEMORY[0x1C68F9740](v126, 0);
                *(v31 + 16) = v88;
                MEMORY[0x1C68F9740](v88, v31);

                goto LABEL_126;
              }

              v89 = makeEntity(for:)(v88);
            }

            v31 = v89;
          }

          else
          {
            v31 = 0;
          }
        }

        else
        {
          v74 = a6;
        }

LABEL_126:
        specialized ActionEventData.action<A>()(&v158);
        if (!v160)
        {
          goto LABEL_154;
        }

        __src[5] = v162;
        __src[6] = v163;
        LOBYTE(__src[7]) = v164;
        __src[1] = v158;
        __src[2] = v159;
        __src[3] = v160;
        __src[4] = v161;
        v127 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0Vy0A3Kit9TransformVGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0Vy0A3Kit9TransformVGGMR);
        *(&__src[16] + 8) = v168;
        *(&__src[17] + 8) = v169;
        *(&__src[8] + 8) = vcvtq_f64_f32(v6);
        v123 = v165;
        *(&__src[14] + 8) = v166;
        *(&__src[15] + 8) = v167;
        BYTE1(__src[7]) = v127 & 1;
        *&__src[0] = v84;
        *(&__src[7] + 1) = v31;
        LOBYTE(__src[8]) = v148;
        *(&__src[9] + 1) = v13;
        *&__src[10] = v151;
        v128 = 0xBFF0000000000000;
        *(&__src[10] + 1) = 0xBFF0000000000000;
        LOBYTE(__src[11]) = 0;
        *(&__src[11] + 1) = 0xBFF0000000000000;
        LOBYTE(__src[12]) = 0;
LABEL_144:
        *(&__src[12] + 1) = v128;
        LOBYTE(__src[13]) = 0;
        goto LABEL_145;
      }

      v62 = makeEntity(for:)(v60);
LABEL_38:
      v63 = v62;
      goto LABEL_62;
    }

    if (a4 <= 63)
    {
      if (a4 != 16)
      {
        if (a4 != 32)
        {
          goto LABEL_42;
        }

        v154 = a5;
        v28 = *a2;
        v27 = a2[1];
        v29 = a2[5];
        v30 = a2[6];
        v31 = a2[7];
        v153 = a2[4];
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v32 = swift_dynamicCastClassUnconditional();
        }

        else
        {
          result = REEntityIsBeingDestroyed();
          if (result)
          {
LABEL_176:
            __break(1u);
            goto LABEL_177;
          }

          specialized static Entity.entityInfoType(_:)(v28);
          if (v102)
          {
            v33 = (*(v102 + 232))();
            v103 = *(v33 + 16);

            MEMORY[0x1C68F9740](v103, 0);
            *(v33 + 16) = v28;
            MEMORY[0x1C68F9740](v28, v33);

LABEL_86:
            type metadata accessor for AnimationPlaybackController();
            v60 = swift_allocObject();
            *(v60 + 40) = 0;
            swift_weakInit();
            *(v60 + 16) = v27;
            swift_weakAssign();

            *(v60 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v33 + 16));
            v104 = Hasher._finalize()();

            *(v60 + 24) = v104;
            v105 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v29, v105, v106, &v165);

            if (!v31)
            {
              goto LABEL_136;
            }

            if (REBindPointBoundComponent())
            {
              v61 = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
                goto LABEL_89;
              }

              result = REEntityIsBeingDestroyed();
              if (result)
              {
LABEL_182:
                __break(1u);
                goto LABEL_183;
              }

LABEL_134:
              specialized static Entity.entityInfoType(_:)(v61);
              if (!v132)
              {
                v107 = makeEntity(for:)(v61);
                goto LABEL_90;
              }

              v31 = (*(v132 + 232))();
              v133 = *(v31 + 16);

              MEMORY[0x1C68F9740](v133, 0);
              *(v31 + 16) = v61;
              MEMORY[0x1C68F9740](v61, v31);

LABEL_136:
              specialized ActionEventData.action<A>()(&v158);
              if (v160)
              {
                __src[5] = v162;
                __src[6] = v163;
                __src[1] = v158;
                __src[2] = v159;
                __src[3] = v160;
                __src[4] = v161;
                *(&__src[16] + 8) = v168;
                *(&__src[17] + 8) = v169;
                *(&__src[14] + 8) = v166;
                *(&__src[15] + 8) = v167;
                LOBYTE(__src[7]) = v164;
                BYTE1(__src[7]) = 1;
                *&__src[0] = v60;
                *(&__src[7] + 1) = v31;
                LOBYTE(__src[8]) = 0;
                *(&__src[8] + 1) = 0;
                *&__src[9] = 0;
                __src[10] = 0uLL;
                *(&__src[9] + 1) = v13;
                LOBYTE(__src[11]) = 1;
                *(&__src[11] + 1) = v153;
                LOBYTE(__src[12]) = 0;
                *(&__src[12] + 1) = 0;
                LOBYTE(__src[13]) = 1;
                *(&__src[13] + 8) = v165;
                *(&__src[18] + 1) = v30;
                v154(__src);
LABEL_153:

                memcpy(__dst, __src, sizeof(__dst));
                v141 = &_s17RealityFoundation11ActionEventVyAA017SetEntityPropertyC0Vy0A3Kit9TransformVGGMd;
                v142 = &_s17RealityFoundation11ActionEventVyAA017SetEntityPropertyC0Vy0A3Kit9TransformVGGMR;
LABEL_155:
                outlined destroy of BodyTrackingComponent?(__dst, v141, v142);
                return 0;
              }

              goto LABEL_154;
            }

            goto LABEL_91;
          }

          v32 = makeEntity(for:)(v28);
        }

        v33 = v32;
        goto LABEL_86;
      }

      v154 = a5;
      v55 = *a2;
      v54 = a2[1];
      v56 = a2[3];
      v57 = a2[5];
      v30 = a2[6];
      v31 = a2[7];
      v153 = a2[4];
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v58 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        result = REEntityIsBeingDestroyed();
        if (result)
        {
LABEL_172:
          __break(1u);
          goto LABEL_173;
        }

        specialized static Entity.entityInfoType(_:)(v55);
        if (v77)
        {
          v59 = (*(v77 + 232))();
          v78 = *(v59 + 16);

          MEMORY[0x1C68F9740](v78, 0);
          *(v59 + 16) = v55;
          MEMORY[0x1C68F9740](v55, v59);

LABEL_54:
          type metadata accessor for AnimationPlaybackController();
          v60 = swift_allocObject();
          *(v60 + 40) = 0;
          swift_weakInit();
          *(v60 + 16) = v54;
          swift_weakAssign();

          *(v60 + 32) = REEntityGetLocalId();
          Hasher.init(_seed:)();
          MEMORY[0x1C68F4C10](*(v59 + 16));
          v79 = Hasher._finalize()();

          *(v60 + 24) = v79;
          v80 = String.init(cString:)();
          specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v57, v80, v81, &v165);

          if (!v31)
          {
            goto LABEL_136;
          }

          if (REBindPointBoundComponent())
          {
            v61 = REComponentGetEntity();
            if (REEntityGetSwiftObject())
            {
LABEL_89:
              type metadata accessor for Entity();
              v107 = swift_dynamicCastClassUnconditional();
LABEL_90:
              v31 = v107;
              goto LABEL_136;
            }

            if (REEntityIsBeingDestroyed())
            {
              __break(1u);
              goto LABEL_59;
            }

            goto LABEL_134;
          }

LABEL_91:
          v31 = 0;
          goto LABEL_136;
        }

        v58 = makeEntity(for:)(v55);
      }

      v59 = v58;
      goto LABEL_54;
    }

    if (a4 != 64)
    {
      if (a4 != 128)
      {
        goto LABEL_42;
      }

      v43 = *a2;
      v42 = a2[1];
      v15 = a2[3];
      v16 = a2[5];
      v155 = a2[4];
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v44 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        result = REEntityIsBeingDestroyed();
        if (result)
        {
LABEL_178:
          __break(1u);
          goto LABEL_179;
        }

        specialized static Entity.entityInfoType(_:)(v43);
        if (v116)
        {
          v45 = (*(v116 + 232))();
          v117 = *(v45 + 16);

          MEMORY[0x1C68F9740](v117, 0);
          *(v45 + 16) = v43;
          MEMORY[0x1C68F9740](v43, v45);

LABEL_103:
          type metadata accessor for AnimationPlaybackController();
          v17 = swift_allocObject();
          *(v17 + 40) = 0;
          swift_weakInit();
          *(v17 + 16) = v42;
          swift_weakAssign();

          *(v17 + 32) = REEntityGetLocalId();
          Hasher.init(_seed:)();
          MEMORY[0x1C68F4C10](*(v45 + 16));
          v118 = Hasher._finalize()();

          *(v17 + 24) = v118;
          if (!v16)
          {
            goto LABEL_151;
          }

          if (REBindPointBoundComponent())
          {
            v14 = a5;
            v93 = REComponentGetEntity();
            if (REEntityGetSwiftObject())
            {
              goto LABEL_106;
            }

            result = REEntityIsBeingDestroyed();
            if (result)
            {
LABEL_184:
              __break(1u);
              return result;
            }

            goto LABEL_148;
          }

          goto LABEL_108;
        }

        v44 = makeEntity(for:)(v43);
      }

      v45 = v44;
      goto LABEL_103;
    }

    v65 = *a2;
    v64 = a2[1];
    v18 = a2[2];
    v15 = a2[3];
    v16 = a2[5];
    v155 = a2[4];
    if (REEntityGetSwiftObject())
    {
      type metadata accessor for Entity();
      v66 = swift_dynamicCastClassUnconditional();
    }

    else
    {
      result = REEntityIsBeingDestroyed();
      if (result)
      {
LABEL_174:
        __break(1u);
LABEL_175:
        __break(1u);
        goto LABEL_176;
      }

      specialized static Entity.entityInfoType(_:)(v65);
      if (v90)
      {
        v67 = (*(v90 + 232))();
        v91 = *(v67 + 16);

        MEMORY[0x1C68F9740](v91, 0);
        *(v67 + 16) = v65;
        MEMORY[0x1C68F9740](v65, v67);

LABEL_70:
        type metadata accessor for AnimationPlaybackController();
        v17 = swift_allocObject();
        *(v17 + 40) = 0;
        swift_weakInit();
        *(v17 + 16) = v64;
        swift_weakAssign();

        *(v17 + 32) = REEntityGetLocalId();
        Hasher.init(_seed:)();
        MEMORY[0x1C68F4C10](*(v67 + 16));
        v92 = Hasher._finalize()();

        *(v17 + 24) = v92;
        if (!v16)
        {
          goto LABEL_151;
        }

        if (REBindPointBoundComponent())
        {
          v14 = a5;
          v93 = REComponentGetEntity();
          if (REEntityGetSwiftObject())
          {
LABEL_106:
            type metadata accessor for Entity();
            v119 = swift_dynamicCastClassUnconditional();
            goto LABEL_107;
          }

          if (REEntityIsBeingDestroyed())
          {
            __break(1u);
LABEL_75:
            result = REEntityIsBeingDestroyed();
            if ((result & 1) == 0)
            {
              specialized static Entity.entityInfoType(_:)(v15);
              if (v94)
              {
                v20 = (*(v94 + 232))();
                v95 = *(v20 + 16);

                MEMORY[0x1C68F9740](v95, 0);
                *(v20 + 16) = v15;
                MEMORY[0x1C68F9740](v15, v20);

                goto LABEL_78;
              }

              v19 = makeEntity(for:)(v15);
LABEL_8:
              v20 = v19;
LABEL_78:
              type metadata accessor for AnimationPlaybackController();
              v96 = swift_allocObject();
              *(v96 + 40) = 0;
              swift_weakInit();
              *(v96 + 16) = v14;
              swift_weakAssign();

              *(v96 + 32) = REEntityGetLocalId();
              Hasher.init(_seed:)();
              MEMORY[0x1C68F4C10](*(v20 + 16));
              v97 = Hasher._finalize()();

              *(v96 + 24) = v97;
              v98 = String.init(cString:)();
              specialized ActionEventData.init(eventID:coreData:typeName:)(v16, 0, v17, v98, v99, &v165);

              if (!v18)
              {
                v74 = a6;
                goto LABEL_131;
              }

              v74 = a6;
              if (!REBindPointBoundComponent())
              {
                v18 = 0;
                goto LABEL_131;
              }

              v100 = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
                type metadata accessor for Entity();
                v101 = swift_dynamicCastClassUnconditional();
LABEL_82:
                v18 = v101;
                goto LABEL_131;
              }

              result = REEntityIsBeingDestroyed();
              if ((result & 1) == 0)
              {
                specialized static Entity.entityInfoType(_:)(v100);
                if (!v129)
                {
                  v101 = makeEntity(for:)(v100);
                  goto LABEL_82;
                }

                v18 = (*(v129 + 232))();
                v130 = *(v18 + 16);

                MEMORY[0x1C68F9740](v130, 0);
                *(v18 + 16) = v100;
                MEMORY[0x1C68F9740](v100, v18);

LABEL_131:
                specialized ActionEventData.action<A>()(&v158);
                if (v160)
                {
                  __src[5] = v162;
                  __src[6] = v163;
                  LOBYTE(__src[7]) = v164;
                  __src[1] = v158;
                  __src[2] = v159;
                  __src[3] = v160;
                  __src[4] = v161;
                  v131 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0Vy0A3Kit9TransformVGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0Vy0A3Kit9TransformVGGMR);
                  *(&__src[16] + 8) = v168;
                  *(&__src[17] + 8) = v169;
                  *(&__src[8] + 8) = vcvtq_f64_f32(v7);
                  *(&__src[10] + 1) = v6.f32[0];
                  v123 = v165;
                  *(&__src[14] + 8) = v166;
                  BYTE1(__src[7]) = v131 & 1;
                  *&__src[0] = v96;
                  *(&__src[7] + 1) = v18;
                  LOBYTE(__src[8]) = v143;
                  *(&__src[9] + 1) = v13;
                  *&__src[10] = v145;
                  LOBYTE(__src[11]) = 0;
                  *(&__src[11] + 1) = v151;
                  LOBYTE(__src[12]) = 0;
                  *(&__src[12] + 1) = v148;
                  LOBYTE(__src[13]) = 0;
                  *(&__src[15] + 8) = v167;
LABEL_145:
                  *(&__src[13] + 8) = v123;
                  *(&__src[18] + 1) = v153;
                  v74(__src);
                  goto LABEL_153;
                }

LABEL_154:

                __dst[4] = v162;
                __dst[5] = v163;
                LOBYTE(__dst[6]) = v164;
                __dst[0] = v158;
                __dst[1] = v159;
                __dst[2] = v160;
                __dst[3] = v161;
                v141 = &_s17RealityFoundation23SetEntityPropertyActionVy0A3Kit9TransformVGSgMd;
                v142 = &_s17RealityFoundation23SetEntityPropertyActionVy0A3Kit9TransformVGSgMR;
                goto LABEL_155;
              }

              goto LABEL_181;
            }

            goto LABEL_175;
          }

LABEL_148:
          specialized static Entity.entityInfoType(_:)(v93);
          if (v137)
          {
            v16 = (*(v137 + 232))();
            v138 = *(v16 + 16);

            MEMORY[0x1C68F9740](v138, 0);
            *(v16 + 16) = v93;
            MEMORY[0x1C68F9740](v93, v16);

            goto LABEL_150;
          }

          v119 = makeEntity(for:)(v93);
LABEL_107:
          v16 = v119;
LABEL_150:
          a5 = v14;
LABEL_151:
          v139 = String.init(cString:)();
          specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v15, v139, v140, &v165);

          specialized ActionEventData.action<A>()(&v158);
          if (v160)
          {
            __src[5] = v162;
            __src[6] = v163;
            __src[1] = v158;
            __src[2] = v159;
            __src[3] = v160;
            __src[4] = v161;
            *(&__src[16] + 8) = v168;
            *(&__src[17] + 8) = v169;
            *(&__src[14] + 8) = v166;
            *(&__src[15] + 8) = v167;
            LOBYTE(__src[7]) = v164;
            BYTE1(__src[7]) = 1;
            *&__src[0] = v17;
            *(&__src[7] + 1) = v16;
            LOBYTE(__src[8]) = 0;
            *(&__src[8] + 1) = 0;
            *&__src[9] = 0;
            __src[10] = 0uLL;
            *(&__src[9] + 1) = v13;
            LOBYTE(__src[11]) = 1;
            *(&__src[11] + 1) = 0;
            LOBYTE(__src[12]) = 1;
            *(&__src[12] + 1) = 0;
            LOBYTE(__src[13]) = 1;
            *(&__src[13] + 8) = v165;
            *(&__src[18] + 1) = v155;
            a5(__src);
            goto LABEL_153;
          }

          goto LABEL_154;
        }

LABEL_108:
        v16 = 0;
        goto LABEL_151;
      }

      v66 = makeEntity(for:)(v65);
    }

    v67 = v66;
    goto LABEL_70;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static AnimationLogger.logger);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *&__dst[0] = v25;
    *v24 = 136315138;
    *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002FLL, 0x80000001C18E4580, __dst);
    _os_log_impl(&dword_1C1358000, v22, v23, "%s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x1C6902A30](v25, -1, -1);
    MEMORY[0x1C6902A30](v24, -1, -1);
  }

  return 1;
}

uint64_t specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(_BYTE *), uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (a4 <= 15)
    {
      if (a4 <= 3)
      {
        if (a4 != 1)
        {
          if (a4 == 2)
          {
            v13 = Strong;
            v15 = *a2;
            v14 = a2[1];
            v16 = a2[4];
            v17 = a2[5];
            v6.i32[0] = *(a2 + 14);
            v170 = a2[8];
            v173 = a2[6];
            v167 = a2[9];
            v18 = a2[11];
            v7 = a2[12];
            v164 = *(a2 + 104);
            v175 = a2[10];
            if (REEntityGetSwiftObject())
            {
              type metadata accessor for Entity();
              v19 = swift_dynamicCastClassUnconditional();
              goto LABEL_8;
            }

            goto LABEL_75;
          }

LABEL_42:

          return 0;
        }

        v48 = Strong;
        v50 = *a2;
        v49 = a2[1];
        v51 = a2[4];
        v52 = a2[5];
        v53 = a2[8];
        v54 = a2[9];
        v165 = *(a2 + 80);
        v169 = a2[11];
        v172 = a2[7];
        v174 = a2[12];
        v175 = a2[6];
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v55 = swift_dynamicCastClassUnconditional();
          goto LABEL_32;
        }

        result = REEntityIsBeingDestroyed();
        if ((result & 1) == 0)
        {
          specialized static Entity.entityInfoType(_:)(v50);
          if (v71)
          {
            v56 = (*(v71 + 232))();
            v72 = *(v56 + 16);

            MEMORY[0x1C68F9740](v72, 0);
            *(v56 + 16) = v50;
            MEMORY[0x1C68F9740](v50, v56);

LABEL_46:
            type metadata accessor for AnimationPlaybackController();
            v73 = swift_allocObject();
            *(v73 + 40) = 0;
            swift_weakInit();
            *(v73 + 16) = v49;
            swift_weakAssign();

            *(v73 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v56 + 16));
            v74 = Hasher._finalize()();

            *(v73 + 24) = v74;
            v75 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(v51, 0, v52, v75, v76, &v197);

            if (v53)
            {
              if (REBindPointBoundComponent())
              {
                Entity = REComponentGetEntity();
                if (REEntityGetSwiftObject())
                {
                  type metadata accessor for Entity();
                  v78 = swift_dynamicCastClassUnconditional();
                }

                else
                {
                  result = REEntityIsBeingDestroyed();
                  if (result)
                  {
LABEL_174:
                    __break(1u);
                    goto LABEL_175;
                  }

                  specialized static Entity.entityInfoType(_:)(Entity);
                  if (v122)
                  {
                    v53 = (*(v122 + 232))();
                    v123 = *(v53 + 16);

                    MEMORY[0x1C68F9740](v123, 0);
                    *(v53 + 16) = Entity;
                    MEMORY[0x1C68F9740](Entity, v53);

                    goto LABEL_116;
                  }

                  v78 = makeEntity(for:)(Entity);
                }

                v53 = v78;
              }

              else
              {
                v53 = 0;
              }
            }

LABEL_116:
            specialized ActionEventData.action<A>()(&v193);
            v124 = *(&v195 + 1);
            if (!*(&v195 + 1))
            {
              goto LABEL_150;
            }

            v125 = v193;
            v126 = v194;
            v176 = v48;
            v181 = a5;
            v127 = v195;
            v128 = v196;
            v129 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0VySSGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0VySSGGMR);
            *&v187[8] = vcvtq_f64_f32(v54);
            v130 = v197;
            *&v191[24] = v198;
            *&v191[40] = v199;
            *&v191[56] = v200;
            *&v191[72] = v201;
            v183[24] = v126 & 1;
            *&v184 = v127;
            *(&v184 + 1) = v124;
            v185 = v128;
            LOBYTE(v186) = v129 & 1;
            *&v183[8] = v125;
            *v183 = v73;
            *(&v186 + 1) = v53;
            v187[0] = v165;
            *&v187[24] = v176;
            *&v188 = v172;
            *(&v188 + 1) = 0xBFF0000000000000;
            LOBYTE(v189) = 0;
            v131 = v169;
            goto LABEL_139;
          }

          v55 = makeEntity(for:)(v50);
LABEL_32:
          v56 = v55;
          goto LABEL_46;
        }

        __break(1u);
        goto LABEL_167;
      }

      if (a4 != 4)
      {
        if (a4 != 8)
        {
          goto LABEL_42;
        }

        v35 = Strong;
        v37 = *a2;
        v36 = a2[1];
        v38 = a2[4];
        v39 = a2[5];
        v40 = a2[7];
        v41 = a2[8];
        v168 = *(a2 + 72);
        v171 = a2[10];
        v174 = a2[11];
        v175 = a2[6];
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v42 = swift_dynamicCastClassUnconditional();
        }

        else
        {
          result = REEntityIsBeingDestroyed();
          if (result)
          {
LABEL_172:
            __break(1u);
            goto LABEL_173;
          }

          specialized static Entity.entityInfoType(_:)(v37);
          if (v110)
          {
            v43 = (*(v110 + 232))();
            v111 = *(v43 + 16);

            MEMORY[0x1C68F9740](v111, 0);
            *(v43 + 16) = v37;
            MEMORY[0x1C68F9740](v37, v43);

LABEL_95:
            type metadata accessor for AnimationPlaybackController();
            v112 = swift_allocObject();
            *(v112 + 40) = 0;
            swift_weakInit();
            *(v112 + 16) = v36;
            swift_weakAssign();

            *(v112 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v43 + 16));
            v113 = Hasher._finalize()();

            *(v112 + 24) = v113;
            v114 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(v38, 0, v39, v114, v115, &v197);

            if (v40)
            {
              if (REBindPointBoundComponent())
              {
                v116 = REComponentGetEntity();
                if (REEntityGetSwiftObject())
                {
                  type metadata accessor for Entity();
                  v117 = swift_dynamicCastClassUnconditional();
                }

                else
                {
                  result = REEntityIsBeingDestroyed();
                  if (result)
                  {
LABEL_178:
                    __break(1u);
                    goto LABEL_179;
                  }

                  specialized static Entity.entityInfoType(_:)(v116);
                  if (v151)
                  {
                    v40 = (*(v151 + 232))();
                    v152 = *(v40 + 16);

                    MEMORY[0x1C68F9740](v152, 0);
                    *(v40 + 16) = v116;
                    MEMORY[0x1C68F9740](v116, v40);

                    goto LABEL_137;
                  }

                  v117 = makeEntity(for:)(v116);
                }

                v40 = v117;
              }

              else
              {
                v40 = 0;
              }
            }

LABEL_137:
            specialized ActionEventData.action<A>()(&v193);
            v153 = *(&v195 + 1);
            if (!*(&v195 + 1))
            {
              goto LABEL_150;
            }

            v166 = v193;
            v179 = v35;
            v181 = a5;
            v154 = *(&v193 + 1);
            v155 = v194;
            v156 = v195;
            v157 = v196;
            v158 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0VySSGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0VySSGGMR);
            *&v187[8] = vcvtq_f64_f32(v41);
            v130 = v197;
            *&v191[24] = v198;
            *&v191[40] = v199;
            *&v191[56] = v200;
            *&v191[72] = v201;
            v183[24] = v155 & 1;
            *&v184 = v156;
            *(&v184 + 1) = v153;
            v185 = v157;
            LOBYTE(v186) = v158 & 1;
            *&v183[8] = v166;
            *&v183[16] = v154;
            *v183 = v112;
            *(&v186 + 1) = v40;
            v187[0] = v168;
            v188 = 0uLL;
            *&v187[24] = v179;
            LOBYTE(v189) = 1;
            v131 = v171;
LABEL_139:
            *(&v189 + 1) = v131;
            LOBYTE(v190) = 0;
            v140 = v174;
            goto LABEL_140;
          }

          v42 = makeEntity(for:)(v37);
        }

        v43 = v42;
        goto LABEL_95;
      }

      v27 = Strong;
      v63 = *a2;
      v57 = a2[1];
      v59 = a2[4];
      v64 = a2[5];
      v32 = a2[8];
      v173 = a2[7];
      v6 = a2[9];
      LOBYTE(v170) = *(a2 + 80);
      v175 = a2[6];
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v65 = swift_dynamicCastClassUnconditional();
        goto LABEL_38;
      }

LABEL_59:
      result = REEntityIsBeingDestroyed();
      if (result)
      {
LABEL_168:
        __break(1u);
        goto LABEL_169;
      }

      specialized static Entity.entityInfoType(_:)(v63);
      if (v84)
      {
        v66 = (*(v84 + 232))();
        v85 = *(v66 + 16);

        MEMORY[0x1C68F9740](v85, 0);
        *(v66 + 16) = v63;
        MEMORY[0x1C68F9740](v63, v66);

LABEL_62:
        type metadata accessor for AnimationPlaybackController();
        v86 = swift_allocObject();
        *(v86 + 40) = 0;
        swift_weakInit();
        *(v86 + 16) = v57;
        swift_weakAssign();

        *(v86 + 32) = REEntityGetLocalId();
        Hasher.init(_seed:)();
        MEMORY[0x1C68F4C10](*(v66 + 16));
        v87 = Hasher._finalize()();

        *(v86 + 24) = v87;
        v88 = String.init(cString:)();
        specialized ActionEventData.init(eventID:coreData:typeName:)(v59, 0, v64, v88, v89, &v197);

        if (v32)
        {
          if (REBindPointBoundComponent())
          {
            v90 = REComponentGetEntity();
            if (REEntityGetSwiftObject())
            {
              type metadata accessor for Entity();
              v91 = swift_dynamicCastClassUnconditional();
            }

            else
            {
              result = REEntityIsBeingDestroyed();
              if (result)
              {
LABEL_175:
                __break(1u);
LABEL_176:
                __break(1u);
                goto LABEL_177;
              }

              specialized static Entity.entityInfoType(_:)(v90);
              if (v132)
              {
                v32 = (*(v132 + 232))();
                v133 = *(v32 + 16);

                MEMORY[0x1C68F9740](v133, 0);
                *(v32 + 16) = v90;
                MEMORY[0x1C68F9740](v90, v32);

                goto LABEL_122;
              }

              v91 = makeEntity(for:)(v90);
            }

            v32 = v91;
          }

          else
          {
            v32 = 0;
          }
        }

LABEL_122:
        specialized ActionEventData.action<A>()(&v193);
        v134 = *(&v195 + 1);
        if (!*(&v195 + 1))
        {
          goto LABEL_150;
        }

        v135 = v193;
        v136 = v194;
        v177 = v27;
        v181 = a5;
        v137 = v195;
        v138 = v196;
        v139 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0VySSGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0VySSGGMR);
        *&v187[8] = vcvtq_f64_f32(v6);
        v130 = v197;
        *&v191[24] = v198;
        *&v191[40] = v199;
        *&v191[56] = v200;
        *&v191[72] = v201;
        v183[24] = v136 & 1;
        *&v184 = v137;
        *(&v184 + 1) = v134;
        v185 = v138;
        LOBYTE(v186) = v139 & 1;
        *&v183[8] = v135;
        *v183 = v86;
        *(&v186 + 1) = v32;
        v187[0] = v170;
        *&v187[24] = v177;
        *&v188 = v173;
        v140 = 0xBFF0000000000000;
        *(&v188 + 1) = 0xBFF0000000000000;
        LOBYTE(v189) = 0;
        *(&v189 + 1) = 0xBFF0000000000000;
        LOBYTE(v190) = 0;
LABEL_140:
        *(&v190 + 1) = v140;
        v191[0] = 0;
        goto LABEL_141;
      }

      v65 = makeEntity(for:)(v63);
LABEL_38:
      v66 = v65;
      goto LABEL_62;
    }

    if (a4 <= 63)
    {
      if (a4 != 16)
      {
        if (a4 != 32)
        {
          goto LABEL_42;
        }

        v27 = Strong;
        v29 = *a2;
        v28 = a2[1];
        v30 = a2[5];
        v31 = a2[6];
        v32 = a2[7];
        v180 = a2[4];
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v33 = swift_dynamicCastClassUnconditional();
        }

        else
        {
          result = REEntityIsBeingDestroyed();
          if (result)
          {
LABEL_171:
            __break(1u);
            goto LABEL_172;
          }

          specialized static Entity.entityInfoType(_:)(v29);
          if (v104)
          {
            v34 = (*(v104 + 232))();
            v105 = *(v34 + 16);

            MEMORY[0x1C68F9740](v105, 0);
            *(v34 + 16) = v29;
            MEMORY[0x1C68F9740](v29, v34);

LABEL_86:
            type metadata accessor for AnimationPlaybackController();
            v63 = swift_allocObject();
            *(v63 + 40) = 0;
            swift_weakInit();
            *(v63 + 16) = v28;
            swift_weakAssign();

            *(v63 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v34 + 16));
            v106 = Hasher._finalize()();

            *(v63 + 24) = v106;
            v107 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v30, v107, v108, &v197);

            if (v32)
            {
              if (REBindPointBoundComponent())
              {
                v64 = REComponentGetEntity();
                if (REEntityGetSwiftObject())
                {
                  goto LABEL_89;
                }

                result = REEntityIsBeingDestroyed();
                if (result)
                {
LABEL_177:
                  __break(1u);
                  goto LABEL_178;
                }

                goto LABEL_130;
              }

              goto LABEL_91;
            }

            goto LABEL_132;
          }

          v33 = makeEntity(for:)(v29);
        }

        v34 = v33;
        goto LABEL_86;
      }

      v27 = Strong;
      v58 = *a2;
      v57 = a2[1];
      v59 = a2[3];
      v60 = a2[5];
      v31 = a2[6];
      v32 = a2[7];
      v180 = a2[4];
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v61 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        result = REEntityIsBeingDestroyed();
        if (result)
        {
LABEL_167:
          __break(1u);
          goto LABEL_168;
        }

        specialized static Entity.entityInfoType(_:)(v58);
        if (v79)
        {
          v62 = (*(v79 + 232))();
          v80 = *(v62 + 16);

          MEMORY[0x1C68F9740](v80, 0);
          *(v62 + 16) = v58;
          MEMORY[0x1C68F9740](v58, v62);

LABEL_54:
          type metadata accessor for AnimationPlaybackController();
          v63 = swift_allocObject();
          *(v63 + 40) = 0;
          swift_weakInit();
          *(v63 + 16) = v57;
          swift_weakAssign();

          *(v63 + 32) = REEntityGetLocalId();
          Hasher.init(_seed:)();
          MEMORY[0x1C68F4C10](*(v62 + 16));
          v81 = Hasher._finalize()();

          *(v63 + 24) = v81;
          v82 = String.init(cString:)();
          specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v60, v82, v83, &v197);

          if (v32)
          {
            if (REBindPointBoundComponent())
            {
              v64 = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
LABEL_89:
                type metadata accessor for Entity();
                v109 = swift_dynamicCastClassUnconditional();
LABEL_90:
                v32 = v109;
                goto LABEL_132;
              }

              if (REEntityIsBeingDestroyed())
              {
                __break(1u);
                goto LABEL_59;
              }

LABEL_130:
              specialized static Entity.entityInfoType(_:)(v64);
              if (v149)
              {
                v32 = (*(v149 + 232))();
                v150 = *(v32 + 16);

                MEMORY[0x1C68F9740](v150, 0);
                *(v32 + 16) = v64;
                MEMORY[0x1C68F9740](v64, v32);

                goto LABEL_132;
              }

              v109 = makeEntity(for:)(v64);
              goto LABEL_90;
            }

LABEL_91:
            v32 = 0;
          }

LABEL_132:
          specialized ActionEventData.action<A>()(&v193);
          if (!*(&v195 + 1))
          {
            goto LABEL_150;
          }

          *&v183[8] = v193;
          v185 = v196;
          *&v191[24] = v198;
          *&v191[40] = v199;
          *&v191[56] = v200;
          *&v191[72] = v201;
          v183[24] = v194 & 1;
          v184 = v195;
          LOBYTE(v186) = 1;
          *v183 = v63;
          *(&v186 + 1) = v32;
          v187[0] = 0;
          *&v187[8] = 0;
          *&v187[16] = 0;
          v188 = 0uLL;
          *&v187[24] = v27;
          LOBYTE(v189) = 1;
          *(&v189 + 1) = v180;
          LOBYTE(v190) = 0;
          *(&v190 + 1) = 0;
          v191[0] = 1;
          *&v191[8] = v197;
          *&v191[88] = v31;
          goto LABEL_148;
        }

        v61 = makeEntity(for:)(v58);
      }

      v62 = v61;
      goto LABEL_54;
    }

    if (a4 != 64)
    {
      if (a4 != 128)
      {
        goto LABEL_42;
      }

      v13 = Strong;
      v45 = *a2;
      v44 = a2[1];
      v15 = a2[3];
      v16 = a2[5];
      v182 = a2[4];
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v46 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        result = REEntityIsBeingDestroyed();
        if (result)
        {
LABEL_173:
          __break(1u);
          goto LABEL_174;
        }

        specialized static Entity.entityInfoType(_:)(v45);
        if (v118)
        {
          v47 = (*(v118 + 232))();
          v119 = *(v47 + 16);

          MEMORY[0x1C68F9740](v119, 0);
          *(v47 + 16) = v45;
          MEMORY[0x1C68F9740](v45, v47);

LABEL_103:
          type metadata accessor for AnimationPlaybackController();
          v17 = swift_allocObject();
          *(v17 + 40) = 0;
          swift_weakInit();
          *(v17 + 16) = v44;
          swift_weakAssign();

          *(v17 + 32) = REEntityGetLocalId();
          Hasher.init(_seed:)();
          MEMORY[0x1C68F4C10](*(v47 + 16));
          v120 = Hasher._finalize()();

          *(v17 + 24) = v120;
          if (v16)
          {
            if (REBindPointBoundComponent())
            {
              v95 = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
                goto LABEL_106;
              }

              result = REEntityIsBeingDestroyed();
              if (result)
              {
LABEL_179:
                __break(1u);
                return result;
              }

              goto LABEL_144;
            }

            goto LABEL_108;
          }

          goto LABEL_146;
        }

        v46 = makeEntity(for:)(v45);
      }

      v47 = v46;
      goto LABEL_103;
    }

    v13 = Strong;
    v68 = *a2;
    v67 = a2[1];
    v18 = a2[2];
    v15 = a2[3];
    v16 = a2[5];
    v182 = a2[4];
    if (REEntityGetSwiftObject())
    {
      type metadata accessor for Entity();
      v69 = swift_dynamicCastClassUnconditional();
    }

    else
    {
      result = REEntityIsBeingDestroyed();
      if (result)
      {
LABEL_169:
        __break(1u);
LABEL_170:
        __break(1u);
        goto LABEL_171;
      }

      specialized static Entity.entityInfoType(_:)(v68);
      if (v92)
      {
        v70 = (*(v92 + 232))();
        v93 = *(v70 + 16);

        MEMORY[0x1C68F9740](v93, 0);
        *(v70 + 16) = v68;
        MEMORY[0x1C68F9740](v68, v70);

LABEL_70:
        type metadata accessor for AnimationPlaybackController();
        v17 = swift_allocObject();
        *(v17 + 40) = 0;
        swift_weakInit();
        *(v17 + 16) = v67;
        swift_weakAssign();

        *(v17 + 32) = REEntityGetLocalId();
        Hasher.init(_seed:)();
        MEMORY[0x1C68F4C10](*(v70 + 16));
        v94 = Hasher._finalize()();

        *(v17 + 24) = v94;
        if (v16)
        {
          if (REBindPointBoundComponent())
          {
            v14 = a6;
            v95 = REComponentGetEntity();
            if (REEntityGetSwiftObject())
            {
LABEL_106:
              type metadata accessor for Entity();
              v121 = swift_dynamicCastClassUnconditional();
LABEL_107:
              v16 = v121;
              goto LABEL_146;
            }

            if (REEntityIsBeingDestroyed())
            {
              __break(1u);
LABEL_75:
              result = REEntityIsBeingDestroyed();
              if ((result & 1) == 0)
              {
                specialized static Entity.entityInfoType(_:)(v15);
                if (v96)
                {
                  v20 = (*(v96 + 232))();
                  v97 = *(v20 + 16);

                  MEMORY[0x1C68F9740](v97, 0);
                  *(v20 + 16) = v15;
                  MEMORY[0x1C68F9740](v15, v20);

                  goto LABEL_78;
                }

                v19 = makeEntity(for:)(v15);
LABEL_8:
                v20 = v19;
LABEL_78:
                type metadata accessor for AnimationPlaybackController();
                v98 = swift_allocObject();
                *(v98 + 40) = 0;
                swift_weakInit();
                *(v98 + 16) = v14;
                swift_weakAssign();

                *(v98 + 32) = REEntityGetLocalId();
                Hasher.init(_seed:)();
                MEMORY[0x1C68F4C10](*(v20 + 16));
                v99 = Hasher._finalize()();

                *(v98 + 24) = v99;
                v100 = String.init(cString:)();
                specialized ActionEventData.init(eventID:coreData:typeName:)(v16, 0, v17, v100, v101, &v197);

                if (!v18)
                {
                  goto LABEL_127;
                }

                if (!REBindPointBoundComponent())
                {
                  v18 = 0;
                  goto LABEL_127;
                }

                v102 = REComponentGetEntity();
                if (REEntityGetSwiftObject())
                {
                  type metadata accessor for Entity();
                  v103 = swift_dynamicCastClassUnconditional();
LABEL_82:
                  v18 = v103;
                  goto LABEL_127;
                }

                result = REEntityIsBeingDestroyed();
                if ((result & 1) == 0)
                {
                  specialized static Entity.entityInfoType(_:)(v102);
                  if (!v141)
                  {
                    v103 = makeEntity(for:)(v102);
                    goto LABEL_82;
                  }

                  v18 = (*(v141 + 232))();
                  v142 = *(v18 + 16);

                  MEMORY[0x1C68F9740](v142, 0);
                  *(v18 + 16) = v102;
                  MEMORY[0x1C68F9740](v102, v18);

LABEL_127:
                  specialized ActionEventData.action<A>()(&v193);
                  v143 = *(&v195 + 1);
                  if (*(&v195 + 1))
                  {
                    v163 = v193;
                    v178 = v13;
                    v181 = a5;
                    v144 = *(&v193 + 1);
                    v145 = v194;
                    v146 = v195;
                    v147 = v196;
                    v148 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0VySSGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0VySSGGMR);
                    *&v187[8] = vcvtq_f64_f32(v7);
                    *(&v188 + 1) = v6.f32[0];
                    v130 = v197;
                    *&v191[24] = v198;
                    *&v191[40] = v199;
                    v183[24] = v145 & 1;
                    *&v184 = v146;
                    *(&v184 + 1) = v143;
                    v185 = v147;
                    LOBYTE(v186) = v148 & 1;
                    *&v183[8] = v163;
                    *&v183[16] = v144;
                    *v183 = v98;
                    *(&v186 + 1) = v18;
                    v187[0] = v164;
                    *&v187[24] = v178;
                    *&v188 = v167;
                    LOBYTE(v189) = 0;
                    *(&v189 + 1) = v173;
                    LOBYTE(v190) = 0;
                    *(&v190 + 1) = v170;
                    v191[0] = 0;
                    *&v191[56] = v200;
                    *&v191[72] = v201;
LABEL_141:
                    *&v191[8] = v130;
                    *&v191[88] = v175;
                    v181(v183);
LABEL_149:

                    v192[12] = *&v191[32];
                    v192[13] = *&v191[48];
                    v192[14] = *&v191[64];
                    v192[15] = *&v191[80];
                    v192[8] = v189;
                    v192[9] = v190;
                    v192[10] = *v191;
                    v192[11] = *&v191[16];
                    v192[4] = v186;
                    v192[5] = *v187;
                    v192[6] = *&v187[16];
                    v192[7] = v188;
                    v192[0] = *v183;
                    v192[1] = *&v183[16];
                    v192[2] = v184;
                    v192[3] = v185;
                    outlined destroy of BodyTrackingComponent?(v192, &_s17RealityFoundation11ActionEventVyAA017SetEntityPropertyC0VySSGGMd, &_s17RealityFoundation11ActionEventVyAA017SetEntityPropertyC0VySSGGMR);
                    return 0;
                  }

LABEL_150:

                  outlined consume of SetEntityPropertyAction<String>?(v193, *(&v193 + 1), v194, v195, 0, v196, *(&v196 + 1));
                  return 0;
                }

                goto LABEL_176;
              }

              goto LABEL_170;
            }

LABEL_144:
            specialized static Entity.entityInfoType(_:)(v95);
            if (v159)
            {
              v16 = (*(v159 + 232))();
              v160 = *(v16 + 16);

              MEMORY[0x1C68F9740](v160, 0);
              *(v16 + 16) = v95;
              MEMORY[0x1C68F9740](v95, v16);

              goto LABEL_146;
            }

            v121 = makeEntity(for:)(v95);
            goto LABEL_107;
          }

LABEL_108:
          v16 = 0;
        }

LABEL_146:
        v161 = String.init(cString:)();
        specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v15, v161, v162, &v197);

        specialized ActionEventData.action<A>()(&v193);
        if (!*(&v195 + 1))
        {
          goto LABEL_150;
        }

        *&v183[8] = v193;
        v185 = v196;
        *&v191[24] = v198;
        *&v191[40] = v199;
        *&v191[56] = v200;
        *&v191[72] = v201;
        v183[24] = v194 & 1;
        v184 = v195;
        LOBYTE(v186) = 1;
        *v183 = v17;
        *(&v186 + 1) = v16;
        v187[0] = 0;
        *&v187[8] = 0;
        *&v187[16] = 0;
        v188 = 0uLL;
        *&v187[24] = v13;
        LOBYTE(v189) = 1;
        *(&v189 + 1) = 0;
        LOBYTE(v190) = 1;
        *(&v190 + 1) = 0;
        v191[0] = 1;
        *&v191[8] = v197;
        *&v191[88] = v182;
LABEL_148:
        a5(v183);
        goto LABEL_149;
      }

      v69 = makeEntity(for:)(v68);
    }

    v70 = v69;
    goto LABEL_70;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static AnimationLogger.logger);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *&v192[0] = v25;
    *v24 = 136315138;
    *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002FLL, 0x80000001C18E4580, v192);
    _os_log_impl(&dword_1C1358000, v22, v23, "%s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x1C6902A30](v25, -1, -1);
    MEMORY[0x1C6902A30](v24, -1, -1);
  }

  return 1;
}

{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (a4 <= 15)
    {
      if (a4 <= 3)
      {
        if (a4 != 1)
        {
          if (a4 == 2)
          {
            v13 = Strong;
            v15 = *a2;
            v14 = a2[1];
            v16 = a2[4];
            v17 = a2[5];
            v6.i32[0] = *(a2 + 14);
            v171 = a2[8];
            v174 = a2[6];
            v168 = a2[9];
            v18 = a2[11];
            v7 = a2[12];
            v167 = *(a2 + 104);
            v177 = a2[10];
            if (REEntityGetSwiftObject())
            {
              type metadata accessor for Entity();
              v19 = swift_dynamicCastClassUnconditional();
              goto LABEL_8;
            }

            goto LABEL_75;
          }

LABEL_42:

          return 0;
        }

        v48 = Strong;
        v50 = *a2;
        v49 = a2[1];
        v51 = a2[4];
        v52 = a2[5];
        v53 = a2[8];
        v54 = a2[9];
        v170 = *(a2 + 80);
        v173 = a2[11];
        v176 = a2[7];
        v178 = a2[12];
        v179 = a2[6];
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v55 = swift_dynamicCastClassUnconditional();
          goto LABEL_32;
        }

        result = REEntityIsBeingDestroyed();
        if ((result & 1) == 0)
        {
          specialized static Entity.entityInfoType(_:)(v50);
          if (v71)
          {
            v56 = (*(v71 + 232))();
            v72 = *(v56 + 16);

            MEMORY[0x1C68F9740](v72, 0);
            *(v56 + 16) = v50;
            MEMORY[0x1C68F9740](v50, v56);

LABEL_46:
            type metadata accessor for AnimationPlaybackController();
            v73 = swift_allocObject();
            *(v73 + 40) = 0;
            swift_weakInit();
            *(v73 + 16) = v49;
            swift_weakAssign();

            *(v73 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v56 + 16));
            v74 = Hasher._finalize()();

            *(v73 + 24) = v74;
            v75 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(v51, 0, v52, v75, v76, &v199);

            if (!v53)
            {
              goto LABEL_116;
            }

            if (REBindPointBoundComponent())
            {
              Entity = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
                type metadata accessor for Entity();
                v78 = swift_dynamicCastClassUnconditional();
LABEL_50:
                v53 = v78;
                goto LABEL_116;
              }

              result = REEntityIsBeingDestroyed();
              if (result)
              {
LABEL_174:
                __break(1u);
                goto LABEL_175;
              }

              specialized static Entity.entityInfoType(_:)(Entity);
              if (!v122)
              {
                v78 = makeEntity(for:)(Entity);
                goto LABEL_50;
              }

              v53 = (*(v122 + 232))();
              v123 = *(v53 + 16);

              MEMORY[0x1C68F9740](v123, 0);
              *(v53 + 16) = Entity;
              MEMORY[0x1C68F9740](Entity, v53);
            }

            else
            {
              v53 = 0;
            }

LABEL_116:
            specialized ActionEventData.action<A>()(&v195);
            v124 = *(&v197 + 1);
            if (*(&v197 + 1))
            {
              v125 = v195;
              v126 = v196;
              v184 = a5;
              v127 = v197;
              v128 = v48;
              v129 = v198;
              v130 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0VySbGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0VySbGGMR);
              *&v189[8] = vcvtq_f64_f32(v54);
              *&v193[24] = v200;
              *&v193[40] = v201;
              *&v193[56] = v202;
              *&v193[72] = v203;
              v186[24] = v126 & 1;
              *&v187 = v127;
              *(&v187 + 1) = v124;
              LOBYTE(v188) = v129;
              BYTE1(v188) = v130 & 1;
              *&v186[8] = v125;
              *v186 = v73;
              *(&v188 + 1) = v53;
              v189[0] = v170;
              *&v189[24] = v128;
              *&v190 = v176;
              *(&v190 + 1) = 0xBFF0000000000000;
              LOBYTE(v191) = 0;
              *(&v191 + 1) = v173;
              LOBYTE(v192) = 0;
              v131 = v179;
              *(&v192 + 1) = v178;
              v193[0] = 0;
              *&v193[8] = v199;
LABEL_141:
              *&v193[88] = v131;
              v184(v186);
LABEL_149:

              v194[12] = *&v193[48];
              v194[13] = *&v193[64];
              v194[14] = *&v193[80];
              v194[8] = v192;
              v194[9] = *v193;
              v194[10] = *&v193[16];
              v194[11] = *&v193[32];
              v194[4] = *v189;
              v194[5] = *&v189[16];
              v194[6] = v190;
              v194[7] = v191;
              v194[0] = *v186;
              v194[1] = *&v186[16];
              v194[2] = v187;
              v194[3] = v188;
              outlined destroy of BodyTrackingComponent?(v194, &_s17RealityFoundation11ActionEventVyAA017SetEntityPropertyC0VySbGGMd, &_s17RealityFoundation11ActionEventVyAA017SetEntityPropertyC0VySbGGMR);
              return 0;
            }

            goto LABEL_150;
          }

          v55 = makeEntity(for:)(v50);
LABEL_32:
          v56 = v55;
          goto LABEL_46;
        }

        __break(1u);
        goto LABEL_167;
      }

      if (a4 != 4)
      {
        if (a4 != 8)
        {
          goto LABEL_42;
        }

        v35 = Strong;
        v37 = *a2;
        v36 = a2[1];
        v38 = a2[4];
        v39 = a2[5];
        v40 = a2[7];
        v41 = a2[8];
        v169 = *(a2 + 72);
        v172 = a2[10];
        v175 = a2[11];
        v177 = a2[6];
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v42 = swift_dynamicCastClassUnconditional();
        }

        else
        {
          result = REEntityIsBeingDestroyed();
          if (result)
          {
LABEL_172:
            __break(1u);
            goto LABEL_173;
          }

          specialized static Entity.entityInfoType(_:)(v37);
          if (v110)
          {
            v43 = (*(v110 + 232))();
            v111 = *(v43 + 16);

            MEMORY[0x1C68F9740](v111, 0);
            *(v43 + 16) = v37;
            MEMORY[0x1C68F9740](v37, v43);

LABEL_95:
            type metadata accessor for AnimationPlaybackController();
            v112 = swift_allocObject();
            *(v112 + 40) = 0;
            swift_weakInit();
            *(v112 + 16) = v36;
            swift_weakAssign();

            *(v112 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v43 + 16));
            v113 = Hasher._finalize()();

            *(v112 + 24) = v113;
            v114 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(v38, 0, v39, v114, v115, &v199);

            if (v40)
            {
              if (REBindPointBoundComponent())
              {
                v116 = REComponentGetEntity();
                if (REEntityGetSwiftObject())
                {
                  type metadata accessor for Entity();
                  v117 = swift_dynamicCastClassUnconditional();
                }

                else
                {
                  result = REEntityIsBeingDestroyed();
                  if (result)
                  {
LABEL_178:
                    __break(1u);
                    goto LABEL_179;
                  }

                  specialized static Entity.entityInfoType(_:)(v116);
                  if (v154)
                  {
                    v40 = (*(v154 + 232))();
                    v155 = *(v40 + 16);

                    MEMORY[0x1C68F9740](v155, 0);
                    *(v40 + 16) = v116;
                    MEMORY[0x1C68F9740](v116, v40);

                    goto LABEL_137;
                  }

                  v117 = makeEntity(for:)(v116);
                }

                v40 = v117;
              }

              else
              {
                v40 = 0;
              }
            }

LABEL_137:
            specialized ActionEventData.action<A>()(&v195);
            v156 = *(&v197 + 1);
            if (!*(&v197 + 1))
            {
              goto LABEL_150;
            }

            v157 = v195;
            v182 = v35;
            v184 = a5;
            v158 = *(&v195 + 1);
            v159 = v196;
            v160 = v197;
            v161 = v198;
            v162 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0VySbGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0VySbGGMR);
            *&v189[8] = vcvtq_f64_f32(v41);
            v141 = v199;
            *&v193[24] = v200;
            *&v193[40] = v201;
            *&v193[56] = v202;
            *&v193[72] = v203;
            *&v186[8] = v157;
            *&v186[16] = v158;
            v186[24] = v159 & 1;
            *&v187 = v160;
            *(&v187 + 1) = v156;
            LOBYTE(v188) = v161;
            BYTE1(v188) = v162 & 1;
            *v186 = v112;
            *(&v188 + 1) = v40;
            v189[0] = v169;
            v190 = 0uLL;
            *&v189[24] = v182;
            LOBYTE(v191) = 1;
            v142 = v175;
            *(&v191 + 1) = v172;
            goto LABEL_139;
          }

          v42 = makeEntity(for:)(v37);
        }

        v43 = v42;
        goto LABEL_95;
      }

      v27 = Strong;
      v63 = *a2;
      v57 = a2[1];
      v59 = a2[4];
      v64 = a2[5];
      v32 = a2[8];
      v174 = a2[7];
      v6 = a2[9];
      LOBYTE(v171) = *(a2 + 80);
      v177 = a2[6];
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v65 = swift_dynamicCastClassUnconditional();
        goto LABEL_38;
      }

LABEL_59:
      result = REEntityIsBeingDestroyed();
      if (result)
      {
LABEL_168:
        __break(1u);
        goto LABEL_169;
      }

      specialized static Entity.entityInfoType(_:)(v63);
      if (v84)
      {
        v66 = (*(v84 + 232))();
        v85 = *(v66 + 16);

        MEMORY[0x1C68F9740](v85, 0);
        *(v66 + 16) = v63;
        MEMORY[0x1C68F9740](v63, v66);

LABEL_62:
        type metadata accessor for AnimationPlaybackController();
        v86 = swift_allocObject();
        *(v86 + 40) = 0;
        swift_weakInit();
        *(v86 + 16) = v57;
        swift_weakAssign();

        *(v86 + 32) = REEntityGetLocalId();
        Hasher.init(_seed:)();
        MEMORY[0x1C68F4C10](*(v66 + 16));
        v87 = Hasher._finalize()();

        *(v86 + 24) = v87;
        v88 = String.init(cString:)();
        specialized ActionEventData.init(eventID:coreData:typeName:)(v59, 0, v64, v88, v89, &v199);

        if (v32)
        {
          if (REBindPointBoundComponent())
          {
            v90 = REComponentGetEntity();
            if (REEntityGetSwiftObject())
            {
              type metadata accessor for Entity();
              v91 = swift_dynamicCastClassUnconditional();
            }

            else
            {
              result = REEntityIsBeingDestroyed();
              if (result)
              {
LABEL_175:
                __break(1u);
LABEL_176:
                __break(1u);
                goto LABEL_177;
              }

              specialized static Entity.entityInfoType(_:)(v90);
              if (v132)
              {
                v32 = (*(v132 + 232))();
                v133 = *(v32 + 16);

                MEMORY[0x1C68F9740](v133, 0);
                *(v32 + 16) = v90;
                MEMORY[0x1C68F9740](v90, v32);

                goto LABEL_122;
              }

              v91 = makeEntity(for:)(v90);
            }

            v32 = v91;
          }

          else
          {
            v32 = 0;
          }
        }

LABEL_122:
        specialized ActionEventData.action<A>()(&v195);
        v134 = *(&v197 + 1);
        if (!*(&v197 + 1))
        {
          goto LABEL_150;
        }

        v135 = v195;
        v180 = v27;
        v184 = a5;
        v136 = *(&v195 + 1);
        v137 = v196;
        v138 = v197;
        v139 = v198;
        v140 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0VySbGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0VySbGGMR);
        *&v189[8] = vcvtq_f64_f32(v6);
        v141 = v199;
        *&v193[24] = v200;
        *&v193[40] = v201;
        *&v193[56] = v202;
        *&v193[72] = v203;
        *&v186[8] = v135;
        *&v186[16] = v136;
        v186[24] = v137 & 1;
        *&v187 = v138;
        *(&v187 + 1) = v134;
        LOBYTE(v188) = v139;
        BYTE1(v188) = v140 & 1;
        *v186 = v86;
        *(&v188 + 1) = v32;
        v189[0] = v171;
        *&v189[24] = v180;
        *&v190 = v174;
        v142 = 0xBFF0000000000000;
        *(&v190 + 1) = 0xBFF0000000000000;
        LOBYTE(v191) = 0;
        *(&v191 + 1) = 0xBFF0000000000000;
LABEL_139:
        LOBYTE(v192) = 0;
        *(&v192 + 1) = v142;
        v193[0] = 0;
        goto LABEL_140;
      }

      v65 = makeEntity(for:)(v63);
LABEL_38:
      v66 = v65;
      goto LABEL_62;
    }

    if (a4 <= 63)
    {
      if (a4 != 16)
      {
        if (a4 != 32)
        {
          goto LABEL_42;
        }

        v27 = Strong;
        v29 = *a2;
        v28 = a2[1];
        v30 = a2[5];
        v31 = a2[6];
        v32 = a2[7];
        v183 = a2[4];
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v33 = swift_dynamicCastClassUnconditional();
        }

        else
        {
          result = REEntityIsBeingDestroyed();
          if (result)
          {
LABEL_171:
            __break(1u);
            goto LABEL_172;
          }

          specialized static Entity.entityInfoType(_:)(v29);
          if (v104)
          {
            v34 = (*(v104 + 232))();
            v105 = *(v34 + 16);

            MEMORY[0x1C68F9740](v105, 0);
            *(v34 + 16) = v29;
            MEMORY[0x1C68F9740](v29, v34);

LABEL_86:
            type metadata accessor for AnimationPlaybackController();
            v63 = swift_allocObject();
            *(v63 + 40) = 0;
            swift_weakInit();
            *(v63 + 16) = v28;
            swift_weakAssign();

            *(v63 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v34 + 16));
            v106 = Hasher._finalize()();

            *(v63 + 24) = v106;
            v107 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v30, v107, v108, &v199);

            if (v32)
            {
              if (REBindPointBoundComponent())
              {
                v64 = REComponentGetEntity();
                if (REEntityGetSwiftObject())
                {
                  goto LABEL_89;
                }

                result = REEntityIsBeingDestroyed();
                if (result)
                {
LABEL_177:
                  __break(1u);
                  goto LABEL_178;
                }

                goto LABEL_130;
              }

              goto LABEL_91;
            }

            goto LABEL_132;
          }

          v33 = makeEntity(for:)(v29);
        }

        v34 = v33;
        goto LABEL_86;
      }

      v27 = Strong;
      v58 = *a2;
      v57 = a2[1];
      v59 = a2[3];
      v60 = a2[5];
      v31 = a2[6];
      v32 = a2[7];
      v183 = a2[4];
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v61 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        result = REEntityIsBeingDestroyed();
        if (result)
        {
LABEL_167:
          __break(1u);
          goto LABEL_168;
        }

        specialized static Entity.entityInfoType(_:)(v58);
        if (v79)
        {
          v62 = (*(v79 + 232))();
          v80 = *(v62 + 16);

          MEMORY[0x1C68F9740](v80, 0);
          *(v62 + 16) = v58;
          MEMORY[0x1C68F9740](v58, v62);

LABEL_54:
          type metadata accessor for AnimationPlaybackController();
          v63 = swift_allocObject();
          *(v63 + 40) = 0;
          swift_weakInit();
          *(v63 + 16) = v57;
          swift_weakAssign();

          *(v63 + 32) = REEntityGetLocalId();
          Hasher.init(_seed:)();
          MEMORY[0x1C68F4C10](*(v62 + 16));
          v81 = Hasher._finalize()();

          *(v63 + 24) = v81;
          v82 = String.init(cString:)();
          specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v60, v82, v83, &v199);

          if (v32)
          {
            if (REBindPointBoundComponent())
            {
              v64 = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
LABEL_89:
                type metadata accessor for Entity();
                v109 = swift_dynamicCastClassUnconditional();
LABEL_90:
                v32 = v109;
                goto LABEL_132;
              }

              if (REEntityIsBeingDestroyed())
              {
                __break(1u);
                goto LABEL_59;
              }

LABEL_130:
              specialized static Entity.entityInfoType(_:)(v64);
              if (v152)
              {
                v32 = (*(v152 + 232))();
                v153 = *(v32 + 16);

                MEMORY[0x1C68F9740](v153, 0);
                *(v32 + 16) = v64;
                MEMORY[0x1C68F9740](v64, v32);

                goto LABEL_132;
              }

              v109 = makeEntity(for:)(v64);
              goto LABEL_90;
            }

LABEL_91:
            v32 = 0;
          }

LABEL_132:
          specialized ActionEventData.action<A>()(&v195);
          if (!*(&v197 + 1))
          {
            goto LABEL_150;
          }

          *&v186[8] = v195;
          *&v193[24] = v200;
          *&v193[40] = v201;
          *&v193[56] = v202;
          *&v193[72] = v203;
          v186[24] = v196 & 1;
          v187 = v197;
          LOBYTE(v188) = v198;
          BYTE1(v188) = 1;
          *v186 = v63;
          *(&v188 + 1) = v32;
          v189[0] = 0;
          *&v189[8] = 0;
          *&v189[16] = 0;
          v190 = 0uLL;
          *&v189[24] = v27;
          LOBYTE(v191) = 1;
          *(&v191 + 1) = v183;
          LOBYTE(v192) = 0;
          *(&v192 + 1) = 0;
          v193[0] = 1;
          *&v193[8] = v199;
          *&v193[88] = v31;
          goto LABEL_148;
        }

        v61 = makeEntity(for:)(v58);
      }

      v62 = v61;
      goto LABEL_54;
    }

    if (a4 != 64)
    {
      if (a4 != 128)
      {
        goto LABEL_42;
      }

      v13 = Strong;
      v45 = *a2;
      v44 = a2[1];
      v15 = a2[3];
      v16 = a2[5];
      v185 = a2[4];
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v46 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        result = REEntityIsBeingDestroyed();
        if (result)
        {
LABEL_173:
          __break(1u);
          goto LABEL_174;
        }

        specialized static Entity.entityInfoType(_:)(v45);
        if (v118)
        {
          v47 = (*(v118 + 232))();
          v119 = *(v47 + 16);

          MEMORY[0x1C68F9740](v119, 0);
          *(v47 + 16) = v45;
          MEMORY[0x1C68F9740](v45, v47);

LABEL_103:
          type metadata accessor for AnimationPlaybackController();
          v17 = swift_allocObject();
          *(v17 + 40) = 0;
          swift_weakInit();
          *(v17 + 16) = v44;
          swift_weakAssign();

          *(v17 + 32) = REEntityGetLocalId();
          Hasher.init(_seed:)();
          MEMORY[0x1C68F4C10](*(v47 + 16));
          v120 = Hasher._finalize()();

          *(v17 + 24) = v120;
          if (v16)
          {
            if (REBindPointBoundComponent())
            {
              v95 = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
                goto LABEL_106;
              }

              result = REEntityIsBeingDestroyed();
              if (result)
              {
LABEL_179:
                __break(1u);
                return result;
              }

              goto LABEL_144;
            }

            goto LABEL_108;
          }

          goto LABEL_146;
        }

        v46 = makeEntity(for:)(v45);
      }

      v47 = v46;
      goto LABEL_103;
    }

    v13 = Strong;
    v68 = *a2;
    v67 = a2[1];
    v18 = a2[2];
    v15 = a2[3];
    v16 = a2[5];
    v185 = a2[4];
    if (REEntityGetSwiftObject())
    {
      type metadata accessor for Entity();
      v69 = swift_dynamicCastClassUnconditional();
    }

    else
    {
      result = REEntityIsBeingDestroyed();
      if (result)
      {
LABEL_169:
        __break(1u);
LABEL_170:
        __break(1u);
        goto LABEL_171;
      }

      specialized static Entity.entityInfoType(_:)(v68);
      if (v92)
      {
        v70 = (*(v92 + 232))();
        v93 = *(v70 + 16);

        MEMORY[0x1C68F9740](v93, 0);
        *(v70 + 16) = v68;
        MEMORY[0x1C68F9740](v68, v70);

LABEL_70:
        type metadata accessor for AnimationPlaybackController();
        v17 = swift_allocObject();
        *(v17 + 40) = 0;
        swift_weakInit();
        *(v17 + 16) = v67;
        swift_weakAssign();

        *(v17 + 32) = REEntityGetLocalId();
        Hasher.init(_seed:)();
        MEMORY[0x1C68F4C10](*(v70 + 16));
        v94 = Hasher._finalize()();

        *(v17 + 24) = v94;
        if (v16)
        {
          if (REBindPointBoundComponent())
          {
            v14 = a6;
            v95 = REComponentGetEntity();
            if (REEntityGetSwiftObject())
            {
LABEL_106:
              type metadata accessor for Entity();
              v121 = swift_dynamicCastClassUnconditional();
LABEL_107:
              v16 = v121;
              goto LABEL_146;
            }

            if (REEntityIsBeingDestroyed())
            {
              __break(1u);
LABEL_75:
              result = REEntityIsBeingDestroyed();
              if ((result & 1) == 0)
              {
                specialized static Entity.entityInfoType(_:)(v15);
                if (v96)
                {
                  v20 = (*(v96 + 232))();
                  v97 = *(v20 + 16);

                  MEMORY[0x1C68F9740](v97, 0);
                  *(v20 + 16) = v15;
                  MEMORY[0x1C68F9740](v15, v20);

                  goto LABEL_78;
                }

                v19 = makeEntity(for:)(v15);
LABEL_8:
                v20 = v19;
LABEL_78:
                type metadata accessor for AnimationPlaybackController();
                v98 = swift_allocObject();
                *(v98 + 40) = 0;
                swift_weakInit();
                *(v98 + 16) = v14;
                swift_weakAssign();

                *(v98 + 32) = REEntityGetLocalId();
                Hasher.init(_seed:)();
                MEMORY[0x1C68F4C10](*(v20 + 16));
                v99 = Hasher._finalize()();

                *(v98 + 24) = v99;
                v100 = String.init(cString:)();
                specialized ActionEventData.init(eventID:coreData:typeName:)(v16, 0, v17, v100, v101, &v199);

                if (!v18)
                {
                  goto LABEL_127;
                }

                if (!REBindPointBoundComponent())
                {
                  v18 = 0;
                  goto LABEL_127;
                }

                v102 = REComponentGetEntity();
                if (REEntityGetSwiftObject())
                {
                  type metadata accessor for Entity();
                  v103 = swift_dynamicCastClassUnconditional();
LABEL_82:
                  v18 = v103;
                  goto LABEL_127;
                }

                result = REEntityIsBeingDestroyed();
                if ((result & 1) == 0)
                {
                  specialized static Entity.entityInfoType(_:)(v102);
                  if (!v143)
                  {
                    v103 = makeEntity(for:)(v102);
                    goto LABEL_82;
                  }

                  v18 = (*(v143 + 232))();
                  v144 = *(v18 + 16);

                  MEMORY[0x1C68F9740](v144, 0);
                  *(v18 + 16) = v102;
                  MEMORY[0x1C68F9740](v102, v18);

LABEL_127:
                  specialized ActionEventData.action<A>()(&v195);
                  v145 = *(&v197 + 1);
                  if (*(&v197 + 1))
                  {
                    v146 = v195;
                    v181 = v13;
                    v184 = a5;
                    v147 = *(&v195 + 1);
                    v148 = v196;
                    v149 = v197;
                    v150 = v198;
                    v151 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0VySbGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0VySbGGMR);
                    *&v189[8] = vcvtq_f64_f32(v7);
                    *(&v190 + 1) = v6.f32[0];
                    v141 = v199;
                    *&v193[24] = v200;
                    *&v193[40] = v201;
                    *&v186[8] = v146;
                    *&v186[16] = v147;
                    v186[24] = v148 & 1;
                    *&v187 = v149;
                    *(&v187 + 1) = v145;
                    LOBYTE(v188) = v150;
                    BYTE1(v188) = v151 & 1;
                    *v186 = v98;
                    *(&v188 + 1) = v18;
                    v189[0] = v167;
                    *&v189[24] = v181;
                    *&v190 = v168;
                    LOBYTE(v191) = 0;
                    *(&v191 + 1) = v174;
                    LOBYTE(v192) = 0;
                    *(&v192 + 1) = v171;
                    v193[0] = 0;
                    *&v193[56] = v202;
                    *&v193[72] = v203;
LABEL_140:
                    *&v193[8] = v141;
                    v131 = v177;
                    goto LABEL_141;
                  }

LABEL_150:

                  outlined consume of SetEntityPropertyAction<Bool>?(v195, *(&v195 + 1), v196, v197, 0);
                  return 0;
                }

                goto LABEL_176;
              }

              goto LABEL_170;
            }

LABEL_144:
            specialized static Entity.entityInfoType(_:)(v95);
            if (v163)
            {
              v16 = (*(v163 + 232))();
              v164 = *(v16 + 16);

              MEMORY[0x1C68F9740](v164, 0);
              *(v16 + 16) = v95;
              MEMORY[0x1C68F9740](v95, v16);

              goto LABEL_146;
            }

            v121 = makeEntity(for:)(v95);
            goto LABEL_107;
          }

LABEL_108:
          v16 = 0;
        }

LABEL_146:
        v165 = String.init(cString:)();
        specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v15, v165, v166, &v199);

        specialized ActionEventData.action<A>()(&v195);
        if (!*(&v197 + 1))
        {
          goto LABEL_150;
        }

        *&v186[8] = v195;
        *&v193[24] = v200;
        *&v193[40] = v201;
        *&v193[56] = v202;
        *&v193[72] = v203;
        v186[24] = v196 & 1;
        v187 = v197;
        LOBYTE(v188) = v198;
        BYTE1(v188) = 1;
        *v186 = v17;
        *(&v188 + 1) = v16;
        v189[0] = 0;
        *&v189[8] = 0;
        *&v189[16] = 0;
        v190 = 0uLL;
        *&v189[24] = v13;
        LOBYTE(v191) = 1;
        *(&v191 + 1) = 0;
        LOBYTE(v192) = 1;
        *(&v192 + 1) = 0;
        v193[0] = 1;
        *&v193[8] = v199;
        *&v193[88] = v185;
LABEL_148:
        a5(v186);
        goto LABEL_149;
      }

      v69 = makeEntity(for:)(v68);
    }

    v70 = v69;
    goto LABEL_70;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static AnimationLogger.logger);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *&v194[0] = v25;
    *v24 = 136315138;
    *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002FLL, 0x80000001C18E4580, v194);
    _os_log_impl(&dword_1C1358000, v22, v23, "%s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x1C6902A30](v25, -1, -1);
    MEMORY[0x1C6902A30](v24, -1, -1);
  }

  return 1;
}

{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (a4 <= 15)
    {
      if (a4 <= 3)
      {
        if (a4 != 1)
        {
          if (a4 == 2)
          {
            v13 = Strong;
            v15 = *a2;
            v14 = a2[1];
            v16 = a2[4];
            v17 = a2[5];
            v6.i32[0] = *(a2 + 14);
            v175 = a2[8];
            v178 = a2[6];
            v171 = a2[9];
            v18 = a2[11];
            v7 = a2[12];
            v168 = *(a2 + 104);
            v180 = a2[10];
            if (REEntityGetSwiftObject())
            {
              type metadata accessor for Entity();
              v19 = swift_dynamicCastClassUnconditional();
              goto LABEL_8;
            }

            goto LABEL_75;
          }

LABEL_42:

          return 0;
        }

        v48 = Strong;
        v50 = *a2;
        v49 = a2[1];
        v51 = a2[4];
        v52 = a2[5];
        v53 = a2[8];
        v54 = a2[9];
        v169 = *(a2 + 80);
        v173 = a2[11];
        v177 = a2[7];
        v179 = a2[12];
        v180 = a2[6];
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v55 = swift_dynamicCastClassUnconditional();
          goto LABEL_32;
        }

        result = REEntityIsBeingDestroyed();
        if ((result & 1) == 0)
        {
          specialized static Entity.entityInfoType(_:)(v50);
          if (v71)
          {
            v56 = (*(v71 + 232))();
            v72 = *(v56 + 16);

            MEMORY[0x1C68F9740](v72, 0);
            *(v56 + 16) = v50;
            MEMORY[0x1C68F9740](v50, v56);

LABEL_46:
            type metadata accessor for AnimationPlaybackController();
            v73 = swift_allocObject();
            *(v73 + 40) = 0;
            swift_weakInit();
            *(v73 + 16) = v49;
            swift_weakAssign();

            *(v73 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v56 + 16));
            v74 = Hasher._finalize()();

            *(v73 + 24) = v74;
            v75 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(v51, 0, v52, v75, v76, &v202);

            if (v53)
            {
              if (REBindPointBoundComponent())
              {
                Entity = REComponentGetEntity();
                if (REEntityGetSwiftObject())
                {
                  type metadata accessor for Entity();
                  v78 = swift_dynamicCastClassUnconditional();
                }

                else
                {
                  result = REEntityIsBeingDestroyed();
                  if (result)
                  {
LABEL_174:
                    __break(1u);
                    goto LABEL_175;
                  }

                  specialized static Entity.entityInfoType(_:)(Entity);
                  if (v122)
                  {
                    v53 = (*(v122 + 232))();
                    v123 = *(v53 + 16);

                    MEMORY[0x1C68F9740](v123, 0);
                    *(v53 + 16) = Entity;
                    MEMORY[0x1C68F9740](Entity, v53);

                    goto LABEL_116;
                  }

                  v78 = makeEntity(for:)(Entity);
                }

                v53 = v78;
              }

              else
              {
                v53 = 0;
              }
            }

LABEL_116:
            specialized ActionEventData.action<A>()(&v197);
            v124 = *(&v199 + 1);
            if (!*(&v199 + 1))
            {
              goto LABEL_150;
            }

            v167 = v197;
            v181 = v48;
            v186 = a5;
            v125 = *(&v197 + 1);
            v126 = v198;
            v127 = v199;
            v128 = v201;
            v129 = v200;
            v130 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0VySfGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0VySfGGMR);
            *&v191[8] = vcvtq_f64_f32(v54);
            v131 = v202;
            *&v195[24] = v203;
            *&v195[40] = v204;
            *&v195[56] = v205;
            *&v195[72] = v206;
            v188[24] = v126 & 1;
            *&v189 = v127;
            *(&v189 + 1) = v124;
            LODWORD(v190) = v129;
            BYTE4(v190) = v128 & 1;
            BYTE5(v190) = v130 & 1;
            *&v188[8] = v167;
            *&v188[16] = v125;
            *v188 = v73;
            *(&v190 + 1) = v53;
            v191[0] = v169;
            *&v191[24] = v181;
            *&v192 = v177;
            *(&v192 + 1) = 0xBFF0000000000000;
            LOBYTE(v193) = 0;
            v132 = v173;
            goto LABEL_139;
          }

          v55 = makeEntity(for:)(v50);
LABEL_32:
          v56 = v55;
          goto LABEL_46;
        }

        __break(1u);
        goto LABEL_167;
      }

      if (a4 != 4)
      {
        if (a4 != 8)
        {
          goto LABEL_42;
        }

        v35 = Strong;
        v37 = *a2;
        v36 = a2[1];
        v38 = a2[4];
        v39 = a2[5];
        v40 = a2[7];
        v41 = a2[8];
        v172 = *(a2 + 72);
        v176 = a2[10];
        v179 = a2[11];
        v180 = a2[6];
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v42 = swift_dynamicCastClassUnconditional();
        }

        else
        {
          result = REEntityIsBeingDestroyed();
          if (result)
          {
LABEL_172:
            __break(1u);
            goto LABEL_173;
          }

          specialized static Entity.entityInfoType(_:)(v37);
          if (v110)
          {
            v43 = (*(v110 + 232))();
            v111 = *(v43 + 16);

            MEMORY[0x1C68F9740](v111, 0);
            *(v43 + 16) = v37;
            MEMORY[0x1C68F9740](v37, v43);

LABEL_95:
            type metadata accessor for AnimationPlaybackController();
            v112 = swift_allocObject();
            *(v112 + 40) = 0;
            swift_weakInit();
            *(v112 + 16) = v36;
            swift_weakAssign();

            *(v112 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v43 + 16));
            v113 = Hasher._finalize()();

            *(v112 + 24) = v113;
            v114 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(v38, 0, v39, v114, v115, &v202);

            if (v40)
            {
              if (REBindPointBoundComponent())
              {
                v116 = REComponentGetEntity();
                if (REEntityGetSwiftObject())
                {
                  type metadata accessor for Entity();
                  v117 = swift_dynamicCastClassUnconditional();
                }

                else
                {
                  result = REEntityIsBeingDestroyed();
                  if (result)
                  {
LABEL_178:
                    __break(1u);
                    goto LABEL_179;
                  }

                  specialized static Entity.entityInfoType(_:)(v116);
                  if (v154)
                  {
                    v40 = (*(v154 + 232))();
                    v155 = *(v40 + 16);

                    MEMORY[0x1C68F9740](v155, 0);
                    *(v40 + 16) = v116;
                    MEMORY[0x1C68F9740](v116, v40);

                    goto LABEL_137;
                  }

                  v117 = makeEntity(for:)(v116);
                }

                v40 = v117;
              }

              else
              {
                v40 = 0;
              }
            }

LABEL_137:
            specialized ActionEventData.action<A>()(&v197);
            v156 = *(&v199 + 1);
            if (!*(&v199 + 1))
            {
              goto LABEL_150;
            }

            v170 = v197;
            v184 = v35;
            v186 = a5;
            v157 = *(&v197 + 1);
            v158 = v198;
            v159 = v199;
            v160 = v201;
            v161 = v200;
            v162 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0VySfGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0VySfGGMR);
            *&v191[8] = vcvtq_f64_f32(v41);
            v131 = v202;
            *&v195[24] = v203;
            *&v195[40] = v204;
            *&v195[56] = v205;
            *&v195[72] = v206;
            v188[24] = v158 & 1;
            *&v189 = v159;
            *(&v189 + 1) = v156;
            LODWORD(v190) = v161;
            BYTE4(v190) = v160 & 1;
            BYTE5(v190) = v162 & 1;
            *&v188[8] = v170;
            *&v188[16] = v157;
            *v188 = v112;
            *(&v190 + 1) = v40;
            v191[0] = v172;
            v192 = 0uLL;
            *&v191[24] = v184;
            LOBYTE(v193) = 1;
            v132 = v176;
LABEL_139:
            *(&v193 + 1) = v132;
            LOBYTE(v194) = 0;
            v142 = v179;
            goto LABEL_140;
          }

          v42 = makeEntity(for:)(v37);
        }

        v43 = v42;
        goto LABEL_95;
      }

      v27 = Strong;
      v63 = *a2;
      v57 = a2[1];
      v59 = a2[4];
      v64 = a2[5];
      v32 = a2[8];
      v178 = a2[7];
      v6 = a2[9];
      LOBYTE(v175) = *(a2 + 80);
      v180 = a2[6];
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v65 = swift_dynamicCastClassUnconditional();
        goto LABEL_38;
      }

LABEL_59:
      result = REEntityIsBeingDestroyed();
      if (result)
      {
LABEL_168:
        __break(1u);
        goto LABEL_169;
      }

      specialized static Entity.entityInfoType(_:)(v63);
      if (v84)
      {
        v66 = (*(v84 + 232))();
        v85 = *(v66 + 16);

        MEMORY[0x1C68F9740](v85, 0);
        *(v66 + 16) = v63;
        MEMORY[0x1C68F9740](v63, v66);

LABEL_62:
        type metadata accessor for AnimationPlaybackController();
        v86 = swift_allocObject();
        *(v86 + 40) = 0;
        swift_weakInit();
        *(v86 + 16) = v57;
        swift_weakAssign();

        *(v86 + 32) = REEntityGetLocalId();
        Hasher.init(_seed:)();
        MEMORY[0x1C68F4C10](*(v66 + 16));
        v87 = Hasher._finalize()();

        *(v86 + 24) = v87;
        v88 = String.init(cString:)();
        specialized ActionEventData.init(eventID:coreData:typeName:)(v59, 0, v64, v88, v89, &v202);

        if (v32)
        {
          if (REBindPointBoundComponent())
          {
            v90 = REComponentGetEntity();
            if (REEntityGetSwiftObject())
            {
              type metadata accessor for Entity();
              v91 = swift_dynamicCastClassUnconditional();
            }

            else
            {
              result = REEntityIsBeingDestroyed();
              if (result)
              {
LABEL_175:
                __break(1u);
LABEL_176:
                __break(1u);
                goto LABEL_177;
              }

              specialized static Entity.entityInfoType(_:)(v90);
              if (v133)
              {
                v32 = (*(v133 + 232))();
                v134 = *(v32 + 16);

                MEMORY[0x1C68F9740](v134, 0);
                *(v32 + 16) = v90;
                MEMORY[0x1C68F9740](v90, v32);

                goto LABEL_122;
              }

              v91 = makeEntity(for:)(v90);
            }

            v32 = v91;
          }

          else
          {
            v32 = 0;
          }
        }

LABEL_122:
        specialized ActionEventData.action<A>()(&v197);
        v135 = *(&v199 + 1);
        if (!*(&v199 + 1))
        {
          goto LABEL_150;
        }

        v174 = v197;
        v182 = v27;
        v186 = a5;
        v136 = *(&v197 + 1);
        v137 = v198;
        v138 = v199;
        v139 = v201;
        v140 = v200;
        v141 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0VySfGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0VySfGGMR);
        *&v191[8] = vcvtq_f64_f32(v6);
        v131 = v202;
        *&v195[24] = v203;
        *&v195[40] = v204;
        *&v195[56] = v205;
        *&v195[72] = v206;
        v188[24] = v137 & 1;
        *&v189 = v138;
        *(&v189 + 1) = v135;
        LODWORD(v190) = v140;
        BYTE4(v190) = v139 & 1;
        BYTE5(v190) = v141 & 1;
        *&v188[8] = v174;
        *&v188[16] = v136;
        *v188 = v86;
        *(&v190 + 1) = v32;
        v191[0] = v175;
        *&v191[24] = v182;
        *&v192 = v178;
        v142 = 0xBFF0000000000000;
        *(&v192 + 1) = 0xBFF0000000000000;
        LOBYTE(v193) = 0;
        *(&v193 + 1) = 0xBFF0000000000000;
        LOBYTE(v194) = 0;
LABEL_140:
        *(&v194 + 1) = v142;
        v195[0] = 0;
        goto LABEL_141;
      }

      v65 = makeEntity(for:)(v63);
LABEL_38:
      v66 = v65;
      goto LABEL_62;
    }

    if (a4 <= 63)
    {
      if (a4 != 16)
      {
        if (a4 != 32)
        {
          goto LABEL_42;
        }

        v27 = Strong;
        v29 = *a2;
        v28 = a2[1];
        v30 = a2[5];
        v31 = a2[6];
        v32 = a2[7];
        v185 = a2[4];
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v33 = swift_dynamicCastClassUnconditional();
        }

        else
        {
          result = REEntityIsBeingDestroyed();
          if (result)
          {
LABEL_171:
            __break(1u);
            goto LABEL_172;
          }

          specialized static Entity.entityInfoType(_:)(v29);
          if (v104)
          {
            v34 = (*(v104 + 232))();
            v105 = *(v34 + 16);

            MEMORY[0x1C68F9740](v105, 0);
            *(v34 + 16) = v29;
            MEMORY[0x1C68F9740](v29, v34);

LABEL_86:
            type metadata accessor for AnimationPlaybackController();
            v63 = swift_allocObject();
            *(v63 + 40) = 0;
            swift_weakInit();
            *(v63 + 16) = v28;
            swift_weakAssign();

            *(v63 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v34 + 16));
            v106 = Hasher._finalize()();

            *(v63 + 24) = v106;
            v107 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v30, v107, v108, &v202);

            if (v32)
            {
              if (REBindPointBoundComponent())
              {
                v64 = REComponentGetEntity();
                if (REEntityGetSwiftObject())
                {
                  goto LABEL_89;
                }

                result = REEntityIsBeingDestroyed();
                if (result)
                {
LABEL_177:
                  __break(1u);
                  goto LABEL_178;
                }

                goto LABEL_130;
              }

              goto LABEL_91;
            }

            goto LABEL_132;
          }

          v33 = makeEntity(for:)(v29);
        }

        v34 = v33;
        goto LABEL_86;
      }

      v27 = Strong;
      v58 = *a2;
      v57 = a2[1];
      v59 = a2[3];
      v60 = a2[5];
      v31 = a2[6];
      v32 = a2[7];
      v185 = a2[4];
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v61 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        result = REEntityIsBeingDestroyed();
        if (result)
        {
LABEL_167:
          __break(1u);
          goto LABEL_168;
        }

        specialized static Entity.entityInfoType(_:)(v58);
        if (v79)
        {
          v62 = (*(v79 + 232))();
          v80 = *(v62 + 16);

          MEMORY[0x1C68F9740](v80, 0);
          *(v62 + 16) = v58;
          MEMORY[0x1C68F9740](v58, v62);

LABEL_54:
          type metadata accessor for AnimationPlaybackController();
          v63 = swift_allocObject();
          *(v63 + 40) = 0;
          swift_weakInit();
          *(v63 + 16) = v57;
          swift_weakAssign();

          *(v63 + 32) = REEntityGetLocalId();
          Hasher.init(_seed:)();
          MEMORY[0x1C68F4C10](*(v62 + 16));
          v81 = Hasher._finalize()();

          *(v63 + 24) = v81;
          v82 = String.init(cString:)();
          specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v60, v82, v83, &v202);

          if (v32)
          {
            if (REBindPointBoundComponent())
            {
              v64 = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
LABEL_89:
                type metadata accessor for Entity();
                v109 = swift_dynamicCastClassUnconditional();
LABEL_90:
                v32 = v109;
                goto LABEL_132;
              }

              if (REEntityIsBeingDestroyed())
              {
                __break(1u);
                goto LABEL_59;
              }

LABEL_130:
              specialized static Entity.entityInfoType(_:)(v64);
              if (v152)
              {
                v32 = (*(v152 + 232))();
                v153 = *(v32 + 16);

                MEMORY[0x1C68F9740](v153, 0);
                *(v32 + 16) = v64;
                MEMORY[0x1C68F9740](v64, v32);

                goto LABEL_132;
              }

              v109 = makeEntity(for:)(v64);
              goto LABEL_90;
            }

LABEL_91:
            v32 = 0;
          }

LABEL_132:
          specialized ActionEventData.action<A>()(&v197);
          if (!*(&v199 + 1))
          {
            goto LABEL_150;
          }

          *&v188[8] = v197;
          *&v195[24] = v203;
          *&v195[40] = v204;
          *&v195[56] = v205;
          *&v195[72] = v206;
          v188[24] = v198 & 1;
          v189 = v199;
          LODWORD(v190) = v200;
          BYTE4(v190) = v201 & 1;
          BYTE5(v190) = 1;
          *v188 = v63;
          *(&v190 + 1) = v32;
          v191[0] = 0;
          *&v191[8] = 0;
          *&v191[16] = 0;
          v192 = 0uLL;
          *&v191[24] = v27;
          LOBYTE(v193) = 1;
          *(&v193 + 1) = v185;
          LOBYTE(v194) = 0;
          *(&v194 + 1) = 0;
          v195[0] = 1;
          *&v195[8] = v202;
          *&v195[88] = v31;
          goto LABEL_148;
        }

        v61 = makeEntity(for:)(v58);
      }

      v62 = v61;
      goto LABEL_54;
    }

    if (a4 != 64)
    {
      if (a4 != 128)
      {
        goto LABEL_42;
      }

      v13 = Strong;
      v45 = *a2;
      v44 = a2[1];
      v15 = a2[3];
      v16 = a2[5];
      v187 = a2[4];
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v46 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        result = REEntityIsBeingDestroyed();
        if (result)
        {
LABEL_173:
          __break(1u);
          goto LABEL_174;
        }

        specialized static Entity.entityInfoType(_:)(v45);
        if (v118)
        {
          v47 = (*(v118 + 232))();
          v119 = *(v47 + 16);

          MEMORY[0x1C68F9740](v119, 0);
          *(v47 + 16) = v45;
          MEMORY[0x1C68F9740](v45, v47);

LABEL_103:
          type metadata accessor for AnimationPlaybackController();
          v17 = swift_allocObject();
          *(v17 + 40) = 0;
          swift_weakInit();
          *(v17 + 16) = v44;
          swift_weakAssign();

          *(v17 + 32) = REEntityGetLocalId();
          Hasher.init(_seed:)();
          MEMORY[0x1C68F4C10](*(v47 + 16));
          v120 = Hasher._finalize()();

          *(v17 + 24) = v120;
          if (v16)
          {
            if (REBindPointBoundComponent())
            {
              v95 = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
                goto LABEL_106;
              }

              result = REEntityIsBeingDestroyed();
              if (result)
              {
LABEL_179:
                __break(1u);
                return result;
              }

              goto LABEL_144;
            }

            goto LABEL_108;
          }

          goto LABEL_146;
        }

        v46 = makeEntity(for:)(v45);
      }

      v47 = v46;
      goto LABEL_103;
    }

    v13 = Strong;
    v68 = *a2;
    v67 = a2[1];
    v18 = a2[2];
    v15 = a2[3];
    v16 = a2[5];
    v187 = a2[4];
    if (REEntityGetSwiftObject())
    {
      type metadata accessor for Entity();
      v69 = swift_dynamicCastClassUnconditional();
    }

    else
    {
      result = REEntityIsBeingDestroyed();
      if (result)
      {
LABEL_169:
        __break(1u);
LABEL_170:
        __break(1u);
        goto LABEL_171;
      }

      specialized static Entity.entityInfoType(_:)(v68);
      if (v92)
      {
        v70 = (*(v92 + 232))();
        v93 = *(v70 + 16);

        MEMORY[0x1C68F9740](v93, 0);
        *(v70 + 16) = v68;
        MEMORY[0x1C68F9740](v68, v70);

LABEL_70:
        type metadata accessor for AnimationPlaybackController();
        v17 = swift_allocObject();
        *(v17 + 40) = 0;
        swift_weakInit();
        *(v17 + 16) = v67;
        swift_weakAssign();

        *(v17 + 32) = REEntityGetLocalId();
        Hasher.init(_seed:)();
        MEMORY[0x1C68F4C10](*(v70 + 16));
        v94 = Hasher._finalize()();

        *(v17 + 24) = v94;
        if (v16)
        {
          if (REBindPointBoundComponent())
          {
            v14 = a6;
            v95 = REComponentGetEntity();
            if (REEntityGetSwiftObject())
            {
LABEL_106:
              type metadata accessor for Entity();
              v121 = swift_dynamicCastClassUnconditional();
LABEL_107:
              v16 = v121;
              goto LABEL_146;
            }

            if (REEntityIsBeingDestroyed())
            {
              __break(1u);
LABEL_75:
              result = REEntityIsBeingDestroyed();
              if ((result & 1) == 0)
              {
                specialized static Entity.entityInfoType(_:)(v15);
                if (v96)
                {
                  v20 = (*(v96 + 232))();
                  v97 = *(v20 + 16);

                  MEMORY[0x1C68F9740](v97, 0);
                  *(v20 + 16) = v15;
                  MEMORY[0x1C68F9740](v15, v20);

                  goto LABEL_78;
                }

                v19 = makeEntity(for:)(v15);
LABEL_8:
                v20 = v19;
LABEL_78:
                type metadata accessor for AnimationPlaybackController();
                v98 = swift_allocObject();
                *(v98 + 40) = 0;
                swift_weakInit();
                *(v98 + 16) = v14;
                swift_weakAssign();

                *(v98 + 32) = REEntityGetLocalId();
                Hasher.init(_seed:)();
                MEMORY[0x1C68F4C10](*(v20 + 16));
                v99 = Hasher._finalize()();

                *(v98 + 24) = v99;
                v100 = String.init(cString:)();
                specialized ActionEventData.init(eventID:coreData:typeName:)(v16, 0, v17, v100, v101, &v202);

                if (!v18)
                {
                  goto LABEL_127;
                }

                if (!REBindPointBoundComponent())
                {
                  v18 = 0;
                  goto LABEL_127;
                }

                v102 = REComponentGetEntity();
                if (REEntityGetSwiftObject())
                {
                  type metadata accessor for Entity();
                  v103 = swift_dynamicCastClassUnconditional();
LABEL_82:
                  v18 = v103;
                  goto LABEL_127;
                }

                result = REEntityIsBeingDestroyed();
                if ((result & 1) == 0)
                {
                  specialized static Entity.entityInfoType(_:)(v102);
                  if (!v143)
                  {
                    v103 = makeEntity(for:)(v102);
                    goto LABEL_82;
                  }

                  v18 = (*(v143 + 232))();
                  v144 = *(v18 + 16);

                  MEMORY[0x1C68F9740](v144, 0);
                  *(v18 + 16) = v102;
                  MEMORY[0x1C68F9740](v102, v18);

LABEL_127:
                  specialized ActionEventData.action<A>()(&v197);
                  v145 = *(&v199 + 1);
                  if (*(&v199 + 1))
                  {
                    v146 = v197;
                    v147 = v198;
                    v183 = v13;
                    v186 = a5;
                    v148 = v199;
                    v149 = v201;
                    v150 = v200;
                    v151 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0VySfGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0VySfGGMR);
                    *&v191[8] = vcvtq_f64_f32(v7);
                    *(&v192 + 1) = v6.f32[0];
                    v131 = v202;
                    *&v195[24] = v203;
                    *&v195[40] = v204;
                    v188[24] = v147 & 1;
                    *&v189 = v148;
                    *(&v189 + 1) = v145;
                    LODWORD(v190) = v150;
                    BYTE4(v190) = v149 & 1;
                    BYTE5(v190) = v151 & 1;
                    *&v188[8] = v146;
                    *v188 = v98;
                    *(&v190 + 1) = v18;
                    v191[0] = v168;
                    *&v191[24] = v183;
                    *&v192 = v171;
                    LOBYTE(v193) = 0;
                    *(&v193 + 1) = v178;
                    LOBYTE(v194) = 0;
                    *(&v194 + 1) = v175;
                    v195[0] = 0;
                    *&v195[56] = v205;
                    *&v195[72] = v206;
LABEL_141:
                    *&v195[8] = v131;
                    *&v195[88] = v180;
                    v186(v188);
LABEL_149:

                    v196[12] = *&v195[48];
                    v196[13] = *&v195[64];
                    v196[14] = *&v195[80];
                    v196[8] = v194;
                    v196[9] = *v195;
                    v196[10] = *&v195[16];
                    v196[11] = *&v195[32];
                    v196[4] = *v191;
                    v196[5] = *&v191[16];
                    v196[6] = v192;
                    v196[7] = v193;
                    v196[0] = *v188;
                    v196[1] = *&v188[16];
                    v196[2] = v189;
                    v196[3] = v190;
                    outlined destroy of BodyTrackingComponent?(v196, &_s17RealityFoundation11ActionEventVyAA017SetEntityPropertyC0VySfGGMd, &_s17RealityFoundation11ActionEventVyAA017SetEntityPropertyC0VySfGGMR);
                    return 0;
                  }

LABEL_150:

                  outlined consume of SetEntityPropertyAction<Bool>?(v197, *(&v197 + 1), v198, v199, 0);
                  return 0;
                }

                goto LABEL_176;
              }

              goto LABEL_170;
            }

LABEL_144:
            specialized static Entity.entityInfoType(_:)(v95);
            if (v163)
            {
              v16 = (*(v163 + 232))();
              v164 = *(v16 + 16);

              MEMORY[0x1C68F9740](v164, 0);
              *(v16 + 16) = v95;
              MEMORY[0x1C68F9740](v95, v16);

              goto LABEL_146;
            }

            v121 = makeEntity(for:)(v95);
            goto LABEL_107;
          }

LABEL_108:
          v16 = 0;
        }

LABEL_146:
        v165 = String.init(cString:)();
        specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v15, v165, v166, &v202);

        specialized ActionEventData.action<A>()(&v197);
        if (!*(&v199 + 1))
        {
          goto LABEL_150;
        }

        *&v188[8] = v197;
        *&v195[24] = v203;
        *&v195[40] = v204;
        *&v195[56] = v205;
        *&v195[72] = v206;
        v188[24] = v198 & 1;
        v189 = v199;
        LODWORD(v190) = v200;
        BYTE4(v190) = v201 & 1;
        BYTE5(v190) = 1;
        *v188 = v17;
        *(&v190 + 1) = v16;
        v191[0] = 0;
        *&v191[8] = 0;
        *&v191[16] = 0;
        v192 = 0uLL;
        *&v191[24] = v13;
        LOBYTE(v193) = 1;
        *(&v193 + 1) = 0;
        LOBYTE(v194) = 1;
        *(&v194 + 1) = 0;
        v195[0] = 1;
        *&v195[8] = v202;
        *&v195[88] = v187;
LABEL_148:
        a5(v188);
        goto LABEL_149;
      }

      v69 = makeEntity(for:)(v68);
    }

    v70 = v69;
    goto LABEL_70;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static AnimationLogger.logger);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *&v196[0] = v25;
    *v24 = 136315138;
    *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002FLL, 0x80000001C18E4580, v196);
    _os_log_impl(&dword_1C1358000, v22, v23, "%s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x1C6902A30](v25, -1, -1);
    MEMORY[0x1C6902A30](v24, -1, -1);
  }

  return 1;
}

uint64_t specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(_OWORD *), uint64_t a6, uint64_t *a7, uint64_t *a8, uint64_t *a9, uint64_t *a10, uint64_t *a11, uint64_t *a12, uint64_t *a13, uint64_t *a14, uint64_t *a15, uint64_t *a16)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    v26 = a13;
    v25 = a14;
    if (a4 <= 15)
    {
      if (a4 <= 3)
      {
        if (a4 != 1)
        {
          if (a4 == 2)
          {
            v175 = a11;
            v176 = a12;
            v184 = a9;
            v186 = a10;
            v188 = a8;
            v192 = a7;
            v180 = a15;
            v181 = a16;
            v182 = a5;
            v178 = a13;
            v26 = a14;
            v27 = *a2;
            v25 = a2[1];
            v28 = a2[4];
            v29 = a2[5];
            v16.i32[0] = *(a2 + 14);
            v169 = a2[8];
            v172 = a2[6];
            v166 = a2[9];
            v30 = a2[11];
            v17 = a2[12];
            v164 = *(a2 + 104);
            v174 = a2[10];
            if (REEntityGetSwiftObject())
            {
              type metadata accessor for Entity();
              v31 = swift_dynamicCastClassUnconditional();
              goto LABEL_8;
            }

            goto LABEL_75;
          }

LABEL_42:

          return 0;
        }

        v191 = a8;
        v195 = a7;
        v180 = a15;
        v181 = a16;
        v183 = a5;
        v59 = *a2;
        v60 = a2[1];
        v61 = a2[4];
        v62 = a2[5];
        v63 = a2[8];
        v64 = a2[9];
        v165 = *(a2 + 80);
        v168 = a2[11];
        v171 = a2[7];
        v173 = a2[12];
        v174 = a2[6];
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v65 = swift_dynamicCastClassUnconditional();
          goto LABEL_32;
        }

        result = REEntityIsBeingDestroyed();
        if ((result & 1) == 0)
        {
          specialized static Entity.entityInfoType(_:)(v59);
          if (v82)
          {
            v66 = (*(v82 + 232))();
            v83 = *(v66 + 16);

            MEMORY[0x1C68F9740](v83, 0);
            *(v66 + 16) = v59;
            MEMORY[0x1C68F9740](v59, v66);

LABEL_46:
            type metadata accessor for AnimationPlaybackController();
            v84 = swift_allocObject();
            *(v84 + 40) = 0;
            swift_weakInit();
            *(v84 + 16) = v60;
            swift_weakAssign();

            *(v84 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v66 + 16));
            v85 = Hasher._finalize()();

            *(v84 + 24) = v85;
            v86 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(v61, 0, v62, v86, v87, &v203);

            if (v63)
            {
              v88 = a14;
              if (REBindPointBoundComponent())
              {
                Entity = REComponentGetEntity();
                v90 = a13;
                if (REEntityGetSwiftObject())
                {
                  type metadata accessor for Entity();
                  v91 = swift_dynamicCastClassUnconditional();
                }

                else
                {
                  result = REEntityIsBeingDestroyed();
                  if (result)
                  {
LABEL_179:
                    __break(1u);
                    goto LABEL_180;
                  }

                  specialized static Entity.entityInfoType(_:)(Entity);
                  if (v144)
                  {
                    v92 = (*(v144 + 232))();
                    v145 = *(v92 + 16);

                    MEMORY[0x1C68F9740](v145, 0);
                    *(v92 + 16) = Entity;
                    MEMORY[0x1C68F9740](Entity, v92);

                    goto LABEL_126;
                  }

                  v91 = makeEntity(for:)(Entity);
                }

                v92 = v91;
              }

              else
              {
                v92 = 0;
                v90 = a13;
              }
            }

            else
            {
              v92 = 0;
              v88 = a14;
              v90 = a13;
            }

LABEL_126:
            specialized ActionEventData.action<A>()(v195, v191, a9, a10, &v198);
            if (!v200)
            {
              goto LABEL_153;
            }

            __src[3] = v200;
            __src[4] = v201;
            LOBYTE(__src[5]) = v202;
            __src[1] = v198;
            __src[2] = v199;
            v146 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(a11, a12);
            *(&__src[6] + 8) = vcvtq_f64_f32(v64);
            v147 = v203;
            *(&__src[12] + 8) = v204;
            *(&__src[13] + 8) = v205;
            *(&__src[14] + 8) = v206;
            *(&__src[15] + 8) = v207;
            BYTE1(__src[5]) = v146 & 1;
            *&__src[0] = v84;
            *(&__src[5] + 1) = v92;
            LOBYTE(__src[6]) = v165;
            *(&__src[7] + 1) = v24;
            *&__src[8] = v171;
            *(&__src[8] + 1) = 0xBFF0000000000000;
            LOBYTE(__src[9]) = 0;
            v148 = v168;
            goto LABEL_145;
          }

          v65 = makeEntity(for:)(v59);
LABEL_32:
          v66 = v65;
          goto LABEL_46;
        }

        __break(1u);
        goto LABEL_172;
      }

      if (a4 != 4)
      {
        if (a4 != 8)
        {
          goto LABEL_42;
        }

        v190 = a8;
        v194 = a7;
        v180 = a15;
        v181 = a16;
        v183 = a5;
        v47 = *a2;
        v48 = a2[1];
        v49 = a2[4];
        v50 = a2[5];
        v51 = a2[7];
        v52 = a2[8];
        v167 = *(a2 + 72);
        v170 = a2[10];
        v173 = a2[11];
        v174 = a2[6];
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v53 = swift_dynamicCastClassUnconditional();
        }

        else
        {
          result = REEntityIsBeingDestroyed();
          if (result)
          {
LABEL_177:
            __break(1u);
            goto LABEL_178;
          }

          specialized static Entity.entityInfoType(_:)(v47);
          if (v131)
          {
            v54 = (*(v131 + 232))();
            v132 = *(v54 + 16);

            MEMORY[0x1C68F9740](v132, 0);
            *(v54 + 16) = v47;
            MEMORY[0x1C68F9740](v47, v54);

LABEL_103:
            type metadata accessor for AnimationPlaybackController();
            v133 = swift_allocObject();
            *(v133 + 40) = 0;
            swift_weakInit();
            *(v133 + 16) = v48;
            swift_weakAssign();

            *(v133 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v54 + 16));
            v134 = Hasher._finalize()();

            *(v133 + 24) = v134;
            v135 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(v49, 0, v50, v135, v136, &v203);

            if (v51)
            {
              v88 = a14;
              if (REBindPointBoundComponent())
              {
                v137 = REComponentGetEntity();
                v90 = a13;
                if (REEntityGetSwiftObject())
                {
                  type metadata accessor for Entity();
                  v138 = swift_dynamicCastClassUnconditional();
                }

                else
                {
                  result = REEntityIsBeingDestroyed();
                  if (result)
                  {
LABEL_183:
                    __break(1u);
                    goto LABEL_184;
                  }

                  specialized static Entity.entityInfoType(_:)(v137);
                  if (v157)
                  {
                    v139 = (*(v157 + 232))();
                    v158 = *(v139 + 16);

                    MEMORY[0x1C68F9740](v158, 0);
                    *(v139 + 16) = v137;
                    MEMORY[0x1C68F9740](v137, v139);

                    goto LABEL_143;
                  }

                  v138 = makeEntity(for:)(v137);
                }

                v139 = v138;
              }

              else
              {
                v139 = 0;
                v90 = a13;
              }
            }

            else
            {
              v139 = 0;
              v88 = a14;
              v90 = a13;
            }

LABEL_143:
            specialized ActionEventData.action<A>()(v194, v190, a9, a10, &v198);
            if (!v200)
            {
              goto LABEL_153;
            }

            __src[3] = v200;
            __src[4] = v201;
            LOBYTE(__src[5]) = v202;
            __src[1] = v198;
            __src[2] = v199;
            v159 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(a11, a12);
            *(&__src[6] + 8) = vcvtq_f64_f32(v52);
            v147 = v203;
            *(&__src[12] + 8) = v204;
            *(&__src[13] + 8) = v205;
            *(&__src[14] + 8) = v206;
            *(&__src[15] + 8) = v207;
            BYTE1(__src[5]) = v159 & 1;
            *&__src[0] = v133;
            *(&__src[5] + 1) = v139;
            LOBYTE(__src[6]) = v167;
            __src[8] = 0uLL;
            *(&__src[7] + 1) = v24;
            LOBYTE(__src[9]) = 1;
            v148 = v170;
LABEL_145:
            *(&__src[9] + 1) = v148;
            LOBYTE(__src[10]) = 0;
            v152 = v173;
            goto LABEL_146;
          }

          v53 = makeEntity(for:)(v47);
        }

        v54 = v53;
        goto LABEL_103;
      }

      v175 = a11;
      v177 = a12;
      v185 = a9;
      v187 = a10;
      v189 = a8;
      v193 = a7;
      v180 = a15;
      v181 = a16;
      v183 = a5;
      v179 = a13;
      v40 = a14;
      v44 = *a2;
      v72 = a2[1];
      v73 = a2[4];
      v74 = a2[5];
      v75 = a2[8];
      v172 = a2[7];
      v16 = a2[9];
      LOBYTE(v169) = *(a2 + 80);
      v174 = a2[6];
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v76 = swift_dynamicCastClassUnconditional();
        goto LABEL_38;
      }

LABEL_59:
      result = REEntityIsBeingDestroyed();
      if (result)
      {
LABEL_173:
        __break(1u);
        goto LABEL_174;
      }

      specialized static Entity.entityInfoType(_:)(v44);
      if (v99)
      {
        v77 = (*(v99 + 232))();
        v100 = *(v77 + 16);

        MEMORY[0x1C68F9740](v100, 0);
        *(v77 + 16) = v44;
        MEMORY[0x1C68F9740](v44, v77);

LABEL_62:
        type metadata accessor for AnimationPlaybackController();
        v101 = swift_allocObject();
        *(v101 + 40) = 0;
        swift_weakInit();
        *(v101 + 16) = v72;
        swift_weakAssign();

        *(v101 + 32) = REEntityGetLocalId();
        Hasher.init(_seed:)();
        MEMORY[0x1C68F4C10](*(v77 + 16));
        v102 = Hasher._finalize()();

        *(v101 + 24) = v102;
        v103 = String.init(cString:)();
        specialized ActionEventData.init(eventID:coreData:typeName:)(v73, 0, v74, v103, v104, &v203);

        if (v75)
        {
          v88 = v40;
          if (REBindPointBoundComponent())
          {
            v105 = REComponentGetEntity();
            v90 = v179;
            if (REEntityGetSwiftObject())
            {
              type metadata accessor for Entity();
              v106 = swift_dynamicCastClassUnconditional();
            }

            else
            {
              result = REEntityIsBeingDestroyed();
              if (result)
              {
LABEL_180:
                __break(1u);
LABEL_181:
                __break(1u);
                goto LABEL_182;
              }

              specialized static Entity.entityInfoType(_:)(v105);
              if (v149)
              {
                v107 = (*(v149 + 232))();
                v150 = *(v107 + 16);

                MEMORY[0x1C68F9740](v150, 0);
                *(v107 + 16) = v105;
                MEMORY[0x1C68F9740](v105, v107);

                goto LABEL_132;
              }

              v106 = makeEntity(for:)(v105);
            }

            v107 = v106;
          }

          else
          {
            v107 = 0;
            v90 = v179;
          }
        }

        else
        {
          v107 = 0;
          v88 = v40;
          v90 = v179;
        }

LABEL_132:
        specialized ActionEventData.action<A>()(v193, v189, v185, v187, &v198);
        if (!v200)
        {
          goto LABEL_153;
        }

        __src[3] = v200;
        __src[4] = v201;
        LOBYTE(__src[5]) = v202;
        __src[1] = v198;
        __src[2] = v199;
        v151 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(v175, v177);
        *(&__src[6] + 8) = vcvtq_f64_f32(v16);
        v147 = v203;
        *(&__src[12] + 8) = v204;
        *(&__src[13] + 8) = v205;
        *(&__src[14] + 8) = v206;
        *(&__src[15] + 8) = v207;
        BYTE1(__src[5]) = v151 & 1;
        *&__src[0] = v101;
        *(&__src[5] + 1) = v107;
        LOBYTE(__src[6]) = v169;
        *(&__src[7] + 1) = v24;
        *&__src[8] = v172;
        v152 = 0xBFF0000000000000;
        *(&__src[8] + 1) = 0xBFF0000000000000;
        LOBYTE(__src[9]) = 0;
        *(&__src[9] + 1) = 0xBFF0000000000000;
        LOBYTE(__src[10]) = 0;
LABEL_146:
        *(&__src[10] + 1) = v152;
        LOBYTE(__src[11]) = 0;
        *(&__src[11] + 8) = v147;
        *(&__src[16] + 1) = v174;
        v183(__src);

        memcpy(__dst, __src, sizeof(__dst));
        v123 = v90;
        v124 = v88;
        goto LABEL_154;
      }

      v76 = makeEntity(for:)(v44);
LABEL_38:
      v77 = v76;
      goto LABEL_62;
    }

    if (a4 <= 63)
    {
      if (a4 != 16)
      {
        if (a4 != 32)
        {
          goto LABEL_42;
        }

        v185 = a9;
        v187 = a10;
        v189 = a8;
        v193 = a7;
        v180 = a15;
        v181 = a16;
        v183 = a5;
        v39 = a13;
        v40 = a14;
        v41 = *a2;
        v42 = a2[1];
        v177 = a2[4];
        v43 = a2[5];
        v44 = a2[7];
        v179 = a2[6];
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v45 = swift_dynamicCastClassUnconditional();
        }

        else
        {
          result = REEntityIsBeingDestroyed();
          if (result)
          {
LABEL_176:
            __break(1u);
            goto LABEL_177;
          }

          specialized static Entity.entityInfoType(_:)(v41);
          if (v125)
          {
            v46 = (*(v125 + 232))();
            v126 = *(v46 + 16);

            MEMORY[0x1C68F9740](v126, 0);
            *(v46 + 16) = v41;
            MEMORY[0x1C68F9740](v41, v46);

LABEL_89:
            type metadata accessor for AnimationPlaybackController();
            v74 = swift_allocObject();
            *(v74 + 40) = 0;
            swift_weakInit();
            *(v74 + 16) = v42;
            swift_weakAssign();

            *(v74 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v46 + 16));
            v127 = Hasher._finalize()();

            *(v74 + 24) = v127;
            v128 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v43, v128, v129, &v203);

            if (v44)
            {
              v73 = a14;
              if (REBindPointBoundComponent())
              {
                v75 = REComponentGetEntity();
                v72 = a13;
                if (REEntityGetSwiftObject())
                {
                  goto LABEL_92;
                }

                result = REEntityIsBeingDestroyed();
                v98 = v193;
                if (result)
                {
LABEL_182:
                  __break(1u);
                  goto LABEL_183;
                }

                goto LABEL_138;
              }

LABEL_94:
              v44 = 0;
              goto LABEL_95;
            }

            goto LABEL_93;
          }

          v45 = makeEntity(for:)(v41);
        }

        v46 = v45;
        goto LABEL_89;
      }

      v185 = a9;
      v187 = a10;
      v189 = a8;
      v193 = a7;
      v180 = a15;
      v181 = a16;
      v183 = a5;
      v39 = a13;
      v40 = a14;
      v67 = *a2;
      v68 = a2[1];
      v177 = a2[4];
      v69 = a2[5];
      v44 = a2[7];
      v179 = a2[6];
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v70 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        result = REEntityIsBeingDestroyed();
        if (result)
        {
LABEL_172:
          __break(1u);
          goto LABEL_173;
        }

        specialized static Entity.entityInfoType(_:)(v67);
        if (v93)
        {
          v71 = (*(v93 + 232))();
          v94 = *(v71 + 16);

          MEMORY[0x1C68F9740](v94, 0);
          *(v71 + 16) = v67;
          MEMORY[0x1C68F9740](v67, v71);

LABEL_54:
          type metadata accessor for AnimationPlaybackController();
          v74 = swift_allocObject();
          *(v74 + 40) = 0;
          swift_weakInit();
          *(v74 + 16) = v68;
          swift_weakAssign();

          *(v74 + 32) = REEntityGetLocalId();
          Hasher.init(_seed:)();
          MEMORY[0x1C68F4C10](*(v71 + 16));
          v95 = Hasher._finalize()();

          *(v74 + 24) = v95;
          v96 = String.init(cString:)();
          specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v69, v96, v97, &v203);

          if (v44)
          {
            v73 = a14;
            if (REBindPointBoundComponent())
            {
              v75 = REComponentGetEntity();
              v72 = a13;
              if (REEntityGetSwiftObject())
              {
LABEL_92:
                type metadata accessor for Entity();
                v44 = swift_dynamicCastClassUnconditional();
LABEL_96:
                v130 = v193;
                goto LABEL_97;
              }

              v98 = v193;
              if (REEntityIsBeingDestroyed())
              {
                __break(1u);
                goto LABEL_59;
              }

LABEL_138:
              specialized static Entity.entityInfoType(_:)(v75);
              if (v155)
              {
                v44 = (*(v155 + 232))();
                v156 = *(v44 + 16);

                MEMORY[0x1C68F9740](v156, 0);
                *(v44 + 16) = v75;
                MEMORY[0x1C68F9740](v75, v44);
              }

              else
              {
                v44 = makeEntity(for:)(v75);
              }

              v130 = v98;
LABEL_97:
              specialized ActionEventData.action<A>()(v130, v189, v185, v187, &v198);
              if (v200)
              {
                __src[3] = v200;
                __src[4] = v201;
                __src[1] = v198;
                __src[2] = v199;
                *(&__src[12] + 8) = v204;
                *(&__src[13] + 8) = v205;
                *(&__src[14] + 8) = v206;
                *(&__src[15] + 8) = v207;
                LOBYTE(__src[5]) = v202;
                BYTE1(__src[5]) = 1;
                *&__src[0] = v74;
                *(&__src[5] + 1) = v44;
                LOBYTE(__src[6]) = 0;
                *(&__src[6] + 8) = 0uLL;
                __src[8] = 0uLL;
                *(&__src[7] + 1) = v24;
                LOBYTE(__src[9]) = 1;
                *(&__src[9] + 1) = v177;
                LOBYTE(__src[10]) = 0;
                *(&__src[10] + 1) = 0;
                LOBYTE(__src[11]) = 1;
                *(&__src[11] + 8) = v203;
                *(&__src[16] + 1) = v179;
                v183(__src);

                memcpy(__dst, __src, sizeof(__dst));
                v123 = v72;
                v124 = v73;
                goto LABEL_154;
              }

LABEL_153:

              __dst[2] = v200;
              __dst[3] = v201;
              LOBYTE(__dst[4]) = v202;
              __dst[0] = v198;
              __dst[1] = v199;
              v123 = v180;
              v124 = v181;
              goto LABEL_154;
            }

            goto LABEL_94;
          }

LABEL_93:
          v73 = v40;
LABEL_95:
          v72 = v39;
          goto LABEL_96;
        }

        v70 = makeEntity(for:)(v67);
      }

      v71 = v70;
      goto LABEL_54;
    }

    if (a4 != 64)
    {
      if (a4 != 128)
      {
        goto LABEL_42;
      }

      v184 = a9;
      v186 = a10;
      v188 = a8;
      v192 = a7;
      v180 = a15;
      v181 = a16;
      v182 = a5;
      v55 = *a2;
      v56 = a2[1];
      v29 = a2[3];
      v28 = a2[5];
      v178 = a2[4];
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v57 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        result = REEntityIsBeingDestroyed();
        if (result)
        {
LABEL_178:
          __break(1u);
          goto LABEL_179;
        }

        specialized static Entity.entityInfoType(_:)(v55);
        if (v140)
        {
          v58 = (*(v140 + 232))();
          v141 = *(v58 + 16);

          MEMORY[0x1C68F9740](v141, 0);
          *(v58 + 16) = v55;
          MEMORY[0x1C68F9740](v55, v58);

LABEL_111:
          type metadata accessor for AnimationPlaybackController();
          v30 = swift_allocObject();
          *(v30 + 40) = 0;
          swift_weakInit();
          *(v30 + 16) = v56;
          swift_weakAssign();

          *(v30 + 32) = REEntityGetLocalId();
          Hasher.init(_seed:)();
          MEMORY[0x1C68F4C10](*(v58 + 16));
          v142 = Hasher._finalize()();

          *(v30 + 24) = v142;
          if (!v28)
          {
            goto LABEL_151;
          }

          if (REBindPointBoundComponent())
          {
            v111 = REComponentGetEntity();
            if (REEntityGetSwiftObject())
            {
              goto LABEL_114;
            }

            result = REEntityIsBeingDestroyed();
            if (result)
            {
LABEL_184:
              __break(1u);
              return result;
            }

LABEL_149:
            specialized static Entity.entityInfoType(_:)(v111);
            if (!v160)
            {
              v143 = makeEntity(for:)(v111);
              goto LABEL_115;
            }

            v28 = (*(v160 + 232))();
            v161 = *(v28 + 16);

            MEMORY[0x1C68F9740](v161, 0);
            *(v28 + 16) = v111;
            MEMORY[0x1C68F9740](v111, v28);

LABEL_151:
            v162 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v29, v162, v163, &v203);

            specialized ActionEventData.action<A>()(v192, v188, v184, v186, &v198);
            if (v200)
            {
              __src[3] = v200;
              __src[4] = v201;
              __src[1] = v198;
              __src[2] = v199;
              *(&__src[12] + 8) = v204;
              *(&__src[13] + 8) = v205;
              *(&__src[14] + 8) = v206;
              *(&__src[15] + 8) = v207;
              LOBYTE(__src[5]) = v202;
              BYTE1(__src[5]) = 1;
              *&__src[0] = v30;
              *(&__src[5] + 1) = v28;
              LOBYTE(__src[6]) = 0;
              *(&__src[6] + 8) = 0uLL;
              __src[8] = 0uLL;
              *(&__src[7] + 1) = v24;
              LOBYTE(__src[9]) = 1;
              *(&__src[9] + 1) = 0;
              LOBYTE(__src[10]) = 1;
              *(&__src[10] + 1) = 0;
              LOBYTE(__src[11]) = 1;
              *(&__src[11] + 8) = v203;
              *(&__src[16] + 1) = v178;
              v182(__src);

              memcpy(__dst, __src, sizeof(__dst));
              v123 = a13;
              v124 = a14;
              goto LABEL_154;
            }

            goto LABEL_153;
          }

          goto LABEL_116;
        }

        v57 = makeEntity(for:)(v55);
      }

      v58 = v57;
      goto LABEL_111;
    }

    v184 = a9;
    v186 = a10;
    v188 = a8;
    v192 = a7;
    v180 = a15;
    v181 = a16;
    v182 = a5;
    v78 = *a2;
    v79 = a2[1];
    v27 = a2[2];
    v29 = a2[3];
    v28 = a2[5];
    v178 = a2[4];
    if (REEntityGetSwiftObject())
    {
      type metadata accessor for Entity();
      v80 = swift_dynamicCastClassUnconditional();
    }

    else
    {
      result = REEntityIsBeingDestroyed();
      if (result)
      {
LABEL_174:
        __break(1u);
LABEL_175:
        __break(1u);
        goto LABEL_176;
      }

      specialized static Entity.entityInfoType(_:)(v78);
      if (v108)
      {
        v81 = (*(v108 + 232))();
        v109 = *(v81 + 16);

        MEMORY[0x1C68F9740](v109, 0);
        *(v81 + 16) = v78;
        MEMORY[0x1C68F9740](v78, v81);

LABEL_70:
        type metadata accessor for AnimationPlaybackController();
        v30 = swift_allocObject();
        *(v30 + 40) = 0;
        swift_weakInit();
        *(v30 + 16) = v79;
        swift_weakAssign();

        *(v30 + 32) = REEntityGetLocalId();
        Hasher.init(_seed:)();
        MEMORY[0x1C68F4C10](*(v81 + 16));
        v110 = Hasher._finalize()();

        *(v30 + 24) = v110;
        if (!v28)
        {
          goto LABEL_151;
        }

        if (REBindPointBoundComponent())
        {
          v111 = REComponentGetEntity();
          if (REEntityGetSwiftObject())
          {
LABEL_114:
            type metadata accessor for Entity();
            v143 = swift_dynamicCastClassUnconditional();
LABEL_115:
            v28 = v143;
            goto LABEL_151;
          }

          if (REEntityIsBeingDestroyed())
          {
            __break(1u);
LABEL_75:
            result = REEntityIsBeingDestroyed();
            if ((result & 1) == 0)
            {
              specialized static Entity.entityInfoType(_:)(v27);
              if (v112)
              {
                v32 = (*(v112 + 232))();
                v113 = *(v32 + 16);

                MEMORY[0x1C68F9740](v113, 0);
                *(v32 + 16) = v27;
                MEMORY[0x1C68F9740](v27, v32);

LABEL_78:
                type metadata accessor for AnimationPlaybackController();
                v114 = swift_allocObject();
                *(v114 + 40) = 0;
                swift_weakInit();
                *(v114 + 16) = v25;
                swift_weakAssign();

                *(v114 + 32) = REEntityGetLocalId();
                Hasher.init(_seed:)();
                MEMORY[0x1C68F4C10](*(v32 + 16));
                v115 = Hasher._finalize()();

                *(v114 + 24) = v115;
                v116 = String.init(cString:)();
                specialized ActionEventData.init(eventID:coreData:typeName:)(v28, 0, v29, v116, v117, &v203);

                if (!v30 || !REBindPointBoundComponent())
                {
                  v121 = 0;
                  v119 = v178;
                  goto LABEL_84;
                }

                v118 = REComponentGetEntity();
                v119 = v178;
                if (REEntityGetSwiftObject())
                {
                  type metadata accessor for Entity();
                  v120 = swift_dynamicCastClassUnconditional();
LABEL_82:
                  v121 = v120;
                  goto LABEL_84;
                }

                result = REEntityIsBeingDestroyed();
                if ((result & 1) == 0)
                {
                  specialized static Entity.entityInfoType(_:)(v118);
                  if (!v153)
                  {
                    v120 = makeEntity(for:)(v118);
                    goto LABEL_82;
                  }

                  v121 = (*(v153 + 232))();
                  v154 = *(v121 + 16);

                  MEMORY[0x1C68F9740](v154, 0);
                  *(v121 + 16) = v118;
                  MEMORY[0x1C68F9740](v118, v121);

LABEL_84:
                  specialized ActionEventData.action<A>()(v192, v188, v184, v186, &v198);
                  if (v200)
                  {
                    __src[3] = v200;
                    __src[4] = v201;
                    LOBYTE(__src[5]) = v202;
                    __src[1] = v198;
                    __src[2] = v199;
                    v122 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(v175, v176);
                    *(&__src[6] + 8) = vcvtq_f64_f32(v17);
                    *(&__src[8] + 1) = v16.f32[0];
                    *(&__src[12] + 8) = v204;
                    *(&__src[13] + 8) = v205;
                    BYTE1(__src[5]) = v122 & 1;
                    *&__src[0] = v114;
                    *(&__src[5] + 1) = v121;
                    LOBYTE(__src[6]) = v164;
                    *(&__src[7] + 1) = v24;
                    *&__src[8] = v166;
                    LOBYTE(__src[9]) = 0;
                    *(&__src[9] + 1) = v172;
                    LOBYTE(__src[10]) = 0;
                    *(&__src[10] + 1) = v169;
                    LOBYTE(__src[11]) = 0;
                    *(&__src[14] + 8) = v206;
                    *(&__src[15] + 8) = v207;
                    *(&__src[11] + 8) = v203;
                    *(&__src[16] + 1) = v174;
                    v182(__src);

                    memcpy(__dst, __src, sizeof(__dst));
                    v123 = v119;
                    v124 = v26;
LABEL_154:
                    outlined destroy of BodyTrackingComponent?(__dst, v123, v124);
                    return 0;
                  }

                  goto LABEL_153;
                }

                goto LABEL_181;
              }

              v31 = makeEntity(for:)(v27);
LABEL_8:
              v32 = v31;
              goto LABEL_78;
            }

            goto LABEL_175;
          }

          goto LABEL_149;
        }

LABEL_116:
        v28 = 0;
        goto LABEL_151;
      }

      v80 = makeEntity(for:)(v78);
    }

    v81 = v80;
    goto LABEL_70;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  __swift_project_value_buffer(v33, static AnimationLogger.logger);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *&__dst[0] = v37;
    *v36 = 136315138;
    *(v36 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002FLL, 0x80000001C18E4580, __dst);
    _os_log_impl(&dword_1C1358000, v34, v35, "%s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x1C6902A30](v37, -1, -1);
    MEMORY[0x1C6902A30](v36, -1, -1);
  }

  return 1;
}

{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    v25 = a16;
    if (a4 <= 15)
    {
      if (a4 <= 3)
      {
        if (a4 != 1)
        {
          if (a4 == 2)
          {
            v184 = a11;
            v185 = a12;
            v194 = a9;
            v196 = a7;
            v188 = a10;
            v190 = a15;
            v26 = a8;
            v187 = a16;
            v191 = a5;
            v192 = a13;
            v27 = *a2;
            v28 = a2[1];
            v29 = a2[4];
            v30 = a2[5];
            v16.i32[0] = *(a2 + 14);
            v178 = a2[8];
            v181 = a2[6];
            v175 = a2[9];
            v31 = a2[11];
            v183 = a2[10];
            v17 = a2[12];
            v173 = *(a2 + 104);
            v193 = a14;
            if (REEntityGetSwiftObject())
            {
              type metadata accessor for Entity();
              v32 = swift_dynamicCastClassUnconditional();
              goto LABEL_8;
            }

            goto LABEL_75;
          }

LABEL_42:

          return 0;
        }

        v199 = a7;
        v190 = a15;
        v61 = a8;
        v187 = a16;
        v191 = a5;
        v192 = a13;
        v62 = *a2;
        v63 = a2[1];
        v64 = a2[4];
        v65 = a2[5];
        v66 = a2[8];
        v67 = a2[9];
        v174 = *(a2 + 80);
        v177 = a2[11];
        v180 = a2[7];
        v182 = a2[12];
        v183 = a2[6];
        v193 = a14;
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v68 = swift_dynamicCastClassUnconditional();
          goto LABEL_32;
        }

        result = REEntityIsBeingDestroyed();
        if ((result & 1) == 0)
        {
          specialized static Entity.entityInfoType(_:)(v62);
          if (v85)
          {
            v69 = (*(v85 + 232))();
            v86 = *(v69 + 16);

            MEMORY[0x1C68F9740](v86, 0);
            *(v69 + 16) = v62;
            MEMORY[0x1C68F9740](v62, v69);

LABEL_46:
            type metadata accessor for AnimationPlaybackController();
            v87 = swift_allocObject();
            *(v87 + 40) = 0;
            swift_weakInit();
            *(v87 + 16) = v63;
            swift_weakAssign();

            *(v87 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v69 + 16));
            v88 = Hasher._finalize()();

            *(v87 + 24) = v88;
            v89 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(v64, 0, v65, v89, v90, &v208);

            if (v66)
            {
              v91 = v61;
              if (REBindPointBoundComponent())
              {
                Entity = REComponentGetEntity();
                v93 = v199;
                if (REEntityGetSwiftObject())
                {
                  type metadata accessor for Entity();
                  v94 = swift_dynamicCastClassUnconditional();
LABEL_50:
                  v95 = v94;
                  goto LABEL_123;
                }

                result = REEntityIsBeingDestroyed();
                if (result)
                {
LABEL_179:
                  __break(1u);
                  goto LABEL_180;
                }

                specialized static Entity.entityInfoType(_:)(Entity);
                if (!v151)
                {
                  v94 = makeEntity(for:)(Entity);
                  goto LABEL_50;
                }

                v95 = (*(v151 + 232))();
                v152 = *(v95 + 16);

                MEMORY[0x1C68F9740](v152, 0);
                *(v95 + 16) = Entity;
                MEMORY[0x1C68F9740](Entity, v95);
              }

              else
              {
                v95 = 0;
                v93 = v199;
              }
            }

            else
            {
              v95 = 0;
              v91 = v61;
              v93 = v199;
            }

LABEL_123:
            specialized ActionEventData.action<A>()(v93, v91, a9, a10, &v202);
            if (v202 != 1)
            {
              __src[3] = v204;
              __src[4] = v205;
              __src[5] = v206;
              __src[6] = v207;
              __src[1] = v202;
              __src[2] = v203;
              v153 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(a11, a12);
              *(&__src[16] + 8) = v211;
              *(&__src[17] + 8) = v212;
              *(&__src[8] + 8) = vcvtq_f64_f32(v67);
              v128 = v208;
              *(&__src[14] + 8) = v209;
              *(&__src[15] + 8) = v210;
              LOBYTE(__src[7]) = v153 & 1;
              *&__src[0] = v87;
              *(&__src[7] + 1) = v95;
              LOBYTE(__src[8]) = v174;
              *(&__src[9] + 1) = v24;
              *&__src[10] = v180;
              *(&__src[10] + 1) = 0xBFF0000000000000;
              LOBYTE(__src[11]) = 0;
              v154 = v177;
LABEL_145:
              *(&__src[11] + 1) = v154;
              LOBYTE(__src[12]) = 0;
              v158 = v182;
              goto LABEL_146;
            }

            goto LABEL_152;
          }

          v68 = makeEntity(for:)(v62);
LABEL_32:
          v69 = v68;
          goto LABEL_46;
        }

        __break(1u);
        goto LABEL_172;
      }

      if (a4 != 4)
      {
        if (a4 != 8)
        {
          goto LABEL_42;
        }

        v198 = a7;
        v190 = a15;
        v47 = a8;
        v187 = a16;
        v191 = a5;
        v192 = a13;
        v48 = *a2;
        v49 = a2[1];
        v50 = a2[4];
        v51 = a2[5];
        v52 = a2[7];
        v53 = a2[8];
        v176 = *(a2 + 72);
        v179 = a2[10];
        v182 = a2[11];
        v183 = a2[6];
        v193 = a14;
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v54 = swift_dynamicCastClassUnconditional();
        }

        else
        {
          result = REEntityIsBeingDestroyed();
          if (result)
          {
LABEL_177:
            __break(1u);
            goto LABEL_178;
          }

          specialized static Entity.entityInfoType(_:)(v48);
          if (v136)
          {
            v55 = (*(v136 + 232))();
            v137 = *(v55 + 16);

            MEMORY[0x1C68F9740](v137, 0);
            *(v55 + 16) = v48;
            MEMORY[0x1C68F9740](v48, v55);

LABEL_99:
            type metadata accessor for AnimationPlaybackController();
            v138 = swift_allocObject();
            *(v138 + 40) = 0;
            swift_weakInit();
            *(v138 + 16) = v49;
            swift_weakAssign();

            *(v138 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v55 + 16));
            v139 = Hasher._finalize()();

            *(v138 + 24) = v139;
            v140 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(v50, 0, v51, v140, v141, &v208);

            if (v52)
            {
              v142 = v47;
              if (REBindPointBoundComponent())
              {
                v143 = REComponentGetEntity();
                v144 = v198;
                if (REEntityGetSwiftObject())
                {
                  type metadata accessor for Entity();
                  v145 = swift_dynamicCastClassUnconditional();
LABEL_103:
                  v146 = v145;
                  goto LABEL_142;
                }

                result = REEntityIsBeingDestroyed();
                if (result)
                {
LABEL_183:
                  __break(1u);
                  goto LABEL_184;
                }

                specialized static Entity.entityInfoType(_:)(v143);
                if (!v166)
                {
                  v145 = makeEntity(for:)(v143);
                  goto LABEL_103;
                }

                v146 = (*(v166 + 232))();
                v167 = *(v146 + 16);

                MEMORY[0x1C68F9740](v167, 0);
                *(v146 + 16) = v143;
                MEMORY[0x1C68F9740](v143, v146);
              }

              else
              {
                v146 = 0;
                v144 = v198;
              }
            }

            else
            {
              v146 = 0;
              v142 = v47;
              v144 = v198;
            }

LABEL_142:
            specialized ActionEventData.action<A>()(v144, v142, a9, a10, &v202);
            if (v202 != 1)
            {
              __src[3] = v204;
              __src[4] = v205;
              __src[5] = v206;
              __src[6] = v207;
              __src[1] = v202;
              __src[2] = v203;
              v168 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(a11, a12);
              *(&__src[16] + 8) = v211;
              *(&__src[17] + 8) = v212;
              *(&__src[8] + 8) = vcvtq_f64_f32(v53);
              v128 = v208;
              *(&__src[14] + 8) = v209;
              *(&__src[15] + 8) = v210;
              LOBYTE(__src[7]) = v168 & 1;
              *&__src[0] = v138;
              *(&__src[7] + 1) = v146;
              LOBYTE(__src[8]) = v176;
              __src[10] = 0uLL;
              *(&__src[9] + 1) = v24;
              LOBYTE(__src[11]) = 1;
              v154 = v179;
              goto LABEL_145;
            }

LABEL_152:

            __dst[2] = v204;
            __dst[3] = v205;
            __dst[4] = v206;
            __dst[5] = v207;
            __dst[0] = v202;
            __dst[1] = v203;
            v163 = v190;
            v164 = v187;
            goto LABEL_155;
          }

          v54 = makeEntity(for:)(v48);
        }

        v55 = v54;
        goto LABEL_99;
      }

      v184 = a11;
      v186 = a12;
      v195 = a9;
      v197 = a7;
      v189 = a10;
      v190 = a15;
      v40 = a8;
      v187 = a16;
      v191 = a5;
      v192 = a13;
      v76 = *a2;
      v77 = a2[1];
      v25 = a2[4];
      v72 = a2[5];
      v78 = a2[8];
      v181 = a2[7];
      v183 = a2[6];
      v16 = a2[9];
      LOBYTE(v178) = *(a2 + 80);
      v193 = a14;
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v79 = swift_dynamicCastClassUnconditional();
        goto LABEL_38;
      }

LABEL_59:
      result = REEntityIsBeingDestroyed();
      if (result)
      {
LABEL_173:
        __break(1u);
        goto LABEL_174;
      }

      specialized static Entity.entityInfoType(_:)(v76);
      if (v102)
      {
        v80 = (*(v102 + 232))();
        v103 = *(v80 + 16);

        MEMORY[0x1C68F9740](v103, 0);
        *(v80 + 16) = v76;
        MEMORY[0x1C68F9740](v76, v80);

LABEL_62:
        type metadata accessor for AnimationPlaybackController();
        v104 = swift_allocObject();
        *(v104 + 40) = 0;
        swift_weakInit();
        *(v104 + 16) = v77;
        swift_weakAssign();

        *(v104 + 32) = REEntityGetLocalId();
        Hasher.init(_seed:)();
        MEMORY[0x1C68F4C10](*(v80 + 16));
        v105 = Hasher._finalize()();

        *(v104 + 24) = v105;
        v106 = String.init(cString:)();
        specialized ActionEventData.init(eventID:coreData:typeName:)(v25, 0, v72, v106, v107, &v208);

        if (v78)
        {
          v108 = v40;
          if (REBindPointBoundComponent())
          {
            v109 = REComponentGetEntity();
            v110 = v197;
            if (REEntityGetSwiftObject())
            {
              type metadata accessor for Entity();
              v111 = swift_dynamicCastClassUnconditional();
LABEL_66:
              v112 = v111;
              goto LABEL_128;
            }

            result = REEntityIsBeingDestroyed();
            if (result)
            {
LABEL_180:
              __break(1u);
LABEL_181:
              __break(1u);
              goto LABEL_182;
            }

            specialized static Entity.entityInfoType(_:)(v109);
            if (!v155)
            {
              v111 = makeEntity(for:)(v109);
              goto LABEL_66;
            }

            v112 = (*(v155 + 232))();
            v156 = *(v112 + 16);

            MEMORY[0x1C68F9740](v156, 0);
            *(v112 + 16) = v109;
            MEMORY[0x1C68F9740](v109, v112);
          }

          else
          {
            v112 = 0;
            v110 = v197;
          }
        }

        else
        {
          v112 = 0;
          v108 = v40;
          v110 = v197;
        }

LABEL_128:
        specialized ActionEventData.action<A>()(v110, v108, v195, v189, &v202);
        if (v202 != 1)
        {
          __src[3] = v204;
          __src[4] = v205;
          __src[5] = v206;
          __src[6] = v207;
          __src[1] = v202;
          __src[2] = v203;
          v157 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(v184, v186);
          *(&__src[16] + 8) = v211;
          *(&__src[17] + 8) = v212;
          *(&__src[8] + 8) = vcvtq_f64_f32(v16);
          v128 = v208;
          *(&__src[14] + 8) = v209;
          *(&__src[15] + 8) = v210;
          LOBYTE(__src[7]) = v157 & 1;
          *&__src[0] = v104;
          *(&__src[7] + 1) = v112;
          LOBYTE(__src[8]) = v178;
          *(&__src[9] + 1) = v24;
          *&__src[10] = v181;
          v158 = 0xBFF0000000000000;
          *(&__src[10] + 1) = 0xBFF0000000000000;
          LOBYTE(__src[11]) = 0;
          *(&__src[11] + 1) = 0xBFF0000000000000;
          LOBYTE(__src[12]) = 0;
LABEL_146:
          *(&__src[12] + 1) = v158;
          LOBYTE(__src[13]) = 0;
          goto LABEL_147;
        }

        goto LABEL_152;
      }

      v79 = makeEntity(for:)(v76);
LABEL_38:
      v80 = v79;
      goto LABEL_62;
    }

    if (a4 <= 63)
    {
      if (a4 != 16)
      {
        if (a4 != 32)
        {
          goto LABEL_42;
        }

        v195 = a9;
        v197 = a7;
        v189 = a10;
        v190 = a15;
        v40 = a8;
        v191 = a5;
        v192 = a13;
        v41 = *a2;
        v42 = a2[1];
        v43 = a2[5];
        v186 = a2[4];
        v187 = a2[6];
        v44 = a2[7];
        v193 = a14;
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v45 = swift_dynamicCastClassUnconditional();
        }

        else
        {
          result = REEntityIsBeingDestroyed();
          if (result)
          {
LABEL_176:
            __break(1u);
            goto LABEL_177;
          }

          specialized static Entity.entityInfoType(_:)(v41);
          if (v129)
          {
            v46 = (*(v129 + 232))();
            v130 = *(v46 + 16);

            MEMORY[0x1C68F9740](v130, 0);
            *(v46 + 16) = v41;
            MEMORY[0x1C68F9740](v41, v46);

LABEL_89:
            type metadata accessor for AnimationPlaybackController();
            v76 = swift_allocObject();
            *(v76 + 40) = 0;
            swift_weakInit();
            *(v76 + 16) = v42;
            swift_weakAssign();

            *(v76 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v46 + 16));
            v131 = Hasher._finalize()();

            *(v76 + 24) = v131;
            v132 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v43, v132, v133, &v208);

            if (v44)
            {
              v78 = v40;
              if (REBindPointBoundComponent())
              {
                v101 = REComponentGetEntity();
                v77 = v197;
                if (REEntityGetSwiftObject())
                {
                  goto LABEL_92;
                }

                result = REEntityIsBeingDestroyed();
                if (result)
                {
LABEL_182:
                  __break(1u);
                  goto LABEL_183;
                }

                goto LABEL_134;
              }

              goto LABEL_95;
            }

            goto LABEL_94;
          }

          v45 = makeEntity(for:)(v41);
        }

        v46 = v45;
        goto LABEL_89;
      }

      v195 = a9;
      v197 = a7;
      v189 = a10;
      v190 = a15;
      v40 = a8;
      v191 = a5;
      v192 = a13;
      v70 = *a2;
      v71 = a2[1];
      v72 = a2[5];
      v186 = a2[4];
      v187 = a2[6];
      v73 = a2[7];
      v193 = a14;
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v74 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        result = REEntityIsBeingDestroyed();
        if (result)
        {
LABEL_172:
          __break(1u);
          goto LABEL_173;
        }

        specialized static Entity.entityInfoType(_:)(v70);
        if (v96)
        {
          v75 = (*(v96 + 232))();
          v97 = *(v75 + 16);

          MEMORY[0x1C68F9740](v97, 0);
          *(v75 + 16) = v70;
          MEMORY[0x1C68F9740](v70, v75);

LABEL_54:
          type metadata accessor for AnimationPlaybackController();
          v76 = swift_allocObject();
          *(v76 + 40) = 0;
          swift_weakInit();
          *(v76 + 16) = v71;
          swift_weakAssign();

          *(v76 + 32) = REEntityGetLocalId();
          Hasher.init(_seed:)();
          MEMORY[0x1C68F4C10](*(v75 + 16));
          v98 = Hasher._finalize()();

          *(v76 + 24) = v98;
          v99 = String.init(cString:)();
          specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v72, v99, v100, &v208);

          if (v73)
          {
            v78 = v40;
            if (REBindPointBoundComponent())
            {
              v101 = REComponentGetEntity();
              v77 = v197;
              if (REEntityGetSwiftObject())
              {
LABEL_92:
                type metadata accessor for Entity();
                v134 = swift_dynamicCastClassUnconditional();
LABEL_93:
                v135 = v134;
LABEL_136:
                specialized ActionEventData.action<A>()(v77, v78, v195, v189, &v202);
                if (v202 != 1)
                {
                  __src[3] = v204;
                  __src[4] = v205;
                  __src[5] = v206;
                  __src[6] = v207;
                  __src[1] = v202;
                  __src[2] = v203;
                  *(&__src[16] + 8) = v211;
                  *(&__src[17] + 8) = v212;
                  *(&__src[14] + 8) = v209;
                  *(&__src[15] + 8) = v210;
                  LOBYTE(__src[7]) = 1;
                  *&__src[0] = v76;
                  *(&__src[7] + 1) = v135;
                  LOBYTE(__src[8]) = 0;
                  *(&__src[8] + 1) = 0;
                  *&__src[9] = 0;
                  __src[10] = 0uLL;
                  *(&__src[9] + 1) = v24;
                  LOBYTE(__src[11]) = 1;
                  *(&__src[11] + 1) = v186;
                  LOBYTE(__src[12]) = 0;
                  *(&__src[12] + 1) = 0;
                  LOBYTE(__src[13]) = 1;
                  *(&__src[13] + 8) = v208;
                  v165 = v187;
LABEL_154:
                  *(&__src[18] + 1) = v165;
                  v191(__src);

                  memcpy(__dst, __src, sizeof(__dst));
                  v163 = v192;
                  v164 = v193;
                  goto LABEL_155;
                }

                __dst[2] = v204;
                __dst[3] = v205;
                __dst[4] = v206;
                __dst[5] = v207;
                __dst[0] = v202;
                __dst[1] = v203;
                v163 = v190;
                v164 = a16;
LABEL_155:
                outlined destroy of BodyTrackingComponent?(__dst, v163, v164);
                return 0;
              }

              if (REEntityIsBeingDestroyed())
              {
                __break(1u);
                goto LABEL_59;
              }

LABEL_134:
              specialized static Entity.entityInfoType(_:)(v101);
              if (v161)
              {
                v135 = (*(v161 + 232))();
                v162 = *(v135 + 16);

                MEMORY[0x1C68F9740](v162, 0);
                *(v135 + 16) = v101;
                MEMORY[0x1C68F9740](v101, v135);

                goto LABEL_136;
              }

              v134 = makeEntity(for:)(v101);
              goto LABEL_93;
            }

LABEL_95:
            v135 = 0;
            v77 = v197;
            goto LABEL_136;
          }

LABEL_94:
          v135 = 0;
          v78 = v40;
          v77 = v197;
          goto LABEL_136;
        }

        v74 = makeEntity(for:)(v70);
      }

      v75 = v74;
      goto LABEL_54;
    }

    if (a4 != 64)
    {
      if (a4 != 128)
      {
        goto LABEL_42;
      }

      v194 = a9;
      v196 = a7;
      v56 = a8;
      v190 = a15;
      v191 = a5;
      v192 = a13;
      v57 = *a2;
      v58 = a2[1];
      v187 = a16;
      v188 = a2[3];
      v29 = a2[5];
      v193 = a14;
      v185 = a2[4];
      if (REEntityGetSwiftObject())
      {
        v30 = a10;
        type metadata accessor for Entity();
        v59 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        result = REEntityIsBeingDestroyed();
        if (result)
        {
LABEL_178:
          __break(1u);
          goto LABEL_179;
        }

        specialized static Entity.entityInfoType(_:)(v57);
        v30 = a10;
        if (v147)
        {
          v60 = (*(v147 + 232))();
          v148 = *(v60 + 16);

          MEMORY[0x1C68F9740](v148, 0);
          *(v60 + 16) = v57;
          MEMORY[0x1C68F9740](v57, v60);

LABEL_107:
          type metadata accessor for AnimationPlaybackController();
          v31 = swift_allocObject();
          *(v31 + 40) = 0;
          swift_weakInit();
          *(v31 + 16) = v58;
          swift_weakAssign();

          *(v31 + 32) = REEntityGetLocalId();
          Hasher.init(_seed:)();
          MEMORY[0x1C68F4C10](*(v60 + 16));
          v149 = Hasher._finalize()();

          *(v31 + 24) = v149;
          if (v29)
          {
            v28 = v56;
            if (REBindPointBoundComponent())
            {
              v116 = REComponentGetEntity();
              v26 = v196;
              if (REEntityGetSwiftObject())
              {
                goto LABEL_110;
              }

              result = REEntityIsBeingDestroyed();
              if (result)
              {
LABEL_184:
                __break(1u);
                return result;
              }

LABEL_149:
              specialized static Entity.entityInfoType(_:)(v116);
              if (!v169)
              {
                v150 = makeEntity(for:)(v116);
                goto LABEL_111;
              }

              v29 = (*(v169 + 232))();
              v170 = *(v29 + 16);

              MEMORY[0x1C68F9740](v170, 0);
              *(v29 + 16) = v116;
              MEMORY[0x1C68F9740](v116, v29);

LABEL_151:
              v171 = String.init(cString:)();
              specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v188, v171, v172, &v208);

              specialized ActionEventData.action<A>()(v26, v28, v194, v30, &v202);
              if (v202 != 1)
              {
                __src[3] = v204;
                __src[4] = v205;
                __src[5] = v206;
                __src[6] = v207;
                __src[1] = v202;
                __src[2] = v203;
                *(&__src[16] + 8) = v211;
                *(&__src[17] + 8) = v212;
                *(&__src[14] + 8) = v209;
                *(&__src[15] + 8) = v210;
                LOBYTE(__src[7]) = 1;
                *&__src[0] = v31;
                *(&__src[7] + 1) = v29;
                LOBYTE(__src[8]) = 0;
                *(&__src[8] + 1) = 0;
                *&__src[9] = 0;
                __src[10] = 0uLL;
                *(&__src[9] + 1) = v24;
                LOBYTE(__src[11]) = 1;
                *(&__src[11] + 1) = 0;
                LOBYTE(__src[12]) = 1;
                *(&__src[12] + 1) = 0;
                LOBYTE(__src[13]) = 1;
                *(&__src[13] + 8) = v208;
                v165 = v185;
                goto LABEL_154;
              }

              goto LABEL_152;
            }

            goto LABEL_113;
          }

          goto LABEL_112;
        }

        v59 = makeEntity(for:)(v57);
      }

      v60 = v59;
      goto LABEL_107;
    }

    v194 = a9;
    v196 = a7;
    v56 = a8;
    v190 = a15;
    v191 = a5;
    v192 = a13;
    v81 = *a2;
    v82 = a2[1];
    v27 = a2[2];
    v187 = a16;
    v188 = a2[3];
    v29 = a2[5];
    v193 = a14;
    v185 = a2[4];
    if (REEntityGetSwiftObject())
    {
      v30 = a10;
      type metadata accessor for Entity();
      v83 = swift_dynamicCastClassUnconditional();
    }

    else
    {
      result = REEntityIsBeingDestroyed();
      if (result)
      {
LABEL_174:
        __break(1u);
LABEL_175:
        __break(1u);
        goto LABEL_176;
      }

      specialized static Entity.entityInfoType(_:)(v81);
      v30 = a10;
      if (v113)
      {
        v84 = (*(v113 + 232))();
        v114 = *(v84 + 16);

        MEMORY[0x1C68F9740](v114, 0);
        *(v84 + 16) = v81;
        MEMORY[0x1C68F9740](v81, v84);

LABEL_70:
        type metadata accessor for AnimationPlaybackController();
        v31 = swift_allocObject();
        *(v31 + 40) = 0;
        swift_weakInit();
        *(v31 + 16) = v82;
        swift_weakAssign();

        *(v31 + 32) = REEntityGetLocalId();
        Hasher.init(_seed:)();
        MEMORY[0x1C68F4C10](*(v84 + 16));
        v115 = Hasher._finalize()();

        *(v31 + 24) = v115;
        if (v29)
        {
          v28 = v56;
          if (REBindPointBoundComponent())
          {
            v116 = REComponentGetEntity();
            v26 = v196;
            if (REEntityGetSwiftObject())
            {
LABEL_110:
              type metadata accessor for Entity();
              v150 = swift_dynamicCastClassUnconditional();
LABEL_111:
              v29 = v150;
              goto LABEL_151;
            }

            if (REEntityIsBeingDestroyed())
            {
              __break(1u);
LABEL_75:
              result = REEntityIsBeingDestroyed();
              if ((result & 1) == 0)
              {
                specialized static Entity.entityInfoType(_:)(v27);
                if (v117)
                {
                  v33 = (*(v117 + 232))();
                  v118 = *(v33 + 16);

                  MEMORY[0x1C68F9740](v118, 0);
                  *(v33 + 16) = v27;
                  MEMORY[0x1C68F9740](v27, v33);

LABEL_78:
                  type metadata accessor for AnimationPlaybackController();
                  v119 = swift_allocObject();
                  *(v119 + 40) = 0;
                  swift_weakInit();
                  *(v119 + 16) = v28;
                  swift_weakAssign();

                  *(v119 + 32) = REEntityGetLocalId();
                  Hasher.init(_seed:)();
                  MEMORY[0x1C68F4C10](*(v33 + 16));
                  v120 = Hasher._finalize()();

                  *(v119 + 24) = v120;
                  v121 = String.init(cString:)();
                  specialized ActionEventData.init(eventID:coreData:typeName:)(v29, 0, v30, v121, v122, &v208);

                  if (!v31 || !REBindPointBoundComponent())
                  {
                    v126 = 0;
                    v124 = v196;
                    goto LABEL_84;
                  }

                  v123 = REComponentGetEntity();
                  v124 = v196;
                  if (REEntityGetSwiftObject())
                  {
                    type metadata accessor for Entity();
                    v125 = swift_dynamicCastClassUnconditional();
LABEL_82:
                    v126 = v125;
                    goto LABEL_84;
                  }

                  result = REEntityIsBeingDestroyed();
                  if ((result & 1) == 0)
                  {
                    specialized static Entity.entityInfoType(_:)(v123);
                    if (!v159)
                    {
                      v125 = makeEntity(for:)(v123);
                      goto LABEL_82;
                    }

                    v126 = (*(v159 + 232))();
                    v160 = *(v126 + 16);

                    MEMORY[0x1C68F9740](v160, 0);
                    *(v126 + 16) = v123;
                    MEMORY[0x1C68F9740](v123, v126);

LABEL_84:
                    specialized ActionEventData.action<A>()(v124, v26, v194, v188, &v202);
                    if (v202 != 1)
                    {
                      __src[3] = v204;
                      __src[4] = v205;
                      __src[5] = v206;
                      __src[6] = v207;
                      __src[1] = v202;
                      __src[2] = v203;
                      v127 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(v184, v185);
                      *(&__src[16] + 8) = v211;
                      *(&__src[17] + 8) = v212;
                      *(&__src[8] + 8) = vcvtq_f64_f32(v17);
                      *(&__src[10] + 1) = v16.f32[0];
                      v128 = v208;
                      *(&__src[14] + 8) = v209;
                      LOBYTE(__src[7]) = v127 & 1;
                      *&__src[0] = v119;
                      *(&__src[7] + 1) = v126;
                      LOBYTE(__src[8]) = v173;
                      *(&__src[9] + 1) = v24;
                      *&__src[10] = v175;
                      LOBYTE(__src[11]) = 0;
                      *(&__src[11] + 1) = v181;
                      LOBYTE(__src[12]) = 0;
                      *(&__src[12] + 1) = v178;
                      LOBYTE(__src[13]) = 0;
                      *(&__src[15] + 8) = v210;
LABEL_147:
                      *(&__src[13] + 8) = v128;
                      v165 = v183;
                      goto LABEL_154;
                    }

                    goto LABEL_152;
                  }

                  goto LABEL_181;
                }

                v32 = makeEntity(for:)(v27);
LABEL_8:
                v33 = v32;
                goto LABEL_78;
              }

              goto LABEL_175;
            }

            goto LABEL_149;
          }

LABEL_113:
          v29 = 0;
          v26 = v196;
          goto LABEL_151;
        }

LABEL_112:
        v28 = v56;
        v26 = v196;
        goto LABEL_151;
      }

      v83 = makeEntity(for:)(v81);
    }

    v84 = v83;
    goto LABEL_70;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  __swift_project_value_buffer(v34, static AnimationLogger.logger);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *&__dst[0] = v38;
    *v37 = 136315138;
    *(v37 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002FLL, 0x80000001C18E4580, __dst);
    _os_log_impl(&dword_1C1358000, v35, v36, "%s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1C6902A30](v38, -1, -1);
    MEMORY[0x1C6902A30](v37, -1, -1);
  }

  return 1;
}

{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    v25 = a16;
    if (a4 <= 15)
    {
      if (a4 <= 3)
      {
        if (a4 != 1)
        {
          if (a4 == 2)
          {
            v183 = a11;
            v184 = a12;
            v193 = a9;
            v195 = a7;
            v187 = a10;
            v189 = a15;
            v26 = a8;
            v186 = a16;
            v190 = a5;
            v191 = a13;
            v27 = *a2;
            v28 = a2[1];
            v29 = a2[4];
            v30 = a2[5];
            v16.i32[0] = *(a2 + 14);
            v177 = a2[8];
            v180 = a2[6];
            v174 = a2[9];
            v31 = a2[11];
            v182 = a2[10];
            v17 = a2[12];
            v172 = *(a2 + 104);
            v192 = a14;
            if (REEntityGetSwiftObject())
            {
              type metadata accessor for Entity();
              v32 = swift_dynamicCastClassUnconditional();
              goto LABEL_8;
            }

            goto LABEL_75;
          }

LABEL_42:

          return 0;
        }

        v198 = a7;
        v189 = a15;
        v61 = a8;
        v186 = a16;
        v190 = a5;
        v191 = a13;
        v62 = *a2;
        v63 = a2[1];
        v64 = a2[4];
        v65 = a2[5];
        v66 = a2[8];
        v67 = a2[9];
        v173 = *(a2 + 80);
        v176 = a2[11];
        v179 = a2[7];
        v181 = a2[12];
        v182 = a2[6];
        v192 = a14;
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v68 = swift_dynamicCastClassUnconditional();
          goto LABEL_32;
        }

        result = REEntityIsBeingDestroyed();
        if ((result & 1) == 0)
        {
          specialized static Entity.entityInfoType(_:)(v62);
          if (v85)
          {
            v69 = (*(v85 + 232))();
            v86 = *(v69 + 16);

            MEMORY[0x1C68F9740](v86, 0);
            *(v69 + 16) = v62;
            MEMORY[0x1C68F9740](v62, v69);

LABEL_46:
            type metadata accessor for AnimationPlaybackController();
            v87 = swift_allocObject();
            *(v87 + 40) = 0;
            swift_weakInit();
            *(v87 + 16) = v63;
            swift_weakAssign();

            *(v87 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v69 + 16));
            v88 = Hasher._finalize()();

            *(v87 + 24) = v88;
            v89 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(v64, 0, v65, v89, v90, &v208);

            if (v66)
            {
              v91 = v61;
              if (REBindPointBoundComponent())
              {
                Entity = REComponentGetEntity();
                v93 = v198;
                if (REEntityGetSwiftObject())
                {
                  type metadata accessor for Entity();
                  v94 = swift_dynamicCastClassUnconditional();
LABEL_50:
                  v95 = v94;
                  goto LABEL_123;
                }

                result = REEntityIsBeingDestroyed();
                if (result)
                {
LABEL_179:
                  __break(1u);
                  goto LABEL_180;
                }

                specialized static Entity.entityInfoType(_:)(Entity);
                if (!v150)
                {
                  v94 = makeEntity(for:)(Entity);
                  goto LABEL_50;
                }

                v95 = (*(v150 + 232))();
                v151 = *(v95 + 16);

                MEMORY[0x1C68F9740](v151, 0);
                *(v95 + 16) = Entity;
                MEMORY[0x1C68F9740](Entity, v95);
              }

              else
              {
                v95 = 0;
                v93 = v198;
              }
            }

            else
            {
              v95 = 0;
              v91 = v61;
              v93 = v198;
            }

LABEL_123:
            specialized ActionEventData.action<A>()(v93, v91, a9, a10, &v201);
            if (v207 != 1)
            {
              __src[5] = v205;
              __src[6] = v206;
              __src[7] = v207;
              __src[1] = v201;
              __src[2] = v202;
              __src[3] = v203;
              __src[4] = v204;
              v152 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(a11, a12);
              *(&__src[16] + 8) = v210;
              *(&__src[17] + 8) = v211;
              *(&__src[18] + 8) = v212;
              *(&__src[9] + 8) = vcvtq_f64_f32(v67);
              v127 = v208;
              *(&__src[15] + 8) = v209;
              LOBYTE(__src[8]) = v152 & 1;
              *&__src[0] = v87;
              *(&__src[8] + 1) = v95;
              LOBYTE(__src[9]) = v173;
              *(&__src[10] + 1) = v24;
              *&__src[11] = v179;
              *(&__src[11] + 1) = 0xBFF0000000000000;
              LOBYTE(__src[12]) = 0;
              v153 = v176;
LABEL_145:
              *(&__src[12] + 1) = v153;
              LOBYTE(__src[13]) = 0;
              v157 = v181;
              goto LABEL_146;
            }

            goto LABEL_152;
          }

          v68 = makeEntity(for:)(v62);
LABEL_32:
          v69 = v68;
          goto LABEL_46;
        }

        __break(1u);
        goto LABEL_172;
      }

      if (a4 != 4)
      {
        if (a4 != 8)
        {
          goto LABEL_42;
        }

        v197 = a7;
        v189 = a15;
        v47 = a8;
        v186 = a16;
        v190 = a5;
        v191 = a13;
        v48 = *a2;
        v49 = a2[1];
        v50 = a2[4];
        v51 = a2[5];
        v52 = a2[7];
        v53 = a2[8];
        v175 = *(a2 + 72);
        v178 = a2[10];
        v181 = a2[11];
        v182 = a2[6];
        v192 = a14;
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v54 = swift_dynamicCastClassUnconditional();
        }

        else
        {
          result = REEntityIsBeingDestroyed();
          if (result)
          {
LABEL_177:
            __break(1u);
            goto LABEL_178;
          }

          specialized static Entity.entityInfoType(_:)(v48);
          if (v135)
          {
            v55 = (*(v135 + 232))();
            v136 = *(v55 + 16);

            MEMORY[0x1C68F9740](v136, 0);
            *(v55 + 16) = v48;
            MEMORY[0x1C68F9740](v48, v55);

LABEL_99:
            type metadata accessor for AnimationPlaybackController();
            v137 = swift_allocObject();
            *(v137 + 40) = 0;
            swift_weakInit();
            *(v137 + 16) = v49;
            swift_weakAssign();

            *(v137 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v55 + 16));
            v138 = Hasher._finalize()();

            *(v137 + 24) = v138;
            v139 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(v50, 0, v51, v139, v140, &v208);

            if (v52)
            {
              v141 = v47;
              if (REBindPointBoundComponent())
              {
                v142 = REComponentGetEntity();
                v143 = v197;
                if (REEntityGetSwiftObject())
                {
                  type metadata accessor for Entity();
                  v144 = swift_dynamicCastClassUnconditional();
LABEL_103:
                  v145 = v144;
                  goto LABEL_142;
                }

                result = REEntityIsBeingDestroyed();
                if (result)
                {
LABEL_183:
                  __break(1u);
                  goto LABEL_184;
                }

                specialized static Entity.entityInfoType(_:)(v142);
                if (!v165)
                {
                  v144 = makeEntity(for:)(v142);
                  goto LABEL_103;
                }

                v145 = (*(v165 + 232))();
                v166 = *(v145 + 16);

                MEMORY[0x1C68F9740](v166, 0);
                *(v145 + 16) = v142;
                MEMORY[0x1C68F9740](v142, v145);
              }

              else
              {
                v145 = 0;
                v143 = v197;
              }
            }

            else
            {
              v145 = 0;
              v141 = v47;
              v143 = v197;
            }

LABEL_142:
            specialized ActionEventData.action<A>()(v143, v141, a9, a10, &v201);
            if (v207 != 1)
            {
              __src[5] = v205;
              __src[6] = v206;
              __src[7] = v207;
              __src[1] = v201;
              __src[2] = v202;
              __src[3] = v203;
              __src[4] = v204;
              v167 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(a11, a12);
              *(&__src[16] + 8) = v210;
              *(&__src[17] + 8) = v211;
              *(&__src[18] + 8) = v212;
              *(&__src[9] + 8) = vcvtq_f64_f32(v53);
              v127 = v208;
              *(&__src[15] + 8) = v209;
              LOBYTE(__src[8]) = v167 & 1;
              *&__src[0] = v137;
              *(&__src[8] + 1) = v145;
              LOBYTE(__src[9]) = v175;
              __src[11] = 0uLL;
              *(&__src[10] + 1) = v24;
              LOBYTE(__src[12]) = 1;
              v153 = v178;
              goto LABEL_145;
            }

LABEL_152:

            __dst[4] = v205;
            __dst[5] = v206;
            __dst[6] = v207;
            __dst[0] = v201;
            __dst[1] = v202;
            __dst[2] = v203;
            __dst[3] = v204;
            v162 = v189;
            v163 = v186;
            goto LABEL_155;
          }

          v54 = makeEntity(for:)(v48);
        }

        v55 = v54;
        goto LABEL_99;
      }

      v183 = a11;
      v185 = a12;
      v194 = a9;
      v196 = a7;
      v188 = a10;
      v189 = a15;
      v40 = a8;
      v186 = a16;
      v190 = a5;
      v191 = a13;
      v76 = *a2;
      v77 = a2[1];
      v25 = a2[4];
      v72 = a2[5];
      v78 = a2[8];
      v180 = a2[7];
      v182 = a2[6];
      v16 = a2[9];
      LOBYTE(v177) = *(a2 + 80);
      v192 = a14;
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v79 = swift_dynamicCastClassUnconditional();
        goto LABEL_38;
      }

LABEL_59:
      result = REEntityIsBeingDestroyed();
      if (result)
      {
LABEL_173:
        __break(1u);
        goto LABEL_174;
      }

      specialized static Entity.entityInfoType(_:)(v76);
      if (v102)
      {
        v80 = (*(v102 + 232))();
        v103 = *(v80 + 16);

        MEMORY[0x1C68F9740](v103, 0);
        *(v80 + 16) = v76;
        MEMORY[0x1C68F9740](v76, v80);

LABEL_62:
        type metadata accessor for AnimationPlaybackController();
        v104 = swift_allocObject();
        *(v104 + 40) = 0;
        swift_weakInit();
        *(v104 + 16) = v77;
        swift_weakAssign();

        *(v104 + 32) = REEntityGetLocalId();
        Hasher.init(_seed:)();
        MEMORY[0x1C68F4C10](*(v80 + 16));
        v105 = Hasher._finalize()();

        *(v104 + 24) = v105;
        v106 = String.init(cString:)();
        specialized ActionEventData.init(eventID:coreData:typeName:)(v25, 0, v72, v106, v107, &v208);

        if (v78)
        {
          v108 = v40;
          if (REBindPointBoundComponent())
          {
            v109 = REComponentGetEntity();
            v110 = v196;
            if (REEntityGetSwiftObject())
            {
              type metadata accessor for Entity();
              v111 = swift_dynamicCastClassUnconditional();
LABEL_66:
              v112 = v111;
              goto LABEL_128;
            }

            result = REEntityIsBeingDestroyed();
            if (result)
            {
LABEL_180:
              __break(1u);
LABEL_181:
              __break(1u);
              goto LABEL_182;
            }

            specialized static Entity.entityInfoType(_:)(v109);
            if (!v154)
            {
              v111 = makeEntity(for:)(v109);
              goto LABEL_66;
            }

            v112 = (*(v154 + 232))();
            v155 = *(v112 + 16);

            MEMORY[0x1C68F9740](v155, 0);
            *(v112 + 16) = v109;
            MEMORY[0x1C68F9740](v109, v112);
          }

          else
          {
            v112 = 0;
            v110 = v196;
          }
        }

        else
        {
          v112 = 0;
          v108 = v40;
          v110 = v196;
        }

LABEL_128:
        specialized ActionEventData.action<A>()(v110, v108, v194, v188, &v201);
        if (v207 != 1)
        {
          __src[5] = v205;
          __src[6] = v206;
          __src[7] = v207;
          __src[1] = v201;
          __src[2] = v202;
          __src[3] = v203;
          __src[4] = v204;
          v156 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(v183, v185);
          *(&__src[16] + 8) = v210;
          *(&__src[17] + 8) = v211;
          *(&__src[18] + 8) = v212;
          *(&__src[9] + 8) = vcvtq_f64_f32(v16);
          v127 = v208;
          *(&__src[15] + 8) = v209;
          LOBYTE(__src[8]) = v156 & 1;
          *&__src[0] = v104;
          *(&__src[8] + 1) = v112;
          LOBYTE(__src[9]) = v177;
          *(&__src[10] + 1) = v24;
          *&__src[11] = v180;
          v157 = 0xBFF0000000000000;
          *(&__src[11] + 1) = 0xBFF0000000000000;
          LOBYTE(__src[12]) = 0;
          *(&__src[12] + 1) = 0xBFF0000000000000;
          LOBYTE(__src[13]) = 0;
LABEL_146:
          *(&__src[13] + 1) = v157;
          LOBYTE(__src[14]) = 0;
          goto LABEL_147;
        }

        goto LABEL_152;
      }

      v79 = makeEntity(for:)(v76);
LABEL_38:
      v80 = v79;
      goto LABEL_62;
    }

    if (a4 <= 63)
    {
      if (a4 != 16)
      {
        if (a4 != 32)
        {
          goto LABEL_42;
        }

        v194 = a9;
        v196 = a7;
        v188 = a10;
        v189 = a15;
        v40 = a8;
        v190 = a5;
        v191 = a13;
        v41 = *a2;
        v42 = a2[1];
        v43 = a2[5];
        v185 = a2[4];
        v186 = a2[6];
        v44 = a2[7];
        v192 = a14;
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v45 = swift_dynamicCastClassUnconditional();
        }

        else
        {
          result = REEntityIsBeingDestroyed();
          if (result)
          {
LABEL_176:
            __break(1u);
            goto LABEL_177;
          }

          specialized static Entity.entityInfoType(_:)(v41);
          if (v128)
          {
            v46 = (*(v128 + 232))();
            v129 = *(v46 + 16);

            MEMORY[0x1C68F9740](v129, 0);
            *(v46 + 16) = v41;
            MEMORY[0x1C68F9740](v41, v46);

LABEL_89:
            type metadata accessor for AnimationPlaybackController();
            v76 = swift_allocObject();
            *(v76 + 40) = 0;
            swift_weakInit();
            *(v76 + 16) = v42;
            swift_weakAssign();

            *(v76 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v46 + 16));
            v130 = Hasher._finalize()();

            *(v76 + 24) = v130;
            v131 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v43, v131, v132, &v208);

            if (v44)
            {
              v78 = v40;
              if (REBindPointBoundComponent())
              {
                v101 = REComponentGetEntity();
                v77 = v196;
                if (REEntityGetSwiftObject())
                {
                  goto LABEL_92;
                }

                result = REEntityIsBeingDestroyed();
                if (result)
                {
LABEL_182:
                  __break(1u);
                  goto LABEL_183;
                }

                goto LABEL_134;
              }

              goto LABEL_95;
            }

            goto LABEL_94;
          }

          v45 = makeEntity(for:)(v41);
        }

        v46 = v45;
        goto LABEL_89;
      }

      v194 = a9;
      v196 = a7;
      v188 = a10;
      v189 = a15;
      v40 = a8;
      v190 = a5;
      v191 = a13;
      v70 = *a2;
      v71 = a2[1];
      v72 = a2[5];
      v185 = a2[4];
      v186 = a2[6];
      v73 = a2[7];
      v192 = a14;
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v74 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        result = REEntityIsBeingDestroyed();
        if (result)
        {
LABEL_172:
          __break(1u);
          goto LABEL_173;
        }

        specialized static Entity.entityInfoType(_:)(v70);
        if (v96)
        {
          v75 = (*(v96 + 232))();
          v97 = *(v75 + 16);

          MEMORY[0x1C68F9740](v97, 0);
          *(v75 + 16) = v70;
          MEMORY[0x1C68F9740](v70, v75);

LABEL_54:
          type metadata accessor for AnimationPlaybackController();
          v76 = swift_allocObject();
          *(v76 + 40) = 0;
          swift_weakInit();
          *(v76 + 16) = v71;
          swift_weakAssign();

          *(v76 + 32) = REEntityGetLocalId();
          Hasher.init(_seed:)();
          MEMORY[0x1C68F4C10](*(v75 + 16));
          v98 = Hasher._finalize()();

          *(v76 + 24) = v98;
          v99 = String.init(cString:)();
          specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v72, v99, v100, &v208);

          if (v73)
          {
            v78 = v40;
            if (REBindPointBoundComponent())
            {
              v101 = REComponentGetEntity();
              v77 = v196;
              if (REEntityGetSwiftObject())
              {
LABEL_92:
                type metadata accessor for Entity();
                v133 = swift_dynamicCastClassUnconditional();
LABEL_93:
                v134 = v133;
LABEL_136:
                specialized ActionEventData.action<A>()(v77, v78, v194, v188, &v201);
                if (v207 != 1)
                {
                  __src[5] = v205;
                  __src[6] = v206;
                  __src[7] = v207;
                  __src[1] = v201;
                  __src[2] = v202;
                  __src[3] = v203;
                  __src[4] = v204;
                  *(&__src[16] + 8) = v210;
                  *(&__src[17] + 8) = v211;
                  *(&__src[18] + 8) = v212;
                  *(&__src[15] + 8) = v209;
                  LOBYTE(__src[8]) = 1;
                  *&__src[0] = v76;
                  *(&__src[8] + 1) = v134;
                  LOBYTE(__src[9]) = 0;
                  *(&__src[9] + 1) = 0;
                  *&__src[10] = 0;
                  __src[11] = 0uLL;
                  *(&__src[10] + 1) = v24;
                  LOBYTE(__src[12]) = 1;
                  *(&__src[12] + 1) = v185;
                  LOBYTE(__src[13]) = 0;
                  *(&__src[13] + 1) = 0;
                  LOBYTE(__src[14]) = 1;
                  *(&__src[14] + 8) = v208;
                  v164 = v186;
LABEL_154:
                  *(&__src[19] + 1) = v164;
                  v190(__src);

                  memcpy(__dst, __src, sizeof(__dst));
                  v162 = v191;
                  v163 = v192;
                  goto LABEL_155;
                }

                __dst[4] = v205;
                __dst[5] = v206;
                __dst[6] = v207;
                __dst[0] = v201;
                __dst[1] = v202;
                __dst[2] = v203;
                __dst[3] = v204;
                v162 = v189;
                v163 = a16;
LABEL_155:
                outlined destroy of BodyTrackingComponent?(__dst, v162, v163);
                return 0;
              }

              if (REEntityIsBeingDestroyed())
              {
                __break(1u);
                goto LABEL_59;
              }

LABEL_134:
              specialized static Entity.entityInfoType(_:)(v101);
              if (v160)
              {
                v134 = (*(v160 + 232))();
                v161 = *(v134 + 16);

                MEMORY[0x1C68F9740](v161, 0);
                *(v134 + 16) = v101;
                MEMORY[0x1C68F9740](v101, v134);

                goto LABEL_136;
              }

              v133 = makeEntity(for:)(v101);
              goto LABEL_93;
            }

LABEL_95:
            v134 = 0;
            v77 = v196;
            goto LABEL_136;
          }

LABEL_94:
          v134 = 0;
          v78 = v40;
          v77 = v196;
          goto LABEL_136;
        }

        v74 = makeEntity(for:)(v70);
      }

      v75 = v74;
      goto LABEL_54;
    }

    if (a4 != 64)
    {
      if (a4 != 128)
      {
        goto LABEL_42;
      }

      v193 = a9;
      v195 = a7;
      v56 = a8;
      v189 = a15;
      v190 = a5;
      v191 = a13;
      v57 = *a2;
      v58 = a2[1];
      v186 = a16;
      v187 = a2[3];
      v29 = a2[5];
      v192 = a14;
      v184 = a2[4];
      if (REEntityGetSwiftObject())
      {
        v30 = a10;
        type metadata accessor for Entity();
        v59 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        result = REEntityIsBeingDestroyed();
        if (result)
        {
LABEL_178:
          __break(1u);
          goto LABEL_179;
        }

        specialized static Entity.entityInfoType(_:)(v57);
        v30 = a10;
        if (v146)
        {
          v60 = (*(v146 + 232))();
          v147 = *(v60 + 16);

          MEMORY[0x1C68F9740](v147, 0);
          *(v60 + 16) = v57;
          MEMORY[0x1C68F9740](v57, v60);

LABEL_107:
          type metadata accessor for AnimationPlaybackController();
          v31 = swift_allocObject();
          *(v31 + 40) = 0;
          swift_weakInit();
          *(v31 + 16) = v58;
          swift_weakAssign();

          *(v31 + 32) = REEntityGetLocalId();
          Hasher.init(_seed:)();
          MEMORY[0x1C68F4C10](*(v60 + 16));
          v148 = Hasher._finalize()();

          *(v31 + 24) = v148;
          if (v29)
          {
            v28 = v56;
            if (REBindPointBoundComponent())
            {
              v116 = REComponentGetEntity();
              v26 = v195;
              if (REEntityGetSwiftObject())
              {
                goto LABEL_110;
              }

              result = REEntityIsBeingDestroyed();
              if (result)
              {
LABEL_184:
                __break(1u);
                return result;
              }

LABEL_149:
              specialized static Entity.entityInfoType(_:)(v116);
              if (!v168)
              {
                v149 = makeEntity(for:)(v116);
                goto LABEL_111;
              }

              v29 = (*(v168 + 232))();
              v169 = *(v29 + 16);

              MEMORY[0x1C68F9740](v169, 0);
              *(v29 + 16) = v116;
              MEMORY[0x1C68F9740](v116, v29);

LABEL_151:
              v170 = String.init(cString:)();
              specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v187, v170, v171, &v208);

              specialized ActionEventData.action<A>()(v26, v28, v193, v30, &v201);
              if (v207 != 1)
              {
                __src[5] = v205;
                __src[6] = v206;
                __src[7] = v207;
                __src[1] = v201;
                __src[2] = v202;
                __src[3] = v203;
                __src[4] = v204;
                *(&__src[16] + 8) = v210;
                *(&__src[17] + 8) = v211;
                *(&__src[18] + 8) = v212;
                *(&__src[15] + 8) = v209;
                LOBYTE(__src[8]) = 1;
                *&__src[0] = v31;
                *(&__src[8] + 1) = v29;
                LOBYTE(__src[9]) = 0;
                *(&__src[9] + 1) = 0;
                *&__src[10] = 0;
                __src[11] = 0uLL;
                *(&__src[10] + 1) = v24;
                LOBYTE(__src[12]) = 1;
                *(&__src[12] + 1) = 0;
                LOBYTE(__src[13]) = 1;
                *(&__src[13] + 1) = 0;
                LOBYTE(__src[14]) = 1;
                *(&__src[14] + 8) = v208;
                v164 = v184;
                goto LABEL_154;
              }

              goto LABEL_152;
            }

            goto LABEL_113;
          }

          goto LABEL_112;
        }

        v59 = makeEntity(for:)(v57);
      }

      v60 = v59;
      goto LABEL_107;
    }

    v193 = a9;
    v195 = a7;
    v56 = a8;
    v189 = a15;
    v190 = a5;
    v191 = a13;
    v81 = *a2;
    v82 = a2[1];
    v27 = a2[2];
    v186 = a16;
    v187 = a2[3];
    v29 = a2[5];
    v192 = a14;
    v184 = a2[4];
    if (REEntityGetSwiftObject())
    {
      v30 = a10;
      type metadata accessor for Entity();
      v83 = swift_dynamicCastClassUnconditional();
    }

    else
    {
      result = REEntityIsBeingDestroyed();
      if (result)
      {
LABEL_174:
        __break(1u);
LABEL_175:
        __break(1u);
        goto LABEL_176;
      }

      specialized static Entity.entityInfoType(_:)(v81);
      v30 = a10;
      if (v113)
      {
        v84 = (*(v113 + 232))();
        v114 = *(v84 + 16);

        MEMORY[0x1C68F9740](v114, 0);
        *(v84 + 16) = v81;
        MEMORY[0x1C68F9740](v81, v84);

LABEL_70:
        type metadata accessor for AnimationPlaybackController();
        v31 = swift_allocObject();
        *(v31 + 40) = 0;
        swift_weakInit();
        *(v31 + 16) = v82;
        swift_weakAssign();

        *(v31 + 32) = REEntityGetLocalId();
        Hasher.init(_seed:)();
        MEMORY[0x1C68F4C10](*(v84 + 16));
        v115 = Hasher._finalize()();

        *(v31 + 24) = v115;
        if (v29)
        {
          v28 = v56;
          if (REBindPointBoundComponent())
          {
            v116 = REComponentGetEntity();
            v26 = v195;
            if (REEntityGetSwiftObject())
            {
LABEL_110:
              type metadata accessor for Entity();
              v149 = swift_dynamicCastClassUnconditional();
LABEL_111:
              v29 = v149;
              goto LABEL_151;
            }

            if (REEntityIsBeingDestroyed())
            {
              __break(1u);
LABEL_75:
              result = REEntityIsBeingDestroyed();
              if ((result & 1) == 0)
              {
                specialized static Entity.entityInfoType(_:)(v27);
                if (v117)
                {
                  v33 = (*(v117 + 232))();
                  v118 = *(v33 + 16);

                  MEMORY[0x1C68F9740](v118, 0);
                  *(v33 + 16) = v27;
                  MEMORY[0x1C68F9740](v27, v33);

LABEL_78:
                  type metadata accessor for AnimationPlaybackController();
                  v119 = swift_allocObject();
                  *(v119 + 40) = 0;
                  swift_weakInit();
                  *(v119 + 16) = v28;
                  swift_weakAssign();

                  *(v119 + 32) = REEntityGetLocalId();
                  Hasher.init(_seed:)();
                  MEMORY[0x1C68F4C10](*(v33 + 16));
                  v120 = Hasher._finalize()();

                  *(v119 + 24) = v120;
                  v121 = String.init(cString:)();
                  specialized ActionEventData.init(eventID:coreData:typeName:)(v29, 0, v30, v121, v122, &v208);

                  if (!v31 || !REBindPointBoundComponent())
                  {
                    v126 = 0;
                    v124 = v195;
                    goto LABEL_84;
                  }

                  v123 = REComponentGetEntity();
                  v124 = v195;
                  if (REEntityGetSwiftObject())
                  {
                    type metadata accessor for Entity();
                    v125 = swift_dynamicCastClassUnconditional();
LABEL_82:
                    v126 = v125;
                    goto LABEL_84;
                  }

                  result = REEntityIsBeingDestroyed();
                  if ((result & 1) == 0)
                  {
                    specialized static Entity.entityInfoType(_:)(v123);
                    if (!v158)
                    {
                      v125 = makeEntity(for:)(v123);
                      goto LABEL_82;
                    }

                    v126 = (*(v158 + 232))();
                    v159 = *(v126 + 16);

                    MEMORY[0x1C68F9740](v159, 0);
                    *(v126 + 16) = v123;
                    MEMORY[0x1C68F9740](v123, v126);

LABEL_84:
                    specialized ActionEventData.action<A>()(v124, v26, v193, v187, &v201);
                    if (v207 != 1)
                    {
                      __src[5] = v205;
                      __src[6] = v206;
                      __src[7] = v207;
                      __src[1] = v201;
                      __src[2] = v202;
                      __src[3] = v203;
                      __src[4] = v204;
                      LOBYTE(__src[8]) = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(v183, v184) & 1;
                      *&__src[0] = v119;
                      *(&__src[8] + 1) = v126;
                      LOBYTE(__src[9]) = v172;
                      *(&__src[9] + 8) = vcvtq_f64_f32(v17);
                      *(&__src[10] + 1) = v24;
                      *&__src[11] = v174;
                      *(&__src[11] + 1) = v16.f32[0];
                      LOBYTE(__src[12]) = 0;
                      *(&__src[12] + 1) = v180;
                      LOBYTE(__src[13]) = 0;
                      *(&__src[13] + 1) = v177;
                      LOBYTE(__src[14]) = 0;
                      *(&__src[16] + 8) = v210;
                      *(&__src[17] + 8) = v211;
                      *(&__src[18] + 8) = v212;
                      v127 = v208;
                      *(&__src[15] + 8) = v209;
LABEL_147:
                      *(&__src[14] + 8) = v127;
                      v164 = v182;
                      goto LABEL_154;
                    }

                    goto LABEL_152;
                  }

                  goto LABEL_181;
                }

                v32 = makeEntity(for:)(v27);
LABEL_8:
                v33 = v32;
                goto LABEL_78;
              }

              goto LABEL_175;
            }

            goto LABEL_149;
          }

LABEL_113:
          v29 = 0;
          v26 = v195;
          goto LABEL_151;
        }

LABEL_112:
        v28 = v56;
        v26 = v195;
        goto LABEL_151;
      }

      v83 = makeEntity(for:)(v81);
    }

    v84 = v83;
    goto LABEL_70;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  __swift_project_value_buffer(v34, static AnimationLogger.logger);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *&__dst[0] = v38;
    *v37 = 136315138;
    *(v37 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002FLL, 0x80000001C18E4580, __dst);
    _os_log_impl(&dword_1C1358000, v35, v36, "%s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1C6902A30](v38, -1, -1);
    MEMORY[0x1C6902A30](v37, -1, -1);
  }

  return 1;
}