void _IgnoredByLayoutEffect.animatableData.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v7 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[4], v4, v5);
    specialized _IgnoredByLayoutEffect.animatableData.setter(v3, v7);
    v8 = *(v6 + 8);
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {
    specialized _IgnoredByLayoutEffect.animatableData.setter((*a1)[5], v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

__n128 protocol witness for GeometryEffect.effectValue(size:) in conformance _IgnoredByLayoutEffect<A>@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _IgnoredByLayoutEffect.effectValue(size:)(a1, v5);
  v3 = v5[3];
  *(a2 + 32) = v5[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = v6;
  result = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = result;
  return result;
}

uint64_t protocol witness for Animatable.animatableData.setter in conformance _IgnoredByLayoutEffect<A>(uint64_t a1, uint64_t a2)
{
  specialized _IgnoredByLayoutEffect.animatableData.setter(a1, a2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(*(AssociatedTypeWitness - 8) + 8);

  return v4(a1, AssociatedTypeWitness);
}

void (*protocol witness for Animatable.animatableData.modify in conformance _IgnoredByLayoutEffect<A>(void *a1, uint64_t a2))(uint64_t a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = v2;
  v6[1] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[2] = AssociatedTypeWitness;
  v9 = *(AssociatedTypeWitness - 8);
  v7[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v7[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v7[4] = malloc(*(v9 + 64));
    v11 = malloc(v10);
  }

  v7[5] = v11;
  _IgnoredByLayoutEffect.animatableData.getter(a2);
  return protocol witness for Animatable.animatableData.modify in conformance _IgnoredByLayoutEffect<A>;
}

void protocol witness for Animatable.animatableData.modify in conformance _IgnoredByLayoutEffect<A>(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(*a1 + 16);
  v6 = *(*a1 + 24);
  v7 = *(*a1 + 8);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 32), v4, v5);
    specialized _IgnoredByLayoutEffect.animatableData.setter(v3, v7);
    v8 = *(v6 + 8);
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {
    specialized _IgnoredByLayoutEffect.animatableData.setter(*(*a1 + 40), v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t GeometryEffect.ignoredByLayout()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v5);
  return (*(v4 + 32))(a2, v7, a1);
}

uint64_t specialized _IgnoredByLayoutEffect.animatableData.setter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(*(a2 + 24) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, a1, v6);
  return (*(v4 + 32))(v8, v3, v4);
}

uint64_t MaterialEffectItemConfiguration_V1.material.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return outlined copy of Material?(v2, v3);
}

uint64_t MaterialEffectItemConfiguration_V1.material.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = outlined consume of Material?(*v1, v1[1]);
  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t (*MaterialEffectItemConfiguration_V1.material.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = *v1;
  v4 = v1[1];
  *a1 = *v1;
  a1[1] = v4;
  outlined copy of Material?(v3, v4);
  return MaterialEffectItemConfiguration_V1.material.modify;
}

uint64_t MaterialEffectItemConfiguration_V1.material.modify(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  v5 = *v3;
  v6 = v3[1];
  if (a2)
  {
    outlined copy of Material?(*a1, v2);
    outlined consume of Material?(v5, v6);
    *v3 = v4;
    v3[1] = v2;

    return outlined consume of Material?(v4, v2);
  }

  else
  {
    result = outlined consume of Material?(*v3, v3[1]);
    *v3 = v4;
    v3[1] = v2;
  }

  return result;
}

uint64_t (*MaterialEffectItemConfiguration_V1.tintColor.modify(void *a1))()
{
  v3 = *(v1 + 24);
  a1[1] = v1;
  a1[2] = v3;
  *a1 = v3;

  return MaterialEffectItemConfiguration_V1.tintColor.modify;
}

void MaterialEffectItemConfiguration_V1.tintColor.modify(void *a1, char a2)
{
  v2 = a1[1];
  v3 = *a1;
  if (a2)
  {

    *(v2 + 24) = v3;
  }

  else
  {

    *(v2 + 24) = v3;
  }
}

uint64_t MaterialEffectItemConfiguration_V1.matchedNamespace.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

uint64_t (*MaterialEffectItemConfiguration_V1.matchedNamespace.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  *(a1 + 8) = v2;
  return MaterialEffectItemConfiguration_V1.matchedNamespace.modify;
}

uint64_t MaterialEffectItemConfiguration_V1.matchedNamespace.modify(uint64_t result)
{
  v1 = *(result + 16);
  v2 = *(result + 8);
  *(v1 + 48) = *result;
  *(v1 + 56) = v2;
  return result;
}

uint64_t (*MaterialEffectItemConfiguration_V1.matchedProperties.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 60);
  return MaterialEffectItemConfiguration_V1.matchedProperties.modify;
}

__n128 (*MaterialEffectItemConfiguration_V1.matchedAnchor.modify(uint64_t a1))(__n128 *a1)
{
  *(a1 + 16) = v1;
  *a1 = *(v1 + 64);
  return MaterialEffectItemConfiguration_V1.matchedAnchor.modify;
}

__n128 MaterialEffectItemConfiguration_V1.matchedAnchor.modify(__n128 *a1)
{
  result = *a1;
  *(a1[1].n128_u64[0] + 64) = *a1;
  return result;
}

uint64_t (*MaterialEffectItemConfiguration_V1.isSource.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 80);
  return MaterialEffectItemConfiguration_V1.isSource.modify;
}

__n128 MaterialEffectItemConfiguration_V1.init()@<Q0>(uint64_t a1@<X8>)
{
  type metadata accessor for _AnyShapeBox<Capsule>(0);
  v2 = swift_allocObject();
  *(v2 + 16) = 1;
  *a1 = xmmword_18DDA6AB0;
  *(a1 + 16) = v2;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 1;
  *(a1 + 60) = 3;
  __asm { FMOV            V0.2D, #0.5 }

  *(a1 + 64) = result;
  *(a1 + 80) = 0;
  return result;
}

void MaterialEffectItemConfiguration_V1.setShape<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, v6);
  v10 = AnyShape.init<A>(_:)(v8, a2, a3);

  *(v3 + 16) = v10;
}

void MaterialEffectItemConfiguration_V1.setGroupID<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, v4);
  AnyHashable2.init<A>(_:)(v6, a2, &v10);
  v8 = v10;

  *(v2 + 32) = v8;
}

void MaterialEffectItemConfiguration_V1.setSourceID<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, v4);
  AnyHashable2.init<A>(_:)(v6, a2, &v10);
  v8 = v10;

  *(v2 + 40) = v8;
}

uint64_t View.materialEffectItem_v1<A>(_:smoothness:in:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *a1;
  v14 = a1[1];
  type metadata accessor for _AnyShapeBox<Capsule>(0);
  v15 = swift_allocObject();
  *(v15 + 16) = 1;
  LOBYTE(v31[0]) = 1;
  *v24 = v15;
  memset(&v24[8], 0, 32);
  v24[40] = 1;
  *&v24[44] = 3;
  __asm { FMOV            V0.2D, #0.5 }

  v25 = _Q0;
  v26 = 0;
  outlined copy of Material?(v13, v14);
  outlined consume of Material?(0, 0xFFu);
  *&v23 = v13;
  *(&v23 + 1) = v14;
  MaterialEffectItemConfiguration_V1.setShape<A>(_:)(a2, a4, a6);
  v27[3] = *&v24[32];
  v27[4] = v25;
  v28 = 0;
  v27[0] = v23;
  v27[1] = *v24;
  v27[2] = *&v24[16];
  outlined init with copy of MaterialEffectItemConfiguration_V1(v27, v31);
  View.materialEffectItem_v1(_:)(&v23, a3, a5, v21, a7);
  v29[2] = *&v24[16];
  v29[3] = *&v24[32];
  v29[4] = v25;
  v30 = v26;
  v29[0] = v23;
  v29[1] = *v24;
  outlined destroy of MaterialEffectItemConfiguration_V1(v29);
  v31[2] = *&v24[16];
  v31[3] = *&v24[32];
  v31[4] = v25;
  v32 = v26;
  v31[0] = v23;
  v31[1] = *v24;
  return outlined destroy of MaterialEffectItemConfiguration_V1(v31);
}

uint64_t View.materialEffectItem_v1(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v51 = a3;
  v5 = a2;
  v56 = a5;
  v50 = type metadata accessor for ModifiedContent(255, a2, &type metadata for GlassEffectModifier, a4);
  v7 = type metadata accessor for StaticIf(0, &type metadata for GlassEnabledPredicate, v50, v5);
  v53 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v43 - v8;
  v11 = type metadata accessor for ModifiedContent(0, v7, &type metadata for GlassEffectIDModifier, v10);
  v54 = *(v11 - 8);
  v55 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v52 = &v43 - v12;
  v13 = *a1;
  v14 = *(a1 + 8);
  v15 = *(a1 + 56);
  if (*(a1 + 40) && (v15 & 1) == 0)
  {
    v48 = 0;
    v49 = *(a1 + 60);
    v16 = *(a1 + 72);
    v47 = *(a1 + 64);
    v46 = v16;
  }

  else
  {
    v49 = 0;
    v47 = 0;
    v46 = 0;
    v48 = 1;
  }

  v45 = v15;
  v17 = *(a1 + 16);
  v18 = *(a1 + 32);
  v44 = *(a1 + 48);
  if (v14 == 255)
  {
    v43 = v9;
    v22 = v5;
    v23 = v13;
    if (one-time initialization token for regular != -1)
    {
      swift_once();
    }

    v20 = static Material.regular;
    v21 = byte_1ED520070;
    v19 = dword_1ED520074;
    outlined copy of Material.ID(static Material.regular, byte_1ED520070);
    v13 = v23;
    v5 = v22;
    v9 = v43;
  }

  else
  {
    v19 = HIDWORD(v14);
    v20 = v13;
    v21 = v14;
  }

  v60 = v20;
  v61 = v21 | (v19 << 32) | 0x40000000;
  LOBYTE(v62) = 5;
  v63 = 0;
  v64 = 0;
  v65 = 0;
  v59[2] = v17;
  outlined copy of Material?(v13, v14);
  lazy protocol witness table accessor for type AnyShape and conformance AnyShape();
  v24 = v51;
  View._glassEffect<A>(_:in:isEnabled:)(&v60, v14 != 255, v5, &type metadata for AnyShape, v51, v25, v9);
  outlined consume of _Glass.Variant.Role(v60, v61);

  v60 = v18;
  if (v45)
  {
    v29 = 0;
  }

  else
  {
    v29 = v44;
  }

  type metadata accessor for UncheckedSendable<AnyHashable2>(0, v26, v27, v28);
  v31 = v30;
  v59[0] = v24;
  v59[1] = &protocol witness table for GlassEffectModifier;

  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v50, v59);
  v58[0] = &protocol witness table for GlassEnabledPredicate;
  v58[1] = v33;
  v58[2] = v24;
  swift_getWitnessTable(protocol conformance descriptor for <> StaticIf<A, B, C>, v7, v58, WitnessTable);
  v35 = v34;
  lazy protocol witness table accessor for type UncheckedSendable<AnyHashable2> and conformance <A> UncheckedSendable<A>(v34, v36, v37, v38);
  v39 = v52;
  View._glassEffectID<A>(_:in:)(&v60, v29, v7, v31, v35, v40);

  (*(v53 + 8))(v9, v7);
  v60 = v49;
  v61 = v47;
  v62 = v46;
  LOBYTE(v63) = v48;
  v57[0] = v35;
  v57[1] = &protocol witness table for GlassEffectIDModifier;
  v41 = v55;
  swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v55, v57);
  View._glassEffectTransition(_:isEnabled:)();
  return (*(v54 + 8))(v39, v41);
}

uint64_t MaterialEffectContainer_V1<A>.init(content:)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X2>, void *a3@<X8>, uint64_t a4@<X3>)
{
  *a3 = 0x3FF0000000000000;
  type metadata accessor for MaterialEffectContainer_V1(0, a2, a2, a4);
  return a1();
}

uint64_t MaterialEffectContainer_V1<A>.init(smoothness:content:)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X2>, double *a3@<X8>, double a4@<D0>, uint64_t a5@<X3>)
{
  *a3 = a4;
  type metadata accessor for MaterialEffectContainer_V1(0, a2, a2, a5);
  return a1();
}

uint64_t MaterialEffectContainer_V1<A>.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  v7 = type metadata accessor for _GlassEffectContainer(0, v6, a2, a4);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17[-v12];
  v14 = *v4;
  v18 = v6;
  v19 = a2;
  v20 = v4;
  _GlassEffectContainer.init(smoothness:content:)(v14, 0, partial apply for closure #1 in MaterialEffectContainer_V1<A>.body.getter, v17, v6, a2, v10);
  swift_getWitnessTable(protocol conformance descriptor for _GlassEffectContainer<A>, v7);
  static ViewBuilder.buildExpression<A>(_:)();
  v15 = *(v8 + 8);
  v15(v10, v7);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v15)(v13, v7);
}

uint64_t closure #1 in MaterialEffectContainer_V1<A>.body.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MaterialEffectContainer_V1(0, v6, v7, v8);
  static ViewBuilder.buildExpression<A>(_:)();
  static ViewBuilder.buildExpression<A>(_:)();
  return (*(v3 + 8))(v5, a2);
}

void type metadata accessor for UncheckedSendable<AnyHashable2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for UncheckedSendable<AnyHashable2>)
  {
    v4 = type metadata accessor for UncheckedSendable(0, &type metadata for AnyHashable2, a3, a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for UncheckedSendable<AnyHashable2>);
    }
  }
}

void lazy protocol witness table accessor for type UncheckedSendable<AnyHashable2> and conformance <A> UncheckedSendable<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy protocol witness table cache variable for type UncheckedSendable<AnyHashable2> and conformance <A> UncheckedSendable<A>)
  {
    v10[3] = v4;
    v10[4] = v5;
    type metadata accessor for UncheckedSendable<AnyHashable2>(255, a2, a3, a4);
    v7 = v6;
    lazy protocol witness table accessor for type AnyHashable2 and conformance AnyHashable2();
    v10[0] = v8;
    swift_getWitnessTable(protocol conformance descriptor for <A> UncheckedSendable<A>, v7, v10);
    atomic_store(v9, &lazy protocol witness table cache variable for type UncheckedSendable<AnyHashable2> and conformance <A> UncheckedSendable<A>);
  }
}

uint64_t type metadata completion function for MaterialEffectContainer_V1(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

double destroy for MaterialEffectItemConfiguration_V1(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 != 255)
  {
    outlined consume of Material.ID(*a1, v1);
  }

  return result;
}

uint64_t initializeWithCopy for MaterialEffectItemConfiguration_V1(uint64_t a1, uint64_t *a2)
{
  v4 = a2[1];
  if (*(a2 + 8) == 0xFF)
  {
    *a1 = *a2;
  }

  else
  {
    v5 = *a2;
    outlined copy of Material.ID(*a2, a2[1]);
    *a1 = v5;
    *(a1 + 8) = v4;
    *(a1 + 12) = HIDWORD(v4);
  }

  v6 = a2[3];
  *(a1 + 16) = a2[2];
  *(a1 + 24) = v6;
  v7 = a2[5];
  *(a1 + 32) = a2[4];
  *(a1 + 40) = v7;
  *(a1 + 48) = a2[6];
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 15);
  *(a1 + 64) = *(a2 + 4);
  *(a1 + 80) = *(a2 + 80);

  return a1;
}

uint64_t assignWithCopy for MaterialEffectItemConfiguration_V1(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (*(a1 + 8) == 0xFF)
  {
    if (v4 != 255)
    {
      v5 = *a2;
      outlined copy of Material.ID(*a2, *(a2 + 8));
      *a1 = v5;
      *(a1 + 8) = v4;
LABEL_8:
      *(a1 + 12) = *(a2 + 12);
      goto LABEL_9;
    }
  }

  else
  {
    if (v4 != 255)
    {
      v6 = *a2;
      outlined copy of Material.ID(*a2, *(a2 + 8));
      v7 = *a1;
      *a1 = v6;
      v8 = *(a1 + 8);
      *(a1 + 8) = v4;
      outlined consume of Material.ID(v7, v8);
      goto LABEL_8;
    }

    outlined destroy of Material(a1);
  }

  *a1 = *a2;
LABEL_9:
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);

  v9 = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 48) = v9;
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  return a1;
}

uint64_t assignWithTake for MaterialEffectItemConfiguration_V1(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 != 255)
  {
    v5 = *(a2 + 8);
    if (*(a2 + 8) != 0xFF)
    {
      v6 = HIDWORD(v5);
      v7 = *a1;
      *a1 = *a2;
      *(a1 + 8) = v5;
      outlined consume of Material.ID(v7, v4);
      *(a1 + 12) = v6;
      goto LABEL_6;
    }

    outlined destroy of Material(a1);
  }

  *a1 = *a2;
LABEL_6:
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  return a1;
}

uint64_t getEnumTagSinglePayload for MaterialEffectItemConfiguration_V1(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for MaterialEffectItemConfiguration_V1(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t TypeConformance.unsafeExistentialMetatype<A>(_:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = *v2;
  if (*(*(a1 - 8) + 64) == 16)
  {
    return (*(*(a1 - 8) + 16))(a2, &v4);
  }

  __break(1u);
  return result;
}

uint64_t TypeConformance.init(storage:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

double TimeDataFormatting.UpdateFrequency.magnitude.getter@<D0>(double *a1@<X8>)
{
  result = 1.0 / dbl_18DE0F7A0[*v1];
  *a1 = result;
  return result;
}

uint64_t TimeDataFormatting.UpdateFrequency.init(duration:)@<X0>(char *a3@<X8>)
{
  static Duration.seconds(_:)();
  result = static Duration.< infix(_:_:)();
  if (result)
  {
    static Duration.seconds(_:)();
    result = static Duration.< infix(_:_:)();
    if (result)
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  *a3 = v5;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance TimeDataFormatting.UpdateFrequency.CodingKeys()
{
  v1 = 0x646E6F636573;
  if (*v0 != 1)
  {
    v1 = 0x6574756E696DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1751607656;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TimeDataFormatting.UpdateFrequency.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized TimeDataFormatting.UpdateFrequency.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TimeDataFormatting.UpdateFrequency.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type TimeDataFormatting.UpdateFrequency.CodingKeys and conformance TimeDataFormatting.UpdateFrequency.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TimeDataFormatting.UpdateFrequency.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type TimeDataFormatting.UpdateFrequency.CodingKeys and conformance TimeDataFormatting.UpdateFrequency.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TimeDataFormatting.UpdateFrequency.HighCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type TimeDataFormatting.UpdateFrequency.HighCodingKeys and conformance TimeDataFormatting.UpdateFrequency.HighCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TimeDataFormatting.UpdateFrequency.HighCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type TimeDataFormatting.UpdateFrequency.HighCodingKeys and conformance TimeDataFormatting.UpdateFrequency.HighCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TimeDataFormatting.UpdateFrequency.MinuteCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type TimeDataFormatting.UpdateFrequency.MinuteCodingKeys and conformance TimeDataFormatting.UpdateFrequency.MinuteCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TimeDataFormatting.UpdateFrequency.MinuteCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type TimeDataFormatting.UpdateFrequency.MinuteCodingKeys and conformance TimeDataFormatting.UpdateFrequency.MinuteCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TimeDataFormatting.UpdateFrequency.SecondCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type TimeDataFormatting.UpdateFrequency.SecondCodingKeys and conformance TimeDataFormatting.UpdateFrequency.SecondCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TimeDataFormatting.UpdateFrequency.SecondCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type TimeDataFormatting.UpdateFrequency.SecondCodingKeys and conformance TimeDataFormatting.UpdateFrequency.SecondCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TimeDataFormatting.UpdateFrequency.encode(to:)(void *a1)
{
  v3 = MEMORY[0x1E69E6F58];
  type metadata accessor for KeyedEncodingContainer<TimeDataFormatting.UpdateFrequency.MinuteCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<TimeDataFormatting.UpdateFrequency.MinuteCodingKeys>, lazy protocol witness table accessor for type TimeDataFormatting.UpdateFrequency.MinuteCodingKeys and conformance TimeDataFormatting.UpdateFrequency.MinuteCodingKeys, &unk_1F00ABEE0, MEMORY[0x1E69E6F58]);
  v29 = *(v4 - 8);
  v30 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v28 = &v23 - v5;
  type metadata accessor for KeyedEncodingContainer<TimeDataFormatting.UpdateFrequency.MinuteCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<TimeDataFormatting.UpdateFrequency.SecondCodingKeys>, lazy protocol witness table accessor for type TimeDataFormatting.UpdateFrequency.SecondCodingKeys and conformance TimeDataFormatting.UpdateFrequency.SecondCodingKeys, &unk_1F00ABEC0, v3);
  v26 = *(v6 - 8);
  v27 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v25 = &v23 - v7;
  type metadata accessor for KeyedEncodingContainer<TimeDataFormatting.UpdateFrequency.MinuteCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<TimeDataFormatting.UpdateFrequency.HighCodingKeys>, lazy protocol witness table accessor for type TimeDataFormatting.UpdateFrequency.HighCodingKeys and conformance TimeDataFormatting.UpdateFrequency.HighCodingKeys, &unk_1F00ABEA0, v3);
  v23 = *(v8 - 8);
  v24 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - v9;
  type metadata accessor for KeyedEncodingContainer<TimeDataFormatting.UpdateFrequency.MinuteCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<TimeDataFormatting.UpdateFrequency.CodingKeys>, lazy protocol witness table accessor for type TimeDataFormatting.UpdateFrequency.CodingKeys and conformance TimeDataFormatting.UpdateFrequency.CodingKeys, &unk_1F00ABE80, v3);
  v31 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - v13;
  v15 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TimeDataFormatting.UpdateFrequency.CodingKeys and conformance TimeDataFormatting.UpdateFrequency.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = (v12 + 8);
  if (v15)
  {
    if (v15 == 1)
    {
      v33 = 1;
      lazy protocol witness table accessor for type TimeDataFormatting.UpdateFrequency.SecondCodingKeys and conformance TimeDataFormatting.UpdateFrequency.SecondCodingKeys();
      v17 = v25;
      v18 = v31;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v26 + 8))(v17, v27);
      return (*v16)(v14, v18);
    }

    v34 = 2;
    lazy protocol witness table accessor for type TimeDataFormatting.UpdateFrequency.MinuteCodingKeys and conformance TimeDataFormatting.UpdateFrequency.MinuteCodingKeys();
    v10 = v28;
    v20 = v31;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v22 = v29;
    v21 = v30;
  }

  else
  {
    v32 = 0;
    lazy protocol witness table accessor for type TimeDataFormatting.UpdateFrequency.HighCodingKeys and conformance TimeDataFormatting.UpdateFrequency.HighCodingKeys();
    v20 = v31;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v22 = v23;
    v21 = v24;
  }

  (*(v22 + 8))(v10, v21);
  return (*v16)(v14, v20);
}

void lazy protocol witness table accessor for type TimeDataFormatting.UpdateFrequency.MinuteCodingKeys and conformance TimeDataFormatting.UpdateFrequency.MinuteCodingKeys()
{
  if (!lazy protocol witness table cache variable for type TimeDataFormatting.UpdateFrequency.MinuteCodingKeys and conformance TimeDataFormatting.UpdateFrequency.MinuteCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for TimeDataFormatting.UpdateFrequency.MinuteCodingKeys, &unk_1F00ABEE0, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type TimeDataFormatting.UpdateFrequency.MinuteCodingKeys and conformance TimeDataFormatting.UpdateFrequency.MinuteCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type TimeDataFormatting.UpdateFrequency.MinuteCodingKeys and conformance TimeDataFormatting.UpdateFrequency.MinuteCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for TimeDataFormatting.UpdateFrequency.MinuteCodingKeys, &unk_1F00ABEE0, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type TimeDataFormatting.UpdateFrequency.MinuteCodingKeys and conformance TimeDataFormatting.UpdateFrequency.MinuteCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type TimeDataFormatting.UpdateFrequency.MinuteCodingKeys and conformance TimeDataFormatting.UpdateFrequency.MinuteCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for TimeDataFormatting.UpdateFrequency.MinuteCodingKeys, &unk_1F00ABEE0, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type TimeDataFormatting.UpdateFrequency.MinuteCodingKeys and conformance TimeDataFormatting.UpdateFrequency.MinuteCodingKeys);
  }
}

void lazy protocol witness table accessor for type TimeDataFormatting.UpdateFrequency.SecondCodingKeys and conformance TimeDataFormatting.UpdateFrequency.SecondCodingKeys()
{
  if (!lazy protocol witness table cache variable for type TimeDataFormatting.UpdateFrequency.SecondCodingKeys and conformance TimeDataFormatting.UpdateFrequency.SecondCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for TimeDataFormatting.UpdateFrequency.SecondCodingKeys, &unk_1F00ABEC0, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type TimeDataFormatting.UpdateFrequency.SecondCodingKeys and conformance TimeDataFormatting.UpdateFrequency.SecondCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type TimeDataFormatting.UpdateFrequency.SecondCodingKeys and conformance TimeDataFormatting.UpdateFrequency.SecondCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for TimeDataFormatting.UpdateFrequency.SecondCodingKeys, &unk_1F00ABEC0, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type TimeDataFormatting.UpdateFrequency.SecondCodingKeys and conformance TimeDataFormatting.UpdateFrequency.SecondCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type TimeDataFormatting.UpdateFrequency.SecondCodingKeys and conformance TimeDataFormatting.UpdateFrequency.SecondCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for TimeDataFormatting.UpdateFrequency.SecondCodingKeys, &unk_1F00ABEC0, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type TimeDataFormatting.UpdateFrequency.SecondCodingKeys and conformance TimeDataFormatting.UpdateFrequency.SecondCodingKeys);
  }
}

void lazy protocol witness table accessor for type TimeDataFormatting.UpdateFrequency.HighCodingKeys and conformance TimeDataFormatting.UpdateFrequency.HighCodingKeys()
{
  if (!lazy protocol witness table cache variable for type TimeDataFormatting.UpdateFrequency.HighCodingKeys and conformance TimeDataFormatting.UpdateFrequency.HighCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for TimeDataFormatting.UpdateFrequency.HighCodingKeys, &unk_1F00ABEA0, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type TimeDataFormatting.UpdateFrequency.HighCodingKeys and conformance TimeDataFormatting.UpdateFrequency.HighCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type TimeDataFormatting.UpdateFrequency.HighCodingKeys and conformance TimeDataFormatting.UpdateFrequency.HighCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for TimeDataFormatting.UpdateFrequency.HighCodingKeys, &unk_1F00ABEA0, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type TimeDataFormatting.UpdateFrequency.HighCodingKeys and conformance TimeDataFormatting.UpdateFrequency.HighCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type TimeDataFormatting.UpdateFrequency.HighCodingKeys and conformance TimeDataFormatting.UpdateFrequency.HighCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for TimeDataFormatting.UpdateFrequency.HighCodingKeys, &unk_1F00ABEA0, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type TimeDataFormatting.UpdateFrequency.HighCodingKeys and conformance TimeDataFormatting.UpdateFrequency.HighCodingKeys);
  }
}

