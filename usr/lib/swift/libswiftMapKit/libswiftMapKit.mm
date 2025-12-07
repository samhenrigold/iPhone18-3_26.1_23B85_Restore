void @objc UIView.setGlassBackground()(void *a1)
{
  v2 = type metadata accessor for _Glass._GlassVariant();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = a1;
  static _Glass._GlassVariant.regular.getter();
  v4[3] = type metadata accessor for _Glass();
  v4[4] = MEMORY[0x29EDC7878];
  __swift_allocate_boxed_opaque_existential_1(v4);
  _Glass.init(_:smoothness:)();
  UIView._background.setter();
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void protocol witness for RawRepresentable.init(rawValue:) in conformance MKMapItemIdentifier(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v6 = MEMORY[0x29C2AB4E0](v3, v4);

  v7 = [v5 initWithIdentifierString_];

  *a2 = v7;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance MKMapItemIdentifier(uint64_t *a1@<X8>)
{
  v3 = [*v1 identifierString];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for MKCoordinateSpan(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MKCoordinateSpan(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

_DWORD *protocol witness for RawRepresentable.init(rawValue:) in conformance GEOPlaceDescriptorResolutionParametersPreferredType@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

void type metadata accessor for MKCoordinateSpan(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t MKAddressRepresentations.region.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 regionCode];
  if (v3)
  {
    v4 = v3;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    Locale.Region.init(_:)();
    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for Locale.Region();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

char *MKGradientPolylineRenderer.locations.getter()
{
  v1 = [v0 locations];
  type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for NSNumber, 0x29EDBA070);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_16:

    return MEMORY[0x29EDCA190];
  }

  if (v2 < 0)
  {
    v13 = v2;
  }

  else
  {
    v13 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = MEMORY[0x29C2AB660](v13);
  if (!v3)
  {
    goto LABEL_16;
  }

LABEL_3:
  v14 = MEMORY[0x29EDCA190];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v6 = v14;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x29C2AB5E0](v5, v2);
      }

      else
      {
        v7 = *(v2 + 8 * v5 + 32);
      }

      v8 = v7;
      [v7 doubleValue];
      v10 = v9;

      v12 = *(v14 + 16);
      v11 = *(v14 + 24);
      if (v12 >= v11 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
      }

      ++v5;
      *(v14 + 16) = v12 + 1;
      *(v14 + 8 * v12 + 32) = v10;
    }

    while (v3 != v5);

    return v6;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall MKGradientPolylineRenderer.setColors(_:locations:)(Swift::OpaquePointer _, Swift::OpaquePointer locations)
{
  v3 = *(locations._rawValue + 2);
  if (v3)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v5 = (locations._rawValue + 32);
    do
    {
      v6 = *v5++;
      [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithDouble_];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v3;
    }

    while (v3);
  }

  type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for UIColor, 0x29EDC7A00);
  isa = Array._bridgeToObjectiveC()().super.isa;
  type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for NSNumber, 0x29EDBA070);
  v8 = Array._bridgeToObjectiveC()().super.isa;

  [v2 setColors:isa atLocations:v8];
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t type metadata accessor for NSNumber(uint64_t a1, unint64_t *a2, void *a3)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12CoreGraphics7CGFloatVGMd, &_ss23_ContiguousArrayStorageCy12CoreGraphics7CGFloatVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

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
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

id one-time initialization function for MKCoordinateSpanInNSValueObjCType()
{
  v0 = [objc_opt_self() valueWithMKCoordinateSpan_];
  v1 = [v0 objCType];
  result = v0;
  MKCoordinateSpanInNSValueObjCType = v1;
  return result;
}

NSValue __swiftcall MKCoordinateSpan._bridgeToObjectiveC()()
{
  v2 = [objc_opt_self() valueWithMKCoordinateSpan_];

  return v2;
}

id static MKCoordinateSpan._forceBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2)
{
  v4 = [a1 objCType];
  if (one-time initialization token for MKCoordinateSpanInNSValueObjCType != -1)
  {
    v8 = v4;
    swift_once();
    v4 = v8;
  }

  result = strcmp(v4, MKCoordinateSpanInNSValueObjCType);
  if (result)
  {
    __break(1u);
  }

  else
  {
    result = [a1 MKCoordinateSpanValue];
    *a2 = v6;
    *(a2 + 8) = v7;
    *(a2 + 16) = 0;
  }

  return result;
}

