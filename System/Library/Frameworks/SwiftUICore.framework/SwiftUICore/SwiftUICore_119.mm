uint64_t closure #1 in NSMutableAttributedString.convertToPlatformStyled(style:environment:includeDefaultAttributes:options:properties:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, uint64_t a11)
{
  v42 = a3;
  v41 = a9;
  v40 = a11;
  v18 = type metadata accessor for Text.Style(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = (&v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of TypesettingLanguage(a5, v20, type metadata accessor for Text.Style);
  v46 = a1;

  Dictionary<>.transferAttributedStringStyles(to:)(v20);
  v21 = [a6 attributedSubstringFromRange_];
  v22 = [v21 string];

  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  v26 = swift_allocObject();
  *(v26 + 16) = v23;
  *(v26 + 24) = v25;
  v44 = a7;
  v45 = a8;
  v43 = a10;

  v27 = Text.Style.nsAttributes(content:environment:includeDefaultAttributes:with:properties:)(partial apply for closure #1 in closure #1 in NSMutableAttributedString.convertToPlatformStyled(style:environment:includeDefaultAttributes:options:properties:), v26, &v44, v41, &v43, v40);

  v28 = v46;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v44 = v28;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v27, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v44);

  type metadata accessor for NSAttributedStringKey(0);
  lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes and conformance AttributeScopes.SwiftUIAttributes(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey, protocol conformance descriptor for NSAttributedStringKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v31 = v42;
  [a6 setAttributes:isa range:{a2, v42}];

  v44 = a7;
  v45 = a8;
  v32 = String.caseConvertedIfNeeded(_:)(&v44, v23, v25);
  v34 = v33;

  v44 = a7;
  v45 = a8;
  v35 = String.redactedIfNeeded(_:)(&v44, v32, v34);
  v37 = v36;

  v38 = MEMORY[0x193ABEC20](v35, v37);

  [a6 replaceCharactersInRange:a2 withString:{v31, v38}];

  return outlined destroy of Text.Style(v20, type metadata accessor for Text.Style);
}

uint64_t outlined init with take of Text.Style(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Text.Style(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in NSMutableAttributedString.convertToPlatformStyled(style:environment:includeDefaultAttributes:options:properties:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(type metadata accessor for Text.Style(0) - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  return closure #1 in NSMutableAttributedString.convertToPlatformStyled(style:environment:includeDefaultAttributes:options:properties:)(a1, a2, a3, a4, v4 + v10, *(v4 + v11), *(v4 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v4 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v4 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 16), *(v4 + ((v11 + 39) & 0xFFFFFFFFFFFFFFF8)), *(v4 + ((((v11 + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

void lazy protocol witness table accessor for type Text.Encapsulation and conformance Text.Encapsulation()
{
  if (!lazy protocol witness table cache variable for type Text.Encapsulation and conformance Text.Encapsulation)
  {
    swift_getWitnessTable(protocol conformance descriptor for Text.Encapsulation, &type metadata for Text.Encapsulation, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Text.Encapsulation and conformance Text.Encapsulation);
  }
}

{
  if (!lazy protocol witness table cache variable for type Text.Encapsulation and conformance Text.Encapsulation)
  {
    swift_getWitnessTable(protocol conformance descriptor for Text.Encapsulation, &type metadata for Text.Encapsulation, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Text.Encapsulation and conformance Text.Encapsulation);
  }
}

void lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.KerningAttribute and conformance AttributeScopes.SwiftUIAttributes.KerningAttribute()
{
  if (!lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.KerningAttribute and conformance AttributeScopes.SwiftUIAttributes.KerningAttribute)
  {
    swift_getWitnessTable(protocol conformance descriptor for AttributeScopes.SwiftUIAttributes.KerningAttribute, &type metadata for AttributeScopes.SwiftUIAttributes.KerningAttribute, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.KerningAttribute and conformance AttributeScopes.SwiftUIAttributes.KerningAttribute);
  }
}

void lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.TrackingAttribute and conformance AttributeScopes.SwiftUIAttributes.TrackingAttribute()
{
  if (!lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.TrackingAttribute and conformance AttributeScopes.SwiftUIAttributes.TrackingAttribute)
  {
    swift_getWitnessTable(protocol conformance descriptor for AttributeScopes.SwiftUIAttributes.TrackingAttribute, &type metadata for AttributeScopes.SwiftUIAttributes.TrackingAttribute, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.TrackingAttribute and conformance AttributeScopes.SwiftUIAttributes.TrackingAttribute);
  }
}

void lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.BaselineOffsetAttribute and conformance AttributeScopes.SwiftUIAttributes.BaselineOffsetAttribute()
{
  if (!lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.BaselineOffsetAttribute and conformance AttributeScopes.SwiftUIAttributes.BaselineOffsetAttribute)
  {
    swift_getWitnessTable(protocol conformance descriptor for AttributeScopes.SwiftUIAttributes.BaselineOffsetAttribute, &type metadata for AttributeScopes.SwiftUIAttributes.BaselineOffsetAttribute, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.BaselineOffsetAttribute and conformance AttributeScopes.SwiftUIAttributes.BaselineOffsetAttribute);
  }
}

void lazy protocol witness table accessor for type Text.Scale and conformance Text.Scale()
{
  if (!lazy protocol witness table cache variable for type Text.Scale and conformance Text.Scale)
  {
    swift_getWitnessTable(protocol conformance descriptor for Text.Scale, &type metadata for Text.Scale, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Text.Scale and conformance Text.Scale);
  }
}

{
  if (!lazy protocol witness table cache variable for type Text.Scale and conformance Text.Scale)
  {
    swift_getWitnessTable(protocol conformance descriptor for Text.Scale, &type metadata for Text.Scale, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Text.Scale and conformance Text.Scale);
  }
}

void lazy protocol witness table accessor for type Text.Superscript and conformance Text.Superscript()
{
  if (!lazy protocol witness table cache variable for type Text.Superscript and conformance Text.Superscript)
  {
    swift_getWitnessTable(protocol conformance descriptor for Text.Superscript, &type metadata for Text.Superscript, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Text.Superscript and conformance Text.Superscript);
  }
}

{
  if (!lazy protocol witness table cache variable for type Text.Superscript and conformance Text.Superscript)
  {
    swift_getWitnessTable(protocol conformance descriptor for Text.Superscript, &type metadata for Text.Superscript, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Text.Superscript and conformance Text.Superscript);
  }
}

void lazy protocol witness table accessor for type Text.CustomAttributes and conformance Text.CustomAttributes()
{
  if (!lazy protocol witness table cache variable for type Text.CustomAttributes and conformance Text.CustomAttributes)
  {
    swift_getWitnessTable(protocol conformance descriptor for Text.CustomAttributes, &type metadata for Text.CustomAttributes, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Text.CustomAttributes and conformance Text.CustomAttributes);
  }
}

{
  if (!lazy protocol witness table cache variable for type Text.CustomAttributes and conformance Text.CustomAttributes)
  {
    swift_getWitnessTable(protocol conformance descriptor for Text.CustomAttributes, &type metadata for Text.CustomAttributes, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Text.CustomAttributes and conformance Text.CustomAttributes);
  }
}

void lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.TextJustificationAttribute and conformance AttributeScopes.SwiftUIAttributes.TextJustificationAttribute()
{
  if (!lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.TextJustificationAttribute and conformance AttributeScopes.SwiftUIAttributes.TextJustificationAttribute)
  {
    swift_getWitnessTable(protocol conformance descriptor for AttributeScopes.SwiftUIAttributes.TextJustificationAttribute, &type metadata for AttributeScopes.SwiftUIAttributes.TextJustificationAttribute, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.TextJustificationAttribute and conformance AttributeScopes.SwiftUIAttributes.TextJustificationAttribute);
  }
}

void lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.FontAttribute and conformance AttributeScopes.SwiftUIAttributes.FontAttribute()
{
  if (!lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.FontAttribute and conformance AttributeScopes.SwiftUIAttributes.FontAttribute)
  {
    swift_getWitnessTable(protocol conformance descriptor for AttributeScopes.SwiftUIAttributes.FontAttribute, &type metadata for AttributeScopes.SwiftUIAttributes.FontAttribute, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.FontAttribute and conformance AttributeScopes.SwiftUIAttributes.FontAttribute);
  }
}

void lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute()
{
  if (!lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute)
  {
    swift_getWitnessTable(protocol conformance descriptor for AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute, &type metadata for AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute);
  }
}

void lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute()
{
  if (!lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute)
  {
    swift_getWitnessTable(protocol conformance descriptor for AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute, &type metadata for AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute);
  }
}

void lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.StrikethroughStyleAttribute and conformance AttributeScopes.SwiftUIAttributes.StrikethroughStyleAttribute()
{
  if (!lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.StrikethroughStyleAttribute and conformance AttributeScopes.SwiftUIAttributes.StrikethroughStyleAttribute)
  {
    swift_getWitnessTable(protocol conformance descriptor for AttributeScopes.SwiftUIAttributes.StrikethroughStyleAttribute, &type metadata for AttributeScopes.SwiftUIAttributes.StrikethroughStyleAttribute, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.StrikethroughStyleAttribute and conformance AttributeScopes.SwiftUIAttributes.StrikethroughStyleAttribute);
  }
}

void lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute and conformance AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute()
{
  if (!lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute and conformance AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute)
  {
    swift_getWitnessTable(protocol conformance descriptor for AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute, &type metadata for AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute and conformance AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute);
  }
}

void lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.EncapsulationAttribute and conformance AttributeScopes.SwiftUIAttributes.EncapsulationAttribute()
{
  if (!lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.EncapsulationAttribute and conformance AttributeScopes.SwiftUIAttributes.EncapsulationAttribute)
  {
    swift_getWitnessTable(protocol conformance descriptor for AttributeScopes.SwiftUIAttributes.EncapsulationAttribute, &type metadata for AttributeScopes.SwiftUIAttributes.EncapsulationAttribute, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.EncapsulationAttribute and conformance AttributeScopes.SwiftUIAttributes.EncapsulationAttribute);
  }
}

void lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.AdaptiveImageGlyphAttribute and conformance AttributeScopes.SwiftUIAttributes.AdaptiveImageGlyphAttribute()
{
  if (!lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.AdaptiveImageGlyphAttribute and conformance AttributeScopes.SwiftUIAttributes.AdaptiveImageGlyphAttribute)
  {
    swift_getWitnessTable(protocol conformance descriptor for AttributeScopes.SwiftUIAttributes.AdaptiveImageGlyphAttribute, &type metadata for AttributeScopes.SwiftUIAttributes.AdaptiveImageGlyphAttribute, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.AdaptiveImageGlyphAttribute and conformance AttributeScopes.SwiftUIAttributes.AdaptiveImageGlyphAttribute);
  }
}

void lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.TextScaleAttribute and conformance AttributeScopes.SwiftUIAttributes.TextScaleAttribute()
{
  if (!lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.TextScaleAttribute and conformance AttributeScopes.SwiftUIAttributes.TextScaleAttribute)
  {
    swift_getWitnessTable(protocol conformance descriptor for AttributeScopes.SwiftUIAttributes.TextScaleAttribute, &type metadata for AttributeScopes.SwiftUIAttributes.TextScaleAttribute, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.TextScaleAttribute and conformance AttributeScopes.SwiftUIAttributes.TextScaleAttribute);
  }
}

char *initializeBufferWithCopyOfBuffer for AttributeScopes.SwiftUIAttributes(char *a1, char *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v11 = *a2;
    *v3 = *a2;
    v3 = (v11 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    v5 = *(a3 + 100);
    v8 = type metadata accessor for AttributeScopes.AccessibilityAttributes();
    (*(*(v8 - 8) + 16))(&v3[v5], &a2[v5], v8);
    v9 = *(a3 + 104);
    v10 = type metadata accessor for AttributeScopes.FoundationAttributes();
    (*(*(v10 - 8) + 16))(&v3[v9], &a2[v9], v10);
  }

  return v3;
}

uint64_t destroy for AttributeScopes.SwiftUIAttributes(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 100);
  v5 = type metadata accessor for AttributeScopes.AccessibilityAttributes();
  (*(*(v5 - 8) + 8))(a1 + v4, v5);
  v6 = *(a2 + 104);
  v7 = type metadata accessor for AttributeScopes.FoundationAttributes();
  v8 = *(*(v7 - 8) + 8);

  return v8(a1 + v6, v7);
}

_BYTE *initializeWithCopy for AttributeScopes.SwiftUIAttributes(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a3 + 100);
  v7 = type metadata accessor for AttributeScopes.AccessibilityAttributes();
  (*(*(v7 - 8) + 16))(&a1[v6], &a2[v6], v7);
  v8 = *(a3 + 104);
  v9 = type metadata accessor for AttributeScopes.FoundationAttributes();
  (*(*(v9 - 8) + 16))(&a1[v8], &a2[v8], v9);
  return a1;
}

_BYTE *assignWithCopy for AttributeScopes.SwiftUIAttributes(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a3 + 100);
  v7 = type metadata accessor for AttributeScopes.AccessibilityAttributes();
  (*(*(v7 - 8) + 24))(&a1[v6], &a2[v6], v7);
  v8 = *(a3 + 104);
  v9 = type metadata accessor for AttributeScopes.FoundationAttributes();
  (*(*(v9 - 8) + 24))(&a1[v8], &a2[v8], v9);
  return a1;
}

_BYTE *initializeWithTake for AttributeScopes.SwiftUIAttributes(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a3 + 100);
  v7 = type metadata accessor for AttributeScopes.AccessibilityAttributes();
  (*(*(v7 - 8) + 32))(&a1[v6], &a2[v6], v7);
  v8 = *(a3 + 104);
  v9 = type metadata accessor for AttributeScopes.FoundationAttributes();
  (*(*(v9 - 8) + 32))(&a1[v8], &a2[v8], v9);
  return a1;
}

_BYTE *assignWithTake for AttributeScopes.SwiftUIAttributes(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a3 + 100);
  v7 = type metadata accessor for AttributeScopes.AccessibilityAttributes();
  (*(*(v7 - 8) + 40))(&a1[v6], &a2[v6], v7);
  v8 = *(a3 + 104);
  v9 = type metadata accessor for AttributeScopes.FoundationAttributes();
  (*(*(v9 - 8) + 40))(&a1[v8], &a2[v8], v9);
  return a1;
}

void lazy protocol witness table accessor for type ProxyCodable<Color> and conformance ProxyCodable<A>()
{
  if (!lazy protocol witness table cache variable for type ProxyCodable<Color> and conformance ProxyCodable<A>)
  {
    type metadata accessor for ProxyCodable<Color>(255, &lazy cache variable for type metadata for ProxyCodable<Color>, &type metadata for Color, &protocol witness table for Color, type metadata accessor for ProxyCodable);
    swift_getWitnessTable(protocol conformance descriptor for ProxyCodable<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type ProxyCodable<Color> and conformance ProxyCodable<A>);
  }
}

{
  if (!lazy protocol witness table cache variable for type ProxyCodable<Color> and conformance ProxyCodable<A>)
  {
    type metadata accessor for ProxyCodable<Font.Weight>(255, &lazy cache variable for type metadata for ProxyCodable<Color>, &type metadata for Color, &protocol witness table for Color);
    swift_getWitnessTable(protocol conformance descriptor for ProxyCodable<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type ProxyCodable<Color> and conformance ProxyCodable<A>);
  }
}

void lazy protocol witness table accessor for type Gradient.ColorSpaceGradientDefinition and conformance Gradient.ColorSpaceGradientDefinition()
{
  if (!lazy protocol witness table cache variable for type Gradient.ColorSpaceGradientDefinition and conformance Gradient.ColorSpaceGradientDefinition)
  {
    swift_getWitnessTable(protocol conformance descriptor for Gradient.ColorSpaceGradientDefinition, &type metadata for Gradient.ColorSpaceGradientDefinition, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Gradient.ColorSpaceGradientDefinition and conformance Gradient.ColorSpaceGradientDefinition);
  }
}

{
  if (!lazy protocol witness table cache variable for type Gradient.ColorSpaceGradientDefinition and conformance Gradient.ColorSpaceGradientDefinition)
  {
    swift_getWitnessTable(protocol conformance descriptor for Gradient.ColorSpaceGradientDefinition, &type metadata for Gradient.ColorSpaceGradientDefinition, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Gradient.ColorSpaceGradientDefinition and conformance Gradient.ColorSpaceGradientDefinition);
  }
}

__n128 specialized static CodableByProxy.deserialize(from:)@<Q0>(void *a1@<X0>, __n128 *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    type metadata accessor for Color.RGBADefinition<Float, Float>();
    lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes and conformance AttributeScopes.SwiftUIAttributes(&lazy protocol witness table cache variable for type Color.RGBADefinition<Float, Float> and conformance Color.RGBADefinition<A, B>, type metadata accessor for Color.RGBADefinition<Float, Float>, protocol conformance descriptor for Color.RGBADefinition<A, B>);
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    __swift_destroy_boxed_opaque_existential_1(v6);
    result = v5;
    *a2 = v5;
    a2[1].n128_u32[0] = 2143289344;
  }

  return result;
}

uint64_t specialized static CodableByProxy.deserialize(from:)(void *a1)
{
  v2 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    lazy protocol witness table accessor for type Font.PrivateStyleDefinition and conformance Font.PrivateStyleDefinition();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    v2 = MEMORY[0x193ABEC20]();
    if (v4)
    {
      MEMORY[0x193ABEC20]();
    }

    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  return v2;
}

{
  v2 = v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    lazy protocol witness table accessor for type Color.HierarchicalOpacityDefinition and conformance Color.HierarchicalOpacityDefinition();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    v2 = v4;
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  return v2;
}

{
  v2 = v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    lazy protocol witness table accessor for type Color.NamedDefinition and conformance Color.NamedDefinition();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    v2 = v6;
    if (v7)
    {
      v4 = objc_allocWithZone(MEMORY[0x1E696AAE8]);
      v5 = MEMORY[0x193ABEC20]();
      [v4 initWithPath_];
    }

    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  return v2;
}

{
  v2 = v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    lazy protocol witness table accessor for type Color.OperationDefinition and conformance Color.OperationDefinition();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    v2 = v4;
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  return v2;
}

{
  v2 = v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    if (v4 == 2)
    {
      v2 = 2;
    }

    else
    {
      v2 = v4 == 1;
    }

    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  return v2;
}

{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v1)
  {
    return 0;
  }

  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
  if (v4 >= 4u)
  {
    v3 = 0;
  }

  else
  {
    v3 = v4;
  }

  __swift_destroy_boxed_opaque_existential_1(v5);
  return v3;
}

{
  v2 = v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    lazy protocol witness table accessor for type Font.CodingProxy and conformance Font.CodingProxy();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    v2 = v4;
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  return v2;
}

{
  v2 = v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    lazy protocol witness table accessor for type Gradient.GradientDefinition and conformance Gradient.GradientDefinition();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    v2 = specialized static Gradient.unwrap(codingProxy:)(&v4);

    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  return v2;
}

{
  v2 = v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v4, v4[3]);
    type metadata accessor for RawRepresentableProxy<NSAttributedStringKey>(0);
    lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes and conformance AttributeScopes.SwiftUIAttributes(&lazy protocol witness table cache variable for type RawRepresentableProxy<NSAttributedStringKey> and conformance RawRepresentableProxy<A>, type metadata accessor for RawRepresentableProxy<NSAttributedStringKey>, protocol conformance descriptor for RawRepresentableProxy<A>);
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    v2 = v4[6];
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  return v2;
}

double specialized static CodableByProxy.deserialize(from:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    type metadata accessor for Color.OpacityDefinition<Float>(0, &lazy cache variable for type metadata for Color.OpacityDefinition<Double>, MEMORY[0x1E69E63B0], MEMORY[0x1E69E63E8], MEMORY[0x1E69E63C0]);
    lazy protocol witness table accessor for type Color.OpacityDefinition<Double> and conformance Color.OpacityDefinition<A>(&lazy protocol witness table cache variable for type Color.OpacityDefinition<Double> and conformance Color.OpacityDefinition<A>, protocol conformance descriptor for Color.OpacityDefinition<A>);
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    v2 = v4;
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  return v2;
}

{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    type metadata accessor for Color.RGBADefinition<CGFloat, Float>(0);
    lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes and conformance AttributeScopes.SwiftUIAttributes(&lazy protocol witness table cache variable for type Color.RGBADefinition<CGFloat, Float> and conformance Color.RGBADefinition<A, B>, type metadata accessor for Color.RGBADefinition<CGFloat, Float>, protocol conformance descriptor for Color.RGBADefinition<A, B>);
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    v2 = v4;
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  return v2;
}

float specialized static CodableByProxy.deserialize(from:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    type metadata accessor for Color.OpacityDefinition<Float>(0, &lazy cache variable for type metadata for Color.OpacityDefinition<Float>, MEMORY[0x1E69E6448], MEMORY[0x1E69E6478], MEMORY[0x1E69E6458]);
    lazy protocol witness table accessor for type Color.OpacityDefinition<Float> and conformance Color.OpacityDefinition<A>();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    v2 = v4;
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  return v2;
}

{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    type metadata accessor for Color.RGBADefinition<Float, Float>();
    lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes and conformance AttributeScopes.SwiftUIAttributes(&lazy protocol witness table cache variable for type Color.RGBADefinition<Float, Float> and conformance Color.RGBADefinition<A, B>, type metadata accessor for Color.RGBADefinition<Float, Float>, protocol conformance descriptor for Color.RGBADefinition<A, B>);
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    v2 = v4;
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  return v2;
}

void lazy protocol witness table accessor for type Color.OpacityDefinition<Float> and conformance Color.OpacityDefinition<A>()
{
  if (!lazy protocol witness table cache variable for type Color.OpacityDefinition<Float> and conformance Color.OpacityDefinition<A>)
  {
    type metadata accessor for Color.OpacityDefinition<Float>(255, &lazy cache variable for type metadata for Color.OpacityDefinition<Float>, MEMORY[0x1E69E6448], MEMORY[0x1E69E6478], MEMORY[0x1E69E6458]);
    swift_getWitnessTable(protocol conformance descriptor for Color.OpacityDefinition<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type Color.OpacityDefinition<Float> and conformance Color.OpacityDefinition<A>);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.OpacityDefinition<Float> and conformance Color.OpacityDefinition<A>)
  {
    type metadata accessor for Color.OpacityDefinition<Float>(255, &lazy cache variable for type metadata for Color.OpacityDefinition<Float>, MEMORY[0x1E69E6448], MEMORY[0x1E69E6478], MEMORY[0x1E69E6458]);
    swift_getWitnessTable(protocol conformance descriptor for Color.OpacityDefinition<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type Color.OpacityDefinition<Float> and conformance Color.OpacityDefinition<A>);
  }
}

BOOL specialized static CodableByProxy.deserialize(from:)(void *a1)
{
  v2 = v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    v2 = v4 == 1;
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  return v2;
}

{
  return sub_18D3B03F8(a1);
}

uint64_t specialized AttributeScopes.SwiftUIAttributes.InterpolationStrategy.init(from:)(void *a1)
{
  v2 = MEMORY[0x1E69E6F48];
  type metadata accessor for KeyedDecodingContainer<AttributeScopes.SwiftUIAttributes.InterpolationStrategy.UnanimatedCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<AttributeScopes.SwiftUIAttributes.InterpolationStrategy.UnanimatedCodingKeys>, lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.InterpolationStrategy.UnanimatedCodingKeys and conformance AttributeScopes.SwiftUIAttributes.InterpolationStrategy.UnanimatedCodingKeys, &unk_1F007AC68, MEMORY[0x1E69E6F48]);
  v28 = v3;
  v31 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v26 - v4;
  type metadata accessor for KeyedDecodingContainer<AttributeScopes.SwiftUIAttributes.InterpolationStrategy.UnanimatedCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<AttributeScopes.SwiftUIAttributes.InterpolationStrategy.AnimatedCodingKeys>, lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.InterpolationStrategy.AnimatedCodingKeys and conformance AttributeScopes.SwiftUIAttributes.InterpolationStrategy.AnimatedCodingKeys, &unk_1F007AC48, v2);
  v6 = v5;
  v29 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - v7;
  type metadata accessor for KeyedDecodingContainer<AttributeScopes.SwiftUIAttributes.InterpolationStrategy.UnanimatedCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<AttributeScopes.SwiftUIAttributes.InterpolationStrategy.CodingKeys>, lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.InterpolationStrategy.CodingKeys and conformance AttributeScopes.SwiftUIAttributes.InterpolationStrategy.CodingKeys, &unk_1F007AC28, v2);
  v10 = v9;
  v32 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.InterpolationStrategy.CodingKeys and conformance AttributeScopes.SwiftUIAttributes.InterpolationStrategy.CodingKeys();
  v13 = v33;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = v6;
  v15 = v29;
  v14 = v30;
  v16 = v31;
  v33 = a1;
  v17 = KeyedDecodingContainer.allKeys.getter();
  v18 = (2 * *(v17 + 16)) | 1;
  v34 = v17;
  v35 = v17 + 32;
  v36 = 0;
  v37 = v18;
  v19 = specialized Collection<>.popFirst()();
  if (v19 == 2 || v36 != v37 >> 1)
  {
    v22 = type metadata accessor for DecodingError();
    swift_allocError();
    v24 = v23;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
    *v24 = &type metadata for AttributeScopes.SwiftUIAttributes.InterpolationStrategy;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
    swift_willThrow();
    (*(v32 + 8))(v12, v10);
    swift_unknownObjectRelease();
    a1 = v33;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = v19;
  if (v19)
  {
    v38 = 1;
    lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.InterpolationStrategy.UnanimatedCodingKeys and conformance AttributeScopes.SwiftUIAttributes.InterpolationStrategy.UnanimatedCodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v21 = v32;
    (*(v16 + 8))(v14, v28);
  }

  else
  {
    v38 = 0;
    lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.InterpolationStrategy.AnimatedCodingKeys and conformance AttributeScopes.SwiftUIAttributes.InterpolationStrategy.AnimatedCodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v21 = v32;
    (*(v15 + 8))(v8, v27);
  }

  (*(v21 + 8))(v12, v10);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v33);
  return v20 & 1;
}

void lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.InterpolationStrategy.UnanimatedCodingKeys and conformance AttributeScopes.SwiftUIAttributes.InterpolationStrategy.UnanimatedCodingKeys()
{
  if (!lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.InterpolationStrategy.UnanimatedCodingKeys and conformance AttributeScopes.SwiftUIAttributes.InterpolationStrategy.UnanimatedCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for AttributeScopes.SwiftUIAttributes.InterpolationStrategy.UnanimatedCodingKeys, &unk_1F007AC68, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.InterpolationStrategy.UnanimatedCodingKeys and conformance AttributeScopes.SwiftUIAttributes.InterpolationStrategy.UnanimatedCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.InterpolationStrategy.UnanimatedCodingKeys and conformance AttributeScopes.SwiftUIAttributes.InterpolationStrategy.UnanimatedCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for AttributeScopes.SwiftUIAttributes.InterpolationStrategy.UnanimatedCodingKeys, &unk_1F007AC68, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.InterpolationStrategy.UnanimatedCodingKeys and conformance AttributeScopes.SwiftUIAttributes.InterpolationStrategy.UnanimatedCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.InterpolationStrategy.UnanimatedCodingKeys and conformance AttributeScopes.SwiftUIAttributes.InterpolationStrategy.UnanimatedCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for AttributeScopes.SwiftUIAttributes.InterpolationStrategy.UnanimatedCodingKeys, &unk_1F007AC68, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.InterpolationStrategy.UnanimatedCodingKeys and conformance AttributeScopes.SwiftUIAttributes.InterpolationStrategy.UnanimatedCodingKeys);
  }
}

void lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.InterpolationStrategy.AnimatedCodingKeys and conformance AttributeScopes.SwiftUIAttributes.InterpolationStrategy.AnimatedCodingKeys()
{
  if (!lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.InterpolationStrategy.AnimatedCodingKeys and conformance AttributeScopes.SwiftUIAttributes.InterpolationStrategy.AnimatedCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for AttributeScopes.SwiftUIAttributes.InterpolationStrategy.AnimatedCodingKeys, &unk_1F007AC48, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.InterpolationStrategy.AnimatedCodingKeys and conformance AttributeScopes.SwiftUIAttributes.InterpolationStrategy.AnimatedCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.InterpolationStrategy.AnimatedCodingKeys and conformance AttributeScopes.SwiftUIAttributes.InterpolationStrategy.AnimatedCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for AttributeScopes.SwiftUIAttributes.InterpolationStrategy.AnimatedCodingKeys, &unk_1F007AC48, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.InterpolationStrategy.AnimatedCodingKeys and conformance AttributeScopes.SwiftUIAttributes.InterpolationStrategy.AnimatedCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.InterpolationStrategy.AnimatedCodingKeys and conformance AttributeScopes.SwiftUIAttributes.InterpolationStrategy.AnimatedCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for AttributeScopes.SwiftUIAttributes.InterpolationStrategy.AnimatedCodingKeys, &unk_1F007AC48, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.InterpolationStrategy.AnimatedCodingKeys and conformance AttributeScopes.SwiftUIAttributes.InterpolationStrategy.AnimatedCodingKeys);
  }
}

void lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.InterpolationStrategy.CodingKeys and conformance AttributeScopes.SwiftUIAttributes.InterpolationStrategy.CodingKeys()
{
  if (!lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.InterpolationStrategy.CodingKeys and conformance AttributeScopes.SwiftUIAttributes.InterpolationStrategy.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for AttributeScopes.SwiftUIAttributes.InterpolationStrategy.CodingKeys, &unk_1F007AC28, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.InterpolationStrategy.CodingKeys and conformance AttributeScopes.SwiftUIAttributes.InterpolationStrategy.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.InterpolationStrategy.CodingKeys and conformance AttributeScopes.SwiftUIAttributes.InterpolationStrategy.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for AttributeScopes.SwiftUIAttributes.InterpolationStrategy.CodingKeys, &unk_1F007AC28, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.InterpolationStrategy.CodingKeys and conformance AttributeScopes.SwiftUIAttributes.InterpolationStrategy.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.InterpolationStrategy.CodingKeys and conformance AttributeScopes.SwiftUIAttributes.InterpolationStrategy.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for AttributeScopes.SwiftUIAttributes.InterpolationStrategy.CodingKeys, &unk_1F007AC28, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.InterpolationStrategy.CodingKeys and conformance AttributeScopes.SwiftUIAttributes.InterpolationStrategy.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.InterpolationStrategy.CodingKeys and conformance AttributeScopes.SwiftUIAttributes.InterpolationStrategy.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for AttributeScopes.SwiftUIAttributes.InterpolationStrategy.CodingKeys, &unk_1F007AC28, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.InterpolationStrategy.CodingKeys and conformance AttributeScopes.SwiftUIAttributes.InterpolationStrategy.CodingKeys);
  }
}

