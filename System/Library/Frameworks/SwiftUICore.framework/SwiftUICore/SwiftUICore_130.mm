uint64_t FlattenedCollectionLocation.update()(uint64_t a1, uint64_t a2)
{
  v3 = FlattenedCollectionLocation.primaryLocation.getter(a2);
  LOBYTE(a1) = (*(*v3 + 144))(a1);

  return a1 & 1;
}

uint64_t (*protocol witness for Location.wasRead.modify in conformance FlattenedCollectionLocation<A, B>(uint64_t *a1, uint64_t a2))()
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
  *(v4 + 32) = FlattenedCollectionLocation.wasRead.modify(v4, a2);
  return protocol witness for MutableCollection.subscript.modify in conformance ArrayWith2Inline<A>;
}

CGPoint __swiftcall UnitPoint.in(_:)(__C::CGRect a1)
{
  v3 = a1.size.width * v1 + a1.origin.x;
  v4 = a1.size.height * v2 + a1.origin.y;
  result.y = v4;
  result.x = v3;
  return result;
}

float64x2_t UnitPoint.animatableData.setter(float64x2_t a1, float64_t a2)
{
  a1.f64[1] = a2;
  result = vmulq_f64(a1, vdupq_n_s64(0x3F80000000000000uLL));
  *v2 = result;
  return result;
}

CGPoint __swiftcall UnitPoint.in(_:)(CGSize a1)
{
  v3 = a1.width * v1;
  v4 = a1.height * v2;
  result.y = v4;
  result.x = v3;
  return result;
}

uint64_t UnitPoint.hash(into:)(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x193AC11E0](*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  return MEMORY[0x193AC11E0](*&v3);
}

Swift::Int UnitPoint.hashValue.getter(double a1, double a2)
{
  Hasher.init(_seed:)();
  if (a1 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = a1;
  }

  MEMORY[0x193AC11E0](*&v4);
  if (a2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = a2;
  }

  MEMORY[0x193AC11E0](*&v5);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance UnitPoint()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  UnitPoint.hash(into:)(v1, v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance UnitPoint(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  Hasher.init(_seed:)();
  UnitPoint.hash(into:)(v2, v3);
  return Hasher._finalize()();
}

double UnitPoint.subscript.getter(char a1, double a2, double a3)
{
  if (a1)
  {
    return a3;
  }

  return result;
}

double (*UnitPoint.subscript.modify(uint64_t a1, char a2))(uint64_t a1)
{
  *(a1 + 8) = v2;
  *(a1 + 16) = a2;
  v3 = v2 + 1;
  if ((a2 & 1) == 0)
  {
    v3 = v2;
  }

  *a1 = *v3;
  return CGPoint.subscript.modify;
}

double UnitPoint.init(_:in:by:)(char a1, double a2, double a3)
{
  if (a1)
  {
    return a3;
  }

  return a2;
}

float64x2_t (*UnitPoint.animatableData.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  *a1 = vmulq_f64(*v1, vdupq_n_s64(0x4060000000000000uLL));
  return UnitPoint.animatableData.modify;
}

float64x2_t UnitPoint.animatableData.modify(uint64_t a1)
{
  result = vmulq_f64(*a1, vdupq_n_s64(0x3F80000000000000uLL));
  **(a1 + 16) = result;
  return result;
}

float64x2_t protocol witness for Animatable.animatableData.getter in conformance UnitPoint@<Q0>(float64x2_t *a1@<X8>)
{
  result = vmulq_f64(*v1, vdupq_n_s64(0x4060000000000000uLL));
  *a1 = result;
  return result;
}

float64x2_t protocol witness for Animatable.animatableData.setter in conformance UnitPoint(float64x2_t *a1)
{
  result = vmulq_f64(*a1, vdupq_n_s64(0x3F80000000000000uLL));
  *v1 = result;
  return result;
}

double (*protocol witness for Animatable.animatableData.modify in conformance UnitPoint(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  *a1 = vmulq_f64(*v1, vdupq_n_s64(0x4060000000000000uLL));
  return protocol witness for Animatable.animatableData.modify in conformance UnitPoint;
}

uint64_t UnitPoint.encode(to:)(void *a1, double a2, double a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  v9 = a2;
  __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  if (!v3)
  {
    v9 = a3;
    __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  }

  return __swift_destroy_boxed_opaque_existential_1(v7);
}

void protocol witness for Decodable.init(from:) in conformance UnitPoint(double *a1@<X8>, void *a2@<X0>)
{
  v4 = specialized UnitPoint.init(from:)(a2);
  if (!v2)
  {
    *a1 = v4;
    *(a1 + 1) = v5;
  }
}

double *UnitPoint.encode(to:)(double *result, double a2, double a3)
{
  v4 = result;
  if (a2 == 0.0)
  {
    goto LABEL_12;
  }

  v5 = a2;
  v6 = fabs(a2);
  if (v6 >= 65536.0)
  {
    v7 = 9;
  }

  else
  {
    v7 = 13;
  }

  ProtobufEncoder.encodeVarint(_:)(v7);
  if (v6 >= 65536.0)
  {
    v9 = *(v4 + 1);
    result = (v9 + 8);
    if (!__OFADD__(v9, 8))
    {
      if (*(v4 + 2) < result)
      {
        result = ProtobufEncoder.growBufferSlow(to:)(result);
        *result = v5;
      }

      else
      {
        *(v4 + 1) = result;
        *(*v4 + v9) = v5;
      }

      goto LABEL_12;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v8 = *(v4 + 1);
  result = (v8 + 4);
  if (__OFADD__(v8, 4))
  {
    __break(1u);
    goto LABEL_25;
  }

  *&v5 = v5;
  if (*(v4 + 2) < result)
  {
    goto LABEL_28;
  }

  *(v4 + 1) = result;
  *(*v4 + v8) = LODWORD(v5);
LABEL_12:
  while (a3 != 0.0)
  {
    v5 = fabs(a3);
    if (v5 >= 65536.0)
    {
      v10 = 17;
    }

    else
    {
      v10 = 21;
    }

    ProtobufEncoder.encodeVarint(_:)(v10);
    if (v5 >= 65536.0)
    {
      v13 = *(v4 + 1);
      result = (v13 + 8);
      if (!__OFADD__(v13, 8))
      {
        if (*(v4 + 2) < result)
        {
          result = ProtobufEncoder.growBufferSlow(to:)(result);
          *result = a3;
        }

        else
        {
          *(v4 + 1) = result;
          *(*v4 + v13) = a3;
        }

        return result;
      }
    }

    else
    {
      v11 = *(v4 + 1);
      result = (v11 + 4);
      if (!__OFADD__(v11, 4))
      {
        v12 = a3;
        if (*(v4 + 2) < result)
        {
          result = ProtobufEncoder.growBufferSlow(to:)(result);
          *result = v12;
        }

        else
        {
          *(v4 + 1) = result;
          *(*v4 + v11) = v12;
        }

        return result;
      }

LABEL_26:
      __break(1u);
    }

    __break(1u);
LABEL_28:
    result = ProtobufEncoder.growBufferSlow(to:)(result);
    *result = LODWORD(v5);
  }

  return result;
}

double specialized UnitPoint.init(from:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (!v1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v6, v7);
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
    v2 = v5;
    __swift_mutable_project_boxed_opaque_existential_1(v6, v7);
    dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
    __swift_destroy_boxed_opaque_existential_1(v6);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

void key path setter for _PreferenceTransformModifier.transform : <A>_PreferenceTransformModifier<A>(uint64_t *a1, uint64_t (**a2)(), uint64_t a3, uint64_t a4)
{
  v5 = a3 + a4;
  v7 = *a1;
  v6 = a1[1];
  v8 = swift_allocObject();
  *(v8 + 16) = *(v5 - 16);
  *(v8 + 32) = v7;
  *(v8 + 40) = v6;

  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A?) -> (@out ());
  a2[1] = v8;
}

void _PreferenceTransformModifier.transform.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t protocol witness for static _AttributeBody._updateDefault(_:) in conformance PreferenceTransform<A>(uint64_t a1, uint64_t a2)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v18 - v7;
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v18 - v11;
  static PreferenceCombiner.initialValue.getter(v3, v8);
  if ((*(v9 + 48))(v8, 1, AssociatedTypeWitness) == 1)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v14 = (*(v9 + 32))(v12, v8, AssociatedTypeWitness);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v18[-2] = a2;
  swift_getWitnessTable(protocol conformance descriptor for PreferenceTransform<A>, a2, v15);
  v18[-1] = v16;
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v12, _s14AttributeGraph4RulePAAE14_updateDefaultyySvFZySPy5ValueQzGXEfU_TA_0, &v18[-4], AssociatedTypeWitness, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v17);
  return (*(v9 + 8))(v12, AssociatedTypeWitness);
}

uint64_t getEnumTagSinglePayload for HostPreferencesTransform(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 24))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 12);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for HostPreferencesTransform(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 12) = a2 + 1;
    }
  }

  return result;
}

uint64_t specialized PreferenceTransform.description.getter(uint64_t a1)
{
  static PreferenceKey.readableName.getter(a1);
  MEMORY[0x193ABEDD0]();

  return 0x726F66736E617254;
}

uint64_t specialized HostPreferencesTransform.description.getter(uint64_t a1, uint64_t a2)
{
  _StringGuts.grow(_:)(17);

  static PreferenceKey.readableName.getter(a1);
  MEMORY[0x193ABEDD0]();

  return 0x6E61725474736F48;
}

uint64_t Projection.composed<A>(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, v20, a2, v16);
  (*(v12 + 16))(v14, a1, a3);
  return ComposedProjection.init(_:_:)(v18, v14, a2, a3, a4, a5, a6);
}

uint64_t ComposedProjection.init(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a3 - 8) + 32))(a7, a1);
  v15[0] = a3;
  v15[1] = a4;
  v15[2] = a5;
  v15[3] = a6;
  v13 = type metadata accessor for ComposedProjection(0, v15);
  return (*(*(a4 - 8) + 32))(a7 + *(v13 + 52), a2, a4);
}

uint64_t ComposedProjection.get(base:)(uint64_t a1, void *a2)
{
  v4 = a2[4];
  v5 = a2[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v12 - v9;
  (*(v4 + 32))(a1, v5, v4, v8);
  (*(a2[5] + 32))(v10, a2[3]);
  return (*(v7 + 8))(v10, AssociatedTypeWitness);
}

uint64_t ComposedProjection.set(base:newValue:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3[4];
  v7 = a3[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v14 - v11;
  (*(v6 + 32))(a1, v7, v6, v10);
  (*(a3[5] + 40))(v12, a2, a3[3]);
  (*(v6 + 40))(a1, v12, v7, v6);
  return (*(v9 + 8))(v12, AssociatedTypeWitness);
}

uint64_t static ComposedProjection.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    v12[0] = a3;
    v12[1] = a4;
    v12[2] = a5;
    v12[3] = a6;
    type metadata accessor for ComposedProjection(0, v12);
    v10 = dispatch thunk of static Equatable.== infix(_:_:)();
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

Swift::Int ComposedProjection.hashValue.getter(void *a1)
{
  Hasher.init(_seed:)();
  ComposedProjection.hash(into:)(v3, a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ComposedProjection<A, B>(uint64_t a1, void *a2)
{
  Hasher.init(_seed:)();
  ComposedProjection.hash(into:)(v4, a2);
  return Hasher._finalize()();
}

uint64_t WritableKeyPath.set(base:newValue:)(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  (*(v3 + 16))(&v5 - v2, v1);
  return swift_setAtWritableKeyPath();
}

void *specialized Sequence.compactMap<A>(_:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = specialized Sequence.compactMap<A>(_:)(a1, a2, a3, a4);

  return v5;
}

double ScrapeableContent.Item.init(_:ids:_:position:size:transform:)@<D0>(uint64_t *a1@<X0>, int *a2@<X1>, int *a3@<X2>, uint64_t a7@<X8>)
{
  v8 = *a1;
  v9 = *a2;
  v10 = *a3;
  type metadata accessor for CGPoint(0);
  Value = AGGraphGetValue();
  v12 = *Value;
  v13 = Value[1];
  v14 = AGGraphGetValue();
  v15 = *v14;
  v16 = v14[1];
  v17 = AGGraphGetValue();
  v19 = *v17;
  v18 = *(v17 + 8);
  v20 = *(v17 + 32) - (v12 - *(v17 + 16));
  v21 = *(v17 + 40) - (v13 - *(v17 + 24));
  *a7 = v9;
  *(a7 + 4) = v10;
  *(a7 + 8) = v8;
  *(a7 + 16) = v15;
  *(a7 + 24) = v16;
  *(a7 + 32) = v19;
  *(a7 + 40) = v18;
  *(a7 + 48) = v12;
  *(a7 + 56) = v13;
  *(a7 + 64) = v20;
  *(a7 + 72) = v21;

  return result;
}

uint64_t ScrapeableID.init()@<X0>(_DWORD *a2@<X8>)
{
  result = AGMakeUniqueID();
  *a2 = result;
  return result;
}

uint64_t _ViewInputs.isScrapeable.setter(uint64_t result)
{
  if (result)
  {
    v2 = 0;
  }

  else
  {
    v2 = 0x2000;
  }

  *(v1 + 36) = *(v1 + 36) & 0xFFFFDFFF | v2;
  return result;
}

Swift::Int ScrapeableID.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t (*_ViewInputs.isScrapeable.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(v1 + 36);
  *(a1 + 8) = v3;
  if ((v3 & 0x20) != 0)
  {
    v5 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(*(v1 + 48));
    v4 = (v3 & 0x2000) == 0;
    if ((v5 & 1) == 0)
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 12) = v4;
  return _ViewInputs.isScrapeable.modify;
}

uint64_t _ViewInputs.isScrapeable.modify(uint64_t result)
{
  if (*(result + 12))
  {
    v1 = 0;
  }

  else
  {
    v1 = 0x2000;
  }

  *(*result + 36) = v1 | *(result + 8) & 0xFFFFDFFF;
  return result;
}

double key path setter for _ViewInputs.scrapeableParentID : _ViewInputs(int *a1, uint64_t *a2)
{
  v3 = *a1;
  _s7SwiftUI12_GraphInputsV19recordReusableInput33_9FF97745734808976F608CE0DC13C39CLLyyxmAA0cG0RzAA0cF05ValueRpzlFAA05_ViewD0VAAE18ScrapeableParentID010_0EC4D15D4T21D8FD0340271BA6BA4D1B4LLV_Ttg5();

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA11_ViewInputsVAAE18ScrapeableParentID010_0EC4D15D4N21D8FD0340271BA6BA4D1B4LLV_Tt2B5(a2, v3);

  return result;
}

uint64_t (*_ViewInputs.scrapeableParentID.modify(uint64_t a1))()
{
  *(a1 + 16) = v1;
  v3 = *v1;
  BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
  v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v3, v7);
  if (v4)
  {
    v5 = *(v4 + 72);
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 24) = v5;
  return _ViewInputs.scrapeableParentID.modify;
}

uint64_t _ViewListInputs.isScrapeable.setter(uint64_t result)
{
  if (result)
  {
    v2 = 0;
  }

  else
  {
    v2 = 0x2000;
  }

  *(v1 + 36) = *(v1 + 36) & 0xFFFFDFFF | v2;
  return result;
}

uint64_t (*_ViewListInputs.isScrapeable.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v2 = *(v1 + 36);
  *(a1 + 8) = v2;
  *(a1 + 12) = (v2 & 0x2020) == 32;
  return _ViewListInputs.isScrapeable.modify;
}

double _ViewListInputs.scrapeableParentID.setter(int *a1)
{
  v2 = *a1;
  _s7SwiftUI12_GraphInputsV19recordReusableInput33_9FF97745734808976F608CE0DC13C39CLLyyxmAA0cG0RzAA0cF05ValueRpzlFAA05_ViewD0VAAE18ScrapeableParentID010_0EC4D15D4T21D8FD0340271BA6BA4D1B4LLV_Ttg5();

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA11_ViewInputsVAAE18ScrapeableParentID010_0EC4D15D4N21D8FD0340271BA6BA4D1B4LLV_Tt2B5(v1, v2);

  return result;
}

uint64_t (*_ViewListInputs.scrapeableParentID.modify(uint64_t a1))()
{
  *(a1 + 16) = v1;
  v3 = *v1;
  BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
  v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v3, v7);
  if (v4)
  {
    v5 = *(v4 + 72);
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 24) = v5;
  return _ViewListInputs.scrapeableParentID.modify;
}

double _ViewInputs.scrapeableParentID.modify(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(a1 + 16);
  _s7SwiftUI12_GraphInputsV19recordReusableInput33_9FF97745734808976F608CE0DC13C39CLLyyxmAA0cG0RzAA0cF05ValueRpzlFAA05_ViewD0VAAE18ScrapeableParentID010_0EC4D15D4T21D8FD0340271BA6BA4D1B4LLV_Ttg5();

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA11_ViewInputsVAAE18ScrapeableParentID010_0EC4D15D4N21D8FD0340271BA6BA4D1B4LLV_Tt2B5(v2, v1);

  return result;
}

void static ScrapeableAttachmentViewModifier.Attachment.scrapeContent(from:)(uint64_t a1@<X8>)
{
  AGGraphGetAttributeInfo();
  v4 = v3;
  type metadata accessor for HitTestableEvent?(0, &lazy cache variable for type metadata for ScrapeableContent.Content?, &type metadata for ScrapeableContent.Content);
  v5 = *AGGraphGetValue();
  if ((~v5 & 0xF000000000000007) != 0)
  {
    type metadata accessor for CGPoint(0);
    v21 = *(v4 + 16);
    outlined copy of ScrapeableContent.Content?(v5);
    outlined copy of ScrapeableContent.Content(v5);
    Value = AGGraphGetValue();
    v10 = *Value;
    v6 = Value[1];
    v11 = AGGraphGetValue();
    v12 = *v11;
    v13 = v11[1];
    v14 = AGGraphGetValue();
    v15 = *v14;
    v16 = *(v14 + 8);
    v17 = *(v14 + 16);
    v18 = *(v14 + 24);
    v20 = *(v14 + 32);
    v19 = *(v14 + 40);

    outlined consume of ScrapeableContent.Content?(v5);
    v7 = v20 - (v10 - v17);
    *a1 = v21;
    *(a1 + 8) = v5;
    v8 = v19 - (v6 - v18);
    *(a1 + 16) = v12;
    *(a1 + 24) = v13;
    *(a1 + 32) = v15;
    *(a1 + 40) = v16;
    *(a1 + 48) = v10;
  }

  else
  {
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 32) = 1;
    v6 = 0.0;
    v7 = 0.0;
    v8 = 0.0;
  }

  *(a1 + 56) = v6;
  *(a1 + 64) = v7;
  *(a1 + 72) = v8;
}

double ScrapeableContent.Item.content.getter@<D0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = v2;
  return outlined copy of ScrapeableContent.Content(v2);
}

void ScrapeableContent.Item.content.setter(uint64_t *a1)
{
  v2 = *a1;
  outlined consume of ScrapeableContent.Content(*(v1 + 8));
  *(v1 + 8) = v2;
}

double ScrapeableContent.Item.transform.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
  v3 = *(v1 + 64);
  *(a1 + 16) = *(v1 + 48);
  *(a1 + 32) = v3;

  return result;
}

__n128 ScrapeableContent.Item.transform.setter(__n128 *a1)
{
  v3 = a1->n128_u64[0];
  v4 = a1->n128_u64[1];

  v1[2].n128_u64[0] = v3;
  v1[2].n128_u64[1] = v4;
  result = a1[1];
  v6 = a1[2];
  v1[3] = result;
  v1[4] = v6;
  return result;
}

float64x2_t ScrapeableContent.Item.init(_:ids:_:position:size:transform:)@<Q0>(uint64_t *a1@<X0>, _DWORD *a2@<X1>, int *a3@<X2>, _OWORD *a4@<X3>, float64x2_t *a5@<X4>, uint64_t a6@<X8>, float64x2_t a7@<Q0>, double a8@<D1>)
{
  v8 = *a1;
  v9 = *a3;
  *a6 = *a2;
  *(a6 + 4) = v9;
  *(a6 + 8) = v8;
  v10 = *a5;
  v11 = a5[1];
  *(a6 + 16) = *a4;
  *(a6 + 32) = v10;
  *(a6 + 48) = a7.f64[0];
  *(a6 + 56) = a8;
  a7.f64[1] = a8;
  result = vsubq_f64(a5[2], vsubq_f64(a7, v11));
  *(a6 + 64) = result;
  return result;
}

uint64_t ScrapeableContent.Node.item.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[4];
  v9 = v1[3];
  v10 = v2;
  v11 = v1[5];
  v3 = v11;
  v4 = v1[2];
  v8[0] = v1[1];
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  return outlined init with copy of ScrapeableContent.Item(v8, &v7);
}

double ScrapeableContent.Node.children.getter()
{
  swift_beginAccess();

  return result;
}

unint64_t *ScrapeableContent.Node.deinit()
{
  outlined consume of ScrapeableContent.Content(*(v0 + 24));

  return v0;
}

uint64_t ScrapeableContent.Node.__deallocating_deinit()
{
  outlined consume of ScrapeableContent.Content(*(v0 + 24));

  return swift_deallocClassInstance();
}

BOOL ScrapeableContent.isEmpty.getter()
{
  v1 = v0[1];
  if (*v0 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      return 0;
    }
  }

  else if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return 0;
  }

  return *(v1 + 16) == 0;
}

uint64_t ScrapeableContent.Content.Button.description.getter()
{
  MEMORY[0x193ABEDD0](0x203A656C6F72, 0xE600000000000000);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ScrapeableContent.Content.Button()
{
  MEMORY[0x193ABEDD0](0x203A656C6F72, 0xE600000000000000);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ScrapeableContent.Content.Button.Role.CancelCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type ScrapeableContent.Content.Button.Role.CancelCodingKeys and conformance ScrapeableContent.Content.Button.Role.CancelCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ScrapeableContent.Content.Button.Role.CancelCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type ScrapeableContent.Content.Button.Role.CancelCodingKeys and conformance ScrapeableContent.Content.Button.Role.CancelCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ScrapeableContent.Content.Button.Role.CodingKeys()
{
  v1 = 0x6C616D726F6ELL;
  v2 = 0x6C65636E6163;
  if (*v0 != 2)
  {
    v2 = 0x7463757274736564;
  }

  if (*v0)
  {
    v1 = 0x7972616D697270;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ScrapeableContent.Content.Button.Role.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized ScrapeableContent.Content.Button.Role.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ScrapeableContent.Content.Button.Role.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type ScrapeableContent.Content.Button.Role.CodingKeys and conformance ScrapeableContent.Content.Button.Role.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ScrapeableContent.Content.Button.Role.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type ScrapeableContent.Content.Button.Role.CodingKeys and conformance ScrapeableContent.Content.Button.Role.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ScrapeableContent.Content.Button.Role.DestructiveCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type ScrapeableContent.Content.Button.Role.DestructiveCodingKeys and conformance ScrapeableContent.Content.Button.Role.DestructiveCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ScrapeableContent.Content.Button.Role.DestructiveCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type ScrapeableContent.Content.Button.Role.DestructiveCodingKeys and conformance ScrapeableContent.Content.Button.Role.DestructiveCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ScrapeableContent.Content.Button.Role.NormalCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type ScrapeableContent.Content.Button.Role.NormalCodingKeys and conformance ScrapeableContent.Content.Button.Role.NormalCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ScrapeableContent.Content.Button.Role.NormalCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type ScrapeableContent.Content.Button.Role.NormalCodingKeys and conformance ScrapeableContent.Content.Button.Role.NormalCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ScrapeableContent.Content.Button.Role.PrimaryCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type ScrapeableContent.Content.Button.Role.PrimaryCodingKeys and conformance ScrapeableContent.Content.Button.Role.PrimaryCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ScrapeableContent.Content.Button.Role.PrimaryCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type ScrapeableContent.Content.Button.Role.PrimaryCodingKeys and conformance ScrapeableContent.Content.Button.Role.PrimaryCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ScrapeableContent.Content.Button.Role.encode(to:)(void *a1)
{
  v3 = MEMORY[0x1E69E6F58];
  type metadata accessor for KeyedEncodingContainer<ScrapeableContent.Content.Button.Role.DestructiveCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<ScrapeableContent.Content.Button.Role.DestructiveCodingKeys>, lazy protocol witness table accessor for type ScrapeableContent.Content.Button.Role.DestructiveCodingKeys and conformance ScrapeableContent.Content.Button.Role.DestructiveCodingKeys, &unk_1F0087A90, MEMORY[0x1E69E6F58]);
  v33 = *(v4 - 8);
  v34 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v32 = &v23 - v5;
  type metadata accessor for KeyedEncodingContainer<ScrapeableContent.Content.Button.Role.DestructiveCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<ScrapeableContent.Content.Button.Role.CancelCodingKeys>, lazy protocol witness table accessor for type ScrapeableContent.Content.Button.Role.CancelCodingKeys and conformance ScrapeableContent.Content.Button.Role.CancelCodingKeys, &unk_1F0087A70, v3);
  v30 = *(v6 - 8);
  v31 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v29 = &v23 - v7;
  type metadata accessor for KeyedEncodingContainer<ScrapeableContent.Content.Button.Role.DestructiveCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<ScrapeableContent.Content.Button.Role.PrimaryCodingKeys>, lazy protocol witness table accessor for type ScrapeableContent.Content.Button.Role.PrimaryCodingKeys and conformance ScrapeableContent.Content.Button.Role.PrimaryCodingKeys, &unk_1F0087A50, v3);
  v27 = *(v8 - 8);
  v28 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v26 = &v23 - v9;
  type metadata accessor for KeyedEncodingContainer<ScrapeableContent.Content.Button.Role.DestructiveCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<ScrapeableContent.Content.Button.Role.NormalCodingKeys>, lazy protocol witness table accessor for type ScrapeableContent.Content.Button.Role.NormalCodingKeys and conformance ScrapeableContent.Content.Button.Role.NormalCodingKeys, &unk_1F0087A30, v3);
  v24 = *(v10 - 8);
  v25 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23 - v11;
  type metadata accessor for KeyedEncodingContainer<ScrapeableContent.Content.Button.Role.DestructiveCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<ScrapeableContent.Content.Button.Role.CodingKeys>, lazy protocol witness table accessor for type ScrapeableContent.Content.Button.Role.CodingKeys and conformance ScrapeableContent.Content.Button.Role.CodingKeys, &unk_1F0087A10, v3);
  v35 = v13;
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v23 - v15;
  v17 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ScrapeableContent.Content.Button.Role.CodingKeys and conformance ScrapeableContent.Content.Button.Role.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v38 = 2;
      lazy protocol witness table accessor for type ScrapeableContent.Content.Button.Role.CancelCodingKeys and conformance ScrapeableContent.Content.Button.Role.CancelCodingKeys();
      v19 = v29;
      v18 = v35;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v21 = v30;
      v20 = v31;
    }

    else
    {
      v39 = 3;
      lazy protocol witness table accessor for type ScrapeableContent.Content.Button.Role.DestructiveCodingKeys and conformance ScrapeableContent.Content.Button.Role.DestructiveCodingKeys();
      v19 = v32;
      v18 = v35;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v21 = v33;
      v20 = v34;
    }

    goto LABEL_8;
  }

  if (v17)
  {
    v37 = 1;
    lazy protocol witness table accessor for type ScrapeableContent.Content.Button.Role.PrimaryCodingKeys and conformance ScrapeableContent.Content.Button.Role.PrimaryCodingKeys();
    v19 = v26;
    v18 = v35;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v21 = v27;
    v20 = v28;
LABEL_8:
    (*(v21 + 8))(v19, v20);
    return (*(v14 + 8))(v16, v18);
  }

  v36 = 0;
  lazy protocol witness table accessor for type ScrapeableContent.Content.Button.Role.NormalCodingKeys and conformance ScrapeableContent.Content.Button.Role.NormalCodingKeys();
  v18 = v35;
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v24 + 8))(v12, v25);
  return (*(v14 + 8))(v16, v18);
}

Swift::Int ScrapeableContent.Content.Button.Role.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

