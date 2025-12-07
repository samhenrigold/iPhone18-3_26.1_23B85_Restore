BOOL specialized Set.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = ~(-1 << *(a3 + 32));
  do
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(a3 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    v10 = v9 != 0;
    if (!v9)
    {
      break;
    }

    v11 = (*(a3 + 48) + 16 * v8);
    if (*v11 == a1 && v11[1] == a2)
    {
      break;
    }

    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v6 = v8 + 1;
  }

  while ((v13 & 1) == 0);
  return v10;
}

uint64_t closure #3 in FeatureStoreStreamAccessor.retrieve(query:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 eventBody];
  if (v10)
  {
    v11 = v10;
    v12 = [a1 timestamp];
    (*((*MEMORY[0x277D85000] & *v11) + 0x80))(v12);
    v13 = swift_beginAccess();
    MEMORY[0x223DD34A0](v13);
    specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    return swift_endAccess();
  }

  else
  {
    v15 = Logger.accessor.unsafeMutableAddressor();
    (*(v6 + 16))(v9, v15, v4);
    v16 = a1;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v24[0] = v20;
      *v19 = 136315138;
      v25 = [v16 error];
      type metadata accessor for BMStoreError();
      v21 = String.init<A>(describing:)();
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, v24);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_223066000, v17, v18, "This should not happen as we had already filtered nil eventBody instances! Store Error: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      OUTLINED_FUNCTION_1();
      OUTLINED_FUNCTION_1();
    }

    return (*(v6 + 8))(v9, v4);
  }
}

uint64_t lazy protocol witness table accessor for type Streams.StoreStream<FeatureStoreBiomeEvent> and conformance Streams.StoreStream<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t FeatureStoreStreamAccessor.retrieve(interactionId:)()
{
  _StringGuts.grow(_:)(75);
  MEMORY[0x223DD3460](0xD000000000000048, 0x8000000223094060);
  v0 = _typeName(_:qualified:)();
  MEMORY[0x223DD3460](v0);

  MEMORY[0x223DD3460](33, 0xE100000000000000);
  lazy protocol witness table accessor for type FeatureStoreError and conformance FeatureStoreError();
  swift_allocError();
  *v1 = 0;
  *(v1 + 8) = 0xE000000000000000;
  *(v1 + 16) = 0;
  return swift_willThrow();
}

uint64_t FeatureStoreStreamAccessor.deinit()
{
  v1 = OBJC_IVAR____TtC12FeatureStore26FeatureStoreStreamAccessor_stream;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams0B0O11StoreStreamVy_07FeatureC00ecA5EventCGMd, &_s12BiomeStreams0B0O11StoreStreamVy_07FeatureC00ecA5EventCGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t FeatureStoreStreamAccessor.__deallocating_deinit()
{
  FeatureStoreStreamAccessor.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t protocol witness for StreamAccessor.init(identifier:) in conformance FeatureStoreStreamAccessor@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 104))();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for FeatureStoreStreamAccessor(uint64_t a1)
{
  result = type metadata singleton initialization cache for FeatureStoreStreamAccessor;
  if (!type metadata singleton initialization cache for FeatureStoreStreamAccessor)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for FeatureStoreStreamAccessor(uint64_t a1)
{
  type metadata accessor for Streams.StoreStream<FeatureStoreBiomeEvent>(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Streams.StoreStream<FeatureStoreBiomeEvent>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Streams.StoreStream<FeatureStoreBiomeEvent>)
  {
    type metadata accessor for FeatureStoreBiomeEvent();
    v1 = type metadata accessor for Streams.StoreStream();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Streams.StoreStream<FeatureStoreBiomeEvent>);
    }
  }
}

uint64_t specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  return result;
}

void type metadata accessor for BMStoreError()
{
  if (!lazy cache variable for type metadata for BMStoreError)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for BMStoreError);
    }
  }
}

BOOL specialized Set._Variant.insert(_:)(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v10);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;

      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;

  specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

Swift::Int specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(unint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      specialized _NativeSet.resize(capacity:)(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      specialized _NativeSet.copyAndResize(capacity:)(v8 + 1);
LABEL_10:
      v15 = *v4;
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = specialized _NativeSet.copy()();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t specialized UnsafeMutablePointer.assign(repeating:count:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_223092DE0;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void *specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

Swift::Int specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        result = Hasher._finalize()();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t FeatureStoreNSCodingAccessor.insert(interactionId:feature:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v14[1] = *MEMORY[0x277D85DE8];
  type metadata accessor for NSCodingFeatureWrapper(0, *(*v5 + 144), a3, a4);

  v9 = AceObjectFeatureWrapper.__allocating_init(interactionId:dataVersion:feature:)(a1, a2, 0, a3);
  v10 = v5[2];
  v14[0] = 0;
  if ([v10 insert:v9 error:v14])
  {
    v11 = v14[0];
  }

  else
  {
    v12 = v14[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

id FeatureStoreNSCodingAccessor.retrieve(interactionId:)()
{
  v2 = *v0;
  result = (*(*v0 + 112))();
  if (!v1)
  {
    v6 = result;
    result = type metadata accessor for NSCodingFeatureWrapper(0, *(v2 + 144), v4, v5);
    if (*(v6 + 16))
    {
      v7 = OUTLINED_FUNCTION_1_6();
      outlined copy of Data._Representation(v7, v8);

      v9 = OUTLINED_FUNCTION_1_6();
      v11 = v10(v9);
      v12 = OUTLINED_FUNCTION_1_6();
      outlined consume of Data._Representation(v12, v13);
      if (v11)
      {
        v14 = *(v11 + 16);

        return v14;
      }

      else
      {
        lazy protocol witness table accessor for type FeatureStoreError and conformance FeatureStoreError();
        v15 = swift_allocError();
        return OUTLINED_FUNCTION_0_4(v15, v16);
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t FeatureStoreNSCodingAccessor.retrieve(interactionId:)(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = (*(*v2 + 120))();
  if (!v3)
  {
    v19[1] = v7;
    MEMORY[0x28223BE20](v7);
    v16 = *(v6 + 144);
    v17 = a1;
    v18 = a2;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12FeatureStore18InteractionWrapperVy10Foundation4DataVGGMd, _sSay12FeatureStore18InteractionWrapperVy10Foundation4DataVGGMR);
    v11 = type metadata accessor for InteractionWrapper(0, v16, v9, v10);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, _ss5Error_pMR);
    v13 = lazy protocol witness table accessor for type [InteractionWrapper<Data>] and conformance [A]();
    v2 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in FeatureStoreNSCodingAccessor.retrieve(interactionId:), &v15, v8, v11, v12, v13, MEMORY[0x277D84950], v19);
  }

  return v2;
}

uint64_t partial apply for closure #1 in FeatureStoreNSCodingAccessor.retrieve(interactionId:)(double *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = v4[2];
  v8 = v4[3];
  v9 = v4[4];
  v10 = a1[2];
  v11 = *(a1 + 3);
  v12 = *(a1 + 4);
  v13 = type metadata accessor for NSCodingFeatureWrapper(0, v7, a3, a4);
  v14 = (*(v13 + 128))(v11, v12, 0, v8, v9);
  if (v14)
  {
    v15 = *(v14 + 16);

    v16 = v15;
    v17 = OUTLINED_FUNCTION_1_6();
    InteractionWrapper.init(interactionId:timestamp:feature:)(v17, v18, v19, v7, v20, v10);
  }

  else
  {
    lazy protocol witness table accessor for type FeatureStoreError and conformance FeatureStoreError();
    v22 = swift_allocError();
    result = OUTLINED_FUNCTION_0_4(v22, v23);
    *a2 = v5;
  }

  return result;
}

id vtable thunk for BaseStreamAccessor.retrieve(interactionId:) dispatching to FeatureStoreNSCodingAccessor.retrieve(interactionId:)@<X0>(uint64_t *a1@<X8>)
{
  result = FeatureStoreNSCodingAccessor.retrieve(interactionId:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t FeatureStoreNSCodingAccessorWithType.insert(interactionId:feature:)()
{
  v0 = lazy protocol witness table accessor for type FeatureStoreError and conformance FeatureStoreError();
  OUTLINED_FUNCTION_2_3(&type metadata for FeatureStoreError, v0);
  *v1 = xmmword_223092EF0;
  *(v1 + 16) = 1;
  return swift_willThrow();
}

NSObject *FeatureStoreNSCodingAccessorWithType.retrieve(interactionId:)(uint64_t a1, uint64_t a2)
{
  v6.isa = v2->isa;
  v7 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v41 - v14;
  v16 = (*(v6.isa + 14))(a1, a2);
  if (v3)
  {
    return v2;
  }

  v17 = v16;
  v42 = v7;
  result = type metadata accessor for NSKeyedUnarchiver();
  if (v17[2])
  {
    v19 = v17[4];
    v20 = v17[5];
    outlined copy of Data._Representation(v19, v20);

    v2 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
    outlined consume of Data._Representation(v19, v20);
    if (!v2)
    {
      v31 = v9;
      v32 = Logger.accessor.unsafeMutableAddressor();
      v33 = *(v9 + 16);
      v34 = v42;
      v33(v15, v32, v42);
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_223066000, v35, v36, "Deserialization failed. Returned nil object.", v37, 2u);
        OUTLINED_FUNCTION_1();
      }

      (*(v31 + 8))(v15, v34);
      v38 = lazy protocol witness table accessor for type FeatureStoreError and conformance FeatureStoreError();
      v39 = OUTLINED_FUNCTION_2_3(&type metadata for FeatureStoreError, v38);
      OUTLINED_FUNCTION_2_8(v39, v40);
      v21 = Logger.accessor.unsafeMutableAddressor();
      (*(v31 + 16))(v13, v21, v34);
      v22 = v39;
      v2 = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v2, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        *v24 = 138412290;
        v26 = v39;
        v27 = _swift_stdlib_bridgeErrorToNSError();
        *(v24 + 4) = v27;
        *v25 = v27;
        _os_log_impl(&dword_223066000, v2, v23, "Deserialization failed. Error: %@", v24, 0xCu);
        outlined destroy of NSObject?(v25);
        OUTLINED_FUNCTION_1();
        OUTLINED_FUNCTION_1();
      }

      (*(v31 + 8))(v13, v34);
      v28 = lazy protocol witness table accessor for type FeatureStoreError and conformance FeatureStoreError();
      v29 = OUTLINED_FUNCTION_2_3(&type metadata for FeatureStoreError, v28);
      OUTLINED_FUNCTION_0_6(v29, v30);
    }

    return v2;
  }

  __break(1u);
  return result;
}

uint64_t FeatureStoreNSCodingAccessorWithType.retrieve(interactionId:)()
{
  v2 = *v0;
  v3 = (*(*v0 + 120))();
  if (!v1)
  {
    v13[1] = v3;
    MEMORY[0x28223BE20](v3);
    v12 = *(v2 + 144);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12FeatureStore18InteractionWrapperVy10Foundation4DataVGGMd, _sSay12FeatureStore18InteractionWrapperVy10Foundation4DataVGGMR);
    v7 = type metadata accessor for InteractionWrapper(0, v12, v5, v6);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, _ss5Error_pMR);
    v9 = lazy protocol witness table accessor for type [InteractionWrapper<Data>] and conformance [A]();
    v0 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in FeatureStoreNSCodingAccessorWithType.retrieve(interactionId:), &v11, v4, v7, v8, v9, MEMORY[0x277D84950], v13);
  }

  return v0;
}

void closure #1 in FeatureStoreNSCodingAccessorWithType.retrieve(interactionId:)(double *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v43 = a4;
  v44 = a3;
  v5 = v4;
  v8 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v42 - v15;
  v17 = *(a1 + 1);
  v42 = *a1;
  v18 = a1[2];
  type metadata accessor for NSKeyedUnarchiver();
  v19 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
  if (!v4)
  {
    v31 = v42;
    v32 = v43;
    if (v19)
    {
      v45 = v19;

      InteractionWrapper.init(interactionId:timestamp:feature:)(v31, v17, &v45, a2, v32, v18);
      return;
    }

    v33 = Logger.accessor.unsafeMutableAddressor();
    v34 = v10;
    v35 = *(v10 + 16);
    v36 = v16;
    v35(v16, v33, v8);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_223066000, v37, v38, "Deserialization failed. Returned nil object.", v5, 2u);
      OUTLINED_FUNCTION_1();
    }

    (*(v34 + 8))(v36, v8);
    v39 = lazy protocol witness table accessor for type FeatureStoreError and conformance FeatureStoreError();
    v40 = OUTLINED_FUNCTION_2_3(&type metadata for FeatureStoreError, v39);
    OUTLINED_FUNCTION_0_6(v40, v41);
    v10 = v34;
  }

  v20 = Logger.accessor.unsafeMutableAddressor();
  (*(v10 + 16))(v14, v20, v8);
  v21 = v5;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 138412290;
    v26 = v5;
    v27 = _swift_stdlib_bridgeErrorToNSError();
    *(v24 + 4) = v27;
    *v25 = v27;
    _os_log_impl(&dword_223066000, v22, v23, "Deserialization failed. Error: %@", v24, 0xCu);
    outlined destroy of NSObject?(v25);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_1();
  }

  (*(v10 + 8))(v14, v8);
  v28 = lazy protocol witness table accessor for type FeatureStoreError and conformance FeatureStoreError();
  v29 = OUTLINED_FUNCTION_2_3(&type metadata for FeatureStoreError, v28);
  OUTLINED_FUNCTION_2_8(v29, v30);

  *v44 = v29;
}