void lazy protocol witness table accessor for type TimeDataFormatting.UpdateFrequency.CodingKeys and conformance TimeDataFormatting.UpdateFrequency.CodingKeys()
{
  if (!lazy protocol witness table cache variable for type TimeDataFormatting.UpdateFrequency.CodingKeys and conformance TimeDataFormatting.UpdateFrequency.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for TimeDataFormatting.UpdateFrequency.CodingKeys, &unk_1F00ABE80, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type TimeDataFormatting.UpdateFrequency.CodingKeys and conformance TimeDataFormatting.UpdateFrequency.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type TimeDataFormatting.UpdateFrequency.CodingKeys and conformance TimeDataFormatting.UpdateFrequency.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for TimeDataFormatting.UpdateFrequency.CodingKeys, &unk_1F00ABE80, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type TimeDataFormatting.UpdateFrequency.CodingKeys and conformance TimeDataFormatting.UpdateFrequency.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type TimeDataFormatting.UpdateFrequency.CodingKeys and conformance TimeDataFormatting.UpdateFrequency.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for TimeDataFormatting.UpdateFrequency.CodingKeys, &unk_1F00ABE80, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type TimeDataFormatting.UpdateFrequency.CodingKeys and conformance TimeDataFormatting.UpdateFrequency.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type TimeDataFormatting.UpdateFrequency.CodingKeys and conformance TimeDataFormatting.UpdateFrequency.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for TimeDataFormatting.UpdateFrequency.CodingKeys, &unk_1F00ABE80, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type TimeDataFormatting.UpdateFrequency.CodingKeys and conformance TimeDataFormatting.UpdateFrequency.CodingKeys);
  }
}

Swift::Int TimeDataFormatting.UpdateFrequency.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

uint64_t TimeDataFormatting.UpdateFrequency.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v37 = a2;
  v3 = MEMORY[0x1E69E6F48];
  type metadata accessor for KeyedEncodingContainer<TimeDataFormatting.UpdateFrequency.MinuteCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<TimeDataFormatting.UpdateFrequency.MinuteCodingKeys>, lazy protocol witness table accessor for type TimeDataFormatting.UpdateFrequency.MinuteCodingKeys and conformance TimeDataFormatting.UpdateFrequency.MinuteCodingKeys, &unk_1F00ABEE0, MEMORY[0x1E69E6F48]);
  v36 = v4;
  v33 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v39 = &v32 - v5;
  type metadata accessor for KeyedEncodingContainer<TimeDataFormatting.UpdateFrequency.MinuteCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<TimeDataFormatting.UpdateFrequency.SecondCodingKeys>, lazy protocol witness table accessor for type TimeDataFormatting.UpdateFrequency.SecondCodingKeys and conformance TimeDataFormatting.UpdateFrequency.SecondCodingKeys, &unk_1F00ABEC0, v3);
  v34 = *(v6 - 8);
  v35 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v38 = &v32 - v7;
  type metadata accessor for KeyedEncodingContainer<TimeDataFormatting.UpdateFrequency.MinuteCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<TimeDataFormatting.UpdateFrequency.HighCodingKeys>, lazy protocol witness table accessor for type TimeDataFormatting.UpdateFrequency.HighCodingKeys and conformance TimeDataFormatting.UpdateFrequency.HighCodingKeys, &unk_1F00ABEA0, v3);
  v9 = v8;
  v32 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v32 - v10;
  type metadata accessor for KeyedEncodingContainer<TimeDataFormatting.UpdateFrequency.MinuteCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<TimeDataFormatting.UpdateFrequency.CodingKeys>, lazy protocol witness table accessor for type TimeDataFormatting.UpdateFrequency.CodingKeys and conformance TimeDataFormatting.UpdateFrequency.CodingKeys, &unk_1F00ABE80, v3);
  v13 = v12;
  v40 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v32 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TimeDataFormatting.UpdateFrequency.CodingKeys and conformance TimeDataFormatting.UpdateFrequency.CodingKeys();
  v16 = v41;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v16)
  {
    goto LABEL_8;
  }

  v18 = v38;
  v17 = v39;
  v41 = a1;
  v19 = v15;
  v20 = KeyedDecodingContainer.allKeys.getter();
  v21 = (2 * *(v20 + 16)) | 1;
  v42 = v20;
  v43 = v20 + 32;
  v44 = 0;
  v45 = v21;
  v22 = specialized Collection<>.popFirst()();
  if (v22 == 3 || v44 != v45 >> 1)
  {
    v25 = type metadata accessor for DecodingError();
    swift_allocError();
    v27 = v26;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
    *v27 = &type metadata for TimeDataFormatting.UpdateFrequency;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69E6AF8], v25);
    swift_willThrow();
    (*(v40 + 8))(v15, v13);
    swift_unknownObjectRelease();
    a1 = v41;
LABEL_8:
    v28 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v28);
  }

  if (v22)
  {
    LODWORD(v32) = v22;
    v23 = v40;
    if (v22 == 1)
    {
      v46 = 1;
      lazy protocol witness table accessor for type TimeDataFormatting.UpdateFrequency.SecondCodingKeys and conformance TimeDataFormatting.UpdateFrequency.SecondCodingKeys();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v24 = v37;
      (*(v34 + 8))(v18, v35);
    }

    else
    {
      v46 = 2;
      lazy protocol witness table accessor for type TimeDataFormatting.UpdateFrequency.MinuteCodingKeys and conformance TimeDataFormatting.UpdateFrequency.MinuteCodingKeys();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v24 = v37;
      (*(v33 + 8))(v17, v36);
    }

    (*(v23 + 8))(v19, v13);
    swift_unknownObjectRelease();
    v30 = v32;
  }

  else
  {
    v30 = v22;
    v46 = 0;
    lazy protocol witness table accessor for type TimeDataFormatting.UpdateFrequency.HighCodingKeys and conformance TimeDataFormatting.UpdateFrequency.HighCodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v31 = v40;
    (*(v32 + 8))(v11, v9);
    (*(v31 + 8))(v15, v13);
    swift_unknownObjectRelease();
    v24 = v37;
  }

  *v24 = v30;
  v28 = v41;
  return __swift_destroy_boxed_opaque_existential_1(v28);
}

uint64_t Date.FormatStyle.updateFrequency(_:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t (*a2)(void, double)@<X1>, void (*a3)(char *)@<X2>, void (*a4)(char *)@<X3>, uint64_t a5@<X8>)
{
  v28 = a4;
  v25 = a3;
  v7 = v5;
  v10 = type metadata accessor for Date.FormatStyle.Symbol.SecondFraction();
  v26 = *(v10 - 8);
  v27 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Date.FormatStyle.Symbol.Second();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a2(0, v15);
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v25 - v21;
  v23 = *a1;
  result = (*(v19 + 16))(a5, v7, v18, v20);
  if (v23)
  {
    if (v23 != 1)
    {
      MEMORY[0x193ABD340](result);
      v25(v17);
      (*(v14 + 8))(v17, v13);
      (*(v19 + 8))(a5, v18);
      (*(v19 + 32))(a5, v22, v18);
    }

    static Date.FormatStyle.Symbol.SecondFraction.omitted.getter();
    v28(v12);
    (*(v26 + 8))(v12, v27);
    (*(v19 + 8))(a5, v18);
    return (*(v19 + 32))(a5, v22, v18);
  }

  return result;
}

uint64_t WhitespaceRemovingFormatStyle<>.updateFrequency(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 16);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v12;
  (*(*(v14 - 8) + 16))(a4, v4, v9);
  v17 = v13;
  (*(a3 + 16))(&v17, v7, a3);
  return (*(v8 + 40))(a4, v11, v7);
}