void type metadata accessor for KeyedDecodingContainer<AttributeScopes.SwiftUIAttributes.InterpolationStrategy.UnanimatedCodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.SuperscriptAttribute and conformance AttributeScopes.SwiftUIAttributes.SuperscriptAttribute()
{
  if (!lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.SuperscriptAttribute and conformance AttributeScopes.SwiftUIAttributes.SuperscriptAttribute)
  {
    swift_getWitnessTable(protocol conformance descriptor for AttributeScopes.SwiftUIAttributes.SuperscriptAttribute, &type metadata for AttributeScopes.SwiftUIAttributes.SuperscriptAttribute, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.SuperscriptAttribute and conformance AttributeScopes.SwiftUIAttributes.SuperscriptAttribute);
  }
}

void lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.PrivateStrikethroughColorAttribute and conformance AttributeScopes.SwiftUIAttributes.PrivateStrikethroughColorAttribute()
{
  if (!lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.PrivateStrikethroughColorAttribute and conformance AttributeScopes.SwiftUIAttributes.PrivateStrikethroughColorAttribute)
  {
    swift_getWitnessTable(protocol conformance descriptor for AttributeScopes.SwiftUIAttributes.PrivateStrikethroughColorAttribute, &type metadata for AttributeScopes.SwiftUIAttributes.PrivateStrikethroughColorAttribute, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.PrivateStrikethroughColorAttribute and conformance AttributeScopes.SwiftUIAttributes.PrivateStrikethroughColorAttribute);
  }
}

uint64_t outlined destroy of Text.Encapsulation?(uint64_t a1)
{
  type metadata accessor for HitTestableEvent?(0, &lazy cache variable for type metadata for Text.Encapsulation?, &type metadata for Text.Encapsulation);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for ProxyCodable<Color>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.CustomContainerAttribute and conformance AttributeScopes.SwiftUIAttributes.CustomContainerAttribute()
{
  if (!lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.CustomContainerAttribute and conformance AttributeScopes.SwiftUIAttributes.CustomContainerAttribute)
  {
    swift_getWitnessTable(protocol conformance descriptor for AttributeScopes.SwiftUIAttributes.CustomContainerAttribute, &type metadata for AttributeScopes.SwiftUIAttributes.CustomContainerAttribute, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.CustomContainerAttribute and conformance AttributeScopes.SwiftUIAttributes.CustomContainerAttribute);
  }
}

void lazy protocol witness table accessor for type Text.Encapsulation.CodingProxy and conformance Text.Encapsulation.CodingProxy()
{
  if (!lazy protocol witness table cache variable for type Text.Encapsulation.CodingProxy and conformance Text.Encapsulation.CodingProxy)
  {
    swift_getWitnessTable(protocol conformance descriptor for Text.Encapsulation.CodingProxy, &type metadata for Text.Encapsulation.CodingProxy, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Text.Encapsulation.CodingProxy and conformance Text.Encapsulation.CodingProxy);
  }
}

{
  if (!lazy protocol witness table cache variable for type Text.Encapsulation.CodingProxy and conformance Text.Encapsulation.CodingProxy)
  {
    swift_getWitnessTable(protocol conformance descriptor for Text.Encapsulation.CodingProxy, &type metadata for Text.Encapsulation.CodingProxy, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Text.Encapsulation.CodingProxy and conformance Text.Encapsulation.CodingProxy);
  }
}

void lazy protocol witness table accessor for type [AnyFontModifier] and conformance <A> [A](unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), const char *a4)
{
  if (!*a1)
  {
    v7 = a2(255);
    v9 = a3();
    swift_getWitnessTable(a4, v7, &v9);
    atomic_store(v8, a1);
  }
}

void lazy protocol witness table accessor for type Gradient.GradientDefinition and conformance Gradient.GradientDefinition()
{
  if (!lazy protocol witness table cache variable for type Gradient.GradientDefinition and conformance Gradient.GradientDefinition)
  {
    swift_getWitnessTable(protocol conformance descriptor for Gradient.GradientDefinition, &type metadata for Gradient.GradientDefinition, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Gradient.GradientDefinition and conformance Gradient.GradientDefinition);
  }
}

{
  if (!lazy protocol witness table cache variable for type Gradient.GradientDefinition and conformance Gradient.GradientDefinition)
  {
    swift_getWitnessTable(protocol conformance descriptor for Gradient.GradientDefinition, &type metadata for Gradient.GradientDefinition, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Gradient.GradientDefinition and conformance Gradient.GradientDefinition);
  }
}

double outlined consume of Text.Style.LineStyle(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 2)
  {
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in NSMutableAttributedString.convertToPlatformStyled(style:environment:includeDefaultAttributes:options:properties:)()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t type metadata completion function for ScopeWithCustomAttributes(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void DynamicContainerItem.viewID.getter(void *a1@<X8>)
{
  DynamicContainerItem.viewID.getter(a1);
}

{
  *a1 = 0;
  a1[1] = 0;
}

uint64_t DynamicContainerID.init(uniqueId:viewIndex:)@<X0>(uint64_t result@<X0>, int a2@<W1>, _DWORD *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

BOOL static DynamicContainerID.< infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  if (*a1 < *a2)
  {
    return 1;
  }

  return *a1 == *a2 && a1[1] < a2[1];
}

void DynamicContainerID.hash(into:)()
{
  v1 = v0[1];
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
}

Swift::Int DynamicContainerID.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DynamicContainerID()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance DynamicContainerID()
{
  v1 = v0[1];
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DynamicContainerID(uint64_t a1)
{
  Hasher.init(_seed:)();
  v2 = v1[1];
  Hasher._combine(_:)(*v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

BOOL protocol witness for static Comparable.< infix(_:_:) in conformance DynamicContainerID(_DWORD *a1, _DWORD *a2)
{
  if (*a1 < *a2)
  {
    return 1;
  }

  return *a1 == *a2 && a1[1] < a2[1];
}

BOOL protocol witness for static Comparable.<= infix(_:_:) in conformance DynamicContainerID(_DWORD *a1, _DWORD *a2)
{
  if (*a2 < *a1)
  {
    return 0;
  }

  return *a2 != *a1 || a2[1] >= a1[1];
}

BOOL protocol witness for static Comparable.>= infix(_:_:) in conformance DynamicContainerID(_DWORD *a1, _DWORD *a2)
{
  if (*a1 < *a2)
  {
    return 0;
  }

  return *a1 != *a2 || a1[1] >= a2[1];
}

BOOL protocol witness for static Comparable.> infix(_:_:) in conformance DynamicContainerID(_DWORD *a1, _DWORD *a2)
{
  if (*a2 < *a1)
  {
    return 1;
  }

  return *a2 == *a1 && a2[1] < a1[1];
}

double DynamicContainer.ItemInfo.for<A>(_:)()
{
  specialized CAHostingLayer.renderingRootView.getter();

  return result;
}

uint64_t DynamicContainer.ItemInfo.__allocating_init(subgraph:uniqueId:viewCount:phase:needsTransitions:outputs:)(uint64_t a1, int a2, int a3, char a4, char a5, uint64_t *a6)
{
  v12 = swift_allocObject();
  v13 = *a6;
  *(v12 + 64) = 0;
  *(v12 + 72) = 0;
  *(v12 + 56) = 0;
  *(v12 + 80) = 0;
  *(v12 + 84) = 3;
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 28) = a3;
  *(v12 + 32) = v13;
  *(v12 + 40) = a6[1];
  *(v12 + 48) = a5;
  swift_beginAccess();
  *(v12 + 84) = a4;
  return v12;
}

uint64_t DynamicContainer.ItemInfo.init(subgraph:uniqueId:viewCount:phase:needsTransitions:outputs:)(uint64_t a1, int a2, int a3, char a4, char a5, uint64_t *a6)
{
  v8 = *a6;
  *(v6 + 64) = 0;
  *(v6 + 72) = 0;
  *(v6 + 56) = 0;
  *(v6 + 80) = 0;
  *(v6 + 84) = 3;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 28) = a3;
  *(v6 + 32) = v8;
  *(v6 + 40) = a6[1];
  *(v6 + 48) = a5;
  swift_beginAccess();
  *(v6 + 84) = a4;
  return v6;
}

uint64_t DynamicContainer.ItemInfo.deinit()
{

  return v0;
}

uint64_t DynamicContainer.ItemInfo.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t DynamicContainer._ItemInfo.item.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 208);
  swift_beginAccess();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return (*(*(AssociatedTypeWitness - 8) + 16))(a1, v1 + v3, AssociatedTypeWitness);
}

uint64_t DynamicContainer._ItemInfo.itemLayout.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 216);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 16);

  return v5(a1, v1 + v3, AssociatedTypeWitness);
}

uint64_t DynamicContainer._ItemInfo.__allocating_init(item:itemLayout:subgraph:uniqueId:viewCount:phase:needsTransitions:outputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v9 = a7;
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v16 = swift_allocObject();
  DynamicContainer._ItemInfo.init(item:itemLayout:subgraph:uniqueId:viewCount:phase:needsTransitions:outputs:)(a1, a2, a3, v12, v11, v10, v9, a8);
  return v16;
}

uint64_t DynamicContainer._ItemInfo.init(item:itemLayout:subgraph:uniqueId:viewCount:phase:needsTransitions:outputs:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, char a6, char a7, uint64_t *a8)
{
  v13 = *a8;
  v14 = *(*v8 + 208);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = a8[1];
  (*(*(AssociatedTypeWitness - 8) + 32))(v8 + v14, a1, AssociatedTypeWitness);
  v17 = *(*v8 + 216);
  v18 = swift_getAssociatedTypeWitness();
  (*(*(v18 - 8) + 32))(v8 + v17, a2, v18);
  *(v8 + 64) = 0;
  *(v8 + 72) = 0;
  *(v8 + 56) = 0;
  *(v8 + 80) = 0;
  *(v8 + 84) = 3;
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  *(v8 + 28) = a5;
  *(v8 + 32) = v13;
  *(v8 + 40) = v16;
  *(v8 + 48) = a7;
  swift_beginAccess();
  *(v8 + 84) = a6;
  return v8;
}

unint64_t DynamicContainer._ItemInfo.list.getter()
{
  v1 = *v0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v5 = &v10 - v4;
  v6 = *(v1 + 208);
  swift_beginAccess();
  (*(v3 + 16))(v5, &v0[v6], AssociatedTypeWitness);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = (*(AssociatedConformanceWitness + 56))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v3 + 8))(v5, AssociatedTypeWitness);
  return v8 | ((HIDWORD(v8) & 1) << 32);
}

uint64_t DynamicContainer._ItemInfo.id.getter()
{
  v1 = *v0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v5 = &v9 - v4;
  v6 = *(v1 + 208);
  swift_beginAccess();
  (*(v3 + 16))(v5, &v0[v6], AssociatedTypeWitness);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 64))(AssociatedTypeWitness, AssociatedConformanceWitness);
  return (*(v3 + 8))(v5, AssociatedTypeWitness);
}

uint64_t DynamicContainer._ItemInfo.__ivar_destroyer()
{
  v1 = *(*v0 + 208);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v1, AssociatedTypeWitness);
  v3 = *(*v0 + 216);
  v4 = swift_getAssociatedTypeWitness();
  v5 = *(*(v4 - 8) + 8);

  return v5(v0 + v3, v4);
}

uint64_t static DynamicContainer.makeContainer<A>(adaptor:inputs:)(uint64_t *a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v48 = a2;
  v55 = a1;
  v75 = *MEMORY[0x1E69E9840];
  v47 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v49 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v6;
  v54 = v7;
  v8 = type metadata accessor for DynamicContainerInfo(0, v6, v7, v6);
  v51 = *(v8 - 8);
  v52 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v50 = &v46 - v9;
  v10 = a3[3];
  v71 = a3[2];
  v72 = v10;
  v73 = a3[4];
  v74 = *(a3 + 20);
  v11 = a3[1];
  v69 = *a3;
  v70 = v11;
  v59 = MEMORY[0x1E69E7CC0];
  v12 = *MEMORY[0x1E698D3F8];
  LODWORD(v60) = 0;
  HIDWORD(v60) = v12;
  v13 = *(v10 + 16);
  v46 = v10;
  if (v13)
  {

    v15 = (v14 + 40);
    v56 = v12;
    do
    {
      v57 = &v46;
      v17 = *(v15 - 1);
      v16 = *v15;
      LODWORD(v67[0]) = v12;
      MEMORY[0x1EEE9AC00](v14);
      *(&v46 - 4) = swift_getAssociatedTypeWitness();
      v19 = type metadata accessor for DynamicPreferenceCombiner(0, v17, v16, v18);
      *(&v46 - 3) = v19;
      swift_getWitnessTable(protocol conformance descriptor for DynamicPreferenceCombiner<A>, v19, v46);
      v44 = v20;
      v21 = type metadata accessor for Attribute();
      _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v67, partial apply for closure #1 in Attribute.init<A>(_:), (&v46 - 6), v19, MEMORY[0x1E69E73E0], v21, MEMORY[0x1E69E7410], v22);
      v23 = v61;
      swift_beginAccess();
      LOBYTE(v61) = 0;
      _ViewOutputs.subscript.setter(v23, v17, v17, v16);
      v12 = v56;
      v14 = swift_endAccess();
      v15 += 2;
      --v13;
    }

    while (v13);
  }

  else
  {
  }

  v24 = v49;
  v25 = v53;
  (*(v47 + 16))(v49, v48, v53);
  v67[2] = v71;
  v67[3] = v72;
  v67[4] = v73;
  v68 = v74;
  v67[0] = v69;
  v67[1] = v70;
  swift_beginAccess();
  v58[0] = v59;
  v58[1] = v60;
  v61 = MEMORY[0x1E69E7CC0];
  v63 = 0;
  v64 = 0;
  v62 = 0;
  v65 = 1;
  v66 = 0;
  v26 = v54;
  v27 = v50;
  v28 = DynamicContainerInfo.init(adaptor:inputs:outputs:info:lastUniqueId:lastRemoved:lastResetSeed:needsPhaseUpdate:)(v24, v67, v58, &v61, 0, 0, -1, 0, v50, v25, v54);
  v29 = MEMORY[0x1EEE9AC00](v28);
  v30 = v52;
  v44 = v52;
  swift_getWitnessTable(protocol conformance descriptor for DynamicContainerInfo<A>, v52, v29);
  v45 = v31;
  outlined init with copy of _ViewInputs(&v69, v67);
  type metadata accessor for Attribute<HoverEffectContext>(0, &lazy cache variable for type metadata for Attribute<DynamicContainer.Info>, &type metadata for DynamicContainer.Info, MEMORY[0x1E698D388]);
  v33 = v32;

  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v27, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_6, (&v46 - 4), v30, MEMORY[0x1E69E73E0], v33, MEMORY[0x1E69E7410], v34);
  (*(v51 + 8))(v27, v30);
  v35 = LODWORD(v67[0]);
  AGGraphSetFlags();
  v36 = v59;
  v37 = *(v59 + 16);
  if (v37)
  {

    v38 = (v36 + 48);
    do
    {
      v39 = *(v38 - 2);
      v40 = *(v38 - 1);
      v41 = *v38;
      v38 += 6;
      closure #1 in static DynamicContainer.makeContainer<A>(adaptor:inputs:)(v39, v40, v41, v35, v25, v26);
      --v37;
    }

    while (v37);

    v36 = v59;
  }

  v42 = v55;
  *v55 = v36;
  v42[1] = v60;
  return v35;
}

id DynamicContainerInfo.init(adaptor:inputs:outputs:info:lastUniqueId:lastRemoved:lastResetSeed:needsPhaseUpdate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, __int128 *a4@<X3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v14 = *a3;
  v28 = *a4;
  v15 = *(a4 + 2);
  v27 = *(a4 + 3);
  v16 = *(a4 + 4);
  v17 = *(a4 + 40);
  v18 = *(a4 + 11);
  (*(*(a10 - 8) + 32))(a9, a1, a10);
  v20 = type metadata accessor for DynamicContainerInfo(0, a10, a11, v19);
  v21 = a9 + v20[9];
  v22 = *(a2 + 48);
  *(v21 + 32) = *(a2 + 32);
  *(v21 + 48) = v22;
  *(v21 + 64) = *(a2 + 64);
  *(v21 + 80) = *(a2 + 80);
  v23 = *(a2 + 16);
  *v21 = *a2;
  *(v21 + 16) = v23;
  v24 = (a9 + v20[10]);
  *v24 = v14;
  v24[1] = a3[1];
  result = AGSubgraphGetCurrent();
  if (result)
  {
    *(a9 + v20[11]) = result;
    v26 = a9 + v20[12];
    *v26 = v28;
    *(v26 + 16) = v15;
    *(v26 + 24) = v27;
    *(v26 + 32) = v16;
    *(v26 + 40) = v17;
    *(v26 + 44) = v18;
    *(a9 + v20[13]) = a5;
    *(a9 + v20[14]) = a6;
    *(a9 + v20[15]) = a7;
    *(a9 + v20[16]) = a8 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t DynamicContainer.Info.item(for:)(uint64_t a1)
{
  v2 = *v1;
  if (v2 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v4 = 0;
    while ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x193AC03C0](v4, v2);
      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_12;
      }

LABEL_7:
      if (AGSubgraphIsAncestor())
      {
        return v5;
      }

      ++v4;
      if (v6 == i)
      {
        return 0;
      }
    }

    if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_13;
    }

    v5 = *(v2 + 8 * v4 + 32);

    v6 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      goto LABEL_7;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }

  return 0;
}

