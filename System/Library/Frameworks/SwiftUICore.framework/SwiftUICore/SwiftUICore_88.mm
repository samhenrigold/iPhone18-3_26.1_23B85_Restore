uint64_t _AnyResolvedPaint.protobufPaint.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(*v1 + 200);
  v3 = *(*v1 + 184);
  a1[3] = v3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v5 = *(*(v3 - 8) + 16);

  return v5(boxed_opaque_existential_1, v1 + v2, v3);
}

void lazy protocol witness table accessor for type EllipticalGradient and conformance EllipticalGradient()
{
  if (!lazy protocol witness table cache variable for type EllipticalGradient and conformance EllipticalGradient)
  {
    swift_getWitnessTable(protocol conformance descriptor for EllipticalGradient, &type metadata for EllipticalGradient, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type EllipticalGradient and conformance EllipticalGradient);
  }
}

void lazy protocol witness table accessor for type _AnyLinearGradient and conformance _AnyLinearGradient()
{
  if (!lazy protocol witness table cache variable for type _AnyLinearGradient and conformance _AnyLinearGradient)
  {
    swift_getWitnessTable(protocol conformance descriptor for _AnyLinearGradient, &type metadata for _AnyLinearGradient, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _AnyLinearGradient and conformance _AnyLinearGradient);
  }
}

void lazy protocol witness table accessor for type _AnyRadialGradient and conformance _AnyRadialGradient()
{
  if (!lazy protocol witness table cache variable for type _AnyRadialGradient and conformance _AnyRadialGradient)
  {
    swift_getWitnessTable(protocol conformance descriptor for _AnyRadialGradient, &type metadata for _AnyRadialGradient, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _AnyRadialGradient and conformance _AnyRadialGradient);
  }
}

void lazy protocol witness table accessor for type _AnyEllipticalGradient and conformance _AnyEllipticalGradient()
{
  if (!lazy protocol witness table cache variable for type _AnyEllipticalGradient and conformance _AnyEllipticalGradient)
  {
    swift_getWitnessTable(protocol conformance descriptor for _AnyEllipticalGradient, &type metadata for _AnyEllipticalGradient, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _AnyEllipticalGradient and conformance _AnyEllipticalGradient);
  }
}

void lazy protocol witness table accessor for type _AnyAngularGradient and conformance _AnyAngularGradient()
{
  if (!lazy protocol witness table cache variable for type _AnyAngularGradient and conformance _AnyAngularGradient)
  {
    swift_getWitnessTable(protocol conformance descriptor for _AnyAngularGradient, &type metadata for _AnyAngularGradient, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _AnyAngularGradient and conformance _AnyAngularGradient);
  }
}

void visitPaint<A>(_:) in Visitor #1 in AnyResolvedPaint.anchorRect(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AnchoredResolvedPaint(0, v11, v12, v13);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v21 - v16;
  swift_getWitnessTable(protocol conformance descriptor for AnchoredResolvedPaint<A>, v14, v15);
  type metadata accessor for _AnyResolvedPaint(0, v14, v18, v19);
  (*(v8 + 16))(v10, a1, a2);
  AnchoredResolvedPaint.init(_:bounds:)(v10, a2, a3, v17, *v4, *(v4 + 8), *(v4 + 16), *(v4 + 24));
  v20 = _AnyResolvedPaint.__allocating_init(_:)(v17);

  *(v4 + 32) = v20;
}

void *protocol witness for static ShapeStyle._makeView<A>(view:inputs:) in conformance Shader@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, ValueMetadata *a5@<X4>, uint64_t a6@<X8>)
{
  lazy protocol witness table accessor for type Shader and conformance Shader();

  return static Paint._makeView<A>(view:inputs:)(a1, a2, a5, a3, v12, a4, a6);
}

void *protocol witness for static ShapeStyle._makeView<A>(view:inputs:) in conformance MeshGradient@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, ValueMetadata *a5@<X4>, uint64_t a6@<X8>)
{
  lazy protocol witness table accessor for type MeshGradient and conformance MeshGradient();

  return static Paint._makeView<A>(view:inputs:)(a1, a2, a5, a3, v12, a4, a6);
}

void lazy protocol witness table accessor for type Shader and conformance Shader()
{
  if (!lazy protocol witness table cache variable for type Shader and conformance Shader)
  {
    swift_getWitnessTable(protocol conformance descriptor for Shader, &type metadata for Shader, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Shader and conformance Shader);
  }
}

void lazy protocol witness table accessor for type MeshGradient and conformance MeshGradient()
{
  if (!lazy protocol witness table cache variable for type MeshGradient and conformance MeshGradient)
  {
    swift_getWitnessTable(protocol conformance descriptor for MeshGradient, &type metadata for MeshGradient, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type MeshGradient and conformance MeshGradient);
  }
}

void lazy protocol witness table accessor for type CodableResolvedPaint.Tag and conformance CodableResolvedPaint.Tag()
{
  if (!lazy protocol witness table cache variable for type CodableResolvedPaint.Tag and conformance CodableResolvedPaint.Tag)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableResolvedPaint.Tag, &type metadata for CodableResolvedPaint.Tag, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableResolvedPaint.Tag and conformance CodableResolvedPaint.Tag);
  }
}

uint64_t dispatch thunk of ResolvedPaint.draw(path:style:in:bounds:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a1 + 32);
  v7 = *(a4 + 32);
  v8 = *(a6 + 32);
  v9 = *(a1 + 16);
  v14[0] = *a1;
  v14[1] = v9;
  v15 = v6;
  v10 = *(a4 + 16);
  v12[0] = *a4;
  v12[1] = v10;
  v13 = v7;
  return v8(v14, a2, a3, v12, a5);
}

uint64_t dispatch thunk of AnyResolvedPaint.draw(path:style:in:bounds:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  v6 = *(a4 + 32);
  v7 = *(*v4 + 80);
  v8 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v8;
  v14 = v5;
  v9 = *(a4 + 16);
  v11[0] = *a4;
  v11[1] = v9;
  v12 = v6;
  return v7(v13, a2, a3, v11);
}

uint64_t dispatch thunk of AnyResolvedPaint.encode(to:)()
{
  return (*(*v0 + 160))();
}

{
  return (*(*v0 + 168))();
}

void *assignWithCopy for Visitor #1 in AnyResolvedPaint.anchorRect(_:)(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  a1[4] = a2[4];

  return a1;
}

uint64_t assignWithTake for Visitor #1 in AnyResolvedPaint.anchorRect(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t getEnumTagSinglePayload for Visitor #1 in AnyResolvedPaint.anchorRect(_:)(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t storeEnumTagSinglePayload for Visitor #1 in AnyResolvedPaint.anchorRect(_:)(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

void type metadata accessor for _AnyResolvedPaint<AnchoredResolvedPaint<MeshGradient._Paint>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _AnyResolvedPaint<AnchoredResolvedPaint<MeshGradient._Paint>>)
  {
    type metadata accessor for _AnyResolvedPaint<LinearGradient.AbsolutePaint>(255, &lazy cache variable for type metadata for AnchoredResolvedPaint<MeshGradient._Paint>, lazy protocol witness table accessor for type MeshGradient._Paint and conformance MeshGradient._Paint, &type metadata for MeshGradient._Paint, type metadata accessor for AnchoredResolvedPaint);
    v3 = v2;
    lazy protocol witness table accessor for type AnchoredResolvedPaint<MeshGradient._Paint> and conformance AnchoredResolvedPaint<A>(&lazy protocol witness table cache variable for type AnchoredResolvedPaint<MeshGradient._Paint> and conformance AnchoredResolvedPaint<A>, &lazy cache variable for type metadata for AnchoredResolvedPaint<MeshGradient._Paint>, lazy protocol witness table accessor for type MeshGradient._Paint and conformance MeshGradient._Paint, &type metadata for MeshGradient._Paint);
    v6 = type metadata accessor for _AnyResolvedPaint(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for _AnyResolvedPaint<AnchoredResolvedPaint<MeshGradient._Paint>>);
    }
  }
}

void type metadata accessor for _AnyResolvedPaint<AnchoredResolvedPaint<Shader.ResolvedShader>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _AnyResolvedPaint<AnchoredResolvedPaint<Shader.ResolvedShader>>)
  {
    type metadata accessor for _AnyResolvedPaint<LinearGradient.AbsolutePaint>(255, &lazy cache variable for type metadata for AnchoredResolvedPaint<Shader.ResolvedShader>, lazy protocol witness table accessor for type Shader.ResolvedShader and conformance Shader.ResolvedShader, &type metadata for Shader.ResolvedShader, type metadata accessor for AnchoredResolvedPaint);
    v3 = v2;
    lazy protocol witness table accessor for type AnchoredResolvedPaint<MeshGradient._Paint> and conformance AnchoredResolvedPaint<A>(&lazy protocol witness table cache variable for type AnchoredResolvedPaint<Shader.ResolvedShader> and conformance AnchoredResolvedPaint<A>, &lazy cache variable for type metadata for AnchoredResolvedPaint<Shader.ResolvedShader>, lazy protocol witness table accessor for type Shader.ResolvedShader and conformance Shader.ResolvedShader, &type metadata for Shader.ResolvedShader);
    v6 = type metadata accessor for _AnyResolvedPaint(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for _AnyResolvedPaint<AnchoredResolvedPaint<Shader.ResolvedShader>>);
    }
  }
}

void lazy protocol witness table accessor for type AnchoredResolvedPaint<MeshGradient._Paint> and conformance AnchoredResolvedPaint<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a1)
  {
    type metadata accessor for _AnyResolvedPaint<LinearGradient.AbsolutePaint>(255, a2, a3, a4, type metadata accessor for AnchoredResolvedPaint);
    swift_getWitnessTable(protocol conformance descriptor for AnchoredResolvedPaint<A>, v5);
    atomic_store(v6, a1);
  }
}

void type metadata accessor for _AnyResolvedPaint<AnchoredResolvedPaint<ImagePaint._Paint>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _AnyResolvedPaint<AnchoredResolvedPaint<ImagePaint._Paint>>)
  {
    type metadata accessor for _AnyResolvedPaint<LinearGradient.AbsolutePaint>(255, &lazy cache variable for type metadata for AnchoredResolvedPaint<ImagePaint._Paint>, lazy protocol witness table accessor for type ImagePaint._Paint and conformance ImagePaint._Paint, &type metadata for ImagePaint._Paint, type metadata accessor for AnchoredResolvedPaint);
    v3 = v2;
    lazy protocol witness table accessor for type AnchoredResolvedPaint<MeshGradient._Paint> and conformance AnchoredResolvedPaint<A>(&lazy protocol witness table cache variable for type AnchoredResolvedPaint<ImagePaint._Paint> and conformance AnchoredResolvedPaint<A>, &lazy cache variable for type metadata for AnchoredResolvedPaint<ImagePaint._Paint>, lazy protocol witness table accessor for type ImagePaint._Paint and conformance ImagePaint._Paint, &type metadata for ImagePaint._Paint);
    v6 = type metadata accessor for _AnyResolvedPaint(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for _AnyResolvedPaint<AnchoredResolvedPaint<ImagePaint._Paint>>);
    }
  }
}

void type metadata accessor for _AnyResolvedPaint<AnchoredResolvedPaint<AngularGradient._Paint>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _AnyResolvedPaint<AnchoredResolvedPaint<AngularGradient._Paint>>)
  {
    type metadata accessor for _AnyResolvedPaint<LinearGradient.AbsolutePaint>(255, &lazy cache variable for type metadata for AnchoredResolvedPaint<AngularGradient._Paint>, lazy protocol witness table accessor for type AngularGradient._Paint and conformance AngularGradient._Paint, &type metadata for AngularGradient._Paint, type metadata accessor for AnchoredResolvedPaint);
    v3 = v2;
    lazy protocol witness table accessor for type AnchoredResolvedPaint<MeshGradient._Paint> and conformance AnchoredResolvedPaint<A>(&lazy protocol witness table cache variable for type AnchoredResolvedPaint<AngularGradient._Paint> and conformance AnchoredResolvedPaint<A>, &lazy cache variable for type metadata for AnchoredResolvedPaint<AngularGradient._Paint>, lazy protocol witness table accessor for type AngularGradient._Paint and conformance AngularGradient._Paint, &type metadata for AngularGradient._Paint);
    v6 = type metadata accessor for _AnyResolvedPaint(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for _AnyResolvedPaint<AnchoredResolvedPaint<AngularGradient._Paint>>);
    }
  }
}

void type metadata accessor for _AnyResolvedPaint<AnchoredResolvedPaint<EllipticalGradient._Paint>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _AnyResolvedPaint<AnchoredResolvedPaint<EllipticalGradient._Paint>>)
  {
    type metadata accessor for _AnyResolvedPaint<LinearGradient.AbsolutePaint>(255, &lazy cache variable for type metadata for AnchoredResolvedPaint<EllipticalGradient._Paint>, lazy protocol witness table accessor for type EllipticalGradient._Paint and conformance EllipticalGradient._Paint, &type metadata for EllipticalGradient._Paint, type metadata accessor for AnchoredResolvedPaint);
    v3 = v2;
    lazy protocol witness table accessor for type AnchoredResolvedPaint<MeshGradient._Paint> and conformance AnchoredResolvedPaint<A>(&lazy protocol witness table cache variable for type AnchoredResolvedPaint<EllipticalGradient._Paint> and conformance AnchoredResolvedPaint<A>, &lazy cache variable for type metadata for AnchoredResolvedPaint<EllipticalGradient._Paint>, lazy protocol witness table accessor for type EllipticalGradient._Paint and conformance EllipticalGradient._Paint, &type metadata for EllipticalGradient._Paint);
    v6 = type metadata accessor for _AnyResolvedPaint(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for _AnyResolvedPaint<AnchoredResolvedPaint<EllipticalGradient._Paint>>);
    }
  }
}

void type metadata accessor for _AnyResolvedPaint<AnchoredResolvedPaint<RadialGradient._Paint>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _AnyResolvedPaint<AnchoredResolvedPaint<RadialGradient._Paint>>)
  {
    type metadata accessor for _AnyResolvedPaint<LinearGradient.AbsolutePaint>(255, &lazy cache variable for type metadata for AnchoredResolvedPaint<RadialGradient._Paint>, lazy protocol witness table accessor for type RadialGradient._Paint and conformance RadialGradient._Paint, &type metadata for RadialGradient._Paint, type metadata accessor for AnchoredResolvedPaint);
    v3 = v2;
    lazy protocol witness table accessor for type AnchoredResolvedPaint<MeshGradient._Paint> and conformance AnchoredResolvedPaint<A>(&lazy protocol witness table cache variable for type AnchoredResolvedPaint<RadialGradient._Paint> and conformance AnchoredResolvedPaint<A>, &lazy cache variable for type metadata for AnchoredResolvedPaint<RadialGradient._Paint>, lazy protocol witness table accessor for type RadialGradient._Paint and conformance RadialGradient._Paint, &type metadata for RadialGradient._Paint);
    v6 = type metadata accessor for _AnyResolvedPaint(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for _AnyResolvedPaint<AnchoredResolvedPaint<RadialGradient._Paint>>);
    }
  }
}

uint64_t _s7SwiftUI19ViewTraitCollectionVy5ValueQzxmcAA01_cD3KeyRzluisAA32_DisplayList_StableIdentityScopeV_Tt0g5(unint64_t a1)
{
  v2 = a1;
  v3 = 0;
  v4 = 0;
  v20 = HIDWORD(a1);
  v25 = a1;
  v5 = *v1;
  v6 = *v1 + 32;
  v7 = *(*v1 + 16);
  do
  {
    if (v7 == v4)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v7 = v21;
      *v21 = v5;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:
        v18 = v5[2];
        v17 = v5[3];
        if (v18 >= v17 >> 1)
        {
          v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v5);
          *v7 = v5;
        }

        type metadata accessor for ViewTraitCollection.AnyTrait<LeafContentType.TraitKey>(0, &lazy cache variable for type metadata for ViewTraitCollection.AnyTrait<_DisplayList_StableIdentityScope>, &type metadata for _DisplayList_StableIdentityScope, &protocol witness table for _DisplayList_StableIdentityScope, type metadata accessor for ViewTraitCollection.AnyTrait);
        v23 = v19;
        v24 = &protocol witness table for ViewTraitCollection.AnyTrait<A>;
        *&v22 = __PAIR64__(v20, v2);
        v5[2] = v18 + 1;
        result = outlined init with take of AnyTrackedValue(&v22, &v5[5 * v18 + 4]);
        goto LABEL_13;
      }

LABEL_15:
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5[2] + 1, 1, v5);
      *v7 = v5;
      goto LABEL_10;
    }

    if (v4 >= v5[2])
    {
      __break(1u);
      goto LABEL_15;
    }

    v4 = (v4 + 1);
    outlined init with copy of AnyTrackedValue(v6 + v3 * 8, &v22);
    v8 = v23;
    v9 = v24;
    __swift_project_boxed_opaque_existential_1(&v22, v23);
    v10 = (v9[1])(v8, v9);
    __swift_destroy_boxed_opaque_existential_1(&v22);
    v3 += 5;
  }

  while (v10 != &type metadata for _DisplayList_StableIdentityScope);
  result = swift_isUniquelyReferenced_nonNull_native();
  v7 = v21;
  *v21 = v5;
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
    *v21 = result;
  }

  if (v4 - 1 < v5[2])
  {
    v12 = v5[v3 + 2];
    v13 = v5[v3 + 3];
    __swift_mutable_project_boxed_opaque_existential_1(&v5[v3 - 1], v12);
    v14 = *(v13 + 24);
    type metadata accessor for LeafContentType?(0, &lazy cache variable for type metadata for WeakAttribute<_DisplayList_StableIdentityScope>, &type metadata for _DisplayList_StableIdentityScope, MEMORY[0x1E698D370]);
    result = v14(&v25, v15, v12, v13);
LABEL_13:
    *v7 = v5;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t _s7SwiftUI19ViewTraitCollectionVy5ValueQzxmcAA01_cD3KeyRzluisAA07_LayoutD0VyAA010GlassEntryH033_D12F2F25A0BD65FFBD3A7636B60067DFLLV0G0VG_Tt0B5(void *__src)
{
  memcpy(__dst, __src, 0x289uLL);
  v2 = 0;
  v3 = 0;
  v22 = v1;
  v4 = *v1;
  v5 = *v1 + 32;
  v6 = *(*v1 + 16);
  do
  {
    if (v6 == v3)
    {
      memcpy(__srca, __dst, sizeof(__srca));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v6 = v22;
      *v22 = v4;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:
        v20 = v4[2];
        v19 = v4[3];
        if (v20 >= v19 >> 1)
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v4);
          *v6 = v4;
        }

        type metadata accessor for ViewTraitCollection.AnyTrait<_LayoutTrait<GlassEntryLayout.Key>>(0);
        v25 = v21;
        v26 = &protocol witness table for ViewTraitCollection.AnyTrait<A>;
        *&v24 = swift_allocObject();
        memcpy((v24 + 16), __srca, 0x289uLL);
        v4[2] = v20 + 1;
        result = outlined init with take of AnyTrackedValue(&v24, &v4[5 * v20 + 4]);
        goto LABEL_13;
      }

LABEL_15:
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, v4);
      *v6 = v4;
      goto LABEL_10;
    }

    if (v3 >= v4[2])
    {
      __break(1u);
      goto LABEL_15;
    }

    v3 = (v3 + 1);
    outlined init with copy of AnyTrackedValue(v5 + v2 * 8, &v24);
    v7 = v25;
    v8 = v26;
    __swift_project_boxed_opaque_existential_1(&v24, v25);
    v9 = (v8[1])(v7, v8);
    type metadata accessor for ViewTraitCollection.AnyTrait<LeafContentType.TraitKey>(0, &lazy cache variable for type metadata for _LayoutTrait<GlassEntryLayout.Key>, &type metadata for GlassEntryLayout.Key, &protocol witness table for GlassEntryLayout.Key, type metadata accessor for _LayoutTrait);
    v11 = v10;
    __swift_destroy_boxed_opaque_existential_1(&v24);
    v2 += 5;
  }

  while (v9 != v11);
  result = swift_isUniquelyReferenced_nonNull_native();
  *v22 = v4;
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
    v4 = result;
    *v22 = result;
  }

  if (v3 - 1 < v4[2])
  {
    v13 = v4[v2 + 2];
    v14 = v4[v2 + 3];
    __swift_mutable_project_boxed_opaque_existential_1(&v4[v2 - 1], v13);
    v15 = *(v14 + 24);
    type metadata accessor for LeafContentType?(0, &lazy cache variable for type metadata for GlassContainer.Item?, &type metadata for GlassContainer.Item, MEMORY[0x1E69E6720]);
    v16 = v13;
    v6 = v22;
    result = v15(__dst, v17, v16, v14);
LABEL_13:
    *v6 = v4;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t _s7SwiftUI19ViewTraitCollectionVy5ValueQzxmcAA01_cD3KeyRzluisAA010TransitiondG0V_Tt0g5(uint64_t a1)
{
  v2 = v1;
  v3 = 0;
  v4 = 0;
  v22 = a1;
  v5 = *v1;
  v6 = *v1 + 32;
  v7 = *(*v1 + 16);
  do
  {
    if (v7 == v4)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v2 = v5;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:
        v16 = v5[2];
        v15 = v5[3];
        if (v16 >= v15 >> 1)
        {
          v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v5);
          *v2 = v5;
        }

        type metadata accessor for ViewTraitCollection.AnyTrait<LeafContentType.TraitKey>(0, &lazy cache variable for type metadata for ViewTraitCollection.AnyTrait<TransitionTraitKey>, &type metadata for TransitionTraitKey, &protocol witness table for TransitionTraitKey, type metadata accessor for ViewTraitCollection.AnyTrait);
        v20 = v17;
        v21 = &protocol witness table for ViewTraitCollection.AnyTrait<A>;
        *&v19 = a1;
        v5[2] = v16 + 1;
        result = outlined init with take of AnyTrackedValue(&v19, &v5[5 * v16 + 4]);
        goto LABEL_13;
      }

LABEL_15:
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5[2] + 1, 1, v5);
      *v2 = v5;
      goto LABEL_10;
    }

    if (v4 >= v5[2])
    {
      __break(1u);
      goto LABEL_15;
    }

    ++v4;
    outlined init with copy of AnyTrackedValue(v6 + v3 * 8, &v19);
    v8 = v20;
    v9 = v21;
    __swift_project_boxed_opaque_existential_1(&v19, v20);
    v10 = (v9[1])(v8, v9);
    __swift_destroy_boxed_opaque_existential_1(&v19);
    v3 += 5;
  }

  while (v10 != &type metadata for TransitionTraitKey);
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
    *v2 = result;
  }

  if (v4 - 1 < v5[2])
  {
    v12 = v5[v3 + 2];
    v13 = v5[v3 + 3];
    __swift_mutable_project_boxed_opaque_existential_1(&v5[v3 - 1], v12);
    result = (*(v13 + 24))(&v22, &type metadata for AnyTransition, v12, v13);
LABEL_13:
    *v2 = v5;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t _s7SwiftUI19ViewTraitCollectionVy5ValueQzxmcAA01_cD3KeyRzluisAA06IsLeafdG0V_Tt0g5(char a1)
{
  v2 = v1;
  v3 = 0;
  v4 = 0;
  v18 = a1 & 1;
  v22 = a1;
  v5 = *v1;
  v6 = *v1 + 32;
  v7 = *(*v1 + 16);
  do
  {
    if (v7 == v4)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v2 = v5;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:
        v16 = v5[2];
        v15 = v5[3];
        if (v16 >= v15 >> 1)
        {
          v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v5);
          *v2 = v5;
        }

        type metadata accessor for ViewTraitCollection.AnyTrait<LeafContentType.TraitKey>(0, &lazy cache variable for type metadata for ViewTraitCollection.AnyTrait<IsLeafTraitKey>, &type metadata for IsLeafTraitKey, &protocol witness table for IsLeafTraitKey, type metadata accessor for ViewTraitCollection.AnyTrait);
        v20 = v17;
        v21 = &protocol witness table for ViewTraitCollection.AnyTrait<A>;
        LOBYTE(v19) = v18;
        v5[2] = v16 + 1;
        result = outlined init with take of AnyTrackedValue(&v19, &v5[5 * v16 + 4]);
        goto LABEL_13;
      }

LABEL_15:
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5[2] + 1, 1, v5);
      *v2 = v5;
      goto LABEL_10;
    }

    if (v4 >= v5[2])
    {
      __break(1u);
      goto LABEL_15;
    }

    ++v4;
    outlined init with copy of AnyTrackedValue(v6 + v3 * 8, &v19);
    v8 = v20;
    v9 = v21;
    __swift_project_boxed_opaque_existential_1(&v19, v20);
    v10 = (v9[1])(v8, v9);
    __swift_destroy_boxed_opaque_existential_1(&v19);
    v3 += 5;
  }

  while (v10 != &type metadata for IsLeafTraitKey);
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
    *v2 = result;
  }

  if (v4 - 1 < v5[2])
  {
    v12 = v5[v3 + 2];
    v13 = v5[v3 + 3];
    __swift_mutable_project_boxed_opaque_existential_1(&v5[v3 - 1], v12);
    result = (*(v13 + 24))(&v22, MEMORY[0x1E69E6370], v12, v13);
LABEL_13:
    *v2 = v5;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t _s7SwiftUI19ViewTraitCollectionVy5ValueQzxmcAA01_cD3KeyRzluisAA07IsEmptycdG0V_Tt0g5(char a1)
{
  v2 = v1;
  v3 = 0;
  v4 = 0;
  v18 = a1 & 1;
  v22 = a1;
  v5 = *v1;
  v6 = *v1 + 32;
  v7 = *(*v1 + 16);
  do
  {
    if (v7 == v4)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v2 = v5;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:
        v16 = v5[2];
        v15 = v5[3];
        if (v16 >= v15 >> 1)
        {
          v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v5);
          *v2 = v5;
        }

        type metadata accessor for ViewTraitCollection.AnyTrait<LeafContentType.TraitKey>(0, &lazy cache variable for type metadata for ViewTraitCollection.AnyTrait<IsEmptyViewTraitKey>, &type metadata for IsEmptyViewTraitKey, &protocol witness table for IsEmptyViewTraitKey, type metadata accessor for ViewTraitCollection.AnyTrait);
        v20 = v17;
        v21 = &protocol witness table for ViewTraitCollection.AnyTrait<A>;
        LOBYTE(v19) = v18;
        v5[2] = v16 + 1;
        result = outlined init with take of AnyTrackedValue(&v19, &v5[5 * v16 + 4]);
        goto LABEL_13;
      }

LABEL_15:
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5[2] + 1, 1, v5);
      *v2 = v5;
      goto LABEL_10;
    }

    if (v4 >= v5[2])
    {
      __break(1u);
      goto LABEL_15;
    }

    ++v4;
    outlined init with copy of AnyTrackedValue(v6 + v3 * 8, &v19);
    v8 = v20;
    v9 = v21;
    __swift_project_boxed_opaque_existential_1(&v19, v20);
    v10 = (v9[1])(v8, v9);
    __swift_destroy_boxed_opaque_existential_1(&v19);
    v3 += 5;
  }

  while (v10 != &type metadata for IsEmptyViewTraitKey);
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
    *v2 = result;
  }

  if (v4 - 1 < v5[2])
  {
    v12 = v5[v3 + 2];
    v13 = v5[v3 + 3];
    __swift_mutable_project_boxed_opaque_existential_1(&v5[v3 - 1], v12);
    result = (*(v13 + 24))(&v22, MEMORY[0x1E69E6370], v12, v13);
LABEL_13:
    *v2 = v5;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t _s7SwiftUI19ViewTraitCollectionVy5ValueQzxmcAA01_cD3KeyRzluisAA015IsSectionHeaderdG0V_Tt0g5(char a1)
{
  v2 = v1;
  v3 = 0;
  v4 = 0;
  v18 = a1 & 1;
  v22 = a1;
  v5 = *v1;
  v6 = *v1 + 32;
  v7 = *(*v1 + 16);
  do
  {
    if (v7 == v4)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v2 = v5;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:
        v16 = v5[2];
        v15 = v5[3];
        if (v16 >= v15 >> 1)
        {
          v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v5);
          *v2 = v5;
        }

        type metadata accessor for ViewTraitCollection.AnyTrait<LeafContentType.TraitKey>(0, &lazy cache variable for type metadata for ViewTraitCollection.AnyTrait<IsSectionHeaderTraitKey>, &type metadata for IsSectionHeaderTraitKey, &protocol witness table for IsSectionHeaderTraitKey, type metadata accessor for ViewTraitCollection.AnyTrait);
        v20 = v17;
        v21 = &protocol witness table for ViewTraitCollection.AnyTrait<A>;
        LOBYTE(v19) = v18;
        v5[2] = v16 + 1;
        result = outlined init with take of AnyTrackedValue(&v19, &v5[5 * v16 + 4]);
        goto LABEL_13;
      }

LABEL_15:
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5[2] + 1, 1, v5);
      *v2 = v5;
      goto LABEL_10;
    }

    if (v4 >= v5[2])
    {
      __break(1u);
      goto LABEL_15;
    }

    ++v4;
    outlined init with copy of AnyTrackedValue(v6 + v3 * 8, &v19);
    v8 = v20;
    v9 = v21;
    __swift_project_boxed_opaque_existential_1(&v19, v20);
    v10 = (v9[1])(v8, v9);
    __swift_destroy_boxed_opaque_existential_1(&v19);
    v3 += 5;
  }

  while (v10 != &type metadata for IsSectionHeaderTraitKey);
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
    *v2 = result;
  }

  if (v4 - 1 < v5[2])
  {
    v12 = v5[v3 + 2];
    v13 = v5[v3 + 3];
    __swift_mutable_project_boxed_opaque_existential_1(&v5[v3 - 1], v12);
    result = (*(v13 + 24))(&v22, MEMORY[0x1E69E6370], v12, v13);
LABEL_13:
    *v2 = v5;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t _s7SwiftUI19ViewTraitCollectionVy5ValueQzxmcAA01_cD3KeyRzluisAA015IsSectionFooterdG0V_Tt0g5(char a1)
{
  v2 = v1;
  v3 = 0;
  v4 = 0;
  v18 = a1 & 1;
  v22 = a1;
  v5 = *v1;
  v6 = *v1 + 32;
  v7 = *(*v1 + 16);
  do
  {
    if (v7 == v4)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v2 = v5;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:
        v16 = v5[2];
        v15 = v5[3];
        if (v16 >= v15 >> 1)
        {
          v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v5);
          *v2 = v5;
        }

        type metadata accessor for ViewTraitCollection.AnyTrait<LeafContentType.TraitKey>(0, &lazy cache variable for type metadata for ViewTraitCollection.AnyTrait<IsSectionFooterTraitKey>, &type metadata for IsSectionFooterTraitKey, &protocol witness table for IsSectionFooterTraitKey, type metadata accessor for ViewTraitCollection.AnyTrait);
        v20 = v17;
        v21 = &protocol witness table for ViewTraitCollection.AnyTrait<A>;
        LOBYTE(v19) = v18;
        v5[2] = v16 + 1;
        result = outlined init with take of AnyTrackedValue(&v19, &v5[5 * v16 + 4]);
        goto LABEL_13;
      }

LABEL_15:
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5[2] + 1, 1, v5);
      *v2 = v5;
      goto LABEL_10;
    }

    if (v4 >= v5[2])
    {
      __break(1u);
      goto LABEL_15;
    }

    ++v4;
    outlined init with copy of AnyTrackedValue(v6 + v3 * 8, &v19);
    v8 = v20;
    v9 = v21;
    __swift_project_boxed_opaque_existential_1(&v19, v20);
    v10 = (v9[1])(v8, v9);
    __swift_destroy_boxed_opaque_existential_1(&v19);
    v3 += 5;
  }

  while (v10 != &type metadata for IsSectionFooterTraitKey);
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
    *v2 = result;
  }

  if (v4 - 1 < v5[2])
  {
    v12 = v5[v3 + 2];
    v13 = v5[v3 + 3];
    __swift_mutable_project_boxed_opaque_existential_1(&v5[v3 - 1], v12);
    result = (*(v13 + 24))(&v22, MEMORY[0x1E69E6370], v12, v13);
LABEL_13:
    *v2 = v5;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t _s7SwiftUI19ViewTraitCollectionVy5ValueQzxmcAA01_cD3KeyRzluisAA010IsExpandeddG0V_Tt0g5(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v5 = 0;
  v6 = 0;
  *&v22 = a1;
  *(&v22 + 1) = a2;
  v28[0] = a1;
  v28[1] = a2;
  v29 = a3;
  v7 = *v3;
  v8 = *v3 + 32;
  v9 = *(*v3 + 16);
  do
  {
    if (v9 == v6)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v4 = v7;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:
        v20 = v7[2];
        v19 = v7[3];
        if (v20 >= v19 >> 1)
        {
          v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v7);
          *v4 = v7;
        }

        type metadata accessor for ViewTraitCollection.AnyTrait<LeafContentType.TraitKey>(0, &lazy cache variable for type metadata for ViewTraitCollection.AnyTrait<IsExpandedTraitKey>, &type metadata for IsExpandedTraitKey, &protocol witness table for IsExpandedTraitKey, type metadata accessor for ViewTraitCollection.AnyTrait);
        v26 = v21;
        v27 = &protocol witness table for ViewTraitCollection.AnyTrait<A>;
        v24 = v22;
        v25 = a3;
        v7[2] = v20 + 1;
        result = outlined init with take of AnyTrackedValue(&v24, &v7[5 * v20 + 4]);
        goto LABEL_13;
      }

LABEL_15:
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
      *v4 = v7;
      goto LABEL_10;
    }

    if (v6 >= v7[2])
    {
      __break(1u);
      goto LABEL_15;
    }

    ++v6;
    outlined init with copy of AnyTrackedValue(v8 + v5 * 8, &v24);
    v10 = v26;
    v11 = v27;
    __swift_project_boxed_opaque_existential_1(&v24, v26);
    v12 = (v11[1])(v10, v11);
    __swift_destroy_boxed_opaque_existential_1(&v24);
    v5 += 5;
  }

  while (v12 != &type metadata for IsExpandedTraitKey);
  result = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v7;
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
    v7 = result;
    *v4 = result;
  }

  if (v6 - 1 < v7[2])
  {
    v14 = v7[v5 + 2];
    v15 = v7[v5 + 3];
    __swift_mutable_project_boxed_opaque_existential_1(&v7[v5 - 1], v14);
    v16 = *(v15 + 24);
    type metadata accessor for Binding<Bool>?(0);
    result = v16(v28, v17, v14, v15);
LABEL_13:
    *v4 = v7;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t _s7SwiftUI19ViewTraitCollectionVy5ValueQzxmcAA01_cD3KeyRzluisAA15LeafContentTypeO0dG0V_Tt0B5(char a1)
{
  v2 = v1;
  v3 = 0;
  v4 = 0;
  v24 = a1;
  v5 = *v1;
  v6 = *v1 + 32;
  v7 = *(*v1 + 16);
  do
  {
    if (v7 == v4)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v2 = v5;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:
        v18 = v5[2];
        v17 = v5[3];
        if (v18 >= v17 >> 1)
        {
          v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v5);
          *v2 = v5;
        }

        type metadata accessor for ViewTraitCollection.AnyTrait<LeafContentType.TraitKey>(0, &lazy cache variable for type metadata for ViewTraitCollection.AnyTrait<LeafContentType.TraitKey>, &type metadata for LeafContentType.TraitKey, &protocol witness table for LeafContentType.TraitKey, type metadata accessor for ViewTraitCollection.AnyTrait);
        v22 = v19;
        v23 = &protocol witness table for ViewTraitCollection.AnyTrait<A>;
        LOBYTE(v21) = a1;
        v5[2] = v18 + 1;
        result = outlined init with take of AnyTrackedValue(&v21, &v5[5 * v18 + 4]);
        goto LABEL_13;
      }

LABEL_15:
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5[2] + 1, 1, v5);
      *v2 = v5;
      goto LABEL_10;
    }

    if (v4 >= v5[2])
    {
      __break(1u);
      goto LABEL_15;
    }

    ++v4;
    outlined init with copy of AnyTrackedValue(v6 + v3 * 8, &v21);
    v8 = v22;
    v9 = v23;
    __swift_project_boxed_opaque_existential_1(&v21, v22);
    v10 = (v9[1])(v8, v9);
    __swift_destroy_boxed_opaque_existential_1(&v21);
    v3 += 5;
  }

  while (v10 != &type metadata for LeafContentType.TraitKey);
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
    *v2 = result;
  }

  if (v4 - 1 < v5[2])
  {
    v12 = v5[v3 + 2];
    v13 = v5[v3 + 3];
    __swift_mutable_project_boxed_opaque_existential_1(&v5[v3 - 1], v12);
    v14 = *(v13 + 24);
    type metadata accessor for LeafContentType?(0, &lazy cache variable for type metadata for LeafContentType?, &type metadata for LeafContentType, MEMORY[0x1E69E6720]);
    result = v14(&v24, v15, v12, v13);
LABEL_13:
    *v2 = v5;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t _s7SwiftUI19ViewTraitCollectionVy5ValueQzxmcAA01_cD3KeyRzluisAA06ZIndexdG0V_Tt0g5(double a1)
{
  v2 = v1;
  v4 = 0;
  v5 = 0;
  v22 = a1;
  v6 = *v1;
  v7 = *v1 + 32;
  v8 = *(*v1 + 16);
  do
  {
    if (v8 == v5)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v2 = v6;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:
        v17 = v6[2];
        v16 = v6[3];
        if (v17 >= v16 >> 1)
        {
          v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v6);
          *v2 = v6;
        }

        type metadata accessor for ViewTraitCollection.AnyTrait<LeafContentType.TraitKey>(0, &lazy cache variable for type metadata for ViewTraitCollection.AnyTrait<ZIndexTraitKey>, &type metadata for ZIndexTraitKey, &protocol witness table for ZIndexTraitKey, type metadata accessor for ViewTraitCollection.AnyTrait);
        v20 = v18;
        v21 = &protocol witness table for ViewTraitCollection.AnyTrait<A>;
        *&v19 = a1;
        v6[2] = v17 + 1;
        result = outlined init with take of AnyTrackedValue(&v19, &v6[5 * v17 + 4]);
        goto LABEL_13;
      }

LABEL_15:
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6[2] + 1, 1, v6);
      *v2 = v6;
      goto LABEL_10;
    }

    if (v5 >= v6[2])
    {
      __break(1u);
      goto LABEL_15;
    }

    ++v5;
    outlined init with copy of AnyTrackedValue(v7 + v4 * 8, &v19);
    v9 = v20;
    v10 = v21;
    __swift_project_boxed_opaque_existential_1(&v19, v20);
    v11 = (v10[1])(v9, v10);
    __swift_destroy_boxed_opaque_existential_1(&v19);
    v4 += 5;
  }

  while (v11 != &type metadata for ZIndexTraitKey);
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v6;
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
    v6 = result;
    *v2 = result;
  }

  if (v5 - 1 < v6[2])
  {
    v13 = v6[v4 + 2];
    v14 = v6[v4 + 3];
    __swift_mutable_project_boxed_opaque_existential_1(&v6[v4 - 1], v13);
    result = (*(v14 + 24))(&v22, MEMORY[0x1E69E63B0], v13, v14);
LABEL_13:
    *v2 = v6;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t _s7SwiftUI19ViewTraitCollectionVy5ValueQzxmcAA01_cD3KeyRzluisAA018IsAuxiliaryContentdG0V_Tt0g5(char a1)
{
  v2 = v1;
  v3 = 0;
  v4 = 0;
  v18 = a1 & 1;
  v22 = a1;
  v5 = *v1;
  v6 = *v1 + 32;
  v7 = *(*v1 + 16);
  do
  {
    if (v7 == v4)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v2 = v5;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:
        v16 = v5[2];
        v15 = v5[3];
        if (v16 >= v15 >> 1)
        {
          v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v5);
          *v2 = v5;
        }

        type metadata accessor for ViewTraitCollection.AnyTrait<LeafContentType.TraitKey>(0, &lazy cache variable for type metadata for ViewTraitCollection.AnyTrait<IsAuxiliaryContentTraitKey>, &type metadata for IsAuxiliaryContentTraitKey, &protocol witness table for IsAuxiliaryContentTraitKey, type metadata accessor for ViewTraitCollection.AnyTrait);
        v20 = v17;
        v21 = &protocol witness table for ViewTraitCollection.AnyTrait<A>;
        LOBYTE(v19) = v18;
        v5[2] = v16 + 1;
        result = outlined init with take of AnyTrackedValue(&v19, &v5[5 * v16 + 4]);
        goto LABEL_13;
      }

LABEL_15:
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5[2] + 1, 1, v5);
      *v2 = v5;
      goto LABEL_10;
    }

    if (v4 >= v5[2])
    {
      __break(1u);
      goto LABEL_15;
    }

    ++v4;
    outlined init with copy of AnyTrackedValue(v6 + v3 * 8, &v19);
    v8 = v20;
    v9 = v21;
    __swift_project_boxed_opaque_existential_1(&v19, v20);
    v10 = (v9[1])(v8, v9);
    __swift_destroy_boxed_opaque_existential_1(&v19);
    v3 += 5;
  }

  while (v10 != &type metadata for IsAuxiliaryContentTraitKey);
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
    *v2 = result;
  }

  if (v4 - 1 < v5[2])
  {
    v12 = v5[v3 + 2];
    v13 = v5[v3 + 3];
    __swift_mutable_project_boxed_opaque_existential_1(&v5[v3 - 1], v12);
    result = (*(v13 + 24))(&v22, MEMORY[0x1E69E6370], v12, v13);
LABEL_13:
    *v2 = v5;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t _s7SwiftUI19ViewTraitCollectionVy5ValueQzxmcAA01_cD3KeyRzluisAA017ArchivedAnimationdG0V_Tt0B5(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v6 = 0;
  v7 = 0;
  v31[0] = a1;
  v31[1] = a2;
  v31[2] = a3;
  v32 = a4;
  v8 = *v4;
  v9 = *v4 + 32;
  v10 = *(*v4 + 16);
  do
  {
    if (v10 == v7)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v5 = v8;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:
        v21 = v8[2];
        v20 = v8[3];
        if (v21 >= v20 >> 1)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v8);
          *v5 = v8;
        }

        type metadata accessor for ViewTraitCollection.AnyTrait<LeafContentType.TraitKey>(0, &lazy cache variable for type metadata for ViewTraitCollection.AnyTrait<ArchivedAnimationTraitKey>, &type metadata for ArchivedAnimationTraitKey, &protocol witness table for ArchivedAnimationTraitKey, type metadata accessor for ViewTraitCollection.AnyTrait);
        v29 = v22;
        v30 = &protocol witness table for ViewTraitCollection.AnyTrait<A>;
        v23 = swift_allocObject();
        *&v28 = v23;
        *(v23 + 16) = a1;
        *(v23 + 24) = a2;
        *(v23 + 32) = a3;
        *(v23 + 40) = a4;
        v8[2] = v21 + 1;
        result = outlined init with take of AnyTrackedValue(&v28, &v8[5 * v21 + 4]);
        goto LABEL_13;
      }

LABEL_15:
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8[2] + 1, 1, v8);
      *v5 = v8;
      goto LABEL_10;
    }

    if (v7 >= v8[2])
    {
      __break(1u);
      goto LABEL_15;
    }

    ++v7;
    outlined init with copy of AnyTrackedValue(v9 + v6 * 8, &v28);
    v11 = v29;
    v12 = v30;
    __swift_project_boxed_opaque_existential_1(&v28, v29);
    v13 = (v12[1])(v11, v12);
    __swift_destroy_boxed_opaque_existential_1(&v28);
    v6 += 5;
  }

  while (v13 != &type metadata for ArchivedAnimationTraitKey);
  result = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v8;
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
    v8 = result;
    *v5 = result;
  }

  if (v7 - 1 < v8[2])
  {
    v15 = v8[v6 + 2];
    v16 = v8[v6 + 3];
    __swift_mutable_project_boxed_opaque_existential_1(&v8[v6 - 1], v15);
    v17 = *(v16 + 24);
    type metadata accessor for LeafContentType?(0, &lazy cache variable for type metadata for ArchivedAnimationTraitKey?, &type metadata for ArchivedAnimationTraitKey, MEMORY[0x1E69E6720]);
    result = v17(v31, v18, v15, v16);
LABEL_13:
    *v5 = v8;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t _s7SwiftUI19ViewTraitCollectionVy5ValueQzxmcAA01_cD3KeyRzluisAA018PreviewColorSchemedG0V_Tt0B5(char a1)
{
  v2 = v1;
  v3 = 0;
  v4 = 0;
  v24 = a1;
  v5 = *v1;
  v6 = *v1 + 32;
  v7 = *(*v1 + 16);
  do
  {
    if (v7 == v4)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v2 = v5;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:
        v18 = v5[2];
        v17 = v5[3];
        if (v18 >= v17 >> 1)
        {
          v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v5);
          *v2 = v5;
        }

        type metadata accessor for ViewTraitCollection.AnyTrait<LeafContentType.TraitKey>(0, &lazy cache variable for type metadata for ViewTraitCollection.AnyTrait<PreviewColorSchemeTraitKey>, &type metadata for PreviewColorSchemeTraitKey, &protocol witness table for PreviewColorSchemeTraitKey, type metadata accessor for ViewTraitCollection.AnyTrait);
        v22 = v19;
        v23 = &protocol witness table for ViewTraitCollection.AnyTrait<A>;
        LOBYTE(v21) = a1;
        v5[2] = v18 + 1;
        result = outlined init with take of AnyTrackedValue(&v21, &v5[5 * v18 + 4]);
        goto LABEL_13;
      }

LABEL_15:
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5[2] + 1, 1, v5);
      *v2 = v5;
      goto LABEL_10;
    }

    if (v4 >= v5[2])
    {
      __break(1u);
      goto LABEL_15;
    }

    ++v4;
    outlined init with copy of AnyTrackedValue(v6 + v3 * 8, &v21);
    v8 = v22;
    v9 = v23;
    __swift_project_boxed_opaque_existential_1(&v21, v22);
    v10 = (v9[1])(v8, v9);
    __swift_destroy_boxed_opaque_existential_1(&v21);
    v3 += 5;
  }

  while (v10 != &type metadata for PreviewColorSchemeTraitKey);
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
    *v2 = result;
  }

  if (v4 - 1 < v5[2])
  {
    v12 = v5[v3 + 2];
    v13 = v5[v3 + 3];
    __swift_mutable_project_boxed_opaque_existential_1(&v5[v3 - 1], v12);
    v14 = *(v13 + 24);
    type metadata accessor for LeafContentType?(0, &lazy cache variable for type metadata for ColorScheme?, &type metadata for ColorScheme, MEMORY[0x1E69E6720]);
    result = v14(&v24, v15, v12, v13);
LABEL_13:
    *v2 = v5;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t (*ViewTraitCollection.isExpandable.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = (_s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA06IsLeafdJ0V_Tt0B5(1, *v1) & 1) == 0;
  return ViewTraitCollection.isExpandable.modify;
}

uint64_t _s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA07_LayoutD0VyAA010GlassEntryK033_D12F2F25A0BD65FFBD3A7636B60067DFLLV0J0VG_Tt0B5@<X0>(void *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = a2 + 32;
    while (1)
    {
      outlined init with copy of AnyTrackedValue(v6, v14);
      v7 = v15;
      v8 = v16;
      __swift_project_boxed_opaque_existential_1(v14, v15);
      v9 = (*(v8 + 8))(v7, v8);
      type metadata accessor for ViewTraitCollection.AnyTrait<LeafContentType.TraitKey>(0, &lazy cache variable for type metadata for _LayoutTrait<GlassEntryLayout.Key>, &type metadata for GlassEntryLayout.Key, &protocol witness table for GlassEntryLayout.Key, type metadata accessor for _LayoutTrait);
      if (v9 == v10)
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_1(v14);
      v6 += 40;
      if (!--v5)
      {
        goto LABEL_5;
      }
    }

    v12 = v16;
    __swift_project_boxed_opaque_existential_1(v14, v15);
    v13 = *(v12 + 16);
    type metadata accessor for LeafContentType?(0, &lazy cache variable for type metadata for GlassContainer.Item?, &type metadata for GlassContainer.Item, MEMORY[0x1E69E6720]);
    v13();
    return __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
LABEL_5:
    memcpy(a3, __src, 0x289uLL);
    return outlined init with copy of GlassContainer.Entry?(__src, v14, &lazy cache variable for type metadata for GlassContainer.Item?, &type metadata for GlassContainer.Item);
  }
}

uint64_t _s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA07_LayoutD0VyAA011GlassEffectK033_D12F2F25A0BD65FFBD3A7636B60067DFLLV0J0VG_Tt0B5@<X0>(void *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = a2 + 32;
    while (1)
    {
      outlined init with copy of AnyTrackedValue(v6, v14);
      v7 = v15;
      v8 = v16;
      __swift_project_boxed_opaque_existential_1(v14, v15);
      v9 = (*(v8 + 8))(v7, v8);
      type metadata accessor for ViewTraitCollection.AnyTrait<LeafContentType.TraitKey>(0, &lazy cache variable for type metadata for _LayoutTrait<GlassEffectLayout.Key>, &type metadata for GlassEffectLayout.Key, &protocol witness table for GlassEffectLayout.Key, type metadata accessor for _LayoutTrait);
      if (v9 == v10)
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_1(v14);
      v6 += 40;
      if (!--v5)
      {
        goto LABEL_5;
      }
    }

    v12 = v16;
    __swift_project_boxed_opaque_existential_1(v14, v15);
    v13 = *(v12 + 16);
    type metadata accessor for LeafContentType?(0, &lazy cache variable for type metadata for GlassContainer.Entry?, &type metadata for GlassContainer.Entry, MEMORY[0x1E69E6720]);
    v13();
    return __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
LABEL_5:
    memcpy(a3, __src, 0x154uLL);
    return outlined init with copy of GlassContainer.Entry?(__src, v14, &lazy cache variable for type metadata for GlassContainer.Entry?, &type metadata for GlassContainer.Entry);
  }
}

uint64_t _s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA06IsLeafdJ0V_Tt0B5(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    for (i = a2 + 32; ; i += 40)
    {
      outlined init with copy of AnyTrackedValue(i, v10);
      v5 = v11;
      v6 = v12;
      __swift_project_boxed_opaque_existential_1(v10, v11);
      if ((*(v6 + 8))(v5, v6) == &type metadata for IsLeafTraitKey)
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_1(v10);
      if (!--v3)
      {
        return a1 & 1;
      }
    }

    v7 = v11;
    v8 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    (*(v8 + 16))(&v13, MEMORY[0x1E69E6370], v7, v8);
    __swift_destroy_boxed_opaque_existential_1(v10);
    a1 = v13;
  }

  return a1 & 1;
}

uint64_t _s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA010IsExpandeddJ0V_Tt0B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  if (v6)
  {
    v7 = a4 + 32;
    while (1)
    {
      outlined init with copy of AnyTrackedValue(v7, v13);
      v8 = v14;
      v9 = v15;
      __swift_project_boxed_opaque_existential_1(v13, v14);
      if ((*(v9 + 8))(v8, v9) == &type metadata for IsExpandedTraitKey)
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_1(v13);
      v7 += 40;
      if (!--v6)
      {
        goto LABEL_5;
      }
    }

    v10 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    v11 = *(v10 + 16);
    type metadata accessor for Binding<Bool>?(0);
    v11(&v16);
    __swift_destroy_boxed_opaque_existential_1(v13);
    return v16;
  }

  else
  {
LABEL_5:
    outlined copy of Binding<Bool>?(a1, a2);
  }

  return a1;
}

uint64_t _s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA32_DisplayList_StableIdentityScopeV_Tt0B5(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (!v3)
  {
    return a1;
  }

  for (i = a2 + 32; ; i += 40)
  {
    outlined init with copy of AnyTrackedValue(i, v10);
    v5 = v11;
    v6 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    if ((*(v6 + 8))(v5, v6) == &type metadata for _DisplayList_StableIdentityScope)
    {
      break;
    }

    __swift_destroy_boxed_opaque_existential_1(v10);
    if (!--v3)
    {
      return a1;
    }
  }

  v7 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  v8 = *(v7 + 16);
  type metadata accessor for LeafContentType?(0, &lazy cache variable for type metadata for WeakAttribute<_DisplayList_StableIdentityScope>, &type metadata for _DisplayList_StableIdentityScope, MEMORY[0x1E698D370]);
  v8(&v13);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v13;
}

uint64_t _s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA017ArchivedAnimationdJ0V_Tt0B5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10 = *(a5 + 16);
  if (v10)
  {
    v11 = a5 + 32;
    while (1)
    {
      outlined init with copy of AnyTrackedValue(v11, v18);
      v12 = v19;
      v13 = v20;
      __swift_project_boxed_opaque_existential_1(v18, v19);
      if ((*(v13 + 8))(v12, v13) == &type metadata for ArchivedAnimationTraitKey)
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_1(v18);
      v11 += 40;
      if (!--v10)
      {
        goto LABEL_5;
      }
    }

    v15 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    v16 = *(v15 + 16);
    type metadata accessor for LeafContentType?(0, &lazy cache variable for type metadata for ArchivedAnimationTraitKey?, &type metadata for ArchivedAnimationTraitKey, MEMORY[0x1E69E6720]);
    v16();
    return __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
LABEL_5:
    *a6 = a1;
    *(a6 + 8) = a2;
    *(a6 + 16) = a3;
    *(a6 + 24) = a4;
    return outlined copy of SafeAreaInsets.OptionalValue?(a1);
  }
}

uint64_t _s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA07Dynamicc13ContentOffsetdJ0V_Tt0B5(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v4 = result;
    for (i = a3 + 32; ; i += 40)
    {
      outlined init with copy of AnyTrackedValue(i, v10);
      v6 = v11;
      v7 = v12;
      __swift_project_boxed_opaque_existential_1(v10, v11);
      if ((*(v7 + 8))(v6, v7) == &type metadata for DynamicViewContentOffsetTraitKey)
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_1(v10);
      if (!--v3)
      {
        return v4;
      }
    }

    v8 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    v9 = *(v8 + 16);
    type metadata accessor for LeafContentType?(0, &lazy cache variable for type metadata for Int?, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
    v9(&v13);
    __swift_destroy_boxed_opaque_existential_1(v10);
    return v13;
  }

  return result;
}

void type metadata accessor for Binding<Bool>?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Binding<Bool>?)
  {
    type metadata accessor for LeafContentType?(255, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], type metadata accessor for Binding);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Binding<Bool>?);
    }
  }
}

double outlined copy of Binding<Bool>?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void type metadata accessor for LeafContentType?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t outlined init with copy of GlassContainer.Entry?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for LeafContentType?(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void type metadata accessor for ViewTraitCollection.AnyTrait<LeafContentType.TraitKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void type metadata accessor for ViewTraitCollection.AnyTrait<_LayoutTrait<GlassEntryLayout.Key>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ViewTraitCollection.AnyTrait<_LayoutTrait<GlassEntryLayout.Key>>)
  {
    type metadata accessor for ViewTraitCollection.AnyTrait<LeafContentType.TraitKey>(255, &lazy cache variable for type metadata for _LayoutTrait<GlassEntryLayout.Key>, &type metadata for GlassEntryLayout.Key, &protocol witness table for GlassEntryLayout.Key, type metadata accessor for _LayoutTrait);
    v3 = v2;
    lazy protocol witness table accessor for type _LayoutTrait<GlassEntryLayout.Key> and conformance _LayoutTrait<A>();
    v6 = type metadata accessor for ViewTraitCollection.AnyTrait(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for ViewTraitCollection.AnyTrait<_LayoutTrait<GlassEntryLayout.Key>>);
    }
  }
}

void View.onWorldRecenter(action:)(uint64_t a1)
{
  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

{
  View.onWorldRecenter(action:)(a1);
}

uint64_t OnRecenterNotificationController.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance OnRecenterNotificationController.NotificationState()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11E0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance OnRecenterNotificationController.NotificationState(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11E0](v2);
  return Hasher._finalize()();
}

uint64_t OnRecenterNotificationController.init()()
{
  result = v0;
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  return result;
}

void OnRecenterNotificationController.registerForNotifications(willRecenter:didRecenter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v25 = *MEMORY[0x1E69E9840];
  state64 = 0;
  swift_beginAccess();
  notify_get_state(*(v4 + 16), &state64);
  v10 = state64 == 1;
  *(v4 + 24) = state64 == 1;
  if (v10)
  {
    notify_cancel(*(v4 + 16));
  }

  type metadata accessor for OS_dispatch_queue();
  v11 = static OS_dispatch_queue.main.getter();
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v23 = partial apply for closure #1 in OnRecenterNotificationController.registerForNotifications(willRecenter:didRecenter:);
  v24 = v12;
  aBlock = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
  v22 = &block_descriptor_5;
  v13 = _Block_copy(&aBlock);

  swift_beginAccess();
  notify_register_dispatch("com.apple.RealitySimulation.PlacementsWillRecenter", (v4 + 16), v11, v13);
  swift_endAccess();
  _Block_release(v13);

  v17 = 0;
  swift_beginAccess();
  notify_get_state(*(v4 + 20), &v17);
  v10 = v17 == 1;
  *(v4 + 25) = v17 == 1;
  if (v10)
  {
    notify_cancel(*(v4 + 20));
  }

  v14 = static OS_dispatch_queue.main.getter();
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  v23 = partial apply for closure #2 in OnRecenterNotificationController.registerForNotifications(willRecenter:didRecenter:);
  v24 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
  v22 = &block_descriptor_6;
  v16 = _Block_copy(&aBlock);

  swift_beginAccess();
  notify_register_dispatch("com.apple.RealitySimulation.PlacementsRecentered", (v5 + 20), v14, v16);
  swift_endAccess();
  _Block_release(v16);
}

double thunk for @escaping @callee_guaranteed (@unowned Int32) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

Swift::Void __swiftcall OnRecenterNotificationController.cancelNotifications()()
{
  swift_beginAccess();
  notify_cancel(*(v0 + 16));
  swift_beginAccess();
  notify_cancel(*(v0 + 20));
}

void lazy protocol witness table accessor for type WorldRecenterPhase and conformance WorldRecenterPhase()
{
  if (!lazy protocol witness table cache variable for type WorldRecenterPhase and conformance WorldRecenterPhase)
  {
    swift_getWitnessTable(protocol conformance descriptor for WorldRecenterPhase, &type metadata for WorldRecenterPhase, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type WorldRecenterPhase and conformance WorldRecenterPhase);
  }
}

void lazy protocol witness table accessor for type OnRecenterNotificationController.NotificationState and conformance OnRecenterNotificationController.NotificationState()
{
  if (!lazy protocol witness table cache variable for type OnRecenterNotificationController.NotificationState and conformance OnRecenterNotificationController.NotificationState)
  {
    swift_getWitnessTable(protocol conformance descriptor for OnRecenterNotificationController.NotificationState, &type metadata for OnRecenterNotificationController.NotificationState, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type OnRecenterNotificationController.NotificationState and conformance OnRecenterNotificationController.NotificationState);
  }
}

uint64_t Axis.perpendicularEdges.getter(char a1)
{
  v1 = ~a1;
  if (a1)
  {
    v2 = 512;
  }

  else
  {
    v2 = 768;
  }

  return v2 & 0xFFFFFFFE | v1 & 1;
}

SwiftUI::Axis_optional __swiftcall Axis.init(rawValue:)(Swift::Int8 rawValue)
{
  if (rawValue == 1)
  {
    v1.value = SwiftUI_Axis_vertical;
  }

  else
  {
    v1.value = SwiftUI_Axis_unknownDefault;
  }

  if (rawValue)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t Axis.Alignment.init(_:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!result)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

void Axis.Alignment.init(rawValue:)(char *a1@<X8>, double a2@<D0>)
{
  if (a2 == 0.0)
  {
    *a1 = 0;
  }

  else
  {
    if (a2 == 1.0)
    {
      v2 = 2;
    }

    else
    {
      v2 = 3;
    }

    if (a2 == 0.5)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    *a1 = v3;
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Axis.Alignment()
{
  Hasher.init(_seed:)();
  if (*&dbl_18DDB6900[*v0])
  {
    v1 = dbl_18DDB6900[*v0];
  }

  else
  {
    v1 = 0.0;
  }

  MEMORY[0x193AC11E0](*&v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Axis.Alignment()
{
  if (*&dbl_18DDB6900[*v0])
  {
    v1 = dbl_18DDB6900[*v0];
  }

  else
  {
    v1 = 0.0;
  }

  return MEMORY[0x193AC11E0](*&v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Axis.Alignment(uint64_t a1)
{
  Hasher.init(_seed:)();
  if (*&dbl_18DDB6900[*v1])
  {
    v2 = dbl_18DDB6900[*v1];
  }

  else
  {
    v2 = 0.0;
  }

  MEMORY[0x193AC11E0](*&v2);
  return Hasher._finalize()();
}

double protocol witness for RawRepresentable.rawValue.getter in conformance Axis.Alignment@<D0>(double *a1@<X8>)
{
  result = dbl_18DDB6900[*v1];
  *a1 = result;
  return result;
}

uint64_t Axis.description.getter(char a1)
{
  if (a1)
  {
    return 0x6C61636974726576;
  }

  else
  {
    return 0x746E6F7A69726F68;
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Axis()
{
  if (*v0)
  {
    return 0x6C61636974726576;
  }

  else
  {
    return 0x746E6F7A69726F68;
  }
}

void lazy protocol witness table accessor for type Axis.Set and conformance Axis.Set()
{
  if (!lazy protocol witness table cache variable for type Axis.Set and conformance Axis.Set)
  {
    swift_getWitnessTable(protocol conformance descriptor for Axis.Set, &type metadata for Axis.Set, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Axis.Set and conformance Axis.Set);
  }
}

{
  if (!lazy protocol witness table cache variable for type Axis.Set and conformance Axis.Set)
  {
    swift_getWitnessTable(protocol conformance descriptor for Axis.Set, &type metadata for Axis.Set, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Axis.Set and conformance Axis.Set);
  }
}

{
  if (!lazy protocol witness table cache variable for type Axis.Set and conformance Axis.Set)
  {
    swift_getWitnessTable(protocol conformance descriptor for Axis.Set, &type metadata for Axis.Set, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Axis.Set and conformance Axis.Set);
  }
}

{
  if (!lazy protocol witness table cache variable for type Axis.Set and conformance Axis.Set)
  {
    swift_getWitnessTable(protocol conformance descriptor for Axis.Set, &type metadata for Axis.Set, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Axis.Set and conformance Axis.Set);
  }
}

void lazy protocol witness table accessor for type [Axis] and conformance [A]()
{
  if (!lazy protocol witness table cache variable for type [Axis] and conformance [A])
  {
    type metadata accessor for [Axis]();
    swift_getWitnessTable(MEMORY[0x1E69E6340], v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type [Axis] and conformance [A]);
  }
}

void type metadata accessor for [Axis]()
{
  if (!lazy cache variable for type metadata for [Axis])
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [Axis]);
    }
  }
}

void lazy protocol witness table accessor for type Axis.Alignment and conformance Axis.Alignment()
{
  if (!lazy protocol witness table cache variable for type Axis.Alignment and conformance Axis.Alignment)
  {
    swift_getWitnessTable(protocol conformance descriptor for Axis.Alignment, &type metadata for Axis.Alignment, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Axis.Alignment and conformance Axis.Alignment);
  }
}

unint64_t static GestureLabelModifier._makeGesture(modifier:inputs:body:)@<X0>(uint64_t a2@<X1>, void (*a3)(void *__return_ptr, _OWORD *)@<X2>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v6 = *(a2 + 48);
  v15[2] = *(a2 + 32);
  v15[3] = v6;
  v7 = *(a2 + 80);
  v15[4] = *(a2 + 64);
  v15[5] = v7;
  v8 = *(a2 + 16);
  v15[0] = *a2;
  v15[1] = v8;
  v9 = *(a2 + 96);
  v17 = *(a2 + 104);
  v18 = *(a2 + 120);
  v16 = v9;
  a3(a5, v15);
  *&v15[0] = v9;
  result = PreferenceKeys._index(of:)(&type metadata for GestureLabelKey);
  v13 = *(v9 + 16);
  if (result != v13)
  {
    if (result >= v13)
    {
      __break(1u);
    }

    else if (*(v9 + 16 * result + 32) == &type metadata for GestureLabelKey)
    {
      closure #1 in implicit closure #1 in static GestureLabelModifier._makeGesture(modifier:inputs:body:)(1, a4, v11, v12);
      OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
      LOBYTE(v15[0]) = 0;
      return PreferencesOutputs.subscript.setter(OffsetAttribute2, &type metadata for GestureLabelKey, &protocol witness table for GestureLabelKey);
    }
  }

  return result;
}

uint64_t closure #1 in implicit closure #1 in static GestureLabelModifier._makeGesture(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[2] = type metadata accessor for GestureLabelModifier(0, a2, a3, a4);
  type metadata accessor for String?();
  v6 = v5;
  v7 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_2, v10, v6, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
  return v10[5];
}

void *protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance GestureLabelKey(void *result, void *(*a2)(void *__return_ptr))
{
  v2 = result;
  v3 = result[1];
  if (v3)
  {
    v4 = *result;
  }

  else
  {
    result = a2(v5);
    v4 = v5[0];
    v3 = v5[1];
  }

  *v2 = v4;
  v2[1] = v3;
  return result;
}

void type metadata accessor for String?()
{
  if (!lazy cache variable for type metadata for String?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for String?);
    }
  }
}

__n128 _PaddingLayout.init(edges:insets:)@<Q0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a2 + 32);
  *a3 = a1;
  result = *a2;
  v5 = *(a2 + 16);
  *(a3 + 8) = *a2;
  *(a3 + 24) = v5;
  *(a3 + 40) = v3 & 1;
  return result;
}

__n128 _PaddingLayout.insets.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  result = *(v1 + 8);
  v4 = *(v1 + 24);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 _PaddingLayout.insets.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 8) = *a1;
  *(v1 + 24) = v3;
  *(v1 + 40) = *(a1 + 32);
  return result;
}

uint64_t View._tightPadding()()
{
  __asm { FMOV            V0.2D, #8.0 }

  return View.modifier<A>(_:)();
}

uint64_t (*specialized closure #1 in closure #1 in Rule<>.cachedValue(options:owner:)())(unsigned int *a1)
{
  return _s14AttributeGraph4RulePAASHRzrlE11cachedValue7options5owner0E0ACQzSo08AGCachedE7OptionsV_So11AGAttributeaSgtFAHSPyxGXEfU_ySv_ALtcyXEfU_ySv_ALtcfu_7SwiftUI16EnvironmentFetch33_BA60BF7120E939C5C25B2A488163D4ACLLVyAO10EdgeInsetsVG_Tt1g5;
}

{
  return _s14AttributeGraph4RulePAASHRzrlE11cachedValue7options5owner0E0ACQzSo08AGCachedE7OptionsV_So11AGAttributeaSgtFAHSPyxGXEfU_ySv_ALtcyXEfU_ySv_ALtcfu_7SwiftUI16EnvironmentFetch33_BA60BF7120E939C5C25B2A488163D4ACLLVyAO15LayoutDirectionOG_Tt1g5;
}

{
  return _s14AttributeGraph4RulePAASHRzrlE11cachedValue7options5owner0E0ACQzSo08AGCachedE7OptionsV_So11AGAttributeaSgtFAHSPyxGXEfU_ySv_ALtcyXEfU_ySv_ALtcfu_7SwiftUI16EnvironmentFetch33_BA60BF7120E939C5C25B2A488163D4ACLLVy12CoreGraphics7CGFloatVG_Tt1g5;
}

{
  return _s14AttributeGraph4RulePAASHRzrlE11cachedValue7options5owner0E0ACQzSo08AGCachedE7OptionsV_So11AGAttributeaSgtFAHSPyxGXEfU_ySv_ALtcyXEfU_ySv_ALtcfu_7SwiftUI16EnvironmentFetch33_BA60BF7120E939C5C25B2A488163D4ACLLVyAO18ContainerShapeDataVG_Tt1g5;
}

uint64_t _s14AttributeGraph4RulePAASHRzrlE11cachedValue7options5owner0E0ACQzSo08AGCachedE7OptionsV_So11AGAttributeaSgtFAHSPyxGXEfU_ySv_ALtcyXEfU_ySv_ALtcfu_7SwiftUI16EnvironmentFetch33_BA60BF7120E939C5C25B2A488163D4ACLLVyAO10EdgeInsetsVG_Tt1g5(unsigned int *a1)
{

  AGGraphGetValue();

  swift_getAtKeyPath();

  return AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph4RulePAASHRzrlE11cachedValue7options5owner0E0ACQzSo08AGCachedE7OptionsV_So11AGAttributeaSgtFAHSPyxGXEfU_ySv_ALtcyXEfU_ySv_ALtcfu_7SwiftUI16EnvironmentFetch33_BA60BF7120E939C5C25B2A488163D4ACLLVyAO15LayoutDirectionOG_Tt1g5(unsigned int *a1)
{

  AGGraphGetValue();

  swift_getAtKeyPath();

  return AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph4RulePAASHRzrlE11cachedValue7options5owner0E0ACQzSo08AGCachedE7OptionsV_So11AGAttributeaSgtFAHSPyxGXEfU_ySv_ALtcyXEfU_ySv_ALtcfu_7SwiftUI16EnvironmentFetch33_BA60BF7120E939C5C25B2A488163D4ACLLVy12CoreGraphics7CGFloatVG_Tt1g5(unsigned int *a1)
{

  AGGraphGetValue();

  swift_getAtKeyPath();

  return AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph4RulePAASHRzrlE11cachedValue7options5owner0E0ACQzSo08AGCachedE7OptionsV_So11AGAttributeaSgtFAHSPyxGXEfU_ySv_ALtcyXEfU_ySv_ALtcfu_7SwiftUI16EnvironmentFetch33_BA60BF7120E939C5C25B2A488163D4ACLLVyAO18ContainerShapeDataVG_Tt1g5(unsigned int *a1)
{

  AGGraphGetValue();

  swift_getAtKeyPath();

  return AGGraphSetOutputValue();
}

double _s14AttributeGraph4RulePAASHRzrlE11cachedValue7options5owner0E0ACQzSo08AGCachedE7OptionsV_So11AGAttributeaSgtFAHSPyxGXEfU_ySv_ALtcyXEfU_ySv_ALtcfu_7SwiftUI16EnvironmentFetch33_BA60BF7120E939C5C25B2A488163D4ACLLVyAO35LazySubviewMinorSizingConfigurationVG_Tt1g5(unsigned int *a1)
{

  AGGraphGetValue();

  swift_getAtKeyPath();

  AGGraphSetOutputValue();

  return result;
}

unint64_t *specialized _NativeDictionary.filter(_:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v4 = a1;
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v8 = v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = specialized closure #1 in _NativeDictionary.filter(_:)(v8, v6, v4, v3);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v10 = swift_slowAlloc();
  v11 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy7SwiftUI7SpacingV3KeyVAJ5ValueOG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab8VKXEfU_7i3UI7k2V3l5V_AK5M4OTG5AOxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAlNIsgnndzo_Tf1nc_n03_s7iuk37V5clearyyAA12AbsoluteEdgeO3SetVFSbAC3l9V3key_AC5M15O5valuet_tXEfU_AH12AbsoluteEdgeO3SetVTf1nnc_n(v10, v6, v4, v3);
  result = MEMORY[0x193AC4820](v10, -1, -1);
  if (!v2)
  {
    return v11;
  }

  return result;
}

{
  v4 = a1;
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v8 = v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = specialized closure #1 in _NativeDictionary.filter(_:)(v8, v6, v4, a2);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v10 = swift_slowAlloc();
  v11 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy7SwiftUI7EventIDVAH0K4Type_pG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab8VKXEfU_7i3UI7k9IDV_AI0J4M5_pTG5ALxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAjhK_pIsgnndzo_Tf1nc_n03_s7i4UI19k103BindingManagerCAAE24dispatchNonGestureEvents33_D63F4C292364B83D9F441CFC1A31B3F3LLyShyAA0C2IDVGSDyAgA0C4M32_pGFSbAG3key_AaI_p5valuet_tXEfU_AH09ForwardedK10Dispatcher_pTf1nnc_n(v10, v6, v4, a2);
  result = MEMORY[0x193AC4820](v10, -1, -1);
  if (!v2)
  {
    return v11;
  }

  return result;
}

{
  v4 = a1;
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v8 = v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = specialized closure #1 in _NativeDictionary.filter(_:)(v8, v6, v4, a2);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v10 = swift_slowAlloc();
  v11 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy7SwiftUI7EventIDVAH0K4Type_pG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab8VKXEfU_7i3UI7k9IDV_AI0J4M5_pTG5ALxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAjhK_pIsgnndzo_Tf1nc_n03_s7i4UI17k97FilterEvents33_DE98B8F5384114B687077BAB0EFA27D9LLV5valueAA08FilteredE0ACLLVvgSbAA0C2IDV3key_AA0C4m28_pAEt_tXEfU_AA08TappableC0V_Y0AH0K12FilterEvents33_DE98B8F5384114B687077BAB0EFA27D9LLVyAH08TappableK0VGTf1nnc_n(v10, v6, v4, a2);
  result = MEMORY[0x193AC4820](v10, -1, -1);
  if (!v2)
  {
    return v11;
  }

  return result;
}

{
  v3 = v2;
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;
  v10 = swift_retain_n();
  if (v7 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();

      v11 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy7SwiftUI7EventIDVAH0K4Type_pG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab8VKXEfU_7i3UI7k9IDV_AI0J4M5_pTG5ALxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAjhK_pIsgnndzo_Tf1nc_n03_s7i4UI19k90BindingManagerC14sendDownstream33_D63F4C292364B83D9F441CFC1A31B3F3LLyShyAA0C2IDVGSDyAgA0C4M32_pGFSbAG3key_AaI_p5valuet_tXEfU_AH0K14BindingManagerCTf1nnc_n(v13, v8, a1, a2);
      MEMORY[0x193AC4820](v13, -1, -1);

      return v11;
    }
  }

  MEMORY[0x1EEE9AC00](v10);
  bzero(v14 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0), v9);

  v11 = specialized closure #1 in _NativeDictionary.filter(_:)((v14 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0)), v8, a1, a2);

  if (v3)
  {
    swift_willThrow();
  }

  return v11;
}

unint64_t *specialized closure #1 in _NativeDictionary.filter(_:)(unint64_t *result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v5 = 0;
  v6 = 0;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v12 = v11 | (v6 << 6);
LABEL_11:
    v15 = *(*(a3 + 48) + 16 * v12 + 8);
    if (v15 - 9 >= 0xEF && (v15 & 0x80) == 0 && v15 <= 7 && ((1 << v15) & ~a4) != 0)
    {
      *(result + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      if (__OFADD__(v5++, 1))
      {
        goto LABEL_21;
      }
    }
  }

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
      return specialized _NativeDictionary.extractDictionary(using:count:)(result, a2, v5, a3);
    }

    v14 = *(a3 + 64 + 8 * v6);
    ++v13;
    if (v14)
    {
      v9 = (v14 - 1) & v14;
      v12 = __clz(__rbit64(v14)) | (v6 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy7SwiftUI7SpacingV3KeyVAJ5ValueOG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab8VKXEfU_7i3UI7k2V3l5V_AK5M4OTG5AOxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAlNIsgnndzo_Tf1nc_n03_s7iuk37V5clearyyAA12AbsoluteEdgeO3SetVFSbAC3l9V3key_AC5M15O5valuet_tXEfU_AH12AbsoluteEdgeO3SetVTf1nnc_n(unint64_t *result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = specialized closure #1 in _NativeDictionary.filter(_:)(result, a2, a3, a4);

    return v8;
  }

  return result;
}

double UpdateCycleDetector.init()@<D0>(uint64_t a1@<X8>)
{
  v2 = specialized static GraphHost.currentHost.getter();
  swift_beginAccess();
  v3 = *(v2 + 64);

  *a1 = v3;
  *&result = 0xFFFFFFFFLL;
  *(a1 + 4) = 0xFFFFFFFFLL;
  *(a1 + 12) = 0;
  return result;
}

uint64_t UpdateCycleDetector.dispatch(label:isDebug:)(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, char a3)
{
  AGGraphClearUpdate();
  v6 = *AGGraphGetValue();
  AGGraphSetUpdate();
  if (*(v3 + 4) == v6)
  {
    v7 = *(v3 + 8);
    if (v7 && (v8 = v7 - 1, (*(v3 + 8) = v8) != 0))
    {
      return 1;
    }

    else if (*(v3 + 12))
    {
      return 0;
    }

    else
    {
      if ((a3 & 1) == 0)
      {
        v10 = v3;
        _StringGuts.grow(_:)(44);
        v13 = a1(v11, v12);
        v15 = v14;

        v16 = v15;
        MEMORY[0x193ABEDD0](0xD00000000000002ALL, 0x800000018DD75B90);
        v3 = v10;
        specialized static Log.externalWarning(_:)(v13, v16);
      }

      result = 0;
      *(v3 + 12) = 1;
    }
  }

  else
  {
    *(v3 + 4) = v6;
    *(v3 + 8) = 2;
    return 1;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UpdateCycleDetector(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 13))
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

uint64_t storeEnumTagSinglePayload for UpdateCycleDetector(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 13) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 13) = 0;
    }

    if (a2)
    {
      *(result + 12) = a2 + 1;
    }
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for ValueCycleDetector(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = v5;
  v7 = *(v5 + 80);
  v8 = v7;
  if (*(v5 + 84))
  {
    v9 = *(v5 + 64);
  }

  else
  {
    v9 = *(v5 + 64) + 1;
  }

  v10 = v9 + v7;
  v11 = v7 & 0x100000;
  if (v8 <= 7 && v11 == 0 && ((-10 - v8) | v8) - v9 - ((v9 + v8 + ((v9 + v8) & ~v8)) & ~v8) >= 0xFFFFFFFFFFFFFFE7)
  {
    v15 = ~v8;
    *a1 = *a2;
    v16 = (a1 + 7) & 0xFFFFFFFFFFFFFFFCLL;
    v17 = (a2 + 7) & 0xFFFFFFFFFFFFFFFCLL;
    *v16 = *v17;
    *(v16 + 4) = *(v17 + 4);
    v18 = ((v16 + v8 + 5) & ~v8);
    v19 = ((v17 + v8 + 5) & ~v8);
    v20 = *(v5 + 48);
    if (v20(v19, 1, v4))
    {
      memcpy(v18, v19, v9);
    }

    else
    {
      (*(v6 + 16))(v18, v19, v4);
      (*(v6 + 56))(v18, 0, 1, v4);
    }

    v21 = ((v18 + v10) & v15);
    v22 = ((v19 + v10) & v15);
    if (v20(v22, 1, v4))
    {
      memcpy(v21, v22, v9);
    }

    else
    {
      (*(v6 + 16))(v21, v22, v4);
      (*(v6 + 56))(v21, 0, 1, v4);
    }

    v23 = &v21[v10];
    v24 = &v22[v10];
    if (v20((v24 & v15), 1, v4))
    {
      memcpy((v23 & v15), (v24 & v15), v9);
    }

    else
    {
      (*(v6 + 16))(v23 & v15, v24 & v15, v4);
      (*(v6 + 56))(v23 & v15, 0, 1, v4);
    }
  }

  else
  {
    v14 = *a2;
    *v3 = *a2;
    v3 = (v14 + ((v8 & 0xFC ^ 0x1FC) & (v8 + 16)));
  }

  return v3;
}

uint64_t destroy for ValueCycleDetector(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v12 = *(v2 - 8);
  v3 = *(v12 + 80);
  v4 = ~v3;
  v5 = (((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + v3 + 5) & ~v3;
  v6 = *(v12 + 48);
  if (!v6(v5, 1, v2))
  {
    (*(v12 + 8))(v5, v2);
  }

  if (*(v12 + 84))
  {
    v7 = *(v12 + 64);
  }

  else
  {
    v7 = *(v12 + 64) + 1;
  }

  v8 = (v5 + v3 + v7) & v4;
  if (!v6(v8, 1, v2))
  {
    (*(v12 + 8))(v8, v2);
  }

  v9 = v7 + v3 + v8;
  result = (v6)(v9 & v4, 1, v2);
  if (!result)
  {
    v11 = *(v12 + 8);

    return v11(v9 & v4, v2);
  }

  return result;
}

_DWORD *initializeWithCopy for ValueCycleDetector(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v3 = (a1 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v4 = (a2 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  *v3 = *v4;
  *(v3 + 4) = *(v4 + 4);
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = ~v7;
  v9 = ((v7 + 5 + v3) & ~v7);
  v10 = ((v7 + 5 + v4) & ~v7);
  v11 = *(v6 + 48);
  if (v11(v10, 1, v5))
  {
    v12 = *(v6 + 84);
    v13 = *(v6 + 64);
    if (v12)
    {
      v14 = *(v6 + 64);
    }

    else
    {
      v14 = v13 + 1;
    }

    memcpy(v9, v10, v14);
  }

  else
  {
    (*(v6 + 16))(v9, v10, v5);
    (*(v6 + 56))(v9, 0, 1, v5);
    v12 = *(v6 + 84);
    v13 = *(v6 + 64);
  }

  if (v12)
  {
    v15 = v13;
  }

  else
  {
    v15 = v13 + 1;
  }

  v16 = ((v9 + v7 + v15) & v8);
  v17 = ((v10 + v7 + v15) & v8);
  if (v11(v17, 1, v5))
  {
    memcpy(v16, v17, v15);
  }

  else
  {
    (*(v6 + 16))(v16, v17, v5);
    (*(v6 + 56))(v16, 0, 1, v5);
  }

  v18 = &v16[v15 + v7];
  v19 = &v17[v15 + v7];
  if (v11((v19 & v8), 1, v5))
  {
    memcpy((v18 & v8), (v19 & v8), v15);
  }

  else
  {
    (*(v6 + 16))(v18 & v8, v19 & v8, v5);
    (*(v6 + 56))(v18 & v8, 0, 1, v5);
  }

  return a1;
}

_DWORD *assignWithCopy for ValueCycleDetector(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v3 = (a1 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v4 = (a2 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  *v3 = *v4;
  *(v3 + 4) = *(v4 + 4);
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = ~v7;
  v9 = ((v7 + 5 + v3) & ~v7);
  v10 = ((v7 + 5 + v4) & ~v7);
  v11 = *(v6 + 48);
  v12 = v11(v9, 1, v5);
  v13 = v11(v10, 1, v5);
  if (v12)
  {
    if (!v13)
    {
      (*(v6 + 16))(v9, v10, v5);
      (*(v6 + 56))(v9, 0, 1, v5);
      goto LABEL_12;
    }

    v14 = *(v6 + 84);
    v15 = *(v6 + 64);
  }

  else
  {
    if (!v13)
    {
      (*(v6 + 24))(v9, v10, v5);
      goto LABEL_12;
    }

    (*(v6 + 8))(v9, v5);
    v14 = *(v6 + 84);
    v15 = *(v6 + 64);
  }

  if (v14)
  {
    v16 = v15;
  }

  else
  {
    v16 = v15 + 1;
  }

  memcpy(v9, v10, v16);
LABEL_12:
  if (*(v6 + 84))
  {
    v17 = *(v6 + 64);
  }

  else
  {
    v17 = *(v6 + 64) + 1;
  }

  v18 = ((v9 + v7 + v17) & v8);
  v19 = ((v10 + v7 + v17) & v8);
  v20 = v11(v18, 1, v5);
  v21 = v11(v19, 1, v5);
  if (v20)
  {
    if (!v21)
    {
      (*(v6 + 16))(v18, v19, v5);
      (*(v6 + 56))(v18, 0, 1, v5);
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (v21)
  {
    (*(v6 + 8))(v18, v5);
LABEL_20:
    memcpy(v18, v19, v17);
    goto LABEL_21;
  }

  (*(v6 + 24))(v18, v19, v5);
LABEL_21:
  v22 = v17 + v7;
  v23 = &v18[v17 + v7];
  v24 = &v19[v22];
  v25 = v11((v23 & v8), 1, v5);
  v26 = v11((v24 & v8), 1, v5);
  if (!v25)
  {
    if (!v26)
    {
      (*(v6 + 24))(v23 & v8, v24 & v8, v5);
      return a1;
    }

    (*(v6 + 8))(v23 & v8, v5);
    goto LABEL_26;
  }

  if (v26)
  {
LABEL_26:
    memcpy((v23 & v8), (v24 & v8), v17);
    return a1;
  }

  (*(v6 + 16))(v23 & v8, v24 & v8, v5);
  (*(v6 + 56))(v23 & v8, 0, 1, v5);
  return a1;
}

_DWORD *initializeWithTake for ValueCycleDetector(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v3 = (a1 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v4 = (a2 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  *v3 = *v4;
  *(v3 + 4) = *(v4 + 4);
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = ~v7;
  v9 = ((v7 + 5 + v3) & ~v7);
  v10 = ((v7 + 5 + v4) & ~v7);
  v11 = *(v6 + 48);
  if (v11(v10, 1, v5))
  {
    v12 = *(v6 + 84);
    v13 = *(v6 + 64);
    if (v12)
    {
      v14 = *(v6 + 64);
    }

    else
    {
      v14 = v13 + 1;
    }

    memcpy(v9, v10, v14);
  }

  else
  {
    (*(v6 + 32))(v9, v10, v5);
    (*(v6 + 56))(v9, 0, 1, v5);
    v12 = *(v6 + 84);
    v13 = *(v6 + 64);
  }

  if (v12)
  {
    v15 = v13;
  }

  else
  {
    v15 = v13 + 1;
  }

  v16 = ((v9 + v7 + v15) & v8);
  v17 = ((v10 + v7 + v15) & v8);
  if (v11(v17, 1, v5))
  {
    memcpy(v16, v17, v15);
  }

  else
  {
    (*(v6 + 32))(v16, v17, v5);
    (*(v6 + 56))(v16, 0, 1, v5);
  }

  v18 = &v16[v15 + v7];
  v19 = &v17[v15 + v7];
  if (v11((v19 & v8), 1, v5))
  {
    memcpy((v18 & v8), (v19 & v8), v15);
  }

  else
  {
    (*(v6 + 32))(v18 & v8, v19 & v8, v5);
    (*(v6 + 56))(v18 & v8, 0, 1, v5);
  }

  return a1;
}

_DWORD *assignWithTake for ValueCycleDetector(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v3 = (a1 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v4 = (a2 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  *v3 = *v4;
  *(v3 + 4) = *(v4 + 4);
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = ~v7;
  v9 = ((v7 + 5 + v3) & ~v7);
  v10 = ((v7 + 5 + v4) & ~v7);
  v11 = *(v6 + 48);
  v12 = v11(v9, 1, v5);
  v13 = v11(v10, 1, v5);
  if (v12)
  {
    if (!v13)
    {
      (*(v6 + 32))(v9, v10, v5);
      (*(v6 + 56))(v9, 0, 1, v5);
      goto LABEL_12;
    }

    v14 = *(v6 + 84);
    v15 = *(v6 + 64);
  }

  else
  {
    if (!v13)
    {
      (*(v6 + 40))(v9, v10, v5);
      goto LABEL_12;
    }

    (*(v6 + 8))(v9, v5);
    v14 = *(v6 + 84);
    v15 = *(v6 + 64);
  }

  if (v14)
  {
    v16 = v15;
  }

  else
  {
    v16 = v15 + 1;
  }

  memcpy(v9, v10, v16);
LABEL_12:
  if (*(v6 + 84))
  {
    v17 = *(v6 + 64);
  }

  else
  {
    v17 = *(v6 + 64) + 1;
  }

  v18 = ((v9 + v7 + v17) & v8);
  v19 = ((v10 + v7 + v17) & v8);
  v20 = v11(v18, 1, v5);
  v21 = v11(v19, 1, v5);
  if (v20)
  {
    if (!v21)
    {
      (*(v6 + 32))(v18, v19, v5);
      (*(v6 + 56))(v18, 0, 1, v5);
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (v21)
  {
    (*(v6 + 8))(v18, v5);
LABEL_20:
    memcpy(v18, v19, v17);
    goto LABEL_21;
  }

  (*(v6 + 40))(v18, v19, v5);
LABEL_21:
  v22 = v17 + v7;
  v23 = &v18[v17 + v7];
  v24 = &v19[v22];
  v25 = v11((v23 & v8), 1, v5);
  v26 = v11((v24 & v8), 1, v5);
  if (!v25)
  {
    if (!v26)
    {
      (*(v6 + 40))(v23 & v8, v24 & v8, v5);
      return a1;
    }

    (*(v6 + 8))(v23 & v8, v5);
    goto LABEL_26;
  }

  if (v26)
  {
LABEL_26:
    memcpy((v23 & v8), (v24 & v8), v17);
    return a1;
  }

  (*(v6 + 32))(v23 & v8, v24 & v8, v5);
  (*(v6 + 56))(v23 & v8, 0, 1, v5);
  return a1;
}

uint64_t getEnumTagSinglePayload for ValueCycleDetector(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v9;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = a2 - v7;
  if (a2 > v7)
  {
    v11 = ((v8 + 9) & ~v8) + v9 + ((v9 + v8 + ((v9 + v8) & ~v8)) & ~v8);
    v12 = 8 * v11;
    if (v11 > 3)
    {
      goto LABEL_12;
    }

    v14 = ((v10 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v14))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_30;
      }

      goto LABEL_19;
    }

    if (v14 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_30;
      }

      goto LABEL_19;
    }

    if (v14 >= 2)
    {
LABEL_12:
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_30;
      }

LABEL_19:
      v15 = (v13 - 1) << v12;
      if (v11 > 3)
      {
        v15 = 0;
      }

      if (v11)
      {
        if (v11 > 3)
        {
          LODWORD(v11) = 4;
        }

        if (v11 > 2)
        {
          if (v11 == 3)
          {
            LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            LODWORD(v11) = *a1;
          }
        }

        else if (v11 == 1)
        {
          LODWORD(v11) = *a1;
        }

        else
        {
          LODWORD(v11) = *a1;
        }
      }

      return v7 + (v11 | v15) + 1;
    }
  }

LABEL_30:
  v16 = (a1 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  if (v6 > 0xFE)
  {
    v19 = (*(v4 + 48))((v16 + v8 + 5) & ~v8);
    if (v19 >= 2)
    {
      return v19 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v17 = *(v16 + 4);
    if (v17 < 2)
    {
      return 0;
    }

    return ((v17 + 2147483646) & 0x7FFFFFFF) + 1;
  }
}

void storeEnumTagSinglePayload for ValueCycleDetector(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0xFE)
  {
    v10 = 254;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v7 + 80);
  v12 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v12;
  }

  v13 = ((v12 + v11 + ((v12 + v11) & ~v11)) & ~v11) + v12;
  v14 = v13 + ((v11 + 9) & ~v11);
  v15 = a3 >= v10;
  v16 = a3 - v10;
  if (v16 == 0 || !v15)
  {
LABEL_20:
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  if (v14 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  v17 = ((v16 + ~(-1 << (8 * v14))) >> (8 * v14)) + 1;
  if (!HIWORD(v17))
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
      v6 = v18;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_20;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_21:
    v19 = ~v10 + a2;
    if (v14 < 4)
    {
      v20 = (v19 >> (8 * v14)) + 1;
      if (v14)
      {
        v21 = v19 & ~(-1 << (8 * v14));
        bzero(a1, v14);
        if (v14 != 3)
        {
          if (v14 == 2)
          {
            *a1 = v21;
            if (v6 > 1)
            {
LABEL_60:
              if (v6 == 2)
              {
                *&a1[v14] = v20;
              }

              else
              {
                *&a1[v14] = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v6 > 1)
            {
              goto LABEL_60;
            }
          }

          goto LABEL_57;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v6 > 1)
      {
        goto LABEL_60;
      }
    }

    else
    {
      bzero(a1, v14);
      *a1 = v19;
      v20 = 1;
      if (v6 > 1)
      {
        goto LABEL_60;
      }
    }

LABEL_57:
    if (v6)
    {
      a1[v14] = v20;
    }

    return;
  }

LABEL_30:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v14] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v14] = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v6)
  {
    goto LABEL_36;
  }

  a1[v14] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  v22 = (a1 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  if (v9 > 0xFE)
  {
    v23 = ((v22 + v11 + 5) & ~v11);
    if (v9 >= a2)
    {
      v27 = *(v7 + 56);
      v28 = a2 + 1;

      v27((v22 + v11 + 5) & ~v11, v28);
    }

    else
    {
      if (v13 <= 3)
      {
        v24 = ~(-1 << (8 * v13));
      }

      else
      {
        v24 = -1;
      }

      if (v13)
      {
        v25 = v24 & (~v9 + a2);
        if (v13 <= 3)
        {
          v26 = v13;
        }

        else
        {
          v26 = 4;
        }

        bzero(v23, v13);
        if (v26 > 2)
        {
          if (v26 == 3)
          {
            *v23 = v25;
            v23[2] = BYTE2(v25);
          }

          else
          {
            *v23 = v25;
          }
        }

        else if (v26 == 1)
        {
          *v23 = v25;
        }

        else
        {
          *v23 = v25;
        }
      }
    }
  }

  else
  {
    *(v22 + 4) = a2 + 1;
  }
}

double _s7SwiftUI12_GraphInputsV6append_2toyq__xmtAA0C5InputRzAA0C8ReusableR_AA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA018ScheduledAnimationW033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGGG_AA0kG7ElementANLLOTt0g5(uint64_t a1, uint64_t a2, char a3)
{
  _s7SwiftUI12_GraphInputsV19recordReusableInput33_9FF97745734808976F608CE0DC13C39CLLyyxmAA0cG0RzAA0cF05ValueRpzlFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA018ScheduledAnimationZ033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGGG_Ttg5();
  v7 = *v3;
  _s7SwiftUI7WeakBoxVyAA19GlassContainerCacheCGMaTm_0(0, &lazy cache variable for type metadata for BodyInput<_ViewModifier_Content<ScheduledAnimationModifier<Int>>>, type metadata accessor for _ViewModifier_Content<ScheduledAnimationModifier<Int>>, type metadata accessor for BodyInput);
  BloomFilter.init(hashValue:)(v8);
  v9 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA9BodyInput33_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA26ScheduledAnimationModifier020_94C2570E898B27608B6L11D65EF8A1A07LLVySiGGG_Tt0B5(v7, v14);
  if (v9)
  {
    v10 = v9[9];
  }

  else
  {
    v10 = 0;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = a3 & 1;
  *(v11 + 40) = v10;
  outlined copy of BodyInputElement(a1, a2);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA9BodyInput33_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA018ScheduledAnimationT033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGGG_Tt2B5(v3, v11, v13);

  return result;
}

double _s7SwiftUI12_GraphInputsV6append_2toyq__xmtAA0C5InputRzAA0C8ReusableR_AA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA04KickW033_02B8A9C041E17C70E13F37D6E2D14302LLVGG_AA0kG7ElementANLLOTt0g5(uint64_t a1, uint64_t a2, char a3)
{
  _s7SwiftUI12_GraphInputsV19recordReusableInput33_9FF97745734808976F608CE0DC13C39CLLyyxmAA0cG0RzAA0cF05ValueRpzlFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA04KickZ033_02B8A9C041E17C70E13F37D6E2D14302LLVGG_Ttg5();
  v7 = *v3;
  type metadata accessor for BodyInput<_ViewModifier_Content<FlexInteractionModifier>>(0, &lazy cache variable for type metadata for BodyInput<_ViewModifier_Content<KickModifier>>, &lazy cache variable for type metadata for _ViewModifier_Content<KickModifier>, lazy protocol witness table accessor for type KickModifier and conformance KickModifier, &type metadata for KickModifier);
  BloomFilter.init(hashValue:)(v8);
  v9 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA9BodyInput33_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA12KickModifier33_02B8A9C041E17C70E13F37D6E2D14302LLVGG_Tt0B5(v7, v14);
  if (v9)
  {
    v10 = v9[9];
  }

  else
  {
    v10 = 0;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = a3 & 1;
  *(v11 + 40) = v10;
  outlined copy of BodyInputElement(a1, a2);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA9BodyInput33_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA04KickT033_02B8A9C041E17C70E13F37D6E2D14302LLVGG_Tt2B5(v3, v11, v13);

  return result;
}

double _s7SwiftUI12_GraphInputsV6append_2toyq__xmtAA0C5InputRzAA0C8ReusableR_AA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA015TranslationKickW033_02B8A9C041E17C70E13F37D6E2D14302LLVySiGGG_AA0kG7ElementANLLOTt0g5(uint64_t a1, uint64_t a2, char a3)
{
  _s7SwiftUI12_GraphInputsV19recordReusableInput33_9FF97745734808976F608CE0DC13C39CLLyyxmAA0cG0RzAA0cF05ValueRpzlFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA015TranslationKickZ033_02B8A9C041E17C70E13F37D6E2D14302LLVySiGGG_Ttg5();
  v7 = *v3;
  _s7SwiftUI7WeakBoxVyAA19GlassContainerCacheCGMaTm_0(0, &lazy cache variable for type metadata for BodyInput<_ViewModifier_Content<TranslationKickModifier<Int>>>, type metadata accessor for _ViewModifier_Content<TranslationKickModifier<Int>>, type metadata accessor for BodyInput);
  BloomFilter.init(hashValue:)(v8);
  v9 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA9BodyInput33_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA23TranslationKickModifier33_02B8A9C041E17C70E13F37D6E2D14302LLVySiGGG_Tt0B5(v7, v14);
  if (v9)
  {
    v10 = v9[9];
  }

  else
  {
    v10 = 0;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = a3 & 1;
  *(v11 + 40) = v10;
  outlined copy of BodyInputElement(a1, a2);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA9BodyInput33_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA015TranslationKickT033_02B8A9C041E17C70E13F37D6E2D14302LLVySiGGG_Tt2B5(v3, v11, v13);

  return result;
}

double _s7SwiftUI12_GraphInputsV6append_2toyq__xmtAA0C5InputRzAA0C8ReusableR_AA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA010ScalePulseW033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGGG_AA0kG7ElementANLLOTt0g5(uint64_t a1, uint64_t a2, char a3)
{
  _s7SwiftUI12_GraphInputsV19recordReusableInput33_9FF97745734808976F608CE0DC13C39CLLyyxmAA0cG0RzAA0cF05ValueRpzlFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA010ScalePulseZ033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGGG_Ttg5();
  v7 = *v3;
  _s7SwiftUI7WeakBoxVyAA19GlassContainerCacheCGMaTm_0(0, &lazy cache variable for type metadata for BodyInput<_ViewModifier_Content<ScalePulseModifier<Int>>>, type metadata accessor for _ViewModifier_Content<ScalePulseModifier<Int>>, type metadata accessor for BodyInput);
  BloomFilter.init(hashValue:)(v8);
  v9 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA9BodyInput33_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA18ScalePulseModifier33_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGGG_Tt0B5(v7, v14);
  if (v9)
  {
    v10 = v9[9];
  }

  else
  {
    v10 = 0;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = a3 & 1;
  *(v11 + 40) = v10;
  outlined copy of BodyInputElement(a1, a2);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA9BodyInput33_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA010ScalePulseT033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGGG_Tt2B5(v3, v11, v13);

  return result;
}

double _s7SwiftUI12_GraphInputsV6append_2toyq__xmtAA0C5InputRzAA0C8ReusableR_AA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA020GlassTransitionStateW033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGG_AA0kG7ElementANLLOTt0g5(uint64_t a1, uint64_t a2, char a3)
{
  _s7SwiftUI12_GraphInputsV19recordReusableInput33_9FF97745734808976F608CE0DC13C39CLLyyxmAA0cG0RzAA0cF05ValueRpzlFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA020GlassTransitionStateZ033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGG_Ttg5();
  v7 = *v3;
  type metadata accessor for BodyInput<_ViewModifier_Content<FlexInteractionModifier>>(0, &lazy cache variable for type metadata for BodyInput<_ViewModifier_Content<GlassTransitionStateModifier>>, &lazy cache variable for type metadata for _ViewModifier_Content<GlassTransitionStateModifier>, lazy protocol witness table accessor for type GlassTransitionStateModifier and conformance GlassTransitionStateModifier, &type metadata for GlassTransitionStateModifier);
  BloomFilter.init(hashValue:)(v8);
  v9 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA9BodyInput33_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA28GlassTransitionStateModifier04_D12L27F25A0BD65FFBD3A7636B60067DFLLVGG_Tt0B5(v7, v14);
  if (v9)
  {
    v10 = v9[9];
  }

  else
  {
    v10 = 0;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = a3 & 1;
  *(v11 + 40) = v10;
  outlined copy of BodyInputElement(a1, a2);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA9BodyInput33_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA020GlassTransitionStateT033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGG_Tt2B5(v3, v11, v13);

  return result;
}

double _s7SwiftUI12_GraphInputsV6append_2toyq__xmtAA0C5InputRzAA0C8ReusableR_AA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA016GlassEffectShapeW033_62A32D59B8A902A88963544196023CF7LLVGG_AA0kG7ElementANLLOTt0g5(uint64_t a1, uint64_t a2, char a3)
{
  _s7SwiftUI12_GraphInputsV19recordReusableInput33_9FF97745734808976F608CE0DC13C39CLLyyxmAA0cG0RzAA0cF05ValueRpzlFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA016GlassEffectShapeZ033_62A32D59B8A902A88963544196023CF7LLVGG_Ttg5();
  v7 = *v3;
  type metadata accessor for BodyInput<_ViewModifier_Content<FlexInteractionModifier>>(0, &lazy cache variable for type metadata for BodyInput<_ViewModifier_Content<GlassEffectShapeModifier>>, &lazy cache variable for type metadata for _ViewModifier_Content<GlassEffectShapeModifier>, lazy protocol witness table accessor for type GlassEffectShapeModifier and conformance GlassEffectShapeModifier, &type metadata for GlassEffectShapeModifier);
  BloomFilter.init(hashValue:)(v8);
  v9 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA9BodyInput33_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA24GlassEffectShapeModifier33_62A32D59B8A902A88963544196023CF7LLVGG_Tt0B5(v7, v14);
  if (v9)
  {
    v10 = v9[9];
  }

  else
  {
    v10 = 0;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = a3 & 1;
  *(v11 + 40) = v10;
  outlined copy of BodyInputElement(a1, a2);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA9BodyInput33_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA016GlassEffectShapeT033_62A32D59B8A902A88963544196023CF7LLVGG_Tt2B5(v3, v11, v13);

  return result;
}

double _s7SwiftUI12_GraphInputsV6append_2toyq__xmtAA0C5InputRzAA0C8ReusableR_AA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA015FlexInteractionW0VGG_AA0kG7ElementANLLOTt0g5(uint64_t a1, uint64_t a2, char a3)
{
  _s7SwiftUI12_GraphInputsV19recordReusableInput33_9FF97745734808976F608CE0DC13C39CLLyyxmAA0cG0RzAA0cF05ValueRpzlFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA015FlexInteractionZ0VGG_Ttg5();
  v7 = *v3;
  type metadata accessor for BodyInput<_ViewModifier_Content<FlexInteractionModifier>>(0, &lazy cache variable for type metadata for BodyInput<_ViewModifier_Content<FlexInteractionModifier>>, &lazy cache variable for type metadata for _ViewModifier_Content<FlexInteractionModifier>, lazy protocol witness table accessor for type FlexInteractionModifier and conformance FlexInteractionModifier, &type metadata for FlexInteractionModifier);
  BloomFilter.init(hashValue:)(v8);
  v9 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA9BodyInput33_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA23FlexInteractionModifierVGG_Tt0B5(v7, v14);
  if (v9)
  {
    v10 = v9[9];
  }

  else
  {
    v10 = 0;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = a3 & 1;
  *(v11 + 40) = v10;
  outlined copy of BodyInputElement(a1, a2);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA9BodyInput33_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA015FlexInteractionT0VGG_Tt2B5(v3, v11, v13);

  return result;
}

double _s7SwiftUI12_GraphInputsV6append_2toyq__xmtAA0C5InputRzAA0C8ReusableR_AA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA0x17CaptureProtectionvW0VGG_AA0kG7ElementANLLOTt0g5(uint64_t a1, uint64_t a2, char a3)
{
  _s7SwiftUI12_GraphInputsV19recordReusableInput33_9FF97745734808976F608CE0DC13C39CLLyyxmAA0cG0RzAA0cF05ValueRpzlFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA024ContentCaptureProtectionyZ0VGG_Ttg5();
  type metadata accessor for BodyInput<_ViewModifier_Content<FlexInteractionModifier>>(0, &lazy cache variable for type metadata for BodyInput<_ViewModifier_Content<ContentCaptureProtectionViewModifier>>, &lazy cache variable for type metadata for _ViewModifier_Content<ContentCaptureProtectionViewModifier>, lazy protocol witness table accessor for type ContentCaptureProtectionViewModifier and conformance ContentCaptureProtectionViewModifier, &type metadata for ContentCaptureProtectionViewModifier);
  BloomFilter.init(hashValue:)(v7);

  v9 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA9BodyInput33_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA36ContentCaptureProtectionViewModifierVGG_Tt0B5(v8, v14);
  if (v9)
  {
    v10 = v9[9];
  }

  else
  {
    v10 = 0;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = a3 & 1;
  *(v11 + 40) = v10;

  outlined copy of BodyInputElement(a1, a2);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA9BodyInput33_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA0u17CaptureProtectionsT0VGG_Tt2B5(v3, v11, v13);

  return result;
}

double _s7SwiftUI12_GraphInputsV6append_2toyq__xmtAA0C5InputRzAA0C8ReusableR_AA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA019FlexibleButtonFrameW0VGG_AA0kG7ElementANLLOTt0g5(uint64_t a1, uint64_t a2, char a3)
{
  _s7SwiftUI12_GraphInputsV19recordReusableInput33_9FF97745734808976F608CE0DC13C39CLLyyxmAA0cG0RzAA0cF05ValueRpzlFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA019FlexibleButtonFrameZ0VGG_Ttg5();
  type metadata accessor for BodyInput<_ViewModifier_Content<FlexInteractionModifier>>(0, &lazy cache variable for type metadata for BodyInput<_ViewModifier_Content<FlexibleButtonFrameModifier>>, &lazy cache variable for type metadata for _ViewModifier_Content<FlexibleButtonFrameModifier>, lazy protocol witness table accessor for type FlexibleButtonFrameModifier and conformance FlexibleButtonFrameModifier, &type metadata for FlexibleButtonFrameModifier);
  BloomFilter.init(hashValue:)(v7);

  v9 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA9BodyInput33_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA27FlexibleButtonFrameModifierVGG_Tt0B5(v8, v14);
  if (v9)
  {
    v10 = v9[9];
  }

  else
  {
    v10 = 0;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = a3 & 1;
  *(v11 + 40) = v10;

  outlined copy of BodyInputElement(a1, a2);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA9BodyInput33_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA019FlexibleButtonFrameT0VGG_Tt2B5(v3, v11, v13);

  return result;
}

double _s7SwiftUI12_GraphInputsV6append_2toyq__xmtAA0C5InputRzAA0C8ReusableR_AA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA015SafeAreaPaddingW0VGG_AA0kG7ElementANLLOTt0g5(uint64_t a1, uint64_t a2, char a3)
{
  _s7SwiftUI12_GraphInputsV19recordReusableInput33_9FF97745734808976F608CE0DC13C39CLLyyxmAA0cG0RzAA0cF05ValueRpzlFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA015SafeAreaPaddingZ0VGG_Ttg5();
  type metadata accessor for BodyInput<_ViewModifier_Content<FlexInteractionModifier>>(0, &lazy cache variable for type metadata for BodyInput<_ViewModifier_Content<SafeAreaPaddingModifier>>, &lazy cache variable for type metadata for _ViewModifier_Content<SafeAreaPaddingModifier>, lazy protocol witness table accessor for type SafeAreaPaddingModifier and conformance SafeAreaPaddingModifier, &type metadata for SafeAreaPaddingModifier);
  BloomFilter.init(hashValue:)(v7);

  v9 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA9BodyInput33_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA23SafeAreaPaddingModifierVGG_Tt0B5(v8, v14);
  if (v9)
  {
    v10 = v9[9];
  }

  else
  {
    v10 = 0;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = a3 & 1;
  *(v11 + 40) = v10;

  outlined copy of BodyInputElement(a1, a2);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA9BodyInput33_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA015SafeAreaPaddingT0VGG_Tt2B5(v3, v11, v13);

  return result;
}

unint64_t _s7SwiftUI10_ShapeViewV05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyACyxq_GG_AA01_D6InputsVtFZAA9RectangleVAAE17AsymmetricalInsetV_AA15ForegroundStyleVTt2B5@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 48);
  if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v6) & 1) != 0 || (result = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA014ViewRespondersI0V_TtB5Tf4dn_n(v6), (result))
  {
    v8 = *(a2 + 48);
    v9 = *(a2 + 64);
    v10 = *(a2 + 16);
    v20[2] = *(a2 + 32);
    v20[3] = v8;
    v11 = *(a2 + 36);
    v20[4] = v9;
    v21 = *(a2 + 80);
    v20[0] = *a2;
    v20[1] = v10;
    LOBYTE(v16) = 0;
    swift_beginAccess();
    v12 = CachedEnvironment.resolvedShapeStyles(for:role:mode:)(v20, &v16, 0x100000000);
    swift_endAccess();
    _s7SwiftUI19ShapeStyledLeafViewPAAE04makeeF04view6inputs6styles17interpolatorGroup4dataAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsV09AttributeO00R0VyAA01_C10Style_PackVGAA01_cs13_InterpolatorL0CSg0C10UpdateDataQztFZAA01_cF0VyAA9RectangleVAAE17AsymmetricalInsetVAA010ForegroundS0VG_Tt5B5(a1, a2, v12, 0, &v17);
    if (one-time initialization token for v4 != -1)
    {
      swift_once();
    }

    v13 = static Semantics.v4;
    if (one-time initialization token for forced != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (byte_1ED53C51C)
    {
      if (!dyld_program_sdk_at_least())
      {
        goto LABEL_13;
      }
    }

    else if (static Semantics.forced < v13)
    {
      goto LABEL_13;
    }

    if ((v11 & 2) != 0)
    {
      v16 = a1;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for LeafLayoutComputer<_ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type LeafLayoutComputer<_ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>> and conformance LeafLayoutComputer<A>, type metadata accessor for LeafLayoutComputer<_ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>>, "]");
      result = Attribute.init<A>(body:value:flags:update:)();
      v14 = v18 | 0x80;
LABEL_14:
      *a3 = v17;
      *(a3 + 8) = v14;
      *(a3 + 12) = result;
      return result;
    }

LABEL_13:
    v14 = v18;
    result = v19;
    goto LABEL_14;
  }

  *a3 = MEMORY[0x1E69E7CC0];
  v15 = *MEMORY[0x1E698D3F8];
  *(a3 + 8) = 0;
  *(a3 + 12) = v15;
  return result;
}

unint64_t _s7SwiftUI10_ShapeViewV05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyACyxq_GG_AA01_D6InputsVtFZAA015CombinedContentC033_6E67AD6866B38627EB183D41FF0BA80ALLV_AA15ForegroundStyleVTt2B5@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 48);
  if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v6) & 1) != 0 || (result = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA014ViewRespondersI0V_TtB5Tf4dn_n(v6), (result))
  {
    v8 = *(a2 + 48);
    v9 = *(a2 + 64);
    v10 = *(a2 + 16);
    v20[2] = *(a2 + 32);
    v20[3] = v8;
    v11 = *(a2 + 36);
    v20[4] = v9;
    v21 = *(a2 + 80);
    v20[0] = *a2;
    v20[1] = v10;
    LOBYTE(v16) = 0;
    swift_beginAccess();
    v12 = CachedEnvironment.resolvedShapeStyles(for:role:mode:)(v20, &v16, 0x100000000);
    swift_endAccess();
    _s7SwiftUI19ShapeStyledLeafViewPAAE04makeeF04view6inputs6styles17interpolatorGroup4dataAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsV09AttributeO00R0VyAA01_C10Style_PackVGAA01_cs13_InterpolatorL0CSg0C10UpdateDataQztFZAA01_cF0VyAA015CombinedContentC033_6E67AD6866B38627EB183D41FF0BA80ALLVAA010ForegroundS0VG_Tt5B5(a1, a2, v12, 0, &v17);
    if (one-time initialization token for v4 != -1)
    {
      swift_once();
    }

    v13 = static Semantics.v4;
    if (one-time initialization token for forced != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (byte_1ED53C51C)
    {
      if (!dyld_program_sdk_at_least())
      {
        goto LABEL_13;
      }
    }

    else if (static Semantics.forced < v13)
    {
      goto LABEL_13;
    }

    if ((v11 & 2) != 0)
    {
      v16 = a1;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for LeafLayoutComputer<_ShapeView<CombinedContentShape, ForegroundStyle>>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type LeafLayoutComputer<_ShapeView<CombinedContentShape, ForegroundStyle>> and conformance LeafLayoutComputer<A>, type metadata accessor for LeafLayoutComputer<_ShapeView<CombinedContentShape, ForegroundStyle>>, "]");
      result = Attribute.init<A>(body:value:flags:update:)();
      v14 = v18 | 0x80;
LABEL_14:
      *a3 = v17;
      *(a3 + 8) = v14;
      *(a3 + 12) = result;
      return result;
    }

LABEL_13:
    v14 = v18;
    result = v19;
    goto LABEL_14;
  }

  *a3 = MEMORY[0x1E69E7CC0];
  v15 = *MEMORY[0x1E698D3F8];
  *(a3 + 8) = 0;
  *(a3 + 12) = v15;
  return result;
}

unint64_t _s7SwiftUI10_ShapeViewV05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyACyxq_GG_AA01_D6InputsVtFZAA9RectangleV6_InsetV_AA15ForegroundStyleVTt2B5@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  v32 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 6);
  if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v6) & 1) == 0)
  {
    result = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA014ViewRespondersI0V_TtB5Tf4dn_n(v6);
    if ((result & 1) == 0)
    {
      *a3 = MEMORY[0x1E69E7CC0];
      v21 = *MEMORY[0x1E698D3F8];
      *(a3 + 8) = 0;
      *(a3 + 12) = v21;
      return result;
    }
  }

  v8 = a2[1];
  v30[0] = *a2;
  v30[1] = v8;
  v9 = a2[3];
  v11 = *a2;
  v10 = a2[1];
  v31 = a2[2];
  v28[2] = a2[2];
  v28[3] = v9;
  v28[4] = a2[4];
  v29 = *(a2 + 20);
  v28[0] = v11;
  v28[1] = v10;
  LOBYTE(v22) = 0;
  swift_beginAccess();
  v12 = CachedEnvironment.resolvedShapeStyles(for:role:mode:)(v28, &v22, 0x100000000);
  swift_endAccess();
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  outlined init with copy of _GraphInputs(v30, v28);
  LODWORD(OffsetAttribute2) = _s7SwiftUI10AnimatablePAAE04makeC05value6inputs14AttributeGraph0G0VyxGAA01_H5ValueVyxG_AA01_H6InputsVtFZAA9RectangleV6_InsetV_Tt1B5(OffsetAttribute2, v30);
  outlined destroy of _GraphInputs(v30);
  *&v28[0] = __PAIR64__(AGGraphCreateOffsetAttribute2(), OffsetAttribute2);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(0, &lazy cache variable for type metadata for AnimatedShape<Rectangle._Inset>, lazy protocol witness table accessor for type Rectangle._Inset and conformance Rectangle._Inset, &type metadata for Rectangle._Inset, type metadata accessor for AnimatedShape);
  _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(0, &lazy cache variable for type metadata for AnimatedShape<Rectangle._Inset>.Init, lazy protocol witness table accessor for type Rectangle._Inset and conformance Rectangle._Inset, &type metadata for Rectangle._Inset, type metadata accessor for AnimatedShape.Init);
  lazy protocol witness table accessor for type AnimatedShape<Rectangle._Inset>.Init and conformance AnimatedShape<A>.Init();
  v14 = Attribute.init<A>(body:value:flags:update:)();
  _s7SwiftUI19ShapeStyledLeafViewPAAE04makeeF04view6inputs6styles17interpolatorGroup4dataAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsV09AttributeO00R0VyAA01_C10Style_PackVGAA01_cs13_InterpolatorL0CSg0C10UpdateDataQztFZAA08AnimatedC0VyAA9RectangleV6_InsetVG_Tt5B5(v14, a2, v12, 0, &v22);
  if (one-time initialization token for v4 != -1)
  {
    swift_once();
  }

  v15 = static Semantics.v4;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if ((byte_1ED53C51C & 1) == 0)
  {
    if (static Semantics.forced < v15)
    {
      goto LABEL_14;
    }

LABEL_11:
    if ((BYTE4(v31) & 2) != 0)
    {
      LODWORD(v24) = v14;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for LeafLayoutComputer<AnimatedShape<Rectangle._Inset>>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type LeafLayoutComputer<AnimatedShape<Rectangle._Inset>> and conformance LeafLayoutComputer<A>, type metadata accessor for LeafLayoutComputer<AnimatedShape<Rectangle._Inset>>, "]");
      HIDWORD(v23) = Attribute.init<A>(body:value:flags:update:)();
      if ((v23 & 0x80) == 0)
      {
        LODWORD(v23) = v23 | 0x80;
      }
    }

    goto LABEL_14;
  }

  if (dyld_program_sdk_at_least())
  {
    goto LABEL_11;
  }

LABEL_14:
  result = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA20ContentShapePathDataV_TtB5Tf4dn_n(v6);
  if (result)
  {
    v16 = *MEMORY[0x1E698D3F8];
    v17 = AGGraphCreateOffsetAttribute2();
    v24 = *(a2 + 60);
    v25 = v17;
    v26 = v4;
    v27 = v16;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ContentResponderPathDataRule<_ShapeView<Rectangle._Inset, ForegroundStyle>>(0);
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type ContentResponderPathDataRule<_ShapeView<Rectangle._Inset, ForegroundStyle>> and conformance ContentResponderPathDataRule<A>, type metadata accessor for ContentResponderPathDataRule<_ShapeView<Rectangle._Inset, ForegroundStyle>>, protocol conformance descriptor for ContentResponderPathDataRule<A>);
    v18 = Attribute.init<A>(body:value:flags:update:)();
    v24 = v6;
    result = PreferenceKeys._index(of:)(&type metadata for ContentShapePathData);
    v19 = *(v6 + 16);
    if (result != v19)
    {
      if (result >= v19)
      {
        __break(1u);
      }

      if (*(v6 + 16 * result + 32) == &type metadata for ContentShapePathData)
      {
        LODWORD(v24) = v18;
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for AtomicBuffer<TrackerData>(0, &lazy cache variable for type metadata for ContentShapePathData?, &type metadata for ContentShapePathData, MEMORY[0x1E69E6720]);
        type metadata accessor for AtomicBuffer<TrackerData>(0, &lazy cache variable for type metadata for ToOptional<ContentShapePathData>, &type metadata for ContentShapePathData, type metadata accessor for ToOptional);
        lazy protocol witness table accessor for type ToOptional<ContentShapePathData> and conformance ToOptional<A>();
        v20 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v24) = 0;
        result = PreferencesOutputs.subscript.setter(v20, &type metadata for ContentShapePathData, &protocol witness table for ContentShapePathData);
      }
    }
  }

  *a3 = v22;
  *(a3 + 8) = v23;
  return result;
}

unint64_t _s7SwiftUI10_ShapeViewV05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyACyxq_GG_AA01_D6InputsVtFZAA03AnyC0V_AA15ForegroundStyleVTt2B5@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  v32 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 6);
  if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v6) & 1) == 0)
  {
    result = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA014ViewRespondersI0V_TtB5Tf4dn_n(v6);
    if ((result & 1) == 0)
    {
      *a3 = MEMORY[0x1E69E7CC0];
      v21 = *MEMORY[0x1E698D3F8];
      *(a3 + 8) = 0;
      *(a3 + 12) = v21;
      return result;
    }
  }

  v8 = a2[1];
  v30[0] = *a2;
  v30[1] = v8;
  v9 = a2[3];
  v11 = *a2;
  v10 = a2[1];
  v31 = a2[2];
  v28[2] = a2[2];
  v28[3] = v9;
  v28[4] = a2[4];
  v29 = *(a2 + 20);
  v28[0] = v11;
  v28[1] = v10;
  LOBYTE(v22) = 0;
  swift_beginAccess();
  v12 = CachedEnvironment.resolvedShapeStyles(for:role:mode:)(v28, &v22, 0x100000000);
  swift_endAccess();
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  outlined init with copy of _GraphInputs(v30, v28);
  LODWORD(OffsetAttribute2) = _s7SwiftUI10AnimatablePAAE04makeC05value6inputs14AttributeGraph0G0VyxGAA01_H5ValueVyxG_AA01_H6InputsVtFZAA8AnyShapeV_Tt1B5(OffsetAttribute2, v30);
  outlined destroy of _GraphInputs(v30);
  *&v28[0] = __PAIR64__(AGGraphCreateOffsetAttribute2(), OffsetAttribute2);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(0, &lazy cache variable for type metadata for AnimatedShape<AnyShape>, lazy protocol witness table accessor for type AnyShape and conformance AnyShape, &type metadata for AnyShape, type metadata accessor for AnimatedShape);
  _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(0, &lazy cache variable for type metadata for AnimatedShape<AnyShape>.Init, lazy protocol witness table accessor for type AnyShape and conformance AnyShape, &type metadata for AnyShape, type metadata accessor for AnimatedShape.Init);
  lazy protocol witness table accessor for type AnimatedShape<AnyShape>.Init and conformance AnimatedShape<A>.Init();
  v14 = Attribute.init<A>(body:value:flags:update:)();
  _s7SwiftUI19ShapeStyledLeafViewPAAE04makeeF04view6inputs6styles17interpolatorGroup4dataAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsV09AttributeO00R0VyAA01_C10Style_PackVGAA01_cs13_InterpolatorL0CSg0C10UpdateDataQztFZAA08AnimatedC0VyAA03AnyC0VG_Tt5B5(v14, a2, v12, 0, &v22);
  if (one-time initialization token for v4 != -1)
  {
    swift_once();
  }

  v15 = static Semantics.v4;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if ((byte_1ED53C51C & 1) == 0)
  {
    if (static Semantics.forced < v15)
    {
      goto LABEL_14;
    }

LABEL_11:
    if ((BYTE4(v31) & 2) != 0)
    {
      LODWORD(v24) = v14;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for LeafLayoutComputer<AnimatedShape<AnyShape>>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type LeafLayoutComputer<AnimatedShape<AnyShape>> and conformance LeafLayoutComputer<A>, type metadata accessor for LeafLayoutComputer<AnimatedShape<AnyShape>>, "]");
      HIDWORD(v23) = Attribute.init<A>(body:value:flags:update:)();
      if ((v23 & 0x80) == 0)
      {
        LODWORD(v23) = v23 | 0x80;
      }
    }

    goto LABEL_14;
  }

  if (dyld_program_sdk_at_least())
  {
    goto LABEL_11;
  }

LABEL_14:
  result = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA20ContentShapePathDataV_TtB5Tf4dn_n(v6);
  if (result)
  {
    v16 = *MEMORY[0x1E698D3F8];
    v17 = AGGraphCreateOffsetAttribute2();
    v24 = *(a2 + 60);
    v25 = v17;
    v26 = v4;
    v27 = v16;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ContentResponderPathDataRule<_ShapeView<AnyShape, ForegroundStyle>>(0);
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type ContentResponderPathDataRule<_ShapeView<AnyShape, ForegroundStyle>> and conformance ContentResponderPathDataRule<A>, type metadata accessor for ContentResponderPathDataRule<_ShapeView<AnyShape, ForegroundStyle>>, protocol conformance descriptor for ContentResponderPathDataRule<A>);
    v18 = Attribute.init<A>(body:value:flags:update:)();
    v24 = v6;
    result = PreferenceKeys._index(of:)(&type metadata for ContentShapePathData);
    v19 = *(v6 + 16);
    if (result != v19)
    {
      if (result >= v19)
      {
        __break(1u);
      }

      if (*(v6 + 16 * result + 32) == &type metadata for ContentShapePathData)
      {
        LODWORD(v24) = v18;
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for AtomicBuffer<TrackerData>(0, &lazy cache variable for type metadata for ContentShapePathData?, &type metadata for ContentShapePathData, MEMORY[0x1E69E6720]);
        type metadata accessor for AtomicBuffer<TrackerData>(0, &lazy cache variable for type metadata for ToOptional<ContentShapePathData>, &type metadata for ContentShapePathData, type metadata accessor for ToOptional);
        lazy protocol witness table accessor for type ToOptional<ContentShapePathData> and conformance ToOptional<A>();
        v20 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v24) = 0;
        result = PreferencesOutputs.subscript.setter(v20, &type metadata for ContentShapePathData, &protocol witness table for ContentShapePathData);
      }
    }
  }

  *a3 = v22;
  *(a3 + 8) = v23;
  return result;
}

unint64_t _s7SwiftUI10_ShapeViewV05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyACyxq_GG_AA01_D6InputsVtFZAA7EllipseV_AA15ForegroundStyleVTt2B5@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 48);
  if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v6) & 1) != 0 || (result = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA014ViewRespondersI0V_TtB5Tf4dn_n(v6), (result))
  {
    v8 = *(a2 + 48);
    v9 = *(a2 + 64);
    v10 = *(a2 + 16);
    v20[2] = *(a2 + 32);
    v20[3] = v8;
    v11 = *(a2 + 36);
    v20[4] = v9;
    v21 = *(a2 + 80);
    v20[0] = *a2;
    v20[1] = v10;
    LOBYTE(v16) = 0;
    swift_beginAccess();
    v12 = CachedEnvironment.resolvedShapeStyles(for:role:mode:)(v20, &v16, 0x100000000);
    swift_endAccess();
    _s7SwiftUI19ShapeStyledLeafViewPAAE04makeeF04view6inputs6styles17interpolatorGroup4dataAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsV09AttributeO00R0VyAA01_C10Style_PackVGAA01_cs13_InterpolatorL0CSg0C10UpdateDataQztFZAA01_cF0VyAA7EllipseVAA010ForegroundS0VG_Tt5B5(a1, a2, v12, 0, &v17);
    if (one-time initialization token for v4 != -1)
    {
      swift_once();
    }

    v13 = static Semantics.v4;
    if (one-time initialization token for forced != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (byte_1ED53C51C)
    {
      if (!dyld_program_sdk_at_least())
      {
        goto LABEL_13;
      }
    }

    else if (static Semantics.forced < v13)
    {
      goto LABEL_13;
    }

    if ((v11 & 2) != 0)
    {
      v16 = a1;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for LeafLayoutComputer<_ShapeView<Ellipse, ForegroundStyle>>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type LeafLayoutComputer<_ShapeView<Ellipse, ForegroundStyle>> and conformance LeafLayoutComputer<A>, type metadata accessor for LeafLayoutComputer<_ShapeView<Ellipse, ForegroundStyle>>, "]");
      result = Attribute.init<A>(body:value:flags:update:)();
      v14 = v18 | 0x80;
LABEL_14:
      *a3 = v17;
      *(a3 + 8) = v14;
      *(a3 + 12) = result;
      return result;
    }

LABEL_13:
    v14 = v18;
    result = v19;
    goto LABEL_14;
  }

  *a3 = MEMORY[0x1E69E7CC0];
  v15 = *MEMORY[0x1E698D3F8];
  *(a3 + 8) = 0;
  *(a3 + 12) = v15;
  return result;
}

unint64_t _s7SwiftUI10_ShapeViewV05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyACyxq_GG_AA01_D6InputsVtFZAA7EllipseV6_InsetV_AA15ForegroundStyleVTt2B5@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  v32 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 6);
  if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v6) & 1) == 0)
  {
    result = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA014ViewRespondersI0V_TtB5Tf4dn_n(v6);
    if ((result & 1) == 0)
    {
      *a3 = MEMORY[0x1E69E7CC0];
      v21 = *MEMORY[0x1E698D3F8];
      *(a3 + 8) = 0;
      *(a3 + 12) = v21;
      return result;
    }
  }

  v8 = a2[1];
  v30[0] = *a2;
  v30[1] = v8;
  v9 = a2[3];
  v11 = *a2;
  v10 = a2[1];
  v31 = a2[2];
  v28[2] = a2[2];
  v28[3] = v9;
  v28[4] = a2[4];
  v29 = *(a2 + 20);
  v28[0] = v11;
  v28[1] = v10;
  LOBYTE(v22) = 0;
  swift_beginAccess();
  v12 = CachedEnvironment.resolvedShapeStyles(for:role:mode:)(v28, &v22, 0x100000000);
  swift_endAccess();
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  outlined init with copy of _GraphInputs(v30, v28);
  LODWORD(OffsetAttribute2) = _s7SwiftUI10AnimatablePAAE04makeC05value6inputs14AttributeGraph0G0VyxGAA01_H5ValueVyxG_AA01_H6InputsVtFZAA7EllipseV6_InsetV_Tt1B5(OffsetAttribute2, v30);
  outlined destroy of _GraphInputs(v30);
  *&v28[0] = __PAIR64__(AGGraphCreateOffsetAttribute2(), OffsetAttribute2);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(0, &lazy cache variable for type metadata for AnimatedShape<Ellipse._Inset>, lazy protocol witness table accessor for type Ellipse._Inset and conformance Ellipse._Inset, &type metadata for Ellipse._Inset, type metadata accessor for AnimatedShape);
  _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(0, &lazy cache variable for type metadata for AnimatedShape<Ellipse._Inset>.Init, lazy protocol witness table accessor for type Ellipse._Inset and conformance Ellipse._Inset, &type metadata for Ellipse._Inset, type metadata accessor for AnimatedShape.Init);
  lazy protocol witness table accessor for type AnimatedShape<Ellipse._Inset>.Init and conformance AnimatedShape<A>.Init();
  v14 = Attribute.init<A>(body:value:flags:update:)();
  _s7SwiftUI19ShapeStyledLeafViewPAAE04makeeF04view6inputs6styles17interpolatorGroup4dataAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsV09AttributeO00R0VyAA01_C10Style_PackVGAA01_cs13_InterpolatorL0CSg0C10UpdateDataQztFZAA08AnimatedC0VyAA7EllipseV6_InsetVG_Tt5B5(v14, a2, v12, 0, &v22);
  if (one-time initialization token for v4 != -1)
  {
    swift_once();
  }

  v15 = static Semantics.v4;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if ((byte_1ED53C51C & 1) == 0)
  {
    if (static Semantics.forced < v15)
    {
      goto LABEL_14;
    }

LABEL_11:
    if ((BYTE4(v31) & 2) != 0)
    {
      LODWORD(v24) = v14;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for LeafLayoutComputer<AnimatedShape<Ellipse._Inset>>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type LeafLayoutComputer<AnimatedShape<Ellipse._Inset>> and conformance LeafLayoutComputer<A>, type metadata accessor for LeafLayoutComputer<AnimatedShape<Ellipse._Inset>>, "]");
      HIDWORD(v23) = Attribute.init<A>(body:value:flags:update:)();
      if ((v23 & 0x80) == 0)
      {
        LODWORD(v23) = v23 | 0x80;
      }
    }

    goto LABEL_14;
  }

  if (dyld_program_sdk_at_least())
  {
    goto LABEL_11;
  }

LABEL_14:
  result = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA20ContentShapePathDataV_TtB5Tf4dn_n(v6);
  if (result)
  {
    v16 = *MEMORY[0x1E698D3F8];
    v17 = AGGraphCreateOffsetAttribute2();
    v24 = *(a2 + 60);
    v25 = v17;
    v26 = v4;
    v27 = v16;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ContentResponderPathDataRule<_ShapeView<Ellipse._Inset, ForegroundStyle>>(0);
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type ContentResponderPathDataRule<_ShapeView<Ellipse._Inset, ForegroundStyle>> and conformance ContentResponderPathDataRule<A>, type metadata accessor for ContentResponderPathDataRule<_ShapeView<Ellipse._Inset, ForegroundStyle>>, protocol conformance descriptor for ContentResponderPathDataRule<A>);
    v18 = Attribute.init<A>(body:value:flags:update:)();
    v24 = v6;
    result = PreferenceKeys._index(of:)(&type metadata for ContentShapePathData);
    v19 = *(v6 + 16);
    if (result != v19)
    {
      if (result >= v19)
      {
        __break(1u);
      }

      if (*(v6 + 16 * result + 32) == &type metadata for ContentShapePathData)
      {
        LODWORD(v24) = v18;
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for AtomicBuffer<TrackerData>(0, &lazy cache variable for type metadata for ContentShapePathData?, &type metadata for ContentShapePathData, MEMORY[0x1E69E6720]);
        type metadata accessor for AtomicBuffer<TrackerData>(0, &lazy cache variable for type metadata for ToOptional<ContentShapePathData>, &type metadata for ContentShapePathData, type metadata accessor for ToOptional);
        lazy protocol witness table accessor for type ToOptional<ContentShapePathData> and conformance ToOptional<A>();
        v20 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v24) = 0;
        result = PreferencesOutputs.subscript.setter(v20, &type metadata for ContentShapePathData, &protocol witness table for ContentShapePathData);
      }
    }
  }

  *a3 = v22;
  *(a3 + 8) = v23;
  return result;
}

unint64_t _s7SwiftUI10_ShapeViewV05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyACyxq_GG_AA01_D6InputsVtFZAA7CapsuleV_AA15ForegroundStyleVTt2B5@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 48);
  if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v6) & 1) != 0 || (result = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA014ViewRespondersI0V_TtB5Tf4dn_n(v6), (result))
  {
    v8 = *(a2 + 48);
    v9 = *(a2 + 64);
    v10 = *(a2 + 16);
    v20[2] = *(a2 + 32);
    v20[3] = v8;
    v11 = *(a2 + 36);
    v20[4] = v9;
    v21 = *(a2 + 80);
    v20[0] = *a2;
    v20[1] = v10;
    LOBYTE(v16) = 0;
    swift_beginAccess();
    v12 = CachedEnvironment.resolvedShapeStyles(for:role:mode:)(v20, &v16, 0x100000000);
    swift_endAccess();
    _s7SwiftUI19ShapeStyledLeafViewPAAE04makeeF04view6inputs6styles17interpolatorGroup4dataAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsV09AttributeO00R0VyAA01_C10Style_PackVGAA01_cs13_InterpolatorL0CSg0C10UpdateDataQztFZAA01_cF0VyAA7CapsuleVAA010ForegroundS0VG_Tt5B5(a1, a2, v12, 0, &v17);
    if (one-time initialization token for v4 != -1)
    {
      swift_once();
    }

    v13 = static Semantics.v4;
    if (one-time initialization token for forced != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (byte_1ED53C51C)
    {
      if (!dyld_program_sdk_at_least())
      {
        goto LABEL_13;
      }
    }

    else if (static Semantics.forced < v13)
    {
      goto LABEL_13;
    }

    if ((v11 & 2) != 0)
    {
      v16 = a1;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for LeafLayoutComputer<_ShapeView<Capsule, ForegroundStyle>>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type LeafLayoutComputer<_ShapeView<Capsule, ForegroundStyle>> and conformance LeafLayoutComputer<A>, type metadata accessor for LeafLayoutComputer<_ShapeView<Capsule, ForegroundStyle>>, "]");
      result = Attribute.init<A>(body:value:flags:update:)();
      v14 = v18 | 0x80;
LABEL_14:
      *a3 = v17;
      *(a3 + 8) = v14;
      *(a3 + 12) = result;
      return result;
    }

LABEL_13:
    v14 = v18;
    result = v19;
    goto LABEL_14;
  }

  *a3 = MEMORY[0x1E69E7CC0];
  v15 = *MEMORY[0x1E698D3F8];
  *(a3 + 8) = 0;
  *(a3 + 12) = v15;
  return result;
}

unint64_t _s7SwiftUI10_ShapeViewV05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyACyxq_GG_AA01_D6InputsVtFZAA7CapsuleV6_InsetV_AA15ForegroundStyleVTt2B5@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  v32 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 6);
  if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v6) & 1) == 0)
  {
    result = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA014ViewRespondersI0V_TtB5Tf4dn_n(v6);
    if ((result & 1) == 0)
    {
      *a3 = MEMORY[0x1E69E7CC0];
      v21 = *MEMORY[0x1E698D3F8];
      *(a3 + 8) = 0;
      *(a3 + 12) = v21;
      return result;
    }
  }

  v8 = a2[1];
  v30[0] = *a2;
  v30[1] = v8;
  v9 = a2[3];
  v11 = *a2;
  v10 = a2[1];
  v31 = a2[2];
  v28[2] = a2[2];
  v28[3] = v9;
  v28[4] = a2[4];
  v29 = *(a2 + 20);
  v28[0] = v11;
  v28[1] = v10;
  LOBYTE(v22) = 0;
  swift_beginAccess();
  v12 = CachedEnvironment.resolvedShapeStyles(for:role:mode:)(v28, &v22, 0x100000000);
  swift_endAccess();
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  outlined init with copy of _GraphInputs(v30, v28);
  LODWORD(OffsetAttribute2) = _s7SwiftUI10AnimatablePAAE04makeC05value6inputs14AttributeGraph0G0VyxGAA01_H5ValueVyxG_AA01_H6InputsVtFZAA7CapsuleV6_InsetV_Tt1B5(OffsetAttribute2, v30);
  outlined destroy of _GraphInputs(v30);
  *&v28[0] = __PAIR64__(AGGraphCreateOffsetAttribute2(), OffsetAttribute2);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(0, &lazy cache variable for type metadata for AnimatedShape<Capsule._Inset>, lazy protocol witness table accessor for type Capsule._Inset and conformance Capsule._Inset, &type metadata for Capsule._Inset, type metadata accessor for AnimatedShape);
  _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(0, &lazy cache variable for type metadata for AnimatedShape<Capsule._Inset>.Init, lazy protocol witness table accessor for type Capsule._Inset and conformance Capsule._Inset, &type metadata for Capsule._Inset, type metadata accessor for AnimatedShape.Init);
  lazy protocol witness table accessor for type AnimatedShape<Capsule._Inset>.Init and conformance AnimatedShape<A>.Init();
  v14 = Attribute.init<A>(body:value:flags:update:)();
  _s7SwiftUI19ShapeStyledLeafViewPAAE04makeeF04view6inputs6styles17interpolatorGroup4dataAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsV09AttributeO00R0VyAA01_C10Style_PackVGAA01_cs13_InterpolatorL0CSg0C10UpdateDataQztFZAA08AnimatedC0VyAA7CapsuleV6_InsetVG_Tt5B5(v14, a2, v12, 0, &v22);
  if (one-time initialization token for v4 != -1)
  {
    swift_once();
  }

  v15 = static Semantics.v4;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if ((byte_1ED53C51C & 1) == 0)
  {
    if (static Semantics.forced < v15)
    {
      goto LABEL_14;
    }

LABEL_11:
    if ((BYTE4(v31) & 2) != 0)
    {
      LODWORD(v24) = v14;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for LeafLayoutComputer<AnimatedShape<Capsule._Inset>>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type LeafLayoutComputer<AnimatedShape<Capsule._Inset>> and conformance LeafLayoutComputer<A>, type metadata accessor for LeafLayoutComputer<AnimatedShape<Capsule._Inset>>, "]");
      HIDWORD(v23) = Attribute.init<A>(body:value:flags:update:)();
      if ((v23 & 0x80) == 0)
      {
        LODWORD(v23) = v23 | 0x80;
      }
    }

    goto LABEL_14;
  }

  if (dyld_program_sdk_at_least())
  {
    goto LABEL_11;
  }

LABEL_14:
  result = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA20ContentShapePathDataV_TtB5Tf4dn_n(v6);
  if (result)
  {
    v16 = *MEMORY[0x1E698D3F8];
    v17 = AGGraphCreateOffsetAttribute2();
    v24 = *(a2 + 60);
    v25 = v17;
    v26 = v4;
    v27 = v16;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ContentResponderPathDataRule<_ShapeView<Capsule._Inset, ForegroundStyle>>(0);
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type ContentResponderPathDataRule<_ShapeView<Capsule._Inset, ForegroundStyle>> and conformance ContentResponderPathDataRule<A>, type metadata accessor for ContentResponderPathDataRule<_ShapeView<Capsule._Inset, ForegroundStyle>>, protocol conformance descriptor for ContentResponderPathDataRule<A>);
    v18 = Attribute.init<A>(body:value:flags:update:)();
    v24 = v6;
    result = PreferenceKeys._index(of:)(&type metadata for ContentShapePathData);
    v19 = *(v6 + 16);
    if (result != v19)
    {
      if (result >= v19)
      {
        __break(1u);
      }

      if (*(v6 + 16 * result + 32) == &type metadata for ContentShapePathData)
      {
        LODWORD(v24) = v18;
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for AtomicBuffer<TrackerData>(0, &lazy cache variable for type metadata for ContentShapePathData?, &type metadata for ContentShapePathData, MEMORY[0x1E69E6720]);
        type metadata accessor for AtomicBuffer<TrackerData>(0, &lazy cache variable for type metadata for ToOptional<ContentShapePathData>, &type metadata for ContentShapePathData, type metadata accessor for ToOptional);
        lazy protocol witness table accessor for type ToOptional<ContentShapePathData> and conformance ToOptional<A>();
        v20 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v24) = 0;
        result = PreferencesOutputs.subscript.setter(v20, &type metadata for ContentShapePathData, &protocol witness table for ContentShapePathData);
      }
    }
  }

  *a3 = v22;
  *(a3 + 8) = v23;
  return result;
}

unint64_t _s7SwiftUI10_ShapeViewV05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyACyxq_GG_AA01_D6InputsVtFZAA6CircleV6_InsetV_AA15ForegroundStyleVTt2B5@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  v32 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 6);
  if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v6) & 1) == 0)
  {
    result = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA014ViewRespondersI0V_TtB5Tf4dn_n(v6);
    if ((result & 1) == 0)
    {
      *a3 = MEMORY[0x1E69E7CC0];
      v21 = *MEMORY[0x1E698D3F8];
      *(a3 + 8) = 0;
      *(a3 + 12) = v21;
      return result;
    }
  }

  v8 = a2[1];
  v30[0] = *a2;
  v30[1] = v8;
  v9 = a2[3];
  v11 = *a2;
  v10 = a2[1];
  v31 = a2[2];
  v28[2] = a2[2];
  v28[3] = v9;
  v28[4] = a2[4];
  v29 = *(a2 + 20);
  v28[0] = v11;
  v28[1] = v10;
  LOBYTE(v22) = 0;
  swift_beginAccess();
  v12 = CachedEnvironment.resolvedShapeStyles(for:role:mode:)(v28, &v22, 0x100000000);
  swift_endAccess();
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  outlined init with copy of _GraphInputs(v30, v28);
  LODWORD(OffsetAttribute2) = _s7SwiftUI10AnimatablePAAE04makeC05value6inputs14AttributeGraph0G0VyxGAA01_H5ValueVyxG_AA01_H6InputsVtFZAA6CircleV6_InsetV_Tt1B5(OffsetAttribute2, v30);
  outlined destroy of _GraphInputs(v30);
  *&v28[0] = __PAIR64__(AGGraphCreateOffsetAttribute2(), OffsetAttribute2);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(0, &lazy cache variable for type metadata for AnimatedShape<Circle._Inset>, lazy protocol witness table accessor for type Circle._Inset and conformance Circle._Inset, &type metadata for Circle._Inset, type metadata accessor for AnimatedShape);
  _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(0, &lazy cache variable for type metadata for AnimatedShape<Circle._Inset>.Init, lazy protocol witness table accessor for type Circle._Inset and conformance Circle._Inset, &type metadata for Circle._Inset, type metadata accessor for AnimatedShape.Init);
  lazy protocol witness table accessor for type AnimatedShape<Circle._Inset>.Init and conformance AnimatedShape<A>.Init();
  v14 = Attribute.init<A>(body:value:flags:update:)();
  _s7SwiftUI19ShapeStyledLeafViewPAAE04makeeF04view6inputs6styles17interpolatorGroup4dataAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsV09AttributeO00R0VyAA01_C10Style_PackVGAA01_cs13_InterpolatorL0CSg0C10UpdateDataQztFZAA08AnimatedC0VyAA6CircleV6_InsetVG_Tt5B5(v14, a2, v12, 0, &v22);
  if (one-time initialization token for v4 != -1)
  {
    swift_once();
  }

  v15 = static Semantics.v4;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if ((byte_1ED53C51C & 1) == 0)
  {
    if (static Semantics.forced < v15)
    {
      goto LABEL_14;
    }

LABEL_11:
    if ((BYTE4(v31) & 2) != 0)
    {
      LODWORD(v24) = v14;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for LeafLayoutComputer<AnimatedShape<Circle._Inset>>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type LeafLayoutComputer<AnimatedShape<Circle._Inset>> and conformance LeafLayoutComputer<A>, type metadata accessor for LeafLayoutComputer<AnimatedShape<Circle._Inset>>, "]");
      HIDWORD(v23) = Attribute.init<A>(body:value:flags:update:)();
      if ((v23 & 0x80) == 0)
      {
        LODWORD(v23) = v23 | 0x80;
      }
    }

    goto LABEL_14;
  }

  if (dyld_program_sdk_at_least())
  {
    goto LABEL_11;
  }

LABEL_14:
  result = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA20ContentShapePathDataV_TtB5Tf4dn_n(v6);
  if (result)
  {
    v16 = *MEMORY[0x1E698D3F8];
    v17 = AGGraphCreateOffsetAttribute2();
    v24 = *(a2 + 60);
    v25 = v17;
    v26 = v4;
    v27 = v16;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ContentResponderPathDataRule<_ShapeView<Circle._Inset, ForegroundStyle>>(0);
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type ContentResponderPathDataRule<_ShapeView<Circle._Inset, ForegroundStyle>> and conformance ContentResponderPathDataRule<A>, type metadata accessor for ContentResponderPathDataRule<_ShapeView<Circle._Inset, ForegroundStyle>>, protocol conformance descriptor for ContentResponderPathDataRule<A>);
    v18 = Attribute.init<A>(body:value:flags:update:)();
    v24 = v6;
    result = PreferenceKeys._index(of:)(&type metadata for ContentShapePathData);
    v19 = *(v6 + 16);
    if (result != v19)
    {
      if (result >= v19)
      {
        __break(1u);
      }

      if (*(v6 + 16 * result + 32) == &type metadata for ContentShapePathData)
      {
        LODWORD(v24) = v18;
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for AtomicBuffer<TrackerData>(0, &lazy cache variable for type metadata for ContentShapePathData?, &type metadata for ContentShapePathData, MEMORY[0x1E69E6720]);
        type metadata accessor for AtomicBuffer<TrackerData>(0, &lazy cache variable for type metadata for ToOptional<ContentShapePathData>, &type metadata for ContentShapePathData, type metadata accessor for ToOptional);
        lazy protocol witness table accessor for type ToOptional<ContentShapePathData> and conformance ToOptional<A>();
        v20 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v24) = 0;
        result = PreferencesOutputs.subscript.setter(v20, &type metadata for ContentShapePathData, &protocol witness table for ContentShapePathData);
      }
    }
  }

  *a3 = v22;
  *(a3 + 8) = v23;
  return result;
}

unint64_t _s7SwiftUI10_ShapeViewV05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyACyxq_GG_AA01_D6InputsVtFZAA024PartialContainerRelativeC0V_AA15ForegroundStyleVTt2B5@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  v32 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 6);
  if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v6) & 1) == 0)
  {
    result = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA014ViewRespondersI0V_TtB5Tf4dn_n(v6);
    if ((result & 1) == 0)
    {
      *a3 = MEMORY[0x1E69E7CC0];
      v21 = *MEMORY[0x1E698D3F8];
      *(a3 + 8) = 0;
      *(a3 + 12) = v21;
      return result;
    }
  }

  v8 = a2[1];
  v30[0] = *a2;
  v30[1] = v8;
  v9 = a2[3];
  v11 = *a2;
  v10 = a2[1];
  v31 = a2[2];
  v28[2] = a2[2];
  v28[3] = v9;
  v28[4] = a2[4];
  v29 = *(a2 + 20);
  v28[0] = v11;
  v28[1] = v10;
  LOBYTE(v22) = 0;
  swift_beginAccess();
  v12 = CachedEnvironment.resolvedShapeStyles(for:role:mode:)(v28, &v22, 0x100000000);
  swift_endAccess();
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  outlined init with copy of _GraphInputs(v30, v28);
  LODWORD(OffsetAttribute2) = _s7SwiftUI10AnimatablePAAE04makeC05value6inputs14AttributeGraph0G0VyxGAA01_H5ValueVyxG_AA01_H6InputsVtFZAA29PartialContainerRelativeShapeV_Tt1B5(OffsetAttribute2, v30);
  outlined destroy of _GraphInputs(v30);
  *&v28[0] = __PAIR64__(AGGraphCreateOffsetAttribute2(), OffsetAttribute2);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(0, &lazy cache variable for type metadata for AnimatedShape<PartialContainerRelativeShape>, lazy protocol witness table accessor for type PartialContainerRelativeShape and conformance PartialContainerRelativeShape, &type metadata for PartialContainerRelativeShape, type metadata accessor for AnimatedShape);
  _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(0, &lazy cache variable for type metadata for AnimatedShape<PartialContainerRelativeShape>.Init, lazy protocol witness table accessor for type PartialContainerRelativeShape and conformance PartialContainerRelativeShape, &type metadata for PartialContainerRelativeShape, type metadata accessor for AnimatedShape.Init);
  lazy protocol witness table accessor for type AnimatedShape<PartialContainerRelativeShape>.Init and conformance AnimatedShape<A>.Init();
  v14 = Attribute.init<A>(body:value:flags:update:)();
  _s7SwiftUI19ShapeStyledLeafViewPAAE04makeeF04view6inputs6styles17interpolatorGroup4dataAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsV09AttributeO00R0VyAA01_C10Style_PackVGAA01_cs13_InterpolatorL0CSg0C10UpdateDataQztFZAA08AnimatedC0VyAA024PartialContainerRelativeC0VG_Tt5B5(v14, a2, v12, 0, &v22);
  if (one-time initialization token for v4 != -1)
  {
    swift_once();
  }

  v15 = static Semantics.v4;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if ((byte_1ED53C51C & 1) == 0)
  {
    if (static Semantics.forced < v15)
    {
      goto LABEL_14;
    }

LABEL_11:
    if ((BYTE4(v31) & 2) != 0)
    {
      LODWORD(v24) = v14;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for LeafLayoutComputer<AnimatedShape<PartialContainerRelativeShape>>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type LeafLayoutComputer<AnimatedShape<PartialContainerRelativeShape>> and conformance LeafLayoutComputer<A>, type metadata accessor for LeafLayoutComputer<AnimatedShape<PartialContainerRelativeShape>>, "]");
      HIDWORD(v23) = Attribute.init<A>(body:value:flags:update:)();
      if ((v23 & 0x80) == 0)
      {
        LODWORD(v23) = v23 | 0x80;
      }
    }

    goto LABEL_14;
  }

  if (dyld_program_sdk_at_least())
  {
    goto LABEL_11;
  }

LABEL_14:
  result = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA20ContentShapePathDataV_TtB5Tf4dn_n(v6);
  if (result)
  {
    v16 = *MEMORY[0x1E698D3F8];
    v17 = AGGraphCreateOffsetAttribute2();
    v24 = *(a2 + 60);
    v25 = v17;
    v26 = v4;
    v27 = v16;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ContentResponderPathDataRule<_ShapeView<PartialContainerRelativeShape, ForegroundStyle>>(0);
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type ContentResponderPathDataRule<_ShapeView<PartialContainerRelativeShape, ForegroundStyle>> and conformance ContentResponderPathDataRule<A>, type metadata accessor for ContentResponderPathDataRule<_ShapeView<PartialContainerRelativeShape, ForegroundStyle>>, protocol conformance descriptor for ContentResponderPathDataRule<A>);
    v18 = Attribute.init<A>(body:value:flags:update:)();
    v24 = v6;
    result = PreferenceKeys._index(of:)(&type metadata for ContentShapePathData);
    v19 = *(v6 + 16);
    if (result != v19)
    {
      if (result >= v19)
      {
        __break(1u);
      }

      if (*(v6 + 16 * result + 32) == &type metadata for ContentShapePathData)
      {
        LODWORD(v24) = v18;
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for AtomicBuffer<TrackerData>(0, &lazy cache variable for type metadata for ContentShapePathData?, &type metadata for ContentShapePathData, MEMORY[0x1E69E6720]);
        type metadata accessor for AtomicBuffer<TrackerData>(0, &lazy cache variable for type metadata for ToOptional<ContentShapePathData>, &type metadata for ContentShapePathData, type metadata accessor for ToOptional);
        lazy protocol witness table accessor for type ToOptional<ContentShapePathData> and conformance ToOptional<A>();
        v20 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v24) = 0;
        result = PreferencesOutputs.subscript.setter(v20, &type metadata for ContentShapePathData, &protocol witness table for ContentShapePathData);
      }
    }
  }

  *a3 = v22;
  *(a3 + 8) = v23;
  return result;
}

unint64_t _s7SwiftUI10_ShapeViewV05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyACyxq_GG_AA01_D6InputsVtFZAA018DefaultGlassEffectC0V_AA15ForegroundStyleVTt2B5@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 48);
  if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v6) & 1) != 0 || (result = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA014ViewRespondersI0V_TtB5Tf4dn_n(v6), (result))
  {
    v8 = *(a2 + 48);
    v9 = *(a2 + 64);
    v10 = *(a2 + 16);
    v20[2] = *(a2 + 32);
    v20[3] = v8;
    v11 = *(a2 + 36);
    v20[4] = v9;
    v21 = *(a2 + 80);
    v20[0] = *a2;
    v20[1] = v10;
    LOBYTE(v16) = 0;
    swift_beginAccess();
    v12 = CachedEnvironment.resolvedShapeStyles(for:role:mode:)(v20, &v16, 0x100000000);
    swift_endAccess();
    _s7SwiftUI19ShapeStyledLeafViewPAAE04makeeF04view6inputs6styles17interpolatorGroup4dataAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsV09AttributeO00R0VyAA01_C10Style_PackVGAA01_cs13_InterpolatorL0CSg0C10UpdateDataQztFZAA01_cF0VyAA018DefaultGlassEffectC0VAA010ForegroundS0VG_Tt5B5(a1, a2, v12, 0, &v17);
    if (one-time initialization token for v4 != -1)
    {
      swift_once();
    }

    v13 = static Semantics.v4;
    if (one-time initialization token for forced != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (byte_1ED53C51C)
    {
      if (!dyld_program_sdk_at_least())
      {
        goto LABEL_13;
      }
    }

    else if (static Semantics.forced < v13)
    {
      goto LABEL_13;
    }

    if ((v11 & 2) != 0)
    {
      v16 = a1;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for LeafLayoutComputer<_ShapeView<DefaultGlassEffectShape, ForegroundStyle>>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type LeafLayoutComputer<_ShapeView<DefaultGlassEffectShape, ForegroundStyle>> and conformance LeafLayoutComputer<A>, type metadata accessor for LeafLayoutComputer<_ShapeView<DefaultGlassEffectShape, ForegroundStyle>>, "]");
      result = Attribute.init<A>(body:value:flags:update:)();
      v14 = v18 | 0x80;
LABEL_14:
      *a3 = v17;
      *(a3 + 8) = v14;
      *(a3 + 12) = result;
      return result;
    }

LABEL_13:
    v14 = v18;
    result = v19;
    goto LABEL_14;
  }

  *a3 = MEMORY[0x1E69E7CC0];
  v15 = *MEMORY[0x1E698D3F8];
  *(a3 + 8) = 0;
  *(a3 + 12) = v15;
  return result;
}

unint64_t _s7SwiftUI10_ShapeViewV05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyACyxq_GG_AA01_D6InputsVtFZAA22UnevenRoundedRectangleV_AA15ForegroundStyleVTt2B5@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  v32 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 6);
  if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v6) & 1) == 0)
  {
    result = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA014ViewRespondersI0V_TtB5Tf4dn_n(v6);
    if ((result & 1) == 0)
    {
      *a3 = MEMORY[0x1E69E7CC0];
      v21 = *MEMORY[0x1E698D3F8];
      *(a3 + 8) = 0;
      *(a3 + 12) = v21;
      return result;
    }
  }

  v8 = a2[1];
  v30[0] = *a2;
  v30[1] = v8;
  v9 = a2[3];
  v11 = *a2;
  v10 = a2[1];
  v31 = a2[2];
  v28[2] = a2[2];
  v28[3] = v9;
  v28[4] = a2[4];
  v29 = *(a2 + 20);
  v28[0] = v11;
  v28[1] = v10;
  LOBYTE(v22) = 0;
  swift_beginAccess();
  v12 = CachedEnvironment.resolvedShapeStyles(for:role:mode:)(v28, &v22, 0x100000000);
  swift_endAccess();
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  outlined init with copy of _GraphInputs(v30, v28);
  LODWORD(OffsetAttribute2) = _s7SwiftUI10AnimatablePAAE04makeC05value6inputs14AttributeGraph0G0VyxGAA01_H5ValueVyxG_AA01_H6InputsVtFZAA22UnevenRoundedRectangleV_Tt1B5(OffsetAttribute2, v30);
  outlined destroy of _GraphInputs(v30);
  *&v28[0] = __PAIR64__(AGGraphCreateOffsetAttribute2(), OffsetAttribute2);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(0, &lazy cache variable for type metadata for AnimatedShape<UnevenRoundedRectangle>, lazy protocol witness table accessor for type UnevenRoundedRectangle and conformance UnevenRoundedRectangle, &type metadata for UnevenRoundedRectangle, type metadata accessor for AnimatedShape);
  _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(0, &lazy cache variable for type metadata for AnimatedShape<UnevenRoundedRectangle>.Init, lazy protocol witness table accessor for type UnevenRoundedRectangle and conformance UnevenRoundedRectangle, &type metadata for UnevenRoundedRectangle, type metadata accessor for AnimatedShape.Init);
  lazy protocol witness table accessor for type AnimatedShape<UnevenRoundedRectangle>.Init and conformance AnimatedShape<A>.Init();
  v14 = Attribute.init<A>(body:value:flags:update:)();
  _s7SwiftUI19ShapeStyledLeafViewPAAE04makeeF04view6inputs6styles17interpolatorGroup4dataAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsV09AttributeO00R0VyAA01_C10Style_PackVGAA01_cs13_InterpolatorL0CSg0C10UpdateDataQztFZAA08AnimatedC0VyAA22UnevenRoundedRectangleVG_Tt5B5(v14, a2, v12, 0, &v22);
  if (one-time initialization token for v4 != -1)
  {
    swift_once();
  }

  v15 = static Semantics.v4;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if ((byte_1ED53C51C & 1) == 0)
  {
    if (static Semantics.forced < v15)
    {
      goto LABEL_14;
    }

LABEL_11:
    if ((BYTE4(v31) & 2) != 0)
    {
      LODWORD(v24) = v14;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for LeafLayoutComputer<AnimatedShape<UnevenRoundedRectangle>>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type LeafLayoutComputer<AnimatedShape<UnevenRoundedRectangle>> and conformance LeafLayoutComputer<A>, type metadata accessor for LeafLayoutComputer<AnimatedShape<UnevenRoundedRectangle>>, "]");
      HIDWORD(v23) = Attribute.init<A>(body:value:flags:update:)();
      if ((v23 & 0x80) == 0)
      {
        LODWORD(v23) = v23 | 0x80;
      }
    }

    goto LABEL_14;
  }

  if (dyld_program_sdk_at_least())
  {
    goto LABEL_11;
  }

LABEL_14:
  result = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA20ContentShapePathDataV_TtB5Tf4dn_n(v6);
  if (result)
  {
    v16 = *MEMORY[0x1E698D3F8];
    v17 = AGGraphCreateOffsetAttribute2();
    v24 = *(a2 + 60);
    v25 = v17;
    v26 = v4;
    v27 = v16;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ContentResponderPathDataRule<_ShapeView<UnevenRoundedRectangle, ForegroundStyle>>(0);
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type ContentResponderPathDataRule<_ShapeView<UnevenRoundedRectangle, ForegroundStyle>> and conformance ContentResponderPathDataRule<A>, type metadata accessor for ContentResponderPathDataRule<_ShapeView<UnevenRoundedRectangle, ForegroundStyle>>, protocol conformance descriptor for ContentResponderPathDataRule<A>);
    v18 = Attribute.init<A>(body:value:flags:update:)();
    v24 = v6;
    result = PreferenceKeys._index(of:)(&type metadata for ContentShapePathData);
    v19 = *(v6 + 16);
    if (result != v19)
    {
      if (result >= v19)
      {
        __break(1u);
      }

      if (*(v6 + 16 * result + 32) == &type metadata for ContentShapePathData)
      {
        LODWORD(v24) = v18;
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for AtomicBuffer<TrackerData>(0, &lazy cache variable for type metadata for ContentShapePathData?, &type metadata for ContentShapePathData, MEMORY[0x1E69E6720]);
        type metadata accessor for AtomicBuffer<TrackerData>(0, &lazy cache variable for type metadata for ToOptional<ContentShapePathData>, &type metadata for ContentShapePathData, type metadata accessor for ToOptional);
        lazy protocol witness table accessor for type ToOptional<ContentShapePathData> and conformance ToOptional<A>();
        v20 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v24) = 0;
        result = PreferencesOutputs.subscript.setter(v20, &type metadata for ContentShapePathData, &protocol witness table for ContentShapePathData);
      }
    }
  }

  *a3 = v22;
  *(a3 + 8) = v23;
  return result;
}

unint64_t _s7SwiftUI10_ShapeViewV05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyACyxq_GG_AA01_D6InputsVtFZAA22UnevenRoundedRectangleV6_InsetV_AA15ForegroundStyleVTt2B5@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  v32 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 6);
  if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v6) & 1) == 0)
  {
    result = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA014ViewRespondersI0V_TtB5Tf4dn_n(v6);
    if ((result & 1) == 0)
    {
      *a3 = MEMORY[0x1E69E7CC0];
      v21 = *MEMORY[0x1E698D3F8];
      *(a3 + 8) = 0;
      *(a3 + 12) = v21;
      return result;
    }
  }

  v8 = a2[1];
  v30[0] = *a2;
  v30[1] = v8;
  v9 = a2[3];
  v11 = *a2;
  v10 = a2[1];
  v31 = a2[2];
  v28[2] = a2[2];
  v28[3] = v9;
  v28[4] = a2[4];
  v29 = *(a2 + 20);
  v28[0] = v11;
  v28[1] = v10;
  LOBYTE(v22) = 0;
  swift_beginAccess();
  v12 = CachedEnvironment.resolvedShapeStyles(for:role:mode:)(v28, &v22, 0x100000000);
  swift_endAccess();
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  outlined init with copy of _GraphInputs(v30, v28);
  LODWORD(OffsetAttribute2) = _s7SwiftUI10AnimatablePAAE04makeC05value6inputs14AttributeGraph0G0VyxGAA01_H5ValueVyxG_AA01_H6InputsVtFZAA22UnevenRoundedRectangleV6_InsetV_Tt1B5(OffsetAttribute2, v30);
  outlined destroy of _GraphInputs(v30);
  *&v28[0] = __PAIR64__(AGGraphCreateOffsetAttribute2(), OffsetAttribute2);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(0, &lazy cache variable for type metadata for AnimatedShape<UnevenRoundedRectangle._Inset>, lazy protocol witness table accessor for type UnevenRoundedRectangle._Inset and conformance UnevenRoundedRectangle._Inset, &type metadata for UnevenRoundedRectangle._Inset, type metadata accessor for AnimatedShape);
  _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(0, &lazy cache variable for type metadata for AnimatedShape<UnevenRoundedRectangle._Inset>.Init, lazy protocol witness table accessor for type UnevenRoundedRectangle._Inset and conformance UnevenRoundedRectangle._Inset, &type metadata for UnevenRoundedRectangle._Inset, type metadata accessor for AnimatedShape.Init);
  lazy protocol witness table accessor for type AnimatedShape<UnevenRoundedRectangle._Inset>.Init and conformance AnimatedShape<A>.Init();
  v14 = Attribute.init<A>(body:value:flags:update:)();
  _s7SwiftUI19ShapeStyledLeafViewPAAE04makeeF04view6inputs6styles17interpolatorGroup4dataAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsV09AttributeO00R0VyAA01_C10Style_PackVGAA01_cs13_InterpolatorL0CSg0C10UpdateDataQztFZAA08AnimatedC0VyAA22UnevenRoundedRectangleV6_InsetVG_Tt5B5(v14, a2, v12, 0, &v22);
  if (one-time initialization token for v4 != -1)
  {
    swift_once();
  }

  v15 = static Semantics.v4;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if ((byte_1ED53C51C & 1) == 0)
  {
    if (static Semantics.forced < v15)
    {
      goto LABEL_14;
    }

LABEL_11:
    if ((BYTE4(v31) & 2) != 0)
    {
      LODWORD(v24) = v14;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for LeafLayoutComputer<AnimatedShape<UnevenRoundedRectangle._Inset>>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type LeafLayoutComputer<AnimatedShape<UnevenRoundedRectangle._Inset>> and conformance LeafLayoutComputer<A>, type metadata accessor for LeafLayoutComputer<AnimatedShape<UnevenRoundedRectangle._Inset>>, "]");
      HIDWORD(v23) = Attribute.init<A>(body:value:flags:update:)();
      if ((v23 & 0x80) == 0)
      {
        LODWORD(v23) = v23 | 0x80;
      }
    }

    goto LABEL_14;
  }

  if (dyld_program_sdk_at_least())
  {
    goto LABEL_11;
  }

LABEL_14:
  result = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA20ContentShapePathDataV_TtB5Tf4dn_n(v6);
  if (result)
  {
    v16 = *MEMORY[0x1E698D3F8];
    v17 = AGGraphCreateOffsetAttribute2();
    v24 = *(a2 + 60);
    v25 = v17;
    v26 = v4;
    v27 = v16;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ContentResponderPathDataRule<_ShapeView<UnevenRoundedRectangle._Inset, ForegroundStyle>>(0);
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type ContentResponderPathDataRule<_ShapeView<UnevenRoundedRectangle._Inset, ForegroundStyle>> and conformance ContentResponderPathDataRule<A>, type metadata accessor for ContentResponderPathDataRule<_ShapeView<UnevenRoundedRectangle._Inset, ForegroundStyle>>, protocol conformance descriptor for ContentResponderPathDataRule<A>);
    v18 = Attribute.init<A>(body:value:flags:update:)();
    v24 = v6;
    result = PreferenceKeys._index(of:)(&type metadata for ContentShapePathData);
    v19 = *(v6 + 16);
    if (result != v19)
    {
      if (result >= v19)
      {
        __break(1u);
      }

      if (*(v6 + 16 * result + 32) == &type metadata for ContentShapePathData)
      {
        LODWORD(v24) = v18;
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for AtomicBuffer<TrackerData>(0, &lazy cache variable for type metadata for ContentShapePathData?, &type metadata for ContentShapePathData, MEMORY[0x1E69E6720]);
        type metadata accessor for AtomicBuffer<TrackerData>(0, &lazy cache variable for type metadata for ToOptional<ContentShapePathData>, &type metadata for ContentShapePathData, type metadata accessor for ToOptional);
        lazy protocol witness table accessor for type ToOptional<ContentShapePathData> and conformance ToOptional<A>();
        v20 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v24) = 0;
        result = PreferencesOutputs.subscript.setter(v20, &type metadata for ContentShapePathData, &protocol witness table for ContentShapePathData);
      }
    }
  }

  *a3 = v22;
  *(a3 + 8) = v23;
  return result;
}

unint64_t _s7SwiftUI10_ShapeViewV05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyACyxq_GG_AA01_D6InputsVtFZAA017ImplicitContainerC0V_AA15ForegroundStyleVTt2B5@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 48);
  if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v6) & 1) != 0 || (result = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA014ViewRespondersI0V_TtB5Tf4dn_n(v6), (result))
  {
    v8 = *(a2 + 48);
    v9 = *(a2 + 64);
    v10 = *(a2 + 16);
    v20[2] = *(a2 + 32);
    v20[3] = v8;
    v11 = *(a2 + 36);
    v20[4] = v9;
    v21 = *(a2 + 80);
    v20[0] = *a2;
    v20[1] = v10;
    LOBYTE(v16) = 0;
    swift_beginAccess();
    v12 = CachedEnvironment.resolvedShapeStyles(for:role:mode:)(v20, &v16, 0x100000000);
    swift_endAccess();
    _s7SwiftUI19ShapeStyledLeafViewPAAE04makeeF04view6inputs6styles17interpolatorGroup4dataAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsV09AttributeO00R0VyAA01_C10Style_PackVGAA01_cs13_InterpolatorL0CSg0C10UpdateDataQztFZAA01_cF0VyAA017ImplicitContainerC0VAA010ForegroundS0VG_Tt5B5(a1, a2, v12, 0, &v17);
    if (one-time initialization token for v4 != -1)
    {
      swift_once();
    }

    v13 = static Semantics.v4;
    if (one-time initialization token for forced != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (byte_1ED53C51C)
    {
      if (!dyld_program_sdk_at_least())
      {
        goto LABEL_13;
      }
    }

    else if (static Semantics.forced < v13)
    {
      goto LABEL_13;
    }

    if ((v11 & 2) != 0)
    {
      v16 = a1;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for LeafLayoutComputer<_ShapeView<ImplicitContainerShape, ForegroundStyle>>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type LeafLayoutComputer<_ShapeView<ImplicitContainerShape, ForegroundStyle>> and conformance LeafLayoutComputer<A>, type metadata accessor for LeafLayoutComputer<_ShapeView<ImplicitContainerShape, ForegroundStyle>>, "]");
      result = Attribute.init<A>(body:value:flags:update:)();
      v14 = v18 | 0x80;
LABEL_14:
      *a3 = v17;
      *(a3 + 8) = v14;
      *(a3 + 12) = result;
      return result;
    }

LABEL_13:
    v14 = v18;
    result = v19;
    goto LABEL_14;
  }

  *a3 = MEMORY[0x1E69E7CC0];
  v15 = *MEMORY[0x1E698D3F8];
  *(a3 + 8) = 0;
  *(a3 + 12) = v15;
  return result;
}

unint64_t _s7SwiftUI10_ShapeViewV05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyACyxq_GG_AA01_D6InputsVtFZAA017ContainerRelativeC0V_AA15ForegroundStyleVTt2B5@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 48);
  if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v6) & 1) != 0 || (result = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA014ViewRespondersI0V_TtB5Tf4dn_n(v6), (result))
  {
    v8 = *(a2 + 48);
    v9 = *(a2 + 64);
    v10 = *(a2 + 16);
    v20[2] = *(a2 + 32);
    v20[3] = v8;
    v11 = *(a2 + 36);
    v20[4] = v9;
    v21 = *(a2 + 80);
    v20[0] = *a2;
    v20[1] = v10;
    LOBYTE(v16) = 0;
    swift_beginAccess();
    v12 = CachedEnvironment.resolvedShapeStyles(for:role:mode:)(v20, &v16, 0x100000000);
    swift_endAccess();
    _s7SwiftUI19ShapeStyledLeafViewPAAE04makeeF04view6inputs6styles17interpolatorGroup4dataAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsV09AttributeO00R0VyAA01_C10Style_PackVGAA01_cs13_InterpolatorL0CSg0C10UpdateDataQztFZAA01_cF0VyAA017ContainerRelativeC0VAA010ForegroundS0VG_Tt5B5(a1, a2, v12, 0, &v17);
    if (one-time initialization token for v4 != -1)
    {
      swift_once();
    }

    v13 = static Semantics.v4;
    if (one-time initialization token for forced != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (byte_1ED53C51C)
    {
      if (!dyld_program_sdk_at_least())
      {
        goto LABEL_13;
      }
    }

    else if (static Semantics.forced < v13)
    {
      goto LABEL_13;
    }

    if ((v11 & 2) != 0)
    {
      v16 = a1;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for LeafLayoutComputer<_ShapeView<ContainerRelativeShape, ForegroundStyle>>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type LeafLayoutComputer<_ShapeView<ContainerRelativeShape, ForegroundStyle>> and conformance LeafLayoutComputer<A>, type metadata accessor for LeafLayoutComputer<_ShapeView<ContainerRelativeShape, ForegroundStyle>>, "]");
      result = Attribute.init<A>(body:value:flags:update:)();
      v14 = v18 | 0x80;
LABEL_14:
      *a3 = v17;
      *(a3 + 8) = v14;
      *(a3 + 12) = result;
      return result;
    }

LABEL_13:
    v14 = v18;
    result = v19;
    goto LABEL_14;
  }

  *a3 = MEMORY[0x1E69E7CC0];
  v15 = *MEMORY[0x1E698D3F8];
  *(a3 + 8) = 0;
  *(a3 + 12) = v15;
  return result;
}

unint64_t _s7SwiftUI10_ShapeViewV05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyACyxq_GG_AA01_D6InputsVtFZAA017ContainerRelativeC0V6_InsetV_AA15ForegroundStyleVTt2B5@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  v32 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 6);
  if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v6) & 1) == 0)
  {
    result = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA014ViewRespondersI0V_TtB5Tf4dn_n(v6);
    if ((result & 1) == 0)
    {
      *a3 = MEMORY[0x1E69E7CC0];
      v21 = *MEMORY[0x1E698D3F8];
      *(a3 + 8) = 0;
      *(a3 + 12) = v21;
      return result;
    }
  }

  v8 = a2[1];
  v30[0] = *a2;
  v30[1] = v8;
  v9 = a2[3];
  v11 = *a2;
  v10 = a2[1];
  v31 = a2[2];
  v28[2] = a2[2];
  v28[3] = v9;
  v28[4] = a2[4];
  v29 = *(a2 + 20);
  v28[0] = v11;
  v28[1] = v10;
  LOBYTE(v22) = 0;
  swift_beginAccess();
  v12 = CachedEnvironment.resolvedShapeStyles(for:role:mode:)(v28, &v22, 0x100000000);
  swift_endAccess();
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  outlined init with copy of _GraphInputs(v30, v28);
  LODWORD(OffsetAttribute2) = _s7SwiftUI10AnimatablePAAE04makeC05value6inputs14AttributeGraph0G0VyxGAA01_H5ValueVyxG_AA01_H6InputsVtFZAA22ContainerRelativeShapeV6_InsetV_Tt1B5(OffsetAttribute2, v30);
  outlined destroy of _GraphInputs(v30);
  *&v28[0] = __PAIR64__(AGGraphCreateOffsetAttribute2(), OffsetAttribute2);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(0, &lazy cache variable for type metadata for AnimatedShape<ContainerRelativeShape._Inset>, lazy protocol witness table accessor for type ContainerRelativeShape._Inset and conformance ContainerRelativeShape._Inset, &type metadata for ContainerRelativeShape._Inset, type metadata accessor for AnimatedShape);
  _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(0, &lazy cache variable for type metadata for AnimatedShape<ContainerRelativeShape._Inset>.Init, lazy protocol witness table accessor for type ContainerRelativeShape._Inset and conformance ContainerRelativeShape._Inset, &type metadata for ContainerRelativeShape._Inset, type metadata accessor for AnimatedShape.Init);
  lazy protocol witness table accessor for type AnimatedShape<ContainerRelativeShape._Inset>.Init and conformance AnimatedShape<A>.Init();
  v14 = Attribute.init<A>(body:value:flags:update:)();
  _s7SwiftUI19ShapeStyledLeafViewPAAE04makeeF04view6inputs6styles17interpolatorGroup4dataAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsV09AttributeO00R0VyAA01_C10Style_PackVGAA01_cs13_InterpolatorL0CSg0C10UpdateDataQztFZAA08AnimatedC0VyAA017ContainerRelativeC0V6_InsetVG_Tt5B5(v14, a2, v12, 0, &v22);
  if (one-time initialization token for v4 != -1)
  {
    swift_once();
  }

  v15 = static Semantics.v4;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if ((byte_1ED53C51C & 1) == 0)
  {
    if (static Semantics.forced < v15)
    {
      goto LABEL_14;
    }

LABEL_11:
    if ((BYTE4(v31) & 2) != 0)
    {
      LODWORD(v24) = v14;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for LeafLayoutComputer<AnimatedShape<ContainerRelativeShape._Inset>>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type LeafLayoutComputer<AnimatedShape<ContainerRelativeShape._Inset>> and conformance LeafLayoutComputer<A>, type metadata accessor for LeafLayoutComputer<AnimatedShape<ContainerRelativeShape._Inset>>, "]");
      HIDWORD(v23) = Attribute.init<A>(body:value:flags:update:)();
      if ((v23 & 0x80) == 0)
      {
        LODWORD(v23) = v23 | 0x80;
      }
    }

    goto LABEL_14;
  }

  if (dyld_program_sdk_at_least())
  {
    goto LABEL_11;
  }

LABEL_14:
  result = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA20ContentShapePathDataV_TtB5Tf4dn_n(v6);
  if (result)
  {
    v16 = *MEMORY[0x1E698D3F8];
    v17 = AGGraphCreateOffsetAttribute2();
    v24 = *(a2 + 60);
    v25 = v17;
    v26 = v4;
    v27 = v16;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ContentResponderPathDataRule<_ShapeView<ContainerRelativeShape._Inset, ForegroundStyle>>(0);
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type ContentResponderPathDataRule<_ShapeView<ContainerRelativeShape._Inset, ForegroundStyle>> and conformance ContentResponderPathDataRule<A>, type metadata accessor for ContentResponderPathDataRule<_ShapeView<ContainerRelativeShape._Inset, ForegroundStyle>>, protocol conformance descriptor for ContentResponderPathDataRule<A>);
    v18 = Attribute.init<A>(body:value:flags:update:)();
    v24 = v6;
    result = PreferenceKeys._index(of:)(&type metadata for ContentShapePathData);
    v19 = *(v6 + 16);
    if (result != v19)
    {
      if (result >= v19)
      {
        __break(1u);
      }

      if (*(v6 + 16 * result + 32) == &type metadata for ContentShapePathData)
      {
        LODWORD(v24) = v18;
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for AtomicBuffer<TrackerData>(0, &lazy cache variable for type metadata for ContentShapePathData?, &type metadata for ContentShapePathData, MEMORY[0x1E69E6720]);
        type metadata accessor for AtomicBuffer<TrackerData>(0, &lazy cache variable for type metadata for ToOptional<ContentShapePathData>, &type metadata for ContentShapePathData, type metadata accessor for ToOptional);
        lazy protocol witness table accessor for type ToOptional<ContentShapePathData> and conformance ToOptional<A>();
        v20 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v24) = 0;
        result = PreferencesOutputs.subscript.setter(v20, &type metadata for ContentShapePathData, &protocol witness table for ContentShapePathData);
      }
    }
  }

  *a3 = v22;
  *(a3 + 8) = v23;
  return result;
}

unint64_t _s7SwiftUI10_ShapeViewV05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyACyxq_GG_AA01_D6InputsVtFZAA19ConcentricRectangleV_AA15ForegroundStyleVTt2B5@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  v32 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 6);
  if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v6) & 1) == 0)
  {
    result = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA014ViewRespondersI0V_TtB5Tf4dn_n(v6);
    if ((result & 1) == 0)
    {
      *a3 = MEMORY[0x1E69E7CC0];
      v21 = *MEMORY[0x1E698D3F8];
      *(a3 + 8) = 0;
      *(a3 + 12) = v21;
      return result;
    }
  }

  v8 = a2[1];
  v30[0] = *a2;
  v30[1] = v8;
  v9 = a2[3];
  v11 = *a2;
  v10 = a2[1];
  v31 = a2[2];
  v28[2] = a2[2];
  v28[3] = v9;
  v28[4] = a2[4];
  v29 = *(a2 + 20);
  v28[0] = v11;
  v28[1] = v10;
  LOBYTE(v22) = 0;
  swift_beginAccess();
  v12 = CachedEnvironment.resolvedShapeStyles(for:role:mode:)(v28, &v22, 0x100000000);
  swift_endAccess();
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  outlined init with copy of _GraphInputs(v30, v28);
  LODWORD(OffsetAttribute2) = _s7SwiftUI10AnimatablePAAE04makeC05value6inputs14AttributeGraph0G0VyxGAA01_H5ValueVyxG_AA01_H6InputsVtFZAA19ConcentricRectangleV_Tt1B5(OffsetAttribute2, v30);
  outlined destroy of _GraphInputs(v30);
  *&v28[0] = __PAIR64__(AGGraphCreateOffsetAttribute2(), OffsetAttribute2);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(0, &lazy cache variable for type metadata for AnimatedShape<ConcentricRectangle>, lazy protocol witness table accessor for type ConcentricRectangle and conformance ConcentricRectangle, &type metadata for ConcentricRectangle, type metadata accessor for AnimatedShape);
  _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(0, &lazy cache variable for type metadata for AnimatedShape<ConcentricRectangle>.Init, lazy protocol witness table accessor for type ConcentricRectangle and conformance ConcentricRectangle, &type metadata for ConcentricRectangle, type metadata accessor for AnimatedShape.Init);
  lazy protocol witness table accessor for type AnimatedShape<ConcentricRectangle>.Init and conformance AnimatedShape<A>.Init();
  v14 = Attribute.init<A>(body:value:flags:update:)();
  _s7SwiftUI19ShapeStyledLeafViewPAAE04makeeF04view6inputs6styles17interpolatorGroup4dataAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsV09AttributeO00R0VyAA01_C10Style_PackVGAA01_cs13_InterpolatorL0CSg0C10UpdateDataQztFZAA08AnimatedC0VyAA19ConcentricRectangleVG_Tt5B5(v14, a2, v12, 0, &v22);
  if (one-time initialization token for v4 != -1)
  {
    swift_once();
  }

  v15 = static Semantics.v4;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if ((byte_1ED53C51C & 1) == 0)
  {
    if (static Semantics.forced < v15)
    {
      goto LABEL_14;
    }

LABEL_11:
    if ((BYTE4(v31) & 2) != 0)
    {
      LODWORD(v24) = v14;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for LeafLayoutComputer<AnimatedShape<ConcentricRectangle>>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type LeafLayoutComputer<AnimatedShape<ConcentricRectangle>> and conformance LeafLayoutComputer<A>, type metadata accessor for LeafLayoutComputer<AnimatedShape<ConcentricRectangle>>, "]");
      HIDWORD(v23) = Attribute.init<A>(body:value:flags:update:)();
      if ((v23 & 0x80) == 0)
      {
        LODWORD(v23) = v23 | 0x80;
      }
    }

    goto LABEL_14;
  }

  if (dyld_program_sdk_at_least())
  {
    goto LABEL_11;
  }

LABEL_14:
  result = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA20ContentShapePathDataV_TtB5Tf4dn_n(v6);
  if (result)
  {
    v16 = *MEMORY[0x1E698D3F8];
    v17 = AGGraphCreateOffsetAttribute2();
    v24 = *(a2 + 60);
    v25 = v17;
    v26 = v4;
    v27 = v16;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ContentResponderPathDataRule<_ShapeView<ConcentricRectangle, ForegroundStyle>>(0);
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type ContentResponderPathDataRule<_ShapeView<ConcentricRectangle, ForegroundStyle>> and conformance ContentResponderPathDataRule<A>, type metadata accessor for ContentResponderPathDataRule<_ShapeView<ConcentricRectangle, ForegroundStyle>>, protocol conformance descriptor for ContentResponderPathDataRule<A>);
    v18 = Attribute.init<A>(body:value:flags:update:)();
    v24 = v6;
    result = PreferenceKeys._index(of:)(&type metadata for ContentShapePathData);
    v19 = *(v6 + 16);
    if (result != v19)
    {
      if (result >= v19)
      {
        __break(1u);
      }

      if (*(v6 + 16 * result + 32) == &type metadata for ContentShapePathData)
      {
        LODWORD(v24) = v18;
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for AtomicBuffer<TrackerData>(0, &lazy cache variable for type metadata for ContentShapePathData?, &type metadata for ContentShapePathData, MEMORY[0x1E69E6720]);
        type metadata accessor for AtomicBuffer<TrackerData>(0, &lazy cache variable for type metadata for ToOptional<ContentShapePathData>, &type metadata for ContentShapePathData, type metadata accessor for ToOptional);
        lazy protocol witness table accessor for type ToOptional<ContentShapePathData> and conformance ToOptional<A>();
        v20 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v24) = 0;
        result = PreferencesOutputs.subscript.setter(v20, &type metadata for ContentShapePathData, &protocol witness table for ContentShapePathData);
      }
    }
  }

  *a3 = v22;
  *(a3 + 8) = v23;
  return result;
}

unint64_t _s7SwiftUI10_ShapeViewV05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyACyxq_GG_AA01_D6InputsVtFZAA9RectangleV_AA18EllipticalGradientVTt2B5@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  v41 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 6);
  if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v6) & 1) != 0 || (result = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA014ViewRespondersI0V_TtB5Tf4dn_n(v6), (result))
  {
    v26 = a3;
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    v25 = *(a2 + 2);
    v9 = *(a2 + 2);
    v11 = *(a2 + 6);
    v10 = *(a2 + 7);
    v12 = *(a2 + 9);
    swift_beginAccess();
    v13 = *(v9 + 16);
    v14 = a2[3];
    v32 = a2[2];
    v33 = v14;
    v34 = a2[4];
    v35 = *(a2 + 20);
    v15 = a2[1];
    v30 = *a2;
    v31 = v15;
    _ViewInputs.materialSubstrate.getter(&v36 + 13);
    v16 = v4;
    v17 = *MEMORY[0x1E698D3F8];
    type metadata accessor for PropertyList.Tracker();
    v18 = swift_allocObject();
    type metadata accessor for AtomicBuffer<TrackerData>(0, &lazy cache variable for type metadata for AtomicBuffer<TrackerData>, &type metadata for TrackerData, type metadata accessor for AtomicBuffer);
    v19 = swift_allocObject();
    *(v19 + 16) = 0;
    v20 = MEMORY[0x1E69E7CC8];
    *(v19 + 24) = 0;
    *(v19 + 32) = v20;
    v21 = MEMORY[0x1E69E7CC0];
    *(v19 + 40) = v20;
    *(v19 + 48) = v21;
    *(v19 + 56) = 0;
    *(v18 + 16) = v19;
    *&v36 = __PAIR64__(v17, OffsetAttribute2);
    DWORD2(v36) = v13;
    BYTE12(v36) = 0;
    BYTE14(v36) = v12 & 1;
    *&v37 = __PAIR64__(v25, v11);
    DWORD2(v37) = v10;
    *&v38 = 0;
    BYTE8(v38) = 0;
    *&v39 = 0;
    DWORD2(v39) = 0;
    v40 = v18;
    v32 = v38;
    v33 = v39;
    *&v34 = v18;
    v30 = v36;
    v31 = v37;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(0, &lazy cache variable for type metadata for ShapeStyleResolver<EllipticalGradient>, &type metadata for EllipticalGradient, &protocol witness table for EllipticalGradient, type metadata accessor for ShapeStyleResolver);
    lazy protocol witness table accessor for type ShapeStyleResolver<EllipticalGradient> and conformance ShapeStyleResolver<A>();
    LODWORD(v18) = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of ShapeStyleResolver<EllipticalGradient>(&v36);
    AGGraphSetFlags();
    _s7SwiftUI19ShapeStyledLeafViewPAAE04makeeF04view6inputs6styles17interpolatorGroup4dataAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsV09AttributeO00R0VyAA01_C10Style_PackVGAA01_cs13_InterpolatorL0CSg0C10UpdateDataQztFZAA01_cF0VyAA9RectangleVAA18EllipticalGradientVG_Tt5B5(v16, a2, v18, 0, &v27);
    if (one-time initialization token for v4 != -1)
    {
      swift_once();
    }

    v22 = static Semantics.v4;
    if (one-time initialization token for forced != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (byte_1ED53C51C)
    {
      if (!dyld_program_sdk_at_least())
      {
        goto LABEL_13;
      }
    }

    else if (static Semantics.forced < v22)
    {
      goto LABEL_13;
    }

    if ((v12 & 2) != 0)
    {
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for LeafLayoutComputer<_ShapeView<Rectangle, EllipticalGradient>>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type LeafLayoutComputer<_ShapeView<Rectangle, EllipticalGradient>> and conformance LeafLayoutComputer<A>, type metadata accessor for LeafLayoutComputer<_ShapeView<Rectangle, EllipticalGradient>>, "]");
      result = Attribute.init<A>(body:value:flags:update:)();
      v23 = v28 | 0x80;
LABEL_14:
      *v26 = v27;
      *(v26 + 8) = v23;
      *(v26 + 12) = result;
      return result;
    }

LABEL_13:
    v23 = v28;
    result = v29;
    goto LABEL_14;
  }

  *a3 = MEMORY[0x1E69E7CC0];
  v24 = *MEMORY[0x1E698D3F8];
  *(a3 + 8) = 0;
  *(a3 + 12) = v24;
  return result;
}

unint64_t _s7SwiftUI10_ShapeViewV05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyACyxq_GG_AA01_D6InputsVtFZAA16RoundedRectangleV6_InsetV_AA15ForegroundStyleVTt2B5@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  v32 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 6);
  if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v6) & 1) == 0)
  {
    result = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA014ViewRespondersI0V_TtB5Tf4dn_n(v6);
    if ((result & 1) == 0)
    {
      *a3 = MEMORY[0x1E69E7CC0];
      v21 = *MEMORY[0x1E698D3F8];
      *(a3 + 8) = 0;
      *(a3 + 12) = v21;
      return result;
    }
  }

  v8 = a2[1];
  v30[0] = *a2;
  v30[1] = v8;
  v9 = a2[3];
  v11 = *a2;
  v10 = a2[1];
  v31 = a2[2];
  v28[2] = a2[2];
  v28[3] = v9;
  v28[4] = a2[4];
  v29 = *(a2 + 20);
  v28[0] = v11;
  v28[1] = v10;
  LOBYTE(v22) = 0;
  swift_beginAccess();
  v12 = CachedEnvironment.resolvedShapeStyles(for:role:mode:)(v28, &v22, 0x100000000);
  swift_endAccess();
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  outlined init with copy of _GraphInputs(v30, v28);
  LODWORD(OffsetAttribute2) = _s7SwiftUI10AnimatablePAAE04makeC05value6inputs14AttributeGraph0G0VyxGAA01_H5ValueVyxG_AA01_H6InputsVtFZAA16RoundedRectangleV6_InsetV_Tt1B5(OffsetAttribute2, v30);
  outlined destroy of _GraphInputs(v30);
  *&v28[0] = __PAIR64__(AGGraphCreateOffsetAttribute2(), OffsetAttribute2);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(0, &lazy cache variable for type metadata for AnimatedShape<RoundedRectangle._Inset>, lazy protocol witness table accessor for type RoundedRectangle._Inset and conformance RoundedRectangle._Inset, &type metadata for RoundedRectangle._Inset, type metadata accessor for AnimatedShape);
  _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(0, &lazy cache variable for type metadata for AnimatedShape<RoundedRectangle._Inset>.Init, lazy protocol witness table accessor for type RoundedRectangle._Inset and conformance RoundedRectangle._Inset, &type metadata for RoundedRectangle._Inset, type metadata accessor for AnimatedShape.Init);
  lazy protocol witness table accessor for type AnimatedShape<RoundedRectangle._Inset>.Init and conformance AnimatedShape<A>.Init();
  v14 = Attribute.init<A>(body:value:flags:update:)();
  _s7SwiftUI19ShapeStyledLeafViewPAAE04makeeF04view6inputs6styles17interpolatorGroup4dataAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsV09AttributeO00R0VyAA01_C10Style_PackVGAA01_cs13_InterpolatorL0CSg0C10UpdateDataQztFZAA08AnimatedC0VyAA16RoundedRectangleV6_InsetVG_Tt5B5(v14, a2, v12, 0, &v22);
  if (one-time initialization token for v4 != -1)
  {
    swift_once();
  }

  v15 = static Semantics.v4;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if ((byte_1ED53C51C & 1) == 0)
  {
    if (static Semantics.forced < v15)
    {
      goto LABEL_14;
    }

LABEL_11:
    if ((BYTE4(v31) & 2) != 0)
    {
      LODWORD(v24) = v14;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for LeafLayoutComputer<AnimatedShape<RoundedRectangle._Inset>>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type LeafLayoutComputer<AnimatedShape<RoundedRectangle._Inset>> and conformance LeafLayoutComputer<A>, type metadata accessor for LeafLayoutComputer<AnimatedShape<RoundedRectangle._Inset>>, "]");
      HIDWORD(v23) = Attribute.init<A>(body:value:flags:update:)();
      if ((v23 & 0x80) == 0)
      {
        LODWORD(v23) = v23 | 0x80;
      }
    }

    goto LABEL_14;
  }

  if (dyld_program_sdk_at_least())
  {
    goto LABEL_11;
  }

LABEL_14:
  result = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA20ContentShapePathDataV_TtB5Tf4dn_n(v6);
  if (result)
  {
    v16 = *MEMORY[0x1E698D3F8];
    v17 = AGGraphCreateOffsetAttribute2();
    v24 = *(a2 + 60);
    v25 = v17;
    v26 = v4;
    v27 = v16;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ContentResponderPathDataRule<_ShapeView<RoundedRectangle._Inset, ForegroundStyle>>(0);
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type ContentResponderPathDataRule<_ShapeView<RoundedRectangle._Inset, ForegroundStyle>> and conformance ContentResponderPathDataRule<A>, type metadata accessor for ContentResponderPathDataRule<_ShapeView<RoundedRectangle._Inset, ForegroundStyle>>, protocol conformance descriptor for ContentResponderPathDataRule<A>);
    v18 = Attribute.init<A>(body:value:flags:update:)();
    v24 = v6;
    result = PreferenceKeys._index(of:)(&type metadata for ContentShapePathData);
    v19 = *(v6 + 16);
    if (result != v19)
    {
      if (result >= v19)
      {
        __break(1u);
      }

      if (*(v6 + 16 * result + 32) == &type metadata for ContentShapePathData)
      {
        LODWORD(v24) = v18;
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for AtomicBuffer<TrackerData>(0, &lazy cache variable for type metadata for ContentShapePathData?, &type metadata for ContentShapePathData, MEMORY[0x1E69E6720]);
        type metadata accessor for AtomicBuffer<TrackerData>(0, &lazy cache variable for type metadata for ToOptional<ContentShapePathData>, &type metadata for ContentShapePathData, type metadata accessor for ToOptional);
        lazy protocol witness table accessor for type ToOptional<ContentShapePathData> and conformance ToOptional<A>();
        v20 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v24) = 0;
        result = PreferencesOutputs.subscript.setter(v20, &type metadata for ContentShapePathData, &protocol witness table for ContentShapePathData);
      }
    }
  }

  *a3 = v22;
  *(a3 + 8) = v23;
  return result;
}

unint64_t _s7SwiftUI10_ShapeViewV05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyACyxq_GG_AA01_D6InputsVtFZAA9RectangleV_AA15AngularGradientVTt2B5@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  v41 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 6);
  if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v6) & 1) != 0 || (result = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA014ViewRespondersI0V_TtB5Tf4dn_n(v6), (result))
  {
    v26 = a3;
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    v25 = *(a2 + 2);
    v9 = *(a2 + 2);
    v11 = *(a2 + 6);
    v10 = *(a2 + 7);
    v12 = *(a2 + 9);
    swift_beginAccess();
    v13 = *(v9 + 16);
    v14 = a2[3];
    v32 = a2[2];
    v33 = v14;
    v34 = a2[4];
    v35 = *(a2 + 20);
    v15 = a2[1];
    v30 = *a2;
    v31 = v15;
    _ViewInputs.materialSubstrate.getter(&v36 + 13);
    v16 = v4;
    v17 = *MEMORY[0x1E698D3F8];
    type metadata accessor for PropertyList.Tracker();
    v18 = swift_allocObject();
    type metadata accessor for AtomicBuffer<TrackerData>(0, &lazy cache variable for type metadata for AtomicBuffer<TrackerData>, &type metadata for TrackerData, type metadata accessor for AtomicBuffer);
    v19 = swift_allocObject();
    *(v19 + 16) = 0;
    v20 = MEMORY[0x1E69E7CC8];
    *(v19 + 24) = 0;
    *(v19 + 32) = v20;
    v21 = MEMORY[0x1E69E7CC0];
    *(v19 + 40) = v20;
    *(v19 + 48) = v21;
    *(v19 + 56) = 0;
    *(v18 + 16) = v19;
    *&v36 = __PAIR64__(v17, OffsetAttribute2);
    DWORD2(v36) = v13;
    BYTE12(v36) = 0;
    BYTE14(v36) = v12 & 1;
    *&v37 = __PAIR64__(v25, v11);
    DWORD2(v37) = v10;
    *&v38 = 0;
    BYTE8(v38) = 0;
    *&v39 = 0;
    DWORD2(v39) = 0;
    v40 = v18;
    v32 = v38;
    v33 = v39;
    *&v34 = v18;
    v30 = v36;
    v31 = v37;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(0, &lazy cache variable for type metadata for ShapeStyleResolver<AngularGradient>, &type metadata for AngularGradient, &protocol witness table for AngularGradient, type metadata accessor for ShapeStyleResolver);
    lazy protocol witness table accessor for type ShapeStyleResolver<AngularGradient> and conformance ShapeStyleResolver<A>();
    LODWORD(v18) = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of ShapeStyleResolver<AngularGradient>(&v36);
    AGGraphSetFlags();
    _s7SwiftUI19ShapeStyledLeafViewPAAE04makeeF04view6inputs6styles17interpolatorGroup4dataAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsV09AttributeO00R0VyAA01_C10Style_PackVGAA01_cs13_InterpolatorL0CSg0C10UpdateDataQztFZAA01_cF0VyAA9RectangleVAA15AngularGradientVG_Tt5B5(v16, a2, v18, 0, &v27);
    if (one-time initialization token for v4 != -1)
    {
      swift_once();
    }

    v22 = static Semantics.v4;
    if (one-time initialization token for forced != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (byte_1ED53C51C)
    {
      if (!dyld_program_sdk_at_least())
      {
        goto LABEL_13;
      }
    }

    else if (static Semantics.forced < v22)
    {
      goto LABEL_13;
    }

    if ((v12 & 2) != 0)
    {
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for LeafLayoutComputer<_ShapeView<Rectangle, AngularGradient>>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type LeafLayoutComputer<_ShapeView<Rectangle, AngularGradient>> and conformance LeafLayoutComputer<A>, type metadata accessor for LeafLayoutComputer<_ShapeView<Rectangle, AngularGradient>>, "]");
      result = Attribute.init<A>(body:value:flags:update:)();
      v23 = v28 | 0x80;
LABEL_14:
      *v26 = v27;
      *(v26 + 8) = v23;
      *(v26 + 12) = result;
      return result;
    }

LABEL_13:
    v23 = v28;
    result = v29;
    goto LABEL_14;
  }

  *a3 = MEMORY[0x1E69E7CC0];
  v24 = *MEMORY[0x1E698D3F8];
  *(a3 + 8) = 0;
  *(a3 + 12) = v24;
  return result;
}

unint64_t _s7SwiftUI10_ShapeViewV05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyACyxq_GG_AA01_D6InputsVtFZAA9RectangleV_AA14RadialGradientVTt2B5@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  v41 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 6);
  if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v6) & 1) != 0 || (result = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA014ViewRespondersI0V_TtB5Tf4dn_n(v6), (result))
  {
    v26 = a3;
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    v25 = *(a2 + 2);
    v9 = *(a2 + 2);
    v11 = *(a2 + 6);
    v10 = *(a2 + 7);
    v12 = *(a2 + 9);
    swift_beginAccess();
    v13 = *(v9 + 16);
    v14 = a2[3];
    v32 = a2[2];
    v33 = v14;
    v34 = a2[4];
    v35 = *(a2 + 20);
    v15 = a2[1];
    v30 = *a2;
    v31 = v15;
    _ViewInputs.materialSubstrate.getter(&v36 + 13);
    v16 = v4;
    v17 = *MEMORY[0x1E698D3F8];
    type metadata accessor for PropertyList.Tracker();
    v18 = swift_allocObject();
    type metadata accessor for AtomicBuffer<TrackerData>(0, &lazy cache variable for type metadata for AtomicBuffer<TrackerData>, &type metadata for TrackerData, type metadata accessor for AtomicBuffer);
    v19 = swift_allocObject();
    *(v19 + 16) = 0;
    v20 = MEMORY[0x1E69E7CC8];
    *(v19 + 24) = 0;
    *(v19 + 32) = v20;
    v21 = MEMORY[0x1E69E7CC0];
    *(v19 + 40) = v20;
    *(v19 + 48) = v21;
    *(v19 + 56) = 0;
    *(v18 + 16) = v19;
    *&v36 = __PAIR64__(v17, OffsetAttribute2);
    DWORD2(v36) = v13;
    BYTE12(v36) = 0;
    BYTE14(v36) = v12 & 1;
    *&v37 = __PAIR64__(v25, v11);
    DWORD2(v37) = v10;
    *&v38 = 0;
    BYTE8(v38) = 0;
    *&v39 = 0;
    DWORD2(v39) = 0;
    v40 = v18;
    v32 = v38;
    v33 = v39;
    *&v34 = v18;
    v30 = v36;
    v31 = v37;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(0, &lazy cache variable for type metadata for ShapeStyleResolver<RadialGradient>, &type metadata for RadialGradient, &protocol witness table for RadialGradient, type metadata accessor for ShapeStyleResolver);
    lazy protocol witness table accessor for type ShapeStyleResolver<RadialGradient> and conformance ShapeStyleResolver<A>();
    LODWORD(v18) = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of ShapeStyleResolver<RadialGradient>(&v36);
    AGGraphSetFlags();
    _s7SwiftUI19ShapeStyledLeafViewPAAE04makeeF04view6inputs6styles17interpolatorGroup4dataAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsV09AttributeO00R0VyAA01_C10Style_PackVGAA01_cs13_InterpolatorL0CSg0C10UpdateDataQztFZAA01_cF0VyAA9RectangleVAA14RadialGradientVG_Tt5B5(v16, a2, v18, 0, &v27);
    if (one-time initialization token for v4 != -1)
    {
      swift_once();
    }

    v22 = static Semantics.v4;
    if (one-time initialization token for forced != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (byte_1ED53C51C)
    {
      if (!dyld_program_sdk_at_least())
      {
        goto LABEL_13;
      }
    }

    else if (static Semantics.forced < v22)
    {
      goto LABEL_13;
    }

    if ((v12 & 2) != 0)
    {
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for LeafLayoutComputer<_ShapeView<Rectangle, RadialGradient>>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type LeafLayoutComputer<_ShapeView<Rectangle, RadialGradient>> and conformance LeafLayoutComputer<A>, type metadata accessor for LeafLayoutComputer<_ShapeView<Rectangle, RadialGradient>>, "]");
      result = Attribute.init<A>(body:value:flags:update:)();
      v23 = v28 | 0x80;
LABEL_14:
      *v26 = v27;
      *(v26 + 8) = v23;
      *(v26 + 12) = result;
      return result;
    }

LABEL_13:
    v23 = v28;
    result = v29;
    goto LABEL_14;
  }

  *a3 = MEMORY[0x1E69E7CC0];
  v24 = *MEMORY[0x1E698D3F8];
  *(a3 + 8) = 0;
  *(a3 + 12) = v24;
  return result;
}

unint64_t _s7SwiftUI10_ShapeViewV05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyACyxq_GG_AA01_D6InputsVtFZAA9RectangleV_AA12MeshGradientVTt2B5@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  v41 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 6);
  if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v6) & 1) != 0 || (result = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA014ViewRespondersI0V_TtB5Tf4dn_n(v6), (result))
  {
    v26 = a3;
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    v25 = *(a2 + 2);
    v9 = *(a2 + 2);
    v11 = *(a2 + 6);
    v10 = *(a2 + 7);
    v12 = *(a2 + 9);
    swift_beginAccess();
    v13 = *(v9 + 16);
    v14 = a2[3];
    v32 = a2[2];
    v33 = v14;
    v34 = a2[4];
    v35 = *(a2 + 20);
    v15 = a2[1];
    v30 = *a2;
    v31 = v15;
    _ViewInputs.materialSubstrate.getter(&v36 + 13);
    v16 = v4;
    v17 = *MEMORY[0x1E698D3F8];
    type metadata accessor for PropertyList.Tracker();
    v18 = swift_allocObject();
    type metadata accessor for AtomicBuffer<TrackerData>(0, &lazy cache variable for type metadata for AtomicBuffer<TrackerData>, &type metadata for TrackerData, type metadata accessor for AtomicBuffer);
    v19 = swift_allocObject();
    *(v19 + 16) = 0;
    v20 = MEMORY[0x1E69E7CC8];
    *(v19 + 24) = 0;
    *(v19 + 32) = v20;
    v21 = MEMORY[0x1E69E7CC0];
    *(v19 + 40) = v20;
    *(v19 + 48) = v21;
    *(v19 + 56) = 0;
    *(v18 + 16) = v19;
    *&v36 = __PAIR64__(v17, OffsetAttribute2);
    DWORD2(v36) = v13;
    BYTE12(v36) = 0;
    BYTE14(v36) = v12 & 1;
    *&v37 = __PAIR64__(v25, v11);
    DWORD2(v37) = v10;
    *&v38 = 0;
    BYTE8(v38) = 0;
    *&v39 = 0;
    DWORD2(v39) = 0;
    v40 = v18;
    v32 = v38;
    v33 = v39;
    *&v34 = v18;
    v30 = v36;
    v31 = v37;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(0, &lazy cache variable for type metadata for ShapeStyleResolver<MeshGradient>, &type metadata for MeshGradient, &protocol witness table for MeshGradient, type metadata accessor for ShapeStyleResolver);
    lazy protocol witness table accessor for type ShapeStyleResolver<MeshGradient> and conformance ShapeStyleResolver<A>();
    LODWORD(v18) = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of ShapeStyleResolver<MeshGradient>(&v36);
    AGGraphSetFlags();
    _s7SwiftUI19ShapeStyledLeafViewPAAE04makeeF04view6inputs6styles17interpolatorGroup4dataAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsV09AttributeO00R0VyAA01_C10Style_PackVGAA01_cs13_InterpolatorL0CSg0C10UpdateDataQztFZAA01_cF0VyAA9RectangleVAA12MeshGradientVG_Tt5B5(v16, a2, v18, 0, &v27);
    if (one-time initialization token for v4 != -1)
    {
      swift_once();
    }

    v22 = static Semantics.v4;
    if (one-time initialization token for forced != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (byte_1ED53C51C)
    {
      if (!dyld_program_sdk_at_least())
      {
        goto LABEL_13;
      }
    }

    else if (static Semantics.forced < v22)
    {
      goto LABEL_13;
    }

    if ((v12 & 2) != 0)
    {
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for LeafLayoutComputer<_ShapeView<Rectangle, MeshGradient>>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type LeafLayoutComputer<_ShapeView<Rectangle, MeshGradient>> and conformance LeafLayoutComputer<A>, type metadata accessor for LeafLayoutComputer<_ShapeView<Rectangle, MeshGradient>>, "]");
      result = Attribute.init<A>(body:value:flags:update:)();
      v23 = v28 | 0x80;
LABEL_14:
      *v26 = v27;
      *(v26 + 8) = v23;
      *(v26 + 12) = result;
      return result;
    }

LABEL_13:
    v23 = v28;
    result = v29;
    goto LABEL_14;
  }

  *a3 = MEMORY[0x1E69E7CC0];
  v24 = *MEMORY[0x1E698D3F8];
  *(a3 + 8) = 0;
  *(a3 + 12) = v24;
  return result;
}

uint64_t _s7SwiftUI10AnimatablePAAE04makeC05value6inputs14AttributeGraph0G0VyxGAA01_H5ValueVyxG_AA01_H6InputsVtFZAA9RectangleV6_InsetV_Tt1B5(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 36) & 1) == 0)
  {
    v3 = *(a2 + 8);
    v4 = *(a2 + 16);
    v5 = *(a2 + 24);
    v6 = *(a2 + 28);
    swift_beginAccess();
    v7 = *(v4 + 16);
    v9[0] = a1;
    v9[1] = v7;
    v9[2] = v5;
    v9[3] = v3;
    v9[4] = v6;
    v10 = 0;
    v11 = 1;
    v12 = 0;
    v13 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(0, &lazy cache variable for type metadata for AnimatableAttribute<Rectangle._Inset>, lazy protocol witness table accessor for type Rectangle._Inset and conformance Rectangle._Inset, &type metadata for Rectangle._Inset, type metadata accessor for AnimatableAttribute);
    lazy protocol witness table accessor for type AnimatableAttribute<Rectangle._Inset> and conformance AnimatableAttribute<A>();
    a1 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<Rectangle._Inset>(v9);
    AGGraphGetFlags();
    AGGraphSetFlags();
  }

  return a1;
}

uint64_t _s7SwiftUI10AnimatablePAAE04makeC05value6inputs14AttributeGraph0G0VyxGAA01_H5ValueVyxG_AA01_H6InputsVtFZAA8AnyShapeV_Tt1B5(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 36) & 1) == 0)
  {
    v3 = *(a2 + 8);
    v4 = *(a2 + 16);
    v5 = *(a2 + 24);
    v6 = *(a2 + 28);
    swift_beginAccess();
    v7 = *(v4 + 16);
    v10[0] = a1;
    v10[1] = v7;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v10[2] = v5;
    v10[3] = v3;
    v14 = 0;
    v10[4] = v6;
    outlined init with copy of AnimatableAttribute<AnyShape>(v10, v9);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(0, &lazy cache variable for type metadata for AnimatableAttribute<AnyShape>, lazy protocol witness table accessor for type AnyShape and conformance AnyShape, &type metadata for AnyShape, type metadata accessor for AnimatableAttribute);
    lazy protocol witness table accessor for type AnimatableAttribute<AnyShape> and conformance AnimatableAttribute<A>();
    a1 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<AnyShape>(v10);
    outlined destroy of AnimatableAttribute<AnyShape>(v9);
    AGGraphGetFlags();
    AGGraphSetFlags();
  }

  return a1;
}

uint64_t _s7SwiftUI10AnimatablePAAE04makeC05value6inputs14AttributeGraph0G0VyxGAA01_H5ValueVyxG_AA01_H6InputsVtFZAA7EllipseV6_InsetV_Tt1B5(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 36) & 1) == 0)
  {
    v3 = *(a2 + 8);
    v4 = *(a2 + 16);
    v5 = *(a2 + 24);
    v6 = *(a2 + 28);
    swift_beginAccess();
    v7 = *(v4 + 16);
    v9[0] = a1;
    v9[1] = v7;
    v9[2] = v5;
    v9[3] = v3;
    v9[4] = v6;
    v10 = 0;
    v11 = 1;
    v12 = 0;
    v13 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(0, &lazy cache variable for type metadata for AnimatableAttribute<Ellipse._Inset>, lazy protocol witness table accessor for type Ellipse._Inset and conformance Ellipse._Inset, &type metadata for Ellipse._Inset, type metadata accessor for AnimatableAttribute);
    lazy protocol witness table accessor for type AnimatableAttribute<Ellipse._Inset> and conformance AnimatableAttribute<A>();
    a1 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<Ellipse._Inset>(v9);
    AGGraphGetFlags();
    AGGraphSetFlags();
  }

  return a1;
}

uint64_t _s7SwiftUI10AnimatablePAAE04makeC05value6inputs14AttributeGraph0G0VyxGAA01_H5ValueVyxG_AA01_H6InputsVtFZAA7CapsuleV6_InsetV_Tt1B5(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 36) & 1) == 0)
  {
    v3 = *(a2 + 8);
    v4 = *(a2 + 16);
    v5 = *(a2 + 24);
    v6 = *(a2 + 28);
    swift_beginAccess();
    v7 = *(v4 + 16);
    v9[0] = a1;
    v9[1] = v7;
    v9[2] = v5;
    v9[3] = v3;
    v9[4] = v6;
    v10 = 0;
    v11 = 1;
    v12 = 0;
    v13 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(0, &lazy cache variable for type metadata for AnimatableAttribute<Capsule._Inset>, lazy protocol witness table accessor for type Capsule._Inset and conformance Capsule._Inset, &type metadata for Capsule._Inset, type metadata accessor for AnimatableAttribute);
    lazy protocol witness table accessor for type AnimatableAttribute<Capsule._Inset> and conformance AnimatableAttribute<A>();
    a1 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<Capsule._Inset>(v9);
    AGGraphGetFlags();
    AGGraphSetFlags();
  }

  return a1;
}

uint64_t _s7SwiftUI10AnimatablePAAE04makeC05value6inputs14AttributeGraph0G0VyxGAA01_H5ValueVyxG_AA01_H6InputsVtFZAA6CircleV6_InsetV_Tt1B5(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 36) & 1) == 0)
  {
    v3 = *(a2 + 8);
    v4 = *(a2 + 16);
    v5 = *(a2 + 24);
    v6 = *(a2 + 28);
    swift_beginAccess();
    v7 = *(v4 + 16);
    v9[0] = a1;
    v9[1] = v7;
    v9[2] = v5;
    v9[3] = v3;
    v9[4] = v6;
    v10 = 0;
    v11 = 1;
    v12 = 0;
    v13 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(0, &lazy cache variable for type metadata for AnimatableAttribute<Circle._Inset>, lazy protocol witness table accessor for type Circle._Inset and conformance Circle._Inset, &type metadata for Circle._Inset, type metadata accessor for AnimatableAttribute);
    lazy protocol witness table accessor for type AnimatableAttribute<Circle._Inset> and conformance AnimatableAttribute<A>();
    a1 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<Circle._Inset>(v9);
    AGGraphGetFlags();
    AGGraphSetFlags();
  }

  return a1;
}

uint64_t _s7SwiftUI10AnimatablePAAE04makeC05value6inputs14AttributeGraph0G0VyxGAA01_H5ValueVyxG_AA01_H6InputsVtFZAA29PartialContainerRelativeShapeV_Tt1B5(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 36) & 1) == 0)
  {
    v3 = *(a2 + 8);
    v4 = *(a2 + 16);
    v5 = *(a2 + 24);
    v6 = *(a2 + 28);
    swift_beginAccess();
    v7 = *(v4 + 16);
    v9[0] = a1;
    v9[1] = v7;
    v9[2] = v5;
    v9[3] = v3;
    v9[4] = v6;
    v16 = 0;
    v15 = 0u;
    v14 = 0u;
    v13 = 0u;
    v12 = 0u;
    v11 = 0u;
    v10 = 0u;
    LOBYTE(v17) = 1;
    v18 = 0;
    v19 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(0, &lazy cache variable for type metadata for AnimatableAttribute<PartialContainerRelativeShape>, lazy protocol witness table accessor for type PartialContainerRelativeShape and conformance PartialContainerRelativeShape, &type metadata for PartialContainerRelativeShape, type metadata accessor for AnimatableAttribute);
    lazy protocol witness table accessor for type AnimatableAttribute<PartialContainerRelativeShape> and conformance AnimatableAttribute<A>();
    a1 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<PartialContainerRelativeShape>(v9);
    AGGraphGetFlags();
    AGGraphSetFlags();
  }

  return a1;
}

uint64_t _s7SwiftUI10AnimatablePAAE04makeC05value6inputs14AttributeGraph0G0VyxGAA01_H5ValueVyxG_AA01_H6InputsVtFZAA22UnevenRoundedRectangleV_Tt1B5(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 36) & 1) == 0)
  {
    v3 = *(a2 + 8);
    v4 = *(a2 + 16);
    v5 = *(a2 + 24);
    v6 = *(a2 + 28);
    swift_beginAccess();
    v7 = *(v4 + 16);
    v9[0] = a1;
    v9[1] = v7;
    v9[2] = v5;
    v9[3] = v3;
    v9[4] = v6;
    memset(&v9[6], 0, 32);
    v10 = 1;
    v11 = 0;
    v12 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(0, &lazy cache variable for type metadata for AnimatableAttribute<UnevenRoundedRectangle>, lazy protocol witness table accessor for type UnevenRoundedRectangle and conformance UnevenRoundedRectangle, &type metadata for UnevenRoundedRectangle, type metadata accessor for AnimatableAttribute);
    lazy protocol witness table accessor for type AnimatableAttribute<UnevenRoundedRectangle> and conformance AnimatableAttribute<A>();
    a1 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<UnevenRoundedRectangle>(v9);
    AGGraphGetFlags();
    AGGraphSetFlags();
  }

  return a1;
}

uint64_t _s7SwiftUI10AnimatablePAAE04makeC05value6inputs14AttributeGraph0G0VyxGAA01_H5ValueVyxG_AA01_H6InputsVtFZAA22UnevenRoundedRectangleV6_InsetV_Tt1B5(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 36) & 1) == 0)
  {
    v3 = *(a2 + 8);
    v4 = *(a2 + 16);
    v5 = *(a2 + 24);
    v6 = *(a2 + 28);
    swift_beginAccess();
    v7 = *(v4 + 16);
    v9[0] = a1;
    v9[1] = v7;
    v9[2] = v5;
    v9[3] = v3;
    v9[4] = v6;
    v12 = 0;
    v11 = 0u;
    v10 = 0u;
    LOBYTE(v13) = 1;
    v14 = 0;
    v15 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(0, &lazy cache variable for type metadata for AnimatableAttribute<UnevenRoundedRectangle._Inset>, lazy protocol witness table accessor for type UnevenRoundedRectangle._Inset and conformance UnevenRoundedRectangle._Inset, &type metadata for UnevenRoundedRectangle._Inset, type metadata accessor for AnimatableAttribute);
    lazy protocol witness table accessor for type AnimatableAttribute<UnevenRoundedRectangle._Inset> and conformance AnimatableAttribute<A>();
    a1 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<UnevenRoundedRectangle._Inset>(v9);
    AGGraphGetFlags();
    AGGraphSetFlags();
  }

  return a1;
}

uint64_t _s7SwiftUI10AnimatablePAAE04makeC05value6inputs14AttributeGraph0G0VyxGAA01_H5ValueVyxG_AA01_H6InputsVtFZAA22ContainerRelativeShapeV6_InsetV_Tt1B5(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 36) & 1) == 0)
  {
    v3 = *(a2 + 8);
    v4 = *(a2 + 16);
    v5 = *(a2 + 24);
    v6 = *(a2 + 28);
    swift_beginAccess();
    v7 = *(v4 + 16);
    v9[0] = a1;
    v9[1] = v7;
    v9[2] = v5;
    v9[3] = v3;
    v9[4] = v6;
    v10 = 0;
    v11 = 1;
    v12 = 0;
    v13 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(0, &lazy cache variable for type metadata for AnimatableAttribute<ContainerRelativeShape._Inset>, lazy protocol witness table accessor for type ContainerRelativeShape._Inset and conformance ContainerRelativeShape._Inset, &type metadata for ContainerRelativeShape._Inset, type metadata accessor for AnimatableAttribute);
    lazy protocol witness table accessor for type AnimatableAttribute<ContainerRelativeShape._Inset> and conformance AnimatableAttribute<A>();
    a1 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<ContainerRelativeShape._Inset>(v9);
    AGGraphGetFlags();
    AGGraphSetFlags();
  }

  return a1;
}

uint64_t _s7SwiftUI10AnimatablePAAE04makeC05value6inputs14AttributeGraph0G0VyxGAA01_H5ValueVyxG_AA01_H6InputsVtFZAA19ConcentricRectangleV_Tt1B5(uint64_t a1, uint64_t a2)
{
  v11[38] = *MEMORY[0x1E69E9840];
  if ((*(a2 + 36) & 1) == 0)
  {
    v3 = *(a2 + 8);
    v4 = *(a2 + 16);
    v5 = *(a2 + 24);
    v6 = *(a2 + 28);
    swift_beginAccess();
    LODWORD(v4) = *(v4 + 16);
    _s7SwiftUI19ConcentricRectangleV14AnimatableDataVSgWOi0_(__src);
    memcpy(&v9[4], __src, 0x101uLL);
    v11[0] = __PAIR64__(v4, a1);
    v11[1] = __PAIR64__(v3, v5);
    LODWORD(v11[2]) = v6;
    memcpy(&v11[2] + 4, v9, 0x105uLL);
    v11[36] = 0;
    LODWORD(v11[37]) = 0;
    memcpy(v8, v11, sizeof(v8));
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(0, &lazy cache variable for type metadata for AnimatableAttribute<ConcentricRectangle>, lazy protocol witness table accessor for type ConcentricRectangle and conformance ConcentricRectangle, &type metadata for ConcentricRectangle, type metadata accessor for AnimatableAttribute);
    lazy protocol witness table accessor for type AnimatableAttribute<ConcentricRectangle> and conformance AnimatableAttribute<A>();
    a1 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<ConcentricRectangle>(v11);
    AGGraphGetFlags();
    AGGraphSetFlags();
  }

  return a1;
}

uint64_t _s7SwiftUI10AnimatablePAAE04makeC05value6inputs14AttributeGraph0G0VyxGAA01_H5ValueVyxG_AA01_H6InputsVtFZAA16RoundedRectangleV_Tt1B5(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 36) & 1) == 0)
  {
    v3 = *(a2 + 8);
    v4 = *(a2 + 16);
    v5 = *(a2 + 24);
    v6 = *(a2 + 28);
    swift_beginAccess();
    v7 = *(v4 + 16);
    v9[0] = a1;
    v9[1] = v7;
    v9[2] = v5;
    v9[3] = v3;
    v9[4] = v6;
    v10 = 0;
    v11 = 0;
    v12 = 1;
    v13 = 0;
    v14 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(0, &lazy cache variable for type metadata for AnimatableAttribute<RoundedRectangle>, lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle, &type metadata for RoundedRectangle, type metadata accessor for AnimatableAttribute);
    lazy protocol witness table accessor for type AnimatableAttribute<RoundedRectangle> and conformance AnimatableAttribute<A>();
    a1 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<RoundedRectangle>(v9);
    AGGraphGetFlags();
    AGGraphSetFlags();
  }

  return a1;
}

uint64_t _s7SwiftUI10AnimatablePAAE04makeC05value6inputs14AttributeGraph0G0VyxGAA01_H5ValueVyxG_AA01_H6InputsVtFZAA16RoundedRectangleV6_InsetV_Tt1B5(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 36) & 1) == 0)
  {
    v3 = *(a2 + 8);
    v4 = *(a2 + 16);
    v5 = *(a2 + 24);
    v6 = *(a2 + 28);
    swift_beginAccess();
    v7 = *(v4 + 16);
    v9[0] = a1;
    v9[1] = v7;
    v9[2] = v5;
    v9[3] = v3;
    v9[4] = v6;
    v11 = 0;
    v12 = 0;
    v10 = 0;
    LOBYTE(v13) = 1;
    v14 = 0;
    v15 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(0, &lazy cache variable for type metadata for AnimatableAttribute<RoundedRectangle._Inset>, lazy protocol witness table accessor for type RoundedRectangle._Inset and conformance RoundedRectangle._Inset, &type metadata for RoundedRectangle._Inset, type metadata accessor for AnimatableAttribute);
    lazy protocol witness table accessor for type AnimatableAttribute<RoundedRectangle._Inset> and conformance AnimatableAttribute<A>();
    a1 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<RoundedRectangle._Inset>(v9);
    AGGraphGetFlags();
    AGGraphSetFlags();
  }

  return a1;
}

void *_s7SwiftUI4ViewPAAE04makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA21_GlassEffectContainerVyAA15ModifiedContentVyAA01_c9Modifier_O0VyAA0kl5LocalP008_3DF70D9S23D7473F4D189A049B764CFEFLLVGAA0klmP0AULLVGG_Tt2B5@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v44 = *MEMORY[0x1E69E9840];
  type metadata accessor for _GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>(0);
  static DynamicPropertyCache.fields(of:)(v6, &v38);
  v7 = v38;
  v8 = v39;
  v9 = DWORD1(v39);
  v10 = a2[3];
  v34 = a2[2];
  v35 = v10;
  v36 = a2[4];
  v37 = *(a2 + 20);
  v11 = a2[1];
  v32 = *a2;
  v33 = v11;
  if (AGTypeGetKind() - 2 > 3)
  {
    *&v26 = 0;
    *(&v26 + 1) = 0xE000000000000000;
    outlined init with copy of _ViewInputs(a2, &v38);
    _StringGuts.grow(_:)(70);
    v38 = v26;
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](0xD0000000000000C3, 0x800000018DD78CC0);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v38);
    LOBYTE(v38) = v8;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v32, v7, *(&v7 + 1), v8 | (v9 << 32), a1, &v38);
    v12 = v38;
    if ((BYTE8(v39) & 1) == 0)
    {
      LOBYTE(v38) = v8;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v7, *(&v7 + 1), v8, *(&v38 + 1), v39);
    }

    outlined consume of DynamicPropertyCache.Fields.Layout(v7, *(&v7 + 1), v8);
    v28 = v34;
    v29 = v35;
    v30 = v36;
    v31 = v37;
    v26 = v32;
    v27 = v33;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      _s7SwiftUI15ModifiedContentVyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVyAA010GlassEntryH033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA7ForEachVySayAA0J9ContainerO4ItemVGAS2IDVAA0jxF0AKLLVGGAA0J19EffectShapeModifier33_62A32D59B8A902A88963544196023CF7LLVGMaTm_0(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>, GlassEffectContainerModifier>, type metadata accessor for ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>, &type metadata for GlassEffectContainerModifier, type metadata accessor for ModifiedContent);
      outlined init with copy of _ViewInputs(&v26, &v38);
      AGSubgraphBeginTreeElement();
    }

    else
    {
      outlined init with copy of _ViewInputs(&v26, &v38);
    }

    v22 = v28;
    v23 = v29;
    v24 = v30;
    v25 = v31;
    v20 = v26;
    v21 = v27;
    v14 = v28;
    LODWORD(v22) = 0;
    v43 = v31;
    v41 = v29;
    v42 = v30;
    v38 = v26;
    v39 = v27;
    v40 = v22;
    outlined init with copy of _ViewInputs(&v26, v18);
    outlined init with copy of _ViewInputs(&v38, v18);
    _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZAA01_ef1_D0VyAA020GlassTransitionStateF033_D12F2F25A0BD65FFBD3A7636B60067DFLLVG_AA14_OpacityEffectVTt2B5Tm(v12, &v38, specialized static GlassEffectContainerModifier._makeView(modifier:inputs:body:), _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5, a3);
    outlined destroy of _ViewInputs(&v38);
    LODWORD(v22) = v14;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v20);
      AGSubgraphEndTreeElement();
    }

    outlined destroy of _ViewInputs(&v26);
    v16[2] = v34;
    v16[3] = v35;
    v16[4] = v36;
    v17 = v37;
    v16[0] = v32;
    v16[1] = v33;
    outlined destroy of _ViewInputs(v16);
    v18[2] = v22;
    v18[3] = v23;
    v18[4] = v24;
    v19 = v25;
    v18[0] = v20;
    v18[1] = v21;
    return outlined destroy of _ViewInputs(v18);
  }

  return result;
}

void *specialized static View.makeView(view:inputs:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, double *a3@<X8>)
{
  v4 = v3;
  v45 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v4, &v39);
  v8 = v39;
  v9 = v40;
  v10 = DWORD1(v40);
  v11 = a2[3];
  v35 = a2[2];
  v36 = v11;
  v37 = a2[4];
  v38 = *(a2 + 20);
  v12 = a2[1];
  v33 = *a2;
  v34 = v12;
  if (AGTypeGetKind() - 2 > 3)
  {
    *&v27 = 0;
    *(&v27 + 1) = 0xE000000000000000;
    outlined init with copy of _ViewInputs(a2, &v39);
    _StringGuts.grow(_:)(70);
    v39 = v27;
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](0xD00000000000003ELL, 0x800000018DD78F90);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v39);
    LOBYTE(v39) = v9;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v33, v8, *(&v8 + 1), v9 | (v10 << 32), a1, &v39);
    v13 = v39;
    if ((BYTE8(v40) & 1) == 0)
    {
      LOBYTE(v39) = v9;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v8, *(&v8 + 1), v9, *(&v39 + 1), v40, &type metadata for GlassEntryContainerView, type metadata accessor for GlassEntryContainerView.Type);
    }

    outlined consume of DynamicPropertyCache.Fields.Layout(v8, *(&v8 + 1), v9);
    v29 = v35;
    v30 = v36;
    v31 = v37;
    v32 = v38;
    v27 = v33;
    v28 = v34;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(0, &lazy cache variable for type metadata for GeometryReader<GlassEntryView>, lazy protocol witness table accessor for type GlassEntryView and conformance GlassEntryView, &type metadata for GlassEntryView, type metadata accessor for GeometryReader);
      outlined init with copy of _ViewInputs(&v27, &v39);
      AGSubgraphBeginTreeElement();
    }

    else
    {
      outlined init with copy of _ViewInputs(&v27, &v39);
    }

    v23 = v29;
    v24 = v30;
    v25 = v31;
    v26 = v32;
    v21 = v27;
    v22 = v28;
    v15 = v29;
    LODWORD(v23) = 0;
    v44 = v32;
    v42 = v30;
    v43 = v31;
    v39 = v27;
    v40 = v28;
    v41 = v23;
    outlined init with copy of _ViewInputs(&v27, v19);
    outlined init with copy of _ViewInputs(&v39, v19);
    _s7SwiftUI14GeometryReaderV9_makeView4view6inputsAA01_F7OutputsVAA11_GraphValueVyACyxGG_AA01_F6InputsVtFZAA010GlassEntryF033_D12F2F25A0BD65FFBD3A7636B60067DFLLV_Tt2B5(v13, &v39, a3);
    outlined destroy of _ViewInputs(&v39);
    LODWORD(v23) = v15;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v21);
      AGSubgraphEndTreeElement();
    }

    outlined destroy of _ViewInputs(&v27);
    v17[2] = v35;
    v17[3] = v36;
    v17[4] = v37;
    v18 = v38;
    v17[0] = v33;
    v17[1] = v34;
    outlined destroy of _ViewInputs(v17);
    v19[2] = v23;
    v19[3] = v24;
    v19[4] = v25;
    v20 = v26;
    v19[0] = v21;
    v19[1] = v22;
    return outlined destroy of _ViewInputs(v19);
  }

  return result;
}

void *specialized static View.makeView(view:inputs:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v45 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v4, &v39);
  v8 = v39;
  v9 = v40;
  v10 = DWORD1(v40);
  v11 = a2[3];
  v35 = a2[2];
  v36 = v11;
  v37 = a2[4];
  v38 = *(a2 + 20);
  v12 = a2[1];
  v33 = *a2;
  v34 = v12;
  if (AGTypeGetKind() - 2 > 3)
  {
    *&v27 = 0;
    *(&v27 + 1) = 0xE000000000000000;
    outlined init with copy of _ViewInputs(a2, &v39);
    _StringGuts.grow(_:)(70);
    v39 = v27;
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](0xD000000000000036, 0x800000018DD78F50);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v39);
    LOBYTE(v39) = v9;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v33, v8, *(&v8 + 1), v9 | (v10 << 32), a1, &v39);
    v13 = v39;
    if ((BYTE8(v40) & 1) == 0)
    {
      LOBYTE(v39) = v9;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v8, *(&v8 + 1), v9, *(&v39 + 1), v40, &type metadata for GlassEffectView, type metadata accessor for GlassEffectView.Type);
    }

    outlined consume of DynamicPropertyCache.Fields.Layout(v8, *(&v8 + 1), v9);
    v29 = v35;
    v30 = v36;
    v31 = v37;
    v32 = v38;
    v27 = v33;
    v28 = v34;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      _s7SwiftUI15ModifiedContentVyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVyAA010GlassEntryH033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA7ForEachVySayAA0J9ContainerO4ItemVGAS2IDVAA0jxF0AKLLVGGAA0J19EffectShapeModifier33_62A32D59B8A902A88963544196023CF7LLVGMaTm_0(0, &lazy cache variable for type metadata for ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEffectLayout>, ForEach<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>>, GlassMaterialEffect>, type metadata accessor for _VariadicView.Tree<_LayoutRoot<GlassEffectLayout>, ForEach<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>>, &type metadata for GlassMaterialEffect, type metadata accessor for ModifiedContent);
      outlined init with copy of _ViewInputs(&v27, &v39);
      AGSubgraphBeginTreeElement();
    }

    else
    {
      outlined init with copy of _ViewInputs(&v27, &v39);
    }

    v23 = v29;
    v24 = v30;
    v25 = v31;
    v26 = v32;
    v21 = v27;
    v22 = v28;
    v15 = v29;
    LODWORD(v23) = 0;
    v44 = v32;
    v42 = v30;
    v43 = v31;
    v39 = v27;
    v40 = v28;
    v41 = v23;
    outlined init with copy of _ViewInputs(&v27, v19);
    outlined init with copy of _ViewInputs(&v39, v19);
    _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZAA09_VariadicE0O4TreeVy_AA11_LayoutRootVyAA011GlassEffectP033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA7ForEachVySayAA0R9ContainerO5EntryVGA4_8StableIDVACyACyAA6ZStackVyAA0r14EntryContainerE0AXLLVGAA013_TraitWritingF0VyAA01_P5TraitVyAY3KeyVGGGA14_yAA18TransitionTraitKeyVGGGG_AA0r8MaterialS033_62A32D59B8A902A88963544196023CF7LLVTt2B5(v13, &v39, a3);
    outlined destroy of _ViewInputs(&v39);
    LODWORD(v23) = v15;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v21);
      AGSubgraphEndTreeElement();
    }

    outlined destroy of _ViewInputs(&v27);
    v17[2] = v35;
    v17[3] = v36;
    v17[4] = v37;
    v18 = v38;
    v17[0] = v33;
    v17[1] = v34;
    outlined destroy of _ViewInputs(v17);
    v19[2] = v23;
    v19[3] = v24;
    v19[4] = v25;
    v20 = v26;
    v19[0] = v21;
    v19[1] = v22;
    return outlined destroy of _ViewInputs(v19);
  }

  return result;
}

{
  v4 = v3;
  v45 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v4, &v39);
  v8 = v39;
  v9 = v40;
  v10 = DWORD1(v40);
  v11 = a2[3];
  v35 = a2[2];
  v36 = v11;
  v37 = a2[4];
  v38 = *(a2 + 20);
  v12 = a2[1];
  v33 = *a2;
  v34 = v12;
  if (AGTypeGetKind() - 2 > 3)
  {
    *&v27 = 0;
    *(&v27 + 1) = 0xE000000000000000;
    outlined init with copy of _ViewInputs(a2, &v39);
    _StringGuts.grow(_:)(70);
    v39 = v27;
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](0xD000000000000035, 0x800000018DD78FD0);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v39);
    LOBYTE(v39) = v9;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v33, v8, *(&v8 + 1), v9 | (v10 << 32), a1, &v39);
    v13 = v39;
    if ((BYTE8(v40) & 1) == 0)
    {
      LOBYTE(v39) = v9;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v8, *(&v8 + 1), v9, *(&v39 + 1), v40, &type metadata for GlassEntryView, type metadata accessor for GlassEntryView.Type);
    }

    outlined consume of DynamicPropertyCache.Fields.Layout(v8, *(&v8 + 1), v9);
    v29 = v35;
    v30 = v36;
    v31 = v37;
    v32 = v38;
    v27 = v33;
    v28 = v34;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>, GlassEffectPlatformItemModifier>, GlassEntryInteractionModifier>, GlassEntryFlexInteractionModifier>, GlassTransitionStateModifier>, ScheduledAnimationModifier<Int>>(0);
      outlined init with copy of _ViewInputs(&v27, &v39);
      AGSubgraphBeginTreeElement();
    }

    else
    {
      outlined init with copy of _ViewInputs(&v27, &v39);
    }

    v23 = v29;
    v24 = v30;
    v25 = v31;
    v26 = v32;
    v21 = v27;
    v22 = v28;
    v15 = v29;
    LODWORD(v23) = 0;
    v44 = v32;
    v42 = v30;
    v43 = v31;
    v39 = v27;
    v40 = v28;
    v41 = v23;
    outlined init with copy of _ViewInputs(&v27, v19);
    outlined init with copy of _ViewInputs(&v39, v19);
    _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZACyACyACyACyACyAA09_VariadicE0O4TreeVy_AA11_LayoutRootVyAA010GlassEntryP033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA7ForEachVySayAA0R9ContainerO4ItemVGA4_2IDVAA0r4ItemE0AXLLVGGAA0r11EffectShapeF033_62A32D59B8A902A88963544196023CF7LLVGAA0r18EffectPlatformItemF0AXLLVGAA0rs11InteractionF0AXLLVGAA0rs15FlexInteractionF0AXLLVGAA0r15TransitionStateF0AXLLVG_AA018ScheduledAnimationF0020_94C2570E898B27608B6U11D65EF8A1A07LLVySiGTt2B5(v13, &v39, a3);
    outlined destroy of _ViewInputs(&v39);
    LODWORD(v23) = v15;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v21);
      AGSubgraphEndTreeElement();
    }

    outlined destroy of _ViewInputs(&v27);
    v17[2] = v35;
    v17[3] = v36;
    v17[4] = v37;
    v18 = v38;
    v17[0] = v33;
    v17[1] = v34;
    outlined destroy of _ViewInputs(v17);
    v19[2] = v23;
    v19[3] = v24;
    v19[4] = v25;
    v20 = v26;
    v19[0] = v21;
    v19[1] = v22;
    return outlined destroy of _ViewInputs(v19);
  }

  return result;
}

{
  v4 = v3;
  v44 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v4, &v38);
  v8 = v38;
  v9 = v39;
  v10 = DWORD1(v39);
  v11 = a2[3];
  v34 = a2[2];
  v35 = v11;
  v36 = a2[4];
  v37 = *(a2 + 20);
  v12 = a2[1];
  v32 = *a2;
  v33 = v12;
  if (AGTypeGetKind() - 2 > 3)
  {
    *&v26 = 0;
    *(&v26 + 1) = 0xE000000000000000;
    outlined init with copy of _ViewInputs(a2, &v38);
    _StringGuts.grow(_:)(70);
    v38 = v26;
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](0xD000000000000034, 0x800000018DD79080);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v38);
    LOBYTE(v38) = v9;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v32, v8, *(&v8 + 1), v9 | (v10 << 32), a1, &v38);
    if ((BYTE8(v39) & 1) == 0)
    {
      LOBYTE(v38) = v9;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v8, *(&v8 + 1), v9, *(&v38 + 1), v39, &type metadata for GlassItemView, type metadata accessor for GlassItemView.Type);
    }

    outlined consume of DynamicPropertyCache.Fields.Layout(v8, *(&v8 + 1), v9);
    v28 = v34;
    v29 = v35;
    v30 = v36;
    v31 = v37;
    v26 = v32;
    v27 = v33;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      _s7SwiftUI15ModifiedContentVyACyACyACyAA014_ViewModifier_D0VyAA015SafeAreaPaddingF0VGAA06_InseteF0VyACyAA5ColorVAA12_FrameLayoutVGGGAPGAPGAPGMaTm_1(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveGlassItemView, GlassTransitionStateModifier>, _GeometryGroupEffect>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<_LayoutTrait<GlassEntryLayout.Key>>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveGlassItemView, GlassTransitionStateModifier>, _GeometryGroupEffect>, _TraitWritingModifier<TransitionTraitKey>>, type metadata accessor for _TraitWritingModifier<_LayoutTrait<GlassEntryLayout.Key>>);
      outlined init with copy of _ViewInputs(&v26, &v38);
      AGSubgraphBeginTreeElement();
    }

    else
    {
      outlined init with copy of _ViewInputs(&v26, &v38);
    }

    v22 = v28;
    v23 = v29;
    v24 = v30;
    v25 = v31;
    v20 = v26;
    v21 = v27;
    v14 = v28;
    LODWORD(v22) = 0;
    v43 = v31;
    v41 = v29;
    v42 = v30;
    v38 = v26;
    v39 = v27;
    v40 = v22;
    outlined init with copy of _ViewInputs(&v26, v18);
    outlined init with copy of _ViewInputs(&v38, v18);
    _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZACyACyACyAA018PrimitiveGlassItemE033_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA0o15TransitionStateF0ARLLVGAA20_GeometryGroupEffectVGAA013_TraitWritingF0VyAA0Z8TraitKeyVGG_A_yAA12_LayoutTraitVyAA0O11EntryLayoutARLLV3KeyVGGTt2B5(&v38, a3);
    outlined destroy of _ViewInputs(&v38);
    LODWORD(v22) = v14;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v20);
      AGSubgraphEndTreeElement();
    }

    outlined destroy of _ViewInputs(&v26);
    v16[2] = v34;
    v16[3] = v35;
    v16[4] = v36;
    v17 = v37;
    v16[0] = v32;
    v16[1] = v33;
    outlined destroy of _ViewInputs(v16);
    v18[2] = v22;
    v18[3] = v23;
    v18[4] = v24;
    v19 = v25;
    v18[0] = v20;
    v18[1] = v21;
    return outlined destroy of _ViewInputs(v18);
  }

  return result;
}

void *_s7SwiftUI4ViewPAAE04makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLV_Tt2B5@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v42 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(&type metadata for SummarySymbol, &v36);
  v6 = v36;
  v7 = v37;
  v8 = DWORD1(v37);
  v9 = a2[3];
  v32 = a2[2];
  v33 = v9;
  v34 = a2[4];
  v35 = *(a2 + 20);
  v10 = a2[1];
  v30 = *a2;
  v31 = v10;
  if (AGTypeGetKind() - 2 > 3)
  {
    *&v24 = 0;
    *(&v24 + 1) = 0xE000000000000000;
    outlined init with copy of _ViewInputs(a2, &v36);
    _StringGuts.grow(_:)(70);
    v36 = v24;
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](0xD000000000000034, 0x800000018DD78DB0);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v36);
    LOBYTE(v36) = v7;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v30, v6, *(&v6 + 1), v7 | (v8 << 32), a1, &v36);
    if ((BYTE8(v37) & 1) == 0)
    {
      LOBYTE(v36) = v7;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v6, *(&v6 + 1), v7, *(&v36 + 1), v37, &type metadata for SummarySymbol, type metadata accessor for SummarySymbol.Type);
    }

    outlined consume of DynamicPropertyCache.Fields.Layout(v6, *(&v6 + 1), v7);
    v26 = v32;
    v27 = v33;
    v28 = v34;
    v29 = v35;
    v24 = v30;
    v25 = v31;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      type metadata accessor for ModifiedContent<Image, _ForegroundStyleModifier2<AngularGradient, Color>>(0);
      outlined init with copy of _ViewInputs(&v24, &v36);
      AGSubgraphBeginTreeElement();
    }

    else
    {
      outlined init with copy of _ViewInputs(&v24, &v36);
    }

    v20 = v26;
    v21 = v27;
    v22 = v28;
    v23 = v29;
    v18 = v24;
    v19 = v25;
    v12 = v26;
    LODWORD(v20) = 0;
    v41 = v29;
    v39 = v27;
    v40 = v28;
    v36 = v24;
    v37 = v25;
    v38 = v20;
    outlined init with copy of _ViewInputs(&v24, v16);
    outlined init with copy of _ViewInputs(&v36, v16);
    _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZAA5ImageV_AA25_ForegroundStyleModifier2VyAA15AngularGradientVAA5ColorVGTt2B5(&v36, a3);
    outlined destroy of _ViewInputs(&v36);
    LODWORD(v20) = v12;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v18);
      AGSubgraphEndTreeElement();
    }

    outlined destroy of _ViewInputs(&v24);
    v14[2] = v32;
    v14[3] = v33;
    v14[4] = v34;
    v15 = v35;
    v14[0] = v30;
    v14[1] = v31;
    outlined destroy of _ViewInputs(v14);
    v16[2] = v20;
    v16[3] = v21;
    v16[4] = v22;
    v17 = v23;
    v16[0] = v18;
    v16[1] = v19;
    return outlined destroy of _ViewInputs(v16);
  }

  return result;
}

void specialized static View.makeView(view:inputs:)(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  static DynamicPropertyCache.fields(of:)(v3, &v5);
  if (AGTypeGetKind() - 2 > 3)
  {
    v7 = 0;
    v8 = 0xE000000000000000;
    outlined init with copy of _ViewInputs(a2, &v5);
    _StringGuts.grow(_:)(70);
    v5 = v7;
    v6 = v8;
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](0x726576654ELL, 0xE500000000000000);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
    outlined init with copy of _ViewInputs(a2, &v5);
    _StringGuts.grow(_:)(29);

    v5 = 0x726576654ELL;
    v6 = 0xE500000000000000;
    MEMORY[0x193ABEDD0](0xD00000000000001BLL, 0x800000018DD77760);
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void *specialized static View.makeView(view:inputs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v45 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v4, &v39);
  v8 = v39;
  v9 = v40;
  v10 = DWORD1(v40);
  v11 = *(a2 + 48);
  v35 = *(a2 + 32);
  v36 = v11;
  v37 = *(a2 + 64);
  v38 = *(a2 + 80);
  v12 = *(a2 + 16);
  v33 = *a2;
  v34 = v12;
  if (AGTypeGetKind() - 2 > 3)
  {
    *&v27 = 0;
    *(&v27 + 1) = 0xE000000000000000;
    outlined init with copy of _ViewInputs(a2, &v39);
    _StringGuts.grow(_:)(70);
    v39 = v27;
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](0x7465736E495FLL, 0xE600000000000000);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v39);
    LOBYTE(v39) = v9;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v33, v8, *(&v8 + 1), v9 | (v10 << 32), a1, &v39);
    v13 = v39;
    if ((BYTE8(v40) & 1) == 0)
    {
      LOBYTE(v39) = v9;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v8, *(&v8 + 1), v9, *(&v39 + 1), v40, &type metadata for Rectangle._Inset, type metadata accessor for Rectangle._Inset.Type);
    }

    outlined consume of DynamicPropertyCache.Fields.Layout(v8, *(&v8 + 1), v9);
    type metadata accessor for _ShapeView<Rectangle._Inset, ForegroundStyle>(0);
    v29 = v35;
    v30 = v36;
    v31 = v37;
    v32 = v38;
    v27 = v33;
    v28 = v34;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      AGSubgraphBeginTreeElement();
    }

    v23 = v29;
    v24 = v30;
    v25 = v31;
    v26 = v32;
    v21 = v27;
    v22 = v28;
    v15 = v29;
    LODWORD(v23) = 0;
    v44 = v32;
    v42 = v30;
    v43 = v31;
    v39 = v27;
    v40 = v28;
    v41 = v23;
    outlined init with copy of _ViewInputs(&v27, v19);
    outlined init with copy of _ViewInputs(&v39, v19);
    _s7SwiftUI10_ShapeViewV05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyACyxq_GG_AA01_D6InputsVtFZAA9RectangleV6_InsetV_AA15ForegroundStyleVTt2B5(v13, &v39, a3);
    outlined destroy of _ViewInputs(&v39);
    LODWORD(v23) = v15;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v21);
      AGSubgraphEndTreeElement();
    }

    v17[2] = v35;
    v17[3] = v36;
    v17[4] = v37;
    v18 = v38;
    v17[0] = v33;
    v17[1] = v34;
    outlined destroy of _ViewInputs(v17);
    v19[2] = v23;
    v19[3] = v24;
    v19[4] = v25;
    v20 = v26;
    v19[0] = v21;
    v19[1] = v22;
    return outlined destroy of _ViewInputs(v19);
  }

  return result;
}

{
  v4 = v3;
  v45 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v4, &v39);
  v8 = v39;
  v9 = v40;
  v10 = DWORD1(v40);
  v11 = *(a2 + 48);
  v35 = *(a2 + 32);
  v36 = v11;
  v37 = *(a2 + 64);
  v38 = *(a2 + 80);
  v12 = *(a2 + 16);
  v33 = *a2;
  v34 = v12;
  if (AGTypeGetKind() - 2 > 3)
  {
    *&v27 = 0;
    *(&v27 + 1) = 0xE000000000000000;
    outlined init with copy of _ViewInputs(a2, &v39);
    _StringGuts.grow(_:)(70);
    v39 = v27;
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](0x6570616853796E41, 0xE800000000000000);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v39);
    LOBYTE(v39) = v9;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v33, v8, *(&v8 + 1), v9 | (v10 << 32), a1, &v39);
    v13 = v39;
    if ((BYTE8(v40) & 1) == 0)
    {
      LOBYTE(v39) = v9;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v8, *(&v8 + 1), v9, *(&v39 + 1), v40, &type metadata for AnyShape, type metadata accessor for AnyShape.Type);
    }

    outlined consume of DynamicPropertyCache.Fields.Layout(v8, *(&v8 + 1), v9);
    type metadata accessor for _ShapeView<AnyShape, ForegroundStyle>(0);
    v29 = v35;
    v30 = v36;
    v31 = v37;
    v32 = v38;
    v27 = v33;
    v28 = v34;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      AGSubgraphBeginTreeElement();
    }

    v23 = v29;
    v24 = v30;
    v25 = v31;
    v26 = v32;
    v21 = v27;
    v22 = v28;
    v15 = v29;
    LODWORD(v23) = 0;
    v44 = v32;
    v42 = v30;
    v43 = v31;
    v39 = v27;
    v40 = v28;
    v41 = v23;
    outlined init with copy of _ViewInputs(&v27, v19);
    outlined init with copy of _ViewInputs(&v39, v19);
    _s7SwiftUI10_ShapeViewV05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyACyxq_GG_AA01_D6InputsVtFZAA03AnyC0V_AA15ForegroundStyleVTt2B5(v13, &v39, a3);
    outlined destroy of _ViewInputs(&v39);
    LODWORD(v23) = v15;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v21);
      AGSubgraphEndTreeElement();
    }

    v17[2] = v35;
    v17[3] = v36;
    v17[4] = v37;
    v18 = v38;
    v17[0] = v33;
    v17[1] = v34;
    outlined destroy of _ViewInputs(v17);
    v19[2] = v23;
    v19[3] = v24;
    v19[4] = v25;
    v20 = v26;
    v19[0] = v21;
    v19[1] = v22;
    return outlined destroy of _ViewInputs(v19);
  }

  return result;
}

{
  v4 = v3;
  v45 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v4, &v39);
  v8 = v39;
  v9 = v40;
  v10 = DWORD1(v40);
  v11 = *(a2 + 48);
  v35 = *(a2 + 32);
  v36 = v11;
  v37 = *(a2 + 64);
  v38 = *(a2 + 80);
  v12 = *(a2 + 16);
  v33 = *a2;
  v34 = v12;
  if (AGTypeGetKind() - 2 > 3)
  {
    *&v27 = 0;
    *(&v27 + 1) = 0xE000000000000000;
    outlined init with copy of _ViewInputs(a2, &v39);
    _StringGuts.grow(_:)(70);
    v39 = v27;
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](0x7465736E495FLL, 0xE600000000000000);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v39);
    LOBYTE(v39) = v9;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v33, v8, *(&v8 + 1), v9 | (v10 << 32), a1, &v39);
    v13 = v39;
    if ((BYTE8(v40) & 1) == 0)
    {
      LOBYTE(v39) = v9;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v8, *(&v8 + 1), v9, *(&v39 + 1), v40, &type metadata for Ellipse._Inset, type metadata accessor for Ellipse._Inset.Type);
    }

    outlined consume of DynamicPropertyCache.Fields.Layout(v8, *(&v8 + 1), v9);
    type metadata accessor for _ShapeView<Ellipse._Inset, ForegroundStyle>(0);
    v29 = v35;
    v30 = v36;
    v31 = v37;
    v32 = v38;
    v27 = v33;
    v28 = v34;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      AGSubgraphBeginTreeElement();
    }

    v23 = v29;
    v24 = v30;
    v25 = v31;
    v26 = v32;
    v21 = v27;
    v22 = v28;
    v15 = v29;
    LODWORD(v23) = 0;
    v44 = v32;
    v42 = v30;
    v43 = v31;
    v39 = v27;
    v40 = v28;
    v41 = v23;
    outlined init with copy of _ViewInputs(&v27, v19);
    outlined init with copy of _ViewInputs(&v39, v19);
    _s7SwiftUI10_ShapeViewV05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyACyxq_GG_AA01_D6InputsVtFZAA7EllipseV6_InsetV_AA15ForegroundStyleVTt2B5(v13, &v39, a3);
    outlined destroy of _ViewInputs(&v39);
    LODWORD(v23) = v15;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v21);
      AGSubgraphEndTreeElement();
    }

    v17[2] = v35;
    v17[3] = v36;
    v17[4] = v37;
    v18 = v38;
    v17[0] = v33;
    v17[1] = v34;
    outlined destroy of _ViewInputs(v17);
    v19[2] = v23;
    v19[3] = v24;
    v19[4] = v25;
    v20 = v26;
    v19[0] = v21;
    v19[1] = v22;
    return outlined destroy of _ViewInputs(v19);
  }

  return result;
}

{
  v4 = v3;
  v45 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v4, &v39);
  v8 = v39;
  v9 = v40;
  v10 = DWORD1(v40);
  v11 = *(a2 + 48);
  v35 = *(a2 + 32);
  v36 = v11;
  v37 = *(a2 + 64);
  v38 = *(a2 + 80);
  v12 = *(a2 + 16);
  v33 = *a2;
  v34 = v12;
  if (AGTypeGetKind() - 2 > 3)
  {
    *&v27 = 0;
    *(&v27 + 1) = 0xE000000000000000;
    outlined init with copy of _ViewInputs(a2, &v39);
    _StringGuts.grow(_:)(70);
    v39 = v27;
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](0x7465736E495FLL, 0xE600000000000000);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v39);
    LOBYTE(v39) = v9;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v33, v8, *(&v8 + 1), v9 | (v10 << 32), a1, &v39);
    v13 = v39;
    if ((BYTE8(v40) & 1) == 0)
    {
      LOBYTE(v39) = v9;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v8, *(&v8 + 1), v9, *(&v39 + 1), v40, &type metadata for Capsule._Inset, type metadata accessor for Capsule._Inset.Type);
    }

    outlined consume of DynamicPropertyCache.Fields.Layout(v8, *(&v8 + 1), v9);
    type metadata accessor for _ShapeView<Capsule._Inset, ForegroundStyle>(0);
    v29 = v35;
    v30 = v36;
    v31 = v37;
    v32 = v38;
    v27 = v33;
    v28 = v34;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      AGSubgraphBeginTreeElement();
    }

    v23 = v29;
    v24 = v30;
    v25 = v31;
    v26 = v32;
    v21 = v27;
    v22 = v28;
    v15 = v29;
    LODWORD(v23) = 0;
    v44 = v32;
    v42 = v30;
    v43 = v31;
    v39 = v27;
    v40 = v28;
    v41 = v23;
    outlined init with copy of _ViewInputs(&v27, v19);
    outlined init with copy of _ViewInputs(&v39, v19);
    _s7SwiftUI10_ShapeViewV05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyACyxq_GG_AA01_D6InputsVtFZAA7CapsuleV6_InsetV_AA15ForegroundStyleVTt2B5(v13, &v39, a3);
    outlined destroy of _ViewInputs(&v39);
    LODWORD(v23) = v15;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v21);
      AGSubgraphEndTreeElement();
    }

    v17[2] = v35;
    v17[3] = v36;
    v17[4] = v37;
    v18 = v38;
    v17[0] = v33;
    v17[1] = v34;
    outlined destroy of _ViewInputs(v17);
    v19[2] = v23;
    v19[3] = v24;
    v19[4] = v25;
    v20 = v26;
    v19[0] = v21;
    v19[1] = v22;
    return outlined destroy of _ViewInputs(v19);
  }

  return result;
}

{
  v4 = v3;
  v45 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v4, &v39);
  v8 = v39;
  v9 = v40;
  v10 = DWORD1(v40);
  v11 = *(a2 + 48);
  v35 = *(a2 + 32);
  v36 = v11;
  v37 = *(a2 + 64);
  v38 = *(a2 + 80);
  v12 = *(a2 + 16);
  v33 = *a2;
  v34 = v12;
  if (AGTypeGetKind() - 2 > 3)
  {
    *&v27 = 0;
    *(&v27 + 1) = 0xE000000000000000;
    outlined init with copy of _ViewInputs(a2, &v39);
    _StringGuts.grow(_:)(70);
    v39 = v27;
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](0x7465736E495FLL, 0xE600000000000000);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v39);
    LOBYTE(v39) = v9;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v33, v8, *(&v8 + 1), v9 | (v10 << 32), a1, &v39);
    v13 = v39;
    if ((BYTE8(v40) & 1) == 0)
    {
      LOBYTE(v39) = v9;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v8, *(&v8 + 1), v9, *(&v39 + 1), v40, &type metadata for Circle._Inset, type metadata accessor for Circle._Inset.Type);
    }

    outlined consume of DynamicPropertyCache.Fields.Layout(v8, *(&v8 + 1), v9);
    type metadata accessor for _ShapeView<Circle._Inset, ForegroundStyle>(0);
    v29 = v35;
    v30 = v36;
    v31 = v37;
    v32 = v38;
    v27 = v33;
    v28 = v34;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      AGSubgraphBeginTreeElement();
    }

    v23 = v29;
    v24 = v30;
    v25 = v31;
    v26 = v32;
    v21 = v27;
    v22 = v28;
    v15 = v29;
    LODWORD(v23) = 0;
    v44 = v32;
    v42 = v30;
    v43 = v31;
    v39 = v27;
    v40 = v28;
    v41 = v23;
    outlined init with copy of _ViewInputs(&v27, v19);
    outlined init with copy of _ViewInputs(&v39, v19);
    _s7SwiftUI10_ShapeViewV05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyACyxq_GG_AA01_D6InputsVtFZAA6CircleV6_InsetV_AA15ForegroundStyleVTt2B5(v13, &v39, a3);
    outlined destroy of _ViewInputs(&v39);
    LODWORD(v23) = v15;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v21);
      AGSubgraphEndTreeElement();
    }

    v17[2] = v35;
    v17[3] = v36;
    v17[4] = v37;
    v18 = v38;
    v17[0] = v33;
    v17[1] = v34;
    outlined destroy of _ViewInputs(v17);
    v19[2] = v23;
    v19[3] = v24;
    v19[4] = v25;
    v20 = v26;
    v19[0] = v21;
    v19[1] = v22;
    return outlined destroy of _ViewInputs(v19);
  }

  return result;
}

{
  v4 = v3;
  v45 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v4, &v39);
  v8 = v39;
  v9 = v40;
  v10 = DWORD1(v40);
  v11 = *(a2 + 48);
  v35 = *(a2 + 32);
  v36 = v11;
  v37 = *(a2 + 64);
  v38 = *(a2 + 80);
  v12 = *(a2 + 16);
  v33 = *a2;
  v34 = v12;
  if (AGTypeGetKind() - 2 > 3)
  {
    *&v27 = 0;
    *(&v27 + 1) = 0xE000000000000000;
    outlined init with copy of _ViewInputs(a2, &v39);
    _StringGuts.grow(_:)(70);
    v39 = v27;
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](0xD00000000000001DLL, 0x800000018DD78E50);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v39);
    LOBYTE(v39) = v9;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v33, v8, *(&v8 + 1), v9 | (v10 << 32), a1, &v39);
    v13 = v39;
    if ((BYTE8(v40) & 1) == 0)
    {
      LOBYTE(v39) = v9;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v8, *(&v8 + 1), v9, *(&v39 + 1), v40, &type metadata for PartialContainerRelativeShape, type metadata accessor for PartialContainerRelativeShape.Type);
    }

    outlined consume of DynamicPropertyCache.Fields.Layout(v8, *(&v8 + 1), v9);
    type metadata accessor for _ShapeView<PartialContainerRelativeShape, ForegroundStyle>(0);
    v29 = v35;
    v30 = v36;
    v31 = v37;
    v32 = v38;
    v27 = v33;
    v28 = v34;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      AGSubgraphBeginTreeElement();
    }

    v23 = v29;
    v24 = v30;
    v25 = v31;
    v26 = v32;
    v21 = v27;
    v22 = v28;
    v15 = v29;
    LODWORD(v23) = 0;
    v44 = v32;
    v42 = v30;
    v43 = v31;
    v39 = v27;
    v40 = v28;
    v41 = v23;
    outlined init with copy of _ViewInputs(&v27, v19);
    outlined init with copy of _ViewInputs(&v39, v19);
    _s7SwiftUI10_ShapeViewV05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyACyxq_GG_AA01_D6InputsVtFZAA024PartialContainerRelativeC0V_AA15ForegroundStyleVTt2B5(v13, &v39, a3);
    outlined destroy of _ViewInputs(&v39);
    LODWORD(v23) = v15;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v21);
      AGSubgraphEndTreeElement();
    }

    v17[2] = v35;
    v17[3] = v36;
    v17[4] = v37;
    v18 = v38;
    v17[0] = v33;
    v17[1] = v34;
    outlined destroy of _ViewInputs(v17);
    v19[2] = v23;
    v19[3] = v24;
    v19[4] = v25;
    v20 = v26;
    v19[0] = v21;
    v19[1] = v22;
    return outlined destroy of _ViewInputs(v19);
  }

  return result;
}

{
  v4 = v3;
  v45 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v4, &v39);
  v8 = v39;
  v9 = v40;
  v10 = DWORD1(v40);
  v11 = *(a2 + 48);
  v35 = *(a2 + 32);
  v36 = v11;
  v37 = *(a2 + 64);
  v38 = *(a2 + 80);
  v12 = *(a2 + 16);
  v33 = *a2;
  v34 = v12;
  if (AGTypeGetKind() - 2 > 3)
  {
    *&v27 = 0;
    *(&v27 + 1) = 0xE000000000000000;
    outlined init with copy of _ViewInputs(a2, &v39);
    _StringGuts.grow(_:)(70);
    v39 = v27;
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](0xD000000000000016, 0x800000018DD78ED0);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v39);
    LOBYTE(v39) = v9;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v33, v8, *(&v8 + 1), v9 | (v10 << 32), a1, &v39);
    v13 = v39;
    if ((BYTE8(v40) & 1) == 0)
    {
      LOBYTE(v39) = v9;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v8, *(&v8 + 1), v9, *(&v39 + 1), v40, &type metadata for UnevenRoundedRectangle, type metadata accessor for UnevenRoundedRectangle.Type);
    }

    outlined consume of DynamicPropertyCache.Fields.Layout(v8, *(&v8 + 1), v9);
    type metadata accessor for _ShapeView<UnevenRoundedRectangle, ForegroundStyle>(0);
    v29 = v35;
    v30 = v36;
    v31 = v37;
    v32 = v38;
    v27 = v33;
    v28 = v34;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      AGSubgraphBeginTreeElement();
    }

    v23 = v29;
    v24 = v30;
    v25 = v31;
    v26 = v32;
    v21 = v27;
    v22 = v28;
    v15 = v29;
    LODWORD(v23) = 0;
    v44 = v32;
    v42 = v30;
    v43 = v31;
    v39 = v27;
    v40 = v28;
    v41 = v23;
    outlined init with copy of _ViewInputs(&v27, v19);
    outlined init with copy of _ViewInputs(&v39, v19);
    _s7SwiftUI10_ShapeViewV05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyACyxq_GG_AA01_D6InputsVtFZAA22UnevenRoundedRectangleV_AA15ForegroundStyleVTt2B5(v13, &v39, a3);
    outlined destroy of _ViewInputs(&v39);
    LODWORD(v23) = v15;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v21);
      AGSubgraphEndTreeElement();
    }

    v17[2] = v35;
    v17[3] = v36;
    v17[4] = v37;
    v18 = v38;
    v17[0] = v33;
    v17[1] = v34;
    outlined destroy of _ViewInputs(v17);
    v19[2] = v23;
    v19[3] = v24;
    v19[4] = v25;
    v20 = v26;
    v19[0] = v21;
    v19[1] = v22;
    return outlined destroy of _ViewInputs(v19);
  }

  return result;
}

{
  v4 = v3;
  v45 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v4, &v39);
  v8 = v39;
  v9 = v40;
  v10 = DWORD1(v40);
  v11 = *(a2 + 48);
  v35 = *(a2 + 32);
  v36 = v11;
  v37 = *(a2 + 64);
  v38 = *(a2 + 80);
  v12 = *(a2 + 16);
  v33 = *a2;
  v34 = v12;
  if (AGTypeGetKind() - 2 > 3)
  {
    *&v27 = 0;
    *(&v27 + 1) = 0xE000000000000000;
    outlined init with copy of _ViewInputs(a2, &v39);
    _StringGuts.grow(_:)(70);
    v39 = v27;
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](0x7465736E495FLL, 0xE600000000000000);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v39);
    LOBYTE(v39) = v9;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v33, v8, *(&v8 + 1), v9 | (v10 << 32), a1, &v39);
    v13 = v39;
    if ((BYTE8(v40) & 1) == 0)
    {
      LOBYTE(v39) = v9;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v8, *(&v8 + 1), v9, *(&v39 + 1), v40, &type metadata for UnevenRoundedRectangle._Inset, type metadata accessor for UnevenRoundedRectangle._Inset.Type);
    }

    outlined consume of DynamicPropertyCache.Fields.Layout(v8, *(&v8 + 1), v9);
    type metadata accessor for _ShapeView<UnevenRoundedRectangle._Inset, ForegroundStyle>(0);
    v29 = v35;
    v30 = v36;
    v31 = v37;
    v32 = v38;
    v27 = v33;
    v28 = v34;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      AGSubgraphBeginTreeElement();
    }

    v23 = v29;
    v24 = v30;
    v25 = v31;
    v26 = v32;
    v21 = v27;
    v22 = v28;
    v15 = v29;
    LODWORD(v23) = 0;
    v44 = v32;
    v42 = v30;
    v43 = v31;
    v39 = v27;
    v40 = v28;
    v41 = v23;
    outlined init with copy of _ViewInputs(&v27, v19);
    outlined init with copy of _ViewInputs(&v39, v19);
    _s7SwiftUI10_ShapeViewV05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyACyxq_GG_AA01_D6InputsVtFZAA22UnevenRoundedRectangleV6_InsetV_AA15ForegroundStyleVTt2B5(v13, &v39, a3);
    outlined destroy of _ViewInputs(&v39);
    LODWORD(v23) = v15;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v21);
      AGSubgraphEndTreeElement();
    }

    v17[2] = v35;
    v17[3] = v36;
    v17[4] = v37;
    v18 = v38;
    v17[0] = v33;
    v17[1] = v34;
    outlined destroy of _ViewInputs(v17);
    v19[2] = v23;
    v19[3] = v24;
    v19[4] = v25;
    v20 = v26;
    v19[0] = v21;
    v19[1] = v22;
    return outlined destroy of _ViewInputs(v19);
  }

  return result;
}

{
  v4 = v3;
  v45 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v4, &v39);
  v8 = v39;
  v9 = v40;
  v10 = DWORD1(v40);
  v11 = *(a2 + 48);
  v35 = *(a2 + 32);
  v36 = v11;
  v37 = *(a2 + 64);
  v38 = *(a2 + 80);
  v12 = *(a2 + 16);
  v33 = *a2;
  v34 = v12;
  if (AGTypeGetKind() - 2 > 3)
  {
    *&v27 = 0;
    *(&v27 + 1) = 0xE000000000000000;
    outlined init with copy of _ViewInputs(a2, &v39);
    _StringGuts.grow(_:)(70);
    v39 = v27;
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](0x7465736E495FLL, 0xE600000000000000);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v39);
    LOBYTE(v39) = v9;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v33, v8, *(&v8 + 1), v9 | (v10 << 32), a1, &v39);
    v13 = v39;
    if ((BYTE8(v40) & 1) == 0)
    {
      LOBYTE(v39) = v9;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v8, *(&v8 + 1), v9, *(&v39 + 1), v40, &type metadata for ContainerRelativeShape._Inset, type metadata accessor for ContainerRelativeShape._Inset.Type);
    }

    outlined consume of DynamicPropertyCache.Fields.Layout(v8, *(&v8 + 1), v9);
    type metadata accessor for _ShapeView<ContainerRelativeShape._Inset, ForegroundStyle>(0);
    v29 = v35;
    v30 = v36;
    v31 = v37;
    v32 = v38;
    v27 = v33;
    v28 = v34;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      AGSubgraphBeginTreeElement();
    }

    v23 = v29;
    v24 = v30;
    v25 = v31;
    v26 = v32;
    v21 = v27;
    v22 = v28;
    v15 = v29;
    LODWORD(v23) = 0;
    v44 = v32;
    v42 = v30;
    v43 = v31;
    v39 = v27;
    v40 = v28;
    v41 = v23;
    outlined init with copy of _ViewInputs(&v27, v19);
    outlined init with copy of _ViewInputs(&v39, v19);
    _s7SwiftUI10_ShapeViewV05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyACyxq_GG_AA01_D6InputsVtFZAA017ContainerRelativeC0V6_InsetV_AA15ForegroundStyleVTt2B5(v13, &v39, a3);
    outlined destroy of _ViewInputs(&v39);
    LODWORD(v23) = v15;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v21);
      AGSubgraphEndTreeElement();
    }

    v17[2] = v35;
    v17[3] = v36;
    v17[4] = v37;
    v18 = v38;
    v17[0] = v33;
    v17[1] = v34;
    outlined destroy of _ViewInputs(v17);
    v19[2] = v23;
    v19[3] = v24;
    v19[4] = v25;
    v20 = v26;
    v19[0] = v21;
    v19[1] = v22;
    return outlined destroy of _ViewInputs(v19);
  }

  return result;
}

{
  v4 = v3;
  v45 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v4, &v39);
  v8 = v39;
  v9 = v40;
  v10 = DWORD1(v40);
  v11 = *(a2 + 48);
  v35 = *(a2 + 32);
  v36 = v11;
  v37 = *(a2 + 64);
  v38 = *(a2 + 80);
  v12 = *(a2 + 16);
  v33 = *a2;
  v34 = v12;
  if (AGTypeGetKind() - 2 > 3)
  {
    *&v27 = 0;
    *(&v27 + 1) = 0xE000000000000000;
    outlined init with copy of _ViewInputs(a2, &v39);
    _StringGuts.grow(_:)(70);
    v39 = v27;
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](0xD000000000000013, 0x800000018DD78EB0);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v39);
    LOBYTE(v39) = v9;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v33, v8, *(&v8 + 1), v9 | (v10 << 32), a1, &v39);
    v13 = v39;
    if ((BYTE8(v40) & 1) == 0)
    {
      LOBYTE(v39) = v9;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v8, *(&v8 + 1), v9, *(&v39 + 1), v40, &type metadata for ConcentricRectangle, type metadata accessor for ConcentricRectangle.Type);
    }

    outlined consume of DynamicPropertyCache.Fields.Layout(v8, *(&v8 + 1), v9);
    type metadata accessor for _ShapeView<ConcentricRectangle, ForegroundStyle>(0);
    v29 = v35;
    v30 = v36;
    v31 = v37;
    v32 = v38;
    v27 = v33;
    v28 = v34;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      AGSubgraphBeginTreeElement();
    }

    v23 = v29;
    v24 = v30;
    v25 = v31;
    v26 = v32;
    v21 = v27;
    v22 = v28;
    v15 = v29;
    LODWORD(v23) = 0;
    v44 = v32;
    v42 = v30;
    v43 = v31;
    v39 = v27;
    v40 = v28;
    v41 = v23;
    outlined init with copy of _ViewInputs(&v27, v19);
    outlined init with copy of _ViewInputs(&v39, v19);
    _s7SwiftUI10_ShapeViewV05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyACyxq_GG_AA01_D6InputsVtFZAA19ConcentricRectangleV_AA15ForegroundStyleVTt2B5(v13, &v39, a3);
    outlined destroy of _ViewInputs(&v39);
    LODWORD(v23) = v15;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v21);
      AGSubgraphEndTreeElement();
    }

    v17[2] = v35;
    v17[3] = v36;
    v17[4] = v37;
    v18 = v38;
    v17[0] = v33;
    v17[1] = v34;
    outlined destroy of _ViewInputs(v17);
    v19[2] = v23;
    v19[3] = v24;
    v19[4] = v25;
    v20 = v26;
    v19[0] = v21;
    v19[1] = v22;
    return outlined destroy of _ViewInputs(v19);
  }

  return result;
}

{
  v4 = v3;
  v45 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v4, &v39);
  v8 = v39;
  v9 = v40;
  v10 = DWORD1(v40);
  v11 = *(a2 + 48);
  v35 = *(a2 + 32);
  v36 = v11;
  v37 = *(a2 + 64);
  v38 = *(a2 + 80);
  v12 = *(a2 + 16);
  v33 = *a2;
  v34 = v12;
  if (AGTypeGetKind() - 2 > 3)
  {
    *&v27 = 0;
    *(&v27 + 1) = 0xE000000000000000;
    outlined init with copy of _ViewInputs(a2, &v39);
    _StringGuts.grow(_:)(70);
    v39 = v27;
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](0xD000000000000012, 0x800000018DD78F30);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v39);
    LOBYTE(v39) = v9;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v33, v8, *(&v8 + 1), v9 | (v10 << 32), a1, &v39);
    v13 = v39;
    if ((BYTE8(v40) & 1) == 0)
    {
      LOBYTE(v39) = v9;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v8, *(&v8 + 1), v9, *(&v39 + 1), v40, &type metadata for EllipticalGradient, type metadata accessor for EllipticalGradient.Type);
    }

    outlined consume of DynamicPropertyCache.Fields.Layout(v8, *(&v8 + 1), v9);
    type metadata accessor for _ShapeView<Rectangle, EllipticalGradient>(0);
    v29 = v35;
    v30 = v36;
    v31 = v37;
    v32 = v38;
    v27 = v33;
    v28 = v34;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      AGSubgraphBeginTreeElement();
    }

    v23 = v29;
    v24 = v30;
    v25 = v31;
    v26 = v32;
    v21 = v27;
    v22 = v28;
    v15 = v29;
    LODWORD(v23) = 0;
    v44 = v32;
    v42 = v30;
    v43 = v31;
    v39 = v27;
    v40 = v28;
    v41 = v23;
    outlined init with copy of _ViewInputs(&v27, v19);
    outlined init with copy of _ViewInputs(&v39, v19);
    _s7SwiftUI10_ShapeViewV05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyACyxq_GG_AA01_D6InputsVtFZAA9RectangleV_AA18EllipticalGradientVTt2B5(v13, &v39, a3);
    outlined destroy of _ViewInputs(&v39);
    LODWORD(v23) = v15;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v21);
      AGSubgraphEndTreeElement();
    }

    v17[2] = v35;
    v17[3] = v36;
    v17[4] = v37;
    v18 = v38;
    v17[0] = v33;
    v17[1] = v34;
    outlined destroy of _ViewInputs(v17);
    v19[2] = v23;
    v19[3] = v24;
    v19[4] = v25;
    v20 = v26;
    v19[0] = v21;
    v19[1] = v22;
    return outlined destroy of _ViewInputs(v19);
  }

  return result;
}

{
  v4 = v3;
  v45 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v4, &v39);
  v8 = v39;
  v9 = v40;
  v10 = DWORD1(v40);
  v11 = *(a2 + 48);
  v35 = *(a2 + 32);
  v36 = v11;
  v37 = *(a2 + 64);
  v38 = *(a2 + 80);
  v12 = *(a2 + 16);
  v33 = *a2;
  v34 = v12;
  if (AGTypeGetKind() - 2 > 3)
  {
    *&v27 = 0;
    *(&v27 + 1) = 0xE000000000000000;
    outlined init with copy of _ViewInputs(a2, &v39);
    _StringGuts.grow(_:)(70);
    v39 = v27;
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](0x7465736E495FLL, 0xE600000000000000);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v39);
    LOBYTE(v39) = v9;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v33, v8, *(&v8 + 1), v9 | (v10 << 32), a1, &v39);
    v13 = v39;
    if ((BYTE8(v40) & 1) == 0)
    {
      LOBYTE(v39) = v9;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v8, *(&v8 + 1), v9, *(&v39 + 1), v40, &type metadata for RoundedRectangle._Inset, type metadata accessor for RoundedRectangle._Inset.Type);
    }

    outlined consume of DynamicPropertyCache.Fields.Layout(v8, *(&v8 + 1), v9);
    type metadata accessor for _ShapeView<RoundedRectangle._Inset, ForegroundStyle>(0);
    v29 = v35;
    v30 = v36;
    v31 = v37;
    v32 = v38;
    v27 = v33;
    v28 = v34;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      AGSubgraphBeginTreeElement();
    }

    v23 = v29;
    v24 = v30;
    v25 = v31;
    v26 = v32;
    v21 = v27;
    v22 = v28;
    v15 = v29;
    LODWORD(v23) = 0;
    v44 = v32;
    v42 = v30;
    v43 = v31;
    v39 = v27;
    v40 = v28;
    v41 = v23;
    outlined init with copy of _ViewInputs(&v27, v19);
    outlined init with copy of _ViewInputs(&v39, v19);
    _s7SwiftUI10_ShapeViewV05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyACyxq_GG_AA01_D6InputsVtFZAA16RoundedRectangleV6_InsetV_AA15ForegroundStyleVTt2B5(v13, &v39, a3);
    outlined destroy of _ViewInputs(&v39);
    LODWORD(v23) = v15;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v21);
      AGSubgraphEndTreeElement();
    }

    v17[2] = v35;
    v17[3] = v36;
    v17[4] = v37;
    v18 = v38;
    v17[0] = v33;
    v17[1] = v34;
    outlined destroy of _ViewInputs(v17);
    v19[2] = v23;
    v19[3] = v24;
    v19[4] = v25;
    v20 = v26;
    v19[0] = v21;
    v19[1] = v22;
    return outlined destroy of _ViewInputs(v19);
  }

  return result;
}

{
  v4 = v3;
  v45 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v4, &v39);
  v8 = v39;
  v9 = v40;
  v10 = DWORD1(v40);
  v11 = *(a2 + 48);
  v35 = *(a2 + 32);
  v36 = v11;
  v37 = *(a2 + 64);
  v38 = *(a2 + 80);
  v12 = *(a2 + 16);
  v33 = *a2;
  v34 = v12;
  if (AGTypeGetKind() - 2 > 3)
  {
    *&v27 = 0;
    *(&v27 + 1) = 0xE000000000000000;
    outlined init with copy of _ViewInputs(a2, &v39);
    _StringGuts.grow(_:)(70);
    v39 = v27;
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](0x4772616C75676E41, 0xEF746E6569646172);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v39);
    LOBYTE(v39) = v9;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v33, v8, *(&v8 + 1), v9 | (v10 << 32), a1, &v39);
    v13 = v39;
    if ((BYTE8(v40) & 1) == 0)
    {
      LOBYTE(v39) = v9;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v8, *(&v8 + 1), v9, *(&v39 + 1), v40, &type metadata for AngularGradient, type metadata accessor for AngularGradient.Type);
    }

    outlined consume of DynamicPropertyCache.Fields.Layout(v8, *(&v8 + 1), v9);
    type metadata accessor for _ShapeView<Rectangle, AngularGradient>(0);
    v29 = v35;
    v30 = v36;
    v31 = v37;
    v32 = v38;
    v27 = v33;
    v28 = v34;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      AGSubgraphBeginTreeElement();
    }

    v23 = v29;
    v24 = v30;
    v25 = v31;
    v26 = v32;
    v21 = v27;
    v22 = v28;
    v15 = v29;
    LODWORD(v23) = 0;
    v44 = v32;
    v42 = v30;
    v43 = v31;
    v39 = v27;
    v40 = v28;
    v41 = v23;
    outlined init with copy of _ViewInputs(&v27, v19);
    outlined init with copy of _ViewInputs(&v39, v19);
    _s7SwiftUI10_ShapeViewV05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyACyxq_GG_AA01_D6InputsVtFZAA9RectangleV_AA15AngularGradientVTt2B5(v13, &v39, a3);
    outlined destroy of _ViewInputs(&v39);
    LODWORD(v23) = v15;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v21);
      AGSubgraphEndTreeElement();
    }

    v17[2] = v35;
    v17[3] = v36;
    v17[4] = v37;
    v18 = v38;
    v17[0] = v33;
    v17[1] = v34;
    outlined destroy of _ViewInputs(v17);
    v19[2] = v23;
    v19[3] = v24;
    v19[4] = v25;
    v20 = v26;
    v19[0] = v21;
    v19[1] = v22;
    return outlined destroy of _ViewInputs(v19);
  }

  return result;
}

{
  v4 = v3;
  v45 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v4, &v39);
  v8 = v39;
  v9 = v40;
  v10 = DWORD1(v40);
  v11 = *(a2 + 48);
  v35 = *(a2 + 32);
  v36 = v11;
  v37 = *(a2 + 64);
  v38 = *(a2 + 80);
  v12 = *(a2 + 16);
  v33 = *a2;
  v34 = v12;
  if (AGTypeGetKind() - 2 > 3)
  {
    *&v27 = 0;
    *(&v27 + 1) = 0xE000000000000000;
    outlined init with copy of _ViewInputs(a2, &v39);
    _StringGuts.grow(_:)(70);
    v39 = v27;
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](0x72476C6169646152, 0xEE00746E65696461);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v39);
    LOBYTE(v39) = v9;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v33, v8, *(&v8 + 1), v9 | (v10 << 32), a1, &v39);
    v13 = v39;
    if ((BYTE8(v40) & 1) == 0)
    {
      LOBYTE(v39) = v9;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v8, *(&v8 + 1), v9, *(&v39 + 1), v40, &type metadata for RadialGradient, type metadata accessor for RadialGradient.Type);
    }

    outlined consume of DynamicPropertyCache.Fields.Layout(v8, *(&v8 + 1), v9);
    type metadata accessor for _ShapeView<Rectangle, RadialGradient>(0);
    v29 = v35;
    v30 = v36;
    v31 = v37;
    v32 = v38;
    v27 = v33;
    v28 = v34;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      AGSubgraphBeginTreeElement();
    }

    v23 = v29;
    v24 = v30;
    v25 = v31;
    v26 = v32;
    v21 = v27;
    v22 = v28;
    v15 = v29;
    LODWORD(v23) = 0;
    v44 = v32;
    v42 = v30;
    v43 = v31;
    v39 = v27;
    v40 = v28;
    v41 = v23;
    outlined init with copy of _ViewInputs(&v27, v19);
    outlined init with copy of _ViewInputs(&v39, v19);
    _s7SwiftUI10_ShapeViewV05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyACyxq_GG_AA01_D6InputsVtFZAA9RectangleV_AA14RadialGradientVTt2B5(v13, &v39, a3);
    outlined destroy of _ViewInputs(&v39);
    LODWORD(v23) = v15;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v21);
      AGSubgraphEndTreeElement();
    }

    v17[2] = v35;
    v17[3] = v36;
    v17[4] = v37;
    v18 = v38;
    v17[0] = v33;
    v17[1] = v34;
    outlined destroy of _ViewInputs(v17);
    v19[2] = v23;
    v19[3] = v24;
    v19[4] = v25;
    v20 = v26;
    v19[0] = v21;
    v19[1] = v22;
    return outlined destroy of _ViewInputs(v19);
  }

  return result;
}

{
  v4 = v3;
  v45 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v4, &v39);
  v8 = v39;
  v9 = v40;
  v10 = DWORD1(v40);
  v11 = *(a2 + 48);
  v35 = *(a2 + 32);
  v36 = v11;
  v37 = *(a2 + 64);
  v38 = *(a2 + 80);
  v12 = *(a2 + 16);
  v33 = *a2;
  v34 = v12;
  if (AGTypeGetKind() - 2 > 3)
  {
    *&v27 = 0;
    *(&v27 + 1) = 0xE000000000000000;
    outlined init with copy of _ViewInputs(a2, &v39);
    _StringGuts.grow(_:)(70);
    v39 = v27;
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](0x646172476873654DLL, 0xEC000000746E6569);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v39);
    LOBYTE(v39) = v9;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v33, v8, *(&v8 + 1), v9 | (v10 << 32), a1, &v39);
    v13 = v39;
    if ((BYTE8(v40) & 1) == 0)
    {
      LOBYTE(v39) = v9;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v8, *(&v8 + 1), v9, *(&v39 + 1), v40, &type metadata for MeshGradient, type metadata accessor for MeshGradient.Type);
    }

    outlined consume of DynamicPropertyCache.Fields.Layout(v8, *(&v8 + 1), v9);
    type metadata accessor for _ShapeView<Rectangle, MeshGradient>(0);
    v29 = v35;
    v30 = v36;
    v31 = v37;
    v32 = v38;
    v27 = v33;
    v28 = v34;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      AGSubgraphBeginTreeElement();
    }

    v23 = v29;
    v24 = v30;
    v25 = v31;
    v26 = v32;
    v21 = v27;
    v22 = v28;
    v15 = v29;
    LODWORD(v23) = 0;
    v44 = v32;
    v42 = v30;
    v43 = v31;
    v39 = v27;
    v40 = v28;
    v41 = v23;
    outlined init with copy of _ViewInputs(&v27, v19);
    outlined init with copy of _ViewInputs(&v39, v19);
    _s7SwiftUI10_ShapeViewV05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyACyxq_GG_AA01_D6InputsVtFZAA9RectangleV_AA12MeshGradientVTt2B5(v13, &v39, a3);
    outlined destroy of _ViewInputs(&v39);
    LODWORD(v23) = v15;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v21);
      AGSubgraphEndTreeElement();
    }

    v17[2] = v35;
    v17[3] = v36;
    v17[4] = v37;
    v18 = v38;
    v17[0] = v33;
    v17[1] = v34;
    outlined destroy of _ViewInputs(v17);
    v19[2] = v23;
    v19[3] = v24;
    v19[4] = v25;
    v20 = v26;
    v19[0] = v21;
    v19[1] = v22;
    return outlined destroy of _ViewInputs(v19);
  }

  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay7SwiftUI20DynamicPropertyCacheV12TaggedFieldsVG_Si3tag_AF01_fG6BufferV5linksts5NeverOTg503_s7d5UI22_fgl5V9addj37_9container6inputs10baseOffsetyAA0cD5h65V0G0V_AA11_GraphValueVyxGAA01_M6InputsVzSitlFSi3tag_AC5linkstAI06iW79VXEfU_AA23TranslationKickModifier33_02B8A9C041E17C70E13F37D6E2D14302LLVySiG_TG5AF01_yZ0VyAF23TranslationKickModifier33_02B8A9C041E17C70E13F37D6E2D14302LLVySiGGAF01_Y6InputsVTf1cn_nTm(uint64_t a1, int a2, uint64_t a3, unint64_t *a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void, uint64_t, uint64_t))
{
  v7 = *(a1 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v41 = MEMORY[0x1E69E7CC0];
    v35 = v7;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
    v12 = v35;
    v13 = 0;
    v8 = v41;
    v36 = a1 + 32;
    do
    {
      v14 = (v36 + 16 * v13);
      v15 = v14[1];
      v37 = *v14;
      v16 = *(v15 + 16);
      if (v16)
      {

        v17 = v15 + 40;
        v18 = v16;
        do
        {
          (*(*v17 + 16))();
          v17 += 32;
          --v18;
        }

        while (v18);
        type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(0, a4, a5, a6, a7);
        v20 = v19;
        v39 = 0;
        v40 = 0;
        v21 = (v15 + 48);
        do
        {
          v22 = *(v21 - 1);
          v23 = *v21;
          v21 += 4;
          v38 = a2;
          (*(v22 + 8))(&v39, &v38, v23, a3, v20);
          --v16;
        }

        while (v16);

        v24 = v39;
        v25 = v40;
        v12 = v35;
      }

      else
      {

        v24 = 0;
        v25 = 0;
      }

      v41 = v8;
      v27 = *(v8 + 16);
      v26 = *(v8 + 24);
      if (v27 >= v26 >> 1)
      {
        v30 = v25;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1);
        v25 = v30;
        v12 = v35;
        v8 = v41;
      }

      ++v13;
      *(v8 + 16) = v27 + 1;
      v28 = (v8 + 24 * v27);
      v28[4] = v37;
      v28[5] = v24;
      v28[6] = v25;
    }

    while (v13 != v12);
  }

  return v8;
}

void _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay7SwiftUI20DynamicPropertyCacheV12TaggedFieldsVG_Si3tag_AF01_fG6BufferV5linksts5NeverOTg503_s7d5UI22_fgl5V9addj37_9container6inputs10baseOffsetyAA0cD5h65V0G0V_AA11_GraphValueVyxGAA01_M6InputsVzSitlFSi3tag_AC5linkstAI06iW29VXEfU_AA14LinearGradientV_TG5AF01_yZ0VyAF14LinearGradientVGAF01_Y6InputsVTf1cn_nTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    v9 = a2;
    v23 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
    v11 = v23;
    for (i = (a1 + 40); ; i += 2)
    {
      v13 = *(i - 1);
      v14 = *i;

      specialized closure #1 in _DynamicPropertyBuffer.addFields<A>(_:container:inputs:baseOffset:)(v13, v14, v9, a3, a4, &v21);
      if (v5)
      {
        break;
      }

      v5 = 0;

      v15 = v21;
      v16 = v22;
      v23 = v11;
      v18 = *(v11 + 16);
      v17 = *(v11 + 24);
      if (v18 >= v17 >> 1)
      {
        v20 = v21;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
        v15 = v20;
        v11 = v23;
      }

      *(v11 + 16) = v18 + 1;
      v19 = v11 + 24 * v18;
      *(v19 + 32) = v15;
      *(v19 + 48) = v16;
      if (!--v6)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay7SwiftUI20DynamicPropertyCacheV12TaggedFieldsVG_Si3tag_AF01_fG6BufferV5linksts5NeverOTg503_s7d5UI22_fgl5V9addj37_9container6inputs10baseOffsetyAA0cD5h65V0G0V_AA11_GraphValueVyxGAA01_M6InputsVzSitlFSi3tag_AC5linkstAI06iW149VXEfU_AA21_GlassEffectContainerVyAA15ModifiedContentVyAA014_ViewModifier_W0VyAA0st5LocalY033_3DF70D9D9D7473F4D189A049B764CFEFLLVGAA0stuY0A0_LLVGG_TG5AF01_yZ0VyAF21_GlassEffectContainerVyAF15ModifiedContentVyAF21_ViewModifier_ContentVyAF24GlassEffectLocalModifier33_3DF70D9D9D7473F4D189A049B764CFEFLLVGAF28GlassEffectContainerModifierA0_LLVGGGAF01_Y6InputsVTf1cn_n(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v27 = *(a1 + 16);
    v33 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    v8 = v27;
    v9 = 0;
    v4 = v33;
    v28 = a1 + 32;
    do
    {
      v10 = (v28 + 16 * v9);
      v11 = v10[1];
      v29 = *v10;
      v12 = *(v11 + 16);
      if (v12)
      {

        v13 = v11 + 40;
        v14 = v12;
        do
        {
          (*(*v13 + 16))();
          v13 += 32;
          --v14;
        }

        while (v14);
        type metadata accessor for _GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>(0);
        v16 = v15;
        v31 = 0;
        v32 = 0;
        v17 = (v11 + 48);
        do
        {
          v18 = *(v17 - 1);
          v19 = *v17;
          v17 += 4;
          v30 = a2;
          (*(v18 + 8))(&v31, &v30, v19, a3, v16);
          --v12;
        }

        while (v12);

        v20 = v31;
        v21 = v32;
        v8 = v27;
      }

      else
      {

        v20 = 0;
        v21 = 0;
      }

      v33 = v4;
      v23 = *(v4 + 16);
      v22 = *(v4 + 24);
      if (v23 >= v22 >> 1)
      {
        v26 = v21;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1);
        v21 = v26;
        v8 = v27;
        v4 = v33;
      }

      ++v9;
      *(v4 + 16) = v23 + 1;
      v24 = (v4 + 24 * v23);
      v24[4] = v29;
      v24[5] = v20;
      v24[6] = v21;
    }

    while (v9 != v8);
  }

  return v4;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay7SwiftUI20DynamicPropertyCacheV12TaggedFieldsVG_Si3tag_AF01_fG6BufferV5linksts5NeverOTg503_s7d5UI22_fgl5V9addj37_9container6inputs10baseOffsetyAA0cD5h65V0G0V_AA11_GraphValueVyxGAA01_M6InputsVzSitlFSi3tag_AC5linkstAI06iW65VXEfU_AA13GlassItemView33_D12F2F25A0BD65FFBD3A7636B60067DFLLV_TG5AF01_yZ0VyAF13GlassItemView33_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAF01_Y6InputsVTf1cn_nTm(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v25 = v5;
    v33 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
    v10 = v25;
    v11 = 0;
    result = v33;
    v26 = a1 + 32;
    do
    {
      v12 = (v26 + 16 * v11);
      v13 = v12[1];
      v27 = *v12;
      v28 = result;
      v14 = *(v13 + 16);
      if (v14)
      {

        v15 = v13 + 40;
        v16 = v14;
        do
        {
          (*(*v15 + 16))();
          v15 += 32;
          --v16;
        }

        while (v16);
        v31 = 0;
        v32 = 0;
        v17 = (v13 + 48);
        do
        {
          v18 = *(v17 - 1);
          v19 = *v17;
          v17 += 4;
          v30 = a2;
          (*(v18 + 8))(&v31, &v30, v19, a3, a4);
          --v14;
        }

        while (v14);

        v20 = v31;
        v21 = v32;
        v10 = v25;
      }

      else
      {

        v20 = 0;
        v21 = 0;
      }

      result = v28;
      v33 = v28;
      v23 = *(v28 + 16);
      v22 = *(v28 + 24);
      if (v23 >= v22 >> 1)
      {
        v29 = v21;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1);
        v21 = v29;
        v10 = v25;
        result = v33;
      }

      ++v11;
      *(result + 16) = v23 + 1;
      v24 = (result + 24 * v23);
      v24[4] = v27;
      v24[5] = v20;
      v24[6] = v21;
    }

    while (v11 != v10);
  }

  return result;
}

void specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(uint64_t a1, char *a2, uint64_t a3, uint64_t *a4, char *a5, unint64_t a6)
{
  specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, a2, a3, a4, a5, a6, &lazy cache variable for type metadata for TranslationKickModifier<Int>, MEMORY[0x1E69E6540], type metadata accessor for TranslationKickModifier, &lazy cache variable for type metadata for TranslationKickModifier<Int>.Type);
}

{
  specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, a2, a3, a4, a5, a6, &lazy cache variable for type metadata for ScheduledAnimationModifier<Int>, MEMORY[0x1E69E6550], type metadata accessor for ScheduledAnimationModifier, &lazy cache variable for type metadata for ScheduledAnimationModifier<Int>.Type);
}

{
  specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, a2, a3, a4, a5, a6, &lazy cache variable for type metadata for ScalePulseModifier<Int>, MEMORY[0x1E69E6550], type metadata accessor for ScalePulseModifier, &lazy cache variable for type metadata for ScalePulseModifier<Int>.Type);
}

void specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(unsigned int a1, char *a2, uint64_t a3, uint64_t *a4, char *a5, unint64_t a6, unint64_t *a7, char *Counter, uint64_t (*a9)(void, uint64_t, uint64_t), unint64_t *a10)
{
  v88 = a4;
  v79 = a1;
  v100 = *MEMORY[0x1E69E9840];
  v87 = type metadata accessor for OSSignpostID();
  v16 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v89 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v60 - v19;
  if (one-time initialization token for linkCreate != -1)
  {
LABEL_73:
    swift_once();
  }

  v21 = byte_1ED53762A;
  if (byte_1ED53762A >= 2u)
  {
    v76 = static Signpost.linkCreate;
    v72 = word_1ED537628;
    LODWORD(v22) = HIBYTE(word_1ED537628);
    if (byte_1ED53762A == 2)
    {
      if ((_SwiftUIIsAppleInternalBuild() & 1) == 0)
      {
        return;
      }

      goto LABEL_12;
    }

    if ((word_1ED537628 & 0x100) == 0)
    {
      v86 = a6;
      static os_signpost_type_t.event.getter();
      a6 = v86;
      if (!kdebug_is_enabled())
      {
        return;
      }

      goto LABEL_12;
    }

    static os_signpost_type_t.event.getter();
    if (kdebug_is_enabled())
    {
      v73 = v21;
      if (one-time initialization token for _signpostLog != -1)
      {
LABEL_76:
        swift_once();
      }

      v23 = OS_os_log.signpostsEnabled.getter();
      v21 = v73;
      if (v23)
      {
LABEL_12:
        v86 = a6;
        v73 = v21;
        v71 = v20;
        v69 = a5;
        v70 = a2;
        v20 = a9;
        type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(0, a7, MEMORY[0x1E69E6530], Counter, a9);
        *&v96 = v24;
        type metadata accessor for ScalePulseModifier<Int>.Type(0, a10, a7, Counter, a9);
        v67 = String.init<A>(describing:)();
        v26 = v25;
        a6 = v79;
        v66 = specialized static Tracing.libraryName(defining:)();
        v28 = v27;
        v29 = AGGraphGetAttributeGraph();
        Counter = AGGraphGetCounter();

        if (v88)
        {
LABEL_15:

          return;
        }

        v63 = Counter;
        v64 = v28;
        v65 = v26;
        v68 = v22;
        a7 = HIDWORD(v86);
        a2 = v70;
        outlined copy of DynamicPropertyCache.Fields.Layout(v70, a3, 0);
        v22 = v69;
        v30 = v73;
        if (!a7)
        {
LABEL_14:

          goto LABEL_15;
        }

        v31 = v16;
        v16 = v76;
        if (v76 == 20)
        {
          v32 = 3;
        }

        else
        {
          v32 = 4;
        }

        if (!v69)
        {
          __break(1u);
          return;
        }

        v33 = 0;
        v34 = 0;
        v75 = a2 + 32;
        v60 = v76 >> 14;
        v61 = bswap32(v76);
        a3 = v61 | v60 & 0x3FFFC;
        v85 = (v31 + 16);
        v82 = v32;
        v81 = 16 * v32;
        v86 = v31 + 8;
        v62 = xmmword_18DDACAA0;
        v74 = a7;
        v80 = v76;
        while (1)
        {
          a5 = &v22[v33];
          if (v34 + 1 == a7)
          {
            v35 = 0;
          }

          else
          {
            v35 = *(a5 + 2) + v33;
          }

          v36 = *(a2 + 2);
          if (v34 == v36)
          {
            goto LABEL_14;
          }

          if (v34 >= v36)
          {
            __break(1u);
LABEL_75:
            __break(1u);
            goto LABEL_76;
          }

          v77 = v34 + 1;
          v78 = v35;
          v20 = *&v75[32 * v34 + 16];
          v37 = static os_signpost_type_t.event.getter();
          if (v30 >= 2)
          {
            Counter = v37;
            if (v30 == 2)
            {
              if ((_SwiftUIIsAppleInternalBuild() & 1) == 0)
              {
                goto LABEL_69;
              }
            }

            else
            {
              static os_signpost_type_t.event.getter();
              if (v68)
              {
                if ((kdebug_is_enabled() & 1) == 0)
                {
                  goto LABEL_69;
                }

                if (one-time initialization token for _signpostLog != -1)
                {
                  swift_once();
                }

                v38 = OS_os_log.signpostsEnabled.getter();
                v30 = v73;
                if ((v38 & 1) == 0)
                {
                  goto LABEL_69;
                }
              }

              else if (!kdebug_is_enabled())
              {
                goto LABEL_69;
              }
            }

            static OSSignpostID.exclusive.getter();
            _ss23_ContiguousArrayStorageCys7CVarArg_pGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
            a2 = a6;
            a6 = swift_allocObject();
            *(a6 + 16) = v62;
            a7 = _typeName(_:qualified:)();
            v40 = v39;
            v22 = MEMORY[0x1E69E6158];
            *(a6 + 56) = MEMORY[0x1E69E6158];
            lazy protocol witness table accessor for type String and conformance String();
            *(a6 + 32) = a7;
            *(a6 + 40) = v40;
            v41 = MEMORY[0x1E69E6810];
            *(a6 + 96) = MEMORY[0x1E69E6810];
            v42 = MEMORY[0x1E69E6870];
            *(a6 + 64) = v43;
            *(a6 + 72) = a5;
            *(a6 + 136) = v22;
            *(a6 + 144) = v43;
            v44 = v67;
            *(a6 + 104) = v42;
            *(a6 + 112) = v44;
            *(a6 + 120) = v65;
            *(a6 + 176) = v22;
            *(a6 + 184) = v43;
            *(a6 + 152) = v66;
            *(a6 + 160) = v64;
            *(a6 + 216) = MEMORY[0x1E69E6530];
            *(a6 + 224) = MEMORY[0x1E69E65A8];
            *(a6 + 192) = v20;
            *(a6 + 256) = MEMORY[0x1E69E7668];
            *(a6 + 264) = MEMORY[0x1E69E76D0];
            *(a6 + 232) = a2;
            *(a6 + 296) = v41;
            *(a6 + 304) = v42;
            if (v63 < 0)
            {
              goto LABEL_75;
            }

            *(a6 + 272) = v63;
            v45 = one-time initialization token for _signpostLog;

            v46 = v68;
            if (v45 != -1)
            {
              swift_once();
            }

            v47 = v71;
            if ((v46 & 1) == 0)
            {
              v48 = Counter;
              v83 = *v85;
              v49 = v83(v89, v71, v87);
              v20 = 0;
              LOBYTE(v91[0]) = 1;
              v84 = a6 + 32;
LABEL_45:
              v88 = &v60;
              MEMORY[0x1EEE9AC00](v49);
              a5 = &v60 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
              a2 = a5 + 8;
              v16 = v82;
              v51 = v82;
              v52 = a5 + 8;
              do
              {
                *(v52 - 1) = 0;
                *v52 = 0;
                v52 += 16;
                --v51;
              }

              while (v51);
              a7 = (v84 + 40 * v20);
              while (1)
              {
                v53 = *(a6 + 16);
                if (v20 == v53)
                {
                  LOBYTE(v91[0]) = 0;
LABEL_53:
                  v16 = v80;
                  if (v80 == 20)
                  {
                    OSSignpostID.rawValue.getter();
                  }

                  kdebug_trace();
                  if (a5[8] == 1)
                  {
                    kdebug_trace_string();
                  }

                  if (a5[24] == 1)
                  {
                    kdebug_trace_string();
                  }

                  if (a5[40] == 1)
                  {
                    kdebug_trace_string();
                  }

                  if (v16 != 20 && a5[56] == 1)
                  {
                    kdebug_trace_string();
                  }

                  if (one-time initialization token for continuation != -1)
                  {
                    swift_once();
                  }

                  v56 = v87;
                  v57 = *v86;
                  Counter = v89;
                  (*v86)(v89, v87);
                  v58 = __swift_project_value_buffer(v56, static OSSignpostID.continuation);
                  v49 = v83(Counter, v58, v56);
                  if ((v91[0] & 1) == 0)
                  {
                    Counter = v86;
                    v59 = v87;
                    v57(v89, v87);
                    v57(v71, v59);
                    goto LABEL_68;
                  }

                  goto LABEL_45;
                }

                if (v20 >= v53)
                {
                  break;
                }

                ++v20;
                outlined init with copy of AnyTrackedValue(a7, &v96);
                v54 = v98;
                Counter = v99;
                __swift_project_boxed_opaque_existential_1(&v96, v98);
                *(a2 - 1) = CVarArg.kdebugValue(_:)(a3 | v48, v54, Counter);
                *a2 = v55 & 1;
                a2 += 16;
                __swift_destroy_boxed_opaque_existential_1(&v96);
                a7 += 5;
                if (!--v16)
                {
                  goto LABEL_53;
                }
              }

              __break(1u);
              goto LABEL_73;
            }

            v95 = Counter;
            v93 = _signpostLog;
            v94 = &dword_18D018000;
            v96 = v76;
            v97 = v72;
            v91[0] = "Attached: %{public}@ [ %p ] to %{public}@ (in %{public}@) at offset +%d [%d] (%p)";
            v91[1] = 81;
            v92 = 2;
            v90 = a6;
            specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v95, &v94, &v93, &v96, v71, v91, &v90);
            (*v86)(v47, v87);
LABEL_68:

            a2 = v70;
            v22 = v69;
            a6 = v79;
            v30 = v73;
          }

LABEL_69:
          a7 = v74;
          v34 = v77;
          v33 = v78;
          if (v77 == v74 && !v78)
          {
            goto LABEL_14;
          }
        }
      }
    }
  }
}

void specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(uint64_t a1, unint64_t a2, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  v75 = a5;
  LOBYTE(v7) = a4;
  v10 = a1;
  v97 = *MEMORY[0x1E69E9840];
  v84 = type metadata accessor for OSSignpostID();
  v11 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v86 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v56 - v14;
  if (one-time initialization token for linkCreate != -1)
  {
LABEL_73:
    swift_once();
  }

  v16 = byte_1ED53762A;
  if (byte_1ED53762A >= 2u)
  {
    v74 = static Signpost.linkCreate;
    v71 = word_1ED537628;
    LODWORD(v17) = HIBYTE(word_1ED537628);
    if (byte_1ED53762A == 2)
    {
      if ((_SwiftUIIsAppleInternalBuild() & 1) == 0)
      {
        return;
      }

      goto LABEL_12;
    }

    if ((word_1ED537628 & 0x100) == 0)
    {
      v19 = v11;
      v20 = HIBYTE(word_1ED537628);
      static os_signpost_type_t.event.getter();
      LODWORD(v17) = v20;
      v11 = v19;
      if (!kdebug_is_enabled())
      {
        return;
      }

      goto LABEL_12;
    }

    static os_signpost_type_t.event.getter();
    if (kdebug_is_enabled())
    {
      v68 = v17;
      LODWORD(v17) = v16;
      if (one-time initialization token for _signpostLog != -1)
      {
LABEL_76:
        swift_once();
      }

      v18 = OS_os_log.signpostsEnabled.getter();
      v16 = v17;
      LODWORD(v17) = v68;
      if (v18)
      {
LABEL_12:
        v67 = v16;
        type metadata accessor for _GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>(0);
        *&v93 = v21;
        type metadata accessor for _GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>.Type();
        v65 = String.init<A>(describing:)();
        v70 = v22;
        v64 = specialized static Tracing.libraryName(defining:)();
        v69 = v23;
        v24 = AGGraphGetAttributeGraph();
        Counter = AGGraphGetCounter();

        if (v7)
        {
LABEL_15:

          return;
        }

        v68 = v17;
        v66 = v15;
        v61 = v10;
        v7 = HIDWORD(a6);
        outlined copy of DynamicPropertyCache.Fields.Layout(a2, a3, 0);
        v25 = v67;
        v26 = v75;
        if (!HIDWORD(a6))
        {
LABEL_14:

          goto LABEL_15;
        }

        v77 = v74;
        if (v74 == 20)
        {
          v27 = 3;
        }

        else
        {
          v27 = 4;
        }

        if (!v75)
        {
          __break(1u);
          return;
        }

        v28 = 0;
        v73 = a2 + 32;
        v58 = v74 >> 14;
        v59 = bswap32(v74);
        v10 = v59 | v58 & 0x3FFFC;
        v82 = (v11 + 16);
        v79 = v27;
        v78 = 16 * v27;
        v83 = (v11 + 8);
        LODWORD(a6) = 0;
        v60 = xmmword_18DDACAA0;
        v57 = a2;
        v72 = v7;
        while (1)
        {
          v15 = (v26 + a6);
          if (v28 + 1 == v7)
          {
            a6 = 0;
          }

          else
          {
            a6 = (*(v15 + 2) + a6);
          }

          v29 = *(a2 + 16);
          if (v28 == v29)
          {
            goto LABEL_14;
          }

          if (v28 >= v29)
          {
            __break(1u);
LABEL_75:
            __break(1u);
            goto LABEL_76;
          }

          v76 = v28 + 1;
          v30 = (v73 + 32 * v28);
          a3 = *v30;
          v17 = v30[2];
          v31 = static os_signpost_type_t.event.getter();
          if (v25 >= 2)
          {
            LOBYTE(v7) = v31;
            if (v25 == 2)
            {
              if ((_SwiftUIIsAppleInternalBuild() & 1) == 0)
              {
                goto LABEL_69;
              }
            }

            else
            {
              static os_signpost_type_t.event.getter();
              if (v68)
              {
                if ((kdebug_is_enabled() & 1) == 0)
                {
                  goto LABEL_69;
                }

                if (one-time initialization token for _signpostLog != -1)
                {
                  swift_once();
                }

                v32 = OS_os_log.signpostsEnabled.getter();
                v25 = v67;
                if ((v32 & 1) == 0)
                {
                  goto LABEL_69;
                }
              }

              else if (!kdebug_is_enabled())
              {
                goto LABEL_69;
              }
            }

            v11 = a2;
            v62 = a6;
            static OSSignpostID.exclusive.getter();
            _ss23_ContiguousArrayStorageCys7CVarArg_pGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
            a6 = swift_allocObject();
            *(a6 + 16) = v60;
            v33 = _typeName(_:qualified:)();
            a3 = v34;
            a2 = MEMORY[0x1E69E6158];
            *(a6 + 56) = MEMORY[0x1E69E6158];
            lazy protocol witness table accessor for type String and conformance String();
            *(a6 + 32) = v33;
            *(a6 + 40) = a3;
            v35 = MEMORY[0x1E69E6810];
            *(a6 + 96) = MEMORY[0x1E69E6810];
            v36 = MEMORY[0x1E69E6870];
            *(a6 + 64) = v37;
            *(a6 + 72) = v15;
            *(a6 + 136) = a2;
            *(a6 + 144) = v37;
            v38 = v65;
            *(a6 + 104) = v36;
            *(a6 + 112) = v38;
            *(a6 + 120) = v70;
            *(a6 + 176) = a2;
            *(a6 + 184) = v37;
            *(a6 + 152) = v64;
            *(a6 + 160) = v69;
            *(a6 + 216) = MEMORY[0x1E69E6530];
            *(a6 + 224) = MEMORY[0x1E69E65A8];
            *(a6 + 192) = v17;
            *(a6 + 256) = MEMORY[0x1E69E7668];
            *(a6 + 264) = MEMORY[0x1E69E76D0];
            *(a6 + 232) = v61;
            *(a6 + 296) = v35;
            *(a6 + 304) = v36;
            if (Counter < 0)
            {
              goto LABEL_75;
            }

            *(a6 + 272) = Counter;
            v39 = one-time initialization token for _signpostLog;

            v40 = v68;
            if (v39 != -1)
            {
              swift_once();
            }

            v41 = v66;
            if ((v40 & 1) == 0)
            {
              a2 = v7;
              v80 = *v82;
              v42 = v80(v86, v66, v84);
              v11 = 0;
              LOBYTE(v88[0]) = 1;
              v81 = a6 + 32;
LABEL_45:
              v85 = &v56;
              MEMORY[0x1EEE9AC00](v42);
              v17 = &v56 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
              v44 = v17 + 8;
              v15 = v79;
              v45 = v79;
              v46 = v17 + 8;
              do
              {
                *(v46 - 1) = 0;
                *v46 = 0;
                v46 += 16;
                --v45;
              }

              while (v45);
              v7 = v81 + 40 * v11;
              while (1)
              {
                v47 = *(a6 + 16);
                if (v11 == v47)
                {
                  LOBYTE(v88[0]) = 0;
LABEL_53:
                  v50 = v77;
                  if (v77 == 20)
                  {
                    OSSignpostID.rawValue.getter();
                  }

                  kdebug_trace();
                  if (v17[8] == 1)
                  {
                    kdebug_trace_string();
                  }

                  if (v17[24] == 1)
                  {
                    kdebug_trace_string();
                  }

                  if (v17[40] == 1)
                  {
                    kdebug_trace_string();
                  }

                  if (v50 != 20 && v17[56] == 1)
                  {
                    kdebug_trace_string();
                  }

                  if (one-time initialization token for continuation != -1)
                  {
                    swift_once();
                  }

                  v51 = v84;
                  v52 = *v83;
                  v53 = v86;
                  (*v83)(v86, v84);
                  v54 = __swift_project_value_buffer(v51, static OSSignpostID.continuation);
                  v42 = v80(v53, v54, v51);
                  if ((v88[0] & 1) == 0)
                  {
                    v55 = v84;
                    v52(v86, v84);
                    v52(v66, v55);

                    a2 = v57;
                    v26 = v75;
                    goto LABEL_68;
                  }

                  goto LABEL_45;
                }

                if (v11 >= v47)
                {
                  break;
                }

                ++v11;
                outlined init with copy of AnyTrackedValue(v7, &v93);
                v48 = v95;
                a3 = v96;
                __swift_project_boxed_opaque_existential_1(&v93, v95);
                *(v44 - 1) = CVarArg.kdebugValue(_:)(v10 | a2, v48, a3);
                *v44 = v49 & 1;
                v44 += 16;
                __swift_destroy_boxed_opaque_existential_1(&v93);
                v7 += 40;
                if (!--v15)
                {
                  goto LABEL_53;
                }
              }

              __break(1u);
              goto LABEL_73;
            }

            a2 = v11;
            v92 = v7;
            v90 = _signpostLog;
            v91 = &dword_18D018000;
            v93 = v74;
            v94 = v71;
            v88[0] = "Attached: %{public}@ [ %p ] to %{public}@ (in %{public}@) at offset +%d [%d] (%p)";
            v88[1] = 81;
            v89 = 2;
            v87 = a6;
            specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v92, &v91, &v90, &v93, v66, v88, &v87);
            (*v83)(v41, v84);

LABEL_68:
            v25 = v67;
            LODWORD(a6) = v62;
          }

LABEL_69:
          LODWORD(v7) = v72;
          v28 = v76;
          if (v76 == v72 && !a6)
          {
            goto LABEL_14;
          }
        }
      }
    }
  }
}

{
  v75 = a5;
  LOBYTE(v7) = a4;
  v10 = a1;
  v97 = *MEMORY[0x1E69E9840];
  v84 = type metadata accessor for OSSignpostID();
  v11 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v86 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v56 - v14;
  if (one-time initialization token for linkCreate != -1)
  {
LABEL_73:
    swift_once();
  }

  v16 = byte_1ED53762A;
  if (byte_1ED53762A >= 2u)
  {
    v74 = static Signpost.linkCreate;
    v71 = word_1ED537628;
    LODWORD(v17) = HIBYTE(word_1ED537628);
    if (byte_1ED53762A == 2)
    {
      if ((_SwiftUIIsAppleInternalBuild() & 1) == 0)
      {
        return;
      }

      goto LABEL_12;
    }

    if ((word_1ED537628 & 0x100) == 0)
    {
      v19 = v11;
      v20 = HIBYTE(word_1ED537628);
      static os_signpost_type_t.event.getter();
      LODWORD(v17) = v20;
      v11 = v19;
      if (!kdebug_is_enabled())
      {
        return;
      }

      goto LABEL_12;
    }

    static os_signpost_type_t.event.getter();
    if (kdebug_is_enabled())
    {
      v68 = v17;
      LODWORD(v17) = v16;
      if (one-time initialization token for _signpostLog != -1)
      {
LABEL_76:
        swift_once();
      }

      v18 = OS_os_log.signpostsEnabled.getter();
      v16 = v17;
      LODWORD(v17) = v68;
      if (v18)
      {
LABEL_12:
        v67 = v16;
        type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(0, &lazy cache variable for type metadata for SingleTapGesture<TappableEvent>, &type metadata for TappableEvent, &protocol witness table for TappableEvent, type metadata accessor for SingleTapGesture);
        *&v93 = v21;
        type metadata accessor for SingleTapGesture<TappableEvent>.Type();
        v65 = String.init<A>(describing:)();
        v70 = v22;
        v64 = specialized static Tracing.libraryName(defining:)();
        v69 = v23;
        v24 = AGGraphGetAttributeGraph();
        Counter = AGGraphGetCounter();

        if (v7)
        {
LABEL_15:

          return;
        }

        v68 = v17;
        v66 = v15;
        v61 = v10;
        v7 = HIDWORD(a6);
        outlined copy of DynamicPropertyCache.Fields.Layout(a2, a3, 0);
        v25 = v67;
        v26 = v75;
        if (!HIDWORD(a6))
        {
LABEL_14:

          goto LABEL_15;
        }

        v77 = v74;
        if (v74 == 20)
        {
          v27 = 3;
        }

        else
        {
          v27 = 4;
        }

        if (!v75)
        {
          __break(1u);
          return;
        }

        v28 = 0;
        v73 = a2 + 32;
        v58 = v74 >> 14;
        v59 = bswap32(v74);
        v10 = v59 | v58 & 0x3FFFC;
        v82 = (v11 + 16);
        v79 = v27;
        v78 = 16 * v27;
        v83 = (v11 + 8);
        LODWORD(a6) = 0;
        v60 = xmmword_18DDACAA0;
        v57 = a2;
        v72 = v7;
        while (1)
        {
          v15 = (v26 + a6);
          if (v28 + 1 == v7)
          {
            a6 = 0;
          }

          else
          {
            a6 = (*(v15 + 2) + a6);
          }

          v29 = *(a2 + 16);
          if (v28 == v29)
          {
            goto LABEL_14;
          }

          if (v28 >= v29)
          {
            __break(1u);
LABEL_75:
            __break(1u);
            goto LABEL_76;
          }

          v76 = v28 + 1;
          v30 = (v73 + 32 * v28);
          a3 = *v30;
          v17 = v30[2];
          v31 = static os_signpost_type_t.event.getter();
          if (v25 >= 2)
          {
            LOBYTE(v7) = v31;
            if (v25 == 2)
            {
              if ((_SwiftUIIsAppleInternalBuild() & 1) == 0)
              {
                goto LABEL_69;
              }
            }

            else
            {
              static os_signpost_type_t.event.getter();
              if (v68)
              {
                if ((kdebug_is_enabled() & 1) == 0)
                {
                  goto LABEL_69;
                }

                if (one-time initialization token for _signpostLog != -1)
                {
                  swift_once();
                }

                v32 = OS_os_log.signpostsEnabled.getter();
                v25 = v67;
                if ((v32 & 1) == 0)
                {
                  goto LABEL_69;
                }
              }

              else if (!kdebug_is_enabled())
              {
                goto LABEL_69;
              }
            }

            v11 = a2;
            v62 = a6;
            static OSSignpostID.exclusive.getter();
            _ss23_ContiguousArrayStorageCys7CVarArg_pGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
            a6 = swift_allocObject();
            *(a6 + 16) = v60;
            v33 = _typeName(_:qualified:)();
            a3 = v34;
            a2 = MEMORY[0x1E69E6158];
            *(a6 + 56) = MEMORY[0x1E69E6158];
            lazy protocol witness table accessor for type String and conformance String();
            *(a6 + 32) = v33;
            *(a6 + 40) = a3;
            v35 = MEMORY[0x1E69E6810];
            *(a6 + 96) = MEMORY[0x1E69E6810];
            v36 = MEMORY[0x1E69E6870];
            *(a6 + 64) = v37;
            *(a6 + 72) = v15;
            *(a6 + 136) = a2;
            *(a6 + 144) = v37;
            v38 = v65;
            *(a6 + 104) = v36;
            *(a6 + 112) = v38;
            *(a6 + 120) = v70;
            *(a6 + 176) = a2;
            *(a6 + 184) = v37;
            *(a6 + 152) = v64;
            *(a6 + 160) = v69;
            *(a6 + 216) = MEMORY[0x1E69E6530];
            *(a6 + 224) = MEMORY[0x1E69E65A8];
            *(a6 + 192) = v17;
            *(a6 + 256) = MEMORY[0x1E69E7668];
            *(a6 + 264) = MEMORY[0x1E69E76D0];
            *(a6 + 232) = v61;
            *(a6 + 296) = v35;
            *(a6 + 304) = v36;
            if (Counter < 0)
            {
              goto LABEL_75;
            }

            *(a6 + 272) = Counter;
            v39 = one-time initialization token for _signpostLog;

            v40 = v68;
            if (v39 != -1)
            {
              swift_once();
            }

            v41 = v66;
            if ((v40 & 1) == 0)
            {
              a2 = v7;
              v80 = *v82;
              v42 = v80(v86, v66, v84);
              v11 = 0;
              LOBYTE(v88[0]) = 1;
              v81 = a6 + 32;
LABEL_45:
              v85 = &v56;
              MEMORY[0x1EEE9AC00](v42);
              v17 = &v56 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
              v44 = v17 + 8;
              v15 = v79;
              v45 = v79;
              v46 = v17 + 8;
              do
              {
                *(v46 - 1) = 0;
                *v46 = 0;
                v46 += 16;
                --v45;
              }

              while (v45);
              v7 = v81 + 40 * v11;
              while (1)
              {
                v47 = *(a6 + 16);
                if (v11 == v47)
                {
                  LOBYTE(v88[0]) = 0;
LABEL_53:
                  v50 = v77;
                  if (v77 == 20)
                  {
                    OSSignpostID.rawValue.getter();
                  }

                  kdebug_trace();
                  if (v17[8] == 1)
                  {
                    kdebug_trace_string();
                  }

                  if (v17[24] == 1)
                  {
                    kdebug_trace_string();
                  }

                  if (v17[40] == 1)
                  {
                    kdebug_trace_string();
                  }

                  if (v50 != 20 && v17[56] == 1)
                  {
                    kdebug_trace_string();
                  }

                  if (one-time initialization token for continuation != -1)
                  {
                    swift_once();
                  }

                  v51 = v84;
                  v52 = *v83;
                  v53 = v86;
                  (*v83)(v86, v84);
                  v54 = __swift_project_value_buffer(v51, static OSSignpostID.continuation);
                  v42 = v80(v53, v54, v51);
                  if ((v88[0] & 1) == 0)
                  {
                    v55 = v84;
                    v52(v86, v84);
                    v52(v66, v55);

                    a2 = v57;
                    v26 = v75;
                    goto LABEL_68;
                  }

                  goto LABEL_45;
                }

                if (v11 >= v47)
                {
                  break;
                }

                ++v11;
                outlined init with copy of AnyTrackedValue(v7, &v93);
                v48 = v95;
                a3 = v96;
                __swift_project_boxed_opaque_existential_1(&v93, v95);
                *(v44 - 1) = CVarArg.kdebugValue(_:)(v10 | a2, v48, a3);
                *v44 = v49 & 1;
                v44 += 16;
                __swift_destroy_boxed_opaque_existential_1(&v93);
                v7 += 40;
                if (!--v15)
                {
                  goto LABEL_53;
                }
              }

              __break(1u);
              goto LABEL_73;
            }

            a2 = v11;
            v92 = v7;
            v90 = _signpostLog;
            v91 = &dword_18D018000;
            v93 = v74;
            v94 = v71;
            v88[0] = "Attached: %{public}@ [ %p ] to %{public}@ (in %{public}@) at offset +%d [%d] (%p)";
            v88[1] = 81;
            v89 = 2;
            v87 = a6;
            specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v92, &v91, &v90, &v93, v66, v88, &v87);
            (*v83)(v41, v84);

LABEL_68:
            v25 = v67;
            LODWORD(a6) = v62;
          }

LABEL_69:
          LODWORD(v7) = v72;
          v28 = v76;
          if (v76 == v72 && !a6)
          {
            goto LABEL_14;
          }
        }
      }
    }
  }
}