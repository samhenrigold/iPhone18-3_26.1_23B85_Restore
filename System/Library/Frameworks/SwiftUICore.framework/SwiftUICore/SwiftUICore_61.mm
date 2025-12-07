void sub_18D3AD51C(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *a1;
  _ShapeStyle_Pack.animatableData.getter(&v4);
  v3 = v5;
  *a2 = v4;
  *(a2 + 8) = v3;
}

void sub_18D3AD568(uint64_t *a1)
{
  v1 = *(a1 + 8);
  v2 = *a1;
  v3 = v1;

  _ShapeStyle_Pack.animatableData.setter(&v2);
}

__n128 sub_18D3AD5B0@<Q0>(uint64_t a1@<X8>)
{
  _ShapeStyle_Pack.Style.animatableData.getter(v5);
  v2 = v5[5];
  *(a1 + 64) = v5[4];
  *(a1 + 80) = v2;
  *(a1 + 96) = v6;
  v3 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v3;
  result = v5[3];
  *(a1 + 32) = v5[2];
  *(a1 + 48) = result;
  return result;
}

double sub_18D3AD614@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 64);
  v12[3] = *(a1 + 48);
  v13[0] = v5;
  *(v13 + 14) = *(a1 + 78);
  v6 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v6;
  v12[2] = v4;
  outlined init with copy of _ShapeStyle_Pack.Fill(v12, v10);
  _ShapeStyle_Pack.Fill.AnimatableData.init(_:)(a1, v10);
  v7 = v10[3];
  *(a2 + 32) = v10[2];
  *(a2 + 48) = v7;
  *(a2 + 64) = v10[4];
  *(a2 + 80) = v11;
  result = *v10;
  v9 = v10[1];
  *a2 = v10[0];
  *(a2 + 16) = v9;
  return result;
}

void sub_18D3AD6DC(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 40) == 1)
  {
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  *a2 = v3;
}

double sub_18D3AD7F4@<D0>(void *a2@<X8>)
{
  *a2 = *AGGraphGetValue();

  return result;
}

uint64_t sub_18D3AD8CC@<X0>(uint64_t *a1@<X8>)
{
  result = StyledTextResponder.gestureGraph.getter();
  *a1 = result;
  return result;
}

double sub_18D3AD8F8(uint64_t *a1, uint64_t a2)
{
  *(*a2 + 296) = *a1;

  return result;
}

uint64_t sub_18D3AD93C@<X0>(uint64_t *a1@<X8>)
{
  result = StyledTextResponder.bindingBridge.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

double sub_18D3AD968(__int128 *a1, uint64_t a2)
{
  *(*a2 + 304) = *a1;

  return result;
}

uint64_t sub_18D3AD9C0()
{

  return swift_deallocObject();
}

uint64_t sub_18D3ADA00(uint64_t a1, uint64_t a2)
{
  type metadata accessor for URL?(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_18D3ADA9C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for URL?(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_18D3ADB3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for OpenURLGesture(0, v5, *(v4 + 24), a4) - 8);
  v7 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  (*(*(v5 - 8) + 8))(v4 + v7, v5);
  v8 = v4 + v7 + v6[11];
  outlined consume of Environment<OpenURLAction>.Content(*v8, *(v8 + 8), *(v8 + 16), *(v8 + 24), *(v8 + 32), *(v8 + 34));

  return swift_deallocObject();
}

double sub_18D3ADC3C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for _EndedGesture(255, *a1, a1[1], a4);

  return swift_getWitnessTable(protocol conformance descriptor for _EndedGesture<A>, v4);
}

uint64_t sub_18D3ADD38()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_18D3ADD70()
{

  return swift_deallocObject();
}

uint64_t sub_18D3ADDA8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_18D3ADDF8(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_18D3ADE50@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  *a2 = result;
  return result;
}

double sub_18D3ADEA0@<D0>(double *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_18D3ADEAC(double *a1, void *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t _s7SwiftUI24_ShapeStyle_ResolverModeVwcp_0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 10) = *(a2 + 10);
  v4 = v3;
  return a1;
}

double sub_18D3ADF04(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v5 = type metadata accessor for ModifiedContent(255, *a1, &type metadata for _TransformEffect, a4);
  v7[0] = v4;
  v7[1] = &protocol witness table for _TransformEffect;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

double sub_18D3ADF68(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for GeometryVisualEffect<_TransformEffect>(255);
  v4 = v3;
  lazy protocol witness table accessor for type GeometryVisualEffect<_TransformEffect> and conformance GeometryVisualEffect<A>();
  v8[0] = v1;
  v8[1] = v4;
  v8[2] = v2;
  v8[3] = v5;
  v6 = type metadata accessor for CombinedVisualEffect(255, v8);
  return swift_getWitnessTable(protocol conformance descriptor for CombinedVisualEffect<A, B>, v6);
}

void _s7SwiftUI13_VariadicViewO4TreeVy_xq_GAA09PrimitiveD0A2A01_cd1_D4RootRzAA0D0R_rlWI_0(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v5 = *a3;
  swift_getWitnessTable(protocol conformance descriptor for <> _VariadicView.Tree<A, B>, a2, &v5);
  *(a1 + 8) = v4;
}

uint64_t sub_18D3AE338@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA16ImplicitRootType33_DC167C463E6601B3880A23A75ACAA63BLLV_Tt2g5(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_18D3AE37C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA16ImplicitRootType33_DC167C463E6601B3880A23A75ACAA63BLLV_Tt2g5(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_18D3AE3D0()
{

  return swift_deallocObject();
}

uint64_t sub_18D3AE408()
{

  return swift_deallocObject();
}

uint64_t sub_18D3AE440()
{

  return swift_deallocObject();
}

uint64_t sub_18D3AE4D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();

  return _typeName(_:qualified:)();
}

uint64_t sub_18D3AE68C@<X0>(_BYTE *a3@<X8>)
{
  result = EnvironmentValues.symbolRenderingPreferGradients.getter();
  *a3 = result;
  return result;
}

uint64_t sub_18D3AE6F8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for ImageResolutionContext(0);
  *a2 = *(a1 + *(result + 32));
  return result;
}

uint64_t sub_18D3AE730(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for ImageResolutionContext(0);
  *(a2 + *(result + 32)) = v3;
  return result;
}

double sub_18D3AE764(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for _EnvironmentKeyWritingModifier<SymbolRenderingMode?>(255);
  v5 = type metadata accessor for ModifiedContent(255, v1, v3, v4);
  v7[0] = v2;
  v7[1] = &protocol witness table for _EnvironmentKeyWritingModifier<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

uint64_t sub_18D3AE7D0()
{
  outlined consume of GraphicsFilter(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));

  return swift_deallocObject();
}

_BYTE *sub_18D3AE874(_BYTE *result, uint64_t a2)
{
  if (*result)
  {
    v2 = 8;
  }

  else
  {
    v2 = 0;
  }

  *(a2 + 32) = *(a2 + 32) & 0xFFFFFFF7 | v2;
  return result;
}

_BYTE *sub_18D3AE8A8(_BYTE *result, uint64_t a2)
{
  if (*result)
  {
    v2 = 16;
  }

  else
  {
    v2 = 0;
  }

  *(a2 + 32) = *(a2 + 32) & 0xFFFFFFEF | v2;
  return result;
}

void sub_18D3AE8CC(id *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = *a1;
  ShaderVectorData.init(rbShader:)(v3, &v5);
  *a2 = v5;
}

void sub_18D3AE910(uint64_t a1, void **a2)
{
  v3 = *a2;
  v4 = ShaderVectorData.updating(rbShader:)(*a2);

  *a2 = v4;
}

double sub_18D3AE96C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v5 = type metadata accessor for ModifiedContent(255, *a1, &type metadata for _ShaderFilterEffect, a4);
  v7[0] = v4;
  v7[1] = &protocol witness table for _ShaderFilterEffect;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

uint64_t sub_18D3AE9E4()
{
  type metadata accessor for CheckedContinuation<(), Error>(0);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t _s7SwiftUI13GraphicsImageV8ContentsOwcp_0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  outlined copy of GraphicsImage.Contents(*a2, v4);
  *a1 = v3;
  *(a1 + 8) = v4;
  return a1;
}

uint64_t sub_18D3AEAE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IndexSet();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_18D3AEB50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IndexSet();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_18D3AEC00()
{

  return swift_deallocObject();
}

uint64_t sub_18D3AECA8()
{

  return swift_deallocObject();
}

double sub_18D3AECE0@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 48);
  *a2 = result;
  return result;
}

void sub_18D3AECF4(double *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(*a2 + 48) != v2)
  {
    GraphicsContext.copyOnWrite()();
    *(*a2 + 48) = v2;
  }
}

void sub_18D3AED50(int *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(*a2 + 52) != *a1)
  {
    GraphicsContext.copyOnWrite()();
    *(*a2 + 52) = v2;
  }
}

double sub_18D3AED90@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  GraphicsContext._shapeRenderingMode.getter(*a1, &v4);
  result = v5;
  *a2 = v4;
  *(a2 + 8) = result;
  return result;
}

double sub_18D3AEDD4(int *a1)
{
  v1 = *(a1 + 1);
  v3 = *a1;
  v4 = v1;
  GraphicsContext._shapeRenderingMode.setter(&v3);
  return result;
}

uint64_t sub_18D3AEE14@<X0>(_DWORD *a2@<X8>)
{
  result = RBDrawingStateGetIdentifier();
  *a2 = result;
  return result;
}

uint64_t sub_18D3AEE44(unsigned int *a1, uint64_t a2)
{
  GraphicsContext.copyOnWrite()();

  return RBDrawingStateSetIdentifier();
}

double sub_18D3AEE94@<D0>(_OWORD *a2@<X8>)
{
  RBDrawingStateGetCTM();
  result = *&v5;
  *a2 = v5;
  a2[1] = v6;
  a2[2] = v7;
  return result;
}

uint64_t _s7SwiftUI15GraphicsContextV14ResolvedSymbolVwcp_0(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 1);
  swift_unknownObjectRetain();
  return a1;
}

double sub_18D3AEF34(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v5 = type metadata accessor for ModifiedContent(255, *a1, &type metadata for _AspectRatioLayout, a4);
  v7[0] = v4;
  v7[1] = &protocol witness table for _AspectRatioLayout;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

void sub_18D3AF000(unint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (v5 < v6)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 1;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 1;
    v17 = 0;
    while (1)
    {
      v21 = *(a1 + 24);
      if (v21)
      {
        v22 = *(a1 + 32);
        if (v5 < v22)
        {
          goto LABEL_15;
        }

        if (v22 < v5)
        {
          goto LABEL_4;
        }

        *(a1 + 24) = 0;
      }

      v21 = ProtobufDecoder.decodeVarint()(v21);
      if (v2)
      {
        goto LABEL_73;
      }

      if (v21 < 8)
      {
        goto LABEL_4;
      }

LABEL_15:
      v23 = v21 >> 3;
      v24 = v21 & 7;
      if (v21 >> 3 == 1)
      {
        if (v24 != 2)
        {
          goto LABEL_4;
        }

        v44 = *(a1 + 40);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v44 + 16) + 1, 1, v44);
          v44 = isUniquelyReferenced_nonNull_native;
        }

        v3 = *(v44 + 16);
        v46 = *(v44 + 24);
        if (v3 >= v46 >> 1)
        {
          isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v3 + 1, 1, v44);
          v44 = isUniquelyReferenced_nonNull_native;
        }

        *(v44 + 16) = v3 + 1;
        *(v44 + 8 * v3 + 32) = v6;
        *(a1 + 40) = v44;
        v47 = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
        if (v2)
        {
          goto LABEL_73;
        }

        if (v47 < 0)
        {
          goto LABEL_86;
        }

        v48 = *(a1 + 8) + v47;
        if (v6 < v48)
        {
          goto LABEL_4;
        }

        *(a1 + 16) = v48;
        specialized _ScaleEffect.init(from:)(a1);
        v18 = *(a1 + 40);
        if (!*(v18 + 2))
        {
          goto LABEL_88;
        }

        v13 = v49;
        v14 = v50;
        v15 = v51;
        v17 = v52;
        v3 = 0;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v19 = *(v18 + 2);
          if (!v19)
          {
            goto LABEL_91;
          }
        }

        else
        {
          v18 = specialized _ArrayBuffer._consumeAndCreateNew()(v18);
          v19 = *(v18 + 2);
          if (!v19)
          {
            goto LABEL_91;
          }
        }

        v16 = 0;
LABEL_7:
        v20 = v19 - 1;
        v6 = *&v18[8 * v20 + 32];
        *(v18 + 2) = v20;
        *(a1 + 40) = v18;
        *(a1 + 16) = v6;
        goto LABEL_8;
      }

      if (v23 == 2)
      {
        if (v24 != 2)
        {
          goto LABEL_4;
        }

        v35 = *(a1 + 40);
        v36 = swift_isUniquelyReferenced_nonNull_native();
        if ((v36 & 1) == 0)
        {
          v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v35 + 16) + 1, 1, v35);
          v35 = v36;
        }

        v3 = *(v35 + 16);
        v37 = *(v35 + 24);
        if (v3 >= v37 >> 1)
        {
          v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v3 + 1, 1, v35);
          v35 = v36;
        }

        *(v35 + 16) = v3 + 1;
        *(v35 + 8 * v3 + 32) = v6;
        *(a1 + 40) = v35;
        v38 = ProtobufDecoder.decodeVarint()(v36);
        if (v2)
        {
          goto LABEL_73;
        }

        if (v38 < 0)
        {
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
LABEL_91:
          __break(1u);
LABEL_92:
          __break(1u);
          __break(1u);
LABEL_93:
          __break(1u);
          do
          {
            __break(1u);
            v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
            v55 = *(v3 + 16);
            if (v55)
            {
              goto LABEL_83;
            }

            __break(1u);
            v3 = *(a1 + 40);
            if (!*(v3 + 16))
            {
              goto LABEL_93;
            }

            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v55 = *(v3 + 16);
              if (v55)
              {
                goto LABEL_83;
              }
            }

            else
            {
              v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
              v55 = *(v3 + 16);
              if (v55)
              {
                goto LABEL_83;
              }
            }

            __break(1u);
            v3 = *(a1 + 40);
          }

          while (!*(v3 + 16));
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v55 = *(v3 + 16);
            if (v55)
            {
              goto LABEL_83;
            }

LABEL_99:
            __break(1u);
            JUMPOUT(0x18D3AF648);
          }

          v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
          v55 = *(v3 + 16);
          if (!v55)
          {
            goto LABEL_99;
          }

LABEL_83:
          v56 = v55 - 1;
          v57 = *(v3 + 8 * v56 + 32);
          *(v3 + 16) = v56;

          *(a1 + 40) = v3;
          *(a1 + 16) = v57;
          return;
        }

        v39 = *(a1 + 8) + v38;
        if (v6 < v39)
        {
          goto LABEL_4;
        }

        *(a1 + 16) = v39;
        specialized _ScaleEffect.init(from:)(a1);
        v18 = *(a1 + 40);
        if (!*(v18 + 2))
        {
          goto LABEL_87;
        }

        v8 = v40;
        v9 = v41;
        v11 = v42;
        v12 = v43;
        v3 = 0;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v19 = *(v18 + 2);
          if (!v19)
          {
            goto LABEL_90;
          }
        }

        else
        {
          v18 = specialized _ArrayBuffer._consumeAndCreateNew()(v18);
          v19 = *(v18 + 2);
          if (!v19)
          {
            goto LABEL_90;
          }
        }

        v10 = 0;
        goto LABEL_7;
      }

      if (v23 == 3)
      {
        if (v24 != 2)
        {
          goto LABEL_4;
        }

        v25 = *(a1 + 40);
        v26 = swift_isUniquelyReferenced_nonNull_native();
        if ((v26 & 1) == 0)
        {
          v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v25 + 16) + 1, 1, v25);
          v25 = v26;
        }

        v3 = *(v25 + 16);
        v27 = *(v25 + 24);
        if (v3 >= v27 >> 1)
        {
          v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v3 + 1, 1, v25);
          v25 = v26;
        }

        *(v25 + 16) = v3 + 1;
        *(v25 + 8 * v3 + 32) = v6;
        *(a1 + 40) = v25;
        v28 = ProtobufDecoder.decodeVarint()(v26);
        if (v2)
        {
          goto LABEL_73;
        }

        if (v28 < 0)
        {
          goto LABEL_85;
        }

        v29 = *(a1 + 8) + v28;
        if (v6 < v29)
        {
          goto LABEL_4;
        }

        *(a1 + 16) = v29;
        v30 = specialized CodableAnimation.init(from:)(a1);
        v31 = *(a1 + 40);
        if (!*(v31 + 2))
        {
          goto LABEL_89;
        }

        v32 = v30;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v33 = *(v31 + 2);
          if (!v33)
          {
            goto LABEL_72;
          }
        }

        else
        {
          v31 = specialized _ArrayBuffer._consumeAndCreateNew()(v31);
          v33 = *(v31 + 2);
          if (!v33)
          {
LABEL_72:
            __break(1u);
LABEL_73:

            return;
          }
        }

        v34 = v33 - 1;
        v6 = *&v31[8 * v34 + 32];
        *(v31 + 2) = v34;

        *(a1 + 40) = v31;
        *(a1 + 16) = v6;
        v7 = v32;
        goto LABEL_8;
      }

      if ((v21 & 7) > 1)
      {
        if (v24 == 2)
        {
          v54 = ProtobufDecoder.decodeVarint()(v21);
          if (v2)
          {
            goto LABEL_73;
          }

          if (v54 < 0)
          {
            goto LABEL_92;
          }

          v53 = *(a1 + 8) + v54;
          if (v6 < v53)
          {
            goto LABEL_4;
          }
        }

        else
        {
          if (v24 != 5)
          {
            goto LABEL_4;
          }

          v53 = *(a1 + 8) + 4;
          if (v6 < v53)
          {
            goto LABEL_4;
          }
        }
      }

      else
      {
        if ((v21 & 7) == 0)
        {
          ProtobufDecoder.decodeVarint()(v21);
          if (v2)
          {
            goto LABEL_73;
          }

          goto LABEL_8;
        }

        if (v24 != 1)
        {
          goto LABEL_4;
        }

        v53 = *(a1 + 8) + 8;
        if (v6 < v53)
        {
          goto LABEL_4;
        }
      }

      *(a1 + 8) = v53;
LABEL_8:
      v5 = *(a1 + 8);
      if (v5 >= v6)
      {
        *(a1 + 24) = 0;
        if (((v16 | v10) & 1) == 0 && v7)
        {
          *a2 = v13;
          a2[1] = v14;
          a2[2] = v15;
          a2[3] = v17;
          a2[4] = v8;
          a2[5] = v9;
          a2[6] = v11;
          a2[7] = v12;
          a2[8] = v7;
          return;
        }

        goto LABEL_4;
      }
    }
  }

  *(a1 + 24) = 0;
LABEL_4:
  lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
  swift_allocError();
  swift_willThrow();
}

uint64_t sub_18D3AF6D8()
{

  return swift_deallocObject();
}

uint64_t sub_18D3AF710()
{

  return swift_deallocObject();
}

uint64_t sub_18D3AF748()
{

  return swift_deallocObject();
}

uint64_t sub_18D3AF790()
{

  return swift_deallocObject();
}

uint64_t sub_18D3AF7DC()
{

  return swift_deallocObject();
}

uint64_t sub_18D3AF908(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18D3AF93C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TimeZone?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_18D3AF9D8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TimeZone?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

double sub_18D3AFA78(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = type metadata accessor for ReferenceDateModifier(255);
  v5 = type metadata accessor for ModifiedContent(255, v1, v3, v4);
  v7[0] = v2;
  v7[1] = &protocol witness table for ReferenceDateModifier;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

uint64_t sub_18D3AFD20()
{
  v1 = type metadata accessor for Text.Style(0);
  v2 = *(*(v1 - 1) + 64);
  v3 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v4 = v0 + v3;
  if (*(v0 + v3) >= 2uLL)
  {
  }

  outlined consume of Gradient.ProviderTag(*(v4 + 16));

  if ((*(v4 + 88) - 1) >= 2)
  {
  }

  if ((*(v4 + 104) - 1) >= 2)
  {
  }

  if (*(v4 + 176) != 1)
  {
  }

  if (*(v4 + 248) != 1)
  {
  }

  if (*(v4 + 288) >= 2uLL)
  {
    outlined consume of Text.Storage(*(v4 + 264), *(v4 + 272), *(v4 + 280));
  }

  v5 = v1[21];
  type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)(0);
  if (!(*(*(v6 - 8) + 48))(v4 + v5, 2, v6))
  {
    v7 = type metadata accessor for Locale.Language();
    (*(*(v7 - 8) + 8))(v4 + v5, v7);
  }

  v8 = v1[23];
  v9 = type metadata accessor for AttributedString.AdaptiveImageGlyph();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v4 + v8, 1, v9))
  {
    (*(v10 + 8))(v4 + v8, v9);
  }

  v11 = v1[24];
  v12 = type metadata accessor for AttributedString.TextAlignment();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v4 + v11, 1, v12))
  {
    (*(v13 + 8))(v4 + v11, v12);
  }

  v14 = v1[26];
  v15 = type metadata accessor for AttributedString.LineHeight();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(v4 + v14, 1, v15))
  {
    (*(v16 + 8))(v4 + v14, v15);
  }

  return swift_deallocObject();
}

void sub_18D3B0170(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  static AttributeScopes.SwiftUIAttributes.AdaptiveImageGlyphAttribute.inheritedByAddedText = v1;
}

uint64_t sub_18D3B01B8(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for AttributeScopes.AccessibilityAttributes();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = &a1[*(a3 + 100)];

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for AttributeScopes.FoundationAttributes();
      v14 = *(*(v13 - 8) + 48);
      v15 = &a1[*(a3 + 104)];

      return v14(v15, a2, v13);
    }
  }
}

_BYTE *sub_18D3B02D4(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v8 = type metadata accessor for AttributeScopes.AccessibilityAttributes();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = &v5[*(a4 + 100)];

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for AttributeScopes.FoundationAttributes();
      v14 = *(*(v13 - 8) + 56);
      v15 = &v5[*(a4 + 104)];

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_18D3B0410()
{

  return swift_deallocObject();
}

uint64_t sub_18D3B046C()
{

  return swift_deallocObject();
}

void sub_18D3B04AC(__int128 *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *a1;
  EnvironmentValues.accessibilitySettingsDefinition.getter(v4);
  v3 = v4[1];
  *a2 = v4[0];
  a2[1] = v3;
}

double sub_18D3B04F8(unsigned __int8 *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  return EnvironmentValues.accessibilitySettingsDefinition.setter(v3);
}

void sub_18D3B0538()
{
  if (MEMORY[0x1E69E7D58])
  {
    type metadata accessor for [AccessibilityEnabledTechnology](0, &lazy cache variable for type metadata for Mutex<PlatformAccessibilitySettingsDefinition.Storage>, &unk_1F007B2B0, MEMORY[0x1E69E8300]);
  }
}

uint64_t _s7SwiftUI39PlatformAccessibilitySettingsDefinitionC5Entry33_DD012B99EE4F6885B033D7D23FEF69C0LLVwcp_0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 8);
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  v4 = v3;
  return a1;
}

float sub_18D3B05D8@<S0>(float *a1@<X0>, _DWORD *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

float sub_18D3B05E4(float *a1, _DWORD *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

float sub_18D3B05F0@<S0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  result = *(a1 + 4);
  *a2 = result;
  return result;
}

float sub_18D3B05FC(float *a1, uint64_t a2)
{
  result = *a1;
  *(a2 + 4) = *a1;
  return result;
}

float sub_18D3B0608@<S0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  result = *(a1 + 8);
  *a2 = result;
  return result;
}

float sub_18D3B0614(float *a1, uint64_t a2)
{
  result = *a1;
  *(a2 + 8) = *a1;
  return result;
}

void sub_18D3B0620(float *a1@<X0>, float *a2@<X8>)
{
  v2 = *a1;
  v3 = -*a1;
  if (*a1 > 0.0)
  {
    v3 = *a1;
  }

  if (v3 <= 0.0031308)
  {
    v4 = v3 * 12.92;
  }

  else
  {
    v4 = 1.0;
    if (v3 != 1.0)
    {
      v5 = a2;
      v6 = powf(v3, 0.41667);
      a2 = v5;
      v4 = (v6 * 1.055) + -0.055;
    }
  }

  v7 = -v4;
  if (v2 > 0.0)
  {
    v7 = v4;
  }

  *a2 = v7;
}