Swift::Void __swiftcall DynamicContainerInfo.updateValue()()
{
  v2 = v0;
  v3 = v1 + v0[9];
  v4 = *AGGraphGetValue() >> 1;
  v5 = v2[15];
  v143 = v1;
  v144 = v2;
  if (v4 != *(v1 + v5))
  {
    *(v1 + v5) = v4;
    v6 = 1;
    if ((*(v1 + v2[16]) & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = *(v1 + v2[12]);
    if (v7 >> 62)
    {
LABEL_27:
      v14 = __CocoaSet.count.getter();
      if (v14 < 0)
      {
        __break(1u);
LABEL_29:
        __break(1u);
      }

      v8 = v14;
      if (v14)
      {
LABEL_7:
        v140 = 0;
        v9 = 0;
        v10 = v7 & 0xC000000000000001;
        do
        {
          v11 = v9;
          while (1)
          {
            if (v11 >= v8)
            {
              __break(1u);
LABEL_25:
              __break(1u);
LABEL_26:
              __break(1u);
              goto LABEL_27;
            }

            v9 = v11 + 1;
            if (__OFADD__(v11, 1))
            {
              goto LABEL_25;
            }

            if (v10)
            {
              v12 = MEMORY[0x193AC03C0](v11, v7);
            }

            else
            {
              if (v11 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_26;
              }

              v12 = *(v7 + 8 * v11 + 32);
            }

            swift_beginAccess();
            v13 = *(v12 + 84);

            if (!v13)
            {
              break;
            }

            ++v11;
            v1 = v143;
            if (v9 == v8)
            {
              goto LABEL_32;
            }
          }

          if (v10)
          {
            v15 = MEMORY[0x193AC03C0](v11, v7);
            v1 = v143;
          }

          else
          {
            v1 = v143;
            if (v11 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_29;
            }

            v15 = *(v7 + 8 * v11 + 32);
          }

          swift_beginAccess();
          v140 = 1;
          *(v15 + 84) = 1;
        }

        while (v9 != v8);
        goto LABEL_32;
      }
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8)
      {
        goto LABEL_7;
      }
    }

    v140 = 0;
LABEL_32:
    v2 = v144;
    *(v1 + v144[16]) = 0;
    goto LABEL_33;
  }

  v6 = *(v3 + 36) & 1;
  if (*(v1 + v2[16]) == 1)
  {
    goto LABEL_5;
  }

LABEL_3:
  v140 = 0;
LABEL_33:
  v16 = DynamicContainerInfo.updateItems(disableTransitions:)(v6, v2);
  if (v16)
  {
    goto LABEL_55;
  }

  v17 = v144[12];
  v18 = *(v1 + v17);
  if (v18 >> 62)
  {
    goto LABEL_51;
  }

  v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v19)
  {
    do
    {
      v20 = v19;
      while (v19 >= v20)
      {
        v21 = v20 - 1;
        v22 = *(v1 + v17);
        if ((v22 & 0xC000000000000001) != 0)
        {
          v23 = MEMORY[0x193AC03C0](v20 - 1);
        }

        else
        {
          if (v21 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_50;
          }

          v23 = *(v22 + 8 * v20 + 24);
        }

        swift_beginAccess();
        v24 = *(v23 + 84);

        if (v24 == 2)
        {
          if (!DynamicContainerInfo.tryRemovingItem(at:disableTransitions:)(v20 - 1, v6))
          {
            goto LABEL_38;
          }

          v140 = 1;
          if (!--v20)
          {
            goto LABEL_55;
          }
        }

        else
        {
          if (v24 != 3)
          {
            goto LABEL_54;
          }

LABEL_38:
          --v20;
          if (!v21)
          {
            goto LABEL_54;
          }
        }
      }

      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      v25 = __CocoaSet.count.getter();
      if (v25 < 0)
      {
        __break(1u);
      }

      v19 = v25;
    }

    while (v25);
  }

LABEL_54:
  if (v140)
  {
LABEL_55:
    LODWORD(v128) = v16;
    v26 = v1 + v144[12];
    v27 = *v26;
    v28 = *v26 >> 62;
    v135 = v26;
    if (v28)
    {
      goto LABEL_292;
    }

    v29 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v129 = *(v26 + 32);
    v30 = v29 - v129;
    v134 = *(v26 + 24);
    v31 = v29 - v129 - v134;
    v130 = v29;
    if (v31 < v29 - v129)
    {
      if (v29 < v31)
      {
        goto LABEL_294;
      }

      goto LABEL_58;
    }

    while (1)
    {
      v132 = v31;
      v27 = *(v26 + 8);
      if (*(v27 + 16))
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v145 = *(v26 + 8);
        type metadata accessor for _NativeDictionary<UInt32, Int>();
        _NativeDictionary.removeAll(isUnique:)(isUniquelyReferenced_nonNull_native);
        v27 = v145;
        *(v26 + 8) = v145;
      }

      *(v26 + 40) = 1;
      if (v30 < 0)
      {
        goto LABEL_295;
      }

      v142 = v30;
      if (v130 == v129)
      {
        goto LABEL_140;
      }

      if (!v30)
      {
LABEL_265:
        __break(1u);
LABEL_266:
        __break(1u);
LABEL_267:
        __break(1u);
LABEL_268:
        __break(1u);
LABEL_269:
        __break(1u);
LABEL_270:
        __break(1u);
LABEL_271:
        __break(1u);
LABEL_272:
        __break(1u);
LABEL_273:
        __break(1u);
LABEL_274:
        __break(1u);
LABEL_275:
        __break(1u);
LABEL_276:
        __break(1u);
LABEL_277:
        __break(1u);
LABEL_278:
        __break(1u);
LABEL_279:
        __break(1u);
LABEL_280:
        __break(1u);
LABEL_281:
        __break(1u);
LABEL_282:
        __break(1u);
LABEL_283:
        __break(1u);
LABEL_284:
        __break(1u);
LABEL_285:
        __break(1u);
LABEL_286:
        __break(1u);
LABEL_287:
        __break(1u);
LABEL_288:
        __break(1u);
        goto LABEL_289;
      }

      v60 = 0;
      v61 = 0;
      v62 = *v26;
      v63 = *v26 & 0xC000000000000001;
      v64 = *v26 & 0xFFFFFFFFFFFFFF8;
      v28 = 1;
      v137 = v64;
      while (1)
      {
        v65 = v60 + 1;
        if (__OFADD__(v60, 1))
        {
          goto LABEL_269;
        }

        if (v63)
        {
          v66 = MEMORY[0x193AC03C0](v60, v62);
        }

        else
        {
          if (v60 >= *(v64 + 16))
          {
            goto LABEL_275;
          }
        }

        v67 = *(v66 + 24);

        v68 = swift_isUniquelyReferenced_nonNull_native();
        v69 = v26;
        v26 = v68;
        v146 = *(v69 + 8);
        v27 = v146;
        v70 = specialized __RawDictionaryStorage.find<A>(_:)(v67);
        v72 = v146[2];
        v73 = (v71 & 1) == 0;
        v74 = __OFADD__(v72, v73);
        v75 = v72 + v73;
        if (v74)
        {
          goto LABEL_270;
        }

        v76 = v71;
        if (v146[3] >= v75)
        {
          if ((v26 & 1) == 0)
          {
            v82 = v70;
            specialized _NativeDictionary.copy()();
            v70 = v82;
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v75, v26);
          v70 = specialized __RawDictionaryStorage.find<A>(_:)(v67);
          if ((v76 & 1) != (v77 & 1))
          {
            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
LABEL_309:
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
            return;
          }
        }

        v26 = v135;
        v27 = v146;
        if (v76)
        {
          *(v146[7] + 8 * v70) = v60;
        }

        else
        {
          v146[(v70 >> 6) + 8] |= 1 << v70;
          *(v146[6] + 4 * v70) = v67;
          *(v146[7] + 8 * v70) = v60;
          v78 = v146[2];
          v74 = __OFADD__(v78, 1);
          v79 = v78 + 1;
          if (v74)
          {
            goto LABEL_274;
          }

          v146[2] = v79;
        }

        *(v135 + 8) = v146;
        v30 = v142;
        if (v63)
        {
          *(MEMORY[0x193AC03C0](v60, v62) + 76) = v61;

          v80 = *(MEMORY[0x193AC03C0](v60, v62) + 28);
          swift_unknownObjectRelease();
          if (v28)
          {
            goto LABEL_131;
          }
        }

        else
        {
          if (v60 >= *(v137 + 16))
          {
            goto LABEL_276;
          }

          v81 = v62 + 8 * v60;
          *(*(v81 + 32) + 76) = v61;
          if (v60 >= *(v137 + 16))
          {
            goto LABEL_277;
          }

          v80 = *(*(v81 + 32) + 28);
          if (v28)
          {
LABEL_131:
            v28 = v80 == 1;
            if (v65 == v142)
            {
              break;
            }

            goto LABEL_137;
          }
        }

        v28 = 0;
        if (v65 == v142)
        {
          break;
        }

LABEL_137:
        v61 += v80;
        ++v60;
        v64 = v137;
        if (v65 >= v142)
        {
          goto LABEL_265;
        }
      }

      *(v135 + 40) = v28;
LABEL_140:
      if (*(v27 + 16) != v30)
      {
        goto LABEL_309;
      }

      if ((v128 & 0x100) == 0)
      {

        v27 = 0;
        *(v26 + 16) = 0;
        goto LABEL_201;
      }

      v83 = v132;
      if (!v134 || (v83 = v132 + v30, !__OFADD__(v132, v30)))
      {
        v27 = v83 & ~(v83 >> 63);
        v84 = swift_allocObject();
        v85 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v27, 0, MEMORY[0x1E69E7CC0]);
        v127 = v84;
        *(v84 + 16) = v85;
        v86 = (v84 + 16);
        if ((v132 & 0x8000000000000000) == 0)
        {
          v28 = v85;
          v128 = v86;
          if (v132)
          {
            v87 = 0;
            v26 = v143;
            do
            {
              if (v87 == 0x100000000)
              {
                goto LABEL_273;
              }

              v89 = *(v28 + 16);
              v88 = *(v28 + 24);
              v27 = v89 + 1;
              if (v89 >= v88 >> 1)
              {
                v85 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v88 > 1), v89 + 1, 1, v28);
                v28 = v85;
              }

              *(v28 + 4 * v89 + 32) = v87;
              *(v28 + 16) = v27;
              ++v87;
            }

            while (v132 != v87);
            *v128 = v28;
          }

          else
          {
            v26 = v143;
          }

          if (v130 > 31)
          {
            MEMORY[0x1EEE9AC00](v85);
            specialized MutableCollection<>.sort(by:)(v128, partial apply for lessThan #1 <A>(_:_:) in DynamicContainerInfo.updateValue());
            goto LABEL_172;
          }

          v90 = *(v28 + 16);
          if (v90 < 2)
          {
LABEL_172:
            v26 = v135;
            if (v134)
            {
              if (one-time initialization token for v5 == -1)
              {
                goto LABEL_174;
              }

              goto LABEL_304;
            }

LABEL_200:
            swift_beginAccess();
            v27 = *(v127 + 16);

            *(v26 + 16) = v27;
LABEL_201:
            if (v130 == v129)
            {
LABEL_202:
              ++*(v143 + v144[12] + 44);
              AGGraphSetOutputValue();
              return;
            }

            v108 = v26;
            v26 = 0;
            v109 = *v108;
            v28 = *v108 & 0xC000000000000001;
            v133 = v108[3];
            v138 = v27 + 32;
            v135 = *v108 + 32;
            v110 = -(v108[4] + v133);
            v111 = *v108 >> 62;
            while (2)
            {
              if (v26 >= v30)
              {
                goto LABEL_271;
              }

              if (__OFADD__(v26, 1))
              {
                goto LABEL_272;
              }

              if (v27)
              {
                if (v134)
                {
                  if (v111)
                  {
                    v114 = __CocoaSet.count.getter() + v110;
                    if (v114 < 0)
                    {
                      goto LABEL_280;
                    }
                  }

                  else
                  {
                    v114 = *((v109 & 0xFFFFFFFFFFFFFF8) + 0x10) + v110;
                    if (v114 < 0)
                    {
                      goto LABEL_280;
                    }
                  }

                  if (v114 >= *(v27 + 16))
                  {
                    goto LABEL_281;
                  }

                  v115 = *(v138 + 4 * v114);
                  if (!v28)
                  {
LABEL_223:
                    if ((v115 & 0x8000000000000000) != 0)
                    {
                      goto LABEL_282;
                    }

                    if (v115 >= *((v109 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      goto LABEL_283;
                    }

                    v112 = *(v135 + 8 * v115);

                    goto LABEL_206;
                  }
                }

                else
                {
                  if (v26 >= *(v27 + 16))
                  {
                    goto LABEL_284;
                  }

                  v115 = *(v138 + 4 * v26);
                  if (!v28)
                  {
                    goto LABEL_223;
                  }
                }
              }

              else
              {
                v115 = v26;
                if (v134)
                {
                  if (v111)
                  {
                    v116 = __CocoaSet.count.getter();
                  }

                  else
                  {
                    v116 = *((v109 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  }

                  if (v26 < v133)
                  {
                    v115 = v116 + v110;
                  }

                  else
                  {
                    v115 = v26 - v133;
                  }
                }

                if (!v28)
                {
                  goto LABEL_223;
                }
              }

              v112 = MEMORY[0x193AC03C0]();
LABEL_206:
              v113 = *(v112 + 16);

              AGSubgraphSetIndex();

              ++v110;
              ++v26;
              v30 = v142;
              if (v26 == v142)
              {
                goto LABEL_202;
              }

              continue;
            }
          }

          v91 = v28 + 32;
          v92 = (v28 + 36);
          v93 = 1;
LABEL_160:
          if (v93 >= v90)
          {
            goto LABEL_285;
          }

          v94 = 0;
          v27 = *(v91 + 4 * v93);
          v95 = v92;
          while (v93 + v94 - 1 < *(v28 + 16))
          {
            v96 = *(v95 - 1);
            if ((lessThan #1 <A>(_:_:) in DynamicContainerInfo.updateValue()(v27, v96, v26, *(v144 + 2), *(v144 + 3)) & 1) == 0)
            {
              v30 = v142;
              if (!v94)
              {
                goto LABEL_159;
              }

              v97 = v93 + v94;
LABEL_169:
              if (v97 >= *(v28 + 16))
              {
                goto LABEL_288;
              }

              *(v91 + 4 * v97) = v27;
LABEL_159:
              ++v93;
              v90 = *(v28 + 16);
              ++v92;
              if (v93 == v90)
              {
                *v128 = v28;
                goto LABEL_172;
              }

              goto LABEL_160;
            }

            if (v93 + v94 >= *(v28 + 16))
            {
              goto LABEL_261;
            }

            *v95-- = v96;
            --v94;
            if (!(v93 + v94))
            {
              v97 = 0;
              v30 = v142;
              goto LABEL_169;
            }
          }

          __break(1u);
LABEL_261:
          __break(1u);
LABEL_262:
          __break(1u);
          goto LABEL_263;
        }

LABEL_300:
        __break(1u);
LABEL_301:
        if (__CocoaSet.count.getter())
        {
          goto LABEL_202;
        }

        goto LABEL_63;
      }

      __break(1u);
LABEL_304:
      swift_once();
LABEL_174:
      v98 = static Semantics.v5;
      if (one-time initialization token for forced != -1)
      {
        swift_once();
      }

      v27 = &static Semantics.forced;
      swift_beginAccess();
      if (byte_1ED53C51C == 1)
      {
        if ((dyld_program_sdk_at_least() & 1) == 0)
        {
          goto LABEL_178;
        }

LABEL_181:
        addRemoved #1 <A>() in DynamicContainerInfo.updateValue()(v132, v30, v127);
        if (v132)
        {
          v28 = 1;
          goto LABEL_183;
        }
      }

      else
      {
        if (static Semantics.forced >= v98)
        {
          goto LABEL_181;
        }

LABEL_178:
        if (!v132)
        {
          goto LABEL_192;
        }

        v28 = 0;
LABEL_183:
        swift_beginAccess();
        v99 = 0;
        do
        {
          if (v132 == v99)
          {
            goto LABEL_278;
          }

          v27 = *v128;
          v100 = *(*v128 + 2);
          if (v99 >= v100)
          {
            goto LABEL_279;
          }

          v101 = *(v27 + 4 * v99 + 32);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v100 + 1, 1, v27);
          }

          v103 = *(v27 + 16);
          v102 = *(v27 + 24);
          if (v103 >= v102 >> 1)
          {
            v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v102 > 1), v103 + 1, 1, v27);
          }

          ++v99;
          *(v27 + 16) = v103 + 1;
          *(v27 + 4 * v103 + 32) = v101;
          *v128 = v27;
        }

        while (v132 != v99);
        if ((v28 & 1) == 0)
        {
LABEL_192:
          addRemoved #1 <A>() in DynamicContainerInfo.updateValue()(v132, v30, v127);
        }
      }

      v28 = v132 + v30;
      if (__OFADD__(v132, v30))
      {
        __break(1u);
LABEL_306:
        __break(1u);
LABEL_307:
        __break(1u);
        goto LABEL_308;
      }

      if (v28 < v132)
      {
        goto LABEL_306;
      }

      swift_beginAccess();
      v104 = *v128;
      if (*(*v128 + 2) < v28)
      {
        goto LABEL_307;
      }

      v105 = v104 + 32;
      v26 = (2 * v28) | 1;
      v106 = v132;
      v126 = v28;
      if (v132 == v28 || (v107 = v132 + 1, v132 + 1 == v28))
      {

LABEL_199:
        specialized Array.subscript.setter(v104, v105, v106, v26, v132, v126);
        swift_endAccess();
        swift_unknownObjectRelease();
        v30 = v142;
        v26 = v135;
        goto LABEL_200;
      }

      while (v107 >= v106 && v107 < (v26 >> 1))
      {
        v117 = *&v105[4 * v107];
        v139 = v107;
        while (1)
        {
          v28 = v107 - 1;
          if (__OFSUB__(v107, 1))
          {
            goto LABEL_266;
          }

          if (v28 < v106)
          {
            goto LABEL_267;
          }

          v118 = v26 >> 1;
          if (v28 >= (v26 >> 1))
          {
            goto LABEL_267;
          }

          v27 = *&v105[4 * v28];
          if ((lessThan #1 <A>(_:_:) in DynamicContainerInfo.updateValue()(v117, *&v105[4 * v28], v143, *(v144 + 2), *(v144 + 3)) & 1) == 0)
          {
            break;
          }

          if ((v26 & 1) == 0 || (swift_isUniquelyReferenced_nonNull() & 1) == 0)
          {
            v119 = _ss20_ArrayBufferProtocolPsE7copyingxx_tcfCs06_SliceB0Vys6UInt32VG_Tt1g5Tf4gX_n(v105, v106, v26);
            v105 = v120;
            v106 = v121;
            v26 = v122;
            swift_unknownObjectRelease();
            v118 = v26 >> 1;
            v104 = v119;
          }

          if (v107 < v106 || v107 >= v118)
          {
            goto LABEL_268;
          }

          *&v105[4 * v107--] = v27;
          v27 = v28;
          if (v28 == v106)
          {
            goto LABEL_248;
          }
        }

        v28 = v107;
        v27 = v106;
LABEL_248:
        if (v28 == v139)
        {
          v106 = v27;
        }

        else
        {
          if (v26 & 1) != 0 && (swift_isUniquelyReferenced_nonNull())
          {
            v106 = v27;
          }

          else
          {
            v27 = _ss20_ArrayBufferProtocolPsE7copyingxx_tcfCs06_SliceB0Vys6UInt32VG_Tt1g5Tf4gX_n(v105, v27, v26);
            v105 = v123;
            v106 = v124;
            v26 = v125;
            swift_unknownObjectRelease();
            v104 = v27;
          }

          if (v28 < v106 || v28 >= (v26 >> 1))
          {
            goto LABEL_296;
          }

          *&v105[4 * v28] = v117;
        }

        if (__OFADD__(v139, 1))
        {
          goto LABEL_290;
        }

        v107 = v139 + 1;
        if (v139 + 1 == v26 >> 1)
        {
          goto LABEL_199;
        }
      }

LABEL_289:
      __break(1u);
LABEL_290:
      __break(1u);
LABEL_291:
      __break(1u);
LABEL_292:
      v130 = __CocoaSet.count.getter();
      v129 = *(v26 + 32);
      v30 = v130 - v129;
      v134 = *(v26 + 24);
      v31 = v130 - v129 - v134;
      if (v30 - v134 >= v30)
      {
        continue;
      }

      if (__CocoaSet.count.getter() < v31)
      {
LABEL_294:
        __break(1u);
LABEL_295:
        __break(1u);
LABEL_296:
        __break(1u);
LABEL_297:
        __break(1u);
        goto LABEL_298;
      }

LABEL_58:
      if (v31 < 0)
      {
        goto LABEL_297;
      }

      if (v28)
      {
        v32 = __CocoaSet.count.getter();
      }

      else
      {
        v32 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v32 < v30)
      {
LABEL_298:
        __break(1u);
LABEL_299:
        __break(1u);
        goto LABEL_300;
      }

      if (v30 < 0)
      {
        goto LABEL_299;
      }

      if ((v27 & 0xC000000000000001) != 0 && v134)
      {
        type metadata accessor for DynamicContainer.ItemInfo();

        v34 = v31;
        do
        {
          v35 = v34 + 1;
          _ArrayBuffer._typeCheckSlowPath(_:)(v34);
          v34 = v35;
        }

        while (v30 != v35);
      }

      else
      {
      }

      v131 = v31;
      if (v28)
      {

        v36 = _CocoaArrayWrapper.subscript.getter();
        v27 = v38;
        v37 = v39;
        v26 = v40;
      }

      else
      {
        v36 = v27 & 0xFFFFFFFFFFFFFF8;
        v27 = (v27 & 0xFFFFFFFFFFFFFF8) + 32;
        v26 = (2 * v30) | 1;
        v37 = v31;
      }

      if (v37 != v26 >> 1)
      {
        v41 = v37 + 1;
        if (!__OFADD__(v37, 1))
        {
          if (v41 == v26 >> 1)
          {
            goto LABEL_107;
          }

          v141 = v30;
          while (1)
          {
            if (v41 < v37 || v41 >= (v26 >> 1))
            {
              goto LABEL_286;
            }

            v42 = *(v27 + 8 * v41);

            v136 = v41;
            while (1)
            {
              v28 = v41 - 1;
              if (__OFSUB__(v41, 1))
              {
                goto LABEL_262;
              }

              if (v28 < v37 || (v43 = v26 >> 1, v28 >= (v26 >> 1)))
              {
LABEL_263:
                __break(1u);
LABEL_264:
                __break(1u);
                goto LABEL_265;
              }

              v44 = *(v27 + 8 * v28);
              if (*(v42 + 72) >= *(v44 + 72))
              {
                break;
              }

              swift_retain_n();
              if ((v26 & 1) == 0 || (swift_isUniquelyReferenced_nonNull() & 1) == 0)
              {
                _ss20_ArrayBufferProtocolPsE7copyingxx_tcfCs06_SliceB0Vy7SwiftUI16DynamicContainerV8ItemInfoCG_Tt1g5Tf4gX_n(v27, v37, v26, v45);
                v47 = v46;
                v27 = v48;
                v37 = v49;
                v26 = v50;
                swift_unknownObjectRelease();
                v43 = v26 >> 1;
                v36 = v47;
              }

              if (v41 < v37 || v41 >= v43)
              {
                goto LABEL_264;
              }

              *(v27 + 8 * v41) = v44;

              --v41;
              v51 = v28;
              if (v28 == v37)
              {
                goto LABEL_96;
              }
            }

            v28 = v41;
            v51 = v37;
LABEL_96:
            if (v28 == v136)
            {

              v37 = v51;
            }

            else
            {

              if (v26 & 1) != 0 && (swift_isUniquelyReferenced_nonNull())
              {
                v37 = v51;
              }

              else
              {
                _ss20_ArrayBufferProtocolPsE7copyingxx_tcfCs06_SliceB0Vy7SwiftUI16DynamicContainerV8ItemInfoCG_Tt1g5Tf4gX_n(v27, v51, v26, v52);
                v54 = v53;
                v27 = v55;
                v37 = v56;
                v26 = v57;
                swift_unknownObjectRelease();
                v36 = v54;
              }

              if (v28 < v37 || v28 >= (v26 >> 1))
              {
                goto LABEL_291;
              }

              *(v27 + 8 * v28) = v42;
            }

            v30 = v141;
            if (__OFADD__(v136, 1))
            {
              goto LABEL_287;
            }

            v41 = v136 + 1;
            if (v136 + 1 == v26 >> 1)
            {
              goto LABEL_107;
            }
          }
        }

LABEL_308:
        __break(1u);
      }

LABEL_107:
      v58 = v26;
      v31 = v131;
      v26 = v135;
      specialized Array.subscript.setter(v36, v27, v37, v58, v131, v30);
      swift_unknownObjectRelease();
    }
  }

  v33 = *(v1 + v17);
  if (v33 >> 62)
  {
    goto LABEL_301;
  }

  if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_202;
  }

LABEL_63:
  if (!AGGraphGetOutputValue())
  {
    goto LABEL_202;
  }
}

uint64_t DynamicContainerInfo.updateItems(disableTransitions:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v51 = a1;
  v5 = *(a2 + 16);
  v48 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v47 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v50 = type metadata accessor for Optional();
  v10 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v12 = &v45 - v11;
  v13 = *(AssociatedTypeWitness - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v45 - v16;
  v54 = 0;
  (*(v8 + 48))(v5, v8, v15);
  if ((*(v13 + 48))(v12, 1, AssociatedTypeWitness) == 1)
  {
    (*(v10 + 8))(v12, v50);
    v18 = *(v2 + *(a2 + 48) + 16) != 0;
    goto LABEL_7;
  }

  v49 = v13;
  (*(v13 + 32))(v17, v12, AssociatedTypeWitness);
  v53 = 0;
  v50 = *(a2 + 48);
  v19 = *(v2 + v50);
  v20 = v17;
  v46 = AssociatedTypeWitness;
  if (v19 >> 62)
  {
    goto LABEL_46;
  }

  v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  v22 = v51;
  v52 = v21;
  v24 = v47;
  v23 = v48;
  v25 = (*(v48 + 16))(v47, v3, v5);
  v26 = MEMORY[0x1EEE9AC00](v25);
  *(&v45 - 10) = v5;
  *(&v45 - 9) = v8;
  *(&v45 - 8) = &v53;
  *(&v45 - 7) = &v52;
  *(&v45 - 6) = v3;
  *(&v45 - 5) = (&v54 + 1);
  *(&v45 - 4) = v20;
  *(&v45 - 24) = v22 & 1;
  *(&v45 - 2) = &v54;
  v27 = *(v8 + 56);
  v45 = v20;
  v28 = v20;
  v20 = v24;
  v27(v28, partial apply for closure #1 in DynamicContainerInfo.updateItems(disableTransitions:), v26);
  (*(v23 + 8))(v24, v5);
  v29 = v52;
  v5 = v53;
  v30 = v49;
  v8 = v50;
  if (v53 < v52)
  {
    do
    {
      if (v5 >= v29)
      {
        __break(1u);
LABEL_39:
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
LABEL_45:
        __break(1u);
LABEL_46:
        v21 = __CocoaSet.count.getter();
        goto LABEL_5;
      }

      v33 = v29 - 1;
      v34 = *(v3 + v8);
      if ((v34 & 0xC000000000000001) != 0)
      {
        v35 = MEMORY[0x193AC03C0](v29 - 1);
      }

      else
      {
        if (v29 < 1)
        {
          goto LABEL_39;
        }

        if (v33 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_40;
        }

        v35 = *(v34 + 8 * v29 + 24);
      }

      swift_beginAccess();
      v36 = *(v35 + 84);

      v20 = v3;
      if (!DynamicContainerInfo.tryRemovingItem(at:disableTransitions:)(v29 - 1, v22 & 1))
      {
        v8 = *(v3 + v8);
        if ((v8 & 0xC000000000000001) != 0)
        {
          v43 = *(MEMORY[0x193AC03C0](v29 - 1, v8) + 64);
          LOBYTE(v54) = v54 & 1 | (v43 != 0.0);
          v44 = *(MEMORY[0x193AC03C0](v5, v8) + 64);

          if (v43 != v44)
          {
            *(MEMORY[0x193AC03C0](v29 - 1, v8) + 64) = v43;

            HIBYTE(v54) = 1;
          }

          v42 = MEMORY[0x193AC03C0](v29 - 1, v8);
          v8 = v50;
        }

        else
        {
          if (v29 < 1)
          {
            goto LABEL_41;
          }

          v37 = v8 & 0xFFFFFFFFFFFFFF8;
          if (v33 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v38 = v8 + 8 * v29;
          v20 = *(v38 + 24);
          v39 = v20[8];
          v40 = v54;

          LOBYTE(v54) = v40 & 1 | (v39 != 0.0);
          if (v5 < 0)
          {
            goto LABEL_43;
          }

          v41 = *(*(v8 + 32 + 8 * v5) + 64);
          v22 = v51;
          v8 = v50;
          if (v39 != v41)
          {
            if (v33 >= *(v37 + 16))
            {
              goto LABEL_45;
            }

            *(*(v38 + 24) + 64) = v39;
            HIBYTE(v54) = 1;
          }

          if (v33 >= *(v37 + 16))
          {
            goto LABEL_44;
          }

          v42 = *(v38 + 24);

          v30 = v49;
        }

        swift_beginAccess();
        v20 = *(v42 + 84);

        if (v20 == 3)
        {
          if (v36 == 3)
          {
            goto LABEL_12;
          }
        }

        else if (v36 != 3 && v20 == v36)
        {
          goto LABEL_12;
        }
      }

      HIBYTE(v54) = 1;
LABEL_12:
      v29 = v33;
    }

    while (v5 != v33);
  }

  (*(v30 + 8))(v45, v46);
  v18 = v54;
LABEL_7:
  if (v18)
  {
    v31 = 256;
  }

  else
  {
    v31 = 0;
  }

  return v31 | HIBYTE(v54);
}

Swift::Bool __swiftcall DynamicContainerInfo.tryRemovingItem(at:disableTransitions:)(Swift::Int at, Swift::Bool disableTransitions)
{
  v4 = v2;
  v7 = *(v2 + 48);
  v8 = v3 + v7;
  v9 = *(v3 + v7);
  v10 = v9 + 8 * at;
  v11 = v9 & 0xC000000000000001;
  if ((v9 & 0xC000000000000001) == 0)
  {
    if (at < 0)
    {
      __break(1u);
    }

    else if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) > at)
    {
      v12 = *(v10 + 32);

      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_54;
  }

  v12 = MEMORY[0x193AC03C0](at, *(v3 + v7));
LABEL_5:
  swift_beginAccess();
  v13 = *(v12 + 84);

  if (v13 > 2)
  {
    return 0;
  }

  if (v13 != 1)
  {
    if (v13 != 2)
    {
LABEL_66:
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    if (v11)
    {
      v19 = MEMORY[0x193AC03C0](at, v9);
      goto LABEL_20;
    }

    if ((at & 0x8000000000000000) == 0)
    {
      if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) > at)
      {
        v19 = *(v10 + 32);

LABEL_20:
        v20 = *(v19 + 56);

        if (!v20)
        {
LABEL_65:
          __break(1u);
          goto LABEL_66;
        }

        v21 = *(v20 + 32);

        if (!v21)
        {
          goto LABEL_33;
        }

        return 0;
      }

LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (disableTransitions)
  {
    goto LABEL_33;
  }

  if (v11)
  {
    v14 = *(MEMORY[0x193AC03C0](at, v9) + 48);
    swift_unknownObjectRelease();
    if (v14)
    {
      v15 = *(v4 + 56);
      v16 = *(v3 + v15);
      if ((v16 + 1) > 1)
      {
        v17 = v16 + 1;
      }

      else
      {
        v17 = 1;
      }

      *(v3 + v15) = v17;
      v18 = MEMORY[0x193AC03C0](at, v9);
LABEL_31:
      *(v18 + 72) = v17;

      ++*(v8 + 24);
      if (v11)
      {
        v25 = MEMORY[0x193AC03C0](at, v9);
LABEL_38:
        swift_beginAccess();
        *(v25 + 84) = 2;

        if (v11)
        {
          if (!*(MEMORY[0x193AC03C0](at, v9) + 56))
          {
            goto LABEL_41;
          }

          goto LABEL_40;
        }

        if ((at & 0x8000000000000000) == 0)
        {
          if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) <= at)
          {
LABEL_63:
            __break(1u);
LABEL_64:
            __break(1u);
            goto LABEL_65;
          }

          v29 = *(v10 + 32);

          if (!*(v29 + 56))
          {
            goto LABEL_41;
          }

LABEL_40:

          swift_weakAssign();
LABEL_41:

          specialized static GraphHost.currentHost.getter();
          AGGraphGetCurrentAttribute();
          v26 = AGCreateWeakAttribute();
          type metadata accessor for ViewGraph();
          swift_dynamicCastClassUnconditional();
          type metadata accessor for DynamicAnimationListener();
          v27 = swift_allocObject();
          swift_weakInit();
          *(v27 + 32) = 0;
          swift_weakAssign();

          *(v27 + 24) = v26;
          if (v11)
          {
            v28 = MEMORY[0x193AC03C0](at, v9);
LABEL_50:
            *(v28 + 56) = v27;

            ++*(v27 + 32);
            v30 = 17;

            static Update.enqueueAction(reason:_:)(&v30, partial apply for closure #1 in DynamicContainerInfo.tryRemovingItem(at:disableTransitions:), v27);

            return 0;
          }

          if ((at & 0x8000000000000000) == 0)
          {
            if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) > at)
            {
              v28 = *(v10 + 32);

              goto LABEL_50;
            }

            goto LABEL_64;
          }

          goto LABEL_62;
        }

        goto LABEL_59;
      }

      if ((at & 0x8000000000000000) == 0)
      {
        if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) <= at)
        {
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        v25 = *(v10 + 32);

        goto LABEL_38;
      }

LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    goto LABEL_33;
  }

  if (at < 0)
  {
    goto LABEL_56;
  }

  if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) <= at)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if (*(*(v9 + 32 + 8 * at) + 48))
  {
    v23 = *(v4 + 56);
    v24 = *(v3 + v23);
    if ((v24 + 1) > 1)
    {
      v17 = v24 + 1;
    }

    else
    {
      v17 = 1;
    }

    *(v3 + v23) = v17;
    if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) <= at)
    {
      goto LABEL_60;
    }

    goto LABEL_31;
  }

LABEL_33:
  DynamicContainerInfo.eraseItem(at:)(at);
  return 1;
}

uint64_t lessThan #1 <A>(_:_:) in DynamicContainerInfo.updateValue()(unsigned int a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a1;
  result = type metadata accessor for DynamicContainerInfo(0, a4, a5, a4);
  v9 = *(result + 48);
  v10 = *(a3 + v9);
  if ((v10 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x193AC03C0](v7);
  }

  else
  {
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) <= v7)
    {
      __break(1u);
      goto LABEL_11;
    }
  }

  v12 = *(v11 + 64);

  result = a2;
  v13 = *(a3 + v9);
  if ((v13 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x193AC03C0](a2);
    goto LABEL_7;
  }

  if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_7:
    v15 = *(v14 + 64);

    return v12 < v15;
  }

LABEL_11:
  __break(1u);
  return result;
}

char *addRemoved #1 <A>() in DynamicContainerInfo.updateValue()(char *result, char *a2, uint64_t a3)
{
  if (a2 < result)
  {
    goto LABEL_17;
  }

  v4 = a2;
  v5 = result;
  if (result != a2)
  {
    v3 = a3;
    swift_beginAccess();
    if (v5 >= v4)
    {
      goto LABEL_18;
    }

    v6 = *(v3 + 16);
    result = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 16) = v6;
    if ((result & 1) == 0)
    {
      goto LABEL_19;
    }

    while (1)
    {
      if (v5 <= 0x100000000)
      {
        v7 = 0x100000000;
      }

      else
      {
        v7 = v5;
      }

      v8 = v5;
      while ((v5 & 0x8000000000000000) == 0)
      {
        if (v7 == v8)
        {
          goto LABEL_16;
        }

        *(v3 + 16) = v6;
        v10 = *(v6 + 2);
        v9 = *(v6 + 3);
        if (v10 >= v9 >> 1)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v6);
          v6 = result;
        }

        *&v6[4 * v10 + 32] = v8;
        *(v6 + 2) = v10 + 1;
        *(v3 + 16) = v6;
        if (v4 == ++v8)
        {
          return result;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
      v6 = result;
    }
  }

  return result;
}

