void _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCs10ArraySliceVyAEG_Tt0g5(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss10ArraySliceVys5UInt8VGMd, &_ss10ArraySliceVys5UInt8VGMR);
  v16[3] = v8;
  v16[4] = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type ArraySlice<UInt8> and conformance <A> ArraySlice<A>, &_ss10ArraySliceVys5UInt8VGMd, &_ss10ArraySliceVys5UInt8VGMR, MEMORY[0x1E696A0A0]);
  v9 = swift_allocObject();
  v16[0] = v9;
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  v10 = __swift_project_boxed_opaque_existential_1(v16, v8);
  v11 = v10[2];
  v12 = v10[3] >> 1;
  v13 = __OFSUB__(v12, v11);
  v14 = v12 - v11;
  if (v13)
  {
    __break(1u);

    __break(1u);
  }

  else
  {
    closure #1 in Data.init<A>(_:)((v10[1] + v11), (v10[1] + v11 + v14), &v15);
    __swift_destroy_boxed_opaque_existential_0(v16);
  }
}

double CGFloat.init(from:)(uint64_t a1)
{
  dispatch thunk of CRDecoder.valueContainer()();
  if (!v1)
  {
    dispatch thunk of CRDecoder.CRValueContainer.decode(_:)();
    v2 = v4;
  }

  return v2;
}

uint64_t PKDrawingUUIDKeyPath.aes128Key.getter()
{
  v0 = type metadata accessor for Insecure.MD5();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Insecure.MD5Digest();
  v15 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = CRKeyPath.rawValue.getter();
  v9 = v8;
  _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type Insecure.MD5 and conformance Insecure.MD5, 255, MEMORY[0x1E6966688], MEMORY[0x1E6966680]);
  dispatch thunk of HashFunction.init()();
  outlined copy of Data._Representation(v7, v9);
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v7, v9, v3);
  outlined consume of Data._Representation(v7, v9);
  dispatch thunk of HashFunction.finalize()();
  outlined consume of Data._Representation(v7, v9);
  (*(v1 + 8))(v3, v0);
  v18 = v4;
  v19 = _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type Insecure.MD5Digest and conformance Insecure.MD5Digest, 255, MEMORY[0x1E69666B0], MEMORY[0x1E69666A0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
  v11 = v15;
  (*(v15 + 16))(boxed_opaque_existential_1, v6, v4);
  __swift_project_boxed_opaque_existential_1(v17, v18);
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  (*(v11 + 8))(v6, v4);
  v12 = v16;
  __swift_destroy_boxed_opaque_existential_0(v17);
  return v12;
}

uint64_t PKDrawingUUIDKeyPath.isEqual(_:)(uint64_t a1)
{
  v31 = a1;
  v2 = type metadata accessor for CRKeyPath();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v29 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRKeyPathVSg_ADtMd, &_s9Coherence9CRKeyPathVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRKeyPathVSgMd, &_s9Coherence9CRKeyPathVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v30 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - v11;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v29 - v15;
  v17 = *(v3 + 16);
  v17(&v29 - v15, v1 + OBJC_IVAR____TtC8PaperKit20PKDrawingUUIDKeyPath_keypath, v2, v14);
  v18 = *(v3 + 56);
  v18(v16, 0, 1, v2);
  outlined init with copy of Date?(v31, v33, &_sypSgMd, &_sypSgMR);
  if (v34)
  {
    type metadata accessor for PKDrawingUUIDKeyPath(0);
    if (swift_dynamicCast())
    {
      v31 = v5;
      v19 = v32;
      (v17)(v12, &v32[OBJC_IVAR____TtC8PaperKit20PKDrawingUUIDKeyPath_keypath], v2);

      v5 = v31;
      v20 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v33, &_sypSgMd, &_sypSgMR);
  }

  v20 = 1;
LABEL_6:
  v18(v12, v20, 1, v2);
  v21 = *(v5 + 48);
  outlined init with copy of Date?(v16, v7, &_s9Coherence9CRKeyPathVSgMd, &_s9Coherence9CRKeyPathVSgMR);
  outlined init with copy of Date?(v12, &v7[v21], &_s9Coherence9CRKeyPathVSgMd, &_s9Coherence9CRKeyPathVSgMR);
  v22 = *(v3 + 48);
  if (v22(v7, 1, v2) != 1)
  {
    v24 = v30;
    outlined init with copy of Date?(v7, v30, &_s9Coherence9CRKeyPathVSgMd, &_s9Coherence9CRKeyPathVSgMR);
    if (v22(&v7[v21], 1, v2) != 1)
    {
      v25 = v29;
      (*(v3 + 32))(v29, &v7[v21], v2);
      _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type CRKeyPath and conformance CRKeyPath, 255, MEMORY[0x1E69954B8], MEMORY[0x1E69954D0]);
      v26 = v24;
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v27 = *(v3 + 8);
      v27(v25, v2);
      outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_s9Coherence9CRKeyPathVSgMd, &_s9Coherence9CRKeyPathVSgMR);
      outlined destroy of StocksKitCurrencyCache.Provider?(v16, &_s9Coherence9CRKeyPathVSgMd, &_s9Coherence9CRKeyPathVSgMR);
      v27(v26, v2);
      outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s9Coherence9CRKeyPathVSgMd, &_s9Coherence9CRKeyPathVSgMR);
      return v23 & 1;
    }

    outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_s9Coherence9CRKeyPathVSgMd, &_s9Coherence9CRKeyPathVSgMR);
    outlined destroy of StocksKitCurrencyCache.Provider?(v16, &_s9Coherence9CRKeyPathVSgMd, &_s9Coherence9CRKeyPathVSgMR);
    (*(v3 + 8))(v24, v2);
    goto LABEL_11;
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_s9Coherence9CRKeyPathVSgMd, &_s9Coherence9CRKeyPathVSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v16, &_s9Coherence9CRKeyPathVSgMd, &_s9Coherence9CRKeyPathVSgMR);
  if (v22(&v7[v21], 1, v2) != 1)
  {
LABEL_11:
    outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s9Coherence9CRKeyPathVSg_ADtMd, &_s9Coherence9CRKeyPathVSg_ADtMR);
    v23 = 0;
    return v23 & 1;
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s9Coherence9CRKeyPathVSgMd, &_s9Coherence9CRKeyPathVSgMR);
  v23 = 1;
  return v23 & 1;
}

id PKDrawingUUIDKeyPath.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PKDrawingUUIDKeyPath(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t PKStrokeMaskStruct.__allocating_init(rawValue:)(uint64_t a1, unint64_t a2)
{
  v4 = swift_allocObject();
  v5 = objc_allocWithZone(MEMORY[0x1E69784E0]);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v7 = [v5 initWithRawValue_];

  outlined consume of Data._Representation(a1, a2);
  if (v7)
  {
    type metadata accessor for PKStrokeMaskWrapper();
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v4 + 16) = v8;
  }

  else
  {
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v4;
}

uint64_t *PKStrokeMaskStruct.init(rawValue:)(uint64_t a1, unint64_t a2)
{
  v5 = objc_allocWithZone(MEMORY[0x1E69784E0]);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v7 = [v5 initWithRawValue_];

  outlined consume of Data._Representation(a1, a2);
  if (v7)
  {
    type metadata accessor for PKStrokeMaskWrapper();
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v2 + 16) = v8;
  }

  else
  {
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v2;
}

uint64_t PKStrokeMaskStruct.rawValue.getter()
{
  v1 = [*(*(v0 + 16) + 16) rawValue];
  v2 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t PKStrokeMaskStruct.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  v2 = [*(*(v1 + 16) + 16) rawValue];
  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  __swift_mutable_project_boxed_opaque_existential_1(v7, v7[3]);
  lazy protocol witness table accessor for type Data and conformance Data();
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  outlined consume of Data._Representation(v3, v5);
  return __swift_destroy_boxed_opaque_existential_0(v7);
}

uint64_t PKStrokeMaskStruct.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance PKStrokeMaskStruct@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = swift_allocObject();
  v6 = objc_allocWithZone(MEMORY[0x1E69784E0]);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v8 = [v6 initWithRawValue_];

  outlined consume of Data._Representation(v3, v4);
  if (v8)
  {
    type metadata accessor for PKStrokeMaskWrapper();
    result = swift_allocObject();
    *(result + 16) = v8;
    *(v5 + 16) = result;
  }

  else
  {
    result = swift_deallocPartialClassInstance();
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance PKStrokeMaskStruct(uint64_t *a1@<X8>)
{
  v3 = [*(*(*v1 + 16) + 16) rawValue];
  v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

void *protocol witness for CRCodable.init(from:) in conformance PKStrokeMaskStruct(uint64_t a1, uint64_t a2)
{
  _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type PKStrokeMaskStruct and conformance PKStrokeMaskStruct, a2, type metadata accessor for PKStrokeMaskStruct, &protocol conformance descriptor for PKStrokeMaskStruct);
  _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type PKStrokeMaskStruct and conformance PKStrokeMaskStruct, v3, type metadata accessor for PKStrokeMaskStruct, &protocol conformance descriptor for PKStrokeMaskStruct);
  return CRValue<>.init(from:)();
}

uint64_t protocol witness for CRCodable.encode(to:) in conformance PKStrokeMaskStruct(uint64_t a1, uint64_t a2)
{
  _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type PKStrokeMaskStruct and conformance PKStrokeMaskStruct, a2, type metadata accessor for PKStrokeMaskStruct, &protocol conformance descriptor for PKStrokeMaskStruct);
  _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type PKStrokeMaskStruct and conformance PKStrokeMaskStruct, v2, type metadata accessor for PKStrokeMaskStruct, &protocol conformance descriptor for PKStrokeMaskStruct);
  return CRValue<>.encode(to:)();
}

uint64_t protocol witness for CRCodable.minEncodingVersion.getter in conformance PKStrokeMaskStruct(uint64_t a1, uint64_t a2)
{
  v3 = _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type PKStrokeMaskStruct and conformance PKStrokeMaskStruct, a2, type metadata accessor for PKStrokeMaskStruct, &protocol conformance descriptor for PKStrokeMaskStruct);
  v5 = _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type PKStrokeMaskStruct and conformance PKStrokeMaskStruct, v4, type metadata accessor for PKStrokeMaskStruct, &protocol conformance descriptor for PKStrokeMaskStruct);
  v6 = MEMORY[0x1E6995000];

  return MEMORY[0x1EEDF52E0](a1, v3, v5, v6);
}

uint64_t protocol witness for CRCodable.isDefaultState.getter in conformance PKStrokeMaskStruct(uint64_t a1, uint64_t a2)
{
  v4 = _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type PKStrokeMaskStruct and conformance PKStrokeMaskStruct, a2, type metadata accessor for PKStrokeMaskStruct, &protocol conformance descriptor for PKStrokeMaskStruct);
  v5 = MEMORY[0x1E6995000];

  return MEMORY[0x1EEDF56A8](a1, a2, v4, v5);
}

void *protocol witness for Decodable.init(from:) in conformance PKStrokeMaskStruct@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = specialized PKStrokeMaskStruct.__allocating_init(from:)(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

double protocol witness for CRType.copy(renamingReferences:) in conformance PKStrokeMaskStruct@<D0>(uint64_t *a1@<X8>)
{
  *a1 = *v1;

  return result;
}

uint64_t protocol witness for CRType.observableDifference(from:with:) in conformance PKStrokeMaskStruct(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type PKStrokeMaskStruct and conformance PKStrokeMaskStruct, a2, type metadata accessor for PKStrokeMaskStruct, &protocol conformance descriptor for PKStrokeMaskStruct);
  _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type PKStrokeMaskStruct and conformance PKStrokeMaskStruct, v3, type metadata accessor for PKStrokeMaskStruct, &protocol conformance descriptor for PKStrokeMaskStruct);

  return CRValue<>.observableDifference(from:with:)();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance PKInk@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = Data._bridgeToObjectiveC()().super.isa;
  v7 = [v5 initWithRawValue_];

  result = outlined consume of Data._Representation(v3, v4);
  *a2 = v7;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance PKInk(uint64_t *a1@<X8>)
{
  v3 = [*v1 rawValue];
  v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

void *protocol witness for CRCodable.init(from:) in conformance PKInk()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return CRValue<>.init(from:)();
}

uint64_t protocol witness for CRCodable.encode(to:) in conformance PKInk(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return CRValue<>.encode(to:)();
}

uint64_t protocol witness for CRCodable.minEncodingVersion.getter in conformance PKInk(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v3 = swift_getWitnessTable();
  v4 = MEMORY[0x1E6995000];

  return MEMORY[0x1EEDF52E0](a1, WitnessTable, v3, v4);
}

uint64_t protocol witness for CRCodable.isDefaultState.getter in conformance PKInk(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E6995000];

  return MEMORY[0x1EEDF56A8](a1, a2, WitnessTable, v5);
}

uint64_t protocol witness for CRType.observableDifference(from:with:) in conformance PKInk(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PKInk();
  _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type PKInk and conformance PKInk, 255, type metadata accessor for PKInk, &protocol conformance descriptor for PKInk);
  _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type PKInk and conformance NSObject, 255, type metadata accessor for PKInk, MEMORY[0x1E69E81C0]);

  return CRValue<>.observableDifference(from:with:)();
}

double CGRect.init(rawValue:)@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  specialized CGRect.init(rawValue:)(a1, a2, v8);
  outlined consume of Data._Representation(a1, a2);
  result = *v8;
  v7 = v8[1];
  *a3 = v8[0];
  *(a3 + 16) = v7;
  *(a3 + 32) = v9;
  return result;
}

uint64_t CGRect.rawValue.getter(double a1, double a2, double a3, double a4)
{
  v8[0] = _OSSwapInt64(*&a1);
  v8[1] = _OSSwapInt64(*&a2);
  v8[2] = _OSSwapInt64(*&a3);
  v8[3] = _OSSwapInt64(*&a4);
  return _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSW_Tt0g5(v8, &v9);
}

BOOL CGRect.isDefaultState.getter(double a1, double a2, double a3, double a4)
{
  v5.origin.x = 0.0;
  v5.origin.y = 0.0;
  v5.size.width = 0.0;
  v5.size.height = 0.0;
  return CGRectEqualToRect(*&a1, v5);
}

double protocol witness for RawRepresentable.init(rawValue:) in conformance CGRect@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  specialized CGRect.init(rawValue:)(*a1, v4, v7);
  outlined consume of Data._Representation(v3, v4);
  result = *v7;
  v6 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v6;
  *(a2 + 32) = v8;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance CGRect@<X0>(uint64_t *a1@<X8>)
{
  result = CGRect.rawValue.getter(*v1, v1[1], v1[2], v1[3]);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t protocol witness for CRType.observableDifference(from:with:) in conformance CGRect(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, 255, type metadata accessor for CGRect, &protocol conformance descriptor for CGRect);
  _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, 255, type metadata accessor for CGRect, MEMORY[0x1E695EF78]);

  return CRValue<>.observableDifference(from:with:)();
}

void *protocol witness for CRCodable.init(from:) in conformance CGRect()
{
  _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, 255, type metadata accessor for CGRect, &protocol conformance descriptor for CGRect);
  _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, 255, type metadata accessor for CGRect, &protocol conformance descriptor for CGRect);
  return CRValue<>.init(from:)();
}

uint64_t protocol witness for CRCodable.encode(to:) in conformance CGRect(uint64_t a1, uint64_t a2)
{
  _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, 255, type metadata accessor for CGRect, &protocol conformance descriptor for CGRect);
  _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, 255, type metadata accessor for CGRect, &protocol conformance descriptor for CGRect);
  return CRValue<>.encode(to:)();
}

uint64_t protocol witness for CRCodable.minEncodingVersion.getter in conformance CGRect(uint64_t a1)
{
  v2 = _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, 255, type metadata accessor for CGRect, &protocol conformance descriptor for CGRect);
  v3 = _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, 255, type metadata accessor for CGRect, &protocol conformance descriptor for CGRect);
  v4 = MEMORY[0x1E6995000];

  return MEMORY[0x1EEDF52E0](a1, v2, v3, v4);
}

double protocol witness for CRCodable.init(defaultState:) in conformance CGRect@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t protocol witness for CRType.observableDifference(from:with:) in conformance CGPoint(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type CGPoint and conformance CGPoint, 255, type metadata accessor for CGPoint, &protocol conformance descriptor for CGPoint);
  _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type CGPoint and conformance CGPoint, 255, type metadata accessor for CGPoint, MEMORY[0x1E695EFB8]);

  return CRValue<>.observableDifference(from:with:)();
}

void *protocol witness for CRCodable.init(from:) in conformance CGPoint()
{
  _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type CGPoint and conformance CGPoint, 255, type metadata accessor for CGPoint, &protocol conformance descriptor for CGPoint);
  _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type CGPoint and conformance CGPoint, 255, type metadata accessor for CGPoint, &protocol conformance descriptor for CGPoint);
  return CRValue<>.init(from:)();
}

uint64_t protocol witness for CRCodable.encode(to:) in conformance CGPoint(uint64_t a1, uint64_t a2)
{
  _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type CGPoint and conformance CGPoint, 255, type metadata accessor for CGPoint, &protocol conformance descriptor for CGPoint);
  _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type CGPoint and conformance CGPoint, 255, type metadata accessor for CGPoint, &protocol conformance descriptor for CGPoint);
  return CRValue<>.encode(to:)();
}

uint64_t protocol witness for CRCodable.minEncodingVersion.getter in conformance CGPoint(uint64_t a1)
{
  v2 = _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type CGPoint and conformance CGPoint, 255, type metadata accessor for CGPoint, &protocol conformance descriptor for CGPoint);
  v3 = _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type CGPoint and conformance CGPoint, 255, type metadata accessor for CGPoint, &protocol conformance descriptor for CGPoint);
  v4 = MEMORY[0x1E6995000];

  return MEMORY[0x1EEDF52E0](a1, v2, v3, v4);
}

uint64_t CGPoint.init(rawValue:)(uint64_t a1, unint64_t a2)
{
  v4 = specialized CGPoint.init(rawValue:)(a1, a2);
  outlined consume of Data._Representation(a1, a2);
  return v4;
}

uint64_t CGPoint.rawValue.getter(double a1, double a2)
{
  v4[0] = _OSSwapInt64(*&a1);
  v4[1] = _OSSwapInt64(*&a2);
  return _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSW_Tt0g5(v4, &v5);
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CGPoint@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = specialized CGPoint.init(rawValue:)(*a1, v4);
  v7 = v6;
  v9 = v8;
  result = outlined consume of Data._Representation(v3, v4);
  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v9 & 1;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance CGPoint@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[1];
  v6[0] = CFConvertDoubleHostToSwapped(*v1);
  v6[1] = CFConvertDoubleHostToSwapped(v3);
  result = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSW_Tt0g5(v6, &v7);
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t protocol witness for CRType.observableDifference(from:with:) in conformance CGSize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type CGSize and conformance CGSize, 255, type metadata accessor for CGSize, &protocol conformance descriptor for CGSize);
  _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type CGSize and conformance CGSize, 255, type metadata accessor for CGSize, MEMORY[0x1E695EF98]);

  return CRValue<>.observableDifference(from:with:)();
}

void *protocol witness for CRCodable.init(from:) in conformance CGSize()
{
  _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type CGSize and conformance CGSize, 255, type metadata accessor for CGSize, &protocol conformance descriptor for CGSize);
  _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type CGSize and conformance CGSize, 255, type metadata accessor for CGSize, &protocol conformance descriptor for CGSize);
  return CRValue<>.init(from:)();
}

uint64_t protocol witness for CRCodable.encode(to:) in conformance CGSize(uint64_t a1, uint64_t a2)
{
  _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type CGSize and conformance CGSize, 255, type metadata accessor for CGSize, &protocol conformance descriptor for CGSize);
  _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type CGSize and conformance CGSize, 255, type metadata accessor for CGSize, &protocol conformance descriptor for CGSize);
  return CRValue<>.encode(to:)();
}

uint64_t protocol witness for CRCodable.minEncodingVersion.getter in conformance CGSize(uint64_t a1)
{
  v2 = _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type CGSize and conformance CGSize, 255, type metadata accessor for CGSize, &protocol conformance descriptor for CGSize);
  v3 = _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type CGSize and conformance CGSize, 255, type metadata accessor for CGSize, &protocol conformance descriptor for CGSize);
  v4 = MEMORY[0x1E6995000];

  return MEMORY[0x1EEDF52E0](a1, v2, v3, v4);
}

uint64_t protocol witness for CRType.observableDifference(from:with:) in conformance CGFloat(uint64_t a1, uint64_t a2, uint64_t a3)
{
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();

  return CRValue<>.observableDifference(from:with:)();
}

void protocol witness for CRCodable.init(from:) in conformance CGFloat(void *a2@<X8>)
{
  dispatch thunk of CRDecoder.valueContainer()();
  if (v2)
  {
  }

  else
  {
    dispatch thunk of CRDecoder.CRValueContainer.decode(_:)();
    v5 = v4;

    *a2 = v5;
  }
}

unint64_t CGImagePropertyOrientation.init(from:)()
{
  result = Int.init(from:)();
  if (!v0)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(result))
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t protocol witness for CRType.observableDifference(from:with:) in conformance CGImagePropertyOrientation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type CGImagePropertyOrientation and conformance CGImagePropertyOrientation, 255, type metadata accessor for CGImagePropertyOrientation, &protocol conformance descriptor for CGImagePropertyOrientation);
  _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type CGImagePropertyOrientation and conformance CGImagePropertyOrientation, 255, type metadata accessor for CGImagePropertyOrientation, &protocol conformance descriptor for CGImagePropertyOrientation);

  return CRValue<>.observableDifference(from:with:)();
}

unint64_t protocol witness for CRCodable.init(from:) in conformance CGImagePropertyOrientation@<X0>(_DWORD *a1@<X8>)
{
  result = Int.init(from:)();
  if (!v1)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(result))
    {
      *a1 = result;
      return result;
    }

    __break(1u);
  }

  return result;
}

double CGAffineTransform.init(rawValue:)@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  specialized CGAffineTransform.init(rawValue:)(a1, a2, v8);
  outlined consume of Data._Representation(a1, a2);
  v6 = v8[1];
  *a3 = v8[0];
  *(a3 + 16) = v6;
  result = *&v9;
  *(a3 + 32) = v9;
  *(a3 + 48) = v10;
  return result;
}

uint64_t CGAffineTransform.rawValue.getter()
{
  v2[0] = _OSSwapInt64(*v0);
  v2[1] = _OSSwapInt64(v0[1]);
  v2[2] = _OSSwapInt64(v0[2]);
  v2[3] = _OSSwapInt64(v0[3]);
  v2[4] = _OSSwapInt64(v0[4]);
  v2[5] = _OSSwapInt64(v0[5]);
  return _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSW_Tt0g5(v2, &v3);
}

void CGAffineTransform.init(defaultState:)(void *a1@<X8>)
{
  *a1 = 0x3FF0000000000000;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0x3FF0000000000000;
  a1[4] = 0;
  a1[5] = 0;
}

double protocol witness for RawRepresentable.init(rawValue:) in conformance CGAffineTransform@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  specialized CGAffineTransform.init(rawValue:)(*a1, v4, v7);
  outlined consume of Data._Representation(v3, v4);
  v5 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v5;
  result = *&v8;
  *(a2 + 32) = v8;
  *(a2 + 48) = v9;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance CGAffineTransform@<X0>(uint64_t *a1@<X8>)
{
  result = CGAffineTransform.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

__n128 protocol witness for CRType.copy(renamingReferences:) in conformance CGAffineTransform@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  result = *(v1 + 32);
  *(a1 + 32) = result;
  return result;
}

uint64_t protocol witness for CRType.observableDifference(from:with:) in conformance CGAffineTransform(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type CGAffineTransform and conformance CGAffineTransform, 255, type metadata accessor for CGAffineTransform, &protocol conformance descriptor for CGAffineTransform);
  _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type CGAffineTransform and conformance CGAffineTransform, 255, type metadata accessor for CGAffineTransform, MEMORY[0x1E695EF58]);

  return CRValue<>.observableDifference(from:with:)();
}

void *protocol witness for CRCodable.init(from:) in conformance CGAffineTransform()
{
  _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type CGAffineTransform and conformance CGAffineTransform, 255, type metadata accessor for CGAffineTransform, &protocol conformance descriptor for CGAffineTransform);
  _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type CGAffineTransform and conformance CGAffineTransform, 255, type metadata accessor for CGAffineTransform, &protocol conformance descriptor for CGAffineTransform);
  return CRValue<>.init(from:)();
}

uint64_t protocol witness for CRCodable.encode(to:) in conformance CGAffineTransform(uint64_t a1, uint64_t a2)
{
  _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type CGAffineTransform and conformance CGAffineTransform, 255, type metadata accessor for CGAffineTransform, &protocol conformance descriptor for CGAffineTransform);
  _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type CGAffineTransform and conformance CGAffineTransform, 255, type metadata accessor for CGAffineTransform, &protocol conformance descriptor for CGAffineTransform);
  return CRValue<>.encode(to:)();
}

uint64_t protocol witness for CRCodable.minEncodingVersion.getter in conformance CGAffineTransform(uint64_t a1)
{
  v2 = _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type CGAffineTransform and conformance CGAffineTransform, 255, type metadata accessor for CGAffineTransform, &protocol conformance descriptor for CGAffineTransform);
  v3 = _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type CGAffineTransform and conformance CGAffineTransform, 255, type metadata accessor for CGAffineTransform, &protocol conformance descriptor for CGAffineTransform);
  v4 = MEMORY[0x1E6995000];

  return MEMORY[0x1EEDF52E0](a1, v2, v3, v4);
}

void protocol witness for CRCodable.init(defaultState:) in conformance CGAffineTransform(void *a1@<X8>)
{
  *a1 = 0x3FF0000000000000;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0x3FF0000000000000;
  a1[4] = 0;
  a1[5] = 0;
}

PaperKit::PKStrokeClipPlane __swiftcall PKStrokeClipPlane.init(origin:normal:)(CGPoint origin, CGPoint normal)
{
  *v2 = origin.x;
  v2[1] = origin.y;
  v2[2] = normal.x;
  v2[3] = normal.y;
  result.normal.y = normal.y;
  result.normal.x = normal.x;
  result.origin.y = origin.y;
  result.origin.x = origin.x;
  return result;
}