BOOL static MKCoordinateSpan._conditionallyBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2)
{
  v4 = [a1 objCType];
  if (one-time initialization token for MKCoordinateSpanInNSValueObjCType != -1)
  {
    v9 = v4;
    swift_once();
    v4 = v9;
  }

  v5 = strcmp(v4, MKCoordinateSpanInNSValueObjCType);
  v6 = 0uLL;
  if (!v5)
  {
    [a1 MKCoordinateSpanValue];
    *(&v6 + 1) = v7;
  }

  result = v5 == 0;
  *a2 = v6;
  *(a2 + 16) = v5 != 0;
  return result;
}

id static MKCoordinateSpan._unconditionallyBridgeFromObjectiveC(_:)(id result)
{
  if (!result)
  {
    goto LABEL_9;
  }

  v1 = result;
  v2 = [result objCType];
  if (one-time initialization token for MKCoordinateSpanInNSValueObjCType != -1)
  {
    v3 = v2;
    swift_once();
    v2 = v3;
  }

  result = strcmp(v2, MKCoordinateSpanInNSValueObjCType);
  if (result)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  return [v1 MKCoordinateSpanValue];
}

id protocol witness for _ObjectiveCBridgeable._bridgeToObjectiveC() in conformance MKCoordinateSpan()
{
  v1 = [objc_opt_self() valueWithMKCoordinateSpan_];

  return v1;
}

id protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance MKCoordinateSpan(void *a1, uint64_t a2)
{
  v4 = [a1 objCType];
  if (one-time initialization token for MKCoordinateSpanInNSValueObjCType != -1)
  {
    v8 = v4;
    swift_once();
    v4 = v8;
  }

  result = strcmp(v4, MKCoordinateSpanInNSValueObjCType);
  if (result)
  {
    __break(1u);
  }

  else
  {
    result = [a1 MKCoordinateSpanValue];
    *a2 = v6;
    *(a2 + 8) = v7;
    *(a2 + 16) = 0;
  }

  return result;
}

BOOL protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance MKCoordinateSpan(void *a1, uint64_t a2)
{
  v4 = [a1 objCType];
  if (one-time initialization token for MKCoordinateSpanInNSValueObjCType != -1)
  {
    v9 = v4;
    swift_once();
    v4 = v9;
  }

  v5 = strcmp(v4, MKCoordinateSpanInNSValueObjCType);
  v6 = 0uLL;
  if (!v5)
  {
    [a1 MKCoordinateSpanValue];
    *(&v6 + 1) = v7;
  }

  result = v5 == 0;
  *a2 = v6;
  *(a2 + 16) = v5 != 0;
  return result;
}

id protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance MKCoordinateSpan@<X0>(id result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    v2 = result;
    v4 = [result objCType];
    if (one-time initialization token for MKCoordinateSpanInNSValueObjCType != -1)
    {
      v7 = v4;
      swift_once();
      v4 = v7;
    }

    result = strcmp(v4, MKCoordinateSpanInNSValueObjCType);
    if (!result)
    {
      result = [v2 MKCoordinateSpanValue];
      *a2 = v5;
      a2[1] = v6;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id static MKMapItemDetailSelectionAccessoryPresentationStyle.automatic(presentationViewController:)(uint64_t a1)
{
  v1 = [objc_opt_self() automaticWithPresentationViewController_];

  return v1;
}

id static MKMapItemDetailSelectionAccessoryPresentationStyle.callout(_:)(uint64_t a1)
{
  v1 = [objc_opt_self() calloutWithCalloutStyle_];

  return v1;
}

uint64_t PlaceDescriptor.init(item:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PlaceDescriptor.SupportingPlaceRepresentation();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = (&v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for PlaceDescriptor.PlaceRepresentation();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = (&v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ([a1 isCurrentLocation])
  {

    v12 = type metadata accessor for PlaceDescriptor();
    v13 = *(*(v12 - 8) + 56);

    return v13(a2, 1, 1, v12);
  }

  v55 = v7;
  v56 = v5;
  v57 = v4;
  v58 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10GeoToolbox15PlaceDescriptorV0F14RepresentationOGMd, &_ss23_ContiguousArrayStorageCy10GeoToolbox15PlaceDescriptorV0F14RepresentationOGMR);
  v15 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v53 = *(v9 + 72);
  v16 = swift_allocObject();
  v54 = xmmword_299AFE7B0;
  *(v16 + 16) = xmmword_299AFE7B0;
  v52 = v15;
  v17 = (v16 + v15);
  [a1 _coordinate];
  *v17 = v18;
  v17[1] = v19;
  v20 = *MEMORY[0x29EDBA1B0];
  v51 = *(v9 + 104);
  v51(v17, v20, v8);
  v21 = [a1 _geoAddress];
  if (v21)
  {
    v22 = v21;
    v23 = [v21 formattedAddressLines];

    if (v23)
    {
      v59 = 0;
      static Array._conditionallyBridgeFromObjectiveC(_:result:)();

      v24 = v59;
      if (v59)
      {
        goto LABEL_10;
      }
    }
  }

  v25 = [a1 placemark];
  v26 = [v25 formattedAddressLines];

  if (!v26)
  {
LABEL_12:
    v29 = 0xE000000000000000;
    goto LABEL_13;
  }

  v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v24 = specialized _arrayConditionalCast<A, B>(_:)(v27);

  if (!v24)
  {
    v26 = 0;
    goto LABEL_12;
  }

LABEL_10:
  v59 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v26 = BidirectionalCollection<>.joined(separator:)();
  v29 = v28;

LABEL_13:
  if (String.count.getter() < 1)
  {
  }

  else
  {
    *v11 = v26;
    v11[1] = v29;
    v51(v11, *MEMORY[0x29EDBA1C0], v8);
    v31 = *(v16 + 16);
    v30 = *(v16 + 24);
    if (v31 >= v30 >> 1)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v16, &_ss23_ContiguousArrayStorageCy10GeoToolbox15PlaceDescriptorV0F14RepresentationOGMd, &_ss23_ContiguousArrayStorageCy10GeoToolbox15PlaceDescriptorV0F14RepresentationOGMR, MEMORY[0x29EDBA1C8]);
    }

    *(v16 + 16) = v31 + 1;
    (*(v9 + 32))(v16 + v52 + v31 * v53, v11, v8);
  }

  v32 = [a1 identifier];
  if (v32)
  {
    v33 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
    inited = swift_initStackObject();
    *(inited + 16) = v54;
    *(inited + 32) = 0xD000000000000010;
    *(inited + 40) = 0x8000000299AFEB20;
    v35 = [v33 identifierString];
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    *(inited + 48) = v36;
    *(inited + 56) = v38;
    v39 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of (String, String)(inited + 32);
    v41 = v55;
    v40 = v56;
    *v55 = v39;
    v42 = v57;
    (*(v40 + 104))(v41, *MEMORY[0x29EDBA1A0], v57);
    v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x29EDCA190], &_ss23_ContiguousArrayStorageCy10GeoToolbox15PlaceDescriptorV010SupportingF14RepresentationOGMd, &_ss23_ContiguousArrayStorageCy10GeoToolbox15PlaceDescriptorV010SupportingF14RepresentationOGMR, MEMORY[0x29EDBA1A8]);
    v45 = v43[2];
    v44 = v43[3];
    if (v45 >= v44 >> 1)
    {
      v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1, v43, &_ss23_ContiguousArrayStorageCy10GeoToolbox15PlaceDescriptorV010SupportingF14RepresentationOGMd, &_ss23_ContiguousArrayStorageCy10GeoToolbox15PlaceDescriptorV010SupportingF14RepresentationOGMR, MEMORY[0x29EDBA1A8]);
    }

    v43[2] = v45 + 1;
    (*(v40 + 32))(v43 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v45, v41, v42);
  }

  v46 = [a1 name];
  if (v46)
  {
    v47 = v46;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v48 = v58;
  PlaceDescriptor.init(representations:commonName:supportingRepresentations:)();

  v49 = type metadata accessor for PlaceDescriptor();
  return (*(*(v49 - 8) + 56))(v48, 0, 1, v49);
}

