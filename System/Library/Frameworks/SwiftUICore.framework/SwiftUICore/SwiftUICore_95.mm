uint64_t CodableByProtobuf.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v22 = a3;
  v8 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v4)
  {
    v20 = a4;
    v21 = v10;
    v19 = v8;
    __swift_project_boxed_opaque_existential_1(v26, v26[3]);
    lazy protocol witness table accessor for type Data and conformance Data();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    isa = v23.super.isa;
    v13 = v24;
    outlined copy of Data._Representation(v23.super.isa, v24);
    ProtobufDecoder.init(_:)(isa, v13, &v23);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v14 = dispatch thunk of Decoder.userInfo.getter();

    v25 = v14;
    v15 = v21;
    (*(*(v22 + 24) + 8))(&v23, a2);
    v16 = outlined consume of Data._Representation(isa, v13);
    (*(v19 + 32))(v20, v15, a2, v16);
    v17 = v23.super.isa;

    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t CodableByProtobuf.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = specialized static ProtobufEncoder.encoding(_:)(partial apply for closure #1 in CodableByProtobuf.encode(to:));
  if (!v3)
  {
    v7 = a1[3];
    v8 = result;
    v9 = a1;
    v10 = v6;
    __swift_project_boxed_opaque_existential_1(v9, v7);
    dispatch thunk of Encoder.singleValueContainer()();
    __swift_mutable_project_boxed_opaque_existential_1(v11, v11[3]);
    lazy protocol witness table accessor for type Data and conformance Data();
    dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
    outlined consume of Data._Representation(v8, v10);
    return __swift_destroy_boxed_opaque_existential_1(v11);
  }

  return result;
}

uint64_t ProtobufEnum<>.protobufValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v5 = swift_checkMetadataState();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v20 - v9;
  v12 = v11;
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0 || (swift_getAssociatedConformanceWitness(), dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)(), dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)(), v13 = dispatch thunk of static Comparable.>= infix(_:_:)(), result = (*(v12 + 8))(v7, v5), (v13))
  {
    if (dispatch thunk of BinaryInteger.bitWidth.getter() > 63)
    {
      v20[1] = -1;
      v15 = dispatch thunk of static BinaryInteger.isSigned.getter();
      v16 = dispatch thunk of BinaryInteger.bitWidth.getter();
      if (v15)
      {
        if (v16 <= 64)
        {
          swift_getAssociatedConformanceWitness();
          dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
          dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
          v17 = dispatch thunk of static Comparable.> infix(_:_:)();
          (*(v12 + 8))(v7, v5);
          if ((v17 & 1) == 0)
          {
            goto LABEL_12;
          }

          goto LABEL_11;
        }
      }

      else if (v16 < 65)
      {
LABEL_11:
        dispatch thunk of BinaryInteger._lowWord.getter();
        goto LABEL_12;
      }

      lazy protocol witness table accessor for type UInt and conformance UInt();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v18 = dispatch thunk of static Comparable.< infix(_:_:)();
      (*(v12 + 8))(v7, v5);
      if (v18)
      {
        __break(1u);
        goto LABEL_11;
      }
    }

LABEL_12:
    v19 = dispatch thunk of BinaryInteger._lowWord.getter();
    (*(v12 + 8))(v10, v5);
    return v19;
  }

  __break(1u);
  return result;
}

unint64_t specialized ProtobufEnum<>.init(protobufValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3;
  if (result < 3)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t ProtobufEnum<>.init(protobufValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  v34 = a5;
  v8 = type metadata accessor for Optional();
  v30 = *(v8 - 8);
  v31 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v33 = &v29 - v9;
  v32 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - v13;
  v15 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v29 - v20;
  v35 = a1;
  lazy protocol witness table accessor for type UInt and conformance UInt();
  dispatch thunk of Numeric.init<A>(exactly:)();
  if ((*(v15 + 48))(v14, 1, AssociatedTypeWitness) == 1)
  {
    (*(v12 + 8))(v14, v11);
    v22 = *(a2 - 8);
  }

  else
  {
    (*(v15 + 32))(v21, v14, AssociatedTypeWitness);
    (*(v15 + 16))(v18, v21, AssociatedTypeWitness);
    v23 = v33;
    dispatch thunk of RawRepresentable.init(rawValue:)();
    (*(v15 + 8))(v21, AssociatedTypeWitness);
    v22 = *(a2 - 8);
    v24 = v22;
    if (!(*(v22 + 48))(v23, 1, a2))
    {
      v28 = v34;
      (*(v22 + 32))(v34, v23, a2);
      v26 = v28;
      v25 = 0;
      return (*(v24 + 56))(v26, v25, 1, a2);
    }

    (*(v30 + 8))(v23, v31);
  }

  v24 = v22;
  v25 = 1;
  v26 = v34;
  return (*(v24 + 56))(v26, v25, 1, a2);
}

uint64_t protocol witness for ProtobufEnum.init(protobufValue:) in conformance Image.Orientation@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1 <= 0xFF)
  {
    result = specialized Image.Orientation.init(rawValue:)(a1);
  }

  else
  {
    result = 8;
  }

  *a2 = result;
  return result;
}

uint64_t closure #1 in CodableByProtobuf.encode(to:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v8 = dispatch thunk of Encoder.userInfo.getter();

  *(a1 + 32) = v8;
  return (*(*(a5 + 32) + 8))(a1, a4);
}

uint64_t ProtobufCodable.encode(to:)(void *a1, uint64_t a2)
{
  result = specialized static ProtobufEncoder.encoding(_:)(partial apply for closure #1 in ProtobufCodable.encode(to:));
  if (!v2)
  {
    v6 = a1[3];
    v7 = result;
    v8 = a1;
    v9 = v5;
    __swift_project_boxed_opaque_existential_1(v8, v6);
    dispatch thunk of Encoder.singleValueContainer()();
    __swift_mutable_project_boxed_opaque_existential_1(v10, v10[3]);
    lazy protocol witness table accessor for type Data and conformance Data();
    dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
    outlined consume of Data._Representation(v7, v9);
    return __swift_destroy_boxed_opaque_existential_1(v10);
  }

  return result;
}

uint64_t closure #1 in ProtobufCodable.encode(to:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v9 = dispatch thunk of Encoder.userInfo.getter();

  *(a1 + 32) = v9;
  return (*(a6 + 8))(a1, a4, a6);
}

uint64_t ProtobufCodable.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a4;
  v29 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ProtobufCodable(0, v9, v10, v11);
  v28 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v25 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = v35;
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v15)
  {
    v26 = v12;
    v27 = a3;
    v35 = v8;
    v25 = v14;
    __swift_project_boxed_opaque_existential_1(v34, v34[3]);
    lazy protocol witness table accessor for type Data and conformance Data();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    isa = v31.super.isa;
    v17 = v32;
    outlined copy of Data._Representation(v31.super.isa, v32);
    ProtobufDecoder.init(_:)(isa, v17, &v31);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v18 = dispatch thunk of Decoder.userInfo.getter();

    v33 = v18;
    v19 = v35;
    v20 = a2;
    (*(v27 + 8))(&v31, a2);
    v21 = outlined consume of Data._Representation(isa, v17);
    v23 = v25;
    (*(v29 + 32))(v25, v19, v20, v21);
    v24 = v31.super.isa;

    __swift_destroy_boxed_opaque_existential_1(v34);
    (*(v28 + 32))(v30, v23, v26);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t protocol witness for ProtobufEnum.init(protobufValue:) in conformance RBSymbolScaleLevel@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result >> 31)
  {
    v2 = 0;
  }

  else
  {
    v2 = result;
  }

  *a2 = v2;
  *(a2 + 4) = result >> 31 != 0;
  return result;
}

uint64_t protocol witness for ProtobufEnum.init(protobufValue:) in conformance DisplayGamut@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result < 0)
  {
LABEL_5:
    *a2 = 2;
    return result;
  }

  if (result)
  {
    if (result == 1)
    {
      *a2 = 1;
      return result;
    }

    goto LABEL_5;
  }

  *a2 = 0;
  return result;
}

void lazy protocol witness table accessor for type UInt and conformance UInt()
{
  if (!lazy protocol witness table cache variable for type UInt and conformance UInt)
  {
    swift_getWitnessTable(MEMORY[0x1E69E6850], MEMORY[0x1E69E6810], v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type UInt and conformance UInt);
  }
}

uint64_t SecondaryLayerGeometryQuery.init(alignment:layoutDirection:primaryPosition:primarySize:primaryLayoutComputer:secondaryLayoutComputer:)@<X0>(uint64_t result@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, _DWORD *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t SecondaryLayerGeometryQuery.$secondaryLayoutComputer.setter(uint64_t result)
{
  v2 = *MEMORY[0x1E698D3F8];
  if ((result & 0x100000000) == 0)
  {
    v2 = result;
  }

  *(v1 + 20) = v2;
  return result;
}

uint64_t _OverlayModifier.alignment.setter(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = (v3 + *(a3 + 36));
  *v4 = result;
  v4[1] = a2;
  return result;
}

uint64_t _OverlayModifier.init(overlay:alignment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  (*(*(a4 - 8) + 32))(a6, a1, a4);
  result = type metadata accessor for _OverlayModifier(0, a4, a5, v11);
  v13 = (a6 + *(result + 36));
  *v13 = a2;
  v13[1] = a3;
  return result;
}

BOOL static _OverlayModifier<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v10 = *(type metadata accessor for _OverlayModifier(0, a3, a5, v9) + 36);
  v12 = *(a1 + v10);
  v11 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v15 = *v13;
  v14 = v13[1];
  return v12 == v15 && v11 == v14;
}

uint64_t _OverlayStyleModifier.init(style:ignoresSafeAreaEdges:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  result = type metadata accessor for _OverlayStyleModifier(0, a3, a4, v9);
  *(a5 + *(result + 36)) = a2;
  return result;
}

uint64_t static _OverlayStyleModifier._makeView(modifier:inputs:body:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(_OWORD *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v12 = *a1;
  v13 = *(a2 + 48);
  v23[2] = *(a2 + 32);
  v23[3] = v13;
  v23[4] = *(a2 + 64);
  v24 = *(a2 + 80);
  v14 = *(a2 + 16);
  v23[0] = *a2;
  v23[1] = v14;
  v22[1] = v12;
  v15 = type metadata accessor for _BackgroundStyleModifier(0, a5, a6, a4);
  v17 = type metadata accessor for _OverlayStyleModifier(255, a5, a6, v16);
  v20 = type metadata accessor for _GraphValue(0, v17, v18, v19);
  _GraphValue.unsafeBitCast<A>(to:)(v20, v15, v22);
  return static _BackgroundStyleModifier.makeShapeView(modifier:inputs:shapeIsBackground:body:)(v22, v23, 0, a3, a4, a5, a6, a7);
}

uint64_t _OverlayShapeModifier.fillStyle.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 56));
  v3 = *v2;
  if (v2[1])
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  return v4 | v3;
}

uint64_t _OverlayShapeModifier.fillStyle.setter(uint64_t result, uint64_t a2)
{
  v3 = (v2 + *(a2 + 56));
  *v3 = result & 1;
  v3[1] = BYTE1(result) & 1;
  return result;
}

uint64_t _OverlayShapeModifier.init(style:shape:fillStyle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  (*(*(a4 - 8) + 32))(a8, a1, a4);
  v18[0] = a4;
  v18[1] = a5;
  v18[2] = a6;
  v18[3] = a7;
  v15 = type metadata accessor for _OverlayShapeModifier(0, v18);
  result = (*(*(a5 - 8) + 32))(a8 + *(v15 + 52), a2, a5);
  v17 = (a8 + *(v15 + 56));
  *v17 = a3 & 1;
  v17[1] = HIBYTE(a3) & 1;
  return result;
}

double static _OverlayShapeModifier._makeView(modifier:inputs:body:)@<D0>(int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(_OWORD *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v16 = *a1;
  v17 = *(a2 + 48);
  v32[2] = *(a2 + 32);
  v32[3] = v17;
  v32[4] = *(a2 + 64);
  v33 = *(a2 + 80);
  v18 = *(a2 + 16);
  v32[0] = *a2;
  v32[1] = v18;
  v31 = v16;
  v27 = a5;
  v28 = a6;
  v29 = a7;
  v30 = a8;
  v19 = type metadata accessor for _BackgroundShapeModifier(0, &v27);
  v27 = a5;
  v28 = a6;
  v29 = a7;
  v30 = a8;
  v20 = type metadata accessor for _OverlayShapeModifier(255, &v27);
  v23 = type metadata accessor for _GraphValue(0, v20, v21, v22);
  _GraphValue.unsafeBitCast<A>(to:)(v23, v19, &v27);
  v24 = swift_allocObject();
  v24[2] = a5;
  v24[3] = a6;
  v24[4] = a7;
  v24[5] = a8;
  *&v26 = a7;
  *(&v26 + 1) = a8;
  static _BackgroundShapeModifier.makeShapeView(modifier:inputs:shapeIsBackground:body:modifyPrimaryInputs:)(&v27, v32, 0, a3, a4, partial apply for closure #1 in default argument 4 of static _BackgroundShapeModifier.makeShapeView(modifier:inputs:shapeIsBackground:body:modifyPrimaryInputs:), v24, a5, a9, a6, v26);

  return result;
}

void (*default argument 4 of static _BackgroundShapeModifier.makeShapeView(modifier:inputs:shapeIsBackground:body:modifyPrimaryInputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  return partial apply for closure #1 in default argument 4 of static _BackgroundShapeModifier.makeShapeView(modifier:inputs:shapeIsBackground:body:modifyPrimaryInputs:);
}

uint64_t View.border<A>(_:width:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  type metadata accessor for _StrokedShape<Rectangle._Inset>(255);
  v13 = v12;
  lazy protocol witness table accessor for type _StrokedShape<Rectangle._Inset> and conformance _StrokedShape<A>();
  v21[0] = v13;
  v21[1] = a3;
  v21[2] = v14;
  v21[3] = a5;
  v15 = type metadata accessor for _ShapeView(0, v21);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v21 - v17;
  lazy protocol witness table accessor for type Rectangle and conformance Rectangle();
  InsettableShape.strokeBorder<A>(_:lineWidth:antialiased:)(a1, 1, &type metadata for Rectangle, a3, v19, a5, a6, v18);
  if (one-time initialization token for center != -1)
  {
    swift_once();
  }

  View.overlay<A>(_:alignment:)(v18, static Alignment.center, *(&static Alignment.center + 1), a2, v15, a4);
  return (*(v16 + 8))(v18, v15);
}

uint64_t View.overlay<A>(_:ignoresSafeAreaEdges:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = a5;
  v8 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for _OverlayStyleModifier(0, v11, v12, v11);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v19 - v16;
  (*(v8 + 16))(v10, a1, a4, v15);
  (*(v8 + 32))(v17, v10, a4);
  v17[*(v13 + 36)] = a2;
  View.modifier<A>(_:)();
  return (*(v14 + 8))(v17, v13);
}

uint64_t View.overlay<A, B>(_:in:fillStyle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v35 = a7;
  v29 = a8;
  v30 = a1;
  v33 = a9;
  v34 = a4;
  v32 = a3;
  v31 = a2;
  v12 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36[0] = v20;
  v36[1] = v21;
  v36[2] = v22;
  v36[3] = a10;
  v23 = type metadata accessor for _OverlayShapeModifier(0, v36);
  v24 = *(v23 - 8);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v29 - v26;
  (*(v16 + 16))(v19, v30, a5, v25);
  (*(v12 + 16))(v14, v31, a6);
  _OverlayShapeModifier.init(style:shape:fillStyle:)(v19, v14, v32 & 0x101, a5, a6, v29, a10, v27);
  View.modifier<A>(_:)();
  return (*(v24 + 8))(v27, v23);
}

uint64_t SecondaryLayerGeometryQuery.alignment.getter()
{
  if (*v0 == *MEMORY[0x1E698D3F8])
  {
    return 0;
  }

  else
  {
    return *AGGraphGetValue();
  }
}

unint64_t SecondaryLayerGeometryQuery.$alignment.getter()
{
  LODWORD(v1) = *v0;
  if (*v0 == *MEMORY[0x1E698D3F8])
  {
    v1 = 0;
  }

  else
  {
    v1 = v1;
  }

  return v1 | ((*v0 == *MEMORY[0x1E698D3F8]) << 32);
}

uint64_t SecondaryLayerGeometryQuery.$alignment.setter(uint64_t result)
{
  v2 = *MEMORY[0x1E698D3F8];
  if ((result & 0x100000000) == 0)
  {
    v2 = result;
  }

  *v1 = v2;
  return result;
}

uint64_t (*SecondaryLayerGeometryQuery.$alignment.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v2 = *v1;
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
  return SecondaryLayerGeometryQuery.$alignment.modify;
}

uint64_t SecondaryLayerGeometryQuery.$alignment.modify(uint64_t result)
{
  v1 = (result + 8);
  if (*(result + 12))
  {
    v1 = (result + 16);
  }

  **result = *v1;
  return result;
}

_BYTE *SecondaryLayerGeometryQuery.layoutDirection.getter@<X0>(_BYTE *a1@<X8>)
{
  result = AGGraphGetValue();
  *a1 = *result;
  return result;
}

uint64_t (*SecondaryLayerGeometryQuery.layoutDirection.modify(uint64_t a1))(unsigned int *a1)
{
  *a1 = *(v1 + 4);
  *(a1 + 4) = *AGGraphGetValue();
  return SecondaryLayerGeometryQuery.layoutDirection.modify;
}

uint64_t (*SecondaryLayerGeometryQuery.$layoutDirection.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 4);
  return SecondaryLayerGeometryQuery.$layoutDirection.modify;
}

uint64_t (*SecondaryLayerGeometryQuery.primaryPosition.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = *(v1 + 8);
  type metadata accessor for CGPoint(0);
  *(v4 + 32) = v5;
  *v4 = *AGGraphGetValue();
  return SecondaryLayerGeometryQuery.primaryPosition.modify;
}

void SecondaryLayerGeometryQuery.primaryPosition.modify(_OWORD **a1)
{
  v1 = *a1;
  (*a1)[1] = **a1;
  AGGraphSetValue();

  free(v1);
}

_DWORD *(*SecondaryLayerGeometryQuery.$primaryPosition.modify(uint64_t a1))(_DWORD *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 8);
  return _ViewInputs.time.modify;
}

__n128 SecondaryLayerGeometryQuery.primarySize.getter@<Q0>(_OWORD *a1@<X8>)
{
  Value = AGGraphGetValue();
  result = *Value;
  v4 = *(Value + 16);
  *a1 = *Value;
  a1[1] = v4;
  return result;
}

void (*SecondaryLayerGeometryQuery.primarySize.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x44uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 64) = *(v1 + 12);
  Value = AGGraphGetValue();
  v6 = Value[1];
  *v4 = *Value;
  v4[1] = v6;
  return SecondaryLayerGeometryQuery.primarySize.modify;
}

void SecondaryLayerGeometryQuery.primarySize.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 16);
  v1[2] = *v1;
  v1[3] = v2;
  AGGraphSetValue();

  free(v1);
}

uint64_t (*SecondaryLayerGeometryQuery.$primarySize.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 12);
  return SecondaryLayerGeometryQuery.$primarySize.modify;
}

void SecondaryLayerGeometryQuery.primaryLayoutComputer.getter(uint64_t *a1@<X8>)
{
  if (*(v1 + 16) == *MEMORY[0x1E698D3F8])
  {
    v3 = 0;
    v4 = 0;
  }

  else
  {
    v4 = *(AGGraphGetValue() + 8);
  }

  *a1 = v3;
  a1[1] = v4;
}

unint64_t SecondaryLayerGeometryQuery.$primaryLayoutComputer.getter()
{
  LODWORD(v1) = *(v0 + 16);
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

uint64_t SecondaryLayerGeometryQuery.$primaryLayoutComputer.setter(uint64_t result)
{
  v2 = *MEMORY[0x1E698D3F8];
  if ((result & 0x100000000) == 0)
  {
    v2 = result;
  }

  *(v1 + 16) = v2;
  return result;
}

uint64_t (*SecondaryLayerGeometryQuery.$primaryLayoutComputer.modify(uint64_t a1))()
{
  *a1 = v1;
  v2 = *(v1 + 16);
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
  return SecondaryLayerGeometryQuery.$primaryLayoutComputer.modify;
}

_BYTE *SecondaryLayerGeometryQuery.$primaryLayoutComputer.modify(_BYTE *result)
{
  v1 = result + 8;
  if (result[12])
  {
    v1 = result + 16;
  }

  *(*result + 16) = *v1;
  return result;
}

void SecondaryLayerGeometryQuery.secondaryLayoutComputer.getter(uint64_t *a1@<X8>)
{
  if (*(v1 + 20) == *MEMORY[0x1E698D3F8])
  {
    v3 = 0;
    v4 = 0;
  }

  else
  {
    v4 = *(AGGraphGetValue() + 8);
  }

  *a1 = v3;
  a1[1] = v4;
}

unint64_t SecondaryLayerGeometryQuery.$secondaryLayoutComputer.getter()
{
  LODWORD(v1) = *(v0 + 20);
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

uint64_t (*SecondaryLayerGeometryQuery.$secondaryLayoutComputer.modify(uint64_t a1))()
{
  *a1 = v1;
  v2 = *(v1 + 20);
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
  return SecondaryLayerGeometryQuery.$secondaryLayoutComputer.modify;
}

_BYTE *SecondaryLayerGeometryQuery.$secondaryLayoutComputer.modify(_BYTE *result)
{
  v1 = result + 8;
  if (result[12])
  {
    v1 = result + 16;
  }

  *(*result + 20) = *v1;
  return result;
}

void type metadata accessor for _StrokedShape<Rectangle._Inset>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _StrokedShape<Rectangle._Inset>)
  {
    lazy protocol witness table accessor for type Rectangle._Inset and conformance Rectangle._Inset();
    v4 = type metadata accessor for _StrokedShape(a1, &type metadata for Rectangle._Inset, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for _StrokedShape<Rectangle._Inset>);
    }
  }
}

void lazy protocol witness table accessor for type _StrokedShape<Rectangle._Inset> and conformance _StrokedShape<A>()
{
  if (!lazy protocol witness table cache variable for type _StrokedShape<Rectangle._Inset> and conformance _StrokedShape<A>)
  {
    type metadata accessor for _StrokedShape<Rectangle._Inset>(255);
    swift_getWitnessTable(protocol conformance descriptor for _StrokedShape<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type _StrokedShape<Rectangle._Inset> and conformance _StrokedShape<A>);
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for _OverlayModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    *((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  return v3;
}

uint64_t initializeWithTake for _OverlayModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  *((*(v5 + 32) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 32) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for _OverlayModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v7[1] = v8[1];
  return a1;
}

void *initializeBufferWithCopyOfBuffer for _OverlayStyleModifier(void *a1, void *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if (v6 <= 7 && (v5 + 1) <= 0x18 && (*(v4 + 80) & 0x100000) == 0)
  {
    (*(v4 + 16))(a1);
    *(v3 + v5) = *(a2 + v5);
  }

  else
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v6 + 16) & ~v6));
  }

  return v3;
}

uint64_t initializeWithTake for _OverlayStyleModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  *(*(v5 + 32) + a1) = *(*(v5 + 32) + a2);
  return a1;
}

uint64_t assignWithTake for _OverlayStyleModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  *(*(v5 + 24) + a1) = *(*(v5 + 24) + a2);
  return a1;
}

uint64_t type metadata completion function for _OverlayShapeModifier(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for _OverlayShapeModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = v5 + v8;
  v10 = *(v7 + 64);
  v11 = v10 + ((v5 + v8) & ~v8) + 2;
  v12 = (*(v4 + 80) | *(v7 + 80));
  if (v12 > 7 || ((*(v4 + 80) | *(v7 + 80)) & 0x100000) != 0 || v11 > 0x18)
  {
    v15 = *a2;
    *v3 = *a2;
    v3 = (v15 + ((v12 + 16) & ~v12));
  }

  else
  {
    v16 = ~v8;
    (*(v4 + 16))(a1);
    v18 = (a2 + v9) & v16;
    (*(v7 + 16))((v3 + v9) & v16, v18, v6);
    *(((v3 + v9) & v16) + v10) = *(v18 + v10);
  }

  return v3;
}

uint64_t initializeWithTake for _OverlayShapeModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 32;
  (*v6)();
  v7 = *(v6 + 32);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8 + 32;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 32))(v12, v13);
  *(*(v9 + 32) + v12) = *(*(v9 + 32) + v13);
  return a1;
}

uint64_t assignWithTake for _OverlayShapeModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 40;
  (*v6)();
  v7 = *(v6 + 24);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8 + 40;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 40))(v12, v13);
  v14 = *(v9 + 24);
  v15 = (v14 + v12);
  v16 = (v14 + v13);
  *v15 = *v16;
  v15[1] = v16[1];
  return a1;
}