uint64_t Date.AnchoredRelativeFormatStyle.updateFrequency(_:)@<X0>(char *a1@<X0>, unint64_t a2@<X8>)
{
  v72[4] = *MEMORY[0x1E69E9840];
  v71 = type metadata accessor for Date.ComponentsFormatStyle.Field();
  v5 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v57 = &v54[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v54[-v8];
  MEMORY[0x1EEE9AC00](v10);
  v58 = &v54[-v11];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v54[-v13];
  v15 = type metadata accessor for Date.AnchoredRelativeFormatStyle();
  v16 = *(v15 - 8);
  v17.n128_f64[0] = MEMORY[0x1EEE9AC00](v15);
  v19 = &v54[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = *a1;
  v21 = *(v16 + 16);
  if (*a1)
  {
    v70 = *a1;
    v22 = v20;
    (v21)(v19, v2, v15, v17.n128_f64[0]);
    v67 = v19;
    v23 = Date.AnchoredRelativeFormatStyle.allowedFields.getter();
    v64 = v54;
    MEMORY[0x1EEE9AC00](v23);
    v25 = &v54[-32];
    v55 = v22;
    v54[-16] = v22;
    v26 = *(v24 + 32);
    v63 = ((1 << v26) + 63) >> 6;
    v56 = v9;
    if ((v26 & 0x3Fu) > 0xD)
    {
      goto LABEL_28;
    }

    while (1)
    {
      v60 = v16;
      v61 = v15;
      v62 = a2;
      v59 = v54;
      MEMORY[0x1EEE9AC00](v24);
      v65 = &v54[-((v27 + 15) & 0x3FFFFFFFFFFFFFF0)];
      bzero(v65, v27);
      v66 = 0;
      v28 = 0;
      v29 = v23;
      v16 = v23 + 56;
      v30 = 1 << *(v23 + 32);
      v31 = -1;
      if (v30 < 64)
      {
        v31 = ~(-1 << v30);
      }

      a2 = v31 & *(v23 + 56);
      v15 = (v30 + 63) >> 6;
      v68 = v5 + 8;
      v69 = v5 + 16;
      while (a2)
      {
        v32 = __clz(__rbit64(a2));
        a2 &= a2 - 1;
        v33 = v32 | (v28 << 6);
        v34 = v29;
LABEL_13:
        v23 = v71;
        (*(v5 + 16))(v14, *(v34 + 48) + *(v5 + 72) * v33, v71);
        v25 = v14;
        Date.ComponentsFormatStyle.Field.magnitude.getter(v72);
        v37 = v72[0];
        v38 = 1.0 / dbl_18DE0F7A0[v70];
        (*(v5 + 8))(v14, v23);
        if (v37 < v38)
        {
          *&v65[(v33 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v33;
          if (__OFADD__(v66++, 1))
          {
            __break(1u);
LABEL_17:
            v40 = specialized _NativeSet.extractSubset(using:count:)(v65, v63, v66, v34);
            v15 = v61;
            a2 = v62;
            v16 = v60;
            goto LABEL_18;
          }
        }
      }

      v35 = v28;
      v34 = v29;
      while (1)
      {
        v28 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          break;
        }

        if (v28 >= v15)
        {
          goto LABEL_17;
        }

        v36 = *(v16 + 8 * v28);
        ++v35;
        if (v36)
        {
          a2 = (v36 - 1) & v36;
          v33 = __clz(__rbit64(v36)) | (v28 << 6);
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_28:

      v52 = v23;
      if (!swift_stdlib_isStackAllocationSafe())
      {
        break;
      }
    }

    v53 = swift_slowAlloc();
    v40 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVy10Foundation4DateV21ComponentsFormatStyleV5FieldVG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab20VKXEfU_10Foundation4j3V21klm2V5N5V_TG5AOxSbs5Error_pRi_zRi0_zlyANIsgndzo_Tf1nc_nTm(v53, v63, v52, partial apply for closure #1 in Date.AnchoredRelativeFormatStyle.updateFrequency(_:), v25, MEMORY[0x1E6969498], specialized _NativeSet.extractSubset(using:count:));

    MEMORY[0x193AC4820](v53, -1, -1);
LABEL_18:
    v41 = v67;
    v42 = Date.AnchoredRelativeFormatStyle.allowedFields.modify();
    specialized Set._subtract<A>(_:)(v40, &lazy cache variable for type metadata for Date.ComponentsFormatStyle.Field?, MEMORY[0x1E6969498], MEMORY[0x1E6969498], specialized Set._Variant.remove(_:), v43);

    v42(v72, 0);
    v44 = *(Date.AnchoredRelativeFormatStyle.allowedFields.getter() + 16);

    if (!v44)
    {
      v45 = v57;
      if (v55 == 1)
      {
        static Date.ComponentsFormatStyle.Field.second.getter();
      }

      else
      {
        static Date.ComponentsFormatStyle.Field.minute.getter();
      }

      v47 = v56;
      v48 = v71;
      (*(v5 + 32))(v56, v45, v71);
      v49 = Date.AnchoredRelativeFormatStyle.allowedFields.modify();
      v50 = v58;
      specialized Set._Variant.insert(_:)(v58, v47);
      v51 = v50;
      v41 = v67;
      (*(v5 + 8))(v51, v48);
      v49(v72, 0);
    }

    return (*(v16 + 32))(a2, v41, v15);
  }

  else
  {

    return v21(a2, v2, v15, v17);
  }
}

uint64_t Duration.UnitsFormatStyle.updateFrequency(_:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v160[4] = *MEMORY[0x1E69E9840];
  v6 = type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v141 = &v129 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v140 = &v129 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v143 = &v129 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v129 - v14;
  type metadata accessor for Duration.UnitsFormatStyle.Unit?(0, &lazy cache variable for type metadata for Duration.UnitsFormatStyle.Unit?, MEMORY[0x1E696A1C0]);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v149 = &v129 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v129 - v19;
  v21 = type metadata accessor for Duration.UnitsFormatStyle.Unit();
  v22 = *(v21 - 8);
  v157 = v21;
  v158 = v22;
  MEMORY[0x1EEE9AC00](v21);
  v144 = &v129 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v129 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v137 = &v129 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v142 = &v129 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v152 = &v129 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v129 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v156 = &v129 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v129 - v39;
  v41 = type metadata accessor for Duration.UnitsFormatStyle();
  v44.n128_f64[0] = MEMORY[0x1EEE9AC00](v41);
  v46 = &v129 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = *a1;
  v48 = *(v43 + 16);
  if (!*a1)
  {

    return v48(a2, v3, v44);
  }

  v129 = v26;
  v130 = v43;
  v132 = a2;
  v155 = v47;
  v49 = v47;
  v50 = v46;
  v131 = v42;
  (v48)(v46, v3, v44.n128_f64[0]);
  v151 = v50;
  v51 = Duration.UnitsFormatStyle.allowedUnits.getter();
  v136 = &v129;
  MEMORY[0x1EEE9AC00](v51);
  v53 = (&v129 - 4);
  v148 = v49;
  *(&v129 - 16) = v49;
  v54 = *(v52 + 32);
  v135 = ((1 << v54) + 63) >> 6;
  v150 = v35;
  v147 = v6;
  v146 = v7;
  v145 = v20;
  v133 = v15;
  if ((v54 & 0x3Fu) <= 0xD)
  {
    goto LABEL_3;
  }

  while (1)
  {
    v118 = v51;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

LABEL_3:
    v134 = &v129;
    MEMORY[0x1EEE9AC00](v52);
    v138 = &v129 - ((v55 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v138, v55);
    v139 = 0;
    v56 = 0;
    v7 = v51;
    v58 = *(v51 + 56);
    v51 += 56;
    v57 = v58;
    v59 = 1 << *(v51 - 24);
    v60 = -1;
    if (v59 < 64)
    {
      v60 = ~(-1 << v59);
    }

    v53 = v60 & v57;
    v6 = (v59 + 63) >> 6;
    v153 = (v158 + 8);
    v154 = v158 + 16;
    v20 = v158;
    while (v53)
    {
      v61 = __clz(__rbit64(v53));
      v53 &= v53 - 1;
LABEL_13:
      v64 = v61 | (v56 << 6);
      v65 = v157;
      (*(v20 + 2))(v40, *(v7 + 6) + *(v20 + 9) * v64, v157);
      Duration.UnitsFormatStyle.Unit.magnitude.getter(v160);
      v66 = v160[0];
      v67 = 1.0 / dbl_18DE0F7A0[v155];
      (*(v20 + 1))(v40, v65);
      if (v66 < v67)
      {
        *&v138[(v64 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v64;
        if (__OFADD__(v139++, 1))
        {
          __break(1u);
LABEL_17:
          v69 = specialized _NativeSet.extractSubset(using:count:)(v138, v135, v139, v7);
          v6 = v147;
          v7 = v146;
          v20 = v145;
          goto LABEL_18;
        }
      }
    }

    v62 = v56;
    while (1)
    {
      v56 = v62 + 1;
      if (__OFADD__(v62, 1))
      {
        break;
      }

      if (v56 >= v6)
      {
        goto LABEL_17;
      }

      v63 = *(v51 + 8 * v56);
      ++v62;
      if (v63)
      {
        v61 = __clz(__rbit64(v63));
        v53 = (v63 - 1) & v63;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_70:
    __break(1u);
  }

  while (1)
  {
    v128 = swift_slowAlloc();
    v69 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVy10Foundation4DateV21ComponentsFormatStyleV5FieldVG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab20VKXEfU_10Foundation4j3V21klm2V5N5V_TG5AOxSbs5Error_pRi_zRi0_zlyANIsgndzo_Tf1nc_nTm(v128, v135, v118, partial apply for closure #1 in Duration.UnitsFormatStyle.updateFrequency(_:), v53, MEMORY[0x1E696A1C0], specialized _NativeSet.extractSubset(using:count:));

    MEMORY[0x193AC4820](v128, -1, -1);
LABEL_18:
    v70 = Duration.UnitsFormatStyle.allowedUnits.modify();
    specialized Set._subtract<A>(_:)(v69, &lazy cache variable for type metadata for Duration.UnitsFormatStyle.Unit?, MEMORY[0x1E696A1C0], MEMORY[0x1E696A1C0], specialized Set._Variant.remove(_:), v71);

    v70(v160, 0);
    v72 = Duration.UnitsFormatStyle.allowedUnits.getter();
    v51 = v72;
    v53 = v72 + 56;
    v73 = 1 << *(v72 + 32);
    v74 = -1;
    if (v73 < 64)
    {
      v74 = ~(-1 << v73);
    }

    v75 = v74 & *(v72 + 56);
    if (v75)
    {
      v139 = 0;
      v76 = 0;
      v77 = __clz(__rbit64(v75));
      v78 = (v75 - 1) & v75;
      v79 = (v73 + 63) >> 6;
      v80 = v156;
LABEL_29:
      v84 = *(v51 + 48);
      v86 = v158 + 16;
      v85 = *(v158 + 2);
      v154 = *(v158 + 9);
      v155 = v85;
      v85(v80, v84 + v154 * v77, v157);
      v7 = v86 - 8;
      v153 = (v86 + 16);

      v20 = v157;
      while (v78)
      {
        v40 = v76;
LABEL_37:
        v87 = __clz(__rbit64(v78));
        v78 &= v78 - 1;
        v6 = v51;
        v88 = *(v51 + 48) + (v87 | (v40 << 6)) * v154;
        v89 = v150;
        (v155)(v150, v88, v20);
        Duration.UnitsFormatStyle.Unit.magnitude.getter(v160);
        v90 = v160[0];
        v91 = v156;
        Duration.UnitsFormatStyle.Unit.magnitude.getter(&v159);
        v92 = *v7;
        if (v90 >= v159)
        {
          v92(v89, v20);
        }

        else
        {
          v92(v91, v20);
          (*v153)(v91, v89, v20);
        }

        v76 = v40;
        v51 = v6;
      }

      while (1)
      {
        v40 = v76 + 1;
        if (__OFADD__(v76, 1))
        {
          goto LABEL_70;
        }

        if (v40 >= v79)
        {

          v20 = v145;
          v93 = v157;
          (*v153)(v145, v156, v157);
          v94 = 0;
          v6 = v147;
          v7 = v146;
          goto LABEL_40;
        }

        v78 = *(v53 + 8 * v40);
        ++v76;
        if (v78)
        {
          goto LABEL_37;
        }
      }
    }

    v82 = 0;
    v79 = (v73 + 63) >> 6;
    v80 = v156;
    while (v79 - 1 != v75)
    {
      v76 = v75 + 1;
      v83 = *(v51 + 64 + 8 * v75);
      v82 -= 64;
      ++v75;
      if (v83)
      {
        v139 = 0;
        v78 = (v83 - 1) & v83;
        v77 = __clz(__rbit64(v83)) - v82;
        goto LABEL_29;
      }
    }

    v94 = 1;
    v93 = v157;
LABEL_40:
    (*(v158 + 7))(v20, v94, 1, v93);

    v95 = v149;
    if (v148)
    {
      v96 = v142;
      if (v148 == 1)
      {
        static Duration.UnitsFormatStyle.Unit.seconds.getter();
      }

      else
      {
        static Duration.UnitsFormatStyle.Unit.minutes.getter();
      }
    }

    else
    {
      v96 = v142;
      static Duration.UnitsFormatStyle.Unit.nanoseconds.getter();
    }

    v97 = v158;
    v98 = *(v158 + 4);
    v98(v152, v96, v93);
    v99 = *(v97 + 6);
    if (v99(v20, 1, v93) == 1)
    {
      v156 = v98;
      v101 = v158;
      v102 = v20;
      v103 = v7;
      v104 = v6;
      v105 = v129;
      (*(v158 + 2))(v129, v152, v93);
      v155 = Duration.UnitsFormatStyle.allowedUnits.modify();
      v106 = v137;
      v107 = v105;
      v6 = v104;
      v7 = v103;
      v20 = v102;
      specialized Set._Variant.insert(_:)(v137, v107);
      v95 = v149;
      v108 = v101;
      v98 = v156;
      v108[1](v106, v157);
      (v155)(v160, 0);
      v93 = v157;
    }

    outlined init with copy of Duration.UnitsFormatStyle.Unit?(v20, v95, v100);
    if (v99(v95, 1, v93) == 1)
    {
      v109 = v144;
      (*(v158 + 2))(v144, v152, v93);
      if (v99(v95, 1, v93) != 1)
      {
        outlined destroy of Duration.UnitsFormatStyle.Unit?(v95, &lazy cache variable for type metadata for Duration.UnitsFormatStyle.Unit?, MEMORY[0x1E696A1C0]);
      }
    }

    else
    {
      v110 = v144;
      v98(v144, v95, v93);
      v109 = v110;
    }

    Duration.UnitsFormatStyle.Unit.magnitude.getter(v160);
    v111 = *(v158 + 1);
    v158 += 8;
    v111(v109, v93);
    if (!v148)
    {
      if (v160[0] == 0.0)
      {
        goto LABEL_58;
      }

      *&v113 = 0.0333333333;
LABEL_61:
      v112 = *&v113;
      goto LABEL_62;
    }

    if (v148 != 1)
    {
      if (v160[0] == 0.0)
      {
LABEL_58:
        v114 = INFINITY;
        goto LABEL_63;
      }

      *&v113 = 60.0;
      goto LABEL_61;
    }

    if (v160[0] == 0.0)
    {
      goto LABEL_58;
    }

    v112 = 1.0;
LABEL_62:
    v114 = v112 / v160[0];
LABEL_63:
    v115 = v133;
    Duration.UnitsFormatStyle.fractionalPartDisplay.getter();
    Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.roundingIncrement.getter();
    v117 = v116;
    v119 = *(v7 + 1);
    v7 += 8;
    v118 = v119;
    v119(v115, v6);
    if ((v117 & 1) == 0)
    {
      v120 = Duration.UnitsFormatStyle.fractionalPartDisplay.modify();
      Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.roundingIncrement.setter();
      v120(v160, 0);
    }

    v121 = v143;
    Duration.UnitsFormatStyle.fractionalPartDisplay.getter();
    v53 = Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.maximumLength.getter();
    v118(v121, v6);
    v122 = log10(1.0 / v114);
    if ((*&v122 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      break;
    }

    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
  }

  if (v122 <= -9.22337204e18)
  {
    goto LABEL_74;
  }

  if (v122 >= 9.22337204e18)
  {
    goto LABEL_75;
  }

  v123 = v151;
  v124 = Duration.UnitsFormatStyle.fractionalPartDisplay.modify();
  Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.maximumLength.setter();
  v124(v160, 0);
  v125 = v140;
  Duration.UnitsFormatStyle.fractionalPartDisplay.getter();
  Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.minimumLength.getter();
  v118(v125, v6);
  v126 = v141;
  Duration.UnitsFormatStyle.fractionalPartDisplay.getter();
  Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.maximumLength.getter();
  v118(v126, v6);
  v127 = Duration.UnitsFormatStyle.fractionalPartDisplay.modify();
  Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.minimumLength.setter();
  v127(v160, 0);
  v111(v152, v157);
  outlined destroy of Duration.UnitsFormatStyle.Unit?(v20, &lazy cache variable for type metadata for Duration.UnitsFormatStyle.Unit?, MEMORY[0x1E696A1C0]);
  return (*(v130 + 32))(v132, v123, v131);
}

void *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVy10Foundation4DateV21ComponentsFormatStyleV5FieldVG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab20VKXEfU_10Foundation4j3V21klm2V5N5V_TG5AOxSbs5Error_pRi_zRi0_zlyANIsgndzo_Tf1nc_nTm(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *), uint64_t a5, uint64_t (*a6)(void), void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, __n128))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      v10 = a7;
      v11 = a6;
      v12 = a5;
      v13 = a4;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
      a4 = v13;
      a5 = v12;
      a6 = v11;
      a7 = v10;
    }

    specialized closure #1 in _NativeSet.filter(_:)(result, a2, a3, a4, a5, a6, a7);
    v15 = v14;

    return v15;
  }

  return result;
}

void *specialized _NativeSet.filter(_:)(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v44 = a1;
  v48 = *MEMORY[0x1E69E9840];
  v7 = type metadata accessor for Date.ComponentsFormatStyle.Field();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v10) = *(a3 + 32);
  v12 = ((1 << v10) + 63) >> 6;
  if ((v10 & 0x3Fu) > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v42 = v11;
    v43 = v9;
    v36 = v12;
    v47 = v4;
    v38 = &v35;
    MEMORY[0x1EEE9AC00](v9);
    v37 = &v35 - ((v13 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v37, v13);
    v14 = 0;
    v45 = a3;
    v16 = *(a3 + 56);
    a3 += 56;
    v15 = v16;
    v17 = 1 << *(a3 - 24);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & v15;
    v11 = ((v17 + 63) >> 6);
    v39 = 0;
    v40 = v8 + 16;
    v41 = (v8 + 8);
    while (v19)
    {
      v20 = __clz(__rbit64(v19));
      v46 = (v19 - 1) & v19;
LABEL_12:
      v12 = v20 | (v14 << 6);
      v23 = *(v45 + 48) + *(v8 + 72) * v12;
      v4 = v8;
      v24 = *(v8 + 16);
      v25 = v42;
      v26 = v43;
      v24(v42, v23, v43);
      v27 = v47;
      v28 = v44(v25);
      v47 = v27;
      if (v27)
      {
        (*v41)(v25, v26);

        return swift_willThrow();
      }

      v29 = v28;
      v9 = (*v41)(v25, v26);
      v8 = v4;
      v19 = v46;
      if (v29)
      {
        *&v37[(v12 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v12;
        if (__OFADD__(v39++, 1))
        {
          __break(1u);
          return specialized _NativeSet.extractSubset(using:count:)(v37, v36, v39, v45);
        }
      }
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v11)
      {
        return specialized _NativeSet.extractSubset(using:count:)(v37, v36, v39, v45);
      }

      v22 = *(a3 + 8 * v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v46 = (v22 - 1) & v22;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:
    v32 = v9;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v9 = v32;
  }

  v33 = swift_slowAlloc();
  v34 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVy10Foundation4DateV21ComponentsFormatStyleV5FieldVG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab20VKXEfU_10Foundation4j3V21klm2V5N5V_TG5AOxSbs5Error_pRi_zRi0_zlyANIsgndzo_Tf1nc_nTm(v33, v12, a3, v44, a2, MEMORY[0x1E6969498], specialized _NativeSet.extractSubset(using:count:));

  result = MEMORY[0x193AC4820](v33, -1, -1);
  if (!v4)
  {
    return v34;
  }

  return result;
}

BOOL partial apply for closure #1 in Date.AnchoredRelativeFormatStyle.updateFrequency(_:)()
{
  v1 = *(v0 + 16);
  Date.ComponentsFormatStyle.Field.magnitude.getter(&v3);
  return v3 < 1.0 / dbl_18DE0F7A0[v1];
}

void specialized closure #1 in _NativeSet.filter(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *), uint64_t a5, uint64_t (*a6)(void), void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, __n128))
{
  v31 = a2;
  v32 = a7;
  v38 = a4;
  v33 = a1;
  v41 = a6(0);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v41);
  v39 = a3;
  v40 = &v31 - v11;
  v12 = 0;
  v15 = *(a3 + 56);
  v14 = a3 + 56;
  v13 = v15;
  v16 = 1 << *(v14 - 24);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v36 = v9 + 16;
  v37 = v9;
  v34 = 0;
  v35 = (v9 + 8);
  while (v18)
  {
    v20 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v21 = v20 | (v12 << 6);
    v22 = v41;
    v23 = v40;
LABEL_11:
    (*(v37 + 16))(v23, *(v39 + 48) + *(v37 + 72) * v21, v22, v10);
    v26 = v38(v23);
    v27 = v23;
    if (v7)
    {
      (*v35)(v23, v22);
      return;
    }

    v28 = v26;
    (*v35)(v27, v22);
    if (v28)
    {
      *(v33 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      if (__OFADD__(v34++, 1))
      {
        __break(1u);
LABEL_16:
        v30 = v39;

        (v32)(v33, v31, v34, v30);
        return;
      }
    }
  }

  v24 = v12;
  v22 = v41;
  v23 = v40;
  while (1)
  {
    v12 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v12 >= v19)
    {
      goto LABEL_16;
    }

    v25 = *(v14 + 8 * v12);
    ++v24;
    if (v25)
    {
      v18 = (v25 - 1) & v25;
      v21 = __clz(__rbit64(v25)) | (v12 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
}

Swift::Int specialized _NativeSet.extractSubset(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  type metadata accessor for KeyedEncodingContainer<TimeDataFormatting.UpdateFrequency.MinuteCodingKeys>(0, &lazy cache variable for type metadata for _SetStorage<AttributedString.AnyAttribute>, lazy protocol witness table accessor for type AttributedString.AnyAttribute and conformance AttributedString.AnyAttribute, &type metadata for AttributedString.AnyAttribute, MEMORY[0x1E69E6A10]);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v31 = (v10 - 1) & v10;
LABEL_17:
    v16 = *(v4 + 48) + 16 * (v13 | (v11 << 6));
    v18 = *v16;
    v17 = *(v16 + 8);
    Hasher.init(_seed:)();
    if (v17 < 0)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;
    }

    else
    {
      dispatch thunk of static AttributedStringKey.name.getter();
    }

    String.hash(into:)();

    result = Hasher._finalize()();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_30;
        }
      }

      goto LABEL_34;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_30:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v18;
    v28[1] = v17;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_35;
    }

    v4 = v30;
    v10 = v31;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v31 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t specialized _NativeSet.extractSubset(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = type metadata accessor for Date.ComponentsFormatStyle.Field();
  v8 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  type metadata accessor for _SetStorage<Date.ComponentsFormatStyle.Field>(0);
  result = static _SetStorage.allocate(capacity:)();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    _s10Foundation4DateV11FormatStyleVAeadAWlTm_1(&lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field, MEMORY[0x1E6969498], MEMORY[0x1E69694A8]);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
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
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

{
  v35 = type metadata accessor for Duration.UnitsFormatStyle.Unit();
  v8 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  type metadata accessor for _SetStorage<Duration.UnitsFormatStyle.Unit>(0);
  result = static _SetStorage.allocate(capacity:)();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    _s10Foundation4DateV11FormatStyleVAeadAWlTm_1(&lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Unit and conformance Duration.UnitsFormatStyle.Unit, MEMORY[0x1E696A1C0], MEMORY[0x1E696A1C8]);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
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
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

BOOL partial apply for closure #1 in Duration.UnitsFormatStyle.updateFrequency(_:)()
{
  v1 = *(v0 + 16);
  Duration.UnitsFormatStyle.Unit.magnitude.getter(&v3);
  return v3 < 1.0 / dbl_18DE0F7A0[v1];
}

void specialized Set._subtract<A>(_:)(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void, double), void (*a5)(char *), double a6)
{
  v26 = a3;
  v27 = a5;
  v25 = a2;
  type metadata accessor for Duration.UnitsFormatStyle.Unit?(0, a2, a3);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v24 - v11;
  v13 = a4(0, v10);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v24 - v15;
  if (*(*v6 + 16))
  {
    v17 = 1 << *(a1 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(a1 + 56);
    v20 = (v17 + 63) >> 6;
    v24[1] = v14 + 8;
    v24[2] = v14 + 16;

    v21 = 0;
    while (v19)
    {
      v22 = v21;
LABEL_10:
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      (*(v14 + 16))(v16, *(a1 + 48) + *(v14 + 72) * (v23 | (v22 << 6)), v13);
      v27(v16);
      (*(v14 + 8))(v16, v13);
      outlined destroy of Duration.UnitsFormatStyle.Unit?(v12, v25, v26);
    }

    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v22 >= v20)
      {

        return;
      }

      v19 = *(a1 + 56 + 8 * v22);
      ++v21;
      if (v19)
      {
        v21 = v22;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t outlined init with copy of Duration.UnitsFormatStyle.Unit?(uint64_t a1, uint64_t a2, double a3)
{
  type metadata accessor for Duration.UnitsFormatStyle.Unit?(0, &lazy cache variable for type metadata for Duration.UnitsFormatStyle.Unit?, MEMORY[0x1E696A1C0]);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void specialized Set._subtract<A>(_:)(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        specialized Set._Variant.remove(_:)(*(*(a1 + 48) + (v10 | (v9 << 6))), &v11);
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }
}

uint64_t specialized TimeDataFormatting.UpdateFrequency.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1751607656 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646E6F636573 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574756E696DLL && a2 == 0xE600000000000000)
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

void type metadata accessor for Duration.UnitsFormatStyle.Unit?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t outlined destroy of Duration.UnitsFormatStyle.Unit?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  type metadata accessor for Duration.UnitsFormatStyle.Unit?(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void type metadata accessor for KeyedEncodingContainer<TimeDataFormatting.UpdateFrequency.MinuteCodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void State._location.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);

  *(v2 + v4) = a1;
}

uint64_t State.init<A>(wrappedValue:)(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v4 = a1();

  v8 = v4;
  *(&v9 + *(type metadata accessor for State(0, a3, v5, v6) + 28)) = 0;
  (*(*(a3 - 8) + 32))(&v9, &v8, a3);
  return v9;
}

void (*State.wrappedValue.modify(void *a1, uint64_t a2))(void **a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(a2 + 16);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v6[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  State.getValue(forReading:)(1, a2, v11);
  return LazyState.wrappedValue.modify;
}

uint64_t State<A>.init()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of ExpressibleByNilLiteral.init(nilLiteral:)();
  *(a2 + *(type metadata accessor for State(0, a1, v7, v8) + 28)) = 0;
  return (*(v4 + 32))(a2, v6, a1);
}

uint64_t StatePropertyBox.getState<A>(type:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 16);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Binding(0, v7, v10, v11);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v21 = (&v34 - v20);
  if (v7 == a3 && (v25 = *(v4 + 8)) != 0)
  {
    v26 = v17;

    StoredLocationBase.get()(v27, v28, v9);
    Binding.init(value:location:)(v9, v25, v29, v30, v21);
    (*(v13 + 32))(v15, v21, v26);
    v33 = type metadata accessor for Binding(0, a3, v31, v32);
    swift_dynamicCast();
    return (*(*(v33 - 8) + 56))(a4, 0, 1, v33);
  }

  else
  {
    v22 = type metadata accessor for Binding(0, a3, v18, v19);
    v23 = *(*(v22 - 8) + 56);

    return v23(a4, 1, 1, v22);
  }
}

unint64_t AnimationContext.init(environment:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  result = AnimationState.init()(&v7);
  *a3 = v7;
  *(a3 + 8) = a1;
  *(a3 + 16) = a2 & 1;
  *(a3 + 17) = 0;
  return result;
}

void AnimationContext.environment.getter(uint64_t *a1@<X8>)
{
  if ((*(v1 + 16) & 1) != 0 || (WeakValue = AGGraphGetWeakValue()) == 0)
  {
    v10 = 0;
    v11 = 0;
    swift_beginAccess();
    if (static ViewGraphHost.isDefaultEnvironmentConfigured != 1)
    {
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v8 = *((*MEMORY[0x1E69E7D40] & *static CoreGlue2.shared) + 0x68);
      v9 = static CoreGlue2.shared;
      v8(&v10);

      v6 = v10;
      v7 = v11;
      goto LABEL_16;
    }

    if (one-time initialization token for _defaultEnvironment != -1)
    {
      swift_once();
    }

    v6 = static ViewGraphHost._defaultEnvironment;
    if (static ViewGraphHost._defaultEnvironment)
    {
      v7 = *(static ViewGraphHost._defaultEnvironment + 64);
      if (!v7)
      {
        v6 = 0;
        goto LABEL_16;
      }
    }

    v7 = 0;
LABEL_16:
    *a1 = v6;
    a1[1] = v7;
    return;
  }

  v5 = *WeakValue;
  v4 = WeakValue[1];
  *a1 = v5;
  a1[1] = v4;
}

double AnimationContext.state.getter@<D0>(uint64_t *a1@<X8>)
{
  *a1 = *v1;

  return result;
}

void AnimationContext.state.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
}

void *AnimationContext.init(state:environment:isLogicallyComplete:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = *result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3 & 1;
  *(a5 + 17) = a4;
  return result;
}

void *AnimationContext.init(state:environment:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = *result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3 & 1;
  *(a4 + 17) = 0;
  return result;
}

unint64_t AnimationContext.init(environment:isLogicallyComplete:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  result = AnimationState.init()(&v9);
  *a4 = v9;
  *(a4 + 8) = a1;
  *(a4 + 16) = a2 & 1;
  *(a4 + 17) = a3;
  return result;
}

uint64_t AnimationContext.init(state:environment:)@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X8>)
{
  v4 = *a1;
  result = AGCreateWeakAttribute();
  *a3 = v4;
  *(a3 + 8) = result;
  *(a3 + 16) = 0;
  return result;
}

uint64_t AnimationContext.init(environment:isLogicallyComplete:)@<X0>(char a2@<W1>, uint64_t a3@<X8>)
{
  AnimationState.init()(&v7);
  v5 = v7;
  result = AGCreateWeakAttribute();
  *a3 = v5;
  *(a3 + 8) = result;
  *(a3 + 16) = 0;
  *(a3 + 17) = a2;
  return result;
}

uint64_t AnimationContext.init(environment:)@<X0>(uint64_t a2@<X8>)
{
  AnimationState.init()(&v5);
  v3 = v5;
  result = AGCreateWeakAttribute();
  *a2 = v3;
  *(a2 + 8) = result;
  *(a2 + 16) = 0;
  return result;
}

double AnimationContext.withState<A>(_:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 8);
  v4 = *(v2 + 16);
  v5 = *(v2 + 17);
  *a2 = *a1;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 17) = v5;

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for AnimationContext(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 8);

  return a1;
}

uint64_t assignWithCopy for AnimationContext(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;

  v4 = a2[1];
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  *(a1 + 17) = *(a2 + 17);
  return a1;
}

uint64_t assignWithTake for AnimationContext(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  return a1;
}

uint64_t getEnumTagSinglePayload for AnimationContext(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
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

uint64_t storeEnumTagSinglePayload for AnimationContext(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _TestApp.RootView.StateType.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  type metadata accessor for AnyViewStorage<TestIDView<EmptyView, Int>>(0);
  result = swift_allocObject();
  *(result + 16) = 0;
  a1[1] = result;
  return result;
}

void _TestApp.RootView.StateType.setTestView<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v12[0] = a2;
  v12[1] = MEMORY[0x1E69E6530];
  v12[2] = a3;
  v12[3] = MEMORY[0x1E69E6540];
  v7 = type metadata accessor for TestIDView(0, v12);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - v8;
  v10 = *v3 + 1;
  if (__OFADD__(*v3, 1))
  {
    __break(1u);
  }

  else
  {
    *v3 = v10;
    v12[0] = v10;
    View.testID<A>(_:)(v12, a2, MEMORY[0x1E69E6530], a3, MEMORY[0x1E69E6540], v9);
    v11 = AnyView.init<A>(_:)(v9, v7, &protocol witness table for TestIDView<A, B>);

    v4[1] = v11;
  }
}

void *property wrapper backing initializer of _TestApp.RootView.state@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  a2[2] = 0;
  return result;
}

uint64_t _TestApp.RootView.init()@<X0>(void *a1@<X8>)
{
  type metadata accessor for AnyViewStorage<TestIDView<EmptyView, Int>>(0);
  result = swift_allocObject();
  *(result + 16) = 0;
  *a1 = 0;
  a1[1] = result;
  a1[2] = 0;
  a1[3] = 0;
  return result;
}

void _TestApp.RootView.body.getter(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = static CoreGlue2.shared;
  if (!v6)
  {
    v16 = v4;
    v17 = v3;
    v12 = static CoreGlue2.shared;
LABEL_9:

    if (v5)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  v8 = one-time initialization token for sharedGraph;
  v9 = static CoreGlue2.shared;

  if (v8 != -1)
  {
    swift_once();
  }

  Counter = AGGraphGetCounter();
  v11 = *v6;
  if (Counter)
  {
    (*(v11 + 104))(1);

    v16 = v4;
    v17 = v3;
    goto LABEL_9;
  }

  (*(v11 + 120))(&v16);

  v3 = v17;
  if (v5)
  {
    goto LABEL_15;
  }

LABEL_12:
  v13 = static os_log_type_t.fault.getter();
  if (one-time initialization token for runtimeIssuesLog != -1)
  {
    v15 = v13;
    swift_once();
    v13 = v15;
  }

  os_log(_:dso:log:_:_:)(v13, &dword_18D018000, static Log.runtimeIssuesLog, "Reading a Namespace property outside View.body. This will result in identifiers that never match any other identifier.", 118, 2, MEMORY[0x1E69E7CC0]);
  v5 = AGMakeUniqueID();
LABEL_15:
  v14 = (*((*MEMORY[0x1E69E7D40] & *v7) + 0x70))(v3, v5);

  *a1 = v14;
}

uint64_t closure #1 in variable initialization expression of static _TestApp.defaultEnvironment@<X0>(_OWORD *a1@<X8>)
{
  v86 = a1;
  _s10Foundation6LocaleVSgMaTm_1(0, &lazy cache variable for type metadata for Locale?, MEMORY[0x1E6969770]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v82 = &v76 - v2;
  v81 = type metadata accessor for Calendar.Identifier();
  v80 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v78 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for Calendar();
  v4 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v83 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v89 = &v76 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v94 = &v76 - v9;
  v10 = type metadata accessor for TimeZone();
  v95 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v79 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v77 = &v76 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v87 = &v76 - v15;
  _s10Foundation6LocaleVSgMaTm_1(0, &lazy cache variable for type metadata for TimeZone?, MEMORY[0x1E6969BC0]);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v88 = &v76 - v17;
  v18 = type metadata accessor for Locale();
  v91 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v93 = &v76 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v76 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v96 = &v76 - v27;
  EnvironmentValues.init()(&v98);
  type metadata accessor for FontBox<Font.NamedProvider>(0);
  v28 = swift_allocObject();
  strcpy((v28 + 16), "HelveticaNeue");
  *(v28 + 30) = -4864;
  *(v28 + 32) = 0x4031000000000000;
  *(v28 + 40) = 6;
  EnvironmentValues.font.setter(v28);
  v29 = v98;

  v31 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA012DisplayScaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v30);
  if (!v31 || (value = v29, v31[9] != 2.0))
  {
    type metadata accessor for TypedElement<EnvironmentPropertyKey<DisplayScaleKey>>(0);
    *(swift_allocObject() + 72) = 0x4000000000000000;
    _s7SwiftUI12TypedElement33_D64CE6C88E7413721C59A34C0C940F2CLLCyAA8EmptyKeyACLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DisplayScaleKey>, &type metadata for DisplayScaleKey, &protocol witness table for DisplayScaleKey, type metadata accessor for EnvironmentPropertyKey);
    value = PropertyList.Element.init(keyType:before:after:)(v33, 0, v29).value;
    *&v98 = value;
  }

  v34 = *(&v98 + 1);
  if (*(&v98 + 1))
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA012DisplayScaleK033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Ttg5(v29, value);
  }

  v92 = v18;

  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA021SystemColorDefinitionF033_9E3352CE4697DF56A738786E16992848LLVG_Tt2g5(&v98, &type metadata for TestingSystemColorDefinition, &protocol witness table for TestingSystemColorDefinition);

  if (v34)
  {
    v35 = v98;
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA021SystemColorDefinitionK033_9E3352CE4697DF56A738786E16992848LLVG_Ttg5(value, v98);
  }

  else
  {

    v35 = v98;
  }

  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA014DefaultPaddingF033_47C1BD8C61550BB60F4F3D12F752D53DLLVG_Tt2g5(&v98, 16.0, 16.0, 16.0, 16.0);

  if (v34)
  {
    v36 = v98;
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA014DefaultPaddingK033_47C1BD8C61550BB60F4F3D12F752D53DLLVG_Ttg5(v35, v98);
  }

  else
  {

    v36 = v98;
  }

  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE019PlatformColorSchemeF033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt2B5(&v98, 0);

  if (v34)
  {
    v37 = v98;
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE019PlatformColorSchemeK033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Ttg5(v36, v98);
  }

  else
  {

    v37 = v98;
  }

  v38 = v10;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA019ColorSchemeContrastF033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt2B5(&v98, 0);

  if (v34)
  {
    v39 = v98;
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA019ColorSchemeContrastK033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Ttg5(v37, v98);
  }

  else
  {

    v39 = v98;
  }

  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA012SystemAccenteF033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Tt2B5(&v98, 8);

  v40 = v92;
  if (v34)
  {
    v41 = v98;
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA012SystemAccentgK033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Ttg5(v39, v98);
  }

  else
  {

    v41 = v98;
  }

  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA013AppearsActiveF0VG_Tt2g5(&v98, 1);

  v97 = v38;
  v42 = v88;
  if (v34)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA013AppearsActiveK0VG_Ttg5(v41, v98);
  }

  v84 = v4;

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v43 = *((*MEMORY[0x1E69E7D40] & *static CoreGlue2.shared) + 0x60);
  v44 = static CoreGlue2.shared;
  v43(&v98);

  v45 = v96;
  Locale.init(identifier:)();
  v46 = v91;
  v47 = *(v91 + 16);
  v47(v25, v45, v40);
  v48 = v93;
  v47(v93, v25, v40);
  v49 = v98;
  v76 = v47;
  v47(v20, v48, v40);
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA06LocaleF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(&v98, v20);

  v51 = *(v46 + 8);
  v50 = (v46 + 8);
  v90 = v51;
  v51(v20, v40);
  v52 = *(&v98 + 1);
  if (*(&v98 + 1))
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA06LocaleK033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Ttg5(v49, v98);
  }

  v53 = v90;
  v90(v93, v40);
  v93 = v50;
  v53(v25, v40);
  TimeZone.init(abbreviation:)();
  v54 = v97;
  result = (*(v95 + 48))(v42, 1, v97);
  v56 = v87;
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v57 = *(v95 + 16);
    v57(v87, v42, v54);
    v58 = v98;
    v59 = v77;
    v57(v77, v56, v97);
    v60 = v95;
    swift_retain_n();
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA08TimeZoneF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(&v98, v59);

    v61 = *(v60 + 8);
    v62 = v59;
    v63 = v97;
    v61(v62, v97);
    if (v52)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA08TimeZoneK033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Ttg5(v58, v98);
      v63 = v97;

      v42 = v88;
      v61(v56, v63);
    }

    else
    {
      v61(v56, v63);
    }

    v61(v42, v63);
    v64 = v80;
    v65 = v78;
    v66 = v81;
    (*(v80 + 104))(v78, *MEMORY[0x1E6969868], v81);
    Calendar.init(identifier:)();
    (*(v64 + 8))(v65, v66);
    v67 = v82;
    v76(v82, v96, v40);
    (*(v91 + 56))(v67, 0, 1, v40);
    Calendar.locale.setter();
    v68 = v98;
    if (v52)
    {

      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08TimeZoneI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v68, v79);
    }

    else
    {
      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08TimeZoneF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v98, v79);
    }

    v69 = v85;
    v70 = v84;
    v71 = v94;
    Calendar.timeZone.setter();
    v72 = *(v70 + 16);
    v73 = v89;
    v72(v89, v71, v69);
    v74 = v83;
    v72(v83, v73, v69);
    swift_retain_n();
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA08CalendarF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(&v98, v74);

    v75 = *(v70 + 8);
    v75(v74, v69);
    if (v52)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA08CalendarK033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Ttg5(v68, v98);
    }

    v75(v89, v69);
    v75(v94, v69);
    result = (v90)(v96, v92);
    *v86 = v98;
  }

  return result;
}

double static _TestApp.defaultEnvironment.getter@<D0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultEnvironment != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = unk_1EAB26AB0;
  *a1 = static _TestApp.defaultEnvironment;
  a1[1] = v1;

  return result;
}

void __swiftcall _TestApp.init()()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = *((*MEMORY[0x1E69E7D40] & *static CoreGlue2.shared) + 0x50);
  v1 = static CoreGlue2.shared;
  v0();
}

double static _TestApp.host.getter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectRetain();
  return result;
}

uint64_t static _TestApp.host.setter(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  swift_beginAccess();
  *a3 = a1;
  *a4 = a2;
  return swift_unknownObjectRelease();
}

uint64_t key path setter for static _TestApp.host : _TestApp.Type(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v8 = *a1;
  v9 = a1[1];
  swift_beginAccess();
  *a5 = v8;
  *a6 = v9;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

void static _TestApp.renderOptions.setter(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  static _TestApp.renderOptions = v1;
}

void static _TestApp.setIntents(_:)(void *a1)
{
  v1 = *&static _TestApp.testIntents;
  *&static _TestApp.testIntents = *a1;
  swift_beginAccess();
  if (static _TestApp.host)
  {
    v2 = off_1EAB26AC0;
    ObjectType = swift_getObjectType();
    v5 = *&static _TestApp.testIntents;
    v6 = v1;
    v4 = v2[17];
    swift_unknownObjectRetain();
    v4(&v6, &v5, ObjectType, v2);
    swift_unknownObjectRelease();
  }
}

double static _TestApp.environmentOverride.getter@<D0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = static _TestApp.environmentOverride;
  v3 = unk_1EAB26AF0;
  *a1 = static _TestApp.environmentOverride;
  a1[1] = v3;
  return outlined copy of EnvironmentValues?(v2, v3);
}

double static _TestApp.environmentOverride.setter(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_beginAccess();
  v3 = static _TestApp.environmentOverride;
  v4 = unk_1EAB26AF0;
  static _TestApp.environmentOverride = v1;
  unk_1EAB26AF0 = v2;
  return outlined consume of EnvironmentValues?(v3, v4);
}

double key path setter for static _TestApp.environmentOverride : _TestApp.Type(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_beginAccess();
  v3 = static _TestApp.environmentOverride;
  v4 = unk_1EAB26AF0;
  static _TestApp.environmentOverride = v1;
  unk_1EAB26AF0 = v2;
  outlined copy of EnvironmentValues?(v1, v2);
  return outlined consume of EnvironmentValues?(v3, v4);
}

double static _TestApp.updateTestEnvironment(_:)(void (*a1)(uint64_t *))
{
  EnvironmentValues.init()(v5);
  a1(v5);
  v3 = v5[0];
  v4 = v5[1];

  specialized static _TestApp.setTestEnvironment(_:)(&v3);
  outlined consume of EnvironmentValues?(v3, v4);

  return result;
}

Swift::Void __swiftcall _TestApp.setSemantics(_:)(Swift::String a1)
{
  v1 = a1._countAndFlagsBits == 0x74736574616CLL && a1._object == 0xE600000000000000;
  if (v1 || (object = a1._object, countAndFlagsBits = a1._countAndFlagsBits, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    if (one-time initialization token for forced == -1)
    {
      v4 = -2;
LABEL_14:
      swift_beginAccess();
      static Semantics.forced = v4;
      byte_1ED53C51C = 0;
      return;
    }

LABEL_20:
    swift_once();
    v4 = -2;
    goto LABEL_14;
  }

  if (countAndFlagsBits == 0x6C616D6978616DLL && object == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    if (one-time initialization token for forced != -1)
    {
      swift_once();
    }

    v4 = -1;
    goto LABEL_14;
  }

  if ((countAndFlagsBits != 0x6D6574737973 || object != 0xE600000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    _StringGuts.grow(_:)(33);

    MEMORY[0x193ABEDD0](countAndFlagsBits, object);
    MEMORY[0x193ABEDD0](41, 0xE100000000000000);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_20;
  }
}

uint64_t withRenderOptions(_:_:)(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = swift_beginAccess();
  v5 = static _TestApp.renderOptions;
  static _TestApp.renderOptions = v3;
  result = a2(v4);
  static _TestApp.renderOptions = v5;
  return result;
}

uint64_t static EventSourceType.== infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1)
  {
    if (v2 != 1)
    {
      goto LABEL_8;
    }

    v2 = 1;
  }

  if (!*a2)
  {
    return v2 == v3;
  }

  if (v3 == 1)
  {
    v3 = 1;
    return v2 == v3;
  }

LABEL_8:
  result = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return result;
}

uint64_t EventSourceType.hash(into:)()
{
  if (!*v0 || *v0 == 1)
  {
    return MEMORY[0x193AC11A0]();
  }

  result = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return result;
}

Swift::Int EventSourceType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (!v1)
  {
    goto LABEL_4;
  }

  if (v1 == 1)
  {
    v1 = 1;
LABEL_4:
    MEMORY[0x193AC11A0](v1);
    return Hasher._finalize()();
  }

  result = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance EventSourceType(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1)
  {
    if (v2 != 1)
    {
      goto LABEL_8;
    }

    v2 = 1;
  }

  if (!*a2)
  {
    return v2 == v3;
  }

  if (v3 == 1)
  {
    v3 = 1;
    return v2 == v3;
  }