void sub_18D3B06D0(float *a1, float *a2)
{
  v2 = *a1;
  if (*a1 <= 0.0)
  {
    v3 = -*a1;
  }

  else
  {
    v3 = *a1;
  }

  if (v3 <= 0.04045)
  {
    v4 = v3 * 0.077399;
  }

  else
  {
    v4 = 1.0;
    if (v3 != 1.0)
    {
      v5 = a2;
      v4 = powf((v3 * 0.94787) + 0.052133, 2.4);
      a2 = v5;
    }
  }

  if (v2 <= 0.0)
  {
    v4 = -v4;
  }

  *a2 = v4;
}

void sub_18D3B0780(uint64_t a1@<X0>, float *a2@<X8>)
{
  v2 = *(a1 + 4);
  v3 = -v2;
  if (v2 > 0.0)
  {
    v3 = *(a1 + 4);
  }

  if (v3 <= 0.0031308)
  {
    v4 = v3 * 12.92;
  }

  else
  {
    v4 = 1.0;
    if (v3 != 1.0)
    {
      v5 = a2;
      v6 = powf(v3, 0.41667);
      a2 = v5;
      v4 = (v6 * 1.055) + -0.055;
    }
  }

  v7 = -v4;
  if (v2 > 0.0)
  {
    v7 = v4;
  }

  *a2 = v7;
}

void sub_18D3B0830(float *a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1 <= 0.0)
  {
    v3 = -*a1;
  }

  else
  {
    v3 = *a1;
  }

  if (v3 <= 0.04045)
  {
    v4 = v3 * 0.077399;
  }

  else
  {
    v4 = 1.0;
    if (v3 != 1.0)
    {
      v5 = a2;
      v4 = powf((v3 * 0.94787) + 0.052133, 2.4);
      a2 = v5;
    }
  }

  if (v2 <= 0.0)
  {
    v4 = -v4;
  }

  *(a2 + 4) = v4;
}

void sub_18D3B08E0(uint64_t a1@<X0>, float *a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = -v2;
  if (v2 > 0.0)
  {
    v3 = *(a1 + 8);
  }

  if (v3 <= 0.0031308)
  {
    v4 = v3 * 12.92;
  }

  else
  {
    v4 = 1.0;
    if (v3 != 1.0)
    {
      v5 = a2;
      v6 = powf(v3, 0.41667);
      a2 = v5;
      v4 = (v6 * 1.055) + -0.055;
    }
  }

  v7 = -v4;
  if (v2 > 0.0)
  {
    v7 = v4;
  }

  *a2 = v7;
}

void sub_18D3B0990(float *a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1 <= 0.0)
  {
    v3 = -*a1;
  }

  else
  {
    v3 = *a1;
  }

  if (v3 <= 0.04045)
  {
    v4 = v3 * 0.077399;
  }

  else
  {
    v4 = 1.0;
    if (v3 != 1.0)
    {
      v5 = a2;
      v4 = powf((v3 * 0.94787) + 0.052133, 2.4);
      a2 = v5;
    }
  }

  if (v2 <= 0.0)
  {
    v4 = -v4;
  }

  *(a2 + 8) = v4;
}

float sub_18D3B0A40@<S0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  result = *(a1 + 12);
  *a2 = result;
  return result;
}

float sub_18D3B0A4C(float *a1, uint64_t a2)
{
  result = *a1;
  *(a2 + 12) = *a1;
  return result;
}

uint64_t sub_18D3B0A58@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(result + 16);
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_18D3B0A78(uint64_t result, uint64_t a2)
{
  v2 = *result;
  if (*(result + 4))
  {
    v2 = NAN;
  }

  *(a2 + 16) = v2;
  return result;
}

float32_t sub_18D3B0A98@<S0>(float32x4_t *a1@<X8>)
{
  Color.ResolvedHDR.animatableData.getter(&v3);
  result = v4;
  *a1 = v3;
  a1[1].f32[0] = result;
  return result;
}

float sub_18D3B0ADC(float32x4_t *a1)
{
  v1 = a1[1].i32[0];
  v3 = *a1;
  v4 = v1;
  Color.ResolvedHDR.animatableData.setter(&v3);
  return result;
}

double sub_18D3B0B1C(uint64_t a1)
{
  v2 = *a1;
  v1 = *(a1 + 8);
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v10 = *(a1 + 16);
  v11 = v1;
  v12 = *(a1 + 48);
  v13 = v3;
  v5 = type metadata accessor for PlatformItemTraitWriter(255, &v10);
  v7 = type metadata accessor for ModifiedContent(255, v2, v5, v6);
  v9[0] = v4;
  v9[1] = &protocol witness table for PlatformItemTraitWriter<A, B, C>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v7, v9);
}

double sub_18D3B0BD8@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;

  return result;
}

void sub_18D3B0BE4(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];

  *a2 = v4;
  a2[1] = v3;
}

__n128 sub_18D3B0C34(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

_OWORD *_s7SwiftUI29_BackgroundPreferenceModifierVwta_0(_OWORD *a1, _OWORD *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  return a1;
}

uint64_t _s7SwiftUI21HeadroomColorProviderVwcp_0(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 2);
  *(a1 + 12) = *(a2 + 12);

  return a1;
}

uint64_t sub_18D3B0E28@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = _s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA06ZIndexdJ0V_Tt0B5(*a1);
  *a2 = v4;
  return result;
}

double sub_18D3B0E80(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for _TraitWritingModifier<ZIndexTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<ZIndexTraitKey>, &type metadata for ZIndexTraitKey, &protocol witness table for ZIndexTraitKey, type metadata accessor for _TraitWritingModifier);
  v5 = type metadata accessor for ModifiedContent(255, v1, v3, v4);
  v7[0] = v2;
  v7[1] = &protocol witness table for _TraitWritingModifier<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

uint64_t sub_18D3B0F28()
{

  return swift_deallocObject();
}

void sub_18D3B0F84(uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t *a4@<X8>)
{
  if (*(a2 + 16))
  {
    v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7SpacingV3KeyV_AE5ValueOTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v23 = v7;
    v8 = 2;
    v24 = 2;
    v9 = *(a2 + 16);

    if (v9)
    {
      v20 = a4;
      v10 = 0;
      v11 = *MEMORY[0x1E698D3F8];
      a4 = &lazy cache variable for type metadata for ColorBox<UIKitPlatformColorProvider>;
      v12 = (a2 + 32);
      while (1)
      {
        if (a3)
        {
          if (v10 >= v9)
          {
            goto LABEL_29;
          }

          v15 = (a2 + 32 + 12 * v10);
        }

        else
        {
          v15 = v12;
          if (v10 >= v9)
          {
            goto LABEL_30;
          }
        }

        if (v10 >= v9)
        {
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

        if (*v15 == v11)
        {
          InputValue = &static LayoutComputer.defaultValue;
          if (one-time initialization token for defaultValue != -1)
          {
            swift_once();
            InputValue = &static LayoutComputer.defaultValue;
          }
        }

        else
        {
          InputValue = AGGraphGetInputValue();
        }

        v17 = *InputValue;
        v18 = one-time initialization token for lockAssertionsAreEnabled;

        if (v18 != -1)
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
            break;
          }
        }

        ++v10;
        (*(*v17 + 112))(&v22);

        v13 = v22;
        v14 = v24;
        if (v24 == 2)
        {
          v14 = HIBYTE(a3) & 1;
        }

        v24 = v14;
        LOBYTE(v22) = v14 & 1;
        AbsoluteEdge.Set.init(_:layoutDirection:)(&v22, &v21);
        v22 = v13;

        Spacing.incorporate(_:of:)(&v21, &v22);

        v9 = *(a2 + 16);
        v12 += 2;
        if (v10 == v9)
        {
          v7 = v23;
          v8 = v24;
          a4 = v20;
          goto LABEL_23;
        }
      }

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
LABEL_23:

      *a4 = v7;
      *(a4 + 8) = v8;
    }
  }

  else
  {
    if (one-time initialization token for zero != -1)
    {
LABEL_31:
      swift_once();
    }

    v19 = byte_1ED52A120;
    *a4 = static ViewSpacing.zero;
    *(a4 + 8) = v19;
  }
}

unint64_t _s7SwiftUI14LayoutSubviewsVSkAASk5index_8offsetBy07limitedG05IndexQzSgAH_SiAHtFTW_0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t sub_18D3B1340@<X0>(uint64_t result@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = (result + 8);
  v4 = (result + 16);
  if (!*a2)
  {
    v4 = result;
  }

  v5 = *v4;
  if (*a2)
  {
    v3 = (result + 24);
  }

  v6 = *v3;
  *a3 = v5;
  *(a3 + 8) = v6;
  return result;
}

uint64_t sub_18D3B1370(uint64_t result, uint64_t a2, _BYTE *a3)
{
  v3 = *(result + 8);
  v4 = 16;
  if (!*a3)
  {
    v4 = 0;
  }

  v5 = 8;
  if (*a3)
  {
    v5 = 24;
  }

  *(a2 + v4) = *result;
  *(a2 + v5) = v3;
  return result;
}

_BYTE *sub_18D3B13C0(_BYTE *result, uint64_t a2)
{
  if (*result)
  {
    v2 = 2048;
  }

  else
  {
    v2 = 0;
  }

  *(a2 + 36) = *(a2 + 36) & 0xFFFFF7FF | v2;
  return result;
}

_BYTE *sub_18D3B13F4(_BYTE *result, uint64_t a2)
{
  if (*result)
  {
    v2 = 2048;
  }

  else
  {
    v2 = 0;
  }

  *(a2 + 36) = *(a2 + 36) & 0xFFFFF7FF | v2;
  return result;
}

double sub_18D3B1418(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[2];
  v6 = type metadata accessor for _LayoutTrait(255, a1[1], a1[3], a4);
  swift_getWitnessTable(protocol conformance descriptor for _LayoutTrait<A>, v6);
  v9 = type metadata accessor for _TraitWritingModifier(255, v6, v7, v8);
  v11 = type metadata accessor for ModifiedContent(255, v4, v9, v10);
  v13[0] = v5;
  v13[1] = &protocol witness table for _TraitWritingModifier<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v11, v13);
}

uint64_t _s7SwiftUI14LayoutSubviewsV7Storage33_57DDCF0A00C1B77B475771403C904EF9LLOwcp_0(uint64_t a1, uint64_t *a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;

  return a1;
}

__n128 sub_18D3B150C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_18D3B1518()
{

  return swift_deallocObject();
}

uint64_t sub_18D3B1560()
{

  return swift_deallocObject();
}

uint64_t sub_18D3B1598()
{

  return swift_deallocObject();
}

uint64_t sub_18D3B1650()
{

  return swift_deallocObject();
}

uint64_t sub_18D3B16B0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_15:

    return v9(v10, a2, v8);
  }

  if (a2 == 252)
  {
    v11 = *(a1 + a3[5] + 16);
    if (v11 <= 3)
    {
      v12 = 3;
    }

    else
    {
      v12 = *(a1 + a3[5] + 16);
    }

    v13 = v12 - 3;
    if (v11 >= 3)
    {
      return v13;
    }

    else
    {
      return 0;
    }
  }

  v15 = type metadata accessor for Calendar();
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v16 = *(v15 - 8);
    v17 = a3[6];
LABEL_14:
    v9 = *(v16 + 48);
    v10 = a1 + v17;
    goto LABEL_15;
  }

  v18 = type metadata accessor for Locale();
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v16 = *(v18 - 8);
    v17 = a3[7];
    goto LABEL_14;
  }

  v19 = type metadata accessor for TimeZone();
  v20 = *(*(v19 - 8) + 48);
  v21 = a1 + a3[8];

  return v20(v21, a2, v19);
}

uint64_t sub_18D3B1874(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for Date();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 252)
  {
    *(a1 + a4[5] + 16) = a2 + 3;
    return result;
  }

  v13 = type metadata accessor for Calendar();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[6];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = type metadata accessor for Locale();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  v17 = type metadata accessor for TimeZone();
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[8];

  return v18(v19, a2, a2, v17);
}

double sub_18D3B1A38(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  type metadata accessor for _EnvironmentKeyWritingModifier<Text.WritingMode>(255, a2, a3, a4);
  v8 = type metadata accessor for ModifiedContent(255, v4, v6, v7);
  v10[0] = v5;
  v10[1] = &protocol witness table for _EnvironmentKeyWritingModifier<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v8, v10);
}

uint64_t sub_18D3B1AFC@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

uint64_t sub_18D3B1D78@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

void sub_18D3B1DB4(__int128 *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  EnvironmentValues.truncationMode.getter(&v3);
  *a2 = v3;
}

double sub_18D3B1F54(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for _EnvironmentKeyWritingModifier<Text.Case?>(255);
  v5 = type metadata accessor for ModifiedContent(255, v1, v3, v4);
  v7[0] = v2;
  v7[1] = &protocol witness table for _EnvironmentKeyWritingModifier<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

void sub_18D3B2030(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  static PlatformScrollEdgeEffectTagDefinition.definition = v1;
}

double sub_18D3B2078(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v5 = type metadata accessor for ModifiedContent(255, *a1, &type metadata for EnableLegacyScrollEdgeEffectTag, a4);
  v7[0] = v4;
  v7[1] = &protocol witness table for EnableLegacyScrollEdgeEffectTag;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

uint64_t sub_18D3B20DC()
{

  return swift_deallocObject();
}

double sub_18D3B2114@<D0>(uint64_t a1@<X8>)
{
  ResolvedShadowStyle.animatableData.getter(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

__n128 sub_18D3B2214(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_18D3B223C@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  *a2 = *a1;
  a2[1] = v3;
  a2[2] = v4;
  return result;
}

double sub_18D3B2254(uint64_t a1, void *a2)
{
  result = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  *a2 = *a1;
  a2[2] = v3;
  a2[4] = v4;
  return result;
}

uint64_t sub_18D3B22CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GestureFailureReason();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_18D3B2338(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GestureFailureReason();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

double sub_18D3B23A8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[2];
  v6 = type metadata accessor for GestureComponentAttachmentModifier(255, a1[1], *(a1[3] + 8), a4);
  v8 = type metadata accessor for ModifiedContent(255, v4, v6, v7);
  v10[0] = v5;
  v10[1] = &protocol witness table for GestureComponentAttachmentModifier<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v8, v10);
}

double sub_18D3B241C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[2];
  v6 = type metadata accessor for GestureComponentAttachmentModifier(255, a1[1], a1[3], a4);
  v8 = type metadata accessor for ModifiedContent(255, v4, v6, v7);
  v10[0] = v5;
  v10[1] = &protocol witness table for GestureComponentAttachmentModifier<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v8, v10);
}

void *sub_18D3B24AC@<X0>(void *a2@<X8>)
{
  result = AGGraphGetValue();
  *a2 = *result;
  return result;
}

void *sub_18D3B2564@<X0>(void *a2@<X8>)
{
  result = AGGraphGetValue();
  *a2 = *result;
  return result;
}

__n128 sub_18D3B26A8@<Q0>(__n128 *a2@<X8>)
{
  type metadata accessor for CGPoint(0);
  Value = AGGraphGetValue();
  result = *Value;
  *a2 = *Value;
  return result;
}

uint64_t sub_18D3B2778@<X0>(uint64_t a2@<X8>)
{
  Value = AGGraphGetValue();

  return outlined init with copy of CoordinateSpace(Value, a2);
}

uint64_t sub_18D3B27C0(uint64_t a1, uint64_t a2)
{

  return key path setter for ContentShapePath.coordinateSpace : ContentShapePath(a1, a2);
}

uint64_t sub_18D3B2830@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 20);
  v3 = v2 == *MEMORY[0x1E698D3F8];
  if (v2 == *MEMORY[0x1E698D3F8])
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 4) = v3;
  return result;
}

uint64_t sub_18D3B2858(uint64_t result, uint64_t a2)
{
  if (*(result + 4))
  {
    v2 = MEMORY[0x1E698D3F8];
  }

  else
  {
    v2 = result;
  }

  *(a2 + 20) = *v2;
  return result;
}

uint64_t _s7SwiftUI20ContentShapePathDataVwcp_0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t sub_18D3B28C8()
{

  return swift_deallocObject();
}

uint64_t sub_18D3B2918()
{
  v1 = type metadata accessor for Locale.Language();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 17) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_18D3B29A0()
{
  v1 = *(type metadata accessor for TypesettingLanguage(0) - 8);
  v2 = (*(v1 + 80) + 17) & ~*(v1 + 80);
  type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)(0, &lazy cache variable for type metadata for (Locale.Language, TypesettingLanguage.Flags), MEMORY[0x1E6969720], &type metadata for TypesettingLanguage.Flags);
  if (!(*(*(v3 - 8) + 48))(v0 + v2, 2, v3))
  {
    v4 = type metadata accessor for Locale.Language();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  return swift_deallocObject();
}

double sub_18D3B2AD4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for Locale.LanguageCode?(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<TypesettingConfiguration>, type metadata accessor for TypesettingConfiguration, type metadata accessor for _EnvironmentKeyTransformModifier);
  v5 = type metadata accessor for ModifiedContent(255, v1, v3, v4);
  v7[0] = v2;
  v7[1] = &protocol witness table for _EnvironmentKeyTransformModifier<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

void *sub_18D3B2B8C@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0V018ScrollTargetAnchorF033_3107437717620AB5FD95CF7D87A21F58LLVG_Tt2g5(*a1);
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  return result;
}

void *sub_18D3B2C60@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0V031ScrollContentAdjustmentBehaviorF033_3107437717620AB5FD95CF7D87A21F58LLVG_Tt2g5(*a1, &v4);
  *a2 = v4;
  return result;
}

double sub_18D3B2DA4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for _EnvironmentKeyWritingModifier<Int?>(255);
  v5 = type metadata accessor for ModifiedContent(255, v1, v3, v4);
  v7[0] = v2;
  v7[1] = &protocol witness table for _EnvironmentKeyWritingModifier<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

double sub_18D3B2E10(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v5 = type metadata accessor for ModifiedContent(255, *a1, &type metadata for LineLimitModifier, a4);
  v7[0] = v4;
  v7[1] = &protocol witness table for LineLimitModifier;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

uint64_t sub_18D3B2E78()
{

  return swift_deallocObject();
}

uint64_t sub_18D3B2EB0()
{
  v1 = *(type metadata accessor for ResolvableStringResolutionContext(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);

  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_18D3B2FF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Text.Style(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_18D3B30A0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Text.Style(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_18D3B3144()
{

  return swift_deallocObject();
}

uint64_t sub_18D3B317C()
{
  v1 = type metadata accessor for Text.Style(0);
  v2 = *(*(v1 - 1) + 64);
  v3 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v4 = v0 + v3;
  if (*(v0 + v3) >= 2uLL)
  {
  }

  outlined consume of Gradient.ProviderTag(*(v4 + 16));

  if ((*(v4 + 88) - 1) >= 2)
  {
  }

  if ((*(v4 + 104) - 1) >= 2)
  {
  }

  if (*(v4 + 176) != 1)
  {
  }

  if (*(v4 + 248) != 1)
  {
  }

  if (*(v4 + 288) >= 2uLL)
  {
    outlined consume of Text.Storage(*(v4 + 264), *(v4 + 272), *(v4 + 280));
  }

  v5 = v1[21];
  _s10Foundation6LocaleV8LanguageV_7SwiftUI011TypesettingC0V5FlagsVtMaTm_0(0, &lazy cache variable for type metadata for (Locale.Language, TypesettingLanguage.Flags), MEMORY[0x1E6969720], &type metadata for TypesettingLanguage.Flags);
  if (!(*(*(v6 - 8) + 48))(v4 + v5, 2, v6))
  {
    v7 = type metadata accessor for Locale.Language();
    (*(*(v7 - 8) + 8))(v4 + v5, v7);
  }

  v8 = v1[23];
  v9 = type metadata accessor for AttributedString.AdaptiveImageGlyph();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v4 + v8, 1, v9))
  {
    (*(v10 + 8))(v4 + v8, v9);
  }

  v11 = v1[24];
  v12 = type metadata accessor for AttributedString.TextAlignment();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v4 + v11, 1, v12))
  {
    (*(v13 + 8))(v4 + v11, v12);
  }

  v14 = v1[26];
  v15 = type metadata accessor for AttributedString.LineHeight();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(v4 + v14, 1, v15))
  {
    (*(v16 + 8))(v4 + v14, v15);
  }

  return swift_deallocObject();
}

uint64_t sub_18D3B3570()
{

  return swift_deallocObject();
}

double sub_18D3B35FC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for _EnvironmentKeyTransformModifier<TypesettingConfiguration>(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<TypesettingConfiguration>, type metadata accessor for TypesettingConfiguration, type metadata accessor for _EnvironmentKeyTransformModifier);
  v5 = type metadata accessor for ModifiedContent(255, v1, v3, v4);
  v7[0] = v2;
  v7[1] = &protocol witness table for _EnvironmentKeyTransformModifier<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

uint64_t sub_18D3B3698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Locale();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_18D3B3744(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Locale();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_18D3B37E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Locale();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_18D3B3894(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Locale();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t _s7SwiftUI5ImageV12ResolvedUUIDVwcp_0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  v5 = v3;
  return a1;
}

uint64_t sub_18D3B3970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_18D3B3A3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 24) = a2;
  }

  return result;
}

uint64_t _s7SwiftUI12_ViewList_IDV17ElementCollectionVSkAASk5index_8offsetBy07limitedJ05IndexQzSgAJ_SiAJtFTW_0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t sub_18D3B3B74(void *a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12ViewGeometryV_AK010UnaryChildI033_1C3B77B617AD058A6802F719E38F5D79LLVyAK29IgnoresAutomaticPaddingLayout33_47C1BD8C61550BB60F4F3D12F752D53DLLVGTt1g5Tm(a1, a2, specialized UnaryChildGeometry.value.getter);
}

void sub_18D3B3BE0(int *a1)
{

  _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI6AnchorVySo6CGRectVG_AK011GlassEffectH008_3DF70D9M23D7473F4D189A049B764CFEFLLVTt1g5Tm(a1);
}

uint64_t sub_18D3B3C38(void *a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12ViewGeometryV_AK010UnaryChildI033_1C3B77B617AD058A6802F719E38F5D79LLVyAK29IgnoresAutomaticPaddingLayout33_47C1BD8C61550BB60F4F3D12F752D53DLLVGTt1g5Tm(a1, a2, specialized UnaryChildGeometry.value.getter);
}

uint64_t sub_18D3B3CA4(uint64_t a1)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12ViewGeometryV_AK023UnaryPositionAwareChildI033_1C3B77B617AD058A6802F719E38F5D79LLVyAK30_SafeAreaRegionsIgnoringLayoutVGTt1g5Tm(a1);
}

uint64_t sub_18D3B3D98@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 64);
  v3 = v2 == *MEMORY[0x1E698D3F8];
  if (v2 == *MEMORY[0x1E698D3F8])
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 4) = v3;
  return result;
}

uint64_t sub_18D3B3DC0(uint64_t result, uint64_t a2)
{
  if (*(result + 4))
  {
    v2 = MEMORY[0x1E698D3F8];
  }

  else
  {
    v2 = result;
  }

  *(a2 + 64) = *v2;
  return result;
}

uint64_t sub_18D3B3DE0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  outlined init with copy of _ViewListInputs(a1, v5);
  Strong = swift_weakLoadStrong();
  result = outlined destroy of _ViewListInputs(v5);
  *a2 = Strong;
  return result;
}

_BYTE *sub_18D3B3E4C(_BYTE *result, uint64_t a2)
{
  if (*result)
  {
    v2 = 32;
  }

  else
  {
    v2 = 0;
  }

  *(a2 + 36) = *(a2 + 36) & 0xFFFFFFDF | v2;
  return result;
}

uint64_t sub_18D3B3F18()
{
  v3 = *(v0 + 256);
  v4 = *(v0 + 272);
  v2 = *(v0 + 224);
  outlined consume of ArrayWith2Inline<GestureDebug.Data>.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216), v2, *(&v2 + 1), *(v0 + 240), *(v0 + 248), v3, *(&v3 + 1), v4, *(&v4 + 1), *(v0 + 288), *(v0 + 296), *(v0 + 304));

  return swift_deallocObject();
}

uint64_t sub_18D3B3FB4()
{

  return swift_deallocObject();
}

