const char *one-time initialization function for envValue()
{
  result = getenv("SWIFTUI_GESTURE_CONTAINER");
  if (result)
  {
    result = atoi(result);
    v1 = result != 0;
  }

  else
  {
    v1 = 2;
  }

  static GestureContainerFeature.envValue = v1;
  return result;
}

uint64_t one-time initialization function for userDefaultsValue()
{
  result = closure #1 in variable initialization expression of static GestureContainerFeature.userDefaultsValue();
  static GestureContainerFeature.userDefaultsValue = result;
  return result;
}

{
  result = closure #1 in variable initialization expression of static UniversalGestureRelationshipsFeature.userDefaultsValue();
  static UniversalGestureRelationshipsFeature.userDefaultsValue = result;
  return result;
}

uint64_t closure #1 in variable initialization expression of static GestureContainerFeature.userDefaultsValue()
{
  v0 = objc_opt_self();
  v1 = [v0 standardUserDefaults];
  v2 = MEMORY[0x193ABEC20](0xD000000000000023, 0x800000018DD79740);
  v3 = [v1 objectForKey_];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(&v8, v9);
    outlined destroy of Any?(v9);
    v4 = [v0 standardUserDefaults];
    v5 = MEMORY[0x193ABEC20](0xD000000000000023, 0x800000018DD79740);
    v6 = [v4 BOOLForKey_];
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    outlined destroy of Any?(v9);
    return 2;
  }

  return v6;
}

void lazy protocol witness table accessor for type GestureContainerFeature.IOSFeature and conformance GestureContainerFeature.IOSFeature()
{
  if (!lazy protocol witness table cache variable for type GestureContainerFeature.IOSFeature and conformance GestureContainerFeature.IOSFeature)
  {
    swift_getWitnessTable(protocol conformance descriptor for GestureContainerFeature.IOSFeature, &type metadata for GestureContainerFeature.IOSFeature, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GestureContainerFeature.IOSFeature and conformance GestureContainerFeature.IOSFeature);
  }
}

uint64_t initializeWithTake for ContentPathObservers.Observer(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakTakeInit();
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(uint64_t, void), uint64_t (*a6)(uint64_t, void *), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = v7;
  v14 = *v7;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      v23 = v15;
      a4();
      v15 = v23;
      goto LABEL_8;
    }

    a5(v20, a3 & 1);
    v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v21 & 1) != (v24 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v25 = *v10;
  if (v21)
  {
    v26 = (*(v25 + 56) + 40 * v15);
    __swift_destroy_boxed_opaque_existential_1(v26);

    return a6(a1, v26);
  }

  else
  {

    return a7(v15, a2, a1, v25);
  }
}

void type metadata accessor for _DictionaryStorage<ObjectIdentifier, ScrollStateRequest>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    type metadata accessor for AnyTrackedValue(255, a3, a4);
    v5 = type metadata accessor for _DictionaryStorage();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5, void (*a6)(uint64_t, _BYTE *))
{
  v8 = v6;
  v9 = a2;
  v10 = *v6;
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, ScrollStateRequest>(0, a3, a4, a5);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v10 + 16))
  {
    v35 = v8;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(*(v10 + 48) + 8 * v24);
      v26 = *(v10 + 56) + 40 * v24;
      if (v9)
      {
        a6(v26, v36);
      }

      else
      {
        outlined init with copy of AnyTrackedValue(v26, v36);
      }

      result = MEMORY[0x193AC1170](*(v12 + 40), v25);
      v27 = -1 << *(v12 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v19 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v19 + 8 * v29);
          if (v33 != -1)
          {
            v20 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v28) & ~*(v19 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      *(*(v12 + 48) + 8 * v20) = v25;
      result = (a6)(v36, *(v12 + 56) + 40 * v20);
      ++*(v12 + 16);
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v9 & 1) == 0)
    {

      v8 = v35;
      goto LABEL_34;
    }

    v34 = 1 << *(v10 + 32);
    v8 = v35;
    if (v34 >= 64)
    {
      bzero((v10 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v34;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v8 = v12;
  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = a5(a3, a4[7] + 40 * a1);
  v7 = a4[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v9;
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  return specialized _NativeDictionary._insert(at:key:value:)(a1, a2, a3, a4, outlined init with take of _ViewList_Elements);
}

{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  type metadata accessor for (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)(0);
  result = outlined init with take of ResolvableTextSegmentAttribute.Value(a3, v7 + *(*(v8 - 8) + 72) * a1, type metadata accessor for (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList));
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

{
  return specialized _NativeDictionary._insert(at:key:value:)(a1, a2, a3, a4, outlined init with take of AnyTrackedValue);
}

{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = outlined init with take of NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>(a3, a4[7] + 8 * a1, &lazy cache variable for type metadata for WeakBox<AnyLocationBase>, type metadata accessor for AnyLocationBase, type metadata accessor for WeakBox, type metadata accessor for [ResolvableTextSegmentAttribute.Value]);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for NamedImage.BitmapKey(0);
  outlined init with take of ResolvableTextSegmentAttribute.Value(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for NamedImage.BitmapKey);
  result = outlined init with take of NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>(a3, a4[7] + 96 * a1, &lazy cache variable for type metadata for NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>, &type metadata for NamedImage.WeakOrStrongImageContents, type metadata accessor for NamedImage._BitmapInfo, _sypSgMaTm_1);
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for NamedImage.VectorKey(0);
  outlined init with take of ResolvableTextSegmentAttribute.Value(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for NamedImage.VectorKey);
  result = outlined init with take of NamedImage.VectorInfo(a3, a4[7] + 88 * a1);
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for URL();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = outlined init with take of ResolvableTextSegmentAttribute.Value(a3, a4[7] + 8 * a1, type metadata accessor for WeakBox<CUICatalog>);
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

long double Spring.duration.getter()
{
  v1 = -v0->f64[0];
  if (v0->f64[0] >= 0.0)
  {
    v1 = v0->f64[0];
  }

  v2.f64[1] = v0->f64[1];
  v2.f64[0] = v1;
  return 6.28318531 / sqrt(vaddvq_f64(vmulq_f64(*v0, v2)));
}

void *one-time initialization function for cache()
{
  type metadata accessor for ObjectCache<Color.Resolved, CGColorRef>(0, &lazy cache variable for type metadata for ObjectCache<Color.Resolved, CGColorRef>, lazy protocol witness table accessor for type Color.Resolved and conformance Color.Resolved, &type metadata for Color.Resolved);
  swift_allocObject();
  result = specialized ObjectCache.init(constructor:)(closure #1 in variable initialization expression of static Color.Resolved.cache, 0);
  static Color.Resolved.cache = result;
  return result;
}

{
  type metadata accessor for ObjectCache<Color.Resolved, CGColorRef>(0, &lazy cache variable for type metadata for ObjectCache<Color.ResolvedHDR, CGColorRef>, lazy protocol witness table accessor for type Color.ResolvedHDR and conformance Color.ResolvedHDR, &type metadata for Color.ResolvedHDR);
  swift_allocObject();
  result = specialized ObjectCache.init(constructor:)(closure #1 in variable initialization expression of static Color.ResolvedHDR.cache, 0);
  static Color.ResolvedHDR.cache = result;
  return result;
}

{
  type metadata accessor for ObjectCache<Color.Resolved, NSObject>(0);
  swift_allocObject();
  result = specialized ObjectCache.init(constructor:)(closure #1 in variable initialization expression of static Color.Resolved.cache, 0);
  static Color.Resolved.cache = result;
  return result;
}

void lazy protocol witness table accessor for type Color.Resolved and conformance Color.Resolved()
{
  if (!lazy protocol witness table cache variable for type Color.Resolved and conformance Color.Resolved)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.Resolved, &type metadata for Color.Resolved, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.Resolved and conformance Color.Resolved);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.Resolved and conformance Color.Resolved)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.Resolved, &type metadata for Color.Resolved, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.Resolved and conformance Color.Resolved);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.Resolved and conformance Color.Resolved)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.Resolved, &type metadata for Color.Resolved, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.Resolved and conformance Color.Resolved);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.Resolved and conformance Color.Resolved)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.Resolved, &type metadata for Color.Resolved, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.Resolved and conformance Color.Resolved);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.Resolved and conformance Color.Resolved)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.Resolved, &type metadata for Color.Resolved, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.Resolved and conformance Color.Resolved);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.Resolved and conformance Color.Resolved)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.Resolved, &type metadata for Color.Resolved, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.Resolved and conformance Color.Resolved);
  }
}

void *specialized ObjectCache.init(constructor:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  a3(0);
  v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v7 + 16) = 32;
  type metadata accessor for URLResourceValues?(0, a4, a5, type metadata accessor for AtomicBuffer);
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0u;
  *(v7 + 64) = 0;
  *(v7 + 72) = 0u;
  *(v7 + 88) = 0u;
  *(v7 + 104) = 0;
  *(v7 + 112) = 0u;
  *(v7 + 128) = 0u;
  *(v7 + 144) = 0;
  *(v7 + 152) = 0u;
  *(v7 + 168) = 0u;
  *(v7 + 184) = 0;
  *(v7 + 192) = 0u;
  *(v7 + 208) = 0u;
  *(v7 + 224) = 0;
  *(v7 + 232) = 0u;
  *(v7 + 248) = 0u;
  *(v7 + 264) = 0;
  *(v7 + 304) = 0;
  *(v7 + 272) = 0u;
  *(v7 + 288) = 0u;
  *(v7 + 344) = 0;
  *(v7 + 312) = 0u;
  *(v7 + 328) = 0u;
  *(v7 + 384) = 0;
  *(v7 + 352) = 0u;
  *(v7 + 368) = 0u;
  *(v7 + 424) = 0;
  *(v7 + 392) = 0u;
  *(v7 + 408) = 0u;
  *(v7 + 464) = 0;
  *(v7 + 432) = 0u;
  *(v7 + 448) = 0u;
  *(v7 + 472) = 0u;
  *(v7 + 488) = 0u;
  *(v7 + 504) = 0;
  *(v7 + 544) = 0;
  *(v7 + 512) = 0u;
  *(v7 + 528) = 0u;
  *(v7 + 584) = 0;
  *(v7 + 552) = 0u;
  *(v7 + 568) = 0u;
  *(v7 + 624) = 0;
  *(v7 + 592) = 0u;
  *(v7 + 608) = 0u;
  *(v7 + 664) = 0;
  *(v7 + 632) = 0u;
  *(v7 + 648) = 0u;
  *(v7 + 704) = 0;
  *(v7 + 672) = 0u;
  *(v7 + 688) = 0u;
  *(v7 + 744) = 0;
  *(v7 + 712) = 0u;
  *(v7 + 728) = 0u;
  *(v7 + 784) = 0;
  *(v7 + 752) = 0u;
  *(v7 + 768) = 0u;
  *(v7 + 824) = 0;
  *(v7 + 792) = 0u;
  *(v7 + 808) = 0u;
  *(v7 + 864) = 0;
  *(v7 + 832) = 0u;
  *(v7 + 848) = 0u;
  *(v7 + 904) = 0;
  *(v7 + 872) = 0u;
  *(v7 + 888) = 0u;
  *(v7 + 944) = 0;
  *(v7 + 912) = 0u;
  *(v7 + 928) = 0u;
  *(v7 + 984) = 0;
  *(v7 + 952) = 0u;
  *(v7 + 968) = 0u;
  *(v7 + 1024) = 0;
  *(v7 + 992) = 0u;
  *(v7 + 1008) = 0u;
  *(v7 + 1064) = 0;
  *(v7 + 1032) = 0u;
  *(v7 + 1048) = 0u;
  *(v7 + 1104) = 0;
  *(v7 + 1088) = 0u;
  *(v7 + 1072) = 0u;
  *(v7 + 1144) = 0;
  *(v7 + 1112) = 0u;
  *(v7 + 1128) = 0u;
  *(v7 + 1184) = 0;
  *(v7 + 1168) = 0u;
  *(v7 + 1152) = 0u;
  *(v7 + 1224) = 0;
  *(v7 + 1192) = 0u;
  *(v7 + 1208) = 0u;
  *(v7 + 1264) = 0;
  *(v7 + 1248) = 0u;
  *(v7 + 1232) = 0u;
  *(v7 + 1304) = 0;
  *(v7 + 1272) = 0u;
  *(v7 + 1288) = 0u;
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = v7;
  *(v8 + 32) = 0;
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = v8;
  return v11;
}

uint64_t type metadata completion function for ObjectCache.Item(uint64_t a1)
{
  swift_getTupleTypeMetadata3();
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void lazy protocol witness table accessor for type Material.Layer.SDFLayer.Options and conformance Material.Layer.SDFLayer.Options()
{
  if (!lazy protocol witness table cache variable for type Material.Layer.SDFLayer.Options and conformance Material.Layer.SDFLayer.Options)
  {
    swift_getWitnessTable(protocol conformance descriptor for Material.Layer.SDFLayer.Options, &type metadata for Material.Layer.SDFLayer.Options, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Material.Layer.SDFLayer.Options and conformance Material.Layer.SDFLayer.Options);
  }
}

{
  if (!lazy protocol witness table cache variable for type Material.Layer.SDFLayer.Options and conformance Material.Layer.SDFLayer.Options)
  {
    swift_getWitnessTable(protocol conformance descriptor for Material.Layer.SDFLayer.Options, &type metadata for Material.Layer.SDFLayer.Options, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Material.Layer.SDFLayer.Options and conformance Material.Layer.SDFLayer.Options);
  }
}

{
  if (!lazy protocol witness table cache variable for type Material.Layer.SDFLayer.Options and conformance Material.Layer.SDFLayer.Options)
  {
    swift_getWitnessTable(protocol conformance descriptor for Material.Layer.SDFLayer.Options, &type metadata for Material.Layer.SDFLayer.Options, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Material.Layer.SDFLayer.Options and conformance Material.Layer.SDFLayer.Options);
  }
}

{
  if (!lazy protocol witness table cache variable for type Material.Layer.SDFLayer.Options and conformance Material.Layer.SDFLayer.Options)
  {
    swift_getWitnessTable(protocol conformance descriptor for Material.Layer.SDFLayer.Options, &type metadata for Material.Layer.SDFLayer.Options, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Material.Layer.SDFLayer.Options and conformance Material.Layer.SDFLayer.Options);
  }
}

uint64_t destroy for Material.StatefulContext(void *a1)
{
}

uint64_t outlined copy of Material.Layer.Storage(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 2)
  {
  }

  if (a5 == 1)
  {
  }

  return v5;
}

uint64_t getEnumTag for Material.Layer.SDFLayer.GroupType(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t initializeWithCopy for GraphicsFilter(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  v9 = a2[6];
  v10 = a2[7];
  v11 = a2[8];
  v13 = a2[9];
  v14 = a2[10];
  v15 = a2[11];
  v16 = a2[12];
  v17 = a2[13];
  v18 = a2[14];
  v19 = *(a2 + 30);
  outlined copy of GraphicsFilter(*a2, v4, v5, v6, v7, v8, v9, v10, v11, v13, v14, v15, v16, v17, v18, v19);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  *(a1 + 72) = v13;
  *(a1 + 80) = v14;
  *(a1 + 88) = v15;
  *(a1 + 96) = v16;
  *(a1 + 104) = v17;
  *(a1 + 112) = v18;
  *(a1 + 120) = v19;
  return a1;
}

void outlined copy of GraphicsFilter(id result, id a2, id a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned int a16)
{
  v21 = (a16 >> 25) & 0x1E | (a16 >> 23) & 1;
  if (v21 <= 17)
  {
    if (v21 == 1)
    {
      v34 = a14;
      v35 = a15;
      v32 = a12;
      v33 = a13;
      v31 = a11;
      v36 = a16 & 0xC37FFFFF;
      a2 = a3;
      v23 = a4;
      v24 = a5;
      v25 = a6;
      v26 = a7;
      v27 = a8;
      v28 = a9;
      v29 = a10;
      goto LABEL_11;
    }

    if (v21 != 2 && v21 != 3)
    {
      return;
    }

LABEL_10:
    v34 = a13;
    v35 = a14;
    v32 = a11;
    v33 = a12;
    v31 = a10;
    v36 = a15;
    v23 = a3;
    v24 = a4;
    v25 = a5;
    v26 = a6;
    v27 = a7;
    v28 = a8;
    v29 = a9;
LABEL_11:
    outlined copy of VariableBlurStyle.Mask(a2, v23, v24, v25, v26, v27, v28, v29, v31, v32, v33, v34, v35, v36);
    return;
  }

  switch(v21)
  {
    case 18:
      v30 = result;
      return;
    case 21:
      goto LABEL_10;
    case 22:

      break;
  }
}

uint64_t _s7SwiftUI14GraphicsFilterOWOg(_DWORD *a1)
{
  v1 = (a1[30] >> 25) & 0x1E | (a1[30] >> 23) & 1;
  if (v1 <= 0x16)
  {
    return v1;
  }

  else
  {
    return (*a1 + 23);
  }
}

void outlined consume of GraphicsFilter(void *a1, id a2, id a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned int a16)
{
  v21 = (a16 >> 25) & 0x1E | (a16 >> 23) & 1;
  if (v21 <= 17)
  {
    if (v21 == 1)
    {
      v33 = a14;
      v34 = a15;
      v31 = a12;
      v32 = a13;
      v30 = a11;
      v35 = a16 & 0xC37FFFFF;
      a2 = a3;
      v23 = a4;
      v24 = a5;
      v25 = a6;
      v26 = a7;
      v27 = a8;
      v28 = a9;
      v29 = a10;
      goto LABEL_11;
    }

    if (v21 != 2 && v21 != 3)
    {
      return;
    }

LABEL_10:
    v33 = a13;
    v34 = a14;
    v31 = a11;
    v32 = a12;
    v30 = a10;
    v35 = a15;
    v23 = a3;
    v24 = a4;
    v25 = a5;
    v26 = a6;
    v27 = a7;
    v28 = a8;
    v29 = a9;
LABEL_11:
    outlined consume of VariableBlurStyle.Mask(a2, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35);
    return;
  }

  switch(v21)
  {
    case 18:

      return;
    case 21:
      goto LABEL_10;
    case 22:

      break;
  }
}

void Material.Layer.Filter.contents.getter(_OWORD *a1@<X8>)
{
  v3 = v1[5];
  v4 = v1[3];
  v20 = v1[4];
  v21 = v3;
  v5 = v1[5];
  v22[0] = v1[6];
  *(v22 + 12) = *(v1 + 108);
  v6 = v1[1];
  v17[0] = *v1;
  v17[1] = v6;
  v7 = v1[3];
  v9 = *v1;
  v8 = v1[1];
  v18 = v1[2];
  v19 = v7;
  v13[4] = v20;
  v13[5] = v5;
  v14[0] = v1[6];
  *(v14 + 12) = *(v1 + 108);
  v13[0] = v9;
  v13[1] = v8;
  v13[2] = v18;
  v13[3] = v4;
  outlined init with copy of GraphicsFilter(v17, v15);
  Material.Layer.Filter.Contents.init(_:)(v13, v15);
  if (v16[28] == 255)
  {
    __break(1u);
  }

  else
  {
    v10 = v15[5];
    a1[4] = v15[4];
    a1[5] = v10;
    a1[6] = *v16;
    *(a1 + 109) = *&v16[13];
    v11 = v15[1];
    *a1 = v15[0];
    a1[1] = v11;
    v12 = v15[3];
    a1[2] = v15[2];
    a1[3] = v12;
  }
}

double Material.Layer.Filter.Contents.init(_:)@<D0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[5];
  v53 = a1[4];
  v54 = v3;
  v55[0] = a1[6];
  v4 = v55[0];
  *(v55 + 12) = *(a1 + 108);
  v5 = a1[1];
  v50[0] = *a1;
  v50[1] = v5;
  v6 = a1[3];
  v51 = a1[2];
  v52 = v6;
  *(v57 + 12) = *(v55 + 12);
  v56[5] = v3;
  v57[0] = v4;
  v56[3] = v6;
  v56[4] = v53;
  v56[1] = v5;
  v56[2] = v51;
  v56[0] = v50[0];
  v7 = _s7SwiftUI14GraphicsFilterOWOg(v56);
  v8 = 0;
  switch(v7)
  {
    case 0:
      v9 = _s7SwiftUI14GraphicsFilterOWOj6_(v56);
      v10 = *(v9 + 8);
      v11 = *(v9 + 9);
      *&v43 = *v9;
      BYTE8(v43) = v10;
      BYTE9(v43) = v11;
      v8 = 5;
      goto LABEL_12;
    case 1:
      v32 = _s7SwiftUI14GraphicsFilterOWOj6_(v56);
      v33 = v32[5];
      v47 = v32[4];
      v48 = v33;
      *v49 = v32[6];
      *&v49[12] = *(v32 + 108);
      v34 = v32[1];
      v43 = *v32;
      v44 = v34;
      v18 = v32[2];
      v19 = v32[3];
      v8 = 7;
      goto LABEL_11;
    case 2:
      v28 = _s7SwiftUI14GraphicsFilterOWOj6_(v56);
      v29 = *(v28 + 80);
      v47 = *(v28 + 64);
      v48 = v29;
      *v49 = *(v28 + 96);
      *&v49[16] = *(v28 + 112);
      v30 = *(v28 + 16);
      v43 = *v28;
      v44 = v30;
      v18 = *(v28 + 32);
      v19 = *(v28 + 48);
      v8 = 8;
      goto LABEL_11;
    case 3:
      v15 = _s7SwiftUI14GraphicsFilterOWOj6_(v56);
      v16 = *(v15 + 80);
      v47 = *(v15 + 64);
      v48 = v16;
      *v49 = *(v15 + 96);
      *&v49[16] = *(v15 + 112);
      v17 = *(v15 + 16);
      v43 = *v15;
      v44 = v17;
      v18 = *(v15 + 32);
      v19 = *(v15 + 48);
      v8 = 9;
      goto LABEL_11;
    case 6:
      v21 = _s7SwiftUI14GraphicsFilterOWOj6_(v56);
      v22 = *(v21 + 80);
      v23 = *(v21 + 48);
      v45 = *(v21 + 32);
      v46 = v23;
      v47 = *(v21 + 64);
      v24 = *(v21 + 16);
      v43 = *v21;
      v44 = v24;
      LOBYTE(v48) = v22;
      v8 = 4;
      goto LABEL_12;
    case 10:
      *&v43 = *_s7SwiftUI14GraphicsFilterOWOj6_(v56);
      v8 = 3;
      goto LABEL_12;
    case 11:
      *&v43 = *_s7SwiftUI14GraphicsFilterOWOj6_(v56);
      v8 = 1;
      goto LABEL_12;
    case 16:
      v41 = _s7SwiftUI14GraphicsFilterOWOj6_(v56);
      v42 = *(v41 + 16);
      v43 = *v41;
      LODWORD(v44) = v42;
      v8 = 6;
      goto LABEL_12;
    case 17:
      v38 = _s7SwiftUI14GraphicsFilterOWOj6_(v56);
      v39 = v38[1];
      v43 = *v38;
      v44 = v39;
      v40 = v38[3];
      v45 = v38[2];
      v46 = v40;
      v8 = 2;
      goto LABEL_12;
    case 20:
      v12 = _s7SwiftUI14GraphicsFilterOWOj6_(v56);
      v13 = *(v12 + 8);
      v14 = *(v12 + 9);
      *&v43 = *v12;
      BYTE8(v43) = v13;
      BYTE9(v43) = v14;
      v8 = 10;
      goto LABEL_12;
    case 21:
      v25 = _s7SwiftUI14GraphicsFilterOWOj6_(v56);
      v26 = *(v25 + 80);
      v47 = *(v25 + 64);
      v48 = v26;
      *v49 = *(v25 + 96);
      *&v49[16] = *(v25 + 112);
      v27 = *(v25 + 16);
      v43 = *v25;
      v44 = v27;
      v18 = *(v25 + 32);
      v19 = *(v25 + 48);
      v8 = 11;
LABEL_11:
      v45 = v18;
      v46 = v19;
      goto LABEL_12;
    case 22:
      v20 = _s7SwiftUI14GraphicsFilterOWOj6_(v56);
      (*(**v20 + 80))(&v43);
      outlined destroy of GraphicsFilter(v50);
      v8 = 12;
      goto LABEL_12;
    case 23:
LABEL_12:
      v49[28] = v8;
      v35 = v48;
      *(a2 + 64) = v47;
      *(a2 + 80) = v35;
      *(a2 + 96) = *v49;
      v36 = v44;
      *a2 = v43;
      *(a2 + 16) = v36;
      v37 = v46;
      *(a2 + 32) = v45;
      *(a2 + 48) = v37;
      result = *&v49[13];
      *(a2 + 109) = *&v49[13];
      break;
    default:
      outlined destroy of GraphicsFilter(v50);
      *(a2 + 112) = 0;
      result = 0.0;
      *(a2 + 80) = 0u;
      *(a2 + 96) = 0u;
      *(a2 + 48) = 0u;
      *(a2 + 64) = 0u;
      *(a2 + 16) = 0u;
      *(a2 + 32) = 0u;
      *a2 = 0u;
      *(a2 + 124) = -1;
      *(a2 + 120) = 0;
      break;
  }

  return result;
}

uint64_t _AnyHashableBox.anyValue.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(*v1 + 152);
  v3 = *v1;
  v4 = *(*v1 + 136);
  a1[3] = v4;
  a1[4] = *(v3 + 144);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v6 = *(*(v4 - 8) + 16);

  return v6(boxed_opaque_existential_1, &v1[v2], v4);
}

uint64_t getEnumTag for Material.Layer.Filter.Contents(uint64_t a1)
{
  result = *(a1 + 124);
  if (result >= 0xD)
  {
    return (*a1 + 13);
  }

  return result;
}

void *specialized ObjectCache.init(constructor:)(uint64_t a1, uint64_t a2)
{
  return specialized ObjectCache.init(constructor:)(a1, a2, type metadata accessor for ObjectCache<Color.Resolved, CGColorRef>.Item, &lazy cache variable for type metadata for AtomicBuffer<ObjectCache<Color.Resolved, CGColorRef>.Data>, type metadata accessor for ObjectCache<Color.Resolved, CGColorRef>.Data);
}