uint64_t specialized _arrayConditionalCast<A, B>(_:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x29EDCA190];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      outlined init with copy of Any(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x29EDCA190];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo51GEOPlaceDescriptorResolutionParametersPreferredTypeVGMd, &_ss23_ContiguousArrayStorageCySo51GEOPlaceDescriptorResolutionParametersPreferredTypeVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x29EDCA198];
  }

  return result;
}

uint64_t outlined destroy of (String, String)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type [String] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String] and conformance [A]);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

Swift::Void __swiftcall UIView.setGlassBackground()()
{
  v0 = type metadata accessor for _Glass._GlassVariant();
  MEMORY[0x2A1C7C4A8](v0 - 8);
  static _Glass._GlassVariant.regular.getter();
  v1[3] = type metadata accessor for _Glass();
  v1[4] = MEMORY[0x29EDC7878];
  __swift_allocate_boxed_opaque_existential_1(v1);
  _Glass.init(_:smoothness:)();
  UIView._background.setter();
}

void @objc UIView.clearGlassBackground()(void *a1)
{
  v1 = a1;
  UIView._background.setter();
}

char *MKMultiPoint.locations(at:)@<X0>(NSIndexSet *a1@<X8>)
{
  v2 = v1;
  IndexSet._bridgeToObjectiveC()(a1);
  v4 = v3;
  v5 = [v2 locationsAtPointIndexes_];

  type metadata accessor for NSNumber();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_16:

    return MEMORY[0x29EDCA190];
  }

  if (v6 < 0)
  {
    v17 = v6;
  }

  else
  {
    v17 = v6 & 0xFFFFFFFFFFFFFF8;
  }

  v7 = MEMORY[0x29C2AB660](v17);
  if (!v7)
  {
    goto LABEL_16;
  }

LABEL_3:
  v18 = MEMORY[0x29EDCA190];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7 & ~(v7 >> 63), 0);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    v10 = v18;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x29C2AB5E0](v9, v6);
      }

      else
      {
        v11 = *(v6 + 8 * v9 + 32);
      }

      v12 = v11;
      [v11 doubleValue];
      v14 = v13;

      v16 = *(v18 + 16);
      v15 = *(v18 + 24);
      if (v16 >= v15 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
      }

      ++v9;
      *(v18 + 16) = v16 + 1;
      *(v18 + 8 * v16 + 32) = v14;
    }

    while (v7 != v9);

    return v10;
  }

  __break(1u);
  return result;
}

unint64_t type metadata accessor for NSNumber()
{
  result = lazy cache variable for type metadata for NSNumber;
  if (!lazy cache variable for type metadata for NSNumber)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSNumber);
  }

  return result;
}

uint64_t one-time initialization function for mapItemRequest()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.mapItemRequest);
  __swift_project_value_buffer(v0, static Logger.mapItemRequest);
  return Logger.init(subsystem:category:)();
}