NSObject *vtable thunk for BaseStreamAccessor.retrieve(interactionId:) dispatching to FeatureStoreNSCodingAccessorWithType.retrieve(interactionId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, NSObject **a3@<X8>)
{
  result = FeatureStoreNSCodingAccessorWithType.retrieve(interactionId:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t PBCodableStreamAccessor.insert(interactionId:feature:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v14[1] = *MEMORY[0x277D85DE8];
  type metadata accessor for PBCodableFeatureWrapper(0, *(*v5 + 144), a3, a4);

  v9 = AceObjectFeatureWrapper.__allocating_init(interactionId:dataVersion:feature:)(a1, a2, 0, a3);
  v10 = v5[2];
  v14[0] = 0;
  if ([v10 insert:v9 error:v14])
  {
    v11 = v14[0];
  }

  else
  {
    v12 = v14[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

id PBCodableStreamAccessor.retrieve(interactionId:)()
{
  v2 = *v0;
  result = (*(*v0 + 112))();
  if (!v1)
  {
    v6 = result;
    result = type metadata accessor for PBCodableFeatureWrapper(0, *(v2 + 144), v4, v5);
    if (*(v6 + 16))
    {
      v7 = OUTLINED_FUNCTION_1_6();
      outlined copy of Data._Representation(v7, v8);

      v9 = OUTLINED_FUNCTION_1_6();
      v11 = v10(v9);
      v12 = OUTLINED_FUNCTION_1_6();
      outlined consume of Data._Representation(v12, v13);
      if (v11)
      {
        v14 = *(v11 + 16);

        return v14;
      }

      else
      {
        lazy protocol witness table accessor for type FeatureStoreError and conformance FeatureStoreError();
        v15 = swift_allocError();
        return OUTLINED_FUNCTION_0_4(v15, v16);
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t PBCodableStreamAccessor.retrieve(interactionId:)(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = (*(*v2 + 120))();
  if (!v3)
  {
    v19[1] = v7;
    MEMORY[0x28223BE20](v7);
    v16 = *(v6 + 144);
    v17 = a1;
    v18 = a2;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12FeatureStore18InteractionWrapperVy10Foundation4DataVGGMd, _sSay12FeatureStore18InteractionWrapperVy10Foundation4DataVGGMR);
    v11 = type metadata accessor for InteractionWrapper(0, v16, v9, v10);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, _ss5Error_pMR);
    v13 = lazy protocol witness table accessor for type [InteractionWrapper<Data>] and conformance [A]();
    v2 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in PBCodableStreamAccessor.retrieve(interactionId:), &v15, v8, v11, v12, v13, MEMORY[0x277D84950], v19);
  }

  return v2;
}

uint64_t partial apply for closure #1 in PBCodableStreamAccessor.retrieve(interactionId:)(double *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = v4[2];
  v8 = v4[3];
  v9 = v4[4];
  v10 = a1[2];
  v11 = *(a1 + 3);
  v12 = *(a1 + 4);
  v13 = type metadata accessor for PBCodableFeatureWrapper(0, v7, a3, a4);
  v14 = (*(v13 + 128))(v11, v12, 0, v8, v9);
  if (v14)
  {
    v15 = *(v14 + 16);

    v16 = v15;
    v17 = OUTLINED_FUNCTION_1_6();
    InteractionWrapper.init(interactionId:timestamp:feature:)(v17, v18, v19, v7, v20, v10);
  }

  else
  {
    lazy protocol witness table accessor for type FeatureStoreError and conformance FeatureStoreError();
    v22 = swift_allocError();
    result = OUTLINED_FUNCTION_0_4(v22, v23);
    *a2 = v5;
  }

  return result;
}

id vtable thunk for BaseStreamAccessor.retrieve(interactionId:) dispatching to PBCodableStreamAccessor.retrieve(interactionId:)@<X0>(uint64_t *a1@<X8>)
{
  result = PBCodableStreamAccessor.retrieve(interactionId:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t SerializableStreamAccessor.insert(interactionId:feature:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v17[1] = *MEMORY[0x277D85DE8];
  v6 = *(*v4 + 144);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = v17 - v8;
  type metadata accessor for SerializableFeatureWrapper(0, v6, *(v10 + 152), v11);
  (*(v7 + 16))(v9, a3, v6);

  v12 = SerializableFeatureWrapper.__allocating_init(interactionId:dataVersion:feature:)();
  v13 = v4[2];
  v17[0] = 0;
  if ([v13 insert:v12 error:v17])
  {
    v14 = v17[0];
  }

  else
  {
    v15 = v17[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

void *SerializableStreamAccessor.retrieve(interactionId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = *v3;
  result = (*(*v3 + 112))();
  if (!v4)
  {
    v11 = result;
    v12 = *(v8 + 144);
    result = type metadata accessor for SerializableFeatureWrapper(0, v12, *(v8 + 152), v10);
    if (v11[2])
    {
      v13 = result;
      v14 = v11[4];
      v15 = v11[5];
      outlined copy of Data._Representation(v14, v15);

      v16 = (*(v13 + 128))(v14, v15, 0, a1, a2);
      outlined consume of Data._Representation(v14, v15);
      if (v16)
      {
        (*(*(v12 - 8) + 16))(a3, v16 + *(*v16 + 88), v12);
      }

      else
      {
        lazy protocol witness table accessor for type FeatureStoreError and conformance FeatureStoreError();
        v17 = swift_allocError();
        return OUTLINED_FUNCTION_0_4(v17, v18);
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t SerializableStreamAccessor.retrieve(interactionId:)(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = (*(*v2 + 120))();
  if (!v3)
  {
    v19[1] = v7;
    MEMORY[0x28223BE20](v7);
    v18 = *(v6 + 144);
    v15[1] = v18;
    v16 = a1;
    v17 = a2;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12FeatureStore18InteractionWrapperVy10Foundation4DataVGGMd, _sSay12FeatureStore18InteractionWrapperVy10Foundation4DataVGGMR);
    v11 = type metadata accessor for InteractionWrapper(0, v18, v9, v10);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, _ss5Error_pMR);
    v13 = lazy protocol witness table accessor for type [InteractionWrapper<Data>] and conformance [A]();
    v2 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in SerializableStreamAccessor.retrieve(interactionId:), v15, v8, v11, v12, v13, MEMORY[0x277D84950], v19);
  }

  return v2;
}

uint64_t closure #1 in SerializableStreamAccessor.retrieve(interactionId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a6@<X5>, uint64_t x8_0@<X8>)
{
  v27 = a6;
  v12 = *(a4 - 8);
  v13 = MEMORY[0x28223BE20](a1);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v13[2];
  v17 = *(v13 + 3);
  v18 = *(v13 + 4);
  v21 = type metadata accessor for SerializableFeatureWrapper(0, v19, v20, v19);
  v22 = (*(v21 + 128))(v17, v18, 0, a2, a3);
  if (v22)
  {
    (*(v12 + 16))(v15, v22 + *(*v22 + 88), a4);

    InteractionWrapper.init(interactionId:timestamp:feature:)(a2, a3, v15, a4, x8_0, v16);
  }

  else
  {
    lazy protocol witness table accessor for type FeatureStoreError and conformance FeatureStoreError();
    v24 = swift_allocError();
    result = OUTLINED_FUNCTION_0_4(v24, v25);
    *v27 = v7;
  }

  return result;
}

uint64_t InteractionWrapper.interactionId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t InteractionWrapper.init(interactionId:timestamp:feature:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a6;
  v9 = type metadata accessor for InteractionWrapper(0, a4, a3, a4);
  v10 = *(*(a4 - 8) + 32);
  v11 = a5 + *(v9 + 32);

  return v10(v11, a3, a4);
}

uint64_t type metadata completion function for InteractionWrapper(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InteractionWrapper(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_23;
  }

  v10 = ((v7 + 24) & ~v7) + *(*(v4 - 8) + 64);
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_23:
      if ((v6 & 0x80000000) != 0)
      {
        return __swift_getEnumTagSinglePayload((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v7 + 8) & ~v7, v6, v4);
      }

      v16 = *(a1 + 1);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_23;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void storeEnumTagSinglePayload for InteractionWrapper(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((v10 + 24) & ~v10) + *(*(v6 - 8) + 64);
  v12 = 8 * v11;
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v9 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if ((v8 & 0x80000000) != 0)
          {
            v21 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v10 + 8) & ~v10;

            __swift_storeEnumTagSinglePayload(v21, a2, v8, v6);
          }

          else if ((a2 & 0x80000000) != 0)
          {
            *a1 = a2 & 0x7FFFFFFF;
            *(a1 + 1) = 0;
          }

          else
          {
            *(a1 + 1) = (a2 - 1);
          }
        }

        break;
    }
  }

  else
  {
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        break;
      case 2:
        *&a1[v11] = v17;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for FeatureStoreError(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 17))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 3)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for FeatureStoreError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t one-time initialization function for contextProviding()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.contextProviding);
  __swift_project_value_buffer(v0, static Logger.contextProviding);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for accessor(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t static Logger.accessor.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t LogSignpost.signposter.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LogSignpost(0) + 24);
  type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_2_1();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t LogSignpost.init(name:state:signposter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  v8 = *(type metadata accessor for LogSignpost(0) + 24);
  type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_2_1();
  v10 = *(v9 + 32);

  return v10(a6 + v8, a5);
}

uint64_t type metadata completion function for LogSignpost(uint64_t a1)
{
  result = type metadata accessor for OSSignpostIntervalState();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for OSSignposter();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t SiriTurn.dictionaryRepresentation()()
{
  v1 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2();
  v7 = v6 - v5;
  v20.receiver = v0;
  v20.super_class = type metadata accessor for SiriTurn();
  v8 = objc_msgSendSuper2(&v20, sel_dictionaryRepresentation);
  v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  *&v17 = 0x64496E727574;
  *(&v17 + 1) = 0xE600000000000000;
  v10 = MEMORY[0x277D837D0];
  AnyHashable.init<A>(_:)();
  dispatch thunk of SiriTurn.turnId.getter();
  v11 = UUID.uuidString.getter();
  v13 = v12;
  (*(v3 + 8))(v7, v1);
  v18 = v10;
  *&v17 = v11;
  *(&v17 + 1) = v13;
  outlined init with take of Any(&v17, v16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v16, v19, isUniquelyReferenced_nonNull_native);
  outlined destroy of AnyHashable(v19);
  return v9;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t EventGraph.dictionaryRepresentation()()
{
  v70 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_0();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2();
  v69 = v5 - v4;
  v64 = v0;
  v6 = dispatch thunk of EventGraph.componentIdentifiers.getter();
  v63 = v6;
  if ((v6 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for ComponentIdentifier();
    lazy protocol witness table accessor for type ComponentIdentifier and conformance NSObject(&lazy protocol witness table cache variable for type ComponentIdentifier and conformance NSObject, MEMORY[0x277D56708], MEMORY[0x277D85378]);
    Set.Iterator.init(_cocoa:)();
    v8 = v77;
    v7 = v78;
    v9 = v79;
    v10 = v80;
    v11 = v81;
  }

  else
  {
    v12 = -1 << *(v6 + 32);
    v7 = v6 + 56;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v11 = v14 & *(v6 + 56);

    v10 = 0;
  }

  v62 = v9;
  v15 = (v9 + 64) >> 6;
  v67 = v7;
  v68 = (v2 + 8);
  v16 = MEMORY[0x277D84F98];
  v65 = v15;
  v66 = v8;
  if (v8 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v17 = v10;
  v18 = v11;
  v19 = v10;
  if (!v11)
  {
    while (1)
    {
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v19 >= v15)
      {
        goto LABEL_28;
      }

      v18 = *(v7 + 8 * v19);
      ++v17;
      if (v18)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_41;
  }

LABEL_12:
  v20 = (v18 - 1) & v18;
  v21 = *(*(v8 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v18)))));
  if (v21)
  {
    while (1)
    {
      v71 = v20;
      v22 = ComponentIdentifier.componentName.getter();
      v23 = @"COMPONENTNAME_UNKNOWN";
      v24 = @"COMPONENTNAME_UNKNOWN";
      if (v22 <= 0x42)
      {
        v24 = off_2784D3688[v22];
        v23 = off_2784D38A0[v22];
      }

      v25 = v24;
      v26 = v23;
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      v73 = v21;
      dispatch thunk of ComponentIdentifier.uuid.getter();
      v30 = UUID.uuidString.getter();
      v72 = v31;
      (*v68)(v69, v70);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v75 = v16;
      v33 = specialized __RawDictionaryStorage.find<A>(_:)(v27, v29);
      v35 = v16[2];
      v36 = (v34 & 1) == 0;
      v37 = v35 + v36;
      if (__OFADD__(v35, v36))
      {
        break;
      }

      v38 = v33;
      v39 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVyS2SGMd, &_ss17_NativeDictionaryVyS2SGMR);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v37))
      {
        v40 = specialized __RawDictionaryStorage.find<A>(_:)(v27, v29);
        if ((v39 & 1) != (v41 & 1))
        {
          goto LABEL_44;
        }

        v38 = v40;
      }

      if (v39)
      {

        v16 = v75;
        v42 = (v75[7] + 16 * v38);
        *v42 = v30;
        v42[1] = v72;
      }

      else
      {
        v16 = v75;
        v75[(v38 >> 6) + 8] |= 1 << v38;
        v43 = (v75[6] + 16 * v38);
        *v43 = v27;
        v43[1] = v29;
        v44 = (v75[7] + 16 * v38);
        *v44 = v30;
        v44[1] = v72;

        v45 = v75[2];
        v46 = __OFADD__(v45, 1);
        v47 = v45 + 1;
        if (v46)
        {
          goto LABEL_42;
        }

        v75[2] = v47;
      }

      v10 = v19;
      v11 = v71;
      v8 = v66;
      v7 = v67;
      v15 = v65;
      if ((v66 & 0x8000000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for ComponentIdentifier();
        swift_dynamicCast();
        v21 = v75;
        v19 = v10;
        v20 = v11;
        if (v75)
        {
          continue;
        }
      }

      goto LABEL_28;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

LABEL_28:
  v74 = v16;
  outlined consume of Set<ComponentIdentifier>.Iterator._Variant(v8);

  v48 = dispatch thunk of EventGraph.events()();
  v49 = specialized Array.count.getter(v48);
  if (!v49)
  {

    v52 = MEMORY[0x277D84F90];
LABEL_39:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2230931E0;
    OUTLINED_FUNCTION_19_1();
    EventGraph.timestamp.getter();
    *(inited + 96) = MEMORY[0x277D839F8];
    *(inited + 72) = v60;
    OUTLINED_FUNCTION_19_1();
    *(inited + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    *(inited + 144) = v74;
    OUTLINED_FUNCTION_19_1();
    *(inited + 240) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDys11AnyHashableVypGGMd, &_sSaySDys11AnyHashableVypGGMR);
    *(inited + 216) = v52;
    return Dictionary.init(dictionaryLiteral:)();
  }

  v50 = v49;
  v76 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v49 & ~(v49 >> 63), 0);
  if ((v50 & 0x8000000000000000) == 0)
  {
    v51 = 0;
    v52 = v76;
    do
    {
      if ((v48 & 0xC000000000000001) != 0)
      {
        v53 = MEMORY[0x223DD38A0](v51, v48);
      }

      else
      {
        v53 = *(v48 + 8 * v51 + 32);
      }

      v54 = v53;
      v55 = [v53 dictionaryRepresentation];
      v56 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v58 = *(v76 + 16);
      v57 = *(v76 + 24);
      if (v58 >= v57 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), v58 + 1, 1);
      }

      ++v51;
      *(v76 + 16) = v58 + 1;
      *(v76 + 8 * v58 + 32) = v56;
    }

    while (v50 != v51);

    goto LABEL_39;
  }

LABEL_43:
  __break(1u);
LABEL_44:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

id @objc SiriTurn.dictionaryRepresentation()(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  Dictionary._bridgeToObjectiveC()();
  OUTLINED_FUNCTION_18_1();

  return v4;
}

uint64_t variable initialization expression of CurareInteractionSELFStream.logger@<X0>(uint64_t a1@<X8>)
{
  v2 = Logger.SELF.unsafeMutableAddressor();
  type metadata accessor for Logger();
  OUTLINED_FUNCTION_2_1();
  v5 = *(v4 + 16);

  return v5(a1, v2, v3);
}

double variable initialization expression of CurareInteractionSELFStream.provider@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

id CurareInteractionSELFStream.__allocating_init(filter:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = OUTLINED_FUNCTION_18_1();
  return CurareInteractionSELFStream.init(filter:)(v2);
}

id CurareInteractionSELFStream.init(filter:)(uint64_t a1)
{
  v3 = OBJC_IVAR___FSFCurareInteractionSELFStream_logger;
  v4 = Logger.SELF.unsafeMutableAddressor();
  type metadata accessor for Logger();
  OUTLINED_FUNCTION_2_1();
  (*(v5 + 16))(&v1[v3], v4);
  v6 = &v1[OBJC_IVAR___FSFCurareInteractionSELFStream_provider];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 4) = 0;
  *&v1[OBJC_IVAR___FSFCurareInteractionSELFStream_filter] = a1;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for CurareInteractionSELFStream(0);
  return objc_msgSendSuper2(&v8, sel_init);
}

void *CurareInteractionSELFStream.__allocating_init(provider:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = OUTLINED_FUNCTION_18_1();
  return CurareInteractionSELFStream.init(provider:)(v2);
}

void *CurareInteractionSELFStream.init(provider:)(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___FSFCurareInteractionSELFStream_logger;
  v5 = Logger.SELF.unsafeMutableAddressor();
  type metadata accessor for Logger();
  OUTLINED_FUNCTION_2_1();
  (*(v6 + 16))(&v2[v4], v5);
  v7 = &v2[OBJC_IVAR___FSFCurareInteractionSELFStream_provider];
  *v7 = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0;
  outlined init with copy of InstrumentationStreamsProviderProtocol(a1, v12);
  swift_beginAccess();
  outlined assign with take of InstrumentationStreamsProviderProtocol?(v12, v7);
  swift_endAccess();
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  *&v2[OBJC_IVAR___FSFCurareInteractionSELFStream_filter] = dispatch thunk of InstrumentationStreamsProviderProtocol.filter.getter();
  v11.receiver = v2;
  v11.super_class = type metadata accessor for CurareInteractionSELFStream(0);
  objc_msgSendSuper2(&v11, sel_init);
  v9 = OUTLINED_FUNCTION_18_1();
  __swift_destroy_boxed_opaque_existential_1(v9);
  return v8;
}

uint64_t CurareInteractionSELFStream.retrieve()()
{
  OUTLINED_FUNCTION_6_2();
  v1[61] = v0;
  v2 = type metadata accessor for UUID();
  v1[62] = v2;
  v1[63] = *(v2 - 8);
  v1[64] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11BiomePubSub21BookmarkablePublisherVy26AIMLInstrumentationStreams10EventGraphCGMd, &_s11BiomePubSub21BookmarkablePublisherVy26AIMLInstrumentationStreams10EventGraphCGMR);
  v1[65] = v3;
  v1[66] = *(v3 - 8);
  v1[67] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v1[68] = swift_task_alloc();

  return MEMORY[0x2822009F8](CurareInteractionSELFStream.retrieve(), 0, 0);
}

{
  OUTLINED_FUNCTION_3_7();
  v1 = v0[61];
  v2 = OBJC_IVAR___FSFCurareInteractionSELFStream_provider;
  v0[69] = OBJC_IVAR___FSFCurareInteractionSELFStream_provider;
  swift_beginAccess();
  outlined init with copy of InstrumentationStreamsProviderProtocol?(v1 + v2, (v0 + 2), &_s26AIMLInstrumentationStreams015InstrumentationB16ProviderProtocol_pSgMd, &_s26AIMLInstrumentationStreams015InstrumentationB16ProviderProtocol_pSgMR);
  v3 = v0[5];
  outlined destroy of InstrumentationStreamsProviderProtocol?((v0 + 2), &_s26AIMLInstrumentationStreams015InstrumentationB16ProviderProtocol_pSgMd, &_s26AIMLInstrumentationStreams015InstrumentationB16ProviderProtocol_pSgMR);
  if (v3)
  {
    outlined init with copy of InstrumentationStreamsProviderProtocol?(v0[61] + v0[69], (v0 + 17), &_s26AIMLInstrumentationStreams015InstrumentationB16ProviderProtocol_pSgMd, &_s26AIMLInstrumentationStreams015InstrumentationB16ProviderProtocol_pSgMR);
    if (v0[20])
    {
      OUTLINED_FUNCTION_8_4();
      v4 = swift_task_alloc();
      v0[72] = v4;
      lazy protocol witness table accessor for type BookmarkablePublisher<EventGraph> and conformance BookmarkablePublisher<A>();
      *v4 = v0;
      v5 = OUTLINED_FUNCTION_2_10();

      return MEMORY[0x282137760](v5);
    }

    else
    {
      outlined destroy of InstrumentationStreamsProviderProtocol?((v0 + 17), &_s26AIMLInstrumentationStreams015InstrumentationB16ProviderProtocol_pSgMd, &_s26AIMLInstrumentationStreams015InstrumentationB16ProviderProtocol_pSgMR);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v12, v13))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_23_2(&dword_223066000, v14, v15, "Stream should have both provider and filter. Returning empty result.");
        OUTLINED_FUNCTION_1();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVSayypGGMd, &_sSDys11AnyHashableVSayypGGMR);
      Dictionary.init(dictionaryLiteral:)();
      OUTLINED_FUNCTION_7_4();

      v16 = OUTLINED_FUNCTION_5_3();

      return v17(v16);
    }
  }

  else
  {
    v6 = v0[68];
    v7 = v0[61];
    type metadata accessor for InstrumentationStreamsFactory();
    v8 = *(v7 + OBJC_IVAR___FSFCurareInteractionSELFStream_filter);
    v9 = type metadata accessor for URL();
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v9);
    v0[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26AIMLInstrumentationStreams015InstrumentationB7FactoryC9construct6filter9startTime03endH09maxEvents5lastN10storageURLQrAA11EventFilterC_SdSgAMSiSgAN10Foundation0N0VSgtYaKFZQOy_Qo_Md, &_s26AIMLInstrumentationStreams015InstrumentationB7FactoryC9construct6filter9startTime03endH09maxEvents5lastN10storageURLQrAA11EventFilterC_SdSgAMSiSgAN10Foundation0N0VSgtYaKFZQOy_Qo_MR);
    v0[11] = swift_getOpaqueTypeConformance2();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 7);
    v11 = swift_task_alloc();
    v0[70] = v11;
    *v11 = v0;
    v11[1] = CurareInteractionSELFStream.retrieve();

    return MEMORY[0x2821377B0](boxed_opaque_existential_1, v8, 0, 1, 0, 1, 0, 1);
  }
}