uint64_t ScrapeableContent.Content.Button.Role.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v40 = a2;
  v3 = MEMORY[0x1E69E6F48];
  type metadata accessor for KeyedEncodingContainer<ScrapeableContent.Content.Button.Role.DestructiveCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<ScrapeableContent.Content.Button.Role.DestructiveCodingKeys>, lazy protocol witness table accessor for type ScrapeableContent.Content.Button.Role.DestructiveCodingKeys and conformance ScrapeableContent.Content.Button.Role.DestructiveCodingKeys, &unk_1F0087A90, MEMORY[0x1E69E6F48]);
  v38 = v4;
  v35 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v44 = &v34 - v5;
  type metadata accessor for KeyedEncodingContainer<ScrapeableContent.Content.Button.Role.DestructiveCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<ScrapeableContent.Content.Button.Role.CancelCodingKeys>, lazy protocol witness table accessor for type ScrapeableContent.Content.Button.Role.CancelCodingKeys and conformance ScrapeableContent.Content.Button.Role.CancelCodingKeys, &unk_1F0087A70, v3);
  v39 = v6;
  v43 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v42 = &v34 - v7;
  type metadata accessor for KeyedEncodingContainer<ScrapeableContent.Content.Button.Role.DestructiveCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<ScrapeableContent.Content.Button.Role.PrimaryCodingKeys>, lazy protocol witness table accessor for type ScrapeableContent.Content.Button.Role.PrimaryCodingKeys and conformance ScrapeableContent.Content.Button.Role.PrimaryCodingKeys, &unk_1F0087A50, v3);
  v36 = *(v8 - 8);
  v37 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v34 - v9;
  type metadata accessor for KeyedEncodingContainer<ScrapeableContent.Content.Button.Role.DestructiveCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<ScrapeableContent.Content.Button.Role.NormalCodingKeys>, lazy protocol witness table accessor for type ScrapeableContent.Content.Button.Role.NormalCodingKeys and conformance ScrapeableContent.Content.Button.Role.NormalCodingKeys, &unk_1F0087A30, v3);
  v11 = v10;
  v34 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - v12;
  type metadata accessor for KeyedEncodingContainer<ScrapeableContent.Content.Button.Role.DestructiveCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<ScrapeableContent.Content.Button.Role.CodingKeys>, lazy protocol witness table accessor for type ScrapeableContent.Content.Button.Role.CodingKeys and conformance ScrapeableContent.Content.Button.Role.CodingKeys, &unk_1F0087A10, v3);
  v15 = v14;
  v45 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v34 - v16;
  v18 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  lazy protocol witness table accessor for type ScrapeableContent.Content.Button.Role.CodingKeys and conformance ScrapeableContent.Content.Button.Role.CodingKeys();
  v19 = v46;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v19)
  {
    v46 = v11;
    v20 = v41;
    v21 = v42;
    v22 = v43;
    v23 = v44;
    v24 = KeyedDecodingContainer.allKeys.getter();
    v25 = (2 * *(v24 + 16)) | 1;
    v48 = v24;
    v49 = v24 + 32;
    v50 = 0;
    v51 = v25;
    v26 = specialized Collection<>.popFirst()();
    v27 = v17;
    if (v26 == 4 || v50 != v51 >> 1)
    {
      v28 = type metadata accessor for DecodingError();
      swift_allocError();
      v30 = v29;
      type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
      *v30 = &type metadata for ScrapeableContent.Content.Button.Role;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x1E69E6AF8], v28);
      swift_willThrow();
      (*(v45 + 8))(v17, v15);
      swift_unknownObjectRelease();
    }

    else
    {
      v52 = v26;
      if (v26 > 1u)
      {
        v32 = v40;
        v33 = v45;
        if (v26 == 2)
        {
          v53 = 2;
          lazy protocol witness table accessor for type ScrapeableContent.Content.Button.Role.CancelCodingKeys and conformance ScrapeableContent.Content.Button.Role.CancelCodingKeys();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          (*(v22 + 8))(v21, v39);
        }

        else
        {
          v53 = 3;
          lazy protocol witness table accessor for type ScrapeableContent.Content.Button.Role.DestructiveCodingKeys and conformance ScrapeableContent.Content.Button.Role.DestructiveCodingKeys();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          (*(v35 + 8))(v23, v38);
        }

        (*(v33 + 8))(v27, v15);
        swift_unknownObjectRelease();
      }

      else
      {
        if (v26)
        {
          v53 = 1;
          lazy protocol witness table accessor for type ScrapeableContent.Content.Button.Role.PrimaryCodingKeys and conformance ScrapeableContent.Content.Button.Role.PrimaryCodingKeys();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          (*(v36 + 8))(v20, v37);
        }

        else
        {
          v53 = 0;
          lazy protocol witness table accessor for type ScrapeableContent.Content.Button.Role.NormalCodingKeys and conformance ScrapeableContent.Content.Button.Role.NormalCodingKeys();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          (*(v34 + 8))(v13, v46);
        }

        (*(v45 + 8))(v17, v15);
        swift_unknownObjectRelease();
        v32 = v40;
      }

      *v32 = v52;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v47);
}

double AGSubgraphRef.Map.addItem(_:for:)(_OWORD *a1, void *a2)
{
  v3 = v2;
  v6 = a1[3];
  v27[2] = a1[2];
  v27[3] = v6;
  v27[4] = a1[4];
  v7 = a1[1];
  v27[0] = *a1;
  v27[1] = v7;
  type metadata accessor for ScrapeableContent.Node();
  v8 = swift_allocObject();
  *(v8 + 96) = MEMORY[0x1E69E7CC0];
  *(v8 + 104) = 0;
  v9 = a1[3];
  *(v8 + 48) = a1[2];
  *(v8 + 64) = v9;
  *(v8 + 80) = a1[4];
  v10 = a1[1];
  *(v8 + 16) = *a1;
  *(v8 + 32) = v10;
  outlined init with copy of ScrapeableContent.Item(v27, &v26);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v3;
  v12 = v26;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_11;
  }

  v19 = v14;
  if (v12[3] < v18)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, isUniquelyReferenced_nonNull_native);
    v12 = v26;
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v19 & 1) == (v20 & 1))
    {
      goto LABEL_6;
    }

    v13 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (isUniquelyReferenced_nonNull_native)
  {
LABEL_6:
    *v3 = v12;
    if (v19)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v25 = v13;
  specialized _NativeDictionary.copy()();
  v13 = v25;
  v12 = v26;
  *v3 = v26;
  if ((v19 & 1) == 0)
  {
LABEL_7:
    v21 = v13;
    specialized _NativeDictionary._insert(at:key:value:)(v13, a2, MEMORY[0x1E69E7CC0], v12);
    v22 = a2;
    v13 = v21;
  }

LABEL_8:
  v23 = (v12[7] + 8 * v13);
  MEMORY[0x193ABF170]();
  if (*((*v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_11:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return result;
}

void AGSubgraphRef.Map.content(for:updated:)(void *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  if ((specialized Set._Variant.insert(_:)(&v26, a1) & 1) == 0)
  {
    *a3 = 0;
    a3[1] = 0;
    return;
  }

  v6 = MEMORY[0x1E69E7CC0];
  if (*(a2 + 16) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v8 & 1) != 0))
  {
    v26 = *(*(a2 + 56) + 8 * v7);
  }

  else
  {
    v26 = v6;
  }

  v25 = v6;
  ChildCount = AGSubgraphGetChildCount();
  if (ChildCount < 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  v10 = ChildCount;
  v11 = a1;

  v24 = specialized Sequence.compactMap<A>(_:)(0, v10, v11, a2);
  if (v24[2])
  {
    specialized MutableCollection<>.sort(by:)(&v24);
    v12 = v24;
    v13 = v24[2];
    if (v13)
    {
      v23 = v6;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13, 0);
      v14 = 4;
      do
      {
        v22 = *&v12[v14];
        v15 = *(v23 + 2);
        v16 = *(v23 + 3);

        if (v15 >= v16 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v15 + 1, 1);
        }

        *(v23 + 2) = v15 + 1;
        *&v23[16 * v15 + 32] = v22;
        v14 += 3;
        --v13;
      }

      while (v13);

      v25 = v23;
    }

    else
    {

      v25 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
  }

  specialized static AGSubgraphRef.Map.resolveParents(nodes:children:)(&v26, &v25);
  ChildCount = v26;
  if (v26 >> 62)
  {
LABEL_23:
    v20 = ChildCount;
    v21 = __CocoaSet.count.getter();
    ChildCount = v20;
    v17 = v25;
    if (v21)
    {
      goto LABEL_24;
    }

    goto LABEL_19;
  }

  v17 = v25;
  if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_24:
    *a3 = ChildCount;
    a3[1] = v17;
    return;
  }

LABEL_19:
  if (*(v17 + 2) != 1)
  {
    goto LABEL_24;
  }

  if (*(v17 + 2))
  {
    v18 = *(v17 + 4);
    v19 = *(v17 + 5);

    *a3 = v18;
    a3[1] = v19;
  }

  else
  {
    __break(1u);
  }
}

void ScrapeableContent.move(parentID:to:)(int *a1, void *a2, __n128 a3)
{
  v4 = v3;
  v6 = *a1;
  v7 = *v3;
  if (*v3 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i >= 1; i = __CocoaSet.count.getter())
  {
    v9 = 0;
    while (1)
    {
      while ((v7 & 0xC000000000000001) != 0)
      {
        v13 = *(MEMORY[0x193AC03C0](v9, v7, a3) + 20);
        swift_unknownObjectRelease();
        if (v13 == v6)
        {
          goto LABEL_9;
        }

LABEL_4:
        if (++v9 >= i)
        {
          goto LABEL_24;
        }
      }

      if ((v9 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      if (*(*(v7 + 8 * v9 + 32) + 20) != v6)
      {
        goto LABEL_4;
      }

LABEL_9:
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v7 < 0 || (v7 & 0x4000000000000000) != 0)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
      }

      v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9 >= v10)
      {
        goto LABEL_22;
      }

      v11 = v10 - 1;
      v12 = memmove(((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v9 + 32), ((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v9 + 40), 8 * (v10 - 1 - v9));
      *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) = v11;
      *v4 = v7;
      MEMORY[0x193ABF170](v12);
      if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      if (v9 >= --i)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

LABEL_24:
  v14 = v4[1];
  v15 = *(v14 + 2);
  if (!v15)
  {
    return;
  }

  v23 = v4;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_43:
    v14 = specialized _ArrayBuffer._consumeAndCreateNew()(v14);
  }

  v17 = 0;
  v18 = v14 + 32;
  do
  {
    while (1)
    {
      v24 = v6;
      if (v17 >= *(v14 + 2))
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      v19 = &v18[16 * v17];
      ScrapeableContent.move(parentID:to:)(&v24, a2, v16);
      if (v17 >= *(v14 + 2))
      {
        goto LABEL_41;
      }

      v20 = *(v19 + 1);
      if (*v19 >> 62)
      {
        break;
      }

      if (!*((*v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }

LABEL_27:
      if (++v17 >= v15)
      {
        goto LABEL_38;
      }
    }

    if (__CocoaSet.count.getter())
    {
      goto LABEL_27;
    }

LABEL_32:
    if (*(v20 + 16))
    {
      goto LABEL_27;
    }

    v21 = *(v14 + 2);
    if (v17 >= v21)
    {
      goto LABEL_42;
    }

    v22 = v21 - 1;
    memmove(&v18[16 * v17], v19 + 16, 16 * (v21 - 1 - v17));
    *(v14 + 2) = v22;

    --v15;
  }

  while (v17 < v15);
LABEL_38:
  v23[1] = v14;
}

SwiftUI::ScrapeableContent __swiftcall AGSubgraphRef.scrapeContent()()
{
  v2 = v0;
  v9 = MEMORY[0x1E69E7CC8];
  AGSubgraphApply();
  v8[2] = MEMORY[0x1E69E7CD0];
  AGSubgraphRef.Map.content(for:updated:)(v1, v9, v8);

  v3 = v8[0];
  if (v8[0])
  {
    v4 = v8[1];
  }

  else
  {

    v4 = MEMORY[0x1E69E7CC0];
    v3 = MEMORY[0x1E69E7CC0];
  }

  *v2 = v3;
  v2[1] = v4;
  result.children._rawValue = v6;
  result.nodes._rawValue = v5;
  return result;
}

void *closure #1 in AGSubgraphRef.scrapeContent()(uint64_t a1, double a2)
{
  v3 = *AGGraphGetAttributeInfo();
  result = swift_conformsToProtocol2();
  if (result)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    result = (result[2])(v12, a1, v3, result);
    if (v13 != 1)
    {
      v7[0] = v12[0];
      v7[1] = v12[1];
      v8 = v13;
      v9 = v14;
      v10 = v15;
      v11 = v16;
      v6 = AGGraphGetAttributeSubgraph();
      AGSubgraphRef.Map.addItem(_:for:)(v7, v6);

      return outlined destroy of ScrapeableContent.Item?(v12);
    }
  }

  return result;
}

SwiftUI::ScrapeableContent __swiftcall ViewGraph.scrapeContent()()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  AGSubgraphRef.scrapeContent()();

  result.children._rawValue = v3;
  result.nodes._rawValue = v2;
  return result;
}

SwiftUI::ScrapeableContent __swiftcall ViewRendererHost.scrapeContent()()
{
  v2 = ViewRendererHost.updateViewGraph<A>(body:)(closure #1 in ViewRendererHost.scrapeContent(), 0, v0, &type metadata for ScrapeableContent, v1);
  result.children._rawValue = v3;
  result.nodes._rawValue = v2;
  return result;
}

void closure #1 in ViewRendererHost.scrapeContent()(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 32);
  AGSubgraphRef.scrapeContent()();
}

void ScrapeableContent.description.getter()
{
  v1[0] = 0xD000000000000013;
  v1[1] = 0x800000018DD7D390;
  v2 = xmmword_18DDAB890;
  v3 = 0xE200000000000000;
  ScrapeableContent.print(into:)(v1);
  if (!v2)
  {
    goto LABEL_4;
  }

  if (!__OFSUB__(v2, 1))
  {
    *&v2 = v2 - 1;
    specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL, v0);
LABEL_4:
    MEMORY[0x193ABEDD0](41, 0xE100000000000000);

    return;
  }

  __break(1u);
}

void ScrapeableContent.print(into:)(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  if (*v1 >> 62)
  {
    v5 = __CocoaSet.count.getter();
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    goto LABEL_23;
  }

  for (i = 0; i != v5; ++i)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      MEMORY[0x193AC03C0](i, v3);
    }

    else
    {
    }

    ScrapeableContent.Node.print(into:)(a1);
  }

LABEL_10:
  v7 = *(v4 + 16);
  if (!v7)
  {
    return;
  }

  v8 = a1[2];
  if (!v8)
  {
    MEMORY[0x193ABEDD0](40, 0xE100000000000000);
    v9 = 0x6E6572646C696863;
    v10 = 0xE800000000000000;
    goto LABEL_15;
  }

  MEMORY[0x193ABEDD0](10, 0xE100000000000000);
  MEMORY[0x193ABEDD0](a1[3], a1[4]);
  MEMORY[0x193ABEDD0](40, 0xE100000000000000);
  MEMORY[0x193ABEDD0](0x6E6572646C696863, 0xE800000000000000);
  if (__OFADD__(v8, 1))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  a1[2] = v8 + 1;
  v9 = 8224;
  v10 = 0xE200000000000000;
LABEL_15:
  MEMORY[0x193ABEDD0](v9, v10);
  v11 = v4 + 32;
  do
  {
    v11 += 16;
    ScrapeableContent.print(into:)(a1);
    --v7;
  }

  while (v7);
  v13 = a1[2];
  if (!v13)
  {
    goto LABEL_20;
  }

  v14 = __OFSUB__(v13, 1);
  v15 = v13 - 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
    return;
  }

  a1[2] = v15;
  specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL, v12);
LABEL_20:
  MEMORY[0x193ABEDD0](41, 0xE100000000000000);
}

void ScrapeableContent.Node.print(into:)(void *a1)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 64);
  v24 = *(v1 + 48);
  v25 = v4;
  v5 = *(v1 + 64);
  v26 = *(v1 + 80);
  v6 = *(v1 + 32);
  v23[0] = *(v1 + 16);
  v23[1] = v6;
  v20 = v24;
  v21 = v5;
  v22 = *(v1 + 80);
  v18 = v23[0];
  v19 = v3;
  outlined init with copy of ScrapeableContent.Item(v23, v27);
  ScrapeableContent.Item.print(into:)(a1);
  v27[2] = v20;
  v27[3] = v21;
  v27[4] = v22;
  v27[0] = v18;
  v27[1] = v19;
  outlined destroy of ScrapeableContent.Item(v27);
  swift_beginAccess();
  v7 = *(v1 + 96);
  if (!(v7 >> 62))
  {
    if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

LABEL_3:
    v8 = a1[2];
    if (v8)
    {
      MEMORY[0x193ABEDD0](10, 0xE100000000000000);
      MEMORY[0x193ABEDD0](a1[3], a1[4]);
      MEMORY[0x193ABEDD0](40, 0xE100000000000000);
      MEMORY[0x193ABEDD0](0x6E6572646C696863, 0xE800000000000000);
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      a1[2] = v8 + 1;
      v9 = 8224;
      v10 = 0xE200000000000000;
    }

    else
    {
      MEMORY[0x193ABEDD0](40, 0xE100000000000000);
      v9 = 0x6E6572646C696863;
      v10 = 0xE800000000000000;
    }

    MEMORY[0x193ABEDD0](v9, v10);
    v12 = *(v1 + 96);
    if (v12 >> 62)
    {
      v13 = __CocoaSet.count.getter();
      if (v13)
      {
LABEL_9:
        if (v13 >= 1)
        {

          for (i = 0; i != v13; ++i)
          {
            if ((v12 & 0xC000000000000001) != 0)
            {
              MEMORY[0x193AC03C0](i, v12);
            }

            else
            {
            }

            ScrapeableContent.Node.print(into:)(a1);
          }

          goto LABEL_16;
        }

LABEL_26:
        __break(1u);
        goto LABEL_27;
      }
    }

    else
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v13)
      {
        goto LABEL_9;
      }
    }

LABEL_16:
    v15 = a1[2];
    if (!v15)
    {
LABEL_19:
      MEMORY[0x193ABEDD0](41, 0xE100000000000000);
      return;
    }

    v16 = __OFSUB__(v15, 1);
    v17 = v15 - 1;
    if (!v16)
    {
      a1[2] = v17;
      specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL, v11);
      goto LABEL_19;
    }

LABEL_27:
    __break(1u);
    return;
  }

  if (__CocoaSet.count.getter())
  {
    goto LABEL_3;
  }
}

void ScrapeableContent.Node.description.getter()
{
  v1[0] = 0xD000000000000018;
  v1[1] = 0x800000018DD7D3B0;
  v2 = xmmword_18DDAB890;
  v3 = 0xE200000000000000;
  ScrapeableContent.Node.print(into:)(v1);
  if (!v2)
  {
    goto LABEL_4;
  }

  if (!__OFSUB__(v2, 1))
  {
    *&v2 = v2 - 1;
    specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL, v0);
LABEL_4:
    MEMORY[0x193ABEDD0](41, 0xE100000000000000);

    return;
  }

  __break(1u);
}

void ScrapeableContent.Item.print(into:)(void *a1)
{
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = a1[2];
  if (v6)
  {
    MEMORY[0x193ABEDD0](10, 0xE100000000000000);
    MEMORY[0x193ABEDD0](a1[3], a1[4]);
    MEMORY[0x193ABEDD0](40, 0xE100000000000000);
    MEMORY[0x193ABEDD0](1835365481, 0xE400000000000000);
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

    a1[2] = v7;
    MEMORY[0x193ABEDD0](8224, 0xE200000000000000);
    if (v5 != 0.0)
    {
      goto LABEL_7;
    }

LABEL_6:
    if (v4 == 0.0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  MEMORY[0x193ABEDD0](40, 0xE100000000000000);
  MEMORY[0x193ABEDD0](1835365481, 0xE400000000000000);
  v7 = 0;
  if (v5 == 0.0)
  {
    goto LABEL_6;
  }

LABEL_7:
  v64 = 0x2820657A69733A23;
  v65 = 0xE800000000000000;
  v8 = Double.description.getter();
  MEMORY[0x193ABEDD0](v8);

  MEMORY[0x193ABEDD0](32, 0xE100000000000000);
  v9 = Double.description.getter();
  MEMORY[0x193ABEDD0](v9);

  MEMORY[0x193ABEDD0](41, 0xE100000000000000);
  MEMORY[0x193ABEDD0](32, 0xE100000000000000);
  MEMORY[0x193ABEDD0](0x2820657A69733A23, 0xE800000000000000);

LABEL_8:
  v10 = v3 >> 60;
  if ((v3 >> 60) <= 4)
  {
    if (v10 > 1)
    {
      if (v10 != 2)
      {
        if (v10 == 3)
        {
          outlined init with copy of AccessibilityProperties((v3 & 0xFFFFFFFFFFFFFFFLL) + 16, &v64);
          v67 = 0;
          v68 = 0xE000000000000000;
          _StringGuts.grow(_:)(29);
          MEMORY[0x193ABEDD0](0xD00000000000001ALL, 0x800000018DD7D4B0);
          _print_unlocked<A, B>(_:_:)();
          MEMORY[0x193ABEDD0](41, 0xE100000000000000);
          v12 = v67;
          v11 = v68;
          if (v7)
          {
            MEMORY[0x193ABEDD0](10, 0xE100000000000000);
            v13 = a1[3];
            v14 = a1[4];
          }

          else
          {
            v13 = 32;
            v14 = 0xE100000000000000;
          }

          MEMORY[0x193ABEDD0](v13, v14);
          MEMORY[0x193ABEDD0](v12, v11);

          outlined destroy of AccessibilityProperties(&v64);
          if (!v7)
          {
            goto LABEL_84;
          }
        }

        else
        {
          outlined init with copy of Any((v3 & 0xFFFFFFFFFFFFFFFLL) + 16, &v64);
          v67 = 0;
          v68 = 0xE000000000000000;
          _StringGuts.grow(_:)(26);
          MEMORY[0x193ABEDD0](0xD000000000000017, 0x800000018DD7D490);
          _print_unlocked<A, B>(_:_:)();
          MEMORY[0x193ABEDD0](41, 0xE100000000000000);
          v36 = v67;
          v35 = v68;
          if (v7)
          {
            MEMORY[0x193ABEDD0](10, 0xE100000000000000);
            v37 = a1[3];
            v38 = a1[4];
          }

          else
          {
            v37 = 32;
            v38 = 0xE100000000000000;
          }

          MEMORY[0x193ABEDD0](v37, v38);
          MEMORY[0x193ABEDD0](v36, v35);

          __swift_destroy_boxed_opaque_existential_1(&v64);
          if (!v7)
          {
            goto LABEL_84;
          }
        }

        goto LABEL_82;
      }

      swift_unknownObjectRetain();
      _StringGuts.grow(_:)(18);

      v64 = 0x726F6674616C7028;
      v65 = 0xEF20776569762D6DLL;
      swift_getObjectType();
      v27 = _typeName(_:qualified:)();
      MEMORY[0x193ABEDD0](v27);

      MEMORY[0x193ABEDD0](41, 0xE100000000000000);
      v3 = 0x726F6674616C7028;
      v16 = 0xEF20776569762D6DLL;
      if (v7)
      {
        MEMORY[0x193ABEDD0](10, 0xE100000000000000);
        v28 = a1[3];
        v29 = a1[4];
LABEL_44:
        MEMORY[0x193ABEDD0](v28, v29);
        MEMORY[0x193ABEDD0](v3, v16);
        swift_unknownObjectRelease();
        goto LABEL_61;
      }

LABEL_43:
      v28 = 32;
      v29 = 0xE100000000000000;
      goto LABEL_44;
    }

    if (!v10)
    {
      v19 = *(v3 + 48);
      v20 = 0xE000000000000000;
      v64 = 0;
      v65 = 0xE000000000000000;
      MEMORY[0x193ABEDD0](0x22207478657428, 0xE700000000000000);
      v21 = *(v19 + 216);
      if (v21)
      {
        v22 = [v21 string];
        v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v24;
      }

      else
      {
        v23 = 0;
      }

      MEMORY[0x193ABEDD0](v23, v20);

      v25 = 10530;
      v26 = 0xE200000000000000;
      goto LABEL_53;
    }

    if (v7)
    {
      MEMORY[0x193ABEDD0](10, 0xE100000000000000);
      v42 = a1[3];
      v43 = a1[4];
    }

    else
    {
      v42 = 32;
      v43 = 0xE100000000000000;
    }

    MEMORY[0x193ABEDD0](v42, v43);
    v55 = 0x296567616D6928;
    v56 = 0xE700000000000000;
LABEL_81:
    MEMORY[0x193ABEDD0](v55, v56);
    if (!v7)
    {
LABEL_84:
      MEMORY[0x193ABEDD0](41, 0xE100000000000000);
      return;
    }

    goto LABEL_82;
  }

  if (v10 <= 6)
  {
    if (v10 != 5)
    {
      v44 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      _StringGuts.grow(_:)(18);

      v64 = 0x63612D7265737528;
      v65 = 0xEF20797469766974;
      v45 = [v44 description];
      v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v48 = v47;

      MEMORY[0x193ABEDD0](v46, v48);

      MEMORY[0x193ABEDD0](41, 0xE100000000000000);
      if (v7)
      {
        MEMORY[0x193ABEDD0](10, 0xE100000000000000);
        v49 = a1[3];
        v50 = a1[4];
      }

      else
      {
        v49 = 32;
        v50 = 0xE100000000000000;
      }

      MEMORY[0x193ABEDD0](v49, v50);
      MEMORY[0x193ABEDD0](0x63612D7265737528, 0xEF20797469766974);

LABEL_61:

      if (!v7)
      {
        goto LABEL_84;
      }

      goto LABEL_82;
    }

    v64 = 0;
    v65 = 0xE000000000000000;
    MEMORY[0x193ABEDD0](0x7974696361706F28, 0xE900000000000020);
    Double.write<A>(to:)();
    v25 = 41;
    v26 = 0xE100000000000000;
LABEL_53:
    MEMORY[0x193ABEDD0](v25, v26);
    v32 = v64;
    v31 = v65;
    if (v7)
    {
      goto LABEL_54;
    }

    goto LABEL_28;
  }

  if (v10 == 7)
  {
    v30 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v64 = 0x206E6F7474756228;
    v65 = 0xE800000000000000;
    v67 = 0;
    v68 = 0xE000000000000000;
    MEMORY[0x193ABEDD0](0x203A656C6F72, 0xE600000000000000);
    v66 = v30;
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x193ABEDD0](0, 0xE000000000000000);

    v32 = 0x206E6F7474756228;
    v31 = 0xE800000000000000;
    if (v7)
    {
LABEL_54:
      MEMORY[0x193ABEDD0](10, 0xE100000000000000);
      v33 = a1[3];
      v34 = a1[4];
LABEL_55:
      MEMORY[0x193ABEDD0](v33, v34);
      MEMORY[0x193ABEDD0](v32, v31);

      if (!v7)
      {
        goto LABEL_84;
      }

LABEL_82:
      if (!__OFSUB__(v7, 1))
      {
        a1[2] = v7 - 1;
        specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL, v54);
        goto LABEL_84;
      }

      goto LABEL_86;
    }

LABEL_28:
    v33 = 32;
    v34 = 0xE100000000000000;
    goto LABEL_55;
  }

  if (v10 != 8)
  {
    if (v3 == 0x9000000000000000)
    {
      if (v7)
      {
        MEMORY[0x193ABEDD0](10, 0xE100000000000000);
        v57 = a1[3];
        v58 = a1[4];
      }

      else
      {
        v57 = 32;
        v58 = 0xE100000000000000;
      }

      MEMORY[0x193ABEDD0](v57, v58);
      v55 = 0x296E656464696828;
      v56 = 0xE800000000000000;
    }

    else
    {
      if (v3 == 0x9000000000000008)
      {
        v39 = "(presentation-container-child)";
        if (v7)
        {
          MEMORY[0x193ABEDD0](10, 0xE100000000000000);
          v40 = a1[3];
          v41 = a1[4];
        }

        else
        {
          v40 = 32;
          v41 = 0xE100000000000000;
        }

        MEMORY[0x193ABEDD0](v40, v41);
        v55 = 0xD000000000000018;
      }

      else
      {
        v39 = "(archived-intelligence ";
        if (v7)
        {
          MEMORY[0x193ABEDD0](10, 0xE100000000000000);
          v59 = a1[3];
          v60 = a1[4];
        }

        else
        {
          v59 = 32;
          v60 = 0xE100000000000000;
        }

        MEMORY[0x193ABEDD0](v59, v60);
        v55 = 0xD00000000000001ELL;
      }

      v56 = v39 | 0x8000000000000000;
    }

    goto LABEL_81;
  }

  v15 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  v16 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
  outlined copy of Data._Representation(v15, v16);
  _StringGuts.grow(_:)(32);

  v64 = 0xD000000000000017;
  v65 = 0x800000018DD7D430;
  v17 = v16 >> 62;
  if ((v16 >> 62) > 1)
  {
    v18 = 0;
    if (v17 == 2)
    {
      v52 = *(v15 + 16);
      v51 = *(v15 + 24);
      v53 = __OFSUB__(v51, v52);
      v18 = v51 - v52;
      if (v53)
      {
        __break(1u);
        goto LABEL_43;
      }
    }

LABEL_69:
    v67 = v18;
    v61 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x193ABEDD0](v61);

    MEMORY[0x193ABEDD0](0x29736574796220, 0xE700000000000000);
    if (v7)
    {
      MEMORY[0x193ABEDD0](10, 0xE100000000000000);
      v62 = a1[3];
      v63 = a1[4];
    }

    else
    {
      v62 = 32;
      v63 = 0xE100000000000000;
    }

    MEMORY[0x193ABEDD0](v62, v63);
    MEMORY[0x193ABEDD0](v64, v65);

    v54.n128_f64[0] = outlined consume of Data._Representation(v15, v16);
    if (!v7)
    {
      goto LABEL_84;
    }

    goto LABEL_82;
  }

  if (!v17)
  {
    v18 = BYTE6(v16);
    goto LABEL_69;
  }

  LODWORD(v18) = HIDWORD(v15) - v15;
  if (!__OFSUB__(HIDWORD(v15), v15))
  {
    v18 = v18;
    goto LABEL_69;
  }