double get_witness_table_7SwiftUI4ViewRzAaBRd__r__lAA15ModifiedContentVyxAA16_OverlayModifierVyqd__GGAaBHPxAaBHD1__AgA0cG0HPyHCHCTm(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t), uint64_t a3)
{
  v4 = *a1;
  v5 = a1[2];
  v6 = a2(255, a1[1], a1[3]);
  v8 = type metadata accessor for ModifiedContent(255, v4, v6, v7);
  v10[0] = v5;
  v10[1] = a3;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v8, v10);
}

void Font.ResolvedTraits.init(pointSize:weight:)(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
}

uint64_t Font.ResolvedTraits.init(textStyle:weight:dynamicTypeSize:)@<X0>(double a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  specialized Font.TextStyle.ctTextStyle.getter();
  specialized DynamicTypeSize.ctTextSize.getter();
  result = CTFontDescriptorGetTextStyleSize();
  v9 = 0.0;
  if ((a3 & 1) == 0)
  {
    v9 = a2;
  }

  *a4 = v8;
  *(a4 + 8) = v9;
  *(a4 + 16) = 0;
  *(a4 + 24) = 1;
  return result;
}

uint64_t Font.ResolvedTraits.init(textStyle:weight:sizeCategory:)@<X0>(double a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  specialized Font.TextStyle.ctTextStyle.getter();
  specialized DynamicTypeSize.ctTextSize.getter();
  result = CTFontDescriptorGetTextStyleSize();
  v9 = 0.0;
  if ((a3 & 1) == 0)
  {
    v9 = a2;
  }

  *a4 = v8;
  *(a4 + 8) = v9;
  *(a4 + 16) = 0;
  *(a4 + 24) = 1;
  return result;
}

void Font.ResolvedTraits.init(textStyle:weight:dynamicTypeSize:)(void **a1@<X0>, double a2@<X1>, char a3@<W2>, uint64_t a4@<X8>, unsigned __int8 *a5@<X3>)
{
  v8 = *a1;
  BYTE8(v13) = 0;
  *&v13 = *a5;
  v9 = specialized DynamicTypeSize.ctTextSize.getter();
  CTFontDescriptorGetTextStyleSize();
  v11 = v10;

  v12 = *(&v13 + 1);
  if ((a3 & 1) == 0)
  {
    v12 = a2;
  }

  *a4 = v11;
  *(a4 + 8) = v12;
  *(a4 + 16) = 0;
  *(a4 + 24) = 1;
}

uint64_t Font.resolveDescriptor(in:)(_OWORD *a1, uint64_t a2)
{
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  v4[2] = a1[2];
  return (*(*a2 + 96))(v4);
}

uint64_t Font.resolveTraits(in:)(_OWORD *a1, uint64_t a2)
{
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  v4[2] = a1[2];
  return (*(*a2 + 104))(v4);
}

Swift::Int Font.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  (*(*a1 + 120))(v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Font(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  (*(*v2 + 120))(v4);
  return Hasher._finalize()();
}

uint64_t FontProvider.removing<A>(modifier:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  a3[3] = a1;
  a3[4] = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  v6 = *(*(a1 - 8) + 16);

  return v6(boxed_opaque_existential_1, v3, a1);
}

uint64_t FontBox.provider.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(*v1 + 160);
  v3 = *v1;
  v4 = *(*v1 + 144);
  a1[3] = v4;
  a1[4] = *(v3 + 152);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v6 = *(*(v4 - 8) + 16);

  return v6(boxed_opaque_existential_1, &v1[v2], v4);
}

void Font.FontCache.Key.hash(into:)(uint64_t a1)
{
  v3 = v1[1];
  (*(**v1 + 120))();
  if (!(v3 >> 62))
  {
    MEMORY[0x193AC11A0](*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_10:
    Font.Context.hash(into:)(a1);
    return;
  }

  v7 = __CocoaSet.count.getter();
  MEMORY[0x193AC11A0](v7);
  v4 = __CocoaSet.count.getter();
  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v4 >= 1)
  {
    for (i = 0; i != v4; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x193AC03C0](i, v3);
      }

      else
      {
        v6 = *(v3 + 8 * i + 32);
      }

      (*(*v6 + 104))(a1);
    }

    goto LABEL_10;
  }

  __break(1u);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Font.FontCache.Key(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = v2[1];
  Hasher.init(_seed:)();
  (*(*v3 + 120))(v10);
  if (!(v4 >> 62))
  {
    result = MEMORY[0x193AC11A0](*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_10:
    Font.Context.hash(into:)(v10);
    return Hasher._finalize()();
  }

  v9 = __CocoaSet.count.getter();
  MEMORY[0x193AC11A0](v9);
  result = __CocoaSet.count.getter();
  v6 = result;
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v6 >= 1)
  {
    for (i = 0; i != v6; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x193AC03C0](i, v4);
      }

      else
      {
        v8 = *(v4 + 8 * i + 32);
      }

      (*(*v8 + 104))(v10);
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

Swift::Int Font.Context.hashValue.getter()
{
  Hasher.init(_seed:)();
  Font.Context.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Font.Context()
{
  Hasher.init(_seed:)();
  Font.Context.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Font.Context(uint64_t a1)
{
  Hasher.init(_seed:)();
  Font.Context.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t Font.platformFont(in:modifiers:overrideContextModifiers:)(__int128 *a1, unint64_t a2, char a3, uint64_t a4)
{
  v6 = a1[2];
  v22 = a1[1];
  v23 = v6;
  v21 = *a1;
  if (a3)
  {
  }

  else
  {
    *&v20[0] = *(&v23 + 1);

    specialized Array.append<A>(contentsOf:)(a2);
    a2 = *(&v23 + 1);
  }

  v12 = v21;
  v13 = v22;
  v14 = v23;
  outlined init with copy of Font.Context(&v21, v20);

  v15[0] = v12;
  v15[1] = v13;
  v7 = MEMORY[0x1E69E7CC0];
  *&v16 = v14;
  *(&v16 + 1) = MEMORY[0x1E69E7CC0];
  v20[1] = v12;
  v20[2] = v13;
  v20[3] = v16;
  *&v20[0] = a4;
  *(&v20[0] + 1) = a2;
  outlined init with copy of Font.Context(v15, v17);
  v8 = one-time initialization token for shared;

  if (v8 != -1)
  {
    swift_once();
  }

  specialized ObjectCache.subscript.getter(v20);
  v10 = v9;
  outlined destroy of Font.FontCache.Key(v20);
  v17[0] = v12;
  v17[1] = v13;
  v18 = v14;
  v19 = v7;
  outlined destroy of Font.Context(v17);
  return v10;
}

uint64_t Font.RatioKey.hash(into:)()
{
  v1 = v0[1];
  switch(*v0)
  {
    case 0xB:
    case 0xC:
    case 0xD:
      result = _diagnoseUnavailableCodeReached()();
      __break(1u);
      break;
    default:
      MEMORY[0x193AC11A0]();
      result = MEMORY[0x193AC11A0](v1);
      break;
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Font.RatioKey()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  switch(v1)
  {
    case 1:
      v1 = 1;
      goto LABEL_12;
    case 2:
      v1 = 2;
      goto LABEL_12;
    case 3:
      v1 = 3;
      goto LABEL_12;
    case 4:
      v1 = 4;
      goto LABEL_12;
    case 5:
      v1 = 5;
      goto LABEL_12;
    case 6:
      v1 = 6;
      goto LABEL_12;
    case 7:
      v1 = 7;
      goto LABEL_12;
    case 8:
      v1 = 8;
      goto LABEL_12;
    case 9:
      v1 = 9;
      goto LABEL_12;
    case 10:
      v1 = 10;
      goto LABEL_12;
    case 11:
    case 12:
    case 13:
      result = _diagnoseUnavailableCodeReached()();
      __break(1u);
      return result;
    default:
LABEL_12:
      MEMORY[0x193AC11A0](v1);
      MEMORY[0x193AC11A0](v2);
      return Hasher._finalize()();
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Font.RatioKey(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  Hasher.init(_seed:)();
  switch(v2)
  {
    case 1:
      v2 = 1;
      goto LABEL_12;
    case 2:
      v2 = 2;
      goto LABEL_12;
    case 3:
      v2 = 3;
      goto LABEL_12;
    case 4:
      v2 = 4;
      goto LABEL_12;
    case 5:
      v2 = 5;
      goto LABEL_12;
    case 6:
      v2 = 6;
      goto LABEL_12;
    case 7:
      v2 = 7;
      goto LABEL_12;
    case 8:
      v2 = 8;
      goto LABEL_12;
    case 9:
      v2 = 9;
      goto LABEL_12;
    case 10:
      v2 = 10;
      goto LABEL_12;
    case 11:
    case 12:
    case 13:
      result = _diagnoseUnavailableCodeReached()();
      __break(1u);
      return result;
    default:
LABEL_12:
      MEMORY[0x193AC11A0](v2);
      MEMORY[0x193AC11A0](v3);
      return Hasher._finalize()();
  }
}

uint64_t Font.Context.debugDescription.getter()
{
  v1 = *(v0 + 25);
  _StringGuts.grow(_:)(140);
  MEMORY[0x193ABEDD0](0xD000000000000020, 0x800000018DD794C0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](0xD000000000000017, 0x800000018DD794F0);
  type metadata accessor for LegibilityWeight?();
  v2 = Optional.debugDescription.getter();
  MEMORY[0x193ABEDD0](v2);

  MEMORY[0x193ABEDD0](0xD000000000000015, 0x800000018DD79510);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](0xD00000000000001ALL, 0x800000018DD79530);
  MEMORY[0x193ABEDD0](45, 0xE100000000000000);
  MEMORY[0x193ABEDD0](0xD00000000000001ALL, 0x800000018DD79550);
  if (v1)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (v1)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x193ABEDD0](v3, v4);

  MEMORY[0x193ABEDD0](10506, 0xE200000000000000);
  return 0;
}

CTFontDescriptorRef __swiftcall Font.resolve(in:)(SwiftUI::DynamicTypeSize in)
{
  v2 = v1;
  v3 = *in;
  EnvironmentValues.init()(v13);
  v4 = v13[0];
  if (v13[1])
  {

    v5 = _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA0K6ValuesV013EffectiveFontJ033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v4);
  }

  else
  {
    v10 = v13[0];

    v5 = specialized static EnvironmentValues.EffectiveFontKey.value(in:)(&v10);
  }

  LOBYTE(v10) = v3;
  BYTE1(v10) = 2;
  *(&v10 + 1) = &type metadata for DefaultFontDefinition;
  *&v11 = &protocol witness table for DefaultFontDefinition;
  WORD4(v11) = 2;
  *&v12 = v5;
  *(&v12 + 1) = MEMORY[0x1E69E7CC0];
  v9[0] = v10;
  v9[1] = v11;
  v9[2] = v12;
  v6 = *(*v2 + 96);

  v7 = v6(v9);

  outlined destroy of Font.Context(&v10);
  return v7;
}

double Font.codingProxy.getter@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;

  return result;
}

uint64_t Font.CodingProxy.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = _s7SwiftUI13AnyCodableBoxPAAE6decode4from0E0Qzs7Decoder_p_tKFZAA0c4FontE0C_Tt1g5(a1);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t protocol witness for Decodable.init(from:) in conformance Font.CodingProxy@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = _s7SwiftUI13AnyCodableBoxPAAE6decode4from0E0Qzs7Decoder_p_tKFZAA0c4FontE0C_Tt1g5(a1);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA0K6ValuesV012FallbackFontJ033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(unint64_t a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    *&v15[0] = _s7SwiftUI29DerivedEnvironmentPropertyKey33_0CBA6217BE011883F496E97230B6CF8FLLV5value2in5ValueQzAA0E4ListV_tFZAA0D6ValuesV012FallbackFontF033_1B17C64D9E901A0054B49B69A4A2439DLLV_Tt1g5(a1);
    goto LABEL_9;
  }

  if (v4 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for DerivedEnvironmentPropertyKey<EnvironmentValues.ReadableWidthKey>(0, &lazy cache variable for type metadata for DerivedEnvironmentPropertyKey<EnvironmentValues.FallbackFontKey>, lazy protocol witness table accessor for type EnvironmentValues.FallbackFontKey and conformance EnvironmentValues.FallbackFontKey, &type metadata for EnvironmentValues.FallbackFontKey);
  v6 = v5;
  v7 = *(v3 + 40);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v15);
    outlined init with take of AnyTrackedValue(v15, v16);
    v10 = v17;
    v11 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    (v11[1])(v15, &type metadata for Font, v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    *&v15[0] = _s7SwiftUI29DerivedEnvironmentPropertyKey33_0CBA6217BE011883F496E97230B6CF8FLLV5value2in5ValueQzAA0E4ListV_tFZAA0D6ValuesV012FallbackFontF033_1B17C64D9E901A0054B49B69A4A2439DLLV_Tt1g5(a1);
    type metadata accessor for DerivedValue<DerivedEnvironmentPropertyKey<EnvironmentValues.FallbackFontKey>>(0);
    v17 = v12;
    v18 = &protocol witness table for DerivedValue<A>;
    v16[0] = *&v15[0];

    specialized Dictionary.subscript.setter(v16, v6);
  }

LABEL_9:
  v13 = *&v15[0];
  os_unfair_lock_unlock((v3 + 16));

  return v13;
}

double _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA0K6ValuesVAAE013ReadableWidthJ033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(uint64_t a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    v17 = a1;
    v18 = 0;

    v12 = specialized static EnvironmentValues.ReadableWidthKey.value(in:)(&v17);

    *v16 = v12;
    goto LABEL_9;
  }

  if (v4 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for DerivedEnvironmentPropertyKey<EnvironmentValues.ReadableWidthKey>(0, &lazy cache variable for type metadata for DerivedEnvironmentPropertyKey<EnvironmentValues.ReadableWidthKey>, lazy protocol witness table accessor for type EnvironmentValues.ReadableWidthKey and conformance EnvironmentValues.ReadableWidthKey, &type metadata for EnvironmentValues.ReadableWidthKey);
  v6 = v5;
  v7 = *(v3 + 40);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v16);
    outlined init with take of AnyTrackedValue(v16, &v17);
    v10 = v19;
    v11 = v20;
    __swift_project_boxed_opaque_existential_1(&v17, v19);
    (v11[1])(v16, MEMORY[0x1E69E7DE0], v10, v11);
    __swift_destroy_boxed_opaque_existential_1(&v17);
  }

  else
  {
    v17 = a1;
    v18 = 0;

    v13 = specialized static EnvironmentValues.ReadableWidthKey.value(in:)(&v17);

    *v16 = v13;
    type metadata accessor for DerivedValue<DerivedEnvironmentPropertyKey<EnvironmentValues.ReadableWidthKey>>(0);
    v19 = v14;
    v20 = &protocol witness table for DerivedValue<A>;
    v17 = *&v13;
    specialized Dictionary.subscript.setter(&v17, v6);
  }

LABEL_9:
  os_unfair_lock_unlock((v3 + 16));

  return *v16;
}

void protocol witness for FontProvider.resolveTraits(in:) in conformance Font.NamedProvider(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v12 = *(a1 + 3);
  v13 = a1[5];
  v7 = *v2;
  v8 = *(v2 + 1);
  v9 = v2[2];
  v14 = *(v2 + 24);
  v11[0] = v5;
  v11[1] = v4;
  v11[2] = v6;
  v10 = (*(v6 + 32))(COERCE_DOUBLE(*&v7), v8, &v14, v11, v9);

  Font.ResolvedTraits.init(_:)(v10, a2);
}

uint64_t specialized static Font.RatioKey.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  v6 = 1;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  switch(v2)
  {
    case 1:
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v6 = 0;
      v16 = 1;
      goto LABEL_12;
    case 2:
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v16 = 0;
      v6 = 0;
      v15 = 1;
      goto LABEL_12;
    case 3:
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v15 = 0;
      v16 = 0;
      v6 = 0;
      v14 = 1;
      goto LABEL_12;
    case 4:
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v6 = 0;
      v13 = 1;
      goto LABEL_12;
    case 5:
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v6 = 0;
      v12 = 1;
      goto LABEL_12;
    case 6:
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v6 = 0;
      v11 = 1;
      goto LABEL_12;
    case 7:
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v6 = 0;
      v10 = 1;
      goto LABEL_12;
    case 8:
      v7 = 0;
      v8 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v6 = 0;
      v9 = 1;
      goto LABEL_12;
    case 9:
      v7 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v6 = 0;
      v8 = 1;
      goto LABEL_12;
    case 10:
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v6 = 0;
      v7 = 1;
      goto LABEL_12;
    case 11:
    case 12:
    case 13:
LABEL_35:
      result = _diagnoseUnavailableCodeReached()();
      __break(1u);
      return result;
    default:
LABEL_12:
      switch(v4)
      {
        case 1:
          if ((v16 & 1) == 0)
          {
            goto LABEL_18;
          }

          goto LABEL_16;
        case 2:
          if (v15)
          {
            goto LABEL_16;
          }

          goto LABEL_18;
        case 3:
          if (v14)
          {
            goto LABEL_16;
          }

          goto LABEL_18;
        case 4:
          if (v13)
          {
            goto LABEL_16;
          }

          goto LABEL_18;
        case 5:
          if (v12)
          {
            goto LABEL_16;
          }

          goto LABEL_18;
        case 6:
          if (v11)
          {
            goto LABEL_16;
          }

          goto LABEL_18;
        case 7:
          if (v10)
          {
            goto LABEL_16;
          }

          goto LABEL_18;
        case 8:
          if (v9)
          {
            goto LABEL_16;
          }

          goto LABEL_18;
        case 9:
          if ((v8 & 1) == 0)
          {
            goto LABEL_18;
          }

          goto LABEL_16;
        case 10:
          if (v7)
          {
            goto LABEL_16;
          }

          goto LABEL_18;
        case 11:
        case 12:
        case 13:
          goto LABEL_35;
        default:
          if (v6)
          {
LABEL_16:
            result = v3 == v5;
          }

          else
          {
LABEL_18:
            result = 0;
          }

          break;
      }

      return result;
  }
}

void type metadata accessor for LegibilityWeight?()
{
  if (!lazy cache variable for type metadata for LegibilityWeight?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for LegibilityWeight?);
    }
  }
}

void instantiation function for generic protocol witness table for Font.CodingProxy(uint64_t a1)
{
  lazy protocol witness table accessor for type Font.CodingProxy and conformance Font.CodingProxy();
  *(a1 + 8) = v2;
  lazy protocol witness table accessor for type Font.CodingProxy and conformance Font.CodingProxy();
  *(a1 + 16) = v3;
}

void lazy protocol witness table accessor for type Font.CodingProxy and conformance Font.CodingProxy()
{
  if (!lazy protocol witness table cache variable for type Font.CodingProxy and conformance Font.CodingProxy)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.CodingProxy, &type metadata for Font.CodingProxy, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.CodingProxy and conformance Font.CodingProxy);
  }
}

{
  if (!lazy protocol witness table cache variable for type Font.CodingProxy and conformance Font.CodingProxy)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.CodingProxy, &type metadata for Font.CodingProxy, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.CodingProxy and conformance Font.CodingProxy);
  }
}

double destroy for Font.Context(uint64_t a1)
{

  return result;
}

uint64_t assignWithCopy for Font.Context(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 25);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t assignWithTake for Font.Context(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 25);

  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t *assignWithCopy for Font.FontCache.Key(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 3) = *(a2 + 3);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 41) = *(a2 + 41);
  a1[6] = a2[6];

  a1[7] = a2[7];

  return a1;
}

uint64_t assignWithTake for Font.FontCache.Key(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 41) = *(a2 + 41);

  *(a1 + 48) = *(a2 + 48);

  return a1;
}

uint64_t specialized static Font.FontCache.Key.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 2);
  v25[0] = *(a1 + 1);
  v25[1] = v6;
  v7 = *(a1 + 3);
  v8 = *a2;
  v9 = a2[1];
  v10 = *(a2 + 1);
  v11 = *(a2 + 2);
  v25[2] = v7;
  v26[0] = v10;
  v12 = *(a2 + 3);
  v26[1] = v11;
  v26[2] = v12;
  if ((*(*v4 + 112))(v8) & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI15AnyFontModifierC_Tt1g5(v5, v9))
  {
    v13 = *(a1 + 2);
    v20 = *(a1 + 1);
    v21 = v13;
    v22 = *(a1 + 3);
    v14 = *(a2 + 2);
    v17 = *(a2 + 1);
    v18 = v14;
    v19 = *(a2 + 3);
    outlined init with copy of Font.Context(v25, v24);
    outlined init with copy of Font.Context(v26, v24);
    v15 = specialized static Font.Context.== infix(_:_:)(&v20, &v17);
    v23[0] = v17;
    v23[1] = v18;
    v23[2] = v19;
    outlined destroy of Font.Context(v23);
    v24[0] = v20;
    v24[1] = v21;
    v24[2] = v22;
    outlined destroy of Font.Context(v24);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

void lazy protocol witness table accessor for type EnvironmentValues.ReadableWidthKey and conformance EnvironmentValues.ReadableWidthKey()
{
  if (!lazy protocol witness table cache variable for type EnvironmentValues.ReadableWidthKey and conformance EnvironmentValues.ReadableWidthKey)
  {
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentValues.ReadableWidthKey, &type metadata for EnvironmentValues.ReadableWidthKey, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type EnvironmentValues.ReadableWidthKey and conformance EnvironmentValues.ReadableWidthKey);
  }
}

void type metadata accessor for DerivedValue<DerivedEnvironmentPropertyKey<EnvironmentValues.ReadableWidthKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for DerivedValue<DerivedEnvironmentPropertyKey<EnvironmentValues.ReadableWidthKey>>)
  {
    type metadata accessor for DerivedEnvironmentPropertyKey<EnvironmentValues.ReadableWidthKey>(255, &lazy cache variable for type metadata for DerivedEnvironmentPropertyKey<EnvironmentValues.ReadableWidthKey>, lazy protocol witness table accessor for type EnvironmentValues.ReadableWidthKey and conformance EnvironmentValues.ReadableWidthKey, &type metadata for EnvironmentValues.ReadableWidthKey);
    v3 = v2;
    lazy protocol witness table accessor for type DerivedEnvironmentPropertyKey<EnvironmentValues.ReadableWidthKey> and conformance DerivedEnvironmentPropertyKey<A>();
    v6 = type metadata accessor for DerivedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for DerivedValue<DerivedEnvironmentPropertyKey<EnvironmentValues.ReadableWidthKey>>);
    }
  }
}

void lazy protocol witness table accessor for type DerivedEnvironmentPropertyKey<EnvironmentValues.ReadableWidthKey> and conformance DerivedEnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type DerivedEnvironmentPropertyKey<EnvironmentValues.ReadableWidthKey> and conformance DerivedEnvironmentPropertyKey<A>)
  {
    type metadata accessor for DerivedEnvironmentPropertyKey<EnvironmentValues.ReadableWidthKey>(255, &lazy cache variable for type metadata for DerivedEnvironmentPropertyKey<EnvironmentValues.ReadableWidthKey>, lazy protocol witness table accessor for type EnvironmentValues.ReadableWidthKey and conformance EnvironmentValues.ReadableWidthKey, &type metadata for EnvironmentValues.ReadableWidthKey);
    swift_getWitnessTable(protocol conformance descriptor for DerivedEnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type DerivedEnvironmentPropertyKey<EnvironmentValues.ReadableWidthKey> and conformance DerivedEnvironmentPropertyKey<A>);
  }
}

uint64_t specialized Font.init<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FontBox(0, v7, v8, v9);
  (*(v4 + 16))(v6, a1, a2);
  return FontBox.__allocating_init(_:)(v6);
}

void lazy protocol witness table accessor for type EnvironmentValues.FallbackFontKey and conformance EnvironmentValues.FallbackFontKey()
{
  if (!lazy protocol witness table cache variable for type EnvironmentValues.FallbackFontKey and conformance EnvironmentValues.FallbackFontKey)
  {
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentValues.FallbackFontKey, &type metadata for EnvironmentValues.FallbackFontKey, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type EnvironmentValues.FallbackFontKey and conformance EnvironmentValues.FallbackFontKey);
  }
}

void type metadata accessor for DerivedValue<DerivedEnvironmentPropertyKey<EnvironmentValues.FallbackFontKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for DerivedValue<DerivedEnvironmentPropertyKey<EnvironmentValues.FallbackFontKey>>)
  {
    type metadata accessor for DerivedEnvironmentPropertyKey<EnvironmentValues.ReadableWidthKey>(255, &lazy cache variable for type metadata for DerivedEnvironmentPropertyKey<EnvironmentValues.FallbackFontKey>, lazy protocol witness table accessor for type EnvironmentValues.FallbackFontKey and conformance EnvironmentValues.FallbackFontKey, &type metadata for EnvironmentValues.FallbackFontKey);
    v3 = v2;
    lazy protocol witness table accessor for type DerivedEnvironmentPropertyKey<EnvironmentValues.FallbackFontKey> and conformance DerivedEnvironmentPropertyKey<A>();
    v6 = type metadata accessor for DerivedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for DerivedValue<DerivedEnvironmentPropertyKey<EnvironmentValues.FallbackFontKey>>);
    }
  }
}