{
  type metadata accessor for ObjectCache<Color.ResolvedHDR, CGColorRef>.Item(0);
  v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v5 + 16) = 32;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *(v5 + 60) = 0u;
  *(v5 + 80) = 0u;
  *(v5 + 96) = 0u;
  *(v5 + 108) = 0u;
  *(v5 + 128) = 0u;
  *(v5 + 144) = 0u;
  *(v5 + 156) = 0u;
  *(v5 + 176) = 0u;
  *(v5 + 192) = 0u;
  *(v5 + 204) = 0u;
  *(v5 + 224) = 0u;
  *(v5 + 240) = 0u;
  *(v5 + 252) = 0u;
  *(v5 + 272) = 0u;
  *(v5 + 288) = 0u;
  *(v5 + 300) = 0u;
  *(v5 + 348) = 0u;
  *(v5 + 320) = 0u;
  *(v5 + 336) = 0u;
  *(v5 + 396) = 0u;
  *(v5 + 368) = 0u;
  *(v5 + 384) = 0u;
  *(v5 + 444) = 0u;
  *(v5 + 416) = 0u;
  *(v5 + 432) = 0u;
  *(v5 + 492) = 0u;
  *(v5 + 464) = 0u;
  *(v5 + 480) = 0u;
  *(v5 + 540) = 0u;
  *(v5 + 512) = 0u;
  *(v5 + 528) = 0u;
  *(v5 + 560) = 0u;
  *(v5 + 576) = 0u;
  *(v5 + 588) = 0u;
  *(v5 + 636) = 0u;
  *(v5 + 608) = 0u;
  *(v5 + 624) = 0u;
  *(v5 + 684) = 0u;
  *(v5 + 656) = 0u;
  *(v5 + 672) = 0u;
  *(v5 + 732) = 0u;
  *(v5 + 704) = 0u;
  *(v5 + 720) = 0u;
  *(v5 + 780) = 0u;
  *(v5 + 752) = 0u;
  *(v5 + 768) = 0u;
  *(v5 + 828) = 0u;
  *(v5 + 800) = 0u;
  *(v5 + 816) = 0u;
  *(v5 + 876) = 0u;
  *(v5 + 848) = 0u;
  *(v5 + 864) = 0u;
  *(v5 + 924) = 0u;
  *(v5 + 896) = 0u;
  *(v5 + 912) = 0u;
  *(v5 + 972) = 0u;
  *(v5 + 944) = 0u;
  *(v5 + 960) = 0u;
  *(v5 + 1020) = 0u;
  *(v5 + 992) = 0u;
  *(v5 + 1008) = 0u;
  *(v5 + 1068) = 0u;
  *(v5 + 1056) = 0u;
  *(v5 + 1040) = 0u;
  *(v5 + 1116) = 0u;
  *(v5 + 1104) = 0u;
  *(v5 + 1088) = 0u;
  *(v5 + 1164) = 0u;
  *(v5 + 1152) = 0u;
  *(v5 + 1136) = 0u;
  *(v5 + 1212) = 0u;
  *(v5 + 1200) = 0u;
  *(v5 + 1184) = 0u;
  *(v5 + 1260) = 0u;
  *(v5 + 1248) = 0u;
  *(v5 + 1232) = 0u;
  *(v5 + 1308) = 0u;
  *(v5 + 1296) = 0u;
  *(v5 + 1280) = 0u;
  *(v5 + 1356) = 0u;
  *(v5 + 1344) = 0u;
  *(v5 + 1328) = 0u;
  *(v5 + 1404) = 0u;
  *(v5 + 1392) = 0u;
  *(v5 + 1376) = 0u;
  *(v5 + 1452) = 0u;
  *(v5 + 1440) = 0u;
  *(v5 + 1424) = 0u;
  *(v5 + 1500) = 0u;
  *(v5 + 1488) = 0u;
  *(v5 + 1472) = 0u;
  type metadata accessor for URLResourceValues?(0, &lazy cache variable for type metadata for AtomicBuffer<ObjectCache<Color.ResolvedHDR, CGColorRef>.Data>, type metadata accessor for ObjectCache<Color.ResolvedHDR, CGColorRef>.Data, type metadata accessor for AtomicBuffer);
  *(v5 + 1520) = 0u;
  *(v5 + 1536) = 0u;
  *(v5 + 1548) = 0u;
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = v5;
  *(v6 + 32) = 0;
  v2[3] = a2;
  v2[4] = v6;
  v2[2] = a1;
  return v2;
}

{
  return specialized ObjectCache.init(constructor:)(a1, a2, type metadata accessor for ObjectCache<Color.Resolved, NSObject>.Item, &lazy cache variable for type metadata for AtomicBuffer<ObjectCache<Color.Resolved, NSObject>.Data>, type metadata accessor for ObjectCache<Color.Resolved, NSObject>.Data);
}

{
  type metadata accessor for ObjectCache<Font.FontCache.Key, CTFontRef>.Item(0);
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v103 = 0;
  v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v5 + 16) = 32;
  v6 = v98;
  v7 = v99;
  v8 = v98;
  v9 = v99;
  *(v5 + 32) = v98;
  *(v5 + 48) = v7;
  v10 = v103;
  v11 = v101;
  v12 = v102;
  v13 = v100;
  *(v5 + 64) = v100;
  *(v5 + 80) = v11;
  *(v5 + 96) = v12;
  *(v5 + 120) = v6;
  *(v5 + 136) = v7;
  v14 = v101;
  *(v5 + 184) = v102;
  *(v5 + 168) = v101;
  *(v5 + 112) = v10;
  v15 = v103;
  *(v5 + 200) = v103;
  *(v5 + 152) = v13;
  *(v5 + 208) = v8;
  *(v5 + 224) = v9;
  v16 = v100;
  v17 = v102;
  *(v5 + 288) = v15;
  *(v5 + 256) = v14;
  *(v5 + 272) = v17;
  *(v5 + 240) = v16;
  outlined init with copy of ObjectCache<Font.FontCache.Key, CTFontRef>.Item(&v98, v97);
  v18 = v101;
  v19 = v102;
  *(v5 + 328) = v100;
  *(v5 + 344) = v18;
  *(v5 + 360) = v19;
  *(v5 + 376) = v103;
  v20 = v99;
  *(v5 + 296) = v98;
  *(v5 + 312) = v20;
  outlined init with copy of ObjectCache<Font.FontCache.Key, CTFontRef>.Item(&v98, v97);
  v21 = v101;
  v22 = v102;
  *(v5 + 416) = v100;
  *(v5 + 432) = v21;
  *(v5 + 448) = v22;
  *(v5 + 464) = v103;
  v23 = v99;
  *(v5 + 384) = v98;
  *(v5 + 400) = v23;
  outlined init with copy of ObjectCache<Font.FontCache.Key, CTFontRef>.Item(&v98, v97);
  v24 = v101;
  v25 = v102;
  *(v5 + 504) = v100;
  *(v5 + 520) = v24;
  *(v5 + 536) = v25;
  *(v5 + 552) = v103;
  v26 = v99;
  *(v5 + 472) = v98;
  *(v5 + 488) = v26;
  outlined init with copy of ObjectCache<Font.FontCache.Key, CTFontRef>.Item(&v98, v97);
  v27 = v101;
  v28 = v102;
  *(v5 + 592) = v100;
  *(v5 + 608) = v27;
  *(v5 + 624) = v28;
  *(v5 + 640) = v103;
  v29 = v99;
  *(v5 + 560) = v98;
  *(v5 + 576) = v29;
  outlined init with copy of ObjectCache<Font.FontCache.Key, CTFontRef>.Item(&v98, v97);
  v30 = v101;
  v31 = v102;
  *(v5 + 680) = v100;
  *(v5 + 696) = v30;
  *(v5 + 712) = v31;
  *(v5 + 728) = v103;
  v32 = v99;
  *(v5 + 648) = v98;
  *(v5 + 664) = v32;
  outlined init with copy of ObjectCache<Font.FontCache.Key, CTFontRef>.Item(&v98, v97);
  v33 = v101;
  v34 = v102;
  *(v5 + 768) = v100;
  *(v5 + 784) = v33;
  *(v5 + 800) = v34;
  *(v5 + 816) = v103;
  v35 = v99;
  *(v5 + 736) = v98;
  *(v5 + 752) = v35;
  outlined init with copy of ObjectCache<Font.FontCache.Key, CTFontRef>.Item(&v98, v97);
  v36 = v101;
  v37 = v102;
  *(v5 + 856) = v100;
  *(v5 + 872) = v36;
  *(v5 + 888) = v37;
  *(v5 + 904) = v103;
  v38 = v99;
  *(v5 + 824) = v98;
  *(v5 + 840) = v38;
  outlined init with copy of ObjectCache<Font.FontCache.Key, CTFontRef>.Item(&v98, v97);
  v39 = v101;
  v40 = v102;
  *(v5 + 944) = v100;
  *(v5 + 960) = v39;
  *(v5 + 976) = v40;
  *(v5 + 992) = v103;
  v41 = v99;
  *(v5 + 912) = v98;
  *(v5 + 928) = v41;
  outlined init with copy of ObjectCache<Font.FontCache.Key, CTFontRef>.Item(&v98, v97);
  v42 = v101;
  v43 = v102;
  *(v5 + 1032) = v100;
  *(v5 + 1048) = v42;
  *(v5 + 1064) = v43;
  *(v5 + 1080) = v103;
  v44 = v99;
  *(v5 + 1000) = v98;
  *(v5 + 1016) = v44;
  outlined init with copy of ObjectCache<Font.FontCache.Key, CTFontRef>.Item(&v98, v97);
  *(v5 + 1120) = v100;
  v45 = v102;
  *(v5 + 1136) = v101;
  *(v5 + 1152) = v45;
  *(v5 + 1168) = v103;
  v46 = v99;
  *(v5 + 1088) = v98;
  *(v5 + 1104) = v46;
  outlined init with copy of ObjectCache<Font.FontCache.Key, CTFontRef>.Item(&v98, v97);
  v47 = v101;
  v48 = v102;
  *(v5 + 1208) = v100;
  *(v5 + 1224) = v47;
  *(v5 + 1240) = v48;
  *(v5 + 1256) = v103;
  v49 = v99;
  *(v5 + 1176) = v98;
  *(v5 + 1192) = v49;
  outlined init with copy of ObjectCache<Font.FontCache.Key, CTFontRef>.Item(&v98, v97);
  *(v5 + 1296) = v100;
  v50 = v102;
  *(v5 + 1312) = v101;
  *(v5 + 1328) = v50;
  *(v5 + 1344) = v103;
  v51 = v99;
  *(v5 + 1264) = v98;
  *(v5 + 1280) = v51;
  outlined init with copy of ObjectCache<Font.FontCache.Key, CTFontRef>.Item(&v98, v97);
  v52 = v101;
  v53 = v102;
  *(v5 + 1384) = v100;
  *(v5 + 1400) = v52;
  *(v5 + 1416) = v53;
  *(v5 + 1432) = v103;
  v54 = v99;
  *(v5 + 1352) = v98;
  *(v5 + 1368) = v54;
  outlined init with copy of ObjectCache<Font.FontCache.Key, CTFontRef>.Item(&v98, v97);
  *(v5 + 1472) = v100;
  v55 = v102;
  *(v5 + 1488) = v101;
  *(v5 + 1504) = v55;
  *(v5 + 1520) = v103;
  v56 = v99;
  *(v5 + 1440) = v98;
  *(v5 + 1456) = v56;
  outlined init with copy of ObjectCache<Font.FontCache.Key, CTFontRef>.Item(&v98, v97);
  v57 = v101;
  v58 = v102;
  *(v5 + 1560) = v100;
  *(v5 + 1576) = v57;
  *(v5 + 1592) = v58;
  *(v5 + 1608) = v103;
  v59 = v99;
  *(v5 + 1528) = v98;
  *(v5 + 1544) = v59;
  outlined init with copy of ObjectCache<Font.FontCache.Key, CTFontRef>.Item(&v98, v97);
  *(v5 + 1648) = v100;
  v60 = v102;
  *(v5 + 1664) = v101;
  *(v5 + 1680) = v60;
  *(v5 + 1696) = v103;
  v61 = v99;
  *(v5 + 1616) = v98;
  *(v5 + 1632) = v61;
  outlined init with copy of ObjectCache<Font.FontCache.Key, CTFontRef>.Item(&v98, v97);
  v62 = v101;
  v63 = v102;
  *(v5 + 1736) = v100;
  *(v5 + 1752) = v62;
  *(v5 + 1768) = v63;
  *(v5 + 1784) = v103;
  v64 = v99;
  *(v5 + 1704) = v98;
  *(v5 + 1720) = v64;
  outlined init with copy of ObjectCache<Font.FontCache.Key, CTFontRef>.Item(&v98, v97);
  *(v5 + 1824) = v100;
  v65 = v102;
  *(v5 + 1840) = v101;
  *(v5 + 1856) = v65;
  *(v5 + 1872) = v103;
  v66 = v99;
  *(v5 + 1792) = v98;
  *(v5 + 1808) = v66;
  outlined init with copy of ObjectCache<Font.FontCache.Key, CTFontRef>.Item(&v98, v97);
  v67 = v101;
  v68 = v102;
  *(v5 + 1912) = v100;
  *(v5 + 1928) = v67;
  *(v5 + 1944) = v68;
  *(v5 + 1960) = v103;
  v69 = v99;
  *(v5 + 1880) = v98;
  *(v5 + 1896) = v69;
  outlined init with copy of ObjectCache<Font.FontCache.Key, CTFontRef>.Item(&v98, v97);
  *(v5 + 2000) = v100;
  v70 = v102;
  *(v5 + 2016) = v101;
  *(v5 + 2032) = v70;
  *(v5 + 2048) = v103;
  v71 = v99;
  *(v5 + 1968) = v98;
  *(v5 + 1984) = v71;
  outlined init with copy of ObjectCache<Font.FontCache.Key, CTFontRef>.Item(&v98, v97);
  v72 = v101;
  v73 = v102;
  *(v5 + 2088) = v100;
  *(v5 + 2104) = v72;
  *(v5 + 2120) = v73;
  *(v5 + 2136) = v103;
  v74 = v99;
  *(v5 + 2056) = v98;
  *(v5 + 2072) = v74;
  outlined init with copy of ObjectCache<Font.FontCache.Key, CTFontRef>.Item(&v98, v97);
  *(v5 + 2176) = v100;
  v75 = v102;
  *(v5 + 2192) = v101;
  *(v5 + 2208) = v75;
  *(v5 + 2224) = v103;
  v76 = v99;
  *(v5 + 2144) = v98;
  *(v5 + 2160) = v76;
  outlined init with copy of ObjectCache<Font.FontCache.Key, CTFontRef>.Item(&v98, v97);
  v77 = v101;
  v78 = v102;
  *(v5 + 2264) = v100;
  *(v5 + 2280) = v77;
  *(v5 + 2296) = v78;
  *(v5 + 2312) = v103;
  v79 = v99;
  *(v5 + 2232) = v98;
  *(v5 + 2248) = v79;
  outlined init with copy of ObjectCache<Font.FontCache.Key, CTFontRef>.Item(&v98, v97);
  *(v5 + 2352) = v100;
  v80 = v102;
  *(v5 + 2368) = v101;
  *(v5 + 2384) = v80;
  *(v5 + 2400) = v103;
  v81 = v99;
  *(v5 + 2320) = v98;
  *(v5 + 2336) = v81;
  outlined init with copy of ObjectCache<Font.FontCache.Key, CTFontRef>.Item(&v98, v97);
  v82 = v101;
  v83 = v102;
  *(v5 + 2440) = v100;
  *(v5 + 2456) = v82;
  *(v5 + 2472) = v83;
  *(v5 + 2488) = v103;
  v84 = v99;
  *(v5 + 2408) = v98;
  *(v5 + 2424) = v84;
  outlined init with copy of ObjectCache<Font.FontCache.Key, CTFontRef>.Item(&v98, v97);
  *(v5 + 2528) = v100;
  v85 = v102;
  *(v5 + 2544) = v101;
  *(v5 + 2560) = v85;
  *(v5 + 2576) = v103;
  v86 = v99;
  *(v5 + 2496) = v98;
  *(v5 + 2512) = v86;
  outlined init with copy of ObjectCache<Font.FontCache.Key, CTFontRef>.Item(&v98, v97);
  v87 = v101;
  v88 = v102;
  *(v5 + 2616) = v100;
  *(v5 + 2632) = v87;
  *(v5 + 2648) = v88;
  *(v5 + 2664) = v103;
  v89 = v99;
  *(v5 + 2584) = v98;
  *(v5 + 2600) = v89;
  outlined init with copy of ObjectCache<Font.FontCache.Key, CTFontRef>.Item(&v98, v97);
  *(v5 + 2704) = v100;
  v90 = v102;
  *(v5 + 2720) = v101;
  *(v5 + 2736) = v90;
  *(v5 + 2752) = v103;
  v91 = v99;
  *(v5 + 2672) = v98;
  *(v5 + 2688) = v91;
  outlined init with copy of ObjectCache<Font.FontCache.Key, CTFontRef>.Item(&v98, v97);
  v92 = v101;
  v93 = v102;
  *(v5 + 2792) = v100;
  *(v5 + 2808) = v92;
  *(v5 + 2824) = v93;
  *(v5 + 2840) = v103;
  v94 = v99;
  *(v5 + 2760) = v98;
  *(v5 + 2776) = v94;
  type metadata accessor for URLResourceValues?(0, &lazy cache variable for type metadata for AtomicBuffer<ObjectCache<Font.FontCache.Key, CTFontRef>.Data>, type metadata accessor for ObjectCache<Font.FontCache.Key, CTFontRef>.Data, type metadata accessor for AtomicBuffer);
  v95 = swift_allocObject();
  *(v95 + 16) = 0;
  *(v95 + 24) = v5;
  *(v95 + 32) = 0;
  v2[3] = a2;
  v2[4] = v95;
  v2[2] = a1;
  outlined init with copy of ObjectCache<Font.FontCache.Key, CTFontRef>.Item(&v98, v97);
  outlined init with copy of ObjectCache<Font.FontCache.Key, CTFontRef>.Item(&v98, v97);
  return v2;
}

{
  type metadata accessor for ObjectCache<Locale.Key, String>(0, &lazy cache variable for type metadata for ObjectCache<Locale.Key, String>.Item, type metadata accessor for ObjectCache.Item);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  type metadata accessor for (key: Locale.Key, hash: Int, value: String)(0);
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  *&v9[*(v6 + 44)] = 0;
  v11 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v11 + 16) = 32;
  v12 = v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  outlined init with copy of ObjectCache<Locale.Key, String>.Item(v9, v12);
  v13 = *(v7 + 72);
  outlined init with copy of ObjectCache<Locale.Key, String>.Item(v9, v12 + v13);
  outlined init with copy of ObjectCache<Locale.Key, String>.Item(v9, v12 + 2 * v13);
  outlined init with copy of ObjectCache<Locale.Key, String>.Item(v9, v12 + 3 * v13);
  outlined init with copy of ObjectCache<Locale.Key, String>.Item(v9, v12 + 4 * v13);
  outlined init with copy of ObjectCache<Locale.Key, String>.Item(v9, v12 + 5 * v13);
  outlined init with copy of ObjectCache<Locale.Key, String>.Item(v9, v12 + 6 * v13);
  outlined init with copy of ObjectCache<Locale.Key, String>.Item(v9, v12 + 7 * v13);
  outlined init with copy of ObjectCache<Locale.Key, String>.Item(v9, v12 + 8 * v13);
  outlined init with copy of ObjectCache<Locale.Key, String>.Item(v9, v12 + 9 * v13);
  outlined init with copy of ObjectCache<Locale.Key, String>.Item(v9, v12 + 10 * v13);
  outlined init with copy of ObjectCache<Locale.Key, String>.Item(v9, v12 + 11 * v13);
  outlined init with copy of ObjectCache<Locale.Key, String>.Item(v9, v12 + 12 * v13);
  outlined init with copy of ObjectCache<Locale.Key, String>.Item(v9, v12 + 13 * v13);
  outlined init with copy of ObjectCache<Locale.Key, String>.Item(v9, v12 + 14 * v13);
  outlined init with copy of ObjectCache<Locale.Key, String>.Item(v9, v12 + 15 * v13);
  outlined init with copy of ObjectCache<Locale.Key, String>.Item(v9, v12 + 16 * v13);
  outlined init with copy of ObjectCache<Locale.Key, String>.Item(v9, v12 + 17 * v13);
  outlined init with copy of ObjectCache<Locale.Key, String>.Item(v9, v12 + 18 * v13);
  outlined init with copy of ObjectCache<Locale.Key, String>.Item(v9, v12 + 19 * v13);
  outlined init with copy of ObjectCache<Locale.Key, String>.Item(v9, v12 + 20 * v13);
  outlined init with copy of ObjectCache<Locale.Key, String>.Item(v9, v12 + 21 * v13);
  outlined init with copy of ObjectCache<Locale.Key, String>.Item(v9, v12 + 22 * v13);
  outlined init with copy of ObjectCache<Locale.Key, String>.Item(v9, v12 + 23 * v13);
  outlined init with copy of ObjectCache<Locale.Key, String>.Item(v9, v12 + 24 * v13);
  outlined init with copy of ObjectCache<Locale.Key, String>.Item(v9, v12 + 25 * v13);
  outlined init with copy of ObjectCache<Locale.Key, String>.Item(v9, v12 + 26 * v13);
  outlined init with copy of ObjectCache<Locale.Key, String>.Item(v9, v12 + 27 * v13);
  outlined init with copy of ObjectCache<Locale.Key, String>.Item(v9, v12 + 28 * v13);
  outlined init with copy of ObjectCache<Locale.Key, String>.Item(v9, v12 + 29 * v13);
  outlined init with copy of ObjectCache<Locale.Key, String>.Item(v9, v12 + 30 * v13);
  outlined init with take of ObjectCache<Locale.Key, String>.Item(v9, v12 - v13 + 32 * v13);
  type metadata accessor for AtomicBuffer<ObjectCache<Locale.Key, String>.Data>(0);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = v11;
  *(v14 + 32) = 0;
  v2[3] = a2;
  v2[4] = v14;
  v2[2] = a1;
  return v2;
}

void type metadata accessor for ObjectCache<Color.Resolved, CGColorRef>.Item(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ObjectCache<Color.Resolved, CGColorRef>.Item)
  {
    type metadata accessor for CGColorRef(255);
    v3 = v2;
    lazy protocol witness table accessor for type Color.Resolved and conformance Color.Resolved();
    v5 = type metadata accessor for ObjectCache.Item(a1, &type metadata for Color.Resolved, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for ObjectCache<Color.Resolved, CGColorRef>.Item);
    }
  }
}

void type metadata accessor for ObjectCache<Color.Resolved, CGColorRef>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    type metadata accessor for CGColorRef(255);
    v9 = v8;
    v10 = a3();
    v11 = type metadata accessor for ObjectCache(a1, a4, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void type metadata accessor for ObjectCache<Color.Resolved, CGColorRef>.Data(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ObjectCache<Color.Resolved, CGColorRef>.Data)
  {
    type metadata accessor for CGColorRef(255);
    v3 = v2;
    lazy protocol witness table accessor for type Color.Resolved and conformance Color.Resolved();
    v5 = type metadata accessor for ObjectCache.Data(a1, &type metadata for Color.Resolved, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for ObjectCache<Color.Resolved, CGColorRef>.Data);
    }
  }
}

void one-time initialization function for srgb(uint64_t a1, id *a2, CGColorSpaceRef *a3)
{
  v4 = *a2;
  v5 = CGColorSpaceCreateWithName(v4);

  if (v5)
  {
    *a3 = v5;
  }

  else
  {
    __break(1u);
  }
}

void lazy protocol witness table accessor for type Color.ResolvedHDR and conformance Color.ResolvedHDR()
{
  if (!lazy protocol witness table cache variable for type Color.ResolvedHDR and conformance Color.ResolvedHDR)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ResolvedHDR, &type metadata for Color.ResolvedHDR, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ResolvedHDR and conformance Color.ResolvedHDR);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.ResolvedHDR and conformance Color.ResolvedHDR)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ResolvedHDR, &type metadata for Color.ResolvedHDR, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ResolvedHDR and conformance Color.ResolvedHDR);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.ResolvedHDR and conformance Color.ResolvedHDR)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ResolvedHDR, &type metadata for Color.ResolvedHDR, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ResolvedHDR and conformance Color.ResolvedHDR);
  }
}

void type metadata accessor for ObjectCache<Color.ResolvedHDR, CGColorRef>.Item(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ObjectCache<Color.ResolvedHDR, CGColorRef>.Item)
  {
    type metadata accessor for CGColorRef(255);
    v3 = v2;
    lazy protocol witness table accessor for type Color.ResolvedHDR and conformance Color.ResolvedHDR();
    v5 = type metadata accessor for ObjectCache.Item(a1, &type metadata for Color.ResolvedHDR, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for ObjectCache<Color.ResolvedHDR, CGColorRef>.Item);
    }
  }
}

void type metadata accessor for ObjectCache<Color.ResolvedHDR, CGColorRef>.Data(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ObjectCache<Color.ResolvedHDR, CGColorRef>.Data)
  {
    type metadata accessor for CGColorRef(255);
    v3 = v2;
    lazy protocol witness table accessor for type Color.ResolvedHDR and conformance Color.ResolvedHDR();
    v5 = type metadata accessor for ObjectCache.Data(a1, &type metadata for Color.ResolvedHDR, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for ObjectCache<Color.ResolvedHDR, CGColorRef>.Data);
    }
  }
}

void specialized ObjectCache.subscript.getter(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  specialized ObjectCache.subscript.getter(specialized _ArrayBuffer._consumeAndCreateNew(), specialized _ArrayBuffer._consumeAndCreateNew(), a1, a2, a3, a4);
}

{
  specialized ObjectCache.subscript.getter(specialized _ArrayBuffer._consumeAndCreateNew(), specialized _ArrayBuffer._consumeAndCreateNew(), a1, a2, a3, a4);
}

void Color.Resolved.cgColor.getter(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  if (one-time initialization token for cache != -1)
  {
    v4 = a4.n128_u32[0];
    v5 = a3.n128_u32[0];
    v6 = a2.n128_u32[0];
    v7 = a1.n128_u32[0];
    swift_once();
    a1.n128_u32[0] = v7;
    a2.n128_u32[0] = v6;
    a3.n128_u32[0] = v5;
    a4.n128_u32[0] = v4;
  }

  specialized ObjectCache.subscript.getter(a1, a2, a3, a4);
}

unint64_t Material.Layer.SDFLayer.GroupLayer.blend.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = v2;
  return outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(v2);
}

uint64_t destroy for SDFStyle.Group(uint64_t a1)
{
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t Color.ResolvedHDR.cgColor.getter()
{
  v1 = v0;
  if (one-time initialization token for cache != -1)
  {
    swift_once();
    v1 = v0;
  }

  return specialized ObjectCache.subscript.getter(v1);
}

uint64_t destroy for Material.Layer(uint64_t a1)
{
  outlined consume of Material.Layer.Storage(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32));
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);

  return outlined consume of GraphicsBlendMode(v2, v3);
}

uint64_t outlined consume of Material.Layer.Storage(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 2)
  {
  }

  if (a5 == 1)
  {
  }

  return v5;
}

CGColorRef closure #1 in variable initialization expression of static Color.Resolved.cache@<X0>(float *a1@<X0>, CGColorRef *a2@<X8>)
{
  result = Color.Resolved.makeCGColor()(*a1, a1[1], a1[2], a1[3]);
  *a2 = result;
  return result;
}