__n128 sub_18D3B3FFC(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

uint64_t sub_18D3B4020()
{
  outlined consume of ContentTransition.Storage(*(v0 + 16), *(v0 + 24) | (*(v0 + 28) << 32), *(v0 + 29));

  return swift_deallocObject();
}

uint64_t sub_18D3B4070()
{

  return swift_deallocObject();
}

uint64_t _s7SwiftUI24ForEachSubviewCollectionVyxGSlAASl5index_8offsetBy5IndexQzAH_SitFTW_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7.n128_f64[0] = swift_getWitnessTable(protocol conformance descriptor for ForEachSubviewCollection<A>, a3);
  v8 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69830](a1, a2, a3, v6, v8, v7);
}

uint64_t _s7SwiftUI24ForEachSubviewCollectionVyxGSlAASl5index_8offsetBy07limitedI05IndexQzSgAI_SiAItFTW_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getWitnessTable(protocol conformance descriptor for ForEachSubviewCollection<A>, a4);

  return RandomAccessCollection.index(_:offsetBy:limitedBy:)();
}

uint64_t _s7SwiftUI24ForEachSubviewCollectionVyxGSlAASl8distance4from2toSi5IndexQz_AItFTW_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7.n128_f64[0] = swift_getWitnessTable(protocol conformance descriptor for ForEachSubviewCollection<A>, a3);
  v8 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69840](a1, a2, a3, v6, v8, v7);
}

uint64_t sub_18D3B425C()
{

  return swift_deallocObject();
}

double sub_18D3B4298(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v5 = type metadata accessor for ModifiedContent(255, *a1, &type metadata for _AlignmentWritingModifier, a4);
  v7[0] = v4;
  v7[1] = &protocol witness table for _AlignmentWritingModifier;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

double sub_18D3B4304(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for AttributedString.LineHeight?(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<AttributedString.LineHeight?>, type metadata accessor for AttributedString.LineHeight?, type metadata accessor for _EnvironmentKeyWritingModifier);
  v5 = type metadata accessor for ModifiedContent(255, v1, v3, v4);
  v7[0] = v2;
  v7[1] = &protocol witness table for _EnvironmentKeyWritingModifier<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

uint64_t sub_18D3B43DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA14MaterialEffectV_Tt3g5Tm(a1, a2, a3, a4, a5);
}

double protocol witness for static AdditiveArithmetic.zero.getter in conformance Edge.Corner.Style.AnimatableData@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

double sub_18D3B444C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = type metadata accessor for _GlassEffectContainer(255, *a1, v5, a4);
  v7 = type metadata accessor for StaticIf(255, &type metadata for GlassEnabledPredicate, v6, v4);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _GlassEffectContainer<A>, v6);
  v11[0] = &protocol witness table for GlassEnabledPredicate;
  v11[1] = v9;
  v11[2] = v5;
  return swift_getWitnessTable(protocol conformance descriptor for <> StaticIf<A, B, C>, v7, v11, WitnessTable);
}

uint64_t sub_18D3B44FC()
{

  return swift_deallocObject();
}

uint64_t sub_18D3B454C()
{

  return swift_deallocObject();
}

double sub_18D3B45D4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for [BackgroundContext](255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<Int>, MEMORY[0x1E69E6530], type metadata accessor for _EnvironmentKeyTransformModifier);
  v5 = type metadata accessor for ModifiedContent(255, v1, v3, v4);
  v7[0] = v2;
  v7[1] = &protocol witness table for _EnvironmentKeyTransformModifier<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

double sub_18D3B4664(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[2];
  v6 = type metadata accessor for _EnvironmentBackgroundStyleModifier(255, a1[1], a1[3], a4);
  v8 = type metadata accessor for ModifiedContent(255, v4, v6, v7);
  v10[0] = v5;
  v10[1] = &protocol witness table for _EnvironmentBackgroundStyleModifier<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v8, v10);
}

double sub_18D3B47E0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[2];
  v6 = type metadata accessor for _ForegroundStyleModifier(255, a1[1], a1[3], a4);
  v8 = type metadata accessor for ModifiedContent(255, v4, v6, v7);
  v10[0] = v5;
  v10[1] = &protocol witness table for _ForegroundStyleModifier<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v8, v10);
}

double sub_18D3B4850(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v9[0] = *(a1 + 8);
  v9[1] = v3;
  v4 = type metadata accessor for _ForegroundStyleModifier2(255, v9);
  v6 = type metadata accessor for ModifiedContent(255, v1, v4, v5);
  v8[0] = v2;
  v8[1] = &protocol witness table for _ForegroundStyleModifier2<A, B>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v6, v8);
}

double sub_18D3B48D0(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = *(a1 + 56);
  v10 = *(a1 + 8);
  v11 = v2;
  v12 = *(a1 + 40);
  v13 = v4;
  v5 = type metadata accessor for _ForegroundStyleModifier3(255, &v10);
  v7 = type metadata accessor for ModifiedContent(255, v1, v5, v6);
  v9[0] = v3;
  v9[1] = &protocol witness table for _ForegroundStyleModifier3<A, B, C>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v7, v9);
}

uint64_t _s7SwiftUI012_ShapeStyle_C0V6ResultOwcp_0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  outlined copy of _ShapeStyle_Shape.Result(*a2, v4);
  *a1 = v3;
  *(a1 + 8) = v4;
  return a1;
}

__n128 sub_18D3B4A68(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

__n128 sub_18D3B4AD4(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

uint64_t sub_18D3B4B20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (*(a3 + 16) == 1)
  {
    TupleTypeMetadata = *(*(a3 + 32) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v5 = a1;
    MEMORY[0x1EEE9AC00](a1);
    v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v7)
    {
      v11 = 0;
      v12 = *(v8 + 32) & 0xFFFFFFFFFFFFFFFELL;
      if (v7 < 4)
      {
        goto LABEL_9;
      }

      if (&v10[-v12] < 0x20)
      {
        goto LABEL_9;
      }

      v11 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      v13 = (v12 + 16);
      v14 = v10 + 16;
      v15 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v16 = *v13;
        *(v14 - 1) = *(v13 - 1);
        *v14 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      if (v7 != v11)
      {
LABEL_9:
        v17 = v7 - v11;
        v18 = 8 * v11;
        v19 = &v10[8 * v11];
        v20 = (v12 + v18);
        do
        {
          v21 = *v20++;
          *v19 = v21;
          v19 += 8;
          --v17;
        }

        while (v17);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v3 = a2;
    a1 = v5;
  }

  return (*(*(TupleTypeMetadata - 8) + 48))(a1, v3);
}

uint64_t sub_18D3B4C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 16) == 1)
  {
    TupleTypeMetadata = *(*(a4 + 32) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v6 = a1;
    MEMORY[0x1EEE9AC00](a1);
    v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v7)
    {
      v11 = 0;
      v12 = *(v8 + 32) & 0xFFFFFFFFFFFFFFFELL;
      if (v7 < 4)
      {
        goto LABEL_9;
      }

      if (&v10[-v12] < 0x20)
      {
        goto LABEL_9;
      }

      v11 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      v13 = (v12 + 16);
      v14 = v10 + 16;
      v15 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v16 = *v13;
        *(v14 - 1) = *(v13 - 1);
        *v14 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      if (v7 != v11)
      {
LABEL_9:
        v17 = v7 - v11;
        v18 = 8 * v11;
        v19 = &v10[8 * v11];
        v20 = (v12 + v18);
        do
        {
          v21 = *v20++;
          *v19 = v21;
          v19 += 8;
          --v17;
        }

        while (v17);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    a1 = v6;
  }

  return (*(*(TupleTypeMetadata - 8) + 56))(a1, a2, a2);
}

uint64_t sub_18D3B4DA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConstraintAttributeContainerProxyBase(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_18D3B4E0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConstraintAttributeContainerProxyBase(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_18D3B4E94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 40);
  v8[0] = *(a3 + 16);
  v8[1] = v5;
  v6 = type metadata accessor for AttributedTextFormatting.AttributeContainerProxy(0, v8);
  return (*(*(v6 - 8) + 48))(a1, a2, v6);
}

uint64_t sub_18D3B4F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 40);
  v9[0] = *(a4 + 16);
  v9[1] = v6;
  v7 = type metadata accessor for AttributedTextFormatting.AttributeContainerProxy(0, v9);
  return (*(*(v7 - 8) + 56))(a1, a2, a2, v7);
}

double sub_18D3B4F8C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for AttributedTextFormatting.EmptyDefinition(255, AssociatedTypeWitness, AssociatedConformanceWitness, v5);
  v8 = type metadata accessor for _ConditionalContent(255, v1, v6, v7);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for AttributedTextFormatting.EmptyDefinition<A>, v6);
  v12[0] = v2;
  v12[1] = v10;
  return swift_getWitnessTable(protocol conformance descriptor for <> _ConditionalContent<A, B>, v8, v12, WitnessTable);
}

uint64_t sub_18D3B5074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AttributeContainer();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    type metadata accessor for DiscontiguousSlice<AttributedTextFormatting.Constraints>(0, &lazy cache variable for type metadata for DiscontiguousSlice<AttributedTextFormatting.Constraints>, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints, &type metadata for AttributedTextFormatting.Constraints, MEMORY[0x1E69E6E20]);
    v12 = v11;
    v13 = *(*(v11 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_18D3B51D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AttributeContainer();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    type metadata accessor for DiscontiguousSlice<AttributedTextFormatting.Constraints>(0, &lazy cache variable for type metadata for DiscontiguousSlice<AttributedTextFormatting.Constraints>, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints, &type metadata for AttributedTextFormatting.Constraints, MEMORY[0x1E69E6E20]);
    v12 = v11;
    v13 = *(*(v11 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }

  return result;
}

uint64_t sub_18D3B5344()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_18D3B5388()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_18D3B53C0()
{

  return swift_deallocObject();
}

__n128 sub_18D3B54BC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_18D3B54C8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for _StrokedShape(255, *a1, a1[1], a4);

  return swift_getWitnessTable(protocol conformance descriptor for _StrokedShape<A>, v4);
}

double sub_18D3B5620(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v5 = type metadata accessor for ModifiedContent(255, *a1, &type metadata for HiddenForLayoutModifier, a4);
  v7[0] = v4;
  v7[1] = &protocol witness table for HiddenForLayoutModifier;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

uint64_t sub_18D3B5684@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result & 1;
  return result;
}

__n128 sub_18D3B5748(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

double sub_18D3B5754@<D0>(double *a1@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  v3 = a1 + 1;
  if (!*a2)
  {
    v3 = a1;
  }

  result = *v3;
  *a3 = *v3;
  return result;
}

void *sub_18D3B5770(void *result, uint64_t a2, _BYTE *a3)
{
  v3 = 8;
  if (!*a3)
  {
    v3 = 0;
  }

  *(a2 + v3) = *result;
  return result;
}

float64x2_t sub_18D3B579C@<Q0>(float64x2_t *a1@<X0>, float64x2_t *a2@<X8>)
{
  result = vmulq_f64(*a1, vdupq_n_s64(0x4060000000000000uLL));
  *a2 = result;
  return result;
}

float64x2_t sub_18D3B57B4(float64x2_t *a1, float64x2_t *a2)
{
  result = vmulq_f64(*a1, vdupq_n_s64(0x3F80000000000000uLL));
  *a2 = result;
  return result;
}

double sub_18D3B57E0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[2];
  v6 = type metadata accessor for _PreferenceTransformModifier(255, a1[1], a1[3], a4);
  v8 = type metadata accessor for ModifiedContent(255, v4, v6, v7);
  v10[0] = v5;
  v10[1] = &protocol witness table for _PreferenceTransformModifier<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v8, v10);
}

unint64_t sub_18D3B5854@<X0>(unint64_t result@<X0>, BOOL *a2@<X8>)
{
  v3 = *(result + 36);
  if ((v3 & 0x20) != 0)
  {
    result = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(*(result + 48));
    v4 = (v3 & 0x2000) == 0;
    if ((result & 1) == 0)
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

_BYTE *sub_18D3B58A4(_BYTE *result, uint64_t a2)
{
  if (*result)
  {
    v2 = 0;
  }

  else
  {
    v2 = 0x2000;
  }

  *(a2 + 36) = *(a2 + 36) & 0xFFFFDFFF | v2;
  return result;
}

uint64_t sub_18D3B58C8@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA11_ViewInputsVAAE18ScrapeableParentID010_0EC4D15D4N21D8FD0340271BA6BA4D1B4LLV_Tt2g5(*a1, &v4);
  *a2 = v4;
  return result;
}

_BYTE *sub_18D3B5934(_BYTE *result, uint64_t a2)
{
  if (*result)
  {
    v2 = 0;
  }

  else
  {
    v2 = 0x2000;
  }

  *(a2 + 36) = *(a2 + 36) & 0xFFFFDFFF | v2;
  return result;
}

uint64_t sub_18D3B5958@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA11_ViewInputsVAAE18ScrapeableParentID010_0EC4D15D4N21D8FD0340271BA6BA4D1B4LLV_Tt2g5(*a1, &v4);
  *a2 = v4;
  return result;
}

unint64_t *_s7SwiftUI17ScrapeableContentV0D0Owcp_0(unint64_t *a1, unint64_t *a2)
{
  v3 = *a2;
  outlined copy of ScrapeableContent.Content(*a2);
  *a1 = v3;
  return a1;
}

double sub_18D3B59DC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v5 = type metadata accessor for ModifiedContent(255, *a1, &type metadata for ScrapeableAttachmentViewModifier, a4);
  v7[0] = v4;
  v7[1] = &protocol witness table for ScrapeableAttachmentViewModifier;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

uint64_t sub_18D3B5A40@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 12);
  v3 = v2 == *MEMORY[0x1E698D3F8];
  if (v2 == *MEMORY[0x1E698D3F8])
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 4) = v3;
  return result;
}

uint64_t sub_18D3B5A68(uint64_t result, uint64_t a2)
{
  v2 = MEMORY[0x1E698D3F8];
  if (!*(result + 4))
  {
    v2 = result;
  }

  *(a2 + 12) = *v2;
  v3 = *(a2 + 8);
  if ((v3 & 0x80) == 0)
  {
    *(a2 + 8) = v3 | 0x80;
  }

  return result;
}

double sub_18D3B5AD8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for TruePreferenceWritingGestureModifier(255, v2, AssociatedTypeWitness, v4);
  swift_getWitnessTable(protocol conformance descriptor for TruePreferenceWritingGestureModifier<A, B>, v6);
  v10[0] = v6;
  v10[1] = v1;
  v10[2] = v7;
  v10[3] = v3;
  v8 = type metadata accessor for ModifierGesture(255, v10);
  return swift_getWitnessTable(protocol conformance descriptor for ModifierGesture<A, B>, v8);
}

uint64_t sub_18D3B5B94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResolvableAttributeConfiguration.Schedule.Alignment(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_18D3B5C00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResolvableAttributeConfiguration.Schedule.Alignment(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t _s7SwiftUI20_IntelligenceSupportO22AnimatingSummarySymbolVwcp_0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v5 = v3;
  v6 = v4;
  return a1;
}

uint64_t sub_18D3B5E1C()
{

  return swift_deallocObject();
}

uint64_t sub_18D3B5E58()
{
  outlined consume of GraphicsFilter(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));

  return swift_deallocObject();
}

double sub_18D3B5EC4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v5 = type metadata accessor for ModifiedContent(255, *a1, &type metadata for _LuminanceToAlphaEffect, a4);
  v7[0] = v4;
  v7[1] = &protocol witness table for _LuminanceToAlphaEffect;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

uint64_t sub_18D3B5F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for TranslationKickModifier(0, v5, *(v4 + 24), a4) - 8);
  v7 = v4 + ((*(*v6 + 80) + 32) & ~*(*v6 + 80));
  v8 = *(*(v5 - 8) + 8);
  v8(v7, v5);
  v8(v7 + v6[11], v5);

  return swift_deallocObject();
}

double sub_18D3B603C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = type metadata accessor for TranslationKickModifier(255, *a1, v5, a4);
  swift_getWitnessTable(protocol conformance descriptor for TranslationKickModifier<A>, v6);
  v9 = type metadata accessor for _ViewModifier_Content(255, v6, v7, v8);
  v11 = type metadata accessor for ModifiedContent(255, v9, &type metadata for KickModifier, v10);
  v13 = type metadata accessor for ScheduledAnimationModifier(255, v4, *(v5 + 8), v12);
  v15 = type metadata accessor for ModifiedContent(255, v11, v13, v14);
  lazy protocol witness table accessor for type KickModifier and conformance KickModifier();
  v24[0] = &protocol witness table for _ViewModifier_Content<A>;
  v24[1] = v16;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v11, v24);
  v19 = v18;
  v20 = swift_getWitnessTable(protocol conformance descriptor for ScheduledAnimationModifier<A>, v13, WitnessTable);
  v23[0] = v19;
  v23[1] = v21;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v15, v23, v20);
}

void sub_18D3B61A4(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  static CoreTesting.isRunning = v1;
}

void sub_18D3B6238(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  static CoreTesting.needsRender = v1;
}

uint64_t sub_18D3B6280()
{

  return swift_deallocObject();
}

double sub_18D3B62C8@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed EventType) -> (@unowned Bool);
  a2[1] = v5;

  return result;
}

uint64_t sub_18D3B6350()
{

  return swift_deallocObject();
}

uint64_t sub_18D3B6388()
{

  return swift_deallocObject();
}

double sub_18D3B63C8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[2];
  v5 = type metadata accessor for ModifiedContent(255, *a1, &type metadata for GlassEffectGroupModifier, a4);
  v7[0] = v4;
  v7[1] = &protocol witness table for GlassEffectGroupModifier;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

uint64_t *_s7SwiftUI29GlassEffectGroupConfigurationVwta_0(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t sub_18D3B6490()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_18D3B6518()
{

  return swift_deallocObject();
}

double sub_18D3B6560@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;

  return result;
}

void sub_18D3B656C(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];

  *a2 = v4;
  a2[1] = v3;
}

__n128 sub_18D3B65BC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

void sub_18D3B6618(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  static EnableLazyLayoutReuseLoggingAlways.cachedValue = v1;
}

uint64_t _s7SwiftUI31_LazyLayout_EstimatedPlacementsVwcp_0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t sub_18D3B66A8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_18D3B6714@<X0>(uint64_t a1@<X8>)
{
  result = Duration.UnitsFormatStyle.maximumUnitCount.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

double sub_18D3B67A4(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[3];
  v4 = a1[4];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(a1 + 1);
  v11 = v4;
  v5 = type metadata accessor for Map2Gesture(255, &AssociatedTypeWitness);
  swift_getWitnessTable(protocol conformance descriptor for Map2Gesture<A, B, C>, v5);
  AssociatedTypeWitness = v5;
  *&v10 = v2;
  *(&v10 + 1) = v6;
  v11 = v3;
  v7 = type metadata accessor for ModifierGesture(255, &AssociatedTypeWitness);
  return swift_getWitnessTable(protocol conformance descriptor for ModifierGesture<A, B>, v7);
}

double sub_18D3B6868(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v10 = AssociatedTypeWitness;
  v11 = v2;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = v4;
  v6 = type metadata accessor for Map2Gesture(255, &v10);
  swift_getWitnessTable(protocol conformance descriptor for Map2Gesture<A, B, C>, v6);
  v10 = v6;
  v11 = v1;
  TupleTypeMetadata2 = v7;
  v13 = v3;
  v8 = type metadata accessor for ModifierGesture(255, &v10);
  return swift_getWitnessTable(protocol conformance descriptor for ModifierGesture<A, B>, v8);
}

double sub_18D3B696C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = v2;
  v11 = AssociatedTypeWitness;
  v12 = v4;
  v5 = type metadata accessor for Map2Gesture(255, &AssociatedTypeWitness);
  swift_getWitnessTable(protocol conformance descriptor for Map2Gesture<A, B, C>, v5);
  AssociatedTypeWitness = v5;
  v10 = v1;
  v11 = v6;
  v12 = v3;
  v7 = type metadata accessor for ModifierGesture(255, &AssociatedTypeWitness);
  return swift_getWitnessTable(protocol conformance descriptor for ModifierGesture<A, B>, v7);
}

__n128 sub_18D3B6A38(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

double sub_18D3B6A4C@<D0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = partial apply for specialized closure #1 in AGAttribute.mutateBody<A>(as:invalidating:_:);
  a2[1] = v5;

  return result;
}

uint64_t sub_18D3B6AE4()
{

  return swift_deallocObject();
}

uint64_t sub_18D3B6B2C()
{

  return swift_deallocObject();
}

__n128 sub_18D3B6B70@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

__n128 sub_18D3B6B7C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

__n128 sub_18D3B6B88@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

__n128 sub_18D3B6B94(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_18D3B6BA8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 64);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_18D3B6BF8(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 64) = v2;
  result = swift_unknownObjectWeakAssign();
  *(v3 + 96) = 1;
  return result;
}

double sub_18D3B6C58(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[2];
  v5 = type metadata accessor for ModifiedContent(255, *a1, &type metadata for CAFilterEffect, a4);
  v7[0] = v4;
  v7[1] = &protocol witness table for CAFilterEffect;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

double sub_18D3B6CC0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[2];
  type metadata accessor for RendererVisualEffect<CAFilterEffect>(255);
  v4 = v3;
  lazy protocol witness table accessor for type RendererVisualEffect<CAFilterEffect> and conformance RendererVisualEffect<A>();
  v8[0] = v1;
  v8[1] = v4;
  v8[2] = v2;
  v8[3] = v5;
  v6 = type metadata accessor for CombinedVisualEffect(255, v8);
  return swift_getWitnessTable(protocol conformance descriptor for CombinedVisualEffect<A, B>, v6);
}

uint64_t sub_18D3B6D34()
{
  outlined consume of GraphicsFilter(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));

  return swift_deallocObject();
}

double protocol witness for InsettableShape.inset(by:) in conformance ContainerRelativeShape._Inset@<D0>(double *a1@<X8>, double a2@<D0>)
{
  result = *v2 + a2;
  *a1 = result;
  return result;
}

double sub_18D3B6DB0@<D0>(double *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_18D3B6DBC(double *a1, void *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_18D3B6DC8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 24);
  *a2 = *a1;
  *(a2 + 16) = result;
  return result;
}

double sub_18D3B6DDC(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 24) = result;
  return result;
}

double sub_18D3B6DF0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 40);
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v3;
  *(a2 + 32) = result;
  return result;
}

double sub_18D3B6E04(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v3;
  *(a2 + 40) = result;
  return result;
}

uint64_t sub_18D3B6EFC()
{
  outlined consume of GraphicsFilter(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));

  return swift_deallocObject();
}

