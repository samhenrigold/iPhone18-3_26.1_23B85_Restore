__n128 ForceEffectEvent.parameters.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + *(a2 + 36);
  v5 = *(v4 + 208);
  v19[12] = *(v4 + 192);
  v19[13] = v5;
  v20 = *(v4 + 224);
  v6 = *(v4 + 144);
  v19[8] = *(v4 + 128);
  v19[9] = v6;
  v7 = *(v4 + 176);
  v19[10] = *(v4 + 160);
  v19[11] = v7;
  v8 = *(v4 + 80);
  v19[4] = *(v4 + 64);
  v19[5] = v8;
  v9 = *(v4 + 112);
  v19[6] = *(v4 + 96);
  v19[7] = v9;
  v10 = *(v4 + 16);
  v19[0] = *v4;
  v19[1] = v10;
  v11 = *(v4 + 48);
  v19[2] = *(v4 + 32);
  v19[3] = v11;
  outlined destroy of ForceEffectParameters(v19);
  v12 = *(a1 + 208);
  *(v4 + 192) = *(a1 + 192);
  *(v4 + 208) = v12;
  *(v4 + 224) = *(a1 + 224);
  v13 = *(a1 + 144);
  *(v4 + 128) = *(a1 + 128);
  *(v4 + 144) = v13;
  v14 = *(a1 + 176);
  *(v4 + 160) = *(a1 + 160);
  *(v4 + 176) = v14;
  v15 = *(a1 + 80);
  *(v4 + 64) = *(a1 + 64);
  *(v4 + 80) = v15;
  v16 = *(a1 + 112);
  *(v4 + 96) = *(a1 + 96);
  *(v4 + 112) = v16;
  v17 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v17;
  result = *(a1 + 48);
  *(v4 + 32) = *(a1 + 32);
  *(v4 + 48) = result;
  return result;
}

RealityFoundation::ForceEffectComponent __swiftcall ForceEffectComponent.init(effects:simulationState:)(RealityFoundation::ForceEffectComponent effects, RealityFoundation::ForceEffectComponent::SimulationState simulationState)
{
  v3 = *simulationState;
  *v2 = effects.effects._rawValue;
  *(v2 + 8) = v3;
  effects.simulationState.value = simulationState;
  return effects;
}

uint64_t ForceEffectComponent.init(effect:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15ForceEffectBase_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15ForceEffectBase_pGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C1887600;
  result = outlined init with take of ForceEffectBase(a1, v4 + 32);
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

RealityFoundation::ForceEffectComponent __swiftcall ForceEffectComponent.init(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  result.effects._rawValue = REForceEffectComponentGetForceEffectCount();
  if ((result.effects._rawValue & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    swift_once();
LABEL_29:
    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static ForceEffectLogger.logger);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v36[0] = v31;
      *v30 = 136315138;
      *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000058, 0x80000001C18ECA10, v36);
      _os_log_impl(&dword_1C1358000, v28, v29, "%s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x1C6902A30](v31, -1, -1);
      MEMORY[0x1C6902A30](v30, -1, -1);
    }

    v2 = v32;
  }

  else
  {
    rawValue = result.effects._rawValue;
    if (result.effects._rawValue)
    {
      v5 = 0;
      v32 = v2;
      v33 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v6 = v5;
        if (v5 >= rawValue)
        {
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        if (__OFADD__(v5, 1))
        {
          goto LABEL_34;
        }

        v34 = (v5 + 1);
        ForceEffectEventKey = REForceEffectComponentGetForceEffectEventKey();
        if (one-time initialization token for _registeredForceEffectsCodable != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v8 = static ForceEffectComponent._registeredForceEffectsCodable;

        os_unfair_lock_lock(v8 + 6);
        v9 = *&v8[4]._os_unfair_lock_opaque;

        os_unfair_lock_unlock(v8 + 6);

        if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(ForceEffectEventKey), (v11 & 1) != 0))
        {
          v12 = (*(v9 + 56) + 32 * v10);
          v13 = *v12;
          v14 = v12[1];

          static ForceEffectProtocol<>.create(_:_:)(v6, v13, v14, &v35);
          outlined init with take of ForceEffectBase(&v35, v36);
          outlined init with copy of __REAssetService(v36, &v35);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v33[2] + 1, 1, v33);
          }

          v26 = v33[2];
          v25 = v33[3];
          if (v26 >= v25 >> 1)
          {
            v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v33);
          }

          __swift_destroy_boxed_opaque_existential_1(v36);
          v33[2] = v26 + 1;
          result.effects._rawValue = outlined init with take of ForceEffectBase(&v35, &v33[5 * v26 + 4]);
        }

        else
        {

          if (one-time initialization token for _registeredForceEffects != -1)
          {
            swift_once();
          }

          swift_beginAccess();
          v15 = static ForceEffectComponent._registeredForceEffects;

          os_unfair_lock_lock(v15 + 6);
          v16 = *&v15[4]._os_unfair_lock_opaque;

          os_unfair_lock_unlock(v15 + 6);

          if (!*(v16 + 16) || (v17 = specialized __RawDictionaryStorage.find<A>(_:)(ForceEffectEventKey), (v18 & 1) == 0))
          {

            if (one-time initialization token for logger != -1)
            {
              goto LABEL_36;
            }

            goto LABEL_29;
          }

          v19 = (*(v16 + 56) + 16 * v17);
          v20 = *v19;
          v21 = v19[1];

          static ForceEffectProtocol.create(_:_:)(v6, v20, v21, &v35);
          outlined init with take of ForceEffectBase(&v35, v36);
          outlined init with copy of __REAssetService(v36, &v35);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v33[2] + 1, 1, v33);
          }

          v23 = v33[2];
          v22 = v33[3];
          if (v23 >= v22 >> 1)
          {
            v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v33);
          }

          __swift_destroy_boxed_opaque_existential_1(v36);
          v33[2] = v23 + 1;
          result.effects._rawValue = outlined init with take of ForceEffectBase(&v35, &v33[5 * v23 + 4]);
        }

        v5 = v34;
        v2 = v32;
        if (v34 == rawValue)
        {
          goto LABEL_32;
        }
      }
    }

    v33 = MEMORY[0x1E69E7CC0];
  }

LABEL_32:
  *v2 = v33;
  *(v2 + 8) = 3;
  result.simulationState.value = v3;
  return result;
}