uint64_t PKStrokeClipPlane.init(rawValue:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_19;
    }

    v9 = *(a1 + 16);
    v8 = *(a1 + 24);
    v10 = __OFSUB__(v8, v9);
    v11 = v8 - v9;
    if (v10)
    {
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    if (v11 != 32)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (!v7)
    {
      if (BYTE6(a2) != 32)
      {
        goto LABEL_19;
      }

      goto LABEL_8;
    }

    if (__OFSUB__(HIDWORD(a1), a1))
    {
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    if (HIDWORD(a1) - a1 != 32)
    {
LABEL_19:
      result = outlined consume of Data._Representation(a1, a2);
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *(a3 + 32) = 1;
      return result;
    }
  }

LABEL_8:
  if (v7 != 2)
  {
    if (v7 != 1)
    {
      __src = a1;
      v13 = a1;
      v44 = a2;
      v45 = BYTE2(a2);
      v46 = BYTE3(a2);
      v47 = BYTE4(a2);
      v31 = (a2 >> 51) & 0x1F;
      v48 = BYTE5(a2);
      if (!v31)
      {
        goto LABEL_41;
      }

      v27 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5Tm((a2 >> 51) & 0x1F, 0, &_ss23_ContiguousArrayStorageCys6UInt64VGMd, &_ss23_ContiguousArrayStorageCys6UInt64VGMR);
      v29 = 8 * v31;
      v28 = v27 + 4;
      p_src = &__src;
      goto LABEL_34;
    }

    v12 = a1;
    v3 = (a1 >> 32) - a1;
    if (a1 >> 32 >= a1)
    {
      v13 = a1;
      v14 = __DataStorage._bytes.getter();
      if (!v14)
      {
        goto LABEL_40;
      }

      v15 = v14;
      v16 = __DataStorage._offset.getter();
      if (!__OFSUB__(v12, v16))
      {
        v17 = (v12 - v16 + v15);
        v18 = MEMORY[0x1DA6C8120]();
        if (!v17)
        {
          goto LABEL_41;
        }

        if (v18 >= v3)
        {
          v19 = v3;
        }

        else
        {
          v19 = v18;
        }

        goto LABEL_27;
      }

LABEL_58:
      __break(1u);
    }

    goto LABEL_56;
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v13 = a1;
  v21 = __DataStorage._bytes.getter();
  if (!v21)
  {
    goto LABEL_37;
  }

  v22 = v21;
  v23 = __DataStorage._offset.getter();
  if (__OFSUB__(v3, v23))
  {
    goto LABEL_57;
  }

  v17 = (v3 - v23 + v22);
  v24 = v4 - v3;
  if (__OFSUB__(v4, v3))
  {
    goto LABEL_39;
  }

LABEL_23:
  v25 = MEMORY[0x1DA6C8120]();
  if (!v17)
  {
    goto LABEL_41;
  }

  v19 = v25 >= v24 ? v24 : v25;
LABEL_27:
  if ((v19 + 7) >= 0xF)
  {
    if (v19 >= 0)
    {
      v26 = v19;
    }

    else
    {
      v26 = v19 + 7;
    }

    v27 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5Tm(v26 >> 3, 0, &_ss23_ContiguousArrayStorageCys6UInt64VGMd, &_ss23_ContiguousArrayStorageCys6UInt64VGMR);
    v28 = v27 + 4;
    v29 = v26 & 0xFFFFFFFFFFFFFFF8;
    p_src = v17;
LABEL_34:
    memcpy(v28, p_src, v29);
    v32 = v27[2];
    if (v32)
    {
      goto LABEL_42;
    }
  }

  else
  {
LABEL_41:
    while (1)
    {
      v27 = MEMORY[0x1E69E7CC0];
      v32 = *(MEMORY[0x1E69E7CC0] + 16);
      if (!v32)
      {
        break;
      }

LABEL_42:
      __src = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v32, 0);
      v4 = 32;
      v33 = __src;
      do
      {
        v35 = _OSSwapInt64(*(v27 + v4));
        __src = v33;
        v37 = v33[2];
        v36 = v33[3];
        v3 = v37 + 1;
        if (v37 >= v36 >> 1)
        {
          v38 = v35;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1);
          v35 = v38;
          v33 = __src;
        }

        v33[2] = v3;
        v33[v37 + 4] = v35;
        v4 += 8;
        --v32;
      }

      while (v32);

      v34 = v33[2];
      if (v34)
      {
        goto LABEL_47;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      v17 = 0;
      v24 = v4 - v3;
      if (!__OFSUB__(v4, v3))
      {
        goto LABEL_23;
      }

LABEL_39:
      __break(1u);
LABEL_40:
      MEMORY[0x1DA6C8120]();
    }
  }

  v33 = MEMORY[0x1E69E7CC0];
  v34 = *(MEMORY[0x1E69E7CC0] + 16);
  if (!v34)
  {
    goto LABEL_36;
  }

LABEL_47:
  if (v34 == 1)
  {
    __break(1u);
    goto LABEL_52;
  }

  if (v34 < 3)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (v34 == 3)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v39 = v33[4];
  v40 = v33[5];
  v41 = v33[6];
  v42 = v33[7];

  result = outlined consume of Data._Representation(v13, a2);
  *a3 = v39;
  *(a3 + 8) = v40;
  *(a3 + 16) = v41;
  *(a3 + 24) = v42;
  *(a3 + 32) = 0;
  return result;
}

uint64_t PKStrokeClipPlane.rawValue.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[1];
  v5[0] = _OSSwapInt64(*v0);
  v5[1] = _OSSwapInt64(v3);
  v5[2] = _OSSwapInt64(v1);
  v5[3] = _OSSwapInt64(v2);
  return _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSW_Tt0g5(v5, &v6);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance PKStrokeClipPlane.CodingKeys()
{
  if (*v0)
  {
    return 0x6C616D726F6ELL;
  }

  else
  {
    return 0x6E696769726FLL;
  }
}

void protocol witness for CodingKey.init(stringValue:) in conformance PKStrokeClipPlane.CodingKeys(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E696769726FLL && a2 == 0xE600000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6C616D726F6ELL && a2 == 0xE600000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PKStrokeClipPlane.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PKStrokeClipPlane.CodingKeys and conformance PKStrokeClipPlane.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PKStrokeClipPlane.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PKStrokeClipPlane.CodingKeys and conformance PKStrokeClipPlane.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PKStrokeClipPlane.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8PaperKit17PKStrokeClipPlaneV10CodingKeys33_5B7CCBFC2727C29A123ED8C688AC82C7LLOGMd, &_ss22KeyedEncodingContainerVy8PaperKit17PKStrokeClipPlaneV10CodingKeys33_5B7CCBFC2727C29A123ED8C688AC82C7LLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v11 = v1[3];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PKStrokeClipPlane.CodingKeys and conformance PKStrokeClipPlane.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = v8;
  v16 = v9;
  v14 = 0;
  type metadata accessor for CGPoint(0);
  _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type CGPoint and conformance CGPoint, 255, type metadata accessor for CGPoint, MEMORY[0x1E695EFA8]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v15 = v10;
    v16 = v11;
    v14 = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t PKStrokeClipPlane.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8PaperKit17PKStrokeClipPlaneV10CodingKeys33_5B7CCBFC2727C29A123ED8C688AC82C7LLOGMd, &_ss22KeyedDecodingContainerVy8PaperKit17PKStrokeClipPlaneV10CodingKeys33_5B7CCBFC2727C29A123ED8C688AC82C7LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PKStrokeClipPlane.CodingKeys and conformance PKStrokeClipPlane.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    type metadata accessor for CGPoint(0);
    v13 = 0;
    _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type CGPoint and conformance CGPoint, 255, type metadata accessor for CGPoint, MEMORY[0x1E695EFC0]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9 = v12;
    v13 = 1;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    v10 = v12;
    *a2 = v9;
    a2[1] = v10;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PKStrokeClipPlane@<X0>(uint64_t *a1@<X8>)
{
  result = PKStrokeClipPlane.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PKStrokeClipPlane()
{
  Hasher.init(_seed:)();
  v0 = PKStrokeClipPlane.rawValue.getter();
  v2 = v1;
  Data.hash(into:)();
  outlined consume of Data._Representation(v0, v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PKStrokeClipPlane(uint64_t a1)
{
  v1 = PKStrokeClipPlane.rawValue.getter();
  v3 = v2;
  Data.hash(into:)();

  return outlined consume of Data._Representation(v1, v3);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PKStrokeClipPlane(uint64_t a1)
{
  Hasher.init(_seed:)();
  v1 = PKStrokeClipPlane.rawValue.getter();
  v3 = v2;
  Data.hash(into:)();
  outlined consume of Data._Representation(v1, v3);
  return Hasher._finalize()();
}

uint64_t protocol witness for CRType.observableDifference(from:with:) in conformance PKStrokeClipPlane(uint64_t a1, uint64_t a2, uint64_t a3)
{
  lazy protocol witness table accessor for type PKStrokeClipPlane and conformance PKStrokeClipPlane();
  lazy protocol witness table accessor for type PKStrokeClipPlane and conformance PKStrokeClipPlane();

  return CRValue<>.observableDifference(from:with:)();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance PKStrokeClipPlane()
{
  v0 = PKStrokeClipPlane.rawValue.getter();
  v2 = v1;
  v3 = PKStrokeClipPlane.rawValue.getter();
  v5 = v4;
  v6 = specialized static Data.== infix(_:_:)(v0, v2, v3, v4);
  outlined consume of Data._Representation(v3, v5);
  outlined consume of Data._Representation(v0, v2);
  return v6;
}

void *protocol witness for CRCodable.init(from:) in conformance PKStrokeClipPlane()
{
  lazy protocol witness table accessor for type PKStrokeClipPlane and conformance PKStrokeClipPlane();
  lazy protocol witness table accessor for type PKStrokeClipPlane and conformance PKStrokeClipPlane();
  return CRValue<>.init(from:)();
}

uint64_t protocol witness for CRCodable.encode(to:) in conformance PKStrokeClipPlane(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PKStrokeClipPlane and conformance PKStrokeClipPlane();
  lazy protocol witness table accessor for type PKStrokeClipPlane and conformance PKStrokeClipPlane();
  return CRValue<>.encode(to:)();
}

uint64_t protocol witness for CRCodable.minEncodingVersion.getter in conformance PKStrokeClipPlane(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PKStrokeClipPlane and conformance PKStrokeClipPlane();
  v3 = lazy protocol witness table accessor for type PKStrokeClipPlane and conformance PKStrokeClipPlane();
  v4 = MEMORY[0x1E6995000];

  return MEMORY[0x1EEDF52E0](a1, v2, v3, v4);
}

uint64_t protocol witness for CRCodable.isDefaultState.getter in conformance PKStrokeClipPlane(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type PKStrokeClipPlane and conformance PKStrokeClipPlane();
  v5 = MEMORY[0x1E6995000];

  return MEMORY[0x1EEDF56A8](a1, a2, v4, v5);
}

uint64_t Quad.init(rawValue:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v53 = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_19;
    }

    v9 = *(a1 + 16);
    v8 = *(a1 + 24);
    v10 = __OFSUB__(v8, v9);
    v11 = v8 - v9;
    if (v10)
    {
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    if (v11 != 64)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (!v7)
    {
      if (BYTE6(a2) != 64)
      {
        goto LABEL_19;
      }

      goto LABEL_8;
    }

    if (__OFSUB__(HIDWORD(a1), a1))
    {
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    if (HIDWORD(a1) - a1 != 64)
    {
LABEL_19:
      result = outlined consume of Data._Representation(a1, a2);
      LOBYTE(__src) = 1;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      *(a3 + 48) = 0u;
      *(a3 + 64) = 1;
      return result;
    }
  }

LABEL_8:
  if (v7 != 2)
  {
    if (v7 != 1)
    {
      __src = a1;
      v13 = a1;
      v48 = a2;
      v49 = BYTE2(a2);
      v50 = BYTE3(a2);
      v51 = BYTE4(a2);
      v31 = (a2 >> 51) & 0x1F;
      v52 = BYTE5(a2);
      if (!v31)
      {
        goto LABEL_41;
      }

      v27 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5Tm((a2 >> 51) & 0x1F, 0, &_ss23_ContiguousArrayStorageCys6UInt64VGMd, &_ss23_ContiguousArrayStorageCys6UInt64VGMR);
      v29 = 8 * v31;
      v28 = v27 + 4;
      p_src = &__src;
      goto LABEL_34;
    }

    v12 = a1;
    v3 = (a1 >> 32) - a1;
    if (a1 >> 32 >= a1)
    {
      v13 = a1;
      v14 = __DataStorage._bytes.getter();
      if (!v14)
      {
        goto LABEL_40;
      }

      v15 = v14;
      v16 = __DataStorage._offset.getter();
      if (!__OFSUB__(v12, v16))
      {
        v17 = (v12 - v16 + v15);
        v18 = MEMORY[0x1DA6C8120]();
        if (!v17)
        {
          goto LABEL_41;
        }

        if (v18 >= v3)
        {
          v19 = v3;
        }

        else
        {
          v19 = v18;
        }

        goto LABEL_27;
      }

LABEL_66:
      __break(1u);
    }

    goto LABEL_64;
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v13 = a1;
  v21 = __DataStorage._bytes.getter();
  if (!v21)
  {
    goto LABEL_37;
  }

  v22 = v21;
  v23 = __DataStorage._offset.getter();
  if (__OFSUB__(v3, v23))
  {
    goto LABEL_65;
  }

  v17 = (v3 - v23 + v22);
  v24 = v4 - v3;
  if (__OFSUB__(v4, v3))
  {
    goto LABEL_39;
  }

LABEL_23:
  v25 = MEMORY[0x1DA6C8120]();
  if (!v17)
  {
    goto LABEL_41;
  }

  v19 = v25 >= v24 ? v24 : v25;
LABEL_27:
  if ((v19 + 7) >= 0xF)
  {
    if (v19 >= 0)
    {
      v26 = v19;
    }

    else
    {
      v26 = v19 + 7;
    }

    v27 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5Tm(v26 >> 3, 0, &_ss23_ContiguousArrayStorageCys6UInt64VGMd, &_ss23_ContiguousArrayStorageCys6UInt64VGMR);
    v28 = v27 + 4;
    v29 = v26 & 0xFFFFFFFFFFFFFFF8;
    p_src = v17;
LABEL_34:
    memcpy(v28, p_src, v29);
    v32 = v27[2];
    if (v32)
    {
      goto LABEL_42;
    }
  }

  else
  {
LABEL_41:
    while (1)
    {
      v27 = MEMORY[0x1E69E7CC0];
      v32 = *(MEMORY[0x1E69E7CC0] + 16);
      if (!v32)
      {
        break;
      }

LABEL_42:
      __src = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v32, 0);
      v4 = 32;
      v33 = __src;
      do
      {
        v35 = _OSSwapInt64(*(v27 + v4));
        __src = v33;
        v37 = v33[2];
        v36 = v33[3];
        v3 = v37 + 1;
        if (v37 >= v36 >> 1)
        {
          v38 = v35;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1);
          v35 = v38;
          v33 = __src;
        }

        v33[2] = v3;
        v33[v37 + 4] = v35;
        v4 += 8;
        --v32;
      }

      while (v32);

      v34 = v33[2];
      if (v34)
      {
        goto LABEL_47;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      v17 = 0;
      v24 = v4 - v3;
      if (!__OFSUB__(v4, v3))
      {
        goto LABEL_23;
      }

LABEL_39:
      __break(1u);
LABEL_40:
      MEMORY[0x1DA6C8120]();
    }
  }

  v33 = MEMORY[0x1E69E7CC0];
  v34 = *(MEMORY[0x1E69E7CC0] + 16);
  if (!v34)
  {
    goto LABEL_36;
  }

LABEL_47:
  if (v34 == 1)
  {
    __break(1u);
    goto LABEL_56;
  }

  if (v34 < 3)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (v34 == 3)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if (v34 < 5)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  if (v34 == 5)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (v34 < 7)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (v34 == 7)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v39 = v33[4];
  v40 = v33[5];
  v41 = v33[6];
  v42 = v33[7];
  v43 = v33[8];
  v44 = v33[9];
  v45 = v33[10];
  v46 = v33[11];

  result = outlined consume of Data._Representation(v13, a2);
  LOBYTE(__src) = 0;
  *a3 = v39;
  *(a3 + 8) = v40;
  *(a3 + 16) = v41;
  *(a3 + 24) = v42;
  *(a3 + 32) = v43;
  *(a3 + 40) = v44;
  *(a3 + 48) = v45;
  *(a3 + 56) = v46;
  *(a3 + 64) = 0;
  return result;
}

uint64_t Quad.rawValue.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[1];
  v9[0] = _OSSwapInt64(*v0);
  v9[1] = _OSSwapInt64(v7);
  v9[2] = _OSSwapInt64(v1);
  v9[3] = _OSSwapInt64(v2);
  v9[4] = _OSSwapInt64(v3);
  v9[5] = _OSSwapInt64(v4);
  v9[6] = _OSSwapInt64(v5);
  v9[7] = _OSSwapInt64(v6);
  return _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSW_Tt0g5(v9, &v10);
}

BOOL Quad.isDefaultState.getter()
{
  v0 = Quad.rawValue.getter();
  v2 = v1;
  v3 = Quad.rawValue.getter();
  v5 = v4;
  v6 = specialized static Data.== infix(_:_:)(v0, v2, v3, v4);
  outlined consume of Data._Representation(v3, v5);
  outlined consume of Data._Representation(v0, v2);
  return v6;
}

double Quad.init(defaultState:)@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance Quad@<X0>(uint64_t *a1@<X8>)
{
  result = Quad.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

__n128 protocol witness for CRType.copy(renamingReferences:) in conformance Quad@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  result = *(v1 + 32);
  v4 = *(v1 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t protocol witness for CRType.observableDifference(from:with:) in conformance Quad(uint64_t a1, uint64_t a2, uint64_t a3)
{
  lazy protocol witness table accessor for type Quad and conformance Quad();
  lazy protocol witness table accessor for type Quad and conformance Quad();

  return CRValue<>.observableDifference(from:with:)();
}

void *protocol witness for CRCodable.init(from:) in conformance Quad()
{
  lazy protocol witness table accessor for type Quad and conformance Quad();
  lazy protocol witness table accessor for type Quad and conformance Quad();
  return CRValue<>.init(from:)();
}

uint64_t protocol witness for CRCodable.encode(to:) in conformance Quad(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Quad and conformance Quad();
  lazy protocol witness table accessor for type Quad and conformance Quad();
  return CRValue<>.encode(to:)();
}

uint64_t protocol witness for CRCodable.minEncodingVersion.getter in conformance Quad(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Quad and conformance Quad();
  v3 = lazy protocol witness table accessor for type Quad and conformance Quad();
  v4 = MEMORY[0x1E6995000];

  return MEMORY[0x1EEDF52E0](a1, v2, v3, v4);
}

double protocol witness for CRCodable.init(defaultState:) in conformance Quad@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10Foundation4UUIDV_Tt1g5(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR);
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size_0(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC9Coherence13WeakTagged_10Vy8PaperKit0J13CanvasElementVG_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  if (a2 <= a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (!v6)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a5, a6) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size_0(v13);
  if (v11)
  {
    if ((result - v12) != 0x8000000000000000 || v11 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * ((result - v12) / v11);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC8PaperKit20AnyCanvasElementViewC_Tt1g5Tm(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_0(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size_0(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 25;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 3);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC8PaperKit14ReflowTextLineV_Tt1g5(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8PaperKit14ReflowTextLineVGMd, &_ss23_ContiguousArrayStorageCy8PaperKit14ReflowTextLineVGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_0(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 168);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt32V_Tt1g5(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt32VGMd, &_ss23_ContiguousArrayStorageCys6UInt32VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_0(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 29;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 2);
  return result;
}

_BYTE *closure #1 in Data.init<A>(_:)@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = specialized Data.InlineData.init(_:)(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = specialized Data.LargeSlice.init(_:)(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = specialized Data.InlineSlice.init(_:)(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t specialized Data._Representation.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      type metadata accessor for Insecure.MD5();
      _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type Insecure.MD5 and conformance Insecure.MD5, 255, MEMORY[0x1E6966688], MEMORY[0x1E6966680]);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v5, v6);
  }

  type metadata accessor for Insecure.MD5();
  _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type Insecure.MD5 and conformance Insecure.MD5, 255, MEMORY[0x1E6966688], MEMORY[0x1E6966680]);
  return dispatch thunk of HashFunction.update(bufferPointer:)();
}

{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      return Data._Representation.append(contentsOf:)();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v4, v5);
  }

  if (v3 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v4, v5);
  }

  return Data._Representation.append(contentsOf:)();
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      MEMORY[0x1DA6C8120]();
      type metadata accessor for Insecure.MD5();
      _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type Insecure.MD5 and conformance Insecure.MD5, 255, MEMORY[0x1E6966688], MEMORY[0x1E6966680]);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      MEMORY[0x1DA6C8120]();
      type metadata accessor for SHA256();
      _s10Foundation25NSFastEnumerationIteratorVACStAAWlTm_0(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      MEMORY[0x1DA6C8120]();
      return Data._Representation.append(contentsOf:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

char *specialized UnsafeBufferPointer._copyContents(initializing:)(void *a1, uint64_t a2, char *__src, uint64_t a4)
{
  v4 = __src;
  if (a4 && a2)
  {
    if (a4 >= a2)
    {
      v5 = a2;
    }

    else
    {
      v5 = a4;
    }

    memcpy(a1, __src, 4 * v5);
    v4 += 4 * v5;
  }

  return v4;
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

uint64_t specialized Data.InlineSlice.init(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t specialized Data.LargeSlice.init(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

BOOL specialized static Data.== infix(_:_:)(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          outlined copy of Data._Representation(a3, a4);
          return specialized Data.withUnsafeBytes<A>(_:)(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  v10 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], &_sSays5UInt8VGMd, &_sSays5UInt8VGMR, MEMORY[0x1E6969E08]);
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  closure #1 in Data.init<A>(_:)(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_0(v8);
  return v5;
}

void *specialized PKStrokeMaskStruct.__allocating_init(from:)(void *a1)
{
  v3 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v12, v12[3]);
    lazy protocol witness table accessor for type Data and conformance Data();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    v5 = objc_allocWithZone(MEMORY[0x1E69784E0]);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v7 = [v5 initWithRawValue_];

    outlined consume of Data._Representation(v10, v11);
    __swift_destroy_boxed_opaque_existential_0(v12);
    if (v7)
    {
      type metadata accessor for PKStrokeMaskWrapper();
      v8 = swift_allocObject();
      *(v8 + 16) = v7;
      type metadata accessor for PKStrokeMaskStruct();
      v3 = swift_allocObject();
      *(v3 + 16) = v8;
      __swift_destroy_boxed_opaque_existential_0(a1);
      return v3;
    }

    v3 = type metadata accessor for CRCodingError();
    _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type CRCodingError and conformance CRCodingError, 255, MEMORY[0x1E6995198], MEMORY[0x1E69951A0]);
    swift_allocError();
    *v9 = 0x2E6B73616D206F4ELL;
    v9[1] = 0xE800000000000000;
    (*(*(v3 - 8) + 104))(v9, *MEMORY[0x1E6995188], v3);
    swift_willThrow();
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v3;
}

void specialized CGRect.init(rawValue:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      goto LABEL_16;
    }

    v5 = *(a1 + 16);
    v4 = *(a1 + 24);
    v6 = __OFSUB__(v4, v5);
    v7 = v4 - v5;
    if (v6)
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    if (v7 != 32)
    {
      goto LABEL_16;
    }

LABEL_8:
    v8 = a3;
    if (v3 == 2)
    {
      v20 = *(a1 + 16);
      v21 = *(a1 + 24);
      v14 = __DataStorage._bytes.getter();
      if (v14)
      {
        v22 = __DataStorage._offset.getter();
        if (__OFSUB__(v20, v22))
        {
LABEL_54:
          __break(1u);
          goto LABEL_55;
        }

        v14 += v20 - v22;
      }

      v6 = __OFSUB__(v21, v20);
      v10 = v21 - v20;
      if (v6)
      {
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }
    }

    else
    {
      if (v3 != 1)
      {
        __src = a1;
        v40 = a2;
        v41 = BYTE2(a2);
        v42 = BYTE3(a2);
        v43 = BYTE4(a2);
        v30 = (a2 >> 51) & 0x1F;
        v44 = BYTE5(a2);
        if (!v30)
        {
          goto LABEL_36;
        }

        v26 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5Tm((a2 >> 51) & 0x1F, 0, &_ss23_ContiguousArrayStorageCys6UInt64VGMd, &_ss23_ContiguousArrayStorageCys6UInt64VGMR);
        v28 = 8 * v30;
        v27 = v26 + 4;
        p_src = &__src;
LABEL_32:
        memcpy(v27, p_src, v28);
        v31 = v26[2];
        if (v31)
        {
          goto LABEL_37;
        }

        while (1)
        {

          v32 = MEMORY[0x1E69E7CC0];
          v33 = *(MEMORY[0x1E69E7CC0] + 16);
          if (v33)
          {
            break;
          }

          while (1)
          {
            __break(1u);
LABEL_35:
            MEMORY[0x1DA6C8120]();
LABEL_36:
            v26 = MEMORY[0x1E69E7CC0];
            v31 = *(MEMORY[0x1E69E7CC0] + 16);
            if (!v31)
            {
              break;
            }

LABEL_37:
            __src = MEMORY[0x1E69E7CC0];
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31, 0);
            v34 = 4;
            v32 = __src;
            do
            {
              v35 = _OSSwapInt64(v26[v34]);
              __src = v32;
              v37 = v32[2];
              v36 = v32[3];
              if (v37 >= v36 >> 1)
              {
                v38 = v35;
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1);
                v35 = v38;
                v32 = __src;
              }

              v32[2] = v37 + 1;
              v32[v37 + 4] = v35;
              ++v34;
              --v31;
            }

            while (v31);

            v33 = v32[2];
            if (v33)
            {
              goto LABEL_42;
            }
          }
        }

LABEL_42:
        if (v33 == 1)
        {
          __break(1u);
        }

        else if (v33 >= 3)
        {
          if (v33 != 3)
          {
            v15 = v32[4];
            v16 = v32[5];
            v17 = v32[6];
            v18 = v32[7];

            v19 = 0;
            a3 = v8;
            goto LABEL_46;
          }

          goto LABEL_49;
        }

        __break(1u);
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      v9 = a1;
      v10 = (a1 >> 32) - a1;
      if (a1 >> 32 < a1)
      {
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      v11 = __DataStorage._bytes.getter();
      if (!v11)
      {
        goto LABEL_35;
      }

      v12 = v11;
      v13 = __DataStorage._offset.getter();
      if (__OFSUB__(v9, v13))
      {
LABEL_55:
        __break(1u);
      }

      v14 = v9 - v13 + v12;
    }

    v23 = MEMORY[0x1DA6C8120]();
    if (!v14)
    {
      goto LABEL_36;
    }

    v24 = v23 >= v10 ? v10 : v23;
    if ((v24 + 7) < 0xF)
    {
      goto LABEL_36;
    }

    if (v24 >= 0)
    {
      v25 = v24;
    }

    else
    {
      v25 = v24 + 7;
    }

    v26 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5Tm(v25 >> 3, 0, &_ss23_ContiguousArrayStorageCys6UInt64VGMd, &_ss23_ContiguousArrayStorageCys6UInt64VGMR);
    v27 = v26 + 4;
    v28 = v25 & 0xFFFFFFFFFFFFFFF8;
    p_src = v14;
    goto LABEL_32;
  }

  if (!v3)
  {
    if (BYTE6(a2) != 32)
    {
      goto LABEL_16;
    }

    goto LABEL_8;
  }

  if (__OFSUB__(HIDWORD(a1), a1))
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (HIDWORD(a1) - a1 == 32)
  {
    goto LABEL_8;
  }

LABEL_16:
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 1;
LABEL_46:
  *a3 = v15;
  *(a3 + 8) = v16;
  *(a3 + 16) = v17;
  *(a3 + 24) = v18;
  *(a3 + 32) = v19;
}

uint64_t specialized CGPoint.init(rawValue:)(uint64_t a1, unint64_t a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      return 0;
    }

    v4 = *(a1 + 16);
    v3 = *(a1 + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (v5)
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    if (v6 != 16)
    {
      return 0;
    }
  }

  else
  {
    if (!v2)
    {
      if (BYTE6(a2) != 16)
      {
        return 0;
      }

      goto LABEL_8;
    }

    if (__OFSUB__(HIDWORD(a1), a1))
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    if (HIDWORD(a1) - a1 != 16)
    {
      return 0;
    }
  }

LABEL_8:
  if (v2 == 2)
  {
    v14 = *(a1 + 16);
    v15 = *(a1 + 24);
    v12 = __DataStorage._bytes.getter();
    if (v12)
    {
      v16 = __DataStorage._offset.getter();
      if (__OFSUB__(v14, v16))
      {
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      v12 += v14 - v16;
    }

    v5 = __OFSUB__(v15, v14);
    v8 = v15 - v14;
    if (v5)
    {
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

LABEL_21:
    v17 = MEMORY[0x1DA6C8120]();
    if (!v12)
    {
      goto LABEL_36;
    }

    v18 = v17 >= v8 ? v8 : v17;
    if ((v18 + 7) < 0xF)
    {
      goto LABEL_36;
    }

    if (v18 >= 0)
    {
      v19 = v18;
    }

    else
    {
      v19 = v18 + 7;
    }

    v20 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5Tm(v19 >> 3, 0, &_ss23_ContiguousArrayStorageCys6UInt64VGMd, &_ss23_ContiguousArrayStorageCys6UInt64VGMR);
    v21 = v20 + 4;
    v22 = v19 & 0xFFFFFFFFFFFFFFF8;
    p_src = v12;
    goto LABEL_32;
  }

  if (v2 == 1)
  {
    v7 = a1;
    v8 = (a1 >> 32) - a1;
    if (a1 >> 32 < a1)
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v9 = __DataStorage._bytes.getter();
    if (!v9)
    {
      goto LABEL_35;
    }

    v10 = v9;
    v11 = __DataStorage._offset.getter();
    if (__OFSUB__(v7, v11))
    {
LABEL_50:
      __break(1u);
    }

    v12 = v7 - v11 + v10;
    goto LABEL_21;
  }

  __src = a1;
  v35 = a2;
  v36 = BYTE2(a2);
  v37 = BYTE3(a2);
  v38 = BYTE4(a2);
  v24 = (a2 >> 51) & 0x1F;
  v39 = BYTE5(a2);
  if (!v24)
  {
    goto LABEL_36;
  }

  v20 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5Tm((a2 >> 51) & 0x1F, 0, &_ss23_ContiguousArrayStorageCys6UInt64VGMd, &_ss23_ContiguousArrayStorageCys6UInt64VGMR);
  v22 = 8 * v24;
  v21 = v20 + 4;
  p_src = &__src;
LABEL_32:
  memcpy(v21, p_src, v22);
  v25 = v20[2];
  if (v25)
  {
    goto LABEL_37;
  }

  while (1)
  {

    v26 = MEMORY[0x1E69E7CC0];
    v27 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v27)
    {
      break;
    }

    while (1)
    {
      __break(1u);
LABEL_35:
      MEMORY[0x1DA6C8120]();
LABEL_36:
      v20 = MEMORY[0x1E69E7CC0];
      v25 = *(MEMORY[0x1E69E7CC0] + 16);
      if (!v25)
      {
        break;
      }

LABEL_37:
      __src = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v25, 0);
      v28 = 4;
      v26 = __src;
      do
      {
        v29 = _OSSwapInt64(v20[v28]);
        __src = v26;
        v31 = v26[2];
        v30 = v26[3];
        if (v31 >= v30 >> 1)
        {
          v32 = v29;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1);
          v29 = v32;
          v26 = __src;
        }

        v26[2] = v31 + 1;
        v26[v31 + 4] = v29;
        ++v28;
        --v25;
      }

      while (v25);

      v27 = v26[2];
      if (v27)
      {
        goto LABEL_42;
      }
    }
  }

LABEL_42:
  if (v27 == 1)
  {
    __break(1u);
    goto LABEL_45;
  }

  v33 = v26[4];

  return v33;
}

void specialized CGAffineTransform.init(rawValue:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v47 = *MEMORY[0x1E69E9840];
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      goto LABEL_16;
    }

    v5 = *(a1 + 16);
    v4 = *(a1 + 24);
    v6 = __OFSUB__(v4, v5);
    v7 = v4 - v5;
    if (v6)
    {
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    if (v7 != 48)
    {
      goto LABEL_16;
    }

LABEL_8:
    v8 = a3;
    if (v3 == 2)
    {
      v22 = *(a1 + 16);
      v23 = *(a1 + 24);
      v14 = __DataStorage._bytes.getter();
      if (v14)
      {
        v24 = __DataStorage._offset.getter();
        if (__OFSUB__(v22, v24))
        {
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        v14 += v22 - v24;
      }

      v6 = __OFSUB__(v23, v22);
      v10 = v23 - v22;
      if (v6)
      {
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }
    }

    else
    {
      if (v3 != 1)
      {
        __src = a1;
        v42 = a2;
        v43 = BYTE2(a2);
        v44 = BYTE3(a2);
        v45 = BYTE4(a2);
        v32 = (a2 >> 51) & 0x1F;
        v46 = BYTE5(a2);
        if (!v32)
        {
          goto LABEL_36;
        }

        v28 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5Tm((a2 >> 51) & 0x1F, 0, &_ss23_ContiguousArrayStorageCys6UInt64VGMd, &_ss23_ContiguousArrayStorageCys6UInt64VGMR);
        v30 = 8 * v32;
        v29 = v28 + 4;
        p_src = &__src;
LABEL_32:
        memcpy(v29, p_src, v30);
        v33 = v28[2];
        if (v33)
        {
          goto LABEL_37;
        }

        while (1)
        {

          v34 = MEMORY[0x1E69E7CC0];
          v35 = *(MEMORY[0x1E69E7CC0] + 16);
          if (v35)
          {
            break;
          }

          while (1)
          {
            __break(1u);
LABEL_35:
            MEMORY[0x1DA6C8120]();
LABEL_36:
            v28 = MEMORY[0x1E69E7CC0];
            v33 = *(MEMORY[0x1E69E7CC0] + 16);
            if (!v33)
            {
              break;
            }

LABEL_37:
            __src = MEMORY[0x1E69E7CC0];
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v33, 0);
            v36 = 4;
            v34 = __src;
            do
            {
              v37 = _OSSwapInt64(v28[v36]);
              __src = v34;
              v39 = v34[2];
              v38 = v34[3];
              if (v39 >= v38 >> 1)
              {
                v40 = v37;
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1);
                v37 = v40;
                v34 = __src;
              }

              v34[2] = v39 + 1;
              v34[v39 + 4] = v37;
              ++v36;
              --v33;
            }

            while (v33);

            v35 = v34[2];
            if (v35)
            {
              goto LABEL_42;
            }
          }
        }

LABEL_42:
        if (v35 == 1)
        {
          __break(1u);
        }

        else if (v35 >= 3)
        {
          if (v35 != 3)
          {
            if (v35 >= 5)
            {
              if (v35 != 5)
              {
                v15 = v34[4];
                v16 = v34[5];
                v17 = v34[6];
                v18 = v34[7];
                v19 = v34[8];
                v20 = v34[9];

                v21 = 0;
                a3 = v8;
                goto LABEL_48;
              }

              goto LABEL_53;
            }

LABEL_52:
            __break(1u);
LABEL_53:
            __break(1u);
            goto LABEL_54;
          }

LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        __break(1u);
        goto LABEL_51;
      }

      v9 = a1;
      v10 = (a1 >> 32) - a1;
      if (a1 >> 32 < a1)
      {
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      v11 = __DataStorage._bytes.getter();
      if (!v11)
      {
        goto LABEL_35;
      }

      v12 = v11;
      v13 = __DataStorage._offset.getter();
      if (__OFSUB__(v9, v13))
      {
LABEL_59:
        __break(1u);
      }

      v14 = v9 - v13 + v12;
    }

    v25 = MEMORY[0x1DA6C8120]();
    if (!v14)
    {
      goto LABEL_36;
    }

    v26 = v25 >= v10 ? v10 : v25;
    if ((v26 + 7) < 0xF)
    {
      goto LABEL_36;
    }

    if (v26 >= 0)
    {
      v27 = v26;
    }

    else
    {
      v27 = v26 + 7;
    }

    v28 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5Tm(v27 >> 3, 0, &_ss23_ContiguousArrayStorageCys6UInt64VGMd, &_ss23_ContiguousArrayStorageCys6UInt64VGMR);
    v29 = v28 + 4;
    v30 = v27 & 0xFFFFFFFFFFFFFFF8;
    p_src = v14;
    goto LABEL_32;
  }

  if (!v3)
  {
    if (BYTE6(a2) != 48)
    {
      goto LABEL_16;
    }

    goto LABEL_8;
  }

  if (__OFSUB__(HIDWORD(a1), a1))
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if (HIDWORD(a1) - a1 == 48)
  {
    goto LABEL_8;
  }

LABEL_16:
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 1;
LABEL_48:
  *a3 = v15;
  *(a3 + 8) = v16;
  *(a3 + 16) = v17;
  *(a3 + 24) = v18;
  *(a3 + 32) = v19;
  *(a3 + 40) = v20;
  *(a3 + 48) = v21;
}

unint64_t lazy protocol witness table accessor for type PKStrokeClipPlane.CodingKeys and conformance PKStrokeClipPlane.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PKStrokeClipPlane.CodingKeys and conformance PKStrokeClipPlane.CodingKeys;
  if (!lazy protocol witness table cache variable for type PKStrokeClipPlane.CodingKeys and conformance PKStrokeClipPlane.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PKStrokeClipPlane.CodingKeys and conformance PKStrokeClipPlane.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PKStrokeClipPlane.CodingKeys and conformance PKStrokeClipPlane.CodingKeys;
  if (!lazy protocol witness table cache variable for type PKStrokeClipPlane.CodingKeys and conformance PKStrokeClipPlane.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PKStrokeClipPlane.CodingKeys and conformance PKStrokeClipPlane.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PKStrokeClipPlane.CodingKeys and conformance PKStrokeClipPlane.CodingKeys;
  if (!lazy protocol witness table cache variable for type PKStrokeClipPlane.CodingKeys and conformance PKStrokeClipPlane.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PKStrokeClipPlane.CodingKeys and conformance PKStrokeClipPlane.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PKStrokeClipPlane.CodingKeys and conformance PKStrokeClipPlane.CodingKeys;
  if (!lazy protocol witness table cache variable for type PKStrokeClipPlane.CodingKeys and conformance PKStrokeClipPlane.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PKStrokeClipPlane.CodingKeys and conformance PKStrokeClipPlane.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Quad and conformance Quad()
{
  result = lazy protocol witness table cache variable for type Quad and conformance Quad;
  if (!lazy protocol witness table cache variable for type Quad and conformance Quad)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Quad and conformance Quad);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Quad and conformance Quad;
  if (!lazy protocol witness table cache variable for type Quad and conformance Quad)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Quad and conformance Quad);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Quad and conformance Quad;
  if (!lazy protocol witness table cache variable for type Quad and conformance Quad)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Quad and conformance Quad);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Quad and conformance Quad;
  if (!lazy protocol witness table cache variable for type Quad and conformance Quad)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Quad and conformance Quad);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Quad and conformance Quad;
  if (!lazy protocol witness table cache variable for type Quad and conformance Quad)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Quad and conformance Quad);
  }

  return result;
}

uint64_t type metadata accessor for PKDrawingUUIDKeyPath(uint64_t a1)
{
  result = type metadata singleton initialization cache for PKDrawingUUIDKeyPath;
  if (!type metadata singleton initialization cache for PKDrawingUUIDKeyPath)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for PKDrawingUUIDKeyPath(uint64_t a1)
{
  result = type metadata accessor for CRKeyPath();
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

uint64_t CanvasAttachment.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  outlined init with copy of Any?(a1, v10);
  if (!v11)
  {
    outlined destroy of Any?(v10);
    goto LABEL_7;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v7 = 0;
    return v7 & 1;
  }

  if (*(v1 + OBJC_IVAR____TtC8PaperKit16CanvasAttachment_type) != *&v9[OBJC_IVAR____TtC8PaperKit16CanvasAttachment_type])
  {

    goto LABEL_7;
  }

  type metadata accessor for CGPathRef(0);
  v3 = *(v1 + OBJC_IVAR____TtC8PaperKit16CanvasAttachment_boundingPath);
  v4 = *&v9[OBJC_IVAR____TtC8PaperKit16CanvasAttachment_boundingPath];
  lazy protocol witness table accessor for type CGPathRef and conformance CGPathRef();
  v5 = v3;
  v6 = v4;
  v7 = static _CFObject.== infix(_:_:)();

  return v7 & 1;
}

uint64_t CanvasAttachmentProvider.isEqual(_:)(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  outlined init with copy of Any?(a1, v17);
  if (!v18)
  {
    outlined destroy of Any?(v17);
    goto LABEL_13;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    v14 = 0;
    return v14 & 1;
  }

  v4 = OBJC_IVAR____TtC8PaperKit24CanvasAttachmentProvider_paperkitAttachments;
  v5 = *(v1 + OBJC_IVAR____TtC8PaperKit24CanvasAttachmentProvider_paperkitAttachments);
  if (!(v5 >> 62))
  {
    swift_bridgeObjectRetain_n();
    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();

    v6 = v5;
LABEL_5:
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18CHCanvasAttachment_pMd, &_sSo18CHCanvasAttachment_pMR);
  v6 = _bridgeCocoaArray<A>(_:)();

  if (!(v6 >> 62))
  {
    goto LABEL_5;
  }

  v7 = __CocoaSet.count.getter();
LABEL_6:

  v8 = OBJC_IVAR____TtC8PaperKit24CanvasAttachmentProvider_paperkitAttachments;
  v9 = *&v16[OBJC_IVAR____TtC8PaperKit24CanvasAttachmentProvider_paperkitAttachments];
  if (!(v9 >> 62))
  {
    swift_bridgeObjectRetain_n();
    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();

    v10 = v9;
LABEL_8:
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18CHCanvasAttachment_pMd, &_sSo18CHCanvasAttachment_pMR);
  v10 = _bridgeCocoaArray<A>(_:)();

  if (!(v10 >> 62))
  {
    goto LABEL_8;
  }

  v11 = __CocoaSet.count.getter();
LABEL_9:

  if (v7 != v11)
  {

    goto LABEL_13;
  }

  v12 = *(v2 + v4);
  v13 = *&v16[v8];

  v14 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ8PaperKit16CanvasAttachmentC_Tt1g5(v12, v13);

  return v14 & 1;
}

uint64_t @objc CanvasAttachment.isEqual(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = a4(v10);

  outlined destroy of Any?(v10);
  return v8 & 1;
}

unint64_t lazy protocol witness table accessor for type CGPathRef and conformance CGPathRef()
{
  result = lazy protocol witness table cache variable for type CGPathRef and conformance CGPathRef;
  if (!lazy protocol witness table cache variable for type CGPathRef and conformance CGPathRef)
  {
    type metadata accessor for CGPathRef(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGPathRef and conformance CGPathRef);
  }

  return result;
}

char *PDFAnnotation.quadPoints.getter()
{
  if ([v0 valueForAnnotationKey_])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v17[0] = v15;
  v17[1] = v16;
  if (!*(&v16 + 1))
  {
    outlined destroy of Any?(v17);
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo7NSValueCGMd, &_sSaySo7NSValueCGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (!(v14 >> 62))
  {
    v1 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v1)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

  v1 = __CocoaSet.count.getter();
  if (!v1)
  {
LABEL_20:

    return MEMORY[0x1E69E7CC0];
  }

LABEL_8:
  *&v17[0] = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1 & ~(v1 >> 63), 0);
  if ((v1 & 0x8000000000000000) == 0)
  {
    v3 = 0;
    v4 = *&v17[0];
    do
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1DA6CE0C0](v3);
      }

      else
      {
        v5 = *(v14 + 8 * v3 + 32);
      }

      v6 = v5;
      [v5 CGPointValue];
      v8 = v7;
      v10 = v9;

      *&v17[0] = v4;
      v12 = *(v4 + 16);
      v11 = *(v4 + 24);
      if (v12 >= v11 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
        v4 = *&v17[0];
      }

      ++v3;
      *(v4 + 16) = v12 + 1;
      v13 = v4 + 16 * v12;
      *(v13 + 32) = v8;
      *(v13 + 40) = v10;
    }

    while (v1 != v3);

    return v4;
  }

  __break(1u);
  return result;
}