void *PlaceDescriptor.descriptorResolutionParameters.getter()
{
  v76 = type metadata accessor for Mirror();
  v0 = *(v76 - 8);
  MEMORY[0x2A1C7C4A8](v76);
  v75 = &v69 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for PlaceDescriptor.PlaceRepresentation();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x2A1C7C4A8](v2);
  v6 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v69 - v7;
  v9 = [objc_allocWithZone(MEMORY[0x29EDC14C8]) init];
  v10 = PlaceDescriptor.commonName.getter();
  if (v11)
  {
    v12 = MEMORY[0x29C2AB4E0](v10);
  }

  else
  {
    v12 = 0;
  }

  [v9 setPlaceNameHint_];

  v13 = PlaceDescriptor.coordinate.getter();
  if ((v15 & 1) == 0)
  {
    v16 = [objc_allocWithZone(MEMORY[0x29EDC14C0]) initWithLatitude:*&v13 longitude:v14];
    [v9 setLocation_];
  }

  v17 = PlaceDescriptor.address.getter();
  if (v18)
  {
    v19 = v17;
    v20 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_299AFE7B0;
    *(v21 + 32) = v19;
    *(v21 + 40) = v20;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v9 setFormattedAddress_];
  }

  result = PlaceDescriptor.representations.getter();
  v25 = result;
  v86 = result[2];
  if (v86)
  {
    v70 = v9;
    v26 = 0;
    v85 = result + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v87 = v3 + 16;
    v84 = v3 + 88;
    v83 = *MEMORY[0x29EDBA1C0];
    v80 = *MEMORY[0x29EDBA1B0];
    v79 = *MEMORY[0x29EDBA1B8];
    v74 = (v0 + 8);
    v27 = (v3 + 8);
    v28 = MEMORY[0x29EDCA190];
    *&v24 = 136446210;
    v69 = v24;
    v81 = (v3 + 8);
    v73 = v2;
    v82 = v3;
    v77 = v6;
    v72 = v8;
    v78 = result;
    while (1)
    {
      if (v26 >= *(v25 + 16))
      {
        __break(1u);
LABEL_53:
        __break(1u);
        return result;
      }

      v30 = *(v3 + 16);
      v30(v8, &v85[*(v3 + 72) * v26], v2);
      v30(v6, v8, v2);
      v31 = (*(v3 + 88))(v6, v2);
      if (v31 == v83)
      {
        v32 = *v27;
        v33 = v6;
        (*v27)(v6, v2);
        v34 = v25;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v28 + 2) + 1, 1, v28);
        }

        v36 = *(v28 + 2);
        v35 = *(v28 + 3);
        if (v36 >= v35 >> 1)
        {
          v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v28);
        }

        v27 = v81;
        result = v32(v8, v2);
        *(v28 + 2) = v36 + 1;
        *&v28[4 * v36 + 32] = 2;
        v25 = v34;
        v6 = v33;
        v3 = v82;
      }

      else
      {
        if (v31 == v80)
        {
          goto LABEL_22;
        }

        if (v31 == v79)
        {
          (*v27)(v6, v2);
LABEL_22:
          v37 = *(v28 + 2);
          v38 = v37;
          v39 = 32;
          while (v38)
          {
            v40 = *&v28[v39];
            v39 += 4;
            --v38;
            if (v40 == 1)
            {
              result = (*v27)(v8, v2);
              goto LABEL_11;
            }
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v37 + 1, 1, v28);
          }

          v42 = *(v28 + 2);
          v41 = *(v28 + 3);
          if (v42 >= v41 >> 1)
          {
            v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1, v28);
          }

          result = (*v27)(v8, v2);
          *(v28 + 2) = v42 + 1;
          *&v28[4 * v42 + 32] = 1;
          goto LABEL_11;
        }

        v88[3] = v2;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v88);
        v30(boxed_opaque_existential_1, v8, v2);
        v44 = v75;
        Mirror.init(reflecting:)();
        Mirror.children.getter();
        (*v74)(v44, v76);
        swift_getObjectType();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v45 = dispatch thunk of _AnyIndexBox._typeID.getter();
        swift_getObjectType();
        result = dispatch thunk of _AnyIndexBox._typeID.getter();
        if (v45 != result)
        {
          goto LABEL_53;
        }

        v46 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v46)
        {

          v2 = v73;
          v3 = v82;
          v6 = v77;
          v25 = v78;
        }

        else
        {
          dispatch thunk of _AnyCollectionBox.subscript.getter();

          v48 = v89[0];
          v47 = v89[1];
          __swift_destroy_boxed_opaque_existential_0(v90);
          v2 = v73;
          v3 = v82;
          v6 = v77;
          v25 = v78;
          if (v47)
          {
            if (one-time initialization token for mapItemRequest != -1)
            {
              swift_once();
            }

            v49 = type metadata accessor for Logger();
            __swift_project_value_buffer(v49, static Logger.mapItemRequest);

            v50 = Logger.logObject.getter();
            v51 = static os_log_type_t.info.getter();

            v52 = os_log_type_enabled(v50, v51);
            v53 = v81;
            v71 = v81 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            if (v52)
            {
              v54 = swift_slowAlloc();
              v55 = swift_slowAlloc();
              v89[0] = v55;
              *v54 = v69;
              v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v47, v89);

              *(v54 + 4) = v56;
              _os_log_impl(&dword_299AF9000, v50, v51, "Unknown place representation type: %{public}s", v54, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v55);
              v57 = v55;
              v6 = v77;
              MEMORY[0x29C2ABA10](v57, -1, -1);
              v58 = v54;
              v3 = v82;
              MEMORY[0x29C2ABA10](v58, -1, -1);
            }

            else
            {
            }

            v64 = *v53;
            v8 = v72;
            (*v53)(v72, v2);
            v27 = v53;
            result = (v64)(v6, v2);
            v25 = v78;
            goto LABEL_11;
          }
        }

        if (one-time initialization token for mapItemRequest != -1)
        {
          swift_once();
        }

        v59 = type metadata accessor for Logger();
        __swift_project_value_buffer(v59, static Logger.mapItemRequest);
        v60 = Logger.logObject.getter();
        v61 = static os_log_type_t.info.getter();
        v62 = os_log_type_enabled(v60, v61);
        v8 = v72;
        if (v62)
        {
          v63 = swift_slowAlloc();
          *v63 = 0;
          _os_log_impl(&dword_299AF9000, v60, v61, "Unknown place representation type", v63, 2u);
          MEMORY[0x29C2ABA10](v63, -1, -1);
        }

        v27 = v81;
        v29 = *v81;
        (*v81)(v8, v2);
        result = (v29)(v6, v2);
      }