LABEL_8:
  result = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance EventSourceType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (!v1)
  {
    goto LABEL_4;
  }

  if (v1 == 1)
  {
    v1 = 1;
LABEL_4:
    MEMORY[0x193AC11A0](v1);
    return Hasher._finalize()();
  }

  result = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance EventSourceType()
{
  if (!*v0 || *v0 == 1)
  {
    return MEMORY[0x193AC11A0]();
  }

  result = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance EventSourceType(uint64_t a1)
{
  Hasher.init(_seed:)();
  if (*v1 && *v1 != 1)
  {
    result = _diagnoseUnavailableCodeReached()();
    __break(1u);
  }

  else
  {
    MEMORY[0x193AC11A0]();
    return Hasher._finalize()();
  }

  return result;
}

char *protocol witness for static CaseIterable.allCases.getter in conformance EventSourceType@<X0>(char **a1@<X8>)
{
  result = specialized static EventSourceType.allCases.getter();
  *a1 = result;
  return result;
}

_BYTE *static TestingSystemColorDefinition.value(for:environment:)@<X0>(_BYTE *result@<X0>, uint64_t *a2@<X1>, int32x4_t *a3@<X8>)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = xmmword_18DE0F8D0;
  v6 = 2143289344;
  switch(*result)
  {
    case 1:
      v5 = xmmword_18DE0F950;
      goto LABEL_17;
    case 2:
      v5 = xmmword_18DE0F940;
      goto LABEL_17;
    case 3:
      v5 = xmmword_18DE0F960;
      goto LABEL_17;
    case 4:
    case 5:
    case 6:
      v5 = xmmword_18DE0F900;
      goto LABEL_17;
    case 7:
      v5 = xmmword_18DDBDEB0;
      goto LABEL_17;
    case 8:
      v5 = xmmword_18DE0F910;
      goto LABEL_17;
    case 9:
      v5 = xmmword_18DE0F920;
      goto LABEL_17;
    case 0xA:
      v5 = xmmword_18DE0F930;
      goto LABEL_17;
    case 0xB:
      v5 = xmmword_18DE0F8F0;
      goto LABEL_17;
    case 0xC:
      goto LABEL_18;
    case 0xD:
      v17.i64[0] = *a2;
      v17.i64[1] = v4;
      v8 = a3;
      result = EnvironmentValues.colorScheme.getter(v15);
      a3 = v8;
      v9 = 1.0;
      if (!LOBYTE(v15[0]))
      {
        v9 = 0.0;
      }

      __asm { FMOV            V0.4S, #1.0 }

      *_Q0.i32 = v9;
      v5 = vzip1q_s32(_Q0, _Q0);
      *&v5.i32[2] = v9;
      goto LABEL_17;
    case 0xE:
    case 0xF:
    case 0x10:
    case 0x11:
      v16 = 12;
      v15[0] = v3;
      v15[1] = v4;
      v7 = a3;
      result = static TestingSystemColorDefinition.value(for:environment:)(&v16, v15, &v17);
      a3 = v7;
      v5 = v17;
      v6 = v18;
      goto LABEL_18;
    case 0x12:
    case 0x13:
    case 0x14:
    case 0x15:
      v5 = xmmword_18DE0F8E0;
      goto LABEL_17;
    default:
      v5 = xmmword_18DE0F970;
LABEL_17:
      v6 = 2143289344;
LABEL_18:
      *a3 = v5;
      a3[1].i32[0] = v6;
      return result;
  }
}

double protocol witness for static SystemColorDefinition.value(for:environment:) in conformance TestingSystemColorDefinition@<D0>(_BYTE *a1@<X0>, uint64_t *a2@<X1>, int32x4_t *a3@<X8>)
{
  static TestingSystemColorDefinition.value(for:environment:)(a1, a2, &v5);
  result = *v5.i64;
  *a3 = v5;
  a3[1].i32[0] = v6;
  return result;
}

float protocol witness for static SystemColorDefinition.opacity(at:environment:) in conformance TestingSystemColorDefinition(uint64_t a1)
{
  result = 0.25;
  if (a1 == 2)
  {
    result = 0.5;
  }

  if (a1 == 1)
  {
    result = 0.75;
  }

  if (a1 <= 0)
  {
    return 1.0;
  }

  return result;
}

void specialized static _TestApp.setTestEnvironment(_:)(Swift::UInt *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (*a1 == 1)
  {
    swift_beginAccess();
    v3 = static _TestApp.environmentOverride;
    v4 = unk_1EAB26AF0;
    static _TestApp.environmentOverride = 1;
    unk_1EAB26AF0 = v1;
    outlined consume of EnvironmentValues?(v3, v4);
    goto LABEL_20;
  }

  v5 = one-time initialization token for defaultEnvironment;

  if (v5 != -1)
  {
    swift_once();
  }

  v7 = static _TestApp.defaultEnvironment;
  v6 = unk_1EAB26AB0;
  if (static _TestApp.defaultEnvironment)
  {
    if (v2)
    {
      if (*(static _TestApp.defaultEnvironment + 24))
      {
        _s7SwiftUI12TypedElement33_D64CE6C88E7413721C59A34C0C940F2CLLCyAA8EmptyKeyACLLVGMaTm_0(0, &lazy cache variable for type metadata for TypedElement<EmptyKey>, &type metadata for EmptyKey, &protocol witness table for EmptyKey, type metadata accessor for TypedElement);
        swift_allocObject();

        swift_retain_n();

        v8.value = PropertyList.Element.init(keyType:before:after:)(&type metadata for EmptyKey, v2, v7).value;
      }

      else
      {
        v10 = *(static _TestApp.defaultEnvironment + 32);
        v11 = *(*static _TestApp.defaultEnvironment + 216);

        swift_retain_n();

        v8.value = v11(v12, v10);
      }
    }

    else
    {

      swift_retain_n();
      v8.value = v7;
    }

    v9 = *(v7 + 64);
    goto LABEL_14;
  }

  if (v2)
  {

    v9 = 0;
    v8.value = v2;
LABEL_14:
    if (v9 == *(v8.value + 64))
    {
      v8.value = v7;
    }

    else if (v6)
    {
      PropertyList.Tracker.invalidateAllValues(from:to:)(v7, v8.value);
    }

    goto LABEL_19;
  }

  v8.value = 0;
LABEL_19:
  swift_beginAccess();
  v13 = static _TestApp.environmentOverride;
  v14 = unk_1EAB26AF0;
  static _TestApp.environmentOverride = v8.value;
  unk_1EAB26AF0 = v6;

  outlined consume of EnvironmentValues?(v13, v14);
  outlined consume of EnvironmentValues?(v2, v1);

LABEL_20:
  swift_beginAccess();
  if (static _TestApp.host)
  {
    v15 = off_1EAB26AC0;
    ObjectType = swift_getObjectType();
    v17 = v15[18];
    swift_unknownObjectRetain();
    v17(2, 0, ObjectType, v15);
    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  if (static _TestApp.comparisonHost)
  {
    v18 = off_1EAB26AD0;
    v19 = swift_getObjectType();
    v20 = v18[18];
    swift_unknownObjectRetain();
    v20(2, 0, v19, v18);
    swift_unknownObjectRelease();
  }
}

char *specialized static EventSourceType.allCases.getter()
{
  v0 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    v0 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v1 > 1), v2 + 1, 1, v0);
    v1 = *(v0 + 3);
    v3 = v1 >> 1;
  }

  *(v0 + 2) = v4;
  v0[v2 + 32] = 0;
  v5 = v2 + 2;
  if (v3 < v5)
  {
    v0 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v1 > 1), v5, 1, v0);
  }

  *(v0 + 2) = v5;
  v0[v4 + 32] = 1;
  return v0;
}

void lazy protocol witness table accessor for type EventSourceType and conformance EventSourceType()
{
  if (!lazy protocol witness table cache variable for type EventSourceType and conformance EventSourceType)
  {
    swift_getWitnessTable(protocol conformance descriptor for EventSourceType, &type metadata for EventSourceType, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type EventSourceType and conformance EventSourceType);
  }
}

void lazy protocol witness table accessor for type [EventSourceType] and conformance [A]()
{
  if (!lazy protocol witness table cache variable for type [EventSourceType] and conformance [A])
  {
    type metadata accessor for [EventSourceType]();
    swift_getWitnessTable(MEMORY[0x1E69E6340], v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type [EventSourceType] and conformance [A]);
  }
}

void type metadata accessor for [EventSourceType]()
{
  if (!lazy cache variable for type metadata for [EventSourceType])
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [EventSourceType]);
    }
  }
}

double keypath_getTm_6@<D0>(__int128 *a1@<X3>, __int128 *a2@<X8>)
{
  swift_beginAccess();
  *a2 = *a1;
  swift_unknownObjectRetain();
  return result;
}

void *initializeWithCopy for _TestApp.RootView(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;

  return a1;
}

void *assignWithCopy for _TestApp.RootView(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  a1[2] = a2[2];

  a1[3] = a2[3];
  return a1;
}

uint64_t assignWithTake for _TestApp.RootView(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

void *assignWithCopy for _TestApp.RootView.StateType(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  return a1;
}

void *assignWithTake for _TestApp.RootView.StateType(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

void lazy protocol witness table accessor for type RootViewID and conformance RootViewID()
{
  if (!lazy protocol witness table cache variable for type RootViewID and conformance RootViewID)
  {
    swift_getWitnessTable(protocol conformance descriptor for RootViewID, &unk_1F00AC2A0, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type RootViewID and conformance RootViewID);
  }
}

{
  if (!lazy protocol witness table cache variable for type RootViewID and conformance RootViewID)
  {
    swift_getWitnessTable(protocol conformance descriptor for RootViewID, &unk_1F00AC2A0, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type RootViewID and conformance RootViewID);
  }
}

void _s10Foundation6LocaleVSgMaTm_1(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void type metadata accessor for FontBox<Font.NamedProvider>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for FontBox<Font.NamedProvider>)
  {
    lazy protocol witness table accessor for type Font.NamedProvider and conformance Font.NamedProvider();
    v4 = type metadata accessor for FontBox(a1, &type metadata for Font.NamedProvider, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for FontBox<Font.NamedProvider>);
    }
  }
}

void _s7SwiftUI12TypedElement33_D64CE6C88E7413721C59A34C0C940F2CLLCyAA8EmptyKeyACLLVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t ObjectCache.__allocating_init(constructor:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ObjectCache.init(constructor:)(a1, a2);
  return v4;
}

uint64_t ObjectCache.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v31 = a2;
  v5 = *v2;
  v6 = v5[11];
  v34 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v29 = &v25 - v7;
  v33 = type metadata accessor for Optional();
  v30 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - v11;
  v13 = v5[10];
  v14 = v5[12];
  v15 = dispatch thunk of Hashable.hashValue.getter();
  v37 = 0;
  v36 = 0x80000000;
  ObjectCache.$data.getter(&v35);
  v16 = v35;
  os_unfair_lock_lock(v35 + 4);
  v26 = 4 * (v15 & 7);
  v27 = v15;
  v28 = a1;
  v32 = v13;
  closure #1 in ObjectCache.subscript.getter(&v16[6], v26, v15, a1, &v36, &v37, v13, v6, v12, v14);
  v17 = type metadata accessor for ObjectCache.Data(0, v32, v6, v14);
  $defer #1 <A>() in AtomicBox.wrappedValue.getter(v16 + 4);

  v18 = v30;
  v19 = v33;
  (*(v30 + 16))(v9, v12, v33);
  v20 = (*(v34 + 48))(v9, 1, v6);
  v21 = *(v18 + 8);
  if (v20 == 1)
  {
    v30 = v17;
    v21(v9, v19);
    v22 = v28;
    v9 = v29;
    (v3[2])(v28);
    ObjectCache.$data.getter(&v35);
    v23 = v35;
    os_unfair_lock_lock(v35 + 4);
    closure #2 in ObjectCache.subscript.getter(&v23[6], v26, &v37, v22, v27, v9, v32, v6, v14);
    $defer #1 <A>() in AtomicBox.wrappedValue.getter(v23 + 4);
    v21(v12, v33);
  }

  else
  {
    v21(v12, v19);
  }

  return (*(v34 + 32))(v31, v9, v6);
}

uint64_t ObjectCache.Item.init(data:used:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  swift_getTupleTypeMetadata3();
  v12 = type metadata accessor for Optional();
  (*(*(v12 - 8) + 32))(a6, a1, v12);
  result = type metadata accessor for ObjectCache.Item(0, a3, a4, a5);
  *(a6 + *(result + 44)) = a2;
  return result;
}

uint64_t ObjectCache.Data.init()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v7 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = type metadata accessor for ObjectCache.Item(0, a1, a2, a3);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v17 - v13;
  (*(*(TupleTypeMetadata3 - 8) + 56))(v9, 1, 1, TupleTypeMetadata3, v12);
  ObjectCache.Item.init(data:used:)(v9, 0, a1, a2, a3, v14);
  v15 = specialized Array.init(repeating:count:)(v14, 32, v10);
  (*(v11 + 8))(v14, v10);
  return v15;
}

uint64_t property wrapper backing initializer of ObjectCache.data@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v11 = a1;
  v12 = a2;
  v7 = type metadata accessor for ObjectCache.Data(0, a3, a4, a5);
  return AtomicBox.init(wrappedValue:)(&v11, v7, v8, v9, a6);
}

uint64_t ObjectCache.$data.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for ObjectCache.Data(255, *(*v1 + 80), *(*v1 + 88), *(*v1 + 96));
  type metadata accessor for AtomicBox(0, v3, v4, v5);
  return AtomicBox.projectedValue.getter(a1);
}

void *ObjectCache.init(constructor:)(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 80);
  v6 = *(*v2 + 88);
  v7 = *(*v2 + 96);
  v15 = ObjectCache.Data.init()(v5, v6, v7);
  v16 = v8;
  v9 = type metadata accessor for ObjectCache.Data(0, v5, v6, v7);
  AtomicBox.init(wrappedValue:)(&v15, v9, v10, v11, &v14);
  v12 = v14;
  v2[3] = a2;
  v2[4] = v12;
  v2[2] = a1;
  return v2;
}

void closure #1 in ObjectCache.subscript.getter(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int *a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v59 = a4;
  v67 = a6;
  v69 = a3;
  v57 = a9;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v74 = type metadata accessor for Optional();
  v16 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v18 = &v55 - v17;
  v60 = a10;
  v61 = a7;
  v58 = a8;
  v19 = a8;
  v20 = a5;
  v77 = type metadata accessor for ObjectCache.Item(0, a7, v19, a10);
  MEMORY[0x1EEE9AC00](v77);
  v64 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v73 = &v55 - v23;
  v75 = TupleTypeMetadata3;
  MEMORY[0x1EEE9AC00](v24);
  v56 = &v55 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v55 - v27;
  v29 = 0;
  v70 = a1;
  v76 = *a1;
  v31 = (v30 + 48);
  v71 = (v30 + 32);
  v72 = (v16 + 32);
  v63 = (v30 + 8);
  v55 = v32;
  v62 = (v32 + 8);
  v68 = (v16 + 8);
  v65 = v20;
  v66 = a2;
  while (1)
  {
    v33 = a2 + v29;
    if (__OFADD__(a2, v29))
    {
      break;
    }

    v34 = v73;
    Array.subscript.getter();
    v35 = v74;
    (*v72)(v18, v34, v74);
    v36 = v75;
    if ((*v31)(v18, 1, v75) == 1)
    {
      (*v68)(v18, v35);
      v37 = 0x7FFFFFFF;
      if (*v20 == 0x7FFFFFFF)
      {
        goto LABEL_3;
      }

LABEL_2:
      *v67 = v29;
      *v20 = v37;
      goto LABEL_3;
    }

    v38 = *v71;
    v39 = v28;
    (*v71)(v28, v18, v36);
    if (*&v28[*(v36 + 48)] == v69)
    {
      v40 = dispatch thunk of static Equatable.== infix(_:_:)();
      v36 = v75;
      if (v40)
      {
        v45 = v58;
        type metadata accessor for ObjectCache.Data(0, v61, v58, v60);
        v46 = v70;
        v47 = *(v70 + 2) + 1;
        *(v70 + 2) = v47;
        v48 = v77;
        type metadata accessor for Array();
        Array._makeMutableAndUnique()();
        v49 = *v46;
        Array._checkSubscript_mutating(_:)(v33);
        *(v49 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v33 + *(v48 + 44)) = v47;
        _ViewInputs.base.modify();
        v50 = v56;
        v51 = v75;
        v38(v56, v39, v75);
        v52 = *(v51 + 64);
        v53 = *(v45 - 8);
        v54 = v57;
        (*(v53 + 32))(v57, &v50[v52], v45);
        (*(v53 + 56))(v54, 0, 1, v45);
        (*(*(v61 - 8) + 8))(v50);
        return;
      }
    }

    v41 = *(v70 + 2);
    v42 = v64;
    v43 = v77;
    Array.subscript.getter();
    (*v63)(v28, v36);
    v44 = *&v42[*(v43 + 44)];
    (*v62)(v42, v43);
    v37 = v41 - v44;
    v20 = v65;
    a2 = v66;
    if (*v65 < v37)
    {
      goto LABEL_2;
    }

LABEL_3:
    if (++v29 == 4)
    {
      (*(*(v58 - 8) + 56))(v57, 1, 1);
      return;
    }
  }

  __break(1u);
}

void closure #2 in ObjectCache.subscript.getter(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v34 = a5;
  v35 = a6;
  v33 = a4;
  v36 = a3;
  v37 = a2;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v13 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v31 - v14;
  v16 = type metadata accessor for ObjectCache.Item(0, a7, a8, a9);
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v31 - v19;
  v21 = (v37 + *v36);
  if (__OFADD__(v37, *v36))
  {
    __break(1u);
  }

  else
  {
    v22 = *(TupleTypeMetadata3 + 48);
    v32 = a9;
    v23 = *(TupleTypeMetadata3 + 64);
    v24 = *(*(a7 - 8) + 16);
    v36 = v21;
    v31 = v20;
    v24(v15, v33, a7, v18);
    v25 = v35;
    *&v15[v22] = v34;
    (*(*(a8 - 8) + 16))(&v15[v23], v25, a8);
    (*(*(TupleTypeMetadata3 - 8) + 56))(v15, 0, 1, TupleTypeMetadata3);
    v26 = v32;
    type metadata accessor for ObjectCache.Data(0, a7, a8, v32);
    v27 = *(a1 + 2) + 1;
    *(a1 + 2) = v27;
    v28 = v31;
    ObjectCache.Item.init(data:used:)(v15, v27, a7, a8, v26, v31);
    type metadata accessor for Array();
    Array._makeMutableAndUnique()();
    v29 = *a1;
    v30 = v36;
    Array._checkSubscript_mutating(_:)(v36);
    (*(v17 + 40))(v29 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v30, v28, v16);
    _ViewInputs.base.modify();
  }
}

uint64_t ObjectCache.deinit()
{

  return v0;
}