void PDFAnnotation.quadPoints.setter(uint64_t a1)
{
  if (a1)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      specialized ContiguousArray.reserveCapacity(_:)();
      v4 = objc_opt_self();
      v5 = (a1 + 40);
      do
      {
        v6 = [v4 valueWithCGPoint_];
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v5 += 2;
        --v3;
      }

      while (v3);
    }

    type metadata accessor for NSValue();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v1 setValue:isa forAnnotationKey:*MEMORY[0x1E6978070]];
  }

  else
  {
    v7 = *MEMORY[0x1E6978070];

    [v1 removeValueForAnnotationKey_];
  }
}

Swift::Bool __swiftcall PDFAnnotation.shouldMirrorAsPDFAnnotationElement()()
{
  if ([v0 valueForAnnotationKey_])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v39 = 0u;
    v40 = 0u;
  }

  v41[0] = v39;
  v41[1] = v40;
  if (!*(&v40 + 1))
  {
    outlined destroy of Any?(v41);
    goto LABEL_13;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    v8 = 0;
    return v8 & 1;
  }

  v1 = MEMORY[0x1DA6CCED0]();

  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    goto LABEL_16;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v7)
  {
LABEL_11:

LABEL_17:
    v8 = 1;
    return v8 & 1;
  }

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  if (v9 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v11 == v12)
  {
    goto LABEL_16;
  }

  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v14)
  {
    goto LABEL_11;
  }

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
  {
    goto LABEL_16;
  }

  v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v19)
  {
    goto LABEL_11;
  }

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;
  if (v20 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v22 == v23)
  {
    goto LABEL_16;
  }

  v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v24)
  {
    goto LABEL_11;
  }

  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;
  if (v25 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v27 == v28)
  {
    goto LABEL_16;
  }

  v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v29)
  {
    goto LABEL_11;
  }

  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;
  if (v30 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v32 == v33)
  {
LABEL_16:

    goto LABEL_17;
  }

  v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v34)
  {
    goto LABEL_11;
  }

  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;

  if (v35 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v37 == v38)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

unint64_t type metadata accessor for NSValue()
{
  result = lazy cache variable for type metadata for NSValue;
  if (!lazy cache variable for type metadata for NSValue)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSValue);
  }

  return result;
}

uint64_t PKStrokePathStruct.path.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PKStrokePath();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t PKStrokePathStruct.path.setter(uint64_t a1)
{
  v3 = type metadata accessor for PKStrokePath();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

void PKStrokePathStruct.init(from:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v3 = type metadata accessor for PKStrokePath();
  v65 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v77 = v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v76 = v62 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_9Coherence9CRVersionVSgtMd, &_s10Foundation4DataV_9Coherence9CRVersionVSgtMR);
  v79 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v12 = v62 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v62 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v62 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PencilKit12PKStrokePathVSgMd, &_s9PencilKit12PKStrokePathVSgMR);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v62 - v23;
  v64 = a1;
  v25 = v81;
  dispatch thunk of CRDecoder.crdtContainer()();
  if (v25)
  {

    return;
  }

  v71 = v24;
  v74 = v12;
  v75 = v15;
  v80 = v9;
  v81 = v7;
  v26 = dispatch thunk of CRDecoder.CRDTContainer.decodeCustomSiblings()();

  v73 = *(v26 + 16);
  if (!v73)
  {
    goto LABEL_21;
  }

  v27 = (*(v79 + 80) + 32) & ~*(v79 + 80);
  v63 = v26;
  v72 = v26 + v27;
  v28 = v18;
  outlined init with copy of (Data, CRVersion?)(v26 + v27, v18);
  v30 = *v18;
  v29 = *(v18 + 1);
  v31 = objc_allocWithZone(MEMORY[0x1E69784E8]);
  outlined copy of Data._Representation(v30, v29);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v33 = [v31 initWithRawValue_];

  v69 = v29;
  v70 = v30;
  outlined consume of Data._Representation(v30, v29);
  v34 = v81;
  v35 = v65;
  if (v33)
  {
    v36 = v33;
    v37 = v71;
    static PKStrokePath._unconditionallyBridgeFromObjectiveC(_:)();

    v38 = 0;
    v39 = v80;
  }

  else
  {
    v38 = 1;
    v39 = v80;
    v37 = v71;
  }

  outlined consume of Data._Representation(v70, v69);
  v70 = v35[7];
  v71 = (v35 + 7);
  (v70)(v37, v38, 1, v3);
  outlined destroy of StocksKitCurrencyCache.Provider?(&v28[*(v34 + 48)], &_s9Coherence9CRVersionVSgMd, &_s9Coherence9CRVersionVSgMR);
  v68 = v35[6];
  v69 = (v35 + 6);
  if ((v68)(v37, 1, v3) != 1)
  {
    v40 = v78;
    v35[4](v78, v37, v3);
    if (*(v63 + 16) < v73)
    {
      goto LABEL_22;
    }

    v41 = v73;
    v42 = v77;
    v43 = v75;
    if (v73 == 1)
    {
LABEL_11:

      return;
    }

    v62[1] = 0;
    v44 = (v65 + 1);
    v66 = *(v34 + 48);
    v67 = (v65 + 2);
    v65 += 5;
    v45 = 1;
    while (v41 != v45)
    {
      outlined init with copy of (Data, CRVersion?)(v72 + *(v79 + 72) * v45, v43);
      v46 = *(v34 + 48);
      v47 = v74;
      *v74 = *v43;
      v48 = v43 + v66;
      v49 = v47;
      outlined init with take of Range<AttributedString.Index>(v48, v47 + v46, &_s9Coherence9CRVersionVSgMd, &_s9Coherence9CRVersionVSgMR);
      (*v67)(v42, v40, v3);
      outlined init with copy of (Data, CRVersion?)(v49, v39);
      v50 = *v39;
      v51 = v39[1];
      v52 = objc_allocWithZone(MEMORY[0x1E69784E8]);
      outlined copy of Data._Representation(v50, v51);
      v53 = Data._bridgeToObjectiveC()().super.isa;
      v54 = [v52 initWithRawValue_];

      outlined consume of Data._Representation(v50, v51);
      if (v54)
      {
        v55 = v54;
        static PKStrokePath._unconditionallyBridgeFromObjectiveC(_:)();

        v56 = 0;
      }

      else
      {
        v56 = 1;
      }

      outlined consume of Data._Representation(v50, v51);
      (v70)(v21, v56, 1, v3);
      outlined destroy of StocksKitCurrencyCache.Provider?(v80 + *(v81 + 48), &_s9Coherence9CRVersionVSgMd, &_s9Coherence9CRVersionVSgMR);
      if ((v68)(v21, 1, v3) == 1)
      {
        goto LABEL_23;
      }

      ++v45;
      v42 = v77;
      v57 = PKStrokePath._bridgeToObjectiveC()().super.isa;
      v58 = PKStrokePath._bridgeToObjectiveC()().super.isa;
      v59 = [(objc_class *)v57 dataApplying:v58];

      v60 = v76;
      static PKStrokePath._unconditionallyBridgeFromObjectiveC(_:)();

      v61 = *v44;
      (*v44)(v42, v3);
      outlined destroy of StocksKitCurrencyCache.Provider?(v49, &_s10Foundation4DataV_9Coherence9CRVersionVSgtMd, &_s10Foundation4DataV_9Coherence9CRVersionVSgtMR);
      v61(v21, v3);
      v40 = v78;
      (*v65)(v78, v60, v3);
      v41 = v73;
      v34 = v81;
      v39 = v80;
      v43 = v75;
      if (v73 == v45)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  __break(1u);
}

uint64_t outlined init with copy of (Data, CRVersion?)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_9Coherence9CRVersionVSgtMd, &_s10Foundation4DataV_9Coherence9CRVersionVSgtMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t one-time initialization function for versionUUID()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for UUID();
  __swift_allocate_value_buffer(v3, static PKStrokePathStruct.versionUUID);
  v4 = __swift_project_value_buffer(v3, static PKStrokePathStruct.versionUUID);
  UUID.init(uuidString:)();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

void PKStrokePathStruct.encode(to:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRVersionVSgMd, &_s9Coherence9CRVersionVSgMR);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v25 = &v24 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8IndexSetVSgMd, &_s10Foundation8IndexSetVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v24 - v3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CRVersion();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  CRVersion.init()();
  if (one-time initialization token for versionUUID != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v5, static PKStrokePathStruct.versionUUID);
  (*(v6 + 16))(v8, v13, v5);
  isa = PKStrokePath._bridgeToObjectiveC()().super.isa;
  v15 = [(objc_class *)isa _immutablePointsCount];

  if ((v15 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    IndexSet.init(integersIn:)();
    v16 = type metadata accessor for IndexSet();
    (*(*(v16 - 8) + 56))(v4, 0, 1, v16);
    CRVersion.subscript.setter();
    v17 = v26;
    dispatch thunk of CREncoder.crdtContainer()();
    if (!v17)
    {
      v18 = PKStrokePath._bridgeToObjectiveC()().super.isa;
      v19 = [(objc_class *)v18 rawValue];

      v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      v23 = v25;
      (*(v10 + 16))(v25, v12, v9);
      (*(v10 + 56))(v23, 0, 1, v9);
      dispatch thunk of CREncoder.CRDTContainer.encodeCustom(_:version:)();
      outlined consume of Data._Representation(v20, v22);

      outlined destroy of StocksKitCurrencyCache.Provider?(v23, &_s9Coherence9CRVersionVSgMd, &_s9Coherence9CRVersionVSgMR);
    }

    (*(v10 + 8))(v12, v9);
  }
}

void PKStrokePathStruct.merge(_:)(uint64_t a1)
{
  v2 = v1;
  isa = PKStrokePath._bridgeToObjectiveC()().super.isa;
  v5 = [(objc_class *)isa _immutablePointsCount];

  v6 = PKStrokePath._bridgeToObjectiveC()().super.isa;
  v7 = [(objc_class *)v6 _immutablePointsCount];

  if (v7 < v5 || (v10 = PKStrokePath._bridgeToObjectiveC()().super.isa, v11 = [(objc_class *)v10 _immutablePointsCount], v10, v12 = PKStrokePath._bridgeToObjectiveC()().super.isa, v13 = [(objc_class *)v12 _immutablePointsCount], v12, v11 == v13) && (v14 = PKStrokePath._bridgeToObjectiveC()().super.isa, v15 = [(objc_class *)v14 count], v14, v16 = PKStrokePath._bridgeToObjectiveC()().super.isa, v17 = [(objc_class *)v16 count], v16, v17 < v15))
  {
    v8 = type metadata accessor for PKStrokePath();
    v9 = *(*(v8 - 8) + 24);

    v9(v2, a1, v8);
  }
}

void PKStrokePathStruct.Partial.init(from:)(uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_9Coherence9CRVersionVSgtMd, &_s10Foundation4DataV_9Coherence9CRVersionVSgtMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v21 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PencilKit12PKStrokePathVSgMd, &_s9PencilKit12PKStrokePathVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  dispatch thunk of CRDecoder.crdtContainer()();
  if (v2)
  {

    return;
  }

  v11 = dispatch thunk of CRDecoder.CRDTContainer.decodeCustomSiblings()();

  v22 = a2;
  if (*(v11 + 16) == 1)
  {
    outlined init with copy of (Data, CRVersion?)(v11 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v7);

    v12 = *v7;
    v13 = v7[1];
    v14 = objc_allocWithZone(MEMORY[0x1E69784E8]);
    outlined copy of Data._Representation(v12, v13);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v16 = [v14 initWithRawValue_];

    outlined consume of Data._Representation(v12, v13);
    if (v16)
    {
      v17 = v16;
      static PKStrokePath._unconditionallyBridgeFromObjectiveC(_:)();

      v18 = 0;
    }

    else
    {
      v18 = 1;
    }

    outlined consume of Data._Representation(v12, v13);
    v19 = type metadata accessor for PKStrokePath();
    v20 = *(v19 - 8);
    (*(v20 + 56))(v10, v18, 1, v19);
    outlined destroy of StocksKitCurrencyCache.Provider?(v7 + *(v4 + 48), &_s9Coherence9CRVersionVSgMd, &_s9Coherence9CRVersionVSgMR);
    if ((*(v20 + 48))(v10, 1, v19) != 1)
    {

      (*(v20 + 32))(v22, v10, v19);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

double PKStrokePathStruct.Partial.encode(to:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRVersionVSgMd, &_s9Coherence9CRVersionVSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v11 - v2;
  dispatch thunk of CREncoder.crdtContainer()();
  if (!v0)
  {
    isa = PKStrokePath._bridgeToObjectiveC()().super.isa;
    v6 = [(objc_class *)isa rawValue];

    v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    CRVersion.init()();
    v10 = type metadata accessor for CRVersion();
    (*(*(v10 - 8) + 56))(v3, 0, 1, v10);
    dispatch thunk of CREncoder.CRDTContainer.encodeCustom(_:version:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v3, &_s9Coherence9CRVersionVSgMd, &_s9Coherence9CRVersionVSgMR);
    outlined consume of Data._Representation(v7, v9);
  }

  return result;
}

uint64_t PKStrokePathStruct.partialCRDT(from:)@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PencilKit12PKStrokePathVSgMd, &_s9PencilKit12PKStrokePathVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v19 - v6;
  v8 = type metadata accessor for PKStrokePath();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = PKStrokePath._bridgeToObjectiveC()().super.isa;
  v13 = PKStrokePath._bridgeToObjectiveC()().super.isa;
  v14 = [(objc_class *)isa deltaTo:v13];

  if (v14)
  {
    static PKStrokePath._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v9 + 56))(v4, 0, 1, v8);
  }

  else
  {
    (*(v9 + 56))(v4, 1, 1, v8);
  }

  outlined init with take of Range<AttributedString.Index>(v4, v7, &_s9PencilKit12PKStrokePathVSgMd, &_s9PencilKit12PKStrokePathVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s9PencilKit12PKStrokePathVSgMd, &_s9PencilKit12PKStrokePathVSgMR);
    v15 = 1;
  }

  else
  {
    v16 = *(v9 + 32);
    v16(v11, v7, v8);
    v16(a1, v11, v8);
    v15 = 0;
  }

  v17 = type metadata accessor for PKStrokePathStruct.Partial(0);
  return (*(*(v17 - 8) + 56))(a1, v15, 1, v17);
}

id PKStrokePathStruct.Partial.canMerge(delta:)()
{
  isa = PKStrokePath._bridgeToObjectiveC()().super.isa;
  v1 = PKStrokePath._bridgeToObjectiveC()().super.isa;
  v2 = [(objc_class *)isa canApplyDelta:v1];

  return v2;
}