LABEL_11:
      if (++v26 == v86)
      {

        v9 = v70;
        v65 = *(v28 + 2);
        if (!v65)
        {
          goto LABEL_50;
        }

LABEL_46:
        v66 = v9;
        v89[0] = MEMORY[0x29EDCA190];
        specialized ContiguousArray.reserveCapacity(_:)();
        v67 = 32;
        do
        {
          [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInt_];
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v67 += 4;
          --v65;
        }

        while (v65);

        type metadata accessor for NSNumber();
        v68 = Array._bridgeToObjectiveC()().super.isa;

        v9 = v66;
        [v66 setPreferredTypes_];

        return v9;
      }
    }
  }

  v28 = MEMORY[0x29EDCA190];
  v65 = *(MEMORY[0x29EDCA190] + 16);
  if (v65)
  {
    goto LABEL_46;
  }

LABEL_50:

  return v9;
}

id _MKMapItemRequestSwiftExtensions.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _MKMapItemRequestSwiftExtensions(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id MKMapItemRequest.init(placeDescriptor:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10GeoToolbox15PlaceDescriptorVSgMd, &_s10GeoToolbox15PlaceDescriptorVSgMR);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v4 = &v26 - v3;
  v5._object = 0x8000000299AFEB20;
  v5._countAndFlagsBits = 0xD000000000000010;
  v6 = PlaceDescriptor.serviceIdentifier(for:)(v5);
  if (v6.value._object && (v7 = objc_allocWithZone(MEMORY[0x29EDBB288]), v8 = MEMORY[0x29C2AB4E0](v6.value._countAndFlagsBits, v6.value._object), , v9 = [v7 initWithIdentifierString_], v8, v9))
  {
    v26 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v10 = type metadata accessor for PlaceDescriptor();
    v11 = *(v10 - 8);
    (*(v11 + 16))(v4, a1, v10);
    v12 = *(v11 + 56);
    v12(v4, 0, 1, v10);
    v13 = type metadata accessor for _MKMapItemRequestSwiftExtensions(0);
    v14 = objc_allocWithZone(v13);
    v15 = OBJC_IVAR____TtC6MapKit32_MKMapItemRequestSwiftExtensions_placeDescriptor;
    v12(&v14[OBJC_IVAR____TtC6MapKit32_MKMapItemRequestSwiftExtensions_placeDescriptor], 1, 1, v10);
    swift_beginAccess();
    outlined assign with copy of PlaceDescriptor?(v4, &v14[v15]);
    swift_endAccess();
    v27.receiver = v14;
    v27.super_class = v13;
    v16 = objc_msgSendSuper2(&v27, sel_init);
    outlined destroy of PlaceDescriptor?(v4);
    v17 = [v26 initWithInternalSwiftExtensions:v16 mapItemIdentifier:v9];
  }

  else
  {
    v18 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v10 = type metadata accessor for PlaceDescriptor();
    v19 = *(v10 - 8);
    (*(v19 + 16))(v4, a1, v10);
    v20 = *(v19 + 56);
    v20(v4, 0, 1, v10);
    v21 = type metadata accessor for _MKMapItemRequestSwiftExtensions(0);
    v22 = objc_allocWithZone(v21);
    v23 = OBJC_IVAR____TtC6MapKit32_MKMapItemRequestSwiftExtensions_placeDescriptor;
    v20(&v22[OBJC_IVAR____TtC6MapKit32_MKMapItemRequestSwiftExtensions_placeDescriptor], 1, 1, v10);
    swift_beginAccess();
    outlined assign with copy of PlaceDescriptor?(v4, &v22[v23]);
    swift_endAccess();
    v28.receiver = v22;
    v28.super_class = v21;
    v9 = objc_msgSendSuper2(&v28, sel_init);
    outlined destroy of PlaceDescriptor?(v4);
    v16 = PlaceDescriptor.descriptorResolutionParameters.getter();
    v17 = [v18 initWithInternalSwiftExtensions:v9 descriptorResolutionParameters:v16];
  }

  v24 = v17;

  type metadata accessor for PlaceDescriptor();
  (*(*(v10 - 8) + 8))(a1, v10);
  return v24;
}