uint64_t ObjectCache.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t specialized Array.init(repeating:count:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = static Array._allocateUninitialized(_:)();
  v14 = result;
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = v7;
      v9 = *(a3 - 8);
      v10 = *(v9 + 16);
      v10(v7, a1, a3);
      v11 = a2 - 1;
      if (v11)
      {
        v12 = *(v9 + 72);
        v13 = v8 + v12;
        do
        {
          v10(v13, a1, a3);
          v13 += v12;
          --v11;
        }

        while (v11);
      }
    }

    type metadata accessor for Array();
    _ViewInputs.base.modify();
    return v14;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for ObjectCache.Item(void *a1, unsigned __int16 *a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v5 - 8);
  v10 = *(v9 + 84);
  v11 = *(v7 + 64);
  v12 = *(v9 + 80);
  v13 = (((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + v12 + 8) & ~v12;
  v14 = *(v9 + 64);
  v15 = v13 + v14;
  v16 = v10 | v8;
  if (v10 | v8)
  {
    v17 = v13 + v14;
  }

  else
  {
    v17 = v15 + 1;
  }

  v18 = v12 | *(v7 + 80) & 0xF8;
  if (v18 <= 7 && ((*(v7 + 80) | *(v9 + 80)) & 0x100000) == 0 && ((v17 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4 <= 0x18)
  {
    if (v16)
    {
      if (v8 >= v10)
      {
        if (!(*(v7 + 48))(a2))
        {
          goto LABEL_35;
        }
      }

      else if (!(*(v9 + 48))(((a2 + v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v10, v5))
      {
LABEL_35:
        (*(v7 + 16))(a1, a2, v6);
        v25 = ((a1 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
        v26 = ((a2 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
        *v25 = *v26;
        (*(v9 + 16))(v25 + 1, v26 + 1, v5);
        if (!v16)
        {
          *(a1 + v15) = 0;
        }

        goto LABEL_37;
      }
    }

    else
    {
      if (!*(a2 + v15))
      {
        goto LABEL_35;
      }

      v22 = (*(a2 + v15) - 1) << (8 * v15);
      if (v15 > 3)
      {
        v22 = 0;
      }

      if (v15)
      {
        v23 = v15 <= 3 ? v15 : 4;
        if (v23 > 2)
        {
          v24 = v23 == 3 ? *a2 | (*(a2 + 2) << 16) : *a2;
        }

        else
        {
          v24 = v23 == 1 ? *a2 : *a2;
        }
      }

      else
      {
        v24 = 0;
      }

      if ((v24 | v22) == 0xFFFFFFFF)
      {
        goto LABEL_35;
      }
    }

    memcpy(a1, a2, v17);
LABEL_37:
    *((a1 + v17 + 3) & 0xFFFFFFFFFFFFFFFCLL) = *((a2 + v17 + 3) & 0xFFFFFFFFFFFFFFFCLL);
    return a1;
  }

  v21 = *a2;
  *a1 = *a2;
  a1 = (v21 + (((v18 | 7) + 16) & ~(v18 | 7)));

  return a1;
}

unsigned __int16 *assignWithCopy for ObjectCache.Item(unsigned __int16 *a1, unsigned __int16 *a2, uint64_t a3)
{
  v3 = a2;
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v42 = *(a3 + 24);
  v8 = *(v42 - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 64);
  v11 = *(v8 + 80);
  v41 = ~v11;
  v12 = ((v11 + ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v11) + *(v8 + 64);
  v13 = v9 | v7;
  v39 = v10;
  v40 = v6;
  if (!(v9 | v7))
  {
    v18 = 8 * v12;
    if (*(a1 + v12))
    {
      v19 = (*(a1 + v12) - 1) << v18;
      if (v12 > 3)
      {
        v19 = 0;
      }

      if (v12)
      {
        v20 = v12 <= 3 ? ((v11 + ((v10 + 7) & 0xFFFFFFF8) + 8) & ~v11) + *(v8 + 64) : 4;
        if (v20 > 2)
        {
          v21 = v20 == 3 ? *a1 | (*(a1 + 2) << 16) : *a1;
        }

        else
        {
          v21 = v20 == 1 ? *a1 : *a1;
        }
      }

      else
      {
        v21 = 0;
      }

      if ((v21 | v19) != 0xFFFFFFFF)
      {
        if (!*(a2 + v12))
        {
          goto LABEL_63;
        }

        v24 = (*(a2 + v12) - 1) << v18;
        if (v12 > 3)
        {
          v24 = 0;
        }

        if (v12)
        {
          v25 = v12 <= 3 ? ((v11 + ((v10 + 7) & 0xFFFFFFF8) + 8) & ~v11) + *(v8 + 64) : 4;
          if (v25 > 2)
          {
            v26 = v25 == 3 ? *a2 | (*(a2 + 2) << 16) : *a2;
          }

          else
          {
            v26 = v25 == 1 ? *a2 : *a2;
          }
        }

        else
        {
          v26 = 0;
        }

        if ((v26 | v24) == 0xFFFFFFFF)
        {
          goto LABEL_63;
        }

LABEL_55:
        if (v13)
        {
          v30 = v12;
        }

        else
        {
          v30 = v12 + 1;
        }

        memcpy(a1, v3, v30);
        goto LABEL_65;
      }
    }

    if (!*(a2 + v12))
    {
      goto LABEL_59;
    }

    v27 = (*(a2 + v12) - 1) << v18;
    if (v12 > 3)
    {
      v27 = 0;
    }

    if (v12)
    {
      v28 = v12 <= 3 ? ((v11 + ((v10 + 7) & 0xFFFFFFF8) + 8) & ~v11) + *(v8 + 64) : 4;
      if (v28 > 2)
      {
        v29 = v28 == 3 ? *a2 | (*(a2 + 2) << 16) : *a2;
      }

      else
      {
        v29 = v28 == 1 ? *a2 : *a2;
      }
    }

    else
    {
      v29 = 0;
    }

    v10 = *(*(*(a3 + 16) - 8) + 64);
    v6 = *(*(a3 + 16) - 8);
    if ((v29 | v27) == 0xFFFFFFFF)
    {
LABEL_59:
      (*(v6 + 24))(a1, v3, v5);
      v31 = ((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
      v32 = ((v3 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
      *v31 = *v32;
      (*(v8 + 24))((v31 + v11 + 8) & v41, (v32 + v11 + 8) & v41, v42);
      goto LABEL_65;
    }

LABEL_54:
    (*(v6 + 8))(a1, v5);
    (*(v8 + 8))((((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8) + v11 + 8) & v41, v42);
    goto LABEL_55;
  }

  v38 = v9 | v7;
  if (v7 < v9)
  {
    v15 = *(*(*(a3 + 16) - 8) + 64);
    v16 = *(v8 + 48);
    v37 = v16((((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8) + v11 + 8) & v41, v9, v42);
    v17 = v16((((a2 + v15 + 7) & 0xFFFFFFFFFFFFFFF8) + v11 + 8) & v41, v9, v42);
    v3 = a2;
    v13 = v38;
    if (v37)
    {
      goto LABEL_4;
    }

LABEL_17:
    v10 = v39;
    v6 = v40;
    if (!v17)
    {
      goto LABEL_59;
    }

    goto LABEL_54;
  }

  v22 = *(v6 + 48);
  v23 = v22(a1, v7, v5);
  v17 = v22(a2, v7, v5);
  v3 = a2;
  v13 = v38;
  if (!v23)
  {
    goto LABEL_17;
  }

LABEL_4:
  if (v17)
  {
    goto LABEL_55;
  }

LABEL_63:
  (*(v40 + 16))(a1, v3, v5);
  v33 = ((a1 + v39 + 7) & 0xFFFFFFFFFFFFFFF8);
  v34 = ((v3 + v39 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v33 = *v34;
  (*(v8 + 16))((v33 + v11 + 8) & v41, (v34 + v11 + 8) & v41, v42);
  if (!v13)
  {
    *(a1 + v12) = 0;
  }

LABEL_65:
  if (v13)
  {
    v35 = v12;
  }

  else
  {
    v35 = v12 + 1;
  }

  *((a1 + v35 + 3) & 0xFFFFFFFFFFFFFFFCLL) = *((v3 + v35 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  return a1;
}

void *initializeWithTake for ObjectCache.Item(void *a1, unsigned __int16 *a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v5 - 8);
  v10 = *(v9 + 84);
  v11 = *(v7 + 64);
  v12 = *(v9 + 80);
  v13 = ((v12 + ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v12) + *(v9 + 64);
  v14 = v10 | v8;
  if (!(v10 | v8))
  {
    if (!*(a2 + v13))
    {
      goto LABEL_26;
    }

    v15 = (*(a2 + v13) - 1) << (8 * v13);
    if (v13 > 3)
    {
      v15 = 0;
    }

    if (v13)
    {
      v16 = v13 <= 3 ? ((v12 + ((v11 + 7) & 0xFFFFFFF8) + 8) & ~v12) + *(v9 + 64) : 4;
      if (v16 > 2)
      {
        v17 = v16 == 3 ? *a2 | (*(a2 + 2) << 16) : *a2;
      }

      else
      {
        v17 = v16 == 1 ? *a2 : *a2;
      }
    }

    else
    {
      v17 = 0;
    }

    if ((v17 | v15) == 0xFFFFFFFF)
    {
      goto LABEL_26;
    }

    goto LABEL_16;
  }

  if (v8 >= v10)
  {
    if (!(*(v7 + 48))(a2))
    {
      goto LABEL_26;
    }

LABEL_16:
    if (v14)
    {
      v18 = v13;
    }

    else
    {
      v18 = v13 + 1;
    }

    memcpy(a1, a2, v18);
    goto LABEL_28;
  }

  if ((*(v9 + 48))((((a2 + v11 + 7) & 0xFFFFFFFFFFFFFFF8) + v12 + 8) & ~v12, v10, v5))
  {
    goto LABEL_16;
  }

LABEL_26:
  (*(v7 + 32))(a1, a2, v6);
  v19 = ((a1 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
  v20 = ((a2 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v19 = *v20;
  (*(v9 + 32))((v19 + v12 + 8) & ~v12, (v20 + v12 + 8) & ~v12, v5);
  if (!v14)
  {
    *(a1 + v13) = 0;
  }

LABEL_28:
  if (v14)
  {
    v21 = v13;
  }

  else
  {
    v21 = v13 + 1;
  }

  *((a1 + v21 + 3) & 0xFFFFFFFFFFFFFFFCLL) = *((a2 + v21 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  return a1;
}

unsigned __int16 *assignWithTake for ObjectCache.Item(unsigned __int16 *a1, unsigned __int16 *a2, uint64_t a3)
{
  v3 = a2;
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v42 = *(a3 + 24);
  v8 = *(v42 - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 64);
  v11 = *(v8 + 80);
  v41 = ~v11;
  v12 = ((v11 + ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v11) + *(v8 + 64);
  v13 = v9 | v7;
  v39 = v10;
  v40 = v6;
  if (!(v9 | v7))
  {
    v18 = 8 * v12;
    if (*(a1 + v12))
    {
      v19 = (*(a1 + v12) - 1) << v18;
      if (v12 > 3)
      {
        v19 = 0;
      }

      if (v12)
      {
        v20 = v12 <= 3 ? ((v11 + ((v10 + 7) & 0xFFFFFFF8) + 8) & ~v11) + *(v8 + 64) : 4;
        if (v20 > 2)
        {
          v21 = v20 == 3 ? *a1 | (*(a1 + 2) << 16) : *a1;
        }

        else
        {
          v21 = v20 == 1 ? *a1 : *a1;
        }
      }

      else
      {
        v21 = 0;
      }

      if ((v21 | v19) != 0xFFFFFFFF)
      {
        if (!*(a2 + v12))
        {
          goto LABEL_63;
        }

        v24 = (*(a2 + v12) - 1) << v18;
        if (v12 > 3)
        {
          v24 = 0;
        }

        if (v12)
        {
          v25 = v12 <= 3 ? ((v11 + ((v10 + 7) & 0xFFFFFFF8) + 8) & ~v11) + *(v8 + 64) : 4;
          if (v25 > 2)
          {
            v26 = v25 == 3 ? *a2 | (*(a2 + 2) << 16) : *a2;
          }

          else
          {
            v26 = v25 == 1 ? *a2 : *a2;
          }
        }

        else
        {
          v26 = 0;
        }

        if ((v26 | v24) == 0xFFFFFFFF)
        {
          goto LABEL_63;
        }

LABEL_55:
        if (v13)
        {
          v30 = v12;
        }

        else
        {
          v30 = v12 + 1;
        }

        memcpy(a1, v3, v30);
        goto LABEL_65;
      }
    }

    if (!*(a2 + v12))
    {
      goto LABEL_59;
    }

    v27 = (*(a2 + v12) - 1) << v18;
    if (v12 > 3)
    {
      v27 = 0;
    }

    if (v12)
    {
      v28 = v12 <= 3 ? ((v11 + ((v10 + 7) & 0xFFFFFFF8) + 8) & ~v11) + *(v8 + 64) : 4;
      if (v28 > 2)
      {
        v29 = v28 == 3 ? *a2 | (*(a2 + 2) << 16) : *a2;
      }

      else
      {
        v29 = v28 == 1 ? *a2 : *a2;
      }
    }

    else
    {
      v29 = 0;
    }

    v10 = *(*(*(a3 + 16) - 8) + 64);
    v6 = *(*(a3 + 16) - 8);
    if ((v29 | v27) == 0xFFFFFFFF)
    {
LABEL_59:
      (*(v6 + 40))(a1, v3, v5);
      v31 = ((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
      v32 = ((v3 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
      *v31 = *v32;
      (*(v8 + 40))((v31 + v11 + 8) & v41, (v32 + v11 + 8) & v41, v42);
      goto LABEL_65;
    }

LABEL_54:
    (*(v6 + 8))(a1, v5);
    (*(v8 + 8))((((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8) + v11 + 8) & v41, v42);
    goto LABEL_55;
  }

  v38 = v9 | v7;
  if (v7 < v9)
  {
    v15 = *(*(*(a3 + 16) - 8) + 64);
    v16 = *(v8 + 48);
    v37 = v16((((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8) + v11 + 8) & v41, v9, v42);
    v17 = v16((((a2 + v15 + 7) & 0xFFFFFFFFFFFFFFF8) + v11 + 8) & v41, v9, v42);
    v3 = a2;
    v13 = v38;
    if (v37)
    {
      goto LABEL_4;
    }

LABEL_17:
    v10 = v39;
    v6 = v40;
    if (!v17)
    {
      goto LABEL_59;
    }

    goto LABEL_54;
  }

  v22 = *(v6 + 48);
  v23 = v22(a1, v7, v5);
  v17 = v22(a2, v7, v5);
  v3 = a2;
  v13 = v38;
  if (!v23)
  {
    goto LABEL_17;
  }

LABEL_4:
  if (v17)
  {
    goto LABEL_55;
  }

LABEL_63:
  (*(v40 + 32))(a1, v3, v5);
  v33 = ((a1 + v39 + 7) & 0xFFFFFFFFFFFFFFF8);
  v34 = ((v3 + v39 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v33 = *v34;
  (*(v8 + 32))((v33 + v11 + 8) & v41, (v34 + v11 + 8) & v41, v42);
  if (!v13)
  {
    *(a1 + v12) = 0;
  }

LABEL_65:
  if (v13)
  {
    v35 = v12;
  }

  else
  {
    v35 = v12 + 1;
  }

  *((a1 + v35 + 3) & 0xFFFFFFFFFFFFFFFCLL) = *((v3 + v35 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  return a1;
}

uint64_t getEnumTagSinglePayload for ObjectCache.Item(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = v7;
  v9 = *(v7 + 84);
  if (v9 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  v11 = v10 - 1;
  if (!v10)
  {
    v11 = 0;
  }

  v12 = *(*(*(a3 + 16) - 8) + 64);
  v13 = *(v7 + 80);
  v14 = *(*(v6 - 8) + 64);
  if (!v10)
  {
    ++v14;
  }

  if (!a2)
  {
    return 0;
  }

  if (v11 < a2)
  {
    v15 = ((v14 + ((v13 + ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v13) + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4;
    v16 = a2 - v11;
    v17 = v15 & 0xFFFFFFFC;
    if ((v15 & 0xFFFFFFFC) != 0)
    {
      v18 = 2;
    }

    else
    {
      v18 = v16 + 1;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    if (v20 > 1)
    {
      if (v20 == 2)
      {
        v21 = *(a1 + v15);
        if (v21)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v21 = *(a1 + v15);
        if (v21)
        {
          goto LABEL_24;
        }
      }
    }

    else if (v20)
    {
      v21 = *(a1 + v15);
      if (v21)
      {
LABEL_24:
        v22 = v21 - 1;
        if (v17)
        {
          v22 = 0;
          v23 = *a1;
        }

        else
        {
          v23 = 0;
        }

        return v11 + (v23 | v22) + 1;
      }
    }
  }

  if (v10 < 2)
  {
    return 0;
  }

  if (v5 >= v9)
  {
    v25 = (*(v4 + 48))(a1);
  }

  else
  {
    v25 = (*(v8 + 48))((((a1 + v12 + 7) & 0xFFFFFFFFFFFFFFF8) + v13 + 8) & ~v13, v9, v6);
  }

  if (v25 >= 2)
  {
    return v25 - 1;
  }

  else
  {
    return 0;
  }
}

void storeEnumTagSinglePayload for ObjectCache.Item(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(a4 + 24);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v6 + 64);
  v12 = *(v9 + 80);
  if (v10 <= v7)
  {
    v13 = *(v6 + 84);
  }

  else
  {
    v13 = *(v9 + 84);
  }

  v14 = v13 - 1;
  if (!v13)
  {
    v14 = 0;
  }

  v15 = ((v12 + ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v12) + *(*(v8 - 8) + 64);
  v16 = 3;
  if (!v13)
  {
    v16 = 4;
  }

  v17 = ((v16 + v15) & 0xFFFFFFFFFFFFFFFCLL) + 4;
  if (v14 < a3)
  {
    v18 = a3 - v14;
    if (((v16 + v15) & 0xFFFFFFFC) == 0xFFFFFFFC)
    {
      v19 = v18 + 1;
    }

    else
    {
      v19 = 2;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    if (v19 >= 2)
    {
      v5 = v20;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v14)
  {
    if (v17)
    {
      v21 = 1;
    }

    else
    {
      v21 = a2 - v14;
    }

    if (v17)
    {
      v22 = ~v14 + a2;
      v23 = a1;
      bzero(a1, v17);
      a1 = v23;
      *v23 = v22;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v17) = v21;
      }

      else
      {
        *(a1 + v17) = v21;
      }
    }

    else if (v5)
    {
      *(a1 + v17) = v21;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v17) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v17) = 0;
  }

  else if (v5)
  {
    *(a1 + v17) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!a2)
  {
    return;
  }

LABEL_38:
  if (v13 >= 2)
  {
    if (a2 >= v13)
    {
      if (v15 <= 3)
      {
        v27 = ~(-1 << (8 * v15));
      }

      else
      {
        v27 = -1;
      }

      if (v15)
      {
        v28 = v27 & (a2 - v13);
        if (v15 <= 3)
        {
          v29 = v15;
        }

        else
        {
          v29 = 4;
        }

        v30 = a1;
        bzero(a1, v15);
        if (v29 > 2)
        {
          if (v29 == 3)
          {
            *v30 = v28;
            *(v30 + 2) = BYTE2(v28);
          }

          else
          {
            *v30 = v28;
          }
        }

        else if (v29 == 1)
        {
          *v30 = v28;
        }

        else
        {
          *v30 = v28;
        }
      }
    }

    else if (v7 >= v10)
    {
      v31 = *(v6 + 56);

      v31();
    }

    else
    {
      v24 = *(v9 + 56);
      v25 = (((a1 + v11 + 7) & 0xFFFFFFFFFFFFFFF8) + v12 + 8) & ~v12;
      v26 = a2 + 1;

      v24(v25, v26, v10, v8);
    }
  }
}

float64x2_t static CGSize.+= infix(_:_:)(float64x2_t *a1, float64x2_t a2, float64_t a3)
{
  a2.f64[1] = a3;
  result = vaddq_f64(*a1, a2);
  *a1 = result;
  return result;
}

float64x2_t static CGSize.-= infix(_:_:)(float64x2_t *a1, float64x2_t a2, float64_t a3)
{
  a2.f64[1] = a3;
  result = vsubq_f64(*a1, a2);
  *a1 = result;
  return result;
}

float64x2_t static CGSize.*= infix(_:_:)(float64x2_t *a1, double a2)
{
  result = vmulq_n_f64(*a1, a2);
  *a1 = result;
  return result;
}

float64x2_t static CGSize./= infix(_:_:)(float64x2_t *a1, double a2)
{
  result = vmulq_n_f64(*a1, 1.0 / a2);
  *a1 = result;
  return result;
}

CGSize __swiftcall mix(_:_:by:)(CGSize _, CGSize a2, Swift::Double by)
{
  v3 = (a2.width - _.width) * by + _.width;
  v4 = (a2.height - _.height) * by + _.height;
  result.height = v4;
  result.width = v3;
  return result;
}

Swift::Void __swiftcall CGSize.normalize()()
{
  v1 = *v0;
  v2 = vaddvq_f64(vmulq_f64(v1, v1));
  if (v2 != 0.0)
  {
    *v0 = vmulq_n_f64(v1, 1.0 / sqrt(v2));
  }
}

CGSize __swiftcall CGSize.normalized()()
{
  v2 = v0 * v0 + v1 * v1;
  if (v2 != 0.0)
  {
    v3 = 1.0 / sqrt(v2);
    v0 = v3 * v0;
    v1 = v3 * v1;
  }

  result.height = v1;
  result.width = v0;
  return result;
}

void specialized _ViewList_ID.explicitID<A>(owner:)(int a1@<W0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    v6 = (a2 + 48);
    v7 = (a2 + 48);
    while (1)
    {
      v8 = *v7;
      v7 += 6;
      if (v8 == a1)
      {
        v9 = *(**(v6 - 2) + 80);
        lazy protocol witness table accessor for type UniqueID and conformance UniqueID();
        v11 = v10;

        v9(&v13, &type metadata for UniqueID, &type metadata for UniqueID, v11);

        if ((v14 & 1) == 0)
        {
          break;
        }
      }

      v6 = v7;
      if (!--v4)
      {
        goto LABEL_7;
      }
    }

    v12 = 0;
    *a3 = v13;
  }

  else
  {
LABEL_7:
    *a3 = 0;
    v12 = 1;
  }

  *(a3 + 8) = v12;
}

void static DebugReplaceableView.invalidateEverything()()
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&static LazyContainerManager.instance);
  v0 = off_1EAB13158;
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v1 = static Update._lock;
  _MovableLockLock(static Update._lock);
  specialized static Update.begin()();
  v2 = *(v0[2] + 16);
  if (v2)
  {
    v3 = *MEMORY[0x1E698D3F8];

    v4 = 32;
    do
    {
      if (AGWeakAttributeGetAttribute() != v3)
      {
        AGGraphInvalidateValue();
      }

      v4 += 8;
      --v2;
    }

    while (v2);
  }

  static Update.end()();
  _MovableLockUnlock(v1);

  os_unfair_lock_unlock(&static LazyContainerManager.instance);
}

void LazyContainerManager.removeSignal(_:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);

  if (v3)
  {
    v4 = 0;
    while (v4 < *(v2 + 16))
    {
      if (static WeakAttribute.== infix(_:_:)())
      {

        specialized Array.remove(at:)(v4);
        return;
      }

      if (v3 == ++v4)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
  }
}

uint64_t one-time initialization function for instance()
{
  type metadata accessor for LazyContainerManager();
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x1E69E7CC0];
  static LazyContainerManager.instance = 0;
  off_1EAB13158 = result;
  return result;
}

char *static ResettableLazyLayoutsFeature.isEnabled.getter()
{
  swift_beginAccess();
  if (static ResettableLazyLayoutsFeature.isEnabledForTesting)
  {
    return 1;
  }

  result = getenv("XCODE_RUNNING_FOR_PREVIEWS");
  if (result)
  {
    return (atoi(result) != 0);
  }

  return result;
}

id ResettableContainer.init(content:inputs:outputs:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a1;
  v18 = a2[2];
  v19 = a2[3];
  v20 = a2[4];
  v21 = *(a2 + 20);
  v16 = *a2;
  v17 = a2[1];
  v6 = *a3;
  v7 = a3[1];
  v8 = Attribute.init<A>(body:value:flags:update:)();
  v9 = AGCreateWeakAttribute();
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&static LazyContainerManager.instance);
  v10 = off_1EAB13158;
  v11 = *(off_1EAB13158 + 2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10[2] = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
    v10[2] = v11;
  }

  v14 = *(v11 + 2);
  v13 = *(v11 + 3);
  if (v14 >= v13 >> 1)
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v11);
  }

  *(v11 + 2) = v14 + 1;
  *&v11[8 * v14 + 32] = v9;
  v10[2] = v11;
  os_unfair_lock_unlock(&static LazyContainerManager.instance);
  result = AGSubgraphGetCurrent();
  if (!result)
  {
    __break(1u);
  }

  *(a4 + 40) = v18;
  *(a4 + 56) = v19;
  *(a4 + 72) = v20;
  *(a4 + 8) = v16;
  *a4 = v4;
  *(a4 + 4) = v8;
  *(a4 + 88) = v21;
  *(a4 + 24) = v17;
  *(a4 + 96) = v6;
  *(a4 + 104) = v7;
  *(a4 + 112) = result;
  return result;
}

uint64_t ResettableListContainer.init(content:inputs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v22[1] = *MEMORY[0x1E69E9840];
  *a5 = a1;
  *(a5 + 4) = Attribute.init<A>(body:value:flags:update:)();
  v9 = AGCreateWeakAttribute();
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&static LazyContainerManager.instance);
  v10 = off_1EAB13158;
  v11 = *(off_1EAB13158 + 2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10[2] = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
    v10[2] = v11;
  }

  v14 = *(v11 + 2);
  v13 = *(v11 + 3);
  if (v14 >= v13 >> 1)
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v11);
  }

  *(v11 + 2) = v14 + 1;
  *&v11[8 * v14 + 32] = v9;
  v10[2] = v11;
  os_unfair_lock_unlock(&static LazyContainerManager.instance);
  outlined init with copy of _ViewListInputs(a2, a5 + 8);
  v15 = AGSubgraphGetCurrent();
  if (!v15)
  {
    __break(1u);
  }

  *(a5 + 144) = v15;
  type metadata accessor for ResettableListContainer.Item(255, a3, a4, v16);
  type metadata accessor for Unmanaged();
  v17 = type metadata accessor for Array();
  type metadata accessor for MutableBox(0, v17, v18, v19);
  v20 = static Array._allocateUninitialized(_:)();
  outlined destroy of _ViewListInputs(a2);
  v22[0] = v20;
  result = MutableBox.__allocating_init(_:)(v22);
  *(a5 + 152) = result;
  *(a5 + 160) = 0;
  return result;
}

Swift::Void __swiftcall ResettableContainer.updateValue()()
{
  v2 = v0;
  v18[1] = *MEMORY[0x1E69E9840];
  AGGraphGetValue();
  v4 = v3;
  type metadata accessor for AGSubgraphRef(0);
  OutputValue = AGGraphGetOutputValue();
  if (!OutputValue || (v4 & 1) != 0)
  {
    if (OutputValue)
    {
      v6 = *OutputValue;
      v7 = *(v1 + 96);
      v8 = *(v1 + 108);
      v9 = *(v7 + 16);
      if (v9)
      {
        v10 = *MEMORY[0x1E698D3F8];
        v11 = v7 + 48;
        v12 = v6;

        do
        {
          v11 += 24;
          AGGraphSetIndirectAttribute();
          --v9;
        }

        while (v9);
      }

      else
      {
        v13 = v6;

        v10 = *MEMORY[0x1E698D3F8];
      }

      if (v8 != v10)
      {
        AGGraphSetIndirectAttribute();
      }

      AGSubgraphRef.willInvalidate(isInserted:)(1);
      AGSubgraphInvalidate();
    }

    v14 = AGSubgraphGetGraph();
    v15 = AGSubgraphCreate();

    AGSubgraphAddChild();
    AGGraphClearUpdate();
    v16 = AGSubgraphGetCurrent();
    AGSubgraphSetCurrent();
    closure #1 in ResettableContainer.updateValue()(v1, v15, *(v2 + 16), *(v2 + 24), v18);
    AGSubgraphSetCurrent();

    v17 = v18[0];
    AGGraphSetUpdate();
    v18[0] = v17;
    AGGraphSetOutputValue();
  }
}

id closure #1 in ResettableContainer.updateValue()@<X0>(unsigned int *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v67 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 6);
  v9 = *(a1 + 14);
  v62[2] = *(a1 + 10);
  v62[3] = v9;
  v62[4] = *(a1 + 18);
  v63 = a1[22];
  v62[0] = *(a1 + 2);
  v62[1] = v8;
  v10 = v8;
  v61 = v62[0];
  v11 = *(a1 + 2);
  v12 = *(a1 + 3);
  v13 = *(a1 + 4);
  *(v60 + 12) = *(a1 + 19);
  v59 = v12;
  v60[0] = v13;
  v58 = v11;
  swift_beginAccess();
  v14 = v10[3];
  v64[1] = v10[2];
  v64[2] = v14;
  v15 = v10[5];
  v64[3] = v10[4];
  v64[4] = v15;
  v64[0] = v10[1];
  type metadata accessor for MutableBox<CachedEnvironment>(0, v16, v17, v18);
  v19 = swift_allocObject();
  memmove((v19 + 16), v10 + 1, 0x50uLL);
  outlined init with copy of _ViewInputs(v62, &v65);
  outlined init with copy of CachedEnvironment(v64, &v65);

  _GraphValue.init(_:)(*a1, &v33);
  v20 = v33;
  v65 = v61;
  *v66 = v19;
  *&v66[8] = v58;
  *&v66[24] = v59;
  *&v66[40] = v60[0];
  *&v66[52] = *(v60 + 12);
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v50 = *&v66[16];
  v51 = *&v66[32];
  v52 = *&v66[48];
  v53 = *&v66[64];
  v48 = v65;
  v49 = *v66;
  v22 = *&v66[16];
  LODWORD(v50) = 0;
  LODWORD(v37) = v20;
  v54[0] = v65;
  v54[1] = *v66;
  v55 = *&v66[64];
  v54[3] = *&v66[32];
  v54[4] = *&v66[48];
  v54[2] = v50;
  v44 = v50;
  v45 = *&v66[32];
  v46 = *&v66[48];
  v47 = *&v66[64];
  v42 = v65;
  v43 = *v66;
  v23 = *(a4 + 24);
  outlined init with copy of _ViewInputs(&v65, v56);
  outlined init with copy of _ViewInputs(v54, v56);
  v23(&v34, &v37, &v42, a3, a4);
  v56[2] = v44;
  v56[3] = v45;
  v56[4] = v46;
  v57 = v47;
  v56[0] = v42;
  v56[1] = v43;
  outlined destroy of _ViewInputs(v56);
  LODWORD(v50) = v22;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(&v34, &v48);
    AGSubgraphEndTreeElement();
  }

  v44 = v50;
  v45 = v51;
  v46 = v52;
  v47 = v53;
  v42 = v48;
  v43 = v49;
  outlined destroy of _ViewInputs(&v42);
  v24 = v36;
  v25 = *(a1 + 12);
  v26 = a1[26];
  v27 = a1[27];
  *&v37 = v25;
  DWORD2(v37) = v26;
  v31 = v34;
  v32 = v35;
  swift_bridgeObjectRetain_n();

  PreferencesOutputs.attachIndirectOutputs(to:)(&v31);

  if (v27 != *MEMORY[0x1E698D3F8] && v24 != *MEMORY[0x1E698D3F8])
  {
    AGGraphSetIndirectAttribute();
  }

  v37 = v61;
  v38 = v19;
  v39 = v58;
  v40 = v59;
  v41[0] = v60[0];
  *(v41 + 12) = *(v60 + 12);
  outlined destroy of _ViewInputs(&v37);

  *a5 = a2;

  return a2;
}

Swift::Void __swiftcall ResettableContainer.destroy()()
{
  v0 = AGCreateWeakAttribute();
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&static LazyContainerManager.instance);
  LazyContainerManager.removeSignal(_:)(v0);

  os_unfair_lock_unlock(&static LazyContainerManager.instance);
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance ResettableContainer<A>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for ResettableContainer<A>, a1);

  return static AsyncAttribute.flags.getter();
}

uint64_t ResettableListContainer.updateValue()(uint64_t a1)
{
  v2 = v1;
  v45 = *MEMORY[0x1E69E9840];
  AGGraphGetValue();
  v5 = v4;
  v6 = *(v1 + 160);
  if (!v6)
  {
    v39 = 0;
LABEL_15:
    v13 = *(v2 + 152);
    swift_beginAccess();
    v14 = *(v13 + 16);
    v38 = a1;
    v15 = *(a1 + 16);
    v16 = *(a1 + 24);
    v37 = v15;
    type metadata accessor for ResettableListContainer.Item(255, v15, v16, v17);
    v18 = type metadata accessor for Unmanaged();

    if (!MEMORY[0x193ABF2C0](v19, v18))
    {
      goto LABEL_25;
    }

    v20 = 0;
    while (1)
    {
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (IsNativeType)
      {
        v9 = *(v14 + 8 * v20 + 32);
        v22 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          goto LABEL_24;
        }
      }

      else
      {
        v9 = _ArrayBuffer._getElementSlowPath(_:)();
        swift_unknownObjectRelease();
        v22 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
LABEL_24:
          __break(1u);
LABEL_25:

          if (AGSubgraphIsValid())
          {
            v23 = AGSubgraphGetGraph();
            v24 = AGSubgraphCreate();

            AGSubgraphAddChild();
            AGGraphClearUpdate();
            v25 = AGSubgraphGetCurrent();
            AGSubgraphSetCurrent();
            closure #1 in ResettableListContainer.updateValue()(v2, v37, v16, v42);
            AGSubgraphSetCurrent();

            v26 = v42[0];
            v27 = BYTE4(v42[0]);
            AGGraphSetUpdate();
            CurrentAttribute = AGGraphGetCurrentAttribute();
            if (CurrentAttribute != *MEMORY[0x1E698D3F8])
            {
              v29 = CurrentAttribute;
              v42[0] = AGMakeUniqueID();
              swift_allocObject();

              v9 = ResettableListContainer.Item.init(owner:list:id:isUnary:subgraph:allItems:)(v29, v26, v42, v27, v24, v13);
              goto LABEL_30;
            }

LABEL_35:
            __break(1u);
          }

          v43 = &type metadata for EmptyViewList;
          lazy protocol witness table accessor for type EmptyViewList and conformance EmptyViewList();
          v44 = v30;
          type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList, &protocol descriptor for ViewList);
          AGGraphSetOutputValue();
          return __swift_destroy_boxed_opaque_existential_1(v42);
        }
      }

      if ((v5 & 1) == 0)
      {

        ++*(v9 + 24);

        AGSubgraphAddChild();
        v31 = *(v9 + 16);

        AGSubgraphApply();

LABEL_30:
        *(v2 + 160) = v9;
        a1 = v38;
        v7 = v39;
        goto LABEL_31;
      }

      ++v20;
      if (v22 == MEMORY[0x193ABF2C0](v14, v18))
      {
        goto LABEL_25;
      }
    }
  }

  v7 = *(v6 + 32);
  v8 = *(v6 + 24);
  if (v4)
  {
    if (v8)
    {
      goto LABEL_8;
    }

LABEL_13:
    *(v6 + 24) = -1;

LABEL_14:
    v39 = v7;

    *(v2 + 160) = 0;
    goto LABEL_15;
  }

  if (!v8)
  {
    goto LABEL_13;
  }

  if ((AGSubgraphIsValid() & 1) == 0)
  {
LABEL_8:
    v10 = *(v6 + 16);
    IsValid = AGSubgraphIsValid();

    if (IsValid)
    {
      v12 = v10;
      AGSubgraphApply();

      AGSubgraphRemoveChild();
      v8 = *(v6 + 24);
    }

    *(v6 + 24) = v8 - 1;
    if (v8 == 1)
    {
      ResettableListContainer.Item.invalidate()();
      if (AGSubgraphIsValid())
      {
        AGSubgraphRef.willInvalidate(isInserted:)(0);
        AGSubgraphInvalidate();
      }
    }

    goto LABEL_14;
  }

  v9 = v6;
LABEL_31:

  ResettableListContainer.Item.list.getter(v41);
  if (AGGraphGetCurrentAttribute() == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
    goto LABEL_35;
  }

  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList, &protocol descriptor for ViewList);

  TransactionID.init<A>(context:)(&v40);
  v32 = v40;
  v43 = type metadata accessor for ResettableListContainer.WrappedList(0, *(a1 + 16), *(a1 + 24), v33);
  swift_getWitnessTable(protocol conformance descriptor for ResettableListContainer<A>.WrappedList, v43);
  v44 = v34;
  v35 = swift_allocObject();
  v42[0] = v35;
  outlined init with take of _ViewList_Elements(v41, v35 + 16);
  *(v35 + 56) = v9;
  *(v35 + 64) = v7;
  *(v35 + 72) = v6 == 0;
  *(v35 + 80) = v32;
  AGGraphSetOutputValue();

  return __swift_destroy_boxed_opaque_existential_1(v42);
}

uint64_t closure #1 in ResettableListContainer.updateValue()@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  outlined init with copy of _ViewListInputs((a1 + 2), v25);
  v8 = v26;
  swift_beginAccess();
  v9 = v8[3];
  v28[1] = v8[2];
  v28[2] = v9;
  v10 = v8[5];
  v28[3] = v8[4];
  v28[4] = v10;
  v28[0] = v8[1];
  type metadata accessor for MutableBox<CachedEnvironment>(0, v11, v12, v13);
  v14 = swift_allocObject();
  memmove((v14 + 16), v8 + 1, 0x50uLL);
  outlined init with copy of CachedEnvironment(v28, v23);

  v26 = v14;
  v27 = 0;
  type metadata accessor for ResettableListContainer(0, a2, a3, v15);
  _GraphValue.init(_:)(*a1, &v22);
  v16 = v22;
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
  }

  v21 = v16;
  (*(a3 + 32))(v23, &v21, v25, a2, a3);
  $defer #1 <A>() in static View.makeDebuggableViewList(view:inputs:)(v16, a2, a3);
  v17 = _ViewListOutputs.makeAttribute(inputs:)(v25);
  outlined destroy of _ViewListInputs(v25);
  *a4 = v17;
  v18 = v23[7];
  v19 = v24;
  result = outlined destroy of _ViewListOutputs(v23);
  *(a4 + 4) = (v18 == 1) & ~v19;
  return result;
}

uint64_t *ResettableListContainer.Item.__allocating_init(owner:list:id:isUnary:subgraph:allItems:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v8 = a4;
  v10 = a2;
  v11 = a1;
  swift_allocObject();
  return ResettableListContainer.Item.init(owner:list:id:isUnary:subgraph:allItems:)(v11, v10, a3, v8, a5, a6);
}

uint64_t ResettableListContainer.Item.list.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList, &protocol descriptor for ViewList);
  Value = AGGraphGetValue();

  return outlined init with copy of AnyTrackedValue(Value, a1);
}

uint64_t *ResettableListContainer.Item.init(owner:list:id:isUnary:subgraph:allItems:)(int a1, int a2, uint64_t *a3, char a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v9 = *a3;
  *(v7 + 40) = a1;
  *(v7 + 44) = a2;
  *(v7 + 32) = v9;
  *(v7 + 48) = a4;
  *(v7 + 56) = a6;
  *(v7 + 24) = 1;
  *(v7 + 16) = a5;
  swift_beginAccess();
  type metadata accessor for Unmanaged();
  type metadata accessor for Array();

  v10 = a5;

  Array.append(_:)();
  swift_endAccess();

  return v7;
}

double ResettableListContainer.Item.invalidate()()
{
  swift_beginAccess();
  type metadata accessor for Unmanaged();
  v0 = type metadata accessor for Array();

  swift_getWitnessTable(MEMORY[0x1E69E6340], v0);
  Collection.firstIndex(where:)();

  if (v2 != 1)
  {
    swift_beginAccess();
    Array.remove(at:)();
    swift_endAccess();
  }

  return result;
}

char *ResettableListContainer.Item.bindID(_:)(uint64_t a1)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  type metadata accessor for _AnyHashableBox<UniqueID>(0);
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  v7 = *(a1 + 8);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
    v7 = result;
  }

  v10 = *(v7 + 2);
  v9 = *(v7 + 3);
  if (v10 >= v9 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v7);
    v7 = result;
  }

  *(v7 + 2) = v10 + 1;
  v11 = &v7[24 * v10];
  *(v11 + 4) = v6;
  *(v11 + 5) = &type metadata for UniqueID;
  *(v11 + 12) = v4;
  v11[52] = v5;
  *(a1 + 8) = v7;
  return result;
}

uint64_t ResettableListContainer.Item.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void ResettableListContainer.WrappedList.traitKeys.getter(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  (*(v4 + 32))(&v7, v3, v4);
  v5 = v7;
  if (v7)
  {

    v6 = 1;
  }

  else
  {
    v6 = v8;
  }

  *a1 = v5;
  *(a1 + 8) = v6;
}

uint64_t ResettableListContainer.WrappedList.viewIDs.getter(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  result = (*(v4 + 40))(v3, v4);
  if (result)
  {
    v7 = result;
    closure #1 in ResettableListContainer.WrappedList.viewIDs.getter(&v7, v1, *(a1 + 16), *(a1 + 24), &v6);

    return v6;
  }

  return result;
}

double closure #1 in ResettableListContainer.WrappedList.viewIDs.getter@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v7 = *a1;
  v8 = type metadata accessor for ResettableListContainer.WrappedIDs(255, a3, a4, a4);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ResettableListContainer<A>.WrappedIDs, v8);
  v11 = v10;
  swift_getWitnessTable(protocol conformance descriptor for ResettableListContainer<A>.WrappedIDs, v8, WitnessTable);
  type metadata accessor for _ViewList_ID._Views(0, v8, v11, v12);
  v13 = *(a2 + 40);
  v15[0] = v7;
  v15[1] = v13;
  *a5 = _ViewList_ID._Views.__allocating_init(_:isDataDependent:)(v15, 1);

  return result;
}

uint64_t ResettableListContainer.WrappedList.appendViewIDs(into:)(uint64_t a1)
{
  v3 = v1[5];
  v4 = *(v3 + 32);
  v5 = *(v3 + 48);
  outlined init with copy of (Hashable, isUnary: Bool)?(a1 + 56, v12);
  v10[3] = &type metadata for UniqueID;
  lazy protocol witness table accessor for type UniqueID and conformance UniqueID();
  v10[4] = v6;
  v10[0] = v4;
  v11 = v5;
  outlined assign with take of (Hashable, isUnary: Bool)?(v10, a1 + 56);
  v7 = v1[3];
  v8 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v7);
  (*(v8 + 48))(a1, v7, v8);
  return outlined assign with take of (Hashable, isUnary: Bool)?(v12, a1 + 56);
}

uint64_t ResettableListContainer.WrappedList.applyNodes(from:style:list:transform:to:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *a2;
  v9 = *a4;
  v23 = *(a4 + 8);
  v22[0] = *(v7 + 40);
  v22[1] = v9;
  v10 = *(a7 + 24);
  v14 = *(a7 + 16);
  v15 = v10;
  v16 = a1;
  v17 = v8;
  v18 = a3;
  v19 = BYTE4(a3) & 1;
  v20 = a5;
  v21 = a6;
  v11 = type metadata accessor for ResettableListContainer.Transform(0, v14, v10, a4);

  _ViewList_TemporarySublistTransform.withPushedItem<A, B>(_:do:)(v22, partial apply for closure #1 in DynamicViewList.WrappedList.applyNodes(from:style:list:transform:to:), &v13, MEMORY[0x1E69E6370], v11, &protocol witness table for ResettableListContainer<A>.Transform);

  return v24;
}

void ResettableListContainer.WrappedList.edit(forID:since:)(unsigned int *a1@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = *(a1 + 1);
  v8 = *a2;
  if (*a2 < *(v3 + 64))
  {
    goto LABEL_5;
  }

  if (*(v3 + 56))
  {
    goto LABEL_5;
  }

  v9 = *(v3 + 40);
  v10 = *(v3 + 48);
  if (v10 == *(v9 + 32))
  {
    goto LABEL_5;
  }

  specialized _ViewList_ID.explicitID<A>(owner:)(*(v9 + 40), v7, &v14);
  if (v15)
  {
    goto LABEL_5;
  }

  if (v14 == v10)
  {
    *a3 = 1;
    return;
  }

  if (v14 != *(v9 + 32))
  {
LABEL_5:
    v11 = *(v3 + 24);
    v12 = *(v3 + 32);
    __swift_project_boxed_opaque_existential_1(v3, v11);
    v14 = __PAIR64__(v6, v5);
    v15 = v7;
    v13 = v8;
    (*(v12 + 72))(&v14, &v13, v11, v12);
  }

  else
  {
    *a3 = 0;
  }
}

uint64_t ResettableListContainer.WrappedList.firstOffset<A>(forID:style:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = MEMORY[0x1EEE9AC00](a1);
  v12 = *v11;
  (*(v13 + 16))(&v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v14, v9);
  if ((swift_dynamicCast() & 1) != 0 && v19 == *(v5[5] + 32))
  {
    return 0;
  }

  v16 = v5[3];
  v17 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v16);
  v19 = v12;
  return (*(v17 + 80))(a1, &v19, a4, a5, v16, v17);
}

uint64_t ResettableListContainer.WrappedList.print(into:)(void *a1)
{
  v3 = a1[2];
  if (v3)
  {
    MEMORY[0x193ABEDD0](10, 0xE100000000000000);
    MEMORY[0x193ABEDD0](a1[3], a1[4]);
    MEMORY[0x193ABEDD0](40, 0xE100000000000000);
    result = MEMORY[0x193ABEDD0](0x6E6F632D7473696CLL, 0xEE0072656E696174);
    if (__OFADD__(v3, 1))
    {
      __break(1u);
      goto LABEL_10;
    }

    a1[2] = v3 + 1;
    v5 = 8224;
    v6 = 0xE200000000000000;
  }

  else
  {
    MEMORY[0x193ABEDD0](40, 0xE100000000000000);
    v5 = 0x6E6F632D7473696CLL;
    v6 = 0xEE0072656E696174;
  }

  MEMORY[0x193ABEDD0](v5, v6);
  MEMORY[0x193ABEDD0](0x2064693A23, 0xE500000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](32, 0xE100000000000000);
  MEMORY[0x193ABEDD0](0, 0xE000000000000000);

  v7 = AGAttribute.description.getter();
  MEMORY[0x193ABEDD0](v7);

  MEMORY[0x193ABEDD0](32, 0xE100000000000000);
  MEMORY[0x193ABEDD0](0x2072656E776F3A23, 0xE800000000000000);

  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList, &protocol descriptor for ViewList);
  v8 = AGAttribute.description.getter();
  MEMORY[0x193ABEDD0](v8);

  MEMORY[0x193ABEDD0](32, 0xE100000000000000);
  MEMORY[0x193ABEDD0](0x20727474613A23, 0xE700000000000000);

  v9 = v1[3];
  v10 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v9);
  result = (*(v10 + 88))(a1, v9, v10);
  v12 = a1[2];
  if (!v12)
  {
    return MEMORY[0x193ABEDD0](41, 0xE100000000000000);
  }

  v13 = __OFSUB__(v12, 1);
  v14 = v12 - 1;
  if (!v13)
  {
    a1[2] = v14;
    specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL, v11);
    return MEMORY[0x193ABEDD0](41, 0xE100000000000000);
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ResettableListContainer<A>.WrappedList(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for ResettableListContainer<A>.WrappedList, a1);

  return ViewList.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for BidirectionalCollection.index(before:) in conformance ResettableListContainer<A>.WrappedIDs(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable(protocol conformance descriptor for ResettableListContainer<A>.WrappedIDs);

  return RandomAccessCollection<>.index(before:)();
}

void (*protocol witness for Collection.subscript.read in conformance ResettableListContainer<A>.WrappedIDs(uint64_t *a1, uint64_t *a2))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x28uLL);
  }

  *a1 = v5;
  *(v5 + 32) = ResettableListContainer.WrappedIDs.subscript.read(v5, *a2, *v2);
  return protocol witness for Collection.subscript.read in conformance ArrayWith2Inline<A>;
}

uint64_t (*ResettableListContainer.WrappedIDs.subscript.read(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  (*(*a3 + 96))(a2);
  ResettableListContainer.Item.bindID(_:)(a1);
  return destroy for HostPreferencesCombiner;
}

void *protocol witness for Collection.indices.getter in conformance ResettableListContainer<A>.WrappedIDs(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for ResettableListContainer<A>.WrappedIDs, a1);

  return RandomAccessCollection<>.indices.getter();
}

uint64_t protocol witness for Collection.index(after:) in conformance ResettableListContainer<A>.WrappedIDs(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable(protocol conformance descriptor for ResettableListContainer<A>.WrappedIDs);

  return RandomAccessCollection<>.index(after:)();
}

uint64_t protocol witness for BidirectionalCollection.formIndex(before:) in conformance ResettableListContainer<A>.WrappedIDs(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, void, double))
{
  v9 = *a1;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ResettableListContainer<A>.WrappedIDs, a2, a3);
  return a4(&v9, a2, v7, MEMORY[0x1E69E6570], WitnessTable);
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance ResettableListContainer<A>.WrappedIDs(uint64_t a1)
{
  v3.n128_f64[0] = swift_getWitnessTable(protocol conformance descriptor for ResettableListContainer<A>.WrappedIDs, a1);

  return MEMORY[0x1EEE698E0](a1, v2, v3);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance ResettableListContainer<A>.WrappedIDs(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for ResettableListContainer<A>.WrappedIDs, a1);

  return Collection._copyToContiguousArray()();
}

double ResettableListContainer.Transform.apply(sublist:)(uint64_t a1, uint64_t a2)
{
  ResettableListContainer.Item.bindID(_:)(a1 + 16);

  MEMORY[0x193ABF170](v3);
  if (*((*(a1 + 72) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + 72) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance ResettableListContainer<A>(uint64_t a1)
{
  swift_getWitnessTable("E", a1);

  return static AsyncAttribute.flags.getter();
}

char *protocol witness for static Feature.isEnabled.getter in conformance ResettableLazyLayoutsFeature()
{
  swift_beginAccess();
  if (static ResettableLazyLayoutsFeature.isEnabledForTesting)
  {
    return 1;
  }

  result = getenv("XCODE_RUNNING_FOR_PREVIEWS");
  if (result)
  {
    return (atoi(result) != 0);
  }

  return result;
}

double destroy for ResettableListContainer(uint64_t a1)
{

  swift_weakDestroy();

  return result;
}

uint64_t initializeWithCopy for ResettableListContainer(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);

  swift_weakCopyInit();
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  v4 = *(a2 + 144);
  v5 = *(a2 + 152);
  *(a1 + 144) = v4;
  *(a1 + 152) = v5;
  *(a1 + 160) = *(a2 + 160);
  v6 = v4;

  return a1;
}

uint64_t assignWithCopy for ResettableListContainer(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);

  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  swift_weakCopyAssign();
  v4 = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 120) = v4;
  v5 = *(a2 + 144);
  v6 = *(a1 + 144);
  *(a1 + 144) = v5;
  v7 = v5;

  *(a1 + 152) = *(a2 + 152);

  *(a1 + 160) = *(a2 + 160);

  return a1;
}

uint64_t initializeWithTake for ResettableListContainer(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  swift_weakTakeInit();
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = *(a2 + 160);
  return a1;
}

uint64_t assignWithTake for ResettableListContainer(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);

  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  swift_weakTakeAssign();
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  v4 = *(a1 + 144);
  *(a1 + 144) = *(a2 + 144);

  *(a1 + 152) = *(a2 + 152);

  *(a1 + 160) = *(a2 + 160);

  return a1;
}

void destroy for ResettableContainer(uint64_t a1)
{

  v2 = *(a1 + 112);
}

uint64_t initializeWithCopy for ResettableContainer(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v3 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v3;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  v4 = *(a2 + 112);
  *(a1 + 112) = v4;

  v5 = v4;
  return a1;
}

uint64_t assignWithCopy for ResettableContainer(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 108) = *(a2 + 108);
  v4 = *(a2 + 112);
  v5 = *(a1 + 112);
  *(a1 + 112) = v4;
  v6 = v4;

  return a1;
}

uint64_t assignWithTake for ResettableContainer(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);
  v4 = *(a1 + 112);
  *(a1 + 112) = *(a2 + 112);

  return a1;
}

uint64_t getEnumTagSinglePayload for ResettableContainer(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ResettableContainer(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeWithCopy for ResettableListContainer.WrappedList(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  v5 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v5;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  return a1;
}

uint64_t assignWithCopy for ResettableListContainer.WrappedList(uint64_t a1, uint64_t a2, __n128 a3)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2, a3);
  *(a1 + 40) = *(a2 + 40);

  v5 = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 48) = v5;
  *(a1 + 64) = *(a2 + 64);
  return a1;
}

uint64_t assignWithTake for ResettableListContainer.WrappedList(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  return a1;
}

uint64_t outlined init with copy of (Hashable, isUnary: Bool)?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Attribute<AGSubgraphRef>(0, &lazy cache variable for type metadata for (Hashable, isUnary: Bool)?, type metadata accessor for (Hashable, isUnary: Bool), MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for Attribute<AGSubgraphRef>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t outlined assign with take of (Hashable, isUnary: Bool)?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Attribute<AGSubgraphRef>(0, &lazy cache variable for type metadata for (Hashable, isUnary: Bool)?, type metadata accessor for (Hashable, isUnary: Bool), MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double associated type witness table accessor for Collection.SubSequence : BidirectionalCollection in ResettableListContainer<A>.WrappedIDs(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ResettableListContainer<A>.WrappedIDs);
  v5 = v3;
  return swift_getWitnessTable(MEMORY[0x1E69E74D8], a1, &v5, WitnessTable);
}

double associated type witness table accessor for Collection.SubSequence : RandomAccessCollection in ResettableListContainer<A>.WrappedIDs(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ResettableListContainer<A>.WrappedIDs);
  v5 = v3;
  return swift_getWitnessTable(MEMORY[0x1E69E74F0], a1, &v5, WitnessTable);
}

void type metadata accessor for _AnyHashableBox<UniqueID>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _AnyHashableBox<UniqueID>)
  {
    lazy protocol witness table accessor for type UniqueID and conformance UniqueID();
    v4 = type metadata accessor for _AnyHashableBox(a1, &type metadata for UniqueID, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for _AnyHashableBox<UniqueID>);
    }
  }
}

uint64_t GesturePhase.paused()@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 16);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v6 + 16);
  v15(v8, v3, a1, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 1) >= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      (*(v6 + 8))(v8, a1);
    }

    return (v15)(a2, v3, a1);
  }

  else
  {
    v17 = *(v11 + 32);
    v17(v14, v8, v10);
    v17(a2, v14, v10);
    (*(v11 + 56))(a2, 0, 1, v10);
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t Gesture.dependency(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = v7;
  v11 = type metadata accessor for DependentGesture(0, AssociatedTypeWitness, v9, v10);
  swift_getWitnessTable(protocol conformance descriptor for DependentGesture<A>, v11);
  return Gesture.modifier<A>(_:)(&v14, a2, v11, a3, v12, a4);
}

Swift::Int GestureDependency.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

unint64_t static DependentGesture._makeGesture(modifier:inputs:body:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(_OWORD *)@<X2>, uint64_t a4@<X4>, _DWORD *a5@<X8>)
{
  v34 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  v8 = *(a2 + 48);
  v29[2] = *(a2 + 32);
  v29[3] = v8;
  v9 = *(a2 + 80);
  v29[4] = *(a2 + 64);
  v29[5] = v9;
  v10 = *(a2 + 16);
  v29[0] = *a2;
  v29[1] = v10;
  v32 = *(a2 + 112);
  v11 = *(a2 + 104);
  v30 = *(a2 + 96);
  v12 = v30;
  v31 = v11;
  v33 = *(a2 + 116);
  v23 = v33;
  a3(v29);
  *&v29[0] = __PAIR64__(*a5, v7);
  DWORD2(v29[0]) = v23;
  v26 = type metadata accessor for GesturePhase(0, a4, v13, v14);
  v27 = type metadata accessor for DependentPhase(0, a4, v15, v16);
  swift_getWitnessTable(protocol conformance descriptor for DependentPhase<A>, v27);
  v28 = v17;
  v18 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v29, partial apply for closure #1 in Attribute.init<A>(_:), v25, v27, MEMORY[0x1E69E73E0], v18, MEMORY[0x1E69E7410], v19);
  *a5 = v24;
  *&v29[0] = v12;
  result = PreferenceKeys._index(of:)(&type metadata for GestureDependency.Key);
  v21 = *(v12 + 16);
  if (result != v21)
  {
    if (result >= v21)
    {
      __break(1u);
    }

    if (*(v12 + 16 * result + 32) == &type metadata for GestureDependency.Key)
    {
      OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
      LOBYTE(v29[0]) = 0;
      return PreferencesOutputs.subscript.setter(OffsetAttribute2, &type metadata for GestureDependency.Key, &protocol witness table for GestureDependency.Key);
    }
  }

  return result;
}

uint64_t DependentPhase.value.getter@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, char *x8_0@<X8>)
{
  v7 = type metadata accessor for GesturePhase(0, a3, a3, a4);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - v9;
  MapPhase.phase.getter(a3, v11, &v15 - v9);
  type metadata accessor for DependentGesture(0, a3, v12, v13);
  v16 = *AGGraphGetValue();
  v15 = *AGGraphGetValue();
  GesturePhase.applyingDependency(_:inheritedPhase:)(&v16, &v15, v7, x8_0);
  return (*(v8 + 8))(v10, v7);
}