uint64_t ForceEffectComponent.__toCore(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  v11 = *(v1 + 8);
  v4 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  result = MEMORY[0x1C68FE250](*(v4 + 16));
  if (result)
  {
    v6 = *(v3 + 16);
    REForceEffectComponentResizeForceEffects();
    if (v6)
    {
      v7 = 0;
      v8 = v3 + 32;
      do
      {
        outlined init with copy of __REAssetService(v8, v12);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation15ForceEffectBase_pMd, &_s17RealityFoundation15ForceEffectBase_pMR);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation19ForceEffectInternal_pMd, &_s17RealityFoundation19ForceEffectInternal_pMR);
        swift_dynamicCast();
        v10 = v14;
        v9 = v15;
        __swift_project_boxed_opaque_existential_1(v13, v14);
        (*(v9 + 16))(v7, v2, v10, v9);
        __swift_destroy_boxed_opaque_existential_1(v13);
        v8 += 40;
        ++v7;
      }

      while (v6 != v7);
    }

    if (v11 == 3)
    {
      return REForceEffectComponentRemoveSimulationState();
    }

    else
    {
      return REForceEffectComponentSetSimulationState();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t one-time initialization function for _registeredForceEffects(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v8 = a2(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v8;
  *a5 = result;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ConstantForceEffect.CodingKeys()
{
  v1 = 0x6F69746365726964;
  if (*v0 != 1)
  {
    v1 = 0x646F4D6563726F66;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6874676E65727473;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ConstantForceEffect.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized ConstantForceEffect.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ConstantForceEffect.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ConstantForceEffect.CodingKeys and conformance ConstantForceEffect.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ConstantForceEffect.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ConstantForceEffect.CodingKeys and conformance ConstantForceEffect.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ConstantRadialForceEffect.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ConstantRadialForceEffect.CodingKeys and conformance ConstantRadialForceEffect.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ConstantRadialForceEffect.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ConstantRadialForceEffect.CodingKeys and conformance ConstantRadialForceEffect.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

float VortexForceEffect.init(strength:axis:)@<S0>(__n128 *a1@<X8>, double a2@<D0>, __n128 a3@<Q1>)
{
  result = a2;
  a1->n128_f32[0] = result;
  a1[1] = a3;
  a1[2].n128_u8[0] = 0;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance VortexForceEffect.CodingKeys()
{
  v1 = 1936291937;
  if (*v0 != 1)
  {
    v1 = 0x646F4D6563726F66;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6874676E65727473;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance VortexForceEffect.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized VortexForceEffect.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance VortexForceEffect.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type VortexForceEffect.CodingKeys and conformance VortexForceEffect.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance VortexForceEffect.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type VortexForceEffect.CodingKeys and conformance VortexForceEffect.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ConstantForceEffect.encode(to:)(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - v10;
  v17 = *(v5 + 16);
  v16 = *(v5 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v20) = 0;
  v12 = v18;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v12)
  {
    v13 = v16;
    v20 = v17;
    v19 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SIMD3<Float> and conformance SIMD3<A>, MEMORY[0x1E69E7458]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v20) = v13;
    v19 = 2;
    lazy protocol witness table accessor for type ForceMode and conformance ForceMode();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t ConstantForceEffect.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a6@<X8>)
{
  v20 = a6;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v11 = &v19 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v6)
  {
    v12 = v9;
    v14 = v20;
    v13 = v21;
    LOBYTE(v23) = 0;
    KeyedDecodingContainer.decode(_:forKey:)();
    v16 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
    v22 = 1;
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SIMD3<Float> and conformance SIMD3<A>, MEMORY[0x1E69E7468]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v19 = v23;
    v22 = 2;
    lazy protocol witness table accessor for type ForceMode and conformance ForceMode();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v12 + 8))(v11, v13);
    v18 = v23;
    *v14 = v16;
    *(v14 + 16) = v19;
    *(v14 + 32) = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t protocol witness for ForceEffectProtocol.parameterTypes.getter in conformance VortexForceEffect@<X0>(_DWORD *a1@<X8>)
{
  if (one-time initialization token for position != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = static PhysicsBodyParameterTypes.position;
  return result;
}

void __swiftcall DragForceEffect.init(strength:)(RealityFoundation::DragForceEffect *__return_ptr retstr, Swift::Double strength)
{
  v2 = strength;
  retstr->strength = v2;
  retstr->forceMode = RealityFoundation_ForceMode_force;
}

void protocol witness for CodingKey.init(stringValue:) in conformance ConstantRadialForceEffect.CodingKeys(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6874676E65727473 && a2 == 0xE800000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x646F4D6563726F66 && a2 == 0xE900000000000065)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DragForceEffect.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DragForceEffect.CodingKeys and conformance DragForceEffect.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DragForceEffect.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DragForceEffect.CodingKeys and conformance DragForceEffect.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ConstantRadialForceEffect.encode(to:)(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  v15 = *(v5 + 4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v19 = 0;
  v12 = v16;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v12)
  {
    v18 = v15;
    v17 = 1;
    lazy protocol witness table accessor for type ForceMode and conformance ForceMode();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t ConstantRadialForceEffect.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a6@<X8>)
{
  v20 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v19 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v6)
  {
    v13 = v19;
    v12 = v20;
    v23 = 0;
    KeyedDecodingContainer.decode(_:forKey:)();
    v15 = v14;
    v21 = 1;
    lazy protocol witness table accessor for type ForceMode and conformance ForceMode();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v13 + 8))(v11, v9);
    v16 = v22;
    *v12 = v15;
    *(v12 + 4) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t protocol witness for ForceEffectProtocol.parameterTypes.getter in conformance ConstantRadialForceEffect@<X0>(void *a1@<X2>, _DWORD *a2@<X3>, _DWORD *a4@<X8>)
{
  if (*a1 != -1)
  {
    v4 = a2;
    v5 = a4;
    result = swift_once();
    a4 = v5;
    a2 = v4;
  }

  *a4 = *a2;
  return result;
}

void __swiftcall TurbulenceForceEffect.init(strength:smoothness:speed:)(RealityFoundation::TurbulenceForceEffect *__return_ptr retstr, Swift::Double strength, Swift::Double smoothness, Swift::Double speed)
{
  v4 = strength;
  v5 = smoothness;
  retstr->strength = v4;
  retstr->smoothness = v5;
  v6 = speed;
  retstr->speed = v6;
  retstr->forceMode = RealityFoundation_ForceMode_force;
}

uint64_t TurbulenceForceEffect.parameterTypes.getter@<X0>(int *a1@<X8>)
{
  if (one-time initialization token for velocity != -1)
  {
    v3 = a1;
    result = swift_once();
    a1 = v3;
  }

  v1 = static PhysicsBodyParameterTypes.velocity;
  if (one-time initialization token for position != -1)
  {
    v5 = a1;
    result = swift_once();
    a1 = v5;
  }

  v2 = static PhysicsBodyParameterTypes.position;
  if ((static PhysicsBodyParameterTypes.position & ~v1) == 0)
  {
    v2 = 0;
  }

  *a1 = v2 | v1;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance TurbulenceForceEffect.CodingKeys()
{
  v1 = 0x6874676E65727473;
  v2 = 0x6465657073;
  if (*v0 != 2)
  {
    v2 = 0x646F4D6563726F66;
  }

  if (*v0)
  {
    v1 = 0x656E68746F6F6D73;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TurbulenceForceEffect.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized TurbulenceForceEffect.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TurbulenceForceEffect.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TurbulenceForceEffect.CodingKeys and conformance TurbulenceForceEffect.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TurbulenceForceEffect.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TurbulenceForceEffect.CodingKeys and conformance TurbulenceForceEffect.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TurbulenceForceEffect.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation21TurbulenceForceEffectV10CodingKeys33_F9575A69BF4711160DDF1906A8008A07LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation21TurbulenceForceEffectV10CodingKeys33_F9575A69BF4711160DDF1906A8008A07LLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-v6];
  v8 = *(v1 + 12);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TurbulenceForceEffect.CodingKeys and conformance TurbulenceForceEffect.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v10[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[12] = v8;
    v10[11] = 3;
    lazy protocol witness table accessor for type ForceMode and conformance ForceMode();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t TurbulenceForceEffect.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation21TurbulenceForceEffectV10CodingKeys33_F9575A69BF4711160DDF1906A8008A07LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation21TurbulenceForceEffectV10CodingKeys33_F9575A69BF4711160DDF1906A8008A07LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TurbulenceForceEffect.CodingKeys and conformance TurbulenceForceEffect.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v17[15] = 0;
    KeyedDecodingContainer.decode(_:forKey:)();
    v10 = v9;
    v17[14] = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    v12 = v11;
    v17[13] = 2;
    KeyedDecodingContainer.decode(_:forKey:)();
    v15 = v14;
    v17[11] = 3;
    lazy protocol witness table accessor for type ForceMode and conformance ForceMode();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    v16 = v17[12];
    *a2 = v10;
    *(a2 + 4) = v12;
    *(a2 + 8) = v15;
    *(a2 + 12) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t protocol witness for ForceEffectProtocol.parameterTypes.getter in conformance TurbulenceForceEffect@<X0>(int *a1@<X8>)
{
  if (one-time initialization token for velocity != -1)
  {
    v3 = a1;
    result = swift_once();
    a1 = v3;
  }

  v1 = static PhysicsBodyParameterTypes.velocity;
  if (one-time initialization token for position != -1)
  {
    v5 = a1;
    result = swift_once();
    a1 = v5;
  }

  v2 = static PhysicsBodyParameterTypes.position;
  if ((static PhysicsBodyParameterTypes.position & ~v1) == 0)
  {
    v2 = 0;
  }

  *a1 = v2 | v1;
  return result;
}

RealityFoundation::RadialForceEffect __swiftcall RadialForceEffect.init(strength:restDistance:)(Swift::Double strength, Swift::Double restDistance)
{
  v3 = strength;
  v4 = restDistance;
  *v2 = v3;
  *(v2 + 4) = v4;
  *(v2 + 8) = 0;
  result.restDistance = v4;
  result.strength = v3;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance RadialForceEffect.CodingKeys()
{
  v1 = 0x7473694474736572;
  if (*v0 != 1)
  {
    v1 = 0x646F4D6563726F66;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6874676E65727473;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance RadialForceEffect.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized RadialForceEffect.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RadialForceEffect.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RadialForceEffect.CodingKeys and conformance RadialForceEffect.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RadialForceEffect.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RadialForceEffect.CodingKeys and conformance RadialForceEffect.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RadialForceEffect.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation17RadialForceEffectV10CodingKeys33_F9575A69BF4711160DDF1906A8008A07LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation17RadialForceEffectV10CodingKeys33_F9575A69BF4711160DDF1906A8008A07LLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  v8 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type RadialForceEffect.CodingKeys and conformance RadialForceEffect.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = v8;
    v11 = 2;
    lazy protocol witness table accessor for type ForceMode and conformance ForceMode();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t RadialForceEffect.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation17RadialForceEffectV10CodingKeys33_F9575A69BF4711160DDF1906A8008A07LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation17RadialForceEffectV10CodingKeys33_F9575A69BF4711160DDF1906A8008A07LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type RadialForceEffect.CodingKeys and conformance RadialForceEffect.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v19 = 0;
    KeyedDecodingContainer.decode(_:forKey:)();
    v10 = v9;
    v18 = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    v13 = v12;
    v16 = 2;
    lazy protocol witness table accessor for type ForceMode and conformance ForceMode();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    v14 = v17;
    *a2 = v10;
    *(a2 + 4) = v13;
    *(a2 + 8) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

double specialized closure #1 in Atomic.store(_:)(void *a1, uint64_t *a2)
{
  v3 = *a2;

  *a1 = v3;

  return result;
}

unint64_t specialized Data.InlineData.init(count:)(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t specialized Data.InlineData.init(_:)(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

unint64_t specialized Data.init(bytes:count:)(_BYTE *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return specialized Data.InlineData.init(_:)(a1, &a1[a2]);
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  __DataStorage.init(bytes:length:)();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  type metadata accessor for Data.RangeReference();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

unint64_t lazy protocol witness table accessor for type ConstantForceEffect.CodingKeys and conformance ConstantForceEffect.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ConstantForceEffect.CodingKeys and conformance ConstantForceEffect.CodingKeys;
  if (!lazy protocol witness table cache variable for type ConstantForceEffect.CodingKeys and conformance ConstantForceEffect.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ConstantForceEffect.CodingKeys, &unk_1F411A4B0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ConstantForceEffect.CodingKeys and conformance ConstantForceEffect.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ConstantForceEffect.CodingKeys and conformance ConstantForceEffect.CodingKeys;
  if (!lazy protocol witness table cache variable for type ConstantForceEffect.CodingKeys and conformance ConstantForceEffect.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ConstantForceEffect.CodingKeys, &unk_1F411A4B0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ConstantForceEffect.CodingKeys and conformance ConstantForceEffect.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ConstantForceEffect.CodingKeys and conformance ConstantForceEffect.CodingKeys;
  if (!lazy protocol witness table cache variable for type ConstantForceEffect.CodingKeys and conformance ConstantForceEffect.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ConstantForceEffect.CodingKeys, &unk_1F411A4B0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ConstantForceEffect.CodingKeys and conformance ConstantForceEffect.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ConstantForceEffect.CodingKeys and conformance ConstantForceEffect.CodingKeys;
  if (!lazy protocol witness table cache variable for type ConstantForceEffect.CodingKeys and conformance ConstantForceEffect.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ConstantForceEffect.CodingKeys, &unk_1F411A4B0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ConstantForceEffect.CodingKeys and conformance ConstantForceEffect.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ForceMode and conformance ForceMode()
{
  result = lazy protocol witness table cache variable for type ForceMode and conformance ForceMode;
  if (!lazy protocol witness table cache variable for type ForceMode and conformance ForceMode)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ForceMode, &type metadata for ForceMode, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ForceMode and conformance ForceMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ForceMode and conformance ForceMode;
  if (!lazy protocol witness table cache variable for type ForceMode and conformance ForceMode)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ForceMode, &type metadata for ForceMode, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ForceMode and conformance ForceMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ForceMode and conformance ForceMode;
  if (!lazy protocol witness table cache variable for type ForceMode and conformance ForceMode)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ForceMode, &type metadata for ForceMode, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ForceMode and conformance ForceMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ConstantRadialForceEffect.CodingKeys and conformance ConstantRadialForceEffect.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ConstantRadialForceEffect.CodingKeys and conformance ConstantRadialForceEffect.CodingKeys;
  if (!lazy protocol witness table cache variable for type ConstantRadialForceEffect.CodingKeys and conformance ConstantRadialForceEffect.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ConstantRadialForceEffect.CodingKeys, &unk_1F411A420, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ConstantRadialForceEffect.CodingKeys and conformance ConstantRadialForceEffect.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ConstantRadialForceEffect.CodingKeys and conformance ConstantRadialForceEffect.CodingKeys;
  if (!lazy protocol witness table cache variable for type ConstantRadialForceEffect.CodingKeys and conformance ConstantRadialForceEffect.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ConstantRadialForceEffect.CodingKeys, &unk_1F411A420, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ConstantRadialForceEffect.CodingKeys and conformance ConstantRadialForceEffect.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ConstantRadialForceEffect.CodingKeys and conformance ConstantRadialForceEffect.CodingKeys;
  if (!lazy protocol witness table cache variable for type ConstantRadialForceEffect.CodingKeys and conformance ConstantRadialForceEffect.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ConstantRadialForceEffect.CodingKeys, &unk_1F411A420, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ConstantRadialForceEffect.CodingKeys and conformance ConstantRadialForceEffect.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ConstantRadialForceEffect.CodingKeys and conformance ConstantRadialForceEffect.CodingKeys;
  if (!lazy protocol witness table cache variable for type ConstantRadialForceEffect.CodingKeys and conformance ConstantRadialForceEffect.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ConstantRadialForceEffect.CodingKeys, &unk_1F411A420, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ConstantRadialForceEffect.CodingKeys and conformance ConstantRadialForceEffect.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type VortexForceEffect.CodingKeys and conformance VortexForceEffect.CodingKeys()
{
  result = lazy protocol witness table cache variable for type VortexForceEffect.CodingKeys and conformance VortexForceEffect.CodingKeys;
  if (!lazy protocol witness table cache variable for type VortexForceEffect.CodingKeys and conformance VortexForceEffect.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for VortexForceEffect.CodingKeys, &unk_1F411A390, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type VortexForceEffect.CodingKeys and conformance VortexForceEffect.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VortexForceEffect.CodingKeys and conformance VortexForceEffect.CodingKeys;
  if (!lazy protocol witness table cache variable for type VortexForceEffect.CodingKeys and conformance VortexForceEffect.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for VortexForceEffect.CodingKeys, &unk_1F411A390, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type VortexForceEffect.CodingKeys and conformance VortexForceEffect.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VortexForceEffect.CodingKeys and conformance VortexForceEffect.CodingKeys;
  if (!lazy protocol witness table cache variable for type VortexForceEffect.CodingKeys and conformance VortexForceEffect.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for VortexForceEffect.CodingKeys, &unk_1F411A390, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type VortexForceEffect.CodingKeys and conformance VortexForceEffect.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VortexForceEffect.CodingKeys and conformance VortexForceEffect.CodingKeys;
  if (!lazy protocol witness table cache variable for type VortexForceEffect.CodingKeys and conformance VortexForceEffect.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for VortexForceEffect.CodingKeys, &unk_1F411A390, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type VortexForceEffect.CodingKeys and conformance VortexForceEffect.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DragForceEffect.CodingKeys and conformance DragForceEffect.CodingKeys()
{
  result = lazy protocol witness table cache variable for type DragForceEffect.CodingKeys and conformance DragForceEffect.CodingKeys;
  if (!lazy protocol witness table cache variable for type DragForceEffect.CodingKeys and conformance DragForceEffect.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DragForceEffect.CodingKeys, &unk_1F411A300, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DragForceEffect.CodingKeys and conformance DragForceEffect.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DragForceEffect.CodingKeys and conformance DragForceEffect.CodingKeys;
  if (!lazy protocol witness table cache variable for type DragForceEffect.CodingKeys and conformance DragForceEffect.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DragForceEffect.CodingKeys, &unk_1F411A300, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DragForceEffect.CodingKeys and conformance DragForceEffect.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DragForceEffect.CodingKeys and conformance DragForceEffect.CodingKeys;
  if (!lazy protocol witness table cache variable for type DragForceEffect.CodingKeys and conformance DragForceEffect.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DragForceEffect.CodingKeys, &unk_1F411A300, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DragForceEffect.CodingKeys and conformance DragForceEffect.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DragForceEffect.CodingKeys and conformance DragForceEffect.CodingKeys;
  if (!lazy protocol witness table cache variable for type DragForceEffect.CodingKeys and conformance DragForceEffect.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DragForceEffect.CodingKeys, &unk_1F411A300, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DragForceEffect.CodingKeys and conformance DragForceEffect.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TurbulenceForceEffect.CodingKeys and conformance TurbulenceForceEffect.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TurbulenceForceEffect.CodingKeys and conformance TurbulenceForceEffect.CodingKeys;
  if (!lazy protocol witness table cache variable for type TurbulenceForceEffect.CodingKeys and conformance TurbulenceForceEffect.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TurbulenceForceEffect.CodingKeys, &unk_1F411A270, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TurbulenceForceEffect.CodingKeys and conformance TurbulenceForceEffect.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TurbulenceForceEffect.CodingKeys and conformance TurbulenceForceEffect.CodingKeys;
  if (!lazy protocol witness table cache variable for type TurbulenceForceEffect.CodingKeys and conformance TurbulenceForceEffect.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TurbulenceForceEffect.CodingKeys, &unk_1F411A270, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TurbulenceForceEffect.CodingKeys and conformance TurbulenceForceEffect.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TurbulenceForceEffect.CodingKeys and conformance TurbulenceForceEffect.CodingKeys;
  if (!lazy protocol witness table cache variable for type TurbulenceForceEffect.CodingKeys and conformance TurbulenceForceEffect.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TurbulenceForceEffect.CodingKeys, &unk_1F411A270, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TurbulenceForceEffect.CodingKeys and conformance TurbulenceForceEffect.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TurbulenceForceEffect.CodingKeys and conformance TurbulenceForceEffect.CodingKeys;
  if (!lazy protocol witness table cache variable for type TurbulenceForceEffect.CodingKeys and conformance TurbulenceForceEffect.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TurbulenceForceEffect.CodingKeys, &unk_1F411A270, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TurbulenceForceEffect.CodingKeys and conformance TurbulenceForceEffect.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RadialForceEffect.CodingKeys and conformance RadialForceEffect.CodingKeys()
{
  result = lazy protocol witness table cache variable for type RadialForceEffect.CodingKeys and conformance RadialForceEffect.CodingKeys;
  if (!lazy protocol witness table cache variable for type RadialForceEffect.CodingKeys and conformance RadialForceEffect.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RadialForceEffect.CodingKeys, &unk_1F411A1E0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type RadialForceEffect.CodingKeys and conformance RadialForceEffect.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RadialForceEffect.CodingKeys and conformance RadialForceEffect.CodingKeys;
  if (!lazy protocol witness table cache variable for type RadialForceEffect.CodingKeys and conformance RadialForceEffect.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RadialForceEffect.CodingKeys, &unk_1F411A1E0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type RadialForceEffect.CodingKeys and conformance RadialForceEffect.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RadialForceEffect.CodingKeys and conformance RadialForceEffect.CodingKeys;
  if (!lazy protocol witness table cache variable for type RadialForceEffect.CodingKeys and conformance RadialForceEffect.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RadialForceEffect.CodingKeys, &unk_1F411A1E0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type RadialForceEffect.CodingKeys and conformance RadialForceEffect.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RadialForceEffect.CodingKeys and conformance RadialForceEffect.CodingKeys;
  if (!lazy protocol witness table cache variable for type RadialForceEffect.CodingKeys and conformance RadialForceEffect.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RadialForceEffect.CodingKeys, &unk_1F411A1E0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type RadialForceEffect.CodingKeys and conformance RadialForceEffect.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhysicsBodyParameterTypes and conformance PhysicsBodyParameterTypes()
{
  result = lazy protocol witness table cache variable for type PhysicsBodyParameterTypes and conformance PhysicsBodyParameterTypes;
  if (!lazy protocol witness table cache variable for type PhysicsBodyParameterTypes and conformance PhysicsBodyParameterTypes)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PhysicsBodyParameterTypes, &type metadata for PhysicsBodyParameterTypes, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PhysicsBodyParameterTypes and conformance PhysicsBodyParameterTypes);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhysicsBodyParameterTypes and conformance PhysicsBodyParameterTypes;
  if (!lazy protocol witness table cache variable for type PhysicsBodyParameterTypes and conformance PhysicsBodyParameterTypes)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PhysicsBodyParameterTypes, &type metadata for PhysicsBodyParameterTypes, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PhysicsBodyParameterTypes and conformance PhysicsBodyParameterTypes);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhysicsBodyParameterTypes and conformance PhysicsBodyParameterTypes;
  if (!lazy protocol witness table cache variable for type PhysicsBodyParameterTypes and conformance PhysicsBodyParameterTypes)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PhysicsBodyParameterTypes, &type metadata for PhysicsBodyParameterTypes, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PhysicsBodyParameterTypes and conformance PhysicsBodyParameterTypes);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhysicsBodyParameterTypes and conformance PhysicsBodyParameterTypes;
  if (!lazy protocol witness table cache variable for type PhysicsBodyParameterTypes and conformance PhysicsBodyParameterTypes)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PhysicsBodyParameterTypes, &type metadata for PhysicsBodyParameterTypes, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PhysicsBodyParameterTypes and conformance PhysicsBodyParameterTypes);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ForceEffectComponent.SimulationState and conformance ForceEffectComponent.SimulationState()
{
  result = lazy protocol witness table cache variable for type ForceEffectComponent.SimulationState and conformance ForceEffectComponent.SimulationState;
  if (!lazy protocol witness table cache variable for type ForceEffectComponent.SimulationState and conformance ForceEffectComponent.SimulationState)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ForceEffectComponent.SimulationState, &type metadata for ForceEffectComponent.SimulationState, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ForceEffectComponent.SimulationState and conformance ForceEffectComponent.SimulationState);
  }

  return result;
}

void type metadata completion function for ForceEffect(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Double?(319, &lazy cache variable for type metadata for SpatialForceFalloff?, &type metadata for SpatialForceFalloff);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Double?(319, &lazy cache variable for type metadata for TimedForceFalloff?, &type metadata for TimedForceFalloff);
      if (v3 <= 0x3F)
      {
        type metadata accessor for SIMD3<Float>(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for simd_quatf(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for ForceEffect(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFC)
  {
    v7 = 252;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 < a2 && *(a1 + ((((((v6 + 71) & 0xFFFFFFFFFFFFFFF0) + 31) & 0xFFFFFFFFFFFFFFF0) + 19) & 0xFFFFFFFFFFFFFFF0 | 9)))
  {
    return v7 + *a1 + 1;
  }

  if (v5 >= 0xFC)
  {
    return (*(v4 + 48))();
  }

  v9 = *(((((((a1 + v6 + 71) & 0xFFFFFFFFFFFFFFF0) + 31) & 0xFFFFFFFFFFFFFFF0) + 19) & 0xFFFFFFFFFFFFFFF0) + 8);
  if (v9 >= 4)
  {
    return v9 - 3;
  }

  else
  {
    return 0;
  }
}

void storeEnumTagSinglePayload for ForceEffect(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFC)
  {
    v8 = 252;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = (((((v9 + 71) & 0xFFFFFFFFFFFFFFF0) + 31) & 0xFFFFFFFFFFFFFFF0) + 19) & 0xFFFFFFFFFFFFFFF0 | 9;
  if (v8 >= a2)
  {
    if (v8 < a3)
    {
      a1[v10] = 0;
    }

    if (a2)
    {
      if (v7 < 0xFC)
      {
        *((((((&a1[v9 + 71] & 0xFFFFFFFFFFFFFFF0) + 31) & 0xFFFFFFFFFFFFFFF0) + 19) & 0xFFFFFFFFFFFFFFF0) + 8) = a2 + 3;
      }

      else
      {
        v12 = *(v6 + 56);

        v12();
      }
    }
  }

  else
  {
    v11 = ~v8 + a2;
    bzero(a1, v10);
    *a1 = v11;
    if (v8 < a3)
    {
      a1[v10] = 1;
    }
  }
}

void type metadata accessor for SIMD3<Float>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for SIMD3<Float>)
  {
    lazy protocol witness table accessor for type Float and conformance Float();
    v1 = type metadata accessor for SIMD3();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for SIMD3<Float>);
    }
  }
}

uint64_t type metadata instantiation function for UnsafeForceEffectBuffer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for UnsafeForceEffectBuffer.Iterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy232_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  *(a1 + 224) = *(a2 + 28);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ForceEffectParameters(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 232))
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

uint64_t storeEnumTagSinglePayload for ForceEffectParameters(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 216) = 0u;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 232) = 1;
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

    *(result + 232) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata completion function for ForceEffectEvent(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ForceEffectEvent(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
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

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 232;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *storeEnumTagSinglePayload for ForceEffectEvent(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 232;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFF18)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFF18)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFF18)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 232);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = (result + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
    if ((a2 & 0x80000000) != 0)
    {
      *(v18 + 200) = 0u;
      v19 = a2 & 0x7FFFFFFF;
      *(v18 + 216) = 0u;
      *(v18 + 184) = 0u;
      *(v18 + 168) = 0u;
      *(v18 + 152) = 0u;
      *(v18 + 136) = 0u;
      *(v18 + 120) = 0u;
      *(v18 + 104) = 0u;
      *(v18 + 88) = 0u;
      *(v18 + 72) = 0u;
      *(v18 + 56) = 0u;
      *(v18 + 40) = 0u;
      *(v18 + 24) = 0u;
      *(v18 + 8) = 0u;
    }

    else
    {
      v19 = a2 - 1;
    }

    *v18 = v19;
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConstantForceEffect(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 33))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ConstantForceEffect(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 3;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConstantRadialForceEffect(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 5))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 4);
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ConstantRadialForceEffect(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 4) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 3;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TurbulenceForceEffect(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 13))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 12);
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for TurbulenceForceEffect(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 13) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 13) = 0;
    }

    if (a2)
    {
      *(result + 12) = a2 + 3;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RadialForceEffect(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for RadialForceEffect(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

uint64_t specialized RadialForceEffect.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6874676E65727473 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7473694474736572 && a2 == 0xEC00000065636E61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646F4D6563726F66 && a2 == 0xE900000000000065)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t specialized VortexForceEffect.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6874676E65727473 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1936291937 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646F4D6563726F66 && a2 == 0xE900000000000065)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t specialized ConstantForceEffect.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6874676E65727473 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F69746365726964 && a2 == 0xE90000000000006ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646F4D6563726F66 && a2 == 0xE900000000000065)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t specialized TurbulenceForceEffect.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6874676E65727473 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656E68746F6F6D73 && a2 == 0xEA00000000007373 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6465657073 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x646F4D6563726F66 && a2 == 0xE900000000000065)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t specialized ForceMode.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6563726F66 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6172656C65636361 && a2 == 0xEC0000006E6F6974 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65736C75706D69 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x797469636F6C6576 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t dynamic_cast_existential_3_conditional(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_conformsToProtocol2();
  if (result)
  {
    result = swift_conformsToProtocol2();
    if (result)
    {
      if (swift_conformsToProtocol2())
      {
        return a1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t partial apply for dispatchEvent #1 <A>(sourceObject:payloadRef:) in ForceEffect.toCore(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  type metadata accessor for ForceEffect(0, v6, v7, a4);
  static ForceEffectParameters.__fromCore(_:)(a2, v9);
  (*(v7 + 24))(v9, v6, v7);
  v11[12] = v9[12];
  v11[13] = v9[13];
  v12 = v10;
  v11[8] = v9[8];
  v11[9] = v9[9];
  v11[10] = v9[10];
  v11[11] = v9[11];
  v11[4] = v9[4];
  v11[5] = v9[5];
  v11[6] = v9[6];
  v11[7] = v9[7];
  v11[0] = v9[0];
  v11[1] = v9[1];
  v11[2] = v9[2];
  v11[3] = v9[3];
  outlined destroy of ForceEffectParameters(v11);
  return 0;
}

double block_copy_helper_40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

_OWORD *outlined init with take of Decodable & Encodable(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t specialized Entity.withMutation<A, B>(keyPath:_:)(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t))
{
  v4 = v2;
  v29 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v29 - v13;
  ObservationRegistrar = REEntityGetObservationRegistrar();
  if (ObservationRegistrar)
  {
    outlined init with copy of ObservationRegistrar?(ObservationRegistrar, v14);
    v16 = type metadata accessor for ObservationRegistrar();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v14, 1, v16) != 1)
    {
      v30 = v4;
      lazy protocol witness table accessor for type Entity and conformance Entity();
      ObservationRegistrar.willSet<A, B>(_:keyPath:)();
      v18 = (*(v17 + 8))(v14, v16);
      goto LABEL_6;
    }
  }

  else
  {
    v19 = type metadata accessor for ObservationRegistrar();
    (*(*(v19 - 8) + 56))(v14, 1, 1, v19);
  }

  v18 = outlined destroy of ObservationRegistrar?(v14);
LABEL_6:
  a2(&v31, v18);
  if (!v3)
  {
    LOBYTE(v31) = 0;
    v24 = REEntityGetObservationRegistrar();
    if (v24)
    {
      outlined init with copy of ObservationRegistrar?(v24, v11);
      v25 = type metadata accessor for ObservationRegistrar();
      v26 = *(v25 - 8);
      if ((*(v26 + 48))(v11, 1, v25) != 1)
      {
        v30 = v4;
        lazy protocol witness table accessor for type Entity and conformance Entity();
        ObservationRegistrar.didSet<A, B>(_:keyPath:)();
        (*(v26 + 8))(v11, v25);
        return v31;
      }
    }

    else
    {
      v28 = type metadata accessor for ObservationRegistrar();
      (*(*(v28 - 8) + 56))(v11, 1, 1, v28);
    }

    outlined destroy of ObservationRegistrar?(v11);
    return v31;
  }

  v20 = REEntityGetObservationRegistrar();
  if (v20)
  {
    outlined init with copy of ObservationRegistrar?(v20, v8);
    v21 = type metadata accessor for ObservationRegistrar();
    v22 = *(v21 - 8);
    if ((*(v22 + 48))(v8, 1, v21) != 1)
    {
      v30 = v4;
      lazy protocol witness table accessor for type Entity and conformance Entity();
      ObservationRegistrar.didSet<A, B>(_:keyPath:)();
      return (*(v22 + 8))(v8, v21);
    }
  }

  else
  {
    v27 = type metadata accessor for ObservationRegistrar();
    (*(*(v27 - 8) + 56))(v8, 1, 1, v27);
  }

  return outlined destroy of ObservationRegistrar?(v8);
}

{
  return sub_1C1370C70(a1, a2);
}

void AudioGroupPlaybackController.deinit()
{
  v1 = v0[5];
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  while (v4)
  {
    v7 = v6;
LABEL_9:
    v8 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    MEMORY[0x1C68F7170](*(*(v1 + 56) + ((v7 << 9) | (8 * v8))), *(*(v1 + 48) + ((v7 << 9) | (8 * v8))));
    RENetworkMarkComponentDirty();
    RERelease();
  }

  while (1)
  {
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v7 >= v5)
    {

      outlined consume of (@escaping @callee_guaranteed () -> ())?(v0[6], v0[7]);
      return;
    }

    v4 = *(v1 + 64 + 8 * v7);
    ++v6;
    if (v4)
    {
      v6 = v7;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t AudioGroupPlaybackController.__deallocating_deinit()
{
  AudioGroupPlaybackController.deinit();

  return swift_deallocClassInstance();
}

uint64_t AudioGroupPlaybackController.play()(void (*a1)(void, void))
{
  a1(*(v1 + 24), *(v1 + 32));

  return RENetworkMarkComponentDirty();
}

uint64_t AudioGroupPlaybackController.seek(to:)(uint64_t a1, uint64_t a2)
{
  v3 = Duration.components.getter();
  Duration.components.getter();
  MEMORY[0x1C68F7300](*(v2 + 24), *(v2 + 32), v4 * 1.0e-18 + v3);

  return RENetworkMarkComponentDirty();
}

uint64_t AudioGroupPlaybackController.playbackPosition.setter()
{
  MEMORY[0x1C68F7300](*(v0 + 24), *(v0 + 32));

  return RENetworkMarkComponentDirty();
}

uint64_t key path getter for AudioGroupPlaybackController.completionHandler : AudioGroupPlaybackController@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = _sIg_Ieg_TRTA_0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v3, v4);
}

uint64_t key path setter for AudioGroupPlaybackController.completionHandler : AudioGroupPlaybackController(uint64_t *a1, uint64_t *a2)
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

  v7 = *a2;
  v8 = *(*a2 + 48);
  v9 = *(v7 + 56);
  *(v7 + 48) = v6;
  *(v7 + 56) = v5;
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v3, v4);
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v6, v5);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
  REAudioPlayerComponentSetCompletionHandler();

  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v6, v5);
}

uint64_t AudioGroupPlaybackController.completionHandler.getter()
{
  v1 = *(v0 + 48);
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v1, *(v0 + 56));
  return v1;
}

uint64_t AudioGroupPlaybackController.completionHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 56);
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(a1, a2);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v5, v6);
  REAudioPlayerComponentSetCompletionHandler();

  return outlined consume of (@escaping @callee_guaranteed () -> ())?(a1, a2);
}

uint64_t handler #1 (token:) in AudioGroupPlaybackController.completionHandler.setter(uint64_t a1)
{
  if (one-time initialization token for instances != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static AudioGroupPlaybackController.instances;
  if (!*(static AudioGroupPlaybackController.instances + 16))
  {
    return swift_endAccess();
  }

  v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v4 & 1) == 0)
  {
    return swift_endAccess();
  }

  v5 = *(*(v2 + 56) + 8 * v3);
  result = swift_endAccess();
  v7 = *(v5 + 48);
  if (v7)
  {
    v8 = *(v5 + 56);

    v9 = outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v7, v8);
    v7(v9);
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v7, v8);
  }

  return result;
}

uint64_t (*AudioGroupPlaybackController.completionHandler.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  *a1 = v3;
  a1[1] = v4;
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v3, v4);
  return AudioGroupPlaybackController.completionHandler.modify;
}

uint64_t AudioGroupPlaybackController.completionHandler.modify(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a1;
  v6 = *(v4 + 48);
  v7 = *(v4 + 56);
  *(v4 + 48) = *a1;
  *(v4 + 56) = v3;
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v5, v3);
  if (a2)
  {
    outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v5, v3);
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v6, v7);
    REAudioPlayerComponentSetCompletionHandler();
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v5, v3);
  }

  else
  {
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v6, v7);
    REAudioPlayerComponentSetCompletionHandler();
  }

  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v5, v3);
}

uint64_t (*AudioGroupPlaybackController.playbackPosition.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 8) = v1;
  *a1 = MEMORY[0x1C68F7250](*(v1 + 24), *(v1 + 32));
  return AudioGroupPlaybackController.playbackPosition.modify;
}

uint64_t AudioGroupPlaybackController.playbackPosition.modify(uint64_t a1)
{
  MEMORY[0x1C68F7300](*(*(a1 + 8) + 24), *(*(a1 + 8) + 32), *a1);

  return RENetworkMarkComponentDirty();
}

char *static Audio.prepareAudio(_:)(char *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v85 - v4;
  PlaybackToken = REAudioGroupPlaybackComponentCreatePlaybackToken();
  v7 = *(a1 + 2);
  if (v7 > 0xFF)
  {
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    swift_once();
LABEL_80:
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v96 = static AudioGroupPlaybackController.instances;
    static AudioGroupPlaybackController.instances = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, v7, isUniquelyReferenced_nonNull_native);
    static AudioGroupPlaybackController.instances = v96;
    swift_endAccess();
    return a1;
  }

  v8 = PlaybackToken;
  v9 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt64V_s13OpaquePointerVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  if (!v7)
  {

    goto LABEL_77;
  }

  v92 = 0;
  v93 = v9;
  v85 = v1;
  v86 = v5;
  v90 = v8;
  v94 = 0;
  v10 = a1 + 40;
  v11 = MEMORY[0x1E69E7CC0];
  v12 = 0.0;
  v89 = v7;
  v13 = 1;
  while (1)
  {
    v91 = v7;
    v7 = v13;
    v95 = v11;
    v14 = *v10;

    REAudioPlayerComponentGetComponentType();
    a1 = REEntityGetOrAddComponentByClass();
    v15 = REAudioPlayerComponentPrepareAssetForGroup();
    v16 = v93;
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v97[0] = v16;
    v18 = specialized __RawDictionaryStorage.find<A>(_:)(v15);
    v20 = *(v16 + 16);
    v21 = (v19 & 1) == 0;
    v22 = __OFADD__(v20, v21);
    v23 = v20 + v21;
    if (v22)
    {
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
      goto LABEL_86;
    }

    v24 = v19;
    if (*(v16 + 24) >= v23)
    {
      if ((v17 & 1) == 0)
      {
        v36 = v18;
        specialized _NativeDictionary.copy()();
        v18 = v36;
      }

      goto LABEL_10;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v23, v17);
    v18 = specialized __RawDictionaryStorage.find<A>(_:)(v15);
    if ((v24 & 1) != (v25 & 1))
    {
      break;
    }

LABEL_10:
    v26 = v97[0];
    v93 = v97[0];
    if (v24)
    {
      *(*(v97[0] + 56) + 8 * v18) = a1;
    }

    else
    {
      *(v97[0] + 8 * (v18 >> 6) + 64) |= 1 << v18;
      *(v26[6] + 8 * v18) = v15;
      *(v26[7] + 8 * v18) = a1;
      v27 = v26[2];
      v22 = __OFADD__(v27, 1);
      v28 = v27 + 1;
      if (v22)
      {
        goto LABEL_82;
      }

      v26[2] = v28;
    }

    REAudioFileAssetGetLengthInSeconds();
    v30 = v92;
    if (v12 < v29)
    {
      v30 = a1;
    }

    v92 = v30;
    v31 = v94;
    v11 = v95;
    if (v12 < v29)
    {
      v31 = v15;
    }

    v94 = v31;
    if (v12 < v29)
    {
      v13 = 0;
    }

    else
    {
      v13 = v7;
    }

    if (v12 < v29)
    {
      v12 = v29;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11[2] + 1, 1, v11);
    }

    v33 = v11[2];
    v32 = v11[3];
    a1 = (v33 + 1);
    if (v33 >= v32 >> 1)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v11);
    }

    v34 = v91;

    v11[2] = a1;
    v35 = &v11[2 * v33];
    v35[4] = v15;
    v35[5] = v14;
    v10 += 16;
    v7 = v34 - 1;
    if (!v7)
    {
      if ((v13 & 1) == 0 && v92)
      {
        v37 = v33 + 1;
        v38 = v11 + 5;
        v87 = xmmword_1C1887600;
        v7 = v90;
        v95 = v11;
        while (1)
        {
          v39 = *(v38 - 1);
          v40 = *v38;
          swift_retain_n();
          Component = REEntityGetComponent();
          if (Component)
          {
            v97[0] = Component;
            v42 = specialized static AudioGroupPlaybackComponent.__fromCore(_:)(v97);
          }

          else
          {

            v42 = MEMORY[0x1E69E7CC8];
          }

          v43 = v42[2];
          v91 = v37;
          if (v43)
          {
            v44 = specialized __RawDictionaryStorage.find<A>(_:)(v7);
            if (v45)
            {
              a1 = *(v42[7] + 8 * v44);

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                a1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 2) + 1, 1, a1);
              }

              v47 = *(a1 + 2);
              v46 = *(a1 + 3);
              if (v47 >= v46 >> 1)
              {
                a1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1, a1);
              }

              *(a1 + 2) = v47 + 1;
              v48 = &a1[24 * v47];
              *(v48 + 4) = v39;
              v48[40] = v89;
              *(v48 + 6) = v94;
              v49 = swift_isUniquelyReferenced_nonNull_native();
              v97[0] = v42;
              v7 = v90;
              v50 = specialized __RawDictionaryStorage.find<A>(_:)(v90);
              v52 = v42[2];
              v53 = (v51 & 1) == 0;
              v22 = __OFADD__(v52, v53);
              v54 = v52 + v53;
              if (v22)
              {
                goto LABEL_85;
              }

              v55 = v51;
              if (v42[3] < v54)
              {
                specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v54, v49);
                v50 = specialized __RawDictionaryStorage.find<A>(_:)(v7);
                if ((v55 & 1) != (v56 & 1))
                {
                  goto LABEL_89;
                }

                goto LABEL_56;
              }

              if (v49)
              {
LABEL_56:
                v64 = v97[0];
                if (v55)
                {
                  goto LABEL_57;
                }
              }

              else
              {
                v68 = v50;
                specialized _NativeDictionary.copy()();
                v50 = v68;
                v64 = v97[0];
                if (v55)
                {
LABEL_57:
                  *(v64[7] + 8 * v50) = a1;

                  goto LABEL_63;
                }
              }

              v64[(v50 >> 6) + 8] |= 1 << v50;
              *(v64[6] + 8 * v50) = v7;
              *(v64[7] + 8 * v50) = a1;
              v69 = v64[2];
              v22 = __OFADD__(v69, 1);
              v66 = v69 + 1;
              if (v22)
              {
                goto LABEL_87;
              }

              goto LABEL_62;
            }
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt64V16audioPlayerToken_s5UInt8V9groupSizeAD016transportControlG0tGMd, &_ss23_ContiguousArrayStorageCys6UInt64V16audioPlayerToken_s5UInt8V9groupSizeAD016transportControlG0tGMR);
          a1 = swift_allocObject();
          *(a1 + 1) = v87;
          *(a1 + 4) = v39;
          a1[40] = v89;
          *(a1 + 6) = v94;
          v57 = swift_isUniquelyReferenced_nonNull_native();
          v97[0] = v42;
          v50 = specialized __RawDictionaryStorage.find<A>(_:)(v7);
          v59 = v42[2];
          v60 = (v58 & 1) == 0;
          v22 = __OFADD__(v59, v60);
          v61 = v59 + v60;
          if (v22)
          {
            goto LABEL_83;
          }

          v62 = v58;
          if (v42[3] >= v61)
          {
            if ((v57 & 1) == 0)
            {
              v67 = v50;
              specialized _NativeDictionary.copy()();
              v50 = v67;
              v64 = v97[0];
              if (v62)
              {
                goto LABEL_57;
              }

              goto LABEL_52;
            }
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v61, v57);
            v50 = specialized __RawDictionaryStorage.find<A>(_:)(v7);
            if ((v62 & 1) != (v63 & 1))
            {
              goto LABEL_89;
            }
          }

          v64 = v97[0];
          if (v62)
          {
            goto LABEL_57;
          }

LABEL_52:
          v64[(v50 >> 6) + 8] |= 1 << v50;
          *(v64[6] + 8 * v50) = v7;
          *(v64[7] + 8 * v50) = a1;
          v65 = v64[2];
          v22 = __OFADD__(v65, 1);
          v66 = v65 + 1;
          if (v22)
          {
            goto LABEL_84;
          }

LABEL_62:
          v64[2] = v66;
LABEL_63:
          v70 = *(v40 + 16);

          if (REComponentClassFromType())
          {
            v97[0] = v64;

            ComponentByClass = REEntityGetComponentByClass();
            v72 = ComponentByClass;
            v73 = ComponentByClass;
            if (ComponentByClass || (ComponentByClass = REEntityAddComponentNoEvents(), (v73 = ComponentByClass) != 0))
            {
              v88 = v70;
              MEMORY[0x1EEE9AC00](ComponentByClass);
              *(&v85 - 4) = v97;
              *(&v85 - 3) = v73;
              *(&v85 - 16) = 0;
              ObservationRegistrar = REEntityGetObservationRegistrar();
              if (ObservationRegistrar)
              {
                v75 = v86;
                outlined init with copy of ObservationRegistrar?(ObservationRegistrar, v86);
                v76 = type metadata accessor for ObservationRegistrar();
                if ((*(*(v76 - 8) + 48))(v75, 1, v76) != 1)
                {
                  v77 = outlined destroy of ObservationRegistrar?(v75);
                  MEMORY[0x1EEE9AC00](v77);
                  *(&v85 - 4) = &type metadata for AudioGroupPlaybackComponent;
                  *(&v85 - 3) = &protocol witness table for AudioGroupPlaybackComponent;
                  *(&v85 - 2) = &type metadata for AudioGroupPlaybackComponent;
                  KeyPath = swift_getKeyPath();
                  v79 = v85;
                  specialized Entity.withMutation<A, B>(keyPath:_:)(KeyPath, partial apply for specialized closure #1 in Entity.ComponentSet.doSet<A>(_:newValue:returnStrongReference:));
                  v85 = v79;

                  goto LABEL_71;
                }
              }

              else
              {
                v80 = type metadata accessor for ObservationRegistrar();
                v75 = v86;
                (*(*(v80 - 8) + 56))(v86, 1, 1, v80);
              }

              outlined destroy of ObservationRegistrar?(v75);
              v96 = v73;
              AudioGroupPlaybackComponent.__toCore(_:)(&v96, v64);
LABEL_71:
              if (!v72)
              {
                REEntitySendAddAndActivateComponentEvents();
              }

              v7 = v90;
            }

            swift_bridgeObjectRelease_n();
            goto LABEL_32;
          }

LABEL_32:

          v38 += 2;
          v37 = v91 - 1;
          if (v91 == 1)
          {

            type metadata accessor for AudioGroupPlaybackController();
            a1 = swift_allocObject();
            v82 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt64V_s13OpaquePointerVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
            *(a1 + 6) = 0;
            *(a1 + 7) = 0;
            *(a1 + 4) = v94;
            *(a1 + 5) = v82;
            v83 = v92;
            *(a1 + 2) = v7;
            *(a1 + 3) = v83;
            if (one-time initialization token for instances == -1)
            {
              goto LABEL_80;
            }

            goto LABEL_88;
          }
        }
      }

LABEL_77:
      lazy protocol witness table accessor for type AudioGroupPlaybackComponent.Error and conformance AudioGroupPlaybackComponent.Error();
      swift_allocError();
      swift_willThrow();
      return a1;
    }
  }

LABEL_89:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type AudioGroupPlaybackComponent.Error and conformance AudioGroupPlaybackComponent.Error()
{
  result = lazy protocol witness table cache variable for type AudioGroupPlaybackComponent.Error and conformance AudioGroupPlaybackComponent.Error;
  if (!lazy protocol witness table cache variable for type AudioGroupPlaybackComponent.Error and conformance AudioGroupPlaybackComponent.Error)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AudioGroupPlaybackComponent.Error, &type metadata for AudioGroupPlaybackComponent.Error, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AudioGroupPlaybackComponent.Error and conformance AudioGroupPlaybackComponent.Error);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AudioGroupPlaybackComponent.Error and conformance AudioGroupPlaybackComponent.Error;
  if (!lazy protocol witness table cache variable for type AudioGroupPlaybackComponent.Error and conformance AudioGroupPlaybackComponent.Error)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AudioGroupPlaybackComponent.Error, &type metadata for AudioGroupPlaybackComponent.Error, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AudioGroupPlaybackComponent.Error and conformance AudioGroupPlaybackComponent.Error);
  }

  return result;
}