void lazy protocol witness table accessor for type DerivedEnvironmentPropertyKey<EnvironmentValues.FallbackFontKey> and conformance DerivedEnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type DerivedEnvironmentPropertyKey<EnvironmentValues.FallbackFontKey> and conformance DerivedEnvironmentPropertyKey<A>)
  {
    type metadata accessor for DerivedEnvironmentPropertyKey<EnvironmentValues.ReadableWidthKey>(255, &lazy cache variable for type metadata for DerivedEnvironmentPropertyKey<EnvironmentValues.FallbackFontKey>, lazy protocol witness table accessor for type EnvironmentValues.FallbackFontKey and conformance EnvironmentValues.FallbackFontKey, &type metadata for EnvironmentValues.FallbackFontKey);
    swift_getWitnessTable(protocol conformance descriptor for DerivedEnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type DerivedEnvironmentPropertyKey<EnvironmentValues.FallbackFontKey> and conformance DerivedEnvironmentPropertyKey<A>);
  }
}

uint64_t getEnumTagSinglePayload for Font.RatioKey(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 65291 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65291 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65291;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65291;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65291;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Font.RatioKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65291 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65291 < 0xFF0000)
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
    v5 = ((a2 - 245) >> 16) + 1;
    *result = a2 - 245;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance SDFStyle.Fill(_OWORD *a1, _OWORD *a2)
{
  v3[0] = *a1;
  *(v3 + 12) = *(a1 + 12);
  v4[0] = *a2;
  *(v4 + 12) = *(a2 + 12);
  return specialized static SDFStyle.Fill.== infix(_:_:)(v3, v4);
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance SDFStyle.Stroke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return specialized static SDFStyle.Stroke.== infix(_:_:)(v5, v7);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SDFStyle.Gradient(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI5ColorVACE11ResolvedHDRV_Tt1g5(*a1, *a2) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ12CoreGraphics7CGFloatV_Tt1g5(v2, v4) & 1) == 0)
  {
    return 0;
  }

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZs5SIMD4VySfG_Tt1g5(v3, v5);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SDFStyle.Shadow(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 10) = *(a1 + 42);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 10) = *(a2 + 42);
  return specialized static SDFStyle.Shadow.== infix(_:_:)(v5, v7) & 1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SDFStyle.GlassHighlight(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v7[2] = a1[2];
  v8[0] = v2;
  *(v8 + 9) = *(a1 + 57);
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v4 = a2[3];
  v9[2] = a2[2];
  v10[0] = v4;
  *(v10 + 9) = *(a2 + 57);
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  return specialized static SDFStyle.GlassHighlight.== infix(_:_:)(v7, v9) & 1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SDFStyle.Mask(unint64_t *a1, unint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((static SDFStyle.== infix(_:_:)(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return static SDFStyle.== infix(_:_:)(v2, v3);
}

void SDFStyle.encode(to:)(uint64_t a1, unint64_t a2)
{
  v8 = a2 >> 60;
  if ((a2 >> 60) <= 4)
  {
    if (v8 <= 1)
    {
      v9 = v2;
      if (v8)
      {
        v35 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v52[2] = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v52[3] = v35;
        v53 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        ProtobufEncoder.encodeVarint(_:)(0x12uLL);
        v12 = *(a1 + 8);
        v13 = *(a1 + 24);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_51:
          v37 = *(v13 + 2);
          v36 = *(v13 + 3);
          if (v37 >= v36 >> 1)
          {
            v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1, v13);
          }

          *(v13 + 2) = v37 + 1;
          *&v13[8 * v37 + 32] = v12;
          *(a1 + 24) = v13;
          if (!__OFADD__(v12, 1))
          {
            *(a1 + 8) = v12 + 1;
            SDFStyle.Stroke.encode(to:)(a1);
            if (v9)
            {
              return;
            }

            goto LABEL_62;
          }

          __break(1u);
LABEL_73:
          v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 2) + 1, 1, v13);
LABEL_6:
          v15 = *(v13 + 2);
          v14 = *(v13 + 3);
          v16 = v15 + 1;
          if (v15 >= v14 >> 1)
          {
            v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v13);
          }

          *(v13 + 2) = v16;
          *&v13[8 * v15 + 32] = v12;
          *(a1 + 24) = v13;
          if (!__OFADD__(v12, 1))
          {
            *(a1 + 8) = v12 + 1;
            SDFStyle.GlassHighlight.encode(to:)(a1);
            if (v9)
            {
              return;
            }

            goto LABEL_62;
          }

          __break(1u);
LABEL_75:
          v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 2) + 1, 1, v13);
          goto LABEL_23;
        }

LABEL_71:
        v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 2) + 1, 1, v13);
        goto LABEL_51;
      }

      v52[0] = *(a2 + 16);
      *(v52 + 12) = *(a2 + 28);
      ProtobufEncoder.encodeVarint(_:)(0xAuLL);
      v12 = *(a1 + 8);
      v13 = *(a1 + 24);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_31:
        v26 = *(v13 + 2);
        v25 = *(v13 + 3);
        if (v26 >= v25 >> 1)
        {
          v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v13);
        }

        *(v13 + 2) = v26 + 1;
        *&v13[8 * v26 + 32] = v12;
        *(a1 + 24) = v13;
        if (!__OFADD__(v12, 1))
        {
          *(a1 + 8) = v12 + 1;
          SDFStyle.Fill.encode(to:)(a1);
          if (v9)
          {
            return;
          }

          goto LABEL_62;
        }

        __break(1u);
        goto LABEL_71;
      }

LABEL_69:
      v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 2) + 1, 1, v13);
      goto LABEL_31;
    }

    if (v8 != 2)
    {
      if (v8 != 3)
      {
        return;
      }

      v9 = v2;
      v17 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v54 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v18 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      v55 = v17;
      v56[0] = v18;
      *(v56 + 10) = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x3A);
      ProtobufEncoder.encodeVarint(_:)(0x22uLL);
      v12 = *(a1 + 8);
      v13 = *(a1 + 24);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_15;
      }

      goto LABEL_67;
    }

    v27 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v9 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    v12 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);

    ProtobufEncoder.encodeVarint(_:)(0x1AuLL);
    v3 = *(a1 + 8);
    v13 = *(a1 + 24);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 2) + 1, 1, v13);
    }

    v28 = *(v13 + 2);
    v29 = *(v13 + 3);
    v30 = v28 + 1;
    if (v28 >= v29 >> 1)
    {
      v65 = v28 + 1;
      v45 = v13;
      v46 = v28;
      v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v28 + 1, 1, v45);
      v28 = v46;
      v30 = v65;
      v13 = v47;
    }

    *(v13 + 2) = v30;
    *&v13[8 * v28 + 32] = v3;
    *(a1 + 24) = v13;
    if (!__OFADD__(v3, 1))
    {
      *(a1 + 8) = v3 + 1;
      SDFStyle.Gradient.encode(to:)(a1, v27, v9, v12);

      if (v2)
      {
        return;
      }

      goto LABEL_62;
    }

    __break(1u);
LABEL_65:
    v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 2) + 1, 1, v13);
LABEL_44:
    v33 = *(v13 + 2);
    v32 = *(v13 + 3);
    if (v33 >= v32 >> 1)
    {
      v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v13);
    }

    *(v13 + 2) = v33 + 1;
    *&v13[8 * v33 + 32] = v12;
    *(a1 + 24) = v13;
    if (!__OFADD__(v12, 1))
    {
      *(a1 + 8) = v12 + 1;
      SDFStyle.GlassDisplacement.encode(to:)(a1);
      if (v9)
      {
        return;
      }

      goto LABEL_62;
    }

    __break(1u);
LABEL_67:
    v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 2) + 1, 1, v13);
LABEL_15:
    v20 = *(v13 + 2);
    v19 = *(v13 + 3);
    if (v20 >= v19 >> 1)
    {
      v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v13);
    }

    *(v13 + 2) = v20 + 1;
    *&v13[8 * v20 + 32] = v12;
    *(a1 + 24) = v13;
    if (!__OFADD__(v12, 1))
    {
      *(a1 + 8) = v12 + 1;
      SDFStyle.Shadow.encode(to:)(a1);
      if (v9)
      {
        return;
      }

      goto LABEL_62;
    }

    __break(1u);
    goto LABEL_69;
  }

  if (v8 <= 7)
  {
    if (v8 != 5)
    {
      if (v8 != 6)
      {
        v38 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x80);
        v61[8] = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x70);
        v61[9] = v38;
        v62 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x90);
        v39 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
        v61[4] = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        v61[5] = v39;
        v40 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x60);
        v61[6] = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
        v61[7] = v40;
        v41 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v61[2] = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v61[3] = v41;
        specialized ProtobufEncoder.messageField<A>(_:_:)(10);
        return;
      }

      v9 = v2;
      v10 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
      v60 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      v61[0] = v10;
      *(v61 + 9) = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x49);
      v11 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v58 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v59 = v11;
      ProtobufEncoder.encodeVarint(_:)(0x32uLL);
      v12 = *(a1 + 8);
      v13 = *(a1 + 24);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_6;
      }

      goto LABEL_73;
    }

    v9 = v2;
    v31 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
    v56[2] = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v56[3] = v31;
    v57 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
    ProtobufEncoder.encodeVarint(_:)(0x2AuLL);
    v12 = *(a1 + 8);
    v13 = *(a1 + 24);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_44;
    }

    goto LABEL_65;
  }

  if (v8 == 8)
  {
    v34 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
    v63[0] = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v63[1] = v34;
    v64 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
    outlined init with copy of SDFStyle.Group(v63, v51);
    specialized ProtobufEncoder.messageField<A>(_:_:)(7);
    outlined destroy of SDFStyle.Group(v63);
    return;
  }

  v15 = v2;
  if (v8 != 9)
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v5 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    v6 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
    ProtobufEncoder.encodeVarint(_:)(0x4AuLL);
    v9 = *(a1 + 8);
    v13 = *(a1 + 24);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_58;
    }

    goto LABEL_77;
  }

  v16 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  v9 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);

  ProtobufEncoder.encodeVarint(_:)(0x42uLL);
  v3 = *(a1 + 8);
  v13 = *(a1 + 24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_75;
  }

LABEL_23:
  v21 = v15;
  v22 = *(v13 + 2);
  v23 = *(v13 + 3);
  v24 = v22 + 1;
  if (v22 >= v23 >> 1)
  {
    v48 = v13;
    v49 = *(v13 + 2);
    v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v22 + 1, 1, v48);
    v22 = v49;
    v21 = v15;
    v13 = v50;
  }

  *(v13 + 2) = v24;
  *&v13[8 * v22 + 32] = v3;
  *(a1 + 24) = v13;
  if (!__OFADD__(v3, 1))
  {
    *(a1 + 8) = v3 + 1;
    SDFStyle.Mask.encode(to:)(a1, v16, v9);
    if (!v21)
    {
      ProtobufEncoder.endLengthDelimited()();
    }

    return;
  }

  __break(1u);
LABEL_77:
  v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 2) + 1, 1, v13);
LABEL_58:
  v42 = v15;
  v44 = *(v13 + 2);
  v43 = *(v13 + 3);
  if (v44 >= v43 >> 1)
  {
    v42 = v15;
    v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1, v13);
  }

  *(v13 + 2) = v44 + 1;
  *&v13[8 * v44 + 32] = v9;
  *(a1 + 24) = v13;
  if (__OFADD__(v9, 1))
  {
    __break(1u);
    return;
  }

  *(a1 + 8) = v9 + 1;
  SDFStyle.OutputSDF.encode(to:)(a1, v4, v5, v6);
  if (!v42)
  {
LABEL_62:
    ProtobufEncoder.endLengthDelimited()();
  }
}

char *protocol witness for ProtobufDecodableMessage.init(from:) in conformance SDFStyle@<X0>(char **a1@<X8>, __int128 *a2@<X0>)
{
  result = specialized SDFStyle.init(from:)(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void SDFStyle.OutputSDF.encode(to:)(void *a1, double a2, double a3, double a4)
{
  if (a2 == 0.0)
  {
    goto LABEL_12;
  }

  v8 = a2;
  v9 = fabs(a2);
  if (v9 >= 65536.0)
  {
    v10 = 9;
  }

  else
  {
    v10 = 13;
  }

  ProtobufEncoder.encodeVarint(_:)(v10);
  if (v9 >= 65536.0)
  {
    v13 = a1[1];
    v12 = v13 + 8;
    if (!__OFADD__(v13, 8))
    {
      if (a1[2] < v12)
      {
        *ProtobufEncoder.growBufferSlow(to:)(v12) = v8;
      }

      else
      {
        a1[1] = v12;
        *(*a1 + v13) = v8;
      }

      goto LABEL_12;
    }

    goto LABEL_16;
  }

  v11 = a1[1];
  v12 = v11 + 4;
  if (__OFADD__(v11, 4))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  *&v8 = v8;
  if (a1[2] >= v12)
  {
    a1[1] = v12;
    *(*a1 + v11) = LODWORD(v8);
    goto LABEL_12;
  }

LABEL_17:
  *ProtobufEncoder.growBufferSlow(to:)(v12) = LODWORD(v8);
LABEL_12:
  ProtobufEncoder.encodeVarint(_:)(0x12uLL);
  v14 = specialized ProtobufEncoder.binaryPlistData<A>(for:)(a3, a4);
  if (!v4)
  {
    v16 = v14;
    v17 = v15;
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v14, v15, a1);
    outlined consume of Data._Representation(v16, v17);
  }
}

void protocol witness for ProtobufDecodableMessage.init(from:) in conformance SDFStyle.OutputSDF(void *a1@<X8>, uint64_t a2@<X0>)
{
  specialized SDFStyle.OutputSDF.init(from:)(a2);
  if (!v2)
  {
    *a1 = v4;
    a1[1] = v5;
    a1[2] = v6;
  }
}

uint64_t SDFStyle.Fill.encode(to:)(float *a1)
{
  v3 = *v1;
  if (*v1 != 0.0)
  {
    v4 = fabs(v3);
    if (v4 >= 65536.0)
    {
      v5 = 9;
    }

    else
    {
      v5 = 13;
    }

    ProtobufEncoder.encodeVarint(_:)(v5);
    if (v4 >= 65536.0)
    {
      v8 = *(a1 + 1);
      isUniquelyReferenced_nonNull_native = v8 + 8;
      if (__OFADD__(v8, 8))
      {
        goto LABEL_20;
      }

      if (*(a1 + 2) < isUniquelyReferenced_nonNull_native)
      {
        *ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native) = v3;
      }

      else
      {
        *(a1 + 1) = isUniquelyReferenced_nonNull_native;
        *(*a1 + v8) = v3;
      }
    }

    else
    {
      v6 = *(a1 + 1);
      isUniquelyReferenced_nonNull_native = v6 + 4;
      if (__OFADD__(v6, 4))
      {
        goto LABEL_19;
      }

      *&v3 = v3;
      if (*(a1 + 2) < isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_21;
      }

      *(a1 + 1) = isUniquelyReferenced_nonNull_native;
      *(*a1 + v6) = LODWORD(v3);
    }
  }

  while (1)
  {
    ProtobufEncoder.encodeVarint(_:)(0x12uLL);
    v9 = *(a1 + 1);
    v10 = *(a1 + 3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 16) + 1, 1, v10);
      v10 = isUniquelyReferenced_nonNull_native;
    }

    v12 = *(v10 + 16);
    v11 = *(v10 + 24);
    if (v12 >= v11 >> 1)
    {
      isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v10);
      v10 = isUniquelyReferenced_nonNull_native;
    }

    *(v10 + 16) = v12 + 1;
    *(v10 + 8 * v12 + 32) = v9;
    *(a1 + 3) = v10;
    if (!__OFADD__(v9, 1))
    {
      break;
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    *ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native) = LODWORD(v3);
  }

  *(a1 + 1) = v9 + 1;
  Color.ResolvedHDR.encode(to:)(a1);
  return ProtobufEncoder.endLengthDelimited()();
}

double protocol witness for ProtobufDecodableMessage.init(from:) in conformance SDFStyle.Fill@<D0>(_OWORD *a1@<X8>, unint64_t a2@<X0>)
{
  specialized SDFStyle.Fill.init(from:)(a2, v5);
  if (!v2)
  {
    *a1 = v5[0];
    result = *(v5 + 12);
    *(a1 + 12) = *(v5 + 12);
  }

  return result;
}

uint64_t SDFStyle.Stroke.encode(to:)(float *a1)
{
  v2 = v1;
  v4 = *v1;
  if (*v1 != 0.0)
  {
    v5 = fabs(v4);
    if (v5 >= 65536.0)
    {
      v6 = 9;
    }

    else
    {
      v6 = 13;
    }

    ProtobufEncoder.encodeVarint(_:)(v6);
    if (v5 >= 65536.0)
    {
      v9 = *(a1 + 1);
      isUniquelyReferenced_nonNull_native = v9 + 8;
      if (__OFADD__(v9, 8))
      {
        goto LABEL_31;
      }

      if (*(a1 + 2) < isUniquelyReferenced_nonNull_native)
      {
        *ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native) = v4;
      }

      else
      {
        *(a1 + 1) = isUniquelyReferenced_nonNull_native;
        *(*a1 + v9) = v4;
      }
    }

    else
    {
      v7 = *(a1 + 1);
      isUniquelyReferenced_nonNull_native = v7 + 4;
      if (__OFADD__(v7, 4))
      {
        goto LABEL_30;
      }

      *&v4 = v4;
      if (*(a1 + 2) < isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_34;
      }

      *(a1 + 1) = isUniquelyReferenced_nonNull_native;
      *(*a1 + v7) = LODWORD(v4);
    }
  }

  while (1)
  {
    v4 = v2[1];
    if (v4 == 0.0)
    {
      goto LABEL_23;
    }

    v10 = fabs(v4);
    if (v10 >= 65536.0)
    {
      v11 = 17;
    }

    else
    {
      v11 = 21;
    }

    ProtobufEncoder.encodeVarint(_:)(v11);
    if (v10 < 65536.0)
    {
      v12 = *(a1 + 1);
      isUniquelyReferenced_nonNull_native = v12 + 4;
      if (!__OFADD__(v12, 4))
      {
        *&v4 = v4;
        if (*(a1 + 2) < isUniquelyReferenced_nonNull_native)
        {
          *ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native) = LODWORD(v4);
        }

        else
        {
          *(a1 + 1) = isUniquelyReferenced_nonNull_native;
          *(*a1 + v12) = LODWORD(v4);
        }

        goto LABEL_23;
      }

LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v13 = *(a1 + 1);
    isUniquelyReferenced_nonNull_native = v13 + 8;
    if (!__OFADD__(v13, 8))
    {
      break;
    }

LABEL_33:
    __break(1u);
LABEL_34:
    *ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native) = LODWORD(v4);
  }

  if (*(a1 + 2) < isUniquelyReferenced_nonNull_native)
  {
    *ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native) = v4;
  }

  else
  {
    *(a1 + 1) = isUniquelyReferenced_nonNull_native;
    *(*a1 + v13) = v4;
  }

LABEL_23:
  ProtobufEncoder.encodeVarint(_:)(0x1AuLL);
  v14 = *(a1 + 1);
  v15 = *(a1 + 3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 16) + 1, 1, v15);
    v15 = isUniquelyReferenced_nonNull_native;
  }

  v17 = *(v15 + 16);
  v16 = *(v15 + 24);
  v2 = (v17 + 1);
  if (v17 >= v16 >> 1)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v15);
    v15 = isUniquelyReferenced_nonNull_native;
  }

  *(v15 + 16) = v2;
  *(v15 + 8 * v17 + 32) = v14;
  *(a1 + 3) = v15;
  if (__OFADD__(v14, 1))
  {
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  *(a1 + 1) = v14 + 1;
  Color.ResolvedHDR.encode(to:)(a1);
  return ProtobufEncoder.endLengthDelimited()();
}

double protocol witness for ProtobufDecodableMessage.init(from:) in conformance SDFStyle.Stroke@<D0>(uint64_t a1@<X8>, unint64_t a2@<X0>)
{
  specialized SDFStyle.Stroke.init(from:)(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t SDFStyle.Gradient.encode(to:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = result;
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = (a2 + 48);
    v7 = 45;
    do
    {
      v10 = *(v6 - 4);
      v9 = *(v6 - 3);
      v12 = *(v6 - 2);
      v11 = *(v6 - 1);
      v13 = *v6;
      v14 = v4[1];
      v15 = v4[2];
      if (v14 >= v15)
      {
        result = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_185;
        }

        if (v15 < result)
        {
          v44 = ProtobufEncoder.growBufferSlow(to:)(result);
        }

        else
        {
          v4[1] = result;
          v44 = (*v4 + v14);
        }

        *v44 = 10;
        v16 = v4[1];
      }

      else
      {
        *(*v4 + v14) = 10;
        v16 = (v14 + 1);
        v4[1] = v14 + 1;
      }

      v17 = v4[3];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 2) + 1, 1, v17);
      }

      v19 = *(v17 + 2);
      v18 = *(v17 + 3);
      if (v19 >= v18 >> 1)
      {
        v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v17);
      }

      *(v17 + 2) = v19 + 1;
      *&v17[8 * v19 + 32] = v16;
      v4[3] = v17;
      v20 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_172;
      }

      v4[1] = v20;
      if (v10 == 0.0)
      {
        if (v9 == 0.0)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v21 = v4[2];
        if (v20 >= v21)
        {
          result = (v16 + 2);
          if (__OFADD__(v20, 1))
          {
            goto LABEL_188;
          }

          if (v21 < result)
          {
            v46 = ProtobufEncoder.growBufferSlow(to:)(result);
          }

          else
          {
            v4[1] = result;
            v46 = &v20[*v4];
          }

          *v46 = 13;
          v22 = v4[1];
          v23 = (v22 + 4);
          if (__OFADD__(v22, 4))
          {
            goto LABEL_175;
          }
        }

        else
        {
          v20[*v4] = 13;
          v22 = v16 + 2;
          v4[1] = v16 + 2;
          v23 = (v16 + 6);
          if (__OFADD__(v16 + 2, 4))
          {
            goto LABEL_175;
          }
        }

        if (v4[2] < v23)
        {
          v24 = ProtobufEncoder.growBufferSlow(to:)(v23);
        }

        else
        {
          v4[1] = v23;
          v24 = &v22[*v4];
        }

        *v24 = v10;
        if (v9 == 0.0)
        {
LABEL_15:
          if (v12 != 0.0)
          {
            goto LABEL_28;
          }

          goto LABEL_16;
        }
      }

      v25 = v4[1];
      v26 = v4[2];
      if (v25 >= v26)
      {
        result = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          goto LABEL_189;
        }

        if (v26 < result)
        {
          v47 = ProtobufEncoder.growBufferSlow(to:)(result);
        }

        else
        {
          v4[1] = result;
          v47 = (*v4 + v25);
        }

        *v47 = 21;
        v27 = v4[1];
        v28 = v27 + 4;
        if (__OFADD__(v27, 4))
        {
          goto LABEL_176;
        }
      }

      else
      {
        *(*v4 + v25) = 21;
        v27 = v25 + 1;
        v4[1] = v27;
        v28 = v27 + 4;
        if (__OFADD__(v27, 4))
        {
          goto LABEL_176;
        }
      }

      if (v4[2] < v28)
      {
        v29 = ProtobufEncoder.growBufferSlow(to:)(v28);
      }

      else
      {
        v4[1] = v28;
        v29 = (*v4 + v27);
      }

      *v29 = v9;
      if (v12 != 0.0)
      {
LABEL_28:
        v30 = v4[1];
        v31 = v4[2];
        if (v30 >= v31)
        {
          result = v30 + 1;
          if (__OFADD__(v30, 1))
          {
            goto LABEL_190;
          }

          if (v31 < result)
          {
            v48 = ProtobufEncoder.growBufferSlow(to:)(result);
          }

          else
          {
            v4[1] = result;
            v48 = (*v4 + v30);
          }

          *v48 = 29;
          v32 = v4[1];
          v33 = v32 + 4;
          if (__OFADD__(v32, 4))
          {
            goto LABEL_177;
          }
        }

        else
        {
          *(*v4 + v30) = 29;
          v32 = v30 + 1;
          v4[1] = v32;
          v33 = v32 + 4;
          if (__OFADD__(v32, 4))
          {
            goto LABEL_177;
          }
        }

        if (v4[2] < v33)
        {
          v34 = ProtobufEncoder.growBufferSlow(to:)(v33);
        }

        else
        {
          v4[1] = v33;
          v34 = (*v4 + v32);
        }

        *v34 = v12;
        if (v11 == 1.0)
        {
          goto LABEL_38;
        }

        goto LABEL_33;
      }