id PKStrokePathStruct.Partial.merge(delta:)()
{
  v1 = v0;
  v2 = type metadata accessor for PKStrokePath();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = PKStrokePath._bridgeToObjectiveC()().super.isa;
  v7 = PKStrokePath._bridgeToObjectiveC()().super.isa;
  v8 = [(objc_class *)isa canApplyDelta:v7];

  if (v8)
  {
    v9 = PKStrokePath._bridgeToObjectiveC()().super.isa;
    v10 = PKStrokePath._bridgeToObjectiveC()().super.isa;
    v11 = [(objc_class *)v9 dataApplying:v10];

    static PKStrokePath._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v3 + 40))(v1, v5, v2);
  }

  return v8;
}

void static PKStrokePathStruct.initPartialCRDT(from:)(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_9Coherence9CRVersionVSgtMd, &_s10Foundation4DataV_9Coherence9CRVersionVSgtMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (v20 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PencilKit12PKStrokePathVSgMd, &_s9PencilKit12PKStrokePathVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v20 - v8;
  dispatch thunk of CRDecoder.crdtContainer()();
  if (!v1)
  {
    v10 = dispatch thunk of CRDecoder.CRDTContainer.decodeCustomSiblings()();

    if (*(v10 + 16) == 1)
    {
      outlined init with copy of (Data, CRVersion?)(v10 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v6);

      v11 = *v6;
      v12 = v6[1];
      v13 = objc_allocWithZone(MEMORY[0x1E69784E8]);
      outlined copy of Data._Representation(v11, v12);
      isa = Data._bridgeToObjectiveC()().super.isa;
      v15 = [v13 initWithRawValue_];

      outlined consume of Data._Representation(v11, v12);
      if (v15)
      {
        v16 = v15;
        static PKStrokePath._unconditionallyBridgeFromObjectiveC(_:)();

        v17 = 0;
      }

      else
      {
        v17 = 1;
      }

      outlined consume of Data._Representation(v11, v12);
      v18 = type metadata accessor for PKStrokePath();
      v19 = *(v18 - 8);
      (*(v19 + 56))(v9, v17, 1, v18);
      outlined destroy of StocksKitCurrencyCache.Provider?(v6 + *(v3 + 48), &_s9Coherence9CRVersionVSgMd, &_s9Coherence9CRVersionVSgMR);
      if ((*(v19 + 48))(v9, 1, v18) != 1)
      {
        (*(v19 + 32))(a1, v9, v18);
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

double static PKStrokePathStruct.encode(partialCRDT:to:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRVersionVSgMd, &_s9Coherence9CRVersionVSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v11 - v2;
  dispatch thunk of CREncoder.crdtContainer()();
  if (!v0)
  {
    isa = PKStrokePath._bridgeToObjectiveC()().super.isa;
    v6 = [(objc_class *)isa rawValue];

    v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    CRVersion.init()();
    v10 = type metadata accessor for CRVersion();
    (*(*(v10 - 8) + 56))(v3, 0, 1, v10);
    dispatch thunk of CREncoder.CRDTContainer.encodeCustom(_:version:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v3, &_s9Coherence9CRVersionVSgMd, &_s9Coherence9CRVersionVSgMR);
    outlined consume of Data._Representation(v7, v9);
  }

  return result;
}

uint64_t outlined init with copy of PKStrokePathStruct(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PKStrokePathStruct(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL static PKStrokePathStruct.== infix(_:_:)()
{
  isa = PKStrokePath._bridgeToObjectiveC()().super.isa;
  v1 = [(objc_class *)isa _immutablePointsCount];

  v2 = PKStrokePath._bridgeToObjectiveC()().super.isa;
  v3 = [(objc_class *)v2 _immutablePointsCount];

  return v1 == v3;
}

BOOL PKStrokePathStruct.hasDelta(from:)()
{
  isa = PKStrokePath._bridgeToObjectiveC()().super.isa;
  v1 = [(objc_class *)isa _immutablePointsCount];

  v2 = PKStrokePath._bridgeToObjectiveC()().super.isa;
  v3 = [(objc_class *)v2 _immutablePointsCount];

  return v1 < v3;
}

uint64_t protocol witness for CRDT.context.getter in conformance PKStrokePathStruct(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PKStrokePathStruct.Partial and conformance PKStrokePathStruct.Partial(&lazy protocol witness table cache variable for type PKStrokePathStruct and conformance PKStrokePathStruct, type metadata accessor for PKStrokePathStruct, &protocol conformance descriptor for PKStrokePathStruct);

  return MEMORY[0x1EEDF5248](a1, v2);
}

BOOL protocol witness for CRDT.hasDelta(from:) in conformance PKStrokePathStruct()
{
  isa = PKStrokePath._bridgeToObjectiveC()().super.isa;
  v1 = [(objc_class *)isa _immutablePointsCount];

  v2 = PKStrokePath._bridgeToObjectiveC()().super.isa;
  v3 = [(objc_class *)v2 _immutablePointsCount];

  return v1 < v3;
}

uint64_t protocol witness for CRMergeable.merge(_:) in conformance PKStrokePathStruct(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type PKStrokePathStruct.Partial and conformance PKStrokePathStruct.Partial(&lazy protocol witness table cache variable for type PKStrokePathStruct and conformance PKStrokePathStruct, type metadata accessor for PKStrokePathStruct, &protocol conformance descriptor for PKStrokePathStruct);

  return MEMORY[0x1EEDF5208](a1, a2, v4);
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance PKStrokePathStruct()
{
  isa = PKStrokePath._bridgeToObjectiveC()().super.isa;
  v1 = [(objc_class *)isa _immutablePointsCount];

  v2 = PKStrokePath._bridgeToObjectiveC()().super.isa;
  v3 = [(objc_class *)v2 _immutablePointsCount];

  return v1 == v3;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PKStrokePath();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

char *UnknownPageView.init(frame:)(double a1, double a2, double a3, double a4)
{
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC8PaperKit15UnknownPageView_textualContextProvider + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithFrame_];
  v10 = OBJC_IVAR____TtC8PaperKit15UnknownPageView_questionMarkView;
  *&v4[OBJC_IVAR____TtC8PaperKit15UnknownPageView_questionMarkView] = v9;
  [v9 setContentMode_];
  [*&v4[v10] setClipsToBounds_];
  v11 = *&v4[v10];
  v12 = MEMORY[0x1DA6CCED0](0xD00000000000001ALL, 0x80000001D4081FA0);
  v13 = [objc_opt_self() systemImageNamed_];

  [v11 setImage_];
  v14 = one-time initialization token for imageMissingIconColor;
  v15 = *&v4[v10];
  if (v14 != -1)
  {
    swift_once();
  }

  [v15 setTintColor_];

  v21.receiver = v4;
  v21.super_class = type metadata accessor for UnknownPageView();
  v16 = objc_msgSendSuper2(&v21, sel_initWithFrame_, a1, a2, a3, a4);
  v17 = *&v16[OBJC_IVAR____TtC8PaperKit15UnknownPageView_questionMarkView];
  v18 = v16;
  [v18 addSubview_];
  if (one-time initialization token for imageMissingBackgroundColor != -1)
  {
    swift_once();
  }

  [v18 setBackgroundColor_];
  v19 = MEMORY[0x1DA6CCED0](0xD000000000000028, 0x80000001D4081FC0);
  [v18 setAccessibilityIdentifier_];

  return v18;
}

id UnknownPageView.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for UnknownPageView();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t protocol witness for PageOverlayView.textualContextProvider.setter in conformance UnknownPageView(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC8PaperKit15UnknownPageView_textualContextProvider + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void protocol witness for PageOverlayView.viewControllerForPresentingUI.setter in conformance UnknownPageView(void *a1)
{
  swift_unknownObjectWeakAssign();
}

Swift::Void __swiftcall InlineDrawingTiledTextView.didMoveToWindow()()
{
  v1 = v0;
  v5.receiver = v0;
  v5.super_class = type metadata accessor for InlineDrawingTiledTextView();
  objc_msgSendSuper2(&v5, sel_didMoveToWindow);
  v2 = [v0 window];
  if (v2)
  {

    v3 = swift_unknownObjectRetain();
    InlineDrawingCanvasElementController.delegate.setter(v3, &protocol witness table for InlineDrawingTiledTextView);
  }

  else
  {
    InlineDrawingCanvasElementController.delegate.setter(0, 0);
    v0 = 0;
  }

  v4 = [v1 selectionInteraction];
  [v4 setDelegate_];
}

id InlineDrawingTiledTextView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InlineDrawingTiledTextView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void specialized InlineDrawingTiledTextView.inlineDrawingCanvasElementControllerCurrentAttachment(_:)()
{
  v1 = v0;
  v2 = [v0 visibleAttachments];
  type metadata accessor for PKAttachmentView();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = [v1 standInAttachmentView];
  if (v4)
  {
    v5 = v4;
    MEMORY[0x1DA6CD190]();
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  if (!(v3 >> 62))
  {
    v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_7;
    }

LABEL_19:

    return;
  }

  v6 = __CocoaSet.count.getter();
  if (!v6)
  {
    goto LABEL_19;
  }

LABEL_7:
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = 0;
    x = 0.0;
    y = 0.0;
    width = 0.0;
    v12 = 0.0;
    do
    {
      v29 = v12;
      v30 = width;
      v31 = y;
      v32 = x;
      if ((v3 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x1DA6CE0C0](v8, v3);
      }

      else
      {
        v13 = *(v3 + 8 * v8 + 32);
      }

      v14 = v13;
      [v13 bounds];
      [v14 convertRect:v1 toCoordinateSpace:?];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;
      [v1 bounds];
      v36.origin.x = v23;
      v36.origin.y = v24;
      v36.size.width = v25;
      v36.size.height = v26;
      v33.origin.x = v16;
      v33.origin.y = v18;
      v33.size.width = v20;
      v33.size.height = v22;
      v34 = CGRectIntersection(v33, v36);
      x = v34.origin.x;
      y = v34.origin.y;
      width = v34.size.width;
      height = v34.size.height;
      v27 = CGRectGetHeight(v34);
      v35.origin.x = v32;
      v35.origin.y = v31;
      v35.size.width = v30;
      v35.size.height = v29;
      if (CGRectGetHeight(v35) >= v27)
      {

        x = v32;
        y = v31;
        width = v30;
        v12 = v29;
      }

      else
      {

        type metadata accessor for InlineDrawingTextAttachmentView();
        v7 = swift_dynamicCastClass();
        if (!v7)
        {
        }

        v12 = height;
      }

      ++v8;
    }

    while (v6 != v8);
    goto LABEL_19;
  }

  __break(1u);
}

unint64_t type metadata accessor for PKAttachmentView()
{
  result = lazy cache variable for type metadata for PKAttachmentView[0];
  if (!lazy cache variable for type metadata for PKAttachmentView[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, lazy cache variable for type metadata for PKAttachmentView);
  }

  return result;
}

uint64_t AnalyticsEventEncoder.container<A>(keyedBy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 40);
  type metadata accessor for KeyedContainer(0, a2, a3, a4);

  v6 = v5;
  swift_getWitnessTable();
  return KeyedEncodingContainer.init<A>(_:)();
}

uint64_t AnalyticsEventEncoder.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id protocol witness for Encoder.singleValueContainer() in conformance AnalyticsEventEncoder@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 16);
  v7 = *(v3 + 40);
  v5 = *(v3 + 32);
  *(a1 + 24) = &unk_1F4F5BD98;
  *(a1 + 32) = lazy protocol witness table accessor for type SingleValueContainer and conformance SingleValueContainer();
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7;

  return v7;
}

unint64_t lazy protocol witness table accessor for type SingleValueContainer and conformance SingleValueContainer()
{
  result = lazy protocol witness table cache variable for type SingleValueContainer and conformance SingleValueContainer;
  if (!lazy protocol witness table cache variable for type SingleValueContainer and conformance SingleValueContainer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SingleValueContainer and conformance SingleValueContainer);
  }

  return result;
}

void KeyedContainer.encode<A>(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a3;
  v22 = a2;
  v7 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v12 = *(v7 + 16);
  v12(&v21 - v13, a1, v14, v11);
  type metadata accessor for NSObject();
  if (swift_dynamicCast())
  {
    v15 = v23;
    if (!v23)
    {
      goto LABEL_12;
    }

LABEL_9:
    v17 = *(v4 + 16);
    v18 = v15;
    v19 = dispatch thunk of CodingKey.stringValue.getter();
    v20 = MEMORY[0x1DA6CCED0](v19);

    [v17 setValue:v18 forKey:{v20, v21, v22}];

    return;
  }

  (v12)(v9, a1, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSY_pMd, &_sSY_pMR);
  if (swift_dynamicCast())
  {
    __swift_project_boxed_opaque_existential_1(&v23, *(&v24 + 1));
    *(&v27 + 1) = swift_getAssociatedTypeWitness();
    __swift_allocate_boxed_opaque_existential_1(&v26);
    dispatch thunk of RawRepresentable.rawValue.getter();
    __swift_destroy_boxed_opaque_existential_0(&v23);
    if (*(&v27 + 1))
    {
      v16 = swift_dynamicCast();
      v15 = v28;
      if (!v16)
      {
        v15 = 0;
      }

      if (!v15)
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    outlined destroy of StocksKitCurrencyCache.Provider?(&v23, &_sSY_pSgMd, &_sSY_pSgMR);
    v26 = 0u;
    v27 = 0u;
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(&v26, &_sypSgMd, &_sypSgMR);
LABEL_12:
  lazy protocol witness table accessor for type AnalyticsEventEncoder.EncodingError and conformance AnalyticsEventEncoder.EncodingError();
  swift_allocError();
  swift_willThrow();
}

void KeyedContainer.encodeNil(forKey:)(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 8) == 1)
  {
    v3 = *(v2 + 16);
    v4 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    v5 = dispatch thunk of CodingKey.stringValue.getter();
    v6 = MEMORY[0x1DA6CCED0](v5);

    [v3 setValue:v4 forKey:v6];
  }
}

void protocol witness for KeyedEncodingContainerProtocol.encode(_:forKey:) in conformance KeyedContainer<A>(char a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  KeyedContainer.encode<A>(_:forKey:)(&v3, a2, a3, MEMORY[0x1E69E6370]);
}

{
  v3 = a1;
  KeyedContainer.encode<A>(_:forKey:)(&v3, a2, a3, MEMORY[0x1E69E7230]);
}

{
  v3 = a1;
  KeyedContainer.encode<A>(_:forKey:)(&v3, a2, a3, MEMORY[0x1E69E7508]);
}

void protocol witness for KeyedEncodingContainerProtocol.encode(_:forKey:) in conformance KeyedContainer<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[0] = a1;
  v4[1] = a2;
  KeyedContainer.encode<A>(_:forKey:)(v4, a3, a4, MEMORY[0x1E69E6158]);
}

void protocol witness for KeyedEncodingContainerProtocol.encode(_:forKey:) in conformance KeyedContainer<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  KeyedContainer.encode<A>(_:forKey:)(&v3, a2, a3, MEMORY[0x1E69E6530]);
}

{
  v3 = a1;
  KeyedContainer.encode<A>(_:forKey:)(&v3, a2, a3, MEMORY[0x1E69E7360]);
}

{
  v3 = a1;
  KeyedContainer.encode<A>(_:forKey:)(&v3, a2, a3, MEMORY[0x1E69E6810]);
}

{
  v3 = a1;
  KeyedContainer.encode<A>(_:forKey:)(&v3, a2, a3, MEMORY[0x1E69E76D8]);
}

void protocol witness for KeyedEncodingContainerProtocol.encode(_:forKey:) in conformance KeyedContainer<A>(__int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  KeyedContainer.encode<A>(_:forKey:)(&v3, a2, a3, MEMORY[0x1E69E7290]);
}

{
  v3 = a1;
  KeyedContainer.encode<A>(_:forKey:)(&v3, a2, a3, MEMORY[0x1E69E75F8]);
}

void protocol witness for KeyedEncodingContainerProtocol.encode(_:forKey:) in conformance KeyedContainer<A>(int a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  KeyedContainer.encode<A>(_:forKey:)(&v3, a2, a3, MEMORY[0x1E69E72F0]);
}

{
  v3 = a1;
  KeyedContainer.encode<A>(_:forKey:)(&v3, a2, a3, MEMORY[0x1E69E7668]);
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encode(_:forKey:) in conformance KeyedContainer<A>()
{
  return KeyedEncodingContainerProtocol.encode(_:forKey:)();
}

{
  return KeyedEncodingContainerProtocol.encode(_:forKey:)();
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance KeyedContainer<A>()
{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance KeyedContainer<A>(uint64_t a1, char a2)
{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance KeyedContainer<A>(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance KeyedContainer<A>(a1, a2, a3, a4, MEMORY[0x1E69E7188]);
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance KeyedContainer<A>(a1, a2, a3, a4, MEMORY[0x1E69E71B0]);
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance KeyedContainer<A>(a1, a2, a3, a4, MEMORY[0x1E69E71D8]);
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance KeyedContainer<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance KeyedContainer<A>(a1, a2, a3, a4, MEMORY[0x1E69E71A0]);
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance KeyedContainer<A>(a1, a2, a3, a4, MEMORY[0x1E69E71A8]);
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance KeyedContainer<A>(a1, a2, a3, a4, MEMORY[0x1E69E71C0]);
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance KeyedContainer<A>(a1, a2, a3, a4, MEMORY[0x1E69E71D0]);
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance KeyedContainer<A>(uint64_t a1, uint64_t a2, char a3)
{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

void SingleValueContainer.encodeNil()()
{
  if (v0[8] == 1)
  {
    v1 = *(*v0 + 16);
    if (v1)
    {
      outlined init with copy of FindResult(*v0 + 40 * v1 - 8, v9);
      __swift_project_boxed_opaque_existential_1(v9, v9[3]);
      v2 = v0;
      v3 = dispatch thunk of CodingKey.stringValue.getter();
      v5 = v4;
      __swift_destroy_boxed_opaque_existential_0(v9);
      v6 = *(v2 + 2);
      v7 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
      v8 = MEMORY[0x1DA6CCED0](v3, v5);

      [v6 setValue:v7 forKey:v8];
    }
  }
}

void specialized SingleValueContainer.encode<A>(_:)(uint64_t a1, __n128 a2)
{
  v3 = *(*v2 + 16);
  if (v3)
  {
    v4 = v2;
    outlined init with copy of FindResult(*v2 + 40 * v3 - 8, v12);
    __swift_project_boxed_opaque_existential_1(v12, v12[3]);
    v5 = dispatch thunk of CodingKey.stringValue.getter();
    v7 = v6;
    __swift_destroy_boxed_opaque_existential_0(v12);
    v8.super.super.isa = Bool._bridgeToObjectiveC()().super.super.isa;
    v9 = *(v4 + 16);
    v10 = v8.super.super.isa;
    v11 = MEMORY[0x1DA6CCED0](v5, v7);

    [v9 setValue:v10 forKey:v11];
  }

  else
  {
    lazy protocol witness table accessor for type AnalyticsEventEncoder.EncodingError and conformance AnalyticsEventEncoder.EncodingError();
    swift_allocError();
    swift_willThrow();
  }
}

{
  v3 = *(*v2 + 16);
  if (v3)
  {
    v4 = v2;
    outlined init with copy of FindResult(*v2 + 40 * v3 - 8, v12);
    __swift_project_boxed_opaque_existential_1(v12, v12[3]);
    v5 = dispatch thunk of CodingKey.stringValue.getter();
    v7 = v6;
    __swift_destroy_boxed_opaque_existential_0(v12);
    v8.super.super.isa = CGFloat._bridgeToObjectiveC()().super.super.isa;
    v9 = *(v4 + 16);
    v10 = v8.super.super.isa;
    v11 = MEMORY[0x1DA6CCED0](v5, v7);

    [v9 setValue:v10 forKey:v11];
  }

  else
  {
    lazy protocol witness table accessor for type AnalyticsEventEncoder.EncodingError and conformance AnalyticsEventEncoder.EncodingError();
    swift_allocError();
    swift_willThrow();
  }
}

{
  v3 = *(*v2 + 16);
  if (v3)
  {
    v4 = v2;
    outlined init with copy of FindResult(*v2 + 40 * v3 - 8, v12);
    __swift_project_boxed_opaque_existential_1(v12, v12[3]);
    v5 = dispatch thunk of CodingKey.stringValue.getter();
    v7 = v6;
    __swift_destroy_boxed_opaque_existential_0(v12);
    v8.super.super.isa = Float._bridgeToObjectiveC()().super.super.isa;
    v9 = *(v4 + 16);
    v10 = v8.super.super.isa;
    v11 = MEMORY[0x1DA6CCED0](v5, v7);

    [v9 setValue:v10 forKey:v11];
  }

  else
  {
    lazy protocol witness table accessor for type AnalyticsEventEncoder.EncodingError and conformance AnalyticsEventEncoder.EncodingError();
    swift_allocError();
    swift_willThrow();
  }
}

void specialized SingleValueContainer.encode<A>(_:)(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = *(*v3 + 16);
  if (v4)
  {
    v5 = v3;
    outlined init with copy of FindResult(*v3 + 40 * v4 - 8, v15);
    __swift_project_boxed_opaque_existential_1(v15, v15[3]);
    v8 = dispatch thunk of CodingKey.stringValue.getter();
    v10 = v9;
    __swift_destroy_boxed_opaque_existential_0(v15);
    v11 = MEMORY[0x1DA6CCED0](a1, a2);
    v12 = *(v5 + 16);
    v13 = v11;
    v14 = MEMORY[0x1DA6CCED0](v8, v10);

    [v12 setValue:v13 forKey:v14];
  }

  else
  {
    lazy protocol witness table accessor for type AnalyticsEventEncoder.EncodingError and conformance AnalyticsEventEncoder.EncodingError();
    swift_allocError();
    swift_willThrow();
  }
}

void specialized SingleValueContainer.encode<A>(_:)(uint64_t a1, uint64_t (*a2)(uint64_t), __n128 a3)
{
  v4 = *(*v3 + 16);
  if (v4)
  {
    v6 = v3;
    outlined init with copy of FindResult(*v3 + 40 * v4 - 8, v15);
    __swift_project_boxed_opaque_existential_1(v15, v15[3]);
    v8 = dispatch thunk of CodingKey.stringValue.getter();
    v10 = v9;
    __swift_destroy_boxed_opaque_existential_0(v15);
    v11 = a2(a1);
    v12 = *(v6 + 16);
    v13 = v11;
    v14 = MEMORY[0x1DA6CCED0](v8, v10);

    [v12 setValue:v13 forKey:v14];
  }

  else
  {
    lazy protocol witness table accessor for type AnalyticsEventEncoder.EncodingError and conformance AnalyticsEventEncoder.EncodingError();
    swift_allocError();
    swift_willThrow();
  }
}

{
  v4 = *(*v3 + 16);
  if (v4)
  {
    v6 = v3;
    outlined init with copy of FindResult(*v3 + 40 * v4 - 8, v15);
    __swift_project_boxed_opaque_existential_1(v15, v15[3]);
    v8 = dispatch thunk of CodingKey.stringValue.getter();
    v10 = v9;
    __swift_destroy_boxed_opaque_existential_0(v15);
    v11 = a2(a1);
    v12 = *(v6 + 16);
    v13 = v11;
    v14 = MEMORY[0x1DA6CCED0](v8, v10);

    [v12 setValue:v13 forKey:v14];
  }

  else
  {
    lazy protocol witness table accessor for type AnalyticsEventEncoder.EncodingError and conformance AnalyticsEventEncoder.EncodingError();
    swift_allocError();
    swift_willThrow();
  }
}

{
  v4 = *(*v3 + 16);
  if (v4)
  {
    v6 = v3;
    outlined init with copy of FindResult(*v3 + 40 * v4 - 8, v15);
    __swift_project_boxed_opaque_existential_1(v15, v15[3]);
    v8 = dispatch thunk of CodingKey.stringValue.getter();
    v10 = v9;
    __swift_destroy_boxed_opaque_existential_0(v15);
    v11 = a2(a1);
    v12 = *(v6 + 16);
    v13 = v11;
    v14 = MEMORY[0x1DA6CCED0](v8, v10);

    [v12 setValue:v13 forKey:v14];
  }

  else
  {
    lazy protocol witness table accessor for type AnalyticsEventEncoder.EncodingError and conformance AnalyticsEventEncoder.EncodingError();
    swift_allocError();
    swift_willThrow();
  }
}

{
  v4 = *(*v3 + 16);
  if (v4)
  {
    v6 = v3;
    outlined init with copy of FindResult(*v3 + 40 * v4 - 8, v15);
    __swift_project_boxed_opaque_existential_1(v15, v15[3]);
    v8 = dispatch thunk of CodingKey.stringValue.getter();
    v10 = v9;
    __swift_destroy_boxed_opaque_existential_0(v15);
    v11 = a2(a1);
    v12 = *(v6 + 16);
    v13 = v11;
    v14 = MEMORY[0x1DA6CCED0](v8, v10);

    [v12 setValue:v13 forKey:v14];
  }

  else
  {
    lazy protocol witness table accessor for type AnalyticsEventEncoder.EncodingError and conformance AnalyticsEventEncoder.EncodingError();
    swift_allocError();
    swift_willThrow();
  }
}

void SingleValueContainer.encode<A>(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v17[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*v2 + 16);
  if (v9)
  {
    outlined init with copy of FindResult(*v2 + 40 * v9 - 8, v17);
    __swift_project_boxed_opaque_existential_1(v17, v17[3]);
    v10 = dispatch thunk of CodingKey.stringValue.getter();
    v12 = v11;
    __swift_destroy_boxed_opaque_existential_0(v17);
    (*(v6 + 16))(v8, a1, a2);
    type metadata accessor for NSObject();
    if (swift_dynamicCast())
    {
      v13 = *(v3 + 16);
      v14 = v17[0];
      v15 = MEMORY[0x1DA6CCED0](v10, v12);

      [v13 setValue:v14 forKey:v15];

      return;
    }
  }

  lazy protocol witness table accessor for type AnalyticsEventEncoder.EncodingError and conformance AnalyticsEventEncoder.EncodingError();
  swift_allocError();
  swift_willThrow();
}

void protocol witness for SingleValueEncodingContainer.encode(_:) in conformance SingleValueContainer(uint64_t a1, __n128 a2)
{
  specialized SingleValueContainer.encode<A>(_:)(a1, a2);
}

{
  specialized SingleValueContainer.encode<A>(_:)(a1, a2);
}

{
  specialized SingleValueContainer.encode<A>(_:)(a1, a2);
}

{
  specialized SingleValueContainer.encode<A>(_:)(a1, MEMORY[0x1E6969E50], a2);
}

{
  specialized SingleValueContainer.encode<A>(_:)(a1, MEMORY[0x1E696A0C0], a2);
}

{
  specialized SingleValueContainer.encode<A>(_:)(a1, MEMORY[0x1E696A0C8], a2);
}

{
  specialized SingleValueContainer.encode<A>(_:)(a1, MEMORY[0x1E696A0D8], a2);
}

{
  specialized SingleValueContainer.encode<A>(_:)(a1, MEMORY[0x1E696A100], a2);
}

{
  specialized SingleValueContainer.encode<A>(_:)(a1, MEMORY[0x1E696A038], a2);
}

{
  specialized SingleValueContainer.encode<A>(_:)(a1, MEMORY[0x1E696A120], a2);
}

{
  specialized SingleValueContainer.encode<A>(_:)(a1, MEMORY[0x1E696A128], a2);
}

{
  specialized SingleValueContainer.encode<A>(_:)(a1, MEMORY[0x1E696A130], a2);
}

{
  specialized SingleValueContainer.encode<A>(_:)(a1, MEMORY[0x1E696A140], a2);
}

uint64_t protocol witness for SingleValueEncodingContainer.encode(_:) in conformance SingleValueContainer()
{
  return SingleValueEncodingContainer.encode(_:)();
}

{
  return SingleValueEncodingContainer.encode(_:)();
}

uint64_t specialized AnalyticsEventEncoder.encode<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[3] = type metadata accessor for AnalyticsEventEncoder();
  v6[4] = lazy protocol witness table accessor for type AnalyticsEventEncoder and conformance AnalyticsEventEncoder();
  v6[0] = v3;

  dispatch thunk of Encodable.encode(to:)();
  result = __swift_destroy_boxed_opaque_existential_0(v6);
  if (!v4)
  {
    return ~(*(v3 + 40) >> 1) & 0x4000000000000000 | *(v3 + 40);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnalyticsEventEncoder and conformance AnalyticsEventEncoder()
{
  result = lazy protocol witness table cache variable for type AnalyticsEventEncoder and conformance AnalyticsEventEncoder;
  if (!lazy protocol witness table cache variable for type AnalyticsEventEncoder and conformance AnalyticsEventEncoder)
  {
    type metadata accessor for AnalyticsEventEncoder();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnalyticsEventEncoder and conformance AnalyticsEventEncoder);
  }

  return result;
}

uint64_t type metadata instantiation function for KeyedContainer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for KeyedContainer(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for KeyedContainer(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t type metadata accessor for NSObject()
{
  result = lazy cache variable for type metadata for NSObject;
  if (!lazy cache variable for type metadata for NSObject)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSObject);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnalyticsEventEncoder.EncodingError and conformance AnalyticsEventEncoder.EncodingError()
{
  result = lazy protocol witness table cache variable for type AnalyticsEventEncoder.EncodingError and conformance AnalyticsEventEncoder.EncodingError;
  if (!lazy protocol witness table cache variable for type AnalyticsEventEncoder.EncodingError and conformance AnalyticsEventEncoder.EncodingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnalyticsEventEncoder.EncodingError and conformance AnalyticsEventEncoder.EncodingError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnalyticsEventEncoder.EncodingError and conformance AnalyticsEventEncoder.EncodingError;
  if (!lazy protocol witness table cache variable for type AnalyticsEventEncoder.EncodingError and conformance AnalyticsEventEncoder.EncodingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnalyticsEventEncoder.EncodingError and conformance AnalyticsEventEncoder.EncodingError);
  }

  return result;
}

Swift::Void __swiftcall UIView.ppkSetGlassBackground()()
{
  v0 = type metadata accessor for _Glass._GlassVariant();
  MEMORY[0x1EEE9AC00](v0 - 8);
  static _Glass._GlassVariant.regular.getter();
  v1[3] = type metadata accessor for _Glass();
  v1[4] = MEMORY[0x1E69DC388];
  __swift_allocate_boxed_opaque_existential_1(v1);
  _Glass.init(_:smoothness:)();
  UIView._background.setter();
}

void @objc UIView.ppkSetGlassBackground()(void *a1)
{
  v2 = type metadata accessor for _Glass._GlassVariant();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = a1;
  static _Glass._GlassVariant.regular.getter();
  v4[3] = type metadata accessor for _Glass();
  v4[4] = MEMORY[0x1E69DC388];
  __swift_allocate_boxed_opaque_existential_1(v4);
  _Glass.init(_:smoothness:)();
  UIView._background.setter();
}

Swift::Void __swiftcall UIView.ppkSetCapsuleCornerMaskingConfiguration()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit29_UICornerMaskingConfigurationVSgMd, &_s5UIKit29_UICornerMaskingConfigurationVSgMR);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v4 - v1;
  static _UICornerMaskingConfiguration.capsule.getter();
  v3 = type metadata accessor for _UICornerMaskingConfiguration();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  UIView.cornerMaskingConfiguration.setter();
}

void @objc UIView.ppkSetCapsuleCornerMaskingConfiguration()(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit29_UICornerMaskingConfigurationVSgMd, &_s5UIKit29_UICornerMaskingConfigurationVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v7 - v3;
  v5 = a1;
  static _UICornerMaskingConfiguration.capsule.getter();
  v6 = type metadata accessor for _UICornerMaskingConfiguration();
  (*(*(v6 - 8) + 56))(v4, 0, 1, v6);
  UIView.cornerMaskingConfiguration.setter();
}

Swift::Void __swiftcall UIView.ppkSetContainerConcentricCornerMaskingConfiguration()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit29_UICornerMaskingConfigurationV11CornerStyleVSgMd, &_s5UIKit29_UICornerMaskingConfigurationV11CornerStyleVSgMR);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v8 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit29_UICornerMaskingConfigurationVSgMd, &_s5UIKit29_UICornerMaskingConfigurationVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v8 - v4;
  v6 = type metadata accessor for _UICornerMaskingConfiguration.CornerStyle();
  (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  static _UICornerMaskingConfiguration.containerConcentric(symmetric:fallbackStyle:)();
  outlined destroy of _UICornerMaskingConfiguration.CornerStyle?(v2);
  v7 = type metadata accessor for _UICornerMaskingConfiguration();
  (*(*(v7 - 8) + 56))(v5, 0, 1, v7);
  UIView.cornerMaskingConfiguration.setter();
}

uint64_t outlined destroy of _UICornerMaskingConfiguration.CornerStyle?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit29_UICornerMaskingConfigurationV11CornerStyleVSgMd, &_s5UIKit29_UICornerMaskingConfigurationV11CornerStyleVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void @objc UIView.ppkSetContainerConcentricCornerMaskingConfiguration()(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit29_UICornerMaskingConfigurationV11CornerStyleVSgMd, &_s5UIKit29_UICornerMaskingConfigurationV11CornerStyleVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit29_UICornerMaskingConfigurationVSgMd, &_s5UIKit29_UICornerMaskingConfigurationVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - v6;
  v8 = type metadata accessor for _UICornerMaskingConfiguration.CornerStyle();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  v9 = a1;
  static _UICornerMaskingConfiguration.containerConcentric(symmetric:fallbackStyle:)();
  outlined destroy of _UICornerMaskingConfiguration.CornerStyle?(v4);
  v10 = type metadata accessor for _UICornerMaskingConfiguration();
  (*(*(v10 - 8) + 56))(v7, 0, 1, v10);
  UIView.cornerMaskingConfiguration.setter();
}

uint64_t UIView.ppkSetFixedCornerMaskingConfiguration(radius:)(double a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit29_UICornerMaskingConfigurationVSgMd, &_s5UIKit29_UICornerMaskingConfigurationVSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v6 - v2;
  static _UICornerMaskingConfiguration.fixed(_:)();
  v4 = type metadata accessor for _UICornerMaskingConfiguration();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  return UIView.cornerMaskingConfiguration.setter();
}

void @objc UIView.ppkSetFixedCornerMaskingConfiguration(radius:)(void *a1, double a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit29_UICornerMaskingConfigurationVSgMd, &_s5UIKit29_UICornerMaskingConfigurationVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v8 - v4;
  v6 = a1;
  static _UICornerMaskingConfiguration.fixed(_:)();
  v7 = type metadata accessor for _UICornerMaskingConfiguration();
  (*(*(v7 - 8) + 56))(v5, 0, 1, v7);
  UIView.cornerMaskingConfiguration.setter();
}

uint64_t PrincipalLine.encode(to:)(void *a1, double a2, double a3, double a4, double a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8PaperKit13PrincipalLineV10CodingKeys33_FA3BC07C6EE4164F2F803048E50D677ELLOGMd, &_ss22KeyedEncodingContainerVy8PaperKit13PrincipalLineV10CodingKeys33_FA3BC07C6EE4164F2F803048E50D677ELLOGMR);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v16 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PrincipalLine.CodingKeys and conformance PrincipalLine.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = a2;
  v17 = a3;
  v18 = 0;
  type metadata accessor for CGPoint(0);
  _s8PaperKit15PKDrawingStructVAC9Coherence4CRDTAAWlTm_0(&lazy protocol witness table cache variable for type CGPoint and conformance CGPoint, type metadata accessor for CGPoint, MEMORY[0x1E695EFA8]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v5)
  {
    v16 = a4;
    v17 = a5;
    v18 = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v12 + 8))(v14, v11);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance PrincipalLine.CodingKeys()
{
  if (*v0)
  {
    return 6581861;
  }

  else
  {
    return 0x7472617473;
  }
}

void protocol witness for CodingKey.init(stringValue:) in conformance PrincipalLine.CodingKeys(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7472617473 && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 6581861 && a2 == 0xE300000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PrincipalLine.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PrincipalLine.CodingKeys and conformance PrincipalLine.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PrincipalLine.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PrincipalLine.CodingKeys and conformance PrincipalLine.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void protocol witness for Decodable.init(from:) in conformance PrincipalLine(double *a1@<X8>, void *a2@<X0>)
{
  v4 = specialized PrincipalLine.init(from:)(a2);
  if (!v2)
  {
    *a1 = v4;
    *(a1 + 1) = v5;
    *(a1 + 2) = v6;
    *(a1 + 3) = v7;
  }
}

void ReflowWord.baselineDelta.getter()
{
  [*(v0 + 280) _canvasBounds];
  CGRectGetWidth(v2);
  [*(v0 + 280) _canvasBounds];
  CGRectGetHeight(v3);

  UnknownCanvasElementView.flags.modify();
}

void *ReflowWord.init(reflowableTextToken:drawing:scale:image:)(void *a1, void *a2, void *a3, CGFloat a4)
{
  v180 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v187 = &v173 - v9;
  v186 = type metadata accessor for PKStrokeInheritedProperties(0);
  MEMORY[0x1EEE9AC00](v186);
  v199 = &v173 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v219 = &v173 - v12;
  v13 = type metadata accessor for PKStrokeStruct(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v208 = &v173 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = type metadata accessor for TaggedStroke(0);
  MEMORY[0x1EEE9AC00](v198);
  v200 = &v173 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v197 = &v173 - v17;
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd, &_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMR);
  v189 = *(v207 - 8);
  MEMORY[0x1EEE9AC00](v207);
  v196 = &v173 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMd, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMR);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v218 = &v173 - v20;
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMd, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMR);
  v188 = *(v195 - 8);
  MEMORY[0x1EEE9AC00](v195);
  v185 = &v173 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR);
  v204 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v213 = &v173 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGSgMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGSgMR);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v203 = &v173 - v25;
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV8IteratorVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG_GMd, &_s9Coherence12CROrderedSetV8IteratorVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG_GMR);
  v176 = *(v206 - 8);
  MEMORY[0x1EEE9AC00](v206);
  v205 = &v173 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd, &_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMR);
  v178 = *(v27 - 8);
  v179 = v27;
  MEMORY[0x1EEE9AC00](v27);
  v202 = &v173 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v177 = &v173 - v30;
  *&v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd, &_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMR);
  v217 = *(v221 - 8);
  MEMORY[0x1EEE9AC00](v221);
  v184 = &v173 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  *&v220 = &v173 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v183 = &v173 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v194 = &v173 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v193 = &v173 - v39;
  v40 = type metadata accessor for UUID();
  MEMORY[0x1EEE9AC00](v40 - 8);
  *&v210 = &v173 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v216 = COERCE_DOUBLE(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR));
  v211 = *(*&v216 - 8);
  MEMORY[0x1EEE9AC00](*&v216);
  *&v209 = &v173 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  *&v215 = &v173 - v44;
  *(v4 + 312) = 0;
  *(v4 + 344) = 1;
  *(v4 + 304) = a3;
  v175 = a3;
  v45 = [a1 string];
  v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v48 = v47;

  *(v4 + 320) = v46;
  *(v4 + 328) = v48;
  v182 = v4;
  objc_opt_self();
  v181 = a1;
  v49 = swift_dynamicCastObjCClass();
  v201 = v22;
  if (v49)
  {
    v50 = [v49 strokeIdentifiers];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18CHStrokeIdentifier_pMd, &_sSo18CHStrokeIdentifier_pMR);
    v51 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v51 >> 62)
    {
      goto LABEL_22;
    }

    for (i = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
    {
      v53 = 0;
      v214 = v51 & 0xC000000000000001;
      v212 = v51 & 0xFFFFFFFFFFFFFF8;
      v54 = (v211 + 32);
      v55 = MEMORY[0x1E69E7CC0];
      while (v214)
      {
        MEMORY[0x1DA6CE0C0](v53, v51);
        v56 = v53 + 1;
        if (__OFADD__(v53, 1))
        {
          goto LABEL_20;
        }

LABEL_10:
        type metadata accessor for PKStrokeProviderSliceIdentifierCoherence(0);
        v57 = swift_dynamicCastClass();
        if (v57)
        {
          v58 = [v57 strokeUUID];
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<TaggedStroke> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd, &_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMR, MEMORY[0x1E6995078]);
          v59 = v209;
          WeakRef.init(id:)();
          swift_unknownObjectRelease();
          v60 = *v54;
          (*v54)(COERCE_CGFLOAT(*&v215), v59, COERCE_CGFLOAT(*&v216));
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v55[2] + 1, 1, v55);
          }

          v62 = v55[2];
          v61 = v55[3];
          if (v62 >= v61 >> 1)
          {
            v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v61 > 1), v62 + 1, 1, v55);
          }

          v55[2] = v62 + 1;
          (v60)(v55 + ((v211[80] + 32) & ~v211[80]) + *(v211 + 9) * v62, *&v215, *&v216);
        }

        else
        {
          swift_unknownObjectRelease();
        }

        ++v53;
        if (v56 == i)
        {
          goto LABEL_24;
        }
      }

      if (v53 >= *(v212 + 16))
      {
        goto LABEL_21;
      }

      swift_unknownObjectRetain();
      v56 = v53 + 1;
      if (!__OFADD__(v53, 1))
      {
        goto LABEL_10;
      }

LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      ;
    }

    v55 = MEMORY[0x1E69E7CC0];
LABEL_24:

    v22 = v201;
  }

  else
  {
    v55 = MEMORY[0x1E69E7CC0];
  }

  v182[36] = v55;
  v63 = v180;
  [v180 _canvasBounds];
  if (CGRectIsEmpty(v240) || ([v63 _canvasBounds], !CGRect.isFinite.getter(v64, v65, v66, v67)))
  {
    [v63 bounds];
    [v63 set_canvasBounds_];
  }

  [v63 _canvasBounds];
  v69 = v68;
  v71 = v70;
  v73 = v72;
  v75 = v74;
  if (fabs(a4 + -1.0) <= 0.01)
  {
    v76 = v63;
  }

  else
  {
    CGAffineTransformMakeScale(&v233, a4, a4);
    v76 = PKDrawingCoherence.applyTransform(_:transformInk:)(&v233, 0);
  }

  v77 = v182;
  v182[35] = v76;
  v78 = v76;
  [v78 _canvasBounds];
  v242 = CGRectIntegral(v241);
  [v78 set:v242.origin.x canvasBounds:{v242.origin.y, v242.size.width, v242.size.height}];

  v79 = v181;
  [v181 bounds];
  v222.a = v80;
  v222.b = 0.0;
  v222.c = 0.0;
  v222.d = v82;
  v222.tx = v81 - v80 * 0.0;
  v222.ty = v83 - v82 * 0.0;
  t2.a = 1.0 / v73;
  t2.b = 0.0;
  t2.c = 0.0;
  t2.d = 1.0 / v75;
  t2.tx = 0.0 - v69 * (1.0 / v73);
  t2.ty = 0.0 - v71 * (1.0 / v75);
  CGAffineTransformConcat(&v231, &v222, &t2);
  a = v231.a;
  b = v231.b;
  c = v231.c;
  d = v231.d;
  tx = v231.tx;
  ty = v231.ty;
  [v79 principalLines];
  v215 = v227;
  v216 = v226;
  v222.a = a;
  v222.b = b;
  v222.c = c;
  v222.d = d;
  v222.tx = tx;
  v222.ty = ty;
  v90 = CGPointApplyAffineTransform(v225, &v222);
  v222.a = a;
  v222.b = b;
  v222.c = c;
  v222.d = d;
  v222.tx = tx;
  v222.ty = ty;
  v234.y = v215;
  v234.x = v216;
  v91 = CGPointApplyAffineTransform(v234, &v222);
  *(v77 + 19) = v90;
  *(v77 + 21) = v91;
  [v79 principalLines];
  v235.x = v222.a;
  v235.y = v222.b;
  v215 = v222.d;
  v216 = v222.c;
  v222.a = a;
  v222.b = b;
  v222.c = c;
  v222.d = d;
  v222.tx = tx;
  v222.ty = ty;
  v92 = CGPointApplyAffineTransform(v235, &v222);
  v222.a = a;
  v222.b = b;
  v222.c = c;
  v222.d = d;
  v222.tx = tx;
  v222.ty = ty;
  v236.y = v215;
  v236.x = v216;
  v93 = CGPointApplyAffineTransform(v236, &v222);
  *(v77 + 31) = v92;
  *(v77 + 33) = v93;
  [v79 principalLines];
  v237 = *&v222.tx;
  v215 = v224;
  v216 = v223;
  v222.a = a;
  v222.b = b;
  v222.c = c;
  v222.d = d;
  v222.tx = tx;
  v222.ty = ty;
  v94 = CGPointApplyAffineTransform(v237, &v222);
  v222.a = a;
  v222.b = b;
  v222.c = c;
  v222.d = d;
  v222.tx = tx;
  v222.ty = ty;
  v238.y = v215;
  v238.x = v216;
  v95 = CGPointApplyAffineTransform(v238, &v222);
  *(v77 + 23) = v94;
  *(v77 + 25) = v95;
  [v79 principalLines];
  v215 = v230;
  v216 = v229;
  v222.a = a;
  v222.b = b;
  v222.c = c;
  v222.d = d;
  v222.tx = tx;
  v222.ty = ty;
  v96 = CGPointApplyAffineTransform(v228, &v222);
  v222.a = a;
  v222.b = b;
  v222.c = c;
  v222.d = d;
  v222.tx = tx;
  v222.ty = ty;
  v239.y = v215;
  v239.x = v216;
  v97 = CGPointApplyAffineTransform(v239, &v222);
  *(v77 + 27) = v96;
  *(v77 + 29) = v97;
  v77[42] = [v79 textSize];
  v98 = *(v77 + 23);
  v99 = *(v77 + 25);
  if (v98 < 0.0)
  {
    v100 = 0.0 - v98 / (v99 - v98);
    v98 = v98 + (v99 - v98) * v100;
    v101 = *(v77 + 24) + v100 * (*(v77 + 26) - *(v77 + 24));
    *(v77 + 23) = v98;
    *(v77 + 24) = v101;
  }

  v102 = v203;
  if (v99 > 1.0)
  {
    v103 = v99 - v98;
    v104 = 1.0 - v98 / v103;
    v105 = v98 + v103 * v104;
    v106 = *(v77 + 24) + v104 * (*(v77 + 26) - *(v77 + 24));
    *(v77 + 25) = v105;
    *(v77 + 26) = v106;
  }

  v107 = *(v77 + 35);
  v108 = OBJC_IVAR___PKDrawingCoherence_model;
  swift_beginAccess();
  v109 = v217;
  v110 = *(v217 + 16);
  v214 = v217 + 16;
  v215 = *&v108;
  v111 = &v107[v108];
  v112 = v193;
  v113 = v221;
  v212 = v110;
  v110(v193, v111, v221);
  swift_getKeyPath();
  v216 = *&v107;
  v174 = v107;
  v114 = v177;
  Capsule.subscript.getter();

  v115 = *(v109 + 8);
  v217 = v109 + 8;
  v211 = v115;
  (v115)(v112, v113);
  (*(v178 + 16))(v202, v114, v179);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<Ref<CRRegister<TaggedStroke>>> and conformance CROrderedSet<A>, &_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd, &_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMR, MEMORY[0x1E6995150]);
  dispatch thunk of Sequence.makeIterator()();
  v193 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<Ref<CRRegister<TaggedStroke>>>.Iterator and conformance CROrderedSet<A>.Iterator, &_s9Coherence12CROrderedSetV8IteratorVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG_GMd, &_s9Coherence12CROrderedSetV8IteratorVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG_GMR, MEMORY[0x1E6995120]);
  dispatch thunk of IteratorProtocol.next()();
  v116 = v204;
  v191 = *(v204 + 48);
  v192 = v204 + 48;
  if (v191(v102, 1, v22) == 1)
  {
    v202 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v133 = *(v116 + 32);
    v132 = v116 + 32;
    ++v189;
    v190 = v133;
    v134 = (v188 + 6);
    v135 = v188 + 1;
    v136 = (v188 + 4);
    v202 = MEMORY[0x1E69E7CC0];
    v188 = (v132 - 24);
    v137 = v200;
    v204 = v132;
    do
    {
      v190(v213, v102, v22);
      v139 = v194;
      v140 = v221;
      (v212)(v194, *&v216 + *&v215, v221);
      v141 = type metadata accessor for PKDrawingStruct(0);
      v142 = _s8PaperKit15PKDrawingStructVAC9Coherence4CRDTAAWlTm_0(&lazy protocol witness table cache variable for type PKDrawingStruct and conformance PKDrawingStruct, type metadata accessor for PKDrawingStruct, &protocol conformance descriptor for PKDrawingStruct);
      v143 = v196;
      *&v210 = v141;
      *&v209 = v142;
      Ref.subscript.getter();
      (v211)(v139, v140);
      v144 = v197;
      v145 = v207;
      CRRegister.value.getter();
      (*v189)(v143, v145);
      outlined init with take of TaggedStroke(v144, v137);
      if (swift_getEnumCaseMultiPayload())
      {
        outlined destroy of TaggedStroke(v137, type metadata accessor for TaggedStroke);
        v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMR);
        (*(*(v146 - 8) + 56))(v218, 1, 1, v146);
      }

      else
      {
        v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMR);
        v148 = v137;
        v149 = *(v147 - 8);
        v150 = v218;
        (*(v149 + 32))(v218, v148, v147);
        (*(v149 + 56))(v150, 0, 1, v147);
      }

      v151 = v195;
      v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMR);
      v153 = *(v152 - 8);
      if ((*(v153 + 48))(v218, 1, v152) == 1)
      {
        v22 = v201;
        (*v188)(v213, v201);
        outlined destroy of StocksKitCurrencyCache.Provider?(v218, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMd, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMR);
      }

      else
      {
        v154 = v183;
        v155 = v212;
        (v212)(v183, *&v216 + *&v215, v221);
        v156 = v218;
        Ref.subscript.getter();
        v157 = v154;
        v158 = v221;
        (v211)(v157, v221);
        (*(v153 + 8))(v156, v152);
        v155(v220, *&v216 + *&v215, v158);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMR);
        v159 = v185;
        CRRegister.wrappedValue.getter();
        lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Capsule<PKDrawingStruct> and conformance Capsule<A>, &_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd, &_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMR, MEMORY[0x1E6995458]);
        for (j = v187; ; (*v136)(v159, j, v151))
        {
          v161 = v219;
          Ref.subscript.getter();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMR);
          CRRegister.wrappedValue.getter();
          outlined destroy of TaggedStroke(v161, type metadata accessor for PKStrokeInheritedProperties);
          if ((*v134)(j, 1, v151) == 1)
          {
            break;
          }

          (*v135)(v159, v151);
        }

        outlined destroy of StocksKitCurrencyCache.Provider?(j, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMR);
        outlined destroy of TaggedStroke(v208, type metadata accessor for PKStrokeStruct);
        v162 = v221;
        v163 = v211;
        (v211)(v220, v221);
        v164 = v184;
        (v212)(v184, *&v216 + *&v215, v162);
        Ref.subscript.getter();
        v163(v164, v162);
        (*v135)(v159, v151);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMR);
        v165 = v199;
        CRRegister.wrappedValue.getter();
        outlined destroy of TaggedStroke(v165, type metadata accessor for PKStrokeInheritedProperties);
        v22 = v201;
        (*v188)(v213, v201);
        v209 = *&v222.c;
        v210 = *&v222.a;
        v166 = v222.tx;
        v167 = v222.ty;
        v168 = v202;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v168 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v168 + 2) + 1, 1, v168);
        }

        v170 = *(v168 + 2);
        v169 = *(v168 + 3);
        if (v170 >= v169 >> 1)
        {
          v168 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v169 > 1), v170 + 1, 1, v168);
        }

        *(v168 + 2) = v170 + 1;
        v202 = v168;
        v171 = &v168[48 * v170];
        v172 = v209;
        *(v171 + 2) = v210;
        *(v171 + 3) = v172;
        *(v171 + 8) = v166;
        *(v171 + 9) = v167;
      }

      v102 = v203;
      dispatch thunk of IteratorProtocol.next()();
      v138 = v191(v102, 1, v22);
      v137 = v200;
    }

    while (v138 != 1);
  }

  (*(v176 + 8))(v205, v206);
  (*(v178 + 8))(v177, v179);
  v117 = v182;
  v182[37] = v202;
  UnknownCanvasElementView.flags.modify();
  *(v117 + 1) = 0u;
  *(v117 + 2) = 0u;
  *(v117 + 3) = 0u;
  *(v117 + 4) = 0u;
  *(v117 + 5) = 0u;
  v117[12] = 0;
  v117[13] = v118;
  v117[14] = v119;
  v117[15] = -1;
  v117[16] = 0;
  *(v117 + 136) = 0;
  v117[18] = 0;
  swift_retain_n();
  v120 = v174;
  [v174 _canvasBounds];
  v122 = v121;
  v124 = v123;
  v126 = v125;
  v128 = v127;

  v117[2] = v122;
  v117[3] = v124;
  v117[4] = v126;
  v117[5] = v128;
  v117[6] = v122;
  v117[7] = v124;
  v117[8] = v126;
  v117[9] = v128;
  v129 = *(v117 + 23);
  v220 = *(v117 + 25);
  v221 = v129;

  v130 = v221;
  *(v117 + 13) = v220;
  *(v117 + 11) = v130;

  return v117;
}