CGColorRef Color.Resolved.makeCGColor()(float a1, float a2, float a3, float a4)
{
  if (a1 <= 0.0)
  {
    v7 = -a1;
  }

  else
  {
    v7 = a1;
  }

  if (v7 <= 0.0031308)
  {
    v8 = v7 * 12.92;
  }

  else
  {
    v8 = 1.0;
    if (v7 != 1.0)
    {
      v9 = a1;
      v10 = powf(v7, 0.41667);
      a1 = v9;
      v8 = (v10 * 1.055) + -0.055;
    }
  }

  if (a1 <= 0.0)
  {
    v11 = -v8;
  }

  else
  {
    v11 = v8;
  }

  v19[0] = v11;
  v12 = -a2;
  if (a2 > 0.0)
  {
    v12 = a2;
  }

  if (v12 <= 0.0031308)
  {
    v13 = v12 * 12.92;
  }

  else
  {
    v13 = 1.0;
    if (v12 != 1.0)
    {
      v13 = (powf(v12, 0.41667) * 1.055) + -0.055;
    }
  }

  v14 = -v13;
  if (a2 > 0.0)
  {
    v14 = v13;
  }

  v19[1] = v14;
  v15 = -a3;
  if (a3 > 0.0)
  {
    v15 = a3;
  }

  if (v15 <= 0.0031308)
  {
    v16 = v15 * 12.92;
  }

  else
  {
    v16 = 1.0;
    if (v15 != 1.0)
    {
      v16 = (powf(v15, 0.41667) * 1.055) + -0.055;
    }
  }

  v17 = -v16;
  if (a3 > 0.0)
  {
    v17 = v16;
  }

  v19[2] = v17;
  v19[3] = a4;
  if (one-time initialization token for srgbExtended != -1)
  {
    swift_once();
  }

  result = CGColorCreate(static Color.Resolved.srgbExtended, v19);
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in variable initialization expression of static Color.ResolvedHDR.cache@<X0>(float *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  if (one-time initialization token for srgbExtended != -1)
  {
    swift_once();
  }

  v6 = -v4;
  if (v4 > 0.0)
  {
    v6 = v4;
  }

  if (v6 > 0.0031308 && v6 != 1.0)
  {
    powf(v6, 0.41667);
  }

  v7 = -v3;
  if (v3 > 0.0)
  {
    v7 = v3;
  }

  if (v7 > 0.0031308 && v7 != 1.0)
  {
    powf(v7, 0.41667);
  }

  v8 = -v5;
  if (v5 > 0.0)
  {
    v8 = v5;
  }

  if (v8 > 0.0031308 && v8 != 1.0)
  {
    powf(v8, 0.41667);
  }

  result = CGColorCreateWithContentHeadroom();
  if (result)
  {
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for Material(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Material.ID(*a2, v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 12) = *(a2 + 3);
  return a1;
}

uint64_t outlined copy of Material.ID(uint64_t result, unsigned __int8 a2)
{
  if (a2 == 2)
  {
  }

  if (a2 <= 1u)
  {
  }

  return v2;
}

uint64_t outlined consume of Material.ID(uint64_t result, unsigned __int8 a2)
{
  if (a2 == 2)
  {
  }

  if (a2 <= 1u)
  {
  }

  return v2;
}

uint64_t Material.init<A>(provider:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MaterialProviderBox(0, v9, v10, v11);
  (*(v6 + 16))(v8, a1, a2);
  v12 = MaterialProviderBox.__allocating_init(_:)(v8);
  result = (*(v6 + 8))(a1, a2);
  *a3 = v12;
  *(a3 + 8) = 1;
  *(a3 + 12) = 0;
  return result;
}

{
  return Material.init<A>(provider:)(a1, a2, type metadata accessor for AnimatableMaterialProviderBox, specialized AnimatableMaterialProviderBox.init(_:), a3);
}

uint64_t _AnyLayoutBox.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 184) - 8) + 32))(v2 + *(*v2 + 200), a1);
  return v2;
}

uint64_t type metadata completion function for _AnyResolvedPaint(uint64_t a1)
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

uint64_t _AnyLayoutBox.__deallocating_deinit()
{
  (*(*(*(*v0 + 184) - 8) + 8))(v0 + *(*v0 + 200));

  return swift_deallocClassInstance();
}

void specialized ObjectCache.subscript.getter(uint64_t (*a1)(uint64_t), uint64_t (*a2)(uint64_t), __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v9 = v6;
  v25 = a6.n128_f32[0];
  v26 = a4.n128_f32[0];
  v23 = a5.n128_f32[0];
  v24 = a3.n128_f32[0];
  v30[0] = a3.n128_u32[0];
  v30[1] = a4.n128_u32[0];
  v30[2] = a5.n128_u32[0];
  v30[3] = a6.n128_u32[0];
  Hasher.init(_seed:)();
  Color.Resolved.hash(into:)(v24, v26, v23, v25);
  v10 = Hasher._finalize()();
  v11 = 4 * (v10 & 7);
  v29[0] = 0;
  v28 = 0x80000000;
  v12 = *(v6 + 32);

  os_unfair_lock_lock(v12 + 4);
  v13 = specialized closure #1 in ObjectCache.subscript.getter(&v12[6], v11, v10, &v28, v29, a1, v24, v26, v23, v25);
  os_unfair_lock_unlock(v12 + 4);

  if (!v13)
  {
    v14 = *(v9 + 24);
    (*(v9 + 16))(&v27, v30);
    v15 = *(v9 + 32);

    os_unfair_lock_lock((v15 + 16));
    v16 = __OFADD__(v11, v29[0]);
    v17 = v11 + v29[0];
    if (v16)
    {
      __break(1u);
    }

    else
    {
      v18 = v27;
      LODWORD(a1) = *(v15 + 32) + 1;
      *(v15 + 32) = a1;
      v9 = *(v15 + 24);
      v14 = v18;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v15 + 24) = v9;
      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v17 & 0x8000000000000000) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_10;
      }
    }

    v9 = a2(v9);
    *(v15 + 24) = v9;
    if ((v17 & 0x8000000000000000) == 0)
    {
LABEL_5:
      if (v17 < *(v9 + 16))
      {
        v20.i64[0] = LODWORD(v24);
        v20.i64[1] = LODWORD(v23);
        v21 = (v9 + 40 * v17);
        v22 = v21[3].i64[1];
        v21[2] = vorrq_s8(vshll_n_s32(__PAIR64__(LODWORD(v25), LODWORD(v26)), 0x20uLL), v20);
        v21[3].i64[0] = v10;
        v21[3].i64[1] = v14;
        v21[4].i32[0] = a1;

        os_unfair_lock_unlock((v15 + 16));

        return;
      }

LABEL_11:
      __break(1u);

      os_unfair_lock_unlock(v12 + 4);
      __break(1u);
      return;
    }

LABEL_10:
    __break(1u);
    goto LABEL_11;
  }
}

uint64_t specialized closure #1 in ObjectCache.subscript.getter(uint64_t result, unint64_t a2, uint64_t a3, int *a4, void *a5, uint64_t (*a6)(uint64_t), float a7, float a8, float a9, float a10)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_75;
  }

  v12 = a2;
  v10 = result;
  v11 = *result;
  if (*(*result + 16) <= a2)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v13 = a6;
  v16 = v11 + 32;
  v17 = v11 + 32 + 40 * a2;
  v14 = *(v17 + 24);
  if (!v14)
  {
    v22 = 0x7FFFFFFF;
    v23 = 0x7FFFFFFF;
    if (*a4 == 0x7FFFFFFF)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v18 = *(v17 + 16) == a3 && *v17 == a7;
  if (v18 && *(v17 + 4) == a8 && *(v17 + 8) == a9 && *(v17 + 12) == a10)
  {
LABEL_64:
    v15 = *(result + 8) + 1;
    *(result + 8) = v15;
    v37 = v14;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_65:
      if (v12 < *(v11 + 16))
      {
        *(v11 + 40 * v12 + 64) = v15;
        *v10 = v11;
        return v14;
      }

      __break(1u);
      goto LABEL_78;
    }

LABEL_76:
    result = v13(v11);
    v11 = result;
    goto LABEL_65;
  }

  v22 = *(result + 8) - *(v17 + 32);
  v23 = *a4;
  if (*a4 < v22)
  {
LABEL_20:
    *a5 = 0;
    *a4 = v22;
    v23 = v22;
  }

LABEL_21:
  v24 = a2 + 1;
  if (a2 + 1 >= *(v11 + 16))
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v25 = v16 + 40 * v24;
  v14 = *(v25 + 24);
  if (v14)
  {
    if (*(v25 + 16) == a3 && *v25 == a7 && *(v25 + 4) == a8 && *(v25 + 8) == a9 && *(v25 + 12) == a10)
    {
      goto LABEL_54;
    }

    v30 = *(result + 8) - *(v25 + 32);
    if (v23 >= v30)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v30 = 0x7FFFFFFF;
    v18 = v23 == 0x7FFFFFFF;
    v23 = 0x7FFFFFFF;
    if (v18)
    {
      goto LABEL_40;
    }
  }

  *a5 = 1;
  *a4 = v30;
  v23 = v30;
LABEL_40:
  v24 = a2 + 2;
  if (a2 + 2 >= *(v11 + 16))
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v31 = v16 + 40 * v24;
  v14 = *(v31 + 24);
  if (!v14)
  {
    v35 = 0x7FFFFFFF;
    v18 = v23 == 0x7FFFFFFF;
    v23 = 0x7FFFFFFF;
    if (v18)
    {
      goto LABEL_57;
    }

    goto LABEL_56;
  }

  if (*(v31 + 16) == a3)
  {
    v32 = *v31 == a7 && *(v31 + 4) == a8;
    v33 = v32 && *(v31 + 8) == a9;
    if (v33 && *(v31 + 12) == a10)
    {
LABEL_54:
      v12 = v24;
      goto LABEL_64;
    }
  }

  v35 = *(result + 8) - *(v31 + 32);
  if (v23 < v35)
  {
LABEL_56:
    *a5 = 2;
    *a4 = v35;
    v23 = v35;
  }

LABEL_57:
  v12 = a2 + 3;
  if (a2 + 3 < *(v11 + 16))
  {
    v36 = v16 + 40 * v12;
    v14 = *(v36 + 24);
    if (v14)
    {
      if (*(v36 + 16) == a3 && *v36 == a7 && *(v36 + 4) == a8 && *(v36 + 8) == a9 && *(v36 + 12) == a10)
      {
        goto LABEL_64;
      }

      v38 = *(result + 8) - *(v36 + 32);
      if (v23 < v38)
      {
LABEL_73:
        v14 = 0;
        *a5 = 3;
        *a4 = v38;
        return v14;
      }
    }

    else
    {
      v38 = 0x7FFFFFFF;
      if (v23 != 0x7FFFFFFF)
      {
        goto LABEL_73;
      }
    }

    return 0;
  }

LABEL_80:
  __break(1u);
  return result;
}

uint64_t GradientBox.__deallocating_deinit()
{
  (*(*(*(*v0 + 136) - 8) + 8))(v0 + *(*v0 + 152));

  return swift_deallocClassInstance();
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA018BackgroundMaterialS033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<BackgroundMaterialKey>, &type metadata for BackgroundMaterialKey, &protocol witness table for BackgroundMaterialKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA018BackgroundMaterialV033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void Color.Resolved.hash(into:)(float a1, float a2, float a3, float a4)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  Hasher._combine(_:)(LODWORD(a1));
  if (a2 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = a2;
  }

  Hasher._combine(_:)(LODWORD(v7));
  if (a3 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = a3;
  }

  Hasher._combine(_:)(LODWORD(v8));
  if (a4 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = a4;
  }

  Hasher._combine(_:)(LODWORD(v9));
}

uint64_t outlined consume of GraphicsBlendMode(uint64_t result, char a2)
{
  if (a2)
  {
    return swift_unknownObjectRelease();
  }

  return v2;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA018BackgroundMaterialV033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA018BackgroundMaterialV033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt0B5(result[3], a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<BackgroundMaterialKey>, &type metadata for BackgroundMaterialKey, &protocol witness table for BackgroundMaterialKey, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

uint64_t specialized ObjectCache.subscript.getter(uint64_t *a1)
{
  v6 = v1;
  v7 = *a1;
  v29 = *(a1 + 4);
  v30 = a1[1];
  v32 = *a1;
  v33 = *(a1 + 4);
  Hasher.init(_seed:)();
  Color.ResolvedHDR.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = 4 * (v8 & 7);
  v10 = v1[4];

  os_unfair_lock_lock((v10 + 16));
  v11 = *(v10 + 24);
  v12 = v11[2];
  if (v9 >= v12)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v13 = 0;
  v5 = 0;
  v3 = 192 * (v8 & 7) + 72;
  v14 = 0x80000000;
  v4 = 4 * (v8 & 7);
  while (1)
  {
    v17 = (v11 + v3);
    v2 = *(v11 + v3 - 8);
    if (v2)
    {
      break;
    }

    v18 = v14 == 0x7FFFFFFF;
    v14 = 0x7FFFFFFF;
    if (!v18)
    {
      if (v13 == 3)
      {
        v2 = 0;
        v5 = 3;
        goto LABEL_34;
      }

      v5 = v13;
      goto LABEL_8;
    }

LABEL_7:
    if (v13 == 3)
    {
      v2 = 0;
      goto LABEL_34;
    }

LABEL_8:
    ++v4;
    v3 += 48;
    ++v13;
    if (v12 == v4)
    {
      goto LABEL_41;
    }
  }

  v18 = *(v17 - 2) == v8 && *&v7 == *(v17 - 10);
  v21 = v18 && *(&v7 + 1) == *(v17 - 9) && *&v30 == *(v17 - 8) && *(&v30 + 1) == *(v17 - 7);
  if (!v21 || *(v11 + v3 - 24) != *&v29)
  {
    v15 = *(v10 + 32) - *v17;
    v16 = v14 < v15;
    if (v14 <= v15)
    {
      v14 = *(v10 + 32) - *v17;
    }

    if (v16)
    {
      v5 = v13;
    }

    goto LABEL_7;
  }

  v28 = v7;
  LODWORD(v7) = *(v10 + 32) + 1;
  *(v10 + 32) = v7;
  v22 = v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *(v10 + 24) = v11;
  if ((result & 1) == 0)
  {
    goto LABEL_46;
  }

  while (v4 < v11[2])
  {
    *(v11 + v3) = v7;
    *(v10 + 24) = v11;
    v7 = v28;
LABEL_34:
    os_unfair_lock_unlock((v10 + 16));

    if (v2)
    {
      return v2;
    }

    (v6[2])(&v31, &v32);
    v10 = v6[4];

    os_unfair_lock_lock((v10 + 16));
    v24 = __OFADD__(v9, v5);
    v9 += v5;
    if (v24)
    {
LABEL_42:
      __break(1u);
    }

    else
    {
      v11 = v31;
      v3 = (*(v10 + 32) + 1);
      *(v10 + 32) = v3;
      v6 = *(v10 + 24);
      v2 = v11;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v10 + 24) = v6;
      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_44;
        }

        goto LABEL_38;
      }
    }

    v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
    *(v10 + 24) = v6;
    if ((v9 & 0x8000000000000000) != 0)
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

LABEL_38:
    if (v9 < v6[2])
    {
      v26 = &v6[6 * v9];
      v27 = v26[8];
      v26[4] = v7;
      v26[5] = v30;
      v26[6] = v29;
      v26[7] = v8;
      v26[8] = v11;
      *(v26 + 18) = v3;

      os_unfair_lock_unlock((v10 + 16));

      return v2;
    }

LABEL_45:
    __break(1u);
LABEL_46:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v11);
    v11 = result;
  }

  __break(1u);
  return result;
}

void Color.ResolvedHDR.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  Hasher._combine(_:)(LODWORD(v1));
  if (v2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v2;
  }

  Hasher._combine(_:)(LODWORD(v5));
  if (v3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  Hasher._combine(_:)(LODWORD(v6));
  if (v4 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v4;
  }

  Hasher._combine(_:)(LODWORD(v7));
  v8 = v0[4];
  if (v8 == 0.0)
  {
    v8 = 0.0;
  }

  Hasher._combine(_:)(LODWORD(v8));
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA018BackgroundMaterialF033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt2B5(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (!_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA018BackgroundMaterialS033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt0g5(*a1) || (type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for Material?, &type metadata for Material, MEMORY[0x1E69E6720]), result = AGCompareValues(), !result))
  {
    v7 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<BackgroundMaterialKey>>(0);
    v8 = swift_allocObject();
    *(v8 + 72) = a2;
    *(v8 + 80) = a3;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<BackgroundMaterialKey>, &type metadata for BackgroundMaterialKey, &protocol witness table for BackgroundMaterialKey, type metadata accessor for EnvironmentPropertyKey);
    v10 = v9;

    outlined copy of Material?(a2, a3);
    *a1 = PropertyList.Element.init(keyType:before:after:)(v10, 0, v7);
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<BackgroundMaterialKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<BackgroundMaterialKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<BackgroundMaterialKey>, &type metadata for BackgroundMaterialKey, &protocol witness table for BackgroundMaterialKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<BackgroundMaterialKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<BackgroundMaterialKey>>);
    }
  }
}

uint64_t outlined consume of Material?(uint64_t result, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    return outlined consume of Material.ID(result, a2);
  }

  return result;
}

uint64_t EnvironmentValues.backgroundMaterial.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *v1;
  swift_retain_n();
  outlined copy of Material?(v2, v3);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA018BackgroundMaterialF033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt2B5(v1, v2, v3);

  outlined consume of Material?(v2, v3);
  if (v1[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA018BackgroundMaterialK033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Ttg5(v4, *v1);
  }

  return outlined consume of Material?(v2, v3);
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<BackgroundMaterialKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<BackgroundMaterialKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<BackgroundMaterialKey>, &type metadata for BackgroundMaterialKey, &protocol witness table for BackgroundMaterialKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<BackgroundMaterialKey> and conformance EnvironmentPropertyKey<A>);
  }
}

uint64_t storeEnumTagSinglePayload for Material(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t outlined copy of Material?(uint64_t result, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    return outlined copy of Material.ID(result, a2);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Material(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 16))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v15(v12);
  if (v8)
  {
    return (*(v11 + 32))(a8, v14, a5);
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA06LocaleF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(Swift::UInt *a1, char *a2)
{
  v4 = type metadata accessor for Locale();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(*a1);
  if (!v8)
  {
    v9 = *(v5 + 16);
    goto LABEL_5;
  }

  v9 = *(v5 + 16);
  v9(v7, &v8[*(*v8 + 248)], v4);
  lazy protocol witness table accessor for type Locale and conformance Locale(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969770], MEMORY[0x1E6969788]);
  v10 = dispatch thunk of static Equatable.== infix(_:_:)();
  result = (*(v5 + 8))(v7, v4);
  if ((v10 & 1) == 0)
  {
LABEL_5:
    v9(v7, a2, v4);
    v12 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<LocaleKey>>(0);
    v13 = swift_allocObject();
    v9((v13 + *(*v13 + 248)), v7, v4);
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<LocaleKey>, &type metadata for LocaleKey, &protocol witness table for LocaleKey, type metadata accessor for EnvironmentPropertyKey);
    v15 = v14;

    value = PropertyList.Element.init(keyType:before:after:)(v15, 0, v12).value;
    (*(v5 + 8))(v7, v4);
    *a1 = value;
  }

  return result;
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<LocaleKey>, &type metadata for LocaleKey, &protocol witness table for LocaleKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA06LocaleV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<LocaleKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<LocaleKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<LocaleKey>, &type metadata for LocaleKey, &protocol witness table for LocaleKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<LocaleKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<LocaleKey>>);
    }
  }
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA06LocaleV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA06LocaleV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(result[3], a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<LocaleKey>, &type metadata for LocaleKey, &protocol witness table for LocaleKey, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<LocaleKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<LocaleKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<LocaleKey>, &type metadata for LocaleKey, &protocol witness table for LocaleKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<LocaleKey> and conformance EnvironmentPropertyKey<A>);
  }
}

uint64_t *assignWithCopy for EnvironmentValues(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  return a1;
}

uint64_t _s7SwiftUI22EnvironmentPropertyKeyV11valuesEqualySb5ValueQz_AFtFZAA0C6ValuesVAAE025AssetCatalogConfigurationE033_F748B30B59970FC73194935C526E3031LLV_Tt1B5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48) & *(a2 + 48);
  if ((*(a1 + 48) & 1) == 0 && (*(a2 + 48) & 1) == 0)
  {
    v3 = *(a2 + 40);
    v4 = *(a2 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 32);
    v7 = CGRectEqualToRect(*a1, *a2);
    v2 = v6 == v4 && v7;
    if (v5 != v3)
    {
      v2 = 0;
    }
  }

  return v2 & 1;
}

double static RepresentableContextValues.current.getter@<D0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v2 = static RepresentableContextValues.current;
  v3 = qword_1ED527ED0;
  v4 = qword_1ED527ED8;
  *a1 = static RepresentableContextValues.current;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  v5 = byte_1ED527EE0;
  *(a1 + 32) = byte_1ED527EE0;
  return outlined copy of RepresentableContextValues?(v2, *(&v2 + 1), v3, v4, v5);
}

uint64_t GraphHost.addPreference<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  AGGraphClearUpdate();
  a4(v4, a2, a3);

  return AGGraphSetUpdate();
}

double outlined copy of RepresentableContextValues?(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (result != 1)
  {

    return outlined copy of RepresentableContextValues.EnvironmentStorage(a3, a4, a5 & 1);
  }

  return v9;
}

uint64_t closure #1 in GraphHost.addPreference<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a3 + 8);
  v6 = *AGGraphGetValue();
  v7 = PreferenceKeys._index(of:)(a2);
  swift_bridgeObjectRetain_n();

  v8 = *(v6 + 16);
  if (v7 != v8)
  {
    if (v7 >= v8)
    {
      goto LABEL_11;
    }

    if (*(v6 + 16 * v7 + 32) == a2)
    {
      goto LABEL_9;
    }
  }

  if (v8 < v7)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v8 >= *(v6 + 24) >> 1)
  {
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v8 + 1, 1, v6);
  }

  specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v7, v7, 1, a2, v5);
LABEL_9:
  AGGraphSetValue();
}

uint64_t closure #1 in GraphHost.removePreference<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v4 = *AGGraphGetValue();
  v5 = PreferenceKeys._index(of:)(a2);
  swift_bridgeObjectRetain_n();

  v6 = *(v4 + 16);
  if (v5 != v6)
  {
    if (v5 >= v6)
    {
      __break(1u);
    }

    if (*(v4 + 16 * v5 + 32) == a2)
    {
      specialized Array.remove(at:)(v5);
    }
  }

  AGGraphSetValue();
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<BackgroundInfoKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<BackgroundInfoKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<BackgroundInfoKey>, &type metadata for BackgroundInfoKey, &protocol witness table for BackgroundInfoKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<BackgroundInfoKey> and conformance EnvironmentPropertyKey<A>);
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<DisplayCornerRadiusKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<DisplayCornerRadiusKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DisplayCornerRadiusKey>, &type metadata for DisplayCornerRadiusKey, &protocol witness table for DisplayCornerRadiusKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<DisplayCornerRadiusKey> and conformance EnvironmentPropertyKey<A>);
  }
}

uint64_t one-time initialization function for red(uint64_t a1, char a2, uint64_t *a3)
{
  type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for ColorBox<SystemColorType>, lazy protocol witness table accessor for type SystemColorType and conformance SystemColorType, &type metadata for SystemColorType, type metadata accessor for ColorBox);
  result = swift_allocObject();
  *(result + 16) = a2;
  *a3 = result;
  return result;
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultAccentColorKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultAccentColorKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultAccentColorKey>, &type metadata for DefaultAccentColorKey, &protocol witness table for DefaultAccentColorKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultAccentColorKey> and conformance EnvironmentPropertyKey<A>);
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<VerticalUserInterfaceSizeClassKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<VerticalUserInterfaceSizeClassKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<VerticalUserInterfaceSizeClassKey>, &type metadata for VerticalUserInterfaceSizeClassKey, &protocol witness table for VerticalUserInterfaceSizeClassKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<VerticalUserInterfaceSizeClassKey> and conformance EnvironmentPropertyKey<A>);
  }
}

uint64_t static HierarchicalShapeStyle.sharedPrimary.getter(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

void type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t one-time initialization function for layoutDirection()
{
  result = AGMakeUniqueID();
  static CachedEnvironment.ID.layoutDirection = result;
  return result;
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA018DefaultAccentColorS033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultAccentColorKey>, &type metadata for DefaultAccentColorKey, &protocol witness table for DefaultAccentColorKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA018DefaultAccentColorV033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

Swift::Void __swiftcall _ViewInputs.makeRootMatchedGeometryScope()()
{
  if (_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA20MatchedGeometryScope33_F035CBEF00D3D777B3359545F684D774LLC_Tt2g5(*v0))
  {
  }

  else
  {
    v1 = *(v0 + 3);
    v11 = *(v0 + 2);
    v12 = v1;
    v13 = *(v0 + 4);
    v14 = *(v0 + 20);
    v2 = *(v0 + 1);
    v9 = *v0;
    v10 = v2;
    type metadata accessor for MatchedGeometryScope();
    v3 = swift_allocObject();
    v4 = AGSubgraphGetCurrent();
    if (v4)
    {
      v5 = v12;
      *(v3 + 56) = v11;
      *(v3 + 72) = v5;
      *(v3 + 88) = v13;
      v6 = v10;
      *(v3 + 24) = v9;
      *(v3 + 16) = v4;
      v7 = MEMORY[0x1E69E7CC8];
      *(v3 + 112) = MEMORY[0x1E69E7CC0];
      *(v3 + 120) = v7;
      *(v3 + 104) = v14;
      *(v3 + 40) = v6;
      outlined init with copy of _ViewInputs(&v9, v8);

      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA20MatchedGeometryScope33_F035CBEF00D3D777B3359545F684D774LLC_Tt2g5(v0, v3);
    }

    else
    {
      __break(1u);
    }
  }
}

Swift::Void __swiftcall ViewGraph.instantiateOutputs()()
{
  v27 = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  v1 = *(v0 + 32);
  AGGraphClearUpdate();
  v2 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  closure #1 in ViewGraph.instantiateOutputs()(v0, &v24);
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  v3 = v24;
  v4 = v25;
  v5 = v26;
  v19 = v24;
  v20 = v25;
  v21 = v26;
  v16 = partial apply for specialized closure #2 in static UnaryLayout<>.makeViewImpl(modifier:inputs:body:);
  v17 = &v18;
  AGGraphMutateAttribute();
  swift_beginAccess();
  if (*(v0 + 361))
  {
    v6 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v3);
    if ((v6 & 0x100000000) == 0)
    {
      v7 = v6;
      v8 = *(v0 + 32);
      AGGraphClearUpdate();
      v9 = AGSubgraphGetCurrent();
      AGSubgraphSetCurrent();
      v10 = *(v0 + 44);
      v22 = v7;
      v23 = v10;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for (Path, FillStyle)(0, &lazy cache variable for type metadata for (DisplayList, DisplayList.Version), &type metadata for DisplayList, &type metadata for DisplayList.Version);
      lazy protocol witness table accessor for type RootDisplayList and conformance RootDisplayList();
      Attribute.init<A>(body:value:flags:update:)();
      AGSubgraphSetCurrent();

      AGGraphSetUpdate();
      *(v0 + 340) = AGCreateWeakAttribute();
    }
  }

  v11 = *(v0 + 361);
  if ((v11 & 4) != 0)
  {
    _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA014ViewRespondersI0V_TtB5(v3);
    *(v0 + 324) = AGCreateWeakAttribute();
    v11 = *(v0 + 361);
  }

  if ((v11 & 0x10) != 0)
  {
    *(v0 + 332) = AGCreateWeakAttribute();
  }

  _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA04HostcI0V_TtB5(v3);
  v12 = AGCreateWeakAttribute();
  swift_beginAccess();
  *(v0 + 132) = v12;
  v13 = v3;
  v14 = v4;
  v15 = v5;
  ViewGraph.makePreferenceOutlets(outputs:)(&v13);
}

uint64_t ViewGraphRootValueUpdater.updateGraph<A>(body:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v17[-v13];
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a1;
  v22 = a2;
  ViewGraphRootValueUpdater._updateViewGraph<A>(body:)(partial apply for closure #1 in ViewGraphRootValueUpdater.updateGraph<A>(body:), a3, a4, a5, &v17[-v13]);
  v15 = *(a4 - 8);
  result = (*(v15 + 48))(v14, 1, a4);
  if (result != 1)
  {
    return (*(v15 + 32))(a6, v14, a4);
  }

  __break(1u);
  return result;
}

void *closure #1 in ViewGraph.instantiateOutputs()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  swift_beginAccess();
  v4 = *(a1 + 88);
  v65[0] = *(a1 + 72);
  v65[1] = v4;
  v66 = *(a1 + 104);
  v5 = *(a1 + 268);
  v6 = *(a1 + 272);
  v7 = *(a1 + 244);
  v8 = *(a1 + 248);
  v9 = *(a1 + 56);
  v64 = *MEMORY[0x1E698D3F8];
  v60 = v4;
  v61 = v66;
  v59 = v65[0];
  v10 = MEMORY[0x1E69E7CC0];
  *&v62 = MEMORY[0x1E69E7CC0];
  HIDWORD(v63) = v64;
  *(&v62 + 1) = __PAIR64__(v7, v9);
  LODWORD(v63) = v5;
  *(&v63 + 4) = __PAIR64__(v6, v8);
  swift_beginAccess();
  v11 = *(a1 + 361);
  if ((v11 & 0x10) != 0)
  {
    v12 = *(a1 + 276);
    DWORD1(v61) = DWORD1(v66) | 0x22;
    v64 = v12;
  }

  *&v51[0] = v10;
  v13 = PreferenceKeys._index(of:)(&type metadata for HostPreferencesKey);
  outlined init with copy of _GraphInputs(v65, &v53);

  v15 = *(v10 + 2);
  if (v13 == v15)
  {
    goto LABEL_6;
  }

  if (v13 >= v15)
  {
    goto LABEL_57;
  }

  if (*&v10[16 * v13 + 32] != &type metadata for HostPreferencesKey)
  {
LABEL_6:
    if (v15 >= v13)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v62 = v10;
      if (!isUniquelyReferenced_nonNull_native || v15 >= *(v10 + 3) >> 1)
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v15 + 1, 1, MEMORY[0x1E69E7CC0]);
        *&v62 = v10;
      }

      specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v13, v13, 1, &type metadata for HostPreferencesKey, &protocol witness table for HostPreferencesKey);
      *&v62 = v10;
      goto LABEL_11;
    }

    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