LABEL_16:
      if (v11 == 1.0)
      {
        goto LABEL_38;
      }

LABEL_33:
      v35 = v4[1];
      v36 = v4[2];
      if (v35 >= v36)
      {
        result = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          goto LABEL_191;
        }

        if (v36 < result)
        {
          v49 = ProtobufEncoder.growBufferSlow(to:)(result);
        }

        else
        {
          v4[1] = result;
          v49 = (*v4 + v35);
        }

        *v49 = 37;
        v37 = v4[1];
        v38 = v37 + 4;
        if (__OFADD__(v37, 4))
        {
          goto LABEL_178;
        }
      }

      else
      {
        *(*v4 + v35) = 37;
        v37 = v35 + 1;
        v4[1] = v37;
        v38 = v37 + 4;
        if (__OFADD__(v37, 4))
        {
          goto LABEL_178;
        }
      }

      if (v4[2] < v38)
      {
        v39 = ProtobufEncoder.growBufferSlow(to:)(v38);
      }

      else
      {
        v4[1] = v38;
        v39 = (*v4 + v37);
      }

      *v39 = v11;
LABEL_38:
      if (v13 != 0.0)
      {
        v40 = v4[1];
        v41 = v4[2];
        if (v40 >= v41)
        {
          result = v40 + 1;
          if (__OFADD__(v40, 1))
          {
            goto LABEL_187;
          }

          if (v41 < result)
          {
            v45 = ProtobufEncoder.growBufferSlow(to:)(result);
          }

          else
          {
            v4[1] = result;
            v45 = (*v4 + v40);
          }

          *v45 = 45;
          v42 = v4[1];
          v43 = v42 + 4;
          if (__OFADD__(v42, 4))
          {
            goto LABEL_174;
          }
        }

        else
        {
          *(*v4 + v40) = 45;
          v42 = v40 + 1;
          v4[1] = v42;
          v43 = v42 + 4;
          if (__OFADD__(v42, 4))
          {
            goto LABEL_174;
          }
        }

        if (v4[2] >= v43)
        {
          v4[1] = v43;
          v8 = (*v4 + v42);
        }

        else
        {
          v8 = ProtobufEncoder.growBufferSlow(to:)(v43);
        }

        *v8 = v13;
      }

      result = ProtobufEncoder.endLengthDelimited()();
      v6 += 5;
      --v5;
    }

    while (v5);
  }

  v5 = a3;
  v7 = *(a3 + 16);
  if (v7)
  {
    ProtobufEncoder.encodeVarint(_:)(0x12uLL);
    v16 = v4[1];
    v17 = v4[3];
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_183;
    }

    while (1)
    {
      v51 = *(v17 + 2);
      v50 = *(v17 + 3);
      if (v51 >= v50 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1, v17);
        v17 = result;
      }

      *(v17 + 2) = v51 + 1;
      *&v17[8 * v51 + 32] = v16;
      v4[3] = v17;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      v4[1] = v16 + 1;
      v16 = (v5 + 32);
      while (1)
      {
        v52 = v4[1];
        v53 = v52 + 4;
        if (__OFADD__(v52, 4))
        {
          break;
        }

        v54 = *v16;
        if (v4[2] < v53)
        {
          v55 = ProtobufEncoder.growBufferSlow(to:)(v53);
        }

        else
        {
          v4[1] = v53;
          v55 = (*v4 + v52);
        }

        v56 = v54;
        *v55 = v56;
        v16 += 8;
        if (!--v7)
        {
          result = ProtobufEncoder.endLengthDelimited()();
          goto LABEL_99;
        }
      }

      __break(1u);
LABEL_172:
      __break(1u);
LABEL_173:
      __break(1u);
LABEL_174:
      __break(1u);
LABEL_175:
      __break(1u);
LABEL_176:
      __break(1u);
LABEL_177:
      __break(1u);
LABEL_178:
      __break(1u);
LABEL_179:
      __break(1u);
LABEL_180:
      __break(1u);
LABEL_181:
      __break(1u);
LABEL_182:
      __break(1u);
LABEL_183:
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 2) + 1, 1, v17);
      v17 = result;
    }

    __break(1u);
LABEL_185:
    __break(1u);
LABEL_186:
    __break(1u);
LABEL_187:
    __break(1u);
LABEL_188:
    __break(1u);
LABEL_189:
    __break(1u);
LABEL_190:
    __break(1u);
LABEL_191:
    __break(1u);
LABEL_192:
    __break(1u);
LABEL_193:
    __break(1u);
LABEL_194:
    __break(1u);
LABEL_195:
    __break(1u);
  }

  else
  {
LABEL_99:
    v7 = *(a4 + 16);
    if (v7)
    {
      v17 = (a4 + 32);
      v5 = 13;
      while (1)
      {
        v58 = v4[1];
        v59 = v4[2];
        v93 = *v17;
        if (v58 >= v59)
        {
          result = v58 + 1;
          if (__OFADD__(v58, 1))
          {
            goto LABEL_186;
          }

          if (v59 < result)
          {
            v86 = ProtobufEncoder.growBufferSlow(to:)(result);
          }

          else
          {
            v4[1] = result;
            v86 = (*v4 + v58);
          }

          *v86 = 18;
          v60 = v4[1];
        }

        else
        {
          *(*v4 + v58) = 18;
          v60 = v58 + 1;
          v4[1] = v58 + 1;
        }

        v16 = v4[3];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
        }

        v62 = *(v16 + 2);
        v61 = *(v16 + 3);
        v63 = v93;
        if (v62 >= v61 >> 1)
        {
          v87 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v61 > 1), v62 + 1, 1, v16);
          v63 = v93;
          v16 = v87;
        }

        *(v16 + 2) = v62 + 1;
        *&v16[8 * v62 + 32] = v60;
        v4[3] = v16;
        v64 = v60 + 1;
        if (__OFADD__(v60, 1))
        {
          goto LABEL_173;
        }

        v4[1] = v64;
        if (*&v63 != 0.0)
        {
          v65 = v4[2];
          if (v64 >= v65)
          {
            result = v60 + 2;
            if (__OFADD__(v64, 1))
            {
              goto LABEL_193;
            }

            if (v65 < result)
            {
              v88 = ProtobufEncoder.growBufferSlow(to:)(result);
              v63 = v93;
            }

            else
            {
              v4[1] = result;
              v88 = (*v4 + v64);
            }

            *v88 = 13;
            v66 = v4[1];
            v67 = v66 + 4;
            if (__OFADD__(v66, 4))
            {
              goto LABEL_179;
            }
          }

          else
          {
            *(*v4 + v64) = 13;
            v66 = v60 + 2;
            v4[1] = v60 + 2;
            v67 = v60 + 6;
            if (__OFADD__(v60 + 2, 4))
            {
              goto LABEL_179;
            }
          }

          if (v4[2] < v67)
          {
            v68 = ProtobufEncoder.growBufferSlow(to:)(v67);
            v63 = v93;
          }

          else
          {
            v4[1] = v67;
            v68 = (*v4 + v66);
          }

          *v68 = v63;
        }

        v69 = DWORD1(v63);
        if (*(&v63 + 1) != 0.0)
        {
          v70 = v4[1];
          v71 = v4[2];
          if (v70 >= v71)
          {
            result = v70 + 1;
            if (__OFADD__(v70, 1))
            {
              goto LABEL_192;
            }

            if (v71 < result)
            {
              v89 = ProtobufEncoder.growBufferSlow(to:)(result);
              *(&v63 + 1) = *(&v93 + 1);
            }

            else
            {
              v4[1] = result;
              v89 = (*v4 + v70);
            }

            *v89 = 21;
            v72 = v4[1];
            v73 = v72 + 4;
            if (__OFADD__(v72, 4))
            {
              goto LABEL_180;
            }
          }

          else
          {
            *(*v4 + v70) = 21;
            v72 = v70 + 1;
            v4[1] = v72;
            v73 = v72 + 4;
            if (__OFADD__(v72, 4))
            {
              goto LABEL_180;
            }
          }

          if (v4[2] < v73)
          {
            v74 = ProtobufEncoder.growBufferSlow(to:)(v73);
            *(&v63 + 1) = *(&v93 + 1);
          }

          else
          {
            v4[1] = v73;
            v74 = (*v4 + v72);
          }

          *v74 = v69;
        }

        v75 = DWORD2(v63);
        if (*(&v63 + 2) != 1.0)
        {
          v76 = v4[1];
          v77 = v4[2];
          if (v76 >= v77)
          {
            result = v76 + 1;
            if (__OFADD__(v76, 1))
            {
              goto LABEL_194;
            }

            if (v77 < result)
            {
              v90 = ProtobufEncoder.growBufferSlow(to:)(result);
              HIDWORD(v63) = HIDWORD(v93);
            }

            else
            {
              v4[1] = result;
              v90 = (*v4 + v76);
            }

            *v90 = 29;
            v78 = v4[1];
            v79 = v78 + 4;
            if (__OFADD__(v78, 4))
            {
              goto LABEL_181;
            }
          }

          else
          {
            *(*v4 + v76) = 29;
            v78 = v76 + 1;
            v4[1] = v78;
            v79 = v78 + 4;
            if (__OFADD__(v78, 4))
            {
              goto LABEL_181;
            }
          }

          if (v4[2] < v79)
          {
            v80 = ProtobufEncoder.growBufferSlow(to:)(v79);
            HIDWORD(v63) = HIDWORD(v93);
          }

          else
          {
            v4[1] = v79;
            v80 = (*v4 + v78);
          }

          *v80 = v75;
        }

        v81 = HIDWORD(v63);
        if (*(&v63 + 3) != 1.0)
        {
          v82 = v4[1];
          v83 = v4[2];
          if (v82 >= v83)
          {
            result = v82 + 1;
            if (__OFADD__(v82, 1))
            {
              goto LABEL_195;
            }

            if (v83 < result)
            {
              v91 = ProtobufEncoder.growBufferSlow(to:)(result);
            }

            else
            {
              v4[1] = result;
              v91 = (*v4 + v82);
            }

            *v91 = 37;
            v84 = v4[1];
            v85 = v84 + 4;
            if (__OFADD__(v84, 4))
            {
              goto LABEL_182;
            }
          }

          else
          {
            *(*v4 + v82) = 37;
            v84 = v82 + 1;
            v4[1] = v84;
            v85 = v84 + 4;
            if (__OFADD__(v84, 4))
            {
              goto LABEL_182;
            }
          }

          if (v4[2] >= v85)
          {
            v4[1] = v85;
            v57 = (*v4 + v84);
          }

          else
          {
            v57 = ProtobufEncoder.growBufferSlow(to:)(v85);
          }

          *v57 = v81;
        }

        result = ProtobufEncoder.endLengthDelimited()();
        v17 += 16;
        if (!--v7)
        {
          return result;
        }
      }
    }
  }

  return result;
}

char *protocol witness for ProtobufDecodableMessage.init(from:) in conformance SDFStyle.Gradient@<X0>(char **a1@<X8>, void *a2@<X0>)
{
  result = specialized SDFStyle.Gradient.init(from:)(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

void SDFStyle.Shadow.encode(to:)(float *a1)
{
  v3 = v1;
  v5 = *v1;
  if (*v1 != 0.0)
  {
    v2 = fabs(v5);
    if (v2 >= 65536.0)
    {
      v6 = 9;
    }

    else
    {
      v6 = 13;
    }

    ProtobufEncoder.encodeVarint(_:)(v6);
    if (v2 >= 65536.0)
    {
      v9 = *(a1 + 1);
      isUniquelyReferenced_nonNull_native = v9 + 8;
      if (__OFADD__(v9, 8))
      {
        goto LABEL_44;
      }

      if (*(a1 + 2) < isUniquelyReferenced_nonNull_native)
      {
        *ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native) = v5;
      }

      else
      {
        *(a1 + 1) = isUniquelyReferenced_nonNull_native;
        *(*a1 + v9) = v5;
      }
    }

    else
    {
      v7 = *(a1 + 1);
      isUniquelyReferenced_nonNull_native = v7 + 4;
      if (__OFADD__(v7, 4))
      {
        goto LABEL_43;
      }

      *&v5 = v5;
      if (*(a1 + 2) < isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_47;
      }

      *(a1 + 1) = isUniquelyReferenced_nonNull_native;
      *(*a1 + v7) = LODWORD(v5);
    }
  }

  while (1)
  {
    ProtobufEncoder.encodeVarint(_:)(0x12uLL);
    v10 = *(a1 + 1);
    v11 = *(a1 + 3);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
    }

    v13 = *(v11 + 2);
    v12 = *(v11 + 3);
    if (v13 >= v12 >> 1)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v11);
    }

    *(v11 + 2) = v13 + 1;
    *&v11[8 * v13 + 32] = v10;
    *(a1 + 3) = v11;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_41:
      isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
      v11 = isUniquelyReferenced_nonNull_native;
      goto LABEL_31;
    }

    *(a1 + 1) = v10 + 1;
    Color.ResolvedHDR.encode(to:)(a1);
    ProtobufEncoder.endLengthDelimited()();
    v5 = v3[4];
    if (v5 == 0.0)
    {
      goto LABEL_28;
    }

    v2 = fabs(v5);
    if (v2 >= 65536.0)
    {
      v14 = 25;
    }

    else
    {
      v14 = 29;
    }

    ProtobufEncoder.encodeVarint(_:)(v14);
    if (v2 < 65536.0)
    {
      v15 = *(a1 + 1);
      isUniquelyReferenced_nonNull_native = v15 + 4;
      if (!__OFADD__(v15, 4))
      {
        v16 = v5;
        if (*(a1 + 2) < isUniquelyReferenced_nonNull_native)
        {
          *ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native) = v16;
        }

        else
        {
          *(a1 + 1) = isUniquelyReferenced_nonNull_native;
          *(*a1 + v15) = v16;
        }

        goto LABEL_28;
      }

LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v17 = *(a1 + 1);
    isUniquelyReferenced_nonNull_native = v17 + 8;
    if (!__OFADD__(v17, 8))
    {
      break;
    }

LABEL_46:
    __break(1u);
LABEL_47:
    *ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native) = LODWORD(v5);
  }

  if (*(a1 + 2) < isUniquelyReferenced_nonNull_native)
  {
    *ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native) = v5;
  }

  else
  {
    *(a1 + 1) = isUniquelyReferenced_nonNull_native;
    *(*a1 + v17) = v5;
  }

LABEL_28:
  v5 = v3[5];
  v2 = v3[6];
  if (v5 == 0.0 && v2 == 0.0)
  {
    goto LABEL_35;
  }

  ProtobufEncoder.encodeVarint(_:)(0x22uLL);
  v10 = *(a1 + 1);
  v11 = *(a1 + 3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_31:
  v19 = *(v11 + 2);
  v18 = *(v11 + 3);
  if (v19 >= v18 >> 1)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v11);
    v11 = isUniquelyReferenced_nonNull_native;
  }

  *(v11 + 2) = v19 + 1;
  *&v11[8 * v19 + 32] = v10;
  *(a1 + 3) = v11;
  if (__OFADD__(v10, 1))
  {
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  *(a1 + 1) = v10 + 1;
  CGSize.encode(to:)(a1, v5, v2);
  ProtobufEncoder.endLengthDelimited()();
LABEL_35:
  if (v3[7])
  {
    ProtobufEncoder.encodeVarint(_:)(0x28uLL);
    ProtobufEncoder.encodeVarint(_:)(1uLL);
  }

  if (*(v3 + 57))
  {
    ProtobufEncoder.encodeVarint(_:)(0x30uLL);
    ProtobufEncoder.encodeVarint(_:)(1uLL);
  }
}

double protocol witness for ProtobufDecodableMessage.init(from:) in conformance SDFStyle.Shadow@<D0>(_OWORD *a1@<X8>, unint64_t a2@<X0>)
{
  specialized SDFStyle.Shadow.init(from:)(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    a1[2] = v7[0];
    result = *(v7 + 10);
    *(a1 + 42) = *(v7 + 10);
  }

  return result;
}