uint64_t type metadata completion function for Box(uint64_t a1)
{
  result = swift_checkMetadataState();
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

uint64_t Box.__deallocating_deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));

  return swift_deallocClassInstance();
}

uint64_t static MutableBox<A>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 80);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - v11;
  v13 = *(v6 + 16);
  v13(&v18 - v11, v14 + *(*v14 + 88), v5, v10);
  (v13)(v8, a2 + *(*a2 + 88), v5);
  v15 = dispatch thunk of static Equatable.== infix(_:_:)();
  v16 = *(v6 + 8);
  v16(v8, v5);
  v16(v12, v5);
  return v15 & 1;
}

uint64_t static Indirect<A>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - v11;
  v13 = *(v6 + 16);
  (v13)(&v18 - v11, v14 + *(*v14 + 88), v10);
  v13(v8, a2 + *(*a2 + 88), a3);
  v15 = dispatch thunk of static Equatable.== infix(_:_:)();
  v16 = *(v6 + 8);
  v16(v8, a3);
  v16(v12, a3);
  return v15 & 1;
}

uint64_t type metadata instantiation function for Indirect(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

double MaterialParameters.Texture.init(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = REMaterialCreateDefaultSamplerDescriptor();
  *(a2 + 8) = a1;
  *(a2 + 16) = 0;
  *&result = 84148994;
  *(a2 + 24) = 84148994;
  return result;
}

void MaterialParameters.allKeys.getter()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = Material.allKeys.getter(v2, v3);
  v5 = v4;
  v6 = v4 + 56;
  v7 = 1 << *(v4 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v4 + 56);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v12 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return;
    }

    v9 = *(v6 + 8 * v13);
    ++v11;
    if (v9)
    {
      v11 = v13;
      do
      {
LABEL_8:
        v14 = (*(v5 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v9)))));
        v16 = *v14;
        v15 = v14[1];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
        }

        v18 = *(v12 + 2);
        v17 = *(v12 + 3);
        if (v18 >= v17 >> 1)
        {
          v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v12);
        }

        v9 &= v9 - 1;
        *(v12 + 2) = v18 + 1;
        v19 = &v12[16 * v18];
        *(v19 + 4) = v16;
        *(v19 + 5) = v15;
      }

      while (v9);
    }
  }

  __break(1u);
}

id MaterialParameters.Texture.sampler.getter@<X0>(void *a1@<X8>)
{
  v4 = *v2;
  if (*v2)
  {
    v5 = *v2;
  }

  else
  {
    v5 = REMaterialCreateDefaultSamplerDescriptor();
    v4 = 0;
  }

  *a1 = v5;

  return v4;
}

double MaterialParameters.Texture.init(_:sampler:)@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *(a3 + 8) = a1;
  *(a3 + 16) = 0;
  *&result = 84148994;
  *(a3 + 24) = 84148994;
  *a3 = v3;
  return result;
}

RealityFoundation::MaterialParameters::Texture::Sampler __swiftcall MaterialParameters.Texture.Sampler.init()()
{
  v1 = v0;
  result.descriptor.super.isa = REMaterialCreateDefaultSamplerDescriptor();
  v1->descriptor.super.isa = result.descriptor.super.isa;
  return result;
}

void MaterialParameters.Texture.Sampler.modify<A>(_:)(void (*a1)())
{
  [*v1 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for MTLSamplerDescriptor, 0x1E6974170);
  swift_dynamicCast();
  a1();
  if (v2)
  {
  }

  else
  {

    *v1 = v4;
  }
}

void MaterialParameters.Texture.Sampler.access<A>(_:)(void (*a1)())
{
  [*v1 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for MTLSamplerDescriptor, 0x1E6974170);
  swift_dynamicCast();
  a1();
}

uint64_t MaterialParameters.Texture.resource.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

id key path getter for MaterialParameters.Texture.sampler : MaterialParameters.Texture@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = *a1;
  }

  else
  {
    v4 = REMaterialCreateDefaultSamplerDescriptor();
    v3 = 0;
  }

  *a2 = v4;

  return v3;
}

void MaterialParameters.Texture.sampler.setter(void **a1)
{
  v2 = *a1;

  *v1 = v2;
}

void (*MaterialParameters.Texture.sampler.modify(void *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  v3 = *v1;
  if (*v1)
  {
    v4 = *v1;
  }

  else
  {
    v4 = REMaterialCreateDefaultSamplerDescriptor();
    v3 = 0;
  }

  *a1 = v4;
  v5 = v3;
  return MaterialParameters.Texture.sampler.modify;
}

void MaterialParameters.Texture.sampler.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *v2;
  if (a2)
  {
    v5 = v3;

    *v2 = v3;
  }

  else
  {

    *v2 = v3;
  }
}

uint64_t MaterialParameters.Handle.SharedHandle.__deallocating_deinit()
{
  RERelease();

  return swift_deallocClassInstance();
}

double MaterialParameters.Value.init(_:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  switch(*(a1 + 64))
  {
    case 1:
      *a2 = v2;
      *(a2 + 8) = v3;
      *(a2 + 16) = v4;
      *(a2 + 24) = v5;
      *(a2 + 26) = BYTE2(v5);
      *(a2 + 27) = BYTE3(v5);
      *(a2 + 64) = 0;
      break;
    case 2:
      *a2 = v2;
      *(a2 + 64) = 2;
      break;
    case 3:
      *a2 = v2;
      *(a2 + 64) = 3;
      break;
    case 4:
      *a2 = v2;
      *(a2 + 8) = v3;
      *(a2 + 64) = 4;
      break;
    case 5:
      *a2 = v2;
      *(a2 + 8) = v3;
      *(a2 + 64) = 5;
      break;
    case 6:
      *a2 = v2;
      *(a2 + 64) = 6;
      break;
    case 7:
      *a2 = v2;
      *(a2 + 8) = v3;
      *(a2 + 64) = 7;
      break;
    case 8:
      *a2 = v2;
      *(a2 + 8) = v3;
      *(a2 + 16) = v4;
      *(a2 + 24) = v5;
      *(a2 + 32) = v6;
      *(a2 + 40) = v7;
      *(a2 + 64) = 8;
      break;
    case 9:
      v8 = a1[6];
      v9 = a1[7];
      *a2 = v2;
      *(a2 + 8) = v3;
      *(a2 + 16) = v4;
      *(a2 + 24) = v5;
      *(a2 + 32) = v6;
      *(a2 + 40) = v7;
      *(a2 + 48) = v8;
      *(a2 + 56) = v9;
      *(a2 + 64) = 9;
      break;
    case 0xA:
      *a2 = v2 & 1;
      *(a2 + 64) = 10;
      break;
    case 0xB:
      *a2 = v2;
      *(a2 + 64) = 11;
      break;
    case 0xC:
      *a2 = v2;
      *(a2 + 64) = 12;
      break;
    case 0xD:
      *a2 = v2;
      *(a2 + 8) = v3;
      *(a2 + 64) = 13;
      break;
    case 0xE:
      *a2 = v2;
      *(a2 + 8) = v3;
      *(a2 + 64) = 14;
      break;
    case 0xF:
      *a2 = v2;
      *(a2 + 64) = 15;
      break;
    case 0x10:
      *a2 = v2;
      *(a2 + 64) = 16;
      break;
    case 0x11:
      *a2 = v2;
      *(a2 + 8) = v3;
      *(a2 + 64) = 17;
      break;
    case 0x12:
      *a2 = v2;
      *(a2 + 8) = v3;
      *(a2 + 64) = 18;
      break;
    case 0x13:
      result = 0.0;
      *(a2 + 32) = 0u;
      *(a2 + 48) = 0u;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      *(a2 + 64) = -1;
      break;
    default:
      *a2 = v2;
      *(a2 + 64) = 1;
      break;
  }

  return result;
}

__n128 *MaterialParameters.Value.init(_:)@<X0>(__n128 *result@<X0>, __n128 *a2@<X8>, __n128 a3@<Q0>, __n128 a4@<Q1>, __n128 a5@<Q2>, __n128 a6@<Q3>)
{
  v6 = result->n128_u64[0];
  switch(result[4].n128_u8[0])
  {
    case 1u:
      a3.n128_u32[0] = result->n128_u64[0];
      v8 = 2;
      break;
    case 2u:
      a3.n128_u64[0] = result->n128_u64[0];
      v8 = 3;
      break;
    case 3u:
      a3 = *result;
      v8 = 4;
      break;
    case 4u:
      a3 = *result;
      v8 = 5;
      break;
    case 5u:
      a3.n128_u64[0] = result->n128_u64[0];
      v8 = 6;
      break;
    case 6u:
      a3.n128_u64[0] = result->n128_u64[0];
      a4.n128_u64[0] = result->n128_u64[1];
      a3.n128_u64[1] = a4.n128_u64[0];
      v8 = 7;
      break;
    case 7u:
      a5 = result[2];
      a3 = *result;
      a4 = result[1];
      v8 = 8;
      break;
    case 8u:
      a5 = result[2];
      a6 = result[3];
      a3 = *result;
      a4 = result[1];
      v8 = 9;
      break;
    case 9u:
      a3.n128_u32[0] = v6 & 1;
      v8 = 10;
      break;
    case 0xAu:
      a3.n128_u32[0] = result->n128_u64[0];
      v8 = 11;
      break;
    case 0xBu:
      a3.n128_u64[0] = result->n128_u64[0];
      v8 = 12;
      break;
    case 0xCu:
      a3 = *result;
      v8 = 13;
      break;
    case 0xDu:
      a3 = *result;
      v8 = 14;
      break;
    case 0xEu:
      a3.n128_u32[0] = result->n128_u64[0];
      v8 = 15;
      break;
    case 0xFu:
      a3.n128_u64[0] = result->n128_u64[0];
      v8 = 16;
      break;
    case 0x10u:
      a3 = *result;
      v8 = 17;
      break;
    case 0x11u:
      a3 = *result;
      v8 = 18;
      break;
    default:
      v7 = a2;
      result = REMaterialCreateDefaultSamplerDescriptor();
      a2 = v7;
      v8 = 0;
      a3.n128_u64[0] = result;
      a3.n128_u64[1] = v6;
      a4 = xmmword_1C18CD450;
      break;
  }

  *a2 = a3;
  a2[1] = a4;
  a2[2] = a5;
  a2[3] = a6;
  a2[4].n128_u8[0] = v8;
  return result;
}

CGColorRef MaterialParameters.Value.cgColorValue.getter()
{
  if (v0[4].n128_u8[0] == 5)
  {
    return specialized SIMD4<>.cgColor.getter(*v0);
  }

  else
  {
    return 0;
  }
}

uint64_t MaterialParameters.Value.simd4FloatValue.getter()
{
  if (v0[64] == 5)
  {
    return *v0;
  }

  else
  {
    return 0;
  }
}

void MaterialParameters.Value.textureValue.getter(uint64_t a1@<X8>)
{
  if (*(v1 + 64))
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v6 = *(v1 + 24);
    v4 = *(v1 + 8);
    v5 = *(v1 + 16);
    v3 = *v1;
    v7 = v3;
  }

  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
}

void MaterialParameters.Value.textureResourceValue.getter()
{
  if (*(v0 + 64) == 1)
  {
  }
}

uint64_t MaterialParameters.Value.floatValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 64);
  v3 = v2 == 2;
  v4 = v2 != 2;
  if (!v3)
  {
    v1 = 0;
  }

  return v1 | (v4 << 32);
}

uint64_t MaterialParameters.Value.simd2FloatValue.getter()
{
  if (v0[64] == 3)
  {
    return *v0;
  }

  else
  {
    return 0;
  }
}

id MaterialParameters.Value.colorValue.getter()
{
  if (*(v0 + 64) != 6)
  {
    return 0;
  }

  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t MaterialParameters.Value.float2x2Value.getter()
{
  v1 = v0[64];
  if (v1 == 7)
  {
    return *v0;
  }

  else
  {
    return 0;
  }
}

void MaterialParameters.Value.float3x3Value.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = 0uLL;
  v4 = 0uLL;
  v5 = 0uLL;
  if (v2 == 8)
  {
    v4 = v1[1];
    v5 = v1[2];
    v3 = *v1;
  }

  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v2 != 8;
}

void MaterialParameters.Value.float4x4Value.getter(uint64_t a1@<X8>)
{
  if (*(v1 + 64) == 9)
  {
    v2 = 0;
    v5 = v1[2];
    v6 = v1[3];
    v3 = *v1;
    v4 = v1[1];
    *(&v3 + 1) = *(v1 + 1);
    *(&v4 + 1) = *(v1 + 3);
    *(&v5 + 1) = *(v1 + 5);
    *(&v6 + 1) = *(v1 + 7);
  }

  else
  {
    v2 = 1;
    v3 = 0uLL;
    v4 = 0uLL;
    v5 = 0uLL;
    v6 = 0uLL;
  }

  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 64) = v2;
}

uint64_t MaterialParameters.Value.BOOLValue.getter()
{
  if (v0[64] == 10)
  {
    return *v0 & 1;
  }

  else
  {
    return 2;
  }
}

uint64_t MaterialParameters.Value.intValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 64);
  v3 = v2 == 11;
  v4 = v2 != 11;
  if (!v3)
  {
    v1 = 0;
  }

  return v1 | (v4 << 32);
}

uint64_t MaterialParameters.Value.uintValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 64);
  v3 = v2 == 15;
  v4 = v2 != 15;
  if (!v3)
  {
    v1 = 0;
  }

  return v1 | (v4 << 32);
}

uint64_t MaterialParameters.Value.simd2IntValue.getter()
{
  if (v0[64] == 12)
  {
    return *v0;
  }

  else
  {
    return 0;
  }
}

uint64_t MaterialParameters.Value.simd2UIntValue.getter()
{
  if (v0[64] == 16)
  {
    return *v0;
  }

  else
  {
    return 0;
  }
}

uint64_t MaterialParameters.Value.simd3IntValue.getter()
{
  if (v0[64] == 13)
  {
    return *v0;
  }

  else
  {
    return 0;
  }
}

uint64_t MaterialParameters.Value.simd3UIntValue.getter()
{
  if (v0[64] == 17)
  {
    return *v0;
  }

  else
  {
    return 0;
  }
}

uint64_t MaterialParameters.Value.simd4IntValue.getter()
{
  if (v0[64] == 14)
  {
    return *v0;
  }

  else
  {
    return 0;
  }
}

uint64_t MaterialParameters.Value.simd4UIntValue.getter()
{
  if (v0[64] == 18)
  {
    return *v0;
  }

  else
  {
    return 0;
  }
}

uint64_t (*MaterialParameters.subscript.modify(void *a1, uint64_t a2, uint64_t a3))()
{
  v4 = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x138uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[29] = v4;
  v8[19] = a3;
  v8[9] = a2;
  v10 = v4[3];
  v11 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v10);
  Material.subscript.getter(v16, a2, a3, v10, v11);
  v12 = v17;
  if (v17 == 255)
  {
    *(v9 + 32) = 0u;
    *(v9 + 48) = 0u;
    *v9 = 0u;
    *(v9 + 16) = 0u;
    *(v9 + 64) = v12;
  }

  else
  {
    v14[0] = v16[0];
    v14[1] = v16[1];
    v14[2] = v16[2];
    v14[3] = v16[3];
    v15 = v17;
    MaterialParameters.Value.init(_:)(v14, v9);
  }

  return MaterialParameters.subscript.modify;
}

{
  v4 = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x138uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[29] = v4;
  v8[19] = a3;
  v8[9] = a2;
  v10 = v4[3];
  v11 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v10);
  Material.subscript.getter(v16, a2, a3, v10, v11);
  v12 = v17;
  if (v17 == 255)
  {
    *(v9 + 32) = 0u;
    *(v9 + 48) = 0u;
    *v9 = 0u;
    *(v9 + 16) = 0u;
    *(v9 + 64) = v12;
  }

  else
  {
    v14[0] = v16[0];
    v14[1] = v16[1];
    v14[2] = v16[2];
    v14[3] = v16[3];
    v15 = v17;
    MaterialParameters.Value.init(_:)(v14, v9);
  }

  return MaterialParameters.subscript.modify;
}

double MaterialParameters.subscript.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = v3[3];
  v8 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v7);
  Material.subscript.getter(v13, a1, a2, v7, v8);
  v9 = v14;
  if (v14 == 255)
  {
    result = 0.0;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 64) = v9;
  }

  else
  {
    v11[0] = v13[0];
    v11[1] = v13[1];
    v11[2] = v13[2];
    v11[3] = v13[3];
    v12 = v14;
    return MaterialParameters.Value.init(_:)(v11, a3);
  }

  return result;
}

__n128 key path getter for MaterialParameters.subscript(_:) : MaterialParameters@<Q0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  Material.subscript.getter(v12, v4, v5, v6, v7);
  if (v13 == 255)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v18 = v13;
  }

  else
  {
    v10[0] = v12[0];
    v10[1] = v12[1];
    v10[2] = v12[2];
    v10[3] = v12[3];
    v11 = v13;
    MaterialParameters.Value.init(_:)(v10, &v14);
  }

  v8 = v17;
  *(a3 + 32) = v16;
  *(a3 + 48) = v8;
  *(a3 + 64) = v18;
  result = v15;
  *a3 = v14;
  *(a3 + 16) = result;
  return result;
}

uint64_t key path setter for MaterialParameters.subscript(_:) : MaterialParameters(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 48);
  v17 = *(a1 + 32);
  v18 = v5;
  v6 = *(a1 + 16);
  v16[0] = *a1;
  v16[1] = v6;
  v7 = *(a1 + 48);
  v14[2] = v17;
  v14[3] = v7;
  v8 = *a3;
  v9 = a3[1];
  v19 = *(a1 + 64);
  v15 = *(a1 + 64);
  v14[0] = v16[0];
  v14[1] = v4;
  __RKMaterialParameterBlock.Parameter.init(_:)(v14, v13, v7, v4, v17);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a2, v10);

  outlined init with copy of [String : String](v16, v14, &_s17RealityFoundation18MaterialParametersV5ValueOSgMd, &_s17RealityFoundation18MaterialParametersV5ValueOSgMR);
  return Material.subscript.setter(v13, v8, v9, v10, v11);
}

uint64_t MaterialParameters.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, __n128 a7)
{
  v10 = *(a1 + 48);
  v16[2] = *(a1 + 32);
  v16[3] = v10;
  v17 = *(a1 + 64);
  v11 = *(a1 + 16);
  v16[0] = *a1;
  v16[1] = v11;
  __RKMaterialParameterBlock.Parameter.init(_:)(v16, v15, v11, v16[0], a7);
  v12 = *(v7 + 24);
  v13 = *(v7 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v7, v12);
  return Material.subscript.setter(v15, a2, a3, v12, v13);
}

void MaterialParameters.subscript.modify(void **a1, char a2, double a3, double a4, double a5, __n128 a6)
{
  v6 = *a1;
  if (a2)
  {
    v7 = *(v6 + 1);
    v9 = *(v6 + 2);
    v8 = *(v6 + 3);
    *(v6 + 12) = v9;
    *(v6 + 13) = v8;
    v10 = *(v6 + 1);
    v11 = *v6;
    *(v6 + 10) = *v6;
    *(v6 + 11) = v10;
    v12 = *(v6 + 3);
    v29 = v9;
    v30 = v12;
    v13 = *(v6 + 29);
    v14 = *(v6 + 19);
    v15 = *(v6 + 9);
    *(v6 + 224) = *(v6 + 64);
    v31 = *(v6 + 64);
    v27 = v11;
    v28 = v7;
    __RKMaterialParameterBlock.Parameter.init(_:)(&v27, v32, v12, v7, v9);
    v16 = *(v13 + 24);
    v17 = *(v13 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v13, v16);

    outlined init with copy of [String : String](v6 + 160, v6 + 240, &_s17RealityFoundation18MaterialParametersV5ValueOSgMd, &_s17RealityFoundation18MaterialParametersV5ValueOSgMR);
    Material.subscript.setter(v32, v15, v14, v16, v17);
    v18 = *(v6 + 3);
    *(v6 + 7) = *(v6 + 2);
    *(v6 + 8) = v18;
    *(v6 + 144) = *(v6 + 64);
    v19 = *(v6 + 1);
    *(v6 + 5) = *v6;
    *(v6 + 6) = v19;
    outlined destroy of BodyTrackingComponent?(v6 + 80, &_s17RealityFoundation18MaterialParametersV5ValueOSgMd, &_s17RealityFoundation18MaterialParametersV5ValueOSgMR);
  }

  else
  {
    v20 = *(v6 + 29);
    v21 = *(v6 + 19);
    v22 = *(v6 + 9);
    v23 = *(v6 + 3);
    v29 = *(v6 + 2);
    v30 = v23;
    v31 = *(v6 + 64);
    v24 = *(v6 + 1);
    v27 = *v6;
    v28 = v24;
    __RKMaterialParameterBlock.Parameter.init(_:)(&v27, v32, v24, v27, a6);
    v25 = *(v20 + 24);
    v26 = *(v20 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v20, v25);

    Material.subscript.setter(v32, v22, v21, v25, v26);
  }

  free(v6);
}