LABEL_11:
  if (v11)
  {
    *&v53 = v10;
    v17 = PreferenceKeys._index(of:)(&type metadata for DisplayList.Key);

    v18 = *(v10 + 2);
    if (v17 == v18)
    {
      goto LABEL_15;
    }

    if (v17 >= v18)
    {
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    if (*&v10[16 * v17 + 32] != &type metadata for DisplayList.Key)
    {
LABEL_15:
      if (v18 >= v17)
      {
        v19 = swift_isUniquelyReferenced_nonNull_native();
        *&v62 = v10;
        if (!v19 || v18 >= *(v10 + 3) >> 1)
        {
          v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v19, v18 + 1, 1, v10);
          *&v62 = v10;
        }

        specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v17, v17, 1, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
        *&v62 = v10;
        goto LABEL_20;
      }

LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }
  }

LABEL_20:
  if ((v11 & 4) == 0)
  {
    goto LABEL_29;
  }

  *&v53 = v10;
  v20 = PreferenceKeys._index(of:)(&type metadata for ViewRespondersKey);

  v21 = *(v10 + 2);
  if (v20 != v21)
  {
    if (v20 >= v21)
    {
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    if (*&v10[16 * v20 + 32] == &type metadata for ViewRespondersKey)
    {
      goto LABEL_29;
    }
  }

  if (v21 < v20)
  {
    goto LABEL_59;
  }

  v22 = swift_isUniquelyReferenced_nonNull_native();
  *&v62 = v10;
  if (!v22 || v21 >= *(v10 + 3) >> 1)
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v22, v21 + 1, 1, v10);
    *&v62 = v10;
  }

  specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v20, v20, 1, &type metadata for ViewRespondersKey, &protocol witness table for ViewRespondersKey);
  *&v62 = v10;
LABEL_29:
  if (swift_weakLoadStrong())
  {
    PreferenceBridge.wrapInputs(_:)(&v59);
  }

  swift_beginAccess();
  if ((static _ViewDebug.isInitialized & 1) == 0)
  {
    v23 = getenv("SWIFTUI_VIEW_DEBUG");
    if (v23)
    {
      v24 = atoi(v23);
      swift_beginAccess();
      static _ViewDebug.properties = v24;
    }

    static _ViewDebug.isInitialized = 1;
  }

  swift_beginAccess();
  if (static _ViewDebug.properties)
  {
    AGSubgraphSetShouldRecordTree();
  }

  v25 = WORD2(v61);
  if ((BYTE4(v61) & 0x20) != 0)
  {
    _ViewInputs.makeRootMatchedGeometryScope()();
  }

  if ((v25 & 0x100) != 0)
  {
    AGTypeGetSignature();
    specialized _GraphInputs.pushScope<A>(id:)(v53, *(&v53 + 1), v54);
  }

  MEMORY[0x1EEE9AC00](*(a1 + 264));
  MEMORY[0x1EEE9AC00](v26);
  AGGraphMutateAttribute();
  result = swift_beginAccess();
  v27 = *(a1 + 228);
  if (!v27)
  {
    goto LABEL_48;
  }

  v28 = *(a1 + 216);
  if (!v28)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v29 = 0;
  v30 = v27 - 1;
  do
  {
    v33 = (v28 + v29);
    if (v30)
    {
      v29 += *(v33 + 2);
    }

    else
    {
      v29 = 0;
    }

    v31 = v30 | v29;
    v32 = *v33;
    *&v53 = v33;
    (*(v32 + 112))(&v53, &v59, a1);
    --v30;
  }

  while (v31);
LABEL_48:
  v51[2] = v61;
  v51[3] = v62;
  v51[4] = v63;
  v51[0] = v59;
  v51[1] = v60;
  v46 = v61;
  v47 = v62;
  v48 = v63;
  v34 = *(a1 + 184);
  v52 = v64;
  v35 = *(a1 + 236);
  v49 = v64;
  v44 = v59;
  v45 = v60;
  outlined init with copy of _ViewInputs(v51, &v53);
  v34(v50, v35, &v44);
  v55 = v46;
  v56 = v47;
  v57 = v48;
  v58 = v49;
  v53 = v44;
  v54 = v45;
  result = outlined destroy of _ViewInputs(&v53);
  v36 = *(a1 + 228);
  if (!v36)
  {
LABEL_55:
    *a2 = v50[0];
    a2[1] = v50[1];
    v46 = v61;
    v47 = v62;
    v48 = v63;
    v49 = v64;
    v44 = v59;
    v45 = v60;
    return outlined destroy of _ViewInputs(&v44);
  }

  v37 = *(a1 + 216);
  if (v37)
  {
    v38 = 0;
    v39 = v36 - 1;
    do
    {
      v42 = (v37 + v38);
      if (v39)
      {
        v38 += *(v42 + 2);
      }

      else
      {
        v38 = 0;
      }

      v40 = v39 | v38;
      v46 = v61;
      v47 = v62;
      v48 = v63;
      v49 = v64;
      v44 = v59;
      v45 = v60;
      v41 = *v42;
      v43 = v42;
      (*(v41 + 120))(&v43, v50, &v44, a1);
      --v39;
    }

    while (v40);
    goto LABEL_55;
  }

LABEL_63:
  __break(1u);
  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA20MatchedGeometryScope33_F035CBEF00D3D777B3359545F684D774LLC_Tt2g5(Swift::UInt *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = type metadata accessor for MatchedGeometryScope();
  BloomFilter.init(hashValue:)(v5);
  if (!_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA20MatchedGeometryScope33_F035CBEF00D3D777B3359545F684D774LLC_Tt0B5(v4, v8) || (type metadata accessor for GlassEffectBackdropObserver?(0, &lazy cache variable for type metadata for MatchedGeometryScope?, type metadata accessor for MatchedGeometryScope, MEMORY[0x1E69E6720]), result = AGCompareValues(), !result))
  {
    v7 = *a1;
    type metadata accessor for TypedElement<BodyInput<_ViewModifier_Content<GlassEffectLocalModifier>>>(0, &lazy cache variable for type metadata for TypedElement<MatchedGeometryScope>, type metadata accessor for MatchedGeometryScope, &protocol witness table for MatchedGeometryScope);
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v5, 0, v7);
  }

  return result;
}

void type metadata accessor for TypedElement<BodyInput<_ViewModifier_Content<GlassEffectLocalModifier>>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    v7 = a3(255);
    v9 = type metadata accessor for TypedElement(a1, v7, a4, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t static ViewGraphFeatureBuffer._VTable.modifyViewInputs(elt:inputs:graph:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 176);
  _UnsafeHeterogeneousBuffer_Element.body<A>(as:)();
  return (*(*(v3 + 184) + 8))(a2, a3, v6);
}

uint64_t initializeWithCopy for _ViewInputs(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 2);
  *(a1 + 16) = a2[2];
  *(a1 + 24) = *(a2 + 3);
  v3 = a2[6];
  *(a1 + 40) = a2[5];
  *(a1 + 48) = v3;
  *(a1 + 56) = *(a2 + 7);
  *(a1 + 72) = a2[9];
  *(a1 + 80) = *(a2 + 20);

  return a1;
}

uint64_t destroy for _ViewInputs(void *a1)
{
}

uint64_t specialized CachedEnvironment.attribute<A>(id:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 8);
  v6 = (v5 + 32);
  v7 = *(v5 + 2) + 1;
  while (--v7)
  {
    v8 = v6 + 2;
    v9 = *v6;
    v6 += 2;
    if (v9 == a1)
    {
      return *(v8 - 2);
    }
  }

  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for Map<EnvironmentValues, LayoutDirection>, &type metadata for EnvironmentValues, &type metadata for LayoutDirection, MEMORY[0x1E698D398]);
  lazy protocol witness table accessor for type Map<EnvironmentValues, CGFloat> and conformance Map<A, B>(&lazy protocol witness table cache variable for type Map<EnvironmentValues, LayoutDirection> and conformance Map<A, B>, &lazy cache variable for type metadata for Map<EnvironmentValues, LayoutDirection>, &type metadata for LayoutDirection);

  v11 = Attribute.init<A>(body:value:flags:update:)();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
  }

  v13 = *(v5 + 2);
  v12 = *(v5 + 3);
  if (v13 >= v12 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v5);
  }

  result = v11;
  *(v5 + 2) = v13 + 1;
  v14 = &v5[16 * v13];
  *(v14 + 4) = a1;
  *(v14 + 10) = v11;
  *(v3 + 8) = v5;
  return result;
}

{
  v5 = *(v3 + 8);
  v6 = (v5 + 32);
  v7 = *(v5 + 2) + 1;
  while (--v7)
  {
    v8 = v6 + 2;
    v9 = *v6;
    v6 += 2;
    if (v9 == a1)
    {
      return *(v8 - 2);
    }
  }

  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  v11 = MEMORY[0x1E69E7DE0];
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for Map<EnvironmentValues, CGFloat>, &type metadata for EnvironmentValues, MEMORY[0x1E69E7DE0], MEMORY[0x1E698D398]);
  lazy protocol witness table accessor for type Map<EnvironmentValues, CGFloat> and conformance Map<A, B>(&lazy protocol witness table cache variable for type Map<EnvironmentValues, CGFloat> and conformance Map<A, B>, &lazy cache variable for type metadata for Map<EnvironmentValues, CGFloat>, v11);

  v12 = Attribute.init<A>(body:value:flags:update:)();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
  }

  v14 = *(v5 + 2);
  v13 = *(v5 + 3);
  if (v14 >= v13 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v5);
  }

  result = v12;
  *(v5 + 2) = v14 + 1;
  v15 = &v5[16 * v14];
  *(v15 + 4) = a1;
  *(v15 + 10) = v12;
  *(v3 + 8) = v5;
  return result;
}

{
  v5 = *(v3 + 8);
  v6 = (v5 + 32);
  v7 = *(v5 + 2) + 1;
  while (--v7)
  {
    v8 = v6 + 2;
    v9 = *v6;
    v6 += 2;
    if (v9 == a1)
    {
      return *(v8 - 2);
    }
  }

  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for Map<EnvironmentValues, ContainerShapeData>, &type metadata for EnvironmentValues, &type metadata for ContainerShapeData, MEMORY[0x1E698D398]);
  lazy protocol witness table accessor for type Map<EnvironmentValues, CGFloat> and conformance Map<A, B>(&lazy protocol witness table cache variable for type Map<EnvironmentValues, ContainerShapeData> and conformance Map<A, B>, &lazy cache variable for type metadata for Map<EnvironmentValues, ContainerShapeData>, &type metadata for ContainerShapeData);

  v11 = Attribute.init<A>(body:value:flags:update:)();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
  }

  v13 = *(v5 + 2);
  v12 = *(v5 + 3);
  if (v13 >= v12 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v5);
  }

  result = v11;
  *(v5 + 2) = v13 + 1;
  v14 = &v5[16 * v13];
  *(v14 + 4) = a1;
  *(v14 + 10) = v11;
  *(v3 + 8) = v5;
  return result;
}

{
  v5 = *(v3 + 8);
  v6 = (v5 + 32);
  v7 = *(v5 + 2) + 1;
  while (--v7)
  {
    v8 = v6 + 2;
    v9 = *v6;
    v6 += 2;
    if (v9 == a1)
    {
      return *(v8 - 2);
    }
  }

  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for Map<EnvironmentValues, EdgeInsets>, &type metadata for EnvironmentValues, &type metadata for EdgeInsets, MEMORY[0x1E698D398]);
  lazy protocol witness table accessor for type Map<EnvironmentValues, CGFloat> and conformance Map<A, B>(&lazy protocol witness table cache variable for type Map<EnvironmentValues, EdgeInsets> and conformance Map<A, B>, &lazy cache variable for type metadata for Map<EnvironmentValues, EdgeInsets>, &type metadata for EdgeInsets);

  v11 = Attribute.init<A>(body:value:flags:update:)();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
  }

  v13 = *(v5 + 2);
  v12 = *(v5 + 3);
  if (v13 >= v12 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v5);
  }

  result = v11;
  *(v5 + 2) = v13 + 1;
  v14 = &v5[16 * v13];
  *(v14 + 4) = a1;
  *(v14 + 10) = v11;
  *(v3 + 8) = v5;
  return result;
}

{
  v5 = *(v3 + 8);
  v6 = (v5 + 32);
  v7 = *(v5 + 2) + 1;
  while (--v7)
  {
    v8 = v6 + 2;
    v9 = *v6;
    v6 += 2;
    if (v9 == a1)
    {
      return *(v8 - 2);
    }
  }

  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  v11 = MEMORY[0x1E69E6370];
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for Map<EnvironmentValues, Bool>, &type metadata for EnvironmentValues, MEMORY[0x1E69E6370], MEMORY[0x1E698D398]);
  lazy protocol witness table accessor for type Map<EnvironmentValues, CGFloat> and conformance Map<A, B>(&lazy protocol witness table cache variable for type Map<EnvironmentValues, Bool> and conformance Map<A, B>, &lazy cache variable for type metadata for Map<EnvironmentValues, Bool>, v11);

  v12 = Attribute.init<A>(body:value:flags:update:)();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
  }

  v14 = *(v5 + 2);
  v13 = *(v5 + 3);
  if (v14 >= v13 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v5);
  }

  result = v12;
  *(v5 + 2) = v14 + 1;
  v15 = &v5[16 * v14];
  *(v15 + 4) = a1;
  *(v15 + 10) = v12;
  *(v3 + 8) = v5;
  return result;
}

{
  v5 = *(v3 + 8);
  v6 = (v5 + 32);
  v7 = *(v5 + 2) + 1;
  while (--v7)
  {
    v8 = v6 + 2;
    v9 = *v6;
    v6 += 2;
    if (v9 == a1)
    {
      return *(v8 - 2);
    }
  }

  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for Map<EnvironmentValues, ScrollAnchorStorage>, &type metadata for EnvironmentValues, &type metadata for ScrollAnchorStorage, MEMORY[0x1E698D398]);
  lazy protocol witness table accessor for type Map<EnvironmentValues, CGFloat> and conformance Map<A, B>(&lazy protocol witness table cache variable for type Map<EnvironmentValues, ScrollAnchorStorage> and conformance Map<A, B>, &lazy cache variable for type metadata for Map<EnvironmentValues, ScrollAnchorStorage>, &type metadata for ScrollAnchorStorage);

  v11 = Attribute.init<A>(body:value:flags:update:)();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
  }

  v13 = *(v5 + 2);
  v12 = *(v5 + 3);
  if (v13 >= v12 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v5);
  }

  result = v11;
  *(v5 + 2) = v13 + 1;
  v14 = &v5[16 * v13];
  *(v14 + 4) = a1;
  *(v14 + 10) = v11;
  *(v3 + 8) = v5;
  return result;
}

{
  v5 = *(v3 + 8);
  v6 = (v5 + 32);
  v7 = *(v5 + 2) + 1;
  while (--v7)
  {
    v8 = v6 + 2;
    v9 = *v6;
    v6 += 2;
    if (v9 == a1)
    {
      return *(v8 - 2);
    }
  }

  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for Map<EnvironmentValues, Axis.Set>, &type metadata for EnvironmentValues, &type metadata for Axis.Set, MEMORY[0x1E698D398]);
  lazy protocol witness table accessor for type Map<EnvironmentValues, CGFloat> and conformance Map<A, B>(&lazy protocol witness table cache variable for type Map<EnvironmentValues, Axis.Set> and conformance Map<A, B>, &lazy cache variable for type metadata for Map<EnvironmentValues, Axis.Set>, &type metadata for Axis.Set);

  v11 = Attribute.init<A>(body:value:flags:update:)();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
  }

  v13 = *(v5 + 2);
  v12 = *(v5 + 3);
  if (v13 >= v12 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v5);
  }

  result = v11;
  *(v5 + 2) = v13 + 1;
  v14 = &v5[16 * v13];
  *(v14 + 4) = a1;
  *(v14 + 10) = v11;
  *(v3 + 8) = v5;
  return result;
}

{
  v5 = *(v3 + 8);
  v6 = (v5 + 32);
  v7 = *(v5 + 2) + 1;
  while (--v7)
  {
    v8 = v6 + 2;
    v9 = *v6;
    v6 += 2;
    if (v9 == a1)
    {
      return *(v8 - 2);
    }
  }

  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  _sypSgMaTm_8(0, &lazy cache variable for type metadata for Color?, &type metadata for Color, MEMORY[0x1E69E6720]);
  type metadata accessor for Map<EnvironmentValues, Color?>(0);
  lazy protocol witness table accessor for type Map<EnvironmentValues, GlassEffectBackdropObserver?> and conformance Map<A, B>(&lazy protocol witness table cache variable for type Map<EnvironmentValues, Color?> and conformance Map<A, B>, type metadata accessor for Map<EnvironmentValues, Color?>);

  v11 = Attribute.init<A>(body:value:flags:update:)();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
  }

  v13 = *(v5 + 2);
  v12 = *(v5 + 3);
  if (v13 >= v12 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v5);
  }

  result = v11;
  *(v5 + 2) = v13 + 1;
  v14 = &v5[16 * v13];
  *(v14 + 4) = a1;
  *(v14 + 10) = v11;
  *(v3 + 8) = v5;
  return result;
}

{
  v5 = *(v3 + 8);
  v6 = (v5 + 32);
  v7 = *(v5 + 2) + 1;
  while (--v7)
  {
    v8 = v6 + 2;
    v9 = *v6;
    v6 += 2;
    if (v9 == a1)
    {
      return *(v8 - 2);
    }
  }

  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  _sypSgMaTm_8(0, &lazy cache variable for type metadata for AnyShapeStyle?, &type metadata for AnyShapeStyle, MEMORY[0x1E69E6720]);
  type metadata accessor for Map<EnvironmentValues, AnyShapeStyle?>(0);
  lazy protocol witness table accessor for type Map<EnvironmentValues, GlassEffectBackdropObserver?> and conformance Map<A, B>(&lazy protocol witness table cache variable for type Map<EnvironmentValues, AnyShapeStyle?> and conformance Map<A, B>, type metadata accessor for Map<EnvironmentValues, AnyShapeStyle?>);

  v11 = Attribute.init<A>(body:value:flags:update:)();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
  }

  v13 = *(v5 + 2);
  v12 = *(v5 + 3);
  if (v13 >= v12 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v5);
  }

  result = v11;
  *(v5 + 2) = v13 + 1;
  v14 = &v5[16 * v13];
  *(v14 + 4) = a1;
  *(v14 + 10) = v11;
  *(v3 + 8) = v5;
  return result;
}

{
  v5 = *(v3 + 8);
  v6 = (v5 + 32);
  v7 = *(v5 + 2) + 1;
  while (--v7)
  {
    v8 = v6 + 2;
    v9 = *v6;
    v6 += 2;
    if (v9 == a1)
    {
      return *(v8 - 2);
    }
  }

  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for Map<EnvironmentValues, RedactionReasons>, &type metadata for EnvironmentValues, &type metadata for RedactionReasons, MEMORY[0x1E698D398]);
  lazy protocol witness table accessor for type Map<EnvironmentValues, CGFloat> and conformance Map<A, B>(&lazy protocol witness table cache variable for type Map<EnvironmentValues, RedactionReasons> and conformance Map<A, B>, &lazy cache variable for type metadata for Map<EnvironmentValues, RedactionReasons>, &type metadata for RedactionReasons);

  v11 = Attribute.init<A>(body:value:flags:update:)();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
  }

  v13 = *(v5 + 2);
  v12 = *(v5 + 3);
  if (v13 >= v12 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v5);
  }

  result = v11;
  *(v5 + 2) = v13 + 1;
  v14 = &v5[16 * v13];
  *(v14 + 4) = a1;
  *(v14 + 10) = v11;
  *(v3 + 8) = v5;
  return result;
}

{
  v5 = *(v3 + 8);
  v6 = (v5 + 32);
  v7 = *(v5 + 2) + 1;
  while (--v7)
  {
    v8 = v6 + 2;
    v9 = *v6;
    v6 += 2;
    if (v9 == a1)
    {
      return *(v8 - 2);
    }
  }

  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  _s7SwiftUI27GlassEffectBackdropObserverCSgMaTm_1(0, &lazy cache variable for type metadata for GestureConstantsProvider.Type?, type metadata accessor for GestureConstantsProvider.Type, MEMORY[0x1E69E6720]);
  type metadata accessor for Map<EnvironmentValues, GestureConstantsProvider.Type?>(0);
  lazy protocol witness table accessor for type Map<EnvironmentValues, GlassEffectBackdropObserver?> and conformance Map<A, B>(&lazy protocol witness table cache variable for type Map<EnvironmentValues, GestureConstantsProvider.Type?> and conformance Map<A, B>, type metadata accessor for Map<EnvironmentValues, GestureConstantsProvider.Type?>);

  v11 = Attribute.init<A>(body:value:flags:update:)();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
  }

  v13 = *(v5 + 2);
  v12 = *(v5 + 3);
  if (v13 >= v12 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v5);
  }

  result = v11;
  *(v5 + 2) = v13 + 1;
  v14 = &v5[16 * v13];
  *(v14 + 4) = a1;
  *(v14 + 10) = v11;
  *(v3 + 8) = v5;
  return result;
}

{
  v5 = *(v3 + 8);
  v6 = (v5 + 32);
  v7 = *(v5 + 2) + 1;
  while (--v7)
  {
    v8 = v6 + 2;
    v9 = *v6;
    v6 += 2;
    if (v9 == a1)
    {
      return *(v8 - 2);
    }
  }

  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for Map<EnvironmentValues, ContentTransitionEffect>, &type metadata for EnvironmentValues, &type metadata for ContentTransitionEffect, MEMORY[0x1E698D398]);
  lazy protocol witness table accessor for type Map<EnvironmentValues, CGFloat> and conformance Map<A, B>(&lazy protocol witness table cache variable for type Map<EnvironmentValues, ContentTransitionEffect> and conformance Map<A, B>, &lazy cache variable for type metadata for Map<EnvironmentValues, ContentTransitionEffect>, &type metadata for ContentTransitionEffect);

  v11 = Attribute.init<A>(body:value:flags:update:)();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
  }

  v13 = *(v5 + 2);
  v12 = *(v5 + 3);
  if (v13 >= v12 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v5);
  }

  result = v11;
  *(v5 + 2) = v13 + 1;
  v14 = &v5[16 * v13];
  *(v14 + 4) = a1;
  *(v14 + 10) = v11;
  *(v3 + 8) = v5;
  return result;
}

{
  v5 = *(v3 + 8);
  v6 = (v5 + 32);
  v7 = *(v5 + 2) + 1;
  while (--v7)
  {
    v8 = v6 + 2;
    v9 = *v6;
    v6 += 2;
    if (v9 == a1)
    {
      return *(v8 - 2);
    }
  }

  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  _s7SwiftUI27GlassEffectBackdropObserverCSgMaTm_1(0, &lazy cache variable for type metadata for GlassEffectBackdropObserver?, type metadata accessor for GlassEffectBackdropObserver, MEMORY[0x1E69E6720]);
  type metadata accessor for Map<EnvironmentValues, GlassEffectBackdropObserver?>(0);
  lazy protocol witness table accessor for type Map<EnvironmentValues, GlassEffectBackdropObserver?> and conformance Map<A, B>(&lazy protocol witness table cache variable for type Map<EnvironmentValues, GlassEffectBackdropObserver?> and conformance Map<A, B>, type metadata accessor for Map<EnvironmentValues, GlassEffectBackdropObserver?>);

  v11 = Attribute.init<A>(body:value:flags:update:)();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
  }

  v13 = *(v5 + 2);
  v12 = *(v5 + 3);
  if (v13 >= v12 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v5);
  }

  result = v11;
  *(v5 + 2) = v13 + 1;
  v14 = &v5[16 * v13];
  *(v14 + 4) = a1;
  *(v14 + 10) = v11;
  *(v3 + 8) = v5;
  return result;
}

{
  v5 = *(v3 + 8);
  v6 = (v5 + 32);
  v7 = *(v5 + 2) + 1;
  while (--v7)
  {
    v8 = v6 + 2;
    v9 = *v6;
    v6 += 2;
    if (v9 == a1)
    {
      return *(v8 - 2);
    }
  }

  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  _sypSgMaTm_8(0, &lazy cache variable for type metadata for MaterialBackdropProxy?, &type metadata for MaterialBackdropProxy, MEMORY[0x1E69E6720]);
  type metadata accessor for Map<EnvironmentValues, MaterialBackdropProxy?>(0);
  lazy protocol witness table accessor for type Map<EnvironmentValues, GlassEffectBackdropObserver?> and conformance Map<A, B>(&lazy protocol witness table cache variable for type Map<EnvironmentValues, MaterialBackdropProxy?> and conformance Map<A, B>, type metadata accessor for Map<EnvironmentValues, MaterialBackdropProxy?>);

  v11 = Attribute.init<A>(body:value:flags:update:)();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
  }

  v13 = *(v5 + 2);
  v12 = *(v5 + 3);
  if (v13 >= v12 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v5);
  }

  result = v11;
  *(v5 + 2) = v13 + 1;
  v14 = &v5[16 * v13];
  *(v14 + 4) = a1;
  *(v14 + 10) = v11;
  *(v3 + 8) = v5;
  return result;
}

{
  v5 = *(v3 + 8);
  v6 = (v5 + 32);
  v7 = *(v5 + 2) + 1;
  while (--v7)
  {
    v8 = v6 + 2;
    v9 = *v6;
    v6 += 2;
    if (v9 == a1)
    {
      return *(v8 - 2);
    }
  }

  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  _sypSgMaTm_8(0, &lazy cache variable for type metadata for HoverEffectContext?, &type metadata for HoverEffectContext, MEMORY[0x1E69E6720]);
  type metadata accessor for Map<EnvironmentValues, HoverEffectContext?>(0);
  lazy protocol witness table accessor for type Map<EnvironmentValues, GlassEffectBackdropObserver?> and conformance Map<A, B>(&lazy protocol witness table cache variable for type Map<EnvironmentValues, HoverEffectContext?> and conformance Map<A, B>, type metadata accessor for Map<EnvironmentValues, HoverEffectContext?>);

  v11 = Attribute.init<A>(body:value:flags:update:)();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
  }

  v13 = *(v5 + 2);
  v12 = *(v5 + 3);
  if (v13 >= v12 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v5);
  }

  result = v11;
  *(v5 + 2) = v13 + 1;
  v14 = &v5[16 * v13];
  *(v14 + 4) = a1;
  *(v14 + 10) = v11;
  *(v3 + 8) = v5;
  return result;
}