double *SDFStyle.GlassDisplacement.encode(to:)(double *result)
{
  v2 = v1;
  v3 = result;
  v4 = *v2;
  if (*v2 == 0.0)
  {
    goto LABEL_12;
  }

  v5 = fabs(v4);
  if (v5 >= 65536.0)
  {
    v6 = 9;
  }

  else
  {
    v6 = 13;
  }

  ProtobufEncoder.encodeVarint(_:)(v6);
  if (v5 >= 65536.0)
  {
    v8 = *(v3 + 1);
    result = (v8 + 8);
    if (!__OFADD__(v8, 8))
    {
      if (*(v3 + 2) < result)
      {
        result = ProtobufEncoder.growBufferSlow(to:)(result);
        *result = v4;
      }

      else
      {
        *(v3 + 1) = result;
        *(*v3 + v8) = v4;
      }

      goto LABEL_12;
    }

LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v7 = *(v3 + 1);
  result = (v7 + 4);
  if (__OFADD__(v7, 4))
  {
    __break(1u);
    goto LABEL_53;
  }

  *&v4 = v4;
  if (*(v3 + 2) < result)
  {
    goto LABEL_58;
  }

  *(v3 + 1) = result;
  *(*v3 + v7) = LODWORD(v4);
  while (1)
  {
LABEL_12:
    v4 = v2[1];
    if (v4 != 0.0)
    {
      v9 = fabs(v4);
      if (v9 >= 65536.0)
      {
        v10 = 17;
      }

      else
      {
        v10 = 21;
      }

      ProtobufEncoder.encodeVarint(_:)(v10);
      if (v9 >= 65536.0)
      {
        v13 = *(v3 + 1);
        result = (v13 + 8);
        if (__OFADD__(v13, 8))
        {
          goto LABEL_55;
        }

        if (*(v3 + 2) < result)
        {
          result = ProtobufEncoder.growBufferSlow(to:)(result);
          *result = v4;
        }

        else
        {
          *(v3 + 1) = result;
          *(*v3 + v13) = v4;
        }
      }

      else
      {
        v11 = *(v3 + 1);
        result = (v11 + 4);
        if (__OFADD__(v11, 4))
        {
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

        v12 = v4;
        if (*(v3 + 2) < result)
        {
          result = ProtobufEncoder.growBufferSlow(to:)(result);
          *result = v12;
        }

        else
        {
          *(v3 + 1) = result;
          *(*v3 + v11) = v12;
        }
      }
    }

    v4 = v2[2];
    if (v4 == 0.0)
    {
      goto LABEL_34;
    }

    v14 = fabs(v4);
    if (v14 >= 65536.0)
    {
      v15 = 25;
    }

    else
    {
      v15 = 29;
    }

    ProtobufEncoder.encodeVarint(_:)(v15);
    if (v14 >= 65536.0)
    {
      v17 = *(v3 + 1);
      result = (v17 + 8);
      if (!__OFADD__(v17, 8))
      {
        if (*(v3 + 2) < result)
        {
          result = ProtobufEncoder.growBufferSlow(to:)(result);
          *result = v4;
        }

        else
        {
          *(v3 + 1) = result;
          *(*v3 + v17) = v4;
        }

        goto LABEL_34;
      }

      goto LABEL_57;
    }

    v16 = *(v3 + 1);
    result = (v16 + 4);
    if (!__OFADD__(v16, 4))
    {
      break;
    }

LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    result = ProtobufEncoder.growBufferSlow(to:)(result);
    *result = LODWORD(v4);
  }

  *&v4 = v4;
  if (*(v3 + 2) < result)
  {
    goto LABEL_64;
  }

  *(v3 + 1) = result;
  *(*v3 + v16) = LODWORD(v4);
LABEL_34:
  while (2)
  {
    v18 = v2[3];
    if (v18 != 0.0)
    {
      ProtobufEncoder.encodeVarint(_:)(0x39uLL);
      v19 = *(v3 + 1);
      result = (v19 + 8);
      if (__OFADD__(v19, 8))
      {
        __break(1u);
      }

      else if (*(v3 + 2) >= result)
      {
        *(v3 + 1) = result;
        *(*v3 + v19) = v18;
        goto LABEL_38;
      }

      result = ProtobufEncoder.growBufferSlow(to:)(result);
      *result = v18;
    }

LABEL_38:
    v4 = v2[4];
    if (v4 == 0.0)
    {
      return result;
    }

    v20 = fabs(v4);
    if (v20 >= 65536.0)
    {
      v21 = 65;
    }

    else
    {
      v21 = 69;
    }

    ProtobufEncoder.encodeVarint(_:)(v21);
    if (v20 < 65536.0)
    {
      v22 = *(v3 + 1);
      result = (v22 + 4);
      if (!__OFADD__(v22, 4))
      {
        v23 = v4;
        if (*(v3 + 2) < result)
        {
          result = ProtobufEncoder.growBufferSlow(to:)(result);
          *result = v23;
        }

        else
        {
          *(v3 + 1) = result;
          *(*v3 + v22) = v23;
        }

        return result;
      }

      __break(1u);
      goto LABEL_63;
    }

    v24 = *(v3 + 1);
    result = (v24 + 8);
    if (__OFADD__(v24, 8))
    {
LABEL_63:
      __break(1u);
LABEL_64:
      result = ProtobufEncoder.growBufferSlow(to:)(result);
      *result = LODWORD(v4);
      continue;
    }

    break;
  }

  if (*(v3 + 2) < result)
  {
    result = ProtobufEncoder.growBufferSlow(to:)(result);
    *result = v4;
  }

  else
  {
    *(v3 + 1) = result;
    *(*v3 + v24) = v4;
  }

  return result;
}

double protocol witness for ProtobufDecodableMessage.init(from:) in conformance SDFStyle.GlassDisplacement@<D0>(uint64_t a1@<X8>, unint64_t a2@<X0>)
{
  specialized SDFStyle.GlassDisplacement.init(from:)(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

void SDFStyle.GlassHighlight.encode(to:)(float *a1)
{
  v3 = v1;
  __asm { FMOV            V1.4S, #1.0 }

  ProtobufEncoder.encodeVarint(_:)(0xAuLL);
  v10 = *(a1 + 1);
  v11 = *(a1 + 3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 16) + 1, 1, v11);
    v11 = isUniquelyReferenced_nonNull_native;
  }

  v14 = *(v11 + 16);
  v13 = *(v11 + 24);
  if (v14 >= v13 >> 1)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v11);
    v11 = isUniquelyReferenced_nonNull_native;
  }

  *(v11 + 16) = v14 + 1;
  *(v11 + 8 * v14 + 32) = v10;
  *(a1 + 3) = v11;
  if (__OFADD__(v10, 1))
  {
    __break(1u);
    goto LABEL_62;
  }

  *(a1 + 1) = v10 + 1;
  Color.ResolvedHDR.encode(to:)(a1);
  ProtobufEncoder.endLengthDelimited()();
  v15 = *(v3 + 32);
  if (v15 != 0.0)
  {
    v16 = fabs(v15);
    if (v16 >= 65536.0)
    {
      v17 = 17;
    }

    else
    {
      v17 = 21;
    }

    ProtobufEncoder.encodeVarint(_:)(v17);
    if (v16 >= 65536.0)
    {
      v20 = *(a1 + 1);
      v19 = v20 + 8;
      if (!__OFADD__(v20, 8))
      {
        if (*(a1 + 2) < v19)
        {
          *ProtobufEncoder.growBufferSlow(to:)(v19) = v15;
        }

        else
        {
          *(a1 + 1) = v19;
          *(*a1 + v20) = v15;
        }

        goto LABEL_17;
      }
    }

    else
    {
      v18 = *(a1 + 1);
      v19 = v18 + 4;
      if (!__OFADD__(v18, 4))
      {
        *&v15 = v15;
        if (*(a1 + 2) < v19)
        {
          goto LABEL_70;
        }

        *(a1 + 1) = v19;
        *(*a1 + v18) = LODWORD(v15);
        goto LABEL_17;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_68;
  }

  while (1)
  {
LABEL_17:
    v2 = *(v3 + 40);
    if (v2 == 0.0)
    {
      goto LABEL_21;
    }

    ProtobufEncoder.encodeVarint(_:)(0x19uLL);
    v21 = *(a1 + 1);
    isUniquelyReferenced_nonNull_native = v21 + 8;
    if (__OFADD__(v21, 8))
    {
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
    }

    else if (*(a1 + 2) >= isUniquelyReferenced_nonNull_native)
    {
      *(a1 + 1) = isUniquelyReferenced_nonNull_native;
      *(*a1 + v21) = v2;
      goto LABEL_21;
    }

    *ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native) = v2;
LABEL_21:
    v15 = *(v3 + 48);
    if (v15 == 0.0)
    {
      goto LABEL_32;
    }

    v22 = fabs(v15);
    v23 = v22 >= 65536.0 ? 33 : 37;
    ProtobufEncoder.encodeVarint(_:)(v23);
    if (v22 >= 65536.0)
    {
      break;
    }

    v24 = *(a1 + 1);
    v19 = v24 + 4;
    if (!__OFADD__(v24, 4))
    {
      *&v15 = v15;
      if (*(a1 + 2) >= v19)
      {
        *(a1 + 1) = v19;
        *(*a1 + v24) = LODWORD(v15);
        goto LABEL_32;
      }

      goto LABEL_74;
    }

LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    *ProtobufEncoder.growBufferSlow(to:)(v19) = LODWORD(v15);
  }

  v25 = *(a1 + 1);
  v19 = v25 + 8;
  if (__OFADD__(v25, 8))
  {
    goto LABEL_69;
  }

  if (*(a1 + 2) < v19)
  {
    *ProtobufEncoder.growBufferSlow(to:)(v19) = v15;
  }

  else
  {
    *(a1 + 1) = v19;
    *(*a1 + v25) = v15;
  }

LABEL_32:
  while (2)
  {
    v2 = *(v3 + 56);
    if (v2 != 0.0)
    {
      ProtobufEncoder.encodeVarint(_:)(0x29uLL);
      v26 = *(a1 + 1);
      isUniquelyReferenced_nonNull_native = v26 + 8;
      if (__OFADD__(v26, 8))
      {
        goto LABEL_63;
      }

      if (*(a1 + 2) < isUniquelyReferenced_nonNull_native)
      {
        *ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native) = v2;
      }

      else
      {
        *(a1 + 1) = isUniquelyReferenced_nonNull_native;
        *(*a1 + v26) = v2;
      }
    }

    v15 = *(v3 + 64);
    if (v15 == 0.0)
    {
      goto LABEL_47;
    }

    v27 = fabs(v15);
    if (v27 >= 65536.0)
    {
      v28 = 49;
    }

    else
    {
      v28 = 53;
    }

    ProtobufEncoder.encodeVarint(_:)(v28);
    if (v27 >= 65536.0)
    {
      v30 = *(a1 + 1);
      v19 = v30 + 8;
      if (!__OFADD__(v30, 8))
      {
        if (*(a1 + 2) < v19)
        {
          *ProtobufEncoder.growBufferSlow(to:)(v19) = v15;
        }

        else
        {
          *(a1 + 1) = v19;
          *(*a1 + v30) = v15;
        }

        goto LABEL_47;
      }

LABEL_73:
      __break(1u);
LABEL_74:
      *ProtobufEncoder.growBufferSlow(to:)(v19) = LODWORD(v15);
      continue;
    }

    break;
  }

  v29 = *(a1 + 1);
  v19 = v29 + 4;
  if (__OFADD__(v29, 4))
  {
    __break(1u);
    goto LABEL_73;
  }

  *&v15 = v15;
  if (*(a1 + 2) < v19)
  {
    goto LABEL_78;
  }

  *(a1 + 1) = v19;
  *(*a1 + v29) = LODWORD(v15);
  while (1)
  {
LABEL_47:
    if (*(v3 + 72))
    {
      ProtobufEncoder.encodeVarint(_:)(0x38uLL);
      ProtobufEncoder.encodeVarint(_:)(1uLL);
    }

    v15 = *v3;
    if (*v3 == 0.0)
    {
      break;
    }

    v31 = fabs(v15);
    if (v31 >= 65536.0)
    {
      v32 = 65;
    }

    else
    {
      v32 = 69;
    }

    ProtobufEncoder.encodeVarint(_:)(v32);
    if (v31 >= 65536.0)
    {
      v35 = *(a1 + 1);
      v19 = v35 + 8;
      if (!__OFADD__(v35, 8))
      {
        if (*(a1 + 2) < v19)
        {
          *ProtobufEncoder.growBufferSlow(to:)(v19) = v15;
        }

        else
        {
          *(a1 + 1) = v19;
          *(*a1 + v35) = v15;
        }

        return;
      }
    }

    else
    {
      v33 = *(a1 + 1);
      v19 = v33 + 4;
      if (!__OFADD__(v33, 4))
      {
        v34 = v15;
        if (*(a1 + 2) < v19)
        {
          *ProtobufEncoder.growBufferSlow(to:)(v19) = v34;
        }

        else
        {
          *(a1 + 1) = v19;
          *(*a1 + v33) = v34;
        }

        return;
      }

      __break(1u);
    }

    __break(1u);
LABEL_78:
    *ProtobufEncoder.growBufferSlow(to:)(v19) = LODWORD(v15);
  }
}

__n128 protocol witness for ProtobufDecodableMessage.init(from:) in conformance SDFStyle.GlassHighlight@<Q0>(uint64_t a1@<X8>, unint64_t a2@<X0>)
{
  specialized SDFStyle.GlassHighlight.init(from:)(a2, v6);
  if (!v2)
  {
    v5 = v7[0];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 57) = *(v7 + 9);
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

double *Material.Layer.SDFLayer.Contents.GlassKeyFillHighlight.encode(to:)(float *a1)
{
  v3 = *v1;
  LOBYTE(v4) = *(v1 + 8);
  v5 = *(v1 + 16);
  v7 = *(v1 + 48);
  v6 = *(v1 + 56);
  v9 = *(v1 + 64);
  v8 = *(v1 + 72);
  v10 = *(v1 + 112);
  v11 = *(v1 + 128);
  v64 = *(v1 + 120);
  v65 = *(v1 + 104);
  if (*v1 == 0.0)
  {
    goto LABEL_13;
  }

  v66 = *(v1 + 72);
  v63 = *(v1 + 112);
  v12 = *(v1 + 128);
  v13 = fabs(v3);
  if (v13 >= 65536.0)
  {
    v14 = 9;
  }

  else
  {
    v14 = 13;
  }

  ProtobufEncoder.encodeVarint(_:)(v14);
  if (v13 >= 65536.0)
  {
    v17 = *(a1 + 1);
    v16 = v17 + 8;
    if (!__OFADD__(v17, 8))
    {
      v11 = v12;
      if (*(a1 + 2) < v16)
      {
        v62 = ProtobufEncoder.growBufferSlow(to:)(v16);
        v11 = v12;
        *v62 = v3;
      }

      else
      {
        *(a1 + 1) = v16;
        *(*a1 + v17) = v3;
      }

      goto LABEL_12;
    }

LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  v15 = *(a1 + 1);
  v16 = v15 + 4;
  if (__OFADD__(v15, 4))
  {
    __break(1u);
    goto LABEL_109;
  }

  *&v3 = v3;
  v11 = v12;
  if (*(a1 + 2) < v16)
  {
    goto LABEL_112;
  }

  *(a1 + 1) = v16;
  *(*a1 + v15) = LODWORD(v3);
  while (1)
  {
LABEL_12:
    v10 = v63;
    v8 = v66;
LABEL_13:
    v67 = v11;
    if (v5 == 0.0)
    {
      goto LABEL_24;
    }

    v18 = fabs(v5);
    LODWORD(v3) = 0;
    if (v18 >= 65536.0)
    {
      v19 = 17;
    }

    else
    {
      v19 = 21;
    }

    ProtobufEncoder.encodeVarint(_:)(v19);
    if (v18 >= 65536.0)
    {
      v22 = *(a1 + 1);
      v16 = v22 + 8;
      if (!__OFADD__(v22, 8))
      {
        if (*(a1 + 2) < v16)
        {
          *ProtobufEncoder.growBufferSlow(to:)(v16) = v5;
        }

        else
        {
          *(a1 + 1) = v16;
          *(*a1 + v22) = v5;
        }

        goto LABEL_24;
      }

      goto LABEL_111;
    }

    v20 = *(a1 + 1);
    v16 = v20 + 4;
    if (!__OFADD__(v20, 4))
    {
      break;
    }

LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
    v60 = v11;
    v61 = ProtobufEncoder.growBufferSlow(to:)(v16);
    v11 = v60;
    *v61 = LODWORD(v3);
  }

  v21 = v5;
  if (*(a1 + 2) < v16)
  {
    goto LABEL_116;
  }

  *(a1 + 1) = v16;
  *(*a1 + v20) = v21;
  while (1)
  {
LABEL_24:
    if (v4)
    {
      ProtobufEncoder.encodeVarint(_:)(0x18uLL);
      ProtobufEncoder.encodeVarint(_:)(1uLL);
    }

    __asm { FMOV            V1.4S, #1.0 }

    ProtobufEncoder.encodeVarint(_:)(0x22uLL);
    v28 = *(a1 + 1);
    v29 = *(a1 + 3);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v29 + 2) + 1, 1, v29);
    }

    v31 = *(v29 + 2);
    v30 = *(v29 + 3);
    v4 = v31 + 1;
    if (v31 >= v30 >> 1)
    {
      v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v29);
    }

    *(v29 + 2) = v4;
    *&v29[8 * v31 + 32] = v28;
    *(a1 + 3) = v29;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
      goto LABEL_97;
    }

    *(a1 + 1) = v28 + 1;
    Color.ResolvedHDR.encode(to:)(a1);
    ProtobufEncoder.endLengthDelimited()();
    if (v6 == 0.0)
    {
      break;
    }

    v32 = fabs(v6);
    v21 = 0.0;
    if (v32 >= 65536.0)
    {
      v33 = 41;
    }

    else
    {
      v33 = 45;
    }

    ProtobufEncoder.encodeVarint(_:)(v33);
    if (v32 >= 65536.0)
    {
      v36 = *(a1 + 1);
      v16 = v36 + 8;
      if (!__OFADD__(v36, 8))
      {
        if (*(a1 + 2) < v16)
        {
          *ProtobufEncoder.growBufferSlow(to:)(v16) = v6;
        }

        else
        {
          *(a1 + 1) = v16;
          *(*a1 + v36) = v6;
        }

        break;
      }
    }

    else
    {
      v34 = *(a1 + 1);
      v16 = v34 + 4;
      if (!__OFADD__(v34, 4))
      {
        v35 = v6;
        if (*(a1 + 2) < v16)
        {
          *ProtobufEncoder.growBufferSlow(to:)(v16) = v35;
        }

        else
        {
          *(a1 + 1) = v16;
          *(*a1 + v34) = v35;
        }

        break;
      }

      __break(1u);
    }

    __break(1u);
LABEL_116:
    *ProtobufEncoder.growBufferSlow(to:)(v16) = v21;
  }

  if (v7 != 0.0)
  {
    ProtobufEncoder.encodeVarint(_:)(0x31uLL);
    v37 = *(a1 + 1);
    isUniquelyReferenced_nonNull_native = v37 + 8;
    if (__OFADD__(v37, 8))
    {
      goto LABEL_99;
    }

    if (*(a1 + 2) < isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_101;
    }

    *(a1 + 1) = isUniquelyReferenced_nonNull_native;
    *(*a1 + v37) = v7;
  }

  if (v9 == 0.0)
  {
    goto LABEL_50;
  }

  do
  {
    ProtobufEncoder.encodeVarint(_:)(0x39uLL);
    v39 = *(a1 + 1);
    isUniquelyReferenced_nonNull_native = v39 + 8;
    if (!__OFADD__(v39, 8))
    {
      if (*(a1 + 2) < isUniquelyReferenced_nonNull_native)
      {
        *ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native) = v9;
      }

      else
      {
        *(a1 + 1) = isUniquelyReferenced_nonNull_native;
        *(*a1 + v39) = v9;
      }

      break;
    }

LABEL_100:
    __break(1u);
LABEL_101:
    *ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native) = v7;
  }

  while (v9 != 0.0);
LABEL_50:
  if (v8 == 0.0)
  {
    goto LABEL_61;
  }

  v40 = fabs(v8);
  v41 = 0.0;
  if (v40 >= 65536.0)
  {
    v42 = 65;
  }

  else
  {
    v42 = 69;
  }

  ProtobufEncoder.encodeVarint(_:)(v42);
  if (v40 < 65536.0)
  {
    v43 = *(a1 + 1);
    result = (v43 + 4);
    if (!__OFADD__(v43, 4))
    {
      v41 = v8;
      if (*(a1 + 2) >= result)
      {
        *(a1 + 1) = result;
        *(*a1 + v43) = v41;
        goto LABEL_61;
      }

      goto LABEL_124;
    }

    __break(1u);
LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

  v45 = *(a1 + 1);
  result = (v45 + 8);
  if (__OFADD__(v45, 8))
  {
    goto LABEL_121;
  }

  if (*(a1 + 2) < result)
  {
    *ProtobufEncoder.growBufferSlow(to:)(result) = v8;
  }

  else
  {
    *(a1 + 1) = result;
    *(*a1 + v45) = v8;
  }

  while (1)
  {
LABEL_61:
    ProtobufEncoder.encodeVarint(_:)(0x4AuLL);
    v28 = *(a1 + 1);
    v29 = *(a1 + 3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_97:
      isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v29 + 2) + 1, 1, v29);
      v29 = isUniquelyReferenced_nonNull_native;
    }

    v47 = *(v29 + 2);
    v46 = *(v29 + 3);
    if (v47 >= v46 >> 1)
    {
      isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1, v29);
      v29 = isUniquelyReferenced_nonNull_native;
    }

    *(v29 + 2) = v47 + 1;
    *&v29[8 * v47 + 32] = v28;
    *(a1 + 3) = v29;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
LABEL_99:
      __break(1u);
      goto LABEL_100;
    }

    *(a1 + 1) = v28 + 1;
    Color.ResolvedHDR.encode(to:)(a1);
    result = ProtobufEncoder.endLengthDelimited()();
    if (v10 == 0.0)
    {
      goto LABEL_76;
    }

    v48 = fabs(v10);
    v41 = 0.0;
    if (v48 >= 65536.0)
    {
      v49 = 81;
    }

    else
    {
      v49 = 85;
    }

    ProtobufEncoder.encodeVarint(_:)(v49);
    if (v48 < 65536.0)
    {
      v50 = *(a1 + 1);
      result = (v50 + 4);
      if (!__OFADD__(v50, 4))
      {
        v51 = v10;
        if (*(a1 + 2) < result)
        {
          result = ProtobufEncoder.growBufferSlow(to:)(result);
          *result = v51;
        }

        else
        {
          *(a1 + 1) = result;
          *(*a1 + v50) = v51;
        }

        goto LABEL_76;
      }

LABEL_122:
      __break(1u);
      goto LABEL_123;
    }

    v52 = *(a1 + 1);
    result = (v52 + 8);
    if (!__OFADD__(v52, 8))
    {
      break;
    }

LABEL_123:
    __break(1u);
LABEL_124:
    *ProtobufEncoder.growBufferSlow(to:)(result) = v41;
  }

  if (*(a1 + 2) < result)
  {
    result = ProtobufEncoder.growBufferSlow(to:)(result);
    *result = v10;
  }

  else
  {
    *(a1 + 1) = result;
    *(*a1 + v52) = v10;
  }

LABEL_76:
  v53 = v65;
  if (v65 != 0.0)
  {
    ProtobufEncoder.encodeVarint(_:)(0x59uLL);
    v54 = *(a1 + 1);
    result = (v54 + 8);
    if (__OFADD__(v54, 8))
    {
      __break(1u);
      goto LABEL_105;
    }

    if (*(a1 + 2) < result)
    {
      goto LABEL_106;
    }

    *(a1 + 1) = result;
    *(*a1 + v54) = v65;
  }

  while (1)
  {
    v53 = v64;
    if (v64 == 0.0)
    {
      break;
    }

    ProtobufEncoder.encodeVarint(_:)(0x61uLL);
    v55 = *(a1 + 1);
    result = (v55 + 8);
    if (!__OFADD__(v55, 8))
    {
      if (*(a1 + 2) < result)
      {
        result = ProtobufEncoder.growBufferSlow(to:)(result);
        *result = v64;
      }

      else
      {
        *(a1 + 1) = result;
        *(*a1 + v55) = v64;
      }

      break;
    }

LABEL_105:
    __break(1u);
LABEL_106:
    result = ProtobufEncoder.growBufferSlow(to:)(result);
    *result = v53;
  }

  if (v67 == 0.0)
  {
    return result;
  }

  v56 = fabs(v67);
  if (v56 >= 65536.0)
  {
    v57 = 105;
  }

  else
  {
    v57 = 109;
  }

  ProtobufEncoder.encodeVarint(_:)(v57);
  if (v56 >= 65536.0)
  {
    v59 = *(a1 + 1);
    result = (v59 + 8);
    if (!__OFADD__(v59, 8))
    {
      if (*(a1 + 2) < result)
      {
        result = ProtobufEncoder.growBufferSlow(to:)(result);
        *result = v67;
      }

      else
      {
        *(a1 + 1) = result;
        *(*a1 + v59) = v67;
      }

      return result;
    }

LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v58 = *(a1 + 1);
  result = (v58 + 4);
  if (__OFADD__(v58, 4))
  {
    __break(1u);
    goto LABEL_129;
  }

  *&v56 = v67;
  if (*(a1 + 2) >= result)
  {
    *(a1 + 1) = result;
    *(*a1 + v58) = LODWORD(v56);
    return result;
  }

LABEL_130:
  result = ProtobufEncoder.growBufferSlow(to:)(result);
  *result = LODWORD(v56);
  return result;
}

unint64_t Material.Layer.SDFLayer.Contents.GlassKeyFillHighlight.init(from:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = result;
  v5 = *(result + 8);
  v6 = *(result + 16);
  if (v5 >= v6)
  {
    v7 = 0;
    v13 = 2143289344;
    __asm { FMOV            V1.4S, #1.0 }

    v84 = 0.5;
    v79 = 0.0;
    v14 = 3.14159265;
    v77 = 0.0;
    v78 = 0.0;
    v15 = 0.0;
    v16 = 3.14159265;
    v17 = 0.0;
    v18 = 3.14159265;
    v19 = 0.5;
    v20 = 2143289344;
    v75 = _Q1;
    v76 = _Q1;
LABEL_4:
    v3[3] = 0;
    *a2 = v79;
    *(a2 + 8) = v7;
    *(a2 + 16) = v78;
    *(a2 + 24) = v76;
    *(a2 + 40) = v20;
    *(a2 + 48) = v77;
    *(a2 + 56) = v15;
    v22 = v84;
    *(a2 + 64) = v14;
    *(a2 + 72) = v22;
    *(a2 + 80) = v75;
    *(a2 + 96) = v13;
    *(a2 + 104) = v16;
    *(a2 + 112) = v17;
    *(a2 + 120) = v18;
    *(a2 + 128) = v19;
    return result;
  }

  v7 = 0;
  __asm { FMOV            V1.4S, #1.0 }

  v84 = 0.5;
  v79 = 0.0;
  v13 = 2143289344;
  v14 = 3.14159265;
  v77 = 0.0;
  v78 = 0.0;
  v15 = 0.0;
  v16 = 3.14159265;
  v17 = 0.0;
  v18 = 3.14159265;
  v19 = 0.5;
  v20 = 2143289344;
  v75 = _Q1;
  v76 = _Q1;
  while (2)
  {
    result = v3[3];
    if (result)
    {
      v23 = v3[4];
      if (v5 < v23)
      {
        goto LABEL_13;
      }

      if (v23 < v5)
      {
        goto LABEL_185;
      }

      v3[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()(result);
    if (v2)
    {
      return result;
    }

    if (result <= 7)
    {
      goto LABEL_185;
    }

LABEL_13:
    v24 = result & 7;
    switch(result >> 3)
    {
      case 1uLL:
        if (v24 != 5)
        {
          if (v24 == 2)
          {
            result = ProtobufDecoder.decodeVarint()(result);
            if (v2)
            {
              return result;
            }

            if ((result & 0x8000000000000000) != 0)
            {
              goto LABEL_200;
            }

            v25 = v3[1];
            if (v6 < v25 + result)
            {
              goto LABEL_185;
            }

            v3[3] = 9;
            v3[4] = v25 + result;
          }

          else
          {
            if (v24 != 1)
            {
              goto LABEL_185;
            }

            v25 = v3[1];
          }

          if (v6 < (v25 + 1))
          {
            goto LABEL_185;
          }

          v79 = *v25;
          v3[1] = v25 + 1;
          goto LABEL_6;
        }

        v65 = v3[1];
        if (v6 < (v65 + 1))
        {
          goto LABEL_185;
        }

        v66 = *v65;
        v3[1] = v65 + 1;
        v79 = v66;
        goto LABEL_6;
      case 2uLL:
        if (v24 == 5)
        {
          v67 = v3[1];
          if (v6 < (v67 + 1))
          {
            goto LABEL_185;
          }

          v68 = *v67;
          v3[1] = v67 + 1;
          v78 = v68;
        }

        else
        {
          if (v24 == 2)
          {
            result = ProtobufDecoder.decodeVarint()(result);
            if (v2)
            {
              return result;
            }

            if ((result & 0x8000000000000000) != 0)
            {
              goto LABEL_194;
            }

            v41 = v3[1];
            if (v6 < v41 + result)
            {
              goto LABEL_185;
            }

            v3[3] = 17;
            v3[4] = v41 + result;
          }

          else
          {
            if (v24 != 1)
            {
              goto LABEL_185;
            }

            v41 = v3[1];
          }

          if (v6 < (v41 + 1))
          {
            goto LABEL_185;
          }

          v78 = *v41;
          v3[1] = v41 + 1;
        }

        goto LABEL_6;
      case 3uLL:
        if ((result & 7) == 0)
        {
          goto LABEL_40;
        }

        if (v24 != 2)
        {
          goto LABEL_185;
        }

        result = ProtobufDecoder.decodeVarint()(result);
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_192;
        }

        v30 = v3[1] + result;
        if (v6 < v30)
        {
          goto LABEL_185;
        }

        v3[3] = 24;
        v3[4] = v30;
LABEL_40:
        result = ProtobufDecoder.decodeVarint()(result);
        if (v2)
        {
          return result;
        }

        v7 = result != 0;
        goto LABEL_6;
      case 4uLL:
        if (v24 != 2)
        {
          goto LABEL_185;
        }

        v31 = v3[5];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v31 + 16) + 1, 1, v31);
          v31 = isUniquelyReferenced_nonNull_native;
        }

        v34 = *(v31 + 16);
        v33 = *(v31 + 24);
        v35 = v34 + 1;
        if (v34 >= v33 >> 1)
        {
          isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v31);
          v35 = v34 + 1;
          v31 = isUniquelyReferenced_nonNull_native;
        }

        *(v31 + 16) = v35;
        *(v31 + 8 * v34 + 32) = v6;
        v3[5] = v31;
        result = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) == 0)
        {
          v36 = v3[1] + result;
          if (v6 < v36)
          {
            goto LABEL_185;
          }

          v3[2] = v36;
          result = specialized Color.ResolvedHDR.init(from:)(v3, &v80);
          v37 = v3[5];
          if (!*(v37 + 16))
          {
            goto LABEL_190;
          }

          result = swift_isUniquelyReferenced_nonNull_native();
          if (result)
          {
            v38 = *(v37 + 16);
            if (!v38)
            {
              goto LABEL_191;
            }
          }

          else
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew()(v37);
            v37 = result;
            v38 = *(result + 16);
            if (!v38)
            {
              goto LABEL_191;
            }
          }

          v39 = v38 - 1;
          v6 = *(v37 + 8 * v39 + 32);
          *(v37 + 16) = v39;
          v3[5] = v37;
          v3[2] = v6;
          v76 = v80;
          v20 = v81;
LABEL_6:
          v5 = v3[1];
          if (v5 >= v6)
          {
            goto LABEL_4;
          }

          continue;
        }

        __break(1u);
LABEL_188:
        __break(1u);
LABEL_189:
        __break(1u);
LABEL_190:
        __break(1u);
LABEL_191:
        __break(1u);
LABEL_192:
        __break(1u);
LABEL_193:
        __break(1u);
LABEL_194:
        __break(1u);
LABEL_195:
        __break(1u);
LABEL_196:
        __break(1u);
LABEL_197:
        __break(1u);
LABEL_198:
        __break(1u);
LABEL_199:
        __break(1u);
LABEL_200:
        __break(1u);
LABEL_201:
        __break(1u);
LABEL_202:
        __break(1u);