unint64_t ReflowWord.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x7265646E65637361;
    v7 = 0x65646E6563736564;
    if (a1 != 10)
    {
      v7 = 0x694C657669746361;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000015;
    v9 = 0xD000000000000015;
    if (a1 != 7)
    {
      v9 = 0x74686769654878;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x656E696C65736162;
    v2 = 0x694C6E616964656DLL;
    v3 = 0x676E6977617264;
    if (a1 != 4)
    {
      v3 = 0x6F72745374786574;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x656E694C706F74;
    if (a1 != 1)
    {
      v4 = 0x65646E6563736564;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ReflowWord.CodingKeys@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized ReflowWord.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ReflowWord.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized ReflowWord.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

unint64_t protocol witness for CodingKey.init(intValue:) in conformance ReflowWord.CodingKeys@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized ReflowWord.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ReflowWord.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ReflowWord.CodingKeys and conformance ReflowWord.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ReflowWord.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ReflowWord.CodingKeys and conformance ReflowWord.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ReflowWord.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v157 = v130 - v4;
  v156 = type metadata accessor for PKStrokeInheritedProperties(0);
  MEMORY[0x1EEE9AC00](v156);
  v162 = v130 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v179 = v130 - v7;
  v8 = type metadata accessor for PKStrokeStruct(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v168 = v130 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = type metadata accessor for TaggedStroke(0);
  MEMORY[0x1EEE9AC00](v161);
  v160 = v130 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v163 = v130 - v12;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd, &_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMR);
  *&v147 = *(v159 - 8);
  MEMORY[0x1EEE9AC00](v159);
  v170 = v130 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMd, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v158 = v130 - v15;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMd, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMR);
  v146 = *(v155 - 8);
  MEMORY[0x1EEE9AC00](v155);
  v154 = v130 - v16;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR);
  v172 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165);
  v169 = v130 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGSgMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGSgMR);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v164 = v130 - v19;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV8IteratorVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG_GMd, &_s9Coherence12CROrderedSetV8IteratorVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG_GMR);
  v149 = *(v167 - 8);
  MEMORY[0x1EEE9AC00](v167);
  v166 = v130 - v20;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd, &_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMR);
  v151 = *(v152 - 8);
  MEMORY[0x1EEE9AC00](v152);
  *&v148 = v130 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v150 = v130 - v23;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd, &_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMR);
  v173 = *(v175 - 8);
  MEMORY[0x1EEE9AC00](v175);
  v174 = v130 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v153 = v130 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = v130 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = v130 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = v130 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v38 = v130 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8PaperKit10ReflowWordC10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy8PaperKit10ReflowWordC10CodingKeysOGMR);
  v171 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v41 = v130 - v40;
  *(v1 + 304) = 0;
  *(v1 + 312) = 0;
  *(v1 + 344) = 1;
  v42 = a1[3];
  v177 = a1;
  v178 = v1;
  __swift_project_boxed_opaque_existential_1(a1, v42);
  lazy protocol witness table accessor for type ReflowWord.CodingKeys and conformance ReflowWord.CodingKeys();
  v43 = v176;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v43)
  {
    v48 = v178;
    __swift_destroy_boxed_opaque_existential_0(v177);

    outlined consume of PaperKitPDFDocument??(*(v48 + 344));
    type metadata accessor for ReflowWord();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v143 = v35;
    v176 = v32;
    v144 = v38;
    v145 = v29;
    v44 = v173;
    v45 = v172;
    v186[0] = 0;
    v46 = lazy protocol witness table accessor for type PrincipalLine and conformance PrincipalLine();
    v47 = v41;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v50 = v181;
    v51 = v178;
    *(v178 + 184) = v180;
    *(v51 + 200) = v50;
    v186[0] = 1;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v52 = v181;
    *(v51 + 216) = v180;
    *(v51 + 232) = v52;
    v186[0] = 2;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v53 = v181;
    *(v51 + 248) = v180;
    *(v51 + 264) = v53;
    v186[0] = 3;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v54 = v181;
    *(v51 + 152) = v180;
    *(v51 + 168) = v54;
    v55 = type metadata accessor for PKDrawingCoherence(0);
    v186[0] = 4;
    _s8PaperKit15PKDrawingStructVAC9Coherence4CRDTAAWlTm_0(&lazy protocol witness table cache variable for type PKDrawingCoherence and conformance PKDrawingCoherence, type metadata accessor for PKDrawingCoherence, &protocol conformance descriptor for PKDrawingCoherence);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v131 = v39;
    v130[1] = v46;
    v132 = v47;
    v56 = v180;
    v142 = v180;
    v57 = OBJC_IVAR___PKDrawingCoherence_model;
    v139 = OBJC_IVAR___PKDrawingCoherence_model;
    swift_beginAccess();
    v138 = v55;
    v141 = *(v44 + 16);
    v58 = v56 + v57;
    v59 = v143;
    v60 = v175;
    v141(v143, v58, v175);
    v61 = v144;
    Capsule.copy()();
    v140 = *(v44 + 8);
    v140(v59, v60);
    v62 = v138;
    v63 = objc_allocWithZone(v138);
    v141(&v63[OBJC_IVAR___PKDrawingCoherence_model], v61, v60);
    v185.receiver = v63;
    v185.super_class = v62;
    v64 = objc_msgSendSuper2(&v185, sel_init);
    v140(v61, v60);
    *(v51 + 280) = v64;
    v65 = v176;
    v143 = (v44 + 16);
    v141(v176, &v142[v139], v60);
    v66 = v44 + 8;
    swift_getKeyPath();
    v67 = v150;
    Capsule.subscript.getter();

    v140(v65, v60);
    (*(v151 + 16))(v148, v67, v152);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<Ref<CRRegister<TaggedStroke>>> and conformance CROrderedSet<A>, &_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd, &_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMR, MEMORY[0x1E6995150]);
    dispatch thunk of Sequence.makeIterator()();
    v68 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<Ref<CRRegister<TaggedStroke>>>.Iterator and conformance CROrderedSet<A>.Iterator, &_s9Coherence12CROrderedSetV8IteratorVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG_GMd, &_s9Coherence12CROrderedSetV8IteratorVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG_GMR, MEMORY[0x1E6995120]);
    v69 = v164;
    v138 = v68;
    dispatch thunk of IteratorProtocol.next()();
    v70 = v45;
    v71 = v45 + 48;
    v72 = *(v45 + 48);
    v73 = v165;
    v137 = v71;
    v136 = v72;
    if (v72(v69, 1, v165) == 1)
    {
      v146 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v173 = v66;
      v76 = *(v70 + 32);
      v75 = v70 + 32;
      v135 = v76;
      v134 = (v147 + 8);
      v77 = v146 + 48;
      v78 = v146 + 8;
      v176 = v146 + 32;
      v146 = MEMORY[0x1E69E7CC0];
      v133 = (v75 - 24);
      v79 = v163;
      v172 = v75;
      v76(v169, v69, v73);
      while (1)
      {
        v84 = v145;
        v85 = v175;
        v141(v145, &v142[v139], v175);
        v86 = type metadata accessor for PKDrawingStruct(0);
        v87 = _s8PaperKit15PKDrawingStructVAC9Coherence4CRDTAAWlTm_0(&lazy protocol witness table cache variable for type PKDrawingStruct and conformance PKDrawingStruct, type metadata accessor for PKDrawingStruct, &protocol conformance descriptor for PKDrawingStruct);
        *&v148 = v86;
        *&v147 = v87;
        Ref.subscript.getter();
        v140(v84, v85);
        v88 = v159;
        CRRegister.value.getter();
        (*v134)(v170, v88);
        v89 = v160;
        outlined init with take of TaggedStroke(v79, v160);
        if (swift_getEnumCaseMultiPayload())
        {
          outlined destroy of TaggedStroke(v89, type metadata accessor for TaggedStroke);
          v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMR);
          v91 = v158;
          (*(*(v90 - 8) + 56))(v158, 1, 1, v90);
        }

        else
        {
          v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMR);
          v93 = *(v92 - 8);
          v94 = v89;
          v91 = v158;
          (*(v93 + 32))(v158, v94, v92);
          (*(v93 + 56))(v91, 0, 1, v92);
        }

        v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMR);
        v96 = *(v95 - 8);
        if ((*(v96 + 48))(v91, 1, v95) == 1)
        {
          v80 = v169;
          v81 = v165;
          (*v133)(v169, v165);
          outlined destroy of StocksKitCurrencyCache.Provider?(v91, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMd, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMR);
        }

        else
        {
          v97 = v153;
          v141(v153, &v142[v139], v175);
          Ref.subscript.getter();
          v98 = v97;
          v99 = v175;
          v140(v98, v175);
          (*(v96 + 8))(v91, v95);
          v141(v174, &v142[v139], v99);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMR);
          v100 = v154;
          CRRegister.wrappedValue.getter();
          lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Capsule<PKDrawingStruct> and conformance Capsule<A>, &_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd, &_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMR, MEMORY[0x1E6995458]);
          v101 = v157;
          for (i = v155; ; (*v176)(v100, v101, i))
          {
            Ref.subscript.getter();
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMR);
            CRRegister.wrappedValue.getter();
            outlined destroy of TaggedStroke(v179, type metadata accessor for PKStrokeInheritedProperties);
            if ((*v77)(v101, 1, i) == 1)
            {
              break;
            }

            (*v78)(v100, i);
          }

          outlined destroy of StocksKitCurrencyCache.Provider?(v101, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMR);
          outlined destroy of TaggedStroke(v168, type metadata accessor for PKStrokeStruct);
          v103 = v175;
          v140(v174, v175);
          v104 = v144;
          v141(v144, &v142[v139], v103);
          Ref.subscript.getter();
          v140(v104, v103);
          (*v78)(v100, i);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMR);
          v105 = v162;
          CRRegister.wrappedValue.getter();
          outlined destroy of TaggedStroke(v105, type metadata accessor for PKStrokeInheritedProperties);
          v80 = v169;
          v81 = v165;
          (*v133)(v169, v165);
          v147 = v181;
          v148 = v180;
          v106 = v182;
          v107 = v183;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v146 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v146 + 2) + 1, 1, v146);
          }

          v109 = *(v146 + 2);
          v108 = *(v146 + 3);
          if (v109 >= v108 >> 1)
          {
            v146 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v108 > 1), v109 + 1, 1, v146);
          }

          v110 = v146;
          *(v146 + 2) = v109 + 1;
          v111 = &v110[48 * v109];
          v112 = v147;
          *(v111 + 2) = v148;
          *(v111 + 3) = v112;
          *(v111 + 8) = v106;
          *(v111 + 9) = v107;
        }

        v82 = v164;
        dispatch thunk of IteratorProtocol.next()();
        v83 = v136(v82, 1, v81);
        v79 = v163;
        if (v83 == 1)
        {
          break;
        }

        v135(v80, v82, v81);
      }
    }

    (*(v149 + 8))(v166, v167);
    (*(v151 + 8))(v150, v152);
    *(v51 + 296) = v146;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd, &_sSay9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMR);
    v184 = 5;
    lazy protocol witness table accessor for type [WeakRef<CRRegister<TaggedStroke>>] and conformance <A> [A](&lazy protocol witness table cache variable for type [WeakRef<CRRegister<TaggedStroke>>] and conformance <A> [A], &lazy protocol witness table cache variable for type WeakRef<CRRegister<TaggedStroke>> and conformance WeakRef<A>, MEMORY[0x1E6995488], MEMORY[0x1E69E6330]);
    v74 = v131;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v51 + 288) = v180;
    *(v51 + 320) = 0;
    *(v51 + 328) = 0;
    v184 = 8;
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v113 = *&v180;
    v184 = 9;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v114 = *&v180;
    v184 = 2;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v115 = *&v180;
    LOBYTE(v180) = 11;
    v116 = [objc_allocWithZone(MEMORY[0x1E6997BD8]) initWithXHeight:KeyedDecodingContainer.decode(_:forKey:)() ascenderHeight:v113 descenderHeight:v114 activeLines:v115];
    v117 = v178;
    *(v178 + 336) = v116;
    UnknownCanvasElementView.flags.modify();
    *(v117 + 16) = 0u;
    *(v117 + 32) = 0u;
    *(v117 + 48) = 0u;
    *(v117 + 64) = 0u;
    *(v117 + 80) = 0u;
    *(v117 + 96) = 0;
    *(v117 + 104) = v118;
    *(v117 + 112) = v119;
    *(v117 + 120) = -1;
    *(v117 + 128) = 0;
    *(v117 + 136) = 0;
    *(v117 + 144) = 0;
    v184 = 6;

    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v120 = v181;
    v121 = v178;
    *(v178 + 88) = v180;
    *(v121 + 104) = v120;

    v122 = v142;
    [v142 _canvasBounds];
    *(v121 + 16) = v123;
    *(v121 + 24) = v124;
    *(v121 + 32) = v125;
    *(v121 + 40) = v126;
    LOBYTE(v180) = 7;
    v127 = v132;
    v128 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v171 + 8))(v127, v74);

    v129 = v177;
    v48 = v178;
    *(v178 + 136) = v128 & 1;
    __swift_destroy_boxed_opaque_existential_0(v129);
  }

  return v48;
}

uint64_t ReflowWord.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8PaperKit10ReflowWordC10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy8PaperKit10ReflowWordC10CodingKeysOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ReflowWord.CodingKeys and conformance ReflowWord.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = *(v3 + 200);
  v20 = *(v3 + 184);
  v21 = v9;
  v19 = 0;
  lazy protocol witness table accessor for type PrincipalLine and conformance PrincipalLine();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v10 = *(v3 + 232);
    v20 = *(v3 + 216);
    v21 = v10;
    v19 = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11 = *(v3 + 264);
    v20 = *(v3 + 248);
    v21 = v11;
    v19 = 2;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = *(v3 + 168);
    v20 = *(v3 + 152);
    v21 = v12;
    v19 = 3;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *&v20 = *(v3 + 280);
    v19 = 4;
    type metadata accessor for PKDrawingCoherence(0);
    _s8PaperKit15PKDrawingStructVAC9Coherence4CRDTAAWlTm_0(&lazy protocol witness table cache variable for type PKDrawingCoherence and conformance PKDrawingCoherence, type metadata accessor for PKDrawingCoherence, &protocol conformance descriptor for PKDrawingCoherence);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *&v20 = *(v3 + 288);
    v19 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd, &_sSay9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMR);
    lazy protocol witness table accessor for type [WeakRef<CRRegister<TaggedStroke>>] and conformance <A> [A](&lazy protocol witness table cache variable for type [WeakRef<CRRegister<TaggedStroke>>] and conformance <A> [A], &lazy protocol witness table cache variable for type WeakRef<CRRegister<TaggedStroke>> and conformance WeakRef<A>, MEMORY[0x1E6995470], MEMORY[0x1E69E6300]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = *(v3 + 104);
    v20 = *(v3 + 88);
    v21 = v13;
    v19 = 6;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v20) = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    [*(v3 + 336) xHeight];
    *&v20 = v14;
    v19 = 8;
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    [*(v3 + 336) ascenderHeight];
    *&v20 = v15;
    v19 = 9;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    [*(v3 + 336) descenderHeight];
    *&v20 = v16;
    v19 = 10;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    [*(v3 + 336) activeLines];
    LOBYTE(v20) = 11;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

id ReflowWord._layer.getter()
{
  v1 = *(v0 + 344);
  v2 = v1;
  if (v1 == 1)
  {
    v2 = closure #1 in ReflowWord._layer.getter(v0);
    v3 = *(v0 + 344);
    *(v0 + 344) = v2;
    v4 = v2;
    outlined consume of PaperKitPDFDocument??(v3);
  }

  outlined copy of CALayer??(v1);
  return v2;
}

id closure #1 in ReflowWord._layer.getter(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
  v3 = *(a1 + 304);
  if (v3 && (v4 = [v3 CGImage]) != 0)
  {
    v7 = v4;
    type metadata accessor for CGImageRef(0);
    v5 = _bridgeAnythingToObjectiveC<A>(_:)();
  }

  else
  {
    v5 = 0;
  }

  [v2 setContents_];
  swift_unknownObjectRelease();
  return v2;
}

Swift::Void __swiftcall ReflowWord.generateImage()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12 - v3;
  v5 = *(v0 + 280);
  [v5 _canvasBounds];
  v6 = [v5 imageFromRect_scale_];

  v7 = *(v1 + 304);
  *(v1 + 304) = v6;

  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  type metadata accessor for MainActor();

  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E85E0];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v1;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in ReflowWord.generateImage(), v10);
}

uint64_t closure #1 in ReflowWord.generateImage()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a1;
  v4[4] = a4;
  type metadata accessor for MainActor();
  v4[5] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in ReflowWord.generateImage(), v6, v5);
}

uint64_t closure #1 in ReflowWord.generateImage()()
{

  v1 = ReflowWord._layer.getter();
  if (v1)
  {
    v2 = *(*(v0 + 32) + 304);
    if (v2 && (v3 = [v2 CGImage]) != 0)
    {
      *(v0 + 16) = v3;
      type metadata accessor for CGImageRef(0);
      v4 = _bridgeAnythingToObjectiveC<A>(_:)();
    }

    else
    {
      v4 = 0;
    }

    [v1 setContents_];
    swift_unknownObjectRelease();
  }

  **(v0 + 24) = v1 == 0;
  v5 = *(v0 + 8);

  return v5();
}

Swift::Void __swiftcall ReflowWord.updateLayer()()
{
  v1 = ReflowWord._layer.getter();
  if (v1)
  {
    if (one-time initialization token for showDebugUI != -1)
    {
      v18 = v1;
      swift_once();
      v1 = v18;
    }

    if (static ReflowTextView.showDebugUI == 1)
    {
      v17 = v1;
      v2 = objc_opt_self();
      v3 = [v2 redColor];
      v4 = [v3 colorWithAlphaComponent_];

      v5 = [v4 CGColor];
      [v17 setBorderColor_];

      type metadata accessor for CALayer();
      isa = Array._bridgeToObjectiveC()().super.isa;
      [v17 setSublayers_];

      v7 = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
      [v7 setLineWidth_];
      v8 = [v2 redColor];
      v9 = [v8 colorWithAlphaComponent_];

      v10 = [v9 CGColor];
      [v7 setStrokeColor_];

      [v7 setFillColor_];
      v11 = closure #1 in ReflowWord.updateLayer()(v0, 0.0, 0.0, *(v0 + 64), *(v0 + 72));
      [v7 setPath_];

      [v17 addSublayer_];
      if (*(v0 + 136) == 1)
      {
        v12 = [objc_allocWithZone(MEMORY[0x1E6979508]) init];
        v13 = MEMORY[0x1DA6CCED0](46786, 0xA200000000000000);
        [v12 setString_];

        [v12 setFontSize_];
        v14 = v12;
        [v17 frame];
        [v14 setFrame_];

        v15 = [v2 systemBlueColor];
        v16 = [v15 CGColor];

        [v14 setForegroundColor_];
        [v17 addSublayer_];
      }

      v1 = v17;
    }
  }
}

CGMutablePathRef closure #1 in ReflowWord.updateLayer()(double *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  Mutable = CGPathCreateMutable();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo7CGPointVGMd, &_ss23_ContiguousArrayStorageCySo7CGPointVGMR);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D405C990;
  v12 = a1[23];
  v13 = a1[24];
  v26.origin.x = a2;
  v26.origin.y = a3;
  v26.size.width = a4;
  v26.size.height = a5;
  MinX = CGRectGetMinX(v26);
  v27.origin.x = a2;
  v27.origin.y = a3;
  v27.size.width = a4;
  v27.size.height = a5;
  v15 = MinX + v12 * CGRectGetWidth(v27);
  v28.origin.x = a2;
  v28.origin.y = a3;
  v28.size.width = a4;
  v28.size.height = a5;
  MinY = CGRectGetMinY(v28);
  v29.origin.x = a2;
  v29.origin.y = a3;
  v29.size.width = a4;
  v29.size.height = a5;
  Height = CGRectGetHeight(v29);
  *(v11 + 32) = v15;
  *(v11 + 40) = MinY + v13 * Height;
  v18 = a1[25];
  v19 = a1[26];
  v30.origin.x = a2;
  v30.origin.y = a3;
  v30.size.width = a4;
  v30.size.height = a5;
  v20 = CGRectGetMinX(v30);
  v31.origin.x = a2;
  v31.origin.y = a3;
  v31.size.width = a4;
  v31.size.height = a5;
  v21 = v20 + v18 * CGRectGetWidth(v31);
  v32.origin.x = a2;
  v32.origin.y = a3;
  v32.size.width = a4;
  v32.size.height = a5;
  v22 = CGRectGetMinY(v32);
  v33.origin.x = a2;
  v33.origin.y = a3;
  v33.size.width = a4;
  v33.size.height = a5;
  v23 = CGRectGetHeight(v33);
  *(v11 + 48) = v21;
  *(v11 + 56) = v22 + v19 * v23;
  v25.a = 1.0;
  v25.b = 0.0;
  v25.c = 0.0;
  v25.d = 1.0;
  v25.tx = 0.0;
  v25.ty = 0.0;
  CGMutablePathRef.addLines(between:transform:)(v11, &v25);

  return Mutable;
}

uint64_t ReflowWord.debugDescription.getter()
{
  _StringGuts.grow(_:)(19);
  MEMORY[0x1DA6CD010](0x57776F6C6665523CLL, 0xED0000203A64726FLL);
  if (*(v0 + 328))
  {
    v1 = *(v0 + 320);
    v2 = *(v0 + 328);
  }

  else
  {
    v2 = 0xE300000000000000;
    v1 = 4079420;
  }

  MEMORY[0x1DA6CD010](v1, v2);

  MEMORY[0x1DA6CD010](32, 0xE100000000000000);
  type metadata accessor for CGRect(0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1DA6CD010](62, 0xE100000000000000);
  return 0;
}

void ReflowWord.__ivar_destroyer()
{

  v1 = *(v0 + 344);

  outlined consume of PaperKitPDFDocument??(v1);
}

id *ReflowWord.deinit()
{

  outlined consume of PaperKitPDFDocument??(v0[43]);
  return v0;
}

uint64_t ReflowWord.__deallocating_deinit()
{
  ReflowWord.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Decodable.init(from:) in conformance ReflowWord@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for ReflowWord();
  v5 = swift_allocObject();
  result = ReflowWord.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t outlined init with take of TaggedStroke(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TaggedStroke(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of TaggedStroke(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ReflowWord.CodingKeys and conformance ReflowWord.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ReflowWord.CodingKeys and conformance ReflowWord.CodingKeys;
  if (!lazy protocol witness table cache variable for type ReflowWord.CodingKeys and conformance ReflowWord.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReflowWord.CodingKeys and conformance ReflowWord.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ReflowWord.CodingKeys and conformance ReflowWord.CodingKeys;
  if (!lazy protocol witness table cache variable for type ReflowWord.CodingKeys and conformance ReflowWord.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReflowWord.CodingKeys and conformance ReflowWord.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ReflowWord.CodingKeys and conformance ReflowWord.CodingKeys;
  if (!lazy protocol witness table cache variable for type ReflowWord.CodingKeys and conformance ReflowWord.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReflowWord.CodingKeys and conformance ReflowWord.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ReflowWord.CodingKeys and conformance ReflowWord.CodingKeys;
  if (!lazy protocol witness table cache variable for type ReflowWord.CodingKeys and conformance ReflowWord.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReflowWord.CodingKeys and conformance ReflowWord.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PrincipalLine and conformance PrincipalLine()
{
  result = lazy protocol witness table cache variable for type PrincipalLine and conformance PrincipalLine;
  if (!lazy protocol witness table cache variable for type PrincipalLine and conformance PrincipalLine)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PrincipalLine and conformance PrincipalLine);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PrincipalLine and conformance PrincipalLine;
  if (!lazy protocol witness table cache variable for type PrincipalLine and conformance PrincipalLine)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PrincipalLine and conformance PrincipalLine);
  }

  return result;
}

double specialized PrincipalLine.init(from:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8PaperKit13PrincipalLineV10CodingKeys33_FA3BC07C6EE4164F2F803048E50D677ELLOGMd, &_ss22KeyedDecodingContainerVy8PaperKit13PrincipalLineV10CodingKeys33_FA3BC07C6EE4164F2F803048E50D677ELLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PrincipalLine.CodingKeys and conformance PrincipalLine.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  type metadata accessor for CGPoint(0);
  v9 = 0;
  _s8PaperKit15PKDrawingStructVAC9Coherence4CRDTAAWlTm_0(&lazy protocol witness table cache variable for type CGPoint and conformance CGPoint, type metadata accessor for CGPoint, MEMORY[0x1E695EFC0]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v6 = v10;
  v9 = 1;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v6;
}

unint64_t lazy protocol witness table accessor for type PrincipalLine.CodingKeys and conformance PrincipalLine.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PrincipalLine.CodingKeys and conformance PrincipalLine.CodingKeys;
  if (!lazy protocol witness table cache variable for type PrincipalLine.CodingKeys and conformance PrincipalLine.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PrincipalLine.CodingKeys and conformance PrincipalLine.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PrincipalLine.CodingKeys and conformance PrincipalLine.CodingKeys;
  if (!lazy protocol witness table cache variable for type PrincipalLine.CodingKeys and conformance PrincipalLine.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PrincipalLine.CodingKeys and conformance PrincipalLine.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PrincipalLine.CodingKeys and conformance PrincipalLine.CodingKeys;
  if (!lazy protocol witness table cache variable for type PrincipalLine.CodingKeys and conformance PrincipalLine.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PrincipalLine.CodingKeys and conformance PrincipalLine.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PrincipalLine.CodingKeys and conformance PrincipalLine.CodingKeys;
  if (!lazy protocol witness table cache variable for type PrincipalLine.CodingKeys and conformance PrincipalLine.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PrincipalLine.CodingKeys and conformance PrincipalLine.CodingKeys);
  }

  return result;
}

unint64_t type metadata accessor for CALayer()
{
  result = lazy cache variable for type metadata for CALayer;
  if (!lazy cache variable for type metadata for CALayer)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CALayer);
  }

  return result;
}

id outlined copy of CALayer??(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t _s8PaperKit15PKDrawingStructVAC9Coherence4CRDTAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t lazy protocol witness table accessor for type [WeakRef<CRRegister<TaggedStroke>>] and conformance <A> [A](unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd, &_sSay9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMR);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(a2, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ReflowWord.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ReflowWord.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t specialized ReflowWord.CodingKeys.init(rawValue:)(unint64_t result)
{
  if (result >= 0xC)
  {
    return 12;
  }

  return result;
}

uint64_t specialized ReflowWord.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656E696C65736162 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656E694C706F74 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65646E6563736564 && a2 == 0xED0000656E694C72 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x694C6E616964656DLL && a2 == 0xEA0000000000656ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x676E6977617264 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6F72745374786574 && a2 == 0xEB0000000073656BLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D4088AD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D4088AF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x74686769654878 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x7265646E65637361 && a2 == 0xEE00746867696548 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x65646E6563736564 && a2 == 0xEF74686769654872 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x694C657669746361 && a2 == 0xEB0000000073656ELL)
  {

    return 11;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

id UIContextMenuConfiguration.init(identifier:previewProvider:actionProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v10 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  v18 = a2;
  v19 = a3;
  v14 = MEMORY[0x1E69E9820];
  v15 = 1107296256;
  v16 = thunk for @escaping @callee_guaranteed () -> (@owned UIViewController?);
  v17 = &block_descriptor_4;
  v10 = _Block_copy(&v14);

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v18 = a4;
  v19 = a5;
  v14 = MEMORY[0x1E69E9820];
  v15 = 1107296256;
  v16 = thunk for @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> (@owned UIMenu?);
  v17 = &block_descriptor_28;
  v11 = _Block_copy(&v14);

LABEL_6:
  v12 = [swift_getObjCClassFromMetadata() configurationWithIdentifier:a1 previewProvider:v10 actionProvider:v11];
  outlined consume of (@escaping @callee_guaranteed () -> ())?(a4, a5);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(a2, a3);
  swift_unknownObjectRelease();
  _Block_release(v11);
  _Block_release(v10);
  return v12;
}

UIMenu closure #1 in PaperDocumentViewDelegate.documentView(_:contextMenuConfigurationFor:on:suggestedActions:)(uint64_t a1, UIMenuElementSize a2)
{
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIMenu, 0x1E69DCC60);

  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v6.value.super.isa = 0;
  v6.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v3, 0, v6, 0, 0xFFFFFFFFFFFFFFFFLL, a2, v5);
}

id protocol witness for PaperDocumentViewDelegate.documentView(_:contextMenuConfigurationFor:on:suggestedActions:) in conformance PaperDocumentViewDelegate_Checker(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIContextMenuConfiguration, 0x1E69DC8D8);
  v5 = swift_allocObject();
  *(v5 + 16) = a4;

  return UIContextMenuConfiguration.init(identifier:previewProvider:actionProvider:)(0, 0, 0, partial apply for closure #1 in PaperDocumentViewDelegate.documentView(_:contextMenuConfigurationFor:on:suggestedActions:), v5);
}

BOOL protocol witness for PaperDocumentViewDelegate.documentViewShouldAllowEditing(_:) in conformance PaperDocumentViewDelegate_Checker(uint64_t a1)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type PaperDocumentView and conformance PaperDocumentView();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(a1 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__editingMode) != 0;
}

id thunk for @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> (@owned UIMenu?)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIMenuElement, 0x1E69DCC78);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = v2(v3);

  return v4;
}

id thunk for @escaping @callee_guaranteed () -> (@owned UIViewController?)(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

id specialized PaperDocumentViewDelegate.documentView(_:contextMenuConfigurationFor:on:suggestedActions:)(uint64_t a1, uint64_t a2)
{
  v3 = swift_allocObject();
  *(v3 + 16) = a2;
  v4 = objc_opt_self();
  v8[4] = closure #1 in PaperDocumentViewDelegate.documentView(_:contextMenuConfigurationFor:on:suggestedActions:)partial apply;
  v8[5] = v3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = thunk for @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> (@owned UIMenu?);
  v8[3] = &block_descriptor_11_0;
  v5 = _Block_copy(v8);

  v6 = [v4 configurationWithIdentifier:0 previewProvider:0 actionProvider:v5];

  _Block_release(v5);
  return v6;
}

unint64_t lazy protocol witness table accessor for type PaperDocumentView and conformance PaperDocumentView()
{
  result = lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView;
  if (!lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView)
  {
    type metadata accessor for PaperDocumentView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView;
  if (!lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView)
  {
    type metadata accessor for PaperDocumentView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView);
  }

  return result;
}

double block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

id PasswordViewController.textField.getter()
{
  v1 = OBJC_IVAR____TtC8PaperKit22PasswordViewController____lazy_storage___textField;
  v2 = *(v0 + OBJC_IVAR____TtC8PaperKit22PasswordViewController____lazy_storage___textField);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8PaperKit22PasswordViewController____lazy_storage___textField);
  }

  else
  {
    v4 = closure #1 in PasswordViewController.textField.getter(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

Swift::Bool __swiftcall PasswordViewController.textFieldShouldReturn(_:)(UITextField *a1)
{
  v2 = v1;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = [(UITextField *)a1 text];
    if (v4)
    {
      v5 = v4;
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0xE000000000000000;
    }

    v9 = PaperDocumentViewController.passwordViewController(_:shouldUnlockWithPassword:)(v1, v6, v8);

    swift_unknownObjectRelease();
    if (v9)
    {
      return 1;
    }
  }

  if (one-time initialization token for paperKitBundle != -1)
  {
    swift_once();
  }

  isa = paperKitBundle.super.isa;
  v34._object = 0x80000001D4088C90;
  v12._object = 0x80000001D4088C70;
  v34._countAndFlagsBits = 0xD00000000000001CLL;
  v12._countAndFlagsBits = 0xD000000000000010;
  v13.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v13.value._object = 0xEB00000000656C62;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v15 = NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v13, paperKitBundle, v14, v34);
  v35._object = 0x80000001D4088CE0;
  v16._countAndFlagsBits = 0xD000000000000020;
  v16._object = 0x80000001D4088CB0;
  v35._countAndFlagsBits = 0xD00000000000001ELL;
  v17.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v17.value._object = 0xEB00000000656C62;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  v19 = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, v17, isa, v18, v35);
  v20 = MEMORY[0x1DA6CCED0](v15._countAndFlagsBits, v15._object);

  v21 = MEMORY[0x1DA6CCED0](v19._countAndFlagsBits, v19._object);

  v22 = [objc_opt_self() alertControllerWithTitle:v20 message:v21 preferredStyle:1];

  v36._object = 0x80000001D4088D00;
  v36._countAndFlagsBits = 0xD000000000000027;
  v23._countAndFlagsBits = 19279;
  v23._object = 0xE200000000000000;
  v24.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v24.value._object = 0xEB00000000656C62;
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  v26 = NSLocalizedString(_:tableName:bundle:value:comment:)(v23, v24, isa, v25, v36);
  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v28 = swift_allocObject();
  *(v28 + 16) = v27;
  *(v28 + 24) = a1;

  v29 = a1;
  v30 = MEMORY[0x1DA6CCED0](v26._countAndFlagsBits, v26._object);

  aBlock[4] = partial apply for closure #1 in PasswordViewController.textFieldShouldReturn(_:);
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIBandSelectionInteraction) -> ();
  aBlock[3] = &block_descriptor_29;
  v31 = _Block_copy(aBlock);

  v32 = [objc_opt_self() actionWithTitle:v30 style:0 handler:v31];
  _Block_release(v31);

  [v22 addAction_];
  [v2 presentViewController:v22 animated:1 completion:0];

  return 0;
}