{
  v5 = *(v3 + 8);
  v6 = (v5 + 32);
  v7 = *(v5 + 2) + 1;
  while (--v7)
  {
    v8 = v6 + 2;
    v9 = *v6;
    v6 += 2;
    if (v9 == a1)
    {
      return *(v8 - 2);
    }
  }

  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for Map<EnvironmentValues, ControlSize>, &type metadata for EnvironmentValues, &type metadata for ControlSize, MEMORY[0x1E698D398]);
  lazy protocol witness table accessor for type Map<EnvironmentValues, CGFloat> and conformance Map<A, B>(&lazy protocol witness table cache variable for type Map<EnvironmentValues, ControlSize> and conformance Map<A, B>, &lazy cache variable for type metadata for Map<EnvironmentValues, ControlSize>, &type metadata for ControlSize);

  v11 = Attribute.init<A>(body:value:flags:update:)();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
  }

  v13 = *(v5 + 2);
  v12 = *(v5 + 3);
  if (v13 >= v12 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v5);
  }

  result = v11;
  *(v5 + 2) = v13 + 1;
  v14 = &v5[16 * v13];
  *(v14 + 4) = a1;
  *(v14 + 10) = v11;
  *(v3 + 8) = v5;
  return result;
}

{
  v5 = *(v3 + 8);
  v6 = (v5 + 32);
  v7 = *(v5 + 2) + 1;
  while (--v7)
  {
    v8 = v6 + 2;
    v9 = *v6;
    v6 += 2;
    if (v9 == a1)
    {
      return *(v8 - 2);
    }
  }

  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  _sypSgMaTm_8(0, &lazy cache variable for type metadata for UserInterfaceSizeClass?, &type metadata for UserInterfaceSizeClass, MEMORY[0x1E69E6720]);
  type metadata accessor for Map<EnvironmentValues, UserInterfaceSizeClass?>(0);
  lazy protocol witness table accessor for type Map<EnvironmentValues, GlassEffectBackdropObserver?> and conformance Map<A, B>(&lazy protocol witness table cache variable for type Map<EnvironmentValues, UserInterfaceSizeClass?> and conformance Map<A, B>, type metadata accessor for Map<EnvironmentValues, UserInterfaceSizeClass?>);

  v11 = Attribute.init<A>(body:value:flags:update:)();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
  }

  v13 = *(v5 + 2);
  v12 = *(v5 + 3);
  if (v13 >= v12 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v5);
  }

  result = v11;
  *(v5 + 2) = v13 + 1;
  v14 = &v5[16 * v13];
  *(v14 + 4) = a1;
  *(v14 + 10) = v11;
  *(v3 + 8) = v5;
  return result;
}

{
  v5 = *(v3 + 8);
  v6 = (v5 + 32);
  v7 = *(v5 + 2) + 1;
  while (--v7)
  {
    v8 = v6 + 2;
    v9 = *v6;
    v6 += 2;
    if (v9 == a1)
    {
      return *(v8 - 2);
    }
  }

  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for Map<EnvironmentValues, ColorScheme>, &type metadata for EnvironmentValues, &type metadata for ColorScheme, MEMORY[0x1E698D398]);
  lazy protocol witness table accessor for type Map<EnvironmentValues, CGFloat> and conformance Map<A, B>(&lazy protocol witness table cache variable for type Map<EnvironmentValues, ColorScheme> and conformance Map<A, B>, &lazy cache variable for type metadata for Map<EnvironmentValues, ColorScheme>, &type metadata for ColorScheme);

  v11 = Attribute.init<A>(body:value:flags:update:)();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
  }

  v13 = *(v5 + 2);
  v12 = *(v5 + 3);
  if (v13 >= v12 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v5);
  }

  result = v11;
  *(v5 + 2) = v13 + 1;
  v14 = &v5[16 * v13];
  *(v14 + 4) = a1;
  *(v14 + 10) = v11;
  *(v3 + 8) = v5;
  return result;
}

void lazy protocol witness table accessor for type Map<EnvironmentValues, CGFloat> and conformance Map<A, B>(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  if (!*a1)
  {
    _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(255, a2, &type metadata for EnvironmentValues, a3, MEMORY[0x1E698D398]);
    swift_getWitnessTable(MEMORY[0x1E698D3A0], v4);
    atomic_store(v5, a1);
  }
}

uint64_t CachedEnvironment.animatedPosition(for:)(__int128 *a1)
{
  v2 = a1[3];
  v39 = a1[2];
  v40 = v2;
  v41 = a1[4];
  v42 = *(a1 + 20);
  v3 = a1[1];
  v37 = *a1;
  v38 = v3;
  if ((BYTE4(v39) & 0x20) == 0)
  {
    return v41;
  }

  v6 = HIDWORD(v38);
  *v31 = *a1;
  *&v31[12] = *(a1 + 12);
  v7 = a1[3];
  v33 = a1[2];
  v34 = v7;
  v35 = a1[4];
  v8 = *(a1 + 20);
  v32 = HIDWORD(v38);
  v36 = v8;
  v9 = *v31;
  v10 = *&v31[8];
  v11 = *&v31[24];
  outlined init with copy of _ViewInputs(&v37, v26);
  outlined init with copy of _ViewInputs(v31, v26);
  v12 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE016SavedTransactionF033_A1B10B5AB036C34AB7DD2EE8825FCA93LLV_Tt2g5Tf4n_g(v9);
  if (*(v12 + 16))
  {
    v6 = *(v12 + 32);
  }

  outlined destroy of _ViewInputs(v31);
  if (one-time initialization token for pixelLength != -1)
  {
    swift_once();
  }

  v13 = specialized CachedEnvironment.attribute<A>(id:_:)(static CachedEnvironment.ID.pixelLength, key path getter for EnvironmentValues.pixelLength : EnvironmentValues, 0);
  v14 = v13;
  if ((*(v1 + 65) & 1) != 0 || *(v1 + 16) != v35 || *(v1 + 20) != __PAIR64__(v13, DWORD2(v35)) || *(v1 + 28) != v10 || *(v1 + 32) != v6 || *(v1 + 36) != v11)
  {
    *&v26[12] = *(a1 + 12);
    *v26 = *a1;
    v15 = a1[3];
    v27 = a1[2];
    v28 = v15;
    v29 = a1[4];
    v16 = *(a1 + 20);
    *&v26[28] = v6;
    v30 = v16;
    v24[3] = v15;
    v24[4] = v29;
    v25 = v16;
    v24[0] = *v26;
    v24[1] = *&v26[16];
    v24[2] = v27;
    v17 = *v1;
    outlined init with copy of _ViewInputs(v26, v22);
    CachedEnvironment.AnimatedFrame.init(inputs:pixelLength:environment:)(v24, v14, v17, v22);
    LOBYTE(v24[0]) = 0;
    v18 = v22[1];
    *(v1 + 16) = v22[0];
    *(v1 + 32) = v18;
    *(v1 + 48) = v22[2];
    *(v1 + 64) = v23;
    *(v1 + 65) = 0;
  }

  if (*(v1 + 48) == 1)
  {
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    *(v1 + 44) = OffsetAttribute2;
    *(v1 + 48) = 0;
  }

  else
  {
    OffsetAttribute2 = *(v1 + 44);
  }

  *v26 = *a1;
  *&v26[12] = *(a1 + 12);
  v19 = a1[3];
  v27 = a1[2];
  v28 = v19;
  v29 = a1[4];
  v20 = *(a1 + 20);
  *&v26[28] = v6;
  v30 = v20;
  outlined destroy of _ViewInputs(v26);
  return OffsetAttribute2;
}

void *CachedEnvironment.AnimatedFrame.init(inputs:pixelLength:environment:)@<X0>(__int128 *a1@<X0>, unsigned int a2@<W1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a1[4];
  v7 = a1[1];
  v27 = *a1;
  v28 = v7;
  v8 = a1[3];
  v29 = a1[2];
  v30 = v8;
  v31 = v6;
  v32 = *(a1 + 20);
  v9 = v6;
  v10 = DWORD2(v6);
  v11 = DWORD2(v27);
  v12 = DWORD2(v28);
  v13 = HIDWORD(v28);
  v16[0] = v6;
  v16[1] = DWORD2(v6);
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = DWORD2(v28);
  v16[5] = DWORD2(v27);
  v16[6] = HIDWORD(v28);
  v17 = 0u;
  v18 = 0u;
  LOBYTE(v19) = 1;
  v20 = 0;
  v21 = 0;
  if ((WORD2(v29) & 0x400) != 0)
  {
    v23 = 0;
    v24[0] = 1;
    memset(&v24[8], 0, 40);
    v25 = 1;
    v26 = BYTE4(v29) & 1;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type AnimatableFrameAttributeVFD and conformance AnimatableFrameAttributeVFD();
    v14 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableFrameAttributeVFD(v16);
  }

  else
  {
    v22 = BYTE4(v29) & 1;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type AnimatableFrameAttribute and conformance AnimatableFrameAttribute();
    v14 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableFrameAttribute(v16);
  }

  AGGraphSetFlags();
  result = outlined destroy of _ViewInputs(&v27);
  *a4 = v9;
  *(a4 + 4) = v10;
  *(a4 + 8) = a2;
  *(a4 + 12) = v11;
  *(a4 + 16) = v13;
  *(a4 + 20) = v12;
  *(a4 + 24) = v14;
  *(a4 + 28) = 0;
  *(a4 + 32) = 1;
  *(a4 + 36) = 0;
  *(a4 + 40) = 1;
  *(a4 + 44) = 0;
  *(a4 + 48) = 1;
  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesV015LayoutDirectionV0VG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesV015LayoutDirectionV0VG_Tt0B5(result[3], a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.LayoutDirectionKey>, &type metadata for EnvironmentValues.LayoutDirectionKey, &protocol witness table for EnvironmentValues.LayoutDirectionKey, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA016LegibilityWeightV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA016LegibilityWeightV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(result[3], a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<LegibilityWeightKey>, &type metadata for LegibilityWeightKey, &protocol witness table for LegibilityWeightKey, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV015LayoutDirectionS0VG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.LayoutDirectionKey>, &type metadata for EnvironmentValues.LayoutDirectionKey, &protocol witness table for EnvironmentValues.LayoutDirectionKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesV015LayoutDirectionV0VG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA015DynamicTypeSizeV033_B498FA81088CF7FADFFFFFC897E05C74LLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA015DynamicTypeSizeV033_B498FA81088CF7FADFFFFFC897E05C74LLVG_Tt0B5(result[3], a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DynamicTypeSizeKey>, &type metadata for DynamicTypeSizeKey, &protocol witness table for DynamicTypeSizeKey, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA015DynamicTypeSizeS033_B498FA81088CF7FADFFFFFC897E05C74LLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DynamicTypeSizeKey>, &type metadata for DynamicTypeSizeKey, &protocol witness table for DynamicTypeSizeKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA015DynamicTypeSizeV033_B498FA81088CF7FADFFFFFC897E05C74LLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA016LegibilityWeightS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<LegibilityWeightKey>, &type metadata for LegibilityWeightKey, &protocol witness table for LegibilityWeightKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA016LegibilityWeightV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA032HorizontalUserInterfaceSizeClassS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<HorizontalUserInterfaceSizeClassKey>, &type metadata for HorizontalUserInterfaceSizeClassKey, &protocol witness table for HorizontalUserInterfaceSizeClassKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA032HorizontalUserInterfaceSizeClassV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA012DisplayGamutS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DisplayGamutKey>, &type metadata for DisplayGamutKey, &protocol witness table for DisplayGamutKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA012DisplayGamutV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA012DisplayGamutV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA012DisplayGamutV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(result[3], a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DisplayGamutKey>, &type metadata for DisplayGamutKey, &protocol witness table for DisplayGamutKey, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<DisplayScaleKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<DisplayScaleKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DisplayScaleKey>, &type metadata for DisplayScaleKey, &protocol witness table for DisplayScaleKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DisplayScaleKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<DisplayScaleKey>>);
    }
  }
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA030VerticalUserInterfaceSizeClassS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<VerticalUserInterfaceSizeClassKey>, &type metadata for VerticalUserInterfaceSizeClassKey, &protocol witness table for VerticalUserInterfaceSizeClassKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA030VerticalUserInterfaceSizeClassV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<DisplayGamutKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<DisplayGamutKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DisplayGamutKey>, &type metadata for DisplayGamutKey, &protocol witness table for DisplayGamutKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<DisplayGamutKey> and conformance EnvironmentPropertyKey<A>);
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<DisplayScaleKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<DisplayScaleKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DisplayScaleKey>, &type metadata for DisplayScaleKey, &protocol witness table for DisplayScaleKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<DisplayScaleKey> and conformance EnvironmentPropertyKey<A>);
  }
}

Swift::Void __swiftcall ViewGraphRootValueUpdater.updateGraph()()
{
  v3 = v2;
  v4 = v1;
  v5 = v0;
  v27 = *MEMORY[0x1E69E9840];
  v6 = type metadata accessor for CustomAttributeWriter(0, &lazy cache variable for type metadata for ViewGraphOwner, &protocol descriptor for ViewGraphOwner, 0);
  (*(*(v4 + 8) + 16))(&v23, v6, v6, v5);
  v7 = v23;
  if (v23)
  {
    v8 = v24;
    ObjectType = swift_getObjectType();
    v10 = (*(v8 + 40))(ObjectType, v8);
    if (v10)
    {
      MEMORY[0x1EEE9AC00](v10);
      v18[2] = v5;
      v18[3] = v4;
      v12 = v11;
      v19 = v11;
      v20 = v7;
      v21 = v8;
      v22 = v3;
      if ([objc_opt_self() isMainThread])
      {
        closure #1 in ViewGraphRootValueUpdater.updateGraph()(v12, v7, v8, v3, v5, v4);
        swift_unknownObjectRelease();
      }

      else
      {
        v13 = swift_allocObject();
        *(v13 + 16) = partial apply for closure #1 in ViewGraphRootValueUpdater.updateGraph();
        *(v13 + 24) = v18;
        v14 = AGSubgraphGetCurrent();
        CurrentAttribute = AGGraphGetCurrentAttribute();
        v23 = partial apply for thunk for @callee_guaranteed () -> ();
        v24 = v13;
        v25 = v14;
        v26 = CurrentAttribute;
        v16 = one-time initialization token for _lock;

        if (v16 != -1)
        {
          swift_once();
        }

        _MovableLockSyncMain(static Update._lock, &v23, @objc closure #1 in closure #1 in closure #1 in static Update.syncMain(_:));
        v17 = v25;

        LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();
        swift_unknownObjectRelease();

        if (v17)
        {
          __break(1u);
        }
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA012DisplayGamutF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2B5(uint64_t *a1, char a2)
{
  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA012DisplayGamutS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(*a1);
  if (!result || *(result + 72) != (a2 & 1))
  {
    v5 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<DisplayGamutKey>>(0);
    *(swift_allocObject() + 72) = a2 & 1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DisplayGamutKey>, &type metadata for DisplayGamutKey, &protocol witness table for DisplayGamutKey, type metadata accessor for EnvironmentPropertyKey);
    v7 = v6;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v7, 0, v5);
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<DisplayGamutKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<DisplayGamutKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DisplayGamutKey>, &type metadata for DisplayGamutKey, &protocol witness table for DisplayGamutKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DisplayGamutKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<DisplayGamutKey>>);
    }
  }
}

uint64_t closure #1 in ViewGraphRootValueUpdater.updateGraph()(__int16 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = a1;
  v12 = swift_allocObject();
  v12[2] = a5;
  v12[3] = a6;
  v12[4] = a4;
  swift_unknownObjectRetain();
  if (v10)
  {
    ObjectType = swift_getObjectType();
    v15 = (*(a3 + 56))(v49, ObjectType, a3);
    if (*v14)
    {
      *v14 &= ~1u;
    }

    v15(v49, 0);
    (*(v12[3] + 16))(v12[2]);
  }

  v16 = swift_allocObject();
  v16[2] = a5;
  v16[3] = a6;
  v16[4] = a4;
  swift_unknownObjectRetain();
  if ((a1 & 2) != 0)
  {
    v17 = swift_getObjectType();
    v19 = (*(a3 + 56))(v49, v17, a3);
    if ((*v18 & 2) != 0)
    {
      *v18 &= ~2u;
    }

    v19(v49, 0);
    (*(v16[3] + 24))(v16[2]);
  }

  v20 = swift_allocObject();
  v20[2] = a5;
  v20[3] = a6;
  v20[4] = a4;
  swift_unknownObjectRetain();
  if ((a1 & 4) != 0)
  {
    v21 = swift_getObjectType();
    v23 = (*(a3 + 56))(v49, v21, a3);
    if ((*v22 & 4) != 0)
    {
      *v22 &= ~4u;
    }

    v23(v49, 0);
    (*(v20[3] + 32))(v20[2]);
  }

  v24 = swift_allocObject();
  v24[2] = a5;
  v24[3] = a6;
  v24[4] = a4;
  swift_unknownObjectRetain();
  if ((a1 & 8) != 0)
  {
    v25 = swift_getObjectType();
    v27 = (*(a3 + 56))(v49, v25, a3);
    if ((*v26 & 8) != 0)
    {
      *v26 &= ~8u;
    }

    v27(v49, 0);
    (*(v24[3] + 40))(v24[2]);
  }

  v28 = swift_allocObject();
  v28[2] = a5;
  v28[3] = a6;
  v28[4] = a4;
  swift_unknownObjectRetain();
  if ((a1 & 0x10) != 0)
  {
    v29 = swift_getObjectType();
    v31 = (*(a3 + 56))(v49, v29, a3);
    if ((*v30 & 0x10) != 0)
    {
      *v30 &= ~0x10u;
    }

    v31(v49, 0);
    (*(v28[3] + 48))(v28[2]);
  }

  v32 = swift_allocObject();
  v32[2] = a5;
  v32[3] = a6;
  v32[4] = a4;
  swift_unknownObjectRetain();
  if ((a1 & 0x20) != 0)
  {
    v33 = swift_getObjectType();
    v35 = (*(a3 + 56))(v49, v33, a3);
    if ((*v34 & 0x20) != 0)
    {
      *v34 &= ~0x20u;
    }

    v35(v49, 0);
    (*(v32[3] + 56))(v32[2]);
  }

  v36 = swift_allocObject();
  v36[2] = a5;
  v36[3] = a6;
  v36[4] = a4;
  swift_unknownObjectRetain();
  if ((a1 & 0x40) != 0)
  {
    v37 = swift_getObjectType();
    v39 = (*(a3 + 56))(v49, v37, a3);
    if ((*v38 & 0x40) != 0)
    {
      *v38 &= ~0x40u;
    }

    v39(v49, 0);
    (*(v36[3] + 64))(v36[2]);
  }

  v40 = swift_allocObject();
  v40[2] = a5;
  v40[3] = a6;
  v40[4] = a4;
  swift_unknownObjectRetain();
  if ((a1 & 0x80) != 0)
  {
    v41 = swift_getObjectType();
    v43 = (*(a3 + 56))(v49, v41, a3);
    if ((*v42 & 0x80) != 0)
    {
      *v42 &= ~0x80u;
    }

    v43(v49, 0);
    (*(v40[3] + 72))(v40[2]);
  }

  v44 = swift_allocObject();
  v44[2] = a5;
  v44[3] = a6;
  v44[4] = a4;
  swift_unknownObjectRetain();
  if ((a1 & 0x100) != 0)
  {
    v45 = swift_getObjectType();
    v47 = (*(a3 + 56))(v49, v45, a3);
    if ((*v46 & 0x100) != 0)
    {
      *v46 &= ~0x100u;
    }

    v47(v49, 0);
    (*(v44[3] + 80))(v44[2]);
  }
}

uint64_t sub_18D033D0C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

double *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA012DisplayScaleF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(uint64_t *a1, double a2)
{
  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA012DisplayScaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(*a1);
  if (!result || result[9] != a2)
  {
    v5 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<DisplayScaleKey>>(0);
    *(swift_allocObject() + 72) = a2;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DisplayScaleKey>, &type metadata for DisplayScaleKey, &protocol witness table for DisplayScaleKey, type metadata accessor for EnvironmentPropertyKey);
    v7 = v6;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v7, 0, v5);
  }

  return result;
}

uint64_t ViewGraphRootValueUpdater._updateViewGraph<A>(body:)@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for CustomAttributeWriter(0, &lazy cache variable for type metadata for ViewGraphOwner, &protocol descriptor for ViewGraphOwner, 0);
  (*(*(a4 + 8) + 16))(v15, v10, v10, a2);
  if (!v15[0])
  {
    return (*(*(a3 - 8) + 56))(a5, 1, 1, a3);
  }

  v11 = v15[1];
  ObjectType = swift_getObjectType();
  v13 = (*(v11 + 8))(ObjectType, v11);
  swift_unknownObjectRelease();
  specialized static Update.begin()();
  AGGraphClearUpdate();
  ViewGraphRootValueUpdater.updateGraph()();
  a1(v13);
  (*(*(a3 - 8) + 56))(a5, 0, 1, a3);
  AGGraphSetUpdate();
  static Update.end()();
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<ReducedLuminanceKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<ReducedLuminanceKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ReducedLuminanceKey>, &type metadata for ReducedLuminanceKey, &protocol witness table for ReducedLuminanceKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<ReducedLuminanceKey> and conformance EnvironmentPropertyKey<A>);
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.LayoutDirectionKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.LayoutDirectionKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.LayoutDirectionKey>, &type metadata for EnvironmentValues.LayoutDirectionKey, &protocol witness table for EnvironmentValues.LayoutDirectionKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.LayoutDirectionKey> and conformance EnvironmentPropertyKey<A>);
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<DynamicTypeSizeKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<DynamicTypeSizeKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DynamicTypeSizeKey>, &type metadata for DynamicTypeSizeKey, &protocol witness table for DynamicTypeSizeKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<DynamicTypeSizeKey> and conformance EnvironmentPropertyKey<A>);
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<LegibilityWeightKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<LegibilityWeightKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<LegibilityWeightKey>, &type metadata for LegibilityWeightKey, &protocol witness table for LegibilityWeightKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<LegibilityWeightKey> and conformance EnvironmentPropertyKey<A>);
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<HorizontalUserInterfaceSizeClassKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<HorizontalUserInterfaceSizeClassKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<HorizontalUserInterfaceSizeClassKey>, &type metadata for HorizontalUserInterfaceSizeClassKey, &protocol witness table for HorizontalUserInterfaceSizeClassKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<HorizontalUserInterfaceSizeClassKey> and conformance EnvironmentPropertyKey<A>);
  }
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA032HorizontalUserInterfaceSizeClassV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA032HorizontalUserInterfaceSizeClassV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(result[3], a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<HorizontalUserInterfaceSizeClassKey>, &type metadata for HorizontalUserInterfaceSizeClassKey, &protocol witness table for HorizontalUserInterfaceSizeClassKey, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA014BackgroundInfoS033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<BackgroundInfoKey>, &type metadata for BackgroundInfoKey, &protocol witness table for BackgroundInfoKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA014BackgroundInfoV033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA014BackgroundInfoV033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA014BackgroundInfoV033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt0B5(result[3], a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<BackgroundInfoKey>, &type metadata for BackgroundInfoKey, &protocol witness table for BackgroundInfoKey, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA030VerticalUserInterfaceSizeClassV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA030VerticalUserInterfaceSizeClassV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(result[3], a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<VerticalUserInterfaceSizeClassKey>, &type metadata for VerticalUserInterfaceSizeClassKey, &protocol witness table for VerticalUserInterfaceSizeClassKey, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE016PreferenceBridgeV033_76C8A4B3FC8EE0F99045B3425CD62255LLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE016PreferenceBridgeV033_76C8A4B3FC8EE0F99045B3425CD62255LLVG_Tt0B5(result[3], a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.PreferenceBridgeKey>, &type metadata for EnvironmentValues.PreferenceBridgeKey, &protocol witness table for EnvironmentValues.PreferenceBridgeKey, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV015LayoutDirectionF0VG_Tt2B5(uint64_t *a1, char a2)
{
  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV015LayoutDirectionS0VG_Tt0g5(*a1);
  if (!result || *(result + 72) != (a2 & 1))
  {
    v5 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.LayoutDirectionKey>>(0);
    *(swift_allocObject() + 72) = a2 & 1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.LayoutDirectionKey>, &type metadata for EnvironmentValues.LayoutDirectionKey, &protocol witness table for EnvironmentValues.LayoutDirectionKey, type metadata accessor for EnvironmentPropertyKey);
    v7 = v6;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v7, 0, v5);
  }

  return result;
}

uint64_t EnvironmentValues.layoutDirection.setter(char *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *v2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV015LayoutDirectionF0VG_Tt2B5(v2, v3);

  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE20StringResolutionDate33_6237733B8EBAC19656F21E79CFCF2D67LLVG_Ttg5Tm(v4, *v2, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.LayoutDirectionKey>, &type metadata for EnvironmentValues.LayoutDirectionKey, &protocol witness table for EnvironmentValues.LayoutDirectionKey);
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.LayoutDirectionKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.LayoutDirectionKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.LayoutDirectionKey>, &type metadata for EnvironmentValues.LayoutDirectionKey, &protocol witness table for EnvironmentValues.LayoutDirectionKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.LayoutDirectionKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.LayoutDirectionKey>>);
    }
  }
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA015DynamicTypeSizeF033_B498FA81088CF7FADFFFFFC897E05C74LLVG_Tt2B5(uint64_t *a1, unsigned __int8 a2)
{
  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA015DynamicTypeSizeS033_B498FA81088CF7FADFFFFFC897E05C74LLVG_Tt0g5(*a1);
  if (!result || *(result + 72) != a2)
  {
    v5 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<DynamicTypeSizeKey>>(0);
    *(swift_allocObject() + 72) = a2;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DynamicTypeSizeKey>, &type metadata for DynamicTypeSizeKey, &protocol witness table for DynamicTypeSizeKey, type metadata accessor for EnvironmentPropertyKey);
    v7 = v6;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v7, 0, v5);
  }

  return result;
}

uint64_t EnvironmentValues.dynamicTypeSize.setter(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *a1;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA015DynamicTypeSizeF033_B498FA81088CF7FADFFFFFC897E05C74LLVG_Tt2B5(v2, v4);

  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA015DynamicTypeSizeK033_B498FA81088CF7FADFFFFFC897E05C74LLVG_Ttg5(v3, *v2);
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<DynamicTypeSizeKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<DynamicTypeSizeKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DynamicTypeSizeKey>, &type metadata for DynamicTypeSizeKey, &protocol witness table for DynamicTypeSizeKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DynamicTypeSizeKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<DynamicTypeSizeKey>>);
    }
  }
}

uint64_t EnvironmentValues.imageScale.setter(unsigned __int8 *a1, void (*a2)(uint64_t *, uint64_t, uint64_t *), void (*a3)(uint64_t, uint64_t))
{
  v6 = v3;
  v7 = *v3;
  v8 = *a1;
  swift_retain_n();
  a2(v6, v8, &v10);

  if (v6[1])
  {
    a3(v7, *v6);
  }
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA016LegibilityWeightF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2B5(uint64_t *a1, unsigned __int8 a2)
{
  v3 = a2;
  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA016LegibilityWeightS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(*a1);
  if (!result)
  {
    goto LABEL_7;
  }

  v5 = *(result + 72);
  if (v3 == 2)
  {
    if (v5 == 2)
    {
      return result;
    }

LABEL_7:
    v6 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<LegibilityWeightKey>>(0);
    *(swift_allocObject() + 72) = v3;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<LegibilityWeightKey>, &type metadata for LegibilityWeightKey, &protocol witness table for LegibilityWeightKey, type metadata accessor for EnvironmentPropertyKey);
    v8 = v7;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v8, 0, v6);
  }

  if (v5 == 2 || ((v5 ^ v3) & 1) != 0)
  {
    goto LABEL_7;
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<LegibilityWeightKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<LegibilityWeightKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<LegibilityWeightKey>, &type metadata for LegibilityWeightKey, &protocol witness table for LegibilityWeightKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<LegibilityWeightKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<LegibilityWeightKey>>);
    }
  }
}