double sub_18D3B6F68(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v5 = type metadata accessor for ModifiedContent(255, *a1, &type metadata for LuminanceCurveEffect, a4);
  v7[0] = v4;
  v7[1] = &protocol witness table for LuminanceCurveEffect;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

uint64_t sub_18D3B6FCC@<X0>(uint64_t result@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = (result + 40);
  v4 = (result + 32);
  if (*a2 != 2)
  {
    v4 = (result + 48);
    v3 = (result + 56);
  }

  v5 = (result + 24);
  v6 = result + 16;
  if (!*a2)
  {
    v6 = result;
    v5 = (result + 8);
  }

  if (*a2 <= 1u)
  {
    v7 = v6;
  }

  else
  {
    v7 = v4;
  }

  if (*a2 <= 1u)
  {
    v8 = v5;
  }

  else
  {
    v8 = v3;
  }

  v9 = *v8;
  *a3 = *v7;
  *(a3 + 8) = v9;
  return result;
}

uint64_t sub_18D3B7024(uint64_t result, void *a2, _BYTE *a3)
{
  v3 = *(result + 8);
  v4 = 8;
  v5 = a2 + 4;
  v6 = 40;
  if (*a3 != 2)
  {
    v5 = a2 + 6;
    v6 = 56;
  }

  v7 = a2 + 2;
  if (*a3)
  {
    v4 = 24;
  }

  else
  {
    v7 = a2;
  }

  if (*a3 <= 1u)
  {
    v8 = v7;
  }

  else
  {
    v8 = v5;
  }

  if (*a3 > 1u)
  {
    v4 = v6;
  }

  *v8 = *result;
  *(a2 + v4) = v3;
  return result;
}

double sub_18D3B708C@<D0>(double *a1@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  v3 = a1 + 1;
  v4 = a1 + 2;
  if (*a2 != 2)
  {
    v4 = a1 + 3;
  }

  if (!*a2)
  {
    v3 = a1;
  }

  if (*a2 > 1u)
  {
    v3 = v4;
  }

  result = *v3;
  *a3 = *v3;
  return result;
}

void *sub_18D3B70C0(void *result, void *a2, _BYTE *a3)
{
  v3 = a2 + 2;
  if (*a3 != 2)
  {
    v3 = a2 + 3;
  }

  v4 = a2 + 1;
  if (!*a3)
  {
    v4 = a2;
  }

  if (*a3 <= 1u)
  {
    v5 = v4;
  }

  else
  {
    v5 = v3;
  }

  *v5 = *result;
  return result;
}

double sub_18D3B7104@<D0>(double *a1@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  v3 = a1 + 1;
  v4 = a1 + 2;
  if (a2[1])
  {
    v4 = a1;
  }

  else
  {
    v3 = a1 + 3;
  }

  if (*a2)
  {
    v3 = v4;
  }

  result = *v3;
  *a3 = *v3;
  return result;
}

void *sub_18D3B7138(void *result, uint64_t a2, _BYTE *a3)
{
  v3 = 16;
  if (a3[1])
  {
    v3 = 0;
  }

  v4 = 24;
  if (a3[1])
  {
    v4 = 8;
  }

  if (*a3)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  *(a2 + v5) = *result;
  return result;
}

__n128 sub_18D3B717C@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

__n128 sub_18D3B7188(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_18D3B71CC()
{
  outlined consume of GraphicsFilter(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));

  return swift_deallocObject();
}

double sub_18D3B7248(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v5 = type metadata accessor for ModifiedContent(255, *a1, &type metadata for _AppearanceActionModifier, a4);
  v7[0] = v4;
  v7[1] = &protocol witness table for _AppearanceActionModifier;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

uint64_t sub_18D3B72B8()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 64) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

double sub_18D3B7350@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;

  return result;
}

void sub_18D3B735C(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];

  *a2 = v4;
  a2[1] = v3;
}

__n128 sub_18D3B73AC(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_18D3B73D0()
{

  return swift_deallocObject();
}

uint64_t sub_18D3B7408()
{

  return swift_deallocObject();
}

double sub_18D3B7468@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v5 = *(a2 + a3 - 8);
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  *(v8 + 24) = v7;
  *(v8 + 32) = v6;
  *a4 = _sSo11AGAttributea14AttributeGraphE10mutateBody2as12invalidating_yxm_SbyxzXEtlFySvXEfU_TA_0;
  a4[1] = v8;

  return result;
}

double sub_18D3B74FC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[2];
  v6 = type metadata accessor for _EnvironmentKeyTransformModifier(255, a1[1], a3, a4);
  v8 = type metadata accessor for ModifiedContent(255, v4, v6, v7);
  v10[0] = v5;
  v10[1] = &protocol witness table for _EnvironmentKeyTransformModifier<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v8, v10);
}

uint64_t sub_18D3B756C()
{

  return swift_deallocObject();
}

__n128 sub_18D3B75D4(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

uint64_t sub_18D3B7644()
{

  return swift_deallocObject();
}

uint64_t sub_18D3B767C()
{
  outlined consume of GraphicsFilter(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));

  return swift_deallocObject();
}

uint64_t sub_18D3B76E8()
{

  return swift_deallocObject();
}

uint64_t _sSb7SwiftUI18AccessibilityValueA2aBP20localizedDescriptionSSSgvgTW_0()
{
  if (*v0)
  {
    return 1702195828;
  }

  else
  {
    return 0x65736C6166;
  }
}

uint64_t _sSS7SwiftUI18AccessibilityValueA2aBP20localizedDescriptionSSSgvgTW_0()
{
  v1 = *v0;

  return v1;
}

id _s7SwiftUI26AccessibilityBoundedNumberVAA0C5ValueA2aDP03minF008PlatformF0QzSgvgTW_0@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = v2;
  return v2;
}

id _s7SwiftUI26AccessibilityBoundedNumberVAA0C5ValueA2aDP03maxF008PlatformF0QzSgvgTW_0@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  return v2;
}

id _s7SwiftUI26AccessibilityBoundedNumberVAA0C5ValueA2aDP4step08PlatformF0QzSgvgTW_0@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = v2;
  return v2;
}

void sub_18D3B7844(void *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 40) = v3;
}

void _s7SwiftUI26AccessibilityBoundedNumberVwxx_0(uint64_t a1)
{
  v2 = *(a1 + 24);
}

uint64_t sub_18D3B78E0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

double sub_18D3B7918(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 24);
  v3 = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL);
  v9[0] = vextq_s8(*(a1 + 8), *(a1 + 8), 8uLL);
  v9[1] = v3;
  v4 = type metadata accessor for PreferenceVisualEffectModifier(255, v9);
  v6 = type metadata accessor for ModifiedContent(255, v1, v4, v5);
  v8[0] = v2;
  v8[1] = &protocol witness table for PreferenceVisualEffectModifier<A, B>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v6, v8);
}

__n128 sub_18D3B79F0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_18D3B7D8C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

double sub_18D3B7E48@<D0>(void *a2@<X8>)
{
  Value = AGGraphGetValue();
  result = *Value;
  *a2 = *Value;
  return result;
}

_DWORD *sub_18D3B7F84@<X0>(_DWORD *a2@<X8>)
{
  result = AGGraphGetValue();
  *a2 = *result;
  return result;
}

double sub_18D3B803C@<D0>(void *a2@<X8>)
{
  *a2 = *AGGraphGetValue();

  return result;
}

double sub_18D3B8104@<D0>(void *a2@<X8>)
{
  *a2 = *AGGraphGetValue();

  return result;
}

_DWORD *sub_18D3B81CC@<X0>(_DWORD *a2@<X8>)
{
  result = AGGraphGetValue();
  *a2 = *result;
  return result;
}

_DWORD *sub_18D3B8284@<X0>(_DWORD *a2@<X8>)
{
  result = AGGraphGetValue();
  *a2 = *result;
  return result;
}

void sub_18D3B833C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 169);
}

void sub_18D3B8384(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 169) = v2;
  GraphHost.updateRemovedState()();
}

uint64_t sub_18D3B83D0()
{

  return swift_deallocObject();
}

uint64_t sub_18D3B8428()
{

  swift_weakDestroy();
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_18D3B8470()
{
  swift_weakDestroy();
  swift_weakDestroy();

  return swift_deallocObject();
}

void _s7SwiftUI16SVGImageContents33_FD14FB6A78229243CA216236680C9BDDLLCfE_0()
{
  v1 = *(v0 + 56);
}

uint64_t sub_18D3B85B8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA018IsAuxiliaryContentdJ0V_Tt0B5(0, *a1);
  *a2 = result & 1;
  return result;
}

double sub_18D3B8614(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  type metadata accessor for _TraitWritingModifier<IsAuxiliaryContentTraitKey>(255, a2, a3, a4);
  v8 = type metadata accessor for ModifiedContent(255, v4, v6, v7);
  v10[0] = v5;
  v10[1] = &protocol witness table for _TraitWritingModifier<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v8, v10);
}

double sub_18D3B8680(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[2];
  v6 = type metadata accessor for TagValueTraitKey(255, a1[1], a1[3], a4);
  swift_getWitnessTable(protocol conformance descriptor for TagValueTraitKey<A>, v6);
  v9 = type metadata accessor for _TraitWritingModifier(255, v6, v7, v8);
  v11 = type metadata accessor for ModifiedContent(255, v4, v9, v10);
  v13[0] = v5;
  v13[1] = &protocol witness table for _TraitWritingModifier<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v11, v13);
}

double sub_18D3B8728(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v6 = a1[2];
  v5 = a1[3];
  v7 = type metadata accessor for TagValueTraitKey(255, a1[1], v5, a4);
  swift_getWitnessTable(protocol conformance descriptor for TagValueTraitKey<A>, v7);
  v10 = type metadata accessor for _TraitWritingModifier(255, v7, v8, v9);
  v12 = type metadata accessor for ModifiedContent(255, v4, v10, v11);
  v13 = type metadata accessor for Optional();
  v27 = v5;
  swift_getWitnessTable(MEMORY[0x1E69E7C78], v13, &v27);
  v16 = type metadata accessor for TagValueTraitKey(255, v13, v14, v15);
  swift_getWitnessTable(protocol conformance descriptor for TagValueTraitKey<A>, v16);
  v19 = type metadata accessor for _TraitWritingModifier(255, v16, v17, v18);
  v21 = type metadata accessor for ModifiedContent(255, v12, v19, v20);
  v26[0] = v6;
  v26[1] = &protocol witness table for _TraitWritingModifier<A>;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v12, v26);
  v25[0] = v23;
  v25[1] = &protocol witness table for _TraitWritingModifier<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v21, v25, WitnessTable);
}

uint64_t sub_18D3B8894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + a3 - 8);
  v5 = type metadata accessor for _Velocity(0, *(a2 + a3 - 24), *(a2 + a3 - 16), a4);
  return _Velocity<>.animatableData.getter(v5, v4);
}

uint64_t sub_18D3B88E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 8);
  v6 = type metadata accessor for _Velocity(0, *(a3 + a4 - 24), *(a3 + a4 - 16), a4);
  return specialized _Velocity<>.animatableData.setter(a1, v6, v5);
}

__n128 sub_18D3B893C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

double sub_18D3B8950@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  *a2 = *a1;

  return result;
}

double sub_18D3B8988(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for [DynamicTypeSize](255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<DynamicTypeSize>, type metadata accessor for _EnvironmentKeyWritingModifier);
  v5 = type metadata accessor for ModifiedContent(255, v1, v3, v4);
  v7[0] = v2;
  v7[1] = &protocol witness table for _EnvironmentKeyWritingModifier<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

double sub_18D3B8A10(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[2];
  type metadata accessor for [DynamicTypeSize](255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<DynamicTypeSize>, type metadata accessor for _EnvironmentKeyTransformModifier);
  v5 = type metadata accessor for ModifiedContent(255, v1, v3, v4);
  v7[0] = v2;
  v7[1] = &protocol witness table for _EnvironmentKeyTransformModifier<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

uint64_t sub_18D3B8A9C()
{
  outlined consume of Animation.Function(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return swift_deallocObject();
}

__n128 sub_18D3B8B38(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_18D3B8B94(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[2];
  v6 = type metadata accessor for _ScrollClipEffect(255, a1[1], a1[3], a4);
  v8 = type metadata accessor for ModifiedContent(255, v4, v6, v7);
  v10[0] = v5;
  v10[1] = &protocol witness table for _ScrollClipEffect<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v8, v10);
}

void *_s10Foundation16AttributedStringV7SwiftUIE12AnyAttribute33_93D88693A30DD34F9C9D4BE382D691E3LLOwcp_0(void *a1, id *a2)
{
  v3 = *a2;
  v4 = a2[1];
  outlined copy of AttributedString.AnyAttribute(*a2, v4);
  *a1 = v3;
  a1[1] = v4;
  return a1;
}

uint64_t sub_18D3B8E10()
{

  return swift_deallocObject();
}

__n128 sub_18D3B8F30(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

void sub_18D3B91C8(__int128 *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  EnvironmentValues.sizeCategory.getter(&v3);
  *a2 = v3;
}

double sub_18D3B9478(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  type metadata accessor for _EnvironmentKeyWritingModifier<Text.WritingDirectionStrategy>(255, a2, a3, a4);
  v8 = type metadata accessor for ModifiedContent(255, v4, v6, v7);
  v10[0] = v5;
  v10[1] = &protocol witness table for _EnvironmentKeyWritingModifier<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v8, v10);
}

BOOL sub_18D3B964C(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 != 2)
  {
    return a2 != 2 && ((a2 ^ a1) & 1) == 0;
  }

  return a2 == 2;
}

uint64_t sub_18D3B9688(uint64_t a1, uint64_t a2)
{

  return protocol witness for static EnvironmentKey._valuesEqual(_:_:) in conformance OpenURLActionKey(a1, a2);
}

uint64_t _s7SwiftUI24AllowsVibrantBlendingKeyVAA011EnvironmentF0A2aDP12_valuesEqualySb5ValueQz_AHtFZTW_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = v2 == 2;
  v4 = *a2;
  if (v4 != 2)
  {
    v3 = 0;
  }

  v5 = v2 == 2 || v4 == 2;
  v6 = v2 ^ v4 ^ 1;
  if (v5)
  {
    v6 = v3;
  }

  return v6 & 1;
}

uint64_t sub_18D3B9724()
{

  return swift_deallocObject();
}

uint64_t sub_18D3B975C()
{

  return swift_deallocObject();
}

__n128 sub_18D3B97D0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

double sub_18D3B97E8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[3];
  v3 = type metadata accessor for _AnchorWritingModifier(255, a1[1], a1[2], a1[4]);
  v5 = type metadata accessor for ModifiedContent(255, v1, v3, v4);
  v7[0] = v2;
  v7[1] = &protocol witness table for _AnchorWritingModifier<A, B>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

uint64_t sub_18D3B985C()
{

  return swift_deallocObject();
}

uint64_t sub_18D3B98A8()
{

  return swift_deallocObject();
}

uint64_t sub_18D3B9928@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE028GestureAccessibilityProviderF033_9DF46B4E935FF03A55FF3DDFB0B1FF2BLLV_Tt2g5(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_18D3B996C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE028GestureAccessibilityProviderF033_9DF46B4E935FF03A55FF3DDFB0B1FF2BLLV_Tt2g5(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

double sub_18D3B99B0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  lazy protocol witness table accessor for type GloballySimultaneousGestureCombiner and conformance GloballySimultaneousGestureCombiner();
  v11[0] = v2;
  v11[1] = &type metadata for GloballySimultaneousGestureCombiner;
  v11[2] = v4;
  v11[3] = v5;
  v6 = type metadata accessor for AddGestureModifier(255, v11);
  v8 = type metadata accessor for ModifiedContent(255, v1, v6, v7);
  v10[0] = v3;
  v10[1] = &protocol witness table for AddGestureModifier<A, B>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v8, v10);
}

uint64_t sub_18D3B9A88@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 64))(*(a1 + a2 - 16));
  *a3 = result;
  a3[1] = v5;
  return result;
}

__int128 *_s7SwiftUI15SubviewsGesture33_9DF46B4E935FF03A55FF3DDFB0B1FF2BLLVwcp_0(__int128 *a1, __int128 *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t sub_18D3B9B3C()
{
  v3 = *(v0 + 256);
  v4 = *(v0 + 272);
  v2 = *(v0 + 224);
  outlined consume of ArrayWith2Inline<GestureDebug.Data>.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216), v2, *(&v2 + 1), *(v0 + 240), *(v0 + 248), v3, *(&v3 + 1), v4, *(&v4 + 1), *(v0 + 288), *(v0 + 296), *(v0 + 304));

  return swift_deallocObject();
}

double sub_18D3B9D2C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v5 = type metadata accessor for ModifiedContent(255, *a1, &type metadata for TextSuffixModifier, a4);
  v7[0] = v4;
  v7[1] = &protocol witness table for TextSuffixModifier;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

uint64_t sub_18D3B9D94(uint64_t *a1)
{

  return protocol witness for static PlatformItemsStrategy.makeContent(from:) in conformance UnaryPassthroughPlatformItemsStrategy(a1);
}

void _s7SwiftUI37MultiPassthroughPlatformItemsStrategyVAA0efG0A2aDP12defaultValue7ContentQzvgZTW_0(uint64_t a1@<X8>)
{
  *a1 = 1;
  *(a1 + 8) = 0;
  *(a1 + 16) = MEMORY[0x1E69E7CC0];
}

unint64_t _s7SwiftUI37MultiPassthroughPlatformItemsStrategyVAA0efG0A2aDP11makeContent4from14AttributeGraph08OptionalK0Vy0I0QzGAA12_ViewOutputsV_tFZTW_0(uint64_t *a1)
{
  result = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA13PlatformItemsV0I033_391C8788DFD73AA8AB21B496A57C73FFLLV_TtB5(*a1);
  if ((result & 0x100000000) != 0)
  {
    return *MEMORY[0x1E698D3F8];
  }

  else
  {
    return result;
  }
}

void _s7SwiftUI4TextV6LayoutV4LineVSkAASk5index_8offsetBy07limitedH05IndexQzSgAL_SiALtFTW_0(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *a4 = v5;
  *(a4 + 8) = v6 & 1;
}

void _s7SwiftUI4TextV6LayoutV3RunVSkAASk5index_8offsetBy07limitedH05IndexQzSgAL_SiALtFTW_0(CFIndex *a1@<X0>, uint64_t a2@<X1>, CFIndex *a3@<X2>, uint64_t a4@<X8>)
{
  specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *a4 = v5;
  *(a4 + 8) = v6 & 1;
}

uint64_t _s7SwiftUI4TextV6LayoutV8RunSliceVSkAASk5index_8offsetBy07limitedI05IndexQzSgAL_SiALtFTW_0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

unint64_t _s7SwiftUI4TextV6LayoutVSkAASk5index_8offsetBy07limitedG05IndexQzSgAJ_SiAJtFTW_0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

unint64_t _s7SwiftUI4TextV6LayoutVAAE11DecorationsV7SegmentVSkAASk5index_8offsetBy07limitedI05IndexQzSgAN_SiANtFTW_0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t _s7SwiftUI4TextV6LayoutVAAE11DecorationsVSkAASk5index_8offsetBy07limitedH05IndexQzSgAL_SiALtFTW_0@<X0>(uint64_t a4@<X8>)
{
  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)();
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t _s7SwiftUI4TextV6LayoutVAAE7ClusterVSkAASk5index_8offsetBy07limitedH05IndexQzSgAL_SiALtFTW_0@<X0>(uint64_t a4@<X8>)
{
  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)();
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

double sub_18D3BA110(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for _EnvironmentKeyTransformModifier<Text.Scale?>(255);
  v5 = type metadata accessor for ModifiedContent(255, v1, v3, v4);
  v7[0] = v2;
  v7[1] = &protocol witness table for _EnvironmentKeyTransformModifier<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

uint64_t sub_18D3BA17C()
{
  outlined consume of _Glass.Variant.Role(v0[2], v0[3]);
  outlined consume of _Glass.Variant.Role(v0[4], v0[5]);

  return swift_deallocObject();
}

uint64_t *_s7SwiftUI6_GlassV7VariantVwcp_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  outlined copy of _Glass.Variant.Role(*a2, v4);
  *a1 = v3;
  a1[1] = v4;
  return a1;
}

uint64_t *_s7SwiftUI6_GlassV7VariantVwta_0(uint64_t *a1, _OWORD *a2)
{
  v3 = *a1;
  v4 = a1[1];
  *a1 = *a2;
  outlined consume of _Glass.Variant.Role(v3, v4);
  return a1;
}

uint64_t _s7SwiftUI6_GlassV7VariantV2IDOwcp_0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  outlined copy of _Glass.Variant.ID(*a2, v4);
  *a1 = v3;
  *(a1 + 8) = v4;
  return a1;
}

uint64_t sub_18D3BA2A4()
{
  v1 = type metadata accessor for ContinuousClock.Instant();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_18D3BA338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ContinuousClock.Instant();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_18D3BA3F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ContinuousClock.Instant();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_18D3BA4AC()
{

  return swift_deallocObject();
}

__n128 protocol witness for PlatformItemRule.config.getter in conformance GlassEffectPlatformItemModifier.GlassPlatformItemRule@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 8);
  *(a1 + 16) = v2;
  result = *(v1 + 36);
  *(a1 + 28) = result;
  return result;
}

__n128 protocol witness for PlatformItemRule.config.setter in conformance GlassEffectPlatformItemModifier.GlassPlatformItemRule(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 8) = *a1;
  *(v1 + 24) = v2;
  result = *(a1 + 28);
  *(v1 + 36) = result;
  return result;
}

uint64_t sub_18D3BA5C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA11_ViewInputsVAAE021RequestsPlatformItemsF033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt2g5(*a1);
  *a2 = result & 1;
  return result;
}

_DWORD *sub_18D3BA608@<X0>(_DWORD *a2@<X8>)
{
  result = AGGraphGetValue();
  *a2 = *result;
  return result;
}

uint64_t sub_18D3BA6C0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 28);
  v3 = v2 == *MEMORY[0x1E698D3F8];
  if (v2 == *MEMORY[0x1E698D3F8])
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 4) = v3;
  return result;
}

uint64_t sub_18D3BA6E8(uint64_t result, uint64_t a2)
{
  if (*(result + 4))
  {
    v2 = MEMORY[0x1E698D3F8];
  }

  else
  {
    v2 = result;
  }

  *(a2 + 28) = *v2;
  return result;
}

double sub_18D3BA70C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[2];
  v6 = type metadata accessor for ChildrenPlatformItemModifier(255, a1[1], a1[3], a4);
  v8 = type metadata accessor for ModifiedContent(255, v4, v6, v7);
  v10[0] = v5;
  v10[1] = &protocol witness table for ChildrenPlatformItemModifier<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v8, v10);
}

uint64_t sub_18D3BA77C()
{
  v6 = *(v0 + 32);
  v7[0] = *(v0 + 16);
  v7[1] = v6;
  v1 = (type metadata accessor for PlatformItemsGenerator(0, v7) - 8);
  v2 = v0 + ((*(*v1 + 80) + 48) & ~*(*v1 + 80));

  v3 = v1[19];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v2 + v3, AssociatedTypeWitness);
  return swift_deallocObject();
}

double sub_18D3BA8B8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[2];
  v6 = type metadata accessor for _ContentShapeModifier(255, a1[1], a1[3], a4);
  v8 = type metadata accessor for ModifiedContent(255, v4, v6, v7);
  v10[0] = v5;
  v10[1] = &protocol witness table for _ContentShapeModifier<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v8, v10);
}

float sub_18D3BA984@<S0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 24);
  *a2 = *(a1 + 8);
  *(a2 + 16) = result;
  return result;
}

float sub_18D3BA998(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 16);
  *(a2 + 8) = *a1;
  *(a2 + 24) = result;
  return result;
}

uint64_t sub_18D3BA9AC@<X0>(__int128 *a1@<X0>, void *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v8 = *a1;
  result = EnvironmentValues.materialEffectContainerTintConfiguration.getter(&v7, a3, a4, a5);
  *a2 = v7;
  return result;
}

void sub_18D3BA9F0(uint64_t *a1)
{
  v1 = *a1;

  EnvironmentValues.materialEffectContainerTintConfiguration.setter(&v1);
}

double sub_18D3BAA2C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[2];
  v6 = type metadata accessor for _ContentShapeKindModifier(255, a1[1], a1[3], a4);
  v8 = type metadata accessor for ModifiedContent(255, v4, v6, v7);
  v10[0] = v5;
  v10[1] = &protocol witness table for _ContentShapeKindModifier<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v8, v10);
}

void *sub_18D3BAAA4@<X0>(_DWORD *a1@<X8>)
{
  result = AnimatableAttributeHelper.phase.getter(&v3);
  *a1 = v3;
  return result;
}

__n128 sub_18D3BAB24(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_18D3BAB30@<X0>(_DWORD *a1@<X8>)
{
  result = AnimatableAttributeHelper.$phase.getter();
  *a1 = result;
  return result;
}

double sub_18D3BAB90@<D0>(double *a1@<X8>)
{
  AnimatableAttributeHelper.time.getter(&v3);
  result = v3;
  *a1 = v3;
  return result;
}

uint64_t sub_18D3BAC10@<X0>(_DWORD *a1@<X8>)
{
  result = AnimatableAttributeHelper.$time.getter();
  *a1 = result;
  return result;
}

uint64_t sub_18D3BAC84@<X0>(_DWORD *a1@<X8>)
{
  result = AnimatableAttributeHelper.$transaction.getter();
  *a1 = result;
  return result;
}

double sub_18D3BACF8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[2];
  v6 = type metadata accessor for _AnimationModifier(255, a1[1], a1[3], a4);
  v8 = type metadata accessor for ModifiedContent(255, v4, v6, v7);
  v10[0] = v5;
  v10[1] = &protocol witness table for _AnimationModifier<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v8, v10);
}

uint64_t sub_18D3BAD84()
{

  return swift_deallocObject();
}