uint64_t GesturePhase.applyingDependency(_:inheritedPhase:)@<X0>(_BYTE *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v5 = *a2;
  if (*a1 <= 1u)
  {
    if (*a1 && (v5 & 2) != 0)
    {
      v6 = a3;
      return GesturePhase.paused()(v6, a4);
    }

    return (*(*(a3 - 8) + 16))(a4, v4);
  }

  if (*a1 == 2)
  {
    if ((v5 & 1) == 0)
    {
      v6 = a3;
      return GesturePhase.paused()(v6, a4);
    }

    return (*(*(a3 - 8) + 16))(a4, v4);
  }

  if ((v5 & 2) == 0)
  {
    if ((v5 & 1) == 0)
    {
      v6 = a3;
      return GesturePhase.paused()(v6, a4);
    }

    return (*(*(a3 - 8) + 16))(a4, v4);
  }

  return swift_storeEnumTagMultiPayload();
}

void specialized static GestureDependency.Key.reduce(value:nextValue:)(char *a1, void (*a2)(uint64_t *__return_ptr))
{
  v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI17GestureDependencyO_SiTt0g5Tf4g_n(&outlined read-only object #0 of static GestureDependency.Key.reduce(value:nextValue:));
  a2(&v13);
  if (!*(v4 + 16))
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = v13;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)();
  if ((v7 & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (!*(v4 + 16))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = *(*(v4 + 56) + 8 * v6);
  v9 = specialized __RawDictionaryStorage.find<A>(_:)();
  if ((v10 & 1) == 0)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v11 = *(*(v4 + 56) + 8 * v9);

  v12 = *a1;
  if (v11 >= v8)
  {
    v12 = v5;
  }

  *a1 = v12;
}

void SDFShape.encode(to:)(uint64_t a1)
{
  v3 = v1;
  v5 = *v3;
  v6 = *(v3 + 8);
  v7 = *(v3 + 16);
  v8 = *(v3 + 32);
  v9 = *(v3 + 40);
  v10 = *(v3 + 44);
  if (*v3 != 0.0 || v6 != 0.0)
  {
    v11 = v2;
    ProtobufEncoder.encodeVarint(_:)(0xAuLL);
    v12 = *(a1 + 8);
    v13 = *(a1 + 24);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 2) + 1, 1, v13);
    }

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
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_21:
      isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 16) + 1, 1, v7);
      v7 = isUniquelyReferenced_nonNull_native;
      goto LABEL_11;
    }

    *(a1 + 8) = v12 + 1;
    CGPoint.encode(to:)(a1, v5, v6);
    ProtobufEncoder.endLengthDelimited()();
  }

  specialized ProtobufEncoder.messageField<A>(_:_:)(2);
  if (v2)
  {
    return;
  }

  v11 = 0;
  ProtobufEncoder.encodeVarint(_:)(0x2AuLL);
  v16 = *(a1 + 8);
  v7 = *(a1 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  v19 = *(v7 + 16);
  v18 = *(v7 + 24);
  if (v19 >= v18 >> 1)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v7);
    v20 = v11;
    v7 = isUniquelyReferenced_nonNull_native;
  }

  else
  {
    v20 = v11;
  }

  *(v7 + 16) = v19 + 1;
  *(v7 + 8 * v19 + 32) = v16;
  *(a1 + 24) = v7;
  if (__OFADD__(v16, 1))
  {
    __break(1u);
    goto LABEL_24;
  }

  *(a1 + 8) = v16 + 1;
  SDFStyle.encode(to:)(a1, v8);
  if (!v20)
  {
    ProtobufEncoder.endLengthDelimited()();
    ProtobufEncoder.encodeVarint(_:)(0x30uLL);
    ProtobufEncoder.encodeVarint(_:)(v10);
    if (v9 != 0.0)
    {
      ProtobufEncoder.encodeVarint(_:)(0x3DuLL);
      v21 = *(a1 + 8);
      isUniquelyReferenced_nonNull_native = v21 + 4;
      if (!__OFADD__(v21, 4))
      {
        if (*(a1 + 16) >= isUniquelyReferenced_nonNull_native)
        {
          *(a1 + 8) = isUniquelyReferenced_nonNull_native;
          *(*a1 + v21) = v9;
          return;
        }

LABEL_25:
        *ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native) = v9;
        return;
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }
  }
}