LABEL_87:
  __break(1u);
}

void ScrapeableContent.Item.description.getter()
{
  v1[0] = 0xD000000000000018;
  v1[1] = 0x800000018DD7D3D0;
  v2 = xmmword_18DDAB890;
  v3 = 0xE200000000000000;
  ScrapeableContent.Item.print(into:)(v1);
  if (!v2)
  {
    goto LABEL_4;
  }

  if (!__OFSUB__(v2, 1))
  {
    *&v2 = v2 - 1;
    specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL, v0);
LABEL_4:
    MEMORY[0x193ABEDD0](41, 0xE100000000000000);

    return;
  }

  __break(1u);
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[24 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[24 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*(v6 + 2) < *(v4 + 2))
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 24;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 24;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[24 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[24 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_20:
    v5 -= 24;
    do
    {
      v16 = (v5 + 24);
      if (*(v12 - 1) < *(v6 - 1))
      {
        v19 = v6 - 24;
        if (v16 != v6)
        {
          v20 = *v19;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v20;
        }

        if (v12 <= v4 || (v6 -= 24, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v17 = v12 - 24;
      if (v16 != v12)
      {
        v18 = *v17;
        *(v5 + 16) = *(v12 - 1);
        *v5 = v18;
      }

      v5 -= 24;
      v12 -= 24;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_31:
  v21 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v22 = (v21 >> 2) + (v21 >> 63);
  if (v6 != v4 || v6 >= &v4[24 * v22])
  {
    memmove(v6, v4, 24 * v22);
  }

  return 1;
}

void lazy protocol witness table accessor for type ScrapeableContent.Content.Button.Role.DestructiveCodingKeys and conformance ScrapeableContent.Content.Button.Role.DestructiveCodingKeys()
{
  if (!lazy protocol witness table cache variable for type ScrapeableContent.Content.Button.Role.DestructiveCodingKeys and conformance ScrapeableContent.Content.Button.Role.DestructiveCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for ScrapeableContent.Content.Button.Role.DestructiveCodingKeys, &unk_1F0087A90, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ScrapeableContent.Content.Button.Role.DestructiveCodingKeys and conformance ScrapeableContent.Content.Button.Role.DestructiveCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type ScrapeableContent.Content.Button.Role.DestructiveCodingKeys and conformance ScrapeableContent.Content.Button.Role.DestructiveCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for ScrapeableContent.Content.Button.Role.DestructiveCodingKeys, &unk_1F0087A90, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ScrapeableContent.Content.Button.Role.DestructiveCodingKeys and conformance ScrapeableContent.Content.Button.Role.DestructiveCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type ScrapeableContent.Content.Button.Role.DestructiveCodingKeys and conformance ScrapeableContent.Content.Button.Role.DestructiveCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for ScrapeableContent.Content.Button.Role.DestructiveCodingKeys, &unk_1F0087A90, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ScrapeableContent.Content.Button.Role.DestructiveCodingKeys and conformance ScrapeableContent.Content.Button.Role.DestructiveCodingKeys);
  }
}

void lazy protocol witness table accessor for type ScrapeableContent.Content.Button.Role.CancelCodingKeys and conformance ScrapeableContent.Content.Button.Role.CancelCodingKeys()
{
  if (!lazy protocol witness table cache variable for type ScrapeableContent.Content.Button.Role.CancelCodingKeys and conformance ScrapeableContent.Content.Button.Role.CancelCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for ScrapeableContent.Content.Button.Role.CancelCodingKeys, &unk_1F0087A70, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ScrapeableContent.Content.Button.Role.CancelCodingKeys and conformance ScrapeableContent.Content.Button.Role.CancelCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type ScrapeableContent.Content.Button.Role.CancelCodingKeys and conformance ScrapeableContent.Content.Button.Role.CancelCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for ScrapeableContent.Content.Button.Role.CancelCodingKeys, &unk_1F0087A70, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ScrapeableContent.Content.Button.Role.CancelCodingKeys and conformance ScrapeableContent.Content.Button.Role.CancelCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type ScrapeableContent.Content.Button.Role.CancelCodingKeys and conformance ScrapeableContent.Content.Button.Role.CancelCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for ScrapeableContent.Content.Button.Role.CancelCodingKeys, &unk_1F0087A70, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ScrapeableContent.Content.Button.Role.CancelCodingKeys and conformance ScrapeableContent.Content.Button.Role.CancelCodingKeys);
  }
}

void lazy protocol witness table accessor for type ScrapeableContent.Content.Button.Role.PrimaryCodingKeys and conformance ScrapeableContent.Content.Button.Role.PrimaryCodingKeys()
{
  if (!lazy protocol witness table cache variable for type ScrapeableContent.Content.Button.Role.PrimaryCodingKeys and conformance ScrapeableContent.Content.Button.Role.PrimaryCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for ScrapeableContent.Content.Button.Role.PrimaryCodingKeys, &unk_1F0087A50, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ScrapeableContent.Content.Button.Role.PrimaryCodingKeys and conformance ScrapeableContent.Content.Button.Role.PrimaryCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type ScrapeableContent.Content.Button.Role.PrimaryCodingKeys and conformance ScrapeableContent.Content.Button.Role.PrimaryCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for ScrapeableContent.Content.Button.Role.PrimaryCodingKeys, &unk_1F0087A50, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ScrapeableContent.Content.Button.Role.PrimaryCodingKeys and conformance ScrapeableContent.Content.Button.Role.PrimaryCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type ScrapeableContent.Content.Button.Role.PrimaryCodingKeys and conformance ScrapeableContent.Content.Button.Role.PrimaryCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for ScrapeableContent.Content.Button.Role.PrimaryCodingKeys, &unk_1F0087A50, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ScrapeableContent.Content.Button.Role.PrimaryCodingKeys and conformance ScrapeableContent.Content.Button.Role.PrimaryCodingKeys);
  }
}

void lazy protocol witness table accessor for type ScrapeableContent.Content.Button.Role.NormalCodingKeys and conformance ScrapeableContent.Content.Button.Role.NormalCodingKeys()
{
  if (!lazy protocol witness table cache variable for type ScrapeableContent.Content.Button.Role.NormalCodingKeys and conformance ScrapeableContent.Content.Button.Role.NormalCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for ScrapeableContent.Content.Button.Role.NormalCodingKeys, &unk_1F0087A30, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ScrapeableContent.Content.Button.Role.NormalCodingKeys and conformance ScrapeableContent.Content.Button.Role.NormalCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type ScrapeableContent.Content.Button.Role.NormalCodingKeys and conformance ScrapeableContent.Content.Button.Role.NormalCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for ScrapeableContent.Content.Button.Role.NormalCodingKeys, &unk_1F0087A30, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ScrapeableContent.Content.Button.Role.NormalCodingKeys and conformance ScrapeableContent.Content.Button.Role.NormalCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type ScrapeableContent.Content.Button.Role.NormalCodingKeys and conformance ScrapeableContent.Content.Button.Role.NormalCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for ScrapeableContent.Content.Button.Role.NormalCodingKeys, &unk_1F0087A30, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ScrapeableContent.Content.Button.Role.NormalCodingKeys and conformance ScrapeableContent.Content.Button.Role.NormalCodingKeys);
  }
}

void lazy protocol witness table accessor for type ScrapeableContent.Content.Button.Role.CodingKeys and conformance ScrapeableContent.Content.Button.Role.CodingKeys()
{
  if (!lazy protocol witness table cache variable for type ScrapeableContent.Content.Button.Role.CodingKeys and conformance ScrapeableContent.Content.Button.Role.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for ScrapeableContent.Content.Button.Role.CodingKeys, &unk_1F0087A10, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ScrapeableContent.Content.Button.Role.CodingKeys and conformance ScrapeableContent.Content.Button.Role.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type ScrapeableContent.Content.Button.Role.CodingKeys and conformance ScrapeableContent.Content.Button.Role.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for ScrapeableContent.Content.Button.Role.CodingKeys, &unk_1F0087A10, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ScrapeableContent.Content.Button.Role.CodingKeys and conformance ScrapeableContent.Content.Button.Role.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type ScrapeableContent.Content.Button.Role.CodingKeys and conformance ScrapeableContent.Content.Button.Role.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for ScrapeableContent.Content.Button.Role.CodingKeys, &unk_1F0087A10, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ScrapeableContent.Content.Button.Role.CodingKeys and conformance ScrapeableContent.Content.Button.Role.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type ScrapeableContent.Content.Button.Role.CodingKeys and conformance ScrapeableContent.Content.Button.Role.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for ScrapeableContent.Content.Button.Role.CodingKeys, &unk_1F0087A10, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ScrapeableContent.Content.Button.Role.CodingKeys and conformance ScrapeableContent.Content.Button.Role.CodingKeys);
  }
}

void type metadata accessor for KeyedEncodingContainer<ScrapeableContent.Content.Button.Role.DestructiveCodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void lazy protocol witness table accessor for type ScrapeableID and conformance ScrapeableID()
{
  if (!lazy protocol witness table cache variable for type ScrapeableID and conformance ScrapeableID)
  {
    swift_getWitnessTable(protocol conformance descriptor for ScrapeableID, &type metadata for ScrapeableID, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ScrapeableID and conformance ScrapeableID);
  }
}

void lazy protocol witness table accessor for type ScrapeableContent.Content.Button.Role and conformance ScrapeableContent.Content.Button.Role()
{
  if (!lazy protocol witness table cache variable for type ScrapeableContent.Content.Button.Role and conformance ScrapeableContent.Content.Button.Role)
  {
    swift_getWitnessTable(protocol conformance descriptor for ScrapeableContent.Content.Button.Role, &type metadata for ScrapeableContent.Content.Button.Role, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ScrapeableContent.Content.Button.Role and conformance ScrapeableContent.Content.Button.Role);
  }
}

unint64_t *assignWithCopy for ScrapeableContent.Content(unint64_t *a1, unint64_t *a2)
{
  v3 = *a2;
  outlined copy of ScrapeableContent.Content(*a2);
  v4 = *a1;
  *a1 = v3;
  outlined consume of ScrapeableContent.Content(v4);
  return a1;
}

unint64_t *assignWithTake for ScrapeableContent.Content(unint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;
  outlined consume of ScrapeableContent.Content(v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for ScrapeableContent.Content(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x77 && *(a1 + 8))
  {
    return (*a1 + 119);
  }

  v3 = ((*a1 >> 60) & 0x8F | (16 * (*a1 & 7))) ^ 0x7F;
  if (v3 >= 0x76)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for ScrapeableContent.Content(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x76)
  {
    *result = a2 - 119;
    if (a3 >= 0x77)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x77)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 4) & 7 | (8 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

double destroy for ScrapeableContent.Item(unint64_t *a1)
{
  outlined consume of ScrapeableContent.Content(a1[1]);

  return result;
}

uint64_t initializeWithCopy for ScrapeableContent.Item(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  outlined copy of ScrapeableContent.Content(v4);
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;
  v6 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v6;

  return a1;
}

uint64_t assignWithCopy for ScrapeableContent.Item(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  v4 = *(a2 + 8);
  outlined copy of ScrapeableContent.Content(v4);
  v5 = *(a1 + 8);
  *(a1 + 8) = v4;
  outlined consume of ScrapeableContent.Content(v5);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  return a1;
}

uint64_t assignWithTake for ScrapeableContent.Item(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  outlined consume of ScrapeableContent.Content(v4);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 32) = *(a2 + 32);

  v5 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v5;
  return a1;
}

unint64_t *assignWithTake for ScrapeableAttachmentViewModifier(unint64_t *result, unint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  if ((~*result & 0xF000000000000007) != 0)
  {
    if ((~v3 & 0xF000000000000007) != 0)
    {
      *result = v3;
      v5 = result;
      outlined consume of ScrapeableContent.Content(v2);
      return v5;
    }

    else
    {
      v4 = result;
      outlined destroy of ScrapeableContent.Content(result);
      result = v4;
      *v4 = v3;
    }
  }

  else
  {
    *result = v3;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ScrapeableAttachmentViewModifier(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x76 && *(a1 + 8))
  {
    return (*a1 + 118);
  }

  v3 = (*a1 >> 60) & 0x8F | (16 * (*a1 & 7));
  v4 = v3 ^ 0x7E;
  v5 = 126 - v3;
  if (v4 >= 0x76)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for ScrapeableAttachmentViewModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x75)
  {
    *result = a2 - 118;
    if (a3 >= 0x76)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x76)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = ((8 * (a2 ^ 0x7F)) | ((a2 ^ 0x7F) >> 4) | (((8 * (a2 ^ 0x7F)) | ((a2 ^ 0x7F) >> 4)) << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void specialized static AGSubgraphRef.Map.resolveParents(nodes:children:)(uint64_t *a1, char **a2)
{
  v2 = *a1;
  v30 = *a1 >> 62;
  if (v30)
  {
LABEL_59:
    v24 = a2;
    v25 = __CocoaSet.count.getter();
    a2 = v24;
    v3 = v25;
    if (!v25)
    {
      return;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  v26 = a2;
  v4 = *a2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
  }

  v28 = 0;
  v5 = 0;
  v6 = v2 & 0xC000000000000001;
  v29 = v3;
  do
  {
    while (1)
    {
      if (v6)
      {
        v7 = MEMORY[0x193AC03C0](v5, v2);
        v8 = __OFADD__(v5++, 1);
        if (v8)
        {
          goto LABEL_56;
        }
      }

      else
      {
        if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_57;
        }

        v7 = *(v2 + 32 + 8 * v5);

        v8 = __OFADD__(v5++, 1);
        if (v8)
        {
          goto LABEL_56;
        }
      }

      v9 = *(v7 + 16);
      if (v9)
      {
        break;
      }

      if (v5 == v3)
      {
        goto LABEL_38;
      }
    }

    if (v30)
    {
      v10 = __CocoaSet.count.getter();
      if (!v10)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v10 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v10)
      {
        goto LABEL_32;
      }
    }

    v11 = 0;
    do
    {
      v12 = v11;
      while (1)
      {
        if (v6)
        {
          v13 = MEMORY[0x193AC03C0](v12, v2);
          v11 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_53;
          }
        }

        else
        {
          if (v12 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_55;
          }

          v13 = *(v2 + 8 * v12 + 32);

          v11 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
LABEL_53:
            __break(1u);
            goto LABEL_54;
          }
        }

        if (v13 != v7 && *(v13 + 20) == v9)
        {
          break;
        }

        ++v12;
        if (v11 == v10)
        {
          goto LABEL_32;
        }
      }

      *(v13 + 104) = 1;
      swift_beginAccess();

      MEMORY[0x193ABF170](v14);
      if (*((*(v7 + 96) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v7 + 96) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();

      v28 = 1;
    }

    while (v11 != v10);
LABEL_32:
    swift_beginAccess();
    specialized MutableCollection<>.reverse()();
    swift_endAccess();
    v15 = *(v4 + 2);
    if (v15)
    {
      swift_beginAccess();
      v17 = 0;
      v18 = v4 + 32;
      while (1)
      {
        v31 = v9;
        if (v17 >= *(v4 + 2))
        {
          break;
        }

        ++v17;
        ScrapeableContent.move(parentID:to:)(&v31, (v7 + 96), v16);
        v18 += 16;
        if (v15 == v17)
        {
          swift_endAccess();
          goto LABEL_37;
        }
      }

LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

LABEL_37:

    v3 = v29;
  }

  while (v5 != v29);
LABEL_38:
  *v26 = v4;
  if ((v28 & 1) == 0)
  {
    return;
  }

  v32 = MEMORY[0x1E69E7CC0];
  if (!v30)
  {
    v19 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
      goto LABEL_41;
    }

LABEL_62:
    v23 = MEMORY[0x1E69E7CC0];
    goto LABEL_63;
  }

  v19 = __CocoaSet.count.getter();
  if (!v19)
  {
    goto LABEL_62;
  }

LABEL_41:
  v20 = 0;
  while (2)
  {
    if (v6)
    {
      v21 = MEMORY[0x193AC03C0](v20, v2);
      v22 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      goto LABEL_47;
    }

    if (v20 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_58;
    }

    v21 = *(v2 + 8 * v20 + 32);

    v22 = v20 + 1;
    if (!__OFADD__(v20, 1))
    {
LABEL_47:
      if (*(v21 + 104))
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v20;
      if (v22 == v19)
      {
        goto LABEL_52;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_52:
  v23 = v32;
LABEL_63:

  *a1 = v23;
}

void *specialized Sequence.compactMap<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[2] = *MEMORY[0x1E69E9840];
  if (a1 == a2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (a2 < a1)
  {
LABEL_28:
    __break(1u);
  }

  v20 = a2 - 1;
  result = MEMORY[0x1E69E7CC0];
  v7 = a1;
  do
  {
    v21 = result;
    if (v7 <= a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = v7;
    }

    v9 = v7;
    while (1)
    {
      if (v7 < a1)
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      if (v8 == v9)
      {
        goto LABEL_27;
      }

      v10 = AGSubgraphGetChild();
      AGSubgraphRef.Map.content(for:updated:)(v10, a4, v23);
      v11 = v23[0];
      if (v23[0])
      {
        break;
      }

LABEL_10:
      if (a2 == ++v9)
      {
        return v21;
      }
    }

    v12 = v23[1];
    if (!(v23[0] >> 62))
    {
      if (*((v23[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      goto LABEL_16;
    }

    if (!__CocoaSet.count.getter())
    {
LABEL_16:
      if (*(v12 + 16))
      {
        goto LABEL_19;
      }

      outlined consume of ScrapeableContent?(v11);
      goto LABEL_10;
    }

LABEL_19:
    Index = AGSubgraphGetIndex();

    v13 = v21;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21[2] + 1, 1, v21);
    }

    v14 = v13;
    v15 = v13[2];
    v16 = v14;
    v17 = v14[3];
    if (v15 >= v17 >> 1)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v15 + 1, 1, v16);
    }

    v7 = v9 + 1;
    result = v16;
    v16[2] = v15 + 1;
    v18 = &v16[3 * v15];
    v18[4] = v11;
    v18[5] = v12;
    v18[6] = Index;
  }

  while (v20 != v9);
  return result;
}

uint64_t specialized ScrapeableContent.Content.Button.Role.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C616D726F6ELL && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7972616D697270 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C65636E6163 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7463757274736564 && a2 == 0xEB00000000657669)
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

void type metadata accessor for (ScrapeableContent, Int)()
{
  if (!lazy cache variable for type metadata for (ScrapeableContent, Int))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (ScrapeableContent, Int));
    }
  }
}

double outlined consume of ScrapeableContent?(uint64_t a1)
{
  if (a1)
  {
  }

  return result;
}

uint64_t outlined destroy of ScrapeableContent.Item?(uint64_t a1)
{
  type metadata accessor for HitTestableEvent?(0, &lazy cache variable for type metadata for ScrapeableContent.Item?, &type metadata for ScrapeableContent.Item);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t GesturePhase.unwrapped.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v25 = a2;
  v3 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  v13 = *(v12 + 16);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v3 + 16);
  v18(v11, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 1) < 2)
  {
    (v18)(v5, v11, a1);
    v8 = v5;
LABEL_3:
    v20 = *(v14 + 32);
    v20(v17, v8, v13);
    (*(v3 + 8))(v11, a1);
    v21 = v25;
    v20(v25, v17, v13);
    return (*(v14 + 56))(v21, 0, 1, v13);
  }

  if (!EnumCaseMultiPayload)
  {
    (v18)(v8, v11, a1);
    if ((*(v14 + 48))(v8, 1, v13) != 1)
    {
      goto LABEL_3;
    }

    v23 = type metadata accessor for Optional();
    (*(*(v23 - 8) + 8))(v8, v23);
  }

  (*(v14 + 56))(v25, 1, 1, v13);
  return (*(v3 + 8))(v11, a1);
}

BOOL GesturePhase.isFailed.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = MEMORY[0x1EEE9AC00](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 3)
  {
    (*(v2 + 8))(v5, a1);
  }

  return EnumCaseMultiPayload == 3;
}

BOOL GesturePhase.isActive.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = MEMORY[0x1EEE9AC00](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v3);
  v6 = swift_getEnumCaseMultiPayload() - 1 < 2;
  (*(v2 + 8))(v5, a1);
  return v6;
}

uint64_t GesturePhase.isTerminal.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = MEMORY[0x1EEE9AC00](a1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v7 = 1;
  if (EnumCaseMultiPayload == 2)
  {
    goto LABEL_4;
  }

  if (EnumCaseMultiPayload != 3)
  {
    v7 = 0;
LABEL_4:
    (*(v2 + 8))(v5, a1);
  }

  return v7;
}

uint64_t static GesturePhase<A>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v69 = a4;
  v73 = a1;
  v74 = a2;
  v71 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v65 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v64 = &v59 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v60 = &v59 - v9;
  v10 = type metadata accessor for Optional();
  v67 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v62 = &v59 - v11;
  v68 = v12;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v61 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v63 = &v59 - v13;
  v72 = a3;
  v16 = type metadata accessor for GesturePhase(0, a3, v14, v15);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v59 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v59 - v24;
  v26 = swift_getTupleTypeMetadata2();
  v27 = *(v26 - 8);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = &v59 - v29;
  v32 = *(v31 + 48);
  v70 = v17;
  v33 = *(v17 + 16);
  v33(&v59 - v29, v73, v16, v28);
  (v33)(&v30[v32], v74, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }

    (v33)(v19, v30, v16);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      (*(v71 + 8))(v19, v72);
      goto LABEL_14;
    }

    v36 = v71;
    v35 = v72;
    v37 = v65;
    (*(v71 + 32))(v65, &v30[v32], v72);
    v38 = dispatch thunk of static Equatable.== infix(_:_:)();
    v39 = *(v36 + 8);
    v39(v37, v35);
    v39(v19, v35);
    v27 = v70;
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      (v33)(v25, v30, v16);
      if (swift_getEnumCaseMultiPayload())
      {
        (*(v67 + 8))(v25, v68);
LABEL_14:
        v38 = 0;
        v16 = v26;
        goto LABEL_15;
      }

      v45 = v67;
      v46 = *(TupleTypeMetadata2 + 48);
      v47 = *(v67 + 32);
      v48 = v63;
      v49 = v68;
      v47(v63, v25, v68);
      v50 = &v30[v32];
      v51 = v48;
      v47(&v48[v46], v50, v49);
      v52 = v71;
      v53 = *(v71 + 48);
      v54 = v48;
      v55 = v72;
      if (v53(v54, 1, v72) == 1)
      {
        if (v53(&v51[v46], 1, v55) == 1)
        {
          (*(v45 + 8))(v51, v49);
LABEL_11:
          v38 = 1;
          v27 = v70;
          goto LABEL_15;
        }
      }

      else
      {
        (*(v45 + 16))(v62, v51, v49);
        if (v53(&v51[v46], 1, v55) != 1)
        {
          v56 = v60;
          (*(v52 + 32))(v60, &v51[v46], v55);
          v57 = v62;
          LODWORD(v74) = dispatch thunk of static Equatable.== infix(_:_:)();
          v58 = *(v52 + 8);
          v58(v56, v55);
          v58(v57, v55);
          (*(v45 + 8))(v51, v49);
          if (v74)
          {
            goto LABEL_11;
          }

LABEL_22:
          v38 = 0;
          v27 = v70;
          goto LABEL_15;
        }

        (*(v52 + 8))(v62, v55);
      }

      (*(v61 + 8))(v51, TupleTypeMetadata2);
      goto LABEL_22;
    }

    (v33)(v22, v30, v16);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v71 + 8))(v22, v72);
      goto LABEL_14;
    }

    v41 = v71;
    v40 = v72;
    v42 = v64;
    (*(v71 + 32))(v64, &v30[v32], v72);
    v38 = dispatch thunk of static Equatable.== infix(_:_:)();
    v43 = *(v41 + 8);
    v43(v42, v40);
    v43(v22, v40);
    v27 = v70;
  }

LABEL_15:
  (*(v27 + 8))(v30, v16);
  return v38 & 1;
}

uint64_t GesturePhase.map<A>(_:)@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 16);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v16, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      (*(v8 + 32))(v10, v14, v7);
      a1(v10);
      (*(v8 + 8))(v10, v7);
    }

    type metadata accessor for GesturePhase(0, a3, v18, v19);
  }

  else if (EnumCaseMultiPayload)
  {
    (*(v8 + 32))(v10, v14, v7);
    a1(v10);
    (*(v8 + 8))(v10, v7);
    type metadata accessor for GesturePhase(0, a3, v24, v25);
  }

  else
  {
    if ((*(v8 + 48))(v14, 1, v7) == 1)
    {
      (*(*(a3 - 8) + 56))(a4, 1, 1, a3);
      type metadata accessor for GesturePhase(0, a3, v20, v21);
      swift_storeEnumTagMultiPayload();
      v22 = type metadata accessor for Optional();
      return (*(*(v22 - 8) + 8))(v14, v22);
    }

    (*(v8 + 32))(v10, v14, v7);
    a1(v10);
    (*(v8 + 8))(v10, v7);
    (*(*(a3 - 8) + 56))(a4, 0, 1, a3);
    type metadata accessor for GesturePhase(0, a3, v26, v27);
  }

  return swift_storeEnumTagMultiPayload();
}

BOOL GesturePhase.isPossible.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = MEMORY[0x1EEE9AC00](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v3);
  v6 = swift_getEnumCaseMultiPayload() == 0;
  (*(v2 + 8))(v5, a1);
  return v6;
}

BOOL GesturePhase.isEnded.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = MEMORY[0x1EEE9AC00](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v3);
  v6 = swift_getEnumCaseMultiPayload() == 2;
  (*(v2 + 8))(v5, a1);
  return v6;
}

uint64_t static GesturePhase.defaultValue.getter(uint64_t a1, void x1_0, uint64_t a2, uint64_t a3)
{
  type metadata accessor for GesturePhase(0, a1, a2, a3);

  return swift_storeEnumTagMultiPayload();
}