{
  OUTLINED_FUNCTION_3_7();
  v2 = *v1;
  OUTLINED_FUNCTION_12();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 568) = v0;

  outlined destroy of InstrumentationStreamsProviderProtocol?(*(v2 + 544), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if (v0)
  {
    v5 = CurareInteractionSELFStream.retrieve();
  }

  else
  {
    v5 = CurareInteractionSELFStream.retrieve();
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

{
  OUTLINED_FUNCTION_3_7();
  v1 = v0[69];
  v2 = v0[61];
  swift_beginAccess();
  outlined assign with take of InstrumentationStreamsProviderProtocol?((v0 + 7), v2 + v1);
  swift_endAccess();
  outlined init with copy of InstrumentationStreamsProviderProtocol?(v0[61] + v0[69], (v0 + 17), &_s26AIMLInstrumentationStreams015InstrumentationB16ProviderProtocol_pSgMd, &_s26AIMLInstrumentationStreams015InstrumentationB16ProviderProtocol_pSgMR);
  if (v0[20])
  {
    OUTLINED_FUNCTION_8_4();
    v3 = swift_task_alloc();
    v0[72] = v3;
    lazy protocol witness table accessor for type BookmarkablePublisher<EventGraph> and conformance BookmarkablePublisher<A>();
    *v3 = v0;
    v4 = OUTLINED_FUNCTION_2_10();

    return MEMORY[0x282137760](v4);
  }

  else
  {
    outlined destroy of InstrumentationStreamsProviderProtocol?((v0 + 17), &_s26AIMLInstrumentationStreams015InstrumentationB16ProviderProtocol_pSgMd, &_s26AIMLInstrumentationStreams015InstrumentationB16ProviderProtocol_pSgMR);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_23_2(&dword_223066000, v7, v8, "Stream should have both provider and filter. Returning empty result.");
      OUTLINED_FUNCTION_1();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVSayypGGMd, &_sSDys11AnyHashableVSayypGGMR);
    Dictionary.init(dictionaryLiteral:)();
    OUTLINED_FUNCTION_7_4();

    v9 = OUTLINED_FUNCTION_5_3();

    return v10(v9);
  }
}

{
  OUTLINED_FUNCTION_3_7();
  v2 = *v1;
  OUTLINED_FUNCTION_12();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_12();
  *v6 = v5;
  *(v8 + 584) = v7;
  *(v8 + 592) = v0;

  (*(v2[66] + 8))(v2[67], v2[65]);
  if (v0)
  {
    v9 = CurareInteractionSELFStream.retrieve();
  }

  else
  {
    v9 = CurareInteractionSELFStream.retrieve();
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

{
  OUTLINED_FUNCTION_3_7();
  __swift_deallocate_boxed_opaque_existential_1(v0 + 56);
  OUTLINED_FUNCTION_7_4();

  OUTLINED_FUNCTION_23();

  return v1();
}

{
  OUTLINED_FUNCTION_3_7();
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  OUTLINED_FUNCTION_7_4();

  OUTLINED_FUNCTION_23();

  return v1();
}

void CurareInteractionSELFStream.retrieve()()
{
  v221 = v0;
  v1 = *(v0 + 584);
  v217 = [objc_allocWithZone(MEMORY[0x277CBEB38]) init];
  v2 = specialized Array.count.getter(v1);
  if (!v2)
  {
LABEL_124:

    *&v218 = 0;
    v181 = v217;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVSayypGGMd, &_sSDys11AnyHashableVSayypGGMR);
    static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();

    if (v218)
    {
    }

    else
    {
      v182 = Logger.logObject.getter();
      v183 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v182, v183))
      {
        v184 = swift_slowAlloc();
        *v184 = 0;
        OUTLINED_FUNCTION_1();
      }
    }

    __swift_destroy_boxed_opaque_existential_1((v0 + 96));
    OUTLINED_FUNCTION_7_4();

    v185 = OUTLINED_FUNCTION_5_3();

    v186(v185);
    return;
  }

  v4 = v2;
  v5 = 0;
  v205 = (v0 + 248);
  v6 = *(v0 + 584);
  v203 = v6 & 0xC000000000000001;
  v207 = *(v0 + 488);
  v196 = v6 + 32;
  v201 = (*(v0 + 504) + 8);
  v195 = OBJC_IVAR___FSFCurareInteractionSELFStream_filter;
  v7 = *(v0 + 592);
  *&v3 = 136315906;
  v193 = v3;
  v200 = v2;
  v202 = (v0 + 280);
  while (1)
  {
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v5, v203 == 0, *(v0 + 584));
    if (v203)
    {
      v8 = MEMORY[0x223DD38A0](v5, *(v0 + 584));
    }

    else
    {
      v8 = *(v196 + 8 * v5);
    }

    v9 = v8;
    v10 = __OFADD__(v5, 1);
    v11 = v5 + 1;
    if (v10)
    {
      goto LABEL_135;
    }

    v204 = v11;
    v12 = dispatch thunk of EventGraph.componentIdentifiers.getter();
    v13 = _sSD8grouping2bySDyxSay7ElementQyd__GGqd__n_xADKXEtKcAERs_STRd__lufCSo21SISchemaComponentNameV_Shy19SiriInstrumentation0E10IdentifierCGTt1g5095_s12FeatureStore27CurareInteractionSELFStreamC8retrieveSDys11AnyHashableVSDyAFSayypGGGyYaKFSo21def3V19g19Instrumentation0J10I6CXEfU_Tf1nc_n(v12);
    v14 = specialized Dictionary.subscript.getter(1, v13);
    if (v14)
    {
      break;
    }

    v14 = specialized Dictionary.subscript.getter(9, v13);
    if (v14)
    {
      break;
    }

    v34 = v9;
    v35 = OUTLINED_FUNCTION_14_3(v34);
    v108 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v35, v108))
    {
LABEL_88:

      goto LABEL_90;
    }

    v37 = swift_slowAlloc();
    v109 = swift_slowAlloc();
    v119 = [v34 dictionaryRepresentation];
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    OUTLINED_FUNCTION_21_1();
    v120 = Dictionary.description.getter();
    v122 = v121;

    v123 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v120, v122, &v218);

    *(v37 + 4) = v123;
    v53 = v108;
    v54 = v35;
    v55 = "Event graph missed both orchId and mhID! Ignoring: %s";