uint64_t EnvironmentValues.displayGamut.setter(unsigned __int8 *a1, void (*a2)(uint64_t *, uint64_t, uint64_t *), void (*a3)(uint64_t, uint64_t))
{
  v6 = v3;
  v7 = *a1;
  v8 = *v6;
  swift_retain_n();
  a2(v6, v7, &v10);

  if (v6[1])
  {
    a3(v8, *v6);
  }
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA016ReducedLuminanceF033_0F38C9BE5EB47FD38EBFADF6C616C18DLLVG_Tt2g5(uint64_t *a1, char a2)
{
  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA016ReducedLuminanceS033_0F38C9BE5EB47FD38EBFADF6C616C18DLLVG_Tt0g5(*a1);
  if (!result || *(result + 72) != (a2 & 1))
  {
    v5 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<ReducedLuminanceKey>>(0);
    *(swift_allocObject() + 72) = a2 & 1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ReducedLuminanceKey>, &type metadata for ReducedLuminanceKey, &protocol witness table for ReducedLuminanceKey, type metadata accessor for EnvironmentPropertyKey);
    v7 = v6;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v7, 0, v5);
  }

  return result;
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA016ReducedLuminanceS033_0F38C9BE5EB47FD38EBFADF6C616C18DLLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ReducedLuminanceKey>, &type metadata for ReducedLuminanceKey, &protocol witness table for ReducedLuminanceKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA016ReducedLuminanceV033_0F38C9BE5EB47FD38EBFADF6C616C18DLLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

uint64_t EnvironmentValues.isLuminanceReduced.setter(char a1)
{
  v2 = v1;
  v4 = *v2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA016ReducedLuminanceF033_0F38C9BE5EB47FD38EBFADF6C616C18DLLVG_Tt2g5(v2, a1);

  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA016ReducedLuminanceK033_0F38C9BE5EB47FD38EBFADF6C616C18DLLVG_Ttg5(v4, *v2);
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<ReducedLuminanceKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<ReducedLuminanceKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ReducedLuminanceKey>, &type metadata for ReducedLuminanceKey, &protocol witness table for ReducedLuminanceKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ReducedLuminanceKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<ReducedLuminanceKey>>);
    }
  }
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA016ReducedLuminanceV033_0F38C9BE5EB47FD38EBFADF6C616C18DLLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA016ReducedLuminanceV033_0F38C9BE5EB47FD38EBFADF6C616C18DLLVG_Tt0B5(result[3], a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ReducedLuminanceKey>, &type metadata for ReducedLuminanceKey, &protocol witness table for ReducedLuminanceKey, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

uint64_t EnvironmentValues.displayScale.setter(void (*a1)(uint64_t *, uint64_t *, double), void (*a2)(uint64_t, uint64_t), double a3)
{
  v7 = *v3;
  swift_retain_n();
  a1(v3, &v9, a3);

  if (v3[1])
  {
    a2(v7, *v3);
  }
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA032HorizontalUserInterfaceSizeClassF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2B5(uint64_t *a1, unsigned __int8 a2)
{
  v3 = a2;
  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA032HorizontalUserInterfaceSizeClassS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(*a1);
  if (!result)
  {
    goto LABEL_7;
  }

  v5 = *(result + 72);
  if (v3 == 2)
  {
    if (v5 == 2)
    {
      return result;
    }

LABEL_7:
    v6 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<HorizontalUserInterfaceSizeClassKey>>(0);
    *(swift_allocObject() + 72) = v3;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<HorizontalUserInterfaceSizeClassKey>, &type metadata for HorizontalUserInterfaceSizeClassKey, &protocol witness table for HorizontalUserInterfaceSizeClassKey, type metadata accessor for EnvironmentPropertyKey);
    v8 = v7;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v8, 0, v6);
  }

  if (v5 == 2 || ((v5 ^ v3) & 1) != 0)
  {
    goto LABEL_7;
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<HorizontalUserInterfaceSizeClassKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<HorizontalUserInterfaceSizeClassKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<HorizontalUserInterfaceSizeClassKey>, &type metadata for HorizontalUserInterfaceSizeClassKey, &protocol witness table for HorizontalUserInterfaceSizeClassKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<HorizontalUserInterfaceSizeClassKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<HorizontalUserInterfaceSizeClassKey>>);
    }
  }
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA030VerticalUserInterfaceSizeClassF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2B5(uint64_t *a1, unsigned __int8 a2)
{
  v3 = a2;
  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA030VerticalUserInterfaceSizeClassS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(*a1);
  if (!result)
  {
    goto LABEL_7;
  }

  v5 = *(result + 72);
  if (v3 == 2)
  {
    if (v5 == 2)
    {
      return result;
    }

LABEL_7:
    v6 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<VerticalUserInterfaceSizeClassKey>>(0);
    *(swift_allocObject() + 72) = v3;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<VerticalUserInterfaceSizeClassKey>, &type metadata for VerticalUserInterfaceSizeClassKey, &protocol witness table for VerticalUserInterfaceSizeClassKey, type metadata accessor for EnvironmentPropertyKey);
    v8 = v7;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v8, 0, v6);
  }

  if (v5 == 2 || ((v5 ^ v3) & 1) != 0)
  {
    goto LABEL_7;
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<VerticalUserInterfaceSizeClassKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<VerticalUserInterfaceSizeClassKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<VerticalUserInterfaceSizeClassKey>, &type metadata for VerticalUserInterfaceSizeClassKey, &protocol witness table for VerticalUserInterfaceSizeClassKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<VerticalUserInterfaceSizeClassKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<VerticalUserInterfaceSizeClassKey>>);
    }
  }
}

uint64_t EnvironmentValues.backgroundLevel.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = v1[1];
  if (v5)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA014BackgroundInfoI033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt1g5(v4, &v10);

    v6 = &v11;
  }

  else
  {
    v7 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA014BackgroundInfoS033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt0g5(v4);
    if (v7)
    {
      v6 = v7 + 10;
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v6 = &static BackgroundInfoKey.defaultValue + 1;
    }
  }

  v8 = *v6;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA014BackgroundInfoF033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt2B5(v2, a1, v8);

  if (v5)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA014BackgroundInfoK033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Ttg5(v4, *v2);
  }
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA014BackgroundInfoF033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt2B5(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA014BackgroundInfoS033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt0g5(*a1);
  if (!result || (result[9] == a2 ? (v7 = result[10] == a3) : (v7 = 0), !v7))
  {
    v8 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<BackgroundInfoKey>>(0);
    v9 = swift_allocObject();
    *(v9 + 72) = a2;
    *(v9 + 80) = a3;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<BackgroundInfoKey>, &type metadata for BackgroundInfoKey, &protocol witness table for BackgroundInfoKey, type metadata accessor for EnvironmentPropertyKey);
    v11 = v10;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v11, 0, v8);
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<BackgroundInfoKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<BackgroundInfoKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<BackgroundInfoKey>, &type metadata for BackgroundInfoKey, &protocol witness table for BackgroundInfoKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<BackgroundInfoKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<BackgroundInfoKey>>);
    }
  }
}

uint64_t EnvironmentValues.defaultPixelLength.setter(uint64_t a1, char a2, void (*a3)(uint64_t *, uint64_t, void, uint64_t *), void (*a4)(uint64_t, uint64_t))
{
  v7 = v4;
  v10 = *v7;
  swift_retain_n();
  a3(v7, a1, a2 & 1, &v12);

  if (v7[1])
  {
    a4(v10, *v7);
  }
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA019DisplayCornerRadiusF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(Swift::UInt *a1, uint64_t a2, char a3)
{
  v6 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DisplayCornerRadiusKey>, &type metadata for DisplayCornerRadiusKey, &protocol witness table for DisplayCornerRadiusKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  BloomFilter.init(hashValue:)(v7);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA019DisplayCornerRadiusV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(v6, v13);
  if (!result)
  {
    goto LABEL_8;
  }

  v10 = *(result + 80);
  if (a3)
  {
    if (*(result + 80))
    {
      return result;
    }

LABEL_8:
    v11 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<DisplayCornerRadiusKey>>(0);
    v12 = swift_allocObject();
    *(v12 + 72) = *&a2;
    *(v12 + 80) = a3 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v8, 0, v11);
  }

  if (*(result + 9) != *&a2)
  {
    v10 = 1;
  }

  if (v10)
  {
    goto LABEL_8;
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<DisplayCornerRadiusKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<DisplayCornerRadiusKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DisplayCornerRadiusKey>, &type metadata for DisplayCornerRadiusKey, &protocol witness table for DisplayCornerRadiusKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DisplayCornerRadiusKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<DisplayCornerRadiusKey>>);
    }
  }
}

uint64_t EnvironmentValues._defaultAccentColor.setter(uint64_t a1)
{
  v3 = *v1;

  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA018DefaultAccentColorF033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Tt2g5(v1, a1);

  if (v1[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA018DefaultAccentColorK033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Ttg5(v3, *v1);
  }
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA018DefaultAccentColorV033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA018DefaultAccentColorV033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Tt0B5(result[3], a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultAccentColorKey>, &type metadata for DefaultAccentColorKey, &protocol witness table for DefaultAccentColorKey, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<DefaultAccentColorKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<DefaultAccentColorKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultAccentColorKey>, &type metadata for DefaultAccentColorKey, &protocol witness table for DefaultAccentColorKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultAccentColorKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<DefaultAccentColorKey>>);
    }
  }
}

Swift::Void __swiftcall ViewGraphRootValueUpdater.render(interval:updateDisplayList:targetTimestamp:)(Swift::Double interval, Swift::Bool updateDisplayList, SwiftUI::Time_optional targetTimestamp)
{
  v6 = v5;
  v7 = v4;
  v8 = v3;
  v9 = *&targetTimestamp.is_nil;
  v10 = updateDisplayList;
  v12 = type metadata accessor for OSSignpostID();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v9;
  v31 = *(v9 + 8);
  v17 = type metadata accessor for CustomAttributeWriter(0, &lazy cache variable for type metadata for ViewGraphOwner, &protocol descriptor for ViewGraphOwner, 0);
  (*(*(v7 + 8) + 16))(&v32, v17, v17, v8);
  v18 = v32;
  if (v32)
  {
    v30 = *(&v32 + 1);
    specialized static Update.begin()();
    if (!ViewGraphRootValueUpdater.isRendering.getter(v8, v7))
    {
      v29 = v10;
      v28 = v13;
      if (one-time initialization token for render != -1)
      {
        swift_once();
      }

      v19 = static Signpost.render;
      v20 = HIBYTE(word_1ED5375C0);
      v32 = static Signpost.render;
      v27 = *(&static Signpost.render + 1);
      v26 = word_1ED5375C0;
      v33 = word_1ED5375C0;
      v34 = byte_1ED5375C2;
      if (Signpost.isEnabled.getter())
      {
        v21 = one-time initialization token for _signpostLog;
        swift_unknownObjectRetain();
        if (v21 != -1)
        {
          swift_once();
        }

        v22 = _signpostLog;
        OSSignpostID.init(log:object:)();
        v23 = static os_signpost_type_t.begin.getter();
        if (v20)
        {
          os_signpost(_:dso:log:name:signpostID:)();
        }

        else
        {
          v24[2] = v23;
          v24[3] = bswap32(v19) | (4 * WORD1(v19));
          v25 = v22;
          OSSignpostID.rawValue.getter();
          kdebug_trace();
        }

        closure #1 in ViewGraphRootValueUpdater.render(interval:updateDisplayList:targetTimestamp:)(v18, v30, v6, v29, v16, v31, v8, v7, interval);
        static os_signpost_type_t.end.getter();
        if (v20)
        {
          os_signpost(_:dso:log:name:signpostID:)();
        }

        else
        {
          OSSignpostID.rawValue.getter();
          kdebug_trace();
        }

        (*(v28 + 8))(v15, v12);
      }

      else
      {
        closure #1 in ViewGraphRootValueUpdater.render(interval:updateDisplayList:targetTimestamp:)(v18, v30, v6, v29, v16, v31, v8, v7, interval);
      }
    }

    static Update.end()();
    swift_unknownObjectRelease();
  }
}

uint64_t closure #1 in ViewGraphRootValueUpdater.render(interval:updateDisplayList:targetTimestamp:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, double a9)
{
  v66 = a6;
  v65 = a5;
  LODWORD(v81) = a4;
  v74 = type metadata accessor for OSSignpostID();
  v73 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v67 = v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v76 = v63 - v17;
  ObjectType = swift_getObjectType();
  v19 = (*(a2 + 8))(ObjectType, a2);
  v20 = (*(a2 + 32))(&v93, ObjectType, a2);
  *v21 = *v21 + a9;
  v20(&v93, 0);
  (*(a2 + 16))(&v93, ObjectType, a2);
  v22 = *&v93;
  GraphHost.flushTransactions()();
  AGGraphClearUpdate();
  v77 = a8;
  ViewGraphRootValueUpdater.updateGraph()();
  AGGraphSetUpdate();
  LOBYTE(v93) = 1;
  v23 = *(a2 + 72);
  v79 = a2 + 72;
  v78 = v23;
  v23(&v93, ObjectType, a2);
  if (one-time initialization token for renderUpdate != -1)
  {
    swift_once();
  }

  v24 = static Signpost.renderUpdate;
  v93 = static Signpost.renderUpdate;
  v70 = *(&static Signpost.renderUpdate + 1);
  LODWORD(v69) = word_1ED5375E8;
  v94 = word_1ED5375E8;
  LODWORD(v75) = HIBYTE(word_1ED5375E8);
  v95 = byte_1ED5375EA;
  if ((Signpost.isEnabled.getter() & 1) == 0)
  {
    swift_beginAccess();
    static Update.dispatchActions()();
    *&v93 = v22;
    ViewGraph.updateOutputs(at:)(v28);
    static Update.dispatchActions()();
    GraphHost.flushTransactions()();
    if (v81)
    {
      type metadata accessor for (DisplayList, DisplayList.Version)();
      WeakValue = AGGraphGetWeakValue();
      if (WeakValue)
      {
        v30 = *WeakValue;
        v68 = *(WeakValue + 8);
        v72 = *(WeakValue + 12);
        v71 = *(WeakValue + 16);
        v80 = v30;
      }

      else
      {
        v68 = 0;
        v72 = 0;
        v71 = 0;
        v80 = MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v68 = 0;
      v72 = 0;
      v71 = 0;
      v80 = MEMORY[0x1E69E7CC0];
    }

    if (one-time initialization token for lockAssertionsAreEnabled != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_57;
    }

    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    if (_MovableLockIsOwner(static Update._lock))
    {
LABEL_57:
      if (static Update.depth != 1)
      {
        goto LABEL_29;
      }

      if (one-time initialization token for actions != -1)
      {
        swift_once();
      }

      if (!*(static Update.actions + 2))
      {
LABEL_29:
        if (!AGSubgraphIsDirty())
        {
          goto LABEL_76;
        }
      }

      static Update.dispatchActions()();
      *&v93 = v22;
      ViewGraph.updateOutputs(at:)(v35);
      static Update.dispatchActions()();
      GraphHost.flushTransactions()();
      if (v81)
      {
        v36 = ObjectType;
        type metadata accessor for (DisplayList, DisplayList.Version)();
        v37 = AGGraphGetWeakValue();
        if (v37)
        {
          v38 = *v37;
          v39 = *(v37 + 8);
          v72 = *(v37 + 12);
          v71 = *(v37 + 16);
        }

        else
        {
          v39 = 0;
          v72 = 0;
          v71 = 0;
          v38 = MEMORY[0x1E69E7CC0];
        }

        v68 = v39;

        v80 = v38;
        ObjectType = v36;
      }

      if (one-time initialization token for lockAssertionsAreEnabled != -1)
      {
        swift_once();
      }

      if (!lockAssertionsAreEnabled)
      {
        goto LABEL_59;
      }

      if (one-time initialization token for _lock != -1)
      {
        swift_once();
      }

      if (_MovableLockIsOwner(static Update._lock))
      {
LABEL_59:
        if (static Update.depth == 1 && one-time initialization token for actions != -1)
        {
          swift_once();
        }

        goto LABEL_76;
      }
    }

    goto LABEL_101;
  }

  v25 = a7;
  v26 = one-time initialization token for _signpostLog;
  swift_unknownObjectRetain();
  if (v26 != -1)
  {
    swift_once();
  }

  v27 = _signpostLog;
  OSSignpostID.init(log:object:)();
  static os_signpost_type_t.begin.getter();
  v64 = v24;
  v63[1] = v27;
  if (v75)
  {
    os_signpost(_:dso:log:name:signpostID:)();
    a7 = v25;
  }

  else
  {
    OSSignpostID.rawValue.getter();
    a7 = v25;
    kdebug_trace();
  }

  swift_beginAccess();
  static Update.dispatchActions()();
  *&v93 = v22;
  ViewGraph.updateOutputs(at:)(v31);
  static Update.dispatchActions()();
  GraphHost.flushTransactions()();
  if (v81)
  {
    type metadata accessor for (DisplayList, DisplayList.Version)();
    v32 = AGGraphGetWeakValue();
    if (v32)
    {
      v33 = *v32;
      v34 = *(v32 + 8);
      v72 = *(v32 + 12);
      v71 = *(v32 + 16);
      v80 = v33;
    }

    else
    {
      v72 = 0;
      v71 = 0;
      v34 = 0;
      v80 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v34 = 0;
    v72 = 0;
    v71 = 0;
    v80 = MEMORY[0x1E69E7CC0];
  }

  if (one-time initialization token for lockAssertionsAreEnabled != -1)
  {
    swift_once();
  }

  if (lockAssertionsAreEnabled)
  {
    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    if (!_MovableLockIsOwner(static Update._lock))
    {
      goto LABEL_101;
    }
  }

  if (static Update.depth != 1)
  {
    goto LABEL_45;
  }

  if (one-time initialization token for actions != -1)
  {
    swift_once();
  }

  if (!*(static Update.actions + 2))
  {
LABEL_45:
    if (!AGSubgraphIsDirty())
    {
      goto LABEL_72;
    }
  }

  static Update.dispatchActions()();
  *&v93 = v22;
  ViewGraph.updateOutputs(at:)(v40);
  static Update.dispatchActions()();
  GraphHost.flushTransactions()();
  if (v81)
  {
    type metadata accessor for (DisplayList, DisplayList.Version)();
    v41 = AGGraphGetWeakValue();
    if (v41)
    {
      v42 = *v41;
      v34 = *(v41 + 8);
      v72 = *(v41 + 12);
      v71 = *(v41 + 16);
    }

    else
    {
      v72 = 0;
      v71 = 0;
      v34 = 0;
      v42 = MEMORY[0x1E69E7CC0];
    }

    v80 = v42;
  }

  if (one-time initialization token for lockAssertionsAreEnabled != -1)
  {
    swift_once();
  }

  if (lockAssertionsAreEnabled)
  {
    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    if (!_MovableLockIsOwner(static Update._lock))
    {
LABEL_101:
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }
  }

  if (static Update.depth == 1 && one-time initialization token for actions != -1)
  {
    swift_once();
  }

LABEL_72:
  static os_signpost_type_t.end.getter();
  v68 = v34;
  v43 = v76;
  if (v75)
  {
    os_signpost(_:dso:log:name:signpostID:)();
  }

  else
  {
    OSSignpostID.rawValue.getter();
    kdebug_trace();
  }

  (*(v73 + 8))(v43, v74);
LABEL_76:
  swift_beginAccess();
  v44 = *(v19 + 376);
  if (v81)
  {
    v45 = type metadata accessor for CustomAttributeWriter(0, &lazy cache variable for type metadata for ViewGraphRenderHost, &protocol descriptor for ViewGraphRenderHost, 1);
    (*(*(v77 + 8) + 16))(&v89, v45, v45, a7);
    if (v92)
    {
      v76 = ObjectType;
      v81 = a3;
      outlined init with take of AnyTrackedValue(&v89, &v93);
      v46 = ++static DisplayList.Version.lastValue;
      if (one-time initialization token for renderDisplayList != -1)
      {
        swift_once();
      }

      v47 = *(&static Signpost.renderDisplayList + 1);
      v48 = word_1ED52EF28;
      v49 = HIBYTE(word_1ED52EF28);
      v89 = static Signpost.renderDisplayList;
      v90 = word_1ED52EF28;
      v91 = byte_1ED52EF2A;
      if (Signpost.isEnabled.getter())
      {
        LODWORD(v70) = v48;
        v50 = one-time initialization token for _signpostLog;
        swift_unknownObjectRetain();
        if (v50 != -1)
        {
          swift_once();
        }

        v75 = a1;
        v51 = _signpostLog;
        OSSignpostID.init(log:object:)();
        static os_signpost_type_t.begin.getter();
        v63[0] = a7;
        v69 = v47;
        v64 = v51;
        if (v49)
        {
          os_signpost(_:dso:log:name:signpostID:)();
        }

        else
        {
          OSSignpostID.rawValue.getter();
          kdebug_trace();
        }

        v57 = v96;
        v56 = v97;
        __swift_project_boxed_opaque_existential_1(&v93, v96);
        *&v89 = v80;
        WORD4(v89) = v68;
        HIDWORD(v89) = v72;
        v86 = v44;
        v87 = v22;
        v84 = v65;
        v85 = v66 & 1;
        v83 = v71;
        v82 = v46;
        v58 = *(v56 + 8);

        v58(&v88, &v89, 0, &v87, &v86, &v84, &v83, &v82, v57, v56);

        v44 = v88;
        static os_signpost_type_t.end.getter();
        v59 = v67;
        if (v49)
        {
          os_signpost(_:dso:log:name:signpostID:)();
        }

        else
        {
          OSSignpostID.rawValue.getter();
          kdebug_trace();
        }

        a7 = v63[0];
        (*(v73 + 8))(v59, v74);
      }

      else
      {
        v52 = v96;
        v53 = v97;
        __swift_project_boxed_opaque_existential_1(&v93, v96);
        *&v89 = v80;
        WORD4(v89) = v68;
        HIDWORD(v89) = v72;
        v86 = v44;
        v87 = v22;
        v84 = v65;
        v85 = v66 & 1;
        v83 = v71;
        v82 = v46;
        v54 = a7;
        v55 = *(v53 + 8);

        v55(&v88, &v89, 0, &v87, &v86, &v84, &v83, &v82, v52, v53);
        a7 = v54;

        v44 = v88;
      }

      ObjectType = v76;
      __swift_destroy_boxed_opaque_existential_1(&v93);
    }

    else
    {
      outlined destroy of ViewGraphRenderHost?(&v89);
    }
  }

  LOBYTE(v93) = 0;
  v78(&v93, ObjectType, a2);
  if ((*&v44 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    if (v22 >= v44)
    {
      v61 = v22;
    }

    else
    {
      v61 = v44;
    }

    v60.n128_f64[0] = v61 - v22;
    if (v60.n128_f64[0] <= 0.000001)
    {
      v60.n128_f64[0] = 0.000001;
    }

    (*(*(v77 + 8) + 24))(a7, v60);
  }
}

double one-time initialization function for render()
{
  *&result = 4372;
  static Signpost.render = xmmword_18DDB5590;
  word_1ED5375C0 = 0;
  byte_1ED5375C2 = 3;
  return result;
}

double ViewGraphHost.nextRenderInterval(interval:)(void (*a1)(void))
{
  v2 = *(v1 + 136);
  if (v2)
  {
    v3 = *(v2 + OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_nextUpdate);
    if (v3 < INFINITY || v3 > INFINITY)
    {
      return 0.0;
    }
  }

  a1();
  return result;
}

uint64_t protocol witness for ViewGraphOwner.renderingPhase.setter in conformance ViewGraphHost(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 114) = v2;
  return result;
}

double protocol witness for ViewGraphOwner.currentTimestamp.getter in conformance ViewGraphHost@<D0>(double *a1@<X8>)
{
  swift_beginAccess();
  result = *(v1 + 104);
  *a1 = result;
  return result;
}

Swift::Void __swiftcall GraphHost.flushTransactions()()
{
  v1 = v0;
  swift_beginAccess();
  if (*(v0 + 16))
  {
    specialized static Update.begin()();
    swift_beginAccess();
    v2 = *(v0 + 144);
    v3 = *(v2 + 16);
    if (v3)
    {
      *(v1 + 144) = MEMORY[0x1E69E7CC0];
      v4 = (v2 + 48);
      do
      {
        v5 = *(v4 - 2);
        v6 = *(v4 - 2);
        v7 = *(v4 - 1);
        v8 = *v4;
        v4 += 3;
        swift_retain_n();

        specialized GraphHost.runTransaction(_:do:id:)(v5, v7, v1, v5, v6 | (v7 << 32), v8);

        --v3;
      }

      while (v3);

      if ((*(*v1 + 192))(v9))
      {
        v11 = v10;
        ObjectType = swift_getObjectType();
        (*(v11 + 16))(ObjectType, v11);
        swift_unknownObjectRelease();
      }

      swift_beginAccess();
      *(v1 + 168) = 1;
    }

    static Update.end()();
  }
}

uint64_t EnvironmentValues._accentColor.setter(uint64_t a1)
{
  specialized EnvironmentValues.accentColor.setter(a1);
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<AccentColorKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<AccentColorKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccentColorKey>, &type metadata for AccentColorKey, &protocol witness table for AccentColorKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<AccentColorKey> and conformance EnvironmentPropertyKey<A>);
  }
}

void lazy protocol witness table accessor for type Color.AccentColorProvider and conformance Color.AccentColorProvider()
{
  if (!lazy protocol witness table cache variable for type Color.AccentColorProvider and conformance Color.AccentColorProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.AccentColorProvider, &type metadata for Color.AccentColorProvider, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.AccentColorProvider and conformance Color.AccentColorProvider);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.AccentColorProvider and conformance Color.AccentColorProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.AccentColorProvider, &type metadata for Color.AccentColorProvider, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.AccentColorProvider and conformance Color.AccentColorProvider);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.AccentColorProvider and conformance Color.AccentColorProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.AccentColorProvider, &type metadata for Color.AccentColorProvider, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.AccentColorProvider and conformance Color.AccentColorProvider);
  }
}

double one-time initialization function for renderUpdate()
{
  *&result = 200980;
  static Signpost.renderUpdate = xmmword_18DDB55A0;
  word_1ED5375E8 = 0;
  byte_1ED5375EA = 3;
  return result;
}