uint64_t MaterialParameters.Metadata.displayName.getter()
{
  v1 = *v0;

  return v1;
}

void MaterialParameters.Metadata.displayName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

RealityFoundation::MaterialParameters::Metadata_optional __swiftcall MaterialParameters.metadata(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v4._countAndFlagsBits = countAndFlagsBits;
  v4._object = object;
  return Material.metadata(for:)(v4);
}

void UniformParameters.Value.init(_:)(uint64_t a1@<X0>, __n128 *a2@<X8>, __n128 a3@<Q0>, __n128 a4@<Q1>, __n128 a5@<Q2>, __n128 a6@<Q3>)
{
  v7 = *a1;
  v6 = *(a1 + 8);
  v9 = *(a1 + 16);
  v8 = *(a1 + 24);
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  v13 = *(a1 + 48);
  v12 = *(a1 + 56);
  switch(*(a1 + 64))
  {
    case 1:
      v15 = 0;
      a3.n128_u64[0] = *a1;
      goto LABEL_14;
    case 2:
      a3.n128_u32[0] = *a1;
      v15 = 1;
      break;
    case 3:
      a3.n128_u64[0] = *a1;
      v15 = 2;
      break;
    case 4:
      a3 = *a1;
      v15 = 3;
      break;
    case 5:
      a3 = *a1;
      v15 = 4;
      break;
    case 6:
      a3.n128_u64[0] = *a1;
      v15 = 5;
      break;
    case 7:
      a3.n128_u64[0] = *a1;
      a4.n128_u64[0] = *(a1 + 8);
      a3.n128_u64[1] = a4.n128_u64[0];
      v15 = 6;
      break;
    case 8:
      a4 = *(a1 + 16);
      a5 = *(a1 + 32);
      a3 = *a1;
      v15 = 7;
      break;
    case 9:
      a4 = *(a1 + 16);
      a5 = *(a1 + 32);
      a6 = *(a1 + 48);
      a3 = *a1;
      v15 = 8;
      break;
    case 0xA:
      a3.n128_u32[0] = v7 & 1;
      v15 = 9;
      break;
    case 0xB:
      a3.n128_u32[0] = *a1;
      v15 = 10;
      break;
    case 0xC:
      a3.n128_u64[0] = *a1;
      v15 = 11;
      break;
    case 0xD:
      a3 = *a1;
      v15 = 12;
      break;
    case 0xE:
      a3 = *a1;
      v15 = 13;
      break;
    case 0xF:
      a3.n128_u32[0] = *a1;
      v15 = 14;
      break;
    case 0x10:
      a3.n128_u64[0] = *a1;
      v15 = 15;
      break;
    case 0x11:
      a3 = *a1;
      v15 = 16;
      break;
    case 0x12:
      a3 = *a1;
      v15 = 17;
      break;
    default:
      v14 = a2;

      outlined consume of MaterialParameters.Value(v7, v6, v9, v8, v11, v10, v13, v12, 0);
      a2 = v14;
      v15 = 0;
      a3.n128_u64[0] = v6;
LABEL_14:
      a4.n128_u64[0] = 84148994;
      a3.n128_u64[1] = 84148994;
      break;
  }

  *a2 = a3;
  a2[1] = a4;
  a2[2] = a5;
  a2[3] = a6;
  a2[4].n128_u8[0] = v15;
}

CGColorRef UniformParameters.Value.cgColorValue.getter()
{
  if (v0[4].n128_u8[0] == 4)
  {
    return specialized SIMD4<>.cgColor.getter(*v0);
  }

  else
  {
    return 0;
  }
}

uint64_t MaterialParameters.Value.simd3FloatValue.getter()
{
  if (v0[64] == 4)
  {
    return *v0;
  }

  else
  {
    return 0;
  }
}

id static UniformParameters.Value.cgColor(_:)@<X0>(id a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 64) = 6;
  return a1;
}

void UniformParameters.Value.textureValue.getter(uint64_t a1@<X8>)
{
  if (*(v1 + 64))
  {
    v3 = 0;
    v4 = 0;
  }

  else
  {
    v4 = *(v1 + 8);
  }

  *a1 = v3;
  *(a1 + 8) = v4;
}

uint64_t UniformParameters.Value.floatValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 64);
  v3 = v2 == 1;
  v4 = v2 != 1;
  if (!v3)
  {
    v1 = 0;
  }

  return v1 | (v4 << 32);
}

uint64_t UniformParameters.Value.simd2FloatValue.getter()
{
  if (v0[64] == 2)
  {
    return *v0;
  }

  else
  {
    return 0;
  }
}

uint64_t UniformParameters.Value.simd3FloatValue.getter()
{
  if (v0[64] == 3)
  {
    return *v0;
  }

  else
  {
    return 0;
  }
}

id UniformParameters.Value.colorValue.getter()
{
  if (*(v0 + 64) != 5)
  {
    return 0;
  }

  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t UniformParameters.Value.float2x2Value.getter()
{
  v1 = v0[64];
  if (v1 == 6)
  {
    return *v0;
  }

  else
  {
    return 0;
  }
}

void UniformParameters.Value.float3x3Value.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = 0uLL;
  v4 = 0uLL;
  v5 = 0uLL;
  if (v2 == 7)
  {
    v4 = v1[1];
    v5 = v1[2];
    v3 = *v1;
  }

  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v2 != 7;
}

void UniformParameters.Value.float4x4Value.getter(uint64_t a1@<X8>)
{
  if (*(v1 + 64) == 8)
  {
    v2 = 0;
    v5 = v1[2];
    v6 = v1[3];
    v3 = *v1;
    v4 = v1[1];
    *(&v3 + 1) = *(v1 + 1);
    *(&v4 + 1) = *(v1 + 3);
    *(&v5 + 1) = *(v1 + 5);
    *(&v6 + 1) = *(v1 + 7);
  }

  else
  {
    v2 = 1;
    v3 = 0uLL;
    v4 = 0uLL;
    v5 = 0uLL;
    v6 = 0uLL;
  }

  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 64) = v2;
}

uint64_t UniformParameters.Value.BOOLValue.getter()
{
  if (v0[64] == 9)
  {
    return *v0 & 1;
  }

  else
  {
    return 2;
  }
}

double UniformParameters.subscript.getter@<D0>(uint64_t a1@<X8>)
{
  strcpy(v15, "customParams.");
  HIWORD(v15[0]) = -4864;
  MEMORY[0x1C68F3410]();
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  Material.subscript.getter(v13, *&v15[0], *(&v15[0] + 1), v3, v4);

  if (v14 == 255 || (v8 = v13[0], v9 = v13[1], v10 = v13[2], v11 = v13[3], v12 = v14, MaterialParameters.Value.init(_:)(&v8, v15), v18 == 255))
  {
    result = 0.0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 64) = -1;
  }

  else
  {
    v8 = v15[0];
    v9 = v15[1];
    v10 = v16;
    v11 = v17;
    v12 = v18;
    UniformParameters.Value.init(_:)(&v8, a1, v16, v17, v5, v6);
  }

  return result;
}

uint64_t key path setter for UniformParameters.subscript(_:) : UniformParameters(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = a3[1];
  v6 = *(a1 + 48);
  v10[2] = *(a1 + 32);
  v10[3] = v6;
  v11 = *(a1 + 64);
  v7 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v7;

  outlined init with copy of [String : String](v10, &v9, &_s17RealityFoundation17UniformParametersV5ValueOSgMd, &_s17RealityFoundation17UniformParametersV5ValueOSgMR);
  return UniformParameters.subscript.setter(a1, v4, v5);
}

uint64_t UniformParameters.subscript.setter(__n128 *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1[3];
  v29 = a1[2];
  v30 = v4;
  v31 = a1[4].n128_u8[0];
  v5 = a1[1];
  v27 = *a1;
  v28 = v5;
  strcpy(&v22, "customParams.");
  v22.n128_u16[7] = -4864;
  MEMORY[0x1C68F3410](a2, a3);

  v6 = v22;
  if (v31 == 255)
  {
    v17 = *(v3 + 24);
    v18 = *(v3 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v3, v17);
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v26 = 19;
    return Material.subscript.setter(&v22, v6.n128_i64[0], v6.n128_i64[1], v17, v18);
  }

  else
  {
    v20[0] = v27;
    v20[1] = v28;
    v20[2] = v29;
    v20[3] = v30;
    v21 = v31;
    v24 = v29;
    v25 = v30;
    v26 = v31;
    v22 = v27;
    v23 = v28;
    outlined init with copy of UniformParameters.Value(&v22, v19);
    MaterialParameters.Value.init(_:)(v20, v19, v7, v8, v9, v10);
    __RKMaterialParameterBlock.Parameter.init(_:)(v19, v20, v11, v12, v13);
    v14 = *(v3 + 24);
    v15 = *(v3 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v3, v14);
    Material.subscript.setter(v20, v6.n128_i64[0], v6.n128_i64[1], v14, v15);
    return outlined destroy of BodyTrackingComponent?(&v27, &_s17RealityFoundation17UniformParametersV5ValueOSgMd, &_s17RealityFoundation17UniformParametersV5ValueOSgMR);
  }
}

void (*UniformParameters.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x138uLL);
  }

  *a1 = v7;
  v7[29] = v3;
  v7[19] = a3;
  v7[9] = a2;
  UniformParameters.subscript.getter(v7);
  return UniformParameters.subscript.modify;
}

void UniformParameters.subscript.modify(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = *(v2 + 1);
    v5 = *(v2 + 2);
    v4 = *(v2 + 3);
    *(v2 + 12) = v5;
    *(v2 + 13) = v4;
    v6 = *(v2 + 1);
    v7 = *v2;
    *(v2 + 10) = *v2;
    *(v2 + 11) = v6;
    v8 = *(v2 + 3);
    v19 = v5;
    v20 = v8;
    v9 = *(v2 + 19);
    v10 = *(v2 + 9);
    *(v2 + 224) = *(v2 + 64);
    v21 = *(v2 + 64);
    v17 = v7;
    v18 = v3;

    outlined init with copy of [String : String](v2 + 160, v2 + 240, &_s17RealityFoundation17UniformParametersV5ValueOSgMd, &_s17RealityFoundation17UniformParametersV5ValueOSgMR);
    UniformParameters.subscript.setter(&v17, v10, v9);
    v11 = *(v2 + 3);
    *(v2 + 7) = *(v2 + 2);
    *(v2 + 8) = v11;
    *(v2 + 144) = *(v2 + 64);
    v12 = *(v2 + 1);
    *(v2 + 5) = *v2;
    *(v2 + 6) = v12;
    outlined destroy of BodyTrackingComponent?(v2 + 80, &_s17RealityFoundation17UniformParametersV5ValueOSgMd, &_s17RealityFoundation17UniformParametersV5ValueOSgMR);
  }

  else
  {
    v13 = *(v2 + 19);
    v14 = *(v2 + 9);
    v15 = *(v2 + 3);
    v19 = *(v2 + 2);
    v20 = v15;
    v21 = *(v2 + 64);
    v16 = *(v2 + 1);
    v17 = *v2;
    v18 = v16;

    UniformParameters.subscript.setter(&v17, v14, v13);
  }

  free(v2);
}

Swift::Int MaterialParameters.Handle.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hash = RESerializedMaterialParameterHandleGetHash();
  MEMORY[0x1C68F4C50](Hash);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MaterialParameters.Handle()
{
  Hasher.init(_seed:)();
  Hash = RESerializedMaterialParameterHandleGetHash();
  MEMORY[0x1C68F4C50](Hash);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MaterialParameters.Handle()
{
  Hasher.init(_seed:)();
  Hash = RESerializedMaterialParameterHandleGetHash();
  MEMORY[0x1C68F4C50](Hash);
  return Hasher._finalize()();
}

uint64_t specialized static MaterialParameters.Texture.== infix(_:_:)(uint64_t a1, uint64_t a2, uint8x8_t a3)
{
  if (*(*(a1 + 8) + 16) != *(*(a2 + 8) + 16))
  {
    return 0;
  }

  v4 = *a1;
  v5 = *(a1 + 16);
  v6 = *a2;
  v7 = *(a2 + 16);
  a3.i32[0] = *(a1 + 24);
  v8 = vmovl_u8(a3).u64[0];
  v17 = v8;
  v8.i32[0] = *(a2 + 24);
  v16 = vmovl_u8(v8);
  if (!*a1)
  {
    v9 = REMaterialCreateDefaultSamplerDescriptor();
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_7:
    v12 = v4;
    v11 = REMaterialCreateDefaultSamplerDescriptor();
    goto LABEL_8;
  }

  v9 = *a1;
  if (!v6)
  {
    goto LABEL_7;
  }

LABEL_5:
  v10 = v4;
  v11 = v6;
LABEL_8:
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
  v13 = v6;
  v14 = static NSObject.== infix(_:_:)();

  v15 = vceq_s16((*&v17 & 0xFF00FF00FF00FFLL), (v16.i64[0] & 0xFF00FF00FF00FFLL));
  v15.i16[0] = vminv_u16(v15);
  return v14 & v15.i32[0] & (v5 == v7);
}

uint64_t specialized static MaterialParameters.Value.== infix(_:_:)(uint64_t a1, float32x4_t *a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 16);
  v41 = *(a1 + 32);
  v42 = v2;
  v4 = *(a1 + 16);
  v40[0] = *a1;
  v40[1] = v4;
  v5 = a2[3];
  v6 = a2[1];
  v46 = a2[2];
  v47 = v5;
  v7 = a2[1];
  v44 = *a2;
  v45 = v7;
  v8 = *(a1 + 48);
  v49[2] = v41;
  v49[3] = v8;
  v49[0] = *a1;
  v49[1] = v3;
  v9 = a2[3];
  v53 = v46;
  v54 = v9;
  v43 = *(a1 + 64);
  v48 = a2[4].i8[0];
  v50 = *(a1 + 64);
  v55 = a2[4].i8[0];
  v51 = v44;
  v52 = v6;
  v56 = v40[0];
  switch(v43)
  {
    case 1:
      if (v48 != 1)
      {
        goto LABEL_51;
      }

      v16 = *(v56.i64[0] + 16);
      v21 = *(v44.i64[0] + 16);
      outlined init with copy of MaterialParameters.Value(v40, v39);
      outlined init with copy of MaterialParameters.Value(&v44, v39);
      outlined destroy of BodyTrackingComponent?(v49, &_s17RealityFoundation18MaterialParametersV5ValueO_AEtMd, &_s17RealityFoundation18MaterialParametersV5ValueO_AEtMR);
      LOBYTE(v16) = v16 == v21;
      return v16 & 1;
    case 2:
      if (v48 != 2)
      {
        goto LABEL_53;
      }

      v15 = v56.f32[0];
      outlined destroy of BodyTrackingComponent?(v49, &_s17RealityFoundation18MaterialParametersV5ValueO_AEtMd, &_s17RealityFoundation18MaterialParametersV5ValueO_AEtMR);
      LOBYTE(v16) = v15 == v44.f32[0];
      return v16 & 1;
    case 3:
      if (v48 != 3)
      {
        goto LABEL_53;
      }

      v18 = *v56.f32;
      outlined destroy of BodyTrackingComponent?(v49, &_s17RealityFoundation18MaterialParametersV5ValueO_AEtMd, &_s17RealityFoundation18MaterialParametersV5ValueO_AEtMR);
      v13 = vceq_f32(v18, *v44.f32);
      if ((v13.i8[0] & 1) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_23;
    case 4:
      if (v48 != 4)
      {
        goto LABEL_53;
      }

      v29 = v56;
      outlined destroy of BodyTrackingComponent?(v49, &_s17RealityFoundation18MaterialParametersV5ValueO_AEtMd, &_s17RealityFoundation18MaterialParametersV5ValueO_AEtMR);
      v11 = vceqq_f32(v29, v44);
      goto LABEL_34;
    case 5:
      if (v48 != 5)
      {
        goto LABEL_53;
      }

      v30 = v56;
      outlined destroy of BodyTrackingComponent?(v49, &_s17RealityFoundation18MaterialParametersV5ValueO_AEtMd, &_s17RealityFoundation18MaterialParametersV5ValueO_AEtMR);
      LOBYTE(v16) = 0;
      v22 = vceqq_f32(v30, v44);
      goto LABEL_40;
    case 6:
      if (v48 != 6)
      {
        v26 = *&v40[0];
        goto LABEL_53;
      }

      type metadata accessor for CGColorRef(0);
      outlined init with copy of MaterialParameters.Value(v40, v39);
      outlined init with copy of MaterialParameters.Value(&v44, v39);
      lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef();
      LOBYTE(v16) = static _CFObject.== infix(_:_:)();
LABEL_50:
      outlined destroy of BodyTrackingComponent?(v49, &_s17RealityFoundation18MaterialParametersV5ValueO_AEtMd, &_s17RealityFoundation18MaterialParametersV5ValueO_AEtMR);
      break;
    case 7:
      if (v48 != 7)
      {
        goto LABEL_53;
      }

      v19 = vand_s8(vceq_f32(*v56.f32, *v44.f32), vceq_f32(*&v56.u32[2], *&v44.u32[2]));
      v20 = vpmin_u32(v19, v19).u32[0];
      goto LABEL_49;
    case 8:
      if (v48 != 8)
      {
        goto LABEL_53;
      }

      v14 = vandq_s8(vandq_s8(vceqq_f32(v45, v4), vceqq_f32(v41, v46)), vceqq_f32(v56, v44));
      v14.i32[3] = v14.i32[2];
      goto LABEL_48;
    case 9:
      if (v48 != 9)
      {
        goto LABEL_53;
      }

      v14 = vandq_s8(vandq_s8(vceqq_f32(v41, v46), vceqq_f32(v42, v47)), vandq_s8(vceqq_f32(v45, v4), vceqq_f32(v56, v44)));
LABEL_48:
      v20 = vminvq_u32(v14);
LABEL_49:
      LODWORD(v16) = v20 >> 31;
      goto LABEL_50;
    case 10:
      if (v48 != 10)
      {
        goto LABEL_53;
      }

      v25 = v56.i8[0];
      outlined destroy of BodyTrackingComponent?(v49, &_s17RealityFoundation18MaterialParametersV5ValueO_AEtMd, &_s17RealityFoundation18MaterialParametersV5ValueO_AEtMR);
      LOBYTE(v16) = v25 ^ v44.i8[0] ^ 1;
      return v16 & 1;
    case 11:
      if (v48 != 11)
      {
        goto LABEL_53;
      }

      goto LABEL_20;
    case 12:
      if (v48 == 12)
      {
        goto LABEL_13;
      }

      goto LABEL_53;
    case 13:
      if (v48 == 13)
      {
        goto LABEL_33;
      }

      goto LABEL_53;
    case 14:
      if (v48 == 14)
      {
        goto LABEL_39;
      }

      goto LABEL_53;
    case 15:
      if (v48 != 15)
      {
        goto LABEL_53;
      }

LABEL_20:
      v17 = v56.i32[0];
      outlined destroy of BodyTrackingComponent?(v49, &_s17RealityFoundation18MaterialParametersV5ValueO_AEtMd, &_s17RealityFoundation18MaterialParametersV5ValueO_AEtMR);
      LOBYTE(v16) = v17 == v44.i32[0];
      return v16 & 1;
    case 16:
      if (v48 != 16)
      {
        goto LABEL_53;
      }

LABEL_13:
      v12 = *v56.f32;
      outlined destroy of BodyTrackingComponent?(v49, &_s17RealityFoundation18MaterialParametersV5ValueO_AEtMd, &_s17RealityFoundation18MaterialParametersV5ValueO_AEtMR);
      v13 = vceq_s32(v12, *v44.f32);
      if ((v13.i8[0] & 1) == 0)
      {
        goto LABEL_54;
      }

LABEL_23:
      LOBYTE(v16) = v13.i8[4];
      return v16 & 1;
    case 17:
      if (v48 != 17)
      {
        goto LABEL_53;
      }

LABEL_33:
      v31 = v56;
      outlined destroy of BodyTrackingComponent?(v49, &_s17RealityFoundation18MaterialParametersV5ValueO_AEtMd, &_s17RealityFoundation18MaterialParametersV5ValueO_AEtMR);
      v11 = vceqq_s32(v31, v44);
LABEL_34:
      v23 = vmovn_s32(v11);
      if ((v23.i16[0] & v23.i16[1] & 1) == 0)
      {
        goto LABEL_54;
      }

      LOBYTE(v16) = v23.i8[4];
      return v16 & 1;
    case 18:
      if (v48 != 18)
      {
        goto LABEL_53;
      }

LABEL_39:
      v32 = v56;
      outlined destroy of BodyTrackingComponent?(v49, &_s17RealityFoundation18MaterialParametersV5ValueO_AEtMd, &_s17RealityFoundation18MaterialParametersV5ValueO_AEtMR);
      LOBYTE(v16) = 0;
      v22 = vceqq_s32(v32, v44);
LABEL_40:
      v24 = vmovn_s32(v22);
      if (v24.i8[0] & 1) != 0 && (v24.i8[2] & 1) != 0 && (v24.i8[4])
      {
        LOBYTE(v16) = v24.i8[6];
      }

      return v16 & 1;
    default:
      if (v48)
      {
        v10 = *&v40[0];
LABEL_51:

LABEL_53:
        outlined init with copy of MaterialParameters.Value(&v44, v39);
        outlined destroy of BodyTrackingComponent?(v49, &_s17RealityFoundation18MaterialParametersV5ValueO_AEtMd, &_s17RealityFoundation18MaterialParametersV5ValueO_AEtMR);
LABEL_54:
        LOBYTE(v16) = 0;
      }

      else
      {
        v36 = v56;
        v37 = v4.i64[0];
        v38 = vmovn_s16(vzip2q_s8(v4, v4)).u32[0];
        v33 = v44;
        v34 = v45.i64[0];
        v35 = v45.i32[2];
        outlined init with copy of MaterialParameters.Value(&v44, v39);
        outlined init with copy of MaterialParameters.Value(v40, v39);
        outlined init with copy of MaterialParameters.Value(v40, v39);
        outlined init with copy of MaterialParameters.Value(&v44, v39);
        LOBYTE(v16) = specialized static MaterialParameters.Texture.== infix(_:_:)(&v36, &v33, v28);
        outlined destroy of BodyTrackingComponent?(v49, &_s17RealityFoundation18MaterialParametersV5ValueO_AEtMd, &_s17RealityFoundation18MaterialParametersV5ValueO_AEtMR);
        outlined destroy of MaterialParameters.Value(&v44);
        outlined destroy of MaterialParameters.Value(v40);
      }

      break;
  }

  return v16 & 1;
}

unint64_t lazy protocol witness table accessor for type MaterialParameters.Handle and conformance MaterialParameters.Handle()
{
  result = lazy protocol witness table cache variable for type MaterialParameters.Handle and conformance MaterialParameters.Handle;
  if (!lazy protocol witness table cache variable for type MaterialParameters.Handle and conformance MaterialParameters.Handle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MaterialParameters.Handle, &type metadata for MaterialParameters.Handle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type MaterialParameters.Handle and conformance MaterialParameters.Handle);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MaterialParameters.Texture(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 28))
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

uint64_t storeEnumTagSinglePayload for MaterialParameters.Texture(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 28) = 1;
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

    *(result + 28) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MaterialParameters.Value(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xEE && *(a1 + 65))
  {
    return (*a1 + 238);
  }

  v3 = *(a1 + 64);
  if (v3 <= 0x12)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for MaterialParameters.Value(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xED)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 238;
    if (a3 >= 0xEE)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xEE)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UniformParameters.Value(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xEF && *(a1 + 65))
  {
    return (*a1 + 239);
  }

  v3 = *(a1 + 64);
  if (v3 <= 0x11)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for UniformParameters.Value(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xEE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 239;
    if (a3 >= 0xEF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xEF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

uint64_t one-time initialization function for default(uint64_t a1)
{
  type metadata accessor for PhysicsMaterialResource();
  v1 = swift_allocObject();
  v1[4] = 0;
  v1[2] = vdup_n_s32(0x3F4CCCCDu);
  v1[3].i32[0] = 1061997773;
  result = PhysicsMaterialResource.makeCoreAsset()();
  static PhysicsMaterialResource.default = v1;
  return result;
}

uint64_t static PhysicsMaterialResource.generate(friction:restitution:)(uint64_t a1, float a2, float a3)
{
  type metadata accessor for PhysicsMaterialResource();
  v5 = swift_allocObject();
  *(v5 + 32) = 0;
  *(v5 + 16) = a2;
  *(v5 + 20) = a2;
  *(v5 + 24) = a3;
  PhysicsMaterialResource.makeCoreAsset()();
  return v5;
}

double static PhysicsMaterialResource.default.getter()
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t PhysicsMaterialResource.deinit()
{
  v1 = v0;
  isEscapingClosureAtFileLocation = type metadata accessor for DispatchPredicate();
  v3 = *(isEscapingClosureAtFileLocation - 8);
  MEMORY[0x1EEE9AC00](isEscapingClosureAtFileLocation);
  v5 = (&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  v7 = v6;
  swift_beginAccess();
  v8 = *(v7 + 24);
  swift_unownedRetainStrong();

  v9 = *(v8 + 32);

  *v5 = v9;
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], isEscapingClosureAtFileLocation);
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, isEscapingClosureAtFileLocation);
  if (v9)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = partial apply for closure #1 in PhysicsMaterialResource.deinit;
    *(v10 + 24) = v1;
    partial apply for specialized thunk for @callee_guaranteed () -> (@out A, @error @owned Error)();
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return v1;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);

  swift_isEscapingClosureAtFileLocation();

  __break(1u);
  return result;
}