LABEL_33:
    _os_log_impl(&dword_223066000, v54, v53, v55, v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v216);
    OUTLINED_FUNCTION_1();
    v4 = v200;
    OUTLINED_FUNCTION_1();

LABEL_90:
    v5 = v204;
    if (v204 == v4)
    {
      goto LABEL_124;
    }
  }

  v15 = v14;
  if (specialized Array.count.getter(v14) != 1 || !specialized Array.count.getter(v15))
  {

    v34 = v9;
    v35 = OUTLINED_FUNCTION_14_3(v34);
    v36 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v35, v36))
    {
      goto LABEL_88;
    }

    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v48 = [v34 dictionaryRepresentation];
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    OUTLINED_FUNCTION_21_1();
    v49 = Dictionary.description.getter();
    v51 = v50;

    v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v51, &v218);

    *(v37 + 4) = v52;
    v53 = v36;
    v54 = v35;
    v55 = "Event graph has multiple UUIDs for component to key! Ignoring: %s";
    goto LABEL_33;
  }

  if ((v15 & 0xC000000000000001) != 0)
  {
    v16 = MEMORY[0x223DD38A0](0, v15);
  }

  else
  {
    if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_142;
    }

    v16 = *(v15 + 32);
  }

  v17 = v16;
  v18 = *(v0 + 512);
  v19 = *(v0 + 496);
  dispatch thunk of ComponentIdentifier.uuid.getter();

  v206 = UUID.uuidString.getter();
  v208 = v20;
  v216 = *v201;
  (*v201)(v18, v19);
  v21 = 0;
  v22 = v13;
  v25 = v13[8];
  v24 = v13 + 8;
  v23 = v25;
  v26 = -1 << *(v24 - 32);
  if (-v26 < 64)
  {
    v27 = ~(-1 << -v26);
  }

  else
  {
    v27 = -1;
  }

  v28 = v27 & v23;
  v29 = (63 - v26) >> 6;
  v198 = v7;
  v199 = v9;
  while (2)
  {
    if (v28)
    {
      goto LABEL_23;
    }

    while (2)
    {
      v30 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        goto LABEL_134;
      }

      if (v30 >= v29)
      {

        goto LABEL_35;
      }

      v28 = v24[v30];
      ++v21;
      if (!v28)
      {
        continue;
      }

      break;
    }

    v21 = v30;