uint64_t type metadata completion function for GesturePhase(uint64_t a1)
{
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for GesturePhase(void *__dst, unsigned __int8 *a2, uint64_t a3)
{
  v3 = __dst;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  if (*(v5 + 84))
  {
    v7 = *(v5 + 64);
  }

  else
  {
    v7 = v6 + 1;
  }

  if (v6 <= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = *(v5 + 64);
  }

  v9 = v8 + 1;
  v10 = *(v5 + 80);
  if (v10 > 7 || (*(v5 + 80) & 0x100000) != 0 || v9 > 0x18)
  {
    v13 = *a2;
    *v3 = *a2;
    v3 = (v13 + ((v10 + 16) & ~v10));

    return v3;
  }

  v15 = a2[v8];
  v16 = v15 - 3;
  if (v15 >= 3)
  {
    if (v8 <= 3)
    {
      v17 = v8;
    }

    else
    {
      v17 = 4;
    }

    if (v17 <= 1)
    {
      if (!v17)
      {
        goto LABEL_31;
      }

      v18 = *a2;
    }

    else if (v17 == 2)
    {
      v18 = *a2;
    }

    else if (v17 == 3)
    {
      v18 = *a2 | (a2[2] << 16);
    }

    else
    {
      v18 = *a2;
    }

    v19 = (v18 | (v16 << (8 * v8))) + 3;
    v15 = v18 + 3;
    if (v8 < 4)
    {
      v15 = v19;
    }
  }

LABEL_31:
  switch(v15)
  {
    case 2u:
      (*(v5 + 16))(__dst);
      *(v3 + v8) = 2;
      return v3;
    case 1u:
      (*(v5 + 16))(__dst);
      *(v3 + v8) = 1;
      return v3;
    case 0u:
      if ((*(v5 + 48))(a2, 1, v4))
      {
        memcpy(v3, a2, v7);
      }

      else
      {
        (*(v5 + 16))(v3, a2, v4);
        (*(v5 + 56))(v3, 0, 1, v4);
      }

      *(v3 + v8) = 0;
      return v3;
  }

  return memcpy(__dst, a2, v9);
}

_BYTE *initializeWithCopy for GesturePhase(_BYTE *__dst, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  if (*(v5 + 84))
  {
    v7 = *(v5 + 64);
  }

  else
  {
    v7 = v6 + 1;
  }

  if (v6 <= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = *(v5 + 64);
  }

  v9 = a2[v8];
  v10 = v9 - 3;
  if (v9 >= 3)
  {
    if (v8 <= 3)
    {
      v11 = v8;
    }

    else
    {
      v11 = 4;
    }

    if (v11 <= 1)
    {
      if (!v11)
      {
        goto LABEL_21;
      }

      v12 = *a2;
    }

    else if (v11 == 2)
    {
      v12 = *a2;
    }

    else if (v11 == 3)
    {
      v12 = *a2 | (a2[2] << 16);
    }

    else
    {
      v12 = *a2;
    }

    v13 = (v12 | (v10 << (8 * v8))) + 3;
    v9 = v12 + 3;
    if (v8 < 4)
    {
      v9 = v13;
    }
  }

LABEL_21:
  switch(v9)
  {
    case 2u:
      (*(v5 + 16))(__dst);
      v15 = 2;
      goto LABEL_29;
    case 1u:
      (*(v5 + 16))(__dst);
      v15 = 1;
LABEL_29:
      __dst[v8] = v15;
      return __dst;
    case 0u:
      if ((*(v5 + 48))(a2, 1, v4))
      {
        memcpy(__dst, a2, v7);
      }

      else
      {
        (*(v5 + 16))(__dst, a2, v4);
        (*(v5 + 56))(__dst, 0, 1, v4);
      }

      __dst[v8] = 0;
      return __dst;
  }

  return memcpy(__dst, a2, v8 + 1);
}

unsigned __int8 *assignWithCopy for GesturePhase(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  if (*(v6 + 84))
  {
    v8 = *(v6 + 64);
  }

  else
  {
    v8 = v7 + 1;
  }

  if (v7 <= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = *(v6 + 64);
  }

  v10 = a1[v9];
  v11 = v10 - 3;
  if (v10 >= 3)
  {
    if (v9 <= 3)
    {
      v12 = v9;
    }

    else
    {
      v12 = 4;
    }

    if (v12 <= 1)
    {
      if (!v12)
      {
        goto LABEL_22;
      }

      v13 = *a1;
    }

    else if (v12 == 2)
    {
      v13 = *a1;
    }

    else if (v12 == 3)
    {
      v13 = *a1 | (a1[2] << 16);
    }

    else
    {
      v13 = *a1;
    }

    v14 = (v13 | (v11 << (8 * v9))) + 3;
    v10 = v13 + 3;
    if (v9 < 4)
    {
      v10 = v14;
    }
  }

LABEL_22:
  if (v10 - 1 < 2 || !v10 && !(*(v6 + 48))(a1, 1, v5))
  {
    (*(v6 + 8))(a1, v5);
  }

  v15 = a2[v9];
  v16 = v15 - 3;
  if (v15 >= 3)
  {
    if (v9 <= 3)
    {
      v17 = v9;
    }

    else
    {
      v17 = 4;
    }

    if (v17 <= 1)
    {
      if (!v17)
      {
        goto LABEL_40;
      }

      v18 = *a2;
    }

    else if (v17 == 2)
    {
      v18 = *a2;
    }

    else if (v17 == 3)
    {
      v18 = *a2 | (a2[2] << 16);
    }

    else
    {
      v18 = *a2;
    }

    v19 = (v18 | (v16 << (8 * v9))) + 3;
    v15 = v18 + 3;
    if (v9 < 4)
    {
      v15 = v19;
    }
  }

LABEL_40:
  switch(v15)
  {
    case 2u:
      (*(v6 + 16))(a1, a2, v5);
      v20 = 2;
      goto LABEL_48;
    case 1u:
      (*(v6 + 16))(a1, a2, v5);
      v20 = 1;
LABEL_48:
      a1[v9] = v20;
      return a1;
    case 0u:
      if ((*(v6 + 48))(a2, 1, v5))
      {
        memcpy(a1, a2, v8);
      }

      else
      {
        (*(v6 + 16))(a1, a2, v5);
        (*(v6 + 56))(a1, 0, 1, v5);
      }

      a1[v9] = 0;
      return a1;
  }

  return memcpy(a1, a2, v9 + 1);
}

_BYTE *initializeWithTake for GesturePhase(_BYTE *__dst, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  if (*(v5 + 84))
  {
    v7 = *(v5 + 64);
  }

  else
  {
    v7 = v6 + 1;
  }

  if (v6 <= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = *(v5 + 64);
  }

  v9 = a2[v8];
  v10 = v9 - 3;
  if (v9 >= 3)
  {
    if (v8 <= 3)
    {
      v11 = v8;
    }

    else
    {
      v11 = 4;
    }

    if (v11 <= 1)
    {
      if (!v11)
      {
        goto LABEL_21;
      }

      v12 = *a2;
    }

    else if (v11 == 2)
    {
      v12 = *a2;
    }

    else if (v11 == 3)
    {
      v12 = *a2 | (a2[2] << 16);
    }

    else
    {
      v12 = *a2;
    }

    v13 = (v12 | (v10 << (8 * v8))) + 3;
    v9 = v12 + 3;
    if (v8 < 4)
    {
      v9 = v13;
    }
  }

LABEL_21:
  switch(v9)
  {
    case 2u:
      (*(v5 + 32))(__dst);
      v15 = 2;
      goto LABEL_29;
    case 1u:
      (*(v5 + 32))(__dst);
      v15 = 1;
LABEL_29:
      __dst[v8] = v15;
      return __dst;
    case 0u:
      if ((*(v5 + 48))(a2, 1, v4))
      {
        memcpy(__dst, a2, v7);
      }

      else
      {
        (*(v5 + 32))(__dst, a2, v4);
        (*(v5 + 56))(__dst, 0, 1, v4);
      }

      __dst[v8] = 0;
      return __dst;
  }

  return memcpy(__dst, a2, v8 + 1);
}

unsigned __int8 *assignWithTake for GesturePhase(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  if (*(v6 + 84))
  {
    v8 = *(v6 + 64);
  }

  else
  {
    v8 = v7 + 1;
  }

  if (v7 <= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = *(v6 + 64);
  }

  v10 = a1[v9];
  v11 = v10 - 3;
  if (v10 >= 3)
  {
    if (v9 <= 3)
    {
      v12 = v9;
    }

    else
    {
      v12 = 4;
    }

    if (v12 <= 1)
    {
      if (!v12)
      {
        goto LABEL_22;
      }

      v13 = *a1;
    }

    else if (v12 == 2)
    {
      v13 = *a1;
    }

    else if (v12 == 3)
    {
      v13 = *a1 | (a1[2] << 16);
    }

    else
    {
      v13 = *a1;
    }

    v14 = (v13 | (v11 << (8 * v9))) + 3;
    v10 = v13 + 3;
    if (v9 < 4)
    {
      v10 = v14;
    }
  }

LABEL_22:
  if (v10 - 1 < 2 || !v10 && !(*(v6 + 48))(a1, 1, v5))
  {
    (*(v6 + 8))(a1, v5);
  }

  v15 = a2[v9];
  v16 = v15 - 3;
  if (v15 >= 3)
  {
    if (v9 <= 3)
    {
      v17 = v9;
    }

    else
    {
      v17 = 4;
    }

    if (v17 <= 1)
    {
      if (!v17)
      {
        goto LABEL_40;
      }

      v18 = *a2;
    }

    else if (v17 == 2)
    {
      v18 = *a2;
    }

    else if (v17 == 3)
    {
      v18 = *a2 | (a2[2] << 16);
    }

    else
    {
      v18 = *a2;
    }

    v19 = (v18 | (v16 << (8 * v9))) + 3;
    v15 = v18 + 3;
    if (v9 < 4)
    {
      v15 = v19;
    }
  }

LABEL_40:
  switch(v15)
  {
    case 2u:
      (*(v6 + 32))(a1, a2, v5);
      v20 = 2;
      goto LABEL_48;
    case 1u:
      (*(v6 + 32))(a1, a2, v5);
      v20 = 1;
LABEL_48:
      a1[v9] = v20;
      return a1;
    case 0u:
      if ((*(v6 + 48))(a2, 1, v5))
      {
        memcpy(a1, a2, v8);
      }

      else
      {
        (*(v6 + 32))(a1, a2, v5);
        (*(v6 + 56))(a1, 0, 1, v5);
      }

      a1[v9] = 0;
      return a1;
  }

  return memcpy(a1, a2, v9 + 1);
}

uint64_t getEnumTagSinglePayload for GesturePhase(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  if (*(v3 + 84))
  {
    v5 = *(v3 + 64);
  }

  else
  {
    v5 = v4 + 1;
  }

  if (v4 <= v5)
  {
    v4 = v5;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_28;
  }

  v6 = v4 + 1;
  v7 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v10 = ((a2 + ~(-1 << v7) - 252) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v10 < 2)
    {
LABEL_28:
      v12 = *(a1 + v4);
      if (v12 >= 4)
      {
        return (v12 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_28;
  }

LABEL_17:
  v11 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return (v6 | v11) + 253;
}

void storeEnumTagSinglePayload for GesturePhase(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 64);
  if (*(v5 + 84))
  {
    v7 = *(v5 + 64);
  }

  else
  {
    v7 = v6 + 1;
  }

  if (v6 > v7)
  {
    v7 = *(v5 + 64);
  }

  v8 = v7 + 1;
  if (a3 < 0xFD)
  {
    v9 = 0;
  }

  else if (v8 <= 3)
  {
    v12 = ((a3 + ~(-1 << (8 * v8)) - 252) >> (8 * v8)) + 1;
    if (HIWORD(v12))
    {
      v9 = 4;
    }

    else
    {
      if (v12 < 0x100)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v12 >= 2)
      {
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (a2 > 0xFC)
  {
    v10 = a2 - 253;
    if (v8 >= 4)
    {
      bzero(a1, v7 + 1);
      *a1 = v10;
      v11 = 1;
      if (v9 > 1)
      {
        goto LABEL_42;
      }

      goto LABEL_39;
    }

    v11 = (v10 >> (8 * v8)) + 1;
    if (v7 != -1)
    {
      v14 = v10 & ~(-1 << (8 * v8));
      bzero(a1, v8);
      if (v8 != 3)
      {
        if (v8 == 2)
        {
          *a1 = v14;
          if (v9 > 1)
          {
LABEL_42:
            if (v9 == 2)
            {
              *&a1[v8] = v11;
            }

            else
            {
              *&a1[v8] = v11;
            }

            return;
          }
        }

        else
        {
          *a1 = v10;
          if (v9 > 1)
          {
            goto LABEL_42;
          }
        }

LABEL_39:
        if (v9)
        {
          a1[v8] = v11;
        }

        return;
      }

      *a1 = v14;
      a1[2] = BYTE2(v14);
    }

    if (v9 > 1)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  if (v9 <= 1)
  {
    if (v9)
    {
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

LABEL_28:
      a1[v7] = -a2;
      return;
    }

LABEL_27:
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (v9 == 2)
  {
    *&a1[v8] = 0;
    goto LABEL_27;
  }

  *&a1[v8] = 0;
  if (a2)
  {
    goto LABEL_28;
  }
}

uint64_t getEnumTag for GesturePhase(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(a2 + 16) - 8);
  v3 = *(v2 + 64);
  if (*(v2 + 84))
  {
    v4 = *(v2 + 64);
  }

  else
  {
    v4 = v3 + 1;
  }

  if (v3 <= v4)
  {
    v3 = v4;
  }

  v5 = a1[v3];
  v6 = v5 - 3;
  if (v5 >= 3)
  {
    if (v3 <= 3)
    {
      v7 = v3;
    }

    else
    {
      v7 = 4;
    }

    if (v7 <= 1)
    {
      if (!v7)
      {
        return v5;
      }

      v8 = *a1;
    }

    else if (v7 == 2)
    {
      v8 = *a1;
    }

    else if (v7 == 3)
    {
      v8 = *a1 | (a1[2] << 16);
    }

    else
    {
      v8 = *a1;
    }

    v9 = (v8 | (v6 << (8 * v3))) + 3;
    LODWORD(v5) = v8 + 3;
    if (v3 >= 4)
    {
      return v5;
    }

    else
    {
      return v9;
    }
  }

  return v5;
}

void destructiveInjectEnumTag for GesturePhase(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8);
  v6 = *(v5 + 64);
  if (*(v5 + 84))
  {
    v7 = *(v5 + 64);
  }

  else
  {
    v7 = v6 + 1;
  }

  if (v6 <= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = *(v5 + 64);
  }

  if (a2 <= 2)
  {
    a1[v8] = a2;
    return;
  }

  v9 = a2 - 3;
  if (v8 < 4)
  {
    a1[v8] = (v9 >> (8 * v8)) + 3;
    if (!v8)
    {
      return;
    }

    v9 &= ~(-1 << (8 * v8));
  }

  else
  {
    a1[v8] = 3;
  }

  if (v8 >= 4)
  {
    v10 = 4;
  }

  else
  {
    v10 = v8;
  }

  bzero(a1, v8);
  if (v10 > 2)
  {
    if (v10 == 3)
    {
      *a1 = v9;
      a1[2] = BYTE2(v9);
    }

    else
    {
      *a1 = v9;
    }
  }

  else if (v10 == 1)
  {
    *a1 = v9;
  }

  else
  {
    *a1 = v9;
  }
}

void _ViewOutputs.init()(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v1 = *MEMORY[0x1E698D3F8];
  *(a1 + 8) = 0;
  *(a1 + 12) = v1;
}

unint64_t _ViewOutputs.layoutComputer.getter()
{
  LODWORD(v1) = *(v0 + 12);
  v2 = v1 == *MEMORY[0x1E698D3F8];
  if (v1 == *MEMORY[0x1E698D3F8])
  {
    v1 = 0;
  }

  else
  {
    v1 = v1;
  }

  return v1 | (v2 << 32);
}

double _ViewOutputs.forEachPreference(_:)(void (*a1)(uint64_t, uint64_t, void, __n128), double result)
{
  v3 = *v2;
  v4 = *(*v2 + 16);
  if (v4)
  {

    v6 = (v3 + 48);
    do
    {
      v7 = *(v6 - 2);
      v8 = *(v6 - 1);
      v9 = *v6;
      v6 += 6;
      (a1)(v7, v8, v9);
      --v4;
    }

    while (v4);
  }

  return v10;
}

double _ViewOutputs.preferences.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;

  return result;
}

void _ViewOutputs.preferences.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);

  *v1 = v2;
  *(v1 + 8) = v3;
}

uint64_t *(*_ViewOutputs.layoutComputer.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  v2 = *(v1 + 12);
  v3 = *MEMORY[0x1E698D3F8];
  *(a1 + 16) = *MEMORY[0x1E698D3F8];
  v4 = v2 == v3;
  if (v2 == v3)
  {
    v2 = 0;
  }

  *(a1 + 8) = v2;
  v5 = v4;
  *(a1 + 12) = v5;
  return _ViewOutputs.layoutComputer.modify;
}

uint64_t *_ViewOutputs.layoutComputer.modify(uint64_t *result)
{
  v1 = result + 1;
  v2 = *result;
  if (*(result + 12))
  {
    v1 = result + 2;
  }

  *(v2 + 12) = *v1;
  v3 = *(v2 + 8);
  if ((v3 & 0x80) == 0)
  {
    *(v2 + 8) = v3 | 0x80;
  }

  return result;
}

unint64_t _ViewOutputs.subscript.getter(uint64_t a1)
{
  v2 = (*v1 + 32);
  v3 = *(*v1 + 16) + 1;
  while (--v3)
  {
    v4 = v2 + 3;
    v5 = *v2;
    v2 += 3;
    if (v5 == a1)
    {
      v6 = *(v4 - 2);
      return v6 | ((v3 == 0) << 32);
    }
  }

  v6 = 0;
  return v6 | ((v3 == 0) << 32);
}

unint64_t (*_ViewOutputs.subscript.modify(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  *(a1 + 8) = a3;
  *(a1 + 16) = v3;
  *a1 = a2;
  v4 = (*v3 + 32);
  v5 = *(*v3 + 16) + 1;
  while (--v5)
  {
    v6 = v4 + 3;
    v7 = *v4;
    v4 += 3;
    if (v7 == a2)
    {
      v8 = *(v6 - 2);
      goto LABEL_6;
    }
  }

  v8 = 0;
LABEL_6:
  *(a1 + 24) = v8;
  *(a1 + 28) = v5 == 0;
  return _ViewOutputs.subscript.modify;
}

void (*_ViewOutputs.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(ValueMetadata ***a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x28uLL);
  }

  v10 = v9;
  *a1 = v9;
  v9[2] = a4;
  v9[3] = v4;
  *v9 = a2;
  v9[1] = a3;
  v11 = PreferencesOutputs.subscript.getter(a2, a3, a4);
  *(v10 + 8) = v11;
  *(v10 + 36) = BYTE4(v11) & 1;
  return _ViewOutputs.subscript.modify;
}

void _ViewOutputs.subscript.modify(ValueMetadata ***a1)
{
  v1 = *a1;
  PreferencesOutputs.subscript.setter(*(*a1 + 8) | (*(*a1 + 36) << 32), **a1, (*a1)[1], (*a1)[2]);

  free(v1);
}

void defaultConvertEventLocations<A>(_:coordinateSpace:transform:)(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v92 = a2;
  v7 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v95 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v96 = &v85 - v10;
  v11 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v94 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v104 = &v85 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v101 = &v85 - v17;
  v110 = a4;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v107 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v107);
  v108 = (&v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v85 - v22;
  v24 = MEMORY[0x1E69E7CC0];
  v25 = a3[1];
  v91 = *a3;
  v90 = v25;
  v93 = a1;
  v26 = *a1;
  v28 = (*a1 + 64);
  v27 = *v28;
  v89 = a3[2];
  v88 = a3[3];
  v29 = 1 << *(v26 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & v27;
  v32 = (v29 + 63) >> 6;
  v33 = a3[5];
  v87 = a3[4];
  v86 = v33;
  v116 = MEMORY[0x1E69E7CC0];
  v106 = (TupleTypeMetadata2 - 8);
  v99 = v11 + 16;
  v102 = v11;
  v109 = (v11 + 32);
  v105 = (v21 + 32);
  v103 = v26;

  v34 = 0;
  v98 = v24;
  v97 = v24;
  v100 = TupleTypeMetadata2;
  while (1)
  {
    v35 = v34;
    v36 = v108;
    if (!v31)
    {
      if (v32 <= v34 + 1)
      {
        v38 = v34 + 1;
      }

      else
      {
        v38 = v32;
      }

      v34 = v38 - 1;
      while (1)
      {
        v37 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          break;
        }

        if (v37 >= v32)
        {
          v31 = 0;
          v51 = 1;
          goto LABEL_14;
        }

        v31 = v28[v37];
        ++v35;
        if (v31)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
      goto LABEL_42;
    }

    v37 = v34;
LABEL_13:
    v39 = __clz(__rbit64(v31));
    v31 &= v31 - 1;
    v40 = v39 | (v37 << 6);
    v41 = (*(v103 + 48) + 16 * v40);
    v42 = *v41;
    v43 = v41[1];
    v44 = v102;
    v45 = v101;
    v46 = v110;
    (*(v102 + 16))(v101, *(v103 + 56) + *(v102 + 72) * v40, v110);
    v47 = v100;
    v48 = *(v100 + 48);
    v49 = v108;
    *v108 = v42;
    v49[1] = v43;
    v36 = v49;
    v50 = v45;
    TupleTypeMetadata2 = v47;
    (*(v44 + 32))(v49 + v48, v50, v46);
    v51 = 0;
    v34 = v37;
LABEL_14:
    v52 = *(TupleTypeMetadata2 - 8);
    (*(v52 + 56))(v36, v51, 1, TupleTypeMetadata2);
    (*v105)(v23, v36, v107);
    if ((*(v52 + 48))(v23, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v53 = *v23;
    v54 = *(v23 + 1);
    (*v109)(v104, &v23[*(TupleTypeMetadata2 + 48)], v110);
    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for SpatialEventType, &protocol descriptor for SpatialEventType);
    if (swift_dynamicCast())
    {
      outlined init with take of _ViewList_Elements(v115, &v111);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v98 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v98 + 2) + 1, 1, v98);
      }

      v56 = *(v98 + 2);
      v55 = *(v98 + 3);
      if (v56 >= v55 >> 1)
      {
        v98 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), v56 + 1, 1, v98);
      }

      v57 = v98;
      *(v98 + 2) = v56 + 1;
      v58 = &v57[16 * v56];
      *(v58 + 4) = v53;
      *(v58 + 5) = v54;
      v60 = *&v112[16];
      v59 = *&v112[8];
      __swift_project_boxed_opaque_existential_1(&v111, *&v112[8]);
      v61 = (*(v60 + 16))(v59, v60);
      v63 = v62;
      v64 = v97;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v64 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v64 + 2) + 1, 1, v64);
      }

      v97 = v64;
      v66 = *(v64 + 2);
      v65 = *(v64 + 3);
      if (v66 >= v65 >> 1)
      {
        v97 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v65 > 1), v66 + 1, 1, v97);
      }

      v67 = v97;
      *(v97 + 2) = v66 + 1;
      v68 = &v67[16 * v66];
      *(v68 + 4) = v61;
      *(v68 + 5) = v63;
      v116 = v67;
      __swift_destroy_boxed_opaque_existential_1(&v111);
    }

    else
    {
      memset(v115, 0, 40);
      outlined destroy of CoordinateSpace?(v115, type metadata accessor for SpatialEventType?);
    }
  }

  if (!*(v97 + 2))
  {
    goto LABEL_40;
  }

  outlined init with copy of CoordinateSpace?(v92, &v111);
  if (v112[24] == 255)
  {
    outlined destroy of CoordinateSpace?(&v111, type metadata accessor for CoordinateSpace?);
    v70 = v93;
    v71 = v110;
  }

  else
  {
    *v115 = v111;
    *&v115[16] = *v112;
    *&v115[25] = *&v112[9];
    v69 = v91;
    v70 = v93;
    v71 = v110;
    if (v91 == 1)
    {
      outlined destroy of CoordinateSpace(v115);
    }

    else
    {
      v72 = v90;
      *&v111 = v91;
      *(&v111 + 1) = v90;
      *v112 = v89;
      *&v112[8] = v88;
      *&v112[16] = v87;
      *&v112[24] = v86;

      ViewTransform.convertGlobal(to:points:)(v115, &v116);
      outlined destroy of CoordinateSpace(v115);
      outlined consume of EnvironmentValues?(v69, v72);
    }
  }

  v73 = v116;
  v107 = *(v98 + 2);
  if (!v107)
  {
LABEL_40:

    return;
  }

  v74 = 0;
  v75 = 0;
  v106 = (v102 + 48);
  v105 = (v102 + 56);
  v97 = v116;
  while (v75 < *(v98 + 2))
  {
    v76 = *(v73 + 2);
    if (v75 == v76)
    {
      goto LABEL_40;
    }

    if (v75 >= v76)
    {
      goto LABEL_43;
    }

    v77 = *&v98[v74 + 40];
    v78 = *&v73[v74 + 32];
    v79 = *&v73[v74 + 40];
    v80 = *v70;
    v108 = *&v98[v74 + 32];
    *&v111 = v108;
    *(&v111 + 1) = v77;
    lazy protocol witness table accessor for type EventID and conformance EventID();
    v81 = v96;
    MEMORY[0x193ABE750](&v111, v80, &type metadata for EventID, v71, v82);
    if ((*v106)(v81, 1, v71) == 1)
    {
      goto LABEL_44;
    }

    ++v75;
    (*v109)(v94, v81, v71);
    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for SpatialEventType, &protocol descriptor for SpatialEventType);
    swift_dynamicCast();
    v83 = *&v112[8];
    __swift_mutable_project_boxed_opaque_existential_1(&v111, *&v112[8]);
    (*(*(&v83 + 1) + 48))(v83, *(&v83 + 1), v78, v79);
    outlined init with copy of AnyTrackedValue(&v111, v115);
    v84 = v95;
    v71 = v110;
    swift_dynamicCast();
    (*v105)(v84, 0, 1, v71);
    v113 = v108;
    v114 = v77;
    type metadata accessor for Dictionary();
    Dictionary.subscript.setter();
    __swift_destroy_boxed_opaque_existential_1(&v111);
    v74 += 16;
    v73 = v97;
    if (v107 == v75)
    {
      goto LABEL_40;
    }
  }

LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
}

void SpatialEventType.kind.getter(_BYTE *a1@<X8>)
{
  SpatialEventType.kind.getter(a1);
}

{
  *a1 = 3;
}

Swift::Int SpatialEvent.Kind.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

double SpatialEvent.timestamp.getter@<D0>(double *a1@<X8>)
{
  result = *(v1 + 8);
  *a1 = result;
  return result;
}

double SpatialEvent.timestamp.setter(double *a1)
{
  result = *a1;
  *(v1 + 8) = *a1;
  return result;
}

double SpatialEvent.binding.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 16);

  return result;
}

void SpatialEvent.binding.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 16) = v2;
}

void SpatialEvent.customHitTestOptions.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  *a1 = *(v1 + 72);
  *(a1 + 8) = v2;
}

uint64_t SpatialEvent.customHitTestOptions.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 72) = *result;
  *(v1 + 80) = v2;
  return result;
}

uint64_t SpatialEvent.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 16) = 0;
  *(a4 + 24) = 3;
  *(a4 + 72) = 0;
  *(a4 + 80) = 1;
  v8 = *(a3 + 8);
  v8[1](&v13, a2, v8);
  *a4 = v13;
  v8[2](&v13, a2, v8);
  *(a4 + 8) = v13;
  *(a4 + 32) = (*(a3 + 16))(a2, a3);
  *(a4 + 40) = v9;
  *(a4 + 48) = (*(a3 + 40))(a2, a3);
  *(a4 + 56) = v10;
  *(a4 + 64) = (*(a3 + 64))(a2, a3);
  (*(a3 + 72))(&v13, a2, a3);
  *(a4 + 24) = v13;
  v8[6](&v13, a2, v8);
  result = (*(*(a2 - 8) + 8))(a1, a2);
  v12 = v14;
  *(a4 + 72) = v13;
  *(a4 + 80) = v12;
  return result;
}