uint64_t closure #1 in PhysicsMaterialResource.deinit(uint64_t a1)
{
  if (*(a1 + 32) && REAssetHandleIsLoaded() || (result = PhysicsMaterialResource.makeCoreAsset()(), *(a1 + 32)))
  {
    REAssetSetSwiftObject();
    if (*(a1 + 32) && (REAssetHandleIsLoaded() & 1) != 0)
    {
      return RERelease();
    }

    result = PhysicsMaterialResource.makeCoreAsset()();
    if (*(a1 + 32))
    {
      return RERelease();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t PhysicsMaterialResource.__deallocating_deinit()
{
  PhysicsMaterialResource.deinit();

  return swift_deallocClassInstance();
}

uint64_t PhysicsMaterialResource.makeCoreAsset()()
{
  v1 = v0;
  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  v3 = v2;
  swift_beginAccess();
  outlined init with copy of __REAssetService(v3 + 120, v7);

  v4 = v8;
  v5 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  (*(v5 + 32))(v4, v5);
  __swift_destroy_boxed_opaque_existential_1(v7);
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  result = REAssetManagerPhysicsMaterialAssetCreate2();
  if (result)
  {
    *(v1 + 32) = result;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t static PhysicsMaterialResource.generate(staticFriction:dynamicFriction:restitution:)(uint64_t a1, float a2, float a3, float a4)
{
  type metadata accessor for PhysicsMaterialResource();
  v7 = swift_allocObject();
  *(v7 + 32) = 0;
  *(v7 + 16) = a2;
  *(v7 + 20) = a3;
  *(v7 + 24) = a4;
  PhysicsMaterialResource.makeCoreAsset()();
  return v7;
}

uint64_t PhysicsMaterialResource.addToLoadRequest(_:)(uint64_t a1)
{
  if (*(v1 + 32) && REAssetHandleIsLoaded() || (result = PhysicsMaterialResource.makeCoreAsset()(), *(v1 + 32)))
  {

    return REAssetLoadRequestAddAsset();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for RequestLoadable.addToLoadRequest(_:) in conformance PhysicsMaterialResource(uint64_t a1)
{
  v2 = *v1;
  if (*(v2 + 32) && REAssetHandleIsLoaded() || (result = PhysicsMaterialResource.makeCoreAsset()(), *(v2 + 32)))
  {

    return REAssetLoadRequestAddAsset();
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Int CameraControls.InteractionMode.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

void CameraControls.hash(into:)()
{
  v1 = *v0;
  if (v1 == 7)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68F4C10](v1);
  }
}

Swift::Int CameraControls.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 == 7)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68F4C10](v1);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CameraControls()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 == 7)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68F4C10](v1);
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance CameraControls()
{
  v1 = *v0;
  if (v1 == 7)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68F4C10](v1);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CameraControls()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 == 7)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68F4C10](v1);
  }

  return Hasher._finalize()();
}

uint64_t specialized static CameraControls.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 7)
  {
    if (v3 == 7)
    {
      return 1;
    }
  }

  else if (v2 == v3)
  {
    return 1;
  }

  return 0;
}