uint64_t _s7SwiftUI30RoundedRectangularShapeCornersV14AnimatableDataVs18AdditiveArithmeticAAsAFP2peoiyyxz_xtFZTW_0(_OWORD *a1)
{
  v1 = a1[5];
  v6[4] = a1[4];
  v6[5] = v1;
  v2 = a1[7];
  v6[6] = a1[6];
  v6[7] = v2;
  v3 = a1[1];
  v6[0] = *a1;
  v6[1] = v3;
  v4 = a1[3];
  v6[2] = a1[2];
  v6[3] = v4;
  return static ConcentricRectangle.Uniformity.+ infix(_:_:)(v6);
}

uint64_t _s7SwiftUI30RoundedRectangularShapeCornersV14AnimatableDataVs18AdditiveArithmeticAAsAFP2seoiyyxz_xtFZTW_0(_OWORD *a1)
{
  v1 = a1[5];
  v6[4] = a1[4];
  v6[5] = v1;
  v2 = a1[7];
  v6[6] = a1[6];
  v6[7] = v2;
  v3 = a1[1];
  v6[0] = *a1;
  v6[1] = v3;
  v4 = a1[3];
  v6[2] = a1[2];
  v6[3] = v4;
  return static ConcentricRectangle.Uniformity.- infix(_:_:)(v6);
}

__n128 sub_18D3BAE88@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v12 = a1[20];
  v13 = a1[21];
  v14 = a1[22];
  v15 = a1[23];
  v8 = a1[16];
  v9 = a1[17];
  v10 = a1[18];
  v11 = a1[19];
  RoundedRectangularShapeCorners.animatableData.getter(v16);
  v3 = v16[5];
  a2[12] = v16[4];
  a2[13] = v3;
  v4 = v16[7];
  a2[14] = v16[6];
  a2[15] = v4;
  v5 = v16[1];
  a2[8] = v16[0];
  a2[9] = v5;
  v6 = v16[3];
  a2[10] = v16[2];
  a2[11] = v6;
  a2[4] = v12;
  a2[5] = v13;
  a2[6] = v14;
  a2[7] = v15;
  *a2 = v8;
  a2[1] = v9;
  result = v10;
  a2[2] = v10;
  a2[3] = v11;
  return result;
}

double *sub_18D3BAF28(double *a1, _OWORD *a2)
{
  v2 = *(a1 + 5);
  a2[20] = *(a1 + 4);
  a2[21] = v2;
  v3 = *(a1 + 7);
  a2[22] = *(a1 + 6);
  a2[23] = v3;
  v4 = *(a1 + 1);
  a2[16] = *a1;
  a2[17] = v4;
  v5 = *(a1 + 3);
  a2[18] = *(a1 + 2);
  a2[19] = v5;
  return RoundedRectangularShapeCorners.animatableData.setter(a1 + 16);
}

double sub_18D3BAF70@<D0>(_OWORD *a1@<X8>)
{
  RoundedRectangularShapeCorners.animatableData.getter(v7);
  v2 = v11;
  a1[4] = v10;
  a1[5] = v2;
  v3 = v13;
  a1[6] = v12;
  a1[7] = v3;
  v4 = v7[1];
  *a1 = v7[0];
  a1[1] = v4;
  result = *&v8;
  v6 = v9;
  a1[2] = v8;
  a1[3] = v6;
  return result;
}

uint64_t _s7SwiftUI30RoundedRectangularShapeCornersV14AnimatableDataVwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s7SwiftUI30RoundedRectangularShapeCornersV14AnimatableDataVwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 128) = v3;
  return result;
}

double sub_18D3BB054(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[2];
  v6 = type metadata accessor for _ContainerRoundedRectangularShapeModifier(255, a1[1], a1[3], a4);
  v8 = type metadata accessor for ModifiedContent(255, v4, v6, v7);
  v10[0] = v5;
  v10[1] = &protocol witness table for _ContainerRoundedRectangularShapeModifier<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v8, v10);
}

void sub_18D3BB110(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(a1 + 16);
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

_DWORD *sub_18D3BB18C(_DWORD *result, uint64_t a2)
{
  *(a2 + 24) = *result;
  v2 = *(a2 + 32);
  if ((v2 & 0x40) == 0)
  {
    *(a2 + 32) = v2 | 0x40;
  }

  return result;
}

double _s7SwiftUI19CustomColorProviderVyxGAA0dE0A2aEP10resolveHDR2inAA0D0VAAE08ResolvedG0VAA17EnvironmentValuesV_tFTW_0@<D0>(uint64_t a1@<X8>, __int128 *a2@<X0>, uint64_t a3@<X2>)
{
  ColorProvider.resolveHDR(in:)(a2, a3, &v5);
  result = *&v5;
  *a1 = v5;
  *(a1 + 16) = v6;
  return result;
}

__n128 sub_18D3BB294(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_18D3BB2A0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[2];
  v6 = type metadata accessor for _BindingActionModifier(255, a1[1], a1[3], a4);
  v8 = type metadata accessor for ModifiedContent(255, v4, v6, v7);
  v10[0] = v5;
  v10[1] = &protocol witness table for _BindingActionModifier<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v8, v10);
}

uint64_t sub_18D3BB310()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_18D3BB3CC()
{

  return swift_deallocObject();
}

__n128 sub_18D3BB520(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_18D3BB684(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[2];
  v6 = type metadata accessor for _ValueActionModifier2(255, a1[1], a1[3], a4);
  v8 = type metadata accessor for ModifiedContent(255, v4, v6, v7);
  v10 = type metadata accessor for ModifiedContent(255, v8, &type metadata for _AppearanceActionModifier, v9);
  v15[0] = v5;
  v15[1] = &protocol witness table for _ValueActionModifier2<A>;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v8, v15);
  v14[0] = v12;
  v14[1] = &protocol witness table for _AppearanceActionModifier;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v10, v14, WitnessTable);
}

uint64_t sub_18D3BB758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(type metadata accessor for _ValueActionModifier3(0, v5, *(v4 + 24), a4) - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = v7 + *(v6 + 64);
  v9 = *(v5 - 8);
  v10 = *(v9 + 8);
  v11 = (v8 + *(v9 + 80)) & ~*(v9 + 80);
  v10(v4 + v7, v5);

  v10(v4 + v11, v5);

  return swift_deallocObject();
}

uint64_t sub_18D3BB894()
{

  return swift_deallocObject();
}

void sub_18D3BB8E8(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationS033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0g5(*a1);
  if (v3)
  {
  }

  *a2 = v3;
}

void *sub_18D3BB924@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA018DisablesAnimationsS033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0g5(*a1);
  if (result)
  {
    v4 = *(result + 72);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_18D3BB98C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA026DisablesContentTransitionsF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_18D3BBA44@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  *a2 = result;
  return result;
}

__n128 sub_18D3BBB10(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

void *sub_18D3BBB1C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  result = Array<A>.animatableData.getter(*a1, *(a2 + a3 - 16), *(a2 + a3 - 8), &v6);
  *a4 = v6;
  return result;
}

__n128 sub_18D3BBB70(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

__n128 sub_18D3BBBE4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_18D3BBD38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for ScalePulseModifier(0, v5, *(v4 + 24), a4) - 8);
  v7 = v4 + ((*(*v6 + 80) + 32) & ~*(*v6 + 80));
  v8 = *(*(v5 - 8) + 8);
  v8(v7, v5);
  v8(v7 + v6[11], v5);

  return swift_deallocObject();
}

double sub_18D3BBE4C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = type metadata accessor for ScalePulseModifier(255, *a1, v5, a4);
  swift_getWitnessTable(protocol conformance descriptor for ScalePulseModifier<A>, v6);
  v9 = type metadata accessor for _ViewModifier_Content(255, v6, v7, v8);
  v11 = type metadata accessor for ModifiedContent(255, v9, &type metadata for ScalePulseEffect, v10);
  v13 = type metadata accessor for ModifiedContent(255, v11, &type metadata for ScalePulseEffect, v12);
  v15 = type metadata accessor for ModifiedContent(255, v13, &type metadata for ScalePulseEffect, v14);
  v17 = type metadata accessor for ModifiedContent(255, v15, &type metadata for ScalePulseEffect, v16);
  v19 = type metadata accessor for ModifiedContent(255, v17, &type metadata for _BlurEffect, v18);
  v21 = type metadata accessor for ScheduledAnimationModifier(255, v4, v5, v20);
  v23 = type metadata accessor for ModifiedContent(255, v19, v21, v22);
  v43[0] = &protocol witness table for _ViewModifier_Content<A>;
  v43[1] = &protocol witness table for ScalePulseEffect;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v11, v43);
  v42[0] = v25;
  v42[1] = &protocol witness table for ScalePulseEffect;
  v26 = swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v13, v42, WitnessTable);
  v41[0] = v27;
  v41[1] = &protocol witness table for ScalePulseEffect;
  v28 = swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v15, v41, v26);
  v40[0] = v29;
  v40[1] = &protocol witness table for ScalePulseEffect;
  v30 = swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v17, v40, v28);
  v39[0] = v31;
  v39[1] = &protocol witness table for _BlurEffect;
  v32 = swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v19, v39, v30);
  v34 = v33;
  v35 = swift_getWitnessTable(protocol conformance descriptor for ScheduledAnimationModifier<A>, v21, v32);
  v38[0] = v34;
  v38[1] = v36;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v23, v38, v35);
}

uint64_t _s7SwiftUI7AnyViewVAA07DynamicD0A2aDP6makeID0G0QzyFZTW_0@<X0>(uint64_t *a2@<X8>)
{
  result = AGMakeUniqueID();
  *a2 = result;
  return result;
}

uint64_t _s7SwiftUI15DynamicViewList031_3FB6ABB0477B815AB3C89DD5EDC9F0M0LLV10WrappedIDsVyx_GSlAASl5index_8offsetBy5IndexQzAK_SitFTW_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7.n128_f64[0] = swift_getWitnessTable(protocol conformance descriptor for DynamicViewList<A>.WrappedIDs, a3);
  v8 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69830](a1, a2, a3, v6, v8, v7);
}

uint64_t _s7SwiftUI15DynamicViewList031_3FB6ABB0477B815AB3C89DD5EDC9F0M0LLV10WrappedIDsVyx_GSlAASl5index_8offsetBy07limitedR05IndexQzSgAL_SiALtFTW_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getWitnessTable(protocol conformance descriptor for DynamicViewList<A>.WrappedIDs, a4);

  return RandomAccessCollection.index(_:offsetBy:limitedBy:)();
}

uint64_t _s7SwiftUI15DynamicViewList031_3FB6ABB0477B815AB3C89DD5EDC9F0M0LLV10WrappedIDsVyx_GSlAASl8distance4from2toSi5IndexQz_ALtFTW_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7.n128_f64[0] = swift_getWitnessTable(protocol conformance descriptor for DynamicViewList<A>.WrappedIDs, a3);
  v8 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69840](a1, a2, a3, v6, v8, v7);
}

uint64_t sub_18D3BC1EC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_18D3BC224@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_18D3BC274(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_18D3BC2CC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 40);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_18D3BC31C(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 40) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_18D3BC374()
{

  return swift_deallocObject();
}

__n128 sub_18D3BC3C0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_18D3BC3CC()
{

  return swift_deallocObject();
}

double sub_18D3BC408@<D0>(double *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_18D3BC43C@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 8);
  *a2 = result;
  return result;
}

double sub_18D3BC470@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 16);
  *a2 = result;
  return result;
}

double sub_18D3BC4A4@<D0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = (a1 + 16);
  if (*a2)
  {
    v3 = (a1 + 40);
  }

  result = *v3;
  v5 = vdup_n_s32(*a2);
  v6.i64[0] = v5.u32[0];
  v6.i64[1] = v5.u32[1];
  *a3 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v6, 0x3FuLL)), *(a1 + 24), *a1);
  *(a3 + 16) = result;
  return result;
}

void *sub_18D3BC4E4(void *result, uint64_t a2, _BYTE *a3)
{
  v3 = result[1];
  v4 = result[2];
  v5 = *a3 == 0;
  v6 = 24;
  if (!*a3)
  {
    v6 = 0;
  }

  v7 = 8;
  if (*a3)
  {
    v7 = 32;
  }

  *(a2 + v6) = *result;
  v8 = 40;
  if (v5)
  {
    v8 = 16;
  }

  *(a2 + v7) = v3;
  *(a2 + v8) = v4;
  return result;
}

double sub_18D3BC534@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 8);
  v3 = *(a1 + 32);
  *a2 = result;
  *(a2 + 8) = v3;
  return result;
}

double sub_18D3BC56C@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 24);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

double sub_18D3BC5A4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 16);
  v3 = *(a1 + 40);
  *a2 = result;
  *(a2 + 8) = v3;
  return result;
}

_BYTE *sub_18D3BC5F8(_BYTE *result, uint64_t a2)
{
  if (*result)
  {
    v2 = 4096;
  }

  else
  {
    v2 = 0;
  }

  *(a2 + 36) = *(a2 + 36) & 0xFFFFEFFF | v2;
  return result;
}

_BYTE *sub_18D3BC62C(_BYTE *result, uint64_t a2)
{
  if (*result)
  {
    v2 = 4096;
  }

  else
  {
    v2 = 0;
  }

  *(a2 + 36) = *(a2 + 36) & 0xFFFFEFFF | v2;
  return result;
}

uint64_t sub_18D3BC6A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _s10Foundation4DateVSgMaTm_3(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

void sub_18D3BC7A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  _s10Foundation4DateVSgMaTm_3(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }
}

uint64_t sub_18D3BC888()
{
  outlined consume of ResolvableCLKTextProvider.FontStorage(*(v0 + 32), *(v0 + 40));
  outlined consume of ResolvableCLKTextProvider.FontStorage(*(v0 + 48), *(v0 + 56));

  return swift_deallocObject();
}

__n128 sub_18D3BC8EC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_18D3BC8F8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[2];
  v6 = type metadata accessor for LayoutGestureModifier(255, a1[1], a1[3], a4);
  v8 = type metadata accessor for ModifiedContent(255, v4, v6, v7);
  v10[0] = v5;
  v10[1] = &protocol witness table for LayoutGestureModifier<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v8, v10);
}

uint64_t sub_18D3BC968()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_18D3BC9A0()
{

  return swift_deallocObject();
}

uint64_t sub_18D3BC9D8()
{

  return swift_deallocObject();
}

uint64_t sub_18D3BCA20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Text.Style(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32) + 40);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_18D3BCAE0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Text.Style(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32) + 40) = (a2 - 1);
  }

  return result;
}

unint64_t *_s7SwiftUI4TextV5StyleV0cD5ColorOwcp_0(unint64_t *a1, unint64_t *a2)
{
  v3 = *a2;
  outlined copy of Text.Style.TextStyleColor(*a2);
  *a1 = v3;
  return a1;
}

uint64_t sub_18D3BCBD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Text.Style(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_18D3BCC94(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Text.Style(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_18D3BCD50@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = type metadata accessor for ResolvableTimer(0);
  *a2 = *(a1 + *(result + 28));
  return result;
}

uint64_t sub_18D3BCD88(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for ResolvableTimer(0);
  *(a2 + *(result + 28)) = v3;
  return result;
}

uint64_t sub_18D3BCDBC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for DateInterval();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 254)
  {
    v11 = *(a1 + a3[6]);
    if (v11 >= 2)
    {
      return ((v11 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v13 = type metadata accessor for Calendar();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[8];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  v16 = type metadata accessor for Locale();
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[9];
    goto LABEL_11;
  }

  v17 = type metadata accessor for TimeZone();
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[10];

  return v18(v19, a2, v17);
}

uint64_t sub_18D3BCF84(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for DateInterval();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 254)
  {
    *(a1 + a4[6]) = a2 + 1;
    return result;
  }

  v13 = type metadata accessor for Calendar();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[8];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = type metadata accessor for Locale();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[9];
    goto LABEL_9;
  }

  v17 = type metadata accessor for TimeZone();
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[10];

  return v18(v19, a2, a2, v17);
}

uint64_t _s7SwiftUI30LazyPreferencePrefetchSubviews33_EB2336F1CBB87914F55D10FF4F9B475ALLVwta_0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t sub_18D3BD218(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(0, &lazy cache variable for type metadata for (pauseDate: Date), MEMORY[0x1E6969530]);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18D3BD2A0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(0, &lazy cache variable for type metadata for (pauseDate: Date), MEMORY[0x1E6969530]);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

double sub_18D3BD368@<D0>(double *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_18D3BD374(double *a1, void *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_18D3BD380@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  CornerMaskingConfiguration.animatableData.getter(v8);
  *a2 = v3;
  v4 = v8[3];
  *(a2 + 40) = v8[2];
  *(a2 + 56) = v4;
  v5 = v8[5];
  *(a2 + 72) = v8[4];
  *(a2 + 88) = v5;
  result = *v8;
  v7 = v8[1];
  *(a2 + 8) = v8[0];
  *(a2 + 24) = v7;
  return result;
}

uint64_t sub_18D3BD3E8(double *a1, uint64_t a2, __n128 a3)
{
  v3 = *a1;
  *(a2 + 8) = *a1;
  *a2 = v3 == 1.0;
  return CornerMaskingConfiguration.animatableData.setter(a1 + 1);
}

double sub_18D3BD42C@<D0>(_OWORD *a1@<X8>)
{
  CornerMaskingConfiguration.animatableData.getter(v6);
  v2 = v6[3];
  a1[2] = v6[2];
  a1[3] = v2;
  v3 = v6[5];
  a1[4] = v6[4];
  a1[5] = v3;
  result = *v6;
  v5 = v6[1];
  *a1 = v6[0];
  a1[1] = v5;
  return result;
}

double *sub_18D3BD4A0(double *result, uint64_t a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = *(result + 2);
  *(a2 + 16) = *result;
  *(a2 + 24) = v3;
  *(a2 + 48) = v4;
  v5 = v2;
  if (v3 == 1.0)
  {
    v5 = 0;
  }

  *a2 = v5;
  *(a2 + 8) = v3 == 1.0;
  *(a2 + 32) = v4;
  *(a2 + 40) = 0;
  return result;
}

__n128 sub_18D3BD568(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

double sub_18D3BD5AC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[2];
  v3 = type metadata accessor for _CornerConfigurationToRoundedRectangularShape(255, a1[1], a1[3], a1[4]);
  swift_getWitnessTable(protocol conformance descriptor for _CornerConfigurationToRoundedRectangularShape<A>, v3);
  v6 = type metadata accessor for _ContainerRoundedRectangularShapeModifier(255, v3, v4, v5);
  v8 = type metadata accessor for ModifiedContent(255, v1, v6, v7);
  v10[0] = v2;
  v10[1] = &protocol witness table for _ContainerRoundedRectangularShapeModifier<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v8, v10);
}

double sub_18D3BD724(uint64_t *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v18 = *a1;
  v1 = v18;
  v19 = v2;
  v20 = v3;
  v21 = v4;
  v5 = type metadata accessor for PhaseAnimator.EmptyPhasesView(255, &v18);
  v7 = type metadata accessor for ModifiedContent(255, v5, &type metadata for _AppearanceActionModifier, v6);
  v18 = v1;
  v19 = v2;
  v20 = v3;
  v21 = v4;
  v8 = type metadata accessor for PhaseAnimator.StateTransitioningContainer(255, &v18);
  v10 = type metadata accessor for _ConditionalContent(255, v7, v8, v9);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for PhaseAnimator<A, B>.EmptyPhasesView, v5);
  v17[0] = v12;
  v17[1] = &protocol witness table for _AppearanceActionModifier;
  v13 = swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v7, v17, WitnessTable);
  v16[0] = v14;
  v16[1] = &protocol witness table for PhaseAnimator<A, B>.StateTransitioningContainer;
  return swift_getWitnessTable(protocol conformance descriptor for <> _ConditionalContent<A, B>, v10, v16, v13);
}

double sub_18D3BD82C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[9];
  v13 = a1[1];
  v14 = v2;
  v15 = v4;
  v16 = v5;
  v6 = type metadata accessor for PhaseAnimator(255, &v13);
  swift_getWitnessTable(protocol conformance descriptor for PhaseAnimator<A, B>, v6);
  v13 = v1;
  v14 = v6;
  v15 = v3;
  v16 = v7;
  v8 = type metadata accessor for CustomModifier(255, &v13);
  v10 = type metadata accessor for ModifiedContent(255, v1, v8, v9);
  v12[0] = v3;
  v12[1] = &protocol witness table for CustomModifier<A, B>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v10, v12);
}

double sub_18D3BD8EC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[3];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[7];
  v13 = a1[1];
  v14 = v2;
  v15 = v4;
  v16 = v5;
  v6 = type metadata accessor for PhaseAnimator(255, &v13);
  swift_getWitnessTable(protocol conformance descriptor for PhaseAnimator<A, B>, v6);
  v13 = v1;
  v14 = v6;
  v15 = v3;
  v16 = v7;
  v8 = type metadata accessor for CustomModifier(255, &v13);
  v10 = type metadata accessor for ModifiedContent(255, v1, v8, v9);
  v12[0] = v3;
  v12[1] = &protocol witness table for CustomModifier<A, B>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v10, v12);
}

uint64_t sub_18D3BD9AC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_18D3BD9E4()
{

  return swift_deallocObject();
}

uint64_t sub_18D3BDA24()
{

  return swift_deallocObject();
}

uint64_t sub_18D3BDA5C()
{

  return swift_deallocObject();
}

uint64_t sub_18D3BDA98()
{

  return swift_deallocObject();
}

void _s7SwiftUI23LayoutGestureChildProxyVSkAASk5index_8offsetBy07limitedI05IndexQzSgAH_SiAHtFTW_0(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *a4 = v5;
  *(a4 + 8) = v6 & 1;
}

uint64_t _s7SwiftUI23LayoutGestureChildProxyVSlAASl5countSivgTW_0()
{
  v1 = *v0;
  swift_beginAccess();
  return *(*(v1 + 160) + 16);
}

uint64_t sub_18D3BDB9C()
{
  v3 = *(v0 + 256);
  v4 = *(v0 + 272);
  v2 = *(v0 + 224);
  outlined consume of ArrayWith2Inline<GestureDebug.Data>.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216), v2, *(&v2 + 1), *(v0 + 240), *(v0 + 248), v3, *(&v3 + 1), v4, *(&v4 + 1), *(v0 + 288), *(v0 + 296), *(v0 + 304));

  return swift_deallocObject();
}

double sub_18D3BDC48(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v5 = type metadata accessor for ModifiedContent(255, *a1, &type metadata for TapGestureModifier, a4);
  v7[0] = v4;
  v7[1] = &protocol witness table for TapGestureModifier;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

double sub_18D3BDCAC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = type metadata accessor for EventFilter(255, *a1, a3, a4);
  type metadata accessor for ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture>(255);
  v8 = v7;
  lazy protocol witness table accessor for type ModifierGesture<RepeatGesture<TappableEvent>, SingleTapGesture<TappableEvent>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture>, protocol conformance descriptor for ModifierGesture<A, B>);
  v48 = v4;
  v49 = v8;
  v50 = v4;
  v51 = v9;
  v10 = type metadata accessor for Map2Gesture(255, &v48);
  type metadata accessor for ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>>(255);
  v12 = v11;
  lazy protocol witness table accessor for type ModifierGesture<RepeatGesture<TappableEvent>, SingleTapGesture<TappableEvent>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>>, protocol conformance descriptor for ModifierGesture<A, B>);
  v48 = v4;
  v49 = v12;
  v50 = v4;
  v51 = v13;
  v14 = type metadata accessor for Map2Gesture(255, &v48);
  v17 = type metadata accessor for DependentGesture(255, v4, v15, v16);
  v19 = type metadata accessor for MapGesture(255, v4, v4, v18);
  v21 = type metadata accessor for EventListener(255, v4, *(v5 + 8), v20);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for MapGesture<A, B>, v19);
  v24 = v23;
  swift_getWitnessTable(protocol conformance descriptor for EventListener<A>, v21, WitnessTable);
  v48 = v19;
  v49 = v21;
  v50 = v24;
  v51 = v25;
  v26 = type metadata accessor for ModifierGesture(255, &v48);
  v27 = swift_getWitnessTable(protocol conformance descriptor for DependentGesture<A>, v17);
  v29 = v28;
  swift_getWitnessTable(protocol conformance descriptor for ModifierGesture<A, B>, v26, v27);
  v48 = v17;
  v49 = v26;
  v50 = v29;
  v51 = v30;
  v31 = type metadata accessor for ModifierGesture(255, &v48);
  v32 = swift_getWitnessTable(protocol conformance descriptor for Map2Gesture<A, B, C>, v14);
  v34 = v33;
  swift_getWitnessTable(protocol conformance descriptor for ModifierGesture<A, B>, v31, v32);
  v48 = v14;
  v49 = v31;
  v50 = v34;
  v51 = v35;
  v36 = type metadata accessor for ModifierGesture(255, &v48);
  v37 = swift_getWitnessTable(protocol conformance descriptor for Map2Gesture<A, B, C>, v10);
  v39 = v38;
  swift_getWitnessTable(protocol conformance descriptor for ModifierGesture<A, B>, v36, v37);
  v48 = v10;
  v49 = v36;
  v50 = v39;
  v51 = v40;
  v41 = type metadata accessor for ModifierGesture(255, &v48);
  v42 = swift_getWitnessTable(protocol conformance descriptor for EventFilter<A>, v6);
  v44 = v43;
  swift_getWitnessTable(protocol conformance descriptor for ModifierGesture<A, B>, v41, v42);
  v48 = v6;
  v49 = v41;
  v50 = v44;
  v51 = v45;
  v46 = type metadata accessor for ModifierGesture(255, &v48);
  return swift_getWitnessTable(protocol conformance descriptor for ModifierGesture<A, B>, v46);
}