uint64_t SpatialEvent.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0;
  *(a2 + 24) = 3;
  *(a2 + 72) = 0;
  *(a2 + 80) = 1;
  v5 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  (*(*(v4 + 8) + 8))(&v22, v5);
  *a2 = v22;
  v7 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  (*(*(v6 + 8) + 16))(&v22, v7);
  *(a2 + 8) = v22;
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  *(a2 + 32) = (*(v9 + 16))(v8, v9);
  *(a2 + 40) = v10;
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  *(a2 + 48) = (*(v12 + 40))(v11, v12);
  *(a2 + 56) = v13;
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  *(a2 + 64) = (*(v15 + 64))(v14, v15);
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  (*(v17 + 72))(&v22, v16, v17);
  *(a2 + 24) = v22;
  v19 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  (*(*(v18 + 8) + 48))(&v22, v19);
  v20 = v23;
  *(a2 + 72) = v22;
  *(a2 + 80) = v20;

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

double SpatialEvent.init(_:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of AnyTrackedValue(a1, v12);
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for EventType, &protocol descriptor for EventType);
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for SpatialEventType, &protocol descriptor for SpatialEventType);
  if (swift_dynamicCast())
  {
    outlined init with take of _ViewList_Elements(v10, v13);
    outlined init with copy of AnyTrackedValue(v13, v7);
    SpatialEvent.init(_:)(v7, v8);
    __swift_destroy_boxed_opaque_existential_1(a1);
    __swift_destroy_boxed_opaque_existential_1(v13);
    v4 = v8[3];
    *(a2 + 32) = v8[2];
    *(a2 + 48) = v4;
    *(a2 + 64) = v8[4];
    *(a2 + 80) = v9;
    result = *v8;
    v6 = v8[1];
    *a2 = v8[0];
    *(a2 + 16) = v6;
  }

  else
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    __swift_destroy_boxed_opaque_existential_1(a1);
    outlined destroy of CoordinateSpace?(v10, type metadata accessor for SpatialEventType?);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 1;
    result = 0.0;
    *(a2 + 24) = 0u;
    *(a2 + 40) = 0u;
    *(a2 + 56) = 0u;
    *(a2 + 65) = 0u;
  }

  return result;
}

void protocol witness for EventType.customHitTestOptions.getter in conformance SpatialEvent(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  *a1 = *(v1 + 72);
  *(a1 + 8) = v2;
}

uint64_t outlined destroy of CoordinateSpace?(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL specialized static SpatialEvent.== infix(_:_:)(double *a1, double *a2)
{
  result = 0;
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return result;
  }

  v4 = *(a1 + 2);
  v5 = *(a1 + 24);
  v7 = a1[4];
  v6 = a1[5];
  v9 = a1[6];
  v8 = a1[7];
  v10 = a1[8];
  v11 = *(a1 + 9);
  v12 = *(a1 + 80);
  v13 = *(a2 + 2);
  v14 = *(a2 + 24);
  if (!v4)
  {
    if (!v13)
    {
      goto LABEL_8;
    }

LABEL_11:

    return 0;
  }

  if (!v13)
  {
    goto LABEL_11;
  }

  if (v4 != v13)
  {
    return 0;
  }

LABEL_8:
  if (v5 == 3)
  {
    if (v14 != 3)
    {
      return 0;
    }

    result = 0;
  }

  else
  {
    if (v14 == 3)
    {
      return 0;
    }

    result = 0;
    if (v5 != v14)
    {
      return result;
    }
  }

  if (v7 == a2[4] && v6 == a2[5] && v9 == a2[6] && v8 == a2[7] && v10 == a2[8])
  {
    if ((v12 & 1) == 0)
    {
      if (v11 == *(a2 + 9))
      {
        v15 = *(a2 + 80);
      }

      else
      {
        v15 = 1;
      }

      return (v15 & 1) == 0;
    }

    return (a2[10] & 1) != 0;
  }

  return result;
}

void lazy protocol witness table accessor for type SpatialEvent.Kind and conformance SpatialEvent.Kind()
{
  if (!lazy protocol witness table cache variable for type SpatialEvent.Kind and conformance SpatialEvent.Kind)
  {
    swift_getWitnessTable(protocol conformance descriptor for SpatialEvent.Kind, &type metadata for SpatialEvent.Kind, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SpatialEvent.Kind and conformance SpatialEvent.Kind);
  }
}

uint64_t initializeWithCopy for SpatialEvent(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *(a1 + 80) = *(a2 + 80);
  v5 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v5;

  return a1;
}

uint64_t assignWithCopy for SpatialEvent(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  v4 = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 72) = v4;
  return a1;
}

uint64_t assignWithTake for SpatialEvent(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  return a1;
}

uint64_t getEnumTagSinglePayload for SpatialEvent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 81))
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

uint64_t storeEnumTagSinglePayload for SpatialEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t _s7SwiftUI18PreferencesOutputsV20makePreferenceWriter6inputs3key5valueyAA0C6InputsV_xm14AttributeGraph0L0Vy5ValueQzGyXKtAA0F3KeyRzlFAA024ContentCaptureProtectionfO0V_Tt0B503_s7a4UI40pqrf46Writer33_0D6CD02499D969DD550B3CDDD0903EA3LLV9_e32View8modifier6inputs4bodyAA01_P7d6VAA11_mn13VyADG_AA01_P6k20VAjA01_U0V_AOtctFZ09L16U00X0VySbGyXEfu_ALySbGTf1ncn_n(unint64_t a1, unsigned int a2, uint64_t *a3, unsigned int a4)
{
  v7 = PreferenceKeys._index(of:)(&type metadata for ContentCaptureProtectionPreferenceKey);
  v8 = *(a1 + 16);
  if (v7 != v8)
  {
    if (v7 >= v8)
    {
      __break(1u);
      goto LABEL_11;
    }

    if (*(a1 + 16 * v7 + 32) == &type metadata for ContentCaptureProtectionPreferenceKey)
    {
      PreferencesOutputs.subscript.setter(a4, &type metadata for ContentCaptureProtectionPreferenceKey, &protocol witness table for ContentCaptureProtectionPreferenceKey);
    }
  }

  result = PreferenceKeys._index(of:)(&type metadata for HostPreferencesKey);
  if (result == v8)
  {
    return result;
  }

  if (result >= v8)
  {
LABEL_11:
    __break(1u);
  }

  if (*(a1 + 16 * result + 32) == &type metadata for HostPreferencesKey)
  {
    _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA04HostcI0V_TtB5(*a3);
    ++static HostPreferencesKey.nodeId;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _PreferenceWritingModifier<PreferredColorSchemeKey>(0, &lazy cache variable for type metadata for HostPreferencesWriter<ContentCaptureProtectionPreferenceKey>, &type metadata for ContentCaptureProtectionPreferenceKey, &protocol witness table for ContentCaptureProtectionPreferenceKey, type metadata accessor for HostPreferencesWriter);
    lazy protocol witness table accessor for type HostPreferencesWriter<ContentCaptureProtectionPreferenceKey> and conformance HostPreferencesWriter<A>();
    v10 = Attribute.init<A>(body:value:flags:update:)();
    return PreferencesOutputs.subscript.setter(v10, &type metadata for HostPreferencesKey, &protocol witness table for HostPreferencesKey);
  }

  return result;
}

uint64_t _PreferenceWritingModifier.value.getter@<X0>(uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 16);

  return v5(a2, v2, AssociatedTypeWitness);
}

uint64_t _PreferenceWritingModifier.value.setter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 40);

  return v5(v2, a1, AssociatedTypeWitness);
}

void *static TruePreferenceWritingModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, __int128 *), uint64_t a4, ValueMetadata *a5, uint64_t a6)
{
  v9 = *(a2 + 48);
  v10 = *(a2 + 16);
  v26 = *(a2 + 32);
  v27 = v9;
  v11 = *(a2 + 48);
  v28 = *(a2 + 64);
  v12 = *(a2 + 16);
  v25[0] = *a2;
  v25[1] = v12;
  v21 = v26;
  v22 = v11;
  v23 = *(a2 + 64);
  v29 = *(a2 + 80);
  v24 = *(a2 + 80);
  v19 = v25[0];
  v20 = v10;
  outlined init with copy of _ViewInputs(v25, &v36);
  PreferencesInputs.remove<A>(_:)(a5, a5, a6);
  v32[2] = v21;
  v32[3] = v22;
  v32[4] = v23;
  v33 = v24;
  v32[0] = v19;
  v32[1] = v20;
  v38 = v21;
  v39 = v22;
  v40 = v23;
  v41 = v24;
  v36 = v19;
  v37 = v20;
  v13 = outlined init with copy of _ViewInputs(v32, v34);
  a3(v13, &v36);
  v34[2] = v38;
  v34[3] = v39;
  v34[4] = v40;
  v35 = v41;
  v34[0] = v36;
  v34[1] = v37;
  outlined destroy of _ViewInputs(v34);
  v30 = v27;
  v31 = DWORD2(v27);
  v17 = v27;
  v18 = DWORD2(v27);
  v16[2] = v25;
  outlined init with copy of PreferencesInputs(&v30, &v36);
  PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)(&v17, v14, partial apply for implicit closure #1 in static TruePreferenceWritingGestureModifier._makeGesture(modifier:inputs:body:), v16, a5, a6);

  v38 = v21;
  v39 = v22;
  v40 = v23;
  v41 = v24;
  v36 = v19;
  v37 = v20;
  return outlined destroy of _ViewInputs(&v36);
}

uint64_t implicit closure #1 in static TruePreferenceWritingModifier._makeView(modifier:inputs:body:)()
{
  specialized static GraphHost.currentHost.getter();
  v0 = specialized GraphHost.intern<A>(_:for:id:)(1, MEMORY[0x1E69E6370], 2);

  return v0;
}

uint64_t View.truePreference<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for TruePreferenceWritingModifier(0, a3, a5, a4);

  return View.modifier<A>(_:)();
}

uint64_t static TruePreferenceWritingGestureModifier._makeGesture(modifier:inputs:body:)(uint64_t a1, _OWORD *a2, void (*a3)(__int128 *), uint64_t a4, ValueMetadata *a5, uint64_t a6, uint64_t a7)
{
  v10 = a2[5];
  v11 = a2[3];
  v32 = a2[4];
  v33 = v10;
  v12 = a2[5];
  v34[0] = a2[6];
  *(v34 + 12) = *(a2 + 108);
  v13 = a2[1];
  v29[0] = *a2;
  v29[1] = v13;
  v14 = a2[3];
  v16 = *a2;
  v15 = a2[1];
  v30 = a2[2];
  v31 = v14;
  v26 = v32;
  v27 = v12;
  v28[0] = a2[6];
  *(v28 + 12) = *(a2 + 108);
  v22 = v16;
  v23 = v15;
  v24 = v30;
  v25 = v11;
  outlined init with copy of _GestureInputs(v29, &v41);
  PreferencesInputs.remove<A>(_:)(a5, a5, a7);
  v37[4] = v26;
  v37[5] = v27;
  v38[0] = v28[0];
  *(v38 + 12) = *(v28 + 12);
  v37[0] = v22;
  v37[1] = v23;
  v37[2] = v24;
  v37[3] = v25;
  v45 = v26;
  v46 = v27;
  v47[0] = v28[0];
  *(v47 + 12) = *(v28 + 12);
  v41 = v22;
  v42 = v23;
  v43 = v24;
  v44 = v25;
  outlined init with copy of _GestureInputs(v37, v39);
  a3(&v41);
  v39[4] = v45;
  v39[5] = v46;
  v40[0] = v47[0];
  *(v40 + 12) = *(v47 + 12);
  v39[0] = v41;
  v39[1] = v42;
  v39[2] = v43;
  v39[3] = v44;
  outlined destroy of _GestureInputs(v39);
  v35 = *&v34[0];
  v36 = DWORD2(v34[0]);
  v20 = *&v34[0];
  v21 = DWORD2(v34[0]);
  v19[2] = v29;
  outlined init with copy of PreferencesInputs(&v35, &v41);
  PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)(&v20, v17, partial apply for implicit closure #1 in static TruePreferenceWritingGestureModifier._makeGesture(modifier:inputs:body:), v19, a5, a7);

  v45 = v26;
  v46 = v27;
  v47[0] = v28[0];
  *(v47 + 12) = *(v28 + 12);
  v41 = v22;
  v42 = v23;
  v43 = v24;
  v44 = v25;
  return outlined destroy of _GestureInputs(&v41);
}

uint64_t Gesture.truePreference<A>(_:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t x8_0@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for TruePreferenceWritingGestureModifier(0, a3, AssociatedTypeWitness, a5);
  swift_getWitnessTable(protocol conformance descriptor for TruePreferenceWritingGestureModifier<A, B>, v12);

  return Gesture.modifier<A>(_:)(v13, a2, v12, a4, v13, x8_0);
}

void type metadata accessor for _GraphValue<_PreferenceWritingModifier<PreferredColorSchemeKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _GraphValue<_PreferenceWritingModifier<PreferredColorSchemeKey>>)
  {
    type metadata accessor for _PreferenceWritingModifier<PreferredColorSchemeKey>(255, &lazy cache variable for type metadata for _PreferenceWritingModifier<PreferredColorSchemeKey>, &type metadata for PreferredColorSchemeKey, &protocol witness table for PreferredColorSchemeKey, type metadata accessor for _PreferenceWritingModifier);
    v5 = type metadata accessor for _GraphValue(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for _GraphValue<_PreferenceWritingModifier<PreferredColorSchemeKey>>);
    }
  }
}

void type metadata accessor for _PreferenceWritingModifier<PreferredColorSchemeKey><>.ColorSchemeTrait(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void lazy protocol witness table accessor for type _PreferenceWritingModifier<PreferredColorSchemeKey><>.ColorSchemeTrait and conformance _PreferenceWritingModifier<A><>.ColorSchemeTrait(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void), const char *a4)
{
  if (!*a1)
  {
    type metadata accessor for _PreferenceWritingModifier<PreferredColorSchemeKey><>.ColorSchemeTrait(255, a2, a3);
    swift_getWitnessTable(a4, v6);
    atomic_store(v7, a1);
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for _PreferenceWritingModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 80);
  if (v7 <= 7 && *(*(AssociatedTypeWitness - 8) + 64) <= 0x18uLL && (*(v6 + 80) & 0x100000) == 0)
  {
    (*(v6 + 16))(a1, a2, AssociatedTypeWitness);
  }

  else
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v7 + 16) & ~v7));
  }

  return a1;
}

uint64_t initializeWithTake for _PreferenceWritingModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a1, a2, AssociatedTypeWitness);
  return a1;
}

uint64_t assignWithTake for _PreferenceWritingModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 40))(a1, a2, AssociatedTypeWitness);
  return a1;
}

uint64_t getEnumTagSinglePayload for _PreferenceWritingModifier(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v6)
  {
LABEL_23:
    v12 = *(v5 + 48);

    return v12(a1);
  }

  v8 = 8 * v7;
  if (v7 <= 3)
  {
    v10 = ((a2 - v6 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v7);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v6)
      {
        goto LABEL_23;
      }

      return 0;
    }
  }

  v9 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v7 > 3)
  {
    v11 = 0;
  }

  if (v7)
  {
    if (v7 > 3)
    {
      LODWORD(v7) = 4;
    }

    if (v7 > 2)
    {
      if (v7 == 3)
      {
        LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v7) = *a1;
      }
    }

    else if (v7 == 1)
    {
      LODWORD(v7) = *a1;
    }

    else
    {
      LODWORD(v7) = *a1;
    }
  }

  return v6 + (v7 | v11) + 1;
}

void storeEnumTagSinglePayload for _PreferenceWritingModifier(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  if (a3 <= v8)
  {
    v10 = 0;
  }

  else if (v9 <= 3)
  {
    v13 = ((a3 - v8 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
    if (HIWORD(v13))
    {
      v10 = 4;
    }

    else
    {
      if (v13 < 0x100)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      if (v13 >= 2)
      {
        v10 = v14;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 1;
  }

  if (v8 < a2)
  {
    v11 = ~v8 + a2;
    if (v9 < 4)
    {
      v12 = (v11 >> (8 * v9)) + 1;
      if (v9)
      {
        v15 = v11 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v15;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&a1[v9] = v12;
              }

              else
              {
                *&a1[v9] = v12;
              }

              return;
            }
          }

          else
          {
            *a1 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v15;
        a1[2] = BYTE2(v15);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v11;
      v12 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      a1[v9] = v12;
    }

    return;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v10)
  {
    a1[v9] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v16 = *(v7 + 56);

  v16(a1, a2);
}

uint64_t specialized HostPreferencesWriter.description.getter(uint64_t a1, uint64_t a2, __n128 a3)
{
  strcpy(v4, "Preference: ");
  static PreferenceKey.readableName.getter(a1);
  MEMORY[0x193ABEDD0]();

  return v4[0];
}

void type metadata accessor for _PreferenceWritingModifier<PreferredColorSchemeKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void lazy protocol witness table accessor for type HostPreferencesWriter<ContentCaptureProtectionPreferenceKey> and conformance HostPreferencesWriter<A>()
{
  if (!lazy protocol witness table cache variable for type HostPreferencesWriter<ContentCaptureProtectionPreferenceKey> and conformance HostPreferencesWriter<A>)
  {
    type metadata accessor for _PreferenceWritingModifier<PreferredColorSchemeKey>(255, &lazy cache variable for type metadata for HostPreferencesWriter<ContentCaptureProtectionPreferenceKey>, &type metadata for ContentCaptureProtectionPreferenceKey, &protocol witness table for ContentCaptureProtectionPreferenceKey, type metadata accessor for HostPreferencesWriter);
    swift_getWitnessTable(protocol conformance descriptor for HostPreferencesWriter<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type HostPreferencesWriter<ContentCaptureProtectionPreferenceKey> and conformance HostPreferencesWriter<A>);
  }
}

uint64_t ConfigurationBasedResolvableStringAttributeRepresentation.schedule.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ResolvableAttributeConfiguration.Schedule(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for ResolvableAttributeConfiguration(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 40))(a1, a2, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v20 = type metadata accessor for Date();
      (*(*(v20 - 8) + 32))(v9, v13, v20);
      goto LABEL_11;
    }

    if ((v13[8] & 1) == 0)
    {
      *v9 = *v13;
      goto LABEL_11;
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      type metadata accessor for (interval: DateInterval, countdown: Bool)(0);
      v17 = *(v16 + 48);
      v18 = v13[v17];
      v19 = type metadata accessor for DateInterval();
      (*(*(v19 - 8) + 32))(v9, v13, v19);
      *(v9 + v17) = v18;
      goto LABEL_11;
    }

    if (EnumCaseMultiPayload == 3)
    {
      *v9 = *v13;
LABEL_11:
      type metadata accessor for ResolvableAttributeConfiguration.Schedule.Alignment(0);
      swift_storeEnumTagMultiPayload();
      outlined init with take of ResolvableAttributeConfiguration.Schedule(v9, a3, type metadata accessor for ResolvableAttributeConfiguration.Schedule);
      v15 = 0;
      return (*(v7 + 56))(a3, v15, 1, v6);
    }
  }

  v15 = 1;
  return (*(v7 + 56))(a3, v15, 1, v6);
}

uint64_t NSAttributedString.resolvableAttributeConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  _ss11AnySequenceVy10Foundation4DateVGMaTm_1(0, &lazy cache variable for type metadata for ResolvableAttributeConfiguration?, type metadata accessor for ResolvableAttributeConfiguration, MEMORY[0x1E69E6720]);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  if ([v1 length] < 1)
  {
    goto LABEL_9;
  }

  if (one-time initialization token for updateSchedule != -1)
  {
    swift_once();
  }

  v7 = static NSAttributedStringKey.updateSchedule;
  [v1 length];
  if (![v1 attribute:v7 atIndex:0 effectiveRange:0])
  {
    v12 = 0u;
    v13 = 0u;
    _sypSgWOhTm_10(&v12, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, type metadata accessor for HitTestableEvent?);
LABEL_9:
    type metadata accessor for ResolvableAttributeConfiguration(0);
    return swift_storeEnumTagMultiPayload();
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  _sypSgWOhTm_10(&v12, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, type metadata accessor for HitTestableEvent?);
  NSAttributedString.updateSchedule.getter(&v12);
  v8 = *(&v13 + 1);
  __swift_project_boxed_opaque_existential_1(&v12, *(&v13 + 1));
  TimelineSchedule.legacyInvalidationConfiguration.getter(v8, v6);
  v9 = type metadata accessor for ResolvableAttributeConfiguration(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) == 1)
  {
    swift_storeEnumTagMultiPayload();
    if (v10(v6, 1, v9) != 1)
    {
      _s10Foundation4DateVSgWOhTm_1(v6, &lazy cache variable for type metadata for ResolvableAttributeConfiguration?, type metadata accessor for ResolvableAttributeConfiguration, MEMORY[0x1E69E6720], _ss11AnySequenceVy10Foundation4DateVGMaTm_1);
    }
  }

  else
  {
    outlined init with take of ResolvableAttributeConfiguration.Schedule(v6, a1, type metadata accessor for ResolvableAttributeConfiguration);
  }

  return __swift_destroy_boxed_opaque_existential_1(&v12);
}

uint64_t ResolvableAttributeConfiguration.Schedule.init(config:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ResolvableAttributeConfiguration.Schedule(0);
  v16 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for ResolvableAttributeConfiguration(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v14 = type metadata accessor for Date();
      (*(*(v14 - 8) + 32))(v6, a1, v14);
      goto LABEL_13;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      *v6 = *a1;
      goto LABEL_13;
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      type metadata accessor for (interval: DateInterval, countdown: Bool)(0);
      v11 = *(v10 + 48);
      v12 = *(a1 + v11);
      v13 = type metadata accessor for DateInterval();
      (*(*(v13 - 8) + 32))(v6, a1, v13);
      *(v6 + v11) = v12;
      goto LABEL_13;
    }

    if (EnumCaseMultiPayload == 3)
    {
      *v6 = *a1;
LABEL_13:
      type metadata accessor for ResolvableAttributeConfiguration.Schedule.Alignment(0);
      swift_storeEnumTagMultiPayload();
      outlined init with take of ResolvableAttributeConfiguration.Schedule(v6, a2, type metadata accessor for ResolvableAttributeConfiguration.Schedule);
      return (*(v16 + 56))(a2, 0, 1, v4);
    }
  }

  v8 = *(v16 + 56);

  return v8(a2, 1, 1, v4);
}

void type metadata accessor for (interval: DateInterval, countdown: Bool)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (interval: DateInterval, countdown: Bool))
  {
    type metadata accessor for DateInterval();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (interval: DateInterval, countdown: Bool));
    }
  }
}

uint64_t ResolvableAttributeConfiguration.isDynamic.getter()
{
  v1 = type metadata accessor for ResolvableAttributeConfiguration(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7SwiftUI32ResolvableAttributeConfigurationOWOcTm_0(v0, v3, type metadata accessor for ResolvableAttributeConfiguration);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v5 = v3[8] ^ 1;
      return v5 & 1;
    }

    v6 = type metadata accessor for Date();
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v6 = type metadata accessor for DateInterval();
LABEL_9:
    (*(*(v6 - 8) + 8))(v3, v6);
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 3)
  {
LABEL_10:
    v5 = 1;
    return v5 & 1;
  }

  v5 = 0;
  return v5 & 1;
}

uint64_t ResolvableAttributeConfiguration.reduce(_:)(uint64_t a1)
{
  v3 = type metadata accessor for ResolvableAttributeConfiguration(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for (ResolvableAttributeConfiguration, ResolvableAttributeConfiguration)(0, &lazy cache variable for type metadata for (ResolvableAttributeConfiguration, ResolvableAttributeConfiguration), type metadata accessor for ResolvableAttributeConfiguration);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (&v23 - v7);
  v10 = (&v23 + *(v9 + 56) - v7);
  _s7SwiftUI32ResolvableAttributeConfigurationOWOcTm_0(v1, &v23 - v7, type metadata accessor for ResolvableAttributeConfiguration);
  _s7SwiftUI32ResolvableAttributeConfigurationOWOcTm_0(a1, v10, type metadata accessor for ResolvableAttributeConfiguration);
  if (!swift_getEnumCaseMultiPayload())
  {
    v13 = *v8;
    if (swift_getEnumCaseMultiPayload())
    {
      return outlined destroy of TimerIntervalTimelineSchedule(v10, type metadata accessor for ResolvableAttributeConfiguration);
    }

    v14 = *(v8 + 8);
    outlined destroy of TimerIntervalTimelineSchedule(v1, type metadata accessor for ResolvableAttributeConfiguration);
    if (v14 == 1)
    {
      if (v10[1])
      {
        v15 = 1;
        v16 = 0.0;
LABEL_28:
        *v1 = v16;
        *(v1 + 8) = v15;
        return swift_storeEnumTagMultiPayload();
      }

      v16 = *v10;
      v13 = *v10;
    }

    else
    {
      v16 = *v10;
      if (*(v10 + 8))
      {
        v16 = v13;
      }
    }

    v15 = 0;
    if (v16 >= v13)
    {
      v16 = v13;
    }

    goto LABEL_28;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    _s7SwiftUI32ResolvableAttributeConfigurationOWOcTm_0(v10, v5, type metadata accessor for ResolvableAttributeConfiguration);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v17 = *v5;
      outlined destroy of TimerIntervalTimelineSchedule(v1, type metadata accessor for ResolvableAttributeConfiguration);
      *v1 = NSCalendarUnitSmallestUnit(*v8 | v17);
      swift_storeEnumTagMultiPayload();
      return outlined destroy of TimerIntervalTimelineSchedule(v10, type metadata accessor for ResolvableAttributeConfiguration);
    }
  }

  else if (!EnumCaseMultiPayload)
  {
    outlined destroy of TimerIntervalTimelineSchedule(v1, type metadata accessor for ResolvableAttributeConfiguration);
    _s7SwiftUI32ResolvableAttributeConfigurationOWOcTm_0(a1, v1, type metadata accessor for ResolvableAttributeConfiguration);
    outlined destroy of TimerIntervalTimelineSchedule(v10, type metadata accessor for ResolvableAttributeConfiguration);
    return outlined destroy of TimerIntervalTimelineSchedule(v8, type metadata accessor for ResolvableAttributeConfiguration);
  }

  v18 = swift_getEnumCaseMultiPayload();
  if (v18 == 3)
  {
    return outlined destroy of TimerIntervalTimelineSchedule(v10, type metadata accessor for ResolvableAttributeConfiguration);
  }

  v19 = v18;
  v20 = swift_getEnumCaseMultiPayload();
  if (v20 == 3)
  {
    outlined destroy of TimerIntervalTimelineSchedule(v1, type metadata accessor for ResolvableAttributeConfiguration);
    _s7SwiftUI32ResolvableAttributeConfigurationOWOcTm_0(a1, v1, type metadata accessor for ResolvableAttributeConfiguration);
    return outlined destroy of TimerIntervalTimelineSchedule(v8, type metadata accessor for ResolvableAttributeConfiguration);
  }

  if (v19 == 2)
  {
    v21 = type metadata accessor for DateInterval();
LABEL_17:
    (*(*(v21 - 8) + 8))(v8, v21);
    return outlined destroy of TimerIntervalTimelineSchedule(v10, type metadata accessor for ResolvableAttributeConfiguration);
  }

  if (v20 == 2)
  {
    outlined destroy of TimerIntervalTimelineSchedule(v1, type metadata accessor for ResolvableAttributeConfiguration);
    _s7SwiftUI32ResolvableAttributeConfigurationOWOcTm_0(a1, v1, type metadata accessor for ResolvableAttributeConfiguration);
    v22 = type metadata accessor for DateInterval();
LABEL_24:
    (*(*(v22 - 8) + 8))(v10, v22);
    return outlined destroy of TimerIntervalTimelineSchedule(v8, type metadata accessor for ResolvableAttributeConfiguration);
  }

  if (v19 == 1)
  {
    v21 = type metadata accessor for Date();
    goto LABEL_17;
  }

  if (v20 == 1)
  {
    outlined destroy of TimerIntervalTimelineSchedule(v1, type metadata accessor for ResolvableAttributeConfiguration);
    _s7SwiftUI32ResolvableAttributeConfigurationOWOcTm_0(a1, v1, type metadata accessor for ResolvableAttributeConfiguration);
    v22 = type metadata accessor for Date();
    goto LABEL_24;
  }

  return _sypSgWOhTm_10(v8, &lazy cache variable for type metadata for (ResolvableAttributeConfiguration, ResolvableAttributeConfiguration), type metadata accessor for ResolvableAttributeConfiguration, type metadata accessor for (ResolvableAttributeConfiguration, ResolvableAttributeConfiguration));
}