id closure #1 in PasswordViewController.textField.getter(uint64_t a1)
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69DD0B0]) init];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  [v1 setSecureTextEntry_];
  v2 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
  [v2 setAlignment_];
  if (one-time initialization token for paperKitBundle != -1)
  {
    swift_once();
  }

  v24._object = 0x80000001D4088D30;
  v3._countAndFlagsBits = 0x64726F7773736150;
  v4.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v4.value._object = 0xEB00000000656C62;
  v3._object = 0xE800000000000000;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v24._countAndFlagsBits = 0xD000000000000023;
  v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v4, paperKitBundle, v5, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd, &_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D405C990;
  v8 = *MEMORY[0x1E69DB688];
  *(inited + 32) = *MEMORY[0x1E69DB688];
  v9 = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSMutableParagraphStyle, 0x1E69DB7C8);
  *(inited + 40) = v2;
  v10 = *MEMORY[0x1E69DB650];
  *(inited + 64) = v9;
  *(inited + 72) = v10;
  v11 = objc_opt_self();
  v12 = v8;
  v13 = v2;
  v14 = v10;
  v15 = [v11 placeholderTextColor];
  *(inited + 104) = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIColor, 0x1E69DC888);
  *(inited + 80) = v15;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21NSAttributedStringKeya_yptMd, &_sSo21NSAttributedStringKeya_yptMR);
  swift_arrayDestroy();
  v16 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v17 = MEMORY[0x1DA6CCED0](v6._countAndFlagsBits, v6._object);

  type metadata accessor for NSAttributedStringKey(0);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v19 = [v16 initWithString:v17 attributes:isa];

  [v1 setAttributedPlaceholder_];
  v20 = [v11 systemBackgroundColor];
  [v1 setBackgroundColor_];

  v21 = [v11 secondaryLabelColor];
  [v1 setTextColor_];

  [v1 setTextAlignment_];
  [v1 setDelegate_];
  [v1 setReturnKeyType_];

  return v1;
}

Swift::Void __swiftcall PasswordViewController.loadView()()
{
  v39.receiver = v0;
  v39.super_class = type metadata accessor for PasswordViewController();
  objc_msgSendSuper2(&v39, sel_loadView);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 setTranslatesAutoresizingMaskIntoConstraints_];
    v3 = objc_opt_self();
    v4 = [v3 secondarySystemBackgroundColor];
    [v2 setBackgroundColor_];

    v5 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    if (one-time initialization token for paperKitBundle != -1)
    {
      swift_once();
    }

    v40._object = 0x80000001D4088C50;
    v6.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v6.value._object = 0xEB00000000656C62;
    v7._countAndFlagsBits = 0xD000000000000024;
    v7._object = 0x80000001D4088C20;
    v8._countAndFlagsBits = 0;
    v8._object = 0xE000000000000000;
    v40._countAndFlagsBits = 0xD000000000000019;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v6, paperKitBundle, v8, v40)._countAndFlagsBits;
    v10 = MEMORY[0x1DA6CCED0](countAndFlagsBits);

    [v5 setText_];

    v11 = [v3 secondaryLabelColor];
    [v5 setTextColor_];

    v12 = PasswordViewController.textField.getter();
    [v2 addSubview_];
    v13 = v12;
    [v2 addSubview_];
    v14 = [v13 bottomAnchor];
    v15 = [v2 centerYAnchor];
    v37 = [v14 constraintEqualToAnchor_];

    LODWORD(v16) = 1144750080;
    [v37 setPriority_];
    v17 = [v13 bottomAnchor];

    v18 = [v2 keyboardLayoutGuide];
    v19 = [v18 topAnchor];

    v36 = [v17 constraintLessThanOrEqualToAnchor:v19 constant:-2.0];
    v38 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1D4065C70;
    v21 = [v13 widthAnchor];

    v22 = [v5 widthAnchor];
    v23 = [v21 constraintEqualToAnchor_];

    *(v20 + 32) = v23;
    v24 = [v13 centerXAnchor];

    v25 = [v2 centerXAnchor];
    v26 = [v24 constraintEqualToAnchor_];

    *(v20 + 40) = v26;
    v27 = [v5 centerXAnchor];
    v28 = [v2 centerXAnchor];
    v29 = [v27 constraintEqualToAnchor_];

    *(v20 + 48) = v29;
    v30 = [v5 bottomAnchor];

    v31 = [v13 topAnchor];
    v32 = [v30 constraintEqualToAnchor:v31 constant:-*&v0[OBJC_IVAR____TtC8PaperKit22PasswordViewController_distanceFromLabelToTextField]];

    *(v20 + 56) = v32;
    *(v20 + 64) = v36;
    *(v20 + 72) = v37;
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);
    v33 = v36;
    v34 = v37;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v38 activateConstraints_];
  }
}

void closure #1 in PasswordViewController.textFieldShouldReturn(_:)(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_allocObject();
    *(v6 + 16) = a3;
    aBlock[4] = partial apply for closure #1 in closure #1 in PasswordViewController.textFieldShouldReturn(_:);
    aBlock[5] = v6;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_19_0;
    v7 = _Block_copy(aBlock);
    v8 = a3;

    [v5 dismissViewControllerAnimated:1 completion:v7];
    _Block_release(v7);
  }
}

id closure #1 in closure #1 in PasswordViewController.textFieldShouldReturn(_:)(void *a1)
{
  v2 = MEMORY[0x1DA6CCED0](0, 0xE000000000000000);
  [a1 setText_];

  return [a1 becomeFirstResponder];
}

id PasswordViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC8PaperKit22PasswordViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC8PaperKit22PasswordViewController_distanceFromLabelToTextField] = 0x4034000000000000;
  *&v3[OBJC_IVAR____TtC8PaperKit22PasswordViewController_distanceFromTopOfKeyboard] = 0x4000000000000000;
  *&v3[OBJC_IVAR____TtC8PaperKit22PasswordViewController____lazy_storage___textField] = 0;
  if (a2)
  {
    v7 = MEMORY[0x1DA6CCED0](a1, a2);
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = type metadata accessor for PasswordViewController();
  v8 = objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, v7, a3);

  return v8;
}

id PasswordViewController.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC8PaperKit22PasswordViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC8PaperKit22PasswordViewController_distanceFromLabelToTextField] = 0x4034000000000000;
  *&v1[OBJC_IVAR____TtC8PaperKit22PasswordViewController_distanceFromTopOfKeyboard] = 0x4000000000000000;
  *&v1[OBJC_IVAR____TtC8PaperKit22PasswordViewController____lazy_storage___textField] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PasswordViewController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id PasswordViewController.__deallocating_deinit(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PasswordViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

double block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey()
{
  result = lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey;
  if (!lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey)
  {
    type metadata accessor for NSAttributedStringKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey);
  }

  return result;
}

void CalculateDocumentController.mathDidUpdateExpressions(_:newExpressions:removedExpressions:mathItems:)(unint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v236 = &v197 - v11;
  v12 = type metadata accessor for CalculateExpression.Base();
  v239 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v197 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = type metadata accessor for DispatchWorkItemFlags();
  v224 = *(v214 - 8);
  MEMORY[0x1EEE9AC00](v214);
  v213 = &v197 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v212 = type metadata accessor for DispatchQoS();
  v222 = *(v212 - 8);
  MEMORY[0x1EEE9AC00](v212);
  v215 = &v197 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  isUniquelyReferenced_nonNull_native = type metadata accessor for UUID();
  v240 = *(isUniquelyReferenced_nonNull_native - 8);
  MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
  v238 = &v197 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v242 = &v197 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v227 = &v197 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v218 = &v197 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v233 = &v197 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v220 = &v197 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v221 = &v197 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v228 = &v197 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v197 - v34;
  v36 = v4 + OBJC_IVAR____TtC8PaperKit27CalculateDocumentController_document;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v207 = v12;
    v229 = Strong;
    v231 = *(v36 + 8);
    if (one-time initialization token for mathLogger != -1)
    {
      goto LABEL_102;
    }

    while (1)
    {
      v38 = type metadata accessor for Logger();
      __swift_project_value_buffer(v38, mathLogger);

      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.default.getter();
      v41 = os_log_type_enabled(v39, v40);
      v219 = a2;
      v243 = isUniquelyReferenced_nonNull_native;
      if (v41)
      {
        v42 = swift_slowAlloc();
        *v42 = 134218496;
        *(v42 + 4) = *(a1 + 16);

        *(v42 + 12) = 2048;
        *(v42 + 14) = *(a2 + 16);

        *(v42 + 22) = 2048;
        *(v42 + 24) = *(a3 + 16);

        _os_log_impl(&dword_1D38C4000, v39, v40, "CalculateDocumentController mathDidUpdateExpressions: updated: %ld, new: %ld, removed: %ld", v42, 0x20u);
        v43 = v42;
        isUniquelyReferenced_nonNull_native = v243;
        MEMORY[0x1DA6D0660](v43, -1, -1);
      }

      else
      {
      }

      v206 = v14;
      v217 = a1;
      a2 = a4[2];
      v234 = v5;
      v230 = a3;
      if (a2)
      {
        v14 = (a4 + 4);
        v241 = (v240 + 16);
        a3 = v240 + 8;
        a4 = MEMORY[0x1E69E7CC8];
        v5 = 40;
        while (1)
        {
          outlined init with copy of FindResult(v14, &aBlock);
          v45 = v246;
          v46 = v247;
          __swift_project_boxed_opaque_existential_1(&aBlock, v246);
          (*(v46 + 3))(v45, v46);
          outlined init with copy of FindResult(&aBlock, &v251);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v249 = a4;
          a1 = specialized __RawDictionaryStorage.find<A>(_:)(v35);
          v48 = a4[2];
          v49 = (v47 & 1) == 0;
          v50 = v48 + v49;
          if (__OFADD__(v48, v49))
          {
            goto LABEL_100;
          }

          v51 = v47;
          if (a4[3] >= v50)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              specialized _NativeDictionary.copy()();
            }
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v50, isUniquelyReferenced_nonNull_native);
            v52 = specialized __RawDictionaryStorage.find<A>(_:)(v35);
            if ((v51 & 1) != (v53 & 1))
            {
LABEL_105:
              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              return;
            }

            a1 = v52;
          }

          isUniquelyReferenced_nonNull_native = v243;
          a4 = v249;
          if (v51)
          {
            v44 = (*(v249 + 56) + 40 * a1);
            __swift_destroy_boxed_opaque_existential_0(v44);
            outlined init with take of CalculateMathItem(&v251, v44);
            (*a3)(v35, isUniquelyReferenced_nonNull_native);
          }

          else
          {
            *(v249 + 8 * (a1 >> 6) + 64) |= 1 << a1;
            v54 = v240;
            (*(v240 + 16))(a4[6] + *(v240 + 72) * a1, v35, isUniquelyReferenced_nonNull_native);
            outlined init with take of CalculateMathItem(&v251, a4[7] + 40 * a1);
            (*(v54 + 8))(v35, isUniquelyReferenced_nonNull_native);
            v55 = a4[2];
            v56 = __OFADD__(v55, 1);
            v57 = v55 + 1;
            if (v56)
            {
              goto LABEL_101;
            }

            a4[2] = v57;
          }

          __swift_destroy_boxed_opaque_existential_0(&aBlock);
          v14 += 40;
          if (!--a2)
          {
            goto LABEL_20;
          }
        }
      }

      a4 = MEMORY[0x1E69E7CC8];
LABEL_20:
      a2 = 1;
      v216 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
      v58 = MEMORY[0x1E69E7CC0];
      v250 = MEMORY[0x1E69E7CC0];
      v59 = v217;

      v35 = v219;

      specialized Set.union<A>(_:)(v59, v35);
      v14 = 0;
      a1 = v60 + 56;
      v61 = *(v60 + 56);
      v237 = v60;
      v62 = 1 << *(v60 + 32);
      v63 = -1;
      if (v62 < 64)
      {
        v63 = ~(-1 << v62);
      }

      v5 = v63 & v61;
      v226 = OBJC_IVAR____TtC8PaperKit27CalculateDocumentController_expressionUUIDs;
      v232 = OBJC_IVAR____TtC8PaperKit27CalculateDocumentController_expressionStrokeGroups;
      v225 = OBJC_IVAR____TtC8PaperKit27CalculateDocumentController_expressionsToSolve;
      v64 = (v62 + 63) >> 6;
      v235 = v240 + 32;
      v241 = (v240 + 8);
      v223 = v231 + 48;
      v208 = v231 + 32;
      v211 = &v245;
      v210 = (v224 + 8);
      v209 = (v222 + 8);
      v205 = *MEMORY[0x1E6992250];
      v204 = *MEMORY[0x1E6992100];
      v203 = (v239 + 104);
      v202 = v231 + 24;
      v201 = xmmword_1D4058CF0;
      v239 = v58;
      v224 = v240 + 16;
      a3 = v221;
      v222 = v64;
      if ((v63 & v61) != 0)
      {
        do
        {
LABEL_29:
          while (1)
          {
            v66 = __clz(__rbit64(v5));
            v5 &= v5 - 1;
            v67 = v240;
            a2 = *(v240 + 16);
            v35 = v228;
            (a2)(v228, *(v237 + 48) + *(v240 + 72) * (v66 | (v14 << 6)), isUniquelyReferenced_nonNull_native);
            (*(v67 + 32))(a3, v35, isUniquelyReferenced_nonNull_native);
            if (a4[2])
            {
              v68 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
              if (v69)
              {
                break;
              }
            }

            (*v241)(a3, isUniquelyReferenced_nonNull_native);
            v64 = v222;
            if (!v5)
            {
              goto LABEL_25;
            }
          }

          outlined init with copy of FindResult(a4[7] + 40 * v68, &aBlock);
          v200 = *v241;
          v200(a3, isUniquelyReferenced_nonNull_native);
          outlined init with take of CalculateMathItem(&aBlock, &v251);
          v71 = v252;
          v70 = v253;
          __swift_project_boxed_opaque_existential_1(&v251, v252);
          v72 = (*(v70 + 16))(v71, v70);
          v74 = v252;
          v73 = v253;
          __swift_project_boxed_opaque_existential_1(&v251, v252);
          v75 = v220;
          (*(v73 + 24))(v74, v73);
          v76 = v218;
          v77 = v75;
          v78 = v243;
          (a2)(v218, v77, v243);
          swift_beginAccess();
          specialized Set._Variant.insert(_:)(v233, v76);
          swift_endAccess();
          v79 = v78;
          v200(v233, v78);
          v80 = v220;
          (a2)(v233, v220, v79);
          v82 = v252;
          v81 = v253;
          __swift_project_boxed_opaque_existential_1(&v251, v252);
          v83 = (*(v81 + 32))(v82, v81);
          swift_beginAccess();
          specialized Dictionary.subscript.setter(v83, v233);
          swift_endAccess();
          ObjectType = swift_getObjectType();
          v85 = *(v231 + 48);
          v198 = ObjectType;
          v86 = v85(v80);
          if (v86)
          {
            v87 = v86;

            v239 = CalculateExpression.expression.getter();
            v89 = v88;
            v91 = v252;
            v90 = v253;
            __swift_project_boxed_opaque_existential_1(&v251, v252);
            v92 = (*(v90 + 8))(v91, v90);
            if (v239 == v92 && v89 == v93)
            {

              v94 = v215;
            }

            else
            {
              v117 = _stringCompareWithSmolCheck(_:_:expecting:)();

              v94 = v215;
              if ((v117 & 1) == 0)
              {
                v119 = v252;
                v118 = v253;
                __swift_project_boxed_opaque_existential_1(&v251, v252);
                v120 = *(v118 + 8);
                v121 = v118;
                v94 = v215;
                v120(v119, v121);
                CalculateExpression.expression.setter();
              }
            }

            *&aBlock = v72;
            (*(v231 + 32))(v87, &aBlock, v198);

            MEMORY[0x1DA6CD190](v122);
            if (*((v250 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v250 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v239 = v250;
            type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
            v116 = static OS_dispatch_queue.main.getter();
            outlined init with copy of FindResult(&v251, &v249);
            v123 = swift_allocObject();
            v124 = v87;
            v125 = v234;
            *(v123 + 16) = v234;
            *(v123 + 24) = v124;
            v199 = v124;
            outlined init with take of CalculateMathItem(&v249, v123 + 32);
            v247 = partial apply for closure #2 in CalculateDocumentController.mathDidUpdateExpressions(_:newExpressions:removedExpressions:mathItems:);
            v248 = v123;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            v245 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
            v246 = &block_descriptor_32_0;
            v126 = _Block_copy(&aBlock);

            v127 = v125;

            static DispatchQoS.unspecified.getter();
            *&aBlock = MEMORY[0x1E69E7CC0];
            lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
            v128 = v94;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
            lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
            v112 = v214;
            v113 = v213;
            dispatch thunk of SetAlgebra.init<A>(_:)();
            MEMORY[0x1DA6CD890](0, v128, v113, v126);
            v129 = v126;
            v111 = v128;
            _Block_release(v129);
          }

          else
          {
            v96 = v252;
            v95 = v253;
            __swift_project_boxed_opaque_existential_1(&v251, v252);
            v239 = (*(v95 + 8))(v96, v95);
            v199 = v97;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo12CalculateKeya_yptGMd, &_ss23_ContiguousArrayStorageCySo12CalculateKeya_yptGMR);
            inited = swift_initStackObject();
            *(inited + 16) = v201;
            v99 = v205;
            *(inited + 32) = v205;
            *(inited + 64) = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
            v100 = v216;
            *(inited + 40) = v216;
            v101 = v99;
            v102 = v100;
            _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo12CalculateKeya_ypTt0g5Tf4g_n(inited);
            swift_setDeallocating();
            outlined destroy of StocksKitCurrencyCache.Provider?(inited + 32, &_sSo12CalculateKeya_yptMd, &_sSo12CalculateKeya_yptMR);
            v103 = v252;
            v104 = v253;
            __swift_project_boxed_opaque_existential_1(&v251, v252);
            (*(v104 + 24))(v103, v104);
            (*v203)(v206, v204, v207);
            type metadata accessor for CalculateExpression();
            swift_allocObject();
            v105 = CalculateExpression.init(_:options:base:id:)();

            MEMORY[0x1DA6CD190](v106);
            if (*((v250 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v250 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v239 = v250;
            *&aBlock = v72;
            (*(v231 + 24))(v105, &aBlock, v198);
            type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
            v198 = static OS_dispatch_queue.main.getter();
            outlined init with copy of FindResult(&v251, &v249);
            v107 = swift_allocObject();
            v108 = v234;
            *(v107 + 16) = v234;
            *(v107 + 24) = v105;
            outlined init with take of CalculateMathItem(&v249, v107 + 32);
            v247 = partial apply for closure #3 in CalculateDocumentController.mathDidUpdateExpressions(_:newExpressions:removedExpressions:mathItems:);
            v248 = v107;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            v245 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
            v246 = &block_descriptor_26;
            v109 = _Block_copy(&aBlock);
            v110 = v108;
            v199 = v105;

            v111 = v215;
            static DispatchQoS.unspecified.getter();
            *&aBlock = MEMORY[0x1E69E7CC0];
            lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
            lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
            v112 = v214;
            v113 = v213;
            dispatch thunk of SetAlgebra.init<A>(_:)();
            v114 = v109;
            v115 = v109;
            v116 = v198;
            MEMORY[0x1DA6CD890](0, v111, v113, v115);
            _Block_release(v114);
          }

          v35 = v200;

          (*v210)(v113, v112);
          (*v209)(v111, v212);
          v130 = v252;
          v131 = v253;
          __swift_project_boxed_opaque_existential_1(&v251, v252);
          if ((*(v131 + 40))(v130, v131))
          {
            v132 = v218;
            CalculateExpression.id.getter();
            swift_beginAccess();
            v133 = v233;
            specialized Set._Variant.insert(_:)(v233, v132);
            swift_endAccess();

            v134 = v133;
            isUniquelyReferenced_nonNull_native = v243;
            a2 = v241;
            (v35)(v134, v243);
          }

          else
          {
            v135 = v233;
            CalculateExpression.id.getter();
            swift_beginAccess();
            v136 = v35;
            v137 = v236;
            specialized Set._Variant.remove(_:)(v135, v236);
            swift_endAccess();

            isUniquelyReferenced_nonNull_native = v243;
            a2 = v241;
            (v136)(v135, v243);
            v138 = v137;
            v35 = v136;
            outlined destroy of StocksKitCurrencyCache.Provider?(v138, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          }

          a3 = v221;
          v64 = v222;
          (v35)(v220, isUniquelyReferenced_nonNull_native);
          __swift_destroy_boxed_opaque_existential_0(&v251);
        }

        while (v5);
      }

      while (1)
      {
LABEL_25:
        v65 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          __break(1u);
          goto LABEL_99;
        }

        if (v65 >= v64)
        {
          break;
        }

        v5 = *(a1 + 8 * v65);
        ++v14;
        if (v5)
        {
          v14 = v65;
          goto LABEL_29;
        }
      }

      v139 = v230 + 56;
      v140 = 1 << *(v230 + 32);
      v141 = -1;
      if (v140 < 64)
      {
        v141 = ~(-1 << v140);
      }

      a2 = v141 & *(v230 + 56);
      v228 = OBJC_IVAR____TtC8PaperKit27CalculateDocumentController_trackedExpressionsForTokens;
      v5 = OBJC_IVAR____TtC8PaperKit27CalculateDocumentController_trackedExpressionsForResults;
      v220 = OBJC_IVAR____TtC8PaperKit27CalculateDocumentController_resultDrawings;
      v14 = (v140 + 63) >> 6;
      v218 = (v231 + 40);

      a3 = 0;
      a1 = v234;
      v35 = v241;
      v222 = v139;
      v221 = v5;
      while (a2)
      {
LABEL_57:
        v143 = *(v230 + 48);
        v144 = v240;
        v237 = *(v240 + 72);
        v145 = v227;
        (*(v240 + 16))(v227, v143 + v237 * (__clz(__rbit64(a2)) | (a3 << 6)), isUniquelyReferenced_nonNull_native);
        v146 = v242;
        (*(v144 + 32))(v242, v145, isUniquelyReferenced_nonNull_native);
        swift_beginAccess();
        v147 = v236;
        specialized Set._Variant.remove(_:)(v146, v236);
        swift_endAccess();
        outlined destroy of StocksKitCurrencyCache.Provider?(v147, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v148 = v228;
        swift_beginAccess();
        v149 = specialized __RawDictionaryStorage.find<A>(_:)(v146);
        v151 = v150;
        if (v150)
        {
          v152 = v149;
          v153 = swift_isUniquelyReferenced_nonNull_native();
          v154 = *&v148[a1];
          *&v249 = v154;
          *&v148[a1] = 0x8000000000000000;
          if (!v153)
          {
            specialized _NativeDictionary.copy()();
            v154 = v249;
          }

          (*v241)(*(v154 + 48) + v152 * v237, v243);
          outlined init with take of WeakCalculateExpression(*(v154 + 56) + 8 * v152, &v251);
          specialized _NativeDictionary._delete(at:)(v152, v154);
          *&v148[a1] = v154;
        }

        else
        {
          *&v251 = 0;
        }

        BYTE8(v251) = (v151 & 1) == 0;
        swift_endAccess();
        outlined destroy of StocksKitCurrencyCache.Provider?(&v251, &_s8PaperKit23WeakCalculateExpression33_8D2F688A48D6891537C9DABEFCA94965LLVSgMd, &_s8PaperKit23WeakCalculateExpression33_8D2F688A48D6891537C9DABEFCA94965LLVSgMR);
        v5 = v221;
        swift_beginAccess();
        v155 = specialized __RawDictionaryStorage.find<A>(_:)(v242);
        v156 = a1;
        v158 = v157;
        if (v157)
        {
          v159 = v155;
          v160 = swift_isUniquelyReferenced_nonNull_native();
          v161 = *(v156 + v5);
          *&v249 = v161;
          *(v156 + v5) = 0x8000000000000000;
          if (!v160)
          {
            specialized _NativeDictionary.copy()();
            v161 = v249;
          }

          (*v241)(*(v161 + 48) + v159 * v237, v243);
          outlined init with take of WeakCalculateExpression(*(v161 + 56) + 8 * v159, &v251);
          specialized _NativeDictionary._delete(at:)(v159, v161);
          *(v156 + v5) = v161;
        }

        else
        {
          *&v251 = 0;
        }

        a1 = v156;
        BYTE8(v251) = (v158 & 1) == 0;
        swift_endAccess();
        outlined destroy of StocksKitCurrencyCache.Provider?(&v251, &_s8PaperKit23WeakCalculateExpression33_8D2F688A48D6891537C9DABEFCA94965LLVSgMd, &_s8PaperKit23WeakCalculateExpression33_8D2F688A48D6891537C9DABEFCA94965LLVSgMR);
        swift_beginAccess();
        v162 = v236;
        v163 = v242;
        specialized Set._Variant.remove(_:)(v242, v236);
        swift_endAccess();
        outlined destroy of StocksKitCurrencyCache.Provider?(v162, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        swift_beginAccess();
        v164 = specialized __RawDictionaryStorage.find<A>(_:)(v163);
        isUniquelyReferenced_nonNull_native = v243;
        if (v165)
        {
          v166 = v164;
          v167 = v232;
          v168 = swift_isUniquelyReferenced_nonNull_native();
          v169 = *(a1 + v167);
          *&v251 = v169;
          *(a1 + v167) = 0x8000000000000000;
          if (!v168)
          {
            specialized _NativeDictionary.copy()();
            v169 = v251;
          }

          (*v241)(*(v169 + 48) + v166 * v237, isUniquelyReferenced_nonNull_native);

          specialized _NativeDictionary._delete(at:)(v166, v169);
          *(a1 + v167) = v169;
        }

        swift_endAccess();
        v170 = v220;
        swift_beginAccess();
        v171 = specialized __RawDictionaryStorage.find<A>(_:)(v242);
        if (v172)
        {
          v173 = v171;
          v174 = swift_isUniquelyReferenced_nonNull_native();
          v175 = *&v170[a1];
          *&v251 = v175;
          *&v170[a1] = 0x8000000000000000;
          if (!v174)
          {
            specialized _NativeDictionary.copy()();
            v175 = v251;
          }

          (*v241)(*(v175 + 48) + v173 * v237, isUniquelyReferenced_nonNull_native);

          specialized _NativeDictionary._delete(at:)(v173, v175);
          *&v170[a1] = v175;
        }

        swift_endAccess();
        v176 = swift_getObjectType();
        v177 = v231;
        if ((*(v231 + 48))(v242, v176, v231))
        {
          (*(v177 + 40))();
          isUniquelyReferenced_nonNull_native = v243;
        }

        a2 &= a2 - 1;
        v35 = v241;
        (*v241)(v242, isUniquelyReferenced_nonNull_native);
        v139 = v222;
      }

      while (1)
      {
        v142 = a3 + 1;
        if (__OFADD__(a3, 1))
        {
          break;
        }

        if (v142 >= v14)
        {

          v178 = v239;
          if (v239 >> 62)
          {
            v195 = v239;
            v196 = __CocoaSet.count.getter();
            v178 = v195;
            v179 = v196;
          }

          else
          {
            v179 = *((v239 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v180 = v219;
          v181 = v238;
          if (v179)
          {
            if (v179 < 1)
            {
              __break(1u);
              goto LABEL_105;
            }

            v182 = 0;
            v183 = v178 & 0xC000000000000001;
            do
            {
              if (v183)
              {
                v184 = MEMORY[0x1DA6CE0C0](v182);
              }

              else
              {
                v184 = *(v178 + 8 * v182 + 32);
              }

              CalculateExpression.id.getter();
              if (a4[2] && (v185 = specialized __RawDictionaryStorage.find<A>(_:)(v181), (v186 & 1) != 0))
              {
                outlined init with copy of FindResult(a4[7] + 40 * v185, &v251);
                v187 = *v35;
                (*v35)(v238, isUniquelyReferenced_nonNull_native);
                outlined init with take of CalculateMathItem(&v251, &aBlock);
                v188 = v246;
                v189 = v247;
                __swift_project_boxed_opaque_existential_1(&aBlock, v246);
                v190 = *(v189 + 3);
                v191 = v233;
                v192 = v188;
                isUniquelyReferenced_nonNull_native = v243;
                v193 = v189;
                a1 = v234;
                v190(v192, v193);
                CalculateDocumentController.trackTokens(for:itemUUID:)(v184, v191);

                v194 = v191;
                v35 = v241;
                v187(v194, isUniquelyReferenced_nonNull_native);
                v181 = v238;
                __swift_destroy_boxed_opaque_existential_0(&aBlock);
              }

              else
              {

                (*v35)(v181, isUniquelyReferenced_nonNull_native);
              }

              ++v182;
              v178 = v239;
            }

            while (v179 != v182);

            v180 = v219;
          }

          else
          {
          }

          if (*(v180 + 16) || *(v217 + 16) || *(v230 + 16))
          {
            [objc_opt_self() cancelPreviousPerformRequestsWithTarget:a1 selector:sel_sendExpressionsChanged object:0];
            [a1 performSelector:sel_sendExpressionsChanged withObject:0 afterDelay:0.1];
          }

          swift_unknownObjectRelease();

          return;
        }

        a2 = *(v139 + 8 * v142);
        ++a3;
        if (a2)
        {
          a3 = v142;
          goto LABEL_57;
        }
      }

LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      swift_once();
    }
  }
}

char *CalculateDocumentController.calculateDocumentProvider.getter()
{
  v1 = v0;
  if (one-time initialization token for mathLogger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, mathLogger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1D38C4000, v3, v4, "Generate Calculate Document Provider", v5, 2u);
    MEMORY[0x1DA6D0660](v5, -1, -1);
  }

  v6 = v1 + OBJC_IVAR____TtC8PaperKit27CalculateDocumentController_document;
  if (swift_unknownObjectWeakLoadStrong() && (v7 = *(v6 + 8), ObjectType = swift_getObjectType(), v9 = (*(v7 + 8))(ObjectType, v7), swift_unknownObjectRelease(), v9))
  {
    v10 = OBJC_IVAR____TtC8PaperKit27CalculateDocumentController_expressionUUIDs;
    swift_beginAccess();
    v11 = *(v1 + v10);
    v12 = OBJC_IVAR____TtC8PaperKit27CalculateDocumentController_expressionsToSolve;
    swift_beginAccess();
    v13 = *(v1 + v12);
    v14 = OBJC_IVAR____TtC8PaperKit27CalculateDocumentController_expressionStrokeGroups;
    swift_beginAccess();
    v15 = *(v1 + v14);
    v16 = OBJC_IVAR____TtC8PaperKit27CalculateDocumentController_resultDrawings;
    swift_beginAccess();
    v17 = *(v1 + v16);

    v18 = CalculateDocument.pkCalculateDocumentProvider(sessionExpressionUUIDs:expressionsToSolve:expressionStrokeGroups:resultDrawings:)(v11, v13, v15, v17);

    return v18;
  }

  else
  {
    v20 = objc_allocWithZone(type metadata accessor for CalculateDocumentProvider());

    return [v20 init];
  }
}

uint64_t protocol witness for CalculateMathItem.expressionString.getter in conformance PKMathRecognitionItem()
{
  v1 = [*v0 expression];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

void protocol witness for CalculateMathItem.uuid.getter in conformance PKMathRecognitionItem()
{
  v1 = [*v0 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
}

id protocol witness for CalculateMathItem.strokeGroupIdentifier.getter in conformance PKMathRecognitionItem()
{
  v1 = [*v0 strokeGroupIdentifier];

  return v1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DrawingIdentifier()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1DA6CE810]([v1 hash]);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DrawingIdentifier(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x1DA6CE810]([v2 hash]);
  return Hasher._finalize()();
}

void *one-time initialization function for controllers()
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC8PaperKit17DrawingIdentifier33_8D2F688A48D6891537C9DABEFCA94965LLV_AC27CalculateDocumentControllerCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  static CalculateDocumentController.controllers = result;
  return result;
}

id CalculateDocumentController.init()()
{
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15 - v3;
  v5 = MEMORY[0x1E69E7CC0];
  *&v0[OBJC_IVAR____TtC8PaperKit27CalculateDocumentController_observers] = MEMORY[0x1E69E7CC0];
  v6 = OBJC_IVAR____TtC8PaperKit27CalculateDocumentController_trackedExpressionsForResults;
  *&v0[v6] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_8PaperKit23WeakCalculateExpression33_8D2F688A48D6891537C9DABEFCA94965LLVTt0g5Tf4g_n(v5);
  v7 = OBJC_IVAR____TtC8PaperKit27CalculateDocumentController_trackedExpressionsForTokens;
  *&v0[v7] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_8PaperKit23WeakCalculateExpression33_8D2F688A48D6891537C9DABEFCA94965LLVTt0g5Tf4g_n(v5);
  *&v0[OBJC_IVAR____TtC8PaperKit27CalculateDocumentController_document + 8] = 0;
  swift_unknownObjectWeakInit();
  v8 = MEMORY[0x1E69E7CD0];
  *&v0[OBJC_IVAR____TtC8PaperKit27CalculateDocumentController_expressionUUIDs] = MEMORY[0x1E69E7CD0];
  v9 = OBJC_IVAR____TtC8PaperKit27CalculateDocumentController_expressionStrokeGroups;
  *&v0[v9] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_So8NSNumberCTt0g5Tf4g_n(v5);
  v10 = OBJC_IVAR____TtC8PaperKit27CalculateDocumentController_resultDrawings;
  *&v0[v10] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_So9PKDrawingCTt0g5Tf4g_n(v5);
  *&v0[OBJC_IVAR____TtC8PaperKit27CalculateDocumentController_expressionsToSolve] = v8;
  v15.receiver = v0;
  v15.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v15, sel_init);
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in CalculateDocumentController.init(), v13);

  return v11;
}

uint64_t closure #1 in CalculateDocumentController.init()()
{
  return MEMORY[0x1EEE6DFA0](closure #1 in CalculateDocumentController.init(), 0, 0);
}

{
  *(v0 + 16) = type metadata accessor for MainActor();
  *(v0 + 24) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in CalculateDocumentController.init(), v2, v1);
}

{

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](closure #1 in CalculateDocumentController.init(), 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in CalculateDocumentController.init()(uint64_t a1)
{
  *(v1 + 32) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in CalculateDocumentController.init(), v3, v2);
}

uint64_t CalculateDocumentController.document.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2 + OBJC_IVAR____TtC8PaperKit27CalculateDocumentController_document;
  *(v3 + 8) = a2;
  swift_unknownObjectWeakAssign();
  if (swift_unknownObjectWeakLoadStrong() && (v4 = *(v3 + 8), ObjectType = swift_getObjectType(), v6 = (*(v4 + 8))(ObjectType, v4), v7 = swift_unknownObjectRelease(), v6))
  {
    MEMORY[0x1EEE9AC00](v7);
    withObservationTracking<A>(_:onChange:)();

    return swift_unknownObjectRelease();
  }

  else
  {

    return swift_unknownObjectRelease();
  }
}

double closure #1 in CalculateDocumentController.trackExpressions(in:)()
{
  MEMORY[0x1DA6CACA0]();

  dispatch thunk of CalculateDocument.declaredSymbols.getter();

  return result;
}

void (*implicit closure #1 in CalculateDocumentController.trackExpressions(in:)(uint64_t a1, uint64_t a2))()
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  return partial apply for closure #2 in implicit closure #1 in CalculateDocumentController.trackExpressions(in:);
}

void closure #2 in implicit closure #1 in CalculateDocumentController.trackExpressions(in:)(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    swift_beginAccess();
    v12 = swift_weakLoadStrong();
    if (v12)
    {
      v13 = v12;
      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
      v24 = static OS_dispatch_queue.main.getter();
      v14 = swift_allocObject();
      v25 = v7;
      v15 = v14;
      swift_unknownObjectWeakInit();
      v16 = swift_allocObject();
      swift_weakInit();
      v17 = swift_allocObject();
      *(v17 + 16) = v15;
      *(v17 + 24) = v16;
      aBlock[4] = partial apply for closure #1 in closure #2 in implicit closure #1 in CalculateDocumentController.trackExpressions(in:);
      aBlock[5] = v17;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_30;
      v18 = _Block_copy(aBlock);
      v23 = v13;
      v19 = v18;

      static DispatchQoS.unspecified.getter();
      v26 = MEMORY[0x1E69E7CC0];
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      v22 = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v20 = v24;
      MEMORY[0x1DA6CD890](0, v9, v5, v19);
      _Block_release(v19);

      (*(v3 + 8))(v5, v2);
      (*(v25 + 8))(v9, v22);
    }

    else
    {
    }
  }
}

void closure #1 in closure #2 in implicit closure #1 in CalculateDocumentController.trackExpressions(in:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      [objc_opt_self() cancelPreviousPerformRequestsWithTarget:v3 selector:sel_sendExpressionsChanged object:0];
      v4 = [v3 performSelector:sel_sendExpressionsChanged withObject:0 afterDelay:0.1];
      MEMORY[0x1EEE9AC00](v4);
      withObservationTracking<A>(_:onChange:)();
    }
  }
}