void closure #1 in DynamicContainerInfo.updateItems(disableTransitions:)(uint64_t a1, unint64_t a2, int64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, unint64_t a8, Swift::Int *a9, uint64_t a10)
{
  v79 = a6;
  v93 = a1;
  v18 = a10;
  v96 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v82 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v91 = &v76 - v20;
  v21 = *a2;
  v22 = *a3;
  if (*a3 < *a2)
  {
    goto LABEL_74;
  }

  v77 = a7;
  v78 = a3;
  v80 = a8;
  v81 = a5;
  v83 = a2;
  v92 = a4;
  v95 = a10;
  v10 = v96;
  if (v21 == v22)
  {
    goto LABEL_3;
  }

  v90 = (v82 + 16);
  v89 = (v82 + 8);
  v76 = v22 - 1;
  a8 = -1;
  v40 = v21;
  v86 = v21;
  v85 = v22;
  do
  {
    v87 = a8;
    a2 = v40;
    v84 = v40;
    while (1)
    {
      if (v40 < v21 || a2 >= v22)
      {
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
        goto LABEL_75;
      }

      v41 = type metadata accessor for DynamicContainerInfo(0, v10, v18, v19);
      v42 = *(a4 + *(v41 + 48));
      v88 = v41;
      if ((v42 & 0xC000000000000001) != 0)
      {
        v43 = MEMORY[0x193AC03C0](a2);
      }

      else
      {
        if ((a2 & 0x8000000000000000) != 0)
        {
          goto LABEL_69;
        }

        if (a2 >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_70;
        }

        v43 = *(v42 + 8 * a2 + 32);
      }

      v44 = *(*v43 + 208);
      swift_beginAccess();
      a5 = v91;
      v45 = *v90;
      v46 = AssociatedTypeWitness;
      (*v90)(v91, &v43[v44], AssociatedTypeWitness);
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v48 = (*(AssociatedConformanceWitness + 32))(v93, v46, AssociatedConformanceWitness);
      v49 = *v89;
      (*v89)(a5, v46);
      if (v48)
      {
        v10 = v83;
        a8 = v81;
        a4 = v92;
        if (*v83 != a2)
        {
          specialized MutableCollection.swapAt(_:_:)(*v83, a2, v50);
          *a8 = 1;
        }

        swift_beginAccess();
        v39 = AssociatedTypeWitness;
        (*(v82 + 24))(&v43[v44], v93, AssociatedTypeWitness);
        swift_endAccess();
        swift_beginAccess();
        if (v43[84] == 1)
        {
        }

        else
        {
          DynamicContainerInfo.unremoveItem(at:)(*v10);

          *a8 = 1;
        }

        v37 = v80;
        v58 = v95;
        v38 = v96;
        goto LABEL_55;
      }

      a8 = v87;
      if ((v87 & 0x8000000000000000) != 0)
      {
        swift_beginAccess();
        if (v43[84] == 3)
        {
          break;
        }
      }

      ++a2;

      v22 = v85;
      a4 = v92;
      v18 = v95;
      v10 = v96;
      v21 = v86;
      v40 = v84;
      if (v85 == a2)
      {
        goto LABEL_28;
      }
    }

    v51 = v91;
    v52 = AssociatedTypeWitness;
    v45(v91, &v43[v44], AssociatedTypeWitness);
    a5 = (*(AssociatedConformanceWitness + 48))(v93, v52, AssociatedConformanceWitness);

    v53 = v51;
    a8 = v87;
    v49(v53, v52);
    if (a5)
    {
      a8 = a2;
    }

    v40 = a2 + 1;
    a4 = v92;
    v18 = v95;
    v10 = v96;
    v21 = v86;
    v22 = v85;
  }

  while (v76 != a2);
LABEL_28:
  if ((a8 & 0x8000000000000000) == 0)
  {
    goto LABEL_29;
  }

LABEL_3:
  a5 = AssociatedTypeWitness;
  v23 = swift_getAssociatedConformanceWitness();
  v24 = *(v23 + 40);
  v87 = v23;
  v25 = v24(a5);
  v27 = v96;
  if ((v25 & 1) == 0)
  {
    goto LABEL_6;
  }

  a8 = *v83;
  v28 = *v78;
  if (*v78 < *v83)
  {
    goto LABEL_83;
  }

  if (a8 == v28)
  {
LABEL_6:
    v29 = type metadata accessor for DynamicContainerInfo(0, v27, v18, v26);
    v30 = *(v29 + 52);
    v31 = *(a4 + v30) + 1;
    *(a4 + v30) = v31;
    CurrentAttribute = AGGraphGetCurrentAttribute();
    if (CurrentAttribute == *MEMORY[0x1E698D3F8])
    {
LABEL_78:
      __break(1u);
    }

    else
    {
      DynamicContainerInfo.makeItem(_:uniqueId:container:disableTransitions:)(v93, v31, CurrentAttribute, v77 & 1, v29);
      v33 = *(v29 + 48);
      MEMORY[0x193ABF170]();
      if (*((*(a4 + v33) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(a4 + v33) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_8;
      }
    }

    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v18 = v95;
LABEL_8:
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v10 = v83;
    v35 = v78;
    v36 = *v78;
    if (*v83 < *v78)
    {
      specialized MutableCollection.swapAt(_:_:)(*v83, v36, v34);
      v36 = *v35;
    }

    a8 = v81;
    v37 = v80;
    v38 = v96;
    v39 = AssociatedTypeWitness;
    *v35 = v36 + 1;
    while (1)
    {
      *a8 = 1;
      v58 = v18;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
LABEL_55:
      v11 = (*(AssociatedConformanceWitness + 24))(v39, AssociatedConformanceWitness);
      *v37 = *v37 & 1 | (v11 != 0.0);
      a2 = *v10;
      a5 = *(type metadata accessor for DynamicContainerInfo(0, v38, v58, v69) + 48);
      v70 = *(a4 + a5);
      if ((v70 & 0xC000000000000001) != 0)
      {
LABEL_75:
        v71 = MEMORY[0x193AC03C0](a2);
      }

      else
      {
        if ((a2 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_77:
          __break(1u);
          goto LABEL_78;
        }

        if (a2 >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_77;
        }
      }

      v72 = *(v71 + 64);

      if (v11 == v72)
      {
        goto LABEL_65;
      }

      v73 = *v10;
      v74 = *(a4 + a5);
      if ((v74 & 0xC000000000000001) != 0)
      {
        break;
      }

      if ((v73 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v73 < *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {

        goto LABEL_64;
      }

      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      v55 = MEMORY[0x193AC03C0](a8);
LABEL_32:
      v10 = v83;
      v56 = *(*v55 + 208);
      swift_beginAccess();
      (*(v82 + 24))(v55 + v56, v93, AssociatedTypeWitness);
      swift_endAccess();
      DynamicContainerInfo.unremoveItem(at:)(a8);
      v37 = v80;
      if (*v10 < a8)
      {
        specialized MutableCollection.swapAt(_:_:)(*v10, a8, v57);
      }

      a8 = v81;
      v18 = v95;
      v38 = v96;
      v39 = AssociatedTypeWitness;
    }

    v75 = MEMORY[0x193AC03C0](v73);
LABEL_64:
    *(v75 + 64) = v11;

    *a8 = 1;
LABEL_65:
    ++*v10;
    return;
  }

  v88 = type metadata accessor for DynamicContainerInfo(0, v96, v18, v26);
  v90 = *(v88 + 48);
  v89 = (v82 + 16);
  v86 = v87 + 48;
  v59 = (v82 + 8);
  v85 = v18 + 64;
  while (2)
  {
    if (a8 >= v28)
    {
      goto LABEL_71;
    }

    v60 = *(v90 + a4);
    if ((v60 & 0xC000000000000001) != 0)
    {
      v61 = MEMORY[0x193AC03C0](a8);
      if ((v61[48] & 1) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_41;
    }

    if ((a8 & 0x8000000000000000) != 0)
    {
      goto LABEL_72;
    }

    if (a8 >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_73;
    }

    v61 = *(v60 + 8 * a8 + 32);

    if (v61[48])
    {
LABEL_41:

      a4 = v92;
      goto LABEL_42;
    }

LABEL_48:
    v62 = *(*v61 + 208);
    swift_beginAccess();
    v63 = *v89;
    v64 = a8;
    v65 = v91;
    a2 = AssociatedTypeWitness;
    (*v89)(v91, &v61[v62], AssociatedTypeWitness);
    a5 = (*(v87 + 48))(v93, a2);
    v10 = *v59;
    v66 = v65;
    a8 = v64;
    (*v59)(v66, a2);
    if ((a5 & 1) == 0)
    {
      goto LABEL_41;
    }

    v67 = v91;
    a2 = AssociatedTypeWitness;
    (v63)(v91, &v61[v62], AssociatedTypeWitness);
    a5 = (*(v95 + 64))(v79, v67);

    v68 = v67;
    a8 = v64;
    (v10)(v68, a2);
    a4 = v92;
    if (a5)
    {
LABEL_42:
      ++a8;
      v18 = v95;
      v27 = v96;
      if (v28 == a8)
      {
        goto LABEL_6;
      }

      continue;
    }

    break;
  }

  v18 = v95;
  v27 = v96;
  if ((v64 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_29:
  v54 = *(a4 + *(v88 + 48));
  if ((v54 & 0xC000000000000001) != 0)
  {
    goto LABEL_84;
  }

  if (a8 < *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v55 = *(v54 + 8 * a8 + 32);

    goto LABEL_32;
  }

  __break(1u);
}

Swift::Void __swiftcall DynamicContainerInfo.unremoveItem(at:)(Swift::Int at)
{
  v3 = v1;
  v5 = *(v1 + 48);
  v6 = v2 + v5;
  v7 = *(v2 + v5);
  v8 = v7 + 8 * at;
  v9 = v7 & 0xC000000000000001;
  if ((v7 & 0xC000000000000001) == 0)
  {
    if (at < 0)
    {
      __break(1u);
    }

    else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) > at)
    {
      v10 = *(v8 + 32);

      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_38;
  }

  v10 = MEMORY[0x193AC03C0](at, *(v2 + v5));
LABEL_5:
  swift_beginAccess();
  v11 = *(v10 + 84);

  if (v11 < 2)
  {
    if (v9)
    {
      v12 = MEMORY[0x193AC03C0](at, v7);
      v13 = MEMORY[0x193AC03C0](at, v7);
    }

    else
    {
      if (at < 0)
      {
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) <= at)
      {
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v13 = swift_retain_n();
      v12 = v13;
    }

    v16 = *(v13 + 80);

    *(v12 + 80) = v16 + 1;

    goto LABEL_28;
  }

  if (v11 != 2)
  {
    --*(v6 + 32);
    if (v9)
    {
      v15 = MEMORY[0x193AC03C0](at, v7);
    }

    else
    {
      if (at < 0)
      {
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) <= at)
      {
LABEL_45:
        __break(1u);
        return;
      }

      v15 = *(v8 + 32);
    }

    v20 = *(v15 + 16);

    AGSubgraphAddChild();
    AGSubgraphApply();

LABEL_28:
    v17 = 0;
    if (v9)
    {
      goto LABEL_29;
    }

    goto LABEL_21;
  }

  --*(v6 + 24);
  if (v9)
  {
    v14 = MEMORY[0x193AC03C0](at, v7);
  }

  else
  {
    if (at < 0)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) <= at)
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }
  }

  *(v14 + 72) = 0;

  v17 = 1;
  if (v9)
  {
LABEL_29:
    v19 = *(MEMORY[0x193AC03C0](at, v7) + 48);
    swift_unknownObjectRelease();
    v18 = MEMORY[0x193AC03C0](at, v7);
    goto LABEL_30;
  }

LABEL_21:
  if (at < 0)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) <= at)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v18 = *(v8 + 32);
  v19 = *(v18 + 48);

LABEL_30:
  if (!v19)
  {
    v17 = 1;
  }

  swift_beginAccess();
  *(v18 + 84) = v17;

  if ((v17 & 1) == 0)
  {
    *(v2 + *(v3 + 64)) = 1;
    AGGraphGetCurrentAttribute();
    v21 = AGCreateWeakAttribute();
    specialized static GraphHost.currentHost.getter();
    specialized GraphHost.continueTransaction<A>(_:)(v21);
  }
}

uint64_t DynamicContainerInfo.makeItem(_:uniqueId:container:disableTransitions:)(uint64_t a1, unsigned int a2, unsigned int a3, char a4, uint64_t a5)
{
  v8 = *(a5 + 16);
  v9 = *(a5 + 24);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = *(AssociatedConformanceWitness + 16);
  v12 = swift_checkMetadataState();
  v13 = v11(v12, AssociatedConformanceWitness);
  v14 = 1;
  v21 = v13;
  if (a4 & 1) == 0 && (v13)
  {
    AGGraphGetCurrentAttribute();
    v15 = AGCreateWeakAttribute();
    specialized static GraphHost.currentHost.getter();
    specialized GraphHost.continueTransaction<A>(_:)(v15);

    v14 = 0;
    *(v24 + *(a5 + 64)) = 1;
  }

  v16 = AGSubgraphGetGraph();
  (*(AssociatedConformanceWitness + 56))(v12, AssociatedConformanceWitness);
  v17 = AGSubgraphCreate2();

  AGSubgraphAddChild();
  AGGraphClearUpdate();
  v18 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  closure #2 in DynamicContainerInfo.makeItem(_:uniqueId:container:disableTransitions:)(v24, a1, a2, a3, v17, v14, v21 & 1, v8, &v25, v9);
  AGSubgraphSetCurrent();

  v19 = v25;
  AGGraphSetUpdate();

  return v19;
}

uint64_t closure #2 in DynamicContainerInfo.makeItem(_:uniqueId:container:disableTransitions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, unsigned int a4@<W3>, void *a5@<X4>, int a6@<W5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10)
{
  v50 = a7;
  v51 = a6;
  v58 = a5;
  v54 = a4;
  v63 = a3;
  v55 = a2;
  v52 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v56 = *(AssociatedTypeWitness - 8);
  v57 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v60 = &v49 - v13;
  v53 = *(a8 - 8);
  v14 = v53;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_getAssociatedTypeWitness();
  v61 = *(v18 - 8);
  v62 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v59 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = (&v49 - v21);
  v24 = a1 + *(type metadata accessor for DynamicContainerInfo(0, a8, a10, v23) + 36);
  v25 = *(v24 + 48);
  v71[2] = *(v24 + 32);
  v71[3] = v25;
  v71[4] = *(v24 + 64);
  v72 = *(v24 + 80);
  v26 = *(v24 + 16);
  v71[0] = *v24;
  v71[1] = v26;
  v27 = v26;
  v70 = v71[0];
  v28 = *(v24 + 24);
  v29 = *(v24 + 40);
  v30 = *(v24 + 56);
  *(v69 + 12) = *(v24 + 68);
  v68 = v29;
  v69[0] = v30;
  v67 = v28;
  swift_beginAccess();
  v31 = v27[3];
  v73[1] = v27[2];
  v73[2] = v31;
  v32 = v27[5];
  v73[3] = v27[4];
  v73[4] = v32;
  v73[0] = v27[1];
  type metadata accessor for Attribute<HoverEffectContext>(0, &lazy cache variable for type metadata for MutableBox<CachedEnvironment>, &type metadata for CachedEnvironment, type metadata accessor for MutableBox);
  v33 = swift_allocObject();
  memmove((v33 + 16), v27 + 1, 0x50uLL);
  outlined init with copy of _ViewInputs(v71, &v78);
  outlined init with copy of CachedEnvironment(v73, &v78);

  (*(v14 + 16))(v17, a1, a8);
  v49 = v33;
  *&v75[0] = v33;
  *(v75 + 8) = v67;
  *(&v75[3] + 4) = *(v69 + 12);
  *(&v75[2] + 8) = v69[0];
  *(&v75[1] + 8) = v68;
  *&v79[16] = v75[1];
  *&v79[32] = v75[2];
  *&v79[48] = v75[3];
  v74 = v70;
  *&v79[64] = DWORD2(v69[1]);
  v78 = v70;
  *v79 = v75[0];
  v34 = v54;
  v35 = v63;
  v64[4] = v54;
  v64[5] = v63;
  v36 = *(a10 + 72);
  outlined init with copy of _ViewInputs(&v74, v76);
  v37 = v55;
  v36(&v65, v22, v55, v35, &v78, v34, partial apply for closure #1 in closure #2 in DynamicContainerInfo.makeItem(_:uniqueId:container:disableTransitions:), v64, a8, a10);
  v76[2] = *&v79[16];
  v76[3] = *&v79[32];
  v76[4] = *&v79[48];
  v77 = *&v79[64];
  v76[0] = v78;
  v76[1] = *v79;
  outlined destroy of _ViewInputs(v76);
  (*(v53 + 8))(v17, a8);
  v38 = v65;
  v39 = v66;
  v40 = v57;
  v56[2](v60, v37, v57);
  v41 = *(v61 + 16);
  v56 = v22;
  v41(v59, v22, v62);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v43 = *(AssociatedConformanceWitness + 8);
  v44 = v58;
  result = v43(v40, AssociatedConformanceWitness);
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else
  {
    v47 = result;
    if (result <= 0x7FFFFFFF)
    {
      type metadata accessor for DynamicContainer._ItemInfo(0, a8, a10, v46);
      v65 = v38;
      v66 = v39;
      v48 = swift_allocObject();
      DynamicContainer._ItemInfo.init(item:itemLayout:subgraph:uniqueId:viewCount:phase:needsTransitions:outputs:)(v60, v59, v44, v63, v47, v51, v50 & 1, &v65);
      (*(v61 + 8))(v56, v62);
      v78 = v70;
      *v79 = v49;
      *&v79[8] = v67;
      *&v79[24] = v68;
      *&v79[40] = v69[0];
      *&v79[52] = *(v69 + 12);
      result = outlined destroy of _ViewInputs(&v78);
      *v52 = v48;
      return result;
    }
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall DynamicContainerInfo.eraseItem(at:)(Swift::Int at)
{
  v4 = v1;
  v6 = *(v1 + 48);
  v7 = (v2 + v6);
  v8 = *(v2 + v6);
  v9 = (v8 + 8 * at);
  if ((v8 & 0xC000000000000001) == 0)
  {
    if (at < 0)
    {
      __break(1u);
    }

    else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) > at)
    {
      v10 = v9[4];

      goto LABEL_5;
    }

    __break(1u);
LABEL_26:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_21:
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v7[4] = v3 + 1;
    AGSubgraphApply();
    AGSubgraphRemoveChild();
LABEL_22:

    return;
  }

  v10 = MEMORY[0x193AC03C0](at, *(v2 + v6));
LABEL_5:
  swift_beginAccess();
  v11 = *(v10 + 84);

  if (v11 > 1)
  {
    if (v11 != 2)
    {
      goto LABEL_29;
    }

    --v7[3];
  }

  else if (v11 != 1)
  {
    goto LABEL_29;
  }

  v3 = v7[4];
  v12 = *(v4 + 16);
  v13 = *(v4 + 24);
  v14 = (*(v13 + 40))(v12, v13);
  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = *(MEMORY[0x193AC03C0](at, v8) + 16);
    swift_unknownObjectRelease();
    v15 = MEMORY[0x193AC03C0](at, v8);
    if (v3 < v14)
    {
      goto LABEL_12;
    }

    goto LABEL_17;
  }

  if (at < 0)
  {
    __break(1u);
  }

  else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) > at)
  {
    v15 = v9[4];
    v9 = *(v15 + 16);

    if (v3 < v14)
    {
LABEL_12:
      specialized Array.remove(at:)(at, v16);

      *(v15 + 72) = 0;
      ++*(v15 + 80);
      swift_beginAccess();
      *(v15 + 84) = 3;
      if (*(v15 + 56))
      {
        swift_weakAssign();
      }

      *(v15 + 56) = 0;

      MEMORY[0x193ABF170](v21);
      if (*((*v7 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_21;
      }

      goto LABEL_26;
    }

LABEL_17:
    v17 = *(v15 + 24);
    v18 = *(*v15 + 216);
    v19 = *(v13 + 80);

    v19(v17, v15 + v18, v12, v13);
    if (*(v15 + 56))
    {

      swift_weakAssign();
    }

    specialized Array.remove(at:)(at, v20);

    AGSubgraphRef.willInvalidate(isInserted:)(1);
    AGSubgraphInvalidate();
    goto LABEL_22;
  }

  __break(1u);
LABEL_29:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t protocol witness for static _AttributeBody._updateDefault(_:) in conformance DynamicPreferenceCombiner<A>(uint64_t a1, uint64_t a2)
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
  swift_getWitnessTable(protocol conformance descriptor for DynamicPreferenceCombiner<A>, a2, v15);
  v18[-1] = v16;
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v12, partial apply for closure #1 in static Rule._updateDefault(_:), &v18[-4], AssociatedTypeWitness, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v17);
  return (*(v9 + 8))(v12, AssociatedTypeWitness);
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__src, char *a2, char *a3, char *__dst, uint64_t (*a5)(void, void))
{
  v6 = __dst;
  v7 = a3;
  v8 = a2;
  v9 = __src;
  v10 = a2 - __src;
  v11 = a2 - __src + 3;
  if (a2 - __src >= 0)
  {
    v11 = a2 - __src;
  }

  v12 = v11 >> 2;
  v13 = a3 - a2;
  v14 = a3 - a2 + 3;
  if (a3 - a2 >= 0)
  {
    v14 = a3 - a2;
  }

  v15 = v14 >> 2;
  if (v12 < v14 >> 2)
  {
    if (__dst != __src || &__src[4 * v12] <= __dst)
    {
      memmove(__dst, __src, 4 * v12);
    }

    v16 = (v6 + 4 * v12);
    if (v10 < 4)
    {
LABEL_10:
      v8 = v9;
LABEL_47:
      v27 = &v16[-v6 + 3];
      if (&v16[-v6] >= 0)
      {
        v27 = &v16[-v6];
      }

      goto LABEL_49;
    }

    while (1)
    {
      if (v8 >= v7)
      {
        goto LABEL_10;
      }

      v19 = a5(*v8, *v6);
      if (v5)
      {
        v28 = &v16[-v6 + 3];
        if (&v16[-v6] >= 0)
        {
          v28 = &v16[-v6];
        }

        if (v9 < v6 || v9 >= v6 + (v28 & 0xFFFFFFFFFFFFFFFCLL) || v9 != v6)
        {
          v29 = 4 * (v28 >> 2);
          v30 = v9;
          goto LABEL_53;
        }

        return 1;
      }

      if (v19)
      {
        break;
      }

      v17 = v6;
      v18 = v9 == v6;
      v6 += 4;
      if (!v18)
      {
        goto LABEL_12;
      }

LABEL_13:
      v9 += 4;
      if (v6 >= v16)
      {
        goto LABEL_10;
      }
    }

    v17 = v8;
    v18 = v9 == v8;
    v8 += 4;
    if (v18)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v9 = *v17;
    goto LABEL_13;
  }

  if (__dst != a2 || &a2[4 * v15] <= __dst)
  {
    memmove(__dst, a2, 4 * v15);
  }

  v16 = (v6 + 4 * v15);
  if (v13 < 4 || v8 <= v9)
  {
    goto LABEL_47;
  }

  v20 = -v6;
LABEL_26:
  v21 = v8 - 4;
  v22 = &v16[v20];
  v7 -= 4;
  v23 = v16;
  while (1)
  {
    v24 = *(v23 - 1);
    v23 -= 4;
    v25 = a5(v24, *v21);
    if (v5)
    {
      break;
    }

    v26 = v7 + 4;
    if (v25)
    {
      if (v26 != v8)
      {
        *v7 = *v21;
      }

      if (v16 <= v6 || (v8 -= 4, v20 = -v6, v21 <= v9))
      {
        v8 = v21;
        goto LABEL_47;
      }

      goto LABEL_26;
    }

    if (v26 != v16)
    {
      *v7 = *v23;
    }

    v22 -= 4;
    v7 -= 4;
    v16 = v23;
    if (v23 <= v6)
    {
      v16 = v23;
      goto LABEL_47;
    }
  }

  if (v22 >= 0)
  {
    v27 = v22;
  }

  else
  {
    v27 = v22 + 3;
  }

LABEL_49:
  if (v8 < v6 || v8 >= v6 + (v27 & 0xFFFFFFFFFFFFFFFCLL) || v8 != v6)
  {
    v29 = 4 * (v27 >> 2);
    v30 = v8;
LABEL_53:
    memmove(v30, v6, v29);
  }

  return 1;
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, void))
{
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_90:
    v6 = *a1;
    if (*a1)
    {
      v8 = v5;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_119;
      }

      goto LABEL_92;
    }

    goto LABEL_128;
  }

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v11 = v9 + 1;
    if (v9 + 1 < v8)
    {
      v12 = *a3;
      v13 = a5(*(*a3 + 4 * v11), *(*a3 + 4 * v9));
      if (v5)
      {
        goto LABEL_100;
      }

      v14 = v13;
      v15 = v9 + 2;
      v6 = v12 + 4 * v9 + 8;
      while (v8 != v15)
      {
        v16 = a5(*v6, *(v6 - 4));
        ++v15;
        v6 += 4;
        if ((v14 ^ v16))
        {
          v8 = v15 - 1;
          break;
        }
      }

      if (v14)
      {
        if (v8 < v9)
        {
          goto LABEL_122;
        }

        if (v9 < v8)
        {
          v17 = v8 - 1;
          v18 = v9;
          do
          {
            if (v18 != v17)
            {
              v20 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v21 = *(v20 + 4 * v18);
              *(v20 + 4 * v18) = *(v20 + 4 * v17);
              *(v20 + 4 * v17) = v21;
            }
          }

          while (++v18 < v17--);
        }
      }

      v11 = v8;
    }

    v22 = a3[1];
    if (v11 >= v22)
    {
      goto LABEL_131;
    }

    if (__OFSUB__(v11, v9))
    {
      goto LABEL_118;
    }

    if (v11 - v9 >= a4)
    {
      goto LABEL_131;
    }

    if (__OFADD__(v9, a4))
    {
      __break(1u);
LABEL_121:
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
      goto LABEL_125;
    }

    if (v9 + a4 >= v22)
    {
      v23 = a3[1];
    }

    else
    {
      v23 = v9 + a4;
    }

    if (v23 < v9)
    {
      goto LABEL_121;
    }

    if (v11 == v23)
    {
LABEL_131:
      if (v11 < v9)
      {
        goto LABEL_117;
      }
    }

    else
    {
      v69 = v11;
      v70 = *a3;
      v6 = *a3 + 4 * v69 - 4;
      v8 = v9 - v69;
      v80 = v23;
      do
      {
        v84 = v69;
        v71 = *(v70 + 4 * v69);
        v72 = v8;
        v81 = v6;
        do
        {
          v73 = a5(v71, *v6);
          if (v5)
          {
            goto LABEL_100;
          }

          if ((v73 & 1) == 0)
          {
            break;
          }

          if (!v70)
          {
            goto LABEL_124;
          }

          v74 = *v6;
          v71 = *(v6 + 4);
          *v6 = v71;
          *(v6 + 4) = v74;
          v6 -= 4;
        }

        while (!__CFADD__(v72++, 1));
        v69 = v84 + 1;
        v6 = v81 + 4;
        --v8;
      }

      while (v84 + 1 != v80);
      v11 = v80;
      if (v80 < v9)
      {
        goto LABEL_117;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
    }

    v6 = *(v10 + 2);
    v24 = *(v10 + 3);
    v25 = v6 + 1;
    if (v6 >= v24 >> 1)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v6 + 1, 1, v10);
    }

    *(v10 + 2) = v25;
    v26 = &v10[16 * v6];
    *(v26 + 4) = v9;
    *(v26 + 5) = v11;
    v83 = v11;
    v27 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v6)
    {
      break;
    }

LABEL_3:
    v8 = a3[1];
    v9 = v83;
    if (v83 >= v8)
    {
      goto LABEL_90;
    }
  }

  while (1)
  {
    v28 = v25 - 1;
    if (v25 >= 4)
    {
      v33 = &v10[16 * v25 + 32];
      v34 = *(v33 - 64);
      v35 = *(v33 - 56);
      v39 = __OFSUB__(v35, v34);
      v36 = v35 - v34;
      if (v39)
      {
        goto LABEL_104;
      }

      v38 = *(v33 - 48);
      v37 = *(v33 - 40);
      v39 = __OFSUB__(v37, v38);
      v31 = v37 - v38;
      v32 = v39;
      if (v39)
      {
        goto LABEL_105;
      }

      v40 = &v10[16 * v25];
      v42 = *v40;
      v41 = *(v40 + 1);
      v39 = __OFSUB__(v41, v42);
      v43 = v41 - v42;
      if (v39)
      {
        goto LABEL_107;
      }

      v39 = __OFADD__(v31, v43);
      v44 = v31 + v43;
      if (v39)
      {
        goto LABEL_110;
      }

      if (v44 >= v36)
      {
        v62 = &v10[16 * v28 + 32];
        v64 = *v62;
        v63 = *(v62 + 1);
        v39 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v39)
        {
          goto LABEL_116;
        }

        if (v31 < v65)
        {
          v28 = v25 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_49;
    }

    if (v25 == 3)
    {
      v29 = *(v10 + 4);
      v30 = *(v10 + 5);
      v39 = __OFSUB__(v30, v29);
      v31 = v30 - v29;
      v32 = v39;
LABEL_49:
      if (v32)
      {
        goto LABEL_106;
      }

      v45 = &v10[16 * v25];
      v47 = *v45;
      v46 = *(v45 + 1);
      v48 = __OFSUB__(v46, v47);
      v49 = v46 - v47;
      v50 = v48;
      if (v48)
      {
        goto LABEL_109;
      }

      v51 = &v10[16 * v28 + 32];
      v53 = *v51;
      v52 = *(v51 + 1);
      v39 = __OFSUB__(v52, v53);
      v54 = v52 - v53;
      if (v39)
      {
        goto LABEL_112;
      }

      if (__OFADD__(v49, v54))
      {
        goto LABEL_113;
      }

      if (v49 + v54 >= v31)
      {
        if (v31 < v54)
        {
          v28 = v25 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_63;
    }

    v55 = &v10[16 * v25];
    v57 = *v55;
    v56 = *(v55 + 1);
    v39 = __OFSUB__(v56, v57);
    v49 = v56 - v57;
    v50 = v39;
LABEL_63:
    if (v50)
    {
      goto LABEL_108;
    }

    v58 = &v10[16 * v28];
    v60 = *(v58 + 4);
    v59 = *(v58 + 5);
    v39 = __OFSUB__(v59, v60);
    v61 = v59 - v60;
    if (v39)
    {
      goto LABEL_111;
    }

    if (v61 < v49)
    {
      goto LABEL_3;
    }

LABEL_70:
    v8 = v28 - 1;
    if (v28 - 1 >= v25)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_123;
    }

    v66 = *&v10[16 * v8 + 32];
    v67 = *&v10[16 * v28 + 40];
    specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 4 * v66), (*a3 + 4 * *&v10[16 * v28 + 32]), (*a3 + 4 * v67), v27, a5);
    if (v5)
    {
      goto LABEL_100;
    }

    if (v67 < v66)
    {
      goto LABEL_102;
    }

    v6 = 0;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
    }

    if (v8 >= *(v10 + 2))
    {
      goto LABEL_103;
    }

    v68 = &v10[16 * v8];
    *(v68 + 4) = v66;
    *(v68 + 5) = v67;
    specialized Array.remove(at:)(v28);
    v25 = *(v10 + 2);
    if (v25 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
LABEL_92:
  v76 = *(v10 + 2);
  if (v76 < 2)
  {
LABEL_100:

    return;
  }

  while (*a3)
  {
    v77 = *&v10[16 * v76];
    v78 = *&v10[16 * v76 + 24];
    specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 4 * v77), (*a3 + 4 * *&v10[16 * v76 + 16]), (*a3 + 4 * v78), v6, a5);
    if (v8)
    {
      goto LABEL_100;
    }

    if (v78 < v77)
    {
      goto LABEL_114;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
    }

    if (v76 - 2 >= *(v10 + 2))
    {
      goto LABEL_115;
    }

    v79 = &v10[16 * v76];
    *v79 = v77;
    *(v79 + 1) = v78;
    specialized Array.remove(at:)(v76 - 1);
    v76 = *(v10 + 2);
    if (v76 <= 1)
    {
      goto LABEL_100;
    }
  }

LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
}

void specialized MutableCollection<>.sort(by:)(char **a1, uint64_t (*a2)(uint64_t, void))
{
  v4 = a1;
  v5 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
  }

  v6 = *(v5 + 2);
  v7 = v5 + 32;
  v24[0] = (v5 + 32);
  v24[1] = v6;
  v8 = _minimumMergeRunLength(_:)(v6);
  if (v8 >= v6)
  {
    v22 = v5;
    if (v6 >= 2)
    {
      v12 = -1;
      v13 = 1;
      v14 = v7;
      v21 = v4;
      while (2)
      {
        v15 = *&v7[4 * v13];
        v16 = v12;
        v17 = v14;
        do
        {
          v18 = a2(v15, *v17);
          if (v2)
          {
            v4 = v21;
            v5 = v22;
            goto LABEL_20;
          }

          if ((v18 & 1) == 0)
          {
            break;
          }

          v19 = *v17;
          v15 = v17[1];
          *v17 = v15;
          v17[1] = v19;
          --v17;
        }

        while (!__CFADD__(v16++, 1));
        ++v13;
        v14 += 4;
        --v12;
        v4 = v21;
        if (v13 != v6)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_18;
  }

  v9 = v8;
  v10 = v6 >> 1;
  if (v6 >= 2)
  {
    v11 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v11 + 16) = v10;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v23[0] = v11 + 32;
  v23[1] = v10;
  specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v23, v25, v24, v9, a2);
  *(v11 + 16) = 0;

  if (!v2)
  {
    v22 = v5;
LABEL_18:
    *v4 = v22;
    return;
  }

LABEL_20:
  *v4 = v5;
}

unint64_t specialized DynamicContainerInfo.description.getter(uint64_t a1)
{
  _StringGuts.grow(_:)(20);

  v1 = _typeName(_:qualified:)();
  MEMORY[0x193ABEDD0](v1);

  MEMORY[0x193ABEDD0](62, 0xE100000000000000);
  return 0xD000000000000011;
}

uint64_t specialized DynamicPreferenceCombiner.description.getter(uint64_t a1)
{
  static PreferenceKey.readableName.getter(a1);
  MEMORY[0x193ABEDD0]();

  return 0x202BAA88E2;
}

void lazy protocol witness table accessor for type DynamicContainerID and conformance DynamicContainerID()
{
  if (!lazy protocol witness table cache variable for type DynamicContainerID and conformance DynamicContainerID)
  {
    swift_getWitnessTable(protocol conformance descriptor for DynamicContainerID, &type metadata for DynamicContainerID, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type DynamicContainerID and conformance DynamicContainerID);
  }
}

uint64_t assignWithTake for DynamicContainer.Info(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  return a1;
}