LABEL_23:
    v31 = *(v22[7] + 8 * (__clz(__rbit64(v28)) | (v21 << 6)));
    if (v31 >> 62)
    {
      v192 = v22;
      if (v31 < 0)
      {
        v33 = v31;
      }

      else
      {
        v33 = v31 & 0xFFFFFFFFFFFFFF8;
      }

      v32 = MEMORY[0x223DD39B0](v33);
      v22 = v192;
    }

    else
    {
      v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v28 &= v28 - 1;
    if (v32 <= 1)
    {
      continue;
    }

    break;
  }

  v211 = v32;
  v124 = v22;

  v214 = v31;
  v125 = v9;
  v126 = OUTLINED_FUNCTION_14_3(v125);
  v127 = static os_log_type_t.info.getter();
  v190 = v125;

  if (!os_log_type_enabled(v126, v127))
  {

LABEL_35:
    v56 = dispatch thunk of EventGraph.events()();
    v57 = *(v207 + v195);
    *&v218 = MEMORY[0x277D84F90];
    v58 = specialized Array.count.getter(v56);
    v59 = v57;
    for (i = 0; v58 != i; ++i)
    {
      if ((v56 & 0xC000000000000001) != 0)
      {
        v61 = MEMORY[0x223DD38A0](i, v56);
      }

      else
      {
        if (i >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_133;
        }

        v61 = *(v56 + 8 * i + 32);
      }

      v62 = v61;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_133:
        __break(1u);
LABEL_134:
        __break(1u);
LABEL_135:
        __break(1u);
LABEL_136:
        __break(1u);
        goto LABEL_137;
      }

      *(v0 + 200) = type metadata accessor for OrderedEvent();
      *(v0 + 208) = MEMORY[0x277CE4848];
      *(v0 + 176) = v62;
      v63 = v62;
      v64 = dispatch thunk of EventFilter.isAllowed(_:)();
      __swift_destroy_boxed_opaque_existential_1((v0 + 176));
      if (v64)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }
    }

    v65 = v218;
    v66 = specialized Array.count.getter(v218);
    if (v66)
    {
      v67 = v66;
      v216 = objc_opt_self();
      if (v67 < 1)
      {
        goto LABEL_143;
      }

      v68 = 0;
      v210 = v65;
      v213 = v65 & 0xC000000000000001;
      v209 = v67;
      while (2)
      {
        if (v213)
        {
          v69 = MEMORY[0x223DD38A0](v68, v65);
        }

        else
        {
          v69 = *(v65 + 8 * v68 + 32);
        }

        v70 = v69;
        v71 = [v69 dictionaryRepresentation];
        v72 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        OUTLINED_FUNCTION_21_1();
        isa = Dictionary._bridgeToObjectiveC()().super.isa;
        v74 = [v216 isValidJSONObject_];

        if (v74)
        {
          v75 = OrderedEvent.innerType.getter();
          if (v75)
          {
            v76 = v75;
            *(v0 + 472) = OrderedEvent.outerType.getter();
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo25SISchemaTopLevelUnionTypeCmMd, &_sSo25SISchemaTopLevelUnionTypeCmMR);
            *&v218 = String.init<A>(describing:)();
            *(&v218 + 1) = v77;
            MEMORY[0x223DD3460](46, 0xE100000000000000);
            *(v0 + 480) = v76;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo30SISchemaInstrumentationMessageCmMd, &_sSo30SISchemaInstrumentationMessageCmMR);
            v78 = String.init<A>(describing:)();
            MEMORY[0x223DD3460](v78);

            v80 = *(&v218 + 1);
            v79 = v218;
          }

          else
          {
            *(v0 + 440) = OrderedEvent.outerType.getter();
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo25SISchemaTopLevelUnionTypeCmMd, &_sSo25SISchemaTopLevelUnionTypeCmMR);
            v79 = String.init<A>(describing:)();
            v80 = v90;
          }

          *(v0 + 360) = v79;
          *(v0 + 368) = v80;
          v91 = [v217 __swift_objectForKeyedSubscript_];
          swift_unknownObjectRelease();
          if (v91)
          {
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
          }

          else
          {
            v218 = 0u;
            v219 = 0u;
          }

          v92 = v218;
          *(v0 + 232) = v219;
          *(v0 + 216) = v92;
          if (*(v0 + 240))
          {
            type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for NSMutableDictionary, 0x277CBEB38);
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_73;
            }

            v93 = *(v0 + 456);
            *(v0 + 424) = v206;
            *(v0 + 432) = v208;

            v94 = [v93 __swift_objectForKeyedSubscript_];
            swift_unknownObjectRelease();
            if (v94)
            {
              _bridgeAnyObjectToAny(_:)();
              swift_unknownObjectRelease();
            }

            else
            {
              v218 = 0u;
              v219 = 0u;
            }

            v96 = v219;
            *v202 = v218;
            v202[1] = v96;
            if (*(v0 + 304))
            {
              type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for NSMutableArray, 0x277CBEB18);
              if (swift_dynamicCast())
              {

                v97 = *(v0 + 464);
                v98 = [v70 dictionaryRepresentation];
                static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

                v99 = Dictionary._bridgeToObjectiveC()().super.isa;

                [v97 addObject_];

                goto LABEL_79;
              }