void CalculateDocumentController.cleanupObservers()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8PaperKit27CalculateDocumentController_observers;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = *(v3 + 16);

  if (v4)
  {
    v5 = 0;
    v6 = v3 + 32;
    v7 = MEMORY[0x1E69E7CC0];
    while (v5 < *(v3 + 16))
    {
      outlined init with copy of WeakObserver(v6, v12);
      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        outlined init with take of WeakObserver(v12, v11);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v13 = v7;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 16) + 1, 1);
          v7 = v13;
        }

        v10 = *(v7 + 16);
        v9 = *(v7 + 24);
        if (v10 >= v9 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
          v7 = v13;
        }

        *(v7 + 16) = v10 + 1;
        outlined init with take of WeakObserver(v11, v7 + 16 * v10 + 32);
      }

      else
      {
        outlined destroy of WeakObserver(v12);
      }

      ++v5;
      v6 += 16;
      if (v4 == v5)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_13:

    *(v1 + v2) = v7;
  }
}

Swift::Bool __swiftcall CalculateDocumentController.updateGraphableVariables()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_SS5valuetMd, &_s10Foundation4UUIDV3key_SS5valuetMR);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v158 - v2;
  *&v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v194);
  v200 = &v158 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v158 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v158 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v158 - v12;
  v14 = type metadata accessor for UUID();
  v193 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v158 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v199 = &v158 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v187 = &v158 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v158 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v195 = &v158 - v25;
  v205[3] = &type metadata for PencilAndPaperFeatureFlags;
  v205[4] = lazy protocol witness table accessor for type PencilAndPaperFeatureFlags and conformance PencilAndPaperFeatureFlags();
  LOBYTE(v205[0]) = 7;
  v26 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0(v205);
  if ((v26 & 1) == 0)
  {
    return 0;
  }

  v192 = v13;
  v27 = v0 + OBJC_IVAR____TtC8PaperKit27CalculateDocumentController_document;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0;
  }

  v28 = *(v27 + 8);
  ObjectType = swift_getObjectType();
  v30 = (*(v28 + 8))(ObjectType, v28);
  swift_unknownObjectRelease();
  if (!v30)
  {
    return 0;
  }

  v189 = v10;
  v175 = v7;
  v178 = v1;
  v169 = v0;
  v190 = v16;
  CalculateDocument.id.getter();

  v31 = v193;
  v32 = v193[4];
  v171 = v193 + 4;
  v170 = v32;
  v32(v195, v23, v14);
  v33 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  if (one-time initialization token for controllers != -1)
  {
LABEL_119:
    swift_once();
  }

  swift_beginAccess();
  v34 = *(static CalculateDocumentController.controllers + 8);
  v186 = static CalculateDocumentController.controllers + 64;
  v35 = 1 << *(static CalculateDocumentController.controllers + 32);
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  else
  {
    v36 = -1;
  }

  v37 = v36 & v34;
  v185 = (v35 + 63) >> 6;
  v182 = (v31 + 56);
  v197 = (v31 + 16);
  v181 = (v31 + 48);
  v38 = (v31 + 8);
  v184 = static CalculateDocumentController.controllers;

  v39 = 0;
  v173 = v33;
  v202 = v14;
  v196 = (v31 + 8);
  v188 = v3;
LABEL_9:
  v40 = v186;
  v41 = v185;
  while (v37)
  {
LABEL_18:
    v44 = *(v184[7] + ((v39 << 9) | (8 * __clz(__rbit64(v37)))));
    v45 = v44 + OBJC_IVAR____TtC8PaperKit27CalculateDocumentController_document;
    Strong = swift_unknownObjectWeakLoadStrong();
    v198 = v44;
    if (Strong)
    {
      v47 = *(v45 + 1);
      v48 = swift_getObjectType();
      v49 = *(v47 + 8);
      v50 = v44;
      v51 = v49(v48, v47);
      swift_unknownObjectRelease();
      if (v51)
      {
        v52 = v192;
        CalculateDocument.id.getter();

        v53 = 0;
        v14 = v202;
        goto LABEL_24;
      }

      v53 = 1;
      v14 = v202;
    }

    else
    {
      v54 = v44;
      v53 = 1;
    }

    v52 = v192;
LABEL_24:
    v37 &= v37 - 1;
    v55 = *v182;
    (*v182)(v52, v53, 1, v14);
    v56 = v189;
    v191 = *v197;
    v191(v189, v195, v14);
    v55(v56, 0, 1, v14);
    v57 = *(v194 + 48);
    v58 = v200;
    outlined init with copy of Date?(v52, v200, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined init with copy of Date?(v56, v58 + v57, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v31 = *v181;
    if ((*v181)(v58, 1, v14) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v56, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      outlined destroy of StocksKitCurrencyCache.Provider?(v52, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v42 = v200;
      v59 = v200 + v57;
      v60 = v202;
      v61 = (v31)(v59, 1, v202);
      v14 = v60;
      v3 = v188;
      if (v61 != 1)
      {
        goto LABEL_11;
      }

      outlined destroy of StocksKitCurrencyCache.Provider?(v42, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_29:
      v66 = OBJC_IVAR____TtC8PaperKit27CalculateDocumentController_observers;
      v31 = v198;
      swift_beginAccess();
      v67 = *&v31[v66];
      v68 = *(v67 + 16);
      if (v68)
      {
        v168 = v67 + 32;

        v69 = 0;
        v38 = v196;
        v174 = v37;
        v167 = v67;
        v166 = v68;
        while (v69 < *(v67 + 16))
        {
          v172 = v69;
          outlined init with copy of WeakObserver(v168 + 16 * v69, v204);
          if (swift_unknownObjectWeakLoadStrong())
          {
            v70 = v204[1];
            v71 = swift_getObjectType();
            v72 = (*(v70 + 32))(v71, v70);
            swift_unknownObjectRelease();
            v31 = (v72 + 64);
            v73 = 1 << *(v72 + 32);
            if (v73 < 64)
            {
              v74 = ~(-1 << v73);
            }

            else
            {
              v74 = -1;
            }

            v75 = v74 & *(v72 + 64);
            v76 = (v73 + 63) >> 6;
            v179 = v72;

            v14 = 0;
            v77 = v173;
            v176 = (v72 + 64);
            v177 = v76;
            while (v75)
            {
              v79 = v3;
LABEL_47:
              v81 = __clz(__rbit64(v75)) | (v14 << 6);
              v82 = v179;
              v83 = *(v179 + 48);
              v180 = v193[9];
              v33 = v197;
              v84 = v191;
              v191(v79, (v83 + v180 * v81), v202);
              v85 = (*(v82 + 56) + 16 * v81);
              v86 = v79;
              v87 = *v85;
              v88 = v85[1];
              v89 = (v86 + *(v178 + 48));
              v183 = v87;
              *v89 = v87;
              v89[1] = v88;
              v90 = v199;
              v84(v199);
              swift_bridgeObjectRetain_n();
              v31 = v77;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v203 = v77;
              v3 = specialized __RawDictionaryStorage.find<A>(_:)(v90);
              v93 = *(v77 + 2);
              v94 = (v92 & 1) == 0;
              v95 = v93 + v94;
              if (__OFADD__(v93, v94))
              {
                goto LABEL_116;
              }

              v96 = v92;
              v97 = v88;
              if (*(v31 + 3) >= v95)
              {
                v37 = v174;
                v76 = v177;
                if (isUniquelyReferenced_nonNull_native)
                {
                  v98 = v31;
                }

                else
                {
                  v173 = v31;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVSSGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVSSGMR);
                  v105 = static _DictionaryStorage.copy(original:)();
                  v98 = v105;
                  if (v173[2])
                  {
                    v106 = (v105 + 64);
                    v107 = v173 + 8;
                    v108 = ((1 << v98[32]) + 63) >> 6;
                    v160 = v173 + 8;
                    if (v98 != v173 || v106 >= &v107[v108])
                    {
                      memmove(v106, v160, 8 * v108);
                      v107 = v160;
                    }

                    v109 = 0;
                    v110 = v173;
                    *(v98 + 2) = v173[2];
                    v111 = 1 << *(v110 + 32);
                    v112 = v110[8];
                    if (v111 < 64)
                    {
                      v113 = ~(-1 << v111);
                    }

                    else
                    {
                      v113 = -1;
                    }

                    v114 = v113 & v112;
                    v115 = (v111 + 63) >> 6;
                    v159 = v115;
                    v201 = v98;
                    if (v114)
                    {
                      do
                      {
                        v165 = (v114 - 1) & v114;
                        v116 = __clz(__rbit64(v114)) | (v109 << 6);
                        v117 = v173;
LABEL_70:
                        v163 = v116;
                        v121 = v117[6];
                        v164 = v116 * v180;
                        v191(v187, (v121 + v116 * v180), v202);
                        v122 = v173[7];
                        v161 = 16 * v163;
                        v123 = (v122 + 16 * v163);
                        v125 = *v123;
                        v124 = v123[1];
                        v163 = v125;
                        v162 = v124;
                        v170(*(v98 + 6) + v164, v187, v202);
                        v126 = (*(v201 + 56) + v161);
                        v127 = v162;
                        *v126 = v163;
                        v126[1] = v127;

                        v107 = v160;
                        v115 = v159;
                        v114 = v165;
                      }

                      while (v165);
                    }

                    v118 = v109;
                    while (1)
                    {
                      v109 = v118 + 1;
                      if (__OFADD__(v118, 1))
                      {
                        goto LABEL_122;
                      }

                      if (v109 >= v115)
                      {
                        break;
                      }

                      v119 = v107[v109];
                      ++v118;
                      if (v119)
                      {
                        v120 = __clz(__rbit64(v119));
                        v165 = (v119 - 1) & v119;
                        v117 = v173;
                        v116 = v120 | (v109 << 6);
                        goto LABEL_70;
                      }
                    }
                  }
                }
              }

              else
              {
                specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v95, isUniquelyReferenced_nonNull_native);
                v98 = v203;
                v99 = specialized __RawDictionaryStorage.find<A>(_:)(v199);
                v37 = v174;
                v76 = v177;
                if ((v96 & 1) != (v100 & 1))
                {
                  goto LABEL_123;
                }

                v3 = v99;
              }

              v31 = v176;
              if (v96)
              {
                v33 = v98;
                v78 = (*(v98 + 7) + 16 * v3);
                *v78 = v183;
                v78[1] = v97;
              }

              else
              {
                v33 = v98;
                *&v98[8 * (v3 >> 6) + 64] |= 1 << v3;
                v191((*(v98 + 6) + v3 * v180), v199, v202);
                v101 = (*(v98 + 7) + 16 * v3);
                *v101 = v183;
                v101[1] = v97;
                v102 = *(v98 + 2);
                v103 = __OFADD__(v102, 1);
                v104 = v102 + 1;
                if (v103)
                {
                  goto LABEL_117;
                }

                *(v98 + 2) = v104;
              }

              v75 &= v75 - 1;
              (*v196)(v199, v202);
              v3 = v188;
              outlined destroy of StocksKitCurrencyCache.Provider?(v188, &_s10Foundation4UUIDV3key_SS5valuetMd, &_s10Foundation4UUIDV3key_SS5valuetMR);
              v77 = v33;
            }

            while (1)
            {
              v80 = v14 + 1;
              if (__OFADD__(v14, 1))
              {
                goto LABEL_115;
              }

              if (v80 >= v76)
              {
                v173 = v77;

                outlined destroy of WeakObserver(v204);

                v14 = v202;
                v38 = v196;
                v67 = v167;
                v68 = v166;
                goto LABEL_32;
              }

              v75 = *&v31[8 * v80];
              ++v14;
              if (v75)
              {
                v79 = v3;
                v14 = v80;
                goto LABEL_47;
              }
            }
          }

          outlined destroy of WeakObserver(v204);
LABEL_32:
          v69 = v172 + 1;
          if (v172 + 1 == v68)
          {

            goto LABEL_9;
          }
        }

LABEL_118:
        __break(1u);
        goto LABEL_119;
      }

      goto LABEL_12;
    }

    v62 = v200;
    v63 = v175;
    v3 = &_s10Foundation4UUIDVSgMd;
    outlined init with copy of Date?(v200, v175, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if ((v31)(v62 + v57, 1, v202) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v189, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      outlined destroy of StocksKitCurrencyCache.Provider?(v192, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v14 = v202;
      (*v196)(v63, v202);
      v42 = v200;
LABEL_11:
      outlined destroy of StocksKitCurrencyCache.Provider?(v42, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
      goto LABEL_12;
    }

    v64 = v187;
    v31 = v202;
    v170(v187, (v200 + v57), v202);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
    LODWORD(v201) = dispatch thunk of static Equatable.== infix(_:_:)();
    v65 = *v196;
    (*v196)(v64, v31);
    outlined destroy of StocksKitCurrencyCache.Provider?(v189, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of StocksKitCurrencyCache.Provider?(v192, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v65(v63, v31);
    outlined destroy of StocksKitCurrencyCache.Provider?(v200, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v14 = v31;
    v3 = v188;
    if (v201)
    {
      goto LABEL_29;
    }

LABEL_12:

    v40 = v186;
    v41 = v185;
    v38 = v196;
  }

  while (1)
  {
    v43 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      __break(1u);
LABEL_115:
      __break(1u);
LABEL_116:
      __break(1u);
LABEL_117:
      __break(1u);
      goto LABEL_118;
    }

    if (v43 >= v41)
    {
      break;
    }

    v37 = *&v40[8 * v43];
    ++v39;
    if (v37)
    {
      v39 = v43;
      goto LABEL_18;
    }
  }

  v130 = CalculateDocumentController.expressions.getter();
  v132 = v130;
  if (v130 >> 62)
  {
    v133 = __CocoaSet.count.getter();
  }

  else
  {
    v133 = *((v130 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v134 = v190;
  if (!v133)
  {

    v128 = 0;
    (*v38)(v195, v14);
LABEL_113:

    return v128;
  }

  if (v133 >= 1)
  {
    v128 = 0;
    v135 = 0;
    v199 = v132 & 0xC000000000000001;
    *&v131 = 136380931;
    v194 = v131;
    v200 = v133;
    v201 = v33;
    v197 = v132;
    while (1)
    {
      if (v199)
      {
        MEMORY[0x1DA6CE0C0](v135, v132);
      }

      else
      {
      }

      CalculateExpression.id.getter();
      if (*(v33 + 16) && (v136 = specialized __RawDictionaryStorage.find<A>(_:)(v134), (v137 & 1) != 0))
      {
        v138 = (*(v33 + 56) + 16 * v136);
        v139 = *v138;
        v140 = v138[1];
        v141 = *v38;

        v198 = v141;
        v141(v134, v14);
      }

      else
      {
        v198 = *v38;
        v198(v134, v14);
        v139 = 0;
        v140 = 0;
      }

      v142 = CalculateExpression.graphableVariable.getter();
      if (!v143)
      {
        break;
      }

      if (!v140)
      {
        goto LABEL_97;
      }

      if (v142 != v139 || v143 != v140)
      {
        v157 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v132 = v197;
        if ((v157 & 1) == 0)
        {
          goto LABEL_98;
        }

LABEL_110:

        goto LABEL_83;
      }

      swift_bridgeObjectRelease_n();
      v132 = v197;
LABEL_83:
      v33 = v201;
      if (v200 == ++v135)
      {

        v198(v195, v14);
        goto LABEL_113;
      }
    }

    if (v140)
    {
LABEL_97:

LABEL_98:
      if (one-time initialization token for mathLogger != -1)
      {
        swift_once();
      }

      v144 = type metadata accessor for Logger();
      __swift_project_value_buffer(v144, mathLogger);

      v145 = Logger.logObject.getter();
      v146 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v145, v146))
      {
        v147 = swift_slowAlloc();
        v148 = swift_slowAlloc();
        v204[0] = v148;
        *v147 = v194;
        v149 = CalculateExpression.expression.getter();
        v151 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v149, v150, v204);

        *(v147 + 4) = v151;
        *(v147 + 12) = 2080;
        if (v140)
        {
          v152 = v139;
        }

        else
        {
          v152 = 0x3E656E6F6E3CLL;
        }

        if (v140)
        {
          v153 = v140;
        }

        else
        {
          v153 = 0xE600000000000000;
        }

        v154 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v152, v153, v204);
        v14 = v202;

        *(v147 + 14) = v154;
        _os_log_impl(&dword_1D38C4000, v145, v146, "Update graphable variable for expression: %{private}s, variable: %s", v147, 0x16u);
        swift_arrayDestroy();
        v155 = v148;
        v134 = v190;
        MEMORY[0x1DA6D0660](v155, -1, -1);
        v156 = v147;
        v38 = v196;
        MEMORY[0x1DA6D0660](v156, -1, -1);
      }

      v132 = v197;
      CalculateExpression.graphableVariable.setter();

      v128 = 1;
      goto LABEL_83;
    }

    goto LABEL_110;
  }

  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t CalculateDocumentController.expressions.getter()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v34 = v2;
  v35 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0 + OBJC_IVAR____TtC8PaperKit27CalculateDocumentController_document;
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = MEMORY[0x1E69E7CC0];
  if (!Strong)
  {
    return v8;
  }

  v9 = *(v6 + 8);
  ObjectType = swift_getObjectType();
  if ((*(v9 + 8))(ObjectType, v9))
  {
    v11 = MEMORY[0x1DA6CACA0]();
    swift_unknownObjectRelease();

    return v11;
  }

  else
  {
    v31 = ObjectType;
    v13 = OBJC_IVAR____TtC8PaperKit27CalculateDocumentController_expressionUUIDs;
    swift_beginAccess();
    v14 = *(v1 + v13);
    v27 = v8;
    v36 = v8;
    v15 = v14 + 56;
    v16 = 1 << *(v14 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v14 + 56);
    v19 = (v16 + 63) >> 6;
    v32 = v9;
    v33 = v14;
    v29 = v9 + 48;
    v30 = v35 + 16;
    v28 = v35 + 8;
    result = swift_bridgeObjectRetain_n();
    v20 = 0;
    if (!v18)
    {
      goto LABEL_9;
    }

    do
    {
LABEL_7:
      while (1)
      {
        v21 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
        v22 = v34;
        v23 = v35;
        (*(v35 + 16))(v5, *(v33 + 48) + *(v35 + 72) * (v21 | (v20 << 6)), v34);
        v24 = (*(v32 + 48))(v5, v31);
        result = (*(v23 + 8))(v5, v22);
        if (v24)
        {
          break;
        }

        if (!v18)
        {
          goto LABEL_9;
        }
      }

      MEMORY[0x1DA6CD190](result);
      if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v27 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v27 = v36;
    }

    while (v18);
LABEL_9:
    while (1)
    {
      v25 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v25 >= v19)
      {

        swift_unknownObjectRelease();
        return v27;
      }

      v18 = *(v15 + 8 * v25);
      ++v20;
      if (v18)
      {
        v20 = v25;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}