LABEL_203:
        __break(1u);
        __break(1u);
        return result;
      case 5uLL:
        if (v24 == 5)
        {
          v57 = v3[1];
          if (v6 < (v57 + 1))
          {
            goto LABEL_185;
          }

          v58 = *v57;
          v3[1] = v57 + 1;
          v15 = v58;
        }

        else
        {
          if (v24 == 2)
          {
            result = ProtobufDecoder.decodeVarint()(result);
            if (v2)
            {
              return result;
            }

            if ((result & 0x8000000000000000) != 0)
            {
              goto LABEL_195;
            }

            v27 = v3[1];
            if (v6 < v27 + result)
            {
              goto LABEL_185;
            }

            v3[3] = 41;
            v3[4] = v27 + result;
          }

          else
          {
            if (v24 != 1)
            {
              goto LABEL_185;
            }

            v27 = v3[1];
          }

          if (v6 < (v27 + 1))
          {
            goto LABEL_185;
          }

          v15 = *v27;
          v3[1] = v27 + 1;
        }

        goto LABEL_6;
      case 6uLL:
        if (v24 == 5)
        {
          v69 = v3[1];
          if (v6 < (v69 + 1))
          {
            goto LABEL_185;
          }

          v70 = *v69;
          v3[1] = v69 + 1;
          v77 = v70;
        }

        else
        {
          if (v24 == 2)
          {
            result = ProtobufDecoder.decodeVarint()(result);
            if (v2)
            {
              return result;
            }

            if ((result & 0x8000000000000000) != 0)
            {
              goto LABEL_193;
            }

            v42 = v3[1];
            if (v6 < v42 + result)
            {
              goto LABEL_185;
            }

            v3[3] = 49;
            v3[4] = v42 + result;
          }

          else
          {
            if (v24 != 1)
            {
              goto LABEL_185;
            }

            v42 = v3[1];
          }

          if (v6 < (v42 + 1))
          {
            goto LABEL_185;
          }

          v77 = *v42;
          v3[1] = v42 + 1;
        }

        goto LABEL_6;
      case 7uLL:
        if (v24 == 5)
        {
          v71 = v3[1];
          if (v6 < (v71 + 1))
          {
            goto LABEL_185;
          }

          v72 = *v71;
          v3[1] = v71 + 1;
          v14 = v72;
        }

        else
        {
          if (v24 == 2)
          {
            result = ProtobufDecoder.decodeVarint()(result);
            if (v2)
            {
              return result;
            }

            if ((result & 0x8000000000000000) != 0)
            {
              goto LABEL_201;
            }

            v44 = v3[1];
            if (v6 < v44 + result)
            {
              goto LABEL_185;
            }

            v3[3] = 57;
            v3[4] = v44 + result;
          }

          else
          {
            if (v24 != 1)
            {
              goto LABEL_185;
            }

            v44 = v3[1];
          }

          if (v6 < (v44 + 1))
          {
            goto LABEL_185;
          }

          v14 = *v44;
          v3[1] = v44 + 1;
        }

        goto LABEL_6;
      case 8uLL:
        if (v24 == 5)
        {
          v63 = v3[1];
          if (v6 < (v63 + 1))
          {
            goto LABEL_185;
          }

          v64 = *v63;
          v3[1] = v63 + 1;
          v84 = v64;
        }

        else
        {
          if (v24 == 2)
          {
            result = ProtobufDecoder.decodeVarint()(result);
            if (v2)
            {
              return result;
            }

            if ((result & 0x8000000000000000) != 0)
            {
              goto LABEL_196;
            }

            v40 = v3[1];
            if (v6 < v40 + result)
            {
              goto LABEL_185;
            }

            v3[3] = 65;
            v3[4] = v40 + result;
          }

          else
          {
            if (v24 != 1)
            {
              goto LABEL_185;
            }

            v40 = v3[1];
          }

          if (v6 < (v40 + 1))
          {
            goto LABEL_185;
          }

          v84 = *v40;
          v3[1] = v40 + 1;
        }

        goto LABEL_6;
      case 9uLL:
        if (v24 != 2)
        {
          goto LABEL_185;
        }

        v46 = v3[5];
        v47 = swift_isUniquelyReferenced_nonNull_native();
        if ((v47 & 1) == 0)
        {
          v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v46 + 16) + 1, 1, v46);
          v46 = v47;
        }

        v49 = *(v46 + 16);
        v48 = *(v46 + 24);
        v50 = v49 + 1;
        if (v49 >= v48 >> 1)
        {
          v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1, v46);
          v50 = v49 + 1;
          v46 = v47;
        }

        *(v46 + 16) = v50;
        *(v46 + 8 * v49 + 32) = v6;
        v3[5] = v46;
        result = ProtobufDecoder.decodeVarint()(v47);
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_188;
        }

        v51 = v3[1] + result;
        if (v6 < v51)
        {
          goto LABEL_185;
        }

        v3[2] = v51;
        result = specialized Color.ResolvedHDR.init(from:)(v3, &v82);
        v52 = v3[5];
        if (!*(v52 + 16))
        {
          goto LABEL_189;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          v53 = *(v52 + 16);
          if (!v53)
          {
            goto LABEL_184;
          }
        }

        else
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v52);
          v52 = result;
          v53 = *(result + 16);
          if (!v53)
          {
LABEL_184:
            __break(1u);
LABEL_185:
            lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
            swift_allocError();
            return swift_willThrow();
          }
        }

        v54 = v53 - 1;
        v6 = *(v52 + 8 * v54 + 32);
        *(v52 + 16) = v54;
        v3[5] = v52;
        v3[2] = v6;
        v75 = v82;
        v13 = v83;
        goto LABEL_6;
      case 0xAuLL:
        if (v24 == 5)
        {
          v61 = v3[1];
          if (v6 < (v61 + 1))
          {
            goto LABEL_185;
          }

          v62 = *v61;
          v3[1] = v61 + 1;
          v17 = v62;
        }

        else
        {
          if (v24 == 2)
          {
            result = ProtobufDecoder.decodeVarint()(result);
            if (v2)
            {
              return result;
            }

            if ((result & 0x8000000000000000) != 0)
            {
              goto LABEL_197;
            }

            v29 = v3[1];
            if (v6 < v29 + result)
            {
              goto LABEL_185;
            }

            v3[3] = 81;
            v3[4] = v29 + result;
          }

          else
          {
            if (v24 != 1)
            {
              goto LABEL_185;
            }

            v29 = v3[1];
          }

          if (v6 < (v29 + 1))
          {
            goto LABEL_185;
          }

          v17 = *v29;
          v3[1] = v29 + 1;
        }

        goto LABEL_6;
      case 0xBuLL:
        if (v24 == 5)
        {
          v73 = v3[1];
          if (v6 < (v73 + 1))
          {
            goto LABEL_185;
          }

          v74 = *v73;
          v3[1] = v73 + 1;
          v16 = v74;
        }

        else
        {
          if (v24 == 2)
          {
            result = ProtobufDecoder.decodeVarint()(result);
            if (v2)
            {
              return result;
            }

            if ((result & 0x8000000000000000) != 0)
            {
              goto LABEL_198;
            }

            v45 = v3[1];
            if (v6 < v45 + result)
            {
              goto LABEL_185;
            }

            v3[3] = 89;
            v3[4] = v45 + result;
          }

          else
          {
            if (v24 != 1)
            {
              goto LABEL_185;
            }

            v45 = v3[1];
          }

          if (v6 < (v45 + 1))
          {
            goto LABEL_185;
          }

          v16 = *v45;
          v3[1] = v45 + 1;
        }

        goto LABEL_6;
      case 0xCuLL:
        if (v24 == 5)
        {
          v55 = v3[1];
          if (v6 < (v55 + 1))
          {
            goto LABEL_185;
          }

          v56 = *v55;
          v3[1] = v55 + 1;
          v18 = v56;
        }

        else
        {
          if (v24 == 2)
          {
            result = ProtobufDecoder.decodeVarint()(result);
            if (v2)
            {
              return result;
            }

            if ((result & 0x8000000000000000) != 0)
            {
              goto LABEL_199;
            }

            v26 = v3[1];
            if (v6 < v26 + result)
            {
              goto LABEL_185;
            }

            v3[3] = 97;
            v3[4] = v26 + result;
          }

          else
          {
            if (v24 != 1)
            {
              goto LABEL_185;
            }

            v26 = v3[1];
          }

          if (v6 < (v26 + 1))
          {
            goto LABEL_185;
          }

          v18 = *v26;
          v3[1] = v26 + 1;
        }

        goto LABEL_6;
      case 0xDuLL:
        if (v24 == 5)
        {
          v59 = v3[1];
          if (v6 < (v59 + 1))
          {
            goto LABEL_185;
          }

          v60 = *v59;
          v3[1] = v59 + 1;
          v19 = v60;
        }

        else
        {
          if (v24 == 2)
          {
            result = ProtobufDecoder.decodeVarint()(result);
            if (v2)
            {
              return result;
            }

            if ((result & 0x8000000000000000) != 0)
            {
              goto LABEL_202;
            }

            v28 = v3[1];
            if (v6 < v28 + result)
            {
              goto LABEL_185;
            }

            v3[3] = 105;
            v3[4] = v28 + result;
          }

          else
          {
            if (v24 != 1)
            {
              goto LABEL_185;
            }

            v28 = v3[1];
          }

          if (v6 < (v28 + 1))
          {
            goto LABEL_185;
          }

          v19 = *v28;
          v3[1] = v28 + 1;
        }

        goto LABEL_6;
      default:
        if ((result & 7) > 1)
        {
          if (v24 == 2)
          {
            result = ProtobufDecoder.decodeVarint()(result);
            if (v2)
            {
              return result;
            }

            if ((result & 0x8000000000000000) != 0)
            {
              goto LABEL_203;
            }

            v43 = v3[1] + result;
            if (v6 < v43)
            {
              goto LABEL_185;
            }
          }

          else
          {
            if (v24 != 5)
            {
              goto LABEL_185;
            }

            v43 = v3[1] + 4;
            if (v6 < v43)
            {
              goto LABEL_185;
            }
          }
        }

        else
        {
          if ((result & 7) == 0)
          {
            result = ProtobufDecoder.decodeVarint()(result);
            if (v2)
            {
              return result;
            }

            goto LABEL_6;
          }

          if (v24 != 1)
          {
            goto LABEL_185;
          }

          v43 = v3[1] + 8;
          if (v6 < v43)
          {
            goto LABEL_185;
          }
        }

        v3[1] = v43;
        goto LABEL_6;
    }
  }
}

void SDFStyle.Group.encode(to:)(float *result)
{
  v4 = *(v1 + 16);
  v6 = *(v1 + 24);
  v5 = *(v1 + 32);
  if (v4 < 0 && *v1 == 0 && v4 == -128 || (specialized ProtobufEncoder.messageField<A>(_:_:)(1), !v2))
  {
    v52 = *(v6 + 16);
    if (v52)
    {
      v7 = 0;
      v8 = (v6 + 32);
      while (v7 < *(v6 + 16))
      {
        v9 = *v8;
        v10 = v8[1];
        v11 = v8[2];
        LODWORD(v48) = *(v8 + 12);
        v46 = v10;
        v47 = v11;
        v45 = v9;
        v12 = *(result + 1);
        v13 = *(result + 2);
        if (v12 >= v13)
        {
          v18 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_48;
          }

          if (v13 < v18)
          {
            outlined init with copy of Material.Layer.SDFLayer.GroupLayer(&v45, &v38);
            v19 = ProtobufEncoder.growBufferSlow(to:)(v18);
          }

          else
          {
            *(result + 1) = v18;
            v19 = (*result + v12);
            outlined init with copy of Material.Layer.SDFLayer.GroupLayer(&v45, &v38);
          }

          *v19 = 18;
        }

        else
        {
          *(*result + v12) = 18;
          *(result + 1) = v12 + 1;
          outlined init with copy of Material.Layer.SDFLayer.GroupLayer(&v45, &v38);
        }

        v38 = v45;
        v39 = v46;
        v40 = v47;
        LODWORD(v41) = v48;
        v14 = *(result + 1);
        v15 = *(result + 3);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 2) + 1, 1, v15);
        }

        v17 = *(v15 + 2);
        v16 = *(v15 + 3);
        if (v17 >= v16 >> 1)
        {
          v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v15);
        }

        *(v15 + 2) = v17 + 1;
        *&v15[8 * v17 + 32] = v14;
        *(result + 3) = v15;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_45;
        }

        *(result + 1) = v14 + 1;
        Material.Layer.SDFLayer.GroupLayer.encode(to:)(result);
        if (v2)
        {
          outlined destroy of Material.Layer.SDFLayer.GroupLayer(&v45);
          return;
        }

        ++v7;
        ProtobufEncoder.endLengthDelimited()();
        outlined destroy of Material.Layer.SDFLayer.GroupLayer(&v45);
        v8 = (v8 + 56);
        if (v52 == v7)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_45:
      __break(1u);
    }

    else
    {
LABEL_23:
      v20 = *(v5 + 16);
      if (!v20)
      {
        return;
      }

      v21 = 0;
      v22 = (v5 + 32);
      v23 = v20 - 1;
      while (1)
      {
        v24 = *v22;
        v25 = v22[1];
        v26 = v22[3];
        v47 = v22[2];
        v48 = v26;
        v45 = v24;
        v46 = v25;
        v27 = v22[4];
        v28 = v22[5];
        v29 = v22[6];
        *(v51 + 12) = *(v22 + 108);
        v50 = v28;
        v51[0] = v29;
        v49 = v27;
        v30 = *(result + 1);
        v31 = *(result + 2);
        if (v30 >= v31)
        {
          v36 = v30 + 1;
          if (__OFADD__(v30, 1))
          {
            goto LABEL_49;
          }

          if (v31 < v36)
          {
            outlined init with copy of GraphicsFilter(&v45, &v38);
            v37 = ProtobufEncoder.growBufferSlow(to:)(v36);
          }

          else
          {
            *(result + 1) = v36;
            v37 = (*result + v30);
            outlined init with copy of GraphicsFilter(&v45, &v38);
          }

          *v37 = 26;
        }

        else
        {
          *(*result + v30) = 26;
          *(result + 1) = v30 + 1;
          outlined init with copy of GraphicsFilter(&v45, &v38);
        }

        v42 = v49;
        v43 = v50;
        v44[0] = v51[0];
        *(v44 + 12) = *(v51 + 12);
        v38 = v45;
        v39 = v46;
        v40 = v47;
        v41 = v48;
        v32 = *(result + 1);
        v33 = *(result + 3);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v33 + 2) + 1, 1, v33);
        }

        v35 = *(v33 + 2);
        v34 = *(v33 + 3);
        if (v35 >= v34 >> 1)
        {
          v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v33);
        }

        *(v33 + 2) = v35 + 1;
        *&v33[8 * v35 + 32] = v32;
        *(result + 3) = v33;
        if (__OFADD__(v32, 1))
        {
          break;
        }

        *(result + 1) = v32 + 1;
        GraphicsFilter.encode(to:)(result);
        if (v2)
        {
          outlined destroy of GraphicsFilter(&v45);
          return;
        }

        ProtobufEncoder.endLengthDelimited()();
        outlined destroy of GraphicsFilter(&v45);
        if (v23 == v21)
        {
          return;
        }

        ++v21;
        v22 += 8;
        if (v21 >= *(v5 + 16))
        {
          goto LABEL_47;
        }
      }
    }

    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
  }
}

void SDFStyle.Group.init(from:)(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 1);
  v6 = *(a1 + 2);
  if (v5 >= v6)
  {
    v48 = 0uLL;
    v7 = MEMORY[0x1E69E7CC0];
    LOBYTE(v8) = 0x80;
    v9 = MEMORY[0x1E69E7CC0];
LABEL_73:
    *(a1 + 3) = 0;
    *a2 = v48;
    *(a2 + 16) = v8;
    *(a2 + 24) = v7;
    *(a2 + 32) = v9;
    return;
  }

  v48 = 0uLL;
  v7 = MEMORY[0x1E69E7CC0];
  v8 = 128;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = *(a1 + 3);
    if (v10)
    {
      v11 = *(a1 + 4);
      if (v5 < v11)
      {
        goto LABEL_11;
      }

      if (v11 < v5)
      {
        goto LABEL_79;
      }

      *(a1 + 3) = 0;
    }

    v10 = ProtobufDecoder.decodeVarint()(v10);
    if (v2)
    {
      goto LABEL_81;
    }

    if (v10 < 8)
    {
      goto LABEL_79;
    }

LABEL_11:
    v12 = v10 >> 3;
    if (v10 >> 3 == 3)
    {
      if ((v10 & 7) != 2)
      {
        goto LABEL_79;
      }

      ProtobufDecoder.beginMessage()();
      if (v2)
      {
        goto LABEL_81;
      }

      GraphicsFilter.init(from:)(a1, &v60);
      v35 = *(a1 + 5);
      if (!*(v35 + 2))
      {
        goto LABEL_84;
      }

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v36 = *(v35 + 2);
        if (!v36)
        {
          goto LABEL_85;
        }
      }

      else
      {
        v35 = specialized _ArrayBuffer._consumeAndCreateNew()(v35);
        v36 = *(v35 + 2);
        if (!v36)
        {
          goto LABEL_85;
        }
      }

      v37 = v36 - 1;
      v6 = *&v35[8 * v37 + 32];
      *(v35 + 2) = v37;
      *(a1 + 5) = v35;
      *(a1 + 2) = v6;
      v57 = v64;
      v58 = v65;
      *v59 = v66[0];
      *&v59[12] = *(v66 + 12);
      v50 = v60;
      v52 = v61;
      v54 = v62;
      v56 = v63;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
      }

      v39 = *(v9 + 2);
      v38 = *(v9 + 3);
      if (v39 >= v38 >> 1)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1, v9);
      }

      *(v9 + 2) = v39 + 1;
      v40 = &v9[128 * v39];
      *(v40 + 4) = v54;
      *(v40 + 5) = v56;
      *(v40 + 2) = v50;
      *(v40 + 3) = v52;
      *(v40 + 140) = *&v59[12];
      *(v40 + 7) = v58;
      *(v40 + 8) = *v59;
      *(v40 + 6) = v57;
      goto LABEL_4;
    }

    if (v12 != 2)
    {
      break;
    }

    if ((v10 & 7) != 2)
    {
      goto LABEL_79;
    }

    v67 = v9;
    v22 = a2;
    v23 = *(a1 + 5);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    a2 = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v23 + 16) + 1, 1, v23);
      v23 = isUniquelyReferenced_nonNull_native;
    }

    v26 = *(v23 + 16);
    v25 = *(v23 + 24);
    if (v26 >= v25 >> 1)
    {
      isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v23);
      v23 = isUniquelyReferenced_nonNull_native;
    }

    *(v23 + 16) = v26 + 1;
    *(v23 + 8 * v26 + 32) = v6;
    *(a1 + 5) = v23;
    v27 = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
    if (v2)
    {
      goto LABEL_81;
    }

    if (v27 < 0)
    {
      goto LABEL_83;
    }

    v28 = *(a1 + 1) + v27;
    if (v6 < v28)
    {
      goto LABEL_79;
    }

    *(a1 + 2) = v28;
    closure #1 in SDFStyle.Group.init(from:)(a1, &v60);
    v29 = *(a1 + 5);
    if (!*(v29 + 2))
    {
      goto LABEL_86;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = specialized _ArrayBuffer._consumeAndCreateNew()(v29);
    }

    v8 = a2;
    v30 = *(v29 + 2);
    if (!v30)
    {
      goto LABEL_88;
    }

    a2 = v22;
    v31 = v30 - 1;
    v6 = *&v29[8 * v31 + 32];
    *(v29 + 2) = v31;
    *(a1 + 5) = v29;
    *(a1 + 2) = v6;
    v49 = v60;
    v51 = v61;
    v53 = v62;
    v55 = v63;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
    }

    v9 = v67;
    v33 = *(v7 + 2);
    v32 = *(v7 + 3);
    if (v33 >= v32 >> 1)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v7);
    }

    *(v7 + 2) = v33 + 1;
    v34 = &v7[56 * v33];
    *(v34 + 20) = v55;
    *(v34 + 3) = v51;
    *(v34 + 4) = v53;
    *(v34 + 2) = v49;
LABEL_4:
    v5 = *(a1 + 1);
    if (v5 >= v6)
    {
      goto LABEL_73;
    }
  }

  if (v12 != 1)
  {
    v41 = v10 & 7;
    if (v41 > 1)
    {
      if (v41 == 2)
      {
        v43 = ProtobufDecoder.decodeVarint()(v10);
        if (v2)
        {
          goto LABEL_81;
        }

        if (v43 < 0)
        {
          goto LABEL_90;
        }

        v42 = *(a1 + 1) + v43;
        if (v6 < v42)
        {
          goto LABEL_79;
        }
      }

      else
      {
        if (v41 != 5)
        {
          goto LABEL_79;
        }

        v42 = *(a1 + 1) + 4;
        if (v6 < v42)
        {
          goto LABEL_79;
        }
      }
    }

    else
    {
      if ((v10 & 7) == 0)
      {
        ProtobufDecoder.decodeVarint()(v10);
        if (v2)
        {
          goto LABEL_81;
        }

        goto LABEL_4;
      }

      if (v41 != 1)
      {
        goto LABEL_79;
      }

      v42 = *(a1 + 1) + 8;
      if (v6 < v42)
      {
        goto LABEL_79;
      }
    }

    *(a1 + 1) = v42;
    goto LABEL_4;
  }

  if ((v10 & 7) != 2)
  {
    goto LABEL_79;
  }

  v13 = *(a1 + 5);
  v14 = swift_isUniquelyReferenced_nonNull_native();
  if ((v14 & 1) == 0)
  {
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 16) + 1, 1, v13);
    v13 = v14;
  }

  v16 = *(v13 + 16);
  v15 = *(v13 + 24);
  if (v16 >= v15 >> 1)
  {
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v13);
    v13 = v14;
  }

  *(v13 + 16) = v16 + 1;
  *(v13 + 8 * v16 + 32) = v6;
  *(a1 + 5) = v13;
  v17 = ProtobufDecoder.decodeVarint()(v14);
  if (v2)
  {
    goto LABEL_81;
  }

  if ((v17 & 0x8000000000000000) == 0)
  {
    v18 = *(a1 + 1) + v17;
    if (v6 < v18)
    {
      goto LABEL_79;
    }

    *(a1 + 2) = v18;
    Material.Layer.SDFLayer.GroupType.init(from:)(a1, &v60);
    v19 = *(a1 + 5);
    if (!*(v19 + 2))
    {
      goto LABEL_87;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v20 = *(v19 + 2);
      if (!v20)
      {
        goto LABEL_89;
      }
    }

    else
    {
      v19 = specialized _ArrayBuffer._consumeAndCreateNew()(v19);
      v20 = *(v19 + 2);
      if (!v20)
      {
        goto LABEL_89;
      }
    }

    v21 = v20 - 1;
    v6 = *&v19[8 * v21 + 32];
    *(v19 + 2) = v21;
    *(a1 + 5) = v19;
    *(a1 + 2) = v6;
    v48 = v60;
    v8 = v61;
    goto LABEL_4;
  }

  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
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
  __break(1u);
  v46 = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
  v47 = *(v46 + 2);
  if (!v47)
  {
    __break(1u);
LABEL_79:
    lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
    swift_allocError();
    swift_willThrow();
    goto LABEL_81;
  }

  v44 = v47 - 1;
  v45 = *&v46[8 * v44 + 32];
  *(v46 + 2) = v44;
  *(a1 + 5) = v46;
  *(a1 + 2) = v45;
LABEL_81:
}