uint64_t EnvironmentValues.locale.setter(char *a1, uint64_t (*a2)(void), void (*a3)(uint64_t *, char *, _BYTE *), void (*a4)(uint64_t, uint64_t))
{
  v21 = a4;
  v6 = v4;
  v8 = a2(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v20 - v14;
  v16 = *(v9 + 16);
  v16(&v20 - v14, a1, v8, v13);
  v17 = *v6;
  (v16)(v11, v15, v8);
  swift_retain_n();
  a3(v6, v11, v22);

  v18 = *(v9 + 8);
  v18(v11, v8);
  if (v6[1])
  {
    v21(v17, *v6);
  }

  v18(a1, v8);
  return (v18)(v15, v8);
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA08CalendarF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(uint64_t *a1, char *a2)
{
  v4 = type metadata accessor for Calendar();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<CalendarKey>, &type metadata for CalendarKey, &protocol witness table for CalendarKey, type metadata accessor for EnvironmentPropertyKey);
  v10 = v9;
  BloomFilter.init(hashValue:)(v9);
  v11 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA08CalendarV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(v8, v18[3]);
  if (!v11)
  {
    v12 = *(v5 + 16);
    goto LABEL_5;
  }

  v12 = *(v5 + 16);
  v12(v7, &v11[*(*v11 + 248)], v4);
  lazy protocol witness table accessor for type Locale and conformance Locale(&lazy protocol witness table cache variable for type Calendar and conformance Calendar, MEMORY[0x1E6969AE8], MEMORY[0x1E6969B00]);
  v13 = dispatch thunk of static Equatable.== infix(_:_:)();
  result = (*(v5 + 8))(v7, v4);
  if ((v13 & 1) == 0)
  {
LABEL_5:
    v12(v7, a2, v4);
    v15 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<CalendarKey>>(0);
    v16 = swift_allocObject();
    v12((v16 + *(*v16 + 248)), v7, v4);

    value = PropertyList.Element.init(keyType:before:after:)(v10, 0, v15).value;
    (*(v5 + 8))(v7, v4);
    *a1 = value;
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<CalendarKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<CalendarKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<CalendarKey>, &type metadata for CalendarKey, &protocol witness table for CalendarKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<CalendarKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<CalendarKey>>);
    }
  }
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA08CalendarV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA08CalendarV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(result[3], a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<CalendarKey>, &type metadata for CalendarKey, &protocol witness table for CalendarKey, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA08TimeZoneF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(uint64_t *a1, char *a2)
{
  v4 = type metadata accessor for TimeZone();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TimeZoneKey>, &type metadata for TimeZoneKey, &protocol witness table for TimeZoneKey, type metadata accessor for EnvironmentPropertyKey);
  v10 = v9;
  BloomFilter.init(hashValue:)(v9);
  v11 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA08TimeZoneV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(v8, v18[3]);
  if (!v11)
  {
    v12 = *(v5 + 16);
    goto LABEL_5;
  }

  v12 = *(v5 + 16);
  v12(v7, &v11[*(*v11 + 248)], v4);
  lazy protocol witness table accessor for type Locale and conformance Locale(&lazy protocol witness table cache variable for type TimeZone and conformance TimeZone, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD8]);
  v13 = dispatch thunk of static Equatable.== infix(_:_:)();
  result = (*(v5 + 8))(v7, v4);
  if ((v13 & 1) == 0)
  {
LABEL_5:
    v12(v7, a2, v4);
    v15 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<TimeZoneKey>>(0);
    v16 = swift_allocObject();
    v12((v16 + *(*v16 + 248)), v7, v4);

    value = PropertyList.Element.init(keyType:before:after:)(v10, 0, v15).value;
    (*(v5 + 8))(v7, v4);
    *a1 = value;
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<TimeZoneKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<TimeZoneKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<TimeZoneKey>, &type metadata for TimeZoneKey, &protocol witness table for TimeZoneKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TimeZoneKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<TimeZoneKey>>);
    }
  }
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA08TimeZoneV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA08TimeZoneV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(result[3], a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TimeZoneKey>, &type metadata for TimeZoneKey, &protocol witness table for TimeZoneKey, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<CalendarKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<CalendarKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<CalendarKey>, &type metadata for CalendarKey, &protocol witness table for CalendarKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<CalendarKey> and conformance EnvironmentPropertyKey<A>);
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<TimeZoneKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<TimeZoneKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<TimeZoneKey>, &type metadata for TimeZoneKey, &protocol witness table for TimeZoneKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<TimeZoneKey> and conformance EnvironmentPropertyKey<A>);
  }
}

uint64_t ColorBox.__deallocating_deinit()
{
  (*(*(*(*v0 + 176) - 8) + 8))(v0 + *(*v0 + 192));

  return swift_deallocClassInstance();
}

uint64_t specialized EnvironmentValues.accentColor.setter(uint64_t a1)
{
  v2 = v1;
  _s7SwiftUI8ColorBoxCyAA0C0V06AccentC8ProviderVGMaTm_0(0, &lazy cache variable for type metadata for ColorBox<Color.AccentColorProvider>, lazy protocol witness table accessor for type Color.AccentColorProvider and conformance Color.AccentColorProvider, &type metadata for Color.AccentColorProvider);
  v4 = swift_allocObject();
  if (!a1)
  {

    goto LABEL_6;
  }

  if (v4 != a1)
  {
    v5 = (*(*a1 + 88))();

    if (v5)
    {
      goto LABEL_8;
    }

LABEL_6:

    goto LABEL_9;
  }

LABEL_8:
  a1 = 0;
LABEL_9:
  v6 = *v2;

  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA011AccentColorF033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Tt2g5(v2, a1);

  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA011AccentColorK033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Ttg5(v6, *v2);
  }
}

void type metadata accessor for ColorBox<Color.AccentColorProvider>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    v7 = a3();
    v9 = type metadata accessor for ColorBox(a1, a4, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void _s7SwiftUI8ColorBoxCyAA0C0V06AccentC8ProviderVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    v7 = a3();
    v9 = type metadata accessor for ColorBox(a1, a4, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t ColorBox.isEqual(to:)(uint64_t a1)
{
  result = swift_dynamicCastClass();
  if (result)
  {

    v2 = dispatch thunk of static Equatable.== infix(_:_:)();

    return v2 & 1;
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA011AccentColorF033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Tt2g5(uint64_t *a1, uint64_t a2)
{
  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA011AccentColorS033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Tt0g5(*a1);
  if (!result)
  {
    goto LABEL_8;
  }

  v5 = *(result + 72);
  if (!a2)
  {
    if (!v5)
    {
      return result;
    }

    goto LABEL_8;
  }

  if (!v5 || v5 != a2 && (v6 = *(*a2 + 88), v7 = , v8 = v6(v7), result = , (v8 & 1) == 0))
  {
LABEL_8:
    v9 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<AccentColorKey>>(0);
    *(swift_allocObject() + 72) = a2;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccentColorKey>, &type metadata for AccentColorKey, &protocol witness table for AccentColorKey, type metadata accessor for EnvironmentPropertyKey);
    v11 = v10;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v11, 0, v9);
  }

  return result;
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA011AccentColorS033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccentColorKey>, &type metadata for AccentColorKey, &protocol witness table for AccentColorKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA011AccentColorV033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA011AccentColorV033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA011AccentColorV033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Tt0B5(result[3], a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccentColorKey>, &type metadata for AccentColorKey, &protocol witness table for AccentColorKey, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<AccentColorKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<AccentColorKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccentColorKey>, &type metadata for AccentColorKey, &protocol witness table for AccentColorKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<AccentColorKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<AccentColorKey>>);
    }
  }
}

void static _GraphInputs.defaultInterfaceIdiom.getter(uint64_t *a1@<X8>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(0, a2, a3, a4);
  *a1 = v5;
  a1[1] = &protocol witness table for InterfaceIdiomBox<A>;
}

void type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for InterfaceIdiomBox<PhoneInterfaceIdiom>)
  {
    v4 = type metadata accessor for InterfaceIdiomBox(0, &type metadata for PhoneInterfaceIdiom, &protocol witness table for PhoneInterfaceIdiom, a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for InterfaceIdiomBox<PhoneInterfaceIdiom>);
    }
  }
}

BOOL static Solarium.isEnabled(for:)(__int128 *a1)
{
  v3 = *a1;
  Solarium.EnablementIdiom.init(_:)(&v3, &v4);
  v1 = v4;
  if (one-time initialization token for cachedValues != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&static Solarium.cachedValues);
  _s7SwiftUI8SolariumV13computeValues33_DB20D13822F3237D192A89B71B0DBAEALLyAC15EnablementLevelO_AC0N8CriteriaVtAC0N5IdiomOFZAG_AItSDyAkG_AItGzYuYTXEfU_(&qword_1ED539018, v1, &v3);
  os_unfair_lock_unlock(&static Solarium.cachedValues);
  return v3 == 2;
}

void type metadata accessor for InterfaceIdiomBox<MacInterfaceIdiom>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for AnyAccessibilityValueType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

Swift::Void __swiftcall ViewGraph.updateOutputs(at:)(SwiftUI::Time at)
{
  v3 = v2;
  v26[0] = *v1;
  ViewGraph.beginNextUpdate(at:)(v26);
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v4 = 0;
  v5 = 0;
  v22 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  do
  {
    v23 = v4 + 1;
    LOBYTE(v25) = 1;
    specialized GraphHost.runTransaction(_:do:id:)(1uLL, 0x100000000uLL, v3);
    v9 = GraphHost.updatePreferences()();
    v6 |= v9;
    v24 = v9 | v7;
    v10 = *(v3 + 352);

    v11 = specialized ViewGraphGeometryObservers.needsUpdate(graph:)(v3, v10);

    v12 = 0;
    v13 = 0;
    v5 |= v11;
    v8 |= v11;
    v14 = *(v3 + 216);
    v15 = -*(v3 + 228);
LABEL_3:
    v16 = v13 + 1;
    while (1)
    {
      v13 = v16;
      if (v15 + v16 == 1 && v12 == 0)
      {
        break;
      }

      if (!v14)
      {
        __break(1u);
        return;
      }

      v18 = (v14 + v12);
      if (v15 + v16)
      {
        v12 += *(v18 + 2);
        if (*(v18 + 12))
        {
          goto LABEL_15;
        }
      }

      else
      {
        v12 = 0;
        if (*(v18 + 12))
        {
          goto LABEL_15;
        }
      }

      v19 = *v18;
      v25 = v18;
      v20 = (*(v19 + 152))(&v25, v3);
      v16 = v13 + 1;
      if (v20)
      {
        *(v18 + 3) |= 1u;
LABEL_15:
        v22 = 0x100000001;
        goto LABEL_3;
      }
    }

    IsDirty = AGSubgraphIsDirty();
    v4 = v23;
    v7 = v24;
  }

  while (v23 != 8 && (IsDirty & 1) != 0);
  v28 = v22;
  v27 = v8 & 1;
  LOBYTE(v25) = v24 & 1;
  if ((v6 | HIDWORD(v22) | v5))
  {
    specialized update #1 () in ViewGraph.updateOutputs(async:)(&v28, v3, 0, &v25, &v27);
    --*(v3 + 368);
  }
}

uint64_t ViewGraph.beginNextUpdate(at:)(double *a1)
{
  v2 = *a1;
  swift_beginAccess();
  if (*AGGraphGetValue() != v2)
  {
    AGGraphSetValue();
    swift_beginAccess();
    *(v1 + 376) = 0x7FF0000000000000;
    *(v1 + 384) = 0x7FF0000000000000;
    *(v1 + 392) = 0;
    *(v1 + 400) = MEMORY[0x1E69E7CD0];
  }

  AGGraphGetValue();
  AGGraphSetValue();
  if (!*(v1 + 16))
  {
    __break(1u);
  }

  result = AGGraphGetCounter();
  *(v1 + 368) = result;
  return result;
}

uint64_t ViewGraph.setRootView<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(v8 + 236);
  v11[2] = a2;
  v12 = v9;
  return _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, _s14AttributeGraph0A0V8setValueySbxFSbSPyxGXEfU_TA_0, v11, a2, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], a8);
}

uint64_t storeEnumTagSinglePayload for AnyAccessibilityValueType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.MaterialBackdropProxyKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.MaterialBackdropProxyKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.MaterialBackdropProxyKey>, &type metadata for EnvironmentValues.MaterialBackdropProxyKey, &protocol witness table for EnvironmentValues.MaterialBackdropProxyKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.MaterialBackdropProxyKey> and conformance EnvironmentPropertyKey<A>);
  }
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE021MaterialBackdropProxyF033_DEF3755CDC6B87C0368876C9F497EC3DLLVG_Tt2B5(Swift::UInt *a1, uint64_t a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.MaterialBackdropProxyKey>, &type metadata for EnvironmentValues.MaterialBackdropProxyKey, &protocol witness table for EnvironmentValues.MaterialBackdropProxyKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  v7 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE021MaterialBackdropProxyV033_DEF3755CDC6B87C0368876C9F497EC3DLLVG_Tt0B5(v4, v12);
  if (!v7 || (v8 = v7[9], , v9 = _s7SwiftUI14EnvironmentKeyPAASQ5ValueRpzrlE12_valuesEqualySbAE_AEtFZAA0C6ValuesVAAE021MaterialBackdropProxyD033_DEF3755CDC6B87C0368876C9F497EC3DLLV_Tt1B5(a2, v8), result = , !v9))
  {
    v11 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.MaterialBackdropProxyKey>>(0);
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v11);
  }

  return result;
}

uint64_t EnvironmentValues.materialBackdropProxy.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;

  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE021MaterialBackdropProxyF033_DEF3755CDC6B87C0368876C9F497EC3DLLVG_Tt2B5(v1, v2);

  if (v1[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE021MaterialBackdropProxyK033_DEF3755CDC6B87C0368876C9F497EC3DLLVG_Ttg5(v3, *v1);
  }
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE021MaterialBackdropProxyV033_DEF3755CDC6B87C0368876C9F497EC3DLLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE021MaterialBackdropProxyV033_DEF3755CDC6B87C0368876C9F497EC3DLLVG_Tt0B5(result[3], a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.MaterialBackdropProxyKey>, &type metadata for EnvironmentValues.MaterialBackdropProxyKey, &protocol witness table for EnvironmentValues.MaterialBackdropProxyKey, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.MaterialBackdropProxyKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.MaterialBackdropProxyKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.MaterialBackdropProxyKey>, &type metadata for EnvironmentValues.MaterialBackdropProxyKey, &protocol witness table for EnvironmentValues.MaterialBackdropProxyKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.MaterialBackdropProxyKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.MaterialBackdropProxyKey>>);
    }
  }
}

Swift::Void __swiftcall ViewGraphHost.setContainerSize(_:)(CGSize a1)
{
  v2 = *(v1 + 88);
  if (*(v2 + 276) != *MEMORY[0x1E698D3F8] && (AGGraphSetValue() & 1) != 0)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 208);
      ObjectType = swift_getObjectType();
      (*(*(v3 + 8) + 16))(ObjectType);
      swift_unknownObjectRelease();
    }
  }
}

void specialized GraphHost.runTransaction(_:do:id:)(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  GraphHost.instantiateIfNeeded()();
  if (a1 >= 2)
  {
    swift_beginAccess();
    v20[0] = a1;
    AGGraphSetValue();
  }

  v18 = a1;
  v19 = a2;
  v6 = a2 | ((HIDWORD(a2) & 1) << 32);
  GraphHost.startTransactionUpdate(id:)(v6);
  swift_beginAccess();
  v7 = *(a3 + 24);
  swift_beginAccess();
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  do
  {
    v10 = *(a3 + 160);
    *(a3 + 160) = v9;
    v11 = *(v10 + 16);
    if (v11)
    {
      v12 = v10 + 32;
      do
      {
        outlined init with copy of AnyTrackedValue(v12, v20);
        v13 = v21;
        v14 = v22;
        __swift_project_boxed_opaque_existential_1(v20, v21);
        (*(v14 + 8))(v13, v14);
        __swift_destroy_boxed_opaque_existential_1(v20);
        v12 += 40;
        --v11;
      }

      while (v11);
    }

    ++v8;
    AGSubgraphUpdate();
  }

  while (v8 != 8 && *(*(a3 + 160) + 16));
  if ((v19 & 0x100000000) == 0)
  {
    if (one-time initialization token for enabledCategories != -1)
    {
      swift_once();
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x55uLL)
    {
      __break(1u);
    }

    if (*(static CustomEventTrace.enabledCategories + 116))
    {
      v15 = static CustomEventTrace.recorder;
      if (static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 17748;
        v16 = *(v15 + 16);
        LODWORD(v20[0]) = v19;

        v17 = v16;
        AGGraphAddTraceEvent();
      }
    }
  }

  *(a3 + 152) = 0;
  if (v18 >= 2)
  {
    v20[0] = 0;
    AGGraphSetValue();
  }
}

uint64_t _s14AttributeGraph0A0V8setValueySbxFSbSPyxGXEfU_TA_0@<X0>(_BYTE *a2@<X8>)
{
  result = AGGraphSetValue();
  *a2 = result;
  return result;
}

void one-time initialization function for defaultValue()
{
  static BackgroundInfoKey.defaultValue = 0uLL;
}

{
  static _GraphInputs.ScrollTargetRoleKey.defaultValue = *MEMORY[0x1E698D3F8];
}

{
  static _GraphInputs.SavedTransactionKey.defaultValue = MEMORY[0x1E69E7CC0];
}

{
  static ArchivedViewInput.defaultValue = 768;
}

{
  *&static ImplicitRootType.defaultValue = &type metadata for _VStackLayout;
  *(&static ImplicitRootType.defaultValue + 1) = &protocol witness table for _VStackLayout;
}

{
  static ForEachEvictionInput.defaultValue = 0;
}

{
  static DisplayList.Key.defaultValue = MEMORY[0x1E69E7CC0];
  word_1ED53ABE8 = 0;
  dword_1ED53ABEC = 0;
}

{
  *&static FontDefinitionKey.defaultValue = &type metadata for DefaultFontDefinition;
  *(&static FontDefinitionKey.defaultValue + 1) = &protocol witness table for DefaultFontDefinition;
}

{
  static TextRendererInput.defaultValue = 0;
}

{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v0 = static ContentTransition.default;
  v1 = dword_1ED536998 | (byte_1ED53699C << 32);
  off_1ED536620 = 0;
  dword_1ED536628 = 0;
  *&static ContentTransition.State.defaultValue = static ContentTransition.default;
  BYTE12(static ContentTransition.State.defaultValue) = byte_1ED53699C;
  DWORD2(static ContentTransition.State.defaultValue) = dword_1ED536998;
  v2 = word_1ED53699D;
  *(&static ContentTransition.State.defaultValue + 13) = word_1ED53699D;
  HIWORD(static ContentTransition.State.defaultValue) = HIBYTE(word_1ED53699D);
  outlined copy of ContentTransition.Storage(static ContentTransition.default, v1, word_1ED53699D);
  outlined copy of ContentTransition.Storage(v0, v1, v2);
  outlined consume of ContentTransition.Storage(v0, v1, v2);
  HIBYTE(static ContentTransition.State.defaultValue) = 0;
  off_1ED536620 = 0;

  dword_1ED536628 = 0;
}

{
  *&static _GraphInputs.OpacityAccessibilityProviderKey.defaultValue = &type metadata for EmptyOpacityAccessibilityProvider;
  *(&static _GraphInputs.OpacityAccessibilityProviderKey.defaultValue + 1) = &protocol witness table for EmptyOpacityAccessibilityProvider;
}

{
  lazy protocol witness table accessor for type EmptyImageAccessibilityProvider and conformance EmptyImageAccessibilityProvider();
  *&static _GraphInputs.ImageAccessibilityProviderKey.defaultValue = &type metadata for EmptyImageAccessibilityProvider;
  *(&static _GraphInputs.ImageAccessibilityProviderKey.defaultValue + 1) = v0;
}

{
  static _GraphInputs.ScrollPositionAnchorKey.defaultValue = *MEMORY[0x1E698D3F8];
}

{
  static ScrollPrefetchState.defaultValue = *MEMORY[0x1E698D3F8];
}

{
  static _GraphInputs.ScrollableKey.defaultValue = *MEMORY[0x1E698D3F8];
}

{
  static SymbolRenderingOptionsKey.defaultValue = 520;
  byte_1ED52FC63 = 2;
}

{
  lazy protocol witness table accessor for type EmptyTextAccessibilityProvider and conformance EmptyTextAccessibilityProvider();
  *&static _GraphInputs.TextAccessibilityProviderKey.defaultValue = &type metadata for EmptyTextAccessibilityProvider;
  *(&static _GraphInputs.TextAccessibilityProviderKey.defaultValue + 1) = v0;
}

{
  static AccessibilityProperties.HintsKey.defaultValue = MEMORY[0x1E69E7CC0];
}

{
  static DynamicStackOrientation.defaultValue = *MEMORY[0x1E698D3F8];
}

{
  static _GraphInputs.ScrollStateRequestKey.defaultValue = *MEMORY[0x1E698D3F8];
}

{
  static ScrollGeometryPreferenceKey.defaultValue = MEMORY[0x1E69E7CC0];
}

{
  static ScrollPhasePreferenceKey.defaultValue = MEMORY[0x1E69E7CC0];
}

{
  static _GraphInputs.ContentScrollPositionAnchorKey.defaultValue = *MEMORY[0x1E698D3F8];
}

{
  static _DisplayList_StableIdentityScope.defaultValue = 0;
}

{
  static AccessibilityProperties.ImagesKey.defaultValue = MEMORY[0x1E69E7CC0];
}

{
  static EnvironmentValues.HoverEffectStateKey.defaultValue = 0;
  qword_1EAB144B0 = 0;
  qword_1EAB144B8 = 0;
}

{
  *&static _GraphInputs.PrivacyReductionAccessibilityProviderKey.defaultValue = &type metadata for EmptyPrivacyReductionAccessibilityProvider;
  *(&static _GraphInputs.PrivacyReductionAccessibilityProviderKey.defaultValue + 1) = &protocol witness table for EmptyPrivacyReductionAccessibilityProvider;
}

{
  *&static _GraphInputs.LayoutAccessibilityProviderKey.defaultValue = &type metadata for EmptyLayoutAccessibilityProvider;
  *(&static _GraphInputs.LayoutAccessibilityProviderKey.defaultValue + 1) = &protocol witness table for EmptyLayoutAccessibilityProvider;
}

{
  static EnvironmentValues.ContentShapesKey.defaultValue = MEMORY[0x1E69E7CC0];
}

{
  static FocusableBounds.Key.defaultValue = MEMORY[0x1E69E7CC0];
}

{
  static FocusableFillerBounds.Key.defaultValue = MEMORY[0x1E69E7CC0];
}

{
  *&static _GraphInputs.GestureAccessibilityProviderKey.defaultValue = &type metadata for EmptyGestureAccessibilityProvider;
  *(&static _GraphInputs.GestureAccessibilityProviderKey.defaultValue + 1) = &protocol witness table for EmptyGestureAccessibilityProvider;
}

{
  static ReusableInputs.defaultValue = 0;
  qword_1ED566B30 = 0;
}

{
  *&static _GraphInputs.ContentShapeAccessibilityProviderKey.defaultValue = &type metadata for EmptyContentShapeAccessibilityProvider;
  *(&static _GraphInputs.ContentShapeAccessibilityProviderKey.defaultValue + 1) = &protocol witness table for EmptyContentShapeAccessibilityProvider;
}

{
  *&static _GraphInputs.AllowsHitTestingAccessibilityProviderKey.defaultValue = &unk_1F00B21C8;
  *(&static _GraphInputs.AllowsHitTestingAccessibilityProviderKey.defaultValue + 1) = &protocol witness table for EmptyAllowsHitTestingAccessibilityProvider;
}

void lazy protocol witness table accessor for type SystemColorType and conformance SystemColorType()
{
  if (!lazy protocol witness table cache variable for type SystemColorType and conformance SystemColorType)
  {
    swift_getWitnessTable(protocol conformance descriptor for SystemColorType, &type metadata for SystemColorType, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SystemColorType and conformance SystemColorType);
  }
}

{
  if (!lazy protocol witness table cache variable for type SystemColorType and conformance SystemColorType)
  {
    swift_getWitnessTable(protocol conformance descriptor for SystemColorType, &type metadata for SystemColorType, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SystemColorType and conformance SystemColorType);
  }
}

{
  if (!lazy protocol witness table cache variable for type SystemColorType and conformance SystemColorType)
  {
    swift_getWitnessTable(protocol conformance descriptor for SystemColorType, &type metadata for SystemColorType, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SystemColorType and conformance SystemColorType);
  }
}

{
  if (!lazy protocol witness table cache variable for type SystemColorType and conformance SystemColorType)
  {
    swift_getWitnessTable(protocol conformance descriptor for SystemColorType, &type metadata for SystemColorType, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SystemColorType and conformance SystemColorType);
  }
}

{
  if (!lazy protocol witness table cache variable for type SystemColorType and conformance SystemColorType)
  {
    swift_getWitnessTable(protocol conformance descriptor for SystemColorType, &type metadata for SystemColorType, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SystemColorType and conformance SystemColorType);
  }
}

void instantiation function for generic protocol witness table for SystemColorType(uint64_t a1)
{
  lazy protocol witness table accessor for type SystemColorType and conformance SystemColorType();
  *(a1 + 8) = v2;
}

{
  lazy protocol witness table accessor for type SystemColorType and conformance SystemColorType();
  *(a1 + 8) = v2;
  lazy protocol witness table accessor for type SystemColorType and conformance SystemColorType();
  *(a1 + 16) = v3;
}

const char *one-time initialization function for waitingForPreviewThunks()
{
  result = getenv("XCODE_RUNNING_FOR_PREVIEWS");
  if (result)
  {
    result = atoi(result);
    v1 = result != 0;
  }

  else
  {
    v1 = 0;
  }

  waitingForPreviewThunks = v1;
  return result;
}

int *ViewGraph.updateGraphPhase(oldParentPhase:newParentPhase:)(int *result, unsigned int *a2)
{
  v3 = *a2;
  if (result[1])
  {
    swift_beginAccess();
    return AGGraphSetValue();
  }

  v4 = *result;
  if ((v3 ^ *result) >= 2)
  {
    swift_beginAccess();
    AGGraphGetValue();
    AGGraphSetValue();
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v5 = *(v2 + 208);
      ObjectType = swift_getObjectType();
      (*(*(v5 + 8) + 16))(ObjectType);
      result = swift_unknownObjectRelease();
    }
  }

  if (((((v4 & 1) == 0) ^ v3) & 1) == 0)
  {
    swift_beginAccess();
    AGGraphGetValue();
    return AGGraphSetValue();
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE016PreferenceBridgeF033_76C8A4B3FC8EE0F99045B3425CD62255LLVG_Tt2g5@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.PreferenceBridgeKey>, &type metadata for EnvironmentValues.PreferenceBridgeKey, &protocol witness table for EnvironmentValues.PreferenceBridgeKey, type metadata accessor for EnvironmentPropertyKey);
  BloomFilter.init(hashValue:)(v4);
  v5 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE016PreferenceBridgeV033_76C8A4B3FC8EE0F99045B3425CD62255LLVG_Tt0B5(a1, v7);
  if (v5)
  {
    return outlined init with copy of EnvironmentValues.PreferenceBridgeKey.Value((v5 + 9), a2);
  }

  else
  {
    return swift_weakInit();
  }
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA018DefaultAccentColorF033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Tt2g5(uint64_t *a1, uint64_t a2)
{
  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA018DefaultAccentColorS033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Tt0g5(*a1);
  if (!result)
  {
    goto LABEL_8;
  }

  v5 = *(result + 72);
  if (!a2)
  {
    if (!v5)
    {
      return result;
    }

    goto LABEL_8;
  }

  if (!v5 || v5 != a2 && (v6 = *(*a2 + 88), v7 = , v8 = v6(v7), result = , (v8 & 1) == 0))
  {
LABEL_8:
    v9 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<DefaultAccentColorKey>>(0);
    *(swift_allocObject() + 72) = a2;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultAccentColorKey>, &type metadata for DefaultAccentColorKey, &protocol witness table for DefaultAccentColorKey, type metadata accessor for EnvironmentPropertyKey);
    v11 = v10;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v11, 0, v9);
  }

  return result;
}