void SDFShape.init(from:)(__int128 *a1@<X0>, char *a2@<X8>)
{
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0x80;
  v6 = MEMORY[0x1E69E7CC0];
  *(v5 + 40) = MEMORY[0x1E69E7CC0];
  *(v5 + 48) = v6;
  v7 = v5 | 0x8000000000000000;
  v8 = *(a1 + 1);
  v9 = *(a1 + 2);
  if (v8 >= v9)
  {
    v70 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
LABEL_4:
    *(a1 + 3) = 0;
    *a2 = v11;
    *(a2 + 1) = v12;
    *(a2 + 2) = v6;
    *(a2 + 3) = v13;
    *(a2 + 4) = v7;
    *(a2 + 10) = v10;
    *(a2 + 11) = v70;
    *(a2 + 6) = 0;
    return;
  }

  v70 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  while (1)
  {
    v14 = *(a1 + 3);
    if (v14)
    {
      v15 = *(a1 + 4);
      if (v8 < v15)
      {
        goto LABEL_13;
      }

      if (v15 < v8)
      {
        goto LABEL_96;
      }

      *(a1 + 3) = 0;
    }

    v14 = ProtobufDecoder.decodeVarint()(v14);
    if (v2)
    {
      goto LABEL_105;
    }

    if (v14 <= 7)
    {
      goto LABEL_96;
    }

LABEL_13:
    v16 = v14 >> 3;
    if (v14 >> 3 > 4)
    {
      switch(v16)
      {
        case 5uLL:
          if ((v14 & 7) != 2)
          {
            goto LABEL_96;
          }

          v28 = *(a1 + 5);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v28 + 16) + 1, 1, v28);
            v28 = isUniquelyReferenced_nonNull_native;
          }

          v31 = *(v28 + 16);
          v30 = *(v28 + 24);
          if (v31 >= v30 >> 1)
          {
            isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v28);
            v28 = isUniquelyReferenced_nonNull_native;
          }

          *(v28 + 16) = v31 + 1;
          *(v28 + 8 * v31 + 32) = v9;
          *(a1 + 5) = v28;
          v32 = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
          if (v2)
          {
            goto LABEL_105;
          }

          if (v32 < 0)
          {
            goto LABEL_108;
          }

          v33 = *(a1 + 1) + v32;
          if (v9 < v33)
          {
            goto LABEL_96;
          }

          *(a1 + 2) = v33;
          v34 = specialized SDFStyle.init(from:)(a1);
          v35 = *(a1 + 5);
          if (!*(v35 + 2))
          {
            goto LABEL_111;
          }

          v36 = v34;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v37 = *(v35 + 2);
            if (!v37)
            {
              goto LABEL_113;
            }
          }

          else
          {
            v35 = specialized _ArrayBuffer._consumeAndCreateNew()(v35);
            v37 = *(v35 + 2);
            if (!v37)
            {
              goto LABEL_113;
            }
          }

          v38 = v37 - 1;
          v9 = *&v35[8 * v38 + 32];
          *(v35 + 2) = v38;

          *(a1 + 5) = v35;
          *(a1 + 2) = v9;
          v7 = v36;
          break;
        case 6uLL:
          if ((v14 & 7) != 0)
          {
            if ((v14 & 7) != 2)
            {
              goto LABEL_96;
            }

            v14 = ProtobufDecoder.decodeVarint()(v14);
            if (v2)
            {
              goto LABEL_105;
            }

            if ((v14 & 0x8000000000000000) != 0)
            {
              goto LABEL_115;
            }

            v39 = *(a1 + 1) + v14;
            if (v9 < v39)
            {
              goto LABEL_96;
            }

            *(a1 + 3) = 48;
            *(a1 + 4) = v39;
          }

          v40 = ProtobufDecoder.decodeVarint()(v14);
          if (v2)
          {
            goto LABEL_105;
          }

          if (HIDWORD(v40))
          {
            v41 = 0;
          }

          else
          {
            v41 = v40;
          }

          v70 = v41;
          break;
        case 7uLL:
          if ((v14 & 7) == 2)
          {
            v57 = ProtobufDecoder.decodeVarint()(v14);
            if (v2)
            {
              goto LABEL_105;
            }

            if (v57 < 0)
            {
              goto LABEL_114;
            }

            v17 = *(a1 + 1);
            if (v9 < v17 + v57)
            {
              goto LABEL_96;
            }

            *(a1 + 3) = 61;
            *(a1 + 4) = v17 + v57;
          }

          else
          {
            if ((v14 & 7) != 5)
            {
              goto LABEL_96;
            }

            v17 = *(a1 + 1);
          }

          if (v9 < (v17 + 1))
          {
            goto LABEL_96;
          }

          v10 = *v17;
          *(a1 + 1) = v17 + 1;
          break;
        default:
          goto LABEL_69;
      }

      goto LABEL_6;
    }

    if (v16 == 1)
    {
      break;
    }

    if (v16 != 2)
    {
LABEL_69:
      v55 = v14 & 7;
      if (v55 > 1)
      {
        if (v55 == 2)
        {
          v58 = ProtobufDecoder.decodeVarint()(v14);
          if (v2)
          {
            goto LABEL_105;
          }

          if (v58 < 0)
          {
            goto LABEL_116;
          }

          v56 = *(a1 + 1) + v58;
          if (v9 < v56)
          {
            goto LABEL_96;
          }
        }

        else
        {
          if (v55 != 5)
          {
            goto LABEL_96;
          }

          v56 = *(a1 + 1) + 4;
          if (v9 < v56)
          {
            goto LABEL_96;
          }
        }
      }

      else
      {
        if ((v14 & 7) == 0)
        {
          ProtobufDecoder.decodeVarint()(v14);
          if (v2)
          {
            goto LABEL_105;
          }

          goto LABEL_6;
        }

        if (v55 != 1)
        {
          goto LABEL_96;
        }

        v56 = *(a1 + 1) + 8;
        if (v9 < v56)
        {
          goto LABEL_96;
        }
      }

      *(a1 + 1) = v56;
      goto LABEL_6;
    }

    if ((v14 & 7) != 2)
    {
      goto LABEL_96;
    }

    v18 = *(a1 + 5);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    if ((v19 & 1) == 0)
    {
      v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v18 + 16) + 1, 1, v18);
      v18 = v19;
    }

    v21 = *(v18 + 16);
    v20 = *(v18 + 24);
    if (v21 >= v20 >> 1)
    {
      v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v18);
      v18 = v19;
    }

    *(v18 + 16) = v21 + 1;
    *(v18 + 8 * v21 + 32) = v9;
    *(a1 + 5) = v18;
    v22 = ProtobufDecoder.decodeVarint()(v19);
    if (v2)
    {
      goto LABEL_105;
    }

    if (v22 < 0)
    {
      goto LABEL_107;
    }

    v23 = *(a1 + 1) + v22;
    if (v9 < v23)
    {
      goto LABEL_96;
    }

    *(a1 + 2) = v23;
    PathSet.init(from:)(a1, &v62);
    v24 = *(a1 + 5);
    if (!*(v24 + 2))
    {
      goto LABEL_110;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v25 = *(v24 + 2);
      if (!v25)
      {
        goto LABEL_95;
      }
    }

    else
    {
      v24 = specialized _ArrayBuffer._consumeAndCreateNew()(v24);
      v25 = *(v24 + 2);
      if (!v25)
      {
LABEL_95:
        __break(1u);
LABEL_96:
        lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
        swift_allocError();
        swift_willThrow();
LABEL_105:
        v62 = v11;
        v63 = v12;
        v64 = v6;
        v65 = v13;
        v66 = v7;
        v67 = v10;
        v68 = v70;
        v69 = 0;
        outlined destroy of SDFShape(&v62);
        return;
      }
    }

    v26 = v25 - 1;
    v9 = *&v24[8 * v26 + 32];
    *(v24 + 2) = v26;
    *(a1 + 5) = v24;
    *(a1 + 2) = v9;
    v27 = v62;
    v13 = v63;

    v6 = v27;
LABEL_6:
    v8 = *(a1 + 1);
    if (v8 >= v9)
    {
      goto LABEL_4;
    }
  }

  if ((v14 & 7) != 2)
  {
    goto LABEL_96;
  }

  v42 = *(a1 + 5);
  v43 = swift_isUniquelyReferenced_nonNull_native();
  if ((v43 & 1) == 0)
  {
    v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v42 + 16) + 1, 1, v42);
    v42 = v43;
  }

  v45 = *(v42 + 16);
  v44 = *(v42 + 24);
  if (v45 >= v44 >> 1)
  {
    v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1, v42);
    v42 = v43;
  }

  *(v42 + 16) = v45 + 1;
  *(v42 + 8 * v45 + 32) = v9;
  *(a1 + 5) = v42;
  v46 = ProtobufDecoder.decodeVarint()(v43);
  if (v2)
  {
    goto LABEL_105;
  }

  if ((v46 & 0x8000000000000000) == 0)
  {
    v47 = *(a1 + 1) + v46;
    if (v9 < v47)
    {
      goto LABEL_96;
    }

    *(a1 + 2) = v47;
    specialized CGPoint.init(from:)(a1);
    v50 = *(a1 + 5);
    if (!*(v50 + 2))
    {
      goto LABEL_109;
    }

    v51 = v48;
    v52 = v49;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v53 = *(v50 + 2);
      if (!v53)
      {
        goto LABEL_112;
      }
    }

    else
    {
      v50 = specialized _ArrayBuffer._consumeAndCreateNew()(v50);
      v53 = *(v50 + 2);
      if (!v53)
      {
        goto LABEL_112;
      }
    }

    v54 = v53 - 1;
    v9 = *&v50[8 * v54 + 32];
    *(v50 + 2) = v54;
    *(a1 + 5) = v50;
    *(a1 + 2) = v9;
    v11 = v51;
    v12 = v52;
    goto LABEL_6;
  }

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
  __break(1u);
LABEL_117:
  __break(1u);
  do
  {
    __break(1u);
    a2 = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
    v59 = *(a2 + 2);
    if (v59)
    {
      goto LABEL_104;
    }

    __break(1u);
    a2 = *(a1 + 5);
    if (!*(a2 + 2))
    {
      goto LABEL_117;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v59 = *(a2 + 2);
      if (v59)
      {
        goto LABEL_104;
      }
    }

    else
    {
      a2 = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
      v59 = *(a2 + 2);
      if (v59)
      {
        goto LABEL_104;
      }
    }

    __break(1u);
    a2 = *(a1 + 5);
  }

  while (!*(a2 + 2));
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v59 = *(a2 + 2);
    if (v59)
    {
LABEL_104:
      v60 = v59 - 1;
      v61 = *&a2[8 * v60 + 32];
      *(a2 + 2) = v60;
      *(a1 + 5) = a2;
      *(a1 + 2) = v61;
      goto LABEL_105;
    }
  }

  else
  {
    a2 = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
    v59 = *(a2 + 2);
    if (v59)
    {
      goto LABEL_104;
    }
  }

  __break(1u);
}

uint64_t specialized static SDFShape.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 44);
  v7 = *(a1 + 48);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 44);
  v11 = *(a2 + 48);
  v12 = *(a2 + 24);
  v13 = *(a2 + 16);
  v14 = *(a1 + 24);
  v15 = *(a1 + 16);

  v16 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI7PathSetV7ElementV_Tt1g5(v15, v13);

  result = 0;
  if ((v16 & 1) != 0 && v14 == v12)
  {

    v17 = static SDFStyle.== infix(_:_:)(v4, v8);

    result = 0;
    if ((v17 & 1) != 0 && v5 == v9 && v6 == v10)
    {
      if (v11)
      {
        v18 = v7 == v11;
      }

      else
      {
        v18 = 0;
      }

      v19 = v18;
      if (v7)
      {
        return v19;
      }

      else
      {
        return v11 == 0;
      }
    }
  }

  return result;
}

double destroy for SDFShape()
{

  return result;
}

uint64_t initializeWithCopy for SDFShape(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);

  return a1;
}

uint64_t assignWithCopy for SDFShape(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);

  return a1;
}

uint64_t assignWithTake for SDFShape(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);

  return a1;
}

uint64_t getEnumTagSinglePayload for SDFShape(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SDFShape(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t EnvironmentValues.enforceButtonDestructiveRoleAppearance.getter()
{
  v1 = *v0;
  if (!*(v0 + 8))
  {
    return _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F39_enforceButtonDestructiveRoleAppearance33_3356C828A364EA07A0E2E776C2C2836DLLVG_Tt2g5(v1) & 1;
  }

  v2 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I39_enforceButtonDestructiveRoleAppearance33_3356C828A364EA07A0E2E776C2C2836DLLVG_Tt1g5(v1);

  return v2 & 1;
}

void key path getter for EnvironmentValues.enforceButtonDestructiveRoleAppearance : EnvironmentValues(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  if (a1[1])
  {

    v4 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I39_enforceButtonDestructiveRoleAppearance33_3356C828A364EA07A0E2E776C2C2836DLLVG_Tt1g5(v3);
  }

  else
  {
    v4 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F39_enforceButtonDestructiveRoleAppearance33_3356C828A364EA07A0E2E776C2C2836DLLVG_Tt2g5(*a1);
  }

  *a2 = v4 & 1;
}

double key path setter for EnvironmentValues.enforceButtonDestructiveRoleAppearance : EnvironmentValues(char *a1, Swift::UInt *a2)
{
  v3 = *a1;
  v4 = *a2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F39_enforceButtonDestructiveRoleAppearance33_3356C828A364EA07A0E2E776C2C2836DLLVG_Tt2g5(a2, v3);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE02__K39_enforceButtonDestructiveRoleAppearance33_3356C828A364EA07A0E2E776C2C2836DLLVG_Ttg5(v4, *a2);
  }

  return result;
}

double EnvironmentValues.enforceButtonDestructiveRoleAppearance.setter(char a1)
{
  v2 = v1;
  v4 = *v2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F39_enforceButtonDestructiveRoleAppearance33_3356C828A364EA07A0E2E776C2C2836DLLVG_Tt2g5(v2, a1);

  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE02__K39_enforceButtonDestructiveRoleAppearance33_3356C828A364EA07A0E2E776C2C2836DLLVG_Ttg5(v4, *v2);
  }

  return result;
}

void (*EnvironmentValues.enforceButtonDestructiveRoleAppearance.modify(void *a1))(uint64_t *a1)
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

    v7 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I39_enforceButtonDestructiveRoleAppearance33_3356C828A364EA07A0E2E776C2C2836DLLVG_Tt1g5(v5);
  }

  else
  {
    v7 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F39_enforceButtonDestructiveRoleAppearance33_3356C828A364EA07A0E2E776C2C2836DLLVG_Tt2g5(v5);
  }

  v4[5] = 0;
  *(v4 + 48) = v7 & 1;
  return EnvironmentValues.enforceButtonDestructiveRoleAppearance.modify;
}

void EnvironmentValues.enforceButtonDestructiveRoleAppearance.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  swift_retain_n();
  v3 = *(v1 + 32);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F39_enforceButtonDestructiveRoleAppearance33_3356C828A364EA07A0E2E776C2C2836DLLVG_Tt2g5(*(v1 + 16), v2);

  if (v3)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE02__K39_enforceButtonDestructiveRoleAppearance33_3356C828A364EA07A0E2E776C2C2836DLLVG_Ttg5(*(v1 + 24), **(v1 + 16));
  }

  free(v1);
}

uint64_t one-time initialization function for enforceButtonDestructiveRoleAppearance()
{
  result = AGMakeUniqueID();
  static CachedEnvironment.ID.enforceButtonDestructiveRoleAppearance = result;
  return result;
}

uint64_t _GraphInputs.enforceButtonDestructiveRoleAppearance.getter()
{
  if (one-time initialization token for enforceButtonDestructiveRoleAppearance != -1)
  {
    swift_once();
  }

  v0 = static CachedEnvironment.ID.enforceButtonDestructiveRoleAppearance;
  swift_beginAccess();
  v1 = specialized CachedEnvironment.attribute<A>(id:_:)(v0, specialized implicit closure #1 in _GraphInputs.enforceButtonDestructiveRoleAppearance.getter, 0);
  swift_endAccess();
  return v1;
}

void specialized implicit closure #1 in _GraphInputs.enforceButtonDestructiveRoleAppearance.getter(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  if (a1[1])
  {

    swift_retain_n();
    v4 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I39_enforceButtonDestructiveRoleAppearance33_3356C828A364EA07A0E2E776C2C2836DLLVG_Tt1g5(v3);
  }

  else
  {

    v4 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F39_enforceButtonDestructiveRoleAppearance33_3356C828A364EA07A0E2E776C2C2836DLLVG_Tt2g5(v5);
  }

  *a2 = v4 & 1;
}

double View.enforceButtonDestructiveRoleAppearance(_:)(char a1, uint64_t a2, uint64_t a3)
{
  KeyPath = swift_getKeyPath();
  v8 = a1;
  View.environment<A>(_:_:)(KeyPath, &v8, a2, a3);

  return result;
}

void ResponderNode.makeGesture(inputs:)(uint64_t a1@<X8>)
{
  specialized static GraphHost.currentHost.getter();
  type metadata accessor for GesturePhase<()>(0, v2, v3, v4);
  v6 = specialized GraphHost.intern<A>(_:for:id:)(768, v5, 4);

  v7 = *MEMORY[0x1E698D3F8];
  *(a1 + 8) = MEMORY[0x1E69E7CC0];
  *(a1 + 16) = 0;
  *a1 = v6;
  *(a1 + 4) = v7;
}

uint64_t ResponderNode.isDescendant(of:)(uint64_t a1)
{
  swift_retain_n();
  if (v1 == a1)
  {
    goto LABEL_9;
  }

  v3 = *(*v1 + 88);

  v5 = v3(v4);

  if (v5)
  {

    if (v5 != a1)
    {
      do
      {
        v6 = *(*v5 + 88);

        v8 = v6(v7);

        if (!v8)
        {
          goto LABEL_8;
        }

        v5 = v8;
      }

      while (v8 != a1);
    }

LABEL_9:

    v9 = 1;
    goto LABEL_10;
  }

LABEL_8:

  v9 = 0;
LABEL_10:

  return v9;
}

double ResponderNode.sequence.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = swift_allocObject();
  *(v3 + 16) = specialized implicit closure #1 in ResponderNode.sequence.getter;
  *(v3 + 24) = 0;
  *a1 = v1;
  *(a1 + 8) = 1;
  *(a1 + 16) = partial apply for specialized closure #1 in sequence<A>(first:next:);
  *(a1 + 24) = v3;
  *(a1 + 32) = 0;

  return result;
}

uint64_t specialized implicit closure #1 in ResponderNode.sequence.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 88))();
  *a2 = result;
  return result;
}

double ResponderNode.firstAncestor<A>(ofType:)@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = swift_allocObject();
  *(v4 + 16) = specialized implicit closure #1 in ResponderNode.sequence.getter;
  *(v4 + 24) = 0;
  type metadata accessor for UnfoldSequence<ResponderNode, (ResponderNode?, Bool)>(0);
  lazy protocol witness table accessor for type UnfoldSequence<ResponderNode, (ResponderNode?, Bool)> and conformance UnfoldSequence<A, B>();
  Sequence.first<A>(ofType:)(a1, a2);

  return result;
}

Swift::Int ResponderVisitorResult.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

void type metadata accessor for GesturePhase<()>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for GesturePhase<()>)
  {
    v4 = type metadata accessor for GesturePhase(0, MEMORY[0x1E69E7CA8] + 8, a3, a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for GesturePhase<()>);
    }
  }
}

void type metadata accessor for UnfoldSequence<ResponderNode, (ResponderNode?, Bool)>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for UnfoldSequence<ResponderNode, (ResponderNode?, Bool)>)
  {
    type metadata accessor for ResponderNode();
    type metadata accessor for (ResponderNode?, Bool)(255);
    v1 = type metadata accessor for UnfoldSequence();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for UnfoldSequence<ResponderNode, (ResponderNode?, Bool)>);
    }
  }
}

void type metadata accessor for (ResponderNode?, Bool)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (ResponderNode?, Bool))
  {
    type metadata accessor for ResponderNode?(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (ResponderNode?, Bool));
    }
  }
}

void type metadata accessor for ResponderNode?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ResponderNode?)
  {
    type metadata accessor for ResponderNode();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ResponderNode?);
    }
  }
}

void lazy protocol witness table accessor for type UnfoldSequence<ResponderNode, (ResponderNode?, Bool)> and conformance UnfoldSequence<A, B>()
{
  if (!lazy protocol witness table cache variable for type UnfoldSequence<ResponderNode, (ResponderNode?, Bool)> and conformance UnfoldSequence<A, B>)
  {
    type metadata accessor for UnfoldSequence<ResponderNode, (ResponderNode?, Bool)>(255);
    swift_getWitnessTable(MEMORY[0x1E69E6BA8], v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type UnfoldSequence<ResponderNode, (ResponderNode?, Bool)> and conformance UnfoldSequence<A, B>);
  }
}

void lazy protocol witness table accessor for type ResponderVisitorResult and conformance ResponderVisitorResult()
{
  if (!lazy protocol witness table cache variable for type ResponderVisitorResult and conformance ResponderVisitorResult)
  {
    swift_getWitnessTable(protocol conformance descriptor for ResponderVisitorResult, &type metadata for ResponderVisitorResult, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ResponderVisitorResult and conformance ResponderVisitorResult);
  }
}

double AnyTransition.adjustedForAccessibility(prefersCrossFade:)(char a1, uint64_t a2)
{
  if (((*(*a2 + 104))() & 1) != 0 && (a1 & 1) != 0 && one-time initialization token for opacity != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t AnyTransition.transaction(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[0] = a1;
  v6[1] = a2;
  v7 = 0;
  v3 = *(*a3 + 80);

  result = v3(v6, &unk_1F00ACE08, &protocol witness table for AnyTransition.FilterVisitor);
  v5 = v7;
  if (v7)
  {

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for AnyTransition.FilterVisitor(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = a2[2];

  return a1;
}

void *assignWithCopy for AnyTransition.FilterVisitor(void *a1, void *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;

  a1[2] = a2[2];

  return a1;
}

uint64_t assignWithTake for AnyTransition.FilterVisitor(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@inout Transaction, @in_guaranteed TransitionPhase) -> (@out ())(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a2;
  return v3(a1, &v5);
}

uint64_t EnvironmentValues.lazySubviewMinorSizing.getter()
{
  v1 = *v0;
  if (!*(v0 + 8))
  {
    return _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE022LazySubviewMinorSizingF033_0B6308C3BA3B00B5060A0BAAE3782C53LLVG_Tt2g5(v1);
  }

  v2 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE022LazySubviewMinorSizingI033_0B6308C3BA3B00B5060A0BAAE3782C53LLVG_Tt1g5(v1);

  return v2;
}

void key path getter for EnvironmentValues.lazySubviewMinorSizing : EnvironmentValues(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8))
  {

    v4 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE022LazySubviewMinorSizingI033_0B6308C3BA3B00B5060A0BAAE3782C53LLVG_Tt1g5(v3);
    v6 = v5;
  }

  else
  {
    v4 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE022LazySubviewMinorSizingF033_0B6308C3BA3B00B5060A0BAAE3782C53LLVG_Tt2g5(*a1);
    v6 = v7;
  }

  *a2 = v4;
  *(a2 + 8) = v6;
}

double key path setter for EnvironmentValues.lazySubviewMinorSizing : EnvironmentValues(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *a1;

  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE022LazySubviewMinorSizingF033_0B6308C3BA3B00B5060A0BAAE3782C53LLVG_Tt2g5(a2, v5, v3);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE022LazySubviewMinorSizingK033_0B6308C3BA3B00B5060A0BAAE3782C53LLVG_Ttg5(v4, *a2);
  }

  return result;
}

void static LazyLayout_V1.layoutProperties.getter(_WORD *a1@<X8>)
{
  static LazyLayout_V1.layoutProperties.getter(a1);
}

{
  *a1 = 2;
}

uint64_t LazyLayout_V1.proposeSizes(at:subviews:context:cache:in:)(uint64_t a1)
{
  v1 = static os_log_type_t.fault.getter();
  if (one-time initialization token for runtimeIssuesLog != -1)
  {
    v5 = v1;
    swift_once();
    v1 = v5;
  }

  v2 = static Log.runtimeIssuesLog;
  v3 = MEMORY[0x1E69E7CC0];

  return os_log(_:dso:log:_:_:)(v1, &dword_18D018000, v2, "Implementation of proposeSizes() expected", 41, 2, v3);
}

{
  v1 = static os_log_type_t.fault.getter();
  if (one-time initialization token for runtimeIssuesLog != -1)
  {
    v5 = v1;
    swift_once();
    v1 = v5;
  }

  v2 = static Log.runtimeIssuesLog;
  v3 = MEMORY[0x1E69E7CC0];

  return os_log(_:dso:log:_:_:)(v1, &dword_18D018000, v2, "Implementation of proposeSizes() expected", 41, 2, v3);
}

double LazyLayout_V1.initialPlacement(newIndex:newPlacedSubviews:oldPlacedSubviews:wasInsertedToSubviews:context:subviews:cache:)@<D0>(_OWORD *a3@<X8>)
{
  Array.subscript.getter();
  *&v12[32] = v9;
  *&v12[48] = v10;
  *&v12[64] = v11;
  *v12 = v7;
  *&v12[16] = v8;
  outlined destroy of Color.VibrancyDefinition(v12);
  v4 = *&v12[24];
  *a3 = *&v12[8];
  a3[1] = v4;
  result = *&v12[40];
  v6 = *&v12[56];
  a3[2] = *&v12[40];
  a3[3] = v6;
  return result;
}

{
  return LazyLayout_V1.finalPlacement(oldIndex:oldPlacedSubviews:newPlacedSubviews:wasRemovedFromSubviews:context:subviews:cache:)(a3);
}

__n128 _LazyLayout_PlacedSubview_V1.placement.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 8);
  *(a1 + 16) = v2;
  result = *(v1 + 40);
  v4 = *(v1 + 56);
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

void *static LazyLayoutAdaptor_V1.layoutProperties.getter@<X0>(uint64_t a1@<X1>, _WORD *a2@<X8>)
{
  result = (*(a1 + 24))(&v4);
  *a2 = v4;
  return result;
}

uint64_t static LazyLayoutAdaptor_V1.initialCache.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v12 - v9;
  (*(a2 + 32))(a1, a2, v8);
  return (*(v7 + 32))(a3, v10, AssociatedTypeWitness);
}

double LazyLayoutAdaptor_V1.sizeThatFits(proposedSize:subviews:context:cache:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  outlined init with copy of _LazyLayout_Subviews(a5, v12);
  v10 = (*(*(a8 + 24) + 40))(a1);
  outlined destroy of _LazyLayout_Subviews_V1(v12);
  return v10;
}

uint64_t LazyLayoutAdaptor_V1.spacing(subviews:context:cache:)@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  outlined init with copy of _LazyLayout_Subviews(a1, v11);
  v10 = *a2;
  (*(*(a4 + 24) + 48))(&v12, v11, &v10, a3, *(a4 + 16));
  result = outlined destroy of _LazyLayout_Subviews_V1(v11);
  *a5 = v12;
  return result;
}

uint64_t LazyLayoutAdaptor_V1.place(subviews:context:cache:in:)(uint64_t *a1, const void *a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  memcpy(v14, a2, 0x129uLL);
  v9 = a4[3];
  v18 = a4[2];
  v19 = v9;
  v20 = *(a4 + 64);
  v10 = a4[1];
  v16 = *a4;
  v17 = v10;
  outlined init with copy of _LazyLayout_Subviews(a1, v15);
  (*(*(a5 + 24) + 56))(v15, v14, a3, &v16, *(a5 + 16));
  outlined destroy of _LazyLayout_Subviews_V1(v15);
  v11 = v19;
  a4[2] = v18;
  a4[3] = v11;
  *(a4 + 64) = v20;
  v12 = v17;
  *a4 = v16;
  a4[1] = v12;
  result = AGGraphCancelUpdateIfNeeded();
  *(a4 + 64) = result;
  return result;
}

uint64_t LazyLayoutAdaptor_V1.estimatedPlacement(subviews:context:cache:in:)(uint64_t *a1, const void *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  memcpy(__dst, a2, 0x129uLL);
  v9 = *(a4 + 8);
  v10 = a4[2];
  v16 = *a4;
  v17 = v9;
  v18 = v10;
  outlined init with copy of _LazyLayout_Subviews(a1, v15);
  (*(*(a5 + 24) + 64))(v15, __dst, a3, &v16, *(a5 + 16));
  result = outlined destroy of _LazyLayout_Subviews_V1(v15);
  v12 = v17;
  v13 = v18;
  *a4 = v16;
  *(a4 + 8) = v12;
  a4[2] = v13;
  return result;
}