void *ResolvableAttributeConfiguration.Schedule.entries(from:mode:)(char *a1, char *a2)
{
  v73 = a1;
  v3 = type metadata accessor for AlignedTimelineSchedule.Entries(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v70 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for TimerIntervalTimelineSchedule(0);
  MEMORY[0x1EEE9AC00](v67);
  v68 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for DateInterval();
  v66 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v65 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TimerTimelineSchedule.ReducedFrequencyEntries(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v62 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for EverySecondEntries(0);
  MEMORY[0x1EEE9AC00](v61);
  v63 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TimerTimelineSchedule(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v64 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v60 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v71 = &v59 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v59 - v18;
  v20 = type metadata accessor for PeriodicTimelineSchedule(0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for PeriodicTimelineSchedule.Entries(0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for ResolvableAttributeConfiguration.Schedule.Alignment(0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = (&v59 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = *a2;
  _s7SwiftUI32ResolvableAttributeConfigurationOWOcTm_0(v72, v28, type metadata accessor for ResolvableAttributeConfiguration.Schedule.Alignment);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v53 = *v28;
      v54 = v71;
      (*(v13 + 16))(v71, v73, v12);
      v25 = v70;
      AlignedTimelineSchedule.Entries.init(startDate:alignment:)(v54, v53, v70);
      type metadata accessor for _SequenceBox<AlignedTimelineSchedule.Entries>(0);
      v33 = swift_allocObject();
      v34 = v33;
      v35 = *(*v33 + *MEMORY[0x1E69E6AD8] + 16);
      v36 = type metadata accessor for AlignedTimelineSchedule.Entries;
      goto LABEL_9;
    }

    type metadata accessor for (interval: DateInterval, countdown: Bool)(0);
    v38 = *(v28 + *(v37 + 48));
    v40 = v65;
    v39 = v66;
    v41 = v69;
    (*(v66 + 32))(v65, v28, v69);
    v42 = v68;
    (*(v39 + 16))(v68, v40, v41);
    *(v42 + *(v67 + 20)) = v38;
    v74 = v29;
    v43 = TimerIntervalTimelineSchedule.entries(from:mode:)(v73, &v74);
    outlined destroy of TimerIntervalTimelineSchedule(v42, type metadata accessor for TimerIntervalTimelineSchedule);
    (*(v39 + 8))(v40, v41);
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v31 = *v28;
      (*(v13 + 16))(v22, v73, v12);
      *&v22[*(v20 + 20)] = v31;
      Date.timeIntervalSince(_:)();
      fmod(v32, v31);
      static Date.+ infix(_:_:)();
      outlined destroy of TimerIntervalTimelineSchedule(v22, type metadata accessor for PeriodicTimelineSchedule);
      *&v25[*(v23 + 20)] = v31;
      type metadata accessor for _SequenceBox<PeriodicTimelineSchedule.Entries>(0);
      v33 = swift_allocObject();
      v34 = v33;
      v35 = *(*v33 + *MEMORY[0x1E69E6AD8] + 16);
      v36 = type metadata accessor for PeriodicTimelineSchedule.Entries;
LABEL_9:
      outlined init with take of ResolvableAttributeConfiguration.Schedule(v25, v33 + v35, v36);
      return v34;
    }

    v44 = *(v13 + 32);
    v44(v19, v28, v12);
    v45 = *(v13 + 16);
    v46 = v64;
    v45(v64, v19, v12);
    if (v29)
    {
      v47 = v71;
      v45(v71, v73, v12);
      v48 = v60;
      v45(v60, v46, v12);
      v49 = v62;
      TimerTimelineSchedule.ReducedFrequencyEntries.init(start:alignment:)(v47, v48, v62);
      outlined destroy of TimerIntervalTimelineSchedule(v46, type metadata accessor for TimerTimelineSchedule);
      (*(v13 + 8))(v19, v12);
      type metadata accessor for _SequenceBox<TimerTimelineSchedule.ReducedFrequencyEntries>(0);
      v43 = swift_allocObject();
      v50 = type metadata accessor for TimerTimelineSchedule.ReducedFrequencyEntries;
      v51 = v43 + *(*v43 + *MEMORY[0x1E69E6AD8] + 16);
      v52 = v49;
    }

    else
    {
      outlined destroy of TimerIntervalTimelineSchedule(v46, type metadata accessor for TimerTimelineSchedule);
      (*(v13 + 8))(v19, v12);
      v56 = v71;
      v45(v71, v73, v12);
      v57 = *(v13 + 56);
      v58 = v63;
      v57(&v63[*(v61 + 20)], 1, 1, v12);
      v57(v58, 1, 1, v12);
      _s10Foundation4DateVSgWOhTm_1(v58, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], _ss11AnySequenceVy10Foundation4DateVGMaTm_1);
      v44(v58, v56, v12);
      v57(v58, 0, 1, v12);
      type metadata accessor for _SequenceBox<EverySecondEntries>(0);
      v43 = swift_allocObject();
      v50 = type metadata accessor for EverySecondEntries;
      v51 = v43 + *(*v43 + *MEMORY[0x1E69E6AD8] + 16);
      v52 = v58;
    }

    outlined init with take of ResolvableAttributeConfiguration.Schedule(v52, v51, v50);
  }

  type metadata accessor for _SequenceBox<AnySequence<Date>>(0);
  result = swift_allocObject();
  result[2] = v43;
  return result;
}

void *protocol witness for TimelineSchedule.entries(from:mode:) in conformance ResolvableAttributeConfiguration.Schedule@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  result = ResolvableAttributeConfiguration.Schedule.entries(from:mode:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ResolvableAttributeConfiguration.CodingKeys()
{
  v1 = *v0;
  v2 = 0x6C61767265746E69;
  v3 = 0x776F64746E756F63;
  if (v1 != 5)
  {
    v3 = 0x746E4972656D6974;
  }

  v4 = 0x6E656D6E67696C61;
  if (v1 != 3)
  {
    v4 = 0x72656D6974;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x79616C6564;
  if (v1 != 1)
  {
    v5 = 0x636F6C436C6C6177;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ResolvableAttributeConfiguration.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized ResolvableAttributeConfiguration.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ResolvableAttributeConfiguration.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type ResolvableAttributeConfiguration.CodingKeys and conformance ResolvableAttributeConfiguration.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ResolvableAttributeConfiguration.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type ResolvableAttributeConfiguration.CodingKeys and conformance ResolvableAttributeConfiguration.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ResolvableAttributeConfiguration.encode(to:)(void *a1)
{
  v2 = type metadata accessor for DateInterval();
  v39 = *(v2 - 8);
  v40 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v38 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Date();
  v41 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for KeyedEncodingContainer<ResolvableAttributeConfiguration.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<ResolvableAttributeConfiguration.CodingKeys>, MEMORY[0x1E69E6F58]);
  v8 = *(v7 - 8);
  v42 = v7;
  v43 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v38 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v38 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = type metadata accessor for ResolvableAttributeConfiguration(0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7SwiftUI32ResolvableAttributeConfigurationOWOcTm_0(v44, v22, type metadata accessor for ResolvableAttributeConfiguration);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 1)
  {
    v26 = v41;
    if (result)
    {
      (*(v41 + 32))(v6, v22, v4);
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      lazy protocol witness table accessor for type ResolvableAttributeConfiguration.CodingKeys and conformance ResolvableAttributeConfiguration.CodingKeys();
      dispatch thunk of Encoder.container<A>(keyedBy:)();
      LOBYTE(v46) = 4;
      lazy protocol witness table accessor for type AlignedTimelineSchedule.Entries and conformance AlignedTimelineSchedule.Entries(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
      v37 = v42;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v43 + 8))(v13, v37);
      return (*(v26 + 8))(v6, v4);
    }

    else
    {
      v27 = *v22;
      v28 = v22[8];
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      lazy protocol witness table accessor for type ResolvableAttributeConfiguration.CodingKeys and conformance ResolvableAttributeConfiguration.CodingKeys();
      dispatch thunk of Encoder.container<A>(keyedBy:)();
      LOBYTE(v46) = 0;
      v29 = v42;
      v30 = v45;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (!v30)
      {
        v46 = v27;
        v47 = v28;
        v48 = 1;
        type metadata accessor for HitTestableEvent?(0, &lazy cache variable for type metadata for Double?, MEMORY[0x1E69E63B0]);
        lazy protocol witness table accessor for type Double? and conformance <A> A?();
        KeyedEncodingContainer.encode<A>(_:forKey:)();
      }

      return (*(v43 + 8))(v19, v29);
    }
  }

  else if (result == 2)
  {
    type metadata accessor for (interval: DateInterval, countdown: Bool)(0);
    v32 = v38;
    v31 = v39;
    v33 = v22;
    v34 = v40;
    (*(v39 + 32))(v38, v33, v40);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    lazy protocol witness table accessor for type ResolvableAttributeConfiguration.CodingKeys and conformance ResolvableAttributeConfiguration.CodingKeys();
    dispatch thunk of Encoder.container<A>(keyedBy:)();
    LOBYTE(v46) = 5;
    v35 = v42;
    v36 = v45;
    KeyedEncodingContainer.encode(_:forKey:)();
    if (!v36)
    {
      LOBYTE(v46) = 6;
      lazy protocol witness table accessor for type AlignedTimelineSchedule.Entries and conformance AlignedTimelineSchedule.Entries(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x1E6968130], MEMORY[0x1E6968138]);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
    }

    (*(v43 + 8))(v10, v35);
    return (*(v31 + 8))(v32, v34);
  }

  else
  {
    v24 = v45;
    if (result == 3)
    {
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      lazy protocol witness table accessor for type ResolvableAttributeConfiguration.CodingKeys and conformance ResolvableAttributeConfiguration.CodingKeys();
      dispatch thunk of Encoder.container<A>(keyedBy:)();
      LOBYTE(v46) = 2;
      v25 = v42;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (!v24)
      {
        LOBYTE(v46) = 3;
        KeyedEncodingContainer.encode(_:forKey:)();
      }

      return (*(v43 + 8))(v16, v25);
    }
  }

  return result;
}

uint64_t ResolvableAttributeConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = MEMORY[0x1E69E6720];
  _ss11AnySequenceVy10Foundation4DateVGMaTm_1(0, &lazy cache variable for type metadata for DateInterval?, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v51 = &v47 - v5;
  v52 = type metadata accessor for DateInterval();
  v50 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v49 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  _ss11AnySequenceVy10Foundation4DateVGMaTm_1(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], v3);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v56 = &v47 - v8;
  v9 = type metadata accessor for Date();
  v55 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for KeyedEncodingContainer<ResolvableAttributeConfiguration.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<ResolvableAttributeConfiguration.CodingKeys>, MEMORY[0x1E69E6F48]);
  v13 = v12;
  v54 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v47 - v14;
  v16 = type metadata accessor for ResolvableAttributeConfiguration(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = a1[3];
  v58 = a1;
  v20 = a1;
  v21 = v15;
  __swift_project_boxed_opaque_existential_1(v20, v19);
  lazy protocol witness table accessor for type ResolvableAttributeConfiguration.CodingKeys and conformance ResolvableAttributeConfiguration.CodingKeys();
  v22 = v57;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v22)
  {
    v23 = v55;
    v48 = v18;
    v57 = v16;
    v24 = v54;
    v65 = 0;
    v25 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    if (v25 != 2 && (v25 & 1) != 0)
    {
      v59 = 1;
      v26 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v28 = v27;
      (*(v24 + 8))(v21, v13);
      v29 = v48;
      *v48 = v26;
      *(v29 + 8) = v28 & 1;
LABEL_16:
      v36 = v53;
      goto LABEL_17;
    }

    v64 = 2;
    v30 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    if (v30 == 2 || (v30 & 1) == 0)
    {
      v63 = 4;
      lazy protocol witness table accessor for type AlignedTimelineSchedule.Entries and conformance AlignedTimelineSchedule.Entries(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      v34 = v56;
      if ((*(v23 + 48))(v56, 1, v9) != 1)
      {
        (*(v24 + 8))(v15, v13);
        v37 = *(v23 + 32);
        v37(v11, v34, v9);
        v29 = v48;
        v37(v48, v11, v9);
        goto LABEL_16;
      }

      _s10Foundation4DateVSgWOhTm_1(v34, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], _ss11AnySequenceVy10Foundation4DateVGMaTm_1);
      v62 = 5;
      v35 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      if (v35 == 2)
      {
        (*(v24 + 8))(v15, v13);
        v36 = v53;
        v29 = v48;
LABEL_17:
        swift_storeEnumTagMultiPayload();
        outlined init with take of ResolvableAttributeConfiguration.Schedule(v29, v36, type metadata accessor for ResolvableAttributeConfiguration);
        return __swift_destroy_boxed_opaque_existential_1(v58);
      }

      LODWORD(v56) = v35;
      v61 = 6;
      lazy protocol witness table accessor for type AlignedTimelineSchedule.Entries and conformance AlignedTimelineSchedule.Entries(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x1E6968130], MEMORY[0x1E6968150]);
      v40 = v51;
      v39 = v52;
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      v36 = v53;
      v41 = v50;
      if ((*(v50 + 48))(v40, 1, v39) != 1)
      {
        (*(v24 + 8))(v21, v13);
        v42 = v40;
        v43 = *(v41 + 32);
        v44 = v49;
        v43(v49, v42, v39);
        type metadata accessor for (interval: DateInterval, countdown: Bool)(0);
        v46 = *(v45 + 48);
        v29 = v48;
        v43(v48, v44, v39);
        *(v29 + v46) = v56 & 1;
        goto LABEL_17;
      }

      _s10Foundation4DateVSgWOhTm_1(v40, &lazy cache variable for type metadata for DateInterval?, MEMORY[0x1E6968130], MEMORY[0x1E69E6720], _ss11AnySequenceVy10Foundation4DateVGMaTm_1);
    }

    else
    {
      v60 = 3;
      v32 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      if ((v33 & 1) == 0)
      {
        v38 = v32;
        (*(v24 + 8))(v21, v13);
        v29 = v48;
        *v48 = v38;
        goto LABEL_16;
      }
    }

    lazy protocol witness table accessor for type ResolvableAttributeConfiguration.Errors and conformance ResolvableAttributeConfiguration.Errors();
    swift_allocError();
    swift_willThrow();
    (*(v24 + 8))(v21, v13);
  }

  return __swift_destroy_boxed_opaque_existential_1(v58);
}

uint64_t TimelineSchedule.legacyInvalidationConfiguration.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for InvalidationConfigurtaionProvider, &protocol descriptor for InvalidationConfigurtaionProvider);
  if (swift_dynamicCast())
  {
    outlined init with take of AnyTrackedValue(v11, v13);
    v6 = v14;
    v7 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    (*(v7 + 8))(v6, v7);
    v8 = type metadata accessor for ResolvableAttributeConfiguration(0);
    (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
    return __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    v12 = 0;
    memset(v11, 0, sizeof(v11));
    _s10Foundation4DateVSgWOhTm_1(v11, &lazy cache variable for type metadata for InvalidationConfigurtaionProvider?, &lazy cache variable for type metadata for InvalidationConfigurtaionProvider, &protocol descriptor for InvalidationConfigurtaionProvider, type metadata accessor for ScrollStateRequest?);
    v10 = type metadata accessor for ResolvableAttributeConfiguration(0);
    return (*(*(v10 - 8) + 56))(a2, 1, 1, v10);
  }
}

uint64_t ResolvableAttributeConfiguration.Schedule.invalidationConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ResolvableAttributeConfiguration.Schedule.Alignment(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  _s7SwiftUI32ResolvableAttributeConfigurationOWOcTm_0(v2, v6, type metadata accessor for ResolvableAttributeConfiguration.Schedule.Alignment);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      type metadata accessor for (interval: DateInterval, countdown: Bool)(0);
      v9 = *(v8 + 48);
      v10 = *(v6 + v9);
      v11 = type metadata accessor for DateInterval();
      (*(*(v11 - 8) + 32))(a1, v6, v11);
      *(a1 + v9) = v10;
    }

    else
    {
      *a1 = *v6;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v12 = type metadata accessor for Date();
    (*(*(v12 - 8) + 32))(a1, v6, v12);
  }

  else
  {
    *a1 = *v6;
    *(a1 + 8) = 0;
  }

  type metadata accessor for ResolvableAttributeConfiguration(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t TimeDataFormatting.Resolvable.invalidationConfiguration.getter(uint64_t a1)
{
  LOBYTE(v5[0]) = 1;
  TimeDataFormatting.Resolvable.representation(for:)(v5, a1, v7);
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ResolvableStringAttributeRepresentation, &protocol descriptor for ResolvableStringAttributeRepresentation);
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ConfigurationBasedResolvableStringAttributeRepresentation, &protocol descriptor for ConfigurationBasedResolvableStringAttributeRepresentation);
  if (swift_dynamicCast())
  {
    outlined init with take of AnyTrackedValue(v5, v8);
    v2 = v9;
    v3 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    (*(v3 + 40))(v2, v3);
    return __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
    v6 = 0;
    memset(v5, 0, sizeof(v5));
    _s10Foundation4DateVSgWOhTm_1(v5, &lazy cache variable for type metadata for ConfigurationBasedResolvableStringAttributeRepresentation?, &lazy cache variable for type metadata for ConfigurationBasedResolvableStringAttributeRepresentation, &protocol descriptor for ConfigurationBasedResolvableStringAttributeRepresentation, type metadata accessor for ScrollStateRequest?);
    type metadata accessor for ResolvableAttributeConfiguration(0);
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t ReducedTimelineSchedule<>.invalidationConfiguration.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ResolvableAttributeConfiguration(0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 8))(*(a1 + 16), a2, v7);
  (*(a3 + 8))(*(a1 + 24), a3);
  ResolvableAttributeConfiguration.reduce(_:)(v9);
  return outlined destroy of TimerIntervalTimelineSchedule(v9, type metadata accessor for ResolvableAttributeConfiguration);
}

uint64_t specialized static ResolvableAttributeConfiguration.Schedule.Alignment.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v3 = type metadata accessor for DateInterval();
  v45 = *(v3 - 8);
  v46 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v42 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Date();
  v43 = *(v5 - 8);
  v44 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ResolvableAttributeConfiguration.Schedule.Alignment(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v42 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v42 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v42 - v18);
  type metadata accessor for (ResolvableAttributeConfiguration, ResolvableAttributeConfiguration)(0, &lazy cache variable for type metadata for (ResolvableAttributeConfiguration.Schedule.Alignment, ResolvableAttributeConfiguration.Schedule.Alignment), type metadata accessor for ResolvableAttributeConfiguration.Schedule.Alignment);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v42 - v21;
  v24 = (&v42 + *(v23 + 56) - v21);
  _s7SwiftUI32ResolvableAttributeConfigurationOWOcTm_0(a1, &v42 - v21, type metadata accessor for ResolvableAttributeConfiguration.Schedule.Alignment);
  _s7SwiftUI32ResolvableAttributeConfigurationOWOcTm_0(v47, v24, type metadata accessor for ResolvableAttributeConfiguration.Schedule.Alignment);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      _s7SwiftUI32ResolvableAttributeConfigurationOWOcTm_0(v22, v16, type metadata accessor for ResolvableAttributeConfiguration.Schedule.Alignment);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v39 = v43;
        v38 = v44;
        (*(v43 + 32))(v7, v24, v44);
        v37 = static Date.== infix(_:_:)();
        v40 = *(v39 + 8);
        v40(v7, v38);
        v40(v16, v38);
LABEL_16:
        outlined destroy of TimerIntervalTimelineSchedule(v22, type metadata accessor for ResolvableAttributeConfiguration.Schedule.Alignment);
        return v37 & 1;
      }

      (*(v43 + 8))(v16, v44);
    }

    else
    {
      _s7SwiftUI32ResolvableAttributeConfigurationOWOcTm_0(v22, v19, type metadata accessor for ResolvableAttributeConfiguration.Schedule.Alignment);
      if (!swift_getEnumCaseMultiPayload())
      {
        v26 = *v19 == *v24;
        goto LABEL_13;
      }
    }

    goto LABEL_19;
  }

  if (EnumCaseMultiPayload != 2)
  {
    _s7SwiftUI32ResolvableAttributeConfigurationOWOcTm_0(v22, v10, type metadata accessor for ResolvableAttributeConfiguration.Schedule.Alignment);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v26 = *v10 == *v24;
LABEL_13:
      v37 = v26;
      goto LABEL_16;
    }

    goto LABEL_19;
  }

  _s7SwiftUI32ResolvableAttributeConfigurationOWOcTm_0(v22, v13, type metadata accessor for ResolvableAttributeConfiguration.Schedule.Alignment);
  type metadata accessor for (interval: DateInterval, countdown: Bool)(0);
  v28 = *(v27 + 48);
  v29 = v13[v28];
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    (*(v45 + 8))(v13, v46);
LABEL_19:
    _sypSgWOhTm_10(v22, &lazy cache variable for type metadata for (ResolvableAttributeConfiguration.Schedule.Alignment, ResolvableAttributeConfiguration.Schedule.Alignment), type metadata accessor for ResolvableAttributeConfiguration.Schedule.Alignment, type metadata accessor for (ResolvableAttributeConfiguration, ResolvableAttributeConfiguration));
LABEL_20:
    v37 = 0;
    return v37 & 1;
  }

  v30 = *(v24 + v28);
  v31 = v45;
  v32 = v42;
  v33 = v24;
  v34 = v46;
  (*(v45 + 32))(v42, v33, v46);
  v35 = static DateInterval.== infix(_:_:)();
  v36 = *(v31 + 8);
  v36(v32, v34);
  v36(v13, v34);
  if ((v35 & 1) == 0)
  {
    outlined destroy of TimerIntervalTimelineSchedule(v22, type metadata accessor for ResolvableAttributeConfiguration.Schedule.Alignment);
    goto LABEL_20;
  }

  outlined destroy of TimerIntervalTimelineSchedule(v22, type metadata accessor for ResolvableAttributeConfiguration.Schedule.Alignment);
  v37 = v29 ^ v30 ^ 1;
  return v37 & 1;
}

uint64_t specialized static ResolvableAttributeConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v46 = a1;
  v47 = a2;
  v2 = type metadata accessor for DateInterval();
  v43 = *(v2 - 8);
  v44 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v42 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Date();
  v45 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ResolvableAttributeConfiguration(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v42 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v42 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v42 - v17);
  type metadata accessor for (ResolvableAttributeConfiguration, ResolvableAttributeConfiguration)(0, &lazy cache variable for type metadata for (ResolvableAttributeConfiguration, ResolvableAttributeConfiguration), type metadata accessor for ResolvableAttributeConfiguration);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v42 - v20;
  v23 = (&v42 + *(v22 + 56) - v20);
  _s7SwiftUI32ResolvableAttributeConfigurationOWOcTm_0(v46, &v42 - v20, type metadata accessor for ResolvableAttributeConfiguration);
  _s7SwiftUI32ResolvableAttributeConfigurationOWOcTm_0(v47, v23, type metadata accessor for ResolvableAttributeConfiguration);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v26 = v45;
    if (EnumCaseMultiPayload)
    {
      _s7SwiftUI32ResolvableAttributeConfigurationOWOcTm_0(v21, v15, type metadata accessor for ResolvableAttributeConfiguration);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v39 = v26;
        (*(v26 + 32))(v6, v23, v4);
        v25 = static Date.== infix(_:_:)();
        v40 = *(v39 + 8);
        v40(v6, v4);
        v40(v15, v4);
        goto LABEL_18;
      }

      (*(v26 + 8))(v15, v4);
      goto LABEL_21;
    }

    _s7SwiftUI32ResolvableAttributeConfigurationOWOcTm_0(v21, v18, type metadata accessor for ResolvableAttributeConfiguration);
    v27 = *v18;
    if (swift_getEnumCaseMultiPayload())
    {
      goto LABEL_21;
    }

    v28 = *(v23 + 8);
    if (v18[1])
    {
      if (!*(v23 + 8))
      {
        goto LABEL_27;
      }
    }

    else
    {
      if (v27 != *v23)
      {
        v28 = 1;
      }

      if (v28)
      {
        goto LABEL_27;
      }
    }

LABEL_15:
    outlined destroy of TimerIntervalTimelineSchedule(v21, type metadata accessor for ResolvableAttributeConfiguration);
    v25 = 1;
    return v25 & 1;
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      _s7SwiftUI32ResolvableAttributeConfigurationOWOcTm_0(v21, v9, type metadata accessor for ResolvableAttributeConfiguration);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v25 = *v9 == *v23;
LABEL_18:
        outlined destroy of TimerIntervalTimelineSchedule(v21, type metadata accessor for ResolvableAttributeConfiguration);
        return v25 & 1;
      }

      goto LABEL_21;
    }

    if (swift_getEnumCaseMultiPayload() == 4)
    {
      goto LABEL_15;
    }

LABEL_21:
    _sypSgWOhTm_10(v21, &lazy cache variable for type metadata for (ResolvableAttributeConfiguration, ResolvableAttributeConfiguration), type metadata accessor for ResolvableAttributeConfiguration, type metadata accessor for (ResolvableAttributeConfiguration, ResolvableAttributeConfiguration));
LABEL_22:
    v25 = 0;
    return v25 & 1;
  }

  _s7SwiftUI32ResolvableAttributeConfigurationOWOcTm_0(v21, v12, type metadata accessor for ResolvableAttributeConfiguration);
  type metadata accessor for (interval: DateInterval, countdown: Bool)(0);
  v30 = *(v29 + 48);
  v31 = v12[v30];
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    (*(v43 + 8))(v12, v44);
    goto LABEL_21;
  }

  v32 = *(v23 + v30);
  v34 = v42;
  v33 = v43;
  v35 = v23;
  v36 = v44;
  (*(v43 + 32))(v42, v35, v44);
  v37 = static DateInterval.== infix(_:_:)();
  v38 = *(v33 + 8);
  v38(v34, v36);
  v38(v12, v36);
  if ((v37 & 1) == 0)
  {
LABEL_27:
    outlined destroy of TimerIntervalTimelineSchedule(v21, type metadata accessor for ResolvableAttributeConfiguration);
    goto LABEL_22;
  }

  outlined destroy of TimerIntervalTimelineSchedule(v21, type metadata accessor for ResolvableAttributeConfiguration);
  v25 = v31 ^ v32 ^ 1;
  return v25 & 1;
}

void type metadata accessor for _SequenceBox<AlignedTimelineSchedule.Entries>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _SequenceBox<AlignedTimelineSchedule.Entries>)
  {
    type metadata accessor for AlignedTimelineSchedule.Entries(255);
    lazy protocol witness table accessor for type AlignedTimelineSchedule.Entries and conformance AlignedTimelineSchedule.Entries(&lazy protocol witness table cache variable for type AlignedTimelineSchedule.Entries and conformance AlignedTimelineSchedule.Entries, type metadata accessor for AlignedTimelineSchedule.Entries, protocol conformance descriptor for AlignedTimelineSchedule.Entries);
    v1 = type metadata accessor for _SequenceBox();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _SequenceBox<AlignedTimelineSchedule.Entries>);
    }
  }
}

uint64_t outlined init with take of ResolvableAttributeConfiguration.Schedule(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void type metadata accessor for _SequenceBox<AnySequence<Date>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _SequenceBox<AnySequence<Date>>)
  {
    _ss11AnySequenceVy10Foundation4DateVGMaTm_1(255, &lazy cache variable for type metadata for AnySequence<Date>, MEMORY[0x1E6969530], MEMORY[0x1E69E69E8]);
    lazy protocol witness table accessor for type AnySequence<Date> and conformance AnySequence<A>();
    v1 = type metadata accessor for _SequenceBox();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _SequenceBox<AnySequence<Date>>);
    }
  }
}