uint64_t sub_18D3BDF38()
{

  return swift_deallocObject();
}

double sub_18D3BDF88(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v5 = type metadata accessor for ModifiedContent(255, *a1, &type metadata for DisableContainerContextStylingModifier, a4);
  v7[0] = v4;
  v7[1] = &protocol witness table for DisableContainerContextStylingModifier;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

double sub_18D3BDFFC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v5 = type metadata accessor for ModifiedContent(255, *a1, &type metadata for MaterialEffect, a4);
  v7[0] = v4;
  v7[1] = &protocol witness table for MaterialEffect;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

double sub_18D3BE068(uint64_t *a1)
{
  v1 = type metadata accessor for ArrayKeyframeTrackContent(255, *a1, a1[1], a1[2]);

  return swift_getWitnessTable(protocol conformance descriptor for ArrayKeyframeTrackContent<A, B>, v1);
}

double sub_18D3BE0B4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = v1;
  v3 = type metadata accessor for MergedKeyframeTrackContent(255, v5);
  return swift_getWitnessTable(protocol conformance descriptor for MergedKeyframeTrackContent<A, B, C>, v3);
}

double sub_18D3BE108(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for EmptyKeyframeTrackContent(255, *a1, a1[1], a4);

  return swift_getWitnessTable(protocol conformance descriptor for EmptyKeyframeTrackContent<A>, v4);
}

uint64_t sub_18D3BE170@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE033ContentShapeAccessibilityProviderF033_8830DB57DA6E30576C7025120AC232CCLLV_Tt2g5(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_18D3BE1B4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE033ContentShapeAccessibilityProviderF033_8830DB57DA6E30576C7025120AC232CCLLV_Tt2g5(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

double sub_18D3BE210(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  type metadata accessor for _EnvironmentKeyTransformModifier<ParagraphTypesetting>(255, a2, a3, a4);
  v8 = type metadata accessor for ModifiedContent(255, v4, v6, v7);
  v10[0] = v5;
  v10[1] = &protocol witness table for _EnvironmentKeyTransformModifier<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v8, v10);
}

uint64_t sub_18D3BE27C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ClosedRange<Date>(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_18D3BE348(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for ClosedRange<Date>(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }
}

uint64_t sub_18D3BE400(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for DateInterval();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for Calendar();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = type metadata accessor for Locale();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = type metadata accessor for TimeZone();
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_18D3BE588(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for DateInterval();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for Calendar();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = type metadata accessor for Locale();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = type metadata accessor for TimeZone();
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_18D3BE71C(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v8 = type metadata accessor for Calendar();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = type metadata accessor for Locale();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = type metadata accessor for TimeZone();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[7];

  return v15(v16, a2, v14);
}

uint64_t sub_18D3BE880(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = -a2;
    return result;
  }

  v8 = type metadata accessor for Calendar();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = type metadata accessor for Locale();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = type metadata accessor for TimeZone();
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[7];

  return v15(v16, a2, a2, v14);
}

double sub_18D3BE9F0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  type metadata accessor for _TraitWritingModifier<LayoutPriorityTraitKey>(255, a2, a3, a4);
  v8 = type metadata accessor for ModifiedContent(255, v4, v6, v7);
  v10[0] = v5;
  v10[1] = &protocol witness table for _TraitWritingModifier<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v8, v10);
}

uint64_t sub_18D3BEA5C@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = a1[1];
  v6[0] = *a1;
  v6[1] = v2;
  v7 = a1[2];
  v3 = v7;
  *a2 = v6[0];
  a2[1] = v2;
  a2[2] = v3;
  return outlined init with copy of _GraphInputs(v6, &v5);
}

double sub_18D3BEA9C(__int128 *a1, _OWORD *a2)
{
  v3 = a1[1];
  v8 = *a1;
  v9 = v3;
  v10 = a1[2];
  v4 = a2[1];
  v11[0] = *a2;
  v11[1] = v4;
  v11[2] = a2[2];
  outlined init with copy of DSLGraphInputs(&v8, &v7);
  outlined destroy of _GraphInputs(v11);
  v5 = v9;
  *a2 = v8;
  a2[1] = v5;
  result = *&v10;
  a2[2] = v10;
  return result;
}

void sub_18D3BEB08(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(a1 + 16);
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_18D3BEB54@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE026ImageAccessibilityProviderF033_850D6677B8CDB42F6FE21E92D1B9BAE5LLV_Tt2g5(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_18D3BEB98@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE026ImageAccessibilityProviderF033_850D6677B8CDB42F6FE21E92D1B9BAE5LLV_Tt2g5(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_18D3BEBDC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  result = specialized EnvironmentValues.subscript.getter(*(a1 + a2 - 16), a1, a2, a3);
  *a4 = result;
  return result;
}

double sub_18D3BEC3C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[2];
  v3 = type metadata accessor for Optional();
  v6 = type metadata accessor for _EnvironmentKeyWritingModifier(255, v3, v4, v5);
  v8 = type metadata accessor for ModifiedContent(255, v1, v6, v7);
  v10[0] = v2;
  v10[1] = &protocol witness table for _EnvironmentKeyWritingModifier<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v8, v10);
}

__n128 sub_18D3BED34(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

double sub_18D3BEDBC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[2];
  v3 = type metadata accessor for _PreferenceActionModifier(255, a1[1], a1[3], a1[4]);
  v5 = type metadata accessor for ModifiedContent(255, v1, v3, v4);
  v7[0] = v2;
  v7[1] = &protocol witness table for _PreferenceActionModifier<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

uint64_t sub_18D3BEE30()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);

  return swift_deallocObject();
}

double sub_18D3BEF4C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  type metadata accessor for _EnvironmentKeyWritingModifier<Prominence>(255, a2, a3, a4);
  v8 = type metadata accessor for ModifiedContent(255, v4, v6, v7);
  type metadata accessor for EnvironmentPropertyKey<HeaderProminenceKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<HeaderProminenceKey>, &protocol witness table for HeaderProminenceKey, type metadata accessor for _TraitWritingModifier);
  v11 = type metadata accessor for ModifiedContent(255, v8, v9, v10);
  v16[0] = v5;
  v16[1] = &protocol witness table for _EnvironmentKeyWritingModifier<A>;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v8, v16);
  v15[0] = v13;
  v15[1] = &protocol witness table for _TraitWritingModifier<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v11, v15, WitnessTable);
}

uint64_t sub_18D3BF02C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for ScheduledAnimationModifier(0, v5, *(v4 + 24), a4) - 8);
  v7 = v4 + ((*(*v6 + 80) + 32) & ~*(*v6 + 80));
  v8 = *(*(v5 - 8) + 8);
  v8(v7, v5);
  v8(v7 + v6[11], v5);

  return swift_deallocObject();
}

uint64_t sub_18D3BF158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 32);
  v6 = (type metadata accessor for ScheduledAnimationModifier(0, v5, *(v4 + 40), a4) - 8);
  v7 = (*(*v6 + 80) + 48) & ~*(*v6 + 80);
  swift_unknownObjectRelease();
  v8 = *(*(v5 - 8) + 8);
  v8(v4 + v7, v5);
  v8(v4 + v7 + v6[11], v5);

  return swift_deallocObject();
}

double sub_18D3BF28C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = type metadata accessor for ScheduledAnimationModifier(255, *a1, v5, a4);
  swift_getWitnessTable(protocol conformance descriptor for ScheduledAnimationModifier<A>, v6);
  v9 = type metadata accessor for _ViewModifier_Content(255, v6, v7, v8);
  v11 = type metadata accessor for _ValueActionModifier2(255, v4, v5, v10);
  v13 = type metadata accessor for ModifiedContent(255, v9, v11, v12);
  v15[0] = &protocol witness table for _ViewModifier_Content<A>;
  v15[1] = &protocol witness table for _ValueActionModifier2<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v13, v15);
}

void sub_18D3BF3A0(int *a1)
{
  v1 = *a1;
  swift_beginAccess();
  static _ViewDebug.properties = v1;
}

void sub_18D3BF434(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  static _ViewDebug.isInitialized = v1;
}

uint64_t sub_18D3BF47C()
{

  return swift_deallocObject();
}

__n128 sub_18D3BF520(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_18D3BF594(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[2];
  v6 = type metadata accessor for _BackdropEffect(255, a1[1], a1[3], a4);
  v8 = type metadata accessor for ModifiedContent(255, v4, v6, v7);
  v10[0] = v5;
  v10[1] = &protocol witness table for _BackdropEffect<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v8, v10);
}

__n128 sub_18D3BF640(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

__n128 sub_18D3BF6B8(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_18D3BF718(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = type metadata accessor for AnimationContext(0, *(a3 + a4 - 16), *(a3 + a4 - 8), a4);
  return AnimationContext.finishingDefinition.setter(v4, v5, v6);
}

__n128 sub_18D3BF770(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_18D3BF77C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v5 = type metadata accessor for ModifiedContent(255, *a1, &unk_1F00A85F8, a4);
  v7[0] = v4;
  v7[1] = &protocol witness table for UnanimatableModifier;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

float sub_18D3BF7F8@<S0>(float32x4_t *a1@<X8>)
{
  MeshGradient._Paint.animatableData.getter(v4);
  result = v5;
  v3 = v4[1];
  *a1 = v4[0];
  a1[1] = v3;
  a1[2].f32[0] = result;
  return result;
}

uint64_t sub_18D3BF84C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA17IsInLazyContainerV_Tt0g5(*a1);
  if (result)
  {
    v4 = *(result + 72);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_18D3BF8B4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA17IsInLazyContainerV_Tt0g5(*a1);
  if (result)
  {
    v4 = *(result + 72);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_18D3BF91C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA17IsInLazyContainerV_Tt0g5(*a1);
  if (result)
  {
    v4 = *(result + 72);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_18D3BF984@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA28DisableNavigationDestinationV_Tt2g5(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_18D3BF9F4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA28DisableNavigationDestinationV_Tt2g5(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_18D3BFA64@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA28DisableNavigationDestinationV_Tt2g5(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_18D3BFC2C(int *a1, int *a2)
{

  return protocol witness for static PropertyKey.valuesEqual(_:_:) in conformance _GraphInputs.ScrollPositionKey(a1, a2);
}

__n128 sub_18D3BFD3C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_18D3BFDD0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v5 = type metadata accessor for ModifiedContent(255, *a1, &type metadata for VerticalStackOrientationModifier, a4);
  v7[0] = v4;
  v7[1] = &protocol witness table for VerticalStackOrientationModifier;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

uint64_t sub_18D3BFE50@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t x8_0@<X8>)
{
  v6 = *(a2 + a3 - 16);
  v7 = *(a2 + a3 - 8);
  v8 = type metadata accessor for ModifiedContent(0, *(a2 + a3 - 32), *(a2 + a3 - 24), a4);
  return ModifiedContent<>.animatableData.getter(v8, v6, v7, x8_0);
}

uint64_t sub_18D3BFEA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  v6 = *(a3 + a4 - 8);
  v7 = type metadata accessor for ModifiedContent(0, *(a3 + a4 - 32), *(a3 + a4 - 24), a4);
  return specialized ModifiedContent<>.animatableData.setter(a1, v7, v5, v6);
}

__n128 sub_18D3BFF00(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

double sub_18D3BFFAC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  type metadata accessor for _EnvironmentKeyTransformModifier<SymbolVariants>(255, a2, a3, a4);
  v8 = type metadata accessor for ModifiedContent(255, v4, v6, v7);
  v10[0] = v5;
  v10[1] = &protocol witness table for _EnvironmentKeyTransformModifier<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v8, v10);
}

double sub_18D3C002C(_OWORD *a1)
{
  v1 = a1[1];
  v4[0] = *a1;
  v4[1] = v1;
  v2 = type metadata accessor for AppearanceAnimationView(255, v4);
  return swift_getWitnessTable(protocol conformance descriptor for AppearanceAnimationView<A, B>, v2);
}

double sub_18D3C0078(uint64_t *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v16 = *a1;
  v1 = v16;
  v17 = v2;
  v18 = v3;
  v19 = v4;
  v5 = type metadata accessor for AppearanceAnimationView.NormalBody_WithAnimation(255, &v16);
  v16 = v1;
  v17 = v2;
  v18 = v3;
  v19 = v4;
  v6 = type metadata accessor for AppearanceAnimationView.NormalBody_AnimationValue(255, &v16);
  v8 = type metadata accessor for _ConditionalContent(255, v5, v6, v7);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for AppearanceAnimationView<A, B>.NormalBody_WithAnimation, v5);
  v11 = v10;
  v12 = swift_getWitnessTable(protocol conformance descriptor for AppearanceAnimationView<A, B>.NormalBody_AnimationValue, v6, WitnessTable);
  v15[0] = v11;
  v15[1] = v13;
  return swift_getWitnessTable(protocol conformance descriptor for <> _ConditionalContent<A, B>, v8, v15, v12);
}

double sub_18D3C0158(_OWORD *a1)
{
  v6 = a1[1];
  v8[0] = *a1;
  v5 = *&v8[0];
  v8[1] = v6;
  v1 = type metadata accessor for AppearanceAnimationView.AnimationEffect(255, v8);
  v3 = type metadata accessor for ModifiedContent(255, v5, v1, v2);
  v7[0] = v6;
  v7[1] = &protocol witness table for AppearanceAnimationView<A, B>.AnimationEffect;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v7);
}

uint64_t sub_18D3C0228()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_18D3C0260()
{

  return swift_deallocObject();
}

uint64_t sub_18D3C0298()
{

  return swift_deallocObject();
}

uint64_t sub_18D3C02D0()
{

  return swift_deallocObject();
}

double sub_18D3C0310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  type metadata accessor for _AnimationModifier<Bool>(255, a2, a3, a4);
  v8 = type metadata accessor for ModifiedContent(255, v4, v6, v7);
  v16[0] = v5;
  v16[1] = &protocol witness table for _AnimationModifier<A>;
  swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v8, v16);
  v15[0] = v8;
  v15[1] = MEMORY[0x1E69E7668];
  v15[2] = v9;
  v15[3] = MEMORY[0x1E69E7678];
  v10 = type metadata accessor for IDView(255, v15);
  v12 = type metadata accessor for ModifiedContent(255, v10, &type metadata for _AppearanceActionModifier, v11);
  v14[0] = &protocol witness table for IDView<A, B>;
  v14[1] = &protocol witness table for _AppearanceActionModifier;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v12, v14);
}

double sub_18D3C03E4(uint64_t a1)
{
  v1 = *(a1 + 24);
  v7[0] = *(a1 + 8);
  v7[1] = MEMORY[0x1E69E7668];
  v7[2] = v1;
  v7[3] = MEMORY[0x1E69E7678];
  v2 = type metadata accessor for IDView(255, v7);
  v4 = type metadata accessor for ModifiedContent(255, v2, &type metadata for _AppearanceActionModifier, v3);
  v6[0] = &protocol witness table for IDView<A, B>;
  v6[1] = &protocol witness table for _AppearanceActionModifier;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v4, v6);
}

uint64_t sub_18D3C0484()
{

  return swift_deallocObject();
}

double sub_18D3C0514(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for _BackgroundStyleModifier<BackgroundStyle>(255, &lazy cache variable for type metadata for _BackgroundStyleModifier<BackgroundStyle>, &type metadata for BackgroundStyle, &protocol witness table for BackgroundStyle, type metadata accessor for _BackgroundStyleModifier);
  v5 = type metadata accessor for ModifiedContent(255, v1, v3, v4);
  v7[0] = v2;
  v7[1] = &protocol witness table for _BackgroundStyleModifier<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

uint64_t sub_18D3C064C(CC_SHA1_CTX *a1)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = *v1;
  return CC_SHA1_Update(a1, v3, 8u);
}

uint64_t sub_18D3C06A8(CC_SHA1_CTX *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  data = *v1;
  return CC_SHA1_Update(a1, &data, 2u);
}

uint64_t sub_18D3C0704(CC_SHA1_CTX *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  data = *v1;
  return CC_SHA1_Update(a1, &data, 4u);
}

double sub_18D3C0760(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[2];
  v6 = type metadata accessor for ContentShapeSecondaryViewModifier(255, a1[1], a1[3], a4);
  v8 = type metadata accessor for ModifiedContent(255, v4, v6, v7);
  v10[0] = v5;
  v10[1] = &protocol witness table for ContentShapeSecondaryViewModifier<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v8, v10);
}

uint64_t sub_18D3C07E0()
{

  return swift_deallocObject();
}

uint64_t sub_18D3C0820()
{

  return swift_deallocObject();
}

uint64_t sub_18D3C0858()
{

  return swift_deallocObject();
}

uint64_t sub_18D3C0898()
{

  return swift_deallocObject();
}

__n128 sub_18D3C0958(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_18D3C0964@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return outlined copy of Material?(v3, v2);
}

uint64_t sub_18D3C0974(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *a2;
  v6 = a2[1];
  outlined copy of Material?(*a1, v4);
  result = outlined consume of Material?(v5, v6);
  *a2 = v3;
  a2[1] = v4;
  return result;
}

double sub_18D3C09F0@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + 24);

  return result;
}

void sub_18D3C09FC(void *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 24) = v3;
}

uint64_t sub_18D3C0A40@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 56);
  *a2 = *(result + 48);
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_18D3C0A54(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *(a2 + 48) = *result;
  *(a2 + 56) = v2;
  return result;
}

__n128 sub_18D3C0A80@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = a1[4];
  *a2 = result;
  return result;
}

__n128 sub_18D3C0A8C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[4] = *a1;
  return result;
}

double sub_18D3C0AB0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[2];
  v6 = type metadata accessor for ModifiedContent(255, *a1, &type metadata for GlassEffectModifier, a4);
  v7 = type metadata accessor for StaticIf(255, &type metadata for GlassEnabledPredicate, v6, v4);
  v9 = type metadata accessor for ModifiedContent(255, v7, &type metadata for GlassEffectIDModifier, v8);
  v11 = type metadata accessor for ModifiedContent(255, v9, &type metadata for GlassEffectTransitionModifier, v10);
  v22[0] = v5;
  v22[1] = &protocol witness table for GlassEffectModifier;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v6, v22);
  v21[0] = &protocol witness table for GlassEnabledPredicate;
  v21[1] = v13;
  v21[2] = v5;
  v14 = swift_getWitnessTable(protocol conformance descriptor for <> StaticIf<A, B, C>, v7, v21, WitnessTable);
  v20[0] = v15;
  v20[1] = &protocol witness table for GlassEffectIDModifier;
  v16 = swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v9, v20, v14);
  v19[0] = v17;
  v19[1] = &protocol witness table for GlassEffectTransitionModifier;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v11, v19, v16);
}

double sub_18D3C0BE8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = type metadata accessor for ModifiedContent(255, *a1, &type metadata for GlassEffectModifier, a4);
  v7 = type metadata accessor for StaticIf(255, &type metadata for GlassEnabledPredicate, v6, v4);
  v9 = type metadata accessor for ModifiedContent(255, v7, &type metadata for GlassEffectIDModifier, v8);
  v11 = type metadata accessor for ModifiedContent(255, v9, &type metadata for GlassEffectTransitionModifier, v10);
  v22[0] = v5;
  v22[1] = &protocol witness table for GlassEffectModifier;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v6, v22);
  v21[0] = &protocol witness table for GlassEnabledPredicate;
  v21[1] = v13;
  v21[2] = v5;
  v14 = swift_getWitnessTable(protocol conformance descriptor for <> StaticIf<A, B, C>, v7, v21, WitnessTable);
  v20[0] = v15;
  v20[1] = &protocol witness table for GlassEffectIDModifier;
  v16 = swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v9, v20, v14);
  v19[0] = v17;
  v19[1] = &protocol witness table for GlassEffectTransitionModifier;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v11, v19, v16);
}

double sub_18D3C0D1C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for _GlassEffectContainer(255, *a1, a1[1], a4);

  return swift_getWitnessTable(protocol conformance descriptor for _GlassEffectContainer<A>, v4);
}

void sub_18D3C0F1C(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  static _TestApp.renderOptions = v1;
}

double sub_18D3C0F64@<D0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = static _TestApp.environmentOverride;
  v3 = unk_1EAB26AF0;
  *a1 = static _TestApp.environmentOverride;
  a1[1] = v3;
  return outlined copy of EnvironmentValues?(v2, v3);
}

uint64_t _s7SwiftUI23ResettableListContainer33_6EC83A31B57F45269398E452A4758CA7LLV10WrappedIDsVyx_GSlAASl5index_8offsetBy5IndexQzAK_SitFTW_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7.n128_f64[0] = swift_getWitnessTable(protocol conformance descriptor for ResettableListContainer<A>.WrappedIDs, a3);
  v8 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69830](a1, a2, a3, v6, v8, v7);
}

uint64_t _s7SwiftUI23ResettableListContainer33_6EC83A31B57F45269398E452A4758CA7LLV10WrappedIDsVyx_GSlAASl5index_8offsetBy07limitedQ05IndexQzSgAL_SiALtFTW_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getWitnessTable(protocol conformance descriptor for ResettableListContainer<A>.WrappedIDs, a4);

  return RandomAccessCollection.index(_:offsetBy:limitedBy:)();
}

uint64_t _s7SwiftUI23ResettableListContainer33_6EC83A31B57F45269398E452A4758CA7LLV10WrappedIDsVyx_GSlAASl8distance4from2toSi5IndexQz_ALtFTW_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7.n128_f64[0] = swift_getWitnessTable(protocol conformance descriptor for ResettableListContainer<A>.WrappedIDs, a3);
  v8 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69840](a1, a2, a3, v6, v8, v7);
}

void sub_18D3C1190(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  static ResettableLazyLayoutsFeature.isEnabledForTesting = v1;
}

uint64_t sub_18D3C1210()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

double sub_18D3C1250(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for DependentGesture(255, AssociatedTypeWitness, v4, v5);
  swift_getWitnessTable(protocol conformance descriptor for DependentGesture<A>, v6);
  v10[0] = v6;
  v10[1] = v1;
  v10[2] = v7;
  v10[3] = v2;
  v8 = type metadata accessor for ModifierGesture(255, v10);
  return swift_getWitnessTable(protocol conformance descriptor for ModifierGesture<A, B>, v8);
}

uint64_t sub_18D3C12FC()
{

  return swift_deallocObject();
}

double sub_18D3C1344(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  type metadata accessor for _EnvironmentKeyWritingModifier<Bool>(255, a2, a3, a4);
  v8 = type metadata accessor for ModifiedContent(255, v4, v6, v7);
  v10[0] = v5;
  v10[1] = &protocol witness table for _EnvironmentKeyWritingModifier<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v8, v10);
}

uint64_t sub_18D3C13B0()
{

  return swift_deallocObject();
}

double sub_18D3C13F0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for FilteredTransition(255, *a1, a1[1], a4);

  return swift_getWitnessTable(protocol conformance descriptor for FilteredTransition<A>, v4);
}

uint64_t sub_18D3C1460@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = a1[3];
  v9 = a1[2];
  v10 = v2;
  v11 = a1[4];
  v3 = v11;
  v4 = a1[1];
  v8[0] = *a1;
  v5 = v8[0];
  v8[1] = v4;
  a2[2] = v9;
  a2[3] = v2;
  a2[4] = v3;
  *a2 = v5;
  a2[1] = v4;
  return outlined init with copy of _LazyLayout_PlacedSubview(v8, &v7);
}