unint64_t lazy protocol witness table accessor for type CameraControls.InteractionMode and conformance CameraControls.InteractionMode()
{
  result = lazy protocol witness table cache variable for type CameraControls.InteractionMode and conformance CameraControls.InteractionMode;
  if (!lazy protocol witness table cache variable for type CameraControls.InteractionMode and conformance CameraControls.InteractionMode)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CameraControls.InteractionMode, &type metadata for CameraControls.InteractionMode, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CameraControls.InteractionMode and conformance CameraControls.InteractionMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CameraControls.InteractionMode] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CameraControls.InteractionMode] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CameraControls.InteractionMode] and conformance [A])
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay17RealityFoundation14CameraControlsV15InteractionModeOGMd, &_sSay17RealityFoundation14CameraControlsV15InteractionModeOGMR);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type [CameraControls.InteractionMode] and conformance [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CameraControls and conformance CameraControls()
{
  result = lazy protocol witness table cache variable for type CameraControls and conformance CameraControls;
  if (!lazy protocol witness table cache variable for type CameraControls and conformance CameraControls)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CameraControls, &type metadata for CameraControls, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CameraControls and conformance CameraControls);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CameraControls(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 7)
  {
    v7 = 7;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 8;
  if (v6 < 7)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

void GeometricPinsComponent.subscript.getter(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = *v3;
  v8 = 1 << *(v7 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v7 + 56);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  if (v10)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      outlined init with copy of GeometricPin(*(v7 + 48) + 80 * (__clz(__rbit64(v10)) | (v13 << 6)), v15);
      outlined init with take of GeometricPin(v15, v14);
      if (v14[1] == a1 && v14[2] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v10 &= v10 - 1;
      outlined destroy of GeometricPin(v14);
      v12 = v13;
      if (!v10)
      {
        goto LABEL_5;
      }
    }

    outlined init with take of GeometricPin(v14, a3);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v11)
      {

        a3[3] = 0u;
        a3[4] = 0u;
        a3[1] = 0u;
        a3[2] = 0u;
        *a3 = 0u;
        return;
      }

      v10 = *(v7 + 56 + 8 * v13);
      ++v12;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

double GeometricPinsComponent.removePin(named:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v7[0].i64[0] = *v3;
  GeometricPinsComponent.subscript.getter(a1, a2, v8);
  outlined init with copy of GeometricPin?(v8, v6);
  if (v6[2])
  {
    outlined init with take of GeometricPin(v6, v7);
    specialized Set._Variant.remove(_:)(v7, a3);
    outlined destroy of GeometricPin(v7);
    outlined destroy of GeometricPin?(v8);
  }

  else
  {
    outlined destroy of GeometricPin?(v8);
    outlined destroy of GeometricPin?(v6);
    result = 0.0;
    a3[3] = 0u;
    a3[4] = 0u;
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
  }

  return result;
}

void GeometricPinsComponent.set(pin:)(uint64_t a1)
{
  outlined init with copy of GeometricPin(a1, v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *v1;
  *v1 = 0x8000000000000000;
  specialized _NativeSet.update(with:isUnique:)(v4, isUniquelyReferenced_nonNull_native, v5);
  outlined destroy of GeometricPin?(v5);

  *v1 = v3;
}

uint64_t static GeometricPinsComponent.__fromCore(_:)@<X0>(void *a2@<X8>)
{
  v33 = MEMORY[0x1E69E7CD0];
  PinCount = REPinComponentGetPinCount();
  Entity = REComponentGetEntity();
  type metadata accessor for Entity();
  if (!REEntityGetSwiftObject())
  {
    result = REEntityIsBeingDestroyed();
    if (result)
    {
LABEL_18:
      __break(1u);
      return result;
    }

    v7 = static Entity.entityInfoType(_:)(Entity);
    if (v7)
    {
      v8 = (*(v7 + 232))();
      v9 = *(v8 + 16);

      MEMORY[0x1C68F9740](v9, 0);
      *(v8 + 16) = Entity;
      MEMORY[0x1C68F9740](Entity, v8);

      if ((PinCount & 0x8000000000000000) == 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      result = makeEntity(for:)(Entity);
      if ((PinCount & 0x8000000000000000) == 0)
      {
        goto LABEL_7;
      }
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  result = swift_dynamicCastClassUnconditional();
  if (PinCount < 0)
  {
    goto LABEL_17;
  }

LABEL_7:
  if (PinCount)
  {
    for (i = 0; i != PinCount; ++i)
    {
      v23 = v6;
      REPinComponentGetPinNameAtIndex();
      v12 = String.init(cString:)();
      v14 = v13;
      REPinComponentGetPinOffsetPoseAtIndex();
      v21 = v15;
      HIDWORD(v16) = v23;
      v22 = v16;
      if (REPinComponentIsSkeletalJointPinAtIndex())
      {
        REPinComponentGetSkeletalJointNameAtIndex();
        v17 = String.init(cString:)();
        v19 = v18;
        swift_weakInit();
        v31 = v22;
        v32 = v21;
        v11 = swift_weakAssign();
        v27 = v12;
        v28 = v14;
        v29 = v17;
        v30 = v19;
      }

      else
      {
        swift_weakInit();
        v31 = v22;
        v32 = v21;
        v11 = swift_weakAssign();
        v27 = v12;
        v28 = v14;
        v29 = 0;
        v30 = 0;
      }

      outlined init with copy of GeometricPin(v11, v24);
      specialized Set._Variant.insert(_:)(v25, v24);
      outlined destroy of GeometricPin(v25);
      outlined destroy of GeometricPin(v26);
      v6 = HIDWORD(v22);
    }

    v20 = v33;
  }

  else
  {

    v20 = MEMORY[0x1E69E7CD0];
  }

  *a2 = v20;
  return result;
}

uint64_t GeometricPinsComponent.__toCore(_:)(uint64_t *a1)
{
  v3 = type metadata accessor for String.Encoding();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = *v1;

  v27 = v7;
  result = REPinComponentRemoveAllPins();
  v10 = 0;
  v12 = v8 + 56;
  v11 = *(v8 + 56);
  v29 = v8;
  v13 = 1 << *(v8 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v11;
  v16 = (v13 + 63) >> 6;
  v17 = (v4 + 8);
  v26 = (v4 + 8);
  v25 = v6;
  v30 = v3;
  while (v15)
  {
LABEL_11:
    outlined init with copy of GeometricPin(*(v29 + 48) + 80 * (__clz(__rbit64(v15)) | (v10 << 6)), v38);
    outlined init with take of GeometricPin(v38, v33);
    v31 = v34;
    v32 = v35;

    static String.Encoding.utf8.getter();
    lazy protocol witness table accessor for type String and conformance String();
    StringProtocol.cString(using:)();
    v21 = *v17;
    (*v17)(v6, v30);

    if (v37)
    {
      v31 = v36;
      v32 = v37;
      static String.Encoding.utf8.getter();
      StringProtocol.cString(using:)();
      v21(v6, v30);
      REPoseIdentity();
      v23 = v22;
      HIDWORD(v23) = HIDWORD(v28);
      v28 = v23;
      REPinCreateExt();
    }

    else
    {
      REPoseIdentity();
      v19 = v18;
      v19.n128_u32[3] = v24.n128_u32[3];
      v24 = v19;
      REPinCreateExt();
    }

    v15 &= v15 - 1;

    REPinComponentAddPin();
    RERelease();
    result = outlined destroy of GeometricPin(v33);
    v17 = v26;
    v6 = v25;
  }

  while (1)
  {
    v20 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v20 >= v16)
    {
    }

    v15 = *(v12 + 8 * v20);
    ++v10;
    if (v15)
    {
      v10 = v20;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

double specialized Set._Variant.remove(_:)@<D0>(float32x4_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  CollisionPlane_v1.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = (*(v5 + 48) + 80 * v8);
      v11 = v10->i64[0] == a1->i64[0] && v10->f32[2] == a1->f32[2];
      v12 = v11 && v10->f32[3] == a1->f32[3];
      if (v12 && (vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(v10[3], a1[3]), vceqq_f32(v10[4], a1[4])), vandq_s8(vceqq_f32(v10[2], a1[2]), vceqq_f32(v10[1], a1[1])))) & 0x80000000) != 0)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    v21 = *v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _NativeSet.copy()();
      v14 = v21;
    }

    v15 = *(v14 + 48) + 80 * v8;
    v16 = *(v15 + 16);
    v17 = *(v15 + 32);
    v18 = *(v15 + 48);
    v19 = *(v15 + 64);
    *a2 = *v15;
    *(a2 + 8) = *(v15 + 8);
    *(a2 + 16) = v16;
    *(a2 + 32) = v17;
    *(a2 + 48) = v18;
    *(a2 + 64) = v19;
    specialized _NativeSet._delete(at:)(v8);
    *v2 = v21;
    *(a2 + 80) = 0;
  }

  else
  {
LABEL_16:
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 1;
  }

  return result;
}

uint64_t specialized Set._Variant.remove(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  specialized _NativeSet._delete(at:)(v8);
  *v2 = v16;
  return v12;
}

uint64_t specialized Set._Variant.remove(_:)(uint64_t a1)
{
  v3 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](a1);
  v4 = Hasher._finalize()();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + 8 * v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + 8 * v6);
  specialized _NativeSet._delete(at:)(v6);
  result = v11;
  *v1 = v12;
  return result;
}

void specialized Set._Variant.remove(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 a4@<W3>, uint64_t a5@<X8>)
{
  v43 = *v5;
  Hasher.init(_seed:)();
  v39 = v5;
  v40 = a5;
  if (a4)
  {
    if (a4 != 1)
    {
      MEMORY[0x1C68F4C10](0);
      goto LABEL_7;
    }

    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  MEMORY[0x1C68F4C10](v11);
  String.hash(into:)();
  specialized Set.hash(into:)(v44, a3);
LABEL_7:
  v12 = Hasher._finalize()();
  v13 = -1 << *(v43 + 32);
  v14 = v12 & ~v13;
  if (((*(v43 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_41:
    *v40 = 0;
    *(v40 + 8) = 0;
    *(v40 + 16) = 0;
    *(v40 + 24) = -1;
    return;
  }

  v42 = ~v13;
  v16 = a4 != 2 || (a2 | a1 | a3) != 0;
  v41 = v16;
  while (1)
  {
    v22 = *(v43 + 48) + 32 * v14;
    v24 = *v22;
    v23 = *(v22 + 8);
    v25 = *(v22 + 16);
    v26 = *(v22 + 24);
    if (*(v22 + 24))
    {
      break;
    }

    if (a4)
    {
      outlined copy of _Proto_MeshScope_v1(a1, a2, a3, a4);
      v29 = v24;
      v30 = v23;
      v31 = v25;
      v32 = 0;
LABEL_32:
      outlined copy of _Proto_MeshScope_v1(v29, v30, v31, v32);
      v28 = a4;
      goto LABEL_33;
    }

    v33 = v24 == a1 && v23 == a2;
    if (!v33 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      outlined copy of _Proto_MeshScope_v1(a1, a2, a3, 0);
      outlined copy of _Proto_MeshScope_v1(v24, v23, v25, 0);
      v28 = 0;
      goto LABEL_33;
    }

    outlined copy of _Proto_MeshScope_v1(v24, v23, v25, 0);
    outlined copy of _Proto_MeshScope_v1(a1, a2, a3, 0);
    outlined copy of _Proto_MeshScope_v1(v24, v23, v25, 0);
    v17 = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v25, a3);
    outlined consume of _Proto_MeshScope_v1(v24, v23, v25, 0);
    outlined consume of _Proto_MeshScope_v1(v24, v23, v25, 0);
    v18 = a1;
    v19 = a2;
    v20 = a3;
    v21 = 0;
LABEL_16:
    outlined consume of _Proto_MeshScope_v1(v18, v19, v20, v21);
    if (v17)
    {
      goto LABEL_43;
    }

LABEL_17:
    v14 = (v14 + 1) & v42;
    if (((*(v43 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  if (v26 == 1)
  {
    if (a4 != 1)
    {
      outlined copy of _Proto_MeshScope_v1(a1, a2, a3, a4);
      v29 = v24;
      v30 = v23;
      v31 = v25;
      v32 = 1;
      goto LABEL_32;
    }

    v27 = v24 == a1 && v23 == a2;
    if (!v27 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v28 = 1;
      outlined copy of _Proto_MeshScope_v1(a1, a2, a3, 1u);
      outlined copy of _Proto_MeshScope_v1(v24, v23, v25, 1u);
LABEL_33:
      outlined consume of _Proto_MeshScope_v1(v24, v23, v25, v26);
      outlined consume of _Proto_MeshScope_v1(a1, a2, a3, v28);
      goto LABEL_17;
    }

    outlined copy of _Proto_MeshScope_v1(v24, v23, v25, 1u);
    outlined copy of _Proto_MeshScope_v1(a1, a2, a3, 1u);
    outlined copy of _Proto_MeshScope_v1(v24, v23, v25, 1u);
    v17 = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v25, a3);
    outlined consume of _Proto_MeshScope_v1(v24, v23, v25, 1u);
    outlined consume of _Proto_MeshScope_v1(v24, v23, v25, 1u);
    v18 = a1;
    v19 = a2;
    v20 = a3;
    v21 = 1;
    goto LABEL_16;
  }

  if (v41)
  {
    v29 = a1;
    v30 = a2;
    v31 = a3;
    v32 = a4;
    goto LABEL_32;
  }

  outlined consume of _Proto_MeshScope_v1(v24, v23, v25, 2u);
  outlined consume of _Proto_MeshScope_v1(0, 0, 0, 2u);
LABEL_43:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v39;
  *&v44[0] = *v39;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v35 = *&v44[0];
  }

  v36 = *(v35 + 48) + 32 * v14;
  v37 = *(v36 + 16);
  v38 = *(v36 + 24);
  *v40 = *v36;
  *(v40 + 16) = v37;
  *(v40 + 24) = v38;
  specialized _NativeSet._delete(at:)(v14);
  *v39 = *&v44[0];
}

Swift::Int specialized Set._Variant.remove(_:)@<X0>(float32x4_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  Hasher.init(_seed:)();
  v6 = a1->i64[1];
  v7 = a1[1].i64[0];
  String.hash(into:)();
  result = Hasher._finalize()();
  v9 = -1 << *(v5 + 32);
  v10 = result & ~v9;
  if (((*(v5 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_29:
    a2[3] = 0u;
    a2[4] = 0u;
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
    return result;
  }

  v11 = ~v9;
  while (1)
  {
    outlined init with copy of GeometricPin(*(v5 + 48) + 80 * v10, v24);
    v12 = v24[1] == v6 && v24[2] == v7;
    if (!v12 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_27;
    }

    v13 = a1[2].i64[0];
    if (v25)
    {
      if (!v13 || (v24[3] != a1[1].i64[1] || v25 != v13) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    else if (v13)
    {
      goto LABEL_27;
    }

    v14 = vmovn_s32(vceqq_f32(v26, a1[3]));
    if ((v14.i8[0] & 1) == 0 || (v14.i8[2] & 1) == 0 || (v14.i8[4] & 1) == 0 || (vminv_u16(vmovn_s32(vceqq_f32(v27, a1[4]))) & 1) == 0)
    {
      goto LABEL_27;
    }

    Strong = swift_weakLoadStrong();
    v16 = swift_weakLoadStrong();
    if (!Strong)
    {
      break;
    }

    if (!v16)
    {
      goto LABEL_26;
    }

    v21 = *(Strong + 16);
    v17 = v16;

    v22 = v3;
    v18 = *(v17 + 16);

    result = outlined destroy of GeometricPin(v24);
    v12 = v21 == v18;
    v3 = v22;
    if (v12)
    {
      goto LABEL_30;
    }

LABEL_28:
    v10 = (v10 + 1) & v11;
    if (((*(v5 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  if (v16)
  {
LABEL_26:

LABEL_27:
    result = outlined destroy of GeometricPin(v24);
    goto LABEL_28;
  }

  outlined destroy of GeometricPin(v24);
LABEL_30:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;
  v24[0] = *v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v20 = v24[0];
  }

  outlined init with take of GeometricPin(*(v20 + 48) + 80 * v10, a2);
  result = specialized _NativeSet._delete(at:)(v10);
  *v3 = v24[0];
  return result;
}

Swift::Int specialized Set._Variant.remove(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  return specialized Set._Variant.remove(_:)(a1, specialized _NativeSet.copy(), a2);
}

{
  return specialized Set._Variant.remove(_:)(a1, specialized _NativeSet.copy(), a2);
}

Swift::Int specialized Set._Variant.remove(_:)@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](a1);
  result = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = result & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (*(*(v7 + 48) + 8 * v10) != a1)
    {
      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    v15 = *v3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      a2();
      v14 = v15;
    }

    *a3 = *(*(v14 + 48) + 8 * v10);
    result = specialized _NativeSet._delete(at:)(v10);
    v12 = 0;
    *v3 = v15;
  }

  else
  {
LABEL_5:
    *a3 = 0;
    v12 = 1;
  }

  *(a3 + 8) = v12;
  return result;
}

unint64_t specialized _NativeSet._delete(at:)(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 48) + 80 * v6;
        v11 = *v10;
        v12 = *(v10 + 8);
        v13 = *(v10 + 12);
        v23 = *(v10 + 16);
        v24 = *(v10 + 32);
        v25 = *(v10 + 48);
        v26 = *(v10 + 64);
        Hasher.init(_seed:)();
        MEMORY[0x1C68F4C10](v11);
        if (v12 == 0.0)
        {
          v14 = 0.0;
        }

        else
        {
          v14 = v12;
        }

        Hasher._combine(_:)(LODWORD(v14));
        if (v13 == 0.0)
        {
          v15 = 0.0;
        }

        else
        {
          v15 = v13;
        }

        Hasher._combine(_:)(LODWORD(v15));
        specialized SIMD.hash(into:)(v23);
        specialized SIMD.hash(into:)(v24);
        specialized SIMD.hash(into:)(v25);
        specialized SIMD.hash(into:)(v26);
        v16 = Hasher._finalize()() & v7;
        if (v2 >= v9)
        {
          if (v16 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v9)
        {
          goto LABEL_17;
        }

        if (v2 >= v16)
        {
LABEL_17:
          v17 = *(v3 + 48);
          v18 = (v17 + 80 * v2);
          v19 = (v17 + 80 * v6);
          if (v2 != v6 || v18 >= v19 + 80)
          {
            memmove(v18, v19, 0x50uLL);
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        Hasher.init(_seed:)();

        String.hash(into:)();
        v10 = Hasher._finalize()();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        Hasher.init(_seed:)();
        MEMORY[0x1C68F4C10](v10);
        v11 = Hasher._finalize()() & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 8 * v2);
          v14 = (v12 + 8 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      v27 = v3;
      v28 = v4;
      while (1)
      {
        v11 = v7;
        v12 = 32 * v6;
        v13 = *(v3 + 48) + 32 * v6;
        v14 = *v13;
        v15 = *(v13 + 8);
        v16 = *(v13 + 16);
        v17 = *(v13 + 24);
        Hasher.init(_seed:)();
        if (!v17)
        {
          break;
        }

        if (v17 == 1)
        {
          v18 = 2;
LABEL_10:
          MEMORY[0x1C68F4C10](v18);

          String.hash(into:)();
          specialized Set.hash(into:)(v29, v16);
          goto LABEL_12;
        }

        MEMORY[0x1C68F4C10](0);
LABEL_12:
        v19 = Hasher._finalize()();
        outlined consume of _Proto_MeshScope_v1(v14, v15, v16, v17);
        v7 = v11;
        v20 = v19 & v11;
        if (v2 >= v9)
        {
          v3 = v27;
          if (v20 < v9)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v3 = v27;
          if (v20 >= v9)
          {
            goto LABEL_17;
          }
        }

        if (v2 >= v20)
        {
LABEL_17:
          v21 = *(v3 + 48);
          v22 = (v21 + 32 * v2);
          v23 = (v21 + v12);
          if (32 * v2 != v12 || (v2 = v6, v22 >= v23 + 2))
          {
            v10 = v23[1];
            *v22 = *v23;
            v22[1] = v10;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v11;
        v4 = v28;
        if (((*(v28 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      v18 = 1;
      goto LABEL_10;
    }

LABEL_20:

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v24 = *(v3 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v26;
    ++*(v3 + 36);
  }

  return result;
}

{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      while (1)
      {
        outlined init with copy of GeometricPin(*(v3 + 48) + 80 * v6, v15);
        Hasher.init(_seed:)();
        String.hash(into:)();
        v10 = Hasher._finalize()();
        outlined destroy of GeometricPin(v15);
        v11 = v10 & v7;
        if (v2 >= v9)
        {
          break;
        }

        if (v11 < v9)
        {
          goto LABEL_11;
        }

LABEL_12:
        if (v2 < v6 || *(v3 + 48) + 80 * v2 >= *(v3 + 48) + 80 * v6 + 80)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          if (v2 == v6)
          {
            goto LABEL_6;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        v2 = v6;
LABEL_6:
        v6 = (v6 + 1) & v7;
        if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      if (v11 < v9)
      {
        goto LABEL_6;
      }

LABEL_11:
      if (v2 < v11)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }

LABEL_16:

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v12 = *(v3 + 16);
  v13 = __OFSUB__(v12, 1);
  v14 = v12 - 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v14;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t specialized _NativeSet.update(with:isUnique:)@<X0>(float32x4_t *a1@<X0>, char a2@<W1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v7 = *v3;
  Hasher.init(_seed:)();
  v8 = a1->i64[1];
  v9 = a1[1].i64[0];
  String.hash(into:)();
  v10 = Hasher._finalize()();
  v11 = -1 << *(v7 + 32);
  v12 = v10 & ~v11;
  v13 = (1 << v12) & *(v7 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8));
  v14 = v13 != 0;
  if (v13)
  {
    v43 = (1 << v12) & *(v7 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8));
    v46 = v3;
    v15 = ~v11;
    while (1)
    {
      outlined init with copy of GeometricPin(*(v7 + 48) + 80 * v12, &v52);
      v16 = v53 == v8 && v54 == v9;
      if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_27;
      }

      v17 = a1[2].i64[0];
      if (v56)
      {
        if (!v17 || (v55 != a1[1].i64[1] || v56 != v17) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      else if (v17)
      {
        goto LABEL_27;
      }

      v18 = vmovn_s32(vceqq_f32(v57, a1[3]));
      if (v18.i8[0] & 1) != 0 && (v18.i8[2] & 1) != 0 && (v18.i8[4] & 1) != 0 && (vminv_u16(vmovn_s32(vceqq_f32(v58, a1[4]))))
      {
        Strong = swift_weakLoadStrong();
        v20 = swift_weakLoadStrong();
        if (Strong)
        {
          if (v20)
          {
            v44 = *(Strong + 16);
            v21 = v20;

            v48 = a3;
            v22 = *(v21 + 16);

            outlined destroy of GeometricPin(&v52);
            v16 = v44 == v22;
            a3 = v48;
            if (v16)
            {
              v23 = 0;
              v14 = 1;
              v4 = v46;
              goto LABEL_31;
            }

            goto LABEL_28;
          }
        }

        else if (!v20)
        {
          outlined destroy of GeometricPin(&v52);
          v4 = v46;
          v13 = v43;
          break;
        }
      }

LABEL_27:
      outlined destroy of GeometricPin(&v52);
LABEL_28:
      v12 = (v12 + 1) & v15;
      if (((*(v7 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        v14 = 0;
        v4 = v46;
        v23 = 1;
        goto LABEL_31;
      }
    }
  }

  v23 = v13 == 0;
LABEL_31:
  v24 = *(v7 + 16);
  result = v24 + v23;
  if (__OFADD__(v24, v23))
  {
    goto LABEL_76;
  }

  v26 = *(v7 + 24);
  if (v26 >= result && (a2 & 1) != 0)
  {
    if (v14)
    {
LABEL_35:
      v27 = *v4;
      outlined init with take of GeometricPin(*(v27 + 48) + 80 * v12, a3);
      return outlined init with take of GeometricPin(a1, *(v27 + 48) + 80 * v12);
    }

LABEL_71:
    v39 = *v4;
    *(v39 + 8 * (v12 >> 6) + 56) |= 1 << v12;
    result = outlined init with take of GeometricPin(a1, *(v39 + 48) + 80 * v12);
    v40 = *(v39 + 16);
    v41 = __OFADD__(v40, 1);
    v42 = v40 + 1;
    if (v41)
    {
      goto LABEL_77;
    }

    *(v39 + 16) = v42;
    a3[3] = 0u;
    a3[4] = 0u;
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
    return result;
  }

  if (a2)
  {
    v49 = a3;
    specialized _NativeSet.resize(capacity:)(result);
  }

  else
  {
    if (v26 >= result)
    {
      specialized _NativeSet.copy()();
      if (v14)
      {
        goto LABEL_35;
      }

      goto LABEL_71;
    }

    v49 = a3;
    specialized _NativeSet.copyAndResize(capacity:)(result);
  }

  v45 = v14;
  v28 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v29 = Hasher._finalize()();
  v30 = -1 << *(v28 + 32);
  v12 = v29 & ~v30;
  if (((*(v28 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_70:
    a3 = v49;
    if (v45)
    {
      goto LABEL_75;
    }

    goto LABEL_71;
  }

  v31 = ~v30;
  while (1)
  {
    outlined init with copy of GeometricPin(*(v28 + 48) + 80 * v12, &v52);
    v32 = v53 == v8 && v54 == v9;
    if (!v32 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_68;
    }

    v33 = a1[2].i64[0];
    if (v56)
    {
      if (!v33 || (v55 != a1[1].i64[1] || v56 != v33) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_68;
      }
    }

    else if (v33)
    {
      goto LABEL_68;
    }

    v34 = vmovn_s32(vceqq_f32(v57, a1[3]));
    if ((v34.i8[0] & 1) == 0 || (v34.i8[2] & 1) == 0 || (v34.i8[4] & 1) == 0 || (vminv_u16(vmovn_s32(vceqq_f32(v58, a1[4]))) & 1) == 0)
    {
      goto LABEL_68;
    }

    v35 = swift_weakLoadStrong();
    v36 = swift_weakLoadStrong();
    if (!v35)
    {
      break;
    }

    if (!v36)
    {
      goto LABEL_67;
    }

    v51 = *(v35 + 16);
    v37 = v36;

    v47 = v4;
    v38 = *(v37 + 16);

    outlined destroy of GeometricPin(&v52);
    v16 = v51 == v38;
    v4 = v47;
    if (v16)
    {
      goto LABEL_74;
    }

LABEL_69:
    v12 = (v12 + 1) & v31;
    if (((*(v28 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_70;
    }
  }

  if (v36)
  {
LABEL_67:

LABEL_68:
    outlined destroy of GeometricPin(&v52);
    goto LABEL_69;
  }

  outlined destroy of GeometricPin(&v52);
LABEL_74:
  a3 = v49;
  if (v45)
  {
    goto LABEL_35;
  }

LABEL_75:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
  return result;
}

unint64_t Entity.ConfigurationCatalog.USDConfigurationReaderError.errorDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Entity.ConfigurationCatalog.USDConfigurationReaderError(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of Entity.ConfigurationCatalog.USDConfigurationReaderError(v1, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        (*(v3 + 32))(v5, v8, v2);
        v31[0] = 0;
        v31[1] = 0xE000000000000000;
        _StringGuts.grow(_:)(45);

        v31[0] = 0xD000000000000029;
        v31[1] = 0x80000001C18ECEB0;
        _s10Foundation3URLVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type URL and conformance URL, 255, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
        v10 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x1C68F3410](v10);

        MEMORY[0x1C68F3410](11815, 0xE200000000000000);
        v11 = v31[0];
        (*(v3 + 8))(v5, v2);
        return v11;
      }

      v24 = *v8;
      v25 = v8[1];
      v31[0] = 0;
      v31[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(27);

      v26 = 0x80000001C18ECE60;
      v27 = 0xD000000000000017;
      goto LABEL_14;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v20 = *v8;
      v21 = v8[1];
      v31[0] = 0;
      v31[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(38);

      strcpy(v31, "Prim at path '");
      HIBYTE(v31[1]) = -18;
      MEMORY[0x1C68F3410](v20, v21);

      v22 = 0x80000001C18ECE40;
      v23 = 0xD000000000000016;
LABEL_18:
      MEMORY[0x1C68F3410](v23, v22);
      return v31[0];
    }

    v28 = *v8;
    v29 = v8[1];
    v30 = v8[2];
    v17 = v8[3];
    v31[0] = 0;
    v31[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(57);
    MEMORY[0x1C68F3410](0x207461206D697250, 0xEE00272068746170);
    MEMORY[0x1C68F3410](v28, v29);

    MEMORY[0x1C68F3410](0xD000000000000025, 0x80000001C18ECE10);
    v19 = v30;
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      v24 = *v8;
      v25 = v8[1];
      v31[0] = 0;
      v31[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(48);

      v26 = 0x80000001C18ECD80;
      v27 = 0xD00000000000002CLL;
LABEL_14:
      v31[0] = v27;
      v31[1] = v26;
      MEMORY[0x1C68F3410](v24, v25);
LABEL_17:

      v23 = 11815;
      v22 = 0xE200000000000000;
      goto LABEL_18;
    }

    v13 = *v8;
    v14 = v8[1];
    v16 = v8[2];
    v15 = v8[3];
    v18 = v8[4];
    v17 = v8[5];
    v31[0] = 0;
    v31[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(99);
    MEMORY[0x1C68F3410](0x207461206D697250, 0xEE00272068746170);
    MEMORY[0x1C68F3410](v13, v14);

    MEMORY[0x1C68F3410](0xD00000000000001BLL, 0x80000001C18ECDB0);
    MEMORY[0x1C68F3410](v16, v15);

    MEMORY[0x1C68F3410](0xD000000000000032, 0x80000001C18ECDD0);
    v19 = v18;
LABEL_16:
    MEMORY[0x1C68F3410](v19, v17);
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload == 6)
  {
    return 0xD000000000000028;
  }

  else
  {
    return 0xD000000000000030;
  }
}

uint64_t type metadata accessor for Entity.ConfigurationCatalog.USDConfigurationReaderError(uint64_t a1)
{
  result = type metadata singleton initialization cache for Entity.ConfigurationCatalog.USDConfigurationReaderError;
  if (!type metadata singleton initialization cache for Entity.ConfigurationCatalog.USDConfigurationReaderError)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of Entity.ConfigurationCatalog.USDConfigurationReaderError(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Entity.ConfigurationCatalog.USDConfigurationReaderError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata completion function for Entity.ConfigurationCatalog.USDConfigurationReaderError(uint64_t a1)
{
  type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    type metadata accessor for (String, String)();
    if (v2 <= 0x3F)
    {
      type metadata accessor for (String, String, String)();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void type metadata accessor for (String, String)()
{
  if (!lazy cache variable for type metadata for (String, String))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (String, String));
    }
  }
}

void type metadata accessor for (String, String, String)()
{
  if (!lazy cache variable for type metadata for (String, String, String))
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (String, String, String));
    }
  }
}

uint64_t Entity.ConfigurationCatalog.USDConfigurationReader.init(importSession:importSessionSwiftObject:options:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v4[7] = *v3;
  return MEMORY[0x1EEE6DFA0](Entity.ConfigurationCatalog.USDConfigurationReader.init(importSession:importSessionSwiftObject:options:), 0, 0);
}

uint64_t Entity.ConfigurationCatalog.USDConfigurationReader.init(importSession:importSessionSwiftObject:options:)(__n128 a1)
{
  v2 = v1[6];
  v3 = v1[3];
  v4 = v1[4];
  swift_defaultActor_initialize();
  type metadata accessor for Entity.ConfigurationCatalog.USDConfigurationReader.CriticalSequencer();
  v5 = swift_allocObject();
  Entity.ConfigurationCatalog.USDConfigurationReader.CriticalSequencer.init()(v6);
  *(v2 + 264) = v5;
  *(v2 + 128) = v3;
  *(v2 + 136) = v4;
  swift_unknownObjectRetain();
  v7 = v3;
  v8 = RIOImportSessionGetStage();
  v1[8] = v8;
  if (v8)
  {
    v9 = v1[6];
    v1[9] = RIOPxrUsdStageCopySessionLayer();
    v1[10] = RIOPxrUsdEditTargetCreateWithLayer();
    RIOPxrUsdStageSetEditTarget();
    v10 = RIOPxrUsdStageCopyDefaultPrim();
    v1[11] = v10;
    v11 = RIOPxrUsdObjectCopyPath();
    v12 = RIOPxrSdfPathCopyString();

    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    *(v9 + 112) = v13;
    *(v9 + 120) = v15;
    v1[2] = MEMORY[0x1E69E7CC0];
    static Entity.ConfigurationCatalog.USDConfigurationReader.buildConfigurationSets(forPrim:configurationCollectionCaches:)(v10, v1 + 2);
    v16 = v1[2];
    type metadata accessor for Entity.ConfigurationCatalog.ConfigurationMapCache();
    swift_allocObject();
    v17 = Entity.ConfigurationCatalog.ConfigurationMapCache.init(configurationCollectionCaches:)(v16);
    v22 = v1[5];
    v23 = v1[6];
    *(v23 + 256) = v17;
    outlined init with copy of Entity.ConfigurationCatalog.LoadOptions?(v22, v23 + 144);

    return MEMORY[0x1EEE6DFA0](Entity.ConfigurationCatalog.USDConfigurationReader.init(importSession:importSessionSwiftObject:options:), v23, 0);
  }

  else
  {
    type metadata accessor for Entity.ConfigurationCatalog.USDConfigurationReaderError(0);
    _s10Foundation3URLVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type Entity.ConfigurationCatalog.USDConfigurationReaderError and conformance Entity.ConfigurationCatalog.USDConfigurationReaderError, 255, type metadata accessor for Entity.ConfigurationCatalog.USDConfigurationReaderError, protocol conformance descriptor for Entity.ConfigurationCatalog.USDConfigurationReaderError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v18 = v1[5];
    v19 = v1[3];

    swift_unknownObjectRelease();

    type metadata accessor for Entity.ConfigurationCatalog.USDConfigurationReader();
    swift_defaultActor_destroy();
    swift_unknownObjectRelease();

    outlined destroy of BodyTrackingComponent?(v18, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMd, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMR);
    swift_deallocPartialClassInstance();
    v20 = v1[1];

    return v20();
  }
}

uint64_t Entity.ConfigurationCatalog.USDConfigurationReader.init(importSession:importSessionSwiftObject:options:)()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v12 = v0[5];
  v5 = v0[3];
  v6 = RIOPxrUsdStageCopyRootLayer();
  v7 = RIOPxrTfTokenCreateWithCString();
  v8 = RIOPxrVtValueCreateWithBool();
  RIOPxrSdfLayerSetCustomLayerData();

  swift_unknownObjectRelease();
  outlined destroy of BodyTrackingComponent?(v12, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMd, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMR);
  v9 = v0[1];
  v10 = v0[6];

  return v9(v10);
}

void static Entity.ConfigurationCatalog.USDConfigurationReader.buildConfigurationSets(forPrim:configurationCollectionCaches:)(uint64_t a1, void *a2)
{
  if (!RIOPxrUsdPrimHasVariantSets())
  {
    while (1)
    {
      v4 = RIOPxrUsdPrimCopyChildren();
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v13 = 0;
        type metadata accessor for RIOPxrUsdObjectRef(0);
        static Array._conditionallyBridgeFromObjectiveC(_:result:)();

        if (v13)
        {
          v5 = v13;
        }

        else
        {
          v5 = MEMORY[0x1E69E7CC0];
        }

        if (!(v5 >> 62))
        {
LABEL_9:
          v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v6)
          {
            goto LABEL_21;
          }

          goto LABEL_10;
        }
      }

      else
      {

        v5 = MEMORY[0x1E69E7CC0];
        if (!(MEMORY[0x1E69E7CC0] >> 62))
        {
          goto LABEL_9;
        }
      }

      v6 = __CocoaSet.count.getter();
      if (!v6)
      {
LABEL_21:

        return;
      }

LABEL_10:
      v12 = a2;
      v7 = 0;
      a2 = (v5 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x1C68F41F0](v7, v5);
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_23;
          }

          v8 = *(v5 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        static Entity.ConfigurationCatalog.USDConfigurationReader.buildConfigurationSets(forPrim:configurationCollectionCaches:)(v8, v12);

        if (!v2)
        {
          ++v7;
          if (v10 != v6)
          {
            continue;
          }
        }

        goto LABEL_21;
      }

      __break(1u);
LABEL_23:
      __break(1u);
      __break(1u);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  RIOPxrUsdPrimCopyVariantSets();
  if (RIOPxrUsdVariantSetsCopySetNames())
  {
    objc_opt_self();
    swift_dynamicCastObjCClassUnconditional();
    static Array._forceBridgeFromObjectiveC(_:result:)();
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t Entity.ConfigurationCatalog.USDConfigurationReader.loadEntity(into:withConfigurations:loadOptions:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[94] = v3;
  v4[93] = a3;
  v4[92] = a2;
  v4[91] = a1;
  return MEMORY[0x1EEE6DFA0](Entity.ConfigurationCatalog.USDConfigurationReader.loadEntity(into:withConfigurations:loadOptions:), v3, 0);
}

uint64_t Entity.ConfigurationCatalog.USDConfigurationReader.loadEntity(into:withConfigurations:loadOptions:)()
{
  outlined init with copy of Entity.ConfigurationCatalog.LoadOptions?(*(v0 + 744), v0 + 128);
  if (*(v0 + 128) != 1)
  {
    v37 = *(v0 + 208);
    *(v0 + 80) = *(v0 + 192);
    *(v0 + 96) = v37;
    *(v0 + 112) = *(v0 + 224);
    v38 = *(v0 + 144);
    *(v0 + 16) = *(v0 + 128);
    *(v0 + 32) = v38;
    v39 = *(v0 + 176);
    *(v0 + 48) = *(v0 + 160);
    *(v0 + 64) = v39;
    v2 = *(v0 + 736);
    if (v2)
    {
      goto LABEL_5;
    }

LABEL_32:
    v4 = 0;
LABEL_33:
    *(v0 + 768) = v4;
    *(v0 + 760) = 0;
    *(v0 + 776) = _s10Foundation3URLVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type Entity.ConfigurationCatalog.USDConfigurationReader and conformance Entity.ConfigurationCatalog.USDConfigurationReader, v1, type metadata accessor for Entity.ConfigurationCatalog.USDConfigurationReader, protocol conformance descriptor for Entity.ConfigurationCatalog.USDConfigurationReader);
    v40 = swift_task_alloc();
    *(v0 + 784) = v40;
    *v40 = v0;
    v40[1] = Entity.ConfigurationCatalog.USDConfigurationReader.loadEntity(into:withConfigurations:loadOptions:);

    return MEMORY[0x1EEE6DDE0]();
  }

  outlined init with copy of Entity.ConfigurationCatalog.LoadOptions?(*(v0 + 752) + 144, v0 + 16);
  if (*(v0 + 128) != 1)
  {
    outlined destroy of BodyTrackingComponent?(v0 + 128, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMd, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMR);
  }

  v2 = *(v0 + 736);
  if (!v2)
  {
    goto LABEL_32;
  }

LABEL_5:
  v42 = v0;
  v3 = *(v2 + 16);

  v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0, MEMORY[0x1E69E7CC0]);
  v5 = 0;
  v6 = v2 + 64;
  v7 = -1 << *(v2 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 64);
  v10 = (63 - v7) >> 6;
  v43 = v10;
  v44 = v2 + 64;
  v45 = v2;
  if (!v9)
  {
    goto LABEL_10;
  }

  do
  {
    v49 = v4;
LABEL_14:
    v48 = (v9 - 1) & v9;
    v12 = __clz(__rbit64(v9)) | (v5 << 6);
    v13 = (*(v2 + 48) + 16 * v12);
    v46 = v13[1];
    v47 = *v13;
    v14 = *(*(v2 + 56) + 8 * v12);
    v15 = *(v14 + 16);

    v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15, 0, MEMORY[0x1E69E7CC0]);
    v17 = 0;
    v19 = v14 + 64;
    v18 = *(v14 + 64);
    v50 = v14;
    v20 = -1 << *(v14 + 32);
    if (-v20 < 64)
    {
      v21 = ~(-1 << -v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & v18;
    v23 = (63 - v20) >> 6;
    if ((v21 & v18) != 0)
    {
      do
      {
LABEL_22:
        v25 = (v17 << 10) | (16 * __clz(__rbit64(v22)));
        v26 = (*(v50 + 48) + v25);
        v27 = v26[1];
        v28 = (*(v50 + 56) + v25);
        v29 = v28[1];
        v51 = *v28;
        v52 = *v26;
        v31 = v16[2];
        v30 = v16[3];
        v53 = v16;

        if (v31 >= v30 >> 1)
        {
          v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v16);
        }

        v22 &= v22 - 1;
        v53[2] = v31 + 1;
        v16 = v53;
        v32 = &v53[4 * v31];
        v32[4] = v52;
        v32[5] = v27;
        v32[6] = v51;
        v32[7] = v29;
      }

      while (v22);
    }

    while (1)
    {
      v24 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v24 >= v23)
      {
        break;
      }

      v22 = *(v19 + 8 * v24);
      ++v17;
      if (v22)
      {
        v17 = v24;
        goto LABEL_22;
      }
    }

    v4 = v49;
    v34 = v49[2];
    v33 = v49[3];
    if (v34 >= v33 >> 1)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v49);
    }

    v6 = v44;
    v2 = v45;
    v10 = v43;
    v9 = v48;
    v4[2] = v34 + 1;
    v35 = &v4[3 * v34];
    v35[4] = v47;
    v35[5] = v46;
    v35[6] = v16;
  }

  while (v48);
LABEL_10:
  while (1)
  {
    v11 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v11 >= v10)
    {
      v0 = v42;

      Entity.ConfigurationCatalog.USDConfigurationReader.validateSpecification(_:)(v36);

      goto LABEL_33;
    }

    v9 = *(v6 + 8 * v11);
    ++v5;
    if (v9)
    {
      v49 = v4;
      v5 = v11;
      goto LABEL_14;
    }
  }

LABEL_37:
  __break(1u);
  return MEMORY[0x1EEE6DDE0]();
}

{
  v1 = *(*v0 + 752);

  return MEMORY[0x1EEE6DFA0](Entity.ConfigurationCatalog.USDConfigurationReader.loadEntity(into:withConfigurations:loadOptions:), v1, 0);
}

{
  v1 = RIOImportSessionGetStage();
  v0[99] = v1;
  if (v1)
  {
    v2 = v0[96];
    v0[100] = RIOPxrUsdStageCopyEditTarget();
    v3 = RIOPxrUsdStageCopySessionLayer();
    v0[101] = RIOPxrUsdEditTargetCreateWithLayer();

    RIOPxrUsdStageSetEditTarget();
    if (v2)
    {
      v4 = v0[96];
      v5 = v0[95];
      Entity.ConfigurationCatalog.USDConfigurationReader.setSpecification(_:)(v4);
      if (v5)
      {
LABEL_4:
        Entity.ConfigurationCatalog.USDConfigurationReader.clearSpecification(_:)(v4);

LABEL_14:
        v14 = v0[101];
        v15 = v0[100];
        v16 = v0[99];
        v17 = v0[94];
        swift_willThrow();
        RIOPxrUsdStageSetEditTarget();

        v18 = *(v17 + 264);
        v19 = *(v18 + 24);
        v20 = swift_allocObject();
        *(v20 + 16) = closure #1 in Entity.ConfigurationCatalog.USDConfigurationReader.CriticalSequencer.end()partial apply;
        *(v20 + 24) = v18;
        v0[65] = thunk for @callee_guaranteed () -> ()partial apply;
        v0[66] = v20;
        v0[61] = MEMORY[0x1E69E9820];
        v0[62] = 1107296256;
        v0[63] = thunk for @escaping @callee_guaranteed () -> ();
        v0[64] = &block_descriptor_39_1;
        v21 = _Block_copy(v0 + 61);

        dispatch_sync(v19, v21);
        _Block_release(v21);
        LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

        if ((v21 & 1) == 0)
        {
          goto LABEL_15;
        }

        __break(1u);
        return MEMORY[0x1EEE6DE38](v22, v23, v24, v25, v26, v27, v28, v29);
      }

LABEL_8:
      v11 = *(v0[94] + 136);
      if (v11)
      {
        outlined init with copy of Entity.ConfigurationCatalog.LoadOptions?((v0 + 2), (v0 + 30));
        v12 = v0[30];
        if (v12 == 1)
        {
          outlined destroy of BodyTrackingComponent?((v0 + 30), &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMd, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMR);
        }

        else
        {
          v13 = v0[31];
          swift_unknownObjectRetain();
          _ss6ResultOyxs5Error_pGRi_zRi0_zly10RealityKit19EnvironmentResourceCIsegn_SgWOy(v12, v13);
          outlined destroy of Entity.ConfigurationCatalog.LoadOptions((v0 + 30));
          if (v12)
          {
            v12(v11);
            if (v5)
            {
              swift_unknownObjectRelease();
              outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v12, v13);
              v4 = v0[96];
              if (!v4)
              {
                goto LABEL_14;
              }

              goto LABEL_4;
            }

            outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v12, v13);
          }

          swift_unknownObjectRelease();
        }
      }

      v32 = v0[97];
      v33 = v0[94];
      v22 = swift_task_alloc();
      v0[102] = v22;
      *v22 = v0;
      v22[1] = Entity.ConfigurationCatalog.USDConfigurationReader.loadEntity(into:withConfigurations:loadOptions:);
      v28 = v0[94];
      v27 = partial apply for closure #1 in Entity.ConfigurationCatalog.USDConfigurationReader.loadStagedEntity(atPathString:);
      v26 = 0x80000001C18ED090;
      v29 = MEMORY[0x1E69E7CA8] + 8;
      v23 = v33;
      v24 = v32;
      v25 = 0xD00000000000001FLL;

      return MEMORY[0x1EEE6DE38](v22, v23, v24, v25, v26, v27, v28, v29);
    }

LABEL_7:
    v5 = v0[95];
    goto LABEL_8;
  }

  v6 = v0[94];

  type metadata accessor for Entity.ConfigurationCatalog.USDConfigurationReaderError(0);
  _s10Foundation3URLVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type Entity.ConfigurationCatalog.USDConfigurationReaderError and conformance Entity.ConfigurationCatalog.USDConfigurationReaderError, 255, type metadata accessor for Entity.ConfigurationCatalog.USDConfigurationReaderError, protocol conformance descriptor for Entity.ConfigurationCatalog.USDConfigurationReaderError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  v7 = *(v6 + 264);
  v8 = *(v7 + 24);
  v9 = swift_allocObject();
  *(v9 + 16) = partial apply for closure #1 in Entity.ConfigurationCatalog.USDConfigurationReader.CriticalSequencer.end();
  *(v9 + 24) = v7;
  v0[59] = thunk for @callee_guaranteed () -> ()partial apply;
  v0[60] = v9;
  v0[55] = MEMORY[0x1E69E9820];
  v0[56] = 1107296256;
  v0[57] = thunk for @escaping @callee_guaranteed () -> ();
  v0[58] = &block_descriptor_29_0;
  v10 = _Block_copy(v0 + 55);

  dispatch_sync(v8, v10);
  _Block_release(v10);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_15:
  outlined destroy of BodyTrackingComponent?((v0 + 2), &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMd, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMR);
  v30 = v0[1];

  return v30();
}

{
  v2 = *v1;
  *(*v1 + 824) = v0;

  v3 = *(v2 + 752);
  if (v0)
  {
    v4 = Entity.ConfigurationCatalog.USDConfigurationReader.loadEntity(into:withConfigurations:loadOptions:);
  }

  else
  {
    v4 = Entity.ConfigurationCatalog.USDConfigurationReader.loadEntity(into:withConfigurations:loadOptions:);
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  v1 = swift_task_alloc();
  *(v0 + 832) = v1;
  *v1 = v0;
  v1[1] = Entity.ConfigurationCatalog.USDConfigurationReader.loadEntity(into:withConfigurations:loadOptions:);

  return Entity.ConfigurationCatalog.USDConfigurationReader.stagedEntity(atPathString:)(47, 0xE100000000000000);
}

{
  v0[107] = v0[103];
  return MEMORY[0x1EEE6DFA0](Entity.ConfigurationCatalog.USDConfigurationReader.loadEntity(into:withConfigurations:loadOptions:), v0[94], 0);
}

{
  if (v0[96])
  {
    v1 = v0[106];
    Entity.ConfigurationCatalog.USDConfigurationReader.clearSpecification(_:)(v0[96]);
    if (v1)
    {
      v2 = v0[101];
      v3 = v0[100];
      v4 = v0[99];
      v5 = v0[94];

      RIOPxrUsdStageSetEditTarget();

      v6 = *(v5 + 264);
      v7 = *(v6 + 24);
      v8 = swift_allocObject();
      *(v8 + 16) = closure #1 in Entity.ConfigurationCatalog.USDConfigurationReader.CriticalSequencer.end()partial apply;
      *(v8 + 24) = v6;
      v0[89] = thunk for @callee_guaranteed () -> ()partial apply;
      v0[90] = v8;
      v0[85] = MEMORY[0x1E69E9820];
      v0[86] = 1107296256;
      v0[87] = thunk for @escaping @callee_guaranteed () -> ();
      v0[88] = &block_descriptor_74;
      v9 = _Block_copy(v0 + 85);

      dispatch_sync(v7, v9);
      _Block_release(v9);
      LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

      if (v9)
      {
        __break(1u);
      }

      else
      {
        outlined destroy of BodyTrackingComponent?((v0 + 2), &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMd, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMR);
        v11 = v0[1];

        return v11();
      }

      return result;
    }
  }

  v0[44] = 0;
  v0[45] = 0;
  v0[46] = 0;
  v0[47] = 1;
  *(v0 + 24) = 0u;
  *(v0 + 25) = 0u;
  *(v0 + 26) = 0u;
  v0[54] = 0;
  v12 = swift_task_alloc();
  v0[108] = v12;
  *v12 = v0;
  v12[1] = Entity.ConfigurationCatalog.USDConfigurationReader.loadEntity(into:withConfigurations:loadOptions:);
  v13 = v0[105];

  return specialized static Entity.finishUSDLoad(forEntity:withOptions:)(v13, (v0 + 44));
}

{
  v1 = v0[96];
  if (v1)
  {
    Entity.ConfigurationCatalog.USDConfigurationReader.clearSpecification(_:)(v1);
  }

  v2 = v0[101];
  v3 = v0[100];
  v4 = v0[99];
  v5 = v0[94];
  swift_willThrow();
  RIOPxrUsdStageSetEditTarget();

  v6 = *(v5 + 264);
  v7 = *(v6 + 24);
  v8 = swift_allocObject();
  *(v8 + 16) = closure #1 in Entity.ConfigurationCatalog.USDConfigurationReader.CriticalSequencer.end()partial apply;
  *(v8 + 24) = v6;
  v0[65] = thunk for @callee_guaranteed () -> ()partial apply;
  v0[66] = v8;
  v0[61] = MEMORY[0x1E69E9820];
  v0[62] = 1107296256;
  v0[63] = thunk for @escaping @callee_guaranteed () -> ();
  v0[64] = &block_descriptor_39_1;
  v9 = _Block_copy(v0 + 61);

  dispatch_sync(v7, v9);
  _Block_release(v9);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }

  else
  {
    outlined destroy of BodyTrackingComponent?((v0 + 2), &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMd, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMR);
    v11 = v0[1];

    return v11();
  }

  return result;
}

{
  v2 = *v1;
  *(v2 + 872) = v0;

  v3 = *(v2 + 752);
  outlined destroy of BodyTrackingComponent?(v2 + 352, &_s10RealityKit6EntityC13__LoadOptionsVSgMd, &_s10RealityKit6EntityC13__LoadOptionsVSgMR);
  if (v0)
  {
    v4 = Entity.ConfigurationCatalog.USDConfigurationReader.loadEntity(into:withConfigurations:loadOptions:);
  }

  else
  {
    v4 = Entity.ConfigurationCatalog.USDConfigurationReader.loadEntity(into:withConfigurations:loadOptions:);
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  type metadata accessor for MainActor();
  *(v0 + 880) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](Entity.ConfigurationCatalog.USDConfigurationReader.loadEntity(into:withConfigurations:loadOptions:), v2, v1);
}

{
  v1 = *(v0 + 752);
  v2 = *(v0 + 728);

  Entity.copy(to:recursive:)(v2, 1);

  return MEMORY[0x1EEE6DFA0](Entity.ConfigurationCatalog.USDConfigurationReader.loadEntity(into:withConfigurations:loadOptions:), v1, 0);
}

{
  v1 = v0[101];
  v2 = v0[100];
  v3 = v0[99];
  v4 = v0[94];

  RIOPxrUsdStageSetEditTarget();

  v5 = *(v4 + 264);
  v6 = *(v5 + 24);
  v7 = swift_allocObject();
  *(v7 + 16) = closure #1 in Entity.ConfigurationCatalog.USDConfigurationReader.CriticalSequencer.end()partial apply;
  *(v7 + 24) = v5;
  v0[83] = thunk for @callee_guaranteed () -> ()partial apply;
  v0[84] = v7;
  v0[79] = MEMORY[0x1E69E9820];
  v0[80] = 1107296256;
  v0[81] = thunk for @escaping @callee_guaranteed () -> ();
  v0[82] = &block_descriptor_65;
  v8 = _Block_copy(v0 + 79);

  dispatch_sync(v6, v8);
  _Block_release(v8);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  else
  {
    outlined destroy of BodyTrackingComponent?((v0 + 2), &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMd, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMR);
    v10 = v0[1];

    return v10();
  }

  return result;
}

{
  v1 = v0[101];
  v2 = v0[100];
  v3 = v0[99];
  v4 = v0[94];

  RIOPxrUsdStageSetEditTarget();

  v5 = *(v4 + 264);
  v6 = *(v5 + 24);
  v7 = swift_allocObject();
  *(v7 + 16) = closure #1 in Entity.ConfigurationCatalog.USDConfigurationReader.CriticalSequencer.end()partial apply;
  *(v7 + 24) = v5;
  v0[77] = thunk for @callee_guaranteed () -> ()partial apply;
  v0[78] = v7;
  v0[73] = MEMORY[0x1E69E9820];
  v0[74] = 1107296256;
  v0[75] = thunk for @escaping @callee_guaranteed () -> ();
  v0[76] = &block_descriptor_57;
  v8 = _Block_copy(v0 + 73);

  dispatch_sync(v6, v8);
  _Block_release(v8);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  else
  {
    outlined destroy of BodyTrackingComponent?((v0 + 2), &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMd, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMR);
    v10 = v0[1];

    return v10();
  }

  return result;
}

uint64_t Entity.ConfigurationCatalog.USDConfigurationReader.loadEntity(into:withConfigurations:loadOptions:)(uint64_t a1)
{
  v3 = *v2;
  v3[105] = a1;
  v3[106] = v1;

  if (v1)
  {
    v3[107] = v1;
    v4 = v3[94];
    v5 = Entity.ConfigurationCatalog.USDConfigurationReader.loadEntity(into:withConfigurations:loadOptions:);
  }

  else
  {
    v4 = v3[94];
    v5 = Entity.ConfigurationCatalog.USDConfigurationReader.loadEntity(into:withConfigurations:loadOptions:);
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

void Entity.ConfigurationCatalog.USDConfigurationReader.validateSpecification(_:)(uint64_t a1)
{
  v2 = v1;
  v33 = *(a1 + 16);
  if (v33)
  {
    v3 = 0;
    v4 = a1 + 32;
    while (1)
    {
      v5 = (v4 + 24 * v3);
      v7 = *v5;
      v6 = v5[1];
      v8 = v5[2];
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v9 = Entity.ConfigurationCatalog.USDConfigurationReader.getPrimWithVariants(atPathString:)(v7, v6);
      if (v2)
      {
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
        return;
      }

      v34 = v3;
      v35 = v6;
      v42 = 0;
      v36 = v9;
      v10 = RIOPxrUsdPrimCopyVariantSets();
      v11 = v10;
      v39 = *(v8 + 16);
      if (v39)
      {
        break;
      }

LABEL_3:
      v3 = v34 + 1;
      swift_bridgeObjectRelease_n();

      swift_bridgeObjectRelease_n();
      v2 = v42;
      v4 = v32;
      if (v3 == v33)
      {
        return;
      }
    }

    v31 = v7;
    v12 = 0;
    v13 = (v8 + 56);
    v38 = v10;
    v40 = v8;
    while (v12 < *(v8 + 16))
    {
      v14 = *(v13 - 3);
      v15 = *(v13 - 2);
      v16 = *(v13 - 1);
      v17 = *v13;
      String.utf8CString.getter();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      HasVariantSet = RIOPxrUsdVariantSetsHasVariantSet();

      if (!HasVariantSet)
      {
        swift_bridgeObjectRelease_n();
        v26 = v35;

        swift_bridgeObjectRelease_n();
        type metadata accessor for Entity.ConfigurationCatalog.USDConfigurationReaderError(0);
        _s10Foundation3URLVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type Entity.ConfigurationCatalog.USDConfigurationReaderError and conformance Entity.ConfigurationCatalog.USDConfigurationReaderError, 255, type metadata accessor for Entity.ConfigurationCatalog.USDConfigurationReaderError, protocol conformance descriptor for Entity.ConfigurationCatalog.USDConfigurationReaderError);
        swift_allocError();
        *v27 = v31;
        v27[1] = v26;
        v27[2] = v14;
        v27[3] = v15;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        return;
      }

      v37 = v14;
      String.utf8CString.getter();
      v19 = RIOPxrUsdVariantSetsCopyVariantSet();

      v20 = RIOPxrUsdVariantSetCopyVariantNames();
      if (!v20)
      {
        goto LABEL_19;
      }

      v21 = v20;

      objc_opt_self();
      swift_dynamicCastObjCClassUnconditional();
      v41[0] = 0;
      static Array._forceBridgeFromObjectiveC(_:result:)();
      v22 = v41[0];
      if (!v41[0])
      {
        goto LABEL_20;
      }

      v41[0] = v16;
      v41[1] = v17;
      MEMORY[0x1EEE9AC00](v23);
      v30[2] = v41;
      v24 = v42;
      v25 = specialized Sequence.contains(where:)(_sSlsSQ7ElementRpzrlE5split9separator9maxSplits25omittingEmptySubsequencesSay11SubSequenceQzGAB_SiSbtFSbABXEfU_SS_TG5TA_0, v30, v22);
      v42 = v24;

      if ((v25 & 1) == 0)
      {
        swift_bridgeObjectRelease_n();
        v28 = v35;

        type metadata accessor for Entity.ConfigurationCatalog.USDConfigurationReaderError(0);
        _s10Foundation3URLVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type Entity.ConfigurationCatalog.USDConfigurationReaderError and conformance Entity.ConfigurationCatalog.USDConfigurationReaderError, 255, type metadata accessor for Entity.ConfigurationCatalog.USDConfigurationReaderError, protocol conformance descriptor for Entity.ConfigurationCatalog.USDConfigurationReaderError);
        swift_allocError();
        *v29 = v31;
        v29[1] = v28;
        v29[2] = v37;
        v29[3] = v15;
        v29[4] = v16;
        v29[5] = v17;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        return;
      }

      ++v12;

      v13 += 4;
      v11 = v38;
      v8 = v40;
      if (v39 == v12)
      {
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }
}

void Entity.ConfigurationCatalog.USDConfigurationReader.setSpecification(_:)(uint64_t a1)
{
  v16 = *(a1 + 16);
  if (v16)
  {
    v1 = 0;
    v17 = a1 + 32;
    while (1)
    {
      v2 = (v17 + 24 * v1);
      v4 = *v2;
      v3 = v2[1];
      v5 = v2[2];

      v6 = RIOImportSessionGetStage();
      if (!v6)
      {
        type metadata accessor for Entity.ConfigurationCatalog.USDConfigurationReaderError(0);
        _s10Foundation3URLVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type Entity.ConfigurationCatalog.USDConfigurationReaderError and conformance Entity.ConfigurationCatalog.USDConfigurationReaderError, 255, type metadata accessor for Entity.ConfigurationCatalog.USDConfigurationReaderError, protocol conformance descriptor for Entity.ConfigurationCatalog.USDConfigurationReaderError);
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        return;
      }

      v7 = v6;
      String.utf8CString.getter();
      v8 = RIOPxrSdfPathCreateFromCString();

      if ((RIOPxrUsdStageHasPrimAtPrimPath() & 1) == 0)
      {
        type metadata accessor for Entity.ConfigurationCatalog.USDConfigurationReaderError(0);
        _s10Foundation3URLVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type Entity.ConfigurationCatalog.USDConfigurationReaderError and conformance Entity.ConfigurationCatalog.USDConfigurationReaderError, 255, type metadata accessor for Entity.ConfigurationCatalog.USDConfigurationReaderError, protocol conformance descriptor for Entity.ConfigurationCatalog.USDConfigurationReaderError);
        swift_allocError();
        *v14 = v4;
        v14[1] = v3;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        return;
      }

      v9 = RIOPxrTfTokenEmpty();
      PrimIfNeeded = RIOPxrUsdStageCreatePrimIfNeeded();

      if ((RIOPxrUsdPrimHasVariantSets() & 1) == 0)
      {
        break;
      }

      v11 = RIOPxrUsdPrimCopyVariantSets();
      v12 = *(v5 + 16);
      if (v12)
      {
        v13 = v5 + 56;
        do
        {
          String.utf8CString.getter();
          String.utf8CString.getter();
          RIOPxrUsdVariantSetsSetSelection();

          v13 += 32;
          --v12;
        }

        while (v12);
      }

      ++v1;

      if (v1 == v16)
      {
        return;
      }
    }

    type metadata accessor for Entity.ConfigurationCatalog.USDConfigurationReaderError(0);
    _s10Foundation3URLVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type Entity.ConfigurationCatalog.USDConfigurationReaderError and conformance Entity.ConfigurationCatalog.USDConfigurationReaderError, 255, type metadata accessor for Entity.ConfigurationCatalog.USDConfigurationReaderError, protocol conformance descriptor for Entity.ConfigurationCatalog.USDConfigurationReaderError);
    swift_allocError();
    *v15 = v4;
    v15[1] = v3;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }
}

void Entity.ConfigurationCatalog.USDConfigurationReader.clearSpecification(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  v5 = specialized StrideThroughIterator.next()();
  if ((v6 & 1) == 0)
  {
    v19 = a1 + 32;
    while (v5 < v4)
    {
      v8 = (v19 + 24 * v5);
      v9 = *v8;
      v10 = v8[1];
      v11 = v8[2];

      v12 = Entity.ConfigurationCatalog.USDConfigurationReader.getPrimWithVariants(atPathString:)(v9, v10);

      if (v2)
      {
LABEL_17:

        return;
      }

      v13 = 0;
      v14 = *(v11 + 16) - 1;
      v15 = *(v11 + 16) == 1;
      if (v14 > 0)
      {
LABEL_7:
        v16 = v14 - 1;
        goto LABEL_13;
      }

      while (1)
      {
        v17 = !v15;
        if ((v17 | v13))
        {
          break;
        }

        v16 = 0;
        v13 = 1;
LABEL_13:
        if (v14 >= *(v11 + 16))
        {
          __break(1u);
          goto LABEL_17;
        }

        String.utf8CString.getter();
        v18 = RIOPxrUsdPrimCopyVariantSet();

        RIOPxrUsdVariantSetClearVariantSelection();

        v14 = v16;
        v15 = v16 == 0;
        if (v16 > 0)
        {
          goto LABEL_7;
        }
      }

      v5 = specialized StrideThroughIterator.next()();
      if (v7)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t specialized StrideThroughIterator.next()()
{
  result = *(v0 + 40);
  v3 = *(v0 + 8);
  v2 = *(v0 + 16);
  if (v2 <= 0)
  {
    if (v3 < result)
    {
      goto LABEL_3;
    }
  }

  else if (result < v3)
  {
LABEL_3:
    v4 = __OFADD__(result, v2);
    v5 = result + v2;
    v6 = v4;
    v7 = 0x8000000000000000;
    if (v4)
    {
      v5 = (v5 >> 63) ^ 0x8000000000000000;
    }

    else
    {
      v7 = 0;
    }

    *(v0 + 24) = v7;
    *(v0 + 32) = v6 ^ 1;
    *(v0 + 40) = v5;
    return result;
  }

  if (result != v3 || (*(v0 + 48) & 1) != 0)
  {
    return 0;
  }

  if ((*(v0 + 32) & 1) == 0 && *(v0 + 24) == 0x8000000000000000)
  {
    return 0;
  }

  *(v0 + 48) = 1;
  return result;
}

void *Entity.ConfigurationCatalog.USDConfigurationReader.getPrimWithVariants(atPathString:)(uint64_t a1, uint64_t a2)
{
  v5 = RIOImportSessionGetStage();
  if (v5)
  {
    v6 = v5;
    String.utf8CString.getter();
    v7 = RIOPxrSdfPathCreateFromCString();

    if (RIOPxrUsdStageHasPrimAtPrimPath())
    {
      v8 = RIOPxrTfTokenEmpty();
      PrimIfNeeded = RIOPxrUsdStageCreatePrimIfNeeded();

      if (RIOPxrUsdPrimHasVariantSets())
      {
      }

      else
      {
        type metadata accessor for Entity.ConfigurationCatalog.USDConfigurationReaderError(0);
        _s10Foundation3URLVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type Entity.ConfigurationCatalog.USDConfigurationReaderError and conformance Entity.ConfigurationCatalog.USDConfigurationReaderError, 255, type metadata accessor for Entity.ConfigurationCatalog.USDConfigurationReaderError, protocol conformance descriptor for Entity.ConfigurationCatalog.USDConfigurationReaderError);
        swift_allocError();
        *v10 = a1;
        v10[1] = a2;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
      }
    }

    else
    {
      PrimIfNeeded = type metadata accessor for Entity.ConfigurationCatalog.USDConfigurationReaderError(0);
      _s10Foundation3URLVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type Entity.ConfigurationCatalog.USDConfigurationReaderError and conformance Entity.ConfigurationCatalog.USDConfigurationReaderError, 255, type metadata accessor for Entity.ConfigurationCatalog.USDConfigurationReaderError, protocol conformance descriptor for Entity.ConfigurationCatalog.USDConfigurationReaderError);
      swift_allocError();
      *v9 = a1;
      v9[1] = a2;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }
  }

  else
  {
    type metadata accessor for Entity.ConfigurationCatalog.USDConfigurationReaderError(0);
    _s10Foundation3URLVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type Entity.ConfigurationCatalog.USDConfigurationReaderError and conformance Entity.ConfigurationCatalog.USDConfigurationReaderError, 255, type metadata accessor for Entity.ConfigurationCatalog.USDConfigurationReaderError, protocol conformance descriptor for Entity.ConfigurationCatalog.USDConfigurationReaderError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  return PrimIfNeeded;
}

uint64_t closure #1 in Entity.ConfigurationCatalog.USDConfigurationReader.loadStagedEntity(atPathString:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4, v6);
  v9 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = partial apply for closure #1 in closure #1 in Entity.ConfigurationCatalog.USDConfigurationReader.loadStagedEntity(atPathString:);
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_80_0;
  v11 = _Block_copy(aBlock);

  RIOImportSessionSetSceneUpdatePassCompletion();
  _Block_release(v11);
  return RIOImportSessionUpdate();
}

uint64_t closure #1 in closure #1 in Entity.ConfigurationCatalog.USDConfigurationReader.loadStagedEntity(atPathString:)(uint64_t a1)
{
  RIOImportSessionSetSceneUpdatePassCompletion();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t Entity.ConfigurationCatalog.USDConfigurationReader.stagedEntity(atPathString:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = type metadata accessor for MainActor();
  v3[6] = static MainActor.shared.getter();

  return MEMORY[0x1EEE6DFA0](Entity.ConfigurationCatalog.USDConfigurationReader.stagedEntity(atPathString:), v2, 0);
}

uint64_t Entity.ConfigurationCatalog.USDConfigurationReader.stagedEntity(atPathString:)()
{
  v0[7] = *(v0[4] + 128);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[8] = v2;
  v0[9] = v1;

  return MEMORY[0x1EEE6DFA0](Entity.ConfigurationCatalog.USDConfigurationReader.stagedEntity(atPathString:), v2, v1);
}

{
  v1 = RIOImportSessionGetStage();
  v0[10] = v1;
  if (v1)
  {
    v2 = v1;
    String.utf8CString.getter();
    v3 = RIOPxrSdfPathCreateFromCString();
    v0[11] = v3;

    if (RIOPxrUsdStageHasPrimAtPrimPath())
    {
      v4 = v0[8];
      v5 = v0[9];

      return MEMORY[0x1EEE6DFA0](Entity.ConfigurationCatalog.USDConfigurationReader.stagedEntity(atPathString:), v4, v5);
    }

    v7 = v0[2];
    v6 = v0[3];

    type metadata accessor for Entity.ConfigurationCatalog.USDConfigurationReaderError(0);
    _s10Foundation3URLVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type Entity.ConfigurationCatalog.USDConfigurationReaderError and conformance Entity.ConfigurationCatalog.USDConfigurationReaderError, 255, type metadata accessor for Entity.ConfigurationCatalog.USDConfigurationReaderError, protocol conformance descriptor for Entity.ConfigurationCatalog.USDConfigurationReaderError);
    swift_allocError();
    *v8 = v7;
    v8[1] = v6;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {

    type metadata accessor for Entity.ConfigurationCatalog.USDConfigurationReaderError(0);
    _s10Foundation3URLVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type Entity.ConfigurationCatalog.USDConfigurationReaderError and conformance Entity.ConfigurationCatalog.USDConfigurationReaderError, 255, type metadata accessor for Entity.ConfigurationCatalog.USDConfigurationReaderError, protocol conformance descriptor for Entity.ConfigurationCatalog.USDConfigurationReaderError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  v9 = v0[1];

  return v9();
}

{

  EntityAtPrimPath = RIOImportSessionGetEntityAtPrimPath();
  if (EntityAtPrimPath)
  {
    v2 = EntityAtPrimPath;
    if (REEntityGetSwiftObject())
    {
      v3 = *(v0 + 80);

      type metadata accessor for Entity();
      v4 = swift_dynamicCastClassUnconditional();
    }

    else
    {
      result = REEntityIsBeingDestroyed();
      if (result)
      {
        __break(1u);
        return result;
      }

      specialized static Entity.entityInfoType(_:)(v2);
      v13 = *(v0 + 80);
      v14 = *(v0 + 88);
      if (v12)
      {
        v15 = (*(v12 + 232))();
        v16 = *(v15 + 16);

        MEMORY[0x1C68F9740](v16, 0);
        *(v15 + 16) = v2;
        MEMORY[0x1C68F9740](v2, v15);
      }

      else
      {
        v15 = makeEntity(for:)(v2);
      }

      v4 = v15;
    }

    v17 = *(v0 + 8);

    return v17(v4);
  }

  else
  {
    v5 = *(v0 + 80);
    v6 = *(v0 + 88);
    v8 = *(v0 + 16);
    v7 = *(v0 + 24);
    type metadata accessor for Entity.ConfigurationCatalog.USDConfigurationReaderError(0);
    _s10Foundation3URLVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type Entity.ConfigurationCatalog.USDConfigurationReaderError and conformance Entity.ConfigurationCatalog.USDConfigurationReaderError, 255, type metadata accessor for Entity.ConfigurationCatalog.USDConfigurationReaderError, protocol conformance descriptor for Entity.ConfigurationCatalog.USDConfigurationReaderError);
    swift_allocError();
    *v9 = v8;
    v9[1] = v7;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v10 = *(v0 + 8);

    return v10();
  }
}

void closure #1 in static Entity.ConfigurationCatalog.USDConfigurationReader.buildConfigurationSets(forPrim:configurationCollectionCaches:)(void *a3@<X8>)
{
  String.utf8CString.getter();
  v4 = RIOPxrUsdVariantSetsCopyVariantSet();

  if (RIOPxrUsdVariantSetHasAuthoredVariantSelection())
  {
    v5 = RIOPxrUsdVariantSetCopyVariantSelection();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    if (RIOPxrUsdVariantSetCopyVariantNames())
    {
      objc_opt_self();
      swift_dynamicCastObjCClassUnconditional();
      v6 = 0;
      static Array._forceBridgeFromObjectiveC(_:result:)();
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {

    *a3 = 0;
  }
}

uint64_t Entity.ConfigurationCatalog.USDConfigurationReader.CriticalSequencer.enqueueStart(continuation:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = aBlock - v6;
  v8 = *(v1 + 24);
  (*(v4 + 16))(aBlock - v6, a1, v3, v5);
  v9 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  (*(v4 + 32))(v10 + v9, v7, v3);
  v11 = swift_allocObject();
  *(v11 + 16) = partial apply for closure #1 in Entity.ConfigurationCatalog.USDConfigurationReader.CriticalSequencer.enqueueStart(continuation:);
  *(v11 + 24) = v10;
  aBlock[4] = _sIg_Ieg_TRTA_0;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_41;
  v12 = _Block_copy(aBlock);

  dispatch_sync(v8, v12);
  _Block_release(v12);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in Entity.ConfigurationCatalog.USDConfigurationReader.CriticalSequencer.enqueueStart(continuation:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  if (*(a1 + 32) == 1)
  {
    (*(v5 + 16))(v8, a2, v4, v6);
    v9 = *(a1 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + 16) = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9[2] + 1, 1, v9);
      *(a1 + 16) = v9;
    }

    v12 = v9[2];
    v11 = v9[3];
    if (v12 >= v11 >> 1)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v9);
    }

    v9[2] = v12 + 1;
    result = (*(v5 + 32))(v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v12, v8, v4);
    *(a1 + 16) = v9;
  }

  else
  {
    result = CheckedContinuation.resume(returning:)();
    *(a1 + 32) = 1;
  }

  return result;
}

void closure #1 in Entity.ConfigurationCatalog.USDConfigurationReader.CriticalSequencer.end()(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v6 - v4;
  if (*(*(a1 + 16) + 16))
  {
    specialized Array.remove(at:)(0, &v6 - v4);
    CheckedContinuation.resume(returning:)();
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    *(a1 + 32) = 0;
  }
}

uint64_t Entity.ConfigurationCatalog.USDConfigurationReader.CriticalSequencer.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t Entity.ConfigurationCatalog.USDConfigurationReader.CriticalSequencer.init()(__n128 a1)
{
  v15 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x1EEE9AC00](v15);
  v14[2] = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DispatchQoS();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  v14[1] = type metadata accessor for OS_dispatch_queue();
  v16 = 0;
  v17 = 0xE000000000000000;
  _StringGuts.grow(_:)(56);
  MEMORY[0x1C68F3410](0xD000000000000036, 0x80000001C18ED0D0);
  UUID.init()();
  _s10Foundation3URLVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v12 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1C68F3410](v12);

  (*(v9 + 8))(v11, v8);
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8098], v4);
  static DispatchQoS.unspecified.getter();
  v16 = MEMORY[0x1E69E7CC0];
  _s10Foundation3URLVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, 255, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v1 + 24) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v1 + 32) = 0;
  return v1;
}

uint64_t Entity.ConfigurationCatalog.USDConfigurationReader.__deallocating_deinit()
{

  swift_unknownObjectRelease();
  outlined destroy of BodyTrackingComponent?(v0 + 144, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMd, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMR);

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t protocol witness for Entity.ConfigurationCatalog.FormatReader.getDefaultSourcePath() in conformance Entity.ConfigurationCatalog.USDConfigurationReader()
{
  v1 = *(v0 + 112);

  return v1;
}

uint64_t protocol witness for Entity.ConfigurationCatalog.FormatReader.loadEntity(into:withConfigurations:loadOptions:) in conformance Entity.ConfigurationCatalog.USDConfigurationReader(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for closure #1 in TextureResource.PartialContents.init(source:mipmaps:);

  return Entity.ConfigurationCatalog.USDConfigurationReader.loadEntity(into:withConfigurations:loadOptions:)(a1, a2, a3);
}

double block_copy_helper_41(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t outlined init with copy of Entity.ConfigurationCatalog.LoadOptions?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMd, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_7(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 24) & ~v5;
  v7 = *(v4 + 64);

  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x1EEE6BDD0](v2, v6 + v7, v5 | 7);
}

uint64_t partial apply for closure #1 in Entity.ConfigurationCatalog.USDConfigurationReader.CriticalSequencer.enqueueStart(continuation:)(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a1, a2) - 8);
  v5 = *(v3 + 16);
  v6 = v3 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return a3(v5, v6);
}

uint64_t _s10Foundation3URLVACs23CustomStringConvertibleAAWlTm_1(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4)
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

uint64_t static AudioFileResource.load(named:in:inputMode:loadingStrategy:shouldLoop:)(uint64_t a1, uint64_t a2, void *a3, char *a4, char *a5, unsigned __int8 a6)
{
  v6 = *a4;
  v7 = *a5;
  v17 = 1;
  LOBYTE(v14) = v7;
  *(&v14 + 1) = a6;
  *(&v14 + 1) = 0;
  LOBYTE(v15) = -1;
  *(&v15 + 1) = 0;
  v16[0] = -1;
  memset(&v16[8], 0, 20);
  v16[28] = 1;
  v13 = v6;
  static AudioFileResource.loadFromBundle(named:in:configuration:legacyInputMode:)(a1, a2, a3, &v14, &v13);
  v9 = v8;
  v11[0] = v14;
  v11[1] = v15;
  v12[0] = *v16;
  *(v12 + 13) = *&v16[13];
  outlined destroy of AudioFileResource.Configuration(v11);
  return v9;
}

uint64_t static AudioFileResource.load(contentsOf:withName:inputMode:loadingStrategy:shouldLoop:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, _BYTE *a5, int a6)
{
  LODWORD(v34) = a6;
  v33 = type metadata accessor for URL();
  v32 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v12 = &v29[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for DispatchPredicate();
  v31 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v29[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = *a4;
  LOBYTE(v14) = *a5;
  v17 = a1;
  v40 = 1;
  LOBYTE(v41) = v14;
  *(&v41 + 1) = v34;
  *(&v41 + 1) = 0;
  LOBYTE(v42) = -1;
  *(&v42 + 1) = 0;
  v43[0] = -1;
  memset(&v43[8], 0, 20);
  v43[28] = 1;
  v37 = v41;
  v38 = v42;
  v39[0] = *v43;
  *(v39 + 13) = *&v43[13];
  v35[0] = v16;
  v18 = v44;
  v19 = specialized static AudioFileResource.makeAssetRef(from:withName:configuration:inputMode:)(a1, a2, a3, &v37, v35);
  if (v18)
  {
    outlined destroy of AudioFileResource.Configuration(&v41);
    return a3;
  }

  v20 = v19;
  v30 = v16;
  v34 = v12;
  v21 = a3;
  if (!a3)
  {
    a2 = URL.lastPathComponent.getter();
    v21 = v22;
  }

  v44 = a2;

  v23 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v24 = *(v23 + 24);
  swift_unownedRetainStrong();
  v25 = *(v24 + 32);

  *v15 = v25;
  v26 = v31;
  (*(v31 + 104))(v15, *MEMORY[0x1E69E8020], v13);
  LOBYTE(v24) = _dispatchPreconditionTest(_:)();
  result = (*(v26 + 8))(v15, v13);
  if (v24)
  {
    v28 = v34;
    (*(v32 + 16))(v34, v17, v33);
    v37 = v41;
    v38 = v42;
    v39[0] = *v43;
    *(v39 + 13) = *&v43[13];
    v36 = v30;
    type metadata accessor for AudioFileResource();
    swift_allocObject();
    outlined init with copy of AudioFileResource.Configuration(&v41, v35);
    a3 = AudioFileResource.init(assetRef:url:name:configuration:legacyInputMode:)(v20, v28, v44, v21, &v37, &v36);
    RERelease();
    outlined destroy of AudioFileResource.Configuration(&v41);
    return a3;
  }

  __break(1u);
  return result;
}

uint64_t static AudioFileResource.loadAsync(named:in:inputMode:loadingStrategy:shouldLoop:)(uint64_t a1, uint64_t a2, void *a3, char *a4, char *a5, unsigned __int8 a6)
{
  v6 = *a4;
  v7 = *a5;
  v17 = 1;
  LOBYTE(v14) = v7;
  *(&v14 + 1) = a6;
  *(&v14 + 1) = 0;
  LOBYTE(v15) = -1;
  *(&v15 + 1) = 0;
  v16[0] = -1;
  memset(&v16[8], 0, 20);
  v16[28] = 1;
  v13 = v6;
  static AudioFileResource.loadFromBundleAsync(named:in:configuration:legacyInputMode:)(a1, a2, a3, &v14);
  v11[0] = v14;
  v11[1] = v15;
  v12[0] = *v16;
  *(v12 + 13) = *&v16[13];
  v9 = v8;
  outlined destroy of AudioFileResource.Configuration(v11);
  return v9;
}

void static AudioFileResource.loadFromBundleAsync(named:in:configuration:legacyInputMode:)(uint64_t a1, uint64_t a2, void *a3, unsigned __int128 *a4)
{
  v89 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v70 - v9;
  v79 = type metadata accessor for URL();
  v11 = *(v79 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v74 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v77 = &v70 - v14;
  v15 = a4[1];
  v86 = *a4;
  v87 = v15;
  *v88 = a4[2];
  *&v88[13] = *(a4 + 45);
  if (a3)
  {
    v16 = a3;
  }

  else
  {
    v16 = [objc_opt_self() mainBundle];
  }

  v76 = a3;
  v17 = v89;
  static AudioFileResource.url(forAssetNamed:in:)(a1, v89, v16, v10);

  v18 = v79;
  if ((*(v11 + 48))(v10, 1, v79) == 1)
  {
    outlined destroy of URL?(v10);
    v19 = swift_allocObject();
    v19[2] = a1;
    v19[3] = v17;
    v19[4] = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA17AudioFileResourceCGMd, &_s10RealityKit11LoadRequestCyAA17AudioFileResourceCGMR);
    v20 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit17AudioFileResourceCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit17AudioFileResourceCs5Error_pGSgGMR);
    v21 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
    v22 = swift_allocObject();
    *(v22 + 16) = 0;
    *(v21 + 16) = v22;
    *(v21 + 24) = 0;
    *(v21 + 32) = -1;
    *(v20 + 16) = v21;
    v23 = swift_allocObject();
    v23[2] = partial apply for closure #1 in static AudioFileResource.loadFromBundleAsync(named:in:configuration:legacyInputMode:);
    v23[3] = v19;
    v23[4] = v21;
    v23[5] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy10RealityKit17AudioFileResourceCs5Error_pGMd, &_s7Combine6FutureCy10RealityKit17AudioFileResourceCs5Error_pGMR);
    swift_allocObject();
    v24 = v76;

    *(v20 + 24) = Future.init(_:)();
    return;
  }

  v76 = v4;
  v25 = *(v11 + 32);
  v73 = v11 + 32;
  v72 = v25;
  v25(v77, v10, v18);
  v26 = URL.pathExtension.getter();
  v28 = v27;
  v75 = a1;
  v29 = MEMORY[0x1C68F3280](a1, v17);
  v30 = [v29 pathExtension];

  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;

  if (v26 == v31 && v28 == v33)
  {

LABEL_10:
    v35 = v89;

    v36 = v75;
    goto LABEL_12;
  }

  v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v34)
  {
    goto LABEL_10;
  }

  *&v83 = v75;
  *(&v83 + 1) = v89;

  MEMORY[0x1C68F3410](46, 0xE100000000000000);
  v37 = *(&v83 + 1);
  v38 = v83;
  v39 = URL.pathExtension.getter();
  v41 = v40;
  v83 = __PAIR128__(v37, v38);

  MEMORY[0x1C68F3410](v39, v41);

  v35 = *(&v83 + 1);
  v36 = v83;
LABEL_12:
  v42 = v11;
  v83 = v86;
  v84 = v87;
  v85[0] = *v88;
  *(v85 + 13) = *&v88[13];
  LOBYTE(v80[0]) = 1;
  v43 = v76;
  v44 = static AudioFileResource.makeAssetRef(bundle:name:configuration:inputMode:)(a3, v36, v35, &v83, v80);
  if (v43)
  {
    (*(v11 + 8))(v77, v79);
  }

  else
  {
    v76 = 0;
    v78 = v44;

    v45 = specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    outlined init with copy of __REAssetService(v45 + 120, &v83);
    outlined init with copy of __REAssetService(v45 + 120, v80);
    v46 = v81;
    v47 = v82;
    __swift_project_boxed_opaque_existential_1(v80, v81);
    v48 = *(v47 + 56);
    v71 = v45;

    LOBYTE(v46) = v48(v46, v47);
    v49 = *(&v84 + 1);
    v50 = *&v85[0];
    __swift_project_boxed_opaque_existential_1(&v83, *(&v84 + 1));
    (*(v50 + 32))(v49, v50);
    AssetRequest = REAssetManagerCreateAssetRequest();
    type metadata accessor for __AssetLoadRequest();
    v52 = swift_allocObject();
    *(v52 + 16) = AssetRequest;
    if (v46)
    {
      REAssetLoadRequestSetLoadAndWaitForResourceSharingClients();
    }

    v53 = swift_allocObject();
    v70 = v53;
    __swift_destroy_boxed_opaque_existential_1(&v83);
    __swift_destroy_boxed_opaque_existential_1(v80);
    *(v53 + 16) = v52;
    v54 = v74;
    v55 = v79;
    (*(v42 + 16))(v74, v77, v79);
    v56 = (*(v42 + 80) + 24) & ~*(v42 + 80);
    v57 = (v12 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
    v58 = v42;
    v59 = (v57 + 23) & 0xFFFFFFFFFFFFFFF8;
    v60 = (v59 + 69) & 0xFFFFFFFFFFFFFFF8;
    v61 = swift_allocObject();
    *(v61 + 16) = v78;
    v72(v61 + v56, v54, v55);
    v62 = (v61 + v57);
    v63 = v89;
    *v62 = v75;
    v62[1] = v63;
    v64 = v61 + v59;
    *(v64 + 45) = *&v88[13];
    v65 = *v88;
    *(v64 + 16) = v87;
    *(v64 + 32) = v65;
    *v64 = v86;
    *(v64 + 61) = 1;
    *(v61 + v60) = v71;
    *(v61 + ((v60 + 15) & 0xFFFFFFFFFFFFFFF8)) = v70;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA17AudioFileResourceCGMd, &_s10RealityKit11LoadRequestCyAA17AudioFileResourceCGMR);
    v66 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit17AudioFileResourceCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit17AudioFileResourceCs5Error_pGSgGMR);
    v67 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
    v68 = swift_allocObject();
    *(v68 + 16) = 0;
    *(v67 + 16) = v68;
    *(v67 + 24) = 0;
    *(v67 + 32) = -1;
    *(v66 + 16) = v67;
    v69 = swift_allocObject();
    v69[2] = partial apply for closure #1 in static AudioFileResource.loadAsync(assetRef:url:resourceName:configuration:legacyInputMode:);
    v69[3] = v61;
    v69[4] = v67;
    v69[5] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy10RealityKit17AudioFileResourceCs5Error_pGMd, &_s7Combine6FutureCy10RealityKit17AudioFileResourceCs5Error_pGMR);
    swift_allocObject();

    outlined init with copy of AudioFileResource.Configuration(&v86, &v83);

    *(v66 + 24) = Future.init(_:)();
    RERelease();
    (*(v58 + 8))(v77, v79);
  }
}

uint64_t static AudioFileResource.loadAsync(contentsOf:withName:inputMode:loadingStrategy:shouldLoop:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, char *a5, int a6)
{
  v32 = a2;
  v34 = a6;
  v33 = a3;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  HIDWORD(v30) = *a4;
  v13 = *a5;
  v14 = specialized static __ServiceLocator.shared.getter();
  v15 = *(v14 + 168);
  v35 = v14;
  v16 = *(v15 + 16);
  (*(v10 + 16))(v12, a1, v9);
  v17 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v18 = (v11 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  v20 = v31;
  *(v19 + 16) = v14;
  *(v19 + 24) = v20;
  (*(v10 + 32))(v19 + v17, v12, v9);
  v21 = v19 + v18;
  v22 = v33;
  *v21 = v32;
  *(v21 + 8) = v22;
  *(v21 + 16) = v13;
  *(v21 + 17) = v34;
  *(v21 + 18) = BYTE4(v30);
  v23 = v16;
  *(v19 + ((v18 + 26) & 0xFFFFFFFFFFFFFFF8)) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA17AudioFileResourceCGMd, &_s10RealityKit11LoadRequestCyAA17AudioFileResourceCGMR);
  v24 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit17AudioFileResourceCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit17AudioFileResourceCs5Error_pGSgGMR);
  v25 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  *(v25 + 16) = v26;
  *(v25 + 24) = 0;
  *(v25 + 32) = -1;
  *(v24 + 16) = v25;
  v27 = swift_allocObject();
  v27[2] = partial apply for closure #1 in static AudioFileResource.loadAsync(contentsOf:withName:inputMode:loadingStrategy:shouldLoop:);
  v27[3] = v19;
  v27[4] = v25;
  v27[5] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy10RealityKit17AudioFileResourceCs5Error_pGMd, &_s7Combine6FutureCy10RealityKit17AudioFileResourceCs5Error_pGMR);
  swift_allocObject();

  v28 = v23;
  *(v24 + 24) = Future.init(_:)();
  return v24;
}

uint64_t closure #1 in static AudioFileResource.loadAsync(contentsOf:withName:inputMode:loadingStrategy:shouldLoop:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, unsigned __int8 a9, unsigned __int8 a10, void *a11)
{
  v69 = a6;
  v70 = a7;
  v67 = a5;
  LODWORD(v65) = a9;
  v58 = type metadata accessor for DispatchWorkItemFlags();
  v63 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v61 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for DispatchQoS();
  v60 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v59 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for URL();
  v56 = *(v17 - 8);
  v57 = v17;
  v18 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v64 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  v66 = v19;
  swift_beginAccess();
  outlined init with copy of __REAssetService(a3 + 120, v83);
  outlined init with copy of __REAssetService(a3 + 120, v80);
  v20 = v81;
  v21 = v82;
  __swift_project_boxed_opaque_existential_1(v80, v81);
  v22 = *(v21 + 56);

  LOBYTE(v20) = v22(v20, v21);
  v23 = v84;
  v24 = v85;
  __swift_project_boxed_opaque_existential_1(v83, v84);
  (*(v24 + 32))(v23, v24);
  AssetRequest = REAssetManagerCreateAssetRequest();
  type metadata accessor for __AssetLoadRequest();
  v26 = swift_allocObject();
  *(v26 + 16) = AssetRequest;
  if (v20)
  {
    REAssetLoadRequestSetLoadAndWaitForResourceSharingClients();
  }

  v68 = a11;
  __swift_destroy_boxed_opaque_existential_1(v83);
  __swift_destroy_boxed_opaque_existential_1(v80);
  v79 = 1;
  v27 = a8 & 1;
  v28 = v65 & 1;
  LOBYTE(v76) = a8 & 1;
  *(&v76 + 1) = v28;
  *(&v76 + 1) = 0;
  LOBYTE(v77) = -1;
  *(&v77 + 1) = 0;
  LOBYTE(v78[0]) = -1;
  *(&v78[0] + 1) = 0;
  *&v78[1] = 0;
  DWORD2(v78[1]) = 0;
  BYTE12(v78[1]) = 1;
  v75 = a10;
  v29 = v67;
  v30 = specialized static AudioFileResource.makeAssetRef(from:withName:configuration:inputMode:)(v67, v69, v70, &v76, &v75);
  v73[0] = v76;
  v73[1] = v77;
  v74[0] = v78[0];
  *(v74 + 13) = *(v78 + 13);
  v65 = v30;
  outlined destroy of AudioFileResource.Configuration(v73);
  LODWORD(v63) = v28;
  v31 = v56;
  v32 = *(v56 + 16);
  LODWORD(v62) = v27;
  v33 = v57;
  v32(v64, v29, v57);
  v34 = *(v31 + 80);
  LODWORD(v61) = a10;
  v35 = (v34 + 24) & ~v34;
  v36 = v35 + v18;
  v37 = (v36 + 10) & 0xFFFFFFFFFFFFFFF8;
  v67 = v26;
  v38 = (v37 + 15) & 0xFFFFFFFFFFFFFFF8;
  v39 = (v38 + 23) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  v41 = v64;
  *(v40 + 16) = v65;
  (*(v31 + 32))(v40 + v35, v41, v33);
  v42 = (v40 + v36);
  *v42 = v61;
  v42[1] = v62;
  v42[2] = v63;
  v43 = v68;
  *(v40 + v37) = v68;
  v44 = (v40 + v38);
  v45 = v66;
  v46 = v67;
  *v44 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Result<TextureResource, Error>) -> ();
  v44[1] = v45;
  v47 = (v40 + v39);
  v48 = v70;
  *v47 = v69;
  v47[1] = v48;
  *(v40 + ((v39 + 23) & 0xFFFFFFFFFFFFFFF8)) = v46;
  v72[4] = partial apply for specialized finishAudioFileLoad #1 (_:) in closure #1 in static AudioFileResource.loadAsync(contentsOf:withName:inputMode:loadingStrategy:shouldLoop:);
  v72[5] = v40;
  v72[0] = MEMORY[0x1E69E9820];
  v72[1] = 1107296256;
  v72[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v72[3] = &block_descriptor_22_1;
  v49 = _Block_copy(v72);
  v50 = _Block_copy(v49);
  v51 = swift_allocObject();
  *(v51 + 16) = v50;
  v71[4] = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned Bool) -> ();
  v71[5] = v51;
  v71[0] = MEMORY[0x1E69E9820];
  v71[1] = 1107296256;
  v71[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v71[3] = &block_descriptor_28_2;
  v52 = _Block_copy(v71);

  v53 = v43;

  REAssetLoadRequestSetCompletionHandler();
  _Block_release(v52);
  _Block_release(v49);

  REAssetLoadRequestAddAsset();
}

void specialized finishAudioFileLoad #1 (_:) in closure #1 in static AudioFileResource.loadAsync(contentsOf:withName:inputMode:loadingStrategy:shouldLoop:)(char a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v46 = a8;
  v48 = a7;
  v52 = a12;
  v47 = a9;
  v18 = type metadata accessor for DispatchWorkItemFlags();
  v51 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for DispatchQoS();
  v49 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v22 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for URL();
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v46 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v61 = a5 & 1;
    (*(v24 + 16))(v27, a3, v25);
    LOBYTE(aBlock) = v61;
    *(&aBlock + 1) = a6 & 1;
    *(&aBlock + 3) = *&v63[7];
    BYTE7(aBlock) = v63[11];
    *(&aBlock + 1) = 0;
    LOBYTE(v54) = -1;
    *(&v54 + 1) = *v63;
    HIDWORD(v54) = *&v63[3];
    v55 = 0;
    LOBYTE(v56) = -1;
    *(&v56 + 1) = *v62;
    HIDWORD(v56) = *&v62[3];
    v57 = 0;
    v58 = 0;
    v59 = 0;
    v60 = 1;
    LOBYTE(v64[0]) = a4;
    type metadata accessor for AudioFileResource();
    swift_allocObject();
    v30 = AudioFileResource.init(assetRef:url:name:configuration:legacyInputMode:)(a2, v27, 0, 0, &aBlock, v64);
    v31 = swift_allocObject();
    v32 = v47;
    v31[2] = v46;
    v31[3] = v32;
    v31[4] = v30;
    v56 = partial apply for closure #1 in finishAudioFileLoad #1 (_:) in closure #1 in static AudioFileResource.loadAsync(contentsOf:withName:inputMode:loadingStrategy:shouldLoop:);
    v57 = v31;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v54 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v55 = &block_descriptor_56_2;
    v33 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v64[0] = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1C68F3CA0](0, v22, v20, v33);
    _Block_release(v33);
  }

  else
  {
    if (a11)
    {
      v29 = a11;
    }

    else
    {
      a10 = URL.lastPathComponent.getter();
      v29 = v34;
    }

    FailedMessage = REAssetHandleCopyLoadFailedMessage();
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    v39 = swift_allocObject();
    v40 = v47;
    v39[2] = v46;
    v39[3] = v40;
    v39[4] = a10;
    v39[5] = v29;
    v39[6] = v36;
    v39[7] = v38;
    v56 = partial apply for closure #3 in finishAudioFileLoad #1 (_:) in closure #1 in static AudioFileResource.loadAsync(contentsOf:withName:inputMode:loadingStrategy:shouldLoop:);
    v57 = v39;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v54 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v55 = &block_descriptor_34_1;
    v41 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v64[0] = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1C68F3CA0](0, v22, v20, v41);
    _Block_release(v41);
  }

  (*(v51 + 8))(v20, v18);
  (*(v49 + 8))(v22, v50);

  RERelease();
  v56 = destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError;
  v57 = 0;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v54 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v55 = &block_descriptor_37;
  v42 = _Block_copy(&aBlock);
  v43 = _Block_copy(v42);
  v44 = swift_allocObject();
  *(v44 + 16) = v43;
  v64[4] = thunk for @escaping @callee_unowned @convention(block) (@unowned Bool) -> ()partial apply;
  v64[5] = v44;
  v64[0] = MEMORY[0x1E69E9820];
  v64[1] = 1107296256;
  v64[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v64[3] = &block_descriptor_44_0;
  v45 = _Block_copy(v64);

  REAssetLoadRequestSetCompletionHandler();
  _Block_release(v45);
  _Block_release(v42);
}