void LazyLayoutAdaptor_V1.proposeSizes(at:subviews:context:cache:in:)(uint64_t a1, uint64_t *a2, const void *a3, uint64_t a4, void *a5, uint64_t a6)
{

  memcpy(__dst, a3, 0x129uLL);
  v12 = MEMORY[0x1E69E7CC0];
  v32 = MEMORY[0x1E69E7CC0];
  outlined init with copy of _LazyLayout_Subviews(a2, v31);
  (*(*(a6 + 24) + 72))(a1, v31, __dst, a4, &v32, *(a6 + 16));
  outlined destroy of _LazyLayout_Subviews_V1(v31);
  v13 = v32;
  v14 = *(v32 + 16);
  if (v14)
  {
    v25 = a5;
    __dst[0] = v12;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
    v15 = 0;
    v16 = __dst[0];
    v17 = *(__dst[0] + 16);
    v26 = 48 * v17;
    v27 = v13;
    do
    {
      v18 = v13 + v15;
      v19 = *(v13 + v15 + 32);
      v20 = *(v13 + v15 + 40);
      v28 = *(v13 + v15 + 48);
      v21 = *(v13 + v15 + 56);
      v22 = *(v18 + 64);
      v29 = *(v18 + 72);
      __dst[0] = v16;
      v23 = *(v16 + 24);

      if (v17 >= v23 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v17 + 1, 1);
        v16 = __dst[0];
      }

      *(v16 + 16) = v17 + 1;
      v24 = v16 + v26 + v15;
      *(v24 + 32) = v19;
      *(v24 + 40) = v20;
      *(v24 + 48) = v28;
      *(v24 + 56) = v21;
      *(v24 + 64) = v22;
      v15 += 48;
      ++v17;
      *(v24 + 72) = v29;
      --v14;
      v13 = v27;
    }

    while (v14);

    a5 = v25;
  }

  else
  {

    v16 = MEMORY[0x1E69E7CC0];
  }

  *a5 = v16;
}

double LazyLayoutAdaptor_V1.initialPlacement(newIndex:newPlacedSubviews:oldPlacedSubviews:wasInsertedToSubviews:context:subviews:cache:)@<D0>(void *__src@<X4>, uint64_t a2@<X0>, uint64_t a3@<X2>, unsigned int a4@<W3>, uint64_t *a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, _OWORD *a8@<X8>)
{
  memcpy(__dst, __src, 0x129uLL);
  type metadata accessor for _LazyLayout_Subview_V1?(0, &lazy cache variable for type metadata for [_LazyLayout_PlacedSubview], &type metadata for _LazyLayout_PlacedSubview, MEMORY[0x1E69E62F8]);
  v11 = v10;
  lazy protocol witness table accessor for type [_LazyLayout_PlacedSubview] and conformance [A]();
  v13 = v12;
  v14 = MEMORY[0x1E69E73E0];
  v15 = MEMORY[0x1E69E7410];
  v17 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #1 in LazyLayoutAdaptor_V1.initialPlacement(newIndex:newPlacedSubviews:oldPlacedSubviews:wasInsertedToSubviews:context:subviews:cache:), 0, v11, &type metadata for _LazyLayout_PlacedSubview_V1, MEMORY[0x1E69E73E0], v12, MEMORY[0x1E69E7410], v16);
  v28[0] = a3;
  v19 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #1 in LazyLayoutAdaptor_V1.initialPlacement(newIndex:newPlacedSubviews:oldPlacedSubviews:wasInsertedToSubviews:context:subviews:cache:), 0, v11, &type metadata for _LazyLayout_PlacedSubview_V1, v14, v13, v15, v18);
  outlined init with copy of _LazyLayout_Subviews(a5, v28);
  (*(*(a7 + 24) + 80))(v30, a2, v17, v19, a4, __dst, v28, a6, *(a7 + 16), *(a7 + 24));

  outlined destroy of _LazyLayout_Subviews_V1(v28);
  v20 = v30[1];
  *a8 = v30[0];
  a8[1] = v20;
  result = *&v31;
  v22 = v32;
  a8[2] = v31;
  a8[3] = v22;
  return result;
}

double LazyLayoutAdaptor_V1.finalPlacement(oldIndex:oldPlacedSubviews:newPlacedSubviews:wasRemovedFromSubviews:context:subviews:cache:)@<D0>(void *__src@<X4>, uint64_t a2@<X0>, uint64_t a3@<X2>, unsigned int a4@<W3>, uint64_t *a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, _OWORD *a8@<X8>)
{
  memcpy(__dst, __src, 0x129uLL);
  type metadata accessor for _LazyLayout_Subview_V1?(0, &lazy cache variable for type metadata for [_LazyLayout_PlacedSubview], &type metadata for _LazyLayout_PlacedSubview, MEMORY[0x1E69E62F8]);
  v11 = v10;
  lazy protocol witness table accessor for type [_LazyLayout_PlacedSubview] and conformance [A]();
  v13 = v12;
  v14 = MEMORY[0x1E69E73E0];
  v15 = MEMORY[0x1E69E7410];
  v17 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #1 in LazyLayoutAdaptor_V1.initialPlacement(newIndex:newPlacedSubviews:oldPlacedSubviews:wasInsertedToSubviews:context:subviews:cache:), 0, v11, &type metadata for _LazyLayout_PlacedSubview_V1, MEMORY[0x1E69E73E0], v12, MEMORY[0x1E69E7410], v16);
  v28[0] = a3;
  v19 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #1 in LazyLayoutAdaptor_V1.initialPlacement(newIndex:newPlacedSubviews:oldPlacedSubviews:wasInsertedToSubviews:context:subviews:cache:), 0, v11, &type metadata for _LazyLayout_PlacedSubview_V1, v14, v13, v15, v18);
  outlined init with copy of _LazyLayout_Subviews(a5, v28);
  (*(*(a7 + 24) + 88))(v30, a2, v17, v19, a4, __dst, v28, a6, *(a7 + 16), *(a7 + 24));

  outlined destroy of _LazyLayout_Subviews_V1(v28);
  v20 = v30[1];
  *a8 = v30[0];
  a8[1] = v20;
  result = *&v31;
  v22 = v32;
  a8[2] = v31;
  a8[3] = v22;
  return result;
}

double LazyLayoutAdaptor_V1.boundingRect(at:subviews:context:cache:)@<D0>(void *__src@<X2>, uint64_t a2@<X0>, uint64_t *a3@<X1>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  memcpy(v13, __src, 0x129uLL);
  outlined init with copy of _LazyLayout_Subviews(a3, v14);
  (*(*(a5 + 24) + 96))(v15, a2, v14, v13, a4, *(a5 + 16));
  outlined destroy of _LazyLayout_Subviews_V1(v14);
  result = *v15;
  v12 = v15[1];
  *a6 = v15[0];
  *(a6 + 16) = v12;
  *(a6 + 32) = v16;
  return result;
}

double protocol witness for LazyLayout.boundingRect(at:subviews:context:cache:) in conformance LazyLayoutAdaptor_V1<A>@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  LazyLayoutAdaptor_V1.boundingRect(at:subviews:context:cache:)(a3, a1, a2, a4, a5, v9);
  result = *v9;
  v8 = v9[1];
  *a6 = v9[0];
  *(a6 + 16) = v8;
  *(a6 + 32) = v10;
  return result;
}

uint64_t (*_LazyLayout_Properties_V1.axes.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  *(a1 + 8) = *v1;
  return _LazyLayout_Properties_V1.axes.modify;
}

uint64_t (*_LazyLayout_Properties_V1.multipleViewAxes.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 1);
  return _LazyLayout_Properties_V1.multipleViewAxes.modify;
}

uint64_t _LazyLayout_Subviews_V1.views(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = outlined init with copy of _LazyLayout_Subviews(v2, a2);
  *(a2 + 144) = a1;
  return result;
}

uint64_t _LazyLayout_Subviews_V1.SubviewsSequence.makeIterator()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = v1[18];
  result = outlined init with copy of _LazyLayout_Subviews(v2, a1);
  *(a1 + 144) = v4;
  return result;
}

uint64_t protocol witness for Sequence.makeIterator() in conformance _LazyLayout_Subviews_V1.SubviewsSequence@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[18];
  outlined init with copy of _LazyLayout_Subviews(v1, a1);
  *(a1 + 144) = v3;

  return outlined destroy of _LazyLayout_Subviews_V1.SubviewsSequence(v1);
}

uint64_t *protocol witness for Sequence._copyToContiguousArray() in conformance _LazyLayout_Subviews_V1.SubviewsSequence()
{
  v1 = specialized _copySequenceToContiguousArray<A>(_:)(v0);
  outlined destroy of _LazyLayout_Subviews_V1.SubviewsSequence(v0);
  return v1;
}

uint64_t _LazyLayout_Subviews_V1.SubviewsIterator.next()@<X0>(_OWORD *a1@<X8>)
{
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  v9 = v1[18];
  outlined init with copy of _LazyLayout_Subviews(v1, v8);
  v5 = v1;
  v6 = a1;
  v7 = 2;
  _LazyLayout_Subviews.apply(from:style:to:)(&v9, &v7, partial apply for closure #1 in _LazyLayout_Subviews_V1.SubviewsIterator.next(), &v4);
  return outlined destroy of _LazyLayout_Subviews(v8);
}

uint64_t closure #1 in _LazyLayout_Subviews_V1.SubviewsIterator.next()(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  outlined destroy of _LazyLayout_Subview_V1?(a4, &lazy cache variable for type metadata for _LazyLayout_Subview_V1?, &type metadata for _LazyLayout_Subview_V1);
  result = outlined init with copy of _LazyLayout_Subview(a1, a4);
  *a2 = 1;
  v9 = *(a3 + 144);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(a3 + 144) = v11;
  }

  return result;
}

uint64_t protocol witness for IteratorProtocol.next() in conformance _LazyLayout_Subviews_V1.SubviewsIterator@<X0>(_OWORD *a1@<X8>)
{
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  v9 = v1[18];
  outlined init with copy of _LazyLayout_Subviews(v1, v8);
  v5 = v1;
  v6 = a1;
  v7 = 2;
  _LazyLayout_Subviews.apply(from:style:to:)(&v9, &v7, closure #1 in _LazyLayout_Subviews_V1.SubviewsIterator.next()partial apply, &v4);
  return outlined destroy of _LazyLayout_Subviews(v8);
}

double _LazyLayout_Subview_V1.lengthAndSpacing(size:axis:predecessor:uniformSpacing:)(uint64_t a1, char a2, uint64_t a3, char a4, char a5, uint64_t a6)
{
  outlined init with copy of _LazyLayout_Subview(v6, &v22);
  outlined init with copy of _LazyLayout_Subview_V1?(a6, &v17, &lazy cache variable for type metadata for _LazyLayout_Subview_V1?, &type metadata for _LazyLayout_Subview_V1);
  if (v17)
  {
    outlined init with copy of _LazyLayout_Subview(&v17, v21);
    outlined destroy of _LazyLayout_Subview_V1(&v17);
  }

  else
  {
    outlined destroy of _LazyLayout_Subview_V1?(&v17, &lazy cache variable for type metadata for _LazyLayout_Subview_V1?, &type metadata for _LazyLayout_Subview_V1);
    memset(v21, 0, sizeof(v21));
  }

  LazyLayoutViewCache.item(data:)(v23);

  v17 = a1;
  v18 = a2 & 1;
  v19 = a3;
  v20 = a4 & 1;
  LayoutProxy.lengthThatFits(_:in:)(&v17, a5 & 1);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI19_LazyLayout_SubviewV_s5NeverO12CoreGraphics7CGFloatVTg5(partial apply for closure #1 in _LazyLayout_Subview.lengthAndSpacing(size:axis:predecessor:uniformSpacing:));
  outlined destroy of _LazyLayout_Subview_V1?(v21, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview);
  outlined destroy of _LazyLayout_Subview(&v22);
  return v14;
}

uint64_t _LazyLayout_Subview_V1.lengthAndSpacing_v2(size:axis:predecessor:uniformSpacing:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  if (AGGraphHasDeadlinePassed())
  {
    result = AGGraphCancelUpdate();
    *a7 = 0;
    *(a7 + 8) = 0;
    *(a7 + 16) = 1;
  }

  else
  {
    outlined init with copy of _LazyLayout_Subview(v8, &v29);
    outlined init with copy of _LazyLayout_Subview_V1?(a6, &v24, &lazy cache variable for type metadata for _LazyLayout_Subview_V1?, &type metadata for _LazyLayout_Subview_V1);
    if (v24)
    {
      outlined init with copy of _LazyLayout_Subview(&v24, v28);
      outlined destroy of _LazyLayout_Subview_V1(&v24);
    }

    else
    {
      outlined destroy of _LazyLayout_Subview_V1?(&v24, &lazy cache variable for type metadata for _LazyLayout_Subview_V1?, &type metadata for _LazyLayout_Subview_V1);
      memset(v28, 0, sizeof(v28));
    }

    LazyLayoutViewCache.item(data:)(v30);

    v24 = a1;
    v25 = a2 & 1;
    v26 = a3;
    v27 = a4 & 1;
    LayoutProxy.lengthThatFits(_:in:)(&v24, a5 & 1);
    v16 = v15;
    MEMORY[0x1EEE9AC00](v17);
    v18 = _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI19_LazyLayout_SubviewV_s5NeverO12CoreGraphics7CGFloatVTg5(closure #1 in _LazyLayout_Subview.lengthAndSpacing(size:axis:predecessor:uniformSpacing:)partial apply);
    v20 = v19;
    outlined destroy of _LazyLayout_Subview_V1?(v28, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview);
    result = outlined destroy of _LazyLayout_Subview(&v29);
    *a7 = v16;
    if (v20)
    {
      v22 = 0;
    }

    else
    {
      v22 = v18;
    }

    *(a7 + 8) = v22;
    *(a7 + 16) = 0;
  }

  return result;
}

__n128 _LazyLayout_Subview_V1.place(at:anchor:proposal:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>)
{
  LOBYTE(v19[0]) = a2 & 1;
  *&v12 = a1;
  BYTE8(v12) = a2 & 1;
  v13 = a3;
  v14 = a4 & 1;
  v15 = a8;
  v16 = a9;
  v17 = a6;
  v18 = a7;
  _LazyLayout_Subview.place(at:)(&v12, v19);
  v10 = v19[3];
  *(a5 + 32) = v19[2];
  *(a5 + 48) = v10;
  *(a5 + 64) = v19[4];
  result = v19[1];
  *a5 = v19[0];
  *(a5 + 16) = result;
  return result;
}

void _LazyLayout_Subview_V1.place_v2(at:anchor:proposal:)(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, _OWORD *a5@<X8>, __n128 a6@<Q0>, double a7@<D1>, double a8@<D2>, double a9@<D3>)
{
  v16 = a6.n128_u64[0];
  if (AGGraphHasDeadlinePassed())
  {
    AGGraphCancelUpdate();
    a5[3] = 0u;
    a5[4] = 0u;
    a5[1] = 0u;
    a5[2] = 0u;
    *a5 = 0u;
  }

  else
  {
    LOBYTE(v27[0]) = a2 & 1;
    *&v20 = a1;
    BYTE8(v20) = a2 & 1;
    v21 = a3;
    v22 = a4 & 1;
    v23 = a8;
    v24 = a9;
    v25 = v16;
    v26 = a7;
    _LazyLayout_Subview.place(at:)(&v20, v27);
    v18 = v27[3];
    a5[2] = v27[2];
    a5[3] = v18;
    a5[4] = v27[4];
    v19 = v27[1];
    *a5 = v27[0];
    a5[1] = v19;
  }
}

uint64_t _LazyLayout_Subview_V1.sizeThatFits(_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v9 = *(v4 + 8);
  v10 = *(LazyLayoutViewCache.item(data:)((v4 + 16)) + 44);

  v11 = *MEMORY[0x1E698D3F8];
  v17 = v9;
  v18 = v10;
  v19 = v11;
  v13 = a1;
  v14 = a2 & 1;
  v15 = a3;
  v16 = a4 & 1;
  return LayoutProxy.size(in:)(&v13);
}

uint64_t _LazyLayout_Subview_V1.SubviewResult.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v5);
  v8 = *(a1 + 16);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    (*(v4 + 8))(v7, a1);
    v10 = 1;
  }

  else
  {
    (*(v9 + 32))(a2, v7, v8);
    v10 = 0;
  }

  return (*(v9 + 56))(a2, v10, 1, v8);
}

BOOL _LazyLayout_Subview_V1.SubviewResult.isCancelled.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = MEMORY[0x1EEE9AC00](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v3);
  v6 = (*(*(*(a1 + 16) - 8) + 48))(v5, 1) == 1;
  (*(v2 + 8))(v5, a1);
  return v6;
}

uint64_t _LazyLayout_Subview_V1.LengthAndSpacing.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x193AC11E0](*&v1);
  if (v2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v2;
  }

  return MEMORY[0x193AC11E0](*&v3);
}

Swift::Int _LazyLayout_Subview_V1.LengthAndSpacing.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v1 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v1;
  }

  MEMORY[0x193AC11E0](*&v3);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x193AC11E0](*&v4);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance _LazyLayout_Subview_V1.LengthAndSpacing(uint64_t a1)
{
  Hasher.init(_seed:)();
  _LazyLayout_Subview_V1.LengthAndSpacing.hash(into:)();
  return Hasher._finalize()();
}

uint64_t static _LazyLayout_Subview_V1.SubviewResult<A>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a4;
  v32 = a1;
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v29 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for _LazyLayout_Subview_V1.SubviewResult(0, v8, v8, v9);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v33 = &v28 - v12;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v14 = *(TupleTypeMetadata2 - 8);
  v15 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v17 = &v28 - v16;
  v19 = *(v18 + 48);
  v31 = v11;
  v20 = *(v11 + 16);
  v20(&v28 - v16, v32, v10, v15);
  (v20)(&v17[v19], a2, v10);
  v32 = v6;
  v21 = *(v6 + 48);
  if (v21(v17, 1, a3) == 1)
  {
    v22 = 1;
    if (v21(&v17[v19], 1, a3) == 1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    (v20)(v33, v17, v10);
    if (v21(&v17[v19], 1, a3) != 1)
    {
      v23 = v32;
      v24 = v29;
      (*(v32 + 32))(v29, &v17[v19], a3);
      v25 = v33;
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      v26 = *(v23 + 8);
      v26(v24, a3);
      v26(v25, a3);
LABEL_8:
      v14 = v31;
      goto LABEL_9;
    }

    (*(v32 + 8))(v33, a3);
  }

  v22 = 0;
  v10 = TupleTypeMetadata2;
LABEL_9:
  (*(v14 + 8))(v17, v10);
  return v22 & 1;
}

uint64_t _LazyLayout_Subview_V1.SubviewResult<A>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, v12, v8);
  if ((*(v4 + 48))(v10, 1, v3) == 1)
  {
    return MEMORY[0x193AC11A0](1);
  }

  (*(v4 + 32))(v6, v10, v3);
  MEMORY[0x193AC11A0](0);
  dispatch thunk of Hashable.hash(into:)();
  return (*(v4 + 8))(v6, v3);
}

Swift::Int _LazyLayout_Subview_V1.SubviewResult<A>.hashValue.getter(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  _LazyLayout_Subview_V1.SubviewResult<A>.hash(into:)(v5, a1, a2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance <A> _LazyLayout_Subview_V1.SubviewResult<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  Hasher.init(_seed:)();
  _LazyLayout_Subview_V1.SubviewResult<A>.hash(into:)(v6, a2, v4);
  return Hasher._finalize()();
}

uint64_t _LazyLayout_Subview_V1.SubviewResult<A>.length.getter()
{
  if (v0[16])
  {
    return 0;
  }

  else
  {
    return *v0;
  }
}

uint64_t _LazyLayout_Subview_V1.SubviewResult<A>.spacing.getter()
{
  if (*(v0 + 16))
  {
    return 0;
  }

  else
  {
    return *(v0 + 8);
  }
}

void _LazyLayout_Subview_V1.proposeSize(_:)(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  LOBYTE(v11[0]) = a2 & 1;
  _LazyLayout_Subview.proposeSize(_:)(a1, a2 & 1, a3, a4 & 1, v11);
  v6 = v11[1];
  v7 = v12;
  v8 = v13;
  v9 = v14;
  v10 = v15;
  *a5 = v11[0];
  *(a5 + 8) = v6;
  *(a5 + 16) = v7;
  *(a5 + 24) = v8;
  *(a5 + 32) = v9;
  *(a5 + 40) = v10;
}

double _LazyLayout_SizeAndSpacingContext_V1.containerSize.getter()
{
  result = 0.0;
  if (*(v0 + 12) != *MEMORY[0x1E698D3F8])
  {
    return *AGGraphGetValue();
  }

  return result;
}

__n128 _LazyLayout_PlacementContext_V1.containingScrollGeometry.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 104);
  v3 = *(v1 + 136);
  *(a1 + 64) = *(v1 + 120);
  *(a1 + 80) = v3;
  *(a1 + 96) = *(v1 + 152);
  v4 = *(v1 + 72);
  *a1 = *(v1 + 56);
  *(a1 + 16) = v4;
  *(a1 + 32) = *(v1 + 88);
  *(a1 + 48) = result;
  return result;
}

__n128 _LazyLayout_PlacementContext_V1.nearestScrollGeometry.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 216);
  v3 = *(v1 + 248);
  *(a1 + 64) = *(v1 + 232);
  *(a1 + 80) = v3;
  v4 = *(v1 + 184);
  *a1 = *(v1 + 168);
  *(a1 + 16) = v4;
  *(a1 + 32) = *(v1 + 200);
  *(a1 + 48) = v2;
  result = *(v1 + 264);
  *(a1 + 96) = result;
  return result;
}

uint64_t _LazyLayout_PlacementContext_V1.isCancelled.getter(__n128 a1)
{
  result = AGGraphHasDeadlinePassed();
  if (result)
  {
    v2 = result;
    AGGraphCancelUpdate();
    return v2;
  }

  return result;
}

double _LazyLayout_PlacementContext_V1.containerSize.getter()
{
  result = 0.0;
  if (*(v0 + 12) != *MEMORY[0x1E698D3F8])
  {
    return *AGGraphGetValue();
  }

  return result;
}

double _LazyLayout_PlacementContext_V1.visibleRect.getter()
{
  v2 = *(v0 + 136);
  if (*(v0 + 296) == 1)
  {
    ScrollGeometry.outsetForAX(limit:)(*(v0 + 280));
  }

  return *&v2;
}

double _LazyLayout_PlacedSubview_V1.origin.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 56);
  _LazyLayout_PlacedSubview.size.getter();
  return v2 - v1 * v3;
}

double _LazyLayout_PlacedSubview_V1.frame.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 56);
  _LazyLayout_PlacedSubview.size.getter();
  v4 = v2 - v1 * v3;
  _LazyLayout_PlacedSubview.size.getter();
  return v4;
}

uint64_t _LazyLayout_Placements_V1.subviews.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v26 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v3 = v26;
    v4 = (v1 + 32);
    do
    {
      v21 = *v4;
      v5 = v4[1];
      v6 = v4[2];
      v7 = v4[4];
      v24 = v4[3];
      v25 = v7;
      v22 = v5;
      v23 = v6;
      outlined init with copy of _LazyLayout_PlacedSubview(&v21, &v16);
      v26 = v3;
      v9 = *(v3 + 16);
      v8 = *(v3 + 24);
      if (v9 >= v8 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1);
        v3 = v26;
      }

      v19 = v24;
      v20 = v25;
      v17 = v22;
      v18 = v23;
      v10 = v21;
      v16 = v21;
      *(v3 + 16) = v9 + 1;
      v11 = (v3 + 80 * v9);
      v11[2] = v10;
      v12 = v17;
      v13 = v18;
      v14 = v20;
      v11[5] = v19;
      v11[6] = v14;
      v11[3] = v12;
      v11[4] = v13;
      v4 += 5;
      --v2;
    }

    while (v2);
  }

  return v3;
}

void _LazyLayout_Placements_V1.subviews.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  if (v4)
  {
    v22 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
    v5 = v22;
    v6 = v4 - 1;
    for (i = 32; ; i += 80)
    {
      v8 = *(a1 + i + 48);
      v19 = *(a1 + i + 32);
      v20 = v8;
      v21 = *(a1 + i + 64);
      v9 = *(a1 + i + 16);
      v17 = *(a1 + i);
      v18 = v9;
      outlined init with copy of _LazyLayout_PlacedSubview_V1(&v17, &v16);
      v22 = v5;
      v11 = *(v5 + 16);
      v10 = *(v5 + 24);
      if (v11 >= v10 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
        v5 = v22;
      }

      *(v5 + 16) = v11 + 1;
      v12 = (v5 + 80 * v11);
      v12[2] = v17;
      v13 = v18;
      v14 = v19;
      v15 = v21;
      v12[5] = v20;
      v12[6] = v15;
      v12[3] = v13;
      v12[4] = v14;
      if (!v6)
      {
        break;
      }

      --v6;
    }
  }

  else
  {

    v5 = MEMORY[0x1E69E7CC0];
  }

  *v2 = v5;
}

void (*_LazyLayout_Placements_V1.subviews.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = _LazyLayout_Placements_V1.subviews.getter();
  return _LazyLayout_Placements_V1.subviews.modify;
}

void _LazyLayout_Placements_V1.subviews.modify(uint64_t *a1, char a2)
{
  if (a2)
  {

    _LazyLayout_Placements_V1.subviews.setter(v2);
  }

  else
  {
    _LazyLayout_Placements_V1.subviews.setter(*a1);
  }
}

void _LazyLayout_Placements_V1.validRect.setter(double a1, double a2, double a3, double a4)
{
  v4[1] = a1;
  v4[2] = a2;
  v4[3] = a3;
  v4[4] = a4;
}

void (*_LazyLayout_Placements_V1.validRect.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  v4 = *(v1 + 24);
  *v3 = *(v1 + 8);
  *(v3 + 16) = v4;
  return _LazyLayout_Placements_V1.validRect.modify;
}

void _LazyLayout_Placements_V1.validRect.modify(void **a1)
{
  v1 = *a1;
  v2 = v1[4];
  v3 = *(v1 + 1);
  *(v2 + 8) = *v1;
  *(v2 + 24) = v3;
  free(v1);
}

uint64_t _LazyLayout_EstimatedPlacements_V1.index.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t (*_LazyLayout_EstimatedPlacements_V1.index.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
  return _LazyLayout_EstimatedPlacements_V1.index.modify;
}

uint64_t _LazyLayout_EstimatedPlacements_V1.index.modify(uint64_t result)
{
  v1 = *(result + 16);
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

double _LazyLayout_EstimatedPlacements_V1.subview.getter@<D0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 16);
  if (*(v2 + 16))
  {
    v3 = *(v2 + 48);
    v4 = *(v2 + 64);
    v5 = *(v2 + 96);
    v11 = *(v2 + 80);
    v12 = v5;
    v6 = *(v2 + 64);
    v10[1] = v3;
    v10[2] = v4;
    v7 = *(v2 + 48);
    v10[0] = *(v2 + 32);
    a1[3] = v11;
    a1[4] = v5;
    a1[1] = v7;
    a1[2] = v6;
    *a1 = *(v2 + 32);
    outlined init with copy of _LazyLayout_PlacedSubview(v10, &v9);
  }

  else
  {
    result = 0.0;
    a1[3] = 0u;
    a1[4] = 0u;
    a1[1] = 0u;
    a1[2] = 0u;
    *a1 = 0u;
  }

  return result;
}