uint64_t sub_18D3C14F4@<X0>(uint64_t *a1@<X8>)
{
  result = _LazyLayout_Placements_V1.subviews.getter();
  *a1 = result;
  return result;
}

__n128 sub_18D3C154C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

__n128 sub_18D3C155C(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(a2 + 8) = *a1;
  *(a2 + 24) = v3;
  return result;
}

uint64_t sub_18D3C156C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  *a2 = *result;
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_18D3C1580(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *a2 = *result;
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_18D3C159C@<X0>(uint64_t *a1@<X8>)
{
  result = _LazyLayout_EstimatedPlacements_V1.subviews.getter();
  *a1 = result;
  return result;
}

uint64_t sub_18D3C1614@<X0>(uint64_t result@<X0>, double *a2@<X8>)
{
  v2 = *result;
  v3 = *(result + 16);
  if (*(result + 8))
  {
    v2 = 10.0;
  }

  if (*(result + 24))
  {
    v3 = 10.0;
  }

  *a2 = v2;
  a2[1] = v3;
  return result;
}

void *sub_18D3C1640(void *result, uint64_t a2)
{
  v2 = result[1];
  *a2 = *result;
  *(a2 + 8) = 0;
  *(a2 + 16) = v2;
  *(a2 + 24) = 0;
  return result;
}

__n128 sub_18D3C1658@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = a1[2];
  *a2 = result;
  return result;
}

__n128 sub_18D3C1664(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[2] = *a1;
  return result;
}

__n128 sub_18D3C1670@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = a1[3];
  *a2 = result;
  return result;
}

__n128 sub_18D3C167C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[3] = *a1;
  return result;
}

double sub_18D3C16A0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[2];
  v6 = type metadata accessor for LazyLayoutReuseIdleModifier(255, a1[1], a1[3], a4);
  v8 = type metadata accessor for ModifiedContent(255, v4, v6, v7);
  v10[0] = v5;
  v10[1] = &protocol witness table for LazyLayoutReuseIdleModifier<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v8, v10);
}

double sub_18D3C1710(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for _LazyLayout_Subview_V1?(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<LazySubviewMinorSizingConfiguration>, &type metadata for LazySubviewMinorSizingConfiguration, type metadata accessor for _EnvironmentKeyWritingModifier);
  v5 = type metadata accessor for ModifiedContent(255, v1, v3, v4);
  v7[0] = v2;
  v7[1] = &protocol witness table for _EnvironmentKeyWritingModifier<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

double sub_18D3C17A0(_OWORD *a1)
{
  v1 = a1[1];
  v4[0] = *a1;
  v4[1] = v1;
  v2 = type metadata accessor for CombiningTransition(255, v4);
  return swift_getWitnessTable(protocol conformance descriptor for CombiningTransition<A, B>, v2);
}

uint64_t sub_18D3C17EC()
{
  outlined consume of ContentTransition.Storage(*(v0 + 16), *(v0 + 24) | (*(v0 + 28) << 32), *(v0 + 29));

  return swift_deallocObject();
}

float sub_18D3C1840@<S0>(uint64_t a1@<X0>, float *a2@<X8>, unsigned int a3@<S0>)
{
  LOBYTE(a3) = *(a1 + 7);
  result = a3 * 0.0083333;
  *a2 = result;
  return result;
}

uint64_t sub_18D3C1860(float *a1, uint64_t a2, __n128 a3)
{
  a3.n128_f32[0] = *a1 * 120.0;
  result = _ss17FixedWidthIntegerP7SwiftUIE8clampingxqd___tcSBRd__lufCs5UInt8V_SfTt1g5(a3);
  *(a2 + 7) = result;
  return result;
}

float sub_18D3C1898@<S0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  result = vcvts_n_f32_u32(*(a1 + 8), 7uLL);
  *a2 = result;
  return result;
}

uint64_t sub_18D3C18A8(float *a1, uint64_t a2, __n128 a3)
{
  a3.n128_f32[0] = *a1 * 128.0;
  result = _ss17FixedWidthIntegerP7SwiftUIE8clampingxqd___tcSBRd__lufCs5UInt8V_SfTt1g5(a3);
  *(a2 + 8) = result;
  return result;
}

float sub_18D3C18DC@<S0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  result = vcvts_n_f32_u32(*(a1 + 9), 2uLL);
  *a2 = result;
  return result;
}

uint64_t sub_18D3C18EC(float *a1, uint64_t a2, __n128 a3)
{
  a3.n128_f32[0] = *a1 * 4.0;
  result = _ss17FixedWidthIntegerP7SwiftUIE8clampingxqd___tcSBRd__lufCs5UInt8V_SfTt1g5(a3);
  *(a2 + 9) = result;
  if ((*(a2 + 6) & 2) != 0)
  {
    *(a2 + 6) &= ~2u;
  }

  return result;
}

float sub_18D3C1930@<S0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  result = vcvts_n_f32_u32(*(a1 + 9), 7uLL);
  *a2 = result;
  return result;
}

uint64_t sub_18D3C1940(float *a1, uint64_t a2, __n128 a3)
{
  a3.n128_f32[0] = *a1 * 128.0;
  result = _ss17FixedWidthIntegerP7SwiftUIE8clampingxqd___tcSBRd__lufCs5UInt8V_SfTt1g5(a3);
  *(a2 + 9) = result;
  if ((*(a2 + 6) & 2) == 0)
  {
    *(a2 + 6) |= 2u;
  }

  return result;
}

float sub_18D3C1984@<S0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  result = vcvts_n_f32_s32(*(a1 + 10), 5uLL);
  *a2 = result;
  return result;
}

uint64_t sub_18D3C1994(float *a1, uint64_t a2, __n128 a3)
{
  a3.n128_f32[0] = *a1 * 32.0;
  result = _ss17FixedWidthIntegerP7SwiftUIE8clampingxqd___tcSBRd__lufCs4Int8V_SfTt1g5(a3);
  *(a2 + 10) = result;
  return result;
}

uint64_t sub_18D3C19C8@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = *(result + 12);
  if (*(result + 13))
  {
    v2 = 3;
  }

  *a2 = v2;
  return result;
}

void sub_18D3C19F0(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v10 = *a1;
  EnvironmentValues.contentTransition.getter(&v6);
  v3 = v7;
  v4 = v8;
  v5 = v9;
  *a2 = v6;
  *(a2 + 12) = v4;
  *(a2 + 8) = v3;
  *(a2 + 14) = v5;
}

double sub_18D3C1A90(void *a1)
{

  specialized EnvironmentValues.contentTransitionAnimation.setter(v1);

  return result;
}

uint64_t sub_18D3C1AD4@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.contentTransitionAddsDrawingGroup.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18D3C1BA0()
{
  outlined consume of Animation.Function(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));

  return swift_deallocObject();
}

uint64_t sub_18D3C1F38@<X0>(uint64_t *a1@<X8>)
{
  result = Duration.UnitsFormatStyle.allowedUnits.getter();
  *a1 = result;
  return result;
}

uint64_t _s7SwiftUI019_Transition_ContentC0V6ResultOwcp_0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  outlined copy of _Transition_ContentTransition.Result(*a2, v4);
  *a1 = v3;
  *(a1 + 8) = v4;
  return a1;
}

double sub_18D3C1FDC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v5 = a1[3];
  v6 = type metadata accessor for ApplyTransitionModifier(255, *a1, a1[2], a4);
  v8 = type metadata accessor for ModifiedContent(255, v4, v6, v7);
  v10[0] = v5;
  v10[1] = &protocol witness table for ApplyTransitionModifier<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v8, v10);
}

uint64_t sub_18D3C2054()
{

  return swift_deallocObject();
}

double sub_18D3C208C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[2];
  v6 = type metadata accessor for VisualEffectModifier(255, a1[1], a1[3], a4);
  v8 = type metadata accessor for ModifiedContent(255, v4, v6, v7);
  v10[0] = v5;
  v10[1] = &protocol witness table for VisualEffectModifier<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v8, v10);
}

uint64_t sub_18D3C2134()
{

  return swift_deallocObject();
}

uint64_t _s7SwiftUI23SubviewsCollectionSliceVSkAASk5index_8offsetBy07limitedH05IndexQzSgAH_SiAHtFTW_0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

__n128 sub_18D3C21E4(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

uint64_t sub_18D3C21F8@<X0>(_DWORD *a1@<X8>)
{
  result = ImageRenderer.seed.getter();
  *a1 = result;
  return result;
}

__n128 sub_18D3C2258(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_18D3C2354@<X0>(_BYTE *a1@<X8>)
{
  result = ImageRenderer.isOpaque.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18D3C24B8@<X0>(_BYTE *a1@<X8>)
{
  result = ImageRenderer.isObservationEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18D3C2708()
{
  outlined consume of GraphicsFilter(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));

  return swift_deallocObject();
}

double sub_18D3C2774@<D0>(double *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_18D3C2780(double *a1, void *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_18D3C278C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v5 = type metadata accessor for ModifiedContent(255, *a1, &type metadata for _SaturationEffect, a4);
  v7[0] = v4;
  v7[1] = &protocol witness table for _SaturationEffect;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

double sub_18D3C27F0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  type metadata accessor for RendererVisualEffect<_SaturationEffect>(255, a2, a3, a4);
  v7 = v6;
  lazy protocol witness table accessor for type RendererVisualEffect<_SaturationEffect> and conformance RendererVisualEffect<A>(v6, v8, v9, v10);
  v14[0] = v4;
  v14[1] = v7;
  v14[2] = v5;
  v14[3] = v11;
  v12 = type metadata accessor for CombinedVisualEffect(255, v14);
  return swift_getWitnessTable(protocol conformance descriptor for CombinedVisualEffect<A, B>, v12);
}

double sub_18D3C28D8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for [TextAlignment](255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Text.AlignmentStrategy>, &type metadata for Text.AlignmentStrategy, type metadata accessor for _EnvironmentKeyWritingModifier);
  v5 = type metadata accessor for ModifiedContent(255, v1, v3, v4);
  v7[0] = v2;
  v7[1] = &protocol witness table for _EnvironmentKeyWritingModifier<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

double sub_18D3C296C@<D0>(double *a1@<X0>, double *a2@<X8>)
{
  result = *a1 * 57.2957795;
  *a2 = result;
  return result;
}

double sub_18D3C2984(double *a1, double *a2)
{
  result = *a1 * 0.0174532925;
  *a2 = result;
  return result;
}

double sub_18D3C299C@<D0>(double *a1@<X0>, double *a2@<X8>)
{
  result = *a1 * 128.0;
  *a2 = result;
  return result;
}

double sub_18D3C29B4(double *a1, double *a2)
{
  result = *a1 * 0.0078125;
  *a2 = result;
  return result;
}

double sub_18D3C2A24@<D0>(_OWORD *a1@<X8>)
{
  GlassContainer.DisplayMaterial.id.getter(v5);
  v2 = v5[1];
  *a1 = v5[0];
  a1[1] = v2;
  result = *&v6;
  v4 = v7;
  a1[2] = v6;
  a1[3] = v4;
  return result;
}

uint64_t sub_18D3C2AA8()
{

  outlined consume of Environment<String?>.Content(*(v0 + 56), *(v0 + 64), *(v0 + 72));

  return swift_deallocObject();
}

uint64_t sub_18D3C2B64()
{
  outlined consume of _Glass.Variant.Role(v0[2], v0[3]);

  if (v0[15] != 1)
  {
    outlined consume of _Glass.Variant.Role(v0[12], v0[13]);
  }

  if (v0[21] != 1)
  {
    outlined consume of _Glass.Variant.Role(v0[18], v0[19]);
  }

  return swift_deallocObject();
}

uint64_t sub_18D3C2C1C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_18D3C2C54()
{

  return swift_deallocObject();
}

uint64_t sub_18D3C2DE4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE037AllowsHitTestingAccessibilityProviderF033_0DA0B6FBFACBDA8275B06C3CD0F4D8CALLV_Tt2g5(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_18D3C2E28@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE037AllowsHitTestingAccessibilityProviderF033_0DA0B6FBFACBDA8275B06C3CD0F4D8CALLV_Tt2g5(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

double sub_18D3C2E6C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v5 = type metadata accessor for ModifiedContent(255, *a1, &type metadata for _AllowsHitTestingModifier, a4);
  v7[0] = v4;
  v7[1] = &protocol witness table for _AllowsHitTestingModifier;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

uint64_t sub_18D3C34DC@<X0>(_BYTE *a3@<X8>)
{
  result = EnvironmentValues.allowsVibrantBlending.getter();
  *a3 = result & 1;
  return result;
}

double sub_18D3C35F0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for _EnvironmentKeyWritingModifier<Font?>(255);
  v5 = type metadata accessor for ModifiedContent(255, v1, v3, v4);
  v7[0] = v2;
  v7[1] = &protocol witness table for _EnvironmentKeyWritingModifier<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

double sub_18D3C365C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for _ContiguousArrayStorage<(NSAttributedStringKey, Any)>(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<[AnyFontModifier]>, type metadata accessor for [AnyFontModifier], type metadata accessor for _EnvironmentKeyTransformModifier);
  v5 = type metadata accessor for ModifiedContent(255, v1, v3, v4);
  v7[0] = v2;
  v7[1] = &protocol witness table for _EnvironmentKeyTransformModifier<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

uint64_t sub_18D3C37AC()
{

  return swift_deallocObject();
}

uint64_t sub_18D3C37FC()
{
  outlined consume of GlassContainer.Entry.ModelID(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  outlined consume of _Glass.Variant.Role(*(v0 + 56), *(v0 + 64));

  outlined consume of _Glass.Variant.Role(*(v0 + 160), *(v0 + 168));

  if (*(v0 + 264) != 1)
  {
    outlined consume of _Glass.Variant.Role(*(v0 + 240), *(v0 + 248));
  }

  if (*(v0 + 312) != 1)
  {
    outlined consume of _Glass.Variant.Role(*(v0 + 288), *(v0 + 296));
  }

  return swift_deallocObject();
}

void sub_18D3C38B8(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v2 = byte_1EAB273F0;
  *a1 = static GraphReuseOptions.overrideValue;
  *(a1 + 8) = v2;
}

void sub_18D3C390C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  swift_beginAccess();
  static GraphReuseOptions.overrideValue = v1;
  byte_1EAB273F0 = v2;
}

uint64_t sub_18D3C3964()
{
  v1 = *(v0 + 56);
  v6[0] = *(v0 + 16);
  v5 = *&v6[0];
  v6[1] = *(v0 + 40);
  v7 = v1;
  v2 = *(type metadata accessor for ForEach(0, v6) - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);

  (*(*(v5 - 8) + 8))(v0 + v3);

  return swift_deallocObject();
}

uint64_t _s7SwiftUI12ForEachStateC22StaticViewIDCollection33_1A3DD35AB7F6976908CD7AF959F34D1FLLVyxq_q0__GSlAASl5index_8offsetBy5IndexQzAK_SitFTW_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7.n128_f64[0] = swift_getWitnessTable(protocol conformance descriptor for ForEachState<A, B, C>.StaticViewIDCollection, a3);
  v8 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69830](a1, a2, a3, v6, v8, v7);
}

uint64_t _s7SwiftUI12ForEachStateC22StaticViewIDCollection33_1A3DD35AB7F6976908CD7AF959F34D1FLLVyxq_q0__GSlAASl5index_8offsetBy07limitedS05IndexQzSgAL_SiALtFTW_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getWitnessTable(protocol conformance descriptor for ForEachState<A, B, C>.StaticViewIDCollection, a4);

  return RandomAccessCollection.index(_:offsetBy:limitedBy:)();
}

uint64_t _s7SwiftUI12ForEachStateC22StaticViewIDCollection33_1A3DD35AB7F6976908CD7AF959F34D1FLLVyxq_q0__GSlAASl8distance4from2toSi5IndexQz_ALtFTW_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7.n128_f64[0] = swift_getWitnessTable(protocol conformance descriptor for ForEachState<A, B, C>.StaticViewIDCollection, a3);
  v8 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69840](a1, a2, a3, v6, v8, v7);
}

uint64_t _s7SwiftUI12ForEachStateC0cD16ViewIDCollection33_1A3DD35AB7F6976908CD7AF959F34D1FLLVyxq_q0__GSlAASl5index_8offsetBy5IndexQzAK_SitFTW_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7.n128_f64[0] = swift_getWitnessTable(protocol conformance descriptor for ForEachState<A, B, C>.ForEachViewIDCollection, a3);
  v8 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69830](a1, a2, a3, v6, v8, v7);
}

uint64_t _s7SwiftUI12ForEachStateC0cD16ViewIDCollection33_1A3DD35AB7F6976908CD7AF959F34D1FLLVyxq_q0__GSlAASl5index_8offsetBy07limitedR05IndexQzSgAL_SiALtFTW_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getWitnessTable(protocol conformance descriptor for ForEachState<A, B, C>.ForEachViewIDCollection, a4);

  return RandomAccessCollection.index(_:offsetBy:limitedBy:)();
}

uint64_t _s7SwiftUI12ForEachStateC0cD16ViewIDCollection33_1A3DD35AB7F6976908CD7AF959F34D1FLLVyxq_q0__GSlAASl8distance4from2toSi5IndexQz_ALtFTW_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7.n128_f64[0] = swift_getWitnessTable(protocol conformance descriptor for ForEachState<A, B, C>.ForEachViewIDCollection, a3);
  v8 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69840](a1, a2, a3, v6, v8, v7);
}

uint64_t sub_18D3C3E18()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

__n128 sub_18D3C3EFC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_18D3C4040(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v5 = type metadata accessor for ModifiedContent(255, *a1, &type metadata for ContainerCornerOffsetLayout, a4);
  v7[0] = v4;
  v7[1] = &protocol witness table for ContainerCornerOffsetLayout;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

uint64_t sub_18D3C40A4()
{
  outlined consume of GraphicsFilter(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));

  return swift_deallocObject();
}

void sub_18D3C4110(uint64_t a3@<X8>)
{
  *a3 = _ColorMultiplyEffect._Resolved.animatableData.getter();
  *(a3 + 4) = v4;
  *(a3 + 8) = v5;
  *(a3 + 12) = v6;
}

double sub_18D3C417C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v5 = type metadata accessor for ModifiedContent(255, *a1, &type metadata for _ColorMultiplyEffect, a4);
  v7[0] = v4;
  v7[1] = &protocol witness table for _ColorMultiplyEffect;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

__n128 sub_18D3C41F4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

void *sub_18D3C423C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  v5 = type metadata accessor for Canvas(0, *(a1 + a2 - 16), *(a1 + a2 - 8), a3);
  result = Canvas.colorMode.getter(v5, &v7);
  *a4 = v7;
  return result;
}

_BYTE *sub_18D3C4288(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  v8 = *a1;
  v6 = type metadata accessor for Canvas(0, v4, v5, a4);
  return Canvas.colorMode.setter(&v8, v6);
}

uint64_t sub_18D3C43D0()
{

  return swift_deallocObject();
}

float sub_18D3C4438(float32x4_t *a1)
{
  v1 = a1[1].i32[0];
  v3 = *a1;
  v4 = v1;
  Color.ResolvedHDR.animatableData.setter(&v3);
  return result;
}

uint64_t sub_18D3C448C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE025TextAccessibilityProviderF033_96A6D9E0D6EA43C386EBC45EDA3A548BLLV_Tt2g5(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_18D3C44D0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE025TextAccessibilityProviderF033_96A6D9E0D6EA43C386EBC45EDA3A548BLLV_Tt2g5(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

__n128 sub_18D3C4548(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

double sub_18D3C455C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[3];
  v3 = type metadata accessor for _AnchorTransformModifier(255, a1[1], a1[2], a1[4]);
  v5 = type metadata accessor for ModifiedContent(255, v1, v3, v4);
  v7[0] = v2;
  v7[1] = &protocol witness table for _AnchorTransformModifier<A, B>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

double _s7SwiftUI33ExperimentalGlassMaterialProviderVAA0eF0A2aDP22resolveForegroundStyle5level2inAA0E0VAAE0hI0VSgSi_AjAE7ContextVtFTW_0@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 80) = 0;
  *(a1 + 84) = -256;
  return result;
}

uint64_t sub_18D3C4620()
{

  return swift_deallocObject();
}

uint64_t sub_18D3C4670()
{

  return swift_deallocObject();
}

uint64_t sub_18D3C46E8()
{

  return swift_deallocObject();
}

double sub_18D3C4730@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = *a1;
  a2[1] = 0;

  return result;
}

void sub_18D3C4740(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;

  *a2 = v3;
}

uint64_t sub_18D3C478C@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.systemMaterialDefinition.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t *_s7SwiftUI8MaterialVAAE5LayerV8SDFLayerV05GroupD0V5BlendOwcp_0(unint64_t *a1, unint64_t *a2)
{
  v3 = *a2;
  outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(*a2);
  *a1 = v3;
  return a1;
}

uint64_t _s7SwiftUI8MaterialVAAE5LayerV6FilterV8ContentsO12VariableBlurV4MaskOwcp_0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  outlined copy of Material.Layer.Filter.Contents.VariableBlur.Mask(*a2, v4);
  *a1 = v3;
  *(a1 + 8) = v4;
  return a1;
}

__n128 sub_18D3C4984(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_18D3C4990(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[2];
  v6 = type metadata accessor for _ClipEffect(255, a1[1], a1[3], a4);
  v8 = type metadata accessor for ModifiedContent(255, v4, v6, v7);
  v10[0] = v5;
  v10[1] = &protocol witness table for _ClipEffect<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v8, v10);
}

double sub_18D3C4A58(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[2];
  v6 = type metadata accessor for _ClipEffect(255, a1[1], a1[3], a4);
  swift_getWitnessTable(protocol conformance descriptor for _ClipEffect<A>, v6);
  v9 = type metadata accessor for RendererVisualEffect(255, v6, v7, v8);
  swift_getWitnessTable(protocol conformance descriptor for RendererVisualEffect<A>, v9);
  v13[0] = v4;
  v13[1] = v9;
  v13[2] = v5;
  v13[3] = v10;
  v11 = type metadata accessor for CombinedVisualEffect(255, v13);
  return swift_getWitnessTable(protocol conformance descriptor for CombinedVisualEffect<A, B>, v11);
}

double sub_18D3C4B14(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[2];
  v5 = type metadata accessor for ModifiedContent(255, *a1, &type metadata for GlassEffectIDModifier, a4);
  v7[0] = v4;
  v7[1] = &protocol witness table for GlassEffectIDModifier;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

double sub_18D3C4B7C@<D0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = partial apply for specialized closure #1 in AGAttribute.mutateBody<A>(as:invalidating:_:);
  a2[1] = v5;

  return result;
}

double sub_18D3C4BF8@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE016SavedTransactionF033_A1B10B5AB036C34AB7DD2EE8825FCA93LLV_Tt2g5Tf4n_g(*a1);

  return result;
}

double sub_18D3C4C4C@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE016SavedTransactionF033_A1B10B5AB036C34AB7DD2EE8825FCA93LLV_Tt2g5Tf4n_g(*a1);

  return result;
}

double sub_18D3C4CA0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v5 = type metadata accessor for ModifiedContent(255, *a1, &type metadata for _TransactionModifier, a4);
  v7[0] = v4;
  v7[1] = &protocol witness table for _TransactionModifier;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

double sub_18D3C4D10(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[2];
  v3 = type metadata accessor for CustomModifier(255, *a1, a1[1], a1[3]);
  v5 = type metadata accessor for _PushPopTransactionModifier(255, v3, &protocol witness table for CustomModifier<A, B>, v4);
  v7 = type metadata accessor for ModifiedContent(255, v1, v5, v6);
  v9[0] = v2;
  v9[1] = &protocol witness table for _PushPopTransactionModifier<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v7, v9);
}

uint64_t _s7SwiftUI4FontV27PrivateSystemDesignProviderVwcp_0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 16) = v3;
  v4 = v3;
  return a1;
}

double sub_18D3C4F0C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v5 = type metadata accessor for ModifiedContent(255, *a1, &type metadata for SpacingLayout, a4);
  v7[0] = v4;
  v7[1] = &protocol witness table for SpacingLayout;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

double _s7SwiftUI9RectangleV6_InsetVAA4ViewA2aFP4body4BodyQzvgTW_0@<D0>(uint64_t a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  *(a1 + 8) = 256;
  return result;
}