uint64_t *initializeBufferWithCopyOfBuffer for DynamicContainerInfo(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((((((((((((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 91) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 51) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8 | 5) > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v11 = (a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    *v10 = *v11;
    *(v10 + 8) = *(v11 + 8);
    *(v10 + 16) = *(v11 + 16);
    *(v10 + 24) = *(v11 + 24);
    *(v10 + 28) = *(v11 + 28);
    *(v10 + 32) = *(v11 + 32);
    *(v10 + 36) = *(v11 + 36);
    *(v10 + 40) = *(v11 + 40);
    *(v10 + 48) = *(v11 + 48);
    *(v10 + 56) = *(v11 + 56);
    *(v10 + 60) = *(v11 + 60);
    *(v10 + 64) = *(v11 + 64);
    *(v10 + 68) = *(v11 + 68);
    *(v10 + 72) = *(v11 + 72);
    *(v10 + 76) = *(v11 + 76);
    *(v10 + 80) = *(v11 + 80);
    v12 = (v10 + 91) & 0xFFFFFFFFFFFFFFF8;
    v13 = (v11 + 91) & 0xFFFFFFFFFFFFFFF8;
    *v12 = *v13;
    *(v12 + 8) = *(v13 + 8);
    *(v12 + 12) = *(v13 + 12);
    v14 = ((v12 + 23) & 0xFFFFFFFFFFFFFFF8);
    v15 = ((v13 + 23) & 0xFFFFFFFFFFFFFFF8);
    v16 = *v15;
    *v14 = *v15;
    v17 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
    v18 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
    *v17 = *v18;
    *(v17 + 8) = *(v18 + 8);
    *(v17 + 16) = *(v18 + 16);
    *(v17 + 24) = *(v18 + 24);
    *(v17 + 32) = *(v18 + 32);
    *(v17 + 40) = *(v18 + 40);
    *(v17 + 44) = *(v18 + 44);
    v19 = ((v18 + 51) & 0xFFFFFFFFFFFFFFF8);
    v20 = ((v17 + 51) & 0xFFFFFFFFFFFFFFF8);
    *v20 = *v19;
    v20[1] = v19[1];
    v21 = (v20 + 11) & 0xFFFFFFFFFFFFFFF8;
    v22 = (v19 + 11) & 0xFFFFFFFFFFFFFFF8;
    *v21 = *v22;
    *(v21 + 4) = *(v22 + 4);

    v23 = v16;
  }

  return v3;
}

uint64_t assignWithCopy for DynamicContainerInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  *v7 = *v8;

  *(v7 + 8) = *(v8 + 8);
  *(v7 + 16) = *(v8 + 16);

  *(v7 + 24) = *(v8 + 24);
  *(v7 + 28) = *(v8 + 28);
  *(v7 + 32) = *(v8 + 32);
  *(v7 + 36) = *(v8 + 36);
  *(v7 + 40) = *(v8 + 40);

  *(v7 + 48) = *(v8 + 48);

  *(v7 + 56) = *(v8 + 56);
  *(v7 + 60) = *(v8 + 60);
  *(v7 + 64) = *(v8 + 64);
  *(v7 + 68) = *(v8 + 68);
  *(v7 + 72) = *(v8 + 72);
  *(v7 + 76) = *(v8 + 76);
  *(v7 + 80) = *(v8 + 80);
  v9 = (v7 + 91) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 91) & 0xFFFFFFFFFFFFFFF8;
  *v9 = *v10;

  *(v9 + 8) = *(v10 + 8);
  *(v9 + 12) = *(v10 + 12);
  v11 = ((v9 + 23) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v10 + 23) & 0xFFFFFFFFFFFFFFF8);
  v13 = *v12;
  v14 = *v11;
  *v11 = *v12;
  v15 = v13;

  v16 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v16 = *v17;

  *(v16 + 8) = *(v17 + 8);

  *(v16 + 16) = *(v17 + 16);

  *(v16 + 24) = *(v17 + 24);
  *(v16 + 32) = *(v17 + 32);
  *(v16 + 40) = *(v17 + 40);
  *(v16 + 44) = *(v17 + 44);
  v18 = ((v17 + 51) & 0xFFFFFFFFFFFFFFF8);
  v19 = ((v16 + 51) & 0xFFFFFFFFFFFFFFF8);
  *v19 = *v18;
  v19[1] = v18[1];
  v20 = (v19 + 11) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v18 + 11) & 0xFFFFFFFFFFFFFFF8;
  *v20 = *v21;
  *(v20 + 4) = *(v21 + 4);
  return a1;
}

uint64_t initializeWithTake for DynamicContainerInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 16);
  *v7 = *v8;
  *(v7 + 16) = v9;
  v11 = *(v8 + 48);
  v10 = *(v8 + 64);
  v12 = *(v8 + 32);
  *(v7 + 80) = *(v8 + 80);
  *(v7 + 48) = v11;
  *(v7 + 64) = v10;
  *(v7 + 32) = v12;
  v13 = ((v7 + 91) & 0xFFFFFFFFFFFFFFF8);
  v14 = ((v8 + 91) & 0xFFFFFFFFFFFFFFF8);
  *v13 = *v14;
  v15 = ((v14 + 23) & 0xFFFFFFFFFFFFFFF8);
  v16 = ((v13 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v15;
  v17 = ((v16 + 15) & 0xFFFFFFFFFFFFFFF8);
  v18 = ((v15 + 15) & 0xFFFFFFFFFFFFFFF8);
  v19 = *v18;
  v20 = v18[2];
  v17[1] = v18[1];
  v17[2] = v20;
  *v17 = v19;
  v21 = ((v17 + 51) & 0xFFFFFFFFFFFFFFF8);
  v22 = ((v18 + 51) & 0xFFFFFFFFFFFFFFF8);
  v23 = v22 + 11;
  *v21 = *v22;
  v21[1] = v22[1];
  v24 = (v21 + 11) & 0xFFFFFFFFFFFFFFF8;
  *v24 = *(v23 & 0xFFFFFFFFFFFFFFF8);
  *(v24 + 4) = *((v23 & 0xFFFFFFFFFFFFFFF8) + 4);
  return a1;
}

uint64_t assignWithTake for DynamicContainerInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  *v7 = *v8;

  *(v7 + 8) = *(v8 + 8);
  *(v7 + 16) = *(v8 + 16);

  *(v7 + 24) = *(v8 + 24);
  *(v7 + 28) = *(v8 + 28);
  *(v7 + 32) = *(v8 + 32);
  *(v7 + 36) = *(v8 + 36);
  *(v7 + 40) = *(v8 + 40);

  *(v7 + 48) = *(v8 + 48);

  *(v7 + 56) = *(v8 + 56);
  *(v7 + 60) = *(v8 + 60);
  *(v7 + 64) = *(v8 + 64);
  *(v7 + 68) = *(v8 + 68);
  *(v7 + 72) = *(v8 + 72);
  *(v7 + 76) = *(v8 + 76);
  *(v7 + 80) = *(v8 + 80);
  v9 = (v7 + 91) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 91) & 0xFFFFFFFFFFFFFFF8;
  *v9 = *v10;

  *(v9 + 8) = *(v10 + 8);
  *(v9 + 12) = *(v10 + 12);
  v11 = ((v9 + 23) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v10 + 23) & 0xFFFFFFFFFFFFFFF8);
  v13 = *v11;
  *v11 = *v12;

  v14 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v14 = *v15;

  *(v14 + 8) = *(v15 + 8);

  *(v14 + 16) = *(v15 + 16);

  *(v14 + 24) = *(v15 + 24);
  *(v14 + 32) = *(v15 + 32);
  *(v14 + 40) = *(v15 + 40);
  *(v14 + 44) = *(v15 + 44);
  v16 = ((v15 + 51) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v14 + 51) & 0xFFFFFFFFFFFFFFF8);
  *v17 = *v16;
  v17[1] = v16[1];
  v18 = (v17 + 11) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v16 + 11) & 0xFFFFFFFFFFFFFFF8;
  *v18 = *v19;
  *(v18 + 4) = *(v19 + 4);
  return a1;
}

uint64_t getEnumTagSinglePayload for DynamicContainerInfo(_DWORD *a1, unsigned int a2, uint64_t a3)
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

  if (v7 < a2 && *(a1 + ((((((((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 91) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 51) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8 | 5)))
  {
    return v7 + *a1 + 1;
  }

  if (v5 >= 0x7FFFFFFF)
  {
    return (*(v4 + 48))();
  }

  v9 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

double storeEnumTagSinglePayload for DynamicContainerInfo(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = (((((((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 91) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 51) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8 | 5;
  if (v8 >= a2)
  {
    if (v8 < a3)
    {
      a1[v10] = 0;
    }

    if (a2)
    {
      if (v7 < 0x7FFFFFFF)
      {
        v14 = &a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8;
        if ((a2 & 0x80000000) != 0)
        {
          *(v14 + 72) = 0;
          result = 0.0;
          *(v14 + 56) = 0u;
          *(v14 + 40) = 0u;
          *(v14 + 24) = 0u;
          *(v14 + 8) = 0u;
          *(v14 + 80) = 0;
          *v14 = a2 & 0x7FFFFFFF;
        }

        else
        {
          *(v14 + 16) = a2 - 1;
        }
      }

      else
      {
        v13 = *(v6 + 56);

        v13();
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

  return result;
}

double SeparatorShapeStyle._apply(to:)(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  if (v3)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA018BackgroundMaterialI033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt1g5(v2, &v22);

    v4 = v22;
    v5 = v23;
  }

  else
  {
    v6 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA018BackgroundMaterialS033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt0g5(*(a1 + 48));
    if (!v6)
    {
      EnvironmentValues.colorScheme.getter(&v22);
      v7 = v22;
      goto LABEL_12;
    }

    v4 = v6[9];
    v5 = v6[10];
    outlined copy of Material?(v4, v5);
  }

  if (v5 == 0xFF)
  {
    EnvironmentValues.colorScheme.getter(&v22);
    v7 = v22;
    if (v3)
    {

      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA019ColorSchemeContrastI033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt1g5(v2, &v22);

      v8 = v22;
LABEL_15:
      v13 = 0.08;
      if (!v8)
      {
        v13 = 0.0;
      }

      v14 = 0.29;
      if (v7)
      {
        v14 = 0.6;
      }

      v15 = v14 + v13;
      v16 = 0.27516;
      if (v7)
      {
        v16 = 0.36437;
        v17 = 0.37924;
      }

      else
      {
        v17 = 0.30118;
      }

      v18 = powf(v16, 2.4);
      v19 = powf(v17, 2.4);
      type metadata accessor for ColorBox<ResolvedColorProvider>(0);
      v21 = swift_allocObject();
      *(v21 + 16) = v18;
      *(v21 + 20) = v18;
      *(v21 + 24) = v19;
      v20 = v15;
      *(v21 + 28) = v20;
      *(v21 + 32) = 2143289344;
      Color._apply(to:)(a1, v21);

      return result;
    }

LABEL_12:
    v12 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA019ColorSchemeContrastS033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt0g5(v2);
    if (v12)
    {
      v8 = *(v12 + 72);
    }

    else
    {
      v8 = 0;
    }

    goto LABEL_15;
  }

  *(a1 + 105) = 2;
  v22 = v4;
  LOBYTE(v23) = v5;
  HIDWORD(v23) = HIDWORD(v5);
  ForegroundMaterialStyle._apply(to:)(a1);
  v9 = v22;
  v10 = v23;

  outlined consume of Material.ID(v9, v10);
  return result;
}

void *static SeparatorShapeStyle._makeView<A>(view:inputs:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a1;
  v6 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v6;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v7 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v7;
  v11 = v5;
  return static ShapeStyle.legacyMakeShapeView<A>(view:inputs:)(&v11, v9, &type metadata for SeparatorShapeStyle, a3, &protocol witness table for SeparatorShapeStyle, a4, a5);
}

uint64_t EnvironmentValues.defaultSeparatorShapeStyle.getter()
{
  v1 = *v0;
  if (!*(v0 + 8))
  {
    return _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE026DefaultSeparatorShapeStyleF033_43B3709EE4A9B8504AC89AFCD0D99421LLVG_Tt2g5(v1);
  }

  v2 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE026DefaultSeparatorShapeStyleI033_43B3709EE4A9B8504AC89AFCD0D99421LLVG_Tt1g5(v1);

  return v2;
}

void key path getter for EnvironmentValues.defaultSeparatorShapeStyle : EnvironmentValues(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  if (a1[1])
  {

    v4 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE026DefaultSeparatorShapeStyleI033_43B3709EE4A9B8504AC89AFCD0D99421LLVG_Tt1g5(v3);
  }

  else
  {
    v4 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE026DefaultSeparatorShapeStyleF033_43B3709EE4A9B8504AC89AFCD0D99421LLVG_Tt2g5(*a1);
  }

  *a2 = v4;
}

double key path setter for EnvironmentValues.defaultSeparatorShapeStyle : EnvironmentValues(int *a1, Swift::UInt *a2)
{
  v3 = *a1;
  v4 = *a2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE026DefaultSeparatorShapeStyleF033_43B3709EE4A9B8504AC89AFCD0D99421LLVG_Tt2g5(a2, v3);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE026DefaultSeparatorShapeStyleK033_43B3709EE4A9B8504AC89AFCD0D99421LLVG_Ttg5(v4, *a2);
  }

  return result;
}

double EnvironmentValues.defaultSeparatorShapeStyle.setter(int a1)
{
  v2 = v1;
  v4 = *v2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE026DefaultSeparatorShapeStyleF033_43B3709EE4A9B8504AC89AFCD0D99421LLVG_Tt2g5(v2, a1);

  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE026DefaultSeparatorShapeStyleK033_43B3709EE4A9B8504AC89AFCD0D99421LLVG_Ttg5(v4, *v2);
  }

  return result;
}

void (*EnvironmentValues.defaultSeparatorShapeStyle.modify(void *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[2] = v1;
  v5 = *v1;
  v3[3] = *v1;
  v6 = *(v1 + 8);
  v3[4] = v6;
  if (v6)
  {

    v7 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE026DefaultSeparatorShapeStyleI033_43B3709EE4A9B8504AC89AFCD0D99421LLVG_Tt1g5(v5);
  }

  else
  {
    v7 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE026DefaultSeparatorShapeStyleF033_43B3709EE4A9B8504AC89AFCD0D99421LLVG_Tt2g5(v5);
  }

  v4[5] = 0;
  *(v4 + 12) = v7;
  return EnvironmentValues.defaultSeparatorShapeStyle.modify;
}

void EnvironmentValues.defaultSeparatorShapeStyle.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  swift_retain_n();
  v3 = *(v1 + 32);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE026DefaultSeparatorShapeStyleF033_43B3709EE4A9B8504AC89AFCD0D99421LLVG_Tt2g5(*(v1 + 16), v2);

  if (v3)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE026DefaultSeparatorShapeStyleK033_43B3709EE4A9B8504AC89AFCD0D99421LLVG_Ttg5(*(v1 + 24), **(v1 + 16));
  }

  free(v1);
}

Swift::Int PlatformAccessibilitySettingsDefinition.Setting.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

uint64_t one-time initialization function for notification()
{
  result = MEMORY[0x193ABEC20](0xD000000000000017, 0x800000018DD7C450);
  static PlatformAccessibilitySettingsDefinition.notification = result;
  return result;
}

id static PlatformAccessibilitySettingsDefinition.notification.getter()
{
  if (one-time initialization token for notification != -1)
  {
    swift_once();
  }

  v1 = static PlatformAccessibilitySettingsDefinition.notification;

  return v1;
}

uint64_t PlatformAccessibilitySettingsDefinition.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = MEMORY[0x1E69E7CC0];
  *(result + 32) = 0;
  return result;
}

uint64_t PlatformAccessibilitySettingsDefinition.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = MEMORY[0x1E69E7CC0];
  *(v0 + 32) = 0;
  return result;
}

NSNotificationCenter __swiftcall PlatformAccessibilitySettingsDefinition.notificationCenter(for:)(SwiftUI::PlatformAccessibilitySettingsDefinition::Setting a1)
{
  v1 = [objc_opt_self() defaultCenter];

  return v1;
}

uint64_t PlatformAccessibilitySettingsDefinition.__deallocating_deinit()
{
  outlined destroy of PlatformAccessibilitySettingsDefinition.Storage((v0 + 24));

  return swift_deallocClassInstance();
}

double static PlatformAccessibilitySettingsDefinition.uiKit.getter(void *a1)
{
  swift_beginAccess();

  return result;
}

double static PlatformAccessibilitySettingsDefinition.uiKit.setter(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  *a2 = a1;

  return result;
}

double static PlatformAccessibilitySettingsDefinition.setDefinition(_:system:)(uint64_t a1, _BYTE *a2, __n128 a3)
{
  if (*a2 == 1)
  {
    v4 = &static PlatformAccessibilitySettingsDefinition.appKit;
  }

  else
  {
    if (*a2)
    {
      return result;
    }

    v4 = &static PlatformAccessibilitySettingsDefinition.uiKit;
  }

  v5 = swift_beginAccess();
  if (!*v4)
  {
    *v4 = (*(a1 + 88))(v5);
  }

  return result;
}

double static PlatformAccessibilitySettingsDefinition.for (system:)(_BYTE *a1)
{
  swift_beginAccess();

  return result;
}

char *PlatformAccessibilitySettingsDefinition.isEnabled(setting:)(unsigned __int8 *a1)
{
  v2 = *a1;
  os_unfair_lock_lock((v1 + 16));
  v3 = *(v1 + 24);
  v4 = *(v3 + 16);
  v5 = (v3 + 32);
  v6 = 1;
  while (1)
  {
    v7 = v4 + v6;
    if (v4 + v6 == 1)
    {
      break;
    }

    v8 = *v5;
    v5 += 24;
    --v6;
    if (v8 == v2)
    {
      v9 = *(v5 - 8);
      os_unfair_lock_unlock((v1 + 16));
      if (v9 == 2)
      {
        v10 = -v6;
        goto LABEL_7;
      }

      return (v9 & 1);
    }
  }

  os_unfair_lock_unlock((v1 + 16));
  v10 = 0;
LABEL_7:
  v23 = v2;
  LOBYTE(v9) = (*(*v1 + 112))(&v23);
  if (v7 == 1)
  {
    v22 = v2;
    v11 = (*(*v1 + 96))(&v22);
    os_unfair_lock_lock((v1 + 16));
    v12 = *(v1 + 24);
    v13 = v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + 24) = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
      *(v1 + 24) = v12;
    }

    v16 = *(v12 + 2);
    v15 = *(v12 + 3);
    if (v16 >= v15 >> 1)
    {
      v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v12);
      *(v1 + 24) = v12;
    }

    *(v12 + 2) = v16 + 1;
    v17 = &v12[24 * v16];
    v17[32] = v2;
    *(v17 + 5) = v11;
    v17[48] = v9 & 1;
    os_unfair_lock_unlock((v1 + 16));
    if (v11)
    {
      v21 = v2;
      v18 = (*(*v1 + 104))(&v21);
      [v18 addObserver:v1 selector:sel_settingsValueDidChange_ name:v13 object:0];
    }

    return (v9 & 1);
  }

  os_unfair_lock_lock((v1 + 16));
  v19 = *(v1 + 24);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 24) = v19;
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v19);
    v19 = result;
    *(v1 + 24) = result;
  }

  if (v10 < *(v19 + 2))
  {
    v19[24 * v10 + 48] = v9 & 1;
    os_unfair_lock_unlock((v1 + 16));
    return (v9 & 1);
  }

  __break(1u);
  return result;
}

void PlatformAccessibilitySettingsDefinition.settingsValueDidChange(_:)(void *a1)
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 name];
  os_unfair_lock_lock((v1 + 16));
  _s7SwiftUI39PlatformAccessibilitySettingsDefinitionC22settingsValueDidChange33_DD012B99EE4F6885B033D7D23FEF69C0LLyySo14NSNotificationCFSbAC7StorageAELLVzYuYTXEfU_((v1 + 24), v14);
  os_unfair_lock_unlock((v1 + 16));
  if (LOBYTE(v14[0]) == 1)
  {
    v8 = [objc_opt_self() defaultCenter];
    if (one-time initialization token for notification != -1)
    {
      swift_once();
    }

    memset(v14, 0, 32);
    v9 = static PlatformAccessibilitySettingsDefinition.notification;
    Notification.init(name:object:userInfo:)();
    isa = Notification._bridgeToObjectiveC()().super.isa;
    (*(v4 + 8))(v7, v3);
    [v8 postNotification_];
  }

  else
  {
    v11 = v13;
  }
}

void _s7SwiftUI39PlatformAccessibilitySettingsDefinitionC22settingsValueDidChange33_DD012B99EE4F6885B033D7D23FEF69C0LLyySo14NSNotificationCFSbAC7StorageAELLVzYuYTXEfU_(char **a1@<X0>, _BYTE *a3@<X8>)
{
  v3 = a3;
  v4 = *a1;
  v5 = *(*a1 + 2);
  if (!v5)
  {
    v19 = 0;
    goto LABEL_23;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_27:
    v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
  }

  v6 = 0;
  v23 = 0;
  v7 = v4 + 32;
  while (1)
  {
    if (v6 >= *(v4 + 2))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v8 = *(v7 + 1);
    if (!v8)
    {
      break;
    }

    v9 = *v7;
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
    if (v10 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v12 == v13)
    {
      v17 = v8;
    }

    else
    {
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v16 = v8;

      if ((v15 & 1) == 0)
      {
        break;
      }
    }

    if (v6 >= *(v4 + 2))
    {
      goto LABEL_26;
    }

    v18 = *(v7 + 1);
    *v7 = v9;
    *(v7 + 1) = v8;
    v7[16] = 2;

    if (v5 == 1)
    {
      v20 = a1;
      v3 = a3;
      *a1 = v4;
      v19 = 1;
      goto LABEL_22;
    }

    v23 = 1;
LABEL_5:
    v7 += 24;
    ++v6;
    if (!--v5)
    {
      goto LABEL_25;
    }
  }

  if (v5 != 1)
  {
    goto LABEL_5;
  }

  v20 = a1;
  v3 = a3;
  *a1 = v4;
  v19 = v23;
  if ((v23 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_22:
  ++*(v20 + 2);
LABEL_23:
  *v3 = v19 & 1;
}

void EnvironmentValues.accessibilitySettingsDefinition.getter(_BYTE *a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA031AccessibilitySettingsDefinitionI033_DD012B99EE4F6885B033D7D23FEF69C0LLVG_Tt1g5(v3, &v8);

    if ((v9 & 1) == 0)
    {
LABEL_7:
      v7 = 0;
      v6 = v8;
      goto LABEL_8;
    }
  }

  else
  {
    v4 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA031AccessibilitySettingsDefinitionS0031_DD012B99EE4F6885B033D7D23FEF69J0LLVG_Tt0g5(v3);
    if (v4)
    {
      v5 = *(v4 + 80);
      v8 = v4[9];
      if ((v5 & 1) == 0)
      {
        goto LABEL_7;
      }
    }
  }

  v6 = 0;
  v7 = 1;
LABEL_8:
  *a1 = v6;
  a1[1] = v7;
}

double EnvironmentValues.accessibilitySettingsDefinition.setter(unsigned __int8 *a1)
{
  v2 = v1;
  if (a1[1])
  {
    v3 = *v1;
    swift_retain_n();
    v4 = v1;
    v5 = 0;
    v6 = 1;
  }

  else
  {
    v7 = *a1;
    if (v7 == 1)
    {
      v8 = &static PlatformAccessibilitySettingsDefinition.appKit;
    }

    else
    {
      v8 = &static PlatformAccessibilitySettingsDefinition.uiKit;
    }

    swift_beginAccess();
    v9 = *v8;
    if (v9)
    {

      os_unfair_lock_lock(v9 + 4);
      os_unfair_lock_opaque = v9[8]._os_unfair_lock_opaque;
      os_unfair_lock_unlock(v9 + 4);

      v11 = os_unfair_lock_opaque << 32;
    }

    else
    {
      v11 = 0;
    }

    v3 = *v2;
    swift_retain_n();
    v5 = v11 | v7;
    v4 = v2;
    v6 = 0;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA031AccessibilitySettingsDefinitionF033_DD012B99EE4F6885B033D7D23FEF69C0LLVG_Tt2B5(v4, v5, v6);

  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA031AccessibilitySettingsDefinitionK033_DD012B99EE4F6885B033D7D23FEF69C0LLVG_Ttg5(v3, *v2);
  }

  return result;
}

double (*EnvironmentValues.accessibilitySettingsDefinition.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *v1;
  if (*(v1 + 8))
  {

    v4 = v9;
    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA031AccessibilitySettingsDefinitionI033_DD012B99EE4F6885B033D7D23FEF69C0LLVG_Tt1g5(v3, v9);

    if ((v9[8] & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA031AccessibilitySettingsDefinitionS0031_DD012B99EE4F6885B033D7D23FEF69J0LLVG_Tt0g5(v3);
    if (v5 && (v5[10] & 1) == 0)
    {
      v4 = (v5 + 9);
LABEL_8:
      v7 = 0;
      v6 = *v4;
      goto LABEL_9;
    }
  }

  v6 = 0;
  v7 = 1;
LABEL_9:
  *(a1 + 8) = v6;
  *(a1 + 9) = v7;
  return EnvironmentValues.accessibilitySettingsDefinition.modify;
}

double EnvironmentValues.accessibilitySettingsDefinition.modify(uint64_t a1, char a2)
{
  v2 = *(a1 + 9);
  if (a2)
  {
    v5[0] = *(a1 + 8);
    v5[1] = v2;
    v3 = v5;
  }

  else
  {
    v6[0] = *(a1 + 8);
    v6[1] = v2;
    v3 = v6;
  }

  return EnvironmentValues.accessibilitySettingsDefinition.setter(v3);
}

Swift::Bool __swiftcall EnvironmentValues.accessibilitySettingEnabled(_:)(SwiftUI::PlatformAccessibilitySettingsDefinition::Setting a1)
{
  v2 = *a1;
  v3 = *v1;
  if (*(v1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA031AccessibilitySettingsDefinitionI033_DD012B99EE4F6885B033D7D23FEF69C0LLVG_Tt1g5(v3, &v10);

    if (v11)
    {
LABEL_11:
      v7 = 0;
      return v7 & 1;
    }
  }

  else
  {
    v4 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA031AccessibilitySettingsDefinitionS0031_DD012B99EE4F6885B033D7D23FEF69J0LLVG_Tt0g5(v3);
    if (!v4)
    {
      goto LABEL_11;
    }

    v5 = *(v4 + 80);
    v10 = v4[9];
    if (v5)
    {
      goto LABEL_11;
    }
  }

  if (v10 == 1)
  {
    v6 = &static PlatformAccessibilitySettingsDefinition.appKit;
  }

  else
  {
    v6 = &static PlatformAccessibilitySettingsDefinition.uiKit;
  }

  swift_beginAccess();
  if (!*v6)
  {
    goto LABEL_11;
  }

  v9 = v2;

  v7 = PlatformAccessibilitySettingsDefinition.isEnabled(setting:)(&v9);

  return v7 & 1;
}

uint64_t PlatformAccessibilitySettingsDefinition.enabledTechnologies.getter()
{
  v0 = 0;
  v1 = MEMORY[0x1E69E7CC0];
  do
  {
    v4 = outlined read-only object #0 of PlatformAccessibilitySettingsDefinition.enabledTechnologies.getter[v0 + 32];
    v7 = v4 + 15;
    if (PlatformAccessibilitySettingsDefinition.isEnabled(setting:)(&v7))
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = v1;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v1 + 16) + 1, 1);
        v1 = v8;
      }

      v3 = *(v1 + 16);
      v2 = *(v1 + 24);
      if (v3 >= v2 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v2 > 1), v3 + 1, 1);
        v1 = v8;
      }

      *(v1 + 16) = v3 + 1;
      *(v1 + v3 + 32) = v4;
    }

    ++v0;
  }

  while (v0 != 5);
  return v1;
}

uint64_t one-time initialization function for focusSupportingTechnologies()
{
  result = closure #1 in variable initialization expression of static AccessibilityEnabledTechnology.focusSupportingTechnologies();
  static AccessibilityEnabledTechnology.focusSupportingTechnologies = result;
  return result;
}

uint64_t closure #1 in variable initialization expression of static AccessibilityEnabledTechnology.focusSupportingTechnologies()
{
  v6 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1);
  v0 = v6;
  v2 = *(v6 + 16);
  v1 = *(v6 + 24);
  if (v2 >= v1 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v1 > 1), v2 + 1, 1);
    v0 = v6;
  }

  *(v0 + 16) = v2 + 1;
  *(v0 + v2 + 32) = 0;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v0 + 16) + 1, 1);
    v0 = v6;
  }

  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  if (v4 >= v3 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v3 > 1), v4 + 1, 1);
    v0 = v6;
  }

  *(v0 + 16) = v4 + 1;
  *(v0 + v4 + 32) = 1;
  return v0;
}