void _ss11AnySequenceVy10Foundation4DateVGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata accessor for _SequenceBox<PeriodicTimelineSchedule.Entries>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _SequenceBox<PeriodicTimelineSchedule.Entries>)
  {
    type metadata accessor for PeriodicTimelineSchedule.Entries(255);
    lazy protocol witness table accessor for type AlignedTimelineSchedule.Entries and conformance AlignedTimelineSchedule.Entries(&lazy protocol witness table cache variable for type PeriodicTimelineSchedule.Entries and conformance PeriodicTimelineSchedule.Entries, type metadata accessor for PeriodicTimelineSchedule.Entries, protocol conformance descriptor for PeriodicTimelineSchedule.Entries);
    v1 = type metadata accessor for _SequenceBox();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _SequenceBox<PeriodicTimelineSchedule.Entries>);
    }
  }
}

void lazy protocol witness table accessor for type ResolvableAttributeConfiguration.CodingKeys and conformance ResolvableAttributeConfiguration.CodingKeys()
{
  if (!lazy protocol witness table cache variable for type ResolvableAttributeConfiguration.CodingKeys and conformance ResolvableAttributeConfiguration.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for ResolvableAttributeConfiguration.CodingKeys, &unk_1F0088168, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ResolvableAttributeConfiguration.CodingKeys and conformance ResolvableAttributeConfiguration.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type ResolvableAttributeConfiguration.CodingKeys and conformance ResolvableAttributeConfiguration.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for ResolvableAttributeConfiguration.CodingKeys, &unk_1F0088168, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ResolvableAttributeConfiguration.CodingKeys and conformance ResolvableAttributeConfiguration.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type ResolvableAttributeConfiguration.CodingKeys and conformance ResolvableAttributeConfiguration.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for ResolvableAttributeConfiguration.CodingKeys, &unk_1F0088168, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ResolvableAttributeConfiguration.CodingKeys and conformance ResolvableAttributeConfiguration.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type ResolvableAttributeConfiguration.CodingKeys and conformance ResolvableAttributeConfiguration.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for ResolvableAttributeConfiguration.CodingKeys, &unk_1F0088168, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ResolvableAttributeConfiguration.CodingKeys and conformance ResolvableAttributeConfiguration.CodingKeys);
  }
}

void lazy protocol witness table accessor for type Double? and conformance <A> A?()
{
  if (!lazy protocol witness table cache variable for type Double? and conformance <A> A?)
  {
    v4[1] = v0;
    v4[2] = v1;
    type metadata accessor for HitTestableEvent?(255, &lazy cache variable for type metadata for Double?, MEMORY[0x1E69E63B0]);
    v4[0] = MEMORY[0x1E69E63C0];
    swift_getWitnessTable(MEMORY[0x1E69E7C70], v2, v4);
    atomic_store(v3, &lazy protocol witness table cache variable for type Double? and conformance <A> A?);
  }
}

void type metadata accessor for KeyedEncodingContainer<ResolvableAttributeConfiguration.CodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *, uint64_t))
{
  if (!*a2)
  {
    lazy protocol witness table accessor for type ResolvableAttributeConfiguration.CodingKeys and conformance ResolvableAttributeConfiguration.CodingKeys();
    v7 = a3(a1, &unk_1F0088168, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void lazy protocol witness table accessor for type AlignedTimelineSchedule.Entries and conformance AlignedTimelineSchedule.Entries(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  if (!*a1)
  {
    v5 = a2(255);
    swift_getWitnessTable(a3, v5);
    atomic_store(v6, a1);
  }
}

void lazy protocol witness table accessor for type ResolvableAttributeConfiguration.Errors and conformance ResolvableAttributeConfiguration.Errors()
{
  if (!lazy protocol witness table cache variable for type ResolvableAttributeConfiguration.Errors and conformance ResolvableAttributeConfiguration.Errors)
  {
    swift_getWitnessTable(protocol conformance descriptor for ResolvableAttributeConfiguration.Errors, &type metadata for ResolvableAttributeConfiguration.Errors, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ResolvableAttributeConfiguration.Errors and conformance ResolvableAttributeConfiguration.Errors);
  }
}

{
  if (!lazy protocol witness table cache variable for type ResolvableAttributeConfiguration.Errors and conformance ResolvableAttributeConfiguration.Errors)
  {
    swift_getWitnessTable(protocol conformance descriptor for ResolvableAttributeConfiguration.Errors, &type metadata for ResolvableAttributeConfiguration.Errors, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ResolvableAttributeConfiguration.Errors and conformance ResolvableAttributeConfiguration.Errors);
  }
}

void *initializeBufferWithCopyOfBuffer for ResolvableAttributeConfiguration.Schedule(void *a1, void *a2)
{
  v4 = type metadata accessor for ResolvableAttributeConfiguration.Schedule.Alignment(0);
  v5 = *(*(v4 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(v4 - 8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v10 = type metadata accessor for DateInterval();
    (*(*(v10 - 8) + 16))(a1, a2, v10);
    type metadata accessor for (interval: DateInterval, countdown: Bool)(0);
    *(a1 + *(v11 + 48)) = *(a2 + *(v11 + 48));
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v8 = type metadata accessor for Date();
    (*(*(v8 - 8) + 16))(a1, a2, v8);
LABEL_7:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v13 = *(v6 + 64);

  return memcpy(a1, a2, v13);
}

uint64_t destroy for ResolvableAttributeConfiguration.Schedule(uint64_t a1)
{
  type metadata accessor for ResolvableAttributeConfiguration.Schedule.Alignment(0);
  result = swift_getEnumCaseMultiPayload();
  if (result == 2)
  {
    v3 = type metadata accessor for DateInterval();
  }

  else
  {
    if (result != 1)
    {
      return result;
    }

    v3 = type metadata accessor for Date();
  }

  v4 = *(*(v3 - 8) + 8);

  return v4(a1, v3);
}

_BYTE *initializeWithCopy for ResolvableAttributeConfiguration.Schedule(_BYTE *a1, _BYTE *a2)
{
  v4 = type metadata accessor for ResolvableAttributeConfiguration.Schedule.Alignment(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v7 = type metadata accessor for DateInterval();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    type metadata accessor for (interval: DateInterval, countdown: Bool)(0);
    a1[*(v8 + 48)] = a2[*(v8 + 48)];
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v6 = type metadata accessor for Date();
    (*(*(v6 - 8) + 16))(a1, a2, v6);
LABEL_5:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v10 = *(*(v4 - 8) + 64);

  return memcpy(a1, a2, v10);
}

_BYTE *assignWithCopy for ResolvableAttributeConfiguration.Schedule(_BYTE *a1, _BYTE *a2)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of TimerIntervalTimelineSchedule(a1, type metadata accessor for ResolvableAttributeConfiguration.Schedule.Alignment);
  v4 = type metadata accessor for ResolvableAttributeConfiguration.Schedule.Alignment(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v7 = type metadata accessor for DateInterval();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    type metadata accessor for (interval: DateInterval, countdown: Bool)(0);
    a1[*(v8 + 48)] = a2[*(v8 + 48)];
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v6 = type metadata accessor for Date();
    (*(*(v6 - 8) + 16))(a1, a2, v6);
LABEL_6:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v10 = *(*(v4 - 8) + 64);

  return memcpy(a1, a2, v10);
}

uint64_t outlined destroy of TimerIntervalTimelineSchedule(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

_BYTE *initializeWithTake for ResolvableAttributeConfiguration.Schedule(_BYTE *a1, _BYTE *a2)
{
  v4 = type metadata accessor for ResolvableAttributeConfiguration.Schedule.Alignment(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v7 = type metadata accessor for DateInterval();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
    type metadata accessor for (interval: DateInterval, countdown: Bool)(0);
    a1[*(v8 + 48)] = a2[*(v8 + 48)];
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v6 = type metadata accessor for Date();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
LABEL_5:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v10 = *(*(v4 - 8) + 64);

  return memcpy(a1, a2, v10);
}

_BYTE *assignWithTake for ResolvableAttributeConfiguration.Schedule(_BYTE *a1, _BYTE *a2)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of TimerIntervalTimelineSchedule(a1, type metadata accessor for ResolvableAttributeConfiguration.Schedule.Alignment);
  v4 = type metadata accessor for ResolvableAttributeConfiguration.Schedule.Alignment(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v7 = type metadata accessor for DateInterval();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
    type metadata accessor for (interval: DateInterval, countdown: Bool)(0);
    a1[*(v8 + 48)] = a2[*(v8 + 48)];
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v6 = type metadata accessor for Date();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
LABEL_6:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v10 = *(*(v4 - 8) + 64);

  return memcpy(a1, a2, v10);
}

uint64_t type metadata completion function for ResolvableAttributeConfiguration.Schedule(uint64_t a1)
{
  result = type metadata accessor for ResolvableAttributeConfiguration.Schedule.Alignment(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for ResolvableAttributeConfiguration(void *a1, void *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(a3 - 8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v10 = type metadata accessor for DateInterval();
    (*(*(v10 - 8) + 16))(a1, a2, v10);
    type metadata accessor for (interval: DateInterval, countdown: Bool)(0);
    *(a1 + *(v11 + 48)) = *(a2 + *(v11 + 48));
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v8 = type metadata accessor for Date();
    (*(*(v8 - 8) + 16))(a1, a2, v8);
LABEL_7:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v13 = *(v6 + 64);

  return memcpy(a1, a2, v13);
}

uint64_t destroy for ResolvableAttributeConfiguration(uint64_t a1, uint64_t a2)
{
  result = swift_getEnumCaseMultiPayload();
  if (result == 2)
  {
    v4 = type metadata accessor for DateInterval();
  }

  else
  {
    if (result != 1)
    {
      return result;
    }

    v4 = type metadata accessor for Date();
  }

  v5 = *(*(v4 - 8) + 8);

  return v5(a1, v4);
}

_BYTE *initializeWithCopy for ResolvableAttributeConfiguration(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v8 = type metadata accessor for DateInterval();
    (*(*(v8 - 8) + 16))(a1, a2, v8);
    type metadata accessor for (interval: DateInterval, countdown: Bool)(0);
    a1[*(v9 + 48)] = a2[*(v9 + 48)];
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v7 = type metadata accessor for Date();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
LABEL_5:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v11 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v11);
}

_BYTE *assignWithCopy for ResolvableAttributeConfiguration(_BYTE *a1, _BYTE *a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of TimerIntervalTimelineSchedule(a1, a4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v9 = type metadata accessor for DateInterval();
    (*(*(v9 - 8) + 16))(a1, a2, v9);
    type metadata accessor for (interval: DateInterval, countdown: Bool)(0);
    a1[*(v10 + 48)] = a2[*(v10 + 48)];
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v8 = type metadata accessor for Date();
    (*(*(v8 - 8) + 16))(a1, a2, v8);
LABEL_6:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v12 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v12);
}

_BYTE *initializeWithTake for ResolvableAttributeConfiguration(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v8 = type metadata accessor for DateInterval();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    type metadata accessor for (interval: DateInterval, countdown: Bool)(0);
    a1[*(v9 + 48)] = a2[*(v9 + 48)];
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v7 = type metadata accessor for Date();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
LABEL_5:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v11 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v11);
}

_BYTE *assignWithTake for ResolvableAttributeConfiguration(_BYTE *a1, _BYTE *a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of TimerIntervalTimelineSchedule(a1, a4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v9 = type metadata accessor for DateInterval();
    (*(*(v9 - 8) + 32))(a1, a2, v9);
    type metadata accessor for (interval: DateInterval, countdown: Bool)(0);
    a1[*(v10 + 48)] = a2[*(v10 + 48)];
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v8 = type metadata accessor for Date();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
LABEL_6:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v12 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v12);
}

uint64_t type metadata completion function for ResolvableAttributeConfiguration(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[4] = a4;
  result = type metadata accessor for Date();
  if (v5 <= 0x3F)
  {
    v7[5] = *(result - 8) + 64;
    result = type metadata accessor for DateInterval();
    if (v6 <= 0x3F)
    {
      swift_getTupleTypeLayout2();
      v7[6] = v7;
      v7[7] = MEMORY[0x1E69E5D08] + 64;
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

uint64_t specialized ResolvableAttributeConfiguration.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C61767265746E69 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79616C6564 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x636F6C436C6C6177 && a2 == 0xE90000000000006BLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E656D6E67696C61 && a2 == 0xE900000000000074 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x72656D6974 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x776F64746E756F63 && a2 == 0xEA0000000000736ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x746E4972656D6974 && a2 == 0xED00006C61767265)
  {

    return 6;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

void type metadata accessor for (ResolvableAttributeConfiguration, ResolvableAttributeConfiguration)(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

Swift::Int ScrollAnchorStorage.Role.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

uint64_t ScrollAnchorStorage.defaultValue.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 8) = result;
  *(v3 + 16) = a2;
  *(v3 + 24) = a3 & 1;
  return result;
}

uint64_t ScrollAnchorStorage.isEmpty.getter()
{
  if (*(*v0 + 16))
  {
    return 0;
  }

  else
  {
    return v0[24];
  }
}

uint64_t (*ScrollAnchorStorage.initialOffset.modify(int8x16_t *a1))(double *a1, uint64_t a2)
{
  v2 = v1;
  a1[1].i64[0] = v1;
  v4 = *v1;
  v5 = *(v2 + 1);
  v6 = *(v2 + 24);
  if (*(v4 + 16) && (v13 = *(v2 + 1), v7 = specialized __RawDictionaryStorage.find<A>(_:)(), v5 = v13, (v8 & 1) != 0))
  {
    v9 = *(*(v4 + 56) + 16 * v7);
  }

  else
  {
    v10 = vdup_n_s32(v6);
    v11.i64[0] = v10.u32[0];
    v11.i64[1] = v10.u32[1];
    v9 = vandq_s8(v5, vcgezq_s64(vshlq_n_s64(v11, 0x3FuLL)));
  }

  *a1 = v9;
  return ScrollAnchorStorage.initialOffset.modify;
}

uint64_t (*ScrollAnchorStorage.sizeChanges.modify(int8x16_t *a1))(double *a1, uint64_t a2)
{
  v2 = v1;
  a1[1].i64[0] = v1;
  v4 = *v1;
  v5 = *(v2 + 1);
  v6 = *(v2 + 24);
  if (*(v4 + 16) && (v13 = *(v2 + 1), v7 = specialized __RawDictionaryStorage.find<A>(_:)(), v5 = v13, (v8 & 1) != 0))
  {
    v9 = *(*(v4 + 56) + 16 * v7);
  }

  else
  {
    v10 = vdup_n_s32(v6);
    v11.i64[0] = v10.u32[0];
    v11.i64[1] = v10.u32[1];
    v9 = vandq_s8(v5, vcgezq_s64(vshlq_n_s64(v11, 0x3FuLL)));
  }

  *a1 = v9;
  return ScrollAnchorStorage.sizeChanges.modify;
}

uint64_t key path setter for ScrollAnchorStorage.initialOffset : ScrollAnchorStorage(double *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  v8 = a1[1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *a2;
  result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a5, isUniquelyReferenced_nonNull_native, v7, v8);
  *a2 = v11;
  return result;
}

uint64_t ScrollAnchorStorage.initialOffset.setter(uint64_t a1, double a2, double a3)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v3;
  result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, isUniquelyReferenced_nonNull_native, a2, a3);
  *v3 = v9;
  return result;
}

uint64_t (*ScrollAnchorStorage.alignment.modify(int8x16_t *a1))(double *a1, uint64_t a2)
{
  v2 = v1;
  a1[1].i64[0] = v1;
  v4 = *v1;
  v5 = *(v2 + 1);
  v6 = *(v2 + 24);
  if (*(v4 + 16) && (v13 = *(v2 + 1), v7 = specialized __RawDictionaryStorage.find<A>(_:)(), v5 = v13, (v8 & 1) != 0))
  {
    v9 = *(*(v4 + 56) + 16 * v7);
  }

  else
  {
    v10 = vdup_n_s32(v6);
    v11.i64[0] = v10.u32[0];
    v11.i64[1] = v10.u32[1];
    v9 = vandq_s8(v5, vcgezq_s64(vshlq_n_s64(v11, 0x3FuLL)));
  }

  *a1 = v9;
  return ScrollAnchorStorage.alignment.modify;
}

uint64_t ScrollAnchorStorage.initialOffset.modify(double *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 2);
  v6 = *a1;
  v5 = a1[1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v4;
  result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a3, isUniquelyReferenced_nonNull_native, v6, v5);
  *v4 = v9;
  return result;
}

uint64_t ScrollAnchorStorage.updateRole(_:anchor:)(unsigned __int8 *a1, double a2, double a3)
{
  v4 = v3;
  v7 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (v7)
  {
    v13 = *v4;
    v9 = a2;
    v10 = a3;
    if (v7 == 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }
  }

  else
  {
    v13 = *v4;
    v9 = a2;
    v10 = a3;
    v11 = 0;
  }

  result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v11, isUniquelyReferenced_nonNull_native, v9, v10);
  *v4 = v13;
  return result;
}

Swift::Void __swiftcall ScrollAnchorStorage.reset()()
{
  v1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI19ScrollAnchorStorageV4RoleO_AC9UnitPointVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);

  *(v0 + 8) = 0;
  *(v0 + 16) = 0;
  *v0 = v1;
  *(v0 + 24) = 1;
}

double EnvironmentValues.scrollAnchors.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  if (!*(v1 + 8))
  {
    return _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA013ScrollAnchorsF033_7B1EE599701509BF28EDF9C7B4D1E4E3LLVG_Tt2g5(v2, a1);
  }

  _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA013ScrollAnchorsI033_7B1EE599701509BF28EDF9C7B4D1E4E3LLVG_Tt1g5(v2, a1);

  return result;
}

double key path getter for EnvironmentValues.scrollAnchors : EnvironmentValues@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA013ScrollAnchorsI033_7B1EE599701509BF28EDF9C7B4D1E4E3LLVG_Tt1g5(v3, &v6);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA013ScrollAnchorsF033_7B1EE599701509BF28EDF9C7B4D1E4E3LLVG_Tt2g5(*a1, &v6);
  }

  v4 = v8;
  *a2 = v6;
  result = *&v7;
  *(a2 + 8) = v7;
  *(a2 + 24) = v4;
  return result;
}

double key path setter for EnvironmentValues.scrollAnchors : EnvironmentValues(uint64_t a1, Swift::UInt *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *a2;
  swift_retain_n();

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA013ScrollAnchorsF033_7B1EE599701509BF28EDF9C7B4D1E4E3LLVG_Tt2B5(a2, v3, v4, v5, v6);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA013ScrollAnchorsK033_7B1EE599701509BF28EDF9C7B4D1E4E3LLVG_Ttg5(v7, *a2);
  }

  return result;
}

void (*EnvironmentValues.scrollAnchors.modify(void *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v7 = v3;
  *a1 = v3;
  v3[6] = v1;
  v8 = *v1;
  v3[7] = *v1;
  v9 = *(v1 + 8);
  v3[8] = v9;
  if (v9)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA013ScrollAnchorsI033_7B1EE599701509BF28EDF9C7B4D1E4E3LLVG_Tt1g5(v8, v7);
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<ScrollAnchorsKey>(0, v4, v5, v6);
    BloomFilter.init(hashValue:)(v10);
    v11 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA013ScrollAnchorsV033_7B1EE599701509BF28EDF9C7B4D1E4E3LLVG_Tt0B5(v8, v17);
    if (v11)
    {
      v12 = *(v11 + 96);
      v13 = *(v11 + 5);
      *v7 = v11[9];
      *(v7 + 1) = v13;
      *(v7 + 24) = v12;
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v14 = byte_1ED522CF8;
      v15 = *&qword_1ED522CE8;
      *v7 = static ScrollAnchorsKey.defaultValue;
      *(v7 + 1) = v15;
      *(v7 + 24) = v14;
    }
  }

  return EnvironmentValues.scrollAnchors.modify;
}

void EnvironmentValues.scrollAnchors.modify(uint64_t **a1, char a2)
{
  v3 = *a1;
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = *(*a1 + 24);

  v8 = v3[8];
  v9 = v3[6];
  if (a2)
  {
    swift_bridgeObjectRetain_n();

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA013ScrollAnchorsF033_7B1EE599701509BF28EDF9C7B4D1E4E3LLVG_Tt2B5(v9, v5, v4, v6, v7);

    if (v8)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA013ScrollAnchorsK033_7B1EE599701509BF28EDF9C7B4D1E4E3LLVG_Ttg5(v3[7], *v3[6]);
    }
  }

  else
  {

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA013ScrollAnchorsF033_7B1EE599701509BF28EDF9C7B4D1E4E3LLVG_Tt2B5(v9, v5, v4, v6, v7);

    if (v8)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA013ScrollAnchorsK033_7B1EE599701509BF28EDF9C7B4D1E4E3LLVG_Ttg5(v3[7], *v3[6]);
    }
  }

  free(v3);
}

uint64_t EnvironmentValues.initialOffsetScrollAnchor.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return EnvironmentValues.initialOffsetScrollAnchor.getter(0, a2, a3, a4);
}

{
  v5 = *v4;
  if (*(v4 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA013ScrollAnchorsI033_7B1EE599701509BF28EDF9C7B4D1E4E3LLVG_Tt1g5(v5, v15);

    v6 = v15[0];
    v7 = v15[1];
    v8 = v16;
    if (!*(v15[0] + 16))
    {
      goto LABEL_12;
    }
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<ScrollAnchorsKey>(0, a2, a3, a4);
    BloomFilter.init(hashValue:)(v9);
    v10 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA013ScrollAnchorsV033_7B1EE599701509BF28EDF9C7B4D1E4E3LLVG_Tt0B5(v5, v15[0]);
    if (v10)
    {
      v6 = v10[9];
      v7 = v10[10];
      v8 = *(v10 + 96);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v6 = static ScrollAnchorsKey.defaultValue;
      v7 = qword_1ED522CE8;
      v8 = byte_1ED522CF8;
    }

    if (!*(v6 + 16))
    {
      goto LABEL_12;
    }
  }

  v11 = specialized __RawDictionaryStorage.find<A>(_:)();
  if (v12)
  {
    v13 = *(*(v6 + 56) + 16 * v11);

    return v13;
  }

LABEL_12:

  if (v8)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

void specialized implicit closure #1 in _GraphInputs.scrollAnchors.getter(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = *a1;
  if (a1[1])
  {

    swift_retain_n();
    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA013ScrollAnchorsI033_7B1EE599701509BF28EDF9C7B4D1E4E3LLVG_Tt1g5(v6, v18);

    v7 = v18[0];
    v8 = v18[1];
    v9 = v18[2];
    v10 = v19;
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<ScrollAnchorsKey>(0, a2, a3, a4);
    BloomFilter.init(hashValue:)(v11);

    v13 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA013ScrollAnchorsV033_7B1EE599701509BF28EDF9C7B4D1E4E3LLVG_Tt0B5(v12, v18[0]);
    if (v13)
    {
      v14 = v13 + 9;
      v15 = v13 + 10;
      v16 = v13 + 11;
      v17 = (v13 + 12);
    }

    else
    {
      v14 = &static ScrollAnchorsKey.defaultValue;
      v15 = &qword_1ED522CE8;
      v16 = &qword_1ED522CF0;
      v17 = &byte_1ED522CF8;
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
        v16 = &qword_1ED522CF0;
        v15 = &qword_1ED522CE8;
        v17 = &byte_1ED522CF8;
      }
    }

    v8 = *v15;
    v9 = *v16;
    v7 = *v14;
    v10 = *v17;
  }

  *a5 = v7;
  *(a5 + 8) = v8;
  *(a5 + 16) = v9;
  *(a5 + 24) = v10;
}

double protocol witness for static EnvironmentKey.defaultValue.getter in conformance ScrollAnchorsKey@<D0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = byte_1ED522CF8;
  *a1 = static ScrollAnchorsKey.defaultValue;
  *(a1 + 8) = *&qword_1ED522CE8;
  *(a1 + 24) = v2;

  return result;
}

void lazy protocol witness table accessor for type [ScrollAnchorStorage.Role] and conformance [A]()
{
  if (!lazy protocol witness table cache variable for type [ScrollAnchorStorage.Role] and conformance [A])
  {
    type metadata accessor for [ScrollAnchorStorage.Role]();
    swift_getWitnessTable(MEMORY[0x1E69E6340], v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type [ScrollAnchorStorage.Role] and conformance [A]);
  }
}

void type metadata accessor for [ScrollAnchorStorage.Role]()
{
  if (!lazy cache variable for type metadata for [ScrollAnchorStorage.Role])
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [ScrollAnchorStorage.Role]);
    }
  }
}

BOOL CGAffineTransform.isRectilinear.getter()
{
  if (v0[1] == 0.0 && v0[2] == 0.0)
  {
    return 1;
  }

  if (*v0 == 0.0)
  {
    return v0[3] == 0.0;
  }

  return 0;
}

double CGAffineTransform.scale.getter()
{
  v1 = vmulq_f64(v0[1], v0[1]);
  v2 = vaddvq_f64(vmulq_f64(*v0, *v0));
  v3 = vaddq_f64(v1, vdupq_laneq_s64(v1, 1)).f64[0];
  v4 = v3 == 1.0 && v2 == 1.0;
  result = (sqrt(v2) + sqrt(v3)) * 0.5;
  if (v4)
  {
    return 1.0;
  }

  return result;
}

void __swiftcall CGAffineTransform.init(rotation:)(CGAffineTransform *__return_ptr retstr, SwiftUI::Angle rotation)
{
  v3 = __sincos_stret(rotation.radians);
  retstr->a = v3.__cosval;
  retstr->b = v3.__sinval;
  retstr->c = -v3.__sinval;
  retstr->d = v3.__cosval;
  retstr->tx = 0.0;
  retstr->ty = 0.0;
}

BOOL CGAffineTransform.isUniform.getter()
{
  v1 = v0[1];
  if (v1 == 0.0 && v0[2] == 0.0)
  {
    v2 = *v0;
    v3 = v0[3];
  }

  else
  {
    v2 = *v0;
    if (*v0 != 0.0)
    {
      return 0;
    }

    v3 = v0[3];
    if (v3 != 0.0)
    {
      return 0;
    }
  }

  if (v2 == v3)
  {
    return v1 == v0[2];
  }

  return 0;
}