LABEL_73:
              *(v0 + 376) = v79;
              *(v0 + 384) = v80;

              v100 = [v217 __swift_objectForKeyedSubscript_];
              swift_unknownObjectRelease();
              if (v100)
              {
                _bridgeAnyObjectToAny(_:)();
                swift_unknownObjectRelease();
              }

              else
              {
                v218 = 0u;
                v219 = 0u;
              }

              v101 = v219;
              *v205 = v218;
              *(v0 + 264) = v101;
              if (*(v0 + 272))
              {
                type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for NSMutableDictionary, 0x277CBEB38);
                if (swift_dynamicCast())
                {

                  v102 = *(v0 + 448);
                  type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for NSMutableArray, 0x277CBEB18);
                  *(&v219 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGMd, &_sSDys11AnyHashableVypGMR);
                  *&v218 = v72;
                  v93 = @nonobjc NSMutableArray.__allocating_init(object:)(&v218);
                  *(v0 + 408) = v206;
                  *(v0 + 416) = v208;

                  [v102 __swift_setObject_forKeyedSubscript_];

                  swift_unknownObjectRelease();
LABEL_79:

LABEL_82:
                  v67 = v209;
                  v65 = v210;
LABEL_83:
                  if (v67 == ++v68)
                  {
                    goto LABEL_89;
                  }

                  continue;
                }
              }

              else
              {
                outlined destroy of InstrumentationStreamsProviderProtocol?(v205, &_sypSgMd, &_sypSgMR);
              }

              type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for NSMutableArray, 0x277CBEB18);
              *(&v219 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGMd, &_sSDys11AnyHashableVypGMR);
              *&v218 = v72;
              v103 = @nonobjc NSMutableArray.__allocating_init(object:)(&v218);
              v104 = MEMORY[0x223DD33D0](v206, v208);
              v105 = objc_opt_self();
              v106 = v103;
              v107 = [v105 dictionaryWithObject:v106 forKey:v104];

              *(v0 + 392) = v79;
              *(v0 + 400) = v80;
              [v217 __swift_setObject_forKeyedSubscript_];

              swift_unknownObjectRelease();
              goto LABEL_82;
            }

            v95 = v202;
          }

          else
          {
            v95 = v0 + 216;
          }

          outlined destroy of InstrumentationStreamsProviderProtocol?(v95, &_sypSgMd, &_sypSgMR);
          goto LABEL_73;
        }

        break;
      }

      v82 = OUTLINED_FUNCTION_14_3(v81);
      v83 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        *&v218 = v85;
        *v84 = 136315138;
        OUTLINED_FUNCTION_21_1();
        v86 = Dictionary.description.getter();
        v88 = v87;

        v89 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v88, &v218);

        *(v84 + 4) = v89;
        _os_log_impl(&dword_223066000, v82, v83, "Event is not a valid JSON Object! Ignoring: %s", v84, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v85);
        v65 = v210;
        OUTLINED_FUNCTION_1();
        v67 = v209;
        OUTLINED_FUNCTION_1();
      }

      else
      {
      }

      goto LABEL_83;
    }

LABEL_89:

    v4 = v200;
    v7 = v198;
    goto LABEL_90;
  }

  HIDWORD(v188) = v127;
  log = v126;
  v192 = v124;
  v129 = swift_slowAlloc();
  v187 = swift_slowAlloc();
  v220[0] = v187;
  *v129 = v193;
  v130 = SISchemaComponentName.description.getter();
  v132 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v130, v131, v220);

  *(v129 + 4) = v132;
  v191 = v129;
  *(v129 + 12) = 2080;
  *&v218 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v211, 0);
  v133 = 0;
  v134 = v218;
  v135 = v214;
  v197 = v214 & 0xC000000000000001;
  do
  {
    if (v197)
    {
      v136 = MEMORY[0x223DD38A0](v133);
    }

    else
    {
      v136 = *(v135 + 8 * v133 + 32);
    }

    v137 = v136;
    v138 = *(v0 + 512);
    v139 = *(v0 + 496);
    dispatch thunk of ComponentIdentifier.uuid.getter();
    v140 = UUID.uuidString.getter();
    v142 = v141;

    v216(v138, v139);
    *&v218 = v134;
    v144 = *(v134 + 16);
    v143 = *(v134 + 24);
    if (v144 >= v143 >> 1)
    {
      OUTLINED_FUNCTION_20_2(v143);
      v134 = v218;
    }

    ++v133;
    *(v134 + 16) = v144 + 1;
    v145 = v134 + 16 * v144;
    *(v145 + 32) = v140;
    *(v145 + 40) = v142;
    v135 = v214;
  }

  while (v211 != v133);

  v146 = MEMORY[0x223DD34D0](v134, MEMORY[0x277D837D0]);
  v148 = v147;

  getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v146, v148, v220);
  OUTLINED_FUNCTION_18_1();

  *(v191 + 14) = v146;
  *(v191 + 22) = 2080;
  v149 = *(v192 + 16);
  if (!v149)
  {

    v150 = MEMORY[0x277D84F90];
LABEL_122:
    MEMORY[0x223DD34D0](v150, MEMORY[0x277D837D0]);

    v172 = OUTLINED_FUNCTION_13_2();
    v175 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v172, v173, v174);

    *(v191 + 24) = v175;
    *(v191 + 32) = 2080;
    v176 = [v190 dictionaryRepresentation];
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    OUTLINED_FUNCTION_13_2();
    v177 = Dictionary.description.getter();
    v179 = v178;

    v180 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v177, v179, v220);

    *(v191 + 34) = v180;
    _os_log_impl(&dword_223066000, log, BYTE4(v188), "Event graph has multiple UUIDs for some components. Could this be a product error?\nComponent: %s Identifiers: %s\nComponentIdentifiers: %s\nEventGraph: %s", v191, 0x2Au);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_1();

    goto LABEL_35;
  }

  *&v218 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v149, 0);
  v150 = v218;
  v152 = specialized Dictionary.startIndex.getter(v192);
  v153 = 0;
  v154 = *(v192 + 32);
  v194 = v192 + 72;
  v197 = v149;
  v212 = v151;
  while (1)
  {
    if (v152 < 0 || v152 >= 1 << v154)
    {
      goto LABEL_136;
    }

    v155 = v152 >> 6;
    if ((v24[v152 >> 6] & (1 << v152)) == 0)
    {
      break;
    }

    if (*(v192 + 36) != v151)
    {
      goto LABEL_138;
    }

    v156 = *(*(v192 + 48) + 4 * v152);
    v157 = *(*(v192 + 56) + 8 * v152);

    v158 = closure #3 in implicit closure #6 in CurareInteractionSELFStream.retrieve()(v156, v157);
    v215 = v159;
    v216 = v158;

    *&v218 = v150;
    v161 = *(v150 + 16);
    v160 = *(v150 + 24);
    if (v161 >= v160 >> 1)
    {
      OUTLINED_FUNCTION_20_2(v160);
      v150 = v218;
    }

    *(v150 + 16) = v161 + 1;
    v162 = v150 + 16 * v161;
    *(v162 + 32) = v216;
    *(v162 + 40) = v215;
    v154 = *(v192 + 32);
    v163 = 1 << v154;
    if (v152 >= 1 << v154)
    {
      goto LABEL_139;
    }

    v164 = v24[v155];
    if ((v164 & (1 << v152)) == 0)
    {
      goto LABEL_140;
    }

    v151 = v212;
    if (*(v192 + 36) != v212)
    {
      goto LABEL_141;
    }

    v165 = v164 & (-2 << (v152 & 0x3F));
    if (v165)
    {
      v163 = __clz(__rbit64(v165)) | v152 & 0x7FFFFFFFFFFFFFC0;
      v166 = v197;
    }

    else
    {
      v167 = v155 << 6;
      v168 = (v194 + 8 * v155);
      v169 = v155 + 1;
      v166 = v197;
      while (v169 < (v163 + 63) >> 6)
      {
        v171 = *v168++;
        v170 = v171;
        v167 += 64;
        ++v169;
        if (v171)
        {
          v163 = __clz(__rbit64(v170)) + v167;
          break;
        }
      }
    }

    ++v153;
    v152 = v163;
    if (v153 == v166)
    {

      goto LABEL_122;
    }
  }

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
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
}