double static AccessibilityEnabledTechnology.focusSupportingTechnologies.getter()
{
  if (one-time initialization token for focusSupportingTechnologies != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t AccessibilityEnabledTechnology.mask.getter()
{
  v1 = *v0;
  if (v1 <= 0xF)
  {
    return (1 << (v1 & 0xF));
  }

  else
  {
    return 0;
  }
}

SwiftUI::AccessibilityEnabledTechnology_optional __swiftcall AccessibilityEnabledTechnology.init(rawValue:)(Swift::UInt16 rawValue)
{
  v2 = rawValue;
  if (rawValue >= 5u)
  {
    v2 = 5;
  }

  *v1 = v2;
  return rawValue;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AccessibilityEnabledTechnology()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*v0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AccessibilityEnabledTechnology(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*v1);
  return Hasher._finalize()();
}

void lazy protocol witness table accessor for type PlatformAccessibilitySettingsDefinition.Setting and conformance PlatformAccessibilitySettingsDefinition.Setting()
{
  if (!lazy protocol witness table cache variable for type PlatformAccessibilitySettingsDefinition.Setting and conformance PlatformAccessibilitySettingsDefinition.Setting)
  {
    swift_getWitnessTable(protocol conformance descriptor for PlatformAccessibilitySettingsDefinition.Setting, &type metadata for PlatformAccessibilitySettingsDefinition.Setting, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type PlatformAccessibilitySettingsDefinition.Setting and conformance PlatformAccessibilitySettingsDefinition.Setting);
  }
}

void lazy protocol witness table accessor for type [AccessibilityEnabledTechnology] and conformance [A]()
{
  if (!lazy protocol witness table cache variable for type [AccessibilityEnabledTechnology] and conformance [A])
  {
    type metadata accessor for [AccessibilityEnabledTechnology](255, &lazy cache variable for type metadata for [AccessibilityEnabledTechnology], &type metadata for AccessibilityEnabledTechnology, MEMORY[0x1E69E62F8]);
    swift_getWitnessTable(MEMORY[0x1E69E6340], v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type [AccessibilityEnabledTechnology] and conformance [A]);
  }
}

void lazy protocol witness table accessor for type AccessibilityEnabledTechnology and conformance AccessibilityEnabledTechnology()
{
  if (!lazy protocol witness table cache variable for type AccessibilityEnabledTechnology and conformance AccessibilityEnabledTechnology)
  {
    swift_getWitnessTable(protocol conformance descriptor for AccessibilityEnabledTechnology, &type metadata for AccessibilityEnabledTechnology, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AccessibilityEnabledTechnology and conformance AccessibilityEnabledTechnology);
  }
}

void type metadata accessor for [AccessibilityEnabledTechnology](uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for PlatformAccessibilitySettingsDefinition.Setting(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PlatformAccessibilitySettingsDefinition.Setting(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t assignWithCopy for PlatformAccessibilitySettingsDefinition.Entry(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  *(a1 + 8) = v5;
  v6 = v5;

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t assignWithTake for PlatformAccessibilitySettingsDefinition.Entry(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t getEnumTagSinglePayload for PlatformAccessibilitySettingsDefinition.Entry(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for PlatformAccessibilitySettingsDefinition.Entry(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

float *Color.ResolvedHDR.encode(to:)(float *result)
{
  v2 = v1;
  v3 = result;
  v5 = *v2;
  v4 = v2[1];
  v7 = v2[2];
  v6 = v2[3];
  if (*v2 != 0.0)
  {
    ProtobufEncoder.encodeVarint(_:)(0xDuLL);
    v8 = *(v3 + 1);
    result = (v8 + 4);
    if (__OFADD__(v8, 4))
    {
      __break(1u);
      goto LABEL_26;
    }

    if (*(v3 + 2) < result)
    {
      goto LABEL_28;
    }

    *(v3 + 1) = result;
    *(*v3 + v8) = v5;
  }

  if (v4 != 0.0)
  {
    goto LABEL_6;
  }

  while (1)
  {
    while (1)
    {
LABEL_9:
      if (v7 == 0.0)
      {
        goto LABEL_13;
      }

      ProtobufEncoder.encodeVarint(_:)(0x1DuLL);
      v10 = *(v3 + 1);
      result = (v10 + 4);
      if (!__OFADD__(v10, 4))
      {
        break;
      }

      while (1)
      {
        __break(1u);
LABEL_28:
        result = ProtobufEncoder.growBufferSlow(to:)(result);
        *result = v5;
        if (v4 == 0.0)
        {
          break;
        }

LABEL_6:
        ProtobufEncoder.encodeVarint(_:)(0x15uLL);
        v9 = *(v3 + 1);
        result = (v9 + 4);
        if (!__OFADD__(v9, 4))
        {
          if (*(v3 + 2) < result)
          {
            goto LABEL_31;
          }

          *(v3 + 1) = result;
          *(*v3 + v9) = v4;
          goto LABEL_9;
        }

LABEL_26:
        __break(1u);
      }
    }

    if (*(v3 + 2) < result)
    {
      result = ProtobufEncoder.growBufferSlow(to:)(result);
      *result = v7;
    }

    else
    {
      *(v3 + 1) = result;
      *(*v3 + v10) = v7;
    }

LABEL_13:
    if (v6 == 1.0)
    {
      goto LABEL_17;
    }

    ProtobufEncoder.encodeVarint(_:)(0x25uLL);
    v11 = *(v3 + 1);
    result = (v11 + 4);
    if (!__OFADD__(v11, 4))
    {
      break;
    }

    __break(1u);
LABEL_31:
    result = ProtobufEncoder.growBufferSlow(to:)(result);
    *result = v4;
  }

  if (*(v3 + 2) < result)
  {
    result = ProtobufEncoder.growBufferSlow(to:)(result);
    *result = v6;
  }

  else
  {
    *(v3 + 1) = result;
    *(*v3 + v11) = v6;
  }

LABEL_17:
  v12 = v2[4];
  if (v12 != 0.0)
  {
    ProtobufEncoder.encodeVarint(_:)(0x2DuLL);
    v13 = *(v3 + 1);
    v14 = v13 + 4;
    if (__OFADD__(v13, 4))
    {
      __break(1u);
    }

    else if (*(v3 + 2) >= v14)
    {
      *(v3 + 1) = v14;
      result = (*v3 + v13);
      goto LABEL_21;
    }

    result = ProtobufEncoder.growBufferSlow(to:)(v14);
LABEL_21:
    *result = v12;
  }

  return result;
}

__n128 Color.init(_:)(__n128 *a1)
{
  v2 = a1[1].n128_u32[0];
  type metadata accessor for ColorBox<ResolvedColorProvider>(0, &lazy cache variable for type metadata for ColorBox<ResolvedColorProvider>, lazy protocol witness table accessor for type ResolvedColorProvider and conformance ResolvedColorProvider, &type metadata for ResolvedColorProvider, type metadata accessor for ColorBox);
  v3 = swift_allocObject();
  result = *a1;
  v3[1] = *a1;
  v3[2].n128_u32[0] = v2;
  return result;
}

uint64_t Color.ResolvedHDR.description.getter()
{
  Color.Resolved.description.getter(*v0, v0[1], v0[2], v0[3]);
  v3 = v1;
  MEMORY[0x193ABEDD0](94, 0xE100000000000000);
  Float.write<A>(to:)();
  MEMORY[0x193ABEDD0](0, 0xE000000000000000);

  return v3;
}

float Color.ResolvedHDR.multiplyingOpacity(by:)@<S0>(uint64_t a1@<X8>, float a2@<S0>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 8);
  result = *(v2 + 12) * a2;
  *a1 = *v2;
  *(a1 + 8) = v4;
  *(a1 + 12) = result;
  *(a1 + 16) = v3;
  return result;
}

void static Color.ResolvedHDR._Animatable.zero.getter(float32x4_t *a1@<X8>)
{
  if (one-time initialization token for legacyInterpolation != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = 0uLL;
  if ((static Color.Resolved.legacyInterpolation & 1) == 0)
  {
    ResolvedGradient.ColorSpace.convertIn(_:)(&v4, 0.0, 0, 0.0, 0.0);
    v3.i64[0] = 0x4300000043000000;
    v3.i64[1] = 0x4300000043000000;
    v2 = vmulq_f32(v4, v3);
  }

  *a1 = v2;
  a1[1].i32[0] = 0;
}

float32x4_t *static Color.ResolvedHDR._Animatable.- infix(_:_:)@<X0>(float32x4_t *result@<X0>, float32x4_t *a2@<X1>, float32x4_t *a3@<X8>)
{
  v3 = result[1].f32[0];
  if (v3 <= a2[1].f32[0])
  {
    v3 = a2[1].f32[0];
  }

  *a3 = vsubq_f32(*result, *a2);
  a3[1].f32[0] = v3;
  return result;
}

uint64_t Color.ResolvedHDR.encode(to:)(void *a1)
{
  v3 = v1;
  type metadata accessor for ColorBox<ResolvedColorProvider>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Color.ResolvedHDR.CodingKeys>, lazy protocol witness table accessor for type Color.ResolvedHDR.CodingKeys and conformance Color.ResolvedHDR.CodingKeys, &unk_1F007B5A0, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Color.ResolvedHDR.CodingKeys and conformance Color.ResolvedHDR.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = 0;
  lazy protocol witness table accessor for type Color.Resolved and conformance Color.Resolved();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v7 + 8))(v9, v6);
}

double Color.ResolvedHDR.init(from:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  specialized Color.ResolvedHDR.init(from:)(a1, &v5);
  if (!v2)
  {
    result = *&v5;
    *a2 = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

void Color.ResolvedHDR.base.setter(float a1, float a2, float a3, float a4)
{
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
}

void Color.ResolvedHDR.red.getter()
{
  v1 = -*v0;
  if (*v0 > 0.0)
  {
    v1 = *v0;
  }

  if (v1 > 0.0031308 && v1 != 1.0)
  {
    powf(v1, 0.41667);
  }
}

void Color.ResolvedHDR.green.getter()
{
  v1 = *(v0 + 4);
  v2 = -v1;
  if (v1 > 0.0)
  {
    v2 = *(v0 + 4);
  }

  if (v2 > 0.0031308 && v2 != 1.0)
  {
    powf(v2, 0.41667);
  }
}

void Color.ResolvedHDR.blue.getter()
{
  v1 = *(v0 + 8);
  v2 = -v1;
  if (v1 > 0.0)
  {
    v2 = *(v0 + 8);
  }

  if (v2 > 0.0031308 && v2 != 1.0)
  {
    powf(v2, 0.41667);
  }
}

void Color.ResolvedHDR.map(_:)(float (*a1)(float, float, float, float)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  *a2 = a1(*v2, *(v2 + 4), *(v2 + 8), *(v2 + 12));
  *(a2 + 4) = v5;
  *(a2 + 8) = v6;
  *(a2 + 12) = v7;
  *(a2 + 16) = v4;
}

Swift::Int Color.ResolvedHDR.hashValue.getter()
{
  Hasher.init(_seed:)();
  Color.ResolvedHDR.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Color.ResolvedHDR()
{
  Hasher.init(_seed:)();
  Color.ResolvedHDR.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Color.ResolvedHDR(uint64_t a1)
{
  Hasher.init(_seed:)();
  Color.ResolvedHDR.hash(into:)();
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance Color.ResolvedHDR(__int128 *a1, __int128 *a2)
{
  v3 = *a1;
  v4 = *(a1 + 4);
  v5 = *a2;
  v6 = *(a2 + 4);
  return specialized static Color.ResolvedHDR.== infix(_:_:)(&v3, &v5);
}

void static Color.ResolvedHDR.clear.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 2143289344;
}

double static Color.ResolvedHDR.black.getter@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_18DD85540;
  *(a1 + 16) = 2143289344;
  return result;
}

__n128 static Color.ResolvedHDR.white.getter@<Q0>(__n128 *a1@<X8>)
{
  __asm { FMOV            V0.4S, #1.0 }

  *a1 = result;
  a1[1].n128_u32[0] = 2143289344;
  return result;
}

void Color.ResolvedHDR._apply(to:)(uint64_t a1)
{
  if (*(a1 + 24) <= 2u)
  {
    v3 = *a1;
    if (*(a1 + 24))
    {
      if (*(a1 + 24) == 1)
      {
        v4 = *(a1 + 8);
        if (v4 == *(a1 + 16))
        {
          return;
        }

        v5 = *v1;
        v6 = *(v1 + 2);
        v7 = *(v1 + 3);
        if (v4 >= 1)
        {
          v8 = *(a1 + 48);
          v9 = *(a1 + 56);
          if (v9)
          {
            v10 = v1;

            v11 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA021SystemColorDefinitionI033_9E3352CE4697DF56A738786E16992848LLVG_Tt1g5(v8);
            v13 = v12;
          }

          else
          {
            v10 = v1;
            v34 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA021SystemColorDefinitionS033_9E3352CE4697DF56A738786E16992848LLVG_Tt0g5(*(a1 + 48));
            if (v34)
            {
              v11 = v34[9];
              v13 = v34[10];
            }

            else
            {
              v13 = &protocol witness table for CoreUIDefaultSystemColorDefinition;
              v11 = &type metadata for CoreUIDefaultSystemColorDefinition;
            }
          }

          v50 = v8;
          v51 = v9;
          v44 = v13[2];

          v45 = v44(v4, &v50, v11, v13);

          v7 = v7 * v45;
          v1 = v10;
        }

        v46 = *(v1 + 4);
        v50 = v5;
        v51 = __PAIR64__(LODWORD(v7), v6);
        v52 = v46;
        v53 = 0;
        v54 = 1065353216;
        v55 = 0;
        v56 = -1;
        v47 = MEMORY[0x1E69E7CC0];
        v57 = MEMORY[0x1E69E7CC0];
        v49 = v3;
        if (*(a1 + 40) == 1)
        {
          v47 = *(a1 + 32);

          outlined consume of _ShapeStyle_Shape.Result(v48, 1u);
          *(a1 + 32) = 0;
          *(a1 + 40) = 5;
        }

        _ShapeStyle_Pack.subscript.setter(&v50, &v49, v4);
        outlined consume of _ShapeStyle_Shape.Result(*(a1 + 32), *(a1 + 40));
        *(a1 + 32) = v47;
        v43 = 1;
      }

      else
      {
        v23 = *v1;
        v24 = *(v1 + 2);
        v25 = *(v1 + 3);
        if (v3 >= 1)
        {
          v26 = *(a1 + 48);
          v27 = *(a1 + 56);
          if (v27)
          {
            v28 = v1;

            v29 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA021SystemColorDefinitionI033_9E3352CE4697DF56A738786E16992848LLVG_Tt1g5(v26);
            v31 = v30;
          }

          else
          {
            v28 = v1;
            v33 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA021SystemColorDefinitionS033_9E3352CE4697DF56A738786E16992848LLVG_Tt0g5(*(a1 + 48));
            if (v33)
            {
              v29 = v33[9];
              v31 = v33[10];
            }

            else
            {
              v31 = &protocol witness table for CoreUIDefaultSystemColorDefinition;
              v29 = &type metadata for CoreUIDefaultSystemColorDefinition;
            }
          }

          v50 = v26;
          v51 = v27;
          v39 = v31[2];

          v40 = v39(v3, &v50, v29, v31);

          v25 = v25 * v40;
          v1 = v28;
        }

        v41 = *(v1 + 4);
        type metadata accessor for ColorBox<ResolvedColorProvider>(0, &lazy cache variable for type metadata for ColorBox<ResolvedColorProvider>, lazy protocol witness table accessor for type ResolvedColorProvider and conformance ResolvedColorProvider, &type metadata for ResolvedColorProvider, type metadata accessor for ColorBox);
        v42 = swift_allocObject();
        *(v42 + 16) = v23;
        *(v42 + 24) = v24;
        *(v42 + 28) = v25;
        *(v42 + 32) = v41;
        outlined consume of _ShapeStyle_Shape.Result(*(a1 + 32), *(a1 + 40));
        *(a1 + 32) = v42;
        v43 = 3;
      }

      *(a1 + 40) = v43;
    }

    else
    {
      v14 = *v1;
      v15 = *(v1 + 2);
      v16 = *(v1 + 3);
      if (v3 >= 1)
      {
        v17 = *(a1 + 48);
        v18 = *(a1 + 56);
        if (v18)
        {
          v19 = v1;

          v20 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA021SystemColorDefinitionI033_9E3352CE4697DF56A738786E16992848LLVG_Tt1g5(v17);
          v22 = v21;
        }

        else
        {
          v19 = v1;
          v32 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA021SystemColorDefinitionS033_9E3352CE4697DF56A738786E16992848LLVG_Tt0g5(*(a1 + 48));
          if (v32)
          {
            v20 = v32[9];
            v22 = v32[10];
          }

          else
          {
            v22 = &protocol witness table for CoreUIDefaultSystemColorDefinition;
            v20 = &type metadata for CoreUIDefaultSystemColorDefinition;
          }
        }

        v50 = v17;
        v51 = v18;
        v35 = v22[2];

        v36 = v35(v3, &v50, v20, v22);

        v16 = v16 * v36;
        v1 = v19;
      }

      v37 = *(v1 + 4);
      type metadata accessor for ColorBox<ResolvedColorProvider>(0, &lazy cache variable for type metadata for ColorBox<ResolvedColorProvider>, lazy protocol witness table accessor for type ResolvedColorProvider and conformance ResolvedColorProvider, &type metadata for ResolvedColorProvider, type metadata accessor for ColorBox);
      v38 = swift_allocObject();
      *(v38 + 16) = v14;
      *(v38 + 24) = v15;
      *(v38 + 28) = v16;
      *(v38 + 32) = v37;
      outlined consume of _ShapeStyle_Shape.Result(*(a1 + 32), *(a1 + 40));
      *(a1 + 32) = v38;
      *(a1 + 40) = 0;
    }
  }
}

void (*Color.ResolvedHDR.animatableData.modify(float32x4_t **a1))(float32x4_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[1].i64[1] = v1;
  v9 = *v1;
  v5 = v1[1].i32[0];
  if (one-time initialization token for legacyInterpolation != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (static Color.Resolved.legacyInterpolation)
  {
    v6 = v9;
  }

  else
  {
    ResolvedGradient.ColorSpace.convertIn(_:)(&v10, v9.f32[0], v9.u32[1], v9.f32[2], v9.f32[3]);
    v6 = v10;
  }

  v7.i64[0] = 0x4300000043000000;
  v7.i64[1] = 0x4300000043000000;
  v4[2] = vmulq_f32(v6, v7);
  v4[3].i32[0] = v5;
  return Color.ResolvedHDR.animatableData.modify;
}

void Color.ResolvedHDR.animatableData.modify(float32x4_t **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[3].i32[0];
    v5 = v2[2];
    v6 = v3;
    v4 = &v5;
  }

  else
  {
    v4 = v2 + 2;
  }

  Color.ResolvedHDR.animatableData.setter(v4);

  free(v2);
}

float32x4_t *static Color.ResolvedHDR._Animatable.+ infix(_:_:)@<X0>(float32x4_t *result@<X0>, float32x4_t *a2@<X1>, float32x4_t *a3@<X8>)
{
  v3 = result[1].f32[0];
  if (v3 <= a2[1].f32[0])
  {
    v3 = a2[1].f32[0];
  }

  *a3 = vaddq_f32(*result, *a2);
  a3[1].f32[0] = v3;
  return result;
}

float32x4_t protocol witness for VectorArithmetic.scale(by:) in conformance Color.ResolvedHDR._Animatable(double a1)
{
  v2 = a1;
  result = vmulq_n_f32(*v1, v2);
  *v1 = result;
  return result;
}

uint64_t (*protocol witness for Animatable.animatableData.modify in conformance Color.ResolvedHDR(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  *v3 = v1;
  v4 = *v1;
  *(v3 + 24) = *(v1 + 4);
  *(v3 + 8) = v4;
  Color.ResolvedHDR.animatableData.getter((v3 + 28));
  return protocol witness for Animatable.animatableData.modify in conformance Color.ResolvedHDR;
}

void protocol witness for Animatable.animatableData.modify in conformance Color.ResolvedHDR(void *a1, char a2)
{
  v2 = *a1;
  v3 = (*a1 + 28);
  if (a2)
  {
    v4 = *(v2 + 44);
    v5 = *(v2 + 28);
    v6 = v4;
    v3 = &v5;
  }

  Color.ResolvedHDR.animatableData.setter(v3);

  free(v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Color.ResolvedHDR()
{
  Color.Resolved.description.getter(*v0, v0[1], v0[2], v0[3]);
  v3 = v1;
  MEMORY[0x193ABEDD0](94, 0xE100000000000000);
  Float.write<A>(to:)();
  MEMORY[0x193ABEDD0](0, 0xE000000000000000);

  return v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance Color.ResolvedHDR.CodingKeys()
{
  if (*v0)
  {
    return 0x6D6F6F7264616568;
  }

  else
  {
    return 0x726F6C6F63;
  }
}

void protocol witness for CodingKey.init(stringValue:) in conformance Color.ResolvedHDR.CodingKeys(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726F6C6F63 && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6D6F6F7264616568 && a2 == 0xE800000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Color.ResolvedHDR.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Color.ResolvedHDR.CodingKeys and conformance Color.ResolvedHDR.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Color.ResolvedHDR.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Color.ResolvedHDR.CodingKeys and conformance Color.ResolvedHDR.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double protocol witness for Decodable.init(from:) in conformance Color.ResolvedHDR@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  specialized Color.ResolvedHDR.init(from:)(a1, &v5);
  if (!v2)
  {
    result = *&v5;
    *a2 = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

double Color.ResolvedHDR.init(from:)@<D0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  specialized Color.ResolvedHDR.init(from:)(a1, &v5);
  if (!v2)
  {
    result = *&v5;
    *a2 = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

double protocol witness for ProtobufDecodableMessage.init(from:) in conformance Color.ResolvedHDR@<D0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  specialized Color.ResolvedHDR.init(from:)(a1, &v5);
  if (!v2)
  {
    result = *&v5;
    *a2 = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

float32x4_t *specialized static Color.ResolvedHDR._Animatable.+= infix(_:_:)(float32x4_t *result, float32x4_t *a2)
{
  v2 = a2[1].f32[0];
  *result = vaddq_f32(*a2, *result);
  if (result[1].f32[0] > v2)
  {
    v2 = result[1].f32[0];
  }

  result[1].f32[0] = v2;
  return result;
}

void lazy protocol witness table accessor for type Color.ResolvedHDR.CodingKeys and conformance Color.ResolvedHDR.CodingKeys()
{
  if (!lazy protocol witness table cache variable for type Color.ResolvedHDR.CodingKeys and conformance Color.ResolvedHDR.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ResolvedHDR.CodingKeys, &unk_1F007B5A0, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ResolvedHDR.CodingKeys and conformance Color.ResolvedHDR.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.ResolvedHDR.CodingKeys and conformance Color.ResolvedHDR.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ResolvedHDR.CodingKeys, &unk_1F007B5A0, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ResolvedHDR.CodingKeys and conformance Color.ResolvedHDR.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.ResolvedHDR.CodingKeys and conformance Color.ResolvedHDR.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ResolvedHDR.CodingKeys, &unk_1F007B5A0, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ResolvedHDR.CodingKeys and conformance Color.ResolvedHDR.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.ResolvedHDR.CodingKeys and conformance Color.ResolvedHDR.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ResolvedHDR.CodingKeys, &unk_1F007B5A0, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ResolvedHDR.CodingKeys and conformance Color.ResolvedHDR.CodingKeys);
  }
}

uint64_t specialized Color.ResolvedHDR.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  type metadata accessor for ColorBox<ResolvedColorProvider>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Color.ResolvedHDR.CodingKeys>, lazy protocol witness table accessor for type Color.ResolvedHDR.CodingKeys and conformance Color.ResolvedHDR.CodingKeys, &unk_1F007B5A0, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Color.ResolvedHDR.CodingKeys and conformance Color.ResolvedHDR.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v15;
  v16 = 0;
  lazy protocol witness table accessor for type Color.Resolved and conformance Color.Resolved();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v10 = v17;
  v11 = v18;
  LOBYTE(v17) = 1;
  v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  if ((v13 & 0x100000000) != 0)
  {
    v14 = NAN;
  }

  else
  {
    v14 = *&v13;
  }

  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *v9 = v10;
  *(v9 + 8) = v11;
  *(v9 + 16) = v14;
  return result;
}

void type metadata accessor for ColorBox<ResolvedColorProvider>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t PlatformItemsReader.content.getter()
{
  v1 = *v0;

  return v1;
}

void PlatformItemsReader.content.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t PlatformItemsReader.source.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 68);
  v6 = type metadata accessor for ZStack(0, *(a1 + 32), *(a1 + 56), a2);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

uint64_t PlatformItemsReader.source.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 68);
  v7 = type metadata accessor for ZStack(0, *(a2 + 32), *(a2 + 56), a4);
  v8 = *(*(v7 - 8) + 40);

  return v8(v4 + v6, a1, v7);
}

uint64_t PlatformItemsReader.init(for:content:source:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, void *a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *a7 = a2;
  a7[1] = a3;
  v14 = one-time initialization token for center;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = static Alignment.center;
  v19[0] = a4;
  v19[1] = a5;
  v19[2] = a6;
  v19[3] = a8;
  v19[4] = a9;
  v19[5] = a10;
  v16 = type metadata accessor for PlatformItemsReader(0, v19);
  ZStack.init(alignment:content:)(v15, *(&v15 + 1), a6, a7 + *(v16 + 68));

  return (*(*(a4 - 8) + 8))(a1, a4);
}

uint64_t closure #1 in PlatformItemsReader.init(for:content:source:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - v11;
  v13(v10);
  static ViewBuilder.buildExpression<A>(_:)();
  v14 = *(v6 + 8);
  v14(v8, a5);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v14)(v12, a5);
}

void *static PlatformItemsReader._makeView(view:inputs:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v57 = a9;
  v131 = *MEMORY[0x1E69E9840];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  v56 = &v52 - v18;
  *&v125 = a3;
  *(&v125 + 1) = a4;
  *&v126 = a5;
  *(&v126 + 1) = a6;
  *&v127 = a7;
  *(&v127 + 1) = a8;
  v19 = type metadata accessor for PlatformItemsReader.Child(0, &v125);
  v60 = *(v19 - 8);
  v61 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v54 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v59 = &v52 - v22;
  v23 = *(a2 + 48);
  v127 = *(a2 + 32);
  v128 = v23;
  v129 = *(a2 + 64);
  v24 = *(a2 + 16);
  v125 = *a2;
  v25 = *a1;
  v130 = *(a2 + 80);
  v126 = v24;
  v65 = a3;
  v66 = a4;
  v67 = a5;
  v68 = a6;
  v69 = a7;
  v70 = a8;
  v53 = v25;
  LODWORD(v113) = v25;
  *&v119 = a3;
  v55 = a4;
  *(&v119 + 1) = a4;
  *&v120 = a5;
  *(&v120 + 1) = a6;
  v62 = a7;
  *&v121 = a7;
  *(&v121 + 1) = a8;
  v26 = type metadata accessor for PlatformItemsReader(255, &v119);
  type metadata accessor for _GraphValue(0, v26, v27, v28);
  v58 = a5;
  v52 = type metadata accessor for ZStack(0, a5, a8, v29);
  _GraphValue.subscript.getter(partial apply for closure #1 in static PlatformItemsReader._makeView(view:inputs:), v52, &v119);
  v30 = v119;
  specialized static GraphHost.currentHost.getter();
  v31 = specialized GraphHost.intern<A>(_:for:id:)(MEMORY[0x1E69E7CC0], &type metadata for PreferenceKeys, 0);

  v121 = v127;
  v122 = v128;
  v123 = v129;
  v124 = v130;
  v119 = v125;
  v120 = v126;
  v32 = *(a6 + 32);
  outlined init with copy of _ViewInputs(&v125, &v113);
  v32(&v113, a3, a6);
  if ((v113 & 0x20) == 0)
  {
    v103 = v127;
    v104 = v128;
    v105 = v129;
    v106 = v130;
    v101 = v125;
    v102 = v126;
    _ViewInputs.withoutGeometryDependencies.getter(&v107);
    v115 = v121;
    v116 = v122;
    v117 = v123;
    v118 = v124;
    v113 = v119;
    v114 = v120;
    outlined destroy of _ViewInputs(&v113);
    v121 = v109;
    v122 = v110;
    v123 = v111;
    v124 = v112;
    v119 = v107;
    v120 = v108;
  }

  *&v122 = MEMORY[0x1E69E7CC0];
  DWORD2(v122) = v31;
  (*(a6 + 48))(&v119, a3, a6);
  v115 = v121;
  v116 = v122;
  v117 = v123;
  v118 = v124;
  v113 = v119;
  v114 = v120;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v97 = v115;
  v98 = v116;
  v99 = v117;
  v100 = v118;
  v95 = v113;
  v96 = v114;
  v106 = v118;
  v34 = v115;
  LODWORD(v97) = 0;
  LODWORD(v87[0]) = v30;
  v101 = v113;
  v102 = v114;
  v104 = v116;
  v105 = v117;
  v103 = v97;
  v91 = v97;
  v92 = v116;
  v93 = v117;
  v94 = v118;
  v89 = v113;
  v90 = v114;
  outlined init with copy of _ViewInputs(&v113, &v107);
  outlined init with copy of _ViewInputs(&v101, &v107);
  static ZStack._makeView(view:inputs:)(v87, &v89, v58, a8, v64);
  v109 = v91;
  v110 = v92;
  v111 = v93;
  v112 = v94;
  v107 = v89;
  v108 = v90;
  outlined destroy of _ViewInputs(&v107);
  LODWORD(v97) = v34;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(v64, &v95);
    AGSubgraphEndTreeElement();
  }

  v91 = v97;
  v92 = v98;
  v93 = v99;
  v94 = v100;
  v89 = v95;
  v90 = v96;
  outlined destroy of _ViewInputs(&v89);
  v87[0] = v64[0];
  v35 = (*(a6 + 56))(v87, a3, a6);

  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v37 = v56;
  (*(a6 + 16))(a3, a6);
  v38 = v59;
  v39 = v37;
  v40 = v55;
  PlatformItemsReader.Child.init(content:viewContent:oldContent:)(v35, OffsetAttribute2, v39, a3, v55, v58, a6, v62, v59, a8);
  v41 = v54;
  v42 = v38;
  v43 = v61;
  (*(v60 + 16))(v54, v42, v61);
  swift_getWitnessTable(protocol conformance descriptor for PlatformItemsReader<A, B, C>.Child, v43);
  _GraphValue.init<A>(_:)(v41, v40, v43, v44, &v63);
  v45 = v63;
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v81 = v127;
  v82 = v128;
  v83 = v129;
  v84 = v130;
  v79 = v125;
  v80 = v126;
  v46 = v127;
  LODWORD(v81) = 0;
  LODWORD(v71[0]) = v45;
  v85[0] = v125;
  v85[1] = v126;
  v86 = v130;
  v85[3] = v128;
  v85[4] = v129;
  v85[2] = v81;
  v75 = v81;
  v76 = v128;
  v77 = v129;
  v78 = v130;
  v73 = v125;
  v74 = v126;
  v47 = v40;
  v48 = v62;
  v49 = *(v62 + 24);
  outlined init with copy of _ViewInputs(&v125, v87);
  outlined init with copy of _ViewInputs(v85, v87);
  v50 = v57;
  v49(v71, &v73, v47, v48);
  v87[2] = v75;
  v87[3] = v76;
  v87[4] = v77;
  v88 = v78;
  v87[0] = v73;
  v87[1] = v74;
  outlined destroy of _ViewInputs(v87);
  LODWORD(v81) = v46;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(v50, &v79);
    AGSubgraphEndTreeElement();
  }

  (*(v60 + 8))(v59, v61);
  v71[3] = v82;
  v71[4] = v83;
  v72 = v84;
  v71[0] = v79;
  v71[1] = v80;
  v71[2] = v81;
  outlined destroy of _ViewInputs(v71);
  v75 = v121;
  v76 = v122;
  v77 = v123;
  v78 = v124;
  v73 = v119;
  v74 = v120;
  return outlined destroy of _ViewInputs(&v73);
}

uint64_t closure #1 in static PlatformItemsReader._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18[0] = a2;
  v18[1] = a3;
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a6;
  v18[5] = a7;
  v10 = type metadata accessor for PlatformItemsReader(0, v18);
  v11 = *(v10 + 68);
  v16[2] = v10;
  v17 = type metadata accessor for ZStack(0, a4, a7, v12);
  v13 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v11, partial apply for closure #1 in static PointerOffset.of(_:), v16, v17, MEMORY[0x1E69E73E0], v13, MEMORY[0x1E69E7410], v14);
  return v18[0];
}

uint64_t PlatformItemsReader.Child.init(content:viewContent:oldContent:)@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a11)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  v16[0] = a4;
  v16[1] = a5;
  v16[2] = a6;
  v16[3] = a7;
  v16[4] = a8;
  v16[5] = a11;
  v13 = *(type metadata accessor for PlatformItemsReader.Child(0, v16) + 72);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return (*(*(AssociatedTypeWitness - 8) + 32))(&a9[v13], a3, AssociatedTypeWitness);
}

uint64_t PlatformItemsReader.Child.updateValue()(void *a1)
{
  v125 = *MEMORY[0x1E69E9840];
  v109 = type metadata accessor for ObservationTracking._AccessList();
  v121 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v97 = &v92[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v102 = &v92[-v5];
  MEMORY[0x1EEE9AC00](v6);
  v103 = &v92[-v7];
  _s11Observation0A8TrackingV11_AccessListVSgMaTm_2(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0]);
  v100 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v101 = &v92[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v106 = &v92[-v11];
  MEMORY[0x1EEE9AC00](v12);
  v108 = &v92[-v13];
  v120 = a1[3];
  v111 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v99 = &v92[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v107 = &v92[-v17];
  MEMORY[0x1EEE9AC00](v18);
  v110 = &v92[-v19];
  v20 = a1[5];
  v118 = a1;
  v21 = a1[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v96 = type metadata accessor for Optional();
  v95 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v25 = &v92[-v24];
  v26 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v92[-v28];
  v30 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v31);
  v113 = &v92[-v32];
  swift_getFunctionTypeMetadata1();
  Value = AGGraphGetValue();
  v98 = v34;
  v35 = Value[1];
  v104 = *Value;
  v116 = v1;
  v36 = *v1;
  LODWORD(v105) = *MEMORY[0x1E698D3F8];
  v119 = v20;
  v114 = v30;
  v115 = AssociatedTypeWitness;
  v117 = v21;
  v112 = v35;
  if (v36 == v105)
  {
    v37 = v21;
    (*(v26 + 56))(v25, 1, 1, TupleTypeMetadata2);
    v38 = *(TupleTypeMetadata2 + 48);
    v39 = *(v119 + 16);

    v39(v37, v119);
    v40 = v119;
    v41 = v116;
    v29[v38] = 0;
    if ((*(v26 + 48))(v25, 1, TupleTypeMetadata2) != 1)
    {
      (*(v95 + 8))(v25, v96);
    }
  }

  else
  {

    v42 = AGGraphGetValue();
    v44 = v43;
    v45 = *(TupleTypeMetadata2 + 48);
    (*(v30 + 16))(v25, v42, AssociatedTypeWitness);
    v25[v45] = v44 & 1;
    (*(v26 + 56))(v25, 0, 1, TupleTypeMetadata2);
    (*(v26 + 32))(v29, v25, TupleTypeMetadata2);
    v41 = v116;
    v40 = v119;
  }

  v46 = v29[*(TupleTypeMetadata2 + 48)];
  v47 = v113;
  v48 = v115;
  (*(v114 + 32))(v113, v29, v115);
  v49 = (*(v40 + 40))(&v41[*(v118 + 18)], v47);
  v50 = v120;
  OutputValue = AGGraphGetOutputValue();
  v53 = v121;
  v54 = v109;
  if (OutputValue && (v46 & v49 & 1) == 0 && (v98 & 1) == 0)
  {
    v55 = v118[4];
    v56 = v118[6];
    v57 = v118[7];
    goto LABEL_25;
  }

  v94 = v92;
  MEMORY[0x1EEE9AC00](OutputValue);
  v58 = v118;
  *&v92[-80] = v117;
  *&v92[-72] = v50;
  v98 = v58[4];
  *&v92[-64] = v98;
  *&v92[-56] = v119;
  v59 = v58[6];
  v60 = v58[7];
  v96 = v59;
  *&v92[-48] = v59;
  *&v92[-40] = v60;
  v95 = v60;
  v61 = v112;
  *&v92[-32] = v104;
  *&v92[-24] = v61;
  *&v92[-16] = v47;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v62 = static ObservationCenter._current;
  swift_beginAccess();
  v63 = pthread_getspecific(v62[2]);
  v48 = v106;
  if (!v63)
  {
    v49 = swift_slowAlloc();
    pthread_setspecific(v62[2], v49);
    v124 = type metadata accessor for ObservationCenter();
    *&v123 = v62[3];
    outlined init with take of Any(&v123, v49);

    v63 = v49;
  }

  outlined init with copy of Any(v63, &v123);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v64 = v122;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == v105)
  {
    __break(1u);
    goto LABEL_27;
  }

  v93 = CurrentAttribute;
  swift_beginAccess();
  v105 = *(v64 + 24);
  *(v64 + 24) = MEMORY[0x1E69E7CC0];
  v66 = (*(v53 + 56))(v48, 1, 1, v54);
  MEMORY[0x1EEE9AC00](v66);
  *&v92[-32] = v50;
  *&v92[-24] = partial apply for closure #1 in PlatformItemsReader.Child.updateValue();
  *&v92[-16] = &v92[-96];
  v67 = type metadata accessor for Error();
  v68 = v99;
  _ss24withUnsafeMutablePointer2to_q0_xz_q0_SpyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v48, partial apply for closure #1 in ObservationCenter._withObservation<A>(do:), &v92[-48], v100, v67, v50, MEMORY[0x1E69E7288], &v122);
  v104 = 0;
  v69 = v107;
  v41 = *(v111 + 32);
  (v41)(v107, v68, v50);
  v70 = v108;
  outlined init with take of ObservationTracking._AccessList?(v48, v108);
  v71 = v101;
  outlined init with copy of ObservationTracking._AccessList?(v70, v101);
  if ((*(v53 + 48))(v71, 1, v54) != 1)
  {
    v74 = v103;
    v106 = *(v53 + 32);
    (v106)(v103, v71, v54);
    (*(v53 + 16))(v102, v74, v54);
    v49 = *(v64 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v64 + 24) = v49;
    v48 = v115;
    v35 = v116;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_17:
      v77 = v49[2];
      v76 = v49[3];
      if (v77 >= v76 >> 1)
      {
        v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v76 > 1), v77 + 1, 1, v49);
      }

      v49[2] = v77 + 1;
      v53 = v121;
      v54 = v109;
      (v106)(v49 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v121 + 72) * v77, v102, v109);
      *(v64 + 24) = v49;
      (*(v53 + 8))(v103, v54);
      v73 = v118;
      v72 = v108;
      v69 = v107;
      goto LABEL_20;
    }

LABEL_27:
    v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v49[2] + 1, 1, v49);
    *(v64 + 24) = v49;
    goto LABEL_17;
  }

  _s11Observation0A8TrackingV11_AccessListVSgWOhTm_1(v70, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0]);
  v72 = v71;
  v48 = v115;
  v35 = v116;
  v73 = v118;
LABEL_20:
  _s11Observation0A8TrackingV11_AccessListVSgWOhTm_1(v72, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0]);
  (v41)(v110, v69, v120);
  v78 = *(v64 + 24);
  v79 = *(v78 + 16);
  v41 = v35;
  if (v79)
  {
    v121 = *(v53 + 16);
    v80 = v54;
    v81 = v78 + ((*(v53 + 80) + 32) & ~*(v53 + 80));
    v82 = *(v53 + 72);
    v83 = (v53 + 8);
    v109 = v78;

    v84 = v93;
    v85 = v97;
    do
    {
      (v121)(v85, v81, v80);
      ObservationCenter.invalidate<A>(_:onChangeIn:)(v84, v85);
      (*v83)(v85, v80);
      v81 += v82;
      --v79;
    }

    while (v79);

    v48 = v115;
    v41 = v116;
    v73 = v118;
  }

  *(v64 + 24) = v105;

  v87 = MEMORY[0x1EEE9AC00](v86);
  *&v92[-16] = v73;
  swift_getWitnessTable(protocol conformance descriptor for PlatformItemsReader<A, B, C>.Child, v73, v87);
  *&v92[-8] = v88;
  v89 = v110;
  v50 = v120;
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v110, partial apply for closure #1 in StatefulRule.value.setter, &v92[-32], v120, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v90);
  (*(v111 + 8))(v89, v50);
  v47 = v113;
  v55 = v98;
  v56 = v96;
  v57 = v95;
LABEL_25:
  $defer #1 <A, B, C>() in PlatformItemsReader.Child.updateValue()(v41, v47, v117, v50, v55, v119, v56, v57, v52);

  return (*(v114 + 8))(v47, v48);
}

uint64_t $defer #1 <A, B, C>() in PlatformItemsReader.Child.updateValue()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  v14[0] = a3;
  v14[1] = a4;
  v14[2] = a5;
  v14[3] = a6;
  v14[4] = a7;
  v14[5] = a8;
  v11 = *(type metadata accessor for PlatformItemsReader.Child(0, v14) + 72);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return (*(*(AssociatedTypeWitness - 8) + 24))(a1 + v11, a2, AssociatedTypeWitness);
}

uint64_t static PlatformItemTraitWriter._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, _OWORD *))
{
  v3 = *(a2 + 48);
  v6[2] = *(a2 + 32);
  v6[3] = v3;
  v6[4] = *(a2 + 64);
  v7 = *(a2 + 80);
  v4 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v4;
  return a3(a1, v6);
}