BOOL CGAffineTransform.isNaN.getter()
{
  if ((~*v0 & 0x7FF0000000000000) == 0 && (*v0 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    return 1;
  }

  v2 = v0[1];
  v3 = ~v2 & 0x7FF0000000000000;
  v4 = v2 & 0xFFFFFFFFFFFFFLL;
  if (!v3 && v4 != 0)
  {
    return 1;
  }

  v6 = v0[2];
  if ((~v6 & 0x7FF0000000000000) == 0 && (v6 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    return 1;
  }

  v7 = v0[3];
  if ((~v7 & 0x7FF0000000000000) == 0 && (v7 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    return 1;
  }

  v8 = v0[4];
  if ((~v8 & 0x7FF0000000000000) == 0 && (v8 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    return 1;
  }

  v10 = v0[5];
  return (~v10 & 0x7FF0000000000000) == 0 && (v10 & 0xFFFFFFFFFFFFFLL) != 0;
}

void __swiftcall CGAffineTransform.rotated(by:)(CGAffineTransform *__return_ptr retstr, SwiftUI::Angle by)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = v2[4];
  v5 = v2[5];
  v6 = __sincos_stret(by.radians);
  t1.a = v6.__cosval;
  t1.b = v6.__sinval;
  t1.c = -v6.__sinval;
  t1.d = v6.__cosval;
  t1.tx = 0.0;
  t1.ty = 0.0;
  v7 = *v2;
  *&t2.c = *(v2 + 1);
  *&t2.a = v7;
  t2.tx = v4;
  t2.ty = v5;
  CGAffineTransformConcat(&v10, &t1, &t2);
  v8 = *&v10.c;
  v9 = *&v10.tx;
  *&retstr->a = *&v10.a;
  *&retstr->c = v8;
  *&retstr->tx = v9;
}

double *CGAffineTransform.encode(to:)(int64_t *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = v1[1];
  v4[0] = *v1;
  v4[1] = v2;
  v4[2] = v1[2];
  return closure #1 in CGAffineTransform.encode(to:)(v4, a1);
}

double *closure #1 in CGAffineTransform.encode(to:)(double *result, int64_t *a2)
{
  v3 = *result;
  if (*result != 1.0)
  {
    v4 = fabs(v3);
    if (v4 >= 65536.0)
    {
      LOBYTE(v5) = 9;
    }

    else
    {
      LOBYTE(v5) = 13;
    }

    v6 = a2[1];
    v7 = a2[2];
    if (v6 >= v7)
    {
      goto LABEL_42;
    }

    *(*a2 + v6) = v5;
    a2[1] = v6 + 1;
    while (1)
    {
      while (1)
      {
        if (v4 >= 65536.0)
        {
          v6 = a2[1];
          v11 = v6 + 8;
          if (!__OFADD__(v6, 8))
          {
            if (a2[2] < v11)
            {
              v24 = result;
              v25 = ProtobufEncoder.growBufferSlow(to:)(v6 + 8);
              result = v24;
              *v25 = v3;
            }

            else
            {
              a2[1] = v11;
              *(*a2 + v6) = v3;
            }

            goto LABEL_15;
          }
        }

        else
        {
          v6 = a2[1];
          v8 = v6 + 4;
          if (!__OFADD__(v6, 4))
          {
            v9 = v3;
            if (a2[2] < v8)
            {
              v23 = result;
              v10 = ProtobufEncoder.growBufferSlow(to:)(v6 + 4);
              result = v23;
            }

            else
            {
              a2[1] = v8;
              v10 = (*a2 + v6);
            }

            *v10 = v9;
            goto LABEL_15;
          }

LABEL_40:
          __break(1u);
        }

LABEL_41:
        __break(1u);
LABEL_42:
        v16 = v6 + 1;
        if (!__OFADD__(v6, 1))
        {
          break;
        }

LABEL_47:
        __break(1u);
LABEL_48:
        v26 = result;
        v27 = ProtobufEncoder.growBufferSlow(to:)(v16);
        result = v26;
        *v27 = v5;
      }

      if (v7 < v16)
      {
        goto LABEL_48;
      }

      a2[1] = v16;
      *(*a2 + v6) = v5;
    }
  }

LABEL_15:
  v5 = 0;
  v12 = result + 1;
  v3 = 0.0;
  do
  {
    v4 = v12[v5 / 8];
    if (v5 == 16)
    {
      v13 = 1.0;
    }

    else
    {
      v13 = 0.0;
    }

    if (v4 != v13)
    {
      v14 = fabs(v4);
      v15 = v5 + 5;
      if (v14 >= 65536.0)
      {
        v15 = v5 + 1;
      }

      v16 = v15 + 16;
      v6 = a2[1];
      v17 = a2[2];
      if (v6 >= v17)
      {
        result = (v6 + 1);
        if (__OFADD__(v6, 1))
        {
          goto LABEL_47;
        }

        if (v17 < result)
        {
          v28 = v14;
          v21 = v16;
          v22 = ProtobufEncoder.growBufferSlow(to:)(result);
          v14 = v28;
          *v22 = v21;
        }

        else
        {
          a2[1] = result;
          v7 = *a2;
          *(*a2 + v6) = v16;
        }
      }

      else
      {
        v7 = *a2;
        *(*a2 + v6) = v16;
        a2[1] = v6 + 1;
      }

      if (v14 >= 65536.0)
      {
        v20 = a2[1];
        result = (v20 + 8);
        if (__OFADD__(v20, 8))
        {
          goto LABEL_41;
        }

        if (a2[2] >= result)
        {
          a2[1] = result;
          *(*a2 + v20) = v4;
        }

        else
        {
          result = ProtobufEncoder.growBufferSlow(to:)(result);
          *result = v4;
        }
      }

      else
      {
        v18 = a2[1];
        result = (v18 + 4);
        if (__OFADD__(v18, 4))
        {
          goto LABEL_40;
        }

        if (a2[2] < result)
        {
          result = ProtobufEncoder.growBufferSlow(to:)(result);
        }

        else
        {
          a2[1] = result;
          result = (*a2 + v18);
        }

        v19 = v4;
        *result = v19;
      }
    }

    v5 += 8;
  }

  while (v5 != 40);
  return result;
}

double CGAffineTransform.init(from:)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v11 = *MEMORY[0x1E69E9840];
  v8 = 0x3FF0000000000000uLL;
  *&v9 = 0;
  *(&v9 + 1) = 0x3FF0000000000000;
  v10 = 0uLL;
  closure #1 in CGAffineTransform.init(from:)(&v8, a1, &v7);
  if (!v2)
  {
    result = *&v8;
    v5 = v9;
    v6 = v10;
    *a2 = v8;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

unint64_t closure #1 in CGAffineTransform.init(from:)(unint64_t result, void *a2, uint64_t *a3)
{
  v5 = a2[1];
  if (v5 >= a2[2])
  {
LABEL_43:
    a2[3] = 0;
    return result;
  }

  v7 = result;
  while (1)
  {
    result = a2[3];
    if (result)
    {
      v8 = a2[4];
      if (v5 < v8)
      {
        goto LABEL_11;
      }

      if (v8 < v5)
      {
        goto LABEL_41;
      }

      a2[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()(result);
    if (v3)
    {
      goto LABEL_42;
    }

    if (result <= 7)
    {
LABEL_41:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      v19 = swift_allocError();
      result = swift_willThrow();
      v3 = v19;
LABEL_42:
      *a3 = v3;
      return result;
    }

LABEL_11:
    if (result <= 0x37)
    {
      break;
    }

    v9 = result & 7;
    if (v9 > 1)
    {
      if (v9 == 2)
      {
        result = ProtobufDecoder.decodeVarint()(result);
        if (v3)
        {
          goto LABEL_42;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_47;
        }

        v10 = a2[1] + result;
        if (a2[2] < v10)
        {
          goto LABEL_41;
        }
      }

      else
      {
        if (v9 != 5)
        {
          goto LABEL_41;
        }

        v10 = a2[1] + 4;
        if (a2[2] < v10)
        {
          goto LABEL_41;
        }
      }

      goto LABEL_3;
    }

    if ((result & 7) != 0)
    {
      if (v9 != 1)
      {
        goto LABEL_41;
      }

      v10 = a2[1] + 8;
      if (a2[2] < v10)
      {
        goto LABEL_41;
      }

LABEL_3:
      a2[1] = v10;
      goto LABEL_4;
    }

    result = ProtobufDecoder.decodeVarint()(result);
    if (v3)
    {
      goto LABEL_42;
    }

LABEL_4:
    v5 = a2[1];
    if (v5 >= a2[2])
    {
      goto LABEL_43;
    }
  }

  v11 = (result >> 3) - 1;
  if (result >> 3)
  {
    if ((v11 & 0x8000000000000000) != 0)
    {
      goto LABEL_45;
    }

    v12 = result & 7;
    if (v12 == 5)
    {
      v17 = a2[1];
      if (a2[2] < (v17 + 1))
      {
        goto LABEL_41;
      }

      v18 = *v17;
      a2[1] = v17 + 1;
      v16 = v18;
    }

    else
    {
      if (v12 == 2)
      {
        v15 = result;
        result = ProtobufDecoder.decodeVarint()(result);
        if (v3)
        {
          goto LABEL_42;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_46;
        }

        v13 = a2[1];
        v14 = a2[2];
        if (v14 < v13 + result)
        {
          goto LABEL_41;
        }

        a2[3] = v15 & 0x38 | 1;
        a2[4] = v13 + result;
      }

      else
      {
        if (v12 != 1)
        {
          goto LABEL_41;
        }

        v13 = a2[1];
        v14 = a2[2];
      }

      if (v14 < (v13 + 1))
      {
        goto LABEL_41;
      }

      v16 = *v13;
      a2[1] = v13 + 1;
    }

    *(v7 + 8 * v11) = v16;
    goto LABEL_4;
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

double *protocol witness for ProtobufEncodableMessage.encode(to:) in conformance CGAffineTransform(int64_t *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = v1[1];
  v4[0] = *v1;
  v4[1] = v2;
  v4[2] = v1[2];
  return closure #1 in CGAffineTransform.encode(to:)(v4, a1);
}

double protocol witness for ProtobufDecodableMessage.init(from:) in conformance CGAffineTransform@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v11 = *MEMORY[0x1E69E9840];
  v8 = 0x3FF0000000000000uLL;
  *&v9 = 0;
  *(&v9 + 1) = 0x3FF0000000000000;
  v10 = 0uLL;
  closure #1 in CGAffineTransform.init(from:)(&v8, a1, &v7);
  if (!v2)
  {
    result = *&v8;
    v5 = v9;
    v6 = v10;
    *a2 = v8;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t _s7SwiftUI4ViewPAAE04makeC4List4view6inputsAA01_cE7OutputsVAA11_GraphValueVyxG_AA01_cE6InputsVtFZAA21_GlassEffectContainerVyAA15ModifiedContentVyAA01_c9Modifier_P0VyAA0lm5LocalQ008_3DF70D9T23D7473F4D189A049B764CFEFLLVGAA0lmnQ0AULLVGG_Tt2B5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20 = *MEMORY[0x1E69E9840];
  type metadata accessor for ColorBox<CGColorRef>(0, &lazy cache variable for type metadata for _GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>, type metadata accessor for ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>, lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier> and conformance <> ModifiedContent<A, B>, type metadata accessor for _GlassEffectContainer);
  static DynamicPropertyCache.fields(of:)(v6, &v17);
  v7 = v17;
  v8 = v18;
  v9 = v19;
  outlined init with copy of _ViewListInputs(a2, &v17);
  if (AGTypeGetKind() - 2 >= 4)
  {
    _StringGuts.grow(_:)(70);
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](0xD0000000000000C3, 0x800000018DD78CC0);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    LOBYTE(v15[0]) = v8;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v17, v7, *(&v7 + 1), v8 | (v9 << 32), a1, v15);
    v10 = LODWORD(v15[0]);
    v11 = v15[1];
    v12 = v15[2];
    v13 = v16;
    if (AGSubgraphShouldRecordTree())
    {
      type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>, GlassEffectContainerModifier>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>, GlassEffectContainerModifier>, type metadata accessor for ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>, &type metadata for GlassEffectContainerModifier);
      AGSubgraphBeginTreeElement();
      _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyAA01_ef1_D0VyAA016GlassEffectLocalF008_3DF70D9S23D7473F4D189A049B764CFEFLLVGAA0op9ContainerF0ATLLVG_AaW33_0D94FA50AC33D329AB9E24A7FB1C1182LLVTt2B5(v10, &v17, a3);
      AGSubgraphEndTreeElement();
      if ((v13 & 1) == 0)
      {
LABEL_4:
        LOBYTE(v15[0]) = v8;
        specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v7, *(&v7 + 1), v8, v11, v12);
        outlined consume of DynamicPropertyCache.Fields.Layout(v7, *(&v7 + 1), v8);
        return outlined destroy of _ViewListInputs(&v17);
      }
    }

    else
    {
      _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyAA01_ef1_D0VyAA016GlassEffectLocalF008_3DF70D9S23D7473F4D189A049B764CFEFLLVGAA0op9ContainerF0ATLLVG_AaW33_0D94FA50AC33D329AB9E24A7FB1C1182LLVTt2B5(v10, &v17, a3);
      if ((v13 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    outlined destroy of _ViewListInputs(&v17);
    return outlined consume of DynamicPropertyCache.Fields.Layout(v7, *(&v7 + 1), v8);
  }

  return result;
}

uint64_t _s7SwiftUI4ViewPAAE04makeC4List4view6inputsAA01_cE7OutputsVAA11_GraphValueVyxG_AA01_cE6InputsVtFZAA13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLV_Tt2B5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(&type metadata for SummarySymbol, v20);
  v7 = v20[0];
  v6 = v20[1];
  v8 = v21;
  v9 = v22;
  outlined init with copy of _ViewListInputs(a2, v20);
  if (AGTypeGetKind() - 2 >= 4)
  {
    _StringGuts.grow(_:)(70);
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](0xD000000000000034, 0x800000018DD78DB0);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    LOBYTE(v18[0]) = v8;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(v20, v7, v6, v8 | (v9 << 32), a1, v18);
    v16 = v18[2];
    v17 = v18[1];
    v10 = v19;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    v12 = ShouldRecordTree;
    if (ShouldRecordTree)
    {
      type metadata accessor for ModifiedContent<Text, _OverlayPreferenceModifier<Text.LayoutKey, ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>>>(0, &lazy cache variable for type metadata for ModifiedContent<Image, _ForegroundStyleModifier2<AngularGradient, Color>>, type metadata accessor for _ForegroundStyleModifier2<AngularGradient, Color>, &type metadata for Image);
      AGSubgraphBeginTreeElement();
    }

    type metadata accessor for _ForegroundStyleModifier2<AngularGradient, Color>();
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    if (v12)
    {
      v14 = OffsetAttribute2;
      AGSubgraphBeginTreeElement();
      _s7SwiftUI18ViewInputsModifierPAAE05_makeC4List8modifier6inputs4bodyAA01_cG7OutputsVAA11_GraphValueVyxG_AA01_cgD0VAiA01_L0V_ANtctFZAA25_ForegroundStyleModifier2VyAA15AngularGradientVAA5ColorVG_Tt3B503_s7a24UI15ModifiedContentVA2A4c7RzAA0E8e8R_rlE05_f26E4List4view6inputsAA01_eH7k6VAA11_lm19VyACyxq_GG_AA01_eH6d37VtFZAjA01_L0V_APtcfU0_AA5ImageV_AA25_nop6VyAA15qr4VAA5S5VGTG5AKyAA0vW0VyAA5ImageVAWGGTf1nnnc_n(v14, v20, a3);
      AGSubgraphEndTreeElement();
      AGSubgraphEndTreeElement();
      if ((v10 & 1) == 0)
      {
LABEL_6:
        LOBYTE(v18[0]) = v8;
        specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v7, v6, (v9 << 32) | v8, v17, v16);
        outlined consume of DynamicPropertyCache.Fields.Layout(v7, v6, v8);
        return outlined destroy of _ViewListInputs(v20);
      }
    }

    else
    {
      _s7SwiftUI18ViewInputsModifierPAAE05_makeC4List8modifier6inputs4bodyAA01_cG7OutputsVAA11_GraphValueVyxG_AA01_cgD0VAiA01_L0V_ANtctFZAA25_ForegroundStyleModifier2VyAA15AngularGradientVAA5ColorVG_Tt3B503_s7a24UI15ModifiedContentVA2A4c7RzAA0E8e8R_rlE05_f26E4List4view6inputsAA01_eH7k6VAA11_lm19VyACyxq_GG_AA01_eH6d37VtFZAjA01_L0V_APtcfU0_AA5ImageV_AA25_nop6VyAA15qr4VAA5S5VGTG5AKyAA0vW0VyAA5ImageVAWGGTf1nnnc_n(OffsetAttribute2, v20, a3);
      if ((v10 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    outlined destroy of _ViewListInputs(v20);
    return outlined consume of DynamicPropertyCache.Fields.Layout(v7, v6, v8);
  }

  return result;
}

void specialized static View.makeViewList(view:inputs:)()
{
  static DynamicPropertyCache.fields(of:)(v0, &v1);
  if (AGTypeGetKind() - 2 > 3)
  {
    v1 = 0;
    v2 = 0xE000000000000000;
    _StringGuts.grow(_:)(70);
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](0x726576654ELL, 0xE500000000000000);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
  }

  else
  {
    v1 = 0;
    v2 = 0xE000000000000000;
    _StringGuts.grow(_:)(29);

    v1 = 0x726576654ELL;
    v2 = 0xE500000000000000;
    MEMORY[0x193ABEDD0](0xD00000000000001BLL, 0x800000018DD77760);
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t _IntelligenceSupportMakeSummarySymbol(char a1, uint64_t a2, uint64_t a3)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = *((*MEMORY[0x1E69E7D40] & *static CoreGlue2.shared) + 0xA8);
  v7 = static CoreGlue2.shared;
  v8 = v6(a1 & 1, a2, a3);

  return v8;
}

uint64_t _IntelligenceSupport.AnimatingText.Context.summarySymbol(isOn:foregroundColor:)(int a1, uint64_t a2)
{
  v42 = a2;
  v41 = a1;
  v3 = type metadata accessor for LocalizedStringKey.FormatArgument(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v39 - v9;
  v40 = *v2;
  v49 = 0;
  v50 = 0xE000000000000000;
  v52 = 0;
  MEMORY[0x193ABED40](2, v8);
  v11 = MEMORY[0x1E69E7CC0];
  v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0, MEMORY[0x1E69E7CC0]);
  v51 = v12;
  v47 = 0;
  v48 = 0xE000000000000000;
  v45 = 37;
  v46 = 0xE100000000000000;
  v43 = 9509;
  v44 = 0xE200000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  v13 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  MEMORY[0x193ABEDD0](v13);

  if (one-time initialization token for symbolImage != -1)
  {
    swift_once();
  }

  v14 = static SummarySymbol.symbolImage;
  type metadata accessor for AttachmentTextStorage();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  v52 = 1;
  *v10 = v15;
  *(v10 + 1) = 0;
  v10[16] = 1;
  *(v10 + 3) = v11;
  *(v10 + 4) = 0;
  type metadata accessor for LocalizedStringKey.FormatArgument.Storage(0);
  swift_storeEnumTagMultiPayload();

  MEMORY[0x193ABEDD0](16421, 0xE200000000000000);
  outlined init with copy of LocalizedStringKey.FormatArgument(v10, v6);
  v17 = v12[2];
  v16 = v12[3];
  if (v17 >= v16 >> 1)
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v12);
  }

  outlined destroy of LocalizedStringKey.FormatArgument(v10);
  v12[2] = v17 + 1;
  outlined init with take of LocalizedStringKey.FormatArgument(v6, v12 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v17);
  v51 = v12;
  v47 = 0;
  v48 = 0xE000000000000000;
  v45 = 37;
  v46 = 0xE100000000000000;
  v43 = 9509;
  v44 = 0xE200000000000000;
  v18 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  MEMORY[0x193ABEDD0](v18);

  v19 = v49;
  v20 = v50;
  v21 = v51;
  type metadata accessor for LocalizedTextStorage();
  v22 = swift_allocObject();
  v23 = v22;
  *(v22 + 16) = v19;
  *(v22 + 24) = v20;
  *(v22 + 32) = 1;
  if (v41)
  {
    v24 = 1.0;
  }

  else
  {
    v24 = 0.0;
  }

  *(v22 + 40) = v21;
  *(v22 + 48) = 0;
  v25 = v42;
  *(v22 + 56) = 0;
  *(v22 + 64) = 0;
  if (!v25)
  {
    v25 = v40;
  }

  v26 = specialized Text.customAttribute<A>(_:)(v25, v23, 0, 1, MEMORY[0x1E69E7CC0], v24);
  v28 = v27;
  v30 = v29;
  v32 = v31;

  if (one-time initialization token for clear != -1)
  {
    swift_once();
  }

  v33 = static Color.clear;

  outlined copy of Text.Storage(v26, v28, v30 & 1);

  v34 = v32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v32 + 16) + 1, 1, v32);
  }

  v36 = *(v34 + 2);
  v35 = *(v34 + 3);
  if (v36 >= v35 >> 1)
  {
    v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v34);
  }

  outlined consume of Text.Storage(v26, v28, v30 & 1);

  *(v34 + 2) = v36 + 1;
  v37 = &v34[16 * v36];
  *(v37 + 4) = v33;
  v37[40] = 0;
  return v26;
}

uint64_t specialized Text.customAttribute<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char *a5, double a6)
{
  type metadata accessor for FontBox<Font.PlatformFontProvider>(0, &lazy cache variable for type metadata for TextAttributeModifier<SummaryAttribute>, lazy protocol witness table accessor for type SummaryAttribute and conformance SummaryAttribute, &unk_1F0088678, type metadata accessor for TextAttributeModifier);
  v12 = swift_allocObject();
  *(v12 + 16) = a6;
  *(v12 + 24) = a1;

  outlined copy of Text.Storage(a2, a3, a4 & 1);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    a5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a5 + 2) + 1, 1, a5);
  }

  v14 = *(a5 + 2);
  v13 = *(a5 + 3);
  if (v14 >= v13 >> 1)
  {
    a5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, a5);
  }

  *(a5 + 2) = v14 + 1;
  v15 = &a5[16 * v14];
  *(v15 + 4) = v12;
  v15[40] = -64;
  return a2;
}

void _IntelligenceSupport.AnimatingText.init(foregroundColor:body:)(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t *)@<X1>, uint64_t a3@<X8>)
{
  v11 = a1;
  v4 = a2(&v11);
  v6 = v5;
  v8 = v7;
  v10 = v9;

  *a3 = v4;
  *(a3 + 8) = v6;
  *(a3 + 16) = v8 & 1;
  *(a3 + 24) = v10;
}

double _IntelligenceSupport.AnimatingText.body.getter@<D0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  outlined copy of Text.Storage(*v1, v3, v5);
  v7 = one-time initialization token for topLeading;

  if (v7 != -1)
  {
    swift_once();
  }

  *a1 = v4;
  *(a1 + 8) = v3;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = closure #1 in _IntelligenceSupport.AnimatingText.body.getter;
  *(a1 + 40) = 0;
  result = *&static Alignment.topLeading;
  *(a1 + 48) = static Alignment.topLeading;
  return result;
}

uint64_t closure #1 in _IntelligenceSupport.AnimatingText.body.getter@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  Array<A>.summaryPlacements.getter(*a1);
  v4 = v3;
  v5 = *(v3 + 16);
  KeyPath = swift_getKeyPath();
  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  if (one-time initialization token for v6 != -1)
  {
    swift_once();
  }

  v8 = static Semantics.v6;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C != 1)
  {
    if (static Semantics.forced < v8)
    {
      goto LABEL_7;
    }

LABEL_9:
    result = 0;
    goto LABEL_10;
  }

  if (dyld_program_sdk_at_least())
  {
    goto LABEL_9;
  }

LABEL_7:
  result = AGMakeUniqueID();
LABEL_10:
  *a2 = 0;
  a2[1] = v5;
  a2[2] = partial apply for closure #1 in closure #1 in _IntelligenceSupport.AnimatingText.body.getter;
  a2[3] = v7;
  a2[4] = KeyPath;
  a2[5] = 0;
  a2[6] = result;
  return result;
}

void Array<A>.summaryPlacements.getter(uint64_t a1)
{
  v39 = *(a1 + 16);
  if (!v39)
  {
    return;
  }

  v1 = 0;
  v40 = a1 + 32;
  v48 = MEMORY[0x1E69E7CC0];
  for (i = &unk_1EAB0F000; ; i = &unk_1EAB0F000)
  {
    v41 = v1;
    v3 = (v40 + 32 * v1);
    v4 = v3[1];
    v5 = *(v4 + 16);
    if (v5)
    {
      break;
    }

LABEL_4:

    v1 = v41 + 1;
    if (v41 + 1 == v39)
    {
      return;
    }
  }

  v46 = v4 + 32;
  v47 = *v3;

  swift_bridgeObjectRetain_n();
  v6 = 0;
  v7 = v5;
  v44 = v5;
  v45 = v4;
LABEL_8:
  if (v6 < v7)
  {
    if (v6 == v5)
    {
      goto LABEL_53;
    }

    v8 = v46 + 48 * v6;
    v9 = *v8;
    v10 = *(v8 + 8);
    v11 = *(v8 + 16);
    v12 = *(v8 + 24);
    v13 = *(v8 + 32);
    v49 = v6 + 1;
    v54 = *(v8 + 16);
    outlined copy of Text.Layout.Line.Line(v9, v10);
    v14 = 0;
    while (1)
    {
      if (v11)
      {
        v15 = v9;
        v16 = _NSTextLineFragmentGetCTLine(v15);

        if (!v16)
        {
          if (!v14)
          {
            goto LABEL_7;
          }

          goto LABEL_19;
        }
      }

      else
      {
        outlined copy of Text.Layout.Line.Line(v9, v10);

        v16 = v9;
      }

      RunCount = CTLineGetRunCount();

      if (v14 == RunCount)
      {
LABEL_7:
        outlined consume of Text.Layout.Line.Line(v9, v10);
        v5 = v44;
        v7 = *(v45 + 16);
        v6 = v49;
        if (v49 == v7)
        {

          goto LABEL_4;
        }

        goto LABEL_8;
      }

      if (!v11)
      {
        outlined copy of Text.Layout.Line.Line(v9, v10);

        outlined copy of Text.Layout.Line.Line(v9, v10);

        outlined copy of Text.Layout.Line.Line(v9, v10);

        v19 = v9;
        v21 = v9;
        goto LABEL_24;
      }

LABEL_19:
      v18 = v9;
      v19 = _NSTextLineFragmentGetCTLine(v18);

      if (!v19)
      {
        goto LABEL_54;
      }

      outlined copy of Text.Layout.Line.Line(v9, v10);

      v20 = v18;
      v21 = _NSTextLineFragmentGetCTLine(v20);

      if (!v21)
      {
        if (v14 >= 0)
        {
          goto LABEL_50;
        }

        goto LABEL_25;
      }

LABEL_24:
      v22 = CTLineGetRunCount();

      if (v14 >= v22)
      {
LABEL_50:
        __break(1u);
        return;
      }

LABEL_25:
      if (i[254] != -1)
      {
        swift_once();
      }

      v23 = static NSAttributedStringKey.customAttributes;
      v24 = CTLineGetRunAtIndex();
      v25 = _CTRunGetAttributeValueForKey(v24, v23);

      if (v25)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v50 = 0u;
        v51 = 0u;
      }

      v52 = v50;
      v53 = v51;
      if (!*(&v51 + 1))
      {
        outlined destroy of Any?(&v52);
        goto LABEL_35;
      }

      if (swift_dynamicCast())
      {
        v26 = _s7SwiftUI4TextV16CustomAttributesVyxSgxmcAA0C9AttributeRzluigAA07SummaryF033_5039765D26D33F565D3CDFCA69D19B23LLV_Tt0B5(v50);
        v28 = v27;

        if (v28)
        {
          goto LABEL_44;
        }

LABEL_43:

        ++v14;
      }

      else
      {
LABEL_35:
        if (one-time initialization token for customAttachment != -1)
        {
          swift_once();
        }

        v29 = static NSAttributedStringKey.customAttachment;
        v30 = CTLineGetRunAtIndex();
        v31 = _CTRunGetAttributeValueForKey(v30, v29);

        if (v31)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v50 = 0u;
          v51 = 0u;
        }

        v52 = v50;
        v53 = v51;
        if (*(&v51 + 1))
        {
          type metadata accessor for AnyCustomTextAttachment();
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_43;
          }

          (*(*v50 + 104))(&v52);
          v26 = _s7SwiftUI4TextV16CustomAttributesVyxSgxmcAA0C9AttributeRzluigAA07SummaryF033_5039765D26D33F565D3CDFCA69D19B23LLV_Tt0B5(v52);
          v28 = v32;
          i = &unk_1EAB0F000;

          if (!v28)
          {
            goto LABEL_43;
          }

LABEL_44:

          v33 = CTLineGetRunAtIndex();
          specialized Text.Layout.TypographicBounds.init(run:range:)(v33, 0, v55);

          v34 = v55[0];
          v35 = v55[1];
          v42 = v57;
          v43 = v56;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v48 + 2) + 1, 1, v48);
          }

          v37 = *(v48 + 2);
          v36 = *(v48 + 3);
          if (v37 >= v36 >> 1)
          {
            v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1, v48);
          }

          ++v14;

          *(v48 + 2) = v37 + 1;
          v38 = &v48[72 * v37];
          *(v38 + 4) = v47;
          *(v38 + 5) = v12 + v34;
          *(v38 + 6) = v13 + v35;
          *(v38 + 72) = v42;
          *(v38 + 56) = v43;
          *(v38 + 11) = v26;
          *(v38 + 12) = v28;
          i = &unk_1EAB0F000;
        }

        else
        {

          outlined destroy of Any?(&v52);
          ++v14;
        }
      }
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
}