void *_sSD8grouping2bySDyxSay7ElementQyd__GGqd__n_xADKXEtKcAERs_STRd__lufCSo21SISchemaComponentNameV_Shy19SiriInstrumentation0E10IdentifierCGTt1g5095_s12FeatureStore27CurareInteractionSELFStreamC8retrieveSDys11AnyHashableVSDyAFSayypGGGyYaKFSo21def3V19g19Instrumentation0J10I6CXEfU_Tf1nc_n(uint64_t a1)
{
  v37 = MEMORY[0x277D84F98];
  if ((a1 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    type metadata accessor for ComponentIdentifier();
    lazy protocol witness table accessor for type ComponentIdentifier and conformance NSObject(&lazy protocol witness table cache variable for type ComponentIdentifier and conformance NSObject, MEMORY[0x277D56708], MEMORY[0x277D85378]);
    Set.Iterator.init(_cocoa:)();
    a1 = v32;
    v1 = v33;
    v2 = v34;
    v3 = v35;
    v4 = v36;
  }

  else
  {
    v3 = 0;
    v5 = -1 << *(a1 + 32);
    v1 = a1 + 56;
    v2 = ~v5;
    v6 = -v5;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v4 = v7 & *(a1 + 56);
  }

  v8 = (v2 + 64) >> 6;
  v9 = MEMORY[0x277D84F98];
  v30 = a1;
  if (a1 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v10 = v3;
  v11 = v4;
  v12 = v3;
  if (v4)
  {
LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(a1 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v14)
    {
LABEL_28:
      outlined consume of Set<ComponentIdentifier>.Iterator._Variant(v30);
      return v9;
    }

    while (1)
    {
      v15 = ComponentIdentifier.componentName.getter();
      v17 = specialized __RawDictionaryStorage.find<A>(_:)(v15);
      v18 = v9[2];
      v19 = (v16 & 1) == 0;
      v20 = v18 + v19;
      if (__OFADD__(v18, v19))
      {
        break;
      }

      v21 = v16;
      if (v9[3] < v20)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, 1);
        v9 = v37;
        v22 = specialized __RawDictionaryStorage.find<A>(_:)(v15);
        if ((v21 & 1) != (v23 & 1))
        {
          goto LABEL_32;
        }

        v17 = v22;
      }

      if (v21)
      {
        v24 = (v9[7] + 8 * v17);
        MEMORY[0x223DD34A0]();
        if (*((*v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v25 = swift_allocObject();
        *(v25 + 16) = xmmword_2230931F0;
        *(v25 + 32) = v14;
        v9[(v17 >> 6) + 8] |= 1 << v17;
        *(v9[6] + 4 * v17) = v15;
        *(v9[7] + 8 * v17) = v25;
        v26 = v9[2];
        v27 = __OFADD__(v26, 1);
        v28 = v26 + 1;
        if (v27)
        {
          goto LABEL_31;
        }

        v9[2] = v28;
      }

      v3 = v12;
      v4 = v13;
      a1 = v30;
      if ((v30 & 0x8000000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for ComponentIdentifier();
        swift_dynamicCast();
        v14 = v31;
        v12 = v3;
        v13 = v4;
        if (v31)
        {
          continue;
        }
      }

      goto LABEL_28;
    }
  }

  else
  {
    while (1)
    {
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v12 >= v8)
      {
        goto LABEL_28;
      }

      v11 = *(v1 + 8 * v12);
      ++v10;
      if (v11)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  type metadata accessor for SISchemaComponentName();
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized Dictionary.subscript.getter(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v2)
  {
  }

  else
  {
    return 0;
  }
}

char *closure #3 in implicit closure #6 in CurareInteractionSELFStream.retrieve()(uint64_t a1, unint64_t a2)
{
  v24 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2();
  v8 = v7 - v6;
  v27 = SISchemaComponentName.description.getter();
  MEMORY[0x223DD3460](2112032, 0xE300000000000000);
  v25 = a2;
  v9 = specialized Array.count.getter(a2);
  v10 = MEMORY[0x277D84F90];
  if (!v9)
  {
LABEL_10:
    MEMORY[0x223DD34D0](v10, MEMORY[0x277D837D0]);

    v23 = OUTLINED_FUNCTION_13_2();
    MEMORY[0x223DD3460](v23);

    return v27;
  }

  v11 = v9;
  v26 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9 & ~(v9 >> 63), 0);
  if ((v11 & 0x8000000000000000) == 0)
  {
    v13 = 0;
    v10 = v26;
    v14 = (v4 + 8);
    do
    {
      if ((v25 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x223DD38A0](v13, v25);
      }

      else
      {
        v15 = *(v25 + 8 * v13 + 32);
      }

      v16 = v15;
      dispatch thunk of ComponentIdentifier.uuid.getter();
      v17 = UUID.uuidString.getter();
      v19 = v18;

      (*v14)(v8, v24);
      v21 = *(v26 + 16);
      v20 = *(v26 + 24);
      if (v21 >= v20 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
      }

      ++v13;
      *(v26 + 16) = v21 + 1;
      v22 = v26 + 16 * v21;
      *(v22 + 32) = v17;
      *(v22 + 40) = v19;
    }

    while (v11 != v13);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

id @nonobjc NSMutableArray.__allocating_init(object:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v2 = _bridgeAnythingToObjectiveC<A>(_:)();
  v3 = [swift_getObjCClassFromMetadata() arrayWithObject_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t @objc closure #1 in CurareInteractionSELFStream.retrieve()(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = @objc closure #1 in CurareInteractionSELFStream.retrieve();

  return CurareInteractionSELFStream.retrieve()();
}

uint64_t @objc closure #1 in CurareInteractionSELFStream.retrieve()()
{
  OUTLINED_FUNCTION_3_7();
  v2 = v0;
  OUTLINED_FUNCTION_27();
  v4 = v3;
  OUTLINED_FUNCTION_12();
  *v5 = v4;
  v7 = *(v6 + 16);
  v8 = *v1;
  OUTLINED_FUNCTION_7();
  *v9 = v8;

  if (v2)
  {
    v10 = _convertErrorToNSError(_:)();

    isa = 0;
    v12 = v10;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVSayypGGMd, &_sSDys11AnyHashableVSayypGGMR);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v10 = 0;
    v12 = isa;
  }

  v13 = *(v4 + 24);
  (v13)[2](v13, isa, v10);

  _Block_release(v13);
  OUTLINED_FUNCTION_23();

  return v14();
}

uint64_t _runTaskForBridgedAsyncMethod(_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = &_sIeghH_IeAgH_TRTATu;
  v9[5] = v8;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v6, &_sIeAgH_ytIeAgHr_TRTATu, v9);
}

id CurareInteractionSELFStream.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CurareInteractionSELFStream.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CurareInteractionSELFStream(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Int specialized RawRepresentable<>.hashValue.getter(Swift::UInt32 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, Swift::UInt32 a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance SISchemaComponentName@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = SISchemaComponentName.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t _sIeghH_IeAgH_TR(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return v6();
}

uint64_t _sIeAgH_ytIeAgHr_TR(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = partial apply for closure #1 in closure #1 in static FeatureStoreService.streamEvents<A>();

  return v7();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v22 - v10;
  outlined init with copy of InstrumentationStreamsProviderProtocol?(a3, v22 - v10, &_sScPSgMd, &_sScPSgMR);
  v12 = type metadata accessor for TaskPriority();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    outlined destroy of InstrumentationStreamsProviderProtocol?(v11, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a5 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = dispatch thunk of Actor.unownedExecutor.getter();
    v15 = v14;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v16 = String.utf8CString.getter() + 32;
      v17 = swift_allocObject();
      *(v17 + 16) = a4;
      *(v17 + 24) = a5;

      if (v15 | v13)
      {
        v23[0] = 0;
        v23[1] = 0;
        v18 = v23;
        v23[2] = v13;
        v23[3] = v15;
      }

      else
      {
        v18 = 0;
      }

      v22[1] = 7;
      v22[2] = v18;
      v22[3] = v16;
      v20 = swift_task_create();

      outlined destroy of InstrumentationStreamsProviderProtocol?(a3, &_sScPSgMd, &_sScPSgMR);

      return v20;
    }
  }

  else
  {
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of InstrumentationStreamsProviderProtocol?(a3, &_sScPSgMd, &_sScPSgMR);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

Swift::Int specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo21SISchemaComponentNameVSay19SiriInstrumentation0D10IdentifierCGGMd, &_ss18_DictionaryStorageCySo21SISchemaComponentNameVSay19SiriInstrumentation0D10IdentifierCGGMR);
  v30 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = result + 64;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v29 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = *(*(v5 + 48) + 4 * v18);
    v20 = *(*(v5 + 56) + 8 * v18);
    if ((v30 & 1) == 0)
    {
    }

    Hasher.init(_seed:)();
    Hasher._combine(_:)(v19);
    result = Hasher._finalize()();
    v21 = -1 << *(v7 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    *(*(v7 + 48) + 4 * v24) = v19;
    *(*(v7 + 56) + 8 * v24) = v20;
    ++*(v7 + 16);
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v14 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = v9;
  v15 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVys11AnyHashableVypGMd, _ss17_NativeDictionaryVys11AnyHashableVypGMR);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v13))
  {
    goto LABEL_5;
  }

  v16 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v15 & 1) != (v17 & 1))
  {
LABEL_11:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v14 = v16;
LABEL_5:
  v18 = *v4;
  if (v15)
  {
    v19 = (v18[7] + 32 * v14);
    __swift_destroy_boxed_opaque_existential_1(v19);

    return outlined init with take of Any(a1, v19);
  }

  else
  {
    outlined init with copy of AnyHashable(a2, v21);
    return specialized _NativeDictionary._insert(at:key:value:)(v14, v21, a1, v18);
  }
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = outlined init with take of Any(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(int a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

uint64_t type metadata accessor for CurareInteractionSELFStream(uint64_t a1)
{
  result = type metadata singleton initialization cache for CurareInteractionSELFStream;
  if (!type metadata singleton initialization cache for CurareInteractionSELFStream)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of InstrumentationStreamsProviderProtocol(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t outlined assign with take of InstrumentationStreamsProviderProtocol?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26AIMLInstrumentationStreams015InstrumentationB16ProviderProtocol_pSgMd, &_s26AIMLInstrumentationStreams015InstrumentationB16ProviderProtocol_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x223DD4390);
  }

  return result;
}

uint64_t outlined init with take of InstrumentationStreamsProviderProtocol(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t lazy protocol witness table accessor for type BookmarkablePublisher<EventGraph> and conformance BookmarkablePublisher<A>()
{
  result = lazy protocol witness table cache variable for type BookmarkablePublisher<EventGraph> and conformance BookmarkablePublisher<A>;
  if (!lazy protocol witness table cache variable for type BookmarkablePublisher<EventGraph> and conformance BookmarkablePublisher<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s11BiomePubSub21BookmarkablePublisherVy26AIMLInstrumentationStreams10EventGraphCGMd, &_s11BiomePubSub21BookmarkablePublisherVy26AIMLInstrumentationStreams10EventGraphCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BookmarkablePublisher<EventGraph> and conformance BookmarkablePublisher<A>);
  }

  return result;
}

uint64_t type metadata accessor for NSMutableArray(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t type metadata completion function for CurareInteractionSELFStream(uint64_t a1)
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

uint64_t dispatch thunk of CurareInteractionSELFStream.retrieve()()
{
  OUTLINED_FUNCTION_3_7();
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x90);
  v6 = (v1 + *v1);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_4(v2);
  *v3 = v4;
  v3[1] = dispatch thunk of CurareInteractionSELFStream.retrieve();

  return v6();
}

{
  OUTLINED_FUNCTION_6_2();
  v2 = v1;
  OUTLINED_FUNCTION_27();
  v3 = *v0;
  OUTLINED_FUNCTION_7();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t partial apply for @objc closure #1 in CurareInteractionSELFStream.retrieve()()
{
  OUTLINED_FUNCTION_3_7();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_4(v3);
  *v4 = v5;
  v4[1] = partial apply for closure #1 in closure #1 in static FeatureStoreService.streamEvents<A>();

  return @objc closure #1 in CurareInteractionSELFStream.retrieve()(v1, v2);
}

uint64_t _sIeghH_IeAgH_TRTA()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_4(v0);
  *v1 = v2;
  v1[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;
  v3 = OUTLINED_FUNCTION_13_2();

  return v4(v3);
}

uint64_t objectdestroy_12Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t _sIeAgH_ytIeAgHr_TRTA(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_11_4(v6);
  *v7 = v8;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return _sIeAgH_ytIeAgHr_TR(a1, v3, v4, v5);
}

uint64_t outlined init with copy of InstrumentationStreamsProviderProtocol?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_2_1();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t outlined destroy of InstrumentationStreamsProviderProtocol?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_2_1();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TA()
{
  OUTLINED_FUNCTION_3_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_4(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_10_3(v1);

  return v4(v3);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TA_26()
{
  OUTLINED_FUNCTION_3_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_4(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_10_3(v1);

  return v4(v3);
}

void type metadata accessor for SISchemaComponentName()
{
  if (!lazy cache variable for type metadata for SISchemaComponentName)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for SISchemaComponentName);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ComponentIdentifier and conformance NSObject(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *OUTLINED_FUNCTION_20_2@<X0>(unint64_t a1@<X8>)
{

  return specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((a1 > 1), v1, 1);
}

uint64_t outlined init with copy of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t key path setter for StreamQuery.startDate : StreamQuery(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of Date?(a1, &v8 - v5);
  return (*((*MEMORY[0x277D85000] & **a2) + 0x78))(v6);
}

uint64_t variable initialization expression of StreamQuery.endDate()
{
  type metadata accessor for Date();
  OUTLINED_FUNCTION_25();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

Class @objc StreamQuery.startDate.getter(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  a3(v5);
  v8 = type metadata accessor for Date();
  isa = 0;
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(*(v8 - 8) + 8))(v7, v8);
  }

  return isa;
}

uint64_t StreamQuery.startDate.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return outlined init with copy of Date?(v2 + v4, a2);
}

void @objc StreamQuery.startDate.setter(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v13 - v8;
  if (a3)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = type metadata accessor for Date();
    v11 = 0;
  }

  else
  {
    v10 = type metadata accessor for Date();
    v11 = 1;
  }

  __swift_storeEnumTagSinglePayload(v9, v11, 1, v10);
  v12 = a1;
  a4(v9);
}

uint64_t StreamQuery.startDate.setter(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  outlined assign with take of Date?(a1, v2 + v4);
  return swift_endAccess();
}

uint64_t key path setter for StreamQuery.endDate : StreamQuery(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of Date?(a1, &v8 - v5);
  return (*((*MEMORY[0x277D85000] & **a2) + 0x90))(v6);
}

uint64_t StreamQuery.interactionIds.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___FSFStreamQuery_interactionIds;
  OUTLINED_FUNCTION_4_6(v1 + OBJC_IVAR___FSFStreamQuery_interactionIds, v5);
  *(v1 + v3) = a1;
}

uint64_t key path getter for StreamQuery.interactionIds : StreamQuery@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xA0))();
  *a2 = result;
  return result;
}

uint64_t key path setter for StreamQuery.interactionIds : StreamQuery(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0xA8);

  return v2(v3);
}

uint64_t key path getter for StreamQuery.taskId : StreamQuery@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xB8))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for StreamQuery.taskId : StreamQuery(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x277D85000] & **a2) + 0xC0);

  return v4(v2, v3);
}