void *static PlatformItemTraitWriter._makeViewList(modifier:inputs:body:)@<X0>(__int128 *a2@<X1>, void (*a3)(uint64_t, _DWORD *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v39 = a7;
  v40 = a9;
  v41 = a4;
  v42 = a3;
  v43 = a10;
  v86 = *MEMORY[0x1E69E9840];
  outlined init with copy of _ViewListInputs(a2, v76);
  v15 = a2[1];
  v77[0] = *a2;
  v77[1] = v15;
  v17 = *a2;
  v16 = a2[1];
  v77[2] = a2[2];
  v52 = v17;
  v53 = v16;
  v54 = a2[2];
  outlined init with copy of _GraphInputs(v77, &v80);
  _ViewInputs.init(withoutGeometry:)(&v52, v78);
  v54 = v78[2];
  v55 = v78[3];
  v56 = v78[4];
  v57 = v79;
  v52 = v78[0];
  v53 = v78[1];
  _ViewInputs.withoutGeometryDependencies.getter(&v70);
  outlined destroy of _ViewInputs(v78);
  v37 = a5;
  v38 = a8;
  v18 = *(*(a8 + 8) + 48);
  v36 = *(a8 + 8);
  v18(&v70, a5);
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  _GraphValue.init(_:)(OffsetAttribute2, &v44);
  v20 = v44;
  v82 = v72;
  v83 = v73;
  v84 = v74;
  v85 = v75;
  v80 = v70;
  v81 = v71;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v62 = v82;
  v63 = v83;
  v64 = v84;
  v65 = v85;
  v60 = v80;
  v61 = v81;
  v22 = v82;
  LODWORD(v62) = 0;
  LODWORD(v58[0]) = v20;
  v66[0] = v80;
  v66[1] = v81;
  v67 = v85;
  v66[4] = v84;
  v66[3] = v83;
  v66[2] = v62;
  v54 = v62;
  v55 = v83;
  v56 = v84;
  v57 = v85;
  v52 = v80;
  v53 = v81;
  v23 = *(v43 + 24);
  outlined init with copy of _ViewInputs(&v80, v68);
  outlined init with copy of _ViewInputs(v66, v68);
  v23(v45, v58, &v52, a6, v43);
  v68[2] = v54;
  v68[3] = v55;
  v68[4] = v56;
  v69 = v57;
  v68[0] = v52;
  v68[1] = v53;
  outlined destroy of _ViewInputs(v68);
  LODWORD(v62) = v22;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(v45, &v60);
    AGSubgraphEndTreeElement();
  }

  v58[2] = v62;
  v58[3] = v63;
  v58[4] = v64;
  v59 = v65;
  v58[0] = v60;
  v58[1] = v61;
  outlined destroy of _ViewInputs(v58);
  v24 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA13PlatformItemsV0I033_391C8788DFD73AA8AB21B496A57C73FFLLV_TtB5(v45[0]);
  if ((v24 & 0x100000000) != 0)
  {
    v25 = *MEMORY[0x1E698D3F8];
  }

  else
  {
    LODWORD(v52) = v24;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type _ViewOutputs.FirstItem and conformance _ViewOutputs.FirstItem();
    v25 = Attribute.init<A>(body:value:flags:update:)();
  }

  v26 = *(a2 + 16);
  v27 = (*(v36 + 16))(&v52 + 1, v37);
  *&v52 = __PAIR64__(v26, v25);
  MEMORY[0x1EEE9AC00](v27);
  *&v46 = v37;
  *(&v46 + 1) = a6;
  v28 = v39;
  *&v47 = v39;
  *(&v47 + 1) = v38;
  *&v48 = v43;
  *(&v48 + 1) = a11;
  v29 = type metadata accessor for PlatformItemTraitWriter.AddTrait(0, &v46);
  v35[2] = v29;
  swift_getWitnessTable(protocol conformance descriptor for PlatformItemTraitWriter<A, B, C>.AddTrait, v29);
  v35[3] = v30;
  type metadata accessor for Attribute<ViewTraitCollection>();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v52, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_7, v35, v29, MEMORY[0x1E69E73E0], v31, MEMORY[0x1E69E7410], v32);
  v76[16] = v46;
  v33 = _ViewListInputs.addTraitKey<A>(_:)(v28, v28);
  v42(v33, v76);
  (*(*(v29 - 8) + 8))(&v52, v29);
  outlined destroy of _ViewListInputs(v76);
  v48 = v72;
  v49 = v73;
  v50 = v74;
  v51 = v75;
  v46 = v70;
  v47 = v71;
  return outlined destroy of _ViewInputs(&v46);
}

uint64_t PlatformItemTraitWriter.AddTrait.updateValue()(void *a1)
{
  v2 = v1;
  __dst[79] = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E698D3F8];
  if (*v1 == *MEMORY[0x1E698D3F8])
  {
    bzero(__src, 0x272uLL);
    (*(*(a1[5] + 8) + 16))(__dst);
    BYTE1(__dst[78]) = 0;
    if (__src[0])
    {
      _s11Observation0A8TrackingV11_AccessListVSgWOhTm_1(__src, &lazy cache variable for type metadata for (PlatformItem, Bool)?, type metadata accessor for (PlatformItem, Bool));
    }
  }

  else
  {
    Value = AGGraphGetValue();
    v7 = v6;
    outlined init with copy of PlatformItem(Value, __src);
    BYTE1(__src[78]) = v7 & 1;
    memcpy(__dst, __src, 0x272uLL);
  }

  v8 = BYTE1(__dst[78]);
  memcpy(__src, __dst, 0x271uLL);
  if (v2[1] == v4)
  {
    v9 = 0;
    v10 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v10 = *AGGraphGetValue();
    v9 = v11 & 1;
  }

  v15 = v10;
  v12 = (*(*(a1[5] + 8) + 40))(v2 + 2, __src);
  if (!AGGraphGetOutputValue() || (v8 & v12 & 1) != 0 || v9)
  {
    v13 = a1[4];
    outlined init with copy of PlatformItem(__src, __dst);
    ViewTraitCollection.subscript.setter(__dst, v13, v13, a1[7]);
    __dst[0] = v15;
    AGGraphSetOutputValue();
  }

  outlined assign with copy of PlatformItem(__src, (v2 + 2));
  return outlined destroy of PlatformItem(__src);
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance PlatformItemTraitWriter<A, B, C>.AddTrait(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for PlatformItemTraitWriter<A, B, C>.AddTrait, a1);

  return static AsyncAttribute.flags.getter();
}

uint64_t View.platformItemTrait<A, B, C>(for:strategy:source:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v23 = a7;
  v21 = a2;
  v22 = a3;
  v20 = a1;
  v24[0] = a5;
  v24[1] = a6;
  v24[2] = a4;
  v24[3] = a10;
  v24[4] = a11;
  v24[5] = a9;
  v14 = type metadata accessor for PlatformItemTraitWriter(0, v24);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v19 - v16;
  closure #1 in View.platformItemTrait<A, B, C>(for:strategy:source:)(v20, v21, v22, a4, a5, a6);
  View.modifier<A>(_:)();
  return (*(v15 + 8))(v17, v14);
}

uint64_t closure #1 in View.platformItemTrait<A, B, C>(for:strategy:source:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v17 - v12;
  v14(v11);
  static ViewBuilder.buildExpression<A>(_:)();
  v15 = *(v7 + 8);
  v15(v9, a6);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v15)(v13, a6);
}

void lazy protocol witness table accessor for type _ViewOutputs.FirstItem and conformance _ViewOutputs.FirstItem()
{
  if (!lazy protocol witness table cache variable for type _ViewOutputs.FirstItem and conformance _ViewOutputs.FirstItem)
  {
    swift_getWitnessTable(protocol conformance descriptor for _ViewOutputs.FirstItem, &type metadata for _ViewOutputs.FirstItem, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _ViewOutputs.FirstItem and conformance _ViewOutputs.FirstItem);
  }
}

uint64_t type metadata completion function for PlatformItemsReader(uint64_t a1)
{
  result = type metadata accessor for _VariadicView.Tree(319, &type metadata for _ZStackLayout, *(a1 + 32), &protocol witness table for _ZStackLayout);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for PlatformItemsReader(void *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 32);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (*(v5 + 80) & 0xF8 ^ 0x1F8u) & (v6 + 16);
  v8 = *a2;
  if (v6 <= 7 && (*(v5 + 80) & 0x100000) == 0 && ((-17 - v6) | v6) - *(v5 + 64) - v7 >= 0xFFFFFFFFFFFFFFE7)
  {
    v11 = a2[1];
    *a1 = v8;
    a1[1] = v11;
    v12 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);
    v13 = ((a2 + 23) & 0xFFFFFFFFFFFFFFF8);
    *v12 = *v13;
    v14 = *(v5 + 16);

    v14(v12 + 1, v13 + 1, v4);
  }

  else
  {
    *a1 = v8;
    a1 = (v8 + v7);
  }

  return a1;
}

uint64_t destroy for PlatformItemsReader(uint64_t a1, uint64_t a2)
{

  v4 = *(*(a2 + 32) - 8);
  v5 = *(v4 + 8);
  v6 = (*(v4 + 80) + ((a1 + (*(v4 + 80) | 7) + 16) & ~(*(v4 + 80) | 7)) + 16) & ~*(v4 + 80);

  return v5(v6);
}

void *initializeWithCopy for PlatformItemsReader(void *a1, void *a2, uint64_t a3)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  v5 = *(a3 + 32);
  v6 = *(*(v5 - 8) + 16);
  v7 = *(*(v5 - 8) + 80);
  v8 = (v7 | 7) + 16;
  v9 = ((a1 + v8) & ~(v7 | 7));
  v10 = ((a2 + v8) & ~(v7 | 7));
  *v9 = *v10;
  v11 = v9 + v7 + 16;
  v12 = v10 + v7 + 16;

  v6(v11 & ~v7, v12 & ~v7, v5);
  return a1;
}

void *assignWithCopy for PlatformItemsReader(void *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  *a1 = *a2;
  a1[1] = v6;

  v7 = *(*(a3 + 32) - 8);
  v8 = *(v7 + 24);
  v9 = *(v7 + 80);
  v10 = (v9 | 7) + 16;
  v11 = ((a1 + v10) & ~(v9 | 7));
  v12 = ((a2 + v10) & ~(v9 | 7));
  *v11 = *v12;
  v11[1] = v12[1];
  v8((v11 + v9 + 16) & ~v9, (v12 + v9 + 16) & ~v9);
  return a1;
}

_OWORD *initializeWithTake for PlatformItemsReader(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 32) - 8);
  v5 = *(v4 + 32);
  v6 = *(v4 + 80);
  v7 = (v6 | 7) + 16;
  v8 = ((a1 + v7) & ~(v6 | 7));
  v9 = ((a2 + v7) & ~(v6 | 7));
  *v8 = *v9;
  v5((v8 + v6 + 16) & ~v6, (v9 + v6 + 16) & ~v6);
  return a1;
}

_OWORD *assignWithTake for PlatformItemsReader(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;

  v6 = *(*(a3 + 32) - 8);
  v7 = *(v6 + 40);
  v8 = *(v6 + 80);
  v9 = (v8 | 7) + 16;
  v10 = ((a1 + v9) & ~(v8 | 7));
  v11 = ((a2 + v9) & ~(v8 | 7));
  *v10 = *v11;
  v10[1] = v11[1];
  v7((v10 + v8 + 16) & ~v8, (v11 + v8 + 16) & ~v8);
  return a1;
}

uint64_t getEnumTagSinglePayload for PlatformItemsReader(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 32) - 8);
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

  v8 = v6 | 7;
  v9 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v10 = *(*(*(a3 + 32) - 8) + 64) - (((-17 - v6) | v6) + ((-17 - v6) | v8)) - 2;
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((v6 + ((a1 + v8 + 16) & ~v8) + 16) & ~v6);
      }

      v16 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_26;
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

    if (v10 > 2)
    {
      if (v10 == 3)
      {
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v10) = *a1;
      }
    }

    else if (v10 == 1)
    {
      LODWORD(v10) = *a1;
    }

    else
    {
      LODWORD(v10) = *a1;
    }
  }

  return v7 + (v10 | v15) + 1;
}