uint64_t type metadata accessor for _MKMapItemRequestSwiftExtensions(uint64_t a1)
{
  result = type metadata singleton initialization cache for _MKMapItemRequestSwiftExtensions;
  if (!type metadata singleton initialization cache for _MKMapItemRequestSwiftExtensions)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined assign with copy of PlaceDescriptor?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10GeoToolbox15PlaceDescriptorVSgMd, &_s10GeoToolbox15PlaceDescriptorVSgMR);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of PlaceDescriptor?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10GeoToolbox15PlaceDescriptorVSgMd, &_s10GeoToolbox15PlaceDescriptorVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MKMapItemRequest.placeDescriptor.getter@<X0>(uint64_t a1@<X8>)
{
  if ([v1 internalSwiftExtensions])
  {
    type metadata accessor for _MKMapItemRequestSwiftExtensions(0);
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = OBJC_IVAR____TtC6MapKit32_MKMapItemRequestSwiftExtensions_placeDescriptor;
      v5 = v3;
      swift_beginAccess();
      outlined init with copy of PlaceDescriptor?(v5 + v4, a1);
      return swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  v7 = type metadata accessor for PlaceDescriptor();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, 1, 1, v7);
}

uint64_t outlined init with copy of PlaceDescriptor?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10GeoToolbox15PlaceDescriptorVSgMd, &_s10GeoToolbox15PlaceDescriptorVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata completion function for _MKMapItemRequestSwiftExtensions(uint64_t a1)
{
  type metadata accessor for PlaceDescriptor?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for PlaceDescriptor?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for PlaceDescriptor?)
  {
    type metadata accessor for PlaceDescriptor();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for PlaceDescriptor?);
    }
  }
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x29EDC9D78];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *_StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  return v3;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x29EDCA190];
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return MEMORY[0x29EDCA190];
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x29EDCA190];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

Swift::String_optional __swiftcall PlaceDescriptor.serviceIdentifier(for:)(Swift::String a1)
{
  v1 = MEMORY[0x2A1C5B4B0](a1._countAndFlagsBits, a1._object);
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}