void closure #1 in SDFStyle.Group.init(from:)(void *a1@<X0>, char *a2@<X8>)
{
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0x80;
  v6 = MEMORY[0x1E69E7CC0];
  *(v5 + 40) = MEMORY[0x1E69E7CC0];
  *(v5 + 48) = v6;
  v7 = v5 | 0x8000000000000000;
  if (one-time initialization token for normal != -1)
  {
    swift_once();
  }

  v8 = static Material.Layer.SDFLayer.GroupLayer.Blend.normal;
  v9 = a1[1];
  v10 = a1[2];
  v11 = static Material.Layer.SDFLayer.GroupLayer.Blend.normal;
  if (v9 >= v10)
  {
LABEL_68:
    outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(v11);
    v12 = 1.0;
LABEL_69:
    a1[3] = 0;
    *a2 = v7;
    *(a2 + 1) = v8;
    *(a2 + 4) = v12;
    *(a2 + 3) = 0;
    *(a2 + 4) = 0;
    *(a2 + 10) = 0;
    *(a2 + 44) = 0x7F8000003F800000;
    return;
  }

  outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(static Material.Layer.SDFLayer.GroupLayer.Blend.normal);
  v12 = 1.0;
  while (1)
  {
    v13 = a1[3];
    if (v13)
    {
      v14 = a1[4];
      if (v9 < v14)
      {
        goto LABEL_13;
      }

      if (v14 < v9)
      {
        goto LABEL_70;
      }

      a1[3] = 0;
    }

    v13 = ProtobufDecoder.decodeVarint()(v13);
    if (v2)
    {
      goto LABEL_76;
    }

    if (v13 <= 7)
    {
      goto LABEL_70;
    }

LABEL_13:
    v15 = v13 >> 3;
    if (v13 >> 3 == 3)
    {
      if ((v13 & 7) == 2)
      {
        v40 = ProtobufDecoder.decodeVarint()(v13);
        if (v2)
        {
          goto LABEL_76;
        }

        if (v40 < 0)
        {
          goto LABEL_82;
        }

        v37 = a1[1];
        if (v10 < v37 + v40)
        {
          goto LABEL_70;
        }

        a1[3] = 29;
        a1[4] = v37 + v40;
      }

      else
      {
        if ((v13 & 7) != 5)
        {
          goto LABEL_70;
        }

        v37 = a1[1];
      }

      if (v10 < (v37 + 1))
      {
        goto LABEL_70;
      }

      v12 = *v37;
      a1[1] = v37 + 1;
      goto LABEL_6;
    }

    if (v15 == 2)
    {
      break;
    }

    if (v15 != 1)
    {
      v38 = v13 & 7;
      if (v38 > 1)
      {
        if (v38 == 2)
        {
          v41 = ProtobufDecoder.decodeVarint()(v13);
          if (v2)
          {
            goto LABEL_76;
          }

          if (v41 < 0)
          {
            goto LABEL_83;
          }

          v39 = a1[1] + v41;
          if (v10 < v39)
          {
            goto LABEL_70;
          }
        }

        else
        {
          if (v38 != 5)
          {
            goto LABEL_70;
          }

          v39 = a1[1] + 4;
          if (v10 < v39)
          {
            goto LABEL_70;
          }
        }
      }

      else
      {
        if ((v13 & 7) == 0)
        {
          ProtobufDecoder.decodeVarint()(v13);
          if (v2)
          {
            goto LABEL_76;
          }

          goto LABEL_6;
        }

        if (v38 != 1)
        {
          goto LABEL_70;
        }

        v39 = a1[1] + 8;
        if (v10 < v39)
        {
          goto LABEL_70;
        }
      }

      a1[1] = v39;
      goto LABEL_6;
    }

    if ((v13 & 7) != 2)
    {
      goto LABEL_70;
    }

    v16 = a1[5];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 16) + 1, 1, v16);
      v16 = isUniquelyReferenced_nonNull_native;
    }

    v19 = *(v16 + 16);
    v18 = *(v16 + 24);
    if (v19 >= v18 >> 1)
    {
      isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v16);
      v16 = isUniquelyReferenced_nonNull_native;
    }

    *(v16 + 16) = v19 + 1;
    *(v16 + 8 * v19 + 32) = v10;
    a1[5] = v16;
    v20 = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
    if (v2)
    {
      goto LABEL_76;
    }

    if (v20 < 0)
    {
      goto LABEL_78;
    }

    v21 = a1[1] + v20;
    if (v10 < v21)
    {
LABEL_70:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      swift_willThrow();
LABEL_76:
      v45[0] = v7;
      v45[1] = v8;
      v46 = v12;
      v47 = 0;
      v48 = 0;
      v49 = 0;
      v50 = 0x7F8000003F800000;
      outlined destroy of Material.Layer.SDFLayer.GroupLayer(v45);
      return;
    }

    a1[2] = v21;
    v22 = specialized SDFStyle.init(from:)(a1);
    v23 = a1[5];
    if (!*(v23 + 16))
    {
      goto LABEL_79;
    }

    v24 = v22;
    v11 = swift_isUniquelyReferenced_nonNull_native();
    if (v11)
    {
      v25 = *(v23 + 16);
      if (!v25)
      {
        goto LABEL_67;
      }
    }

    else
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew()(v23);
      v23 = v11;
      v25 = *(v11 + 16);
      if (!v25)
      {
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }
    }

    v26 = v25 - 1;
    v10 = *(v23 + 8 * v26 + 32);
    *(v23 + 16) = v26;

    a1[5] = v23;
    a1[2] = v10;
    v7 = v24;
LABEL_6:
    v9 = a1[1];
    if (v9 >= v10)
    {
      goto LABEL_69;
    }
  }

  if ((v13 & 7) != 2)
  {
    goto LABEL_70;
  }

  v27 = a1[5];
  v28 = swift_isUniquelyReferenced_nonNull_native();
  if ((v28 & 1) == 0)
  {
    v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v27 + 16) + 1, 1, v27);
    v27 = v28;
  }

  v30 = *(v27 + 16);
  v29 = *(v27 + 24);
  if (v30 >= v29 >> 1)
  {
    v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v27);
    v27 = v28;
  }

  *(v27 + 16) = v30 + 1;
  *(v27 + 8 * v30 + 32) = v10;
  a1[5] = v27;
  v31 = ProtobufDecoder.decodeVarint()(v28);
  if (v2)
  {
    goto LABEL_76;
  }

  if ((v31 & 0x8000000000000000) == 0)
  {
    v32 = a1[1] + v31;
    if (v10 < v32)
    {
      goto LABEL_70;
    }

    a1[2] = v32;
    Material.Layer.SDFLayer.GroupLayer.Blend.init(from:)(a1, v45);
    v33 = a1[5];
    if (!*(v33 + 2))
    {
      goto LABEL_80;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v34 = *(v33 + 2);
      if (!v34)
      {
        goto LABEL_81;
      }
    }

    else
    {
      v33 = specialized _ArrayBuffer._consumeAndCreateNew()(v33);
      v34 = *(v33 + 2);
      if (!v34)
      {
        goto LABEL_81;
      }
    }

    v35 = v34 - 1;
    v10 = *&v33[8 * v35 + 32];
    *(v33 + 2) = v35;
    a1[5] = v33;
    a1[2] = v10;
    v36 = v45[0];
    outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v8);
    v8 = v36;
    goto LABEL_6;
  }

  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
  __break(1u);
  do
  {
    __break(1u);
    a2 = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
    v42 = *(a2 + 2);
    if (v42)
    {
      goto LABEL_75;
    }

    __break(1u);
    a2 = a1[5];
  }

  while (!*(a2 + 2));
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v42 = *(a2 + 2);
    if (v42)
    {
LABEL_75:
      v43 = v42 - 1;
      v44 = *&a2[8 * v43 + 32];
      *(a2 + 2) = v43;
      a1[5] = a2;
      a1[2] = v44;
      goto LABEL_76;
    }
  }

  else
  {
    a2 = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
    v42 = *(a2 + 2);
    if (v42)
    {
      goto LABEL_75;
    }
  }

  __break(1u);
}

void Material.Layer.SDFLayer.GroupType.encode(to:)(void *a1)
{
  v2 = v1;
  v5 = *v2;
  v4 = v2[1];
  v6 = *(v2 + 16);
  if ((v6 & 0x80000000) == 0)
  {
    v7 = 3;
    goto LABEL_3;
  }

  if (!(v4 | v5) && v6 == -128)
  {
    v10 = 1;
LABEL_28:
    ProtobufEncoder.encodeVarint(_:)(8uLL);
    ProtobufEncoder.encodeVarint(_:)(v10);
    return;
  }

  v12 = v5 == 1 && v4 == 0;
  if (v12 && v6 == -128)
  {
    v10 = 2;
    goto LABEL_28;
  }

  if (v6 == -128 && v4 == 0 && v5 == 2)
  {
    v7 = 4;
  }

  else
  {
    v7 = 3;
  }

LABEL_3:
  ProtobufEncoder.encodeVarint(_:)(8uLL);
  ProtobufEncoder.encodeVarint(_:)(v7);
  if (!(v6 >> 6))
  {
    if (*&v5 == 1.0)
    {
      return;
    }

    ProtobufEncoder.encodeVarint(_:)(0x15uLL);
    v11 = a1[1];
    v9 = v11 + 4;
    if (!__OFADD__(v11, 4))
    {
      if (a1[2] < v9)
      {
        *ProtobufEncoder.growBufferSlow(to:)(v9) = v5;
      }

      else
      {
        a1[1] = v9;
        *(*a1 + v11) = v5;
      }

      return;
    }

    goto LABEL_39;
  }

  if (v6 >> 6 != 1)
  {
    return;
  }

  if (*&v5 == 1.0)
  {
LABEL_9:
    if ((v5 & 0x100000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_41;
  }

  ProtobufEncoder.encodeVarint(_:)(0x15uLL);
  v8 = a1[1];
  v9 = v8 + 4;
  if (__OFADD__(v8, 4))
  {
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (a1[2] >= v9)
  {
    a1[1] = v9;
    *(*a1 + v8) = v5;
    goto LABEL_9;
  }

LABEL_40:
  *ProtobufEncoder.growBufferSlow(to:)(v9) = v5;
  if ((v5 & 0x100000000) == 0)
  {
LABEL_10:
    if ((v5 & 0x1000000000000) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_42;
  }

LABEL_41:
  ProtobufEncoder.encodeVarint(_:)(0x18uLL);
  ProtobufEncoder.encodeVarint(_:)(1uLL);
  if ((v5 & 0x1000000000000) != 0)
  {
LABEL_11:
    if ((v4 & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
LABEL_46:
      if ((v6 & 1) == 0)
      {
        return;
      }

      goto LABEL_47;
    }

    goto LABEL_43;
  }

LABEL_42:
  ProtobufEncoder.encodeVarint(_:)(0x20uLL);
  ProtobufEncoder.encodeVarint(_:)(0);
  if ((v4 & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    goto LABEL_46;
  }

LABEL_43:
  ProtobufEncoder.encodeVarint(_:)(0x29uLL);
  v15 = a1[1];
  v16 = v15 + 8;
  if (__OFADD__(v15, 8))
  {
    __break(1u);
  }

  else if (a1[2] >= v16)
  {
    a1[1] = v16;
    *(*a1 + v15) = v4;
    goto LABEL_46;
  }

  *ProtobufEncoder.growBufferSlow(to:)(v16) = v4;
  if (v6)
  {
LABEL_47:
    ProtobufEncoder.encodeVarint(_:)(0x30uLL);
    ProtobufEncoder.encodeVarint(_:)(1uLL);
  }
}

unint64_t Material.Layer.SDFLayer.GroupType.init(from:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = result;
  v5 = *(result + 8);
  v6 = *(result + 16);
  if (v5 < v6)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 1;
    v11 = 0.0;
    v12 = 1.0;
    while (1)
    {
      result = v3[3];
      if (result)
      {
        v16 = v3[4];
        if (v5 < v16)
        {
          goto LABEL_13;
        }

        if (v16 < v5)
        {
          goto LABEL_87;
        }

        v3[3] = 0;
      }

      result = ProtobufDecoder.decodeVarint()(result);
      if (v2)
      {
        return result;
      }

      if (result <= 7)
      {
LABEL_87:
        lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
        swift_allocError();
        return swift_willThrow();
      }

LABEL_13:
      v17 = result >> 3;
      v18 = result & 7;
      if (result >> 3 > 3)
      {
        switch(v17)
        {
          case 4uLL:
            if ((result & 7) != 0)
            {
              if (v18 != 2)
              {
                goto LABEL_87;
              }

              result = ProtobufDecoder.decodeVarint()(result);
              if (v2)
              {
                return result;
              }

              if ((result & 0x8000000000000000) != 0)
              {
                goto LABEL_107;
              }

              v22 = v3[1] + result;
              if (v6 < v22)
              {
                goto LABEL_87;
              }

              v3[3] = 32;
              v3[4] = v22;
            }

            result = ProtobufDecoder.decodeVarint()(result);
            if (v2)
            {
              return result;
            }

            v10 = result != 0;
            goto LABEL_6;
          case 5uLL:
            if (v18 == 5)
            {
              v26 = v3[1];
              if (v6 < (v26 + 1))
              {
                goto LABEL_87;
              }

              v27 = *v26;
              v3[1] = v26 + 1;
              v11 = v27;
            }

            else
            {
              if (v18 == 2)
              {
                result = ProtobufDecoder.decodeVarint()(result);
                if (v2)
                {
                  return result;
                }

                if ((result & 0x8000000000000000) != 0)
                {
                  goto LABEL_109;
                }

                v25 = v3[1];
                if (v6 < v25 + result)
                {
                  goto LABEL_87;
                }

                v3[3] = 41;
                v3[4] = v25 + result;
              }

              else
              {
                if (v18 != 1)
                {
                  goto LABEL_87;
                }

                v25 = v3[1];
              }

              if (v6 < (v25 + 1))
              {
                goto LABEL_87;
              }

              v11 = *v25;
              v3[1] = v25 + 1;
            }

            goto LABEL_6;
          case 6uLL:
            if ((result & 7) != 0)
            {
              if (v18 != 2)
              {
                goto LABEL_87;
              }

              result = ProtobufDecoder.decodeVarint()(result);
              if (v2)
              {
                return result;
              }

              if ((result & 0x8000000000000000) != 0)
              {
                goto LABEL_106;
              }

              v20 = v3[1] + result;
              if (v6 < v20)
              {
                goto LABEL_87;
              }

              v3[3] = 48;
              v3[4] = v20;
            }

            result = ProtobufDecoder.decodeVarint()(result);
            if (v2)
            {
              return result;
            }

            v7 = result != 0;
            goto LABEL_6;
        }
      }

      else
      {
        switch(v17)
        {
          case 1uLL:
            if ((result & 7) != 0)
            {
              if (v18 != 2)
              {
                goto LABEL_87;
              }

              result = ProtobufDecoder.decodeVarint()(result);
              if (v2)
              {
                return result;
              }

              if ((result & 0x8000000000000000) != 0)
              {
                goto LABEL_108;
              }

              v21 = v3[1] + result;
              if (v6 < v21)
              {
                goto LABEL_87;
              }

              v3[3] = 8;
              v3[4] = v21;
            }

            result = ProtobufDecoder.decodeVarint()(result);
            if (v2)
            {
              return result;
            }

            v9 = result;
            goto LABEL_6;
          case 2uLL:
            if (v18 == 2)
            {
              result = ProtobufDecoder.decodeVarint()(result);
              if (v2)
              {
                return result;
              }

              if ((result & 0x8000000000000000) != 0)
              {
                goto LABEL_105;
              }

              v24 = v3[1];
              if (v6 < v24 + result)
              {
                goto LABEL_87;
              }

              v3[3] = 21;
              v3[4] = v24 + result;
            }

            else
            {
              if (v18 != 5)
              {
                goto LABEL_87;
              }

              v24 = v3[1];
            }

            if (v6 < (v24 + 1))
            {
              goto LABEL_87;
            }

            v12 = *v24;
            v3[1] = v24 + 1;
            goto LABEL_6;
          case 3uLL:
            if ((result & 7) != 0)
            {
              if (v18 != 2)
              {
                goto LABEL_87;
              }

              result = ProtobufDecoder.decodeVarint()(result);
              if (v2)
              {
                return result;
              }

              if ((result & 0x8000000000000000) != 0)
              {
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
                return result;
              }

              v19 = v3[1] + result;
              if (v6 < v19)
              {
                goto LABEL_87;
              }

              v3[3] = 24;
              v3[4] = v19;
            }

            result = ProtobufDecoder.decodeVarint()(result);
            if (v2)
            {
              return result;
            }

            v8 = result != 0;
            goto LABEL_6;
        }
      }

      if ((result & 7) > 1)
      {
        if (v18 == 2)
        {
          result = ProtobufDecoder.decodeVarint()(result);
          if (v2)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_110;
          }

          v23 = v3[1] + result;
          if (v6 < v23)
          {
            goto LABEL_87;
          }
        }

        else
        {
          if (v18 != 5)
          {
            goto LABEL_87;
          }

          v23 = v3[1] + 4;
          if (v6 < v23)
          {
            goto LABEL_87;
          }
        }
      }

      else
      {
        if ((result & 7) == 0)
        {
          result = ProtobufDecoder.decodeVarint()(result);
          if (v2)
          {
            return result;
          }

          goto LABEL_6;
        }

        if (v18 != 1)
        {
          goto LABEL_87;
        }

        v23 = v3[1] + 8;
        if (v6 < v23)
        {
          goto LABEL_87;
        }
      }

      v3[1] = v23;
LABEL_6:
      v5 = v3[1];
      if (v5 >= v6)
      {
        v3[3] = 0;
        v15 = 0.0;
        switch(v9)
        {
          case 1:
            v14 = 0x80;
            v13 = 1;
            break;
          case 2:
            v13 = LODWORD(v12);
            if (v8 || !v10 || v7 || v11 != 0.0)
            {
              v28 = 0x100000000;
              if (!v8)
              {
                v28 = 0;
              }

              v29 = 0x1000000000000;
              if (!v10)
              {
                v29 = 0;
              }

              v13 = v28 | LODWORD(v12) | v29;
              v14 = v7 | 0x40;
              v15 = v11;
            }

            else if (v12 == 1.0)
            {
              v13 = 3;
              v14 = 0x80;
            }

            else
            {
              v14 = 0;
            }

            break;
          case 3:
            v14 = 0x80;
            v13 = 2;
            break;
          default:
            v13 = 0;
            v14 = 0x80;
            break;
        }

        goto LABEL_4;
      }
    }
  }

  v13 = 0;
  *(result + 24) = 0;
  v14 = 0x80;
  v15 = 0.0;
LABEL_4:
  *a2 = v13;
  *(a2 + 8) = v15;
  *(a2 + 16) = v14;
  return result;
}

void Material.Layer.SDFLayer.GroupLayer.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = *v3;
  v6 = *(v3 + 8);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v17 = *(v3 + 32);
  v18 = *(v3 + 40);
  v9 = *(v3 + 44);
  ProtobufEncoder.encodeVarint(_:)(0xAuLL);
  v10 = a1[1];
  v11 = a1[3];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
  }

  v13 = *(v11 + 2);
  v12 = *(v11 + 3);
  if (v13 >= v12 >> 1)
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v11);
  }

  *(v11 + 2) = v13 + 1;
  *&v11[8 * v13 + 32] = v10;
  a1[3] = v11;
  if (__OFADD__(v10, 1))
  {
    __break(1u);
LABEL_26:
    swift_once();
    goto LABEL_8;
  }

  a1[1] = v10 + 1;
  SDFStyle.encode(to:)(a1, v5);
  if (v2)
  {
    return;
  }

  ProtobufEncoder.endLengthDelimited()();
  if (one-time initialization token for normal != -1)
  {
    goto LABEL_26;
  }

LABEL_8:
  v20 = v6;
  v19 = static Material.Layer.SDFLayer.GroupLayer.Blend.normal;
  if (specialized static Material.Layer.SDFLayer.GroupLayer.Blend.== infix(_:_:)(&v20, &v19) || (specialized ProtobufEncoder.messageField<A>(_:_:)(2, v20), !v2))
  {
    if (v7 != 1.0)
    {
      ProtobufEncoder.encodeVarint(_:)(0x1DuLL);
      v14 = a1[1];
      v15 = v14 + 4;
      if (__OFADD__(v14, 4))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (a1[2] < v15)
      {
        goto LABEL_29;
      }

      a1[1] = v15;
      *(*a1 + v14) = v7;
    }

    if (v8)
    {
LABEL_15:
      ProtobufEncoder.encodeVarint(_:)(0x20uLL);
      ProtobufEncoder.encodeVarint(_:)(v8);
      goto LABEL_16;
    }

    while (1)
    {
LABEL_16:
      if (v17)
      {
        ProtobufEncoder.encodeVarint(_:)(0x28uLL);
        ProtobufEncoder.encodeVarint(_:)(v17);
      }

      if (v18)
      {
        ProtobufEncoder.encodeVarint(_:)(0x30uLL);
        ProtobufEncoder.encodeVarint(_:)(v18);
      }

      if (v9 == 1.0)
      {
        break;
      }

      ProtobufEncoder.encodeVarint(_:)(0x3DuLL);
      v16 = a1[1];
      v15 = v16 + 4;
      if (!__OFADD__(v16, 4))
      {
        if (a1[2] < v15)
        {
          *ProtobufEncoder.growBufferSlow(to:)(v15) = v9;
        }

        else
        {
          a1[1] = v15;
          *(*a1 + v16) = v9;
        }

        return;
      }

LABEL_28:
      __break(1u);
LABEL_29:
      *ProtobufEncoder.growBufferSlow(to:)(v15) = v7;
      if (v8)
      {
        goto LABEL_15;
      }
    }
  }
}