uint64_t StreamQuery.taskId.getter()
{
  v1 = (v0 + OBJC_IVAR___FSFStreamQuery_taskId);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t StreamQuery.taskId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___FSFStreamQuery_taskId);
  OUTLINED_FUNCTION_4_6(v5, v7);
  *v5 = a1;
  v5[1] = a2;
}

id StreamQuery.init(startDate:endDate:interactionIds:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR___FSFStreamQuery_startDate;
  v8 = type metadata accessor for Date();
  OUTLINED_FUNCTION_25();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v8);
  v12 = OBJC_IVAR___FSFStreamQuery_endDate;
  OUTLINED_FUNCTION_25();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v8);
  v16 = OBJC_IVAR___FSFStreamQuery_interactionIds;
  *&v3[OBJC_IVAR___FSFStreamQuery_interactionIds] = MEMORY[0x277D84F90];
  v17 = &v3[OBJC_IVAR___FSFStreamQuery_taskId];
  *v17 = 0;
  *(v17 + 1) = 0;
  OUTLINED_FUNCTION_2_11(&v3[v7], v18, v19, v20, v21, v22);
  outlined assign with copy of Date?(a1, &v3[v7]);
  swift_endAccess();
  OUTLINED_FUNCTION_2_11(&v3[v12], v23, v24, v25, v26, v27);
  outlined assign with copy of Date?(a2, &v3[v12]);
  swift_endAccess();
  OUTLINED_FUNCTION_4_6(&v3[v16], v32);
  *&v3[v16] = a3;

  OUTLINED_FUNCTION_4_6(v17, v31);
  *v17 = 0;
  *(v17 + 1) = 0;

  v30.receiver = v3;
  v30.super_class = type metadata accessor for StreamQuery(0);
  v28 = objc_msgSendSuper2(&v30, sel_init);
  outlined destroy of Date?(a2);
  outlined destroy of Date?(a1);
  return v28;
}

uint64_t outlined assign with copy of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for StreamQuery(uint64_t a1)
{
  result = type metadata singleton initialization cache for StreamQuery;
  if (!type metadata singleton initialization cache for StreamQuery)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id StreamQuery.init(startDate:endDate:interactionIds:taskId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = OBJC_IVAR___FSFStreamQuery_startDate;
  v12 = type metadata accessor for Date();
  OUTLINED_FUNCTION_25();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v12);
  v16 = OBJC_IVAR___FSFStreamQuery_endDate;
  OUTLINED_FUNCTION_25();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v12);
  v20 = OBJC_IVAR___FSFStreamQuery_interactionIds;
  *&v5[OBJC_IVAR___FSFStreamQuery_interactionIds] = MEMORY[0x277D84F90];
  v21 = &v5[OBJC_IVAR___FSFStreamQuery_taskId];
  *v21 = 0;
  *(v21 + 1) = 0;
  OUTLINED_FUNCTION_2_11(&v5[v11], v22, v23, v24, v25, v26);
  outlined assign with copy of Date?(a1, &v5[v11]);
  swift_endAccess();
  OUTLINED_FUNCTION_2_11(&v5[v16], v27, v28, v29, v30, v31);
  outlined assign with copy of Date?(a2, &v5[v16]);
  swift_endAccess();
  OUTLINED_FUNCTION_4_6(&v5[v20], v36);
  *&v5[v20] = a3;

  OUTLINED_FUNCTION_4_6(v21, v35);
  *v21 = a4;
  *(v21 + 1) = a5;

  v34.receiver = v5;
  v34.super_class = type metadata accessor for StreamQuery(0);
  v32 = objc_msgSendSuper2(&v34, sel_init);
  outlined destroy of Date?(a2);
  outlined destroy of Date?(a1);
  return v32;
}

uint64_t StreamQuery.description.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v0);
  _StringGuts.grow(_:)(72);
  MEMORY[0x223DD3460](0xD000000000000017, 0x8000000223094820);
  OUTLINED_FUNCTION_1_10();
  (*(v1 + 112))();
  v2 = String.init<A>(describing:)();
  MEMORY[0x223DD3460](v2);

  MEMORY[0x223DD3460](0x746144646E65202CLL, 0xEB00000000203A65);
  OUTLINED_FUNCTION_1_10();
  (*(v3 + 136))();
  v4 = String.init<A>(describing:)();
  MEMORY[0x223DD3460](v4);

  MEMORY[0x223DD3460](0xD000000000000013, 0x8000000223094840);
  OUTLINED_FUNCTION_1_10();
  (*(v5 + 160))();
  v6 = MEMORY[0x223DD34D0]();
  v8 = v7;

  MEMORY[0x223DD3460](v6, v8);

  MEMORY[0x223DD3460](0x64496B736174202CLL, 0xEA0000000000203ALL);
  OUTLINED_FUNCTION_1_10();
  (*(v9 + 184))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v10 = String.init<A>(describing:)();
  MEMORY[0x223DD3460](v10);

  MEMORY[0x223DD3460](41, 0xE100000000000000);
  return 0;
}

id StreamQuery.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id StreamQuery.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StreamQuery(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void type metadata completion function for StreamQuery(uint64_t a1)
{
  type metadata accessor for Date?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Date?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Date?)
  {
    type metadata accessor for Date();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Date?);
    }
  }
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return MEMORY[0x2821FDB38]();
}

{
  return MEMORY[0x2821FDBA0]();
}