__n128 sub_18D3C5024(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

double sub_18D3C567C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for TruePreferenceWritingGestureModifier(255, &type metadata for IsCancellableGestureKey, AssociatedTypeWitness, &protocol witness table for IsCancellableGestureKey);
  swift_getWitnessTable(protocol conformance descriptor for TruePreferenceWritingGestureModifier<A, B>, v4);
  v8[0] = v4;
  v8[1] = v1;
  v8[2] = v5;
  v8[3] = v2;
  v6 = type metadata accessor for ModifierGesture(255, v8);
  return swift_getWitnessTable(protocol conformance descriptor for ModifierGesture<A, B>, v6);
}

uint64_t sub_18D3C5738()
{

  return swift_deallocObject();
}

double sub_18D3C58D0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[2];
  v6 = type metadata accessor for Renderer(255, a1[1], a1[3], a4);
  swift_getWitnessTable(protocol conformance descriptor for Renderer<A>, v6);
  v9 = type metadata accessor for TextRenderer_V2ViewModifier(255, v6, v7, v8);
  v11 = type metadata accessor for ModifiedContent(255, v4, v9, v10);
  v13[0] = v5;
  v13[1] = &protocol witness table for TextRenderer_V2ViewModifier<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v11, v13);
}

BOOL sub_18D3C5978@<W0>(_BYTE *a3@<X8>)
{
  result = EnvironmentValues.isVibrantColorStyleEnabled.getter();
  *a3 = result;
  return result;
}

uint64_t *sub_18D3C59C4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  if (result[1])
  {
    v2 = 0;
    v3 = 0;
    v4 = 1;
  }

  else
  {
    v2 = *result;
    v3 = result[2];
    if (result[3])
    {
      v2 = 0;
      v3 = 0;
    }

    v4 = (result[3] & 1) != 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  return result;
}

uint64_t *sub_18D3C5A08(uint64_t *result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
  }

  else
  {
    v3 = *result;
    v4 = result[1];
  }

  *a2 = v3;
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v2;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  return result;
}

uint64_t sub_18D3C5A40@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 56))
  {
    v2 = 0;
    v3 = 0;
    v4 = 1;
  }

  else
  {
    v2 = *(result + 48);
    v3 = *(result + 64);
    if (*(result + 72))
    {
      v2 = 0;
      v3 = 0;
    }

    v4 = (*(result + 72) & 1) != 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  return result;
}

uint64_t *sub_18D3C5A84(uint64_t *result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
  }

  else
  {
    v3 = *result;
    v4 = result[1];
  }

  *(a2 + 48) = v3;
  *(a2 + 56) = v2;
  *(a2 + 64) = v4;
  *(a2 + 72) = v2;
  *(a2 + 80) = 0;
  *(a2 + 88) = 1;
  return result;
}

uint64_t sub_18D3C5ABC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 104))
  {
    v2 = 0;
    v3 = 0;
    v4 = 1;
  }

  else
  {
    v2 = *(result + 96);
    v3 = *(result + 112);
    if (*(result + 120))
    {
      v2 = 0;
      v3 = 0;
    }

    v4 = (*(result + 120) & 1) != 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  return result;
}

uint64_t *sub_18D3C5B00(uint64_t *result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
  }

  else
  {
    v3 = *result;
    v4 = result[1];
  }

  *(a2 + 96) = v3;
  *(a2 + 104) = v2;
  *(a2 + 112) = v4;
  *(a2 + 120) = v2;
  *(a2 + 128) = 0;
  *(a2 + 136) = 1;
  return result;
}

uint64_t sub_18D3C5B38()
{
  outlined consume of Gradient.ProviderTag(*(v0 + 16));

  return swift_deallocObject();
}

double _s7SwiftUI8GradientVAAE06EitherC10DefinitionOAA12CodableProxyA2aFP4base4BaseQzvgTW_0@<D0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  return outlined copy of EitherGradient(v2, v3);
}

double sub_18D3C61B8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  _ss7KeyPathCy7SwiftUI17EnvironmentValuesVAC15LayoutDirectionOGMaTm_1(255, &lazy cache variable for type metadata for ModifiedContent<_PaddingLayout, _SafeAreaInsetsModifier>, &type metadata for _PaddingLayout, &type metadata for _SafeAreaInsetsModifier, type metadata accessor for ModifiedContent);
  v5 = type metadata accessor for ModifiedContent(255, v1, v3, v4);
  lazy protocol witness table accessor for type ModifiedContent<_PaddingLayout, _SafeAreaInsetsModifier> and conformance <> ModifiedContent<A, B>();
  v8[0] = v2;
  v8[1] = v6;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v8);
}

uint64_t sub_18D3C6260@<X0>(__int128 *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *a1;
  result = EnvironmentValues.colorScheme.getter(&v4);
  *a2 = v4;
  return result;
}

double sub_18D3C6484(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for [ColorScheme](255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<ColorScheme>, &type metadata for ColorScheme, type metadata accessor for _EnvironmentKeyWritingModifier);
  v5 = type metadata accessor for ModifiedContent(255, v1, v3, v4);
  v7[0] = v2;
  v7[1] = &protocol witness table for _EnvironmentKeyWritingModifier<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

double sub_18D3C6514(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v5 = type metadata accessor for ModifiedContent(255, *a1, &type metadata for SystemColorSchemeModifier, a4);
  v7[0] = v4;
  v7[1] = &protocol witness table for SystemColorSchemeModifier;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

id sub_18D3C6584@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 swiftUI_viewTestProperties];
  *a2 = result;
  return result;
}

uint64_t sub_18D3C65CC@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  *a2 = result;
  return result;
}

double sub_18D3C6664(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  type metadata accessor for _PreferenceWritingModifier<PreferredColorSchemeKey>(255, a2, a3, a4);
  v8 = type metadata accessor for ModifiedContent(255, v4, v6, v7);
  v10[0] = v5;
  v10[1] = &protocol witness table for _PreferenceWritingModifier<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v8, v10);
}

uint64_t sub_18D3C66D0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    _s7SwiftUI4TextV5StyleVSgMaTm_1(0, &lazy cache variable for type metadata for Text.Style?, type metadata accessor for Text.Style);
    v10 = v9;
    v11 = *(*(v9 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

void *sub_18D3C67A8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    _s7SwiftUI4TextV5StyleVSgMaTm_1(0, &lazy cache variable for type metadata for Text.Style?, type metadata accessor for Text.Style);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_18D3C6868()
{

  return swift_deallocObject();
}

uint64_t sub_18D3C68B0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_18D3C68E8()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);

  return swift_deallocObject();
}

double sub_18D3C69C0@<D0>(double *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_18D3C69CC(double *a1, void *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_18D3C69D8@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 8);
  *a2 = result;
  return result;
}

double sub_18D3C69E4(double *a1, uint64_t a2)
{
  result = *a1;
  *(a2 + 8) = *a1;
  return result;
}

__n128 sub_18D3C69F8@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

__n128 sub_18D3C6A04(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

__n128 sub_18D3C6A70@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  result = *a1;
  v3 = vmulq_f64(*(a1 + 16), vdupq_n_s64(0x4060000000000000uLL));
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

__n128 sub_18D3C6A88(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = vmulq_f64(*(a1 + 16), vdupq_n_s64(0x3F80000000000000uLL));
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

double sub_18D3C6AA0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v5 = type metadata accessor for ModifiedContent(255, *a1, &type metadata for _ScaleEffect, a4);
  v7[0] = v4;
  v7[1] = &protocol witness table for _ScaleEffect;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

double sub_18D3C6B04(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for TransitionBox<ScaleTransition>(255, &lazy cache variable for type metadata for GeometryVisualEffect<_ScaleEffect>, lazy protocol witness table accessor for type _ScaleEffect and conformance _ScaleEffect, &type metadata for _ScaleEffect, type metadata accessor for GeometryVisualEffect);
  v4 = v3;
  lazy protocol witness table accessor for type GeometryVisualEffect<_ScaleEffect> and conformance GeometryVisualEffect<A>();
  v8[0] = v1;
  v8[1] = v4;
  v8[2] = v2;
  v8[3] = v5;
  v6 = type metadata accessor for CombinedVisualEffect(255, v8);
  return swift_getWitnessTable(protocol conformance descriptor for CombinedVisualEffect<A, B>, v6);
}

double sub_18D3C6BBC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[2];
  v6 = type metadata accessor for _InsetViewModifier(255, a1[1], a1[3], a4);
  v8 = type metadata accessor for ModifiedContent(255, v4, v6, v7);
  v10[0] = v5;
  v10[1] = &protocol witness table for _InsetViewModifier<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v8, v10);
}

uint64_t sub_18D3C6C30()
{

  return swift_deallocObject();
}

double sub_18D3C6C88(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for _EnvironmentKeyWritingModifier<TintAdjustmentMode?>(255);
  v5 = type metadata accessor for ModifiedContent(255, v1, v3, v4);
  v7[0] = v2;
  v7[1] = &protocol witness table for _EnvironmentKeyWritingModifier<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

uint64_t sub_18D3C6CF4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

double sub_18D3C6D2C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[2];
  v6 = type metadata accessor for SectionsRoot(255, a1[1], a1[3], a4);
  v7 = type metadata accessor for _VariadicView.Tree(255, v6, v4, &protocol witness table for SectionsRoot<A>);
  v9[0] = &protocol witness table for SectionsRoot<A>;
  v9[1] = v5;
  return swift_getWitnessTable(protocol conformance descriptor for <> _VariadicView.Tree<A, B>, v7, v9);
}

uint64_t sub_18D3C6DB4()
{

  return swift_deallocObject();
}

void *_s7SwiftUI12SectionsRootV5ChildVwcp_0(void *a1, void *a2)
{
  *a1 = *a2;
  v3 = a2[1];
  a1[1] = v3;
  v4 = v3;
  return a1;
}

uint64_t sub_18D3C6E28(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a1;
  v5 = *a3;
  v6 = v3;
  return DynamicLayoutMap.subscript.setter(&v6, &v5);
}

void sub_18D3C6E78(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(a1 + 16);
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

double sub_18D3C6EE8@<D0>(double *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_18D3C6EF4(double *a1, void *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_18D3C6F00@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 24);
  *a2 = result;
  return result;
}

double sub_18D3C6F0C(double *a1, uint64_t a2)
{
  result = *a1;
  *(a2 + 24) = *a1;
  return result;
}

double sub_18D3C6F18@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 16);
  *a2 = result;
  return result;
}

double sub_18D3C6F24(double *a1, uint64_t a2)
{
  result = *a1;
  *(a2 + 16) = *a1;
  return result;
}

double sub_18D3C6F30@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 8);
  *a2 = result;
  return result;
}

double sub_18D3C6F3C(double *a1, uint64_t a2)
{
  result = *a1;
  *(a2 + 8) = *a1;
  return result;
}

__n128 sub_18D3C6F48@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

__n128 sub_18D3C6F54(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

double sub_18D3C6F60@<D0>(double *a1@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  v3 = a1 + 3;
  if (*a2 != 2)
  {
    v3 = a1 + 2;
  }

  v4 = a1 + 1;
  if (!*a2)
  {
    v4 = a1;
  }

  if (*a2 <= 1u)
  {
    v5 = v4;
  }

  else
  {
    v5 = v3;
  }

  result = *v5;
  *a3 = *v5;
  return result;
}

void *sub_18D3C6F94(void *result, void *a2, _BYTE *a3)
{
  v3 = a2 + 3;
  if (*a3 != 2)
  {
    v3 = a2 + 2;
  }

  v4 = a2 + 1;
  if (!*a3)
  {
    v4 = a2;
  }

  if (*a3 <= 1u)
  {
    v5 = v4;
  }

  else
  {
    v5 = v3;
  }

  *v5 = *result;
  return result;
}

uint64_t sub_18D3C6FD8()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t _s7SwiftUI4EdgeOAAE6CornerOs28CustomDebugStringConvertibleAAsAFP16debugDescriptionSSvgTW_0()
{
  if (*v0)
  {
    v1 = 0x69617254706F742ELL;
  }

  else
  {
    v1 = 0x6461654C706F742ELL;
  }

  if (*v0 - 2 >= 2)
  {
    return v1;
  }

  else
  {
    return 0x4C6D6F74746F622ELL;
  }
}

uint64_t *sub_18D3C70EC(uint64_t *result, void *a2, unsigned __int8 *a3)
{
  v3 = *result;
  if (*a3 <= 1u)
  {
    if (!*a3)
    {
      if (a3[1])
      {
LABEL_4:
        *a2 = v3;
        return result;
      }

      goto LABEL_7;
    }

    if (a3[1])
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  if (*a3 == 2)
  {
    if ((a3[1] & 1) == 0)
    {
LABEL_7:
      a2[1] = v3;
      return result;
    }

    goto LABEL_11;
  }

  if (a3[1])
  {
LABEL_11:
    a2[2] = v3;
    return result;
  }

LABEL_12:
  a2[3] = v3;
  return result;
}

__n128 sub_18D3C7154@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v2 = *(a1 + 56);
  a2->n128_u64[0] = *(a1 + 16);
  a2->n128_u64[1] = v2;
  result = *(a1 + 24);
  a2[1] = result;
  return result;
}

double *sub_18D3C716C(double *result, uint64_t a2)
{
  v2 = *result;
  v3 = *(result + 1);
  v4 = result[2];
  v5 = result[3];
  *(a2 + 16) = *result;
  *(a2 + 24) = v4;
  *(a2 + 56) = v3;
  v6 = v5 == 1.0;
  if (v4 != 1.0)
  {
    v6 = v2;
  }

  *a2 = v6;
  *(a2 + 8) = v4 == 1.0;
  *(a2 + 32) = v5;
  *(a2 + 40) = v3;
  *(a2 + 48) = 0;
  return result;
}

uint64_t sub_18D3C71C0()
{
  v1 = *(v0 + 24);
  v2 = *(type metadata accessor for Optional() - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v1 - 8);
  if (!(*(v4 + 48))(v0 + v3, 1, v1))
  {
    (*(v4 + 8))(v0 + v3, v1);
  }

  return swift_deallocObject();
}

uint64_t sub_18D3C72E0@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

double sub_18D3C730C(void *a1)
{

  EnvironmentValues.mapKitTintColor.setter(v1, 2);

  return result;
}

uint64_t sub_18D3C73A0@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_18D3C73F4@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

double sub_18D3C7430(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[2];
  type metadata accessor for _EnvironmentKeyWritingModifier<AnyShapeStyle?>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<AnyShapeStyle?>, &lazy cache variable for type metadata for AnyShapeStyle?, &type metadata for AnyShapeStyle);
  v5 = type metadata accessor for ModifiedContent(255, v1, v3, v4);
  v7[0] = v2;
  v7[1] = &protocol witness table for _EnvironmentKeyWritingModifier<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

double sub_18D3C74B8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[2];
  type metadata accessor for _EnvironmentKeyTransformModifier<[TintPlacement : AnyShapeStyle]>(255);
  v5 = type metadata accessor for ModifiedContent(255, v1, v3, v4);
  v7[0] = v2;
  v7[1] = &protocol witness table for _EnvironmentKeyTransformModifier<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

double sub_18D3C7528(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for _EnvironmentKeyWritingModifier<AnyShapeStyle?>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Color?>, &lazy cache variable for type metadata for Color?, &type metadata for Color);
  v5 = type metadata accessor for ModifiedContent(255, v1, v3, v4);
  v7[0] = v2;
  v7[1] = &protocol witness table for _EnvironmentKeyWritingModifier<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

double sub_18D3C75CC@<D0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = static ReuseTrace.recorder;

  return result;
}

uint64_t sub_18D3C7638@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA014TracksVelocityF033_FD9125BC1E04E33D1D7BE4A31225AA98LLVG_Tt2g5(*a1);
  *a2 = result & 1;
  return result;
}

void sub_18D3C76C0()
{
  lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.SuperscriptAttribute and conformance AttributeScopes.SwiftUIAttributes.SuperscriptAttribute();
  AttributeDynamicLookup.subscript.getter();
  __break(1u);
}

double sub_18D3C76FC(uint64_t *a1, void *a2)
{
  *a2 = *a1;

  return result;
}

__n128 sub_18D3C7820(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_18D3C782C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Date();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_7:
    v12 = *(v8 + 48);

    return v12(a1 + v9, a2, v7);
  }

  v10 = type metadata accessor for Locale();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[12];
    goto LABEL_7;
  }

  v11 = type metadata accessor for FormatStyleCapitalizationContext();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[15];
    goto LABEL_7;
  }

  v14 = *(a1 + a3[17]);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_18D3C7988(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for Date();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    v12 = type metadata accessor for Locale();
    if (*(*(v12 - 8) + 84) == a3)
    {
      v9 = v12;
      v10 = *(v12 - 8);
      v11 = a4[12];
    }

    else
    {
      result = type metadata accessor for FormatStyleCapitalizationContext();
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[17]) = a2;
        return result;
      }

      v9 = result;
      v10 = *(result - 8);
      v11 = a4[15];
    }
  }

  v14 = *(v10 + 56);

  return v14(a1 + v11, a2, a2, v9);
}

uint64_t sub_18D3C7AF4@<X0>(uint64_t *a1@<X8>)
{
  AttributeScopes.accessibility.getter();
  result = type metadata accessor for AttributeScopes.AccessibilityAttributes();
  *a1 = result;
  return result;
}

uint64_t sub_18D3C7BD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SystemFormatStyle.Timer(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_18D3C7C40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SystemFormatStyle.Timer(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_18D3C7CB0(os_unfair_lock_s **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  os_unfair_lock_lock(*a1 + 4);
  os_unfair_lock_opaque = v3[6]._os_unfair_lock_opaque;
  v5 = v3[7]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(v3 + 4);
  *a2 = os_unfair_lock_opaque;
  *(a2 + 4) = v5;
}

uint64_t _s7SwiftUI21MaterialBackdropProxyV7Storage33_DEF3755CDC6B87C0368876C9F497EC3DLLC4DataVwcp_0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t sub_18D3C7D48()
{
  if (*(v0 + 40))
  {
    outlined consume of Text.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32));

    if (*(v0 + 136))
    {
      if (*(v0 + 96))
      {
        outlined consume of Text.Storage(*(v0 + 72), *(v0 + 80), *(v0 + 88));
      }

      if (*(v0 + 128))
      {
        outlined consume of Text.Storage(*(v0 + 104), *(v0 + 112), *(v0 + 120));
      }
    }

    if (*(v0 + 264))
    {
      if (*(v0 + 224))
      {
        outlined consume of Text.Storage(*(v0 + 200), *(v0 + 208), *(v0 + 216));
      }

      if (*(v0 + 256))
      {
        outlined consume of Text.Storage(*(v0 + 232), *(v0 + 240), *(v0 + 248));
      }
    }
  }

  return swift_deallocObject();
}

uint64_t sub_18D3C7E54()
{
  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_18D3C7E98()
{

  return swift_deallocObject();
}

uint64_t sub_18D3C7EF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AccessibilityNodeAttachment.Storage(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_18D3C7FBC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AccessibilityNodeAttachment.Storage(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_18D3C8074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CodableAccessibilityAttachmentStorage.VBase(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_18D3C813C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CodableAccessibilityAttachmentStorage.VBase(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_18D3C81F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CodableAccessibilityAttachmentStorage.VBase(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_18D3C82C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CodableAccessibilityAttachmentStorage.VBase(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_18D3C837C()
{
  outlined consume of GraphicsFilter(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));

  return swift_deallocObject();
}

double sub_18D3C83E8@<D0>(double *a1@<X0>, double *a2@<X8>)
{
  result = *a1 * 128.0;
  *a2 = result;
  return result;
}

double sub_18D3C8400(double *a1, double *a2)
{
  result = *a1 * 0.0078125;
  *a2 = result;
  return result;
}

double sub_18D3C8418(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v5 = type metadata accessor for ModifiedContent(255, *a1, &type metadata for _HueRotationEffect, a4);
  v7[0] = v4;
  v7[1] = &protocol witness table for _HueRotationEffect;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

double sub_18D3C847C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  type metadata accessor for RendererVisualEffect<_HueRotationEffect>(255, a2, a3, a4);
  v7 = v6;
  lazy protocol witness table accessor for type RendererVisualEffect<_HueRotationEffect> and conformance RendererVisualEffect<A>(v6, v8, v9, v10);
  v14[0] = v4;
  v14[1] = v7;
  v14[2] = v5;
  v14[3] = v11;
  v12 = type metadata accessor for CombinedVisualEffect(255, v14);
  return swift_getWitnessTable(protocol conformance descriptor for CombinedVisualEffect<A, B>, v12);
}

uint64_t _s7SwiftUI18SectionAccumulatorV6RowIDsVSkAASk5index_8offsetBy07limitedI05IndexQzSgAJ_SiAJtFTW_0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

double sub_18D3C8538(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[2];
  v6 = type metadata accessor for AnchorGeometryTransformModifier(255, a1[1], a1[3], a4);
  v8 = type metadata accessor for ModifiedContent(255, v4, v6, v7);
  v10[0] = v5;
  v10[1] = &protocol witness table for AnchorGeometryTransformModifier<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v8, v10);
}

uint64_t sub_18D3C85A8()
{

  return swift_deallocObject();
}

uint64_t sub_18D3C85F0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  result = ViewRendererHost.centersRootView.getter(*(a1 + a2 - 16), *(a1 + a2 - 8));
  *a3 = result & 1;
  return result;
}

__n128 sub_18D3C866C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_18D3C8874@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 208);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_18D3C88C4(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 208) = v2;
  return swift_unknownObjectWeakAssign();
}

__n128 sub_18D3C89B4@<Q0>(__n128 *a2@<X8>)
{
  type metadata accessor for CGPoint(0);
  Value = AGGraphGetValue();
  result = *Value;
  *a2 = *Value;
  return result;
}

__n128 sub_18D3C8A94@<Q0>(_OWORD *a2@<X8>)
{
  Value = AGGraphGetValue();
  result = *Value;
  v5 = *(Value + 16);
  *a2 = *Value;
  a2[1] = v5;
  return result;
}

__n128 sub_18D3C8BEC@<Q0>(uint64_t a2@<X8>)
{
  Value = AGGraphGetValue();
  v4 = *(Value + 32);
  result = *Value;
  v6 = *(Value + 16);
  *a2 = *Value;
  *(a2 + 16) = v6;
  *(a2 + 32) = v4;
  return result;
}

uint64_t sub_18D3C8CC8@<X0>(__int128 *a2@<X8>)
{
  Value = AGGraphGetValue();
  v4 = Value[3];
  v6 = *Value;
  v5 = Value[1];
  v11[2] = Value[2];
  v11[3] = v4;
  v11[0] = v6;
  v11[1] = v5;
  v7 = Value[1];
  *a2 = *Value;
  a2[1] = v7;
  v8 = Value[3];
  a2[2] = Value[2];
  a2[3] = v8;
  return outlined init with copy of ViewGeometry(v11, &v10);
}

uint64_t sub_18D3C8DC4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(*result + 300);
  v3 = v2 == *MEMORY[0x1E698D3F8];
  if (v2 == *MEMORY[0x1E698D3F8])
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 4) = v3;
  return result;
}

uint64_t sub_18D3C8DF0(uint64_t result, uint64_t a2)
{
  if (*(result + 4))
  {
    v2 = MEMORY[0x1E698D3F8];
  }

  else
  {
    v2 = result;
  }

  *(*a2 + 300) = *v2;
  return result;
}

uint64_t sub_18D3C8E14@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(*result + 304);
  v3 = v2 == *MEMORY[0x1E698D3F8];
  if (v2 == *MEMORY[0x1E698D3F8])
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 4) = v3;
  return result;
}

uint64_t sub_18D3C8E40(uint64_t result, uint64_t a2)
{
  if (*(result + 4))
  {
    v2 = MEMORY[0x1E698D3F8];
  }

  else
  {
    v2 = result;
  }

  *(*a2 + 304) = *v2;
  return result;
}

double sub_18D3C8E64@<D0>(void *a2@<X8>)
{
  *a2 = *AGGraphGetValue();

  return result;
}

double sub_18D3C8F3C@<D0>(uint64_t *a2@<X8>)
{
  Value = AGGraphGetValue();
  v4 = Value[1];
  *a2 = *Value;
  a2[1] = v4;

  return result;
}

void sub_18D3C9018(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 361);
}