void Material.Layer.SDFLayer.GroupLayer.init(from:)(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  if (one-time initialization token for normal != -1)
  {
    swift_once();
  }

  v5 = static Material.Layer.SDFLayer.GroupLayer.Blend.normal;
  v7 = *(a1 + 1);
  v6 = *(a1 + 2);
  if (v7 < v6)
  {
    v52 = a2;
    v8 = v2;
    outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(static Material.Layer.SDFLayer.GroupLayer.Blend.normal);
    v53 = 0;
    v54 = 0;
    v9 = 0;
    v10 = 0xF000000000000007;
    v11 = 1.0;
    v12 = 1.0;
    while (1)
    {
      v13 = *(a1 + 3);
      if (v13)
      {
        v14 = *(a1 + 4);
        if (v7 < v14)
        {
          goto LABEL_14;
        }

        if (v14 < v7)
        {
          goto LABEL_108;
        }

        *(a1 + 3) = 0;
      }

      v13 = ProtobufDecoder.decodeVarint()(v13);
      if (v2)
      {
        goto LABEL_109;
      }

      if (v13 < 8)
      {
        goto LABEL_108;
      }

LABEL_14:
      v15 = v13 >> 3;
      if (v13 >> 3 <= 3)
      {
        switch(v15)
        {
          case 1uLL:
            if ((v13 & 7) != 2)
            {
              goto LABEL_108;
            }

            v8 = v2;
            v20 = *(a1 + 5);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 16) + 1, 1, v20);
              v20 = isUniquelyReferenced_nonNull_native;
            }

            v23 = *(v20 + 16);
            v22 = *(v20 + 24);
            if (v23 >= v22 >> 1)
            {
              isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v20);
              v20 = isUniquelyReferenced_nonNull_native;
            }

            *(v20 + 16) = v23 + 1;
            *(v20 + 8 * v23 + 32) = v6;
            *(a1 + 5) = v20;
            v24 = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
            if (v2)
            {
              goto LABEL_109;
            }

            if (v24 < 0)
            {
              __break(1u);
LABEL_119:
              __break(1u);
LABEL_120:
              __break(1u);
LABEL_121:
              __break(1u);
LABEL_122:
              __break(1u);
LABEL_123:
              __break(1u);
LABEL_124:
              __break(1u);
LABEL_125:
              __break(1u);
LABEL_126:
              __break(1u);
LABEL_127:
              __break(1u);
LABEL_128:
              __break(1u);
              __break(1u);
              do
              {
                __break(1u);
                v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
                v49 = *(v8 + 2);
                if (v49)
                {
                  goto LABEL_117;
                }

                __break(1u);
                v8 = *(a1 + 5);
              }

              while (!*(v8 + 2));
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                v49 = *(v8 + 2);
                if (v49)
                {
LABEL_117:
                  v50 = v49 - 1;
                  v51 = *&v8[8 * v50 + 32];
                  *(v8 + 2) = v50;
                  outlined consume of SDFStyle?(v10);
                  *(a1 + 5) = v8;
                  *(a1 + 2) = v51;
                  goto LABEL_110;
                }
              }

              else
              {
                v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
                v49 = *(v8 + 2);
                if (v49)
                {
                  goto LABEL_117;
                }
              }

              __break(1u);
              return;
            }

            v25 = *(a1 + 1) + v24;
            if (v6 < v25)
            {
              goto LABEL_108;
            }

            *(a1 + 2) = v25;
            v26 = specialized SDFStyle.init(from:)(a1);
            v27 = *(a1 + 5);
            if (!*(v27 + 2))
            {
              goto LABEL_121;
            }

            v28 = v26;
            v8 = 0;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v29 = *(v27 + 2);
              if (!v29)
              {
                goto LABEL_122;
              }
            }

            else
            {
              v27 = specialized _ArrayBuffer._consumeAndCreateNew()(v27);
              v29 = *(v27 + 2);
              if (!v29)
              {
                goto LABEL_122;
              }
            }

            v30 = v29 - 1;
            v6 = *&v27[8 * v30 + 32];
            *(v27 + 2) = v30;
            outlined consume of SDFStyle?(v10);
            *(a1 + 5) = v27;
            *(a1 + 2) = v6;
            v10 = v28;
            goto LABEL_7;
          case 2uLL:
            if ((v13 & 7) != 2)
            {
              goto LABEL_108;
            }

            v8 = v2;
            v37 = *(a1 + 5);
            v38 = swift_isUniquelyReferenced_nonNull_native();
            if ((v38 & 1) == 0)
            {
              v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v37 + 16) + 1, 1, v37);
              v37 = v38;
            }

            v40 = *(v37 + 16);
            v39 = *(v37 + 24);
            if (v40 >= v39 >> 1)
            {
              v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v37);
              v37 = v38;
            }

            *(v37 + 16) = v40 + 1;
            *(v37 + 8 * v40 + 32) = v6;
            *(a1 + 5) = v37;
            v41 = ProtobufDecoder.decodeVarint()(v38);
            if (v2)
            {
              goto LABEL_109;
            }

            if (v41 < 0)
            {
              goto LABEL_119;
            }

            v42 = *(a1 + 1) + v41;
            if (v6 < v42)
            {
              goto LABEL_108;
            }

            *(a1 + 2) = v42;
            Material.Layer.SDFLayer.GroupLayer.Blend.init(from:)(a1, &v55);
            v43 = *(a1 + 5);
            if (!*(v43 + 2))
            {
              goto LABEL_120;
            }

            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v44 = *(v43 + 2);
              if (!v44)
              {
                goto LABEL_107;
              }
            }

            else
            {
              v43 = specialized _ArrayBuffer._consumeAndCreateNew()(v43);
              v44 = *(v43 + 2);
              if (!v44)
              {
LABEL_107:
                __break(1u);
LABEL_108:
                lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
                swift_allocError();
                swift_willThrow();
LABEL_109:
                outlined consume of SDFStyle?(v10);
                goto LABEL_110;
              }
            }

            v45 = v44 - 1;
            v6 = *&v43[8 * v45 + 32];
            *(v43 + 2) = v45;
            *(a1 + 5) = v43;
            *(a1 + 2) = v6;
            v8 = v55;
            outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v5);
            v5 = v8;
            goto LABEL_7;
          case 3uLL:
            if ((v13 & 7) == 2)
            {
              v47 = ProtobufDecoder.decodeVarint()(v13);
              if (v2)
              {
                goto LABEL_109;
              }

              if (v47 < 0)
              {
                goto LABEL_123;
              }

              v18 = *(a1 + 1);
              if (v6 < v18 + v47)
              {
                goto LABEL_108;
              }

              *(a1 + 3) = 29;
              *(a1 + 4) = v18 + v47;
            }

            else
            {
              if ((v13 & 7) != 5)
              {
                goto LABEL_108;
              }

              v18 = *(a1 + 1);
            }

            if (v6 < (v18 + 1))
            {
              goto LABEL_108;
            }

            v11 = *v18;
            *(a1 + 1) = v18 + 1;
            goto LABEL_7;
        }
      }

      else if (v13 >> 3 > 5)
      {
        if (v15 == 6)
        {
          if ((v13 & 7) != 0)
          {
            if ((v13 & 7) != 2)
            {
              goto LABEL_108;
            }

            v13 = ProtobufDecoder.decodeVarint()(v13);
            if (v2)
            {
              goto LABEL_109;
            }

            if ((v13 & 0x8000000000000000) != 0)
            {
              goto LABEL_124;
            }

            v35 = *(a1 + 1) + v13;
            if (v6 < v35)
            {
              goto LABEL_108;
            }

            *(a1 + 3) = 48;
            *(a1 + 4) = v35;
          }

          v36 = ProtobufDecoder.decodeVarint()(v13);
          if (v2)
          {
            goto LABEL_109;
          }

          v53 = v36;
          goto LABEL_7;
        }

        if (v15 == 7)
        {
          if ((v13 & 7) == 2)
          {
            v46 = ProtobufDecoder.decodeVarint()(v13);
            if (v2)
            {
              goto LABEL_109;
            }

            if (v46 < 0)
            {
              goto LABEL_125;
            }

            v19 = *(a1 + 1);
            if (v6 < v19 + v46)
            {
              goto LABEL_108;
            }

            *(a1 + 3) = 61;
            *(a1 + 4) = v19 + v46;
          }

          else
          {
            if ((v13 & 7) != 5)
            {
              goto LABEL_108;
            }

            v19 = *(a1 + 1);
          }

          if (v6 < (v19 + 1))
          {
            goto LABEL_108;
          }

          v12 = *v19;
          *(a1 + 1) = v19 + 1;
          goto LABEL_7;
        }
      }

      else
      {
        if (v15 == 4)
        {
          if ((v13 & 7) != 0)
          {
            if ((v13 & 7) != 2)
            {
              goto LABEL_108;
            }

            v13 = ProtobufDecoder.decodeVarint()(v13);
            if (v2)
            {
              goto LABEL_109;
            }

            if ((v13 & 0x8000000000000000) != 0)
            {
              goto LABEL_126;
            }

            v33 = *(a1 + 1) + v13;
            if (v6 < v33)
            {
              goto LABEL_108;
            }

            *(a1 + 3) = 32;
            *(a1 + 4) = v33;
          }

          v34 = ProtobufDecoder.decodeVarint()(v13);
          if (v2)
          {
            goto LABEL_109;
          }

          v9 = v34;
          goto LABEL_7;
        }

        if (v15 == 5)
        {
          if ((v13 & 7) != 0)
          {
            if ((v13 & 7) != 2)
            {
              goto LABEL_108;
            }

            v13 = ProtobufDecoder.decodeVarint()(v13);
            if (v2)
            {
              goto LABEL_109;
            }

            if ((v13 & 0x8000000000000000) != 0)
            {
              goto LABEL_127;
            }

            v16 = *(a1 + 1) + v13;
            if (v6 < v16)
            {
              goto LABEL_108;
            }

            *(a1 + 3) = 40;
            *(a1 + 4) = v16;
          }

          v17 = ProtobufDecoder.decodeVarint()(v13);
          if (v2)
          {
            goto LABEL_109;
          }

          v54 = v17;
          goto LABEL_7;
        }
      }

      v31 = v13 & 7;
      if (v31 > 1)
      {
        if (v31 == 2)
        {
          v48 = ProtobufDecoder.decodeVarint()(v13);
          if (v2)
          {
            goto LABEL_109;
          }

          if (v48 < 0)
          {
            goto LABEL_128;
          }

          v32 = *(a1 + 1) + v48;
          if (v6 < v32)
          {
            goto LABEL_108;
          }
        }

        else
        {
          if (v31 != 5)
          {
            goto LABEL_108;
          }

          v32 = *(a1 + 1) + 4;
          if (v6 < v32)
          {
            goto LABEL_108;
          }
        }
      }

      else
      {
        if ((v13 & 7) == 0)
        {
          ProtobufDecoder.decodeVarint()(v13);
          if (v2)
          {
            goto LABEL_109;
          }

          goto LABEL_7;
        }

        if (v31 != 1)
        {
          goto LABEL_108;
        }

        v32 = *(a1 + 1) + 8;
        if (v6 < v32)
        {
          goto LABEL_108;
        }
      }

      *(a1 + 1) = v32;
LABEL_7:
      v7 = *(a1 + 1);
      if (v7 >= v6)
      {
        *(a1 + 3) = 0;
        if ((~v10 & 0xF000000000000007) == 0)
        {
          lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
          swift_allocError();
          swift_willThrow();
          goto LABEL_110;
        }

        *v52 = v10;
        *(v52 + 8) = v5;
        *(v52 + 16) = v11;
        *(v52 + 24) = v9;
        *(v52 + 32) = v54;
        *(v52 + 40) = v53;
        *(v52 + 44) = v12;
        *(v52 + 48) = 2139095040;
        return;
      }
    }
  }

  *(a1 + 3) = 0;
  lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
  swift_allocError();
  swift_willThrow();
  outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(v5);
LABEL_110:
  outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v5);
}

void Material.Layer.SDFLayer.GroupLayer.Blend.encode(to:)()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (v2)
  {
    v3 = *((v1 & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
    if (v2 == 1)
    {
      v7[2] = *((v1 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
      v7[3] = v3;
      v7[4] = *((v1 & 0x3FFFFFFFFFFFFFFFLL) + 0x50);
      v4 = *((v1 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v7[0] = *((v1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v7[1] = v4;
      ProtobufEncoder.encodeVarint(_:)(0x12uLL);
      v5 = v7;
    }

    else
    {
      v8[2] = *((v1 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
      v8[3] = v3;
      v8[4] = *((v1 & 0x3FFFFFFFFFFFFFFFLL) + 0x50);
      v6 = *((v1 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v8[0] = *((v1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v8[1] = v6;
      ProtobufEncoder.encodeVarint(_:)(0x12uLL);
      v5 = v8;
    }

    specialized ProtobufEncoder.encodeMessage<A>(_:)(v5);
  }

  else if (v1)
  {
    if ((v1 & 0x80000000) != 0)
    {
      __break(1u);
    }

    else
    {
      ProtobufEncoder.encodeVarint(_:)(8uLL);
      ProtobufEncoder.encodeVarint(_:)(v1 & 0x7FFFFFFF);
    }
  }
}

unint64_t Material.Layer.SDFLayer.GroupLayer.Blend.init(from:)@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  if (one-time initialization token for normal != -1)
  {
    swift_once();
  }

  v5 = static Material.Layer.SDFLayer.GroupLayer.Blend.normal;
  v7 = a1[1];
  v6 = a1[2];
  if (v7 >= v6)
  {
    result = outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(static Material.Layer.SDFLayer.GroupLayer.Blend.normal);
LABEL_45:
    a1[3] = 0;
    *a2 = v5;
    return result;
  }

  result = outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(static Material.Layer.SDFLayer.GroupLayer.Blend.normal);
  while (1)
  {
    v9 = a1[3];
    if (v9)
    {
      v10 = a1[4];
      if (v7 < v10)
      {
        goto LABEL_14;
      }

      if (v10 < v7)
      {
        goto LABEL_46;
      }

      a1[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()(result);
    if (v2)
    {
      return outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v5);
    }

    v9 = result;
    if (result < 8)
    {
LABEL_46:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      swift_willThrow();
      return outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v5);
    }

LABEL_14:
    if (v9 >> 3 == 2)
    {
      break;
    }

    if (v9 >> 3 == 1)
    {
      if ((v9 & 7) != 0)
      {
        if ((v9 & 7) != 2)
        {
          goto LABEL_46;
        }

        result = ProtobufDecoder.decodeVarint()(result);
        if (v2)
        {
          return outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v5);
        }

        if ((result & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_52:
          __break(1u);
          return result;
        }

        v11 = a1[1] + result;
        if (v6 < v11)
        {
          goto LABEL_46;
        }

        a1[3] = 8;
        a1[4] = v11;
      }

      v12 = ProtobufDecoder.decodeVarint()(result);
      if (v2)
      {
        return outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v5);
      }

      v13 = v12;
      result = outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v5);
      if (v13 >> 31)
      {
        v5 = 0;
      }

      else
      {
        v5 = v13;
      }

      goto LABEL_6;
    }

    v16 = v9 & 7;
    if (v16 > 1)
    {
      if (v16 == 2)
      {
        result = ProtobufDecoder.decodeVarint()(result);
        if (v2)
        {
          return outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v5);
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_52;
        }

        v17 = a1[1] + result;
        if (v6 < v17)
        {
          goto LABEL_46;
        }
      }

      else
      {
        if (v16 != 5)
        {
          goto LABEL_46;
        }

        v17 = a1[1] + 4;
        if (v6 < v17)
        {
          goto LABEL_46;
        }
      }

      goto LABEL_43;
    }

    if ((v9 & 7) != 0)
    {
      if (v16 != 1)
      {
        goto LABEL_46;
      }

      v17 = a1[1] + 8;
      if (v6 < v17)
      {
        goto LABEL_46;
      }

LABEL_43:
      a1[1] = v17;
      goto LABEL_7;
    }

    result = ProtobufDecoder.decodeVarint()(result);
    if (v2)
    {
      return outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v5);
    }

LABEL_7:
    v7 = a1[1];
    v6 = a1[2];
    if (v7 >= v6)
    {
      goto LABEL_45;
    }
  }

  v14 = swift_allocObject();
  v15 = v14;
  if ((v9 & 7) == 2)
  {
    specialized ProtobufDecoder.decodeMessage<A>()((v14 + 16));
    if (v2)
    {
      goto LABEL_49;
    }

    result = outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v5);
    v5 = v15 | 0x4000000000000000;
LABEL_6:
    v2 = 0;
    goto LABEL_7;
  }

  lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
  swift_allocError();
  swift_willThrow();
LABEL_49:
  outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v5);
  return swift_deallocUninitializedObject();
}

void SDFStyle.Mask.encode(to:)(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v4 = v3;
  ProtobufEncoder.encodeVarint(_:)(0xAuLL);
  v8 = *(a1 + 8);
  v9 = *(a1 + 24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
  }

  v11 = *(v9 + 2);
  v10 = *(v9 + 3);
  v12 = v11 + 1;
  if (v11 >= v10 >> 1)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v9);
  }

  *(v9 + 2) = v12;
  *&v9[8 * v11 + 32] = v8;
  *(a1 + 24) = v9;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
LABEL_15:
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
    goto LABEL_8;
  }

  *(a1 + 8) = v8 + 1;
  SDFStyle.encode(to:)(a1, a2);
  if (v3)
  {
    return;
  }

  v12 = 0;
  ProtobufEncoder.endLengthDelimited()();
  ProtobufEncoder.encodeVarint(_:)(0x12uLL);
  v9 = *(a1 + 8);
  v4 = *(a1 + 24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v14 = *(v4 + 2);
  v13 = *(v4 + 3);
  if (v14 >= v13 >> 1)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v4);
  }

  *(v4 + 2) = v14 + 1;
  *&v4[8 * v14 + 32] = v9;
  *(a1 + 24) = v4;
  if (__OFADD__(v9, 1))
  {
    __break(1u);
  }

  else
  {
    *(a1 + 8) = v9 + 1;
    SDFStyle.encode(to:)(a1, a3);
    if (!v12)
    {
      ProtobufEncoder.endLengthDelimited()();
    }
  }
}

char *protocol witness for ProtobufDecodableMessage.init(from:) in conformance SDFStyle.Mask@<X0>(char **a1@<X8>, void *a2@<X0>)
{
  result = specialized SDFStyle.Mask.init(from:)(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t _AnyMaterialCustomFillProvider.provider.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(*v1 + 144);
  v3 = *v1;
  v4 = *(*v1 + 128);
  a1[3] = v4;
  a1[4] = *(v3 + 136);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v6 = *(*(v4 - 8) + 16);

  return v6(boxed_opaque_existential_1, &v1[v2], v4);
}

uint64_t _AnyMaterialCustomFillProvider.isEqual(to:)(uint64_t a1)
{
  v2 = *(*v1 + 128);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v9 - v4;
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    (*(v3 + 16))(v5, v6 + *(*v6 + 144), v2);

    v7 = dispatch thunk of static Equatable.== infix(_:_:)();

    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t specialized static SDFStyle.Shadow.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) && (*(a1 + 12) == *(a2 + 12) ? (v2 = *(a1 + 16) == *(a2 + 16)) : (v2 = 0), v2 ? (v3 = *(a1 + 20) == *(a2 + 20)) : (v3 = 0), v3 && *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48) && ((*(a1 + 56) ^ *(a2 + 56)) & 1) == 0))
  {
    return (*(a1 + 57) ^ *(a2 + 57) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

BOOL specialized static SDFStyle.Fill.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    v2 = *(a1 + 12) == *(a2 + 12) && *(a1 + 16) == *(a2 + 16);
    v3 = v2 && *(a1 + 20) == *(a2 + 20);
    if (v3 && *(a1 + 24) == *(a2 + 24))
    {
      return 1;
    }
  }

  return result;
}

BOOL specialized static SDFStyle.Stroke.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    v2 = *(a1 + 20) == *(a2 + 20) && *(a1 + 24) == *(a2 + 24);
    v3 = v2 && *(a1 + 28) == *(a2 + 28);
    if (v3 && *(a1 + 32) == *(a2 + 32))
    {
      return 1;
    }
  }

  return result;
}

unint64_t specialized SDFStyle.Fill.init(from:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = result;
  v5 = *(result + 8);
  v6 = *(result + 16);
  v7 = 0uLL;
  if (v5 >= v6)
  {
LABEL_54:
    v27 = v7;
    v8 = 0.0;
    v9 = 2143289344;
LABEL_55:
    v3[3] = 0;
    *a2 = v8;
    *(a2 + 8) = v27;
    *(a2 + 24) = v9;
    return result;
  }

  v27 = 0uLL;
  v8 = 0.0;
  v9 = 2143289344;
  while (1)
  {
    result = v3[3];
    if (result)
    {
      v10 = v3[4];
      if (v5 < v10)
      {
        goto LABEL_11;
      }

      if (v10 < v5)
      {
        goto LABEL_56;
      }

      v3[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()(result);
    if (v2)
    {
      return result;
    }

    if (result <= 7)
    {
LABEL_56:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      return swift_willThrow();
    }

LABEL_11:
    v11 = result & 7;
    if (result >> 3 == 2)
    {
      break;
    }

    if (result >> 3 != 1)
    {
      if ((result & 7) > 1)
      {
        if (v11 == 2)
        {
          result = ProtobufDecoder.decodeVarint()(result);
          if (v2)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_62;
          }

          v21 = v3[1] + result;
          if (v6 < v21)
          {
            goto LABEL_56;
          }
        }

        else
        {
          if (v11 != 5)
          {
            goto LABEL_56;
          }

          v21 = v3[1] + 4;
          if (v6 < v21)
          {
            goto LABEL_56;
          }
        }
      }

      else
      {
        if ((result & 7) == 0)
        {
          result = ProtobufDecoder.decodeVarint()(result);
          if (v2)
          {
            return result;
          }

          goto LABEL_4;
        }

        if (v11 != 1)
        {
          goto LABEL_56;
        }

        v21 = v3[1] + 8;
        if (v6 < v21)
        {
          goto LABEL_56;
        }
      }

      v3[1] = v21;
      goto LABEL_4;
    }

    if (v11 == 5)
    {
      v22 = v3[1];
      if (v6 < (v22 + 1))
      {
        goto LABEL_56;
      }

      v23 = *v22;
      v3[1] = v22 + 1;
      v8 = v23;
    }

    else
    {
      if (v11 == 2)
      {
        result = ProtobufDecoder.decodeVarint()(result);
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_61;
        }

        v12 = v3[1];
        if (v6 < v12 + result)
        {
          goto LABEL_56;
        }

        v3[3] = 9;
        v3[4] = v12 + result;
      }

      else
      {
        if (v11 != 1)
        {
          goto LABEL_56;
        }

        v12 = v3[1];
      }

      if (v6 < (v12 + 1))
      {
        goto LABEL_56;
      }

      v8 = *v12;
      v3[1] = v12 + 1;
    }

LABEL_4:
    v5 = v3[1];
    if (v5 >= v6)
    {
      goto LABEL_55;
    }
  }

  if (v11 != 2)
  {
    goto LABEL_56;
  }

  v13 = v3[5];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 16) + 1, 1, v13);
    v13 = isUniquelyReferenced_nonNull_native;
  }

  v16 = *(v13 + 16);
  v15 = *(v13 + 24);
  if (v16 >= v15 >> 1)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v13);
    v13 = isUniquelyReferenced_nonNull_native;
  }

  *(v13 + 16) = v16 + 1;
  *(v13 + 8 * v16 + 32) = v6;
  v3[5] = v13;
  result = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
  if (v2)
  {
    return result;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v17 = v3[1] + result;
    if (v6 < v17)
    {
      goto LABEL_56;
    }

    v3[2] = v17;
    specialized Color.ResolvedHDR.init(from:)(v3, &v28);
    v18 = v3[5];
    if (!*(v18 + 16))
    {
      goto LABEL_60;
    }

    v27 = v28;
    v9 = v29;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v19 = *(v18 + 16);
      if (!v19)
      {
        goto LABEL_53;
      }
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v18);
      v18 = result;
      v19 = *(result + 16);
      if (!v19)
      {
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }
    }

    v20 = v19 - 1;
    v6 = *(v18 + 8 * v20 + 32);
    *(v18 + 16) = v20;
    v3[5] = v18;
    v3[2] = v6;
    goto LABEL_4;
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
  __break(1u);
  result = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
  v26 = *(result + 16);
  if (v26)
  {
    v24 = v26 - 1;
    v25 = *(result + 8 * v24 + 32);
    *(result + 16) = v24;
    v3[5] = result;
    v3[2] = v25;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t specialized SDFStyle.Stroke.init(from:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = result;
  v5 = *(result + 8);
  v6 = *(result + 16);
  v7 = xmmword_18DD85540;
  if (v5 >= v6)
  {
LABEL_67:
    v32 = v7;
    v8 = 1.0;
    v9 = 0.0;
    v10 = 2143289344;
LABEL_68:
    v3[3] = 0;
    *a2 = v9;
    *(a2 + 8) = v8;
    *(a2 + 16) = v32;
    *(a2 + 32) = v10;
    return result;
  }

  v32 = xmmword_18DD85540;
  v8 = 1.0;
  v9 = 0.0;
  v10 = 2143289344;
  while (1)
  {
    result = v3[3];
    if (result)
    {
      v11 = v3[4];
      if (v5 < v11)
      {
        goto LABEL_11;
      }

      if (v11 < v5)
      {
        goto LABEL_69;
      }

      v3[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()(result);
    if (v2)
    {
      return result;
    }

    if (result <= 7)
    {
LABEL_69:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      return swift_willThrow();
    }

LABEL_11:
    v12 = result >> 3;
    v13 = result & 7;
    if (result >> 3 == 3)
    {
      break;
    }

    if (v12 == 2)
    {
      if (v13 == 5)
      {
        v25 = v3[1];
        if (v6 < (v25 + 1))
        {
          goto LABEL_69;
        }

        v26 = *v25;
        v3[1] = v25 + 1;
        v8 = v26;
      }

      else
      {
        if (v13 == 2)
        {
          result = ProtobufDecoder.decodeVarint()(result);
          if (v2)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_75;
          }

          v15 = v3[1];
          if (v6 < v15 + result)
          {
            goto LABEL_69;
          }

          v3[3] = 17;
          v3[4] = v15 + result;
        }

        else
        {
          if (v13 != 1)
          {
            goto LABEL_69;
          }

          v15 = v3[1];
        }

        if (v6 < (v15 + 1))
        {
          goto LABEL_69;
        }

        v8 = *v15;
        v3[1] = v15 + 1;
      }
    }

    else
    {
      if (v12 != 1)
      {
        if ((result & 7) > 1)
        {
          if (v13 == 2)
          {
            result = ProtobufDecoder.decodeVarint()(result);
            if (v2)
            {
              return result;
            }

            if ((result & 0x8000000000000000) != 0)
            {
              goto LABEL_76;
            }

            v24 = v3[1] + result;
            if (v6 < v24)
            {
              goto LABEL_69;
            }
          }

          else
          {
            if (v13 != 5)
            {
              goto LABEL_69;
            }

            v24 = v3[1] + 4;
            if (v6 < v24)
            {
              goto LABEL_69;
            }
          }
        }

        else
        {
          if ((result & 7) == 0)
          {
            result = ProtobufDecoder.decodeVarint()(result);
            if (v2)
            {
              return result;
            }

            goto LABEL_4;
          }

          if (v13 != 1)
          {
            goto LABEL_69;
          }

          v24 = v3[1] + 8;
          if (v6 < v24)
          {
            goto LABEL_69;
          }
        }

        v3[1] = v24;
        goto LABEL_4;
      }

      if (v13 == 5)
      {
        v27 = v3[1];
        if (v6 < (v27 + 1))
        {
          goto LABEL_69;
        }

        v28 = *v27;
        v3[1] = v27 + 1;
        v9 = v28;
      }

      else
      {
        if (v13 == 2)
        {
          result = ProtobufDecoder.decodeVarint()(result);
          if (v2)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_74;
          }

          v14 = v3[1];
          if (v6 < v14 + result)
          {
            goto LABEL_69;
          }

          v3[3] = 9;
          v3[4] = v14 + result;
        }

        else
        {
          if (v13 != 1)
          {
            goto LABEL_69;
          }

          v14 = v3[1];
        }

        if (v6 < (v14 + 1))
        {
          goto LABEL_69;
        }

        v9 = *v14;
        v3[1] = v14 + 1;
      }
    }

LABEL_4:
    v5 = v3[1];
    if (v5 >= v6)
    {
      goto LABEL_68;
    }
  }

  if (v13 != 2)
  {
    goto LABEL_69;
  }

  v16 = v3[5];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 16) + 1, 1, v16);
    v16 = isUniquelyReferenced_nonNull_native;
  }

  v19 = *(v16 + 16);
  v18 = *(v16 + 24);
  if (v19 >= v18 >> 1)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v16);
    v16 = isUniquelyReferenced_nonNull_native;
  }

  *(v16 + 16) = v19 + 1;
  *(v16 + 8 * v19 + 32) = v6;
  v3[5] = v16;
  result = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
  if (v2)
  {
    return result;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v20 = v3[1] + result;
    if (v6 < v20)
    {
      goto LABEL_69;
    }

    v3[2] = v20;
    specialized Color.ResolvedHDR.init(from:)(v3, &v33);
    v21 = v3[5];
    if (!*(v21 + 16))
    {
      goto LABEL_73;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v22 = *(v21 + 16);
      if (!v22)
      {
        goto LABEL_66;
      }
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v21);
      v21 = result;
      v22 = *(result + 16);
      if (!v22)
      {
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }
    }

    v23 = v22 - 1;
    v6 = *(v21 + 8 * v23 + 32);
    *(v21 + 16) = v23;
    v3[5] = v21;
    v3[2] = v6;
    v32 = v33;
    v10 = v34;
    goto LABEL_4;
  }

  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
  __break(1u);
  result = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
  v31 = *(result + 16);
  if (v31)
  {
    v29 = v31 - 1;
    v30 = *(result + 8 * v29 + 32);
    *(result + 16) = v29;
    v3[5] = result;
    v3[2] = v30;
  }

  else
  {
    __break(1u);
  }

  return result;
}