uint64_t ViewGraphHost.setEnvironment(_:wrapper:)(uint64_t *a1, uint64_t a2)
{
  v12[11] = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v5 = a1[1];
  swift_beginAccess();
  v12[5] = v4;
  v12[6] = 0;

  AGGraphSetValue();

  v6 = OBJC_IVAR____TtC7SwiftUI31ViewGraphHostEnvironmentWrapper_phase;
  swift_beginAccess();
  LODWORD(a2) = *(a2 + v6);
  swift_beginAccess();
  v7 = *(v2 + 132);
  v10 = *(v2 + 128);
  v11 = v7;
  LODWORD(v12[0]) = a2;
  ViewGraph.updateGraphPhase(oldParentPhase:newParentPhase:)(&v10, v12);
  *(v2 + 128) = a2;
  *(v2 + 132) = 0;
  v12[0] = v4;
  v12[1] = v5;
  v8 = swift_allocObject();
  swift_beginAccess();
  swift_unknownObjectWeakLoadStrong();
  *(v8 + 24) = *(v2 + 24);
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();

  ViewGraph.updatePreferenceBridge(environment:deferredUpdate:)(v12, partial apply for closure #1 in ViewGraphHost.setEnvironment(_:wrapper:), v8);
}

uint64_t sub_18D039BB4()
{
  MEMORY[0x193AC4950](v0 + 16);

  return swift_deallocObject();
}

uint64_t ViewGraph.updatePreferenceBridge(environment:deferredUpdate:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  if (a1[1])
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE016PreferenceBridgeI033_76C8A4B3FC8EE0F99045B3425CD62255LLVG_Tt1g5(v5, &v12);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE016PreferenceBridgeF033_76C8A4B3FC8EE0F99045B3425CD62255LLVG_Tt2g5(*a1, &v12);
  }

  Strong = swift_weakLoadStrong();
  result = outlined destroy of EnvironmentValues.PreferenceBridgeKey.Value(&v12);
  if (Strong)
  {
    v8 = swift_weakLoadStrong();
    if (v8)
    {
      v9 = v8;

      if (Strong == v9)
      {
      }
    }

    if (one-time initialization token for sharedGraph != -1)
    {
      swift_once();
    }

    if (AGGraphGetCounter())
    {
      LOBYTE(v12) = 17;
      v10 = swift_allocObject();
      *(v10 + 16) = a2;
      *(v10 + 24) = a3;

      static Update.enqueueAction(reason:_:)(&v12, _sIg_Ieg_TRTA_0, v10);
    }

    ViewGraph.setPreferenceBridge(to:isInvalidating:)(v11, 0);
  }

  return result;
}

uint64_t sub_18D039D60()
{

  return swift_deallocObject();
}

BOOL ViewGraphHost.setSafeAreaInsets(_:keyboardHeight:)(int8x16_t *a1, uint64_t a2, char a3)
{
  v6 = 1;
  memset(v4, 0, sizeof(v4));
  v5 = 1;
  return ViewGraphHost.setSafeAreaInsets(_:keyboardHeight:cornerInsets:)(a1, a2, a3 & 1, v4);
}

Swift::Bool __swiftcall ViewGraph.setSafeAreaInsets(_:)(Swift::OpaquePointer a1)
{

  outlined consume of SafeAreaInsets.OptionalValue?(1);
  v2 = AGGraphSetValue();
  if (v2 && (swift_beginAccess(), swift_unknownObjectWeakLoadStrong()))
  {
    v3 = *(v1 + 208);
    ObjectType = swift_getObjectType();
    (*(*(v3 + 8) + 16))(ObjectType);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  outlined consume of SafeAreaInsets.OptionalValue?(1);
  return v2;
}

Swift::Void __swiftcall ViewGraph.setSize(_:)(SwiftUI::ViewSize a1)
{
  if (AGGraphSetValue())
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v2 = *(v1 + 208);
      ObjectType = swift_getObjectType();
      (*(*(v2 + 8) + 16))(ObjectType);
      swift_unknownObjectRelease();
    }
  }
}

Swift::Void __swiftcall GraphHost.instantiateIfNeeded()()
{
  swift_beginAccess();
  if ((*(v0 + 128) & 1) == 0)
  {
    if (one-time initialization token for waitingForPreviewThunks != -1)
    {
      swift_once();
    }

    if (waitingForPreviewThunks)
    {
      if (one-time initialization token for blockedGraphHosts != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      rawValue = blockedGraphHosts._rawValue;
      v2 = *(blockedGraphHosts._rawValue + 2);
      v3 = 32;
      for (i = v2; i; --i)
      {
        v5 = *(blockedGraphHosts._rawValue + v3);
        v3 += 8;
        if (v5 == v0)
        {
          return;
        }
      }

      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      blockedGraphHosts._rawValue = rawValue;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 + 1, 1, rawValue);
        blockedGraphHosts._rawValue = rawValue;
      }

      v8 = rawValue[2];
      v7 = rawValue[3];
      if (v8 >= v7 >> 1)
      {
        rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1, rawValue);
      }

      rawValue[2] = v8 + 1;
      rawValue[v8 + 4] = v0;
      blockedGraphHosts._rawValue = rawValue;
      swift_endAccess();
    }

    else
    {
      GraphHost.instantiate()();
    }
  }
}

float64x2_t EdgeInsets.round(toMultipleOf:)(double a1)
{
  v2.f64[0] = *v1;
  if (a1 == 1.0)
  {
    *v1 = round(v2.f64[0]);
    *(v1 + 8) = vrndaq_f64(*(v1 + 8));
    result.f64[0] = round(*(v1 + 24));
    *(v1 + 24) = result.f64[0];
  }

  else
  {
    v2.f64[1] = *(v1 + 8);
    v4 = vdupq_lane_s64(*&a1, 0);
    v5 = vmulq_n_f64(vrndaq_f64(vdivq_f64(v2, v4)), a1);
    result = vmulq_n_f64(vrndaq_f64(vdivq_f64(*(v1 + 16), v4)), a1);
    *v1 = v5;
    *(v1 + 16) = result;
  }

  return result;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA20MatchedGeometryScope33_F035CBEF00D3D777B3359545F684D774LLC_Tt2g5(void *a1)
{
  v2 = type metadata accessor for MatchedGeometryScope();
  BloomFilter.init(hashValue:)(v2);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA20MatchedGeometryScope33_F035CBEF00D3D777B3359545F684D774LLC_Tt0B5(a1, v4);
  if (result)
  {
  }

  return result;
}

void *closure #1 in closure #1 in ViewGraph.instantiateOutputs()(_DWORD *a1, __int128 *a2)
{
  v3 = a2[2];
  v4 = a2[4];
  v10[3] = a2[3];
  v10[4] = v4;
  v11 = *(a2 + 20);
  v5 = *a2;
  v10[1] = a2[1];
  v10[2] = v3;
  v10[0] = v5;
  outlined init with copy of _ViewInputs(v10, v9);
  if (one-time initialization token for layoutDirection != -1)
  {
    swift_once();
  }

  v6 = static CachedEnvironment.ID.layoutDirection;
  swift_beginAccess();
  v7 = specialized CachedEnvironment.attribute<A>(id:_:)(v6, closure #1 in _GraphInputs.layoutDirection.getter, 0);
  swift_endAccess();
  result = outlined destroy of _ViewInputs(v10);
  *a1 = v7;
  return result;
}

uint64_t protocol witness for ViewGraphOwner.renderingPhase.getter in conformance ViewGraphHost@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 114);
  return result;
}

Swift::Void __swiftcall ViewGraphRootValueUpdater.graphDidChange()()
{
  v2 = v1;
  v3 = v0;
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v4 = static Update._lock;
  _MovableLockLock(static Update._lock);
  if (!ViewGraphRootValueUpdater.isRendering.getter(v3, v2))
  {
    (*(*(v2 + 8) + 24))(v3, 0.0);
  }

  _MovableLockUnlock(v4);
}

uint64_t specialized ViewGraphHost.GraphFeature.modifyViewInputs(inputs:graph:)(Swift::UInt *a1)
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*((*(*(Strong + 96) + 16) & 0xFFFFFFFFFFFFFFF8) + 80))(v8);
    if (LOBYTE(v8[0]) == 1)
    {

      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE014PlatformSystemF033_C648E6A51A5817691B7DBFA00A618C21LLV_Tt2B5(a1, 0);
    }
  }

  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    swift_beginAccess();
    v5 = swift_unknownObjectWeakLoadStrong();
    v6 = *(v4 + 56);

    if (v5)
    {
      ObjectType = swift_getObjectType();
      (*(v6 + 8))(a1, ObjectType, v6);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

BOOL ViewGraphRootValueUpdater.isRendering.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustomAttributeWriter(0, &lazy cache variable for type metadata for ViewGraphOwner, &protocol descriptor for ViewGraphOwner, 0);
  (*(*(a2 + 8) + 16))(v8, v4, v4, a1);
  if (!v8[0])
  {
    return 0;
  }

  v5 = v8[1];
  ObjectType = swift_getObjectType();
  (*(v5 + 64))(v8, ObjectType, v5);
  swift_unknownObjectRelease();
  return LOBYTE(v8[0]) != 0;
}

unint64_t PreferencesOutputs.subscript.setter(unint64_t a1, ValueMetadata *a2, uint64_t a3)
{
  if (a2 == &type metadata for DisplayList.Key)
  {
    v4 = *(v3 + 8);
    if ((v4 & 0x100) == 0)
    {
      *(v3 + 8) = v4 | 0x100;
    }
  }

  v5 = 0;
  v6 = *v3;
  v7 = 1;
  do
  {
    if (*(*v3 + 16) + v7 == 1)
    {
      return _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFSo11AGAttributea_s5NeverOytTg590_s7SwiftUI18PreferencesOutputsV6anyKeySo11AGAttributeaSgAA010PreferenceF0_pXp_tcisyAFXEfU_0F2UI0hI0VAI0pK0_pXmTTf1cn_n(a1 | ((HIDWORD(a1) & 1) << 32), v3, a2, a3);
    }

    v8 = *&v6[v5 + 32];
    --v7;
    v5 += 24;
  }

  while (v8 != a2);
  v9 = -v7;
  if ((a1 & 0x100000000) != 0)
  {

    return specialized Array.remove(at:)(-v7);
  }

  else
  {
    v11 = a1;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
      v6 = result;
    }

    if (v9 >= *(v6 + 2))
    {
      __break(1u);
    }

    else
    {
      *&v6[v5 + 24] = v11;
      *v3 = v6;
    }
  }

  return result;
}

uint64_t specialized static GraphHost.currentHost.getter()
{
  if (AGGraphGetCurrentAttribute() == *MEMORY[0x1E698D3F8])
  {
    v0 = AGSubgraphGetCurrent();
    if (!v0)
    {
      goto LABEL_8;
    }

    v1 = v0;
    v2 = AGSubgraphGetGraph();
  }

  else
  {
    v2 = AGGraphGetAttributeGraph();
  }

  Context = AGGraphGetContext();
  if (Context)
  {
    v4 = Context;

    return v4;
  }

  __break(1u);
LABEL_8:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = *(v3 + 48) + 16 * result;
      v9 = *v8;
      v10 = *(v8 + 8);
      if (v9 == a1 && a2 == v10)
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_18D03ABD4(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 2);

  return a1;
}

unint64_t PreferencesOutputs.subscript.setter(uint64_t a1, ValueMetadata *a2, uint64_t a3, uint64_t a4)
{
  v10 = a1;
  v11 = BYTE4(a1) & 1;
  v9[2] = a3;
  v9[3] = a4;
  swift_getAssociatedTypeWitness();
  type metadata accessor for Attribute();
  type metadata accessor for Optional();
  type metadata accessor for AGAttribute(0);
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(protocol witness for OptionSet.init(rawValue:) in conformance GestureMask, v9, MEMORY[0x1E69E73E0], v6, v7, &v12);
  LOBYTE(v10) = v13;
  return PreferencesOutputs.subscript.setter(v12 | (v13 << 32), a2, a4);
}

unint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFSo11AGAttributea_s5NeverOytTg590_s7SwiftUI18PreferencesOutputsV6anyKeySo11AGAttributeaSgAA010PreferenceF0_pXp_tcisyAFXEfU_0F2UI0hI0VAI0pK0_pXmTTf1cn_n(uint64_t a1, char **a2, uint64_t a3, uint64_t a4)
{
  v4 = a1 & 0x100000000;
  if ((a1 & 0x100000000) == 0)
  {
    v8 = a1;
    v9 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
      *a2 = v9;
    }

    v12 = *(v9 + 2);
    v11 = *(v9 + 3);
    if (v12 >= v11 >> 1)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v9);
      *a2 = v9;
    }

    *(v9 + 2) = v12 + 1;
    v13 = &v9[24 * v12];
    *(v13 + 4) = a3;
    *(v13 + 5) = a4;
    *(v13 + 12) = v8;
  }

  return HIDWORD(v4);
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(void, uint64_t, uint64_t, uint64_t))
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 3);
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *(a4 + 2);
  if (v11 <= v12)
  {
    v13 = *(a4 + 2);
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    a8(0, a5, a6, a7);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    *(v14 + 2) = v12;
    *(v14 + 3) = 2 * ((v15 - 32) / 24);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v16 = v14 + 32;
  v17 = a4 + 32;
  v18 = 24 * v12;
  if (v9)
  {
    if (v14 != a4 || v16 >= &v17[v18])
    {
      memmove(v16, v17, v18);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v16, v17, v18);
  }

  return v14;
}

{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 3);
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *(a4 + 2);
  if (v11 <= v12)
  {
    v13 = *(a4 + 2);
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    a8(0, a5, a6, a7);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 1;
    }

    *(v14 + 2) = v12;
    *(v14 + 3) = 2 * (v16 >> 5);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v17 = v14 + 32;
  v18 = a4 + 32;
  if (v9)
  {
    if (v14 != a4 || v17 >= &v18[32 * v12])
    {
      memmove(v17, v18, 32 * v12);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v17, v18, 32 * v12);
  }

  return v14;
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v26 = a5;
  v27 = a2;
  v29 = a4;
  v28 = a1;
  v25 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 16);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21, v6, v19);
  v23 = 1;
  if ((*(v14 + 48))(v21, 1, v13) != 1)
  {
    (*(v14 + 32))(v17, v21, v13);
    v28(v17, v11);
    (*(v14 + 8))(v17, v13);
    if (v7)
    {
      return (*(v25 + 32))(v26, v11, a3);
    }

    v23 = 0;
  }

  return (*(*(v29 - 8) + 56))(a6, v23, 1);
}

uint64_t type metadata accessor for TimerTimelineSchedule(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t View.modifier<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v16, a2, v12);
  (*(v8 + 16))(v10, a1, a3);
  return ModifiedContent.init(content:modifier:)(v14, v10, a2, a3, a4);
}

uint64_t ModifiedContent.init(content:modifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v10 = type metadata accessor for ModifiedContent(0, a3, a4, v9);
  v11 = *(*(a4 - 8) + 32);
  v12 = a5 + *(v10 + 36);

  return v11(v12, a2, a4);
}

uint64_t initializeBufferWithCopyOfBuffer for _EnvironmentKeyTransformModifier(uint64_t a1, __int128 *a2)
{
  v3 = *(a2 + 2);
  *a1 = *a2;
  *(a1 + 16) = v3;

  return a1;
}

uint64_t destroy for _EnvironmentKeyTransformModifier(void *a1)
{
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void type metadata accessor for _ContiguousArrayStorage<(String, AGAttribute)>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void type metadata accessor for ObservationTracking._AccessList?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ObservationTracking._AccessList?)
  {
    type metadata accessor for ObservationTracking._AccessList();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ObservationTracking._AccessList?);
    }
  }
}

uint64_t outlined init with copy of ObservationTracking._AccessList?(uint64_t a1, uint64_t a2)
{
  _s11Observation0A8TrackingV11_AccessListVSgMaTm_0(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Any?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t _sypSgWOhTm_0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  _ss23_ContiguousArrayStorageCy7SwiftUI11DisplayListV4ItemVGMaTm_0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _sypSgWOhTm_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t _sypSgWOhTm_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t _sypSgWOhTm_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = (a4)(0, a2, a3);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t _sypSgWOhTm_4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _sypSgWOhTm_5(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _sypSgWOhTm_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t _sypSgWOhTm_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t _sypSgWOhTm_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t _sypSgWOhTm_9(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  type metadata accessor for NamedImage.VectorInfo?(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t _sypSgWOhTm_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = (a4)(0, a2, a3);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t _sypSgWOhTm_11(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  type metadata accessor for AnyAccessibilityValue?(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _sypSgWOhTm_12(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _sypSgWOhTm_13(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  type metadata accessor for [_ViewDebug.Data](0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with take of ObservationTracking._AccessList?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for WeakBox<GlassContainerCache>(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t StaticBody.updateValue()(char *a1)
{
  v54 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v47 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v43 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v43 - v9;
  type metadata accessor for _ContiguousArrayStorage<(String, AGAttribute)>(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v43 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v43 - v18;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v20 = static ObservationCenter._current;
  swift_beginAccess();
  v21 = pthread_getspecific(v20[2]);
  if (!v21)
  {
    v22 = swift_slowAlloc();
    pthread_setspecific(v20[2], v22);
    v53 = type metadata accessor for ObservationCenter();
    *&v52 = v20[3];
    outlined init with take of Any(&v52, v22);

    v21 = v22;
  }

  outlined init with copy of Any(v21, &v52);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v23 = v51;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    a1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 2) + 1, 1, a1);
    *(v23 + 24) = a1;
    goto LABEL_9;
  }

  v46 = CurrentAttribute;
  v49 = v7;
  v25 = v10;
  swift_beginAccess();
  v48 = *(v23 + 24);
  *(v23 + 24) = MEMORY[0x1E69E7CC0];
  (*(v3 + 56))(v16, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v27 = *(StatusReg + 848);
  *(StatusReg + 848) = v16;
  v28 = *(a1 + 2);
  v29 = *(a1 + 3);
  v30 = *(a1 + 5);
  v44 = *(a1 + 4);
  v45 = v28;
  closure #1 in StaticBody.updateValue()(v50, v28, v29, v44, v30);
  *(StatusReg + 848) = v27;
  outlined init with take of ObservationTracking._AccessList?(v16, v19);
  outlined init with copy of ObservationTracking._AccessList?(v19, v13);
  if ((*(v3 + 48))(v13, 1, v2) == 1)
  {
    _sypSgWOhTm_7(v19, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for _ContiguousArrayStorage<(String, AGAttribute)>);
    v19 = v13;
    goto LABEL_12;
  }

  v10 = v25;
  v50 = *(v3 + 32);
  v50(v25, v13, v2);
  v7 = v49;
  (*(v3 + 16))(v49, v10, v2);
  a1 = *(v23 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v23 + 24) = a1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v33 = *(a1 + 2);
  v32 = *(a1 + 3);
  if (v33 >= v32 >> 1)
  {
    a1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, a1);
  }

  *(a1 + 2) = v33 + 1;
  v50(&a1[((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v33], v7, v2);
  *(v23 + 24) = a1;
  (*(v3 + 8))(v10, v2);
LABEL_12:
  _sypSgWOhTm_7(v19, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for _ContiguousArrayStorage<(String, AGAttribute)>);
  v34 = *(v23 + 24);
  v35 = *(v34 + 16);
  if (v35)
  {
    v37 = *(v3 + 16);
    v36 = v3 + 16;
    v38 = (v34 + ((*(v36 + 64) + 32) & ~*(v36 + 64)));
    v49 = *(v36 + 56);
    v50 = v37;
    v39 = v47;
    v40 = (v36 - 8);
    v43 = v34;

    v41 = v46;
    do
    {
      v50(v39, v38, v2);
      swift_getAssociatedTypeWitness();
      ObservationCenter.invalidate<A>(_:onChangeIn:)(v41, v39);
      (*v40)(v39, v2);
      v38 = &v49[v38];
      --v35;
    }

    while (v35);
  }

  *(v23 + 24) = v48;
}

unint64_t PreferencesOutputs.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*v3 + 32);
  v7 = *(*v3 + 16) + 1;
  while (--v7)
  {
    v8 = v6 + 3;
    v9 = *v6;
    v6 += 3;
    if (v9 == a1)
    {
      v10 = *(v8 - 2);
      goto LABEL_6;
    }
  }

  v10 = 0;
LABEL_6:
  v15 = v10;
  v16 = v7 == 0;
  MEMORY[0x1EEE9AC00](a1);
  v14[2] = a2;
  v14[3] = a3;
  type metadata accessor for AGAttribute?(0);
  swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for Attribute();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(protocol witness for OptionSet.init(rawValue:) in conformance GestureMask, v14, MEMORY[0x1E69E73E0], v11, v12, &v17);
  return v17 | (v18 << 32);
}

void type metadata accessor for ObservationTracking._AccessList?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void _s11Observation0A8TrackingV11_AccessListVSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void _s11Observation0A8TrackingV11_AccessListVSgMaTm_1(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void _s11Observation0A8TrackingV11_AccessListVSgMaTm_2(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void _s11Observation0A8TrackingV11_AccessListVSgMaTm_3(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void _s11Observation0A8TrackingV11_AccessListVSgMaTm_4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = a4(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void _s11Observation0A8TrackingV11_AccessListVSgMaTm_5(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = a4(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t closure #1 in StaticBody.updateValue()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v25 = *(AssociatedTypeWitness - 8);
  v26 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v23 - v11;
  v27[0] = a2;
  v27[1] = a3;
  v27[2] = a4;
  v27[3] = a5;
  v13 = type metadata accessor for StaticBody(0, v27);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v23 - v19;
  v21 = *(v14 + 16);
  v21(&v23 - v19, a1, v13, v18);
  (v21)(v16, a1, v13);
  StaticBody.container.getter(v12);
  (*(v14 + 8))(v16, v13);
  (*(v24 + 24))(v12, 1, a2);
  (*(v25 + 8))(v12, v26);
  return (*(*(a2 - 8) + 8))(v20, a2);
}

uint64_t StaticBody.container.getter@<X0>(uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  Value = AGGraphGetValue();
  v5 = *(*(AssociatedTypeWitness - 8) + 16);

  return v5(a2, Value, AssociatedTypeWitness);
}

uint64_t $defer #1 <A>() in traceRuleBody<A>(_:body:)()
{
  v68 = *MEMORY[0x1E69E9840];
  v53 = type metadata accessor for OSSignpostID();
  v1 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v54 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v44 - v4;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v0 = CurrentAttribute;
    if (one-time initialization token for bodyInvoke == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v7 = static Signpost.bodyInvoke;
  v8 = word_1ED539040;
  v9 = HIBYTE(word_1ED539040);
  v10 = byte_1ED539042;
  v11 = static os_signpost_type_t.end.getter();
  v62 = v7;
  v63 = v8;
  v64 = v9;
  v65 = v10;
  result = Signpost.isEnabled.getter();
  if ((result & 1) == 0)
  {
    return result;
  }

  v45 = v5;
  static OSSignpostID.exclusive.getter();
  _ss23_ContiguousArrayStorageCys7CVarArg_pGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E7668];
  v15 = MEMORY[0x1E69E76D0];
  *(v13 + 16) = xmmword_18DDAF080;
  *(v13 + 56) = v14;
  *(v13 + 64) = v15;
  *(v13 + 32) = v0;
  v16 = MEMORY[0x1E69E65A8];
  *(v13 + 96) = MEMORY[0x1E69E6530];
  *(v13 + 104) = v16;
  *(v13 + 72) = 1;
  v17 = AGGraphGetAttributeGraph();
  Counter = AGGraphGetCounter();

  v19 = MEMORY[0x1E69E6870];
  *(v13 + 136) = MEMORY[0x1E69E6810];
  *(v13 + 144) = v19;
  *(v13 + 112) = Counter;
  if (one-time initialization token for _signpostLog != -1)
  {
    swift_once();
    if (v9)
    {
      goto LABEL_6;
    }

LABEL_10:
    v48 = v7;
    if (v7 == 20)
    {
      v21 = 3;
    }

    else
    {
      v21 = 4;
    }

    v22 = bswap32(v7) | (4 * WORD1(v7));
    v23 = v11;
    v25 = *(v1 + 16);
    v24 = v1 + 16;
    v46 = v25;
    v26 = v25(v54, v45, v53);
    v27 = 0;
    LOBYTE(v57[0]) = 1;
    v51 = 16 * *(&v7 + 1);
    v52 = (v24 - 8);
    v49 = v24;
    v50 = v13 + 32;
    v47 = *(&v7 + 1);
    do
    {
      v55 = &v44;
      MEMORY[0x1EEE9AC00](v26);
      v29 = &v44 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
      v30 = v29 + 8;
      v31 = v21;
      v32 = v29 + 8;
      do
      {
        *(v32 - 1) = 0;
        *v32 = 0;
        v32 += 16;
        --v31;
      }

      while (v31);
      v33 = v50 + 40 * v27;
      while (1)
      {
        v34 = *(v13 + 16);
        if (v27 == v34)
        {
          break;
        }

        if (v27 >= v34)
        {
          __break(1u);
        }

        ++v27;
        outlined init with copy of AnyTrackedValue(v33, &v62);
        v35 = v66;
        v36 = v67;
        __swift_project_boxed_opaque_existential_1(&v62, v66);
        *(v30 - 1) = CVarArg.kdebugValue(_:)(v22 | v23, v35, v36);
        *v30 = v37 & 1;
        v30 += 16;
        __swift_destroy_boxed_opaque_existential_1(&v62);
        v33 += 40;
        if (!--v21)
        {
          goto LABEL_22;
        }
      }

      LOBYTE(v57[0]) = 0;
LABEL_22:
      v38 = v48;
      if (v48 == 20)
      {
        OSSignpostID.rawValue.getter();
      }

      kdebug_trace();
      if (v29[8] == 1)
      {
        kdebug_trace_string();
      }

      if (v29[24] == 1)
      {
        kdebug_trace_string();
      }

      if (v29[40] == 1)
      {
        kdebug_trace_string();
      }

      if (v38 != 20 && v29[56] == 1)
      {
        kdebug_trace_string();
      }

      if (one-time initialization token for continuation != -1)
      {
        swift_once();
      }

      v39 = v53;
      v40 = *v52;
      v41 = v54;
      (*v52)(v54, v53);
      v42 = __swift_project_value_buffer(v39, static OSSignpostID.continuation);
      v26 = v46(v41, v42, v39);
      v21 = v47;
    }

    while ((v57[0] & 1) != 0);
    v43 = v53;
    v40(v54, v53);
    v40(v45, v43);
  }

  if ((v9 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  v61 = v11;
  v59 = _signpostLog;
  v60 = &dword_18D018000;
  v62 = v7;
  v63 = v8;
  v57[0] = "-> [%d] (%p)";
  v57[1] = 12;
  v58 = 2;
  v56 = v13;
  v20 = v45;
  specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v61, &v60, &v59, &v62, v45, v57, &v56);
  (*(v1 + 8))(v20, v53);
}

void type metadata accessor for AGAttribute?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AGAttribute?)
  {
    type metadata accessor for AGAttribute(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for AGAttribute?);
    }
  }
}

uint64_t specialized $defer #1 <A>() in static CustomEventTrace.instantiate<A>(root:closure:)(uint64_t a1)
{

  return static CustomEventTrace.instantiateEnd(_:)(a1);
}

uint64_t one-time initialization function for _current()
{
  type metadata accessor for ObservationCenter();
  v0 = swift_allocObject();
  v1 = MEMORY[0x1E69E7CC0];
  v0[2] = MEMORY[0x1E69E7CC0];
  v0[3] = v1;
  v0[4] = MEMORY[0x1E69E7CC8];
  _s11Observation0A8TrackingV11_AccessListVSgMaTm_4(0, &lazy cache variable for type metadata for ThreadSpecific<ObservationCenter>, v2, type metadata accessor for ObservationCenter, type metadata accessor for ThreadSpecific);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = v0;
  swift_beginAccess();
  pthread_key_create((v3 + 16), @objc closure #1 in ThreadSpecific.init(_:));
  result = swift_endAccess();
  static ObservationCenter._current = v3;
  return result;
}

uint64_t type metadata completion function for ThreadSpecific(uint64_t a1)
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