void storeEnumTagSinglePayload for PlatformItemsReader(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 32) - 8);
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
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 32) - 8) + 64);
  v11 = v10 + ((v9 + 16) & ~(v9 | 7));
  v12 = a3 >= v8;
  v13 = a3 - v8;
  if (v13 != 0 && v12)
  {
    if (v11 <= 3)
    {
      v17 = ((v13 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
      if (HIWORD(v17))
      {
        v14 = 4;
      }

      else
      {
        if (v17 < 0x100)
        {
          v18 = 1;
        }

        else
        {
          v18 = 2;
        }

        if (v17 >= 2)
        {
          v14 = v18;
        }

        else
        {
          v14 = 0;
        }
      }
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  if (v8 < a2)
  {
    v15 = ~v8 + a2;
    if (v11 < 4)
    {
      v16 = (v15 >> (8 * v11)) + 1;
      if (v11)
      {
        v19 = v15 & ~(-1 << (8 * v11));
        bzero(a1, v11);
        if (v11 != 3)
        {
          if (v11 == 2)
          {
            *a1 = v19;
            if (v14 > 1)
            {
LABEL_57:
              if (v14 == 2)
              {
                *&a1[v11] = v16;
              }

              else
              {
                *&a1[v11] = v16;
              }

              return;
            }
          }

          else
          {
            *a1 = v15;
            if (v14 > 1)
            {
              goto LABEL_57;
            }
          }

          goto LABEL_54;
        }

        *a1 = v19;
        a1[2] = BYTE2(v19);
      }

      if (v14 > 1)
      {
        goto LABEL_57;
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v15;
      v16 = 1;
      if (v14 > 1)
      {
        goto LABEL_57;
      }
    }

LABEL_54:
    if (v14)
    {
      a1[v11] = v16;
    }

    return;
  }

  if (v14 > 1)
  {
    if (v14 != 2)
    {
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v11] = 0;
LABEL_30:
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!v14)
  {
    goto LABEL_30;
  }

  a1[v11] = 0;
  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v20 = (&a1[(v9 | 7) + 16] & ~(v9 | 7));
    if (v7 >= a2)
    {
      v24 = *(v6 + 56);

      v24(&v20[v9 + 16] & ~v9);
    }

    else
    {
      if (v10 <= 3)
      {
        v21 = ~(-1 << (8 * v10));
      }

      else
      {
        v21 = -1;
      }

      if (v10)
      {
        v22 = v21 & (~v7 + a2);
        if (v10 <= 3)
        {
          v23 = v10;
        }

        else
        {
          v23 = 4;
        }

        bzero(v20, v10);
        if (v23 > 2)
        {
          if (v23 == 3)
          {
            *v20 = v22;
            v20[2] = BYTE2(v22);
          }

          else
          {
            *v20 = v22;
          }
        }

        else if (v23 == 1)
        {
          *v20 = v22;
        }

        else
        {
          *v20 = v22;
        }
      }
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *a1 = a2 - 1;
  }
}

uint64_t type metadata completion function for PlatformItemTraitWriter(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

double destroy for PlatformItemTraitWriter.AddTrait(uint64_t a1)
{

  v2 = *(a1 + 40);
  if (v2 != 1)
  {

    v3 = *(a1 + 192);
    if ((v3 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFCLL)
    {
      v4 = *(a1 + 72);
      if (v4 != 255)
      {
        outlined consume of GraphicsImage.Contents(*(a1 + 64), v4);
      }

      if ((v3 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFELL)
      {
        outlined consume of AccessibilityImageLabel(*(a1 + 176), *(a1 + 184), v3, *(a1 + 200));
      }

      swift_unknownObjectRelease();
    }
  }

  if (*(a1 + 312) != 1)
  {
    swift_unknownObjectRelease();
  }

  if (*(a1 + 616))
  {

    v6 = *(a1 + 424);
    if (v6)
    {
      if (v6 == 1)
      {
LABEL_16:
        if (*(a1 + 576) != 1)
        {
        }

        return result;
      }

      __swift_destroy_boxed_opaque_existential_1((a1 + 400));
    }

    goto LABEL_16;
  }

  return result;
}

uint64_t initializeWithCopy for PlatformItemTraitWriter.AddTrait(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v4;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  v5 = (a2 + 40);
  v6 = *(a2 + 40);

  if (v6 == 1)
  {
    v7 = v5[13];
    *(a1 + 232) = v5[12];
    *(a1 + 248) = v7;
    *(a1 + 264) = v5[14];
    v8 = v5[9];
    *(a1 + 168) = v5[8];
    *(a1 + 184) = v8;
    v9 = v5[11];
    *(a1 + 200) = v5[10];
    *(a1 + 216) = v9;
    v10 = v5[5];
    *(a1 + 104) = v5[4];
    *(a1 + 120) = v10;
    v11 = v5[7];
    *(a1 + 136) = v5[6];
    *(a1 + 152) = v11;
    v12 = v5[1];
    *(a1 + 40) = *v5;
    *(a1 + 56) = v12;
    v13 = v5[3];
    *(a1 + 72) = v5[2];
    *(a1 + 88) = v13;
  }

  else
  {
    v14 = *(a2 + 48);
    v15 = *(a2 + 56);
    *(a1 + 40) = v6;
    *(a1 + 48) = v14;
    *(a1 + 56) = v15;
    v16 = *(a2 + 192);
    v17 = v6;
    v18 = v14;
    v19 = v15;
    if (v16 >> 1 == 4294967294)
    {
      v20 = *(a2 + 208);
      *(a1 + 192) = *(a2 + 192);
      *(a1 + 208) = v20;
      *(a1 + 224) = *(a2 + 224);
      *(a1 + 235) = *(a2 + 235);
      v21 = *(a2 + 144);
      *(a1 + 128) = *(a2 + 128);
      *(a1 + 144) = v21;
      v22 = *(a2 + 176);
      *(a1 + 160) = *(a2 + 160);
      *(a1 + 176) = v22;
      v23 = *(a2 + 80);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 80) = v23;
      v24 = *(a2 + 112);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 112) = v24;
    }

    else
    {
      v25 = *(a2 + 72);
      if (v25 == 255)
      {
        *(a1 + 64) = *(a2 + 64);
        *(a1 + 72) = *(a2 + 72);
      }

      else
      {
        v26 = *(a2 + 64);
        outlined copy of GraphicsImage.Contents(v26, *(a2 + 72));
        *(a1 + 64) = v26;
        *(a1 + 72) = v25;
        v16 = *(a2 + 192);
      }

      *(a1 + 80) = *(a2 + 80);
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 104) = *(a2 + 104);
      *(a1 + 108) = *(a2 + 108);
      *(a1 + 121) = *(a2 + 121);
      *(a1 + 136) = *(a2 + 136);
      *(a1 + 152) = *(a2 + 152);
      *(a1 + 168) = *(a2 + 168);
      *(a1 + 170) = *(a2 + 170);
      *(a1 + 171) = *(a2 + 171);
      if (v16 >> 1 == 0xFFFFFFFF)
      {
        v27 = *(a2 + 192);
        *(a1 + 176) = *(a2 + 176);
        *(a1 + 192) = v27;
      }

      else
      {
        v28 = *(a2 + 176);
        v29 = *(a2 + 184);
        v30 = *(a2 + 200);
        outlined copy of AccessibilityImageLabel(v28, v29, v16, v30);
        *(a1 + 176) = v28;
        *(a1 + 184) = v29;
        *(a1 + 192) = v16;
        *(a1 + 200) = v30;
      }

      v31 = *(a2 + 216);
      *(a1 + 208) = *(a2 + 208);
      *(a1 + 216) = v31;
      *(a1 + 224) = *(a2 + 224);
      *(a1 + 228) = *(a2 + 228);
      *(a1 + 232) = *(a2 + 232);
      v32 = *(a2 + 240);
      *(a1 + 240) = v32;
      *(a1 + 248) = *(a2 + 248);
      *(a1 + 250) = *(a2 + 250);
      swift_unknownObjectRetain();

      v33 = v32;
    }

    *(a1 + 256) = *(a2 + 256);
    *(a1 + 264) = *(a2 + 264);
    *(a1 + 272) = *(a2 + 272);
  }

  *(a1 + 280) = *(a2 + 280);
  v34 = *(a2 + 312);

  if (v34 == 1)
  {
    v35 = *(a2 + 304);
    *(a1 + 288) = *(a2 + 288);
    *(a1 + 304) = v35;
  }

  else
  {
    *(a1 + 288) = *(a2 + 288);
    *(a1 + 304) = *(a2 + 304);
    *(a1 + 312) = v34;
    swift_unknownObjectRetain();
  }

  *(a1 + 320) = *(a2 + 320);
  *(a1 + 328) = *(a2 + 328);
  if (!*(a2 + 616))
  {
    memcpy((a1 + 336), (a2 + 336), 0x129uLL);
    return a1;
  }

  v36 = *(a2 + 344);
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 344) = v36;
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 360) = *(a2 + 360);
  *(a1 + 368) = *(a2 + 368);
  *(a1 + 392) = *(a2 + 392);
  *(a1 + 376) = *(a2 + 376);
  v37 = *(a2 + 424);

  if (!v37)
  {
    v39 = *(a2 + 416);
    *(a1 + 400) = *(a2 + 400);
    *(a1 + 416) = v39;
    *(a1 + 432) = *(a2 + 432);
LABEL_23:
    *(a1 + 440) = *(a2 + 440);

    goto LABEL_24;
  }

  if (v37 != 1)
  {
    v40 = *(a2 + 432);
    *(a1 + 424) = v37;
    *(a1 + 432) = v40;
    (**(v37 - 8))(a1 + 400, a2 + 400, v37);
    goto LABEL_23;
  }

  v38 = *(a2 + 416);
  *(a1 + 400) = *(a2 + 400);
  *(a1 + 416) = v38;
  *(a1 + 432) = *(a2 + 432);
LABEL_24:
  *(a1 + 448) = *(a2 + 448);
  *(a1 + 456) = *(a2 + 456);
  v41 = *(a2 + 576);
  if (v41 == 1)
  {
    v42 = *(a2 + 576);
    *(a1 + 560) = *(a2 + 560);
    *(a1 + 576) = v42;
    *(a1 + 592) = *(a2 + 592);
    *(a1 + 608) = *(a2 + 608);
    v43 = *(a2 + 512);
    *(a1 + 496) = *(a2 + 496);
    *(a1 + 512) = v43;
    v44 = *(a2 + 544);
    *(a1 + 528) = *(a2 + 528);
    *(a1 + 544) = v44;
    v45 = *(a2 + 480);
    *(a1 + 464) = *(a2 + 464);
    *(a1 + 480) = v45;
  }

  else
  {
    *(a1 + 464) = *(a2 + 464);
    *(a1 + 472) = *(a2 + 472);
    *(a1 + 480) = *(a2 + 480);
    *(a1 + 488) = *(a2 + 488);
    *(a1 + 489) = *(a2 + 489);
    *(a1 + 491) = *(a2 + 491);
    *(a1 + 492) = *(a2 + 492);
    v46 = *(a2 + 512);
    *(a1 + 496) = *(a2 + 496);
    *(a1 + 512) = v46;
    *(a1 + 528) = *(a2 + 528);
    *(a1 + 544) = *(a2 + 544);
    *(a1 + 552) = *(a2 + 552);
    *(a1 + 560) = *(a2 + 560);
    *(a1 + 568) = *(a2 + 568);
    *(a1 + 576) = v41;
    *(a1 + 584) = *(a2 + 584);
    *(a1 + 600) = *(a2 + 600);
    *(a1 + 608) = *(a2 + 608);
  }

  *(a1 + 616) = *(a2 + 616);
  *(a1 + 624) = *(a2 + 624);
  *(a1 + 632) = *(a2 + 632);

  return a1;
}

uint64_t assignWithCopy for PlatformItemTraitWriter.AddTrait(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  v4 = (a1 + 40);
  v5 = *(a1 + 40);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  v7 = (a2 + 40);
  v6 = *(a2 + 40);
  if (v5 == 1)
  {
    if (v6 == 1)
    {
      v8 = *v7;
      v9 = *(a2 + 72);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 72) = v9;
      *v4 = v8;
      v10 = *(a2 + 88);
      v11 = *(a2 + 104);
      v12 = *(a2 + 136);
      *(a1 + 120) = *(a2 + 120);
      *(a1 + 136) = v12;
      *(a1 + 88) = v10;
      *(a1 + 104) = v11;
      v13 = *(a2 + 152);
      v14 = *(a2 + 168);
      v15 = *(a2 + 200);
      *(a1 + 184) = *(a2 + 184);
      *(a1 + 200) = v15;
      *(a1 + 152) = v13;
      *(a1 + 168) = v14;
      v16 = *(a2 + 216);
      v17 = *(a2 + 232);
      v18 = *(a2 + 264);
      *(a1 + 248) = *(a2 + 248);
      *(a1 + 264) = v18;
      *(a1 + 216) = v16;
      *(a1 + 232) = v17;
    }

    else
    {
      *(a1 + 40) = v6;
      v30 = *(a2 + 48);
      *(a1 + 48) = v30;
      v31 = *(a2 + 56);
      *(a1 + 56) = v31;
      v32 = *(a2 + 192);
      v33 = v6;
      v34 = v30;
      v35 = v31;
      if (v32 >> 1 == 4294967294)
      {
        v36 = *(a2 + 64);
        v37 = *(a2 + 80);
        v38 = *(a2 + 112);
        *(a1 + 96) = *(a2 + 96);
        *(a1 + 112) = v38;
        *(a1 + 64) = v36;
        *(a1 + 80) = v37;
        v39 = *(a2 + 128);
        v40 = *(a2 + 144);
        v41 = *(a2 + 176);
        *(a1 + 160) = *(a2 + 160);
        *(a1 + 176) = v41;
        *(a1 + 128) = v39;
        *(a1 + 144) = v40;
        v42 = *(a2 + 192);
        v43 = *(a2 + 208);
        v44 = *(a2 + 224);
        *(a1 + 235) = *(a2 + 235);
        *(a1 + 208) = v43;
        *(a1 + 224) = v44;
        *(a1 + 192) = v42;
      }

      else
      {
        v62 = *(a2 + 72);
        if (v62 == 255)
        {
          v79 = *(a2 + 64);
          *(a1 + 72) = *(a2 + 72);
          *(a1 + 64) = v79;
        }

        else
        {
          v63 = *(a2 + 64);
          outlined copy of GraphicsImage.Contents(v63, *(a2 + 72));
          *(a1 + 64) = v63;
          *(a1 + 72) = v62;
        }

        *(a1 + 80) = *(a2 + 80);
        *(a1 + 88) = *(a2 + 88);
        *(a1 + 104) = *(a2 + 104);
        v80 = *(a2 + 108);
        *(a1 + 121) = *(a2 + 121);
        *(a1 + 108) = v80;
        v81 = *(a2 + 136);
        v82 = *(a2 + 152);
        *(a1 + 168) = *(a2 + 168);
        *(a1 + 152) = v82;
        *(a1 + 136) = v81;
        *(a1 + 169) = *(a2 + 169);
        *(a1 + 170) = *(a2 + 170);
        *(a1 + 171) = *(a2 + 171);
        v83 = *(a2 + 192);
        if (v83 >> 1 == 0xFFFFFFFF)
        {
          v84 = *(a2 + 192);
          *(a1 + 176) = *(a2 + 176);
          *(a1 + 192) = v84;
        }

        else
        {
          v85 = *(a2 + 176);
          v86 = *(a2 + 184);
          v87 = *(a2 + 200);
          outlined copy of AccessibilityImageLabel(v85, v86, *(a2 + 192), v87);
          *(a1 + 176) = v85;
          *(a1 + 184) = v86;
          *(a1 + 192) = v83;
          *(a1 + 200) = v87;
        }

        *(a1 + 208) = *(a2 + 208);
        *(a1 + 216) = *(a2 + 216);
        *(a1 + 224) = *(a2 + 224);
        *(a1 + 225) = *(a2 + 225);
        v88 = *(a2 + 228);
        *(a1 + 232) = *(a2 + 232);
        *(a1 + 228) = v88;
        v89 = *(a2 + 240);
        *(a1 + 240) = v89;
        *(a1 + 248) = *(a2 + 248);
        *(a1 + 250) = *(a2 + 250);
        swift_unknownObjectRetain();

        v90 = v89;
      }

      *(a1 + 256) = *(a2 + 256);
      *(a1 + 264) = *(a2 + 264);
      *(a1 + 272) = *(a2 + 272);
    }
  }

  else if (v6 == 1)
  {
    outlined destroy of PlatformItem.PrimaryContent(a1 + 40);
    v20 = *(a2 + 56);
    v19 = *(a2 + 72);
    *v4 = *v7;
    *(a1 + 56) = v20;
    *(a1 + 72) = v19;
    v21 = *(a2 + 136);
    v23 = *(a2 + 88);
    v22 = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 136) = v21;
    *(a1 + 88) = v23;
    *(a1 + 104) = v22;
    v24 = *(a2 + 200);
    v26 = *(a2 + 152);
    v25 = *(a2 + 168);
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 200) = v24;
    *(a1 + 152) = v26;
    *(a1 + 168) = v25;
    v27 = *(a2 + 264);
    v29 = *(a2 + 216);
    v28 = *(a2 + 232);
    *(a1 + 248) = *(a2 + 248);
    *(a1 + 264) = v27;
    *(a1 + 216) = v29;
    *(a1 + 232) = v28;
  }

  else
  {
    *(a1 + 40) = v6;
    v45 = v6;

    v46 = *(a1 + 48);
    v47 = *(a2 + 48);
    *(a1 + 48) = v47;
    v48 = v47;

    v49 = *(a1 + 56);
    v50 = *(a2 + 56);
    *(a1 + 56) = v50;
    v51 = v50;

    v52 = *(a2 + 192) & 0xFFFFFFFFFFFFFFFELL;
    if (*(a1 + 192) >> 1 == 4294967294)
    {
      if (v52 == 0x1FFFFFFFCLL)
      {
        v53 = *(a2 + 64);
        v54 = *(a2 + 80);
        v55 = *(a2 + 112);
        *(a1 + 96) = *(a2 + 96);
        *(a1 + 112) = v55;
        *(a1 + 64) = v53;
        *(a1 + 80) = v54;
        v56 = *(a2 + 128);
        v57 = *(a2 + 144);
        v58 = *(a2 + 176);
        *(a1 + 160) = *(a2 + 160);
        *(a1 + 176) = v58;
        *(a1 + 128) = v56;
        *(a1 + 144) = v57;
        v59 = *(a2 + 192);
        v60 = *(a2 + 208);
        v61 = *(a2 + 224);
        *(a1 + 235) = *(a2 + 235);
        *(a1 + 208) = v60;
        *(a1 + 224) = v61;
        *(a1 + 192) = v59;
      }

      else
      {
        v73 = *(a2 + 72);
        if (v73 == 255)
        {
          v91 = *(a2 + 64);
          *(a1 + 72) = *(a2 + 72);
          *(a1 + 64) = v91;
        }

        else
        {
          v74 = *(a2 + 64);
          outlined copy of GraphicsImage.Contents(v74, *(a2 + 72));
          *(a1 + 64) = v74;
          *(a1 + 72) = v73;
        }

        *(a1 + 80) = *(a2 + 80);
        *(a1 + 88) = *(a2 + 88);
        *(a1 + 104) = *(a2 + 104);
        v92 = *(a2 + 108);
        *(a1 + 121) = *(a2 + 121);
        *(a1 + 108) = v92;
        v93 = *(a2 + 136);
        v94 = *(a2 + 152);
        *(a1 + 168) = *(a2 + 168);
        *(a1 + 152) = v94;
        *(a1 + 136) = v93;
        *(a1 + 169) = *(a2 + 169);
        *(a1 + 170) = *(a2 + 170);
        *(a1 + 171) = *(a2 + 171);
        v95 = *(a2 + 192);
        if (v95 >> 1 == 0xFFFFFFFF)
        {
          v96 = *(a2 + 192);
          *(a1 + 176) = *(a2 + 176);
          *(a1 + 192) = v96;
        }

        else
        {
          v97 = *(a2 + 176);
          v98 = *(a2 + 184);
          v99 = *(a2 + 200);
          outlined copy of AccessibilityImageLabel(v97, v98, *(a2 + 192), v99);
          *(a1 + 176) = v97;
          *(a1 + 184) = v98;
          *(a1 + 192) = v95;
          *(a1 + 200) = v99;
        }

        *(a1 + 208) = *(a2 + 208);
        *(a1 + 216) = *(a2 + 216);
        *(a1 + 224) = *(a2 + 224);
        *(a1 + 225) = *(a2 + 225);
        v100 = *(a2 + 228);
        *(a1 + 232) = *(a2 + 232);
        *(a1 + 228) = v100;
        v101 = *(a2 + 240);
        *(a1 + 240) = v101;
        *(a1 + 248) = *(a2 + 248);
        *(a1 + 250) = *(a2 + 250);
        swift_unknownObjectRetain();

        v102 = v101;
      }
    }

    else if (v52 == 0x1FFFFFFFCLL)
    {
      outlined destroy of Image.Resolved(a1 + 64);
      v64 = *(a2 + 112);
      v66 = *(a2 + 64);
      v65 = *(a2 + 80);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 112) = v64;
      *(a1 + 64) = v66;
      *(a1 + 80) = v65;
      v67 = *(a2 + 176);
      v69 = *(a2 + 128);
      v68 = *(a2 + 144);
      *(a1 + 160) = *(a2 + 160);
      *(a1 + 176) = v67;
      *(a1 + 128) = v69;
      *(a1 + 144) = v68;
      v71 = *(a2 + 208);
      v70 = *(a2 + 224);
      v72 = *(a2 + 192);
      *(a1 + 235) = *(a2 + 235);
      *(a1 + 208) = v71;
      *(a1 + 224) = v70;
      *(a1 + 192) = v72;
    }

    else
    {
      v75 = *(a2 + 72);
      if (*(a1 + 72) == 255)
      {
        if (v75 == 255)
        {
          v105 = *(a2 + 64);
          *(a1 + 72) = *(a2 + 72);
          *(a1 + 64) = v105;
        }

        else
        {
          v103 = *(a2 + 64);
          outlined copy of GraphicsImage.Contents(v103, *(a2 + 72));
          *(a1 + 64) = v103;
          *(a1 + 72) = v75;
        }
      }

      else if (v75 == 255)
      {
        outlined destroy of GraphicsImage.Contents(a1 + 64);
        v104 = *(a2 + 72);
        *(a1 + 64) = *(a2 + 64);
        *(a1 + 72) = v104;
      }

      else
      {
        v76 = *(a2 + 64);
        outlined copy of GraphicsImage.Contents(v76, *(a2 + 72));
        v77 = *(a1 + 64);
        *(a1 + 64) = v76;
        v78 = *(a1 + 72);
        *(a1 + 72) = v75;
        outlined consume of GraphicsImage.Contents(v77, v78);
      }

      *(a1 + 80) = *(a2 + 80);
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 104) = *(a2 + 104);
      v106 = *(a2 + 108);
      *(a1 + 121) = *(a2 + 121);
      *(a1 + 108) = v106;
      v107 = *(a2 + 136);
      v108 = *(a2 + 152);
      *(a1 + 168) = *(a2 + 168);
      *(a1 + 152) = v108;
      *(a1 + 136) = v107;
      *(a1 + 169) = *(a2 + 169);
      *(a1 + 170) = *(a2 + 170);
      *(a1 + 171) = *(a2 + 171);
      v109 = *(a2 + 192);
      v110 = v109 & 0xFFFFFFFFFFFFFFFELL;
      if (*(a1 + 192) >> 1 == 0xFFFFFFFFLL)
      {
        if (v110 == 0x1FFFFFFFELL)
        {
          v111 = *(a2 + 192);
          *(a1 + 176) = *(a2 + 176);
          *(a1 + 192) = v111;
        }

        else
        {
          v113 = *(a2 + 176);
          v114 = *(a2 + 184);
          v115 = *(a2 + 200);
          outlined copy of AccessibilityImageLabel(v113, v114, *(a2 + 192), v115);
          *(a1 + 176) = v113;
          *(a1 + 184) = v114;
          *(a1 + 192) = v109;
          *(a1 + 200) = v115;
        }
      }

      else if (v110 == 0x1FFFFFFFELL)
      {
        outlined destroy of AccessibilityImageLabel(a1 + 176);
        v112 = *(a2 + 192);
        *(a1 + 176) = *(a2 + 176);
        *(a1 + 192) = v112;
      }

      else
      {
        v116 = *(a2 + 176);
        v117 = *(a2 + 184);
        v118 = *(a2 + 200);
        outlined copy of AccessibilityImageLabel(v116, v117, *(a2 + 192), v118);
        v119 = *(a1 + 176);
        v120 = *(a1 + 184);
        v121 = *(a1 + 192);
        v122 = *(a1 + 200);
        *(a1 + 176) = v116;
        *(a1 + 184) = v117;
        *(a1 + 192) = v109;
        *(a1 + 200) = v118;
        outlined consume of AccessibilityImageLabel(v119, v120, v121, v122);
      }

      *(a1 + 208) = *(a2 + 208);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      *(a1 + 216) = *(a2 + 216);

      *(a1 + 224) = *(a2 + 224);
      *(a1 + 225) = *(a2 + 225);
      v123 = *(a2 + 228);
      *(a1 + 232) = *(a2 + 232);
      *(a1 + 228) = v123;
      v124 = *(a1 + 240);
      v125 = *(a2 + 240);
      *(a1 + 240) = v125;
      v126 = v125;

      *(a1 + 248) = *(a2 + 248);
      *(a1 + 250) = *(a2 + 250);
    }

    *(a1 + 256) = *(a2 + 256);

    *(a1 + 264) = *(a2 + 264);
    *(a1 + 272) = *(a2 + 272);
  }

  *(a1 + 280) = *(a2 + 280);

  v127 = *(a2 + 312);
  if (*(a1 + 312) == 1)
  {
    if (v127 == 1)
    {
      v128 = *(a2 + 304);
      *(a1 + 288) = *(a2 + 288);
      *(a1 + 304) = v128;
    }

    else
    {
      *(a1 + 288) = *(a2 + 288);
      *(a1 + 296) = *(a2 + 296);
      *(a1 + 304) = *(a2 + 304);
      *(a1 + 312) = *(a2 + 312);
      swift_unknownObjectRetain();
    }
  }

  else if (v127 == 1)
  {
    outlined destroy of PlatformItem.SelectionContent(a1 + 288);
    v129 = *(a2 + 304);
    *(a1 + 288) = *(a2 + 288);
    *(a1 + 304) = v129;
  }

  else
  {
    *(a1 + 288) = *(a2 + 288);
    *(a1 + 292) = *(a2 + 292);
    *(a1 + 296) = *(a2 + 296);
    *(a1 + 300) = *(a2 + 300);
    *(a1 + 304) = *(a2 + 304);
    *(a1 + 312) = *(a2 + 312);
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  v130 = *(a2 + 320);
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 320) = v130;
  v131 = *(a2 + 616);
  if (*(a1 + 616))
  {
    if (v131)
    {
      *(a1 + 336) = *(a2 + 336);
      *(a1 + 344) = *(a2 + 344);

      *(a1 + 352) = *(a2 + 352);
      *(a1 + 360) = *(a2 + 360);

      *(a1 + 368) = *(a2 + 368);
      v132 = *(a2 + 376);
      *(a1 + 392) = *(a2 + 392);
      *(a1 + 376) = v132;
      v133 = *(a1 + 424);
      v134 = *(a2 + 424);
      if (v133 != 1)
      {
        if (v134 == 1)
        {
          outlined destroy of AccessibilityValueStorage(a1 + 400);
          v142 = *(a2 + 416);
          v141 = *(a2 + 432);
          *(a1 + 400) = *(a2 + 400);
          *(a1 + 416) = v142;
          *(a1 + 432) = v141;
        }

        else
        {
          if (v133)
          {
            v143 = (a1 + 400);
            if (v134)
            {
              __swift_assign_boxed_opaque_existential_1(v143, (a2 + 400), v132);
            }

            else
            {
              outlined destroy of AnyAccessibilityValue(v143);
              v159 = *(a2 + 432);
              v160 = *(a2 + 416);
              *(a1 + 400) = *(a2 + 400);
              *(a1 + 416) = v160;
              *(a1 + 432) = v159;
            }
          }

          else if (v134)
          {
            *(a1 + 424) = v134;
            *(a1 + 432) = *(a2 + 432);
            (**(v134 - 8))(a1 + 400, a2 + 400);
          }

          else
          {
            v161 = *(a2 + 400);
            v162 = *(a2 + 416);
            *(a1 + 432) = *(a2 + 432);
            *(a1 + 400) = v161;
            *(a1 + 416) = v162;
          }

          *(a1 + 440) = *(a2 + 440);
        }

        goto LABEL_83;
      }

      if (v134)
      {
        if (v134 == 1)
        {
          v135 = *(a2 + 400);
          v136 = *(a2 + 432);
          *(a1 + 416) = *(a2 + 416);
          *(a1 + 432) = v136;
          *(a1 + 400) = v135;
LABEL_83:
          v163 = *(a2 + 448);
          *(a1 + 456) = *(a2 + 456);
          *(a1 + 448) = v163;
          v164 = *(a2 + 576);
          if (*(a1 + 576) == 1)
          {
            if (v164 == 1)
            {
              v165 = *(a2 + 480);
              *(a1 + 464) = *(a2 + 464);
              *(a1 + 480) = v165;
              v166 = *(a2 + 496);
              v167 = *(a2 + 512);
              v168 = *(a2 + 544);
              *(a1 + 528) = *(a2 + 528);
              *(a1 + 544) = v168;
              *(a1 + 496) = v166;
              *(a1 + 512) = v167;
              v169 = *(a2 + 560);
              v170 = *(a2 + 576);
              v171 = *(a2 + 592);
              *(a1 + 608) = *(a2 + 608);
              *(a1 + 576) = v170;
              *(a1 + 592) = v171;
              *(a1 + 560) = v169;
            }

            else
            {
              v179 = *(a2 + 464);
              *(a1 + 472) = *(a2 + 472);
              *(a1 + 464) = v179;
              v180 = *(a2 + 480);
              *(a1 + 488) = *(a2 + 488);
              *(a1 + 480) = v180;
              *(a1 + 489) = *(a2 + 489);
              *(a1 + 490) = *(a2 + 490);
              *(a1 + 491) = *(a2 + 491);
              *(a1 + 492) = *(a2 + 492);
              *(a1 + 496) = *(a2 + 496);
              *(a1 + 504) = *(a2 + 504);
              *(a1 + 512) = *(a2 + 512);
              *(a1 + 520) = *(a2 + 520);
              *(a1 + 528) = *(a2 + 528);
              *(a1 + 536) = *(a2 + 536);
              *(a1 + 544) = *(a2 + 544);
              *(a1 + 545) = *(a2 + 545);
              *(a1 + 552) = *(a2 + 552);
              *(a1 + 560) = *(a2 + 560);
              *(a1 + 568) = *(a2 + 568);
              *(a1 + 576) = *(a2 + 576);
              v181 = *(a2 + 584);
              *(a1 + 600) = *(a2 + 600);
              *(a1 + 584) = v181;
              *(a1 + 608) = *(a2 + 608);
            }
          }

          else if (v164 == 1)
          {
            outlined destroy of AccessibilityTextLayoutProperties(a1 + 464);
            v172 = *(a2 + 480);
            *(a1 + 464) = *(a2 + 464);
            *(a1 + 480) = v172;
            v173 = *(a2 + 544);
            v175 = *(a2 + 496);
            v174 = *(a2 + 512);
            *(a1 + 528) = *(a2 + 528);
            *(a1 + 544) = v173;
            *(a1 + 496) = v175;
            *(a1 + 512) = v174;
            v177 = *(a2 + 576);
            v176 = *(a2 + 592);
            v178 = *(a2 + 560);
            *(a1 + 608) = *(a2 + 608);
            *(a1 + 576) = v177;
            *(a1 + 592) = v176;
            *(a1 + 560) = v178;
          }

          else
          {
            v182 = *(a2 + 464);
            *(a1 + 472) = *(a2 + 472);
            *(a1 + 464) = v182;
            v183 = *(a2 + 480);
            *(a1 + 488) = *(a2 + 488);
            *(a1 + 480) = v183;
            *(a1 + 489) = *(a2 + 489);
            *(a1 + 490) = *(a2 + 490);
            *(a1 + 491) = *(a2 + 491);
            *(a1 + 492) = *(a2 + 492);
            *(a1 + 496) = *(a2 + 496);
            *(a1 + 504) = *(a2 + 504);
            *(a1 + 512) = *(a2 + 512);
            *(a1 + 520) = *(a2 + 520);
            *(a1 + 528) = *(a2 + 528);
            *(a1 + 536) = *(a2 + 536);
            *(a1 + 544) = *(a2 + 544);
            *(a1 + 545) = *(a2 + 545);
            *(a1 + 552) = *(a2 + 552);
            *(a1 + 560) = *(a2 + 560);
            *(a1 + 568) = *(a2 + 568);
            *(a1 + 576) = *(a2 + 576);

            v184 = *(a2 + 584);
            *(a1 + 600) = *(a2 + 600);
            *(a1 + 584) = v184;
            *(a1 + 608) = *(a2 + 608);
          }

          *(a1 + 616) = *(a2 + 616);

          *(a1 + 624) = *(a2 + 624);
          *(a1 + 628) = *(a2 + 628);
          *(a1 + 632) = *(a2 + 632);
          return a1;
        }

        *(a1 + 424) = v134;
        *(a1 + 432) = *(a2 + 432);
        (**(v134 - 8))(a1 + 400, a2 + 400);
      }

      else
      {
        v157 = *(a2 + 400);
        v158 = *(a2 + 416);
        *(a1 + 432) = *(a2 + 432);
        *(a1 + 400) = v157;
        *(a1 + 416) = v158;
      }

      *(a1 + 440) = *(a2 + 440);

      goto LABEL_83;
    }

    outlined destroy of PlatformItem.AccessibilityContent(a1 + 336);
LABEL_62:
    memcpy((a1 + 336), (a2 + 336), 0x129uLL);
    return a1;
  }

  if (!v131)
  {
    goto LABEL_62;
  }

  *(a1 + 336) = *(a2 + 336);
  *(a1 + 344) = *(a2 + 344);
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 360) = *(a2 + 360);
  *(a1 + 368) = *(a2 + 368);
  v137 = *(a2 + 376);
  *(a1 + 392) = *(a2 + 392);
  *(a1 + 376) = v137;
  v138 = *(a2 + 424);

  if (!v138)
  {
    v144 = *(a2 + 400);
    v145 = *(a2 + 416);
    *(a1 + 432) = *(a2 + 432);
    *(a1 + 400) = v144;
    *(a1 + 416) = v145;
LABEL_70:
    *(a1 + 440) = *(a2 + 440);

    goto LABEL_71;
  }

  if (v138 != 1)
  {
    *(a1 + 424) = v138;
    *(a1 + 432) = *(a2 + 432);
    (**(v138 - 8))(a1 + 400, a2 + 400, v138);
    goto LABEL_70;
  }

  v139 = *(a2 + 400);
  v140 = *(a2 + 432);
  *(a1 + 416) = *(a2 + 416);
  *(a1 + 432) = v140;
  *(a1 + 400) = v139;
LABEL_71:
  v146 = *(a2 + 448);
  *(a1 + 456) = *(a2 + 456);
  *(a1 + 448) = v146;
  if (*(a2 + 576) == 1)
  {
    v147 = *(a2 + 480);
    *(a1 + 464) = *(a2 + 464);
    *(a1 + 480) = v147;
    v148 = *(a2 + 496);
    v149 = *(a2 + 512);
    v150 = *(a2 + 544);
    *(a1 + 528) = *(a2 + 528);
    *(a1 + 544) = v150;
    *(a1 + 496) = v148;
    *(a1 + 512) = v149;
    v151 = *(a2 + 560);
    v152 = *(a2 + 576);
    v153 = *(a2 + 592);
    *(a1 + 608) = *(a2 + 608);
    *(a1 + 576) = v152;
    *(a1 + 592) = v153;
    *(a1 + 560) = v151;
  }

  else
  {
    v154 = *(a2 + 464);
    *(a1 + 472) = *(a2 + 472);
    *(a1 + 464) = v154;
    v155 = *(a2 + 480);
    *(a1 + 488) = *(a2 + 488);
    *(a1 + 480) = v155;
    *(a1 + 489) = *(a2 + 489);
    *(a1 + 490) = *(a2 + 490);
    *(a1 + 491) = *(a2 + 491);
    *(a1 + 492) = *(a2 + 492);
    *(a1 + 496) = *(a2 + 496);
    *(a1 + 504) = *(a2 + 504);
    *(a1 + 512) = *(a2 + 512);
    *(a1 + 520) = *(a2 + 520);
    *(a1 + 528) = *(a2 + 528);
    *(a1 + 536) = *(a2 + 536);
    *(a1 + 544) = *(a2 + 544);
    *(a1 + 545) = *(a2 + 545);
    *(a1 + 552) = *(a2 + 552);
    *(a1 + 560) = *(a2 + 560);
    *(a1 + 568) = *(a2 + 568);
    *(a1 + 576) = *(a2 + 576);
    v156 = *(a2 + 584);
    *(a1 + 600) = *(a2 + 600);
    *(a1 + 584) = v156;
    *(a1 + 608) = *(a2 + 608);
  }

  *(a1 + 616) = *(a2 + 616);
  *(a1 + 624) = *(a2 + 624);
  *(a1 + 632) = *(a2 + 632);

  return a1;
}