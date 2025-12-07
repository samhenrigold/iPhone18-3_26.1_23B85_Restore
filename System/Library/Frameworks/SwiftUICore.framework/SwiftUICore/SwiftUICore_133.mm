void DisplayList.ViewRenderer.renderAsync(to:time:nextTime:targetTimestamp:version:maxVersion:)(uint64_t *a1@<X0>, double *a2@<X1>, double *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, double *a7@<X8>)
{
  if ((*(v7 + 96) & 1) != 0 || !*(v7 + 80))
  {
    *a7 = 0.0;
    goto LABEL_6;
  }

  v25 = a7;
  v8 = *a1;
  v9 = *(a1 + 4);
  v10 = *(a1 + 3);
  v11 = *a2;
  v12 = *a3;
  v13 = *a4;
  v14 = *(a4 + 8);
  v15 = *a5;
  v16 = *a6;
  v17 = *(v7 + 88);
  ObjectType = swift_getObjectType();
  v26 = v8;
  v27 = v9;
  v28 = v10;
  v33 = v11;
  v30 = v15;
  v31 = v13;
  v32 = v14;
  v29 = v16;
  v18 = *(v17 + 32);
  swift_unknownObjectRetain();
  v18(&v34, &v26, &v33, &v31, &v30, &v29, ObjectType, v17);
  swift_unknownObjectRelease();
  if (v35)
  {
    a7 = v25;
    *v25 = v34;
LABEL_6:
    v19 = 1;
    goto LABEL_7;
  }

  v20 = v34;
  if (v12 < v34)
  {
    v20 = v12;
  }

  v21 = v20 - v11;
  swift_beginAccess();
  v19 = 0;
  v22 = *(v23 + 32);
  if (v22 <= v21)
  {
    v22 = v21;
  }

  a7 = v25;
  *v25 = v11 + v22;
LABEL_7:
  *(a7 + 8) = v19;
}

double DisplayList.ViewRenderer.configuration.getter@<D0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;

  return result;
}

double key path getter for DisplayList.ViewRenderer.configuration : DisplayList.ViewRenderer@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  v6 = *(v3 + 48);
  *a2 = *(v3 + 24);
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;

  return result;
}

void key path setter for DisplayList.ViewRenderer.configuration : DisplayList.ViewRenderer(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = *a2;
  swift_beginAccess();
  *(v6 + 24) = v2;
  *(v6 + 32) = v3;
  *(v6 + 40) = v4;
  *(v6 + 48) = v5;

  *(v6 + 96) = 1;
}

void DisplayList.ViewRenderer.configuration.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  *(v1 + 48) = v5;

  *(v1 + 96) = 1;
}

void (*DisplayList.ViewRenderer.configuration.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return DisplayList.ViewRenderer.configuration.modify;
}

void DisplayList.ViewRenderer.configuration.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    *(*(a1 + 24) + 96) = 1;
  }
}

uint64_t DisplayList.ViewRenderer.host.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 64) = a2;
  swift_unknownObjectWeakAssign();
  result = swift_unknownObjectRelease();
  *(v2 + 96) = 1;
  return result;
}

void (*DisplayList.ViewRenderer.host.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 64);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return DisplayList.ViewRenderer.host.modify;
}

void DisplayList.ViewRenderer.host.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 64) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    v4 = v3[5];
    swift_endAccess();
    swift_unknownObjectRelease();
    *(v4 + 96) = 1;
  }

  free(v3);
}

uint64_t DisplayList.ViewRenderer.__allocating_init(platform:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  v3 = *a1;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 1;
  *(v2 + 24) = 0;
  *(v2 + 64) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 72) = 0;
  *(v2 + 80) = 0;
  *(v2 + 88) = 0;
  *(v2 + 96) = 1;
  *(v2 + 16) = v3;
  return v2;
}

uint64_t DisplayList.ViewRenderer.init(platform:)(uint64_t *a1)
{
  v2 = *a1;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = 1;
  *(v1 + 24) = 0;
  *(v1 + 64) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 72) = 0;
  *(v1 + 80) = 0;
  *(v1 + 88) = 0;
  *(v1 + 96) = 1;
  *(v1 + 16) = v2;
  return v1;
}

uint64_t DisplayList.ViewRenderer.viewCacheIsEmpty.getter()
{
  if (!*(v0 + 80))
  {
    return 1;
  }

  v1 = *(v0 + 88);
  ObjectType = swift_getObjectType();
  v3 = *(v1 + 48);
  swift_unknownObjectRetain();
  v4 = v3(ObjectType, v1);
  swift_unknownObjectRelease();
  return v4 & 1;
}

uint64_t DisplayList.ViewRenderer.deinit()
{

  outlined destroy of weak GestureGraphDelegate?(v0 + 56);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t closure #1 in closure #1 in DisplayList.ViewRasterizer.drawingContent(list:time:)(uint64_t a1, double a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(a1 + 24);
    ObjectType = swift_getObjectType();
    (*(*(*(v5 + 16) + 8) + 24))(ObjectType, a2);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t DisplayList.ViewRasterizer.__deallocating_deinit()
{
  outlined destroy of weak GestureGraphDelegate?(v0 + 24);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void protocol witness for ViewRendererBase.destroy(rootView:) in conformance DisplayList.ViewRasterizer()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  v2 = *(v0 + 40);
  if (v2)
  {
    CoreViewRemoveFromSuperview(v1 & 3, v2);
  }

  else
  {
    __break(1u);
  }
}

void lazy protocol witness table accessor for type DisplayList.ViewRenderer.State and conformance DisplayList.ViewRenderer.State()
{
  if (!lazy protocol witness table cache variable for type DisplayList.ViewRenderer.State and conformance DisplayList.ViewRenderer.State)
  {
    swift_getWitnessTable(protocol conformance descriptor for DisplayList.ViewRenderer.State, &unk_1F008B6A0, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type DisplayList.ViewRenderer.State and conformance DisplayList.ViewRenderer.State);
  }
}

uint64_t outlined destroy of ViewGraphRenderObserver?(uint64_t a1)
{
  type metadata accessor for ViewGraphRenderObserver?(0, &lazy cache variable for type metadata for ViewGraphRenderObserver?, type metadata accessor for ViewGraphRenderObserver, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags()
{
  if (!lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags)
  {
    v2 = type metadata accessor for DispatchWorkItemFlags();
    swift_getWitnessTable(MEMORY[0x1E69E7F70], v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags);
  }
}

void type metadata accessor for ViewGraphRenderObserver?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

double View.caFilter<A>(provider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _AnyCAFilterProvider(0, v8, v10, v9);
  (*(v5 + 16))(v7, a1, a3);
  v12[1] = GradientBox.__allocating_init(_:)(v7);
  View.modifier<A>(_:)();

  return result;
}

double VisualEffect.caFilter<A>(provider:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _AnyCAFilterProvider(0, v13, v15, v14);
  (*(v10 + 16))(v12, a1, a3);
  v18 = GradientBox.__allocating_init(_:)(v12);
  lazy protocol witness table accessor for type CAFilterEffect and conformance CAFilterEffect();
  VisualEffect.rendererEffect<A>(_:)(&v18, a2, &type metadata for CAFilterEffect, a4, a5);

  return result;
}

void lazy protocol witness table accessor for type CAFilterEffect and conformance CAFilterEffect()
{
  if (!lazy protocol witness table cache variable for type CAFilterEffect and conformance CAFilterEffect)
  {
    swift_getWitnessTable(protocol conformance descriptor for CAFilterEffect, &type metadata for CAFilterEffect, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CAFilterEffect and conformance CAFilterEffect);
  }
}

{
  if (!lazy protocol witness table cache variable for type CAFilterEffect and conformance CAFilterEffect)
  {
    swift_getWitnessTable(protocol conformance descriptor for CAFilterEffect, &type metadata for CAFilterEffect, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CAFilterEffect and conformance CAFilterEffect);
  }
}

void type metadata accessor for RendererVisualEffect<CAFilterEffect>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for RendererVisualEffect<CAFilterEffect>)
  {
    lazy protocol witness table accessor for type CAFilterEffect and conformance CAFilterEffect();
    v4 = type metadata accessor for RendererVisualEffect(a1, &type metadata for CAFilterEffect, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for RendererVisualEffect<CAFilterEffect>);
    }
  }
}

void lazy protocol witness table accessor for type RendererVisualEffect<CAFilterEffect> and conformance RendererVisualEffect<A>()
{
  if (!lazy protocol witness table cache variable for type RendererVisualEffect<CAFilterEffect> and conformance RendererVisualEffect<A>)
  {
    type metadata accessor for RendererVisualEffect<CAFilterEffect>(255);
    swift_getWitnessTable(protocol conformance descriptor for RendererVisualEffect<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type RendererVisualEffect<CAFilterEffect> and conformance RendererVisualEffect<A>);
  }
}

double protocol witness for _RendererEffect.effectValue(size:) in conformance CAFilterEffect@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = swift_allocObject();
  *&v9[0] = v3;
  _s7SwiftUI14GraphicsFilterOWOi21_(v9);
  v5 = v9[5];
  v4[5] = v9[4];
  v4[6] = v5;
  v4[7] = v10[0];
  *(v4 + 124) = *(v10 + 12);
  v6 = v9[1];
  v4[1] = v9[0];
  v4[2] = v6;
  v7 = v9[3];
  v4[3] = v9[2];
  v4[4] = v7;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 12) = 10;

  return result;
}

uint64_t InsettableShape.strokeBorder<A>(_:lineWidth:antialiased:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, double a7@<D0>, uint64_t a8@<X8>)
{
  v9[0] = a7;
  v9[1] = 0.0;
  v9[2] = 10.0;
  *&v9[3] = MEMORY[0x1E69E7CC0];
  v9[4] = 0.0;
  return InsettableShape.strokeBorder<A>(_:style:antialiased:)(a1, v9, a2, a3, a4, a5, a6, a8);
}

uint64_t InsettableShape.strokeBorder<A>(_:style:antialiased:)@<X0>(uint64_t a1@<X0>, double *a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v25 = a4;
  v29 = a5;
  v30 = a7;
  v26 = a3;
  v27 = a8;
  v28 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v24 - v12;
  v14 = *(swift_getAssociatedConformanceWitness() + 8);
  v16 = type metadata accessor for _StrokedShape(0, AssociatedTypeWitness, v14, v15);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v24 - v18;
  (*(a6 + 32))(v25, a6, *a2 * 0.5);
  v20 = Shape.stroke(style:)(a2, AssociatedTypeWitness, v14, v19);
  (*(v11 + 8))(v13, AssociatedTypeWitness, v20);
  swift_getWitnessTable(protocol conformance descriptor for _StrokedShape<A>, v16);
  if (v26)
  {
    v22 = 256;
  }

  else
  {
    v22 = 0;
  }

  Shape.fill<A>(_:style:)(v28, v22, v16, v29, v21, v30, v27);
  return (*(v17 + 8))(v19, v16);
}

uint64_t InsettableShape.strokeBorder(style:antialiased:)@<X0>(double *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v22 = a3;
  v23 = a2;
  v24 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v22 - v9;
  v11 = *(swift_getAssociatedConformanceWitness() + 8);
  v13 = type metadata accessor for _StrokedShape(0, AssociatedTypeWitness, v11, v12);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v22 - v15;
  (*(a4 + 32))(v22, a4, *a1 * 0.5);
  v17 = Shape.stroke(style:)(a1, AssociatedTypeWitness, v11, v16);
  (*(v8 + 8))(v10, AssociatedTypeWitness, v17);
  swift_getWitnessTable(protocol conformance descriptor for _StrokedShape<A>, v13);
  v19 = v18;
  if (v23)
  {
    v20 = 256;
  }

  else
  {
    v20 = 0;
  }

  Shape.fill(style:)(v20, v13, v19, v24);
  return (*(v14 + 8))(v16, v13);
}

uint64_t InsettableShape.strokeBorder(lineWidth:antialiased:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v6[0] = a5;
  v6[1] = 0.0;
  v6[2] = 10.0;
  *&v6[3] = MEMORY[0x1E69E7CC0];
  v6[4] = 0.0;
  return InsettableShape.strokeBorder(style:antialiased:)(v6, a1, a2, a3, a4);
}

int8x16_t Rectangle._Inset.path(in:)@<Q0>(int8x16_t *a1@<X8>, double a2@<D0>, CGFloat a3@<D4>)
{
  v19 = CGRectInset(*&a2, a3, a3);
  y = v19.origin.y;
  x = v19.origin.x;
  width = v19.size.width;
  height = v19.size.height;
  IsNull = CGRectIsNull(v19);
  *v8.i64 = x;
  *&v8.i64[1] = y;
  *v9.i64 = width;
  *&v9.i64[1] = height;
  if (IsNull)
  {
    v10 = -1;
  }

  else
  {
    v10 = 0;
  }

  v11 = vdupq_n_s64(v10);
  if (IsNull)
  {
    v12 = 6;
  }

  else
  {
    v12 = 0;
  }

  v13 = vbicq_s8(v8, v11);
  result = vbicq_s8(v9, v11);
  *a1 = v13;
  a1[1] = result;
  a1[2].i8[0] = v12;
  return result;
}

double (*Rectangle._Inset.animatableData.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return protocol witness for Animatable.animatableData.modify in conformance _ContrastEffect;
}

void RoundedRectangle.inset(by:)(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = *(v2 + 16);
  *a1 = *v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = a2;
}

uint64_t RoundedRectangle._Inset.init(base:amount:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v3 = *(result + 16);
  *a2 = *result;
  *(a2 + 16) = v3;
  *(a2 + 24) = a3;
  return result;
}

__n128 RoundedRectangle._Inset.base.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u8[0];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 RoundedRectangle._Inset.base.setter(__n128 *a1)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u8[0] = v2;
  return result;
}

void RoundedRectangle._Inset.animatableData.setter(double a1, double a2, double a3)
{
  *v3 = a1;
  v3[1] = a2;
  v3[3] = a3;
}

double (*RoundedRectangle._Inset.animatableData.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 24) = v1;
  v2 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 16) = v2;
  return RoundedRectangle._Inset.animatableData.modify;
}

double RoundedRectangle._Inset.animatableData.modify(uint64_t a1)
{
  v1 = *(a1 + 24);
  result = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 24) = result;
  return result;
}

double RoundedRectangle._Inset.inset(by:)@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  *a1 = *v2;
  *(a1 + 16) = v3;
  result = v4 + a2;
  *(a1 + 24) = result;
  return result;
}

double protocol witness for InsettableShape.inset(by:) in conformance RoundedRectangle._Inset@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  *a1 = *v2;
  *(a1 + 16) = v3;
  result = v4 + a2;
  *(a1 + 24) = result;
  return result;
}

double protocol witness for Animatable.animatableData.setter in conformance RoundedRectangle._Inset(uint64_t a1)
{
  result = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 24) = result;
  return result;
}

double (*protocol witness for Animatable.animatableData.modify in conformance RoundedRectangle._Inset(uint64_t a1))(uint64_t a1)
{
  *(a1 + 24) = v1;
  v2 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 16) = v2;
  return protocol witness for Animatable.animatableData.modify in conformance RoundedRectangle._Inset;
}

void UnevenRoundedRectangle.inset(by:)(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = *(v2 + 32);
  v4 = *(v2 + 16);
  *a1 = *v2;
  *(a1 + 16) = v4;
  *(a1 + 32) = v3;
  *(a1 + 40) = a2;
}

uint64_t UnevenRoundedRectangle._Inset.init(base:amount:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v3 = *(result + 32);
  v4 = *(result + 16);
  *a2 = *result;
  *(a2 + 16) = v4;
  *(a2 + 32) = v3;
  *(a2 + 40) = a3;
  return result;
}

__n128 UnevenRoundedRectangle._Inset.base.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  result = *v1;
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 UnevenRoundedRectangle._Inset.base.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *a1;
  v4 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v4;
  *(v1 + 32) = v2;
  return result;
}

double UnevenRoundedRectangle._Inset.path(in:)@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v7 = *v5;
  v8 = *(v5 + 8);
  v9 = *(v5 + 16);
  v10 = *(v5 + 24);
  v11 = *(v5 + 32);
  v12 = *(v5 + 40);
  v22 = CGRectInset(*&a2, v12, v12);
  v13 = v7 - v12;
  v14 = 0.0;
  if (v7 - v12 <= 0.0)
  {
    v13 = 0.0;
  }

  v15 = v8 - v12;
  if (v8 - v12 <= 0.0)
  {
    v15 = 0.0;
  }

  v16 = v9 - v12;
  if (v9 - v12 <= 0.0)
  {
    v16 = 0.0;
  }

  if (v10 - v12 > 0.0)
  {
    v14 = v10 - v12;
  }

  v19 = v11;
  specialized Path.init(roundedRect:cornerRadii:style:)(&v19, v20, v22.origin.x, v22.origin.y, v22.size.width, v22.size.height, v13, v15, v16, v14);
  result = *v20;
  v18 = v20[1];
  *a1 = v20[0];
  *(a1 + 16) = v18;
  *(a1 + 32) = v21;
  return result;
}

double UnevenRoundedRectangle._Inset.animatableData.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 40);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v3;
  *(a1 + 32) = result;
  return result;
}

double UnevenRoundedRectangle._Inset.animatableData.setter(uint64_t a1)
{
  result = *(a1 + 32);
  v3 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v3;
  *(v1 + 40) = result;
  return result;
}

uint64_t (*UnevenRoundedRectangle._Inset.animatableData.modify(uint64_t *a1))()
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
  *(v3 + 40) = v1;
  v4 = *(v1 + 40);
  v5 = *(v1 + 16);
  *v3 = *v1;
  *(v3 + 16) = v5;
  *(v3 + 32) = v4;
  return UnevenRoundedRectangle._Inset.animatableData.modify;
}

double UnevenRoundedRectangle._Inset.inset(by:)@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  v5 = *(v2 + 16);
  *a1 = *v2;
  *(a1 + 16) = v5;
  *(a1 + 32) = v3;
  result = v4 + a2;
  *(a1 + 40) = result;
  return result;
}

double protocol witness for InsettableShape.inset(by:) in conformance UnevenRoundedRectangle._Inset@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  v5 = *(v2 + 16);
  *a1 = *v2;
  *(a1 + 16) = v5;
  *(a1 + 32) = v3;
  result = v4 + a2;
  *(a1 + 40) = result;
  return result;
}

double protocol witness for Shape.path(in:) in conformance UnevenRoundedRectangle._Inset@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  UnevenRoundedRectangle._Inset.path(in:)(v5, a2);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

double protocol witness for Animatable.animatableData.getter in conformance UnevenRoundedRectangle._Inset@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 40);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v3;
  *(a1 + 32) = result;
  return result;
}

double protocol witness for Animatable.animatableData.setter in conformance UnevenRoundedRectangle._Inset(uint64_t a1)
{
  result = *(a1 + 32);
  v3 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v3;
  *(v1 + 40) = result;
  return result;
}

uint64_t (*protocol witness for Animatable.animatableData.modify in conformance UnevenRoundedRectangle._Inset(uint64_t *a1))()
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
  *(v3 + 40) = v1;
  v4 = *(v1 + 40);
  v5 = *(v1 + 16);
  *v3 = *v1;
  *(v3 + 16) = v5;
  *(v3 + 32) = v4;
  return protocol witness for Animatable.animatableData.modify in conformance UnevenRoundedRectangle._Inset;
}

double UnevenRoundedRectangle._Inset.animatableData.modify(void **a1)
{
  v1 = *a1;
  v2 = v1[5];
  v3 = v1[4];
  v4 = *(v1 + 1);
  *v2 = *v1;
  *(v2 + 16) = v4;
  *(v2 + 40) = v3;
  free(v1);
  return result;
}

void protocol witness for InsettableShape.inset(by:) in conformance UnevenRoundedRectangle(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = *(v2 + 32);
  v4 = *(v2 + 16);
  *a1 = *v2;
  *(a1 + 16) = v4;
  *(a1 + 32) = v3;
  *(a1 + 40) = a2;
}

double Capsule._Inset.path(in:)@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>, CGFloat a6@<D4>)
{
  if (one-time initialization token for v5 != -1)
  {
    swift_once();
  }

  v12 = static Semantics.v5;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (static Semantics.forced < v12)
  {
    goto LABEL_10;
  }

  *&a6 &= ~1uLL;
LABEL_10:
  v17.origin.x = a2;
  v17.origin.y = a3;
  v17.size.width = a4;
  v17.size.height = a5;
  v18 = CGRectInset(v17, a6, a6);
  Capsule.path(in:)(v15, v18.origin.x, v18.origin.y, v18.size.width, v18.size.height);
  result = *v15;
  v14 = v15[1];
  *a1 = v15[0];
  *(a1 + 16) = v14;
  *(a1 + 32) = v16;
  return result;
}

uint64_t (*Capsule._Inset.animatableData.modify(unint64_t *a1))(uint64_t result)
{
  v2 = *v1;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = v2 & 0xFFFFFFFFFFFFFFFELL;
  return Capsule._Inset.animatableData.modify;
}

double protocol witness for InsettableShape.inset(by:) in conformance Capsule._Inset@<D0>(unint64_t *a1@<X8>, double a2@<D0>)
{
  result = COERCE_DOUBLE(*v2 & 0xFFFFFFFFFFFFFFFELL) + a2;
  *a1 = *&result & 0xFFFFFFFFFFFFFFFELL | *v2 & 1;
  return result;
}

double protocol witness for Shape.path(in:) in conformance Capsule._Inset@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  Capsule._Inset.path(in:)(v9, a2, a3, a4, a5, *v5);
  result = *v9;
  v8 = v9[1];
  *a1 = v9[0];
  *(a1 + 16) = v8;
  *(a1 + 32) = v10;
  return result;
}

uint64_t (*protocol witness for Animatable.animatableData.modify in conformance Capsule._Inset(unint64_t *a1))(uint64_t result)
{
  v2 = *v1;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = v2 & 0xFFFFFFFFFFFFFFFELL;
  return protocol witness for Animatable.animatableData.modify in conformance Capsule._Inset;
}

BOOL Ellipse._Inset.path(in:)@<W0>(uint64_t a1@<X8>, double a2@<D0>, CGFloat a3@<D4>)
{
  v15 = CGRectInset(*&a2, a3, a3);
  x = v15.origin.x;
  y = v15.origin.y;
  height = v15.size.height;
  rect = v15.size.width;
  result = CGRectIsNull(v15);
  if (result)
  {
    v8 = 0uLL;
    v9 = 6;
    v10 = 0uLL;
  }

  else
  {
    v16.origin.x = x;
    v16.origin.y = y;
    v16.size.height = height;
    v16.size.width = rect;
    result = CGRectIsInfinite(v16);
    *&v8 = x;
    *(&v8 + 1) = y;
    *&v10 = rect;
    *(&v10 + 1) = height;
    v9 = !result;
  }

  *a1 = v8;
  *(a1 + 16) = v10;
  *(a1 + 32) = v9;
  return result;
}

double (*Ellipse._Inset.animatableData.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return protocol witness for Animatable.animatableData.modify in conformance _ContrastEffect;
}

BOOL protocol witness for Shape.path(in:) in conformance Ellipse._Inset@<W0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v15 = CGRectInset(*&a2, *v5, *v5);
  x = v15.origin.x;
  y = v15.origin.y;
  height = v15.size.height;
  rect = v15.size.width;
  result = CGRectIsNull(v15);
  if (result)
  {
    v8 = 0uLL;
    v9 = 6;
    v10 = 0uLL;
  }

  else
  {
    v16.origin.x = x;
    v16.origin.y = y;
    v16.size.height = height;
    v16.size.width = rect;
    result = CGRectIsInfinite(v16);
    *&v8 = x;
    *(&v8 + 1) = y;
    *&v10 = rect;
    *(&v10 + 1) = height;
    v9 = !result;
  }

  *a1 = v8;
  *(a1 + 16) = v10;
  *(a1 + 32) = v9;
  return result;
}

double Circle._Inset.path(in:)@<D0>(uint64_t a1@<X8>, double a2@<D0>, CGFloat a3@<D4>)
{
  v11 = CGRectInset(*&a2, a3, a3);
  specialized Circle.path(in:)(v9, v11.origin.x, v11.origin.y, v11.size.width, v11.size.height);
  result = *v9;
  v8 = v9[1];
  *a1 = v9[0];
  *(a1 + 16) = v8;
  *(a1 + 32) = v10;
  return result;
}

double (*Circle._Inset.animatableData.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return ViewSize.width.modify;
}

double protocol witness for Shape.path(in:) in conformance Circle._Inset@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v11 = CGRectInset(*&a2, *v5, *v5);
  specialized Circle.path(in:)(v9, v11.origin.x, v11.origin.y, v11.size.width, v11.size.height);
  result = *v9;
  v8 = v9[1];
  *a1 = v9[0];
  *(a1 + 16) = v8;
  *(a1 + 32) = v10;
  return result;
}

double Rectangle.outset(by:)@<D0>(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  *a1 = -a2;
  a1[1] = -a3;
  result = -a5;
  a1[2] = -a4;
  a1[3] = -a5;
  return result;
}

int8x16_t protocol witness for Shape.path(in:) in conformance Rectangle.AsymmetricalInset@<Q0>(int8x16_t *a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v19.origin.x = CGRect.inset(by:)(*v5, v5[1], v5[2], v5[3], a2, a3, a4, a5);
  y = v19.origin.y;
  x = v19.origin.x;
  width = v19.size.width;
  height = v19.size.height;
  IsNull = CGRectIsNull(v19);
  *v8.i64 = x;
  *&v8.i64[1] = y;
  *v9.i64 = width;
  *&v9.i64[1] = height;
  if (IsNull)
  {
    v10 = -1;
  }

  else
  {
    v10 = 0;
  }

  v11 = vdupq_n_s64(v10);
  if (IsNull)
  {
    v12 = 6;
  }

  else
  {
    v12 = 0;
  }

  v13 = vbicq_s8(v8, v11);
  result = vbicq_s8(v9, v11);
  *a1 = v13;
  a1[1] = result;
  a1[2].i8[0] = v12;
  return result;
}

void instantiation function for generic protocol witness table for UnevenRoundedRectangle._Inset(uint64_t a1)
{
  lazy protocol witness table accessor for type UnevenRoundedRectangle._Inset and conformance UnevenRoundedRectangle._Inset();
  *(a1 + 8) = v2;
}

{
  lazy protocol witness table accessor for type UnevenRoundedRectangle._Inset and conformance UnevenRoundedRectangle._Inset();
  *(a1 + 8) = v2;
}

void instantiation function for generic protocol witness table for Capsule._Inset(uint64_t a1)
{
  lazy protocol witness table accessor for type Capsule._Inset and conformance Capsule._Inset();
  *(a1 + 8) = v2;
}

{
  lazy protocol witness table accessor for type Capsule._Inset and conformance Capsule._Inset();
  *(a1 + 8) = v2;
}

void instantiation function for generic protocol witness table for Ellipse._Inset(uint64_t a1)
{
  lazy protocol witness table accessor for type Ellipse._Inset and conformance Ellipse._Inset();
  *(a1 + 8) = v2;
}

{
  lazy protocol witness table accessor for type Ellipse._Inset and conformance Ellipse._Inset();
  *(a1 + 8) = v2;
}

uint64_t getEnumTagSinglePayload for RoundedRectangle._Inset(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 32))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for RoundedRectangle._Inset(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UnevenRoundedRectangle._Inset(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 48))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for UnevenRoundedRectangle._Inset(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

Swift::Int _VAlignment.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](a1);
  return Hasher._finalize()();
}

double _AlignmentLayout.placement(of:in:)@<D0>(unsigned int *a1@<X1>, unsigned int a2@<W2>, uint64_t a3@<X8>)
{
  v3 = a2;
  v5 = *a1;
  v6 = a2 >> 8;
  v26 = *(a1 + 1);
  v27 = a1[3];
  v7 = *(a1 + 2);
  v8 = *(a1 + 3);
  v30 = *(a1 + 2);
  v9 = *(a1 + 48);
  v25 = v5;
  v28 = v7;
  v29 = v8;
  v31 = v9;
  PlacementContext.proposedSize.getter(&v21);
  v10 = v21;
  v11 = v22;
  v12 = v23;
  v13 = v24;
  v14 = dbl_18DDECEF0[v3];
  v15 = dbl_18DDECEF0[v6];
  if (v9)
  {
    v16 = v21;
    InputValue = AGGraphGetInputValue();
    v10 = v16;
    v18 = *InputValue;
    v19 = InputValue[1];
  }

  else
  {
    v18 = v7;
    v19 = v8;
  }

  result = v14 * v18;
  *a3 = v10;
  *(a3 + 8) = v11;
  *(a3 + 16) = v12;
  *(a3 + 24) = v13;
  *(a3 + 32) = v14;
  *(a3 + 40) = v15;
  *(a3 + 48) = result;
  *(a3 + 56) = v15 * v19;
  return result;
}

double _AlignmentLayout.sizeThatFits(in:context:child:)(uint64_t a1, uint64_t a2, uint64_t *a3, __int16 a4)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  if (a4 != 3 && (a4 & 0xFF00) != 0x300 && (*(a1 + 8) & 1) == 0 && (*(a1 + 24) & 1) == 0)
  {
    return *a1;
  }

  v9 = a4 == 3;
  v10 = *(a3 + 2);
  v15 = *a3;
  v16 = v10;
  v11 = v4;
  v12 = v5;
  v13 = v6;
  v14 = v7;
  LayoutProxy.size(in:)(&v11);
  if (((v9 | v5) & 1) == 0)
  {
    return v4;
  }

  return result;
}

void _AlignmentLayout.spacing(in:child:)(uint64_t a1@<X0>, unsigned int *a2@<X1>, void *a3@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8);
  v5 = a2[1];
  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v6 = static Semantics_v3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (static Semantics.forced < v6)
  {
LABEL_7:
    if (v5 == *MEMORY[0x1E698D3F8])
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      InputValue = &static LayoutComputer.defaultValue;
    }

    else
    {
      InputValue = AGGraphGetInputValue();
    }

    v9 = *InputValue;
    v10 = one-time initialization token for lockAssertionsAreEnabled;

    if (v10 != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_23;
    }

    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    if (_MovableLockIsOwner(static Update._lock))
    {
LABEL_23:
      (*(*v9 + 112))();

      return;
    }

    goto LABEL_32;
  }

  if (v5 == *MEMORY[0x1E698D3F8])
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v8 = &static LayoutComputer.defaultValue;
  }

  else
  {
    v8 = AGGraphGetInputValue();
  }

  v11 = *v8;
  v12 = one-time initialization token for lockAssertionsAreEnabled;

  if (v12 != -1)
  {
    swift_once();
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_31;
  }

  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  if (_MovableLockIsOwner(static Update._lock))
  {
LABEL_31:
    (*(*v11 + 112))(&v23);

    KeyPath = swift_getKeyPath();
    v24 = v4;
    v25 = KeyPath;
    type metadata accessor for EnvironmentFetch<LayoutDirection>(0, v14, v15, v16);
    Hasher.init(_seed:)();
    Hasher._combine(_:)(v4);
    type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>();
    dispatch thunk of Hashable.hash(into:)();
    Hasher._finalize()();
    _s7SwiftUI16EnvironmentFetch33_BA60BF7120E939C5C25B2A488163D4ACLLVyAA15LayoutDirectionOGADyxG14AttributeGraph4RuleAAWlTm_1(&lazy protocol witness table cache variable for type EnvironmentFetch<LayoutDirection> and conformance EnvironmentFetch<A>, protocol conformance descriptor for EnvironmentFetch<A>, v17, v18);
    _s7SwiftUI16EnvironmentFetch33_BA60BF7120E939C5C25B2A488163D4ACLLVyAA15LayoutDirectionOGADyxG14AttributeGraph4RuleAAWlTm_1(&lazy protocol witness table cache variable for type EnvironmentFetch<LayoutDirection> and conformance EnvironmentFetch<A>, protocol conformance descriptor for EnvironmentFetch<A>, v19, v20);
    v22[0] = 0;
    v21 = *static Rule<>._cachedValue(options:owner:hashValue:bodyPtr:update:)();

    v22[0] = v21;
    AbsoluteEdge.Set.init(_:layoutDirection:)(v22, &v24);
    Spacing.reset(_:)(&v24);
    *a3 = v23;
    return;
  }

LABEL_32:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void lazy protocol witness table accessor for type _VAlignment and conformance _VAlignment()
{
  if (!lazy protocol witness table cache variable for type _VAlignment and conformance _VAlignment)
  {
    swift_getWitnessTable(protocol conformance descriptor for _VAlignment, &type metadata for _VAlignment, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _VAlignment and conformance _VAlignment);
  }
}

uint64_t getEnumTagSinglePayload for _AlignmentLayout(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 65283 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65283 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65283;
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

      return (*a1 | (v4 << 16)) - 65283;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65283;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 4;
  if (v6 < 3)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

_WORD *storeEnumTagSinglePayload for _AlignmentLayout(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65283 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65283 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 16) + 1;
    *result = a2 - 253;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
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
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t StateOrBinding.init(wrappedValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  State.init(wrappedValue:)(a1, a2, a3, a4, a5);
  type metadata accessor for StateOrBinding(0, a2, v6, v7);

  return swift_storeEnumTagMultiPayload();
}

uint64_t key path setter for StateOrBinding.wrappedValue : <A>StateOrBinding<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v15 - v6;
  (*(v8 + 16))(&v15 - v6, v5);
  v11 = type metadata accessor for StateOrBinding(0, v4, v9, v10);
  return StateOrBinding.wrappedValue.setter(v7, v11, v12, v13);
}

uint64_t StateOrBinding.wrappedValue.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v27 = a1;
  v7 = *(a2 + 16);
  v8 = type metadata accessor for Binding(0, v7, a3, a4);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - v10;
  v14 = type metadata accessor for State(0, v7, v12, v13);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v26 - v16;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21, v5, a2, v19);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v21, v8);
    v23 = v27;
    specialized Binding.wrappedValue.setter(v27);
    (*(*(v7 - 8) + 8))(v23, v7);
    return (*(v9 + 8))(v11, v8);
  }

  else
  {
    (*(v15 + 32))(v17, v21, v14);
    v25 = v27;
    specialized LazyState.wrappedValue.setter(v27, v14);
    (*(*(v7 - 8) + 8))(v25, v7);
    return (*(v15 + 8))(v17, v14);
  }
}

void (*StateOrBinding.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2, uint64_t a3, uint64_t a4)
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
  StateOrBinding.wrappedValue.getter(a2, v12, v13, v14);
  return StateOrBinding.wrappedValue.modify;
}

void StateOrBinding.wrappedValue.modify(uint64_t **a1, char a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  if (a2)
  {
    v7 = v4[2];
    v8 = v4[3];
    v9 = *v4;
    (*(v8 + 16))((*a1)[4], v6, v7, a4);
    StateOrBinding.wrappedValue.setter(v5, v9, v10, v11);
    (*(v8 + 8))(v6, v7);
  }

  else
  {
    StateOrBinding.wrappedValue.setter((*a1)[5], *v4, a3, a4);
  }

  free(v6);
  free(v5);

  free(v4);
}

uint64_t StateOrBinding.wrappedValue.getter(uint64_t a1, void (*a2)(uint64_t), void (*a3)(uint64_t), uint64_t a4)
{
  v24 = a2;
  v25 = a3;
  v5 = v4;
  v7 = *(a1 + 16);
  v8 = type metadata accessor for Binding(0, v7, a3, a4);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - v10;
  v14 = type metadata accessor for State(0, v7, v12, v13);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v24 - v16;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v24 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21, v5, a1, v19);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v21, v8);
    v25(v8);
    return (*(v9 + 8))(v11, v8);
  }

  else
  {
    (*(v15 + 32))(v17, v21, v14);
    v24(v14);
    return (*(v15 + 8))(v17, v14);
  }
}

void *initializeBufferWithCopyOfBuffer for StateOrBinding(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = *(v5 + 80);
  v8 = v7;
  v9 = v7 + 16;
  if (((v8 + 16) & ~v8) + v6 <= ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v10 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  else
  {
    v10 = ((v7 + 16) & ~v7) + v6;
  }

  v11 = v7 & 0x100000;
  if (v8 > 7 || v11 != 0 || v10 + 1 > 0x18)
  {
    v14 = *a2;
    *v3 = *a2;
    v3 = (v14 + ((v8 & 0xF8 ^ 0x1F8) & v9));
LABEL_30:

    return v3;
  }

  v15 = a2[v10];
  v16 = v15 - 2;
  if (v15 >= 2)
  {
    if (v10 <= 3)
    {
      v17 = v10;
    }

    else
    {
      v17 = 4;
    }

    if (v17 <= 1)
    {
      if (!v17)
      {
        goto LABEL_27;
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

    v19 = (v18 | (v16 << (8 * v10))) + 2;
    v15 = v18 + 2;
    if (v10 < 4)
    {
      v15 = v19;
    }
  }

LABEL_27:
  if (v15 != 1)
  {
    (*(v5 + 16))(a1);
    *((v3 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) = *(&a2[v6 + 7] & 0xFFFFFFFFFFFFFFF8);
    *(v3 + v10) = 0;
    goto LABEL_30;
  }

  v21 = *a2;
  v20 = (a2 + 15);
  *a1 = v21;
  v22 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v23 = (v20 & 0xFFFFFFFFFFFFFFF8) + 8;
  *v22 = *(v20 & 0xFFFFFFFFFFFFFFF8);
  v24 = *(v5 + 16);

  v24(v22 + 1, v23, v4);
  *(v3 + v10) = 1;
  return v3;
}

unsigned __int8 *assignWithCopy for StateOrBinding(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = *(a3 + 16);
    v6 = *(v5 - 8);
    v7 = *(v6 + 64);
    v8 = *(v6 + 80);
    if (((v8 + 16) & ~v8) + v7 <= ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
    {
      v9 = ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    }

    else
    {
      v9 = ((v8 + 16) & ~v8) + v7;
    }

    v10 = a1[v9];
    v11 = v10 - 2;
    if (v10 < 2)
    {
LABEL_21:
      v14 = ~v8;
      if (v10 == 1)
      {

        (*(v6 + 8))((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & v14, v5);
      }

      else
      {
        (*(v6 + 8))(a1, v5);
      }

      v15 = a2[v9];
      v16 = v15 - 2;
      if (v15 >= 2)
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
            goto LABEL_38;
          }

          v18 = *a2;
          if (v9 < 4)
          {
LABEL_41:
            if ((v18 | (v16 << (8 * v9))) != 0xFFFFFFFF)
            {
              goto LABEL_42;
            }

LABEL_39:
            *a1 = *a2;
            v19 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
            v20 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
            *v19 = *v20;
            v21 = v19 + v8 + 8;
            v22 = v20 + v8 + 8;
            v23 = *(v6 + 16);

            v23(v21 & v14, v22 & v14, v5);
            a1[v9] = 1;
            return a1;
          }
        }

        else if (v17 == 2)
        {
          v18 = *a2;
          if (v9 < 4)
          {
            goto LABEL_41;
          }
        }

        else if (v17 == 3)
        {
          v18 = *a2 | (a2[2] << 16);
          if (v9 < 4)
          {
            goto LABEL_41;
          }
        }

        else
        {
          v18 = *a2;
          if (v9 < 4)
          {
            goto LABEL_41;
          }
        }

        v15 = v18 + 2;
      }

LABEL_38:
      if (v15 != 1)
      {
LABEL_42:
        (*(v6 + 16))(a1, a2, v5);
        *(&a1[v7 + 7] & 0xFFFFFFFFFFFFFFF8) = *(&a2[v7 + 7] & 0xFFFFFFFFFFFFFFF8);
        a1[v9] = 0;

        return a1;
      }

      goto LABEL_39;
    }

    if (v9 <= 3)
    {
      v12 = v9;
    }

    else
    {
      v12 = 4;
    }

    if (v12 > 1)
    {
      if (v12 == 2)
      {
        v13 = *a1;
        if (v9 >= 4)
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v12 == 3)
        {
          v13 = *a1 | (a1[2] << 16);
          if (v9 < 4)
          {
            goto LABEL_20;
          }

LABEL_18:
          v10 = v13 + 2;
          goto LABEL_21;
        }

        v13 = *a1;
        if (v9 >= 4)
        {
          goto LABEL_18;
        }
      }

LABEL_20:
      v10 = (v13 | (v11 << (8 * v9))) + 2;
      goto LABEL_21;
    }

    if (!v12)
    {
      goto LABEL_21;
    }

    v13 = *a1;
    if (v9 < 4)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  return a1;
}

void *initializeWithTake for StateOrBinding(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if (((v6 + 16) & ~v6) + v5 <= ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v7 = ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  else
  {
    v7 = ((v6 + 16) & ~v6) + v5;
  }

  v8 = a2[v7];
  v9 = v8 - 2;
  if (v8 < 2)
  {
    goto LABEL_18;
  }

  if (v7 <= 3)
  {
    v10 = v7;
  }

  else
  {
    v10 = 4;
  }

  if (v10 <= 1)
  {
    if (!v10)
    {
      goto LABEL_18;
    }

    v11 = *a2;
  }

  else if (v10 == 2)
  {
    v11 = *a2;
  }

  else if (v10 == 3)
  {
    v11 = *a2 | (a2[2] << 16);
  }

  else
  {
    v11 = *a2;
  }

  v12 = (v11 | (v9 << (8 * v7))) + 2;
  v8 = v11 + 2;
  if (v7 < 4)
  {
    v8 = v12;
  }

LABEL_18:
  if (v8 == 1)
  {
    *a1 = *a2;
    v13 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    v14 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v13 = *v14;
    (*(v4 + 32))((v13 + v6 + 8) & ~v6, (v14 + v6 + 8) & ~v6);
    v15 = 1;
  }

  else
  {
    (*(v4 + 32))(a1);
    v15 = 0;
    *((a1 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) = *(&a2[v5 + 7] & 0xFFFFFFFFFFFFFFF8);
  }

  *(a1 + v7) = v15;
  return a1;
}

unsigned __int8 *assignWithTake for StateOrBinding(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = *(a3 + 16);
    v6 = *(v5 - 8);
    v7 = *(v6 + 64);
    v8 = *(v6 + 80);
    if (((v8 + 16) & ~v8) + v7 <= ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
    {
      v9 = ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    }

    else
    {
      v9 = ((v8 + 16) & ~v8) + v7;
    }

    v10 = a1[v9];
    v11 = v10 - 2;
    if (v10 < 2)
    {
LABEL_21:
      v14 = ~v8;
      if (v10 == 1)
      {

        (*(v6 + 8))((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & v14, v5);
      }

      else
      {
        (*(v6 + 8))(a1, v5);
      }

      v15 = a2[v9];
      v16 = v15 - 2;
      if (v15 >= 2)
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
            goto LABEL_38;
          }

          v18 = *a2;
          if (v9 < 4)
          {
LABEL_41:
            if ((v18 | (v16 << (8 * v9))) != 0xFFFFFFFF)
            {
              goto LABEL_42;
            }

            goto LABEL_39;
          }
        }

        else if (v17 == 2)
        {
          v18 = *a2;
          if (v9 < 4)
          {
            goto LABEL_41;
          }
        }

        else if (v17 == 3)
        {
          v18 = *a2 | (a2[2] << 16);
          if (v9 < 4)
          {
            goto LABEL_41;
          }
        }

        else
        {
          v18 = *a2;
          if (v9 < 4)
          {
            goto LABEL_41;
          }
        }

        v15 = v18 + 2;
      }

LABEL_38:
      if (v15 != 1)
      {
LABEL_42:
        (*(v6 + 32))(a1, a2, v5);
        v22 = 0;
        *(&a1[v7 + 7] & 0xFFFFFFFFFFFFFFF8) = *(&a2[v7 + 7] & 0xFFFFFFFFFFFFFFF8);
        goto LABEL_43;
      }

LABEL_39:
      v20 = *a2;
      v19 = (a2 + 15);
      *a1 = v20;
      v21 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
      *v21 = *(v19 & 0xFFFFFFFFFFFFFFF8);
      (*(v6 + 32))((v21 + v8 + 8) & v14, ((v19 & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & v14, v5);
      v22 = 1;
LABEL_43:
      a1[v9] = v22;
      return a1;
    }

    if (v9 <= 3)
    {
      v12 = v9;
    }

    else
    {
      v12 = 4;
    }

    if (v12 > 1)
    {
      if (v12 == 2)
      {
        v13 = *a1;
        if (v9 >= 4)
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v12 == 3)
        {
          v13 = *a1 | (a1[2] << 16);
          if (v9 < 4)
          {
            goto LABEL_20;
          }

LABEL_18:
          v10 = v13 + 2;
          goto LABEL_21;
        }

        v13 = *a1;
        if (v9 >= 4)
        {
          goto LABEL_18;
        }
      }

LABEL_20:
      v10 = (v13 | (v11 << (8 * v9))) + 2;
      goto LABEL_21;
    }

    if (!v12)
    {
      goto LABEL_21;
    }

    v13 = *a1;
    if (v9 < 4)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  return a1;
}

uint64_t getEnumTagSinglePayload for StateOrBinding(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  v5 = ((v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v6 = ((*(v3 + 80) + 16) & ~*(v3 + 80)) + v4;
  if (v6 <= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_26;
  }

  v8 = v7 + 1;
  v9 = 8 * (v7 + 1);
  if ((v7 + 1) <= 3)
  {
    v12 = ((a2 + ~(-1 << v9) - 254) >> v9) + 1;
    if (HIWORD(v12))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v12 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v12 < 2)
    {
LABEL_26:
      v14 = *(a1 + v7);
      if (v14 >= 2)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_26;
  }

LABEL_15:
  v13 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v13 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return (v8 | v13) + 255;
}

void storeEnumTagSinglePayload for StateOrBinding(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 64);
  v7 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v8 = ((*(v5 + 80) + 16) & ~*(v5 + 80)) + v6;
  if (v8 <= v7)
  {
    v8 = v7;
  }

  v9 = v8 + 1;
  if (a3 < 0xFF)
  {
    v10 = 0;
  }

  else if (v9 <= 3)
  {
    v13 = ((a3 + ~(-1 << (8 * v9)) - 254) >> (8 * v9)) + 1;
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

  if (a2 > 0xFE)
  {
    v11 = a2 - 255;
    if (v9 >= 4)
    {
      bzero(a1, v8 + 1);
      *a1 = v11;
      v12 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v12 = (v11 >> (8 * v9)) + 1;
    if (v8 != -1)
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

LABEL_36:
        if (v10)
        {
          a1[v9] = v12;
        }

        return;
      }

      *a1 = v15;
      a1[2] = BYTE2(v15);
    }

    if (v10 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v10 <= 1)
  {
    if (v10)
    {
      a1[v9] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v8] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v10 == 2)
  {
    *&a1[v9] = 0;
    goto LABEL_24;
  }

  *&a1[v9] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t specialized Collection.first.getter(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return String.subscript.getter();
  }

  else
  {
    return 0;
  }
}

uint64_t specialized Collection.first.getter(uint64_t a1, __n128 a2)
{
  v3 = _HashTable.startBucket.getter();
  if (v3 == 1 << *(a1 + 32))
  {
    return 3;
  }

  v5 = *(a1 + 36);

  return specialized Set.subscript.getter(v3, v5, 0, a1);
}

void specialized BidirectionalCollection.last.getter(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  if (v5)
  {
    swift_retain_n();
    v6 = v4;
    v7 = _NSTextLineFragmentGetCTLine(v6);

    if (!v7)
    {
      outlined destroy of Text.Layout.Line(v1);
      outlined destroy of Text.Layout.Line(v1);

LABEL_10:
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      return;
    }
  }

  else
  {
    outlined init with copy of Text.Layout.Line(v1, v16);
    outlined init with copy of Text.Layout.Line(v1, v16);
    outlined init with copy of Text.Layout.Line(v1, v16);
    outlined init with copy of Text.Layout.Line(v1, v16);
    outlined init with copy of Text.Layout.Line(v1, v16);

    v7 = v4;
  }

  RunCount = CTLineGetRunCount();

  if (!RunCount)
  {
    outlined destroy of Text.Layout.Line(v1);
    outlined destroy of Text.Layout.Line(v1);
    outlined destroy of Text.Layout.Line(v1);
    outlined destroy of Text.Layout.Line(v1);
    goto LABEL_10;
  }

  if (v5)
  {

    v9 = _NSTextLineFragmentGetCTLine(v4);

    if (!v9)
    {
      v10 = -1;
      goto LABEL_14;
    }
  }

  else
  {

    v9 = v4;
  }

  v11 = CTLineGetRunCount();

  v10 = v11 - 1;
  if (__OFSUB__(v11, 1))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if ((v5 & 1) == 0)
  {

    v12 = v4;
    goto LABEL_17;
  }

LABEL_14:

  v12 = _NSTextLineFragmentGetCTLine(v4);

  if (!v12)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  v13 = CTLineGetRunCount();

  if (v10 < 0 || v10 >= v13)
  {
    goto LABEL_24;
  }

  if ((v5 & 1) == 0)
  {

    goto LABEL_23;
  }

  v14 = _NSTextLineFragmentGetCTLine(v4);

  if (v14)
  {

    v4 = v14;
LABEL_23:
    v15 = *(v1 + 40);
    *a1 = v4;
    *(a1 + 8) = v10;
    *(a1 + 16) = *(v1 + 24);
    *(a1 + 32) = v15;
    *(a1 + 40) = v3;
    return;
  }

LABEL_26:
  __break(1u);
}

uint64_t specialized BidirectionalCollection.last.getter(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  String.index(before:)();
  return String.subscript.getter();
}

uint64_t specialized Collection.dropFirst(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 < 0)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v3 = v2;
  v4 = a1;
  v6 = *v2;
  v7 = *(v2 + 8);
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  if (a1)
  {
    v10 = *(v2 + 32);
    while (1)
    {
      if (v7)
      {
        if ((v9 & 1) == 0)
        {
          goto LABEL_31;
        }

        v7 = 1;
        goto LABEL_25;
      }

      if (v6 == v8)
      {
        v11 = v9;
      }

      else
      {
        v11 = 1;
      }

      if ((v11 & 1) == 0)
      {
        v7 = 0;
LABEL_25:
        v6 = v8;
        goto LABEL_26;
      }

      if (__OFADD__(v6++, 1))
      {
        break;
      }

      swift_beginAccess();
      if (v6 < *(*(v10 + 40) + 16))
      {
        v7 = 0;
      }

      else
      {
        v13 = *(v10 + 32);
        if (v13 == 1)
        {
          v6 = 0;
          v7 = 1;
        }

        else
        {
          specialized SizeFittingTextCache.withValue<A>(for:onChange:compute:)(v6, _ViewInputs.base.modify, 0, _ViewInputs.base.modify, 0, v13);
          v14 = *(*(v10 + 40) + 16);
          v7 = v6 >= v14;
          if (v6 >= v14)
          {
            v6 = 0;
          }
        }
      }

      if (!--v4)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

LABEL_18:
  if (v9)
  {
LABEL_26:
    specialized Slice.subscript.getter(v6, v7, v8, v9, a2);
    return _s7SwiftUI29TimerIntervalTimelineScheduleV32CountdownReducedFrequencyEntriesVWOhTm_0(v3, type metadata accessor for Slice<SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.Variants>);
  }

  if (v7)
  {
    goto LABEL_30;
  }

  if (v8 >= v6)
  {
    v7 = 0;
    goto LABEL_26;
  }

LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized closure #1 in Sequence.sorted<A>(by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  swift_getAtKeyPath();
  swift_getAtKeyPath();
  if (v13 == v11 && v14 == v12)
  {
    v9 = 0;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

void recursiveDescriptionName(_:)(uint64_t a1)
{
  v1 = _typeName(_:qualified:)();
  v3 = v2;
  v4 = specialized Collection.first.getter(v1, v2);
  if (!v5)
  {
    goto LABEL_17;
  }

  if (v4 == 40 && v5 == 0xE100000000000000)
  {
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v6 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  v7 = specialized Collection.dropFirst(_:)(1uLL, v1, v3);
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v9 >> 14;
  v15 = v7 >> 14;
  if (v7 >> 14 != v9 >> 14)
  {
    v16 = v7;
    while (Substring.subscript.getter() != 32 || v17 != 0xE100000000000000)
    {
      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v18)
      {
        goto LABEL_14;
      }

      v16 = Substring.index(after:)();
      v15 = v16 >> 14;
      if (v16 >> 14 == v14)
      {
        goto LABEL_16;
      }
    }

LABEL_14:
    if (v14 < v15)
    {
      __break(1u);
      return;
    }

    type metadata accessor for EmptyCollection<Character>(0, &lazy cache variable for type metadata for EmptyCollection<Character>, MEMORY[0x1E69E5EE0], MEMORY[0x1E69E6C30]);
    lazy protocol witness table accessor for type EmptyCollection<Character> and conformance EmptyCollection<A>(v19);
    MEMORY[0x193ABFE60](v16, v9);
  }

LABEL_16:
  v1 = MEMORY[0x193ABED20](v7, v9, v11, v13);
  v3 = v20;

LABEL_17:
  specialized Collection<>.firstIndex(of:)(60, 0xE100000000000000, v1, v3);
  if ((v21 & 1) == 0)
  {
    v22 = String.subscript.getter();
    v24 = v23;
    v26 = v25;
    v28 = v27;

    MEMORY[0x193ABED20](v22, v24, v26, v28);
  }
}

void CustomRecursiveStringConvertible.descriptionName.getter(uint64_t a1)
{
  DynamicType = swift_getDynamicType();

  recursiveDescriptionName(_:)(DynamicType);
}

Swift::String __swiftcall CustomRecursiveStringConvertible._recursiveDescription(indent:rounded:)(Swift::Int indent, Swift::Bool rounded)
{
  v6 = v3;
  v7 = v2;
  v8 = rounded;
  v108 = type metadata accessor for CharacterSet();
  v10 = *(v108 - 8);
  v11 = MEMORY[0x1EEE9AC00](v108);
  v107 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v6 + 48))(v7, v6, v11))
  {
    v114 = 0;
    v115 = 0xE000000000000000;
    v13 = (*(v6 + 32))(v7, v6);
    v14 = *(v13 + 16);
    if (v14)
    {
      v15 = v13 + 32;
      do
      {
        outlined init with copy of AnyTrackedValue(v15, &v109);
        v16 = v112;
        v17 = v113;
        __swift_project_boxed_opaque_existential_1(&v109, v112);
        if (((*(v17 + 40))(v16, v17) & 1) == 0)
        {
          __swift_project_boxed_opaque_existential_1(&v109, v112);
          countAndFlagsBits = CustomRecursiveStringConvertible._recursiveDescription(indent:rounded:)(indent, v8)._countAndFlagsBits;
          MEMORY[0x193ABEDD0](countAndFlagsBits);
        }

        __swift_destroy_boxed_opaque_existential_1(&v109);
        v15 += 40;
        --v14;
      }

      while (v14);
      goto LABEL_35;
    }

    v65 = 0;
    v66 = 0xE000000000000000;
    goto LABEL_39;
  }

  if (indent < 0)
  {
    goto LABEL_38;
  }

  v101 = v10;
  v109 = indent;
  v110 = 538976288;
  v111 = 0xE400000000000000;
  v19 = v4;
  v20 = MEMORY[0x1E69E7BF8];
  type metadata accessor for EmptyCollection<Character>(0, &lazy cache variable for type metadata for Repeated<String>, MEMORY[0x1E69E6158], MEMORY[0x1E69E7BF8]);
  lazy protocol witness table accessor for type Repeated<String> and conformance Repeated<A>(&lazy protocol witness table cache variable for type Repeated<String> and conformance Repeated<A>, &lazy cache variable for type metadata for Repeated<String>, v20, MEMORY[0x1E69E7C00], v21);
  v22 = BidirectionalCollection<>.joined(separator:)();
  v99 = v23;
  v100 = v22;
  v24 = *(v6 + 16);
  v97 = v19;
  v25 = v24(v7, v6);
  v26 = v25;
  v98 = v6;
  if (v8)
  {
    specialized Sequence<>.roundedAttributes()(v25);
    v28 = v27;

    v26 = v28;
  }

  v29 = MEMORY[0x1E69E7CC0];
  v30 = MEMORY[0x1E69E7CC0];
  if (!indent)
  {
    v30 = specialized CustomRecursiveStringConvertible.topLevelAttributes.getter();
  }

  v109 = v26;
  specialized Array.append<A>(contentsOf:)(v30);
  v31 = v109;
  KeyPath = swift_getKeyPath();
  v109 = v31;

  specialized MutableCollection<>.sort(by:)(&v109, KeyPath);
  v102 = v8;

  v5 = v109;
  v33 = *(v109 + 16);
  if (v33)
  {
    v95 = v7;
    v96 = indent;
    v114 = v29;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v33, 0);
    v34 = 0;
    v35 = v114;
    v104 = (v101 + 8);
    v105 = v33;
    v36 = v5 + 7;
    v106 = v5;
    while (v34 < v5[2])
    {
      v37 = *(v36 - 2);
      v39 = *(v36 - 1);
      v38 = *v36;
      v109 = *(v36 - 3);
      v110 = v37;

      v40 = v107;
      static CharacterSet.whitespacesAndNewlines.getter();
      lazy protocol witness table accessor for type String and conformance String();
      v41 = MEMORY[0x1E69E6158];
      v42 = StringProtocol.components(separatedBy:)();
      (*v104)(v40, v108);
      v109 = v42;
      v43 = MEMORY[0x1E69E62F8];
      type metadata accessor for EmptyCollection<Character>(0, &lazy cache variable for type metadata for [String], v41, MEMORY[0x1E69E62F8]);
      v45 = v44;
      lazy protocol witness table accessor for type Repeated<String> and conformance Repeated<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &lazy cache variable for type metadata for [String], v43, MEMORY[0x1E69E6310], v46);
      v103 = v45;
      v47 = BidirectionalCollection<>.joined(separator:)();
      v49 = v48;

      v51 = String.escapeXML()(v47, v49, v50);
      v53 = v52;

      v109 = v51;
      v110 = v53;
      v54.n128_f64[0] = MEMORY[0x193ABEDD0](8765, 0xE200000000000000);
      v55 = String.escapeXML()(v39, v38, v54);
      MEMORY[0x193ABEDD0](v55);

      MEMORY[0x193ABEDD0](34, 0xE100000000000000);

      v56 = v109;
      v57 = v110;
      v114 = v35;
      v59 = v35[2];
      v58 = v35[3];
      if (v59 >= v58 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v58 > 1), v59 + 1, 1);
        v35 = v114;
      }

      ++v34;
      v35[2] = v59 + 1;
      v60 = &v35[2 * v59];
      v60[4] = v56;
      v60[5] = v57;
      v36 += 4;
      v5 = v106;
      if (v105 == v34)
      {

        v109 = v35;
        v61 = BidirectionalCollection<>.joined(separator:)();
        v63 = v62;

        v109 = 32;
        v110 = 0xE100000000000000;
        MEMORY[0x193ABEDD0](v61, v63);

        v64 = v110;
        v106 = v109;
        indent = v96;
        v7 = v95;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);

    __break(1u);
    goto LABEL_39;
  }

  v106 = 0;
  v64 = 0xE000000000000000;
LABEL_21:
  v67 = v98;
  v109 = (*(v98 + 8))(v7, v98);
  v110 = v68;
  v69 = v107;
  static CharacterSet.whitespacesAndNewlines.getter();
  lazy protocol witness table accessor for type String and conformance String();
  v70 = MEMORY[0x1E69E6158];
  v71 = StringProtocol.components(separatedBy:)();
  (*(v101 + 8))(v69, v108);

  v109 = v71;
  v72 = MEMORY[0x1E69E62F8];
  type metadata accessor for EmptyCollection<Character>(0, &lazy cache variable for type metadata for [String], v70, MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type Repeated<String> and conformance Repeated<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &lazy cache variable for type metadata for [String], v72, MEMORY[0x1E69E6310], v73);
  v74 = BidirectionalCollection<>.joined(separator:)();
  v76 = v75;

  v78 = v7;
  v79 = String.escapeXML()(v74, v76, v77);
  v81 = v80;

  v82 = v99;
  v109 = v100;
  v110 = v99;

  MEMORY[0x193ABEDD0](60, 0xE100000000000000);

  MEMORY[0x193ABEDD0](v79, v81);

  MEMORY[0x193ABEDD0](v106, v64);

  v114 = v109;
  v115 = v110;
  v83 = *(v67 + 32);
  v84 = *(v83(v78, v67) + 16);

  if (!v84)
  {

    MEMORY[0x193ABEDD0](171847456, 0xE400000000000000);
    goto LABEL_36;
  }

  MEMORY[0x193ABEDD0](2622, 0xE200000000000000);
  v85 = v83(v78, v67);
  v86 = *(v85 + 16);
  if (!v86)
  {

    goto LABEL_34;
  }

  v87 = v85 + 32;
  v88 = indent + 1;
  v89 = __OFADD__(indent, 1);
  while (1)
  {
    outlined init with copy of AnyTrackedValue(v87, &v109);
    v91 = v112;
    v92 = v113;
    __swift_project_boxed_opaque_existential_1(&v109, v112);
    if ((*(v92 + 40))(v91, v92))
    {
      goto LABEL_27;
    }

    __swift_project_boxed_opaque_existential_1(&v109, v112);
    if (v89)
    {
      break;
    }

    v90 = CustomRecursiveStringConvertible._recursiveDescription(indent:rounded:)(v88, v102)._countAndFlagsBits;
    MEMORY[0x193ABEDD0](v90);

LABEL_27:
    __swift_destroy_boxed_opaque_existential_1(&v109);
    v87 += 40;
    if (!--v86)
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_31:

  v82 = v99;
LABEL_34:
  MEMORY[0x193ABEDD0](v100, v82);

  v109 = 12092;
  v110 = 0xE200000000000000;
  MEMORY[0x193ABEDD0](v79, v81);

  MEMORY[0x193ABEDD0](2622, 0xE200000000000000);
  MEMORY[0x193ABEDD0](v109, v110);
LABEL_35:

LABEL_36:
  v65 = v114;
  v66 = v115;
LABEL_39:
  result._object = v66;
  result._countAndFlagsBits = v65;
  return result;
}

void specialized Sequence<>.roundedAttributes()(uint64_t a1)
{
  _s10Foundation6LocaleVSgMaTm_0(0, &lazy cache variable for type metadata for Locale?, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v91 = &v89 - v4;
  v5 = MEMORY[0x1E69E7CC0];
  v93 = *(a1 + 16);
  if (v93)
  {
    v90 = 0;
    v6 = 0;
    v92 = a1 + 32;
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v8 = (v92 + 32 * v6);
      v9 = v8[1];
      v96 = *v8;
      v97 = 0;
      v11 = v8[2];
      v10 = v8[3];
      MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
      if ((v10 & 0x1000000000000000) == 0)
      {
        if ((v10 & 0x2000000000000000) != 0)
        {
          v99 = v11;
          v100 = v10 & 0xFFFFFFFFFFFFFFLL;

          v15 = v11 > 0x20u || ((1 << v11) & 0x100003E01) == 0;
          if (!v15 || (v14 = _swift_stdlib_strtod_clocale()) == 0)
          {
LABEL_17:
            v95 = v9;
            v16 = String.tupleOfDoubles()();
            if (!v16)
            {
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
                v7 = isUniquelyReferenced_nonNull_native;
              }

              goto LABEL_39;
            }

            v17 = v16;
            v94 = v6;

            v18 = *(v17 + 16);
            v19 = v7;
            if (v18)
            {
              v99 = v5;
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18, 0);
              v20 = v99;
              v21 = (v17 + 48);
              do
              {
                v23 = *(v21 - 2);
                v22 = *(v21 - 1);
                v24 = *v21;
                v99 = v20;
                v26 = *(v20 + 16);
                v25 = *(v20 + 24);

                if (v26 >= v25 >> 1)
                {
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1);
                  v20 = v99;
                }

                *(v20 + 16) = v26 + 1;
                v27 = v20 + 24 * v26;
                *(v27 + 32) = v23;
                *(v27 + 40) = v22;
                *(v27 + 48) = round(v24 * 256.0) * 0.00390625;
                v21 += 3;
                --v18;
              }

              while (v18);

              v7 = v19;
              v5 = MEMORY[0x1E69E7CC0];
              v28 = *(v20 + 16);
              if (v28)
              {
LABEL_24:
                if (v28 == 4 && (v99 = v96, v100 = v95, v97 = 0x726F6C6F63, v98 = 0xE500000000000000, v29 = type metadata accessor for Locale(), v30 = v91, (*(*(v29 - 8) + 56))(v91, 1, 1, v29), lazy protocol witness table accessor for type String and conformance String(), StringProtocol.range<A>(of:options:range:locale:)(), v32 = v31, outlined destroy of Locale?(v30, &lazy cache variable for type metadata for Locale?, MEMORY[0x1E6969770], MEMORY[0x1E69E6720], _s10Foundation6LocaleVSgMaTm_0), (v32 & 1) == 0))
                {
                  v99 = v5;
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 4, 0);
                  v52 = v99;
                  v53 = *(v20 + 48);
                  v55 = *(v99 + 16);
                  v54 = *(v99 + 24);
                  v56 = v54 >> 1;
                  v57 = v55 + 1;
                  if (v54 >> 1 <= v55)
                  {
                    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v55 + 1, 1);
                    v52 = v99;
                    v54 = *(v99 + 24);
                    v56 = v54 >> 1;
                  }

                  v58 = v53;
                  *(v52 + 16) = v57;
                  *(v52 + 4 * v55 + 32) = v58;
                  v59 = *(v20 + 72);
                  v99 = v52;
                  if (v56 <= v57)
                  {
                    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v55 + 2, 1);
                    v52 = v99;
                  }

                  v60 = v59;
                  *(v52 + 16) = v55 + 2;
                  *(v52 + 4 * v57 + 32) = v60;
                  v61 = *(v20 + 96);
                  v99 = v52;
                  v63 = *(v52 + 16);
                  v62 = *(v52 + 24);
                  v64 = v62 >> 1;
                  v65 = v63 + 1;
                  if (v62 >> 1 <= v63)
                  {
                    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v62 > 1), v63 + 1, 1);
                    v52 = v99;
                    v62 = *(v99 + 24);
                    v64 = v62 >> 1;
                  }

                  v66 = v61;
                  *(v52 + 16) = v65;
                  *(v52 + 4 * v63 + 32) = v66;
                  v67 = *(v20 + 120);
                  v99 = v52;
                  if (v64 <= v65)
                  {
                    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v62 > 1), v63 + 2, 1);
                    v52 = v99;
                  }

                  v68 = v67;
                  *(v52 + 16) = v63 + 2;
                  *(v52 + 32 + 4 * v65) = v68;
                  if (!v63)
                  {
                    goto LABEL_78;
                  }

                  if (v63 == 1)
                  {
                    goto LABEL_79;
                  }

                  v69 = *(v52 + 32);
                  v70 = *(v52 + 36);
                  v71 = *(v52 + 40);
                  v72 = *(v52 + 44);

                  v73 = colorNameForColorComponents(_:)(v69, v70, v71, v72);
                  if (v74)
                  {
                    v11 = v73;
                    v10 = v74;

                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                    {
                      isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
                      v7 = isUniquelyReferenced_nonNull_native;
                    }

                    v6 = v94;
LABEL_39:
                    v9 = v95;
                    goto LABEL_43;
                  }

                  v33 = 4;
                }

                else
                {
                  v33 = v28;
                }

                v97 = v5;
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v33, 0);
                v34 = v97;
                v35 = v20 + 48;
                do
                {
                  v37 = *(v35 - 16);
                  v36 = *(v35 - 8);
                  v38 = HIBYTE(v36) & 0xF;
                  if ((v36 & 0x2000000000000000) == 0)
                  {
                    v38 = v37 & 0xFFFFFFFFFFFFLL;
                  }

                  v99 = 0;
                  v100 = 0xE000000000000000;
                  if (v38)
                  {

                    MEMORY[0x193ABEDD0](v37, v36);
                    MEMORY[0x193ABEDD0](8250, 0xE200000000000000);
                    Double.write<A>(to:)();
                  }

                  else
                  {
                    Double.write<A>(to:)();
                  }

                  v39 = v99;
                  v40 = v100;
                  v97 = v34;
                  v42 = *(v34 + 16);
                  v41 = *(v34 + 24);
                  if (v42 >= v41 >> 1)
                  {
                    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1);
                    v34 = v97;
                  }

                  *(v34 + 16) = v42 + 1;
                  v43 = v34 + 16 * v42;
                  *(v43 + 32) = v39;
                  *(v43 + 40) = v40;
                  v35 += 24;
                  --v28;
                }

                while (v28);

                v7 = v19;
                v5 = MEMORY[0x1E69E7CC0];
                goto LABEL_42;
              }
            }

            else
            {

              v20 = v5;
              v28 = *(v5 + 16);
              if (v28)
              {
                goto LABEL_24;
              }
            }

            v34 = v5;
LABEL_42:
            v99 = v34;
            v44 = MEMORY[0x1E69E62F8];
            type metadata accessor for EmptyCollection<Character>(0, &lazy cache variable for type metadata for [String], MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
            lazy protocol witness table accessor for type Repeated<String> and conformance Repeated<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &lazy cache variable for type metadata for [String], v44, MEMORY[0x1E69E6310], v45);
            v46 = BidirectionalCollection<>.joined(separator:)();
            v48 = v47;

            v99 = 40;
            v100 = 0xE100000000000000;
            MEMORY[0x193ABEDD0](v46, v48);

            MEMORY[0x193ABEDD0](41, 0xE100000000000000);

            v11 = v99;
            v10 = v100;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v6 = v94;
            v9 = v95;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              goto LABEL_64;
            }

            goto LABEL_43;
          }

          goto LABEL_62;
        }

        if ((v11 & 0x1000000000000000) != 0)
        {
          v12 = *((v10 & 0xFFFFFFFFFFFFFFFLL) + 0x20);

          if (v12 <= 0x20 && ((1 << v12) & 0x100003E01) != 0)
          {
            goto LABEL_17;
          }

          v14 = _swift_stdlib_strtod_clocale();
          if (!v14)
          {
            goto LABEL_17;
          }

LABEL_62:
          if (*v14)
          {
            goto LABEL_17;
          }

          goto LABEL_63;
        }
      }

      v76 = v6;
      v77 = v90;
      _StringGuts._slowWithCString<A>(_:)();
      v90 = v77;
      v6 = v76;
      if ((v101 & 1) == 0)
      {
        goto LABEL_17;
      }

LABEL_63:

      v11 = Double.description.getter();
      v10 = v75;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
LABEL_64:
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
        v7 = isUniquelyReferenced_nonNull_native;
      }

LABEL_43:
      v50 = v7[2];
      v49 = v7[3];
      if (v50 >= v49 >> 1)
      {
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v50 + 1, 1, v7);
        v7 = isUniquelyReferenced_nonNull_native;
      }

      ++v6;
      v7[2] = v50 + 1;
      v51 = &v7[4 * v50];
      v51[4] = v96;
      v51[5] = v9;
      v51[6] = v11;
      v51[7] = v10;
      if (v6 == v93)
      {
        goto LABEL_69;
      }
    }
  }

  v7 = MEMORY[0x1E69E7CC0];
LABEL_69:
  v78 = v7[2];
  if (v78)
  {
    v99 = v5;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v78, 0);
    v79 = 0;
    v80 = v99;
    v81 = v7 + 7;
    v95 = v78;
    v96 = v7;
    while (v79 < v7[2])
    {
      v83 = *(v81 - 3);
      v82 = *(v81 - 2);
      v85 = *(v81 - 1);
      v84 = *v81;
      v99 = v80;
      v87 = *(v80 + 16);
      v86 = *(v80 + 24);

      if (v87 >= v86 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v86 > 1), v87 + 1, 1);
        v80 = v99;
      }

      ++v79;
      *(v80 + 16) = v87 + 1;
      v88 = (v80 + 32 * v87);
      v88[4] = v83;
      v88[5] = v82;
      v88[6] = v85;
      v88[7] = v84;
      v81 += 4;
      v7 = v96;
      if (v95 == v79)
      {
        goto LABEL_75;
      }
    }

    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
  }

  else
  {
LABEL_75:
  }
}

void Sequence<>.roundedAttributes()(uint64_t a1, uint64_t a2)
{
  v103 = 0;
  _s10Foundation6LocaleVSgMaTm_0(0, &lazy cache variable for type metadata for Locale?, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v105 = &v102 - v5;
  v6 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v104 = *(AssociatedTypeWitness - 8);
  v11 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v102 - v12;
  (*(v6 + 16))(v9, v2, a1, v11);
  dispatch thunk of Sequence.makeIterator()();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v107 = v13;
  v108 = AssociatedTypeWitness;
  v106 = AssociatedConformanceWitness;
  v15 = dispatch thunk of IteratorProtocol.next()();
  v16 = v115;
  v17 = MEMORY[0x1E69E7CC0];
  if (v115)
  {
    v18 = v114;
    v20 = v116;
    v19 = v117;
    v21 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v111 = 0;
      MEMORY[0x1EEE9AC00](v15);
      if ((v19 & 0x1000000000000000) != 0)
      {
        break;
      }

      if ((v19 & 0x2000000000000000) != 0)
      {
        v114 = v20;
        v115 = v19 & 0xFFFFFFFFFFFFFFLL;
        if (v20 <= 0x20u && ((1 << v20) & 0x100003E01) != 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        if ((v20 & 0x1000000000000000) == 0)
        {
          break;
        }

        v22 = *((v19 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v23 = v22 > 0x20;
        v24 = (1 << v22) & 0x100003E01;
        if (!v23 && v24 != 0)
        {
          goto LABEL_14;
        }
      }

      v87 = _swift_stdlib_strtod_clocale();
      if (v87 && !*v87)
      {
LABEL_57:

        v20 = Double.description.getter();
        v19 = v88;
        goto LABEL_37;
      }

LABEL_14:
      v26 = String.tupleOfDoubles()();
      if (v26)
      {
        v27 = v26;

        v28 = *(v27 + 16);
        v109 = v18;
        v110 = v21;
        if (v28)
        {
          v29 = v16;
          v114 = v17;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v28, 0);
          v30 = v114;
          v31 = (v27 + 48);
          do
          {
            v33 = *(v31 - 2);
            v32 = *(v31 - 1);
            v34 = *v31;
            v114 = v30;
            v36 = *(v30 + 16);
            v35 = *(v30 + 24);

            if (v36 >= v35 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1);
              v30 = v114;
            }

            *(v30 + 16) = v36 + 1;
            v37 = v30 + 24 * v36;
            *(v37 + 32) = v33;
            *(v37 + 40) = v32;
            *(v37 + 48) = round(v34 * 256.0) * 0.00390625;
            v31 += 3;
            --v28;
          }

          while (v28);

          v17 = MEMORY[0x1E69E7CC0];
          v16 = v29;
          v18 = v109;
          v21 = v110;
          v38 = *(v30 + 16);
          if (v38)
          {
LABEL_21:
            if (v38 == 4 && (v114 = v18, v115 = v16, v111 = 0x726F6C6F63, v112 = 0xE500000000000000, v39 = type metadata accessor for Locale(), v40 = v105, (*(*(v39 - 8) + 56))(v105, 1, 1, v39), lazy protocol witness table accessor for type String and conformance String(), StringProtocol.range<A>(of:options:range:locale:)(), v42 = v41, outlined destroy of Locale?(v40, &lazy cache variable for type metadata for Locale?, MEMORY[0x1E6969770], MEMORY[0x1E69E6720], _s10Foundation6LocaleVSgMaTm_0), (v42 & 1) == 0))
            {
              v114 = v17;
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 4, 0);
              v63 = v114;
              v64 = *(v30 + 48);
              v66 = *(v114 + 16);
              v65 = *(v114 + 24);
              v67 = v65 >> 1;
              v68 = v66 + 1;
              if (v65 >> 1 <= v66)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v65 > 1), v66 + 1, 1);
                v63 = v114;
                v65 = *(v114 + 24);
                v67 = v65 >> 1;
              }

              v69 = v64;
              *(v63 + 16) = v68;
              *(v63 + 4 * v66 + 32) = v69;
              v70 = *(v30 + 72);
              v114 = v63;
              v71 = v66 + 2;
              if (v67 <= v68)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v65 > 1), v71, 1);
                v63 = v114;
              }

              v72 = v70;
              *(v63 + 16) = v71;
              *(v63 + 4 * v68 + 32) = v72;
              v73 = *(v30 + 96);
              v114 = v63;
              v75 = *(v63 + 16);
              v74 = *(v63 + 24);
              v76 = v74 >> 1;
              v77 = v75 + 1;
              if (v74 >> 1 <= v75)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v74 > 1), v75 + 1, 1);
                v63 = v114;
                v74 = *(v114 + 24);
                v76 = v74 >> 1;
              }

              v78 = v73;
              *(v63 + 16) = v77;
              *(v63 + 4 * v75 + 32) = v78;
              v79 = *(v30 + 120);
              v114 = v63;
              if (v76 <= v77)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v74 > 1), v75 + 2, 1);
                v63 = v114;
              }

              v80 = v79;
              *(v63 + 16) = v75 + 2;
              *(v63 + 32 + 4 * v77) = v80;
              if (!v75)
              {
                goto LABEL_71;
              }

              if (v75 == 1)
              {
                goto LABEL_72;
              }

              v81 = *(v63 + 32);
              v82 = *(v63 + 36);
              v83 = *(v63 + 40);
              v84 = *(v63 + 44);

              v85 = colorNameForColorComponents(_:)(v81, v82, v83, v84);
              if (v86)
              {
                v20 = v85;
                v19 = v86;

                goto LABEL_37;
              }

              v43 = v16;
              v44 = 4;
            }

            else
            {
              v43 = v16;
              v44 = v38;
            }

            v111 = v17;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v44, 0);
            v45 = v111;
            v46 = v30 + 48;
            do
            {
              v48 = *(v46 - 16);
              v47 = *(v46 - 8);
              v49 = HIBYTE(v47) & 0xF;
              if ((v47 & 0x2000000000000000) == 0)
              {
                v49 = v48 & 0xFFFFFFFFFFFFLL;
              }

              v114 = 0;
              v115 = 0xE000000000000000;
              if (v49)
              {

                MEMORY[0x193ABEDD0](v48, v47);
                MEMORY[0x193ABEDD0](8250, 0xE200000000000000);
                Double.write<A>(to:)();
              }

              else
              {
                Double.write<A>(to:)();
              }

              v50 = v114;
              v51 = v115;
              v111 = v45;
              v53 = *(v45 + 16);
              v52 = *(v45 + 24);
              if (v53 >= v52 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v52 > 1), v53 + 1, 1);
                v45 = v111;
              }

              *(v45 + 16) = v53 + 1;
              v54 = v45 + 16 * v53;
              *(v54 + 32) = v50;
              *(v54 + 40) = v51;
              v46 += 24;
              --v38;
            }

            while (v38);

            v17 = MEMORY[0x1E69E7CC0];
            v16 = v43;
            v18 = v109;
            v21 = v110;
            goto LABEL_36;
          }
        }

        else
        {

          v30 = v17;
          v38 = *(v17 + 16);
          if (v38)
          {
            goto LABEL_21;
          }
        }

        v45 = v17;
LABEL_36:
        v114 = v45;
        v55 = MEMORY[0x1E69E62F8];
        type metadata accessor for EmptyCollection<Character>(0, &lazy cache variable for type metadata for [String], MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
        lazy protocol witness table accessor for type Repeated<String> and conformance Repeated<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &lazy cache variable for type metadata for [String], v55, MEMORY[0x1E69E6310], v56);
        v57 = BidirectionalCollection<>.joined(separator:)();
        v59 = v58;

        v114 = 40;
        v115 = 0xE100000000000000;
        MEMORY[0x193ABEDD0](v57, v59);

        MEMORY[0x193ABEDD0](41, 0xE100000000000000);

        v20 = v114;
        v19 = v115;
      }

LABEL_37:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21[2] + 1, 1, v21);
      }

      v61 = v21[2];
      v60 = v21[3];
      if (v61 >= v60 >> 1)
      {
        v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v60 > 1), v61 + 1, 1, v21);
      }

      v21[2] = v61 + 1;
      v62 = &v21[4 * v61];
      v62[4] = v18;
      v62[5] = v16;
      v62[6] = v20;
      v62[7] = v19;
      v15 = dispatch thunk of IteratorProtocol.next()();
      v18 = v114;
      v16 = v115;
      v20 = v116;
      v19 = v117;
      if (!v115)
      {
        goto LABEL_62;
      }
    }

    v89 = v18;
    v90 = v103;
    _StringGuts._slowWithCString<A>(_:)();
    v103 = v90;
    v18 = v89;
    if (v113)
    {
      goto LABEL_57;
    }

    goto LABEL_14;
  }

  v21 = MEMORY[0x1E69E7CC0];
LABEL_62:
  (*(v104 + 8))(v107, v108);
  v91 = v21[2];
  if (v91)
  {
    v114 = v17;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v91, 0);
    v92 = 0;
    v93 = v114;
    v94 = v21 + 7;
    v109 = v91;
    v110 = v21;
    while (v92 < v21[2])
    {
      v96 = *(v94 - 3);
      v95 = *(v94 - 2);
      v98 = *(v94 - 1);
      v97 = *v94;
      v114 = v93;
      v100 = *(v93 + 16);
      v99 = *(v93 + 24);

      if (v100 >= v99 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v99 > 1), v100 + 1, 1);
        v93 = v114;
      }

      ++v92;
      *(v93 + 16) = v100 + 1;
      v101 = (v93 + 32 * v100);
      v101[4] = v96;
      v101[5] = v95;
      v101[6] = v98;
      v101[7] = v97;
      v94 += 4;
      v21 = v110;
      if (v109 == v92)
      {
        goto LABEL_68;
      }
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
  }

  else
  {
LABEL_68:
  }
}

uint64_t String.escapeXML()(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = String.count.getter();
  MEMORY[0x193ABED40](v3);

  v4 = String.Iterator.next()();
  if (v4.value._object)
  {
    countAndFlagsBits = v4.value._countAndFlagsBits;
    object = v4.value._object;
    while ((countAndFlagsBits != 34 || object != 0xE100000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      if (countAndFlagsBits == 38 && object == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v7 = 0x3B706D6126;
        v8 = 0xE500000000000000;
        goto LABEL_8;
      }

      if (countAndFlagsBits == 39 && object == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v7 = 0x3B736F706126;
        goto LABEL_7;
      }

      if (countAndFlagsBits == 60 && object == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v7 = 997485606;
LABEL_23:
        v8 = 0xE400000000000000;
        goto LABEL_8;
      }

      if (countAndFlagsBits == 62 && object == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v7 = 997484326;
        goto LABEL_23;
      }

      if (countAndFlagsBits == 10 && object == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v7 = 28252;
      }

      else
      {
        if ((countAndFlagsBits != 13 || object != 0xE100000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          MEMORY[0x193ABEDC0](countAndFlagsBits, object);

          goto LABEL_9;
        }

        v7 = 29276;
      }

      v8 = 0xE200000000000000;
LABEL_8:
      MEMORY[0x193ABEDD0](v7, v8);
LABEL_9:
      v9 = String.Iterator.next()();
      countAndFlagsBits = v9.value._countAndFlagsBits;
      object = v9.value._object;
      if (!v9.value._object)
      {
        goto LABEL_38;
      }
    }

    v7 = 0x3B746F757126;
LABEL_7:
    v8 = 0xE600000000000000;
    goto LABEL_8;
  }

LABEL_38:

  return 0;
}

Swift::OpaquePointer_optional __swiftcall String.tupleOfDoubles()()
{
  v2 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v2 = v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    goto LABEL_34;
  }

  v3 = v1;
  v4 = v0;
  if (String.subscript.getter() == 40 && v5 == 0xE100000000000000)
  {
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v6 & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  v7 = specialized BidirectionalCollection.last.getter(v4, v3);
  if (!v1)
  {
    goto LABEL_34;
  }

  if (v7 == 41 && v1 == 0xE100000000000000)
  {

    goto LABEL_13;
  }

  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v8 & 1) == 0)
  {
LABEL_34:
    v29 = 0;
LABEL_35:
    isUniquelyReferenced_nonNull_native = v29;
    goto LABEL_39;
  }

LABEL_13:
  decomposeTuple #1 () in String.tupleOfDoubles()(v4, v3);
  v38 = isUniquelyReferenced_nonNull_native;
  v10 = v1;
  v11 = *(v1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v13 = 0;
    v14 = v1 + 40;
    v37 = v1 + 40;
    do
    {
      v39 = v12;
      v15 = v14 + 16 * v13;
      v16 = v13;
      while (1)
      {
        if (v16 >= *(v10 + 16))
        {
          __break(1u);
          goto LABEL_38;
        }

        v13 = v16 + 1;

        isUniquelyReferenced_nonNull_native = LosslessStringConvertible<>.init(argument:)();
        if ((v42 & 1) == 0)
        {
          break;
        }

        v15 += 16;
        ++v16;
        if (v11 == v13)
        {
          v12 = v39;
          goto LABEL_25;
        }
      }

      v17 = v39;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v39 + 16) + 1, 1, v39);
        v17 = isUniquelyReferenced_nonNull_native;
      }

      v18 = v17;
      v19 = *(v17 + 16);
      v20 = v18;
      v21 = *(v18 + 24);
      v22 = v19 + 1;
      if (v19 >= v21 >> 1)
      {
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v19 + 1, 1, v20);
        v22 = v19 + 1;
        v20 = isUniquelyReferenced_nonNull_native;
      }

      *(v20 + 16) = v22;
      v23 = v20 + 8 * v19;
      v12 = v20;
      *(v23 + 32) = v40;
      v14 = v37;
    }

    while (v11 - 1 != v16);
  }

LABEL_25:
  v24 = *(v10 + 16);

  if (v24 != *(v12 + 16))
  {

    goto LABEL_34;
  }

  specialized _copySequenceToContiguousArray<A>(_:)(v38, v12);
  v26 = v25;

  v27 = *(v26 + 16);
  if (!v27)
  {

    v29 = MEMORY[0x1E69E7CC0];
    goto LABEL_35;
  }

  v41 = MEMORY[0x1E69E7CC0];
  isUniquelyReferenced_nonNull_native = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v27, 0);
  v28 = 0;
  v29 = v41;
  v30 = (v26 + 48);
  while (v28 < *(v26 + 16))
  {
    v32 = *(v30 - 2);
    v31 = *(v30 - 1);
    v33 = *v30;
    v35 = *(v41 + 16);
    v34 = *(v41 + 24);

    if (v35 >= v34 >> 1)
    {
      isUniquelyReferenced_nonNull_native = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1);
    }

    ++v28;
    *(v41 + 16) = v35 + 1;
    v36 = (v41 + 24 * v35);
    v36[4] = v32;
    v36[5] = v31;
    v36[6] = v33;
    v30 += 3;
    if (v27 == v28)
    {

      goto LABEL_35;
    }
  }

LABEL_38:
  __break(1u);
LABEL_39:
  result.is_nil = v1;
  result.value._rawValue = isUniquelyReferenced_nonNull_native;
  return result;
}

void decomposeTuple #1 () in String.tupleOfDoubles()(uint64_t a1, unint64_t a2)
{
  v99 = type metadata accessor for CharacterSet();
  v95 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v98 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);

  v5 = specialized Collection.dropFirst(_:)(1uLL, a1, a2);
  v7 = v6;

  if (!__OFSUB__(Substring.distance(from:to:)(), 1))
  {
    v8 = Substring.index(_:offsetBy:limitedBy:)();
    if (v9)
    {
      v10 = v7;
    }

    else
    {
      v10 = v8;
    }

    if (v10 >> 14 < v5 >> 14)
    {
      goto LABEL_45;
    }

    v11 = Substring.subscript.getter();
    v13 = v12;
    v15 = v14;

    v101 = 44;
    v102 = 0xE100000000000000;
    MEMORY[0x1EEE9AC00](v16);
    *(&v94 - 2) = &v101;
    v17 = specialized Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)(0x7FFFFFFFFFFFFFFFLL, 1, partial apply for specialized closure #1 in Sequence<>.contains(_:), (&v94 - 4), v11, v13, v15, &v94);
    v18 = *(v17 + 2);
    if (v18)
    {
      v101 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18, 0);
      v19 = 0;
      v20 = v101;
      v21 = (v17 + 56);
      while (v19 < *(v17 + 2))
      {
        v22 = *(v21 - 3);
        v23 = *(v21 - 2);
        v24 = *(v21 - 1);
        v25 = *v21;

        v26 = MEMORY[0x193ABED20](v22, v23, v24, v25);
        v28 = v27;

        v101 = v20;
        v30 = v20[2];
        v29 = v20[3];
        if (v30 >= v29 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1);
          v20 = v101;
        }

        ++v19;
        v20[2] = v30 + 1;
        v31 = &v20[2 * v30];
        v31[4] = v26;
        v31[5] = v28;
        v21 += 4;
        if (v18 == v19)
        {

          goto LABEL_14;
        }
      }

      __break(1u);
      goto LABEL_44;
    }

    v20 = MEMORY[0x1E69E7CC0];
LABEL_14:
    v32 = v20[2];
    v94 = v20;
    if (v32)
    {
      v33 = v20 + 5;
      v34 = MEMORY[0x1E69E7CC0];
      v35 = MEMORY[0x1E69E7CC0];
      do
      {
        v37 = *(v33 - 1);
        v36 = *v33;

        specialized Collection<>.firstIndex(of:)(58, 0xE100000000000000, v37, v36);
        if (v38)
        {
          v39 = 0;
          v40 = 0xE000000000000000;
        }

        else
        {

          v41 = String.subscript.getter();
          v96 = v35;
          v97 = v34;
          v42 = v41;
          v44 = v43;
          v46 = v45;
          v48 = v47;

          v39 = MEMORY[0x193ABED20](v42, v44, v46, v48);
          v40 = v49;

          v50 = String.index(after:)();
          v52 = specialized Collection.suffix(from:)(v50, v37, v36, v51);
          v54 = v53;
          v56 = v55;
          v58 = v57;

          v59 = v54;
          v60 = v56;
          v35 = v96;
          v34 = v97;
          v37 = MEMORY[0x193ABED20](v52, v59, v60, v58);
          v36 = v61;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v35 + 2) + 1, 1, v35);
        }

        v63 = *(v35 + 2);
        v62 = *(v35 + 3);
        if (v63 >= v62 >> 1)
        {
          v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v62 > 1), v63 + 1, 1, v35);
        }

        *(v35 + 2) = v63 + 1;
        v64 = &v35[16 * v63];
        *(v64 + 4) = v39;
        *(v64 + 5) = v40;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v34 + 2) + 1, 1, v34);
        }

        v66 = *(v34 + 2);
        v65 = *(v34 + 3);
        if (v66 >= v65 >> 1)
        {
          v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v65 > 1), v66 + 1, 1, v34);
        }

        *(v34 + 2) = v66 + 1;
        v67 = &v34[16 * v66];
        *(v67 + 4) = v37;
        *(v67 + 5) = v36;
        v33 += 2;
        --v32;
      }

      while (v32);
    }

    else
    {
      v34 = MEMORY[0x1E69E7CC0];
      v35 = MEMORY[0x1E69E7CC0];
    }

    v68 = *(v35 + 2);
    v69 = MEMORY[0x1E69E7CC0];
    v96 = v35;
    v97 = v34;
    if (v68)
    {
      v100 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v68, 0);
      v70 = v100;
      v71 = v35;
      v72 = (v95 + 8);
      v73 = (v71 + 40);
      do
      {
        v74 = *v73;
        v101 = *(v73 - 1);
        v102 = v74;

        v75 = v98;
        static CharacterSet.whitespaces.getter();
        lazy protocol witness table accessor for type String and conformance String();
        v76 = StringProtocol.trimmingCharacters(in:)();
        v78 = v77;
        (*v72)(v75, v99);

        v100 = v70;
        v80 = *(v70 + 16);
        v79 = *(v70 + 24);
        if (v80 >= v79 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v79 > 1), v80 + 1, 1);
          v70 = v100;
        }

        *(v70 + 16) = v80 + 1;
        v81 = v70 + 16 * v80;
        *(v81 + 32) = v76;
        *(v81 + 40) = v78;
        v73 += 2;
        --v68;
      }

      while (v68);
      v34 = v97;
      v69 = MEMORY[0x1E69E7CC0];
      v82 = *(v97 + 2);
      if (!v82)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v82 = *(v34 + 2);
      if (!v82)
      {
LABEL_40:

        return;
      }
    }

    v100 = v69;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v82, 0);
    v83 = v100;
    v84 = (v95 + 8);
    v85 = (v34 + 40);
    do
    {
      v86 = *v85;
      v101 = *(v85 - 1);
      v102 = v86;

      v87 = v98;
      static CharacterSet.whitespaces.getter();
      lazy protocol witness table accessor for type String and conformance String();
      v88 = StringProtocol.trimmingCharacters(in:)();
      v90 = v89;
      (*v84)(v87, v99);

      v100 = v83;
      v92 = *(v83 + 16);
      v91 = *(v83 + 24);
      if (v92 >= v91 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v91 > 1), v92 + 1, 1);
        v83 = v100;
      }

      *(v83 + 16) = v92 + 1;
      v93 = v83 + 16 * v92;
      *(v93 + 32) = v88;
      *(v93 + 40) = v90;
      v85 += 2;
      --v82;
    }

    while (v82);
    goto LABEL_40;
  }

LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
}

uint64_t colorNameForColorComponents(_:)(float a1, float a2, float a3, float a4)
{
  if (a1 == 0.0 && a2 == 0.0 && a3 == 0.0)
  {
    if (a4 == 0.0)
    {
      return 0x7261656C63;
    }

    if (a4 == 1.0)
    {
      return 0x6B63616C62;
    }
  }

  v5 = a1 == 1.0;
  if (a2 != 1.0)
  {
    v5 = 0;
  }

  if (v5 && a3 == 1.0 && a4 == 1.0)
  {
    return 0x6574696877;
  }

  if (a1 == 0.03125 && a2 == 0.03125 && a3 == 0.03125 && a4 == 1.0)
  {
    return 2036429415;
  }

  if (a1 != 1.0)
  {
    goto LABEL_41;
  }

  if (a2 == 0.0 && a3 == 0.0 && a4 == 1.0)
  {
    return 6579570;
  }

  result = 0x722D6D6574737973;
  if ((a2 != 0.042969 || a3 != 0.03125 || a4 != 1.0) && (a2 != 0.058594 || a3 != 0.042969 || a4 != 1.0))
  {
    if (a1 != 0.0)
    {
      goto LABEL_43;
    }

LABEL_41:
    if (a2 == 1.0 && a3 == 0.0 && a4 == 1.0)
    {
      return 0x6E65657267;
    }

    if (a2 == 0.0 && a3 == 1.0 && a4 == 1.0)
    {
      return 1702194274;
    }

    else
    {
LABEL_43:
      if (a3 != 0.0)
      {
        v5 = 0;
      }

      if (v5 && a4 == 1.0)
      {
        return 0x776F6C6C6579;
      }

      else
      {
        result = 0x656C70727570;
        if ((a1 != 0.214 || a2 != 0.0 || a3 != 0.214 || a4 != 1.0) && (a1 != 0.21484 || a2 != 0.0 || a3 != 0.21484 || a4 != 1.0))
        {
          if (a1 == 1.0 && a2 == 0.21484 && a3 == 0.0 && a4 == 1.0)
          {
            return 0x65676E61726FLL;
          }

          else if (a1 == 0.0 && a2 == 1.0 && a3 == 1.0 && a4 == 1.0)
          {
            return 1818322292;
          }

          else if (a1 == 0.21484 && a2 == 0.21484 && a3 == 1.0 && a4 == 1.0)
          {
            return 0x6F6769646E69;
          }

          else if (a1 == 1.0 && a2 == 0.0 && a3 == 0.21484 && a4 == 1.0)
          {
            return 1802398064;
          }

          else
          {
            v10 = a2 == 0.046875 && a1 == 0.046875;
            if (v10 && a3 == 0.054688 && a4 == 0.29688)
            {
              return 0xD000000000000010;
            }

            else
            {
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

void specialized _copySequenceToContiguousArray<A>(_:)(uint64_t a1)
{
  _s10Foundation6LocaleVSgMaTm_0(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v38 - v3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TimerIntervalTimelineSchedule.CountdownReducedFrequencyEntries(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v6 + 80);
  outlined init with copy of AlignedTimelineSchedule.Entries(a1, v11, type metadata accessor for TimerIntervalTimelineSchedule.CountdownReducedFrequencyEntries);
  v44 = v11;
  TimerIntervalTimelineSchedule.CountdownReducedFrequencyEntries.next()(v4);
  v42 = *(v6 + 48);
  v43 = v6 + 48;
  v13 = v42(v4, 1, v5);
  v14 = MEMORY[0x1E69E7CC0];
  if (v13 != 1)
  {
    v15 = 0;
    v39 = v6;
    v40 = v12;
    v20 = *(v6 + 32);
    v41 = (v12 + 32) & ~v12;
    v21 = MEMORY[0x1E69E7CC0] + v41;
    v22 = MEMORY[0x1E69E7CC0];
    v45 = v20;
    v20(v8, v4, v5);
    while (1)
    {
      if (v15)
      {
        v14 = v22;
        v18 = __OFSUB__(v15--, 1);
        if (v18)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v23 = v22[3];
        if (((v23 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_34;
        }

        v24 = v8;
        v25 = v23 & 0xFFFFFFFFFFFFFFFELL;
        if (v25 <= 1)
        {
          v26 = 1;
        }

        else
        {
          v26 = v25;
        }

        _s10Foundation6LocaleVSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Date>, MEMORY[0x1E6969530], MEMORY[0x1E69E6F90]);
        v27 = *(v6 + 72);
        v28 = v41;
        v14 = swift_allocObject();
        v29 = _swift_stdlib_malloc_size(v14);
        if (!v27)
        {
          goto LABEL_35;
        }

        v30 = v29 - v28;
        if (v29 - v28 == 0x8000000000000000 && v27 == -1)
        {
          goto LABEL_36;
        }

        v32 = v30 / v27;
        v14[2] = v26;
        v14[3] = 2 * (v30 / v27);
        v33 = v14 + v28;
        v34 = v22[3] >> 1;
        v35 = v34 * v27;
        if (v22[2])
        {
          if (v14 < v22 || v33 >= v22 + v41 + v35)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v14 != v22)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v22[2] = 0;
        }

        v21 = &v33[v35];
        v37 = (v32 & 0x7FFFFFFFFFFFFFFFLL) - v34;

        v6 = v39;
        v8 = v24;
        v20 = v45;
        v18 = __OFSUB__(v37, 1);
        v15 = v37 - 1;
        if (v18)
        {
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
          return;
        }
      }

      v20(v21, v8, v5);
      v21 += *(v6 + 72);
      TimerIntervalTimelineSchedule.CountdownReducedFrequencyEntries.next()(v4);
      v20 = v45;
      v22 = v14;
      if (v42(v4, 1, v5) == 1)
      {
        goto LABEL_3;
      }

      v20(v8, v4, v5);
    }
  }

  v15 = 0;
LABEL_3:
  _s7SwiftUI29TimerIntervalTimelineScheduleV32CountdownReducedFrequencyEntriesVWOhTm_0(v44, type metadata accessor for TimerIntervalTimelineSchedule.CountdownReducedFrequencyEntries);
  outlined destroy of Locale?(v4, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], _s10Foundation6LocaleVSgMaTm_0);
  v16 = v14[3];
  if (v16 >= 2)
  {
    v17 = v16 >> 1;
    v18 = __OFSUB__(v17, v15);
    v19 = v17 - v15;
    if (v18)
    {
      goto LABEL_37;
    }

    v14[2] = v19;
  }
}

{
  _s10Foundation6LocaleVSgMaTm_0(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v62 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v54 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v70 = &v54 - v8;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v61 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v68 = &v54 - v13;
  v14 = type metadata accessor for TimerIntervalTimelineSchedule.CountupReducedFrequencyEntries(0);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v10 + 80);
  outlined init with copy of AlignedTimelineSchedule.Entries(a1, v17, type metadata accessor for TimerIntervalTimelineSchedule.CountupReducedFrequencyEntries);
  v63 = *(v15 + 32);
  outlined init with copy of Date?(&v17[v63], v6);
  v19 = *(v10 + 48);
  v20 = v6;
  v65 = v9;
  v21 = v19(v6, 1, v9);
  v22 = MEMORY[0x1E69E7CC0];
  if (v21 != 1)
  {
    v69 = 0;
    v57 = (v18 + 32) & ~v18;
    v58 = v18;
    v71 = MEMORY[0x1E69E7CC0] + v57;
    v24 = *(v10 + 32);
    v59 = v19;
    v60 = (v10 + 8);
    v66 = v10 + 48;
    v67 = MEMORY[0x1E69E7CC0];
    v25 = v63;
    v23 = v65;
    v64 = v10;
    v55 = v20;
    v56 = v24;
    while (1)
    {
      v26 = v61;
      v27 = v20;
      v24(v61, v20, v23);
      v28 = v62;
      outlined init with copy of Date?(&v17[v25], v62);
      v29 = v17;
      TimerIntervalTimelineSchedule.CountupReducedFrequencyEntries.makeNext(current:)(v26);
      v30 = v70;
      (*v60)(v26, v23);
      outlined init with take of Date?(v28, v30);
      if (v19(v30, 1, v23) == 1)
      {
        v17 = v29;
        v22 = v67;
        goto LABEL_31;
      }

      v24(v68, v70, v23);
      v31 = v67;
      v32 = v69;
      if (v69)
      {
        v22 = v67;
        v17 = v29;
        v20 = v27;
      }

      else
      {
        v33 = *(v67 + 3);
        if (((v33 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_36;
        }

        v34 = v33 & 0xFFFFFFFFFFFFFFFELL;
        if (v34 <= 1)
        {
          v35 = 1;
        }

        else
        {
          v35 = v34;
        }

        _s10Foundation6LocaleVSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Date>, MEMORY[0x1E6969530], MEMORY[0x1E69E6F90]);
        v36 = *(v64 + 72);
        v37 = v57;
        v22 = swift_allocObject();
        v38 = _swift_stdlib_malloc_size(v22);
        if (!v36)
        {
          goto LABEL_37;
        }

        v39 = v38 - v37;
        if (v38 - v37 == 0x8000000000000000 && v36 == -1)
        {
          goto LABEL_38;
        }

        v41 = v39 / v36;
        *(v22 + 2) = v35;
        *(v22 + 3) = 2 * (v39 / v36);
        v42 = &v22[v37];
        v43 = *(v31 + 3) >> 1;
        v44 = v43 * v36;
        if (*(v31 + 2))
        {
          if (v22 < v31 || v42 >= &v31[v37 + v44])
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v22 != v31)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          *(v31 + 2) = 0;
        }

        v71 = &v42[v44];
        v32 = (v41 & 0x7FFFFFFFFFFFFFFFLL) - v43;

        v20 = v55;
        v24 = v56;
        v17 = v29;
      }

      v46 = __OFSUB__(v32, 1);
      v47 = v32 - 1;
      v25 = v63;
      v10 = v64;
      if (v46)
      {
        break;
      }

      v69 = v47;
      v48 = v71;
      v23 = v65;
      v24(v71, v68, v65);
      v71 = v48 + *(v10 + 72);
      outlined init with copy of Date?(&v17[v25], v20);
      v19 = v59;
      v49 = v59(v20, 1, v23);
      v67 = v22;
      if (v49 == 1)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v69 = 0;
  v23 = v65;
LABEL_29:
  outlined destroy of Locale?(v20, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], _s10Foundation6LocaleVSgMaTm_0);
  (*(v10 + 56))(v70, 1, 1, v23);
LABEL_31:
  v50 = v69;
  _s7SwiftUI29TimerIntervalTimelineScheduleV32CountdownReducedFrequencyEntriesVWOhTm_0(v17, type metadata accessor for TimerIntervalTimelineSchedule.CountupReducedFrequencyEntries);
  outlined destroy of Locale?(v70, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], _s10Foundation6LocaleVSgMaTm_0);
  v51 = *(v22 + 3);
  if (v51 >= 2)
  {
    v52 = v51 >> 1;
    v46 = __OFSUB__(v52, v50);
    v53 = v52 - v50;
    if (!v46)
    {
      *(v22 + 2) = v53;
      return;
    }

LABEL_39:
    __break(1u);
  }
}

{
  v106 = type metadata accessor for Calendar.SearchDirection();
  v118 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v103 = &v84 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for Calendar.RepeatedTimePolicy();
  v92 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v108 = &v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for Calendar.MatchingPolicy();
  v4 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v105 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for Calendar();
  v89 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v7 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s10Foundation6LocaleVSgMaTm_0(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v84 - v12;
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v85 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v84 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v101 = &v84 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v115 = &v84 - v23;
  v24 = type metadata accessor for EveryMinuteTimelineSchedule.Entries(0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = *(v15 + 80);
  v27 = a1;
  v28 = &v84 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AlignedTimelineSchedule.Entries(v27, v28, type metadata accessor for EveryMinuteTimelineSchedule.Entries);
  outlined init with copy of Date?(v28, v13);
  v113 = *(v15 + 48);
  v114 = v15 + 48;
  v29 = v113(v13, 1, v14);
  v30 = MEMORY[0x1E69E7CC0];
  if (v29 != 1)
  {
    v116 = 0;
    v84 = v26;
    v35 = (v26 + 32) & ~v26;
    v37 = v15 + 32;
    v36 = *(v15 + 32);
    v86 = v35;
    v117 = MEMORY[0x1E69E7CC0] + v35;
    v98 = *MEMORY[0x1E69698D0];
    v97 = (v4 + 104);
    v96 = (v92 + 13);
    v95 = (v118 + 104);
    v94 = *MEMORY[0x1E69699C8];
    v93 = (v118 + 8);
    ++v92;
    v91 = *MEMORY[0x1E6969998];
    v90 = (v4 + 8);
    ++v89;
    v88 = (v15 + 56);
    v38 = MEMORY[0x1E69E7CC0];
    v39 = v15;
    v40 = v36;
    v99 = v39;
    v100 = v13;
    v111 = v19;
    v112 = v28;
    v109 = v36;
    v110 = v37;
    v87 = v14;
    while (1)
    {
      v118 = v38;
      v40(v19, v13, v14);
      static Calendar.current.getter();
      v41 = v7;
      if (one-time initialization token for zeroSecondComponents != -1)
      {
        swift_once();
      }

      v42 = type metadata accessor for DateComponents();
      __swift_project_value_buffer(v42, static EveryMinuteTimelineSchedule.Entries.zeroSecondComponents);
      v43 = v105;
      v44 = v107;
      (*v97)(v105, v98, v107);
      v45 = v108;
      v46 = v102;
      (*v96)(v108, v94, v102);
      v47 = v103;
      v48 = v106;
      (*v95)(v103, v91, v106);
      Calendar.nextDate(after:matching:matchingPolicy:repeatedTimePolicy:direction:)();
      (*v93)(v47, v48);
      (*v92)(v45, v46);
      (*v90)(v43, v44);
      (*v89)(v41, v104);
      v14 = v87;
      v49 = v41;
      if (v113(v10, 1, v87) == 1)
      {
        v50 = MEMORY[0x1E6969530];
        v51 = MEMORY[0x1E69E6720];
        outlined destroy of Locale?(v10, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], _s10Foundation6LocaleVSgMaTm_0);
        v52 = v112;
        outlined destroy of Locale?(v112, &lazy cache variable for type metadata for Date?, v50, v51, _s10Foundation6LocaleVSgMaTm_0);
        v53 = 1;
        v54 = v109;
      }

      else
      {
        v55 = v85;
        v54 = v109;
        v109(v85, v10, v14);
        v52 = v112;
        outlined destroy of Locale?(v112, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], _s10Foundation6LocaleVSgMaTm_0);
        v54(v52, v55, v14);
        v53 = 0;
      }

      (*v88)(v52, v53, 1, v14);
      v56 = v101;
      v57 = v111;
      v54(v101, v111, v14);
      v54(v115, v56, v14);
      v58 = v99;
      v59 = v100;
      if (v116)
      {
        v40 = v54;
        v60 = v118;
        v61 = v116 - 1;
        if (__OFSUB__(v116, 1))
        {
          goto LABEL_35;
        }

        goto LABEL_33;
      }

      v62 = *(v118 + 24);
      if (((v62 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_36;
      }

      v63 = v62 & 0xFFFFFFFFFFFFFFFELL;
      if (v63 <= 1)
      {
        v64 = 1;
      }

      else
      {
        v64 = v63;
      }

      _s10Foundation6LocaleVSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Date>, MEMORY[0x1E6969530], MEMORY[0x1E69E6F90]);
      v65 = *(v58 + 72);
      v66 = v86;
      v60 = swift_allocObject();
      v67 = _swift_stdlib_malloc_size(v60);
      if (!v65)
      {
        goto LABEL_37;
      }

      v68 = v67 - v66;
      if (v67 - v66 == 0x8000000000000000 && v65 == -1)
      {
        goto LABEL_38;
      }

      v69 = v68 / v65;
      v60[2] = v64;
      v60[3] = 2 * (v68 / v65);
      v70 = v60 + v66;
      v71 = v118;
      v72 = *(v118 + 24) >> 1;
      v73 = v72 * v65;
      if (*(v118 + 16))
      {
        break;
      }

LABEL_32:
      v117 = &v70[v73];
      v75 = (v69 & 0x7FFFFFFFFFFFFFFFLL) - v72;

      v76 = v75;
      v57 = v111;
      v40 = v109;
      v33 = __OFSUB__(v76, 1);
      v61 = v76 - 1;
      if (v33)
      {
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        return;
      }

LABEL_33:
      v116 = v61;
      v77 = v57;
      v78 = v60;
      v79 = v59;
      v80 = v10;
      v81 = v49;
      v82 = v117;
      v40(v117, v115, v14);
      v117 = v82 + *(v58 + 72);
      v7 = v81;
      v10 = v80;
      v13 = v79;
      v30 = v78;
      v19 = v77;
      v28 = v112;
      outlined init with copy of Date?(v112, v13);
      v83 = v113(v13, 1, v14);
      v38 = v30;
      if (v83 == 1)
      {
        goto LABEL_3;
      }
    }

    if (v60 < v118 || v70 >= v118 + v86 + v73)
    {
      v74 = v68 / v65;
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (v60 == v118)
      {
LABEL_31:
        *(v71 + 16) = 0;
        goto LABEL_32;
      }

      v74 = v68 / v65;
      swift_arrayInitWithTakeBackToFront();
    }

    v69 = v74;
    v71 = v118;
    goto LABEL_31;
  }

  v116 = 0;
LABEL_3:
  outlined destroy of Locale?(v13, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], _s10Foundation6LocaleVSgMaTm_0);
  _s7SwiftUI29TimerIntervalTimelineScheduleV32CountdownReducedFrequencyEntriesVWOhTm_0(v28, type metadata accessor for EveryMinuteTimelineSchedule.Entries);
  v31 = v30[3];
  if (v31 >= 2)
  {
    v32 = v31 >> 1;
    v33 = __OFSUB__(v32, v116);
    v34 = v32 - v116;
    if (v33)
    {
      goto LABEL_39;
    }

    v30[2] = v34;
  }
}

{
  v99 = type metadata accessor for Calendar.SearchDirection();
  v110 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v96 = &v75 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for Calendar.RepeatedTimePolicy();
  v107 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v102 = &v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for Calendar.MatchingPolicy();
  v4 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v100 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for Calendar();
  v105 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v95 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s10Foundation6LocaleVSgMaTm_0(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v94 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v75 - v10;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v75 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v109 = &v75 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v93 = &v75 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v108 = &v75 - v20;
  v92 = type metadata accessor for AlignedTimelineSchedule.Entries(0);
  MEMORY[0x1EEE9AC00](v92);
  v22 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v13 + 80);
  outlined init with copy of AlignedTimelineSchedule.Entries(a1, v22, type metadata accessor for AlignedTimelineSchedule.Entries);
  v111 = v22;
  outlined init with copy of Date?(v22, v11);
  v24 = *(v13 + 48);
  v25 = v24(v11, 1, v12);
  v26 = MEMORY[0x1E69E7CC0];
  if (v25 != 1)
  {
    v27 = 0;
    v89 = v23;
    v76 = (v23 + 32) & ~v23;
    v28 = MEMORY[0x1E69E7CC0] + v76;
    v29 = *(v13 + 32);
    v88 = *MEMORY[0x1E69698D0];
    v87 = (v4 + 104);
    v86 = *MEMORY[0x1E69699C8];
    v85 = (v107 + 104);
    v84 = (v110 + 104);
    v83 = (v110 + 8);
    v82 = (v107 + 8);
    v81 = *MEMORY[0x1E6969998];
    v80 = (v4 + 8);
    v30 = v29;
    v79 = (v105 + 8);
    v78 = (v13 + 56);
    v31 = MEMORY[0x1E69E7CC0];
    v91 = v11;
    v90 = v13;
    v103 = v13 + 32;
    v104 = v13 + 48;
    v106 = v24;
    v77 = v29;
    while (1)
    {
      v105 = v28;
      v110 = v31;
      v107 = v27;
      v30(v109, v11, v12);
      v32 = v95;
      static Calendar.current.getter();
      v33 = v100;
      v34 = v101;
      (*v87)(v100, v88, v101);
      v35 = v102;
      v36 = v12;
      v37 = v97;
      (*v85)(v102, v86, v97);
      v38 = v96;
      v39 = v99;
      (*v84)(v96, v81, v99);
      v40 = v94;
      Calendar.nextDate(after:matching:matchingPolicy:repeatedTimePolicy:direction:)();
      (*v83)(v38, v39);
      v41 = v37;
      v12 = v36;
      (*v82)(v35, v41);
      v42 = v34;
      v43 = v106;
      (*v80)(v33, v42);
      (*v79)(v32, v98);
      if (v43(v40, 1, v36) == 1)
      {
        v44 = MEMORY[0x1E6969530];
        v45 = MEMORY[0x1E69E6720];
        outlined destroy of Locale?(v40, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], _s10Foundation6LocaleVSgMaTm_0);
        v46 = v45;
        v43 = v106;
        outlined destroy of Locale?(v111, &lazy cache variable for type metadata for Date?, v44, v46, _s10Foundation6LocaleVSgMaTm_0);
        v47 = 1;
        v30 = v77;
      }

      else
      {
        v48 = v75;
        v49 = v77;
        v77(v75, v40, v12);
        v50 = v111;
        outlined destroy of Locale?(v111, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], _s10Foundation6LocaleVSgMaTm_0);
        v49(v50, v48, v12);
        v47 = 0;
        v30 = v49;
      }

      (*v78)(v111, v47, 1, v12);
      v51 = v93;
      v30(v93, v109, v12);
      v30(v108, v51, v12);
      v11 = v91;
      v52 = v90;
      if (v107)
      {
        v26 = v110;
        v53 = v105;
        v27 = v107 - 1;
        if (__OFSUB__(v107, 1))
        {
          goto LABEL_34;
        }

        goto LABEL_29;
      }

      v54 = *(v110 + 24);
      if (((v54 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_35;
      }

      v55 = v30;
      v56 = v54 & 0xFFFFFFFFFFFFFFFELL;
      if (v56 <= 1)
      {
        v57 = 1;
      }

      else
      {
        v57 = v56;
      }

      _s10Foundation6LocaleVSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Date>, MEMORY[0x1E6969530], MEMORY[0x1E69E6F90]);
      v58 = *(v52 + 72);
      v59 = v76;
      v26 = swift_allocObject();
      v60 = _swift_stdlib_malloc_size(v26);
      if (!v58)
      {
        goto LABEL_36;
      }

      v61 = v60 - v59;
      if (v60 - v59 == 0x8000000000000000 && v58 == -1)
      {
        goto LABEL_37;
      }

      v63 = v61 / v58;
      v26[2] = v57;
      v26[3] = 2 * (v61 / v58);
      v64 = v26 + v59;
      v65 = v110;
      v66 = *(v110 + 24) >> 1;
      v67 = v66 * v58;
      v30 = v55;
      if (*(v110 + 16))
      {
        break;
      }

LABEL_28:
      v53 = &v64[v67];
      v69 = (v63 & 0x7FFFFFFFFFFFFFFFLL) - v66;

      v43 = v106;
      v70 = __OFSUB__(v69, 1);
      v27 = v69 - 1;
      if (v70)
      {
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        return;
      }

LABEL_29:
      v30(v53, v108, v12);
      v28 = &v53[*(v52 + 72)];
      outlined init with copy of Date?(v111, v11);
      v71 = v43(v11, 1, v12);
      v31 = v26;
      if (v71 == 1)
      {
        goto LABEL_30;
      }
    }

    if (v26 < v110 || v64 >= v110 + v76 + v67)
    {
      v68 = v61 / v58;
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (v26 == v110)
      {
LABEL_27:
        *(v65 + 16) = 0;
        goto LABEL_28;
      }

      v68 = v61 / v58;
      swift_arrayInitWithTakeBackToFront();
    }

    v63 = v68;
    v65 = v110;
    goto LABEL_27;
  }

  v27 = 0;
LABEL_30:
  outlined destroy of Locale?(v11, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], _s10Foundation6LocaleVSgMaTm_0);
  _s7SwiftUI29TimerIntervalTimelineScheduleV32CountdownReducedFrequencyEntriesVWOhTm_0(v111, type metadata accessor for AlignedTimelineSchedule.Entries);
  v72 = v26[3];
  if (v72 >= 2)
  {
    v73 = v72 >> 1;
    v70 = __OFSUB__(v73, v27);
    v74 = v73 - v27;
    if (v70)
    {
      goto LABEL_38;
    }

    v26[2] = v74;
  }
}

{
  v92 = type metadata accessor for Calendar.SearchDirection();
  v2 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v90 = v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for Calendar.RepeatedTimePolicy();
  v4 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v87 = v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for Calendar.MatchingPolicy();
  v6 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v95 = v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for Calendar();
  v100 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v93 = v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s10Foundation6LocaleVSgMaTm_0(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v91 = v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v69 - v12;
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v88 = v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v69 - v18;
  v86 = type metadata accessor for TimerTimelineSchedule.ReducedFrequencyEntries(0);
  MEMORY[0x1EEE9AC00](v86);
  v21 = v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v15 + 80);
  outlined init with copy of AlignedTimelineSchedule.Entries(a1, v21, type metadata accessor for TimerTimelineSchedule.ReducedFrequencyEntries);
  outlined init with copy of Date?(v21, v13);
  v84 = *(v15 + 48);
  v85 = v15 + 48;
  v23 = v84(v13, 1, v14);
  v24 = MEMORY[0x1E69E7CC0];
  if (v23 != 1)
  {
    v98 = 0;
    v69[1] = v22;
    v69[0] = (v22 + 32) & ~v22;
    v25 = (MEMORY[0x1E69E7CC0] + v69[0]);
    v26 = v4;
    v28 = v15 + 32;
    v27 = *(v15 + 32);
    v82 = *MEMORY[0x1E69698D0];
    v81 = (v6 + 104);
    v80 = *MEMORY[0x1E69699C8];
    v79 = (v26 + 104);
    v78 = (v2 + 104);
    v77 = (v2 + 8);
    v76 = *MEMORY[0x1E6969998];
    v75 = (v26 + 8);
    v74 = (v6 + 8);
    v29 = v27;
    v73 = (v100 + 8);
    v30 = MEMORY[0x1E69E7CC0];
    v70 = v13;
    v96 = v14;
    v71 = v15;
    v83 = v19;
    v72 = v27;
    while (1)
    {
      v99 = v25;
      v100 = v30;
      v31 = v88;
      v29(v88, v13, v14);
      v32 = v93;
      static Calendar.current.getter();
      v33 = v95;
      (*v81)(v95, v82, v97);
      v34 = v87;
      v35 = v89;
      (*v79)(v87, v80, v89);
      v36 = v28;
      v37 = v90;
      v38 = v21;
      v39 = v92;
      (*v78)(v90, v76, v92);
      v40 = v91;
      Calendar.nextDate(after:matching:matchingPolicy:repeatedTimePolicy:direction:)();
      v41 = v37;
      v28 = v36;
      v29 = v72;
      v42 = v39;
      v21 = v38;
      (*v77)(v41, v42);
      v43 = v35;
      v44 = v83;
      (*v75)(v34, v43);
      (*v74)(v33, v97);
      (*v73)(v32, v94);
      v45 = v40;
      v14 = v96;
      outlined assign with take of Date?(v45, v38);
      v29(v44, v31, v14);
      v46 = v98;
      if (v98)
      {
        v24 = v100;
        v47 = v71;
        goto LABEL_24;
      }

      v48 = *(v100 + 24);
      if (((v48 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_31;
      }

      v49 = v48 & 0xFFFFFFFFFFFFFFFELL;
      if (v49 <= 1)
      {
        v50 = 1;
      }

      else
      {
        v50 = v49;
      }

      _s10Foundation6LocaleVSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Date>, MEMORY[0x1E6969530], MEMORY[0x1E69E6F90]);
      v47 = v71;
      v51 = *(v71 + 72);
      v52 = v69[0];
      v24 = swift_allocObject();
      v53 = _swift_stdlib_malloc_size(v24);
      if (!v51)
      {
        goto LABEL_32;
      }

      v54 = v53 - v52;
      if (v53 - v52 == 0x8000000000000000 && v51 == -1)
      {
        goto LABEL_33;
      }

      v56 = v52;
      v57 = v54 / v51;
      v24[2] = v50;
      v24[3] = 2 * (v54 / v51);
      v58 = v24 + v52;
      v59 = v100;
      v60 = *(v100 + 24) >> 1;
      v61 = v60 * v51;
      if (*(v100 + 16))
      {
        break;
      }

LABEL_23:
      v99 = &v58[v61];
      v46 = (v57 & 0x7FFFFFFFFFFFFFFFLL) - v60;

      v14 = v96;
LABEL_24:
      v62 = __OFSUB__(v46, 1);
      v63 = v46 - 1;
      v13 = v70;
      if (v62)
      {
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        return;
      }

      v98 = v63;
      v64 = v99;
      v29(v99, v44, v14);
      v25 = &v64[*(v47 + 72)];
      outlined init with copy of Date?(v21, v13);
      v65 = v84(v13, 1, v14);
      v30 = v24;
      if (v65 == 1)
      {
        goto LABEL_26;
      }
    }

    if (v24 < v100 || v58 >= v100 + v56 + v61)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (v24 == v100)
      {
LABEL_22:
        *(v59 + 16) = 0;
        goto LABEL_23;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v59 = v100;
    goto LABEL_22;
  }

  v98 = 0;
LABEL_26:
  outlined destroy of Locale?(v13, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], _s10Foundation6LocaleVSgMaTm_0);
  _s7SwiftUI29TimerIntervalTimelineScheduleV32CountdownReducedFrequencyEntriesVWOhTm_0(v21, type metadata accessor for TimerTimelineSchedule.ReducedFrequencyEntries);
  v66 = v24[3];
  if (v66 >= 2)
  {
    v67 = v66 >> 1;
    v62 = __OFSUB__(v67, v98);
    v68 = v67 - v98;
    if (v62)
    {
      goto LABEL_34;
    }

    v24[2] = v68;
  }
}

{
  _s10Foundation6LocaleVSgMaTm_0(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v70 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v62 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v62 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v68 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v62 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v75 = &v62 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v80 = &v62 - v19;
  v74 = type metadata accessor for EverySecondEntries(0);
  MEMORY[0x1EEE9AC00](v74);
  v21 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v11 + 80);
  outlined init with copy of AlignedTimelineSchedule.Entries(a1, v21, type metadata accessor for EverySecondEntries);
  v82 = v21;
  outlined init with copy of Date?(v21, v9);
  v23 = *(v11 + 48);
  v76 = v9;
  v69 = v10;
  v24 = v23(v9, 1, v10);
  v25 = MEMORY[0x1E69E7CC0];
  if (v24 != 1)
  {
    v81 = 0;
    v66 = v22;
    v29 = (v22 + 32) & ~v22;
    v77 = v11;
    v78 = v15;
    v30 = *(v11 + 32);
    v64 = v6;
    v65 = v29;
    v79 = MEMORY[0x1E69E7CC0] + v29;
    v67 = (v11 + 8);
    v72 = v11 + 48;
    v73 = (v11 + 56);
    v26 = v82;
    v27 = v76;
    v31 = v69;
    v71 = v23;
    v63 = v30;
    while (1)
    {
      v30(v15, v27, v31);
      outlined init with copy of Date?(v26 + *(v74 + 20), v6);
      if (v23(v6, 1, v31) == 1)
      {
        outlined destroy of Locale?(v6, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], _s10Foundation6LocaleVSgMaTm_0);
        v32 = v31;
        v33 = v79;
      }

      else
      {
        v34 = v68;
        v30(v68, v6, v31);
        lazy protocol witness table accessor for type SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.Variants and conformance SizeFittingTextCache<A, B>.Variants(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
        v35 = dispatch thunk of static Comparable.>= infix(_:_:)();
        v36 = v34;
        v15 = v78;
        (*v67)(v36, v31);
        v32 = v31;
        v33 = v79;
        if (v35)
        {
          v37 = v82;
          outlined destroy of Locale?(v82, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], _s10Foundation6LocaleVSgMaTm_0);
          (*v73)(v37, 1, 1, v31);
          goto LABEL_9;
        }
      }

      v38 = v70;
      Date.addingTimeInterval(_:)();
      (*v73)(v38, 0, 1, v32);
      outlined assign with take of Date?(v38, v82);
LABEL_9:
      v39 = v75;
      v30(v75, v15, v32);
      v30(v80, v39, v32);
      if (v81)
      {
        v40 = v25;
        v41 = v76;
        v42 = v81 - 1;
        if (__OFSUB__(v81, 1))
        {
          goto LABEL_35;
        }
      }

      else
      {
        v43 = v25[3];
        if (((v43 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_36;
        }

        v44 = v43 & 0xFFFFFFFFFFFFFFFELL;
        if (v44 <= 1)
        {
          v45 = 1;
        }

        else
        {
          v45 = v44;
        }

        _s10Foundation6LocaleVSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Date>, MEMORY[0x1E6969530], MEMORY[0x1E69E6F90]);
        v46 = *(v77 + 72);
        v47 = v65;
        v40 = swift_allocObject();
        v48 = _swift_stdlib_malloc_size(v40);
        if (!v46)
        {
          goto LABEL_37;
        }

        v49 = v48 - v47;
        if (v48 - v47 == 0x8000000000000000 && v46 == -1)
        {
          goto LABEL_38;
        }

        v51 = v49 / v46;
        v40[2] = v45;
        v40[3] = 2 * (v49 / v46);
        v52 = v40 + v47;
        v53 = v25[3] >> 1;
        v54 = v53 * v46;
        if (v25[2])
        {
          if (v40 < v25 || v52 >= v25 + v47 + v54)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v40 != v25)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v25[2] = 0;
        }

        v33 = &v52[v54];
        v55 = (v51 & 0x7FFFFFFFFFFFFFFFLL) - v53;

        v41 = v76;
        v30 = v63;
        v6 = v64;
        v15 = v78;
        v32 = v69;
        v56 = __OFSUB__(v55, 1);
        v42 = v55 - 1;
        if (v56)
        {
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
          return;
        }
      }

      v81 = v42;
      v30(v33, v80, v32);
      v79 = &v33[*(v77 + 72)];
      v26 = v82;
      outlined init with copy of Date?(v82, v41);
      v57 = v32;
      v28 = v40;
      v31 = v32;
      v23 = v71;
      v58 = v71(v41, 1, v57);
      v27 = v41;
      v25 = v28;
      if (v58 == 1)
      {
        goto LABEL_31;
      }
    }
  }

  v81 = 0;
  v26 = v82;
  v27 = v76;
  v28 = MEMORY[0x1E69E7CC0];
LABEL_31:
  outlined destroy of Locale?(v27, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], _s10Foundation6LocaleVSgMaTm_0);
  _s7SwiftUI29TimerIntervalTimelineScheduleV32CountdownReducedFrequencyEntriesVWOhTm_0(v26, type metadata accessor for EverySecondEntries);
  v59 = v28[3];
  if (v59 >= 2)
  {
    v60 = v59 >> 1;
    v56 = __OFSUB__(v60, v81);
    v61 = v60 - v81;
    if (v56)
    {
      goto LABEL_39;
    }

    v28[2] = v61;
  }
}

void *specialized _copySequenceToContiguousArray<A>(_:)(uint64_t a1)
{
  _s10Foundation6LocaleVSgMaTm_0(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v37 - v3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PeriodicTimelineSchedule.Entries(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = *(v6 + 80);
  v12 = MEMORY[0x1E69E7CC0];
  v41 = (v40 + 32) & ~v40;
  v13 = MEMORY[0x1E69E7CC0] + v41;
  outlined init with copy of AlignedTimelineSchedule.Entries(a1, v11, type metadata accessor for PeriodicTimelineSchedule.Entries);
  v14 = 0;
  v15 = *(v6 + 16);
  v45 = v6 + 16;
  v46 = v11;
  v43 = (v6 + 56);
  v44 = v15;
  v42 = (v6 + 48);
  v16 = (v6 + 32);
  v38 = v8;
  v39 = v6;
  v15(v4, v46, v5);
  while (1)
  {
    (*v43)(v4, 0, 1, v5);
    static Date.+= infix(_:_:)();
    if ((*v42)(v4, 1, v5) == 1)
    {
      goto LABEL_28;
    }

    v19 = *v16;
    result = (*v16)(v8, v4, v5);
    if (v14)
    {
      v17 = v12;
      v18 = __OFSUB__(v14--, 1);
      if (v18)
      {
        break;
      }

      goto LABEL_3;
    }

    v21 = v12[3];
    if (((v21 >> 1) + 0x4000000000000000) < 0)
    {
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v22 = v21 & 0xFFFFFFFFFFFFFFFELL;
    if (v22 <= 1)
    {
      v23 = 1;
    }

    else
    {
      v23 = v22;
    }

    _s10Foundation6LocaleVSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Date>, MEMORY[0x1E6969530], MEMORY[0x1E69E6F90]);
    v24 = *(v6 + 72);
    v25 = v41;
    v17 = swift_allocObject();
    result = _swift_stdlib_malloc_size(v17);
    if (!v24)
    {
      goto LABEL_33;
    }

    v26 = result - v25;
    if ((result - v25) == 0x8000000000000000 && v24 == -1)
    {
      goto LABEL_34;
    }

    v28 = v26 / v24;
    v17[2] = v23;
    v17[3] = 2 * (v26 / v24);
    v29 = v17 + v25;
    v30 = v12[3] >> 1;
    v31 = v30 * v24;
    if (v12[2])
    {
      if (v17 < v12 || v29 >= v12 + v41 + v31)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v17 != v12)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v12[2] = 0;
    }

    v13 = &v29[v31];
    v33 = (v28 & 0x7FFFFFFFFFFFFFFFLL) - v30;

    v8 = v38;
    v6 = v39;
    v18 = __OFSUB__(v33, 1);
    v14 = v33 - 1;
    if (v18)
    {
      break;
    }

LABEL_3:
    v19(v13, v8, v5);
    v13 += *(v6 + 72);
    v12 = v17;
    v44(v4, v46, v5);
  }

  __break(1u);
LABEL_28:
  _s7SwiftUI29TimerIntervalTimelineScheduleV32CountdownReducedFrequencyEntriesVWOhTm_0(v46, type metadata accessor for PeriodicTimelineSchedule.Entries);
  result = outlined destroy of Locale?(v4, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], _s10Foundation6LocaleVSgMaTm_0);
  v34 = v12[3];
  if (v34 < 2)
  {
    return v12;
  }

  v35 = v34 >> 1;
  v18 = __OFSUB__(v35, v14);
  v36 = v35 - v14;
  if (!v18)
  {
    v12[2] = v36;
    return v12;
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t *specialized _copySequenceToContiguousArray<A>(_:)(uint64_t *a1)
{
  v56 = *MEMORY[0x1E69E9840];
  v2 = a1[18];
  v3 = v54;
  outlined init with copy of _LazyLayout_Subviews(a1, v54);
  v55 = v2;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v40 = 0u;
  v34 = v2;
  outlined init with copy of _LazyLayout_Subviews(v54, v38);
  v35[2] = v54;
  v35[3] = &v40;
  v4 = swift_allocObject();
  v5 = v2 + v39;
  if (!__OFADD__(v2, v39))
  {
    v1 = 0;
    v3 = MEMORY[0x1E69E7CC0];
    v6 = (MEMORY[0x1E69E7CC0] + 32);
    v7 = v35;
    v31[1] = 32;
    while (1)
    {
      *(v4 + 16) = v5;
      v33[0] = v38[14];
      v33[1] = v38[15];
      v32 = 2;
      v36 = v33;
      v37 = 1;
      MEMORY[0x1EEE9AC00](v4);
      v28[0] = v38;
      v28[1] = v8;
      v29 = partial apply for closure #1 in _LazyLayout_Subviews_V1.SubviewsIterator.next();
      v30 = v7;

      _ViewList_Node.applyNodes(from:style:transform:to:)(&v34, &v32, &v36, partial apply for closure #1 in closure #1 in _LazyLayout_Subviews.apply(from:style:to:), &v31[-6]);

      outlined destroy of _LazyLayout_Subviews(v38);
      if (!v40)
      {
        goto LABEL_19;
      }

      v51 = v44;
      v52 = v45;
      v53 = v46;
      v47 = v40;
      v48 = v41;
      v49 = v42;
      v50 = v43;
      if (!v1)
      {
        v9 = v3[3];
        if (((v9 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_24;
        }

        v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
        if (v10 <= 1)
        {
          v11 = 1;
        }

        else
        {
          v11 = v10;
        }

        type metadata accessor for EmptyCollection<Character>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_LazyLayout_Subview_V1>, &type metadata for _LazyLayout_Subview_V1, MEMORY[0x1E69E6F90]);
        v12 = swift_allocObject();
        v13 = (_swift_stdlib_malloc_size(v12) - 32) / 112;
        v12[2] = v11;
        v12[3] = 2 * v13;
        v14 = (v12 + 4);
        v15 = v3[3] >> 1;
        if (v3[2])
        {
          v16 = v3 + 4;
          if (v12 != v3 || v14 >= v16 + 112 * v15)
          {
            memmove(v12 + 4, v16, 112 * v15);
          }

          v3[2] = 0;
        }

        v6 = (v14 + 112 * v15);
        v1 = (v13 & 0x7FFFFFFFFFFFFFFFLL) - v15;

        v3 = v12;
      }

      v17 = __OFSUB__(v1--, 1);
      if (v17)
      {
        break;
      }

      v18 = v48;
      *v6 = v47;
      v6[1] = v18;
      v19 = v49;
      v20 = v50;
      v6[6] = v53;
      v21 = v52;
      v6[4] = v51;
      v6[5] = v21;
      v6[2] = v19;
      v6[3] = v20;
      v6 += 7;
      v22 = v55;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v40 = 0u;
      v34 = v55;
      v23 = outlined init with copy of _LazyLayout_Subviews(v54, v38);
      MEMORY[0x1EEE9AC00](v23);
      v7 = v28;
      v29 = v54;
      v30 = &v40;
      v4 = swift_allocObject();
      v5 = v22 + v39;
      if (__OFADD__(v22, v39))
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

LABEL_18:
  __break(1u);
LABEL_19:
  outlined destroy of _LazyLayout_Subviews_V1.SubviewsIterator(v54);
  outlined destroy of Locale?(&v40, &lazy cache variable for type metadata for _LazyLayout_Subview_V1?, &type metadata for _LazyLayout_Subview_V1, MEMORY[0x1E69E6720], type metadata accessor for EmptyCollection<Character>);
  v24 = v3[3];
  if (v24 >= 2)
  {
    v25 = v24 >> 1;
    v17 = __OFSUB__(v25, v1);
    v26 = v25 - v1;
    if (v17)
    {
      goto LABEL_25;
    }

    v3[2] = v26;
  }

  return v3;
}

void *specialized _copySequenceToContiguousArray<A>(_:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = v1 + 56;
  v3 = 1 << *(v1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v1 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  v11 = (MEMORY[0x1E69E7CC0] + 32);
  v31 = v7;
  if (v5)
  {
    while (1)
    {
      v12 = v9;
LABEL_8:
      v13 = (*(v7 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v5)))));
      v14 = v13[1];
      if (v14 < 0)
      {
        break;
      }

      v15 = *v13;
      if (!v8)
      {
        v16 = v10[3];
        if (((v16 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_31;
        }

        v32 = v15;
        v33 = v10;
        v17 = v16 & 0xFFFFFFFFFFFFFFFELL;
        if (v17 <= 1)
        {
          v18 = 1;
        }

        else
        {
          v18 = v17;
        }

        _s10Foundation6LocaleVSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AttributedStringKey.Type>, type metadata accessor for AttributedStringKey.Type, MEMORY[0x1E69E6F90]);
        v10 = swift_allocObject();
        v19 = _swift_stdlib_malloc_size(v10);
        v20 = v33;
        v21 = v19 - 32;
        if (v19 < 32)
        {
          v21 = v19 - 17;
        }

        v22 = v21 >> 4;
        v10[2] = v18;
        v10[3] = 2 * (v21 >> 4);
        v23 = (v10 + 4);
        v24 = v33[3] >> 1;
        if (v33[2])
        {
          v25 = v33 + 4;
          if (v10 != v33 || v23 >= v25 + 16 * v24)
          {
            memmove(v10 + 4, v25, 16 * v24);
            v20 = v33;
          }

          v20[2] = 0;
        }

        v11 = (v23 + 16 * v24);
        v8 = (v22 & 0x7FFFFFFFFFFFFFFFLL) - v24;

        v7 = v31;
        v15 = v32;
      }

      v26 = __OFSUB__(v8--, 1);
      if (v26)
      {
        goto LABEL_30;
      }

      v5 &= v5 - 1;
      *v11 = v15;
      v11[1] = v14;
      v11 += 2;
      v9 = v12;
      if (!v5)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
    while (1)
    {
LABEL_5:
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      if (v12 >= v6)
      {
        break;
      }

      v5 = *(v2 + 8 * v12);
      ++v9;
      if (v5)
      {
        goto LABEL_8;
      }
    }

    v27 = v10[3];
    if (v27 < 2)
    {
      return v10;
    }

    v28 = v27 >> 1;
    v26 = __OFSUB__(v28, v8);
    v29 = v28 - v8;
    if (!v26)
    {
      v10[2] = v29;
      return v10;
    }

LABEL_32:
    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v1 = *a1;
  v2 = v1 + 64;
  v3 = 1 << *(v1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  v11 = (MEMORY[0x1E69E7CC0] + 32);
  v31 = v7;
  if (v5)
  {
    while (1)
    {
      v12 = v9;
LABEL_8:
      v13 = (*(v7 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v5)))));
      v14 = v13[1];
      if (v14 < 0)
      {
        break;
      }

      v15 = *v13;
      if (!v8)
      {
        v16 = v10[3];
        if (((v16 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_31;
        }

        v32 = v15;
        v33 = v10;
        v17 = v16 & 0xFFFFFFFFFFFFFFFELL;
        if (v17 <= 1)
        {
          v18 = 1;
        }

        else
        {
          v18 = v17;
        }

        _s10Foundation6LocaleVSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AttributedStringKey.Type>, type metadata accessor for AttributedStringKey.Type, MEMORY[0x1E69E6F90]);
        v10 = swift_allocObject();
        v19 = _swift_stdlib_malloc_size(v10);
        v20 = v33;
        v21 = v19 - 32;
        if (v19 < 32)
        {
          v21 = v19 - 17;
        }

        v22 = v21 >> 4;
        v10[2] = v18;
        v10[3] = 2 * (v21 >> 4);
        v23 = (v10 + 4);
        v24 = v33[3] >> 1;
        if (v33[2])
        {
          v25 = v33 + 4;
          if (v10 != v33 || v23 >= v25 + 16 * v24)
          {
            memmove(v10 + 4, v25, 16 * v24);
            v20 = v33;
          }

          v20[2] = 0;
        }

        v11 = (v23 + 16 * v24);
        v8 = (v22 & 0x7FFFFFFFFFFFFFFFLL) - v24;

        v7 = v31;
        v15 = v32;
      }

      v26 = __OFSUB__(v8--, 1);
      if (v26)
      {
        goto LABEL_30;
      }

      v5 &= v5 - 1;
      *v11 = v15;
      v11[1] = v14;
      v11 += 2;
      v9 = v12;
      if (!v5)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
    while (1)
    {
LABEL_5:
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      if (v12 >= v6)
      {
        break;
      }

      v5 = *(v2 + 8 * v12);
      ++v9;
      if (v5)
      {
        goto LABEL_8;
      }
    }

    v27 = v10[3];
    if (v27 < 2)
    {
      return v10;
    }

    v28 = v27 >> 1;
    v26 = __OFSUB__(v28, v8);
    v29 = v28 - v8;
    if (!v26)
    {
      v10[2] = v29;
      return v10;
    }

LABEL_32:
    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void *specialized _copySequenceToContiguousArray<A>(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a2;
  v39[2] = a1;
  v40 = a2;
  v41 = a3;
  if (*(a2 + 16))
  {

    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v9 = (MEMORY[0x1E69E7CC0] + 32);
    while (1)
    {
      v10 = 0;
      v11 = (v6 + 56);
      v12 = 1 << *(v6 + 32);
      v13 = (v12 + 63) >> 6;
      while (1)
      {
        v15 = *v11++;
        v14 = v15;
        if (v15)
        {
          break;
        }

        v10 -= 64;
        if (!--v13)
        {
          goto LABEL_8;
        }
      }

      v12 = __clz(__rbit64(v14)) - v10;
LABEL_8:
      v4 = specialized Set._Variant.remove(at:)(v12, *(v6 + 36));
      v3 = v16;
      if (v16 < 0)
      {
        goto LABEL_36;
      }

      specialized Set._Variant.insert(_:)(v39, v4, v16);
      outlined consume of AttributedString.AnyAttribute(v39[0], v39[1]);
      if (*(a3 + 16))
      {
        v17 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v3);
        if (v18)
        {
          v39[0] = *(*(a3 + 56) + 8 * v17);
          v19 = v39[0];
          swift_bridgeObjectRetain_n();

          specialized Set.formSymmetricDifference(_:)(v20);
          v21 = v39[0];

          v23 = specialized _NativeSet.intersection(_:)(v21, v19, v22);

          specialized Set.formUnion<A>(_:)(v23);
        }
      }

      if (!v7)
      {
        v24 = v8[3];
        if (((v24 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_34;
        }

        v25 = v24 & 0xFFFFFFFFFFFFFFFELL;
        if (v25 <= 1)
        {
          v26 = 1;
        }

        else
        {
          v26 = v25;
        }

        _s10Foundation6LocaleVSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AttributedStringKey.Type>, type metadata accessor for AttributedStringKey.Type, MEMORY[0x1E69E6F90]);
        v27 = swift_allocObject();
        v28 = _swift_stdlib_malloc_size(v27);
        v29 = v28 - 32;
        if (v28 < 32)
        {
          v29 = v28 - 17;
        }

        v30 = v29 >> 4;
        v27[2] = v26;
        v27[3] = 2 * (v29 >> 4);
        v31 = (v27 + 4);
        v32 = v8[3] >> 1;
        if (v8[2])
        {
          v33 = v8 + 4;
          if (v27 != v8 || v31 >= v33 + 16 * v32)
          {
            memmove(v27 + 4, v33, 16 * v32);
          }

          v8[2] = 0;
        }

        v9 = (v31 + 16 * v32);
        v7 = (v30 & 0x7FFFFFFFFFFFFFFFLL) - v32;

        v8 = v27;
      }

      v34 = __OFSUB__(v7--, 1);
      if (v34)
      {
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      *v9 = v4;
      v9[1] = v3;
      v9 += 2;
      v6 = v40;
      if (!*(v40 + 16))
      {
        goto LABEL_29;
      }
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
LABEL_29:

  v35 = v8[3];
  if (v35 < 2)
  {
    return v8;
  }

  v36 = v35 >> 1;
  v34 = __OFSUB__(v36, v7);
  v37 = v36 - v7;
  if (!v34)
  {
    v8[2] = v37;
    return v8;
  }

LABEL_35:
  __break(1u);
LABEL_36:
  outlined consume of AttributedString.AnyAttribute(v4, v3);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void specialized _copySequenceToContiguousArray<A>(_:)(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = a1[2];
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = a1[2];
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v37 = a1[2];
  if (!v6)
  {
    v7 = MEMORY[0x1E69E7CC0];
    v18 = *(MEMORY[0x1E69E7CC0] + 24);

    v12 = v7 + 4;
    v11 = v18 >> 1;
    if (v4 <= v5)
    {
      goto LABEL_36;
    }

LABEL_12:
    v39 = v2 + 32;
    v19 = &a1[2 * v6 + 5];
    while (v6 < v4)
    {
      v20 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_41;
      }

      if (v5 == v6)
      {
        goto LABEL_36;
      }

      if (v6 >= v5)
      {
        goto LABEL_42;
      }

      v22 = *(v19 - 1);
      v21 = *v19;
      v23 = *(v39 + 8 * v6);
      if (v11)
      {

        v24 = __OFSUB__(v11--, 1);
        if (v24)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v25 = v7[3];
        if (((v25 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_44;
        }

        v26 = v25 & 0xFFFFFFFFFFFFFFFELL;
        if (v26 <= 1)
        {
          v27 = 1;
        }

        else
        {
          v27 = v26;
        }

        _s10Foundation6LocaleVSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(String, Double)>, type metadata accessor for (String, Double), MEMORY[0x1E69E6F90]);
        v28 = swift_allocObject();
        v29 = (_swift_stdlib_malloc_size(v28) - 32) / 24;
        v28[2] = v27;
        v28[3] = 2 * v29;
        v30 = v28 + 4;
        v31 = v7[3] >> 1;
        v12 = &v28[3 * v31 + 4];
        v32 = (v29 & 0x7FFFFFFFFFFFFFFFLL) - v31;
        if (v7[2])
        {
          if (v28 != v7 || v30 >= &v7[3 * v31 + 4])
          {
            memmove(v30, v7 + 4, 24 * v31);
          }

          v7[2] = 0;
        }

        else
        {
        }

        v7 = v28;
        v4 = v37;
        v24 = __OFSUB__(v32, 1);
        v11 = v32 - 1;
        if (v24)
        {
          goto LABEL_43;
        }
      }

      *v12 = v22;
      v12[1] = v21;
      v12[2] = v23;
      v12 += 3;
      ++v6;
      v19 += 2;
      if (v20 == v4)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  _s10Foundation6LocaleVSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(String, Double)>, type metadata accessor for (String, Double), MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  v8 = (_swift_stdlib_malloc_size(v7) - 32) / 24;
  v7[2] = v6;
  v7[3] = 2 * v8;
  v9 = a1[5];
  v10 = *(v2 + 32);
  v11 = (v8 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  v7[4] = a1[4];
  v7[5] = v9;
  v7[6] = v10;
  v12 = v7 + 7;
  if (v6 != 1)
  {
    v13 = 0;
    v38 = v2;
    v14 = v2 + 40;
    v15 = a1 + 7;
    do
    {

      v16 = *v15;
      v17 = *(v14 + 8 * v13);
      *v12 = *(v15 - 1);
      v12[1] = v16;
      v12[2] = v17;
      v12 += 3;
      ++v13;
      v15 += 2;
    }

    while (v6 - 1 != v13);
    v11 -= v13;
    v2 = v38;
  }

  if (v4 > v5)
  {
    goto LABEL_12;
  }

LABEL_36:
  v34 = v7[3];
  if (v34 < 2)
  {
    return;
  }

  v35 = v34 >> 1;
  v24 = __OFSUB__(v35, v11);
  v36 = v35 - v11;
  if (v24)
  {
LABEL_45:
    __break(1u);
    return;
  }

  v7[2] = v36;
}

unint64_t specialized Collection.dropFirst(_:)(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = String.index(_:offsetBy:limitedBy:)();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return String.subscript.getter();
}

void lazy protocol witness table accessor for type EmptyCollection<Character> and conformance EmptyCollection<A>(__n128 a1)
{
  if (!lazy protocol witness table cache variable for type EmptyCollection<Character> and conformance EmptyCollection<A>)
  {
    type metadata accessor for EmptyCollection<Character>(255, &lazy cache variable for type metadata for EmptyCollection<Character>, MEMORY[0x1E69E5EE0], MEMORY[0x1E69E6C30]);
    swift_getWitnessTable(MEMORY[0x1E69E6C58], v3, v1, v2);
    atomic_store(v4, &lazy protocol witness table cache variable for type EmptyCollection<Character> and conformance EmptyCollection<A>);
  }
}

unint64_t specialized Collection.suffix(from:)(unint64_t result, uint64_t a2, unint64_t a3, __n128 a4)
{
  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v4 >= result >> 14)
  {
    return String.subscript.getter();
  }

  __break(1u);
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__src, char *a2, unint64_t a3, char *a4, uint64_t a5)
{
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = a2 - __src + 31;
  if (a2 - __src >= 0)
  {
    v9 = a2 - __src;
  }

  v10 = v9 >> 5;
  v11 = a3 - a2;
  v12 = a3 - a2 + 31;
  if ((a3 - a2) >= 0)
  {
    v12 = a3 - a2;
  }

  v13 = v12 >> 5;
  if (v10 >= v12 >> 5)
  {
    if (a4 != a2 || &a2[32 * v13] <= a4)
    {
      v22 = a4;
      memmove(a4, a2, 32 * v13);
      a4 = v22;
    }

    v34 = a4;
    v15 = &a4[32 * v13];
    if (v11 < 32 || v6 <= v7)
    {
      v21 = v6;
LABEL_44:
      v14 = v34;
    }

    else
    {
      v31 = v7;
LABEL_29:
      v23 = 0;
      v24 = v15;
      v32 = v6 - 32;
      v33 = v15;
      do
      {
        v25 = &v24[v23];
        v36 = &v24[v23 - 32];

        swift_getAtKeyPath();
        swift_getAtKeyPath();
        if (v40 == v38 && v41 == v39)
        {
          v26 = 0;
        }

        else
        {
          v26 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        v27 = (v5 + v23 - 32);
        if (v26)
        {
          v21 = v6 - 32;
          if ((v5 + v23) != v6)
          {
            v29 = *(v6 - 1);
            *v27 = *v32;
            *(v5 + v23 - 16) = v29;
          }

          v15 = &v33[v23];
          if (&v33[v23] <= v34 || (v5 = v5 + v23 - 32, v6 -= 32, v32 <= v31))
          {
            v15 = &v33[v23];
            goto LABEL_44;
          }

          goto LABEL_29;
        }

        v24 = v33;
        if ((v5 + v23) != v25)
        {
          v28 = *(v36 + 1);
          *v27 = *v36;
          *(v5 + v23 - 16) = v28;
        }

        v23 -= 32;
        v15 = &v33[v23];
      }

      while (&v33[v23] > v34);
      v21 = v6;
      v14 = v34;
    }
  }

  else
  {
    v14 = a4;
    if (a4 != __src || &__src[32 * v10] <= a4)
    {
      memmove(a4, __src, 32 * v10);
    }

    v15 = &v14[32 * v10];
    if (v8 >= 32 && v6 < v5)
    {
      v35 = &v14[32 * v10];
      v37 = v5;
      while (1)
      {
        v42 = v6;

        swift_getAtKeyPath();
        swift_getAtKeyPath();
        if (v40 == v38 && v41 == v39)
        {
          break;
        }

        v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v16 & 1) == 0)
        {
          goto LABEL_18;
        }

        v17 = v6;
        v6 += 32;
        v18 = v37;
        if (v7 != v42)
        {
          goto LABEL_19;
        }

LABEL_20:
        v7 += 32;
        v15 = v35;
        if (v14 >= v35 || v6 >= v18)
        {
          goto LABEL_22;
        }
      }

LABEL_18:
      v17 = v14;
      v19 = v7 == v14;
      v14 += 32;
      v18 = v37;
      if (v19)
      {
        goto LABEL_20;
      }

LABEL_19:
      v20 = *(v17 + 1);
      *v7 = *v17;
      *(v7 + 1) = v20;
      goto LABEL_20;
    }

LABEL_22:
    v21 = v7;
  }

  if (v21 != v14 || v21 >= &v14[(v15 - v14 + (v15 - v14 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0])
  {
    memmove(v21, v14, 32 * ((v15 - v14) / 32));
  }

  return 1;
}

void specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(uint64_t *a1, char *a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a1;
  v7 = *a1;

  v23 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_14:
    v23 = specialized _ArrayBuffer._consumeAndCreateNew()(v23);
  }

  v19 = v6;
  *v6 = v23;
  v8 = (v23 + 16);
  v9 = *(v23 + 2);
  if (v9 < 2)
  {
LABEL_9:

    *v19 = v23;
  }

  else
  {
    while (1)
    {
      v10 = *a3;
      if (!*a3)
      {
        break;
      }

      v11 = v5;
      v12 = &v23[16 * v9];
      v6 = *v12;
      v13 = &v8[2 * v9];
      v14 = v13[1];
      __src = (v10 + 32 * *v12);
      v15 = (v10 + 32 * *v13);
      v16 = v10 + 32 * v14;

      specialized _merge<A>(low:mid:high:buffer:by:)(__src, v15, v16, a2, a4);
      v5 = v11;

      if (v11)
      {
        *v19 = v23;

        return;
      }

      if (v14 < v6)
      {
        __break(1u);
LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
        goto LABEL_14;
      }

      v17 = *v8;
      if (v9 - 2 >= *v8)
      {
        goto LABEL_12;
      }

      *v12 = v6;
      *(v12 + 1) = v14;
      v18 = v17 - v9;
      if (v17 < v9)
      {
        goto LABEL_13;
      }

      v9 = v17 - 1;
      memmove(v13, v13 + 2, 16 * v18);
      *v8 = v9;
      if (v9 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v19 = v23;
    __break(1u);
  }
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, void *a5)
{
  v6 = a3[1];
  v125 = MEMORY[0x1E69E7CC0];
  if (v6 >= 1)
  {
    swift_retain_n();
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v120 = a5;
    while (1)
    {
      if (v7 + 1 >= v6)
      {
        v24 = v7 + 1;
      }

      else
      {
        v113 = v6;
        v105 = v8;
        v9 = *a3;
        v10 = (*a3 + 32 * (v7 + 1));
        v11 = v10[1];
        v116 = *v10;
        v12 = v10[2];
        v13 = v10[3];
        v14 = (*a3 + 32 * v7);
        v15 = v7;
        v16 = a5;
        v17 = *v14;
        v18 = v14[1];
        v19 = v14[2];
        v20 = v14[3];

        v117 = specialized closure #1 in Sequence.sorted<A>(by:)(v116, v11, v12, v13, v17, v18, v19, v20, v16);
        if (v115)
        {

          goto LABEL_100;
        }

        v21 = v15 + 2;
        v103 = v15;
        v110 = 32 * v15;
        v22 = v9 + 32 * v15 + 48;
        a5 = v120;
        while (1)
        {
          v24 = v113;
          if (v113 == v21)
          {
            break;
          }

          swift_getAtKeyPath();
          swift_getAtKeyPath();
          if (v123 == v121 && v124 == v122)
          {
            v23 = 0;
          }

          else
          {
            v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
          }

          ++v21;
          v22 += 32;
          a5 = v120;
          if ((v117 ^ v23))
          {
            v24 = v21 - 1;
            break;
          }
        }

        v7 = v103;
        v8 = v105;
        if (v117)
        {
          if (v24 < v103)
          {
            goto LABEL_123;
          }

          if (v103 < v24)
          {
            v25 = 32 * v24 - 16;
            v26 = v110 + 24;
            v27 = v24;
            v28 = v103;
            do
            {
              if (v28 != --v27)
              {
                v29 = *a3;
                if (!*a3)
                {
                  goto LABEL_126;
                }

                v30 = (v29 + v26);
                v31 = v29 + v25;
                v32 = *(v30 - 3);
                v33 = *(v30 - 1);
                v34 = *v30;
                v35 = *v31;
                *(v30 - 3) = *(v31 - 16);
                *(v30 - 1) = v35;
                *(v31 - 16) = v32;
                *v31 = v33;
                *(v31 + 8) = v34;
              }

              ++v28;
              v25 -= 32;
              v26 += 32;
            }

            while (v28 < v27);
          }
        }
      }

      v36 = a3[1];
      if (v24 >= v36)
      {
        goto LABEL_33;
      }

      if (__OFSUB__(v24, v7))
      {
        goto LABEL_120;
      }

      if (v24 - v7 >= a4)
      {
        goto LABEL_33;
      }

      if (__OFADD__(v7, a4))
      {
        goto LABEL_121;
      }

      if (v7 + a4 >= v36)
      {
        v37 = a3[1];
      }

      else
      {
        v37 = v7 + a4;
      }

      if (v37 < v7)
      {
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
        return;
      }

      if (v24 == v37)
      {
LABEL_33:
        v38 = v24;
        if (v24 < v7)
        {
          goto LABEL_119;
        }
      }

      else
      {
        v104 = v7;
        v119 = *a3;
        v92 = *a3 + 32 * v24 - 32;
        v93 = v7 - v24;
        v108 = v37;
        do
        {
          v114 = v24;
          v109 = v93;
          v111 = v92;
          while (1)
          {

            swift_getAtKeyPath();
            swift_getAtKeyPath();
            if (v123 == v121 && v124 == v122)
            {
              break;
            }

            v94 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v94 & 1) == 0)
            {
              goto LABEL_84;
            }

            if (!v119)
            {
              goto LABEL_124;
            }

            v95 = *(v92 + 32);
            v96 = *(v92 + 40);
            v97 = *(v92 + 48);
            v98 = *(v92 + 56);
            v99 = *(v92 + 16);
            *(v92 + 32) = *v92;
            *(v92 + 48) = v99;
            *v92 = v95;
            *(v92 + 8) = v96;
            *(v92 + 16) = v97;
            *(v92 + 24) = v98;
            v92 -= 32;
            if (__CFADD__(v93++, 1))
            {
              goto LABEL_84;
            }
          }

LABEL_84:
          v24 = v114 + 1;
          v92 = v111 + 32;
          v93 = v109 - 1;
          v38 = v108;
        }

        while (v114 + 1 != v108);
        a5 = v120;
        v7 = v104;
        if (v108 < v104)
        {
          goto LABEL_119;
        }
      }

      v107 = v38;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
      }

      v40 = *(v8 + 2);
      v39 = *(v8 + 3);
      v41 = v40 + 1;
      if (v40 >= v39 >> 1)
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v8);
      }

      *(v8 + 2) = v41;
      v42 = v8 + 32;
      v43 = &v8[16 * v40 + 32];
      *v43 = v7;
      *(v43 + 1) = v107;
      v125 = v8;
      v118 = *a1;
      if (!*a1)
      {
        goto LABEL_127;
      }

      if (v40)
      {
        while (1)
        {
          v44 = v41 - 1;
          if (v41 >= 4)
          {
            break;
          }

          if (v41 == 3)
          {
            v45 = *(v8 + 4);
            v46 = *(v8 + 5);
            v55 = __OFSUB__(v46, v45);
            v47 = v46 - v45;
            v48 = v55;
LABEL_53:
            if (v48)
            {
              goto LABEL_110;
            }

            v61 = &v8[16 * v41];
            v63 = *v61;
            v62 = *(v61 + 1);
            v64 = __OFSUB__(v62, v63);
            v65 = v62 - v63;
            v66 = v64;
            if (v64)
            {
              goto LABEL_113;
            }

            v67 = &v42[16 * v44];
            v69 = *v67;
            v68 = *(v67 + 1);
            v55 = __OFSUB__(v68, v69);
            v70 = v68 - v69;
            if (v55)
            {
              goto LABEL_116;
            }

            if (__OFADD__(v65, v70))
            {
              goto LABEL_117;
            }

            if (v65 + v70 >= v47)
            {
              if (v47 < v70)
              {
                v44 = v41 - 2;
              }

              goto LABEL_74;
            }

            goto LABEL_67;
          }

          v71 = &v8[16 * v41];
          v73 = *v71;
          v72 = *(v71 + 1);
          v55 = __OFSUB__(v72, v73);
          v65 = v72 - v73;
          v66 = v55;
LABEL_67:
          if (v66)
          {
            goto LABEL_112;
          }

          v74 = &v42[16 * v44];
          v76 = *v74;
          v75 = *(v74 + 1);
          v55 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v55)
          {
            goto LABEL_115;
          }

          if (v77 < v65)
          {
            goto LABEL_3;
          }

LABEL_74:
          if (v44 - 1 >= v41)
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
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
            goto LABEL_122;
          }

          v82 = *a3;
          if (!*a3)
          {
            goto LABEL_125;
          }

          v83 = &v42[16 * v44 - 16];
          v84 = *v83;
          v85 = v44;
          v86 = &v42[16 * v44];
          v87 = *(v86 + 1);
          v88 = (v82 + 32 * *v83);
          v89 = (v82 + 32 * *v86);
          v90 = v82 + 32 * v87;
          a5 = v120;

          specialized _merge<A>(low:mid:high:buffer:by:)(v88, v89, v90, v118, v120);
          if (v115)
          {

            v125 = v8;
            goto LABEL_100;
          }

          if (v87 < v84)
          {
            goto LABEL_105;
          }

          v91 = *(v8 + 2);
          if (v85 > v91)
          {
            goto LABEL_106;
          }

          *v83 = v84;
          *(v83 + 1) = v87;
          if (v85 >= v91)
          {
            goto LABEL_107;
          }

          v41 = v91 - 1;
          memmove(v86, v86 + 16, 16 * (v91 - 1 - v85));
          *(v8 + 2) = v91 - 1;
          v42 = v8 + 32;
          if (v91 <= 2)
          {
LABEL_3:
            v125 = v8;
            goto LABEL_4;
          }
        }

        v49 = &v42[16 * v41];
        v50 = *(v49 - 8);
        v51 = *(v49 - 7);
        v55 = __OFSUB__(v51, v50);
        v52 = v51 - v50;
        if (v55)
        {
          goto LABEL_108;
        }

        v54 = *(v49 - 6);
        v53 = *(v49 - 5);
        v55 = __OFSUB__(v53, v54);
        v47 = v53 - v54;
        v48 = v55;
        if (v55)
        {
          goto LABEL_109;
        }

        v56 = &v8[16 * v41];
        v58 = *v56;
        v57 = *(v56 + 1);
        v55 = __OFSUB__(v57, v58);
        v59 = v57 - v58;
        if (v55)
        {
          goto LABEL_111;
        }

        v55 = __OFADD__(v47, v59);
        v60 = v47 + v59;
        if (v55)
        {
          goto LABEL_114;
        }

        if (v60 >= v52)
        {
          v78 = &v42[16 * v44];
          v80 = *v78;
          v79 = *(v78 + 1);
          v55 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v55)
          {
            goto LABEL_118;
          }

          if (v47 < v81)
          {
            v44 = v41 - 2;
          }

          goto LABEL_74;
        }

        goto LABEL_53;
      }

LABEL_4:
      v6 = a3[1];
      v7 = v107;
      if (v107 >= v6)
      {
        goto LABEL_97;
      }
    }
  }

  swift_retain_n();
LABEL_97:
  v101 = *a1;
  if (!*a1)
  {
    goto LABEL_128;
  }

  specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(&v125, v101, a3, a5);
  if (v115)
  {

LABEL_100:
  }

  else
  {
  }
}

void specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v22 = *a4;
    v5 = *a4 + 32 * a3 - 32;
    v6 = a1 - a3;
LABEL_6:
    v17 = a3;
    v15 = v6;
    v16 = v5;
    while (1)
    {

      swift_getAtKeyPath();
      swift_getAtKeyPath();
      if (v20 == v18 && v21 == v19)
      {

LABEL_5:
        a3 = v17 + 1;
        v5 = v16 + 32;
        v6 = v15 - 1;
        if (v17 + 1 == a2)
        {
          return;
        }

        goto LABEL_6;
      }

      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v7 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v22)
      {
        break;
      }

      v8 = *(v5 + 32);
      v9 = *(v5 + 40);
      v10 = *(v5 + 48);
      v11 = *(v5 + 56);
      v12 = *(v5 + 16);
      *(v5 + 32) = *v5;
      *(v5 + 48) = v12;
      *v5 = v8;
      *(v5 + 8) = v9;
      *(v5 + 16) = v10;
      *(v5 + 24) = v11;
      v5 -= 32;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1, void *a2)
{
  v4 = a1[1];
  swift_retain_n();
  v5 = _minimumMergeRunLength(_:)(v4);
  if (v5 < v4)
  {
    if (v4 >= -1)
    {
      v6 = v5;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for (name: String, value: String)();
        v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v8 + 16) = v7;
      }

      v9[0] = (v8 + 32);
      v9[1] = v7;

      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v9, v10, a1, v6, a2);

      *(v8 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v4, 1, a1, a2);
  }
}

uint64_t specialized MutableCollection<>.sort(by:)(void **a1, void *a2)
{
  v4 = *a1;
  swift_retain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v4);
  }

  v5 = v4[2];
  v7[0] = (v4 + 4);
  v7[1] = v5;

  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, a2);

  *a1 = v4;
}

void lazy protocol witness table accessor for type Repeated<String> and conformance Repeated<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t), const char *a4, __n128 a5)
{
  if (!*a1)
  {
    type metadata accessor for EmptyCollection<Character>(255, a2, MEMORY[0x1E69E6158], a3);
    swift_getWitnessTable(a4, v7);
    atomic_store(v8, a1);
  }
}

void *specialized CustomRecursiveStringConvertible.topLevelAttributes.getter()
{
  if ((static _TestApp.testIntents & 0x800) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = *((*MEMORY[0x1E69E7D40] & *static CoreGlue2.shared) + 0x58);
  v2 = static CoreGlue2.shared;
  v3 = v1();

  if (v3 == 2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (v3)
  {
    v5 = 0x6E6564646968;
  }

  else
  {
    v5 = 0x656C6269736976;
  }

  if (v3)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v7 = v4[2];
  v8 = v4[3];
  v9 = v7 + 1;
  if (v7 >= v8 >> 1)
  {
    v13 = v4[2];
    v14 = v6;
    v11 = v7 + 1;
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v7 + 1, 1, v4);
    v9 = v11;
    v7 = v13;
    v6 = v14;
    v4 = v12;
  }

  v4[2] = v9;
  v10 = &v4[4 * v7];
  v10[4] = 0x6142737574617473;
  v10[5] = 0xE900000000000072;
  v10[6] = v5;
  v10[7] = v6;
  return v4;
}

uint64_t _s7SwiftUI29TimerIntervalTimelineScheduleV32CountdownReducedFrequencyEntriesVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of AlignedTimelineSchedule.Entries(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void lazy protocol witness table accessor for type SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.Variants and conformance SizeFittingTextCache<A, B>.Variants(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  if (!*a1)
  {
    v5 = a2(255);
    swift_getWitnessTable(a3, v5);
    atomic_store(v6, a1);
  }
}

unint64_t type metadata accessor for AttributedStringKey.Type()
{
  result = lazy cache variable for type metadata for AttributedStringKey.Type;
  if (!lazy cache variable for type metadata for AttributedStringKey.Type)
  {
    type metadata accessor for AttributedStringKey();
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for AttributedStringKey.Type);
  }

  return result;
}

unint64_t type metadata accessor for AttributedStringKey()
{
  result = lazy cache variable for type metadata for AttributedStringKey;
  if (!lazy cache variable for type metadata for AttributedStringKey)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for AttributedStringKey);
  }

  return result;
}

void type metadata accessor for EmptyCollection<Character>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s10Foundation6LocaleVSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata accessor for (String, Double)()
{
  if (!lazy cache variable for type metadata for (String, Double))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (String, Double));
    }
  }
}

_BYTE *partial apply for closure #1 in closure #1 in Double.init<A>(_:)@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v8 = *result == 0;
    }

    else
    {
      v8 = 0;
    }

    *a2 = v8;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

void type metadata accessor for Slice<SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.Variants>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Slice<SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.Variants>)
  {
    type metadata accessor for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.Variants(255);
    lazy protocol witness table accessor for type SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.Variants and conformance SizeFittingTextCache<A, B>.Variants(&lazy protocol witness table cache variable for type SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.Variants and conformance SizeFittingTextCache<A, B>.Variants, type metadata accessor for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.Variants, protocol conformance descriptor for SizeFittingTextCache<A, B>.Variants);
    v1 = type metadata accessor for Slice();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Slice<SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.Variants>);
    }
  }
}

void type metadata accessor for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.Variants(uint64_t a1)
{
  if (!lazy cache variable for type metadata for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.Variants)
  {
    v4[0] = type metadata accessor for ResolvedTextHelper(255);
    v4[1] = &type metadata for StickyTextSizeFittingLogic;
    v4[2] = &protocol witness table for ResolvedTextHelper;
    v4[3] = &protocol witness table for StickyTextSizeFittingLogic;
    v2 = type metadata accessor for SizeFittingTextCache.Variants(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.Variants);
    }
  }
}

uint64_t specialized _ViewInputs.makeEventBindingBridge(bindingManager:responder:)(uint64_t a1, uint64_t a2, uint64_t *a3, __n128 a4, uint64_t a5, uint64_t a6)
{
  if (_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA30EventBindingBridgeFactoryInputV_Tt2g5(*a3))
  {
    return (*(v9 + 8))(a1, a2, a6);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t outlined destroy of CalendarDependentFormatStyle?(uint64_t a1)
{
  type metadata accessor for CalendarDependentFormatStyle?(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for CalendarDependentFormatStyle?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for CalendarDependentFormatStyle?)
  {
    type metadata accessor for CalendarDependentFormatStyle();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for CalendarDependentFormatStyle?);
    }
  }
}

void instantiation function for generic protocol witness table for Date.VerbatimFormatStyle(uint64_t a1)
{
  _s10Foundation4DateV11FormatStyleVAeadAWlTm_0(&lazy protocol witness table cache variable for type Date.VerbatimFormatStyle and conformance Date.VerbatimFormatStyle, MEMORY[0x1E6969450], MEMORY[0x1E6969448]);
  *(a1 + 8) = v2;
}

{
  _s10Foundation4DateV11FormatStyleVAeadAWlTm_2(&lazy protocol witness table cache variable for type Date.VerbatimFormatStyle and conformance Date.VerbatimFormatStyle, MEMORY[0x1E6969450], MEMORY[0x1E6969448]);
  *(a1 + 8) = v2;
}

uint64_t WhitespaceRemovingFormatStyle<>.withCalendar(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a2 + 16);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*(v13 - 8) + 16))(a4, v4, v10);
  (*(a3 + 16))(a1, v8, a3);
  return (*(v9 + 40))(a4, v12, v8);
}

uint64_t protocol witness for CalendarDependentFormatStyle.withCalendar(_:) in conformance Date.FormatStyle.Attributed@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a4)(char *, uint64_t)@<X4>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for Calendar();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*(a2 - 8) + 16))(a5, v5, a2, v12);
  KeyPath = swift_getKeyPath();
  (*(v11 + 16))(v14, a1, v10);
  return a4(v14, KeyPath);
}

void instantiation function for generic protocol witness table for Date.VerbatimFormatStyle.Attributed(uint64_t a1)
{
  _s10Foundation4DateV11FormatStyleVAeadAWlTm_0(&lazy protocol witness table cache variable for type Date.VerbatimFormatStyle.Attributed and conformance Date.VerbatimFormatStyle.Attributed, MEMORY[0x1E6969408], MEMORY[0x1E6969400]);
  *(a1 + 8) = v2;
}

{
  _s10Foundation4DateV11FormatStyleVAeadAWlTm_2(&lazy protocol witness table cache variable for type Date.VerbatimFormatStyle.Attributed and conformance Date.VerbatimFormatStyle.Attributed, MEMORY[0x1E6969408], MEMORY[0x1E6969400]);
  *(a1 + 8) = v2;
}

uint64_t protocol witness for CalendarDependentFormatStyle.withCalendar(_:) in conformance SystemFormatStyle.DateOffset@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  _s7SwiftUI17SystemFormatStyleO13DateReferenceVWOcTm_1(v4, a4, a3);
  v8 = *(a2 + 40);
  v9 = type metadata accessor for Calendar();
  v10 = *(*(v9 - 8) + 24);

  return v10(a4 + v8, a1, v9);
}

double CATransform3D.init(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 16);
  *a2 = *a1;
  v5 = *(a1 + 64);
  *(a2 + 16) = 0;
  *(a2 + 24) = v4;
  *(a2 + 40) = v2;
  *(a2 + 48) = 0;
  *(a2 + 56) = v3;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  result = 1.0;
  v7 = *(a1 + 48);
  *(a2 + 80) = xmmword_18DDAA020;
  *(a2 + 96) = v7;
  *(a2 + 112) = 0;
  *(a2 + 120) = v5;
  return result;
}

__n128 ProjectionTransform.init(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = 0;
  *(a2 + 24) = v2;
  *(a2 + 40) = 0;
  result = *(a1 + 32);
  *(a2 + 48) = result;
  *(a2 + 64) = 0x3FF0000000000000;
  return result;
}

{
  v2 = *(a1 + 40);
  v3 = *(a1 + 56);
  v4 = *(a1 + 120);
  v5 = *(a1 + 24);
  *a2 = *a1;
  *(a2 + 16) = v5;
  *(a2 + 32) = v2;
  *(a2 + 40) = v3;
  result = *(a1 + 96);
  *(a2 + 48) = result;
  *(a2 + 64) = v4;
  return result;
}

__n128 CGAffineTransform.init(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
  *a2 = *a1;
  *(a2 + 16) = v2;
  result = *(a1 + 48);
  *(a2 + 32) = result;
  return result;
}

void ProjectionTransform.init()(void *a1@<X8>)
{
  *a1 = 0x3FF0000000000000;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0x3FF0000000000000;
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0x3FF0000000000000;
}

float64x2_t ProjectionTransform.concatenating(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[1];
  v4 = *(a1 + 16);
  v5 = *(a1 + 40);
  v6 = *(a1 + 64);
  v7 = v2[2];
  v8 = v2[3];
  v9 = *v2 * v4 + v3 * v5 + v7 * v6;
  v10 = v2[4];
  v11 = v2[5];
  v12 = v4 * v8 + v5 * v10 + v6 * v11;
  v13 = v2[6];
  v14 = v2[7];
  v15 = v2[8];
  v16 = v4 * v13 + v5 * v14 + v6 * v15;
  v17 = *a1;
  v18 = *(a1 + 24);
  v19 = *(a1 + 48);
  *a2 = vaddq_f64(vaddq_f64(vmulq_n_f64(*a1, *v2), vmulq_n_f64(v18, v3)), vmulq_n_f64(v19, v7));
  *(a2 + 16) = v9;
  *(a2 + 24) = vaddq_f64(vaddq_f64(vmulq_n_f64(v17, v8), vmulq_n_f64(v18, v10)), vmulq_n_f64(v19, v11));
  *(a2 + 40) = v12;
  result = vaddq_f64(vaddq_f64(vmulq_n_f64(v17, v13), vmulq_n_f64(v18, v14)), vmulq_n_f64(v19, v15));
  *(a2 + 48) = result;
  *(a2 + 64) = v16;
  return result;
}

double ProjectionTransform.determinant.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  if (v1 == 0.0 && v2 == 0.0 && *(v0 + 64) == 1.0)
  {
    v3 = vmulq_f64(*v0, vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL));
    *&result = *&vsubq_f64(v3, vdupq_laneq_s64(v3, 1));
  }

  else
  {
    v5 = *(v0 + 24);
    v6 = *(v0 + 48);
    v7 = vmulq_f64(v5, vextq_s8(v6, v6, 8uLL));
    v8 = vmulq_f64(vsubq_f64(vmulq_n_f64(v5, *(v0 + 64)), vmulq_n_f64(v6, v2)), vextq_s8(*v0, *v0, 8uLL));
    return v1 * vsubq_f64(v7, vdupq_laneq_s64(v7, 1)).f64[0] + vsubq_f64(vdupq_laneq_s64(v8, 1), v8).f64[0];
  }

  return result;
}

Swift::Bool __swiftcall ProjectionTransform.invert()()
{
  v1 = v0[4];
  v2 = v0[5];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  v6 = v1 * v3 - v2 * v4;
  v7 = v0[2];
  v8 = v0[3];
  v9 = v3 * v8 - v2 * v5;
  v10 = v4 * v8 - v1 * v5;
  v12 = *v0;
  v11 = v0[1];
  v13 = v7 * v10 + v6 * *v0 - v11 * v9;
  if (v13 != 0.0)
  {
    *v0 = v6 * (1.0 / v13);
    v0[1] = -(1.0 / v13 * (v3 * v11 - v4 * v7));
    v0[2] = (v2 * v11 - v1 * v7) * (1.0 / v13);
    v0[3] = -(1.0 / v13 * v9);
    v0[4] = (v3 * v12 - v5 * v7) * (1.0 / v13);
    v0[5] = -(1.0 / v13 * (v2 * v12 - v8 * v7));
    v0[6] = v10 * (1.0 / v13);
    v0[7] = -(1.0 / v13 * (v4 * v12 - v5 * v11));
    v0[8] = (v1 * v12 - v8 * v11) * (1.0 / v13);
  }

  return v13 != 0.0;
}

__n128 ProjectionTransform.inverted()@<Q0>(uint64_t a1@<X8>)
{
  v8 = v1[2];
  v9 = v1[3];
  v10 = *(v1 + 8);
  v6 = *v1;
  v7 = v1[1];
  if (!ProjectionTransform.invert()())
  {
    v3 = static os_log_type_t.fault.getter();
    if (one-time initialization token for runtimeIssuesLog != -1)
    {
      v5 = v3;
      swift_once();
      v3 = v5;
    }

    os_log(_:dso:log:_:_:)(v3, &dword_18D018000, static Log.runtimeIssuesLog, "Cannot invert singular matrix", 29, 2, MEMORY[0x1E69E7CC0], v6, *&v7, v8, v9, v10);
  }

  *(a1 + 32) = v8;
  *(a1 + 48) = v9;
  *(a1 + 64) = v10;
  result = v7;
  *a1 = v6;
  *(a1 + 16) = v7;
  return result;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance ProjectionTransform(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return specialized static ProjectionTransform.== infix(_:_:)(v7, v9);
}

double CGPoint.applying(_:)(uint64_t a1, double a2, double a3)
{
  v3 = *(a1 + 64) + *(a1 + 16) * a2 + *(a1 + 40) * a3;
  v4 = 1.0;
  if (v3 != 1.0)
  {
    if (v3 <= 0.0)
    {
      v4 = INFINITY;
    }

    else
    {
      v4 = 1.0 / v3;
    }
  }

  *&result = *&vmulq_n_f64(vaddq_f64(*(a1 + 48), vaddq_f64(vmulq_n_f64(*a1, a2), vmulq_n_f64(*(a1 + 24), a3))), v4);
  return result;
}

double CGPoint.unapplying(_:)(double *a1, double result, double a3)
{
  v3 = a1[3];
  v5 = a1[4];
  v4 = a1[5];
  v6 = *a1 * v5 + v3 * (a1[2] * a3 - a1[1]) - *a1 * v4 * a3 + (a1[1] * v4 - a1[2] * v5) * result;
  if (v6 != 0.0)
  {
    return ((v4 * a3 - v5) * a1[6] + v3 * a1[7] + (v5 * a1[8] - v4 * a1[7]) * result - v3 * a1[8] * a3) / v6;
  }

  return result;
}

uint64_t ProjectionTransform.encode(to:)(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *(v1 + 48);
  v5[2] = *(v1 + 32);
  v5[3] = v2;
  v6 = *(v1 + 64);
  v3 = *(v1 + 16);
  v5[0] = *v1;
  v5[1] = v3;
  return closure #1 in ProjectionTransform.encode(to:)(v5, a1);
}

uint64_t closure #1 in ProjectionTransform.encode(to:)(uint64_t result, void *a2)
{
  v3 = 0;
  for (i = 0; ; ++i)
  {
    if (i > 8 || (v5 = 1.0, ((1 << i) & 0x111) == 0))
    {
      v5 = 0.0;
    }

    v6 = *(result + v3);
    if (v6 == v5)
    {
      goto LABEL_3;
    }

    v7 = fabs(v6);
    v8 = v3 + 5;
    if (v7 >= 65536.0)
    {
      v8 = v3 + 1;
    }

    v9 = v8 + 8;
    v10 = a2[1];
    v11 = a2[2];
    if (v10 >= v11)
    {
      v20 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_29;
      }

      if (v11 < v20)
      {
        v26 = result;
        v25 = v7;
        v23 = v9;
        v24 = ProtobufEncoder.growBufferSlow(to:)(v10 + 1);
        v9 = v23;
        v7 = v25;
        v21 = v24;
        result = v26;
      }

      else
      {
        a2[1] = v20;
        v21 = (*a2 + v10);
      }

      *v21 = v9 & 0x7D;
    }

    else
    {
      *(*a2 + v10) = v9;
      a2[1] = v10 + 1;
    }

    if (v7 < 65536.0)
    {
      break;
    }

    v16 = a2[1];
    v17 = v16 + 8;
    if (__OFADD__(v16, 8))
    {
      goto LABEL_28;
    }

    if (a2[2] >= v17)
    {
      a2[1] = v17;
      *(*a2 + v16) = v6;
    }

    else
    {
      v18 = result;
      v19 = ProtobufEncoder.growBufferSlow(to:)(v16 + 8);
      result = v18;
      *v19 = v6;
    }

LABEL_3:
    v3 += 8;
    if (v3 == 72)
    {
      return result;
    }
  }

  v12 = a2[1];
  v13 = v12 + 4;
  if (!__OFADD__(v12, 4))
  {
    if (a2[2] < v13)
    {
      v22 = result;
      v14 = ProtobufEncoder.growBufferSlow(to:)(v12 + 4);
      result = v22;
    }

    else
    {
      a2[1] = v13;
      v14 = (*a2 + v12);
    }

    v15 = v6;
    *v14 = v15;
    goto LABEL_3;
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

__n128 ProjectionTransform.init(from:)@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result.n128_u64[0] = specialized ProjectionTransform.init(from:)(a2, v6).n128_u64[0];
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7;
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

unint64_t closure #1 in ProjectionTransform.init(from:)(unint64_t result, void *a2, uint64_t *a3)
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
    if (result <= 0x4F)
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

        a2[3] = v15 & 0x78 | 1;
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

uint64_t protocol witness for ProtobufEncodableMessage.encode(to:) in conformance ProjectionTransform(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *(v1 + 48);
  v5[2] = *(v1 + 32);
  v5[3] = v2;
  v6 = *(v1 + 64);
  v3 = *(v1 + 16);
  v5[0] = *v1;
  v5[1] = v3;
  return closure #1 in ProjectionTransform.encode(to:)(v5, a1);
}

__n128 protocol witness for ProtobufDecodableMessage.init(from:) in conformance ProjectionTransform@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result.n128_u64[0] = specialized ProjectionTransform.init(from:)(a2, v6).n128_u64[0];
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7;
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

__n128 specialized ProjectionTransform.init(from:)@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0x3FF0000000000000uLL;
  v8 = 0uLL;
  v9 = 0x3FF0000000000000uLL;
  v10 = 0uLL;
  v11 = 0x3FF0000000000000;
  closure #1 in ProjectionTransform.init(from:)(&v7, a1, &v6);
  if (!v2)
  {
    v5 = v10;
    *(a2 + 32) = v9;
    *(a2 + 48) = v5;
    *(a2 + 64) = v11;
    result = v8;
    *a2 = v7;
    *(a2 + 16) = result;
  }

  return result;
}

__n128 LuminanceCurveEffect.curve.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

__n128 LuminanceCurveEffect.curve.setter(__n128 *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

double LuminanceCurveEffect.effectValue(size:)@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 4);
  v4 = swift_allocObject();
  v9 = *v1;
  LODWORD(v10) = v3;
  _s7SwiftUI14GraphicsFilterOWOi15_(&v9);
  v5 = v14;
  v4[5] = v13;
  v4[6] = v5;
  v4[7] = v15[0];
  *(v4 + 124) = *(v15 + 12);
  v6 = v10;
  v4[1] = v9;
  v4[2] = v6;
  result = *&v11;
  v8 = v12;
  v4[3] = v11;
  v4[4] = v8;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 12) = 10;
  return result;
}

void lazy protocol witness table accessor for type LuminanceCurveEffect and conformance LuminanceCurveEffect()
{
  if (!lazy protocol witness table cache variable for type LuminanceCurveEffect and conformance LuminanceCurveEffect)
  {
    swift_getWitnessTable(protocol conformance descriptor for LuminanceCurveEffect, &type metadata for LuminanceCurveEffect, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type LuminanceCurveEffect and conformance LuminanceCurveEffect);
  }
}

Swift::Void __swiftcall SeedValues.collect()()
{
  v4 = v0;
  v5 = type metadata accessor for SeedValue(255, *(v0 + 24), v1, v2);
  v6 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v49 = &v47 - v7;
  v8 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v57 = &v47 - v10;
  v50 = v4;
  v11 = *(v4 + 16);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v69 = &v47 - v17;
  v71 = v5;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v67 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v67);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v66 = &v47 - v23;
  v24 = *v3;
  v25 = *v3 + 64;
  v26 = 1 << *(*v3 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & *(*v3 + 64);
  v47 = (v26 + 63) >> 6;
  v68 = (v12 + 16);
  v70 = (v12 + 32);
  v51 = v8 + 32;
  v52 = v8 + 16;
  v64 = (v22 + 32);
  v65 = TupleTypeMetadata2 - 8;
  v61 = (v8 + 8);
  v58 = v8;
  v48 = (v8 + 56);
  v56 = v12;
  v59 = v24;
  v60 = (v12 + 8);

  v29 = 0;
  v62 = v25;
  v63 = v11;
  v54 = TupleTypeMetadata2;
  v55 = v15;
  v53 = v20;
  while (v28)
  {
    v30 = v29;
LABEL_15:
    v33 = __clz(__rbit64(v28));
    v28 &= v28 - 1;
    v34 = v33 | (v30 << 6);
    v35 = v59;
    v36 = v56;
    (*(v56 + 16))(v69, *(v59 + 48) + *(v56 + 72) * v34, v11);
    v37 = v58;
    v38 = v57;
    v39 = v71;
    (*(v58 + 16))(v57, *(v35 + 56) + *(v58 + 72) * v34, v71);
    v40 = *(v54 + 48);
    v41 = *(v36 + 32);
    TupleTypeMetadata2 = v54;
    v20 = v53;
    v41();
    (*(v37 + 32))(&v20[v40], v38, v39);
    v42 = 0;
    v15 = v55;
LABEL_16:
    v43 = *(TupleTypeMetadata2 - 8);
    (*(v43 + 56))(v20, v42, 1, TupleTypeMetadata2);
    v44 = v66;
    (*v64)(v66, v20, v67);
    if ((*(v43 + 48))(v44, 1, TupleTypeMetadata2) == 1)
    {

      return;
    }

    v45 = &v44[*(TupleTypeMetadata2 + 48)];
    v11 = v63;
    (*v70)(v15, v44, v63);
    v46 = *&v45[*(v71 + 28)];
    (*v61)(v45);
    if (v46 != v3[2])
    {
      (*v68)(v69, v15, v11);
      (*v48)(v49, 1, 1, v71);
      type metadata accessor for Dictionary();
      Dictionary.subscript.setter();
    }

    (*v60)(v15, v11);
    v25 = v62;
  }

  if (v47 <= v29 + 1)
  {
    v31 = v29 + 1;
  }

  else
  {
    v31 = v47;
  }

  v32 = v31 - 1;
  while (1)
  {
    v30 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v30 >= v47)
    {
      v28 = 0;
      v42 = 1;
      v29 = v32;
      goto LABEL_16;
    }

    v28 = *(v25 + 8 * v30);
    ++v29;
    if (v28)
    {
      v29 = v30;
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t SeedValues.setValue(_:for:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v32 = a2;
  v6 = a3[3];
  v34 = type metadata accessor for SeedValue(255, v6, a3, a4);
  v7 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v31 - v8;
  v33 = a3[2];
  v31 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v36 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v31 - v14;
  v16 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v31 - v22;
  (*(v13 + 16))(v15, a1, v12, v21);
  v24 = (*(v16 + 48))(v15, 1, v6);
  v25 = (v31 + 2);
  if (v24 == 1)
  {
    (*(v13 + 8))(v15, v12);
    (*v25)(v36, v32, v33);
    (*(*(v34 - 8) + 56))(v9, 1, 1, v34);
    type metadata accessor for Dictionary();
    return Dictionary.subscript.setter();
  }

  else
  {
    v31 = a3;
    v27 = *(v16 + 32);
    v27(v23, v15, v6);
    (*v25)(v36, v32, v33);
    (*(v16 + 16))(v19, v23, v6);
    v28 = *(v35 + 8);
    v27(v9, v19, v6);
    *&v9[*(type metadata accessor for SeedValue(0, v6, v29, v30) + 28)] = v28;
    (*(*(v34 - 8) + 56))(v9, 0, 1, v34);
    type metadata accessor for Dictionary();
    Dictionary.subscript.setter();
    return (*(v16 + 8))(v23, v6);
  }
}

uint64_t SeedValues.value(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v40 = a3;
  v7 = *(a2 + 16);
  v35 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v37 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *(v9 + 24);
  v12 = type metadata accessor for SeedValue(255, v39, v10, v11);
  v34 = type metadata accessor for Optional();
  v13 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v33 - v17;
  v19 = *(v12 - 8);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v33 - v22;
  v38 = v4;
  v24 = *v4;
  v25 = *(a2 + 32);
  v36 = a1;
  MEMORY[0x193ABE750](a1, v24, v7, v12, v25, v21);
  if ((*(v19 + 48))(v18, 1, v12) == 1)
  {
    (*(v13 + 8))(v18, v34);
    v27 = v39;
    v26 = v40;
    v28 = *(v39 - 8);
    v29 = 1;
  }

  else
  {
    (*(v19 + 32))(v23, v18, v12);
    v30 = v37;
    *&v23[*(v12 + 28)] = *(v38 + 2);
    (*(v35 + 16))(v30, v36, v7);
    (*(v19 + 16))(v15, v23, v12);
    (*(v19 + 56))(v15, 0, 1, v12);
    type metadata accessor for Dictionary();
    Dictionary.subscript.setter();
    v27 = v39;
    v31 = v40;
    v28 = *(v39 - 8);
    (*(v28 + 32))(v40, v23, v39);
    v29 = 0;
    v26 = v31;
  }

  return (*(v28 + 56))(v26, v29, 1, v27);
}

uint64_t SeedValues.resetValue(for:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for SeedValue(255, a2[3], a3, a4);
  v7 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = a2[2];
  v12 = MEMORY[0x1EEE9AC00](v11);
  (*(v14 + 16))(&v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10, v12);
  (*(*(v6 - 8) + 56))(v9, 1, 1, v6);
  type metadata accessor for Dictionary();
  return Dictionary.subscript.setter();
}

uint64_t SeedValue.init(value:seed:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  result = type metadata accessor for SeedValue(0, a3, v7, v8);
  *(a4 + *(result + 28)) = a2;
  return result;
}

BOOL static SeedValue<A>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v9 = type metadata accessor for SeedValue(0, a3, v7, v8);
  return *(a1 + *(v9 + 28)) == *(a2 + *(v9 + 28));
}

Swift::Int SeedValue<A>.hashValue.getter(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v2 + *(a1 + 28)));
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance <A> SeedValue<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  Hasher.init(_seed:)();
  SeedValue<A>.hash(into:)(v6, a2, v4);
  return Hasher._finalize()();
}

uint64_t static SeedValues<>.== infix(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a1 + 2);
  v8 = *(a2 + 2);
  v9 = type metadata accessor for SeedValue(0, a4, a3, a4);
  v11 = a6;
  swift_getWitnessTable(protocol conformance descriptor for <A> SeedValue<A>, v9, &v11);
  return static Dictionary<>.== infix(_:_:)() & (v7 == v8);
}

void SeedValues<>.hash(into:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 8);
  v7 = type metadata accessor for SeedValue(0, a2[3], a3, a4);
  v8 = a3;
  swift_getWitnessTable(protocol conformance descriptor for <A> SeedValue<A>, v7, &v8);
  Dictionary<>.hash(into:)();
  Hasher._combine(_:)(v6);
}

Swift::Int SeedValues<>.hashValue.getter(void *a1, uint64_t a2)
{
  v5 = *(v2 + 2);
  v9 = *v2;
  v10 = v5;
  Hasher.init(_seed:)();
  SeedValues<>.hash(into:)(v8, a1, a2, v6);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance <> SeedValues<A, B>(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  Hasher.init(_seed:)();
  SeedValues<>.hash(into:)(v7, a2, v4, v5);
  return Hasher._finalize()();
}

void SpringAnimation.init(mass:stiffness:damping:initialVelocity:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
}

void SpringAnimation.init(mass:stiffness:damping:)(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = 0;
}

uint64_t SpringAnimation.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x193AC11E0](*&v1);
  if (v2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v2;
  }

  MEMORY[0x193AC11E0](*&v5);
  if (v3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  MEMORY[0x193AC11E0](*&v6);
  if (v4 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v4;
  }

  return MEMORY[0x193AC11E0](*&v7);
}

Swift::Int SpringAnimation.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  Hasher.init(_seed:)();
  if (v1 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v1;
  }

  MEMORY[0x193AC11E0](*&v5);
  if (v2 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v2;
  }

  MEMORY[0x193AC11E0](*&v6);
  if (v3 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v3;
  }

  MEMORY[0x193AC11E0](*&v7);
  if (v4 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v4;
  }

  MEMORY[0x193AC11E0](*&v8);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SpringAnimation(uint64_t a1)
{
  Hasher.init(_seed:)();
  SpringAnimation.hash(into:)();
  return Hasher._finalize()();
}

double *SpringAnimation.encode(to:)(double *result)
{
  v2 = v1;
  v3 = result;
  v5 = *v2;
  v4 = v2[1];
  v7 = v2[2];
  v6 = v2[3];
  if (*v2 != 1.0)
  {
    ProtobufEncoder.encodeVarint(_:)(9uLL);
    v8 = *(v3 + 1);
    result = (v8 + 8);
    if (__OFADD__(v8, 8))
    {
      __break(1u);
      goto LABEL_19;
    }

    if (*(v3 + 2) < result)
    {
      goto LABEL_21;
    }

    *(v3 + 1) = result;
    *(*v3 + v8) = v5;
  }

  while (v4 != 100.0)
  {
    ProtobufEncoder.encodeVarint(_:)(0x11uLL);
    v9 = *(v3 + 1);
    result = (v9 + 8);
    if (!__OFADD__(v9, 8))
    {
      if (*(v3 + 2) >= result)
      {
        *(v3 + 1) = result;
        *(*v3 + v9) = v4;
        goto LABEL_9;
      }

      goto LABEL_23;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    result = ProtobufEncoder.growBufferSlow(to:)(result);
    *result = v5;
  }

  while (1)
  {
LABEL_9:
    if (v7 == 20.0)
    {
      goto LABEL_13;
    }

    ProtobufEncoder.encodeVarint(_:)(0x19uLL);
    v10 = *(v3 + 1);
    result = (v10 + 8);
    if (__OFADD__(v10, 8))
    {
      goto LABEL_20;
    }

    if (*(v3 + 2) >= result)
    {
      *(v3 + 1) = result;
      *(*v3 + v10) = v7;
LABEL_13:
      if (v6 == 0.0)
      {
        return result;
      }

      goto LABEL_14;
    }

    result = ProtobufEncoder.growBufferSlow(to:)(result);
    *result = v7;
    if (v6 == 0.0)
    {
      return result;
    }

LABEL_14:
    ProtobufEncoder.encodeVarint(_:)(0x21uLL);
    v11 = *(v3 + 1);
    result = (v11 + 8);
    if (!__OFADD__(v11, 8))
    {
      break;
    }

    __break(1u);
LABEL_23:
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

  return result;
}

unint64_t SpringAnimation.init(from:)@<X0>(unint64_t result@<X0>, double *a2@<X8>)
{
  v3 = result;
  v5 = *(result + 8);
  v6 = *(result + 16);
  v7 = 0.0;
  v8 = 20.0;
  if (v5 >= v6)
  {
    v10 = 1.0;
    v9 = 100.0;
LABEL_4:
    v3[3] = 0;
    *a2 = v10;
    a2[1] = v9;
    a2[2] = v8;
    a2[3] = v7;
    return result;
  }

  v9 = 100.0;
  v10 = 1.0;
  while (1)
  {
    result = v3[3];
    if (result)
    {
      v11 = v3[4];
      if (v5 < v11)
      {
        goto LABEL_15;
      }

      if (v11 < v5)
      {
        goto LABEL_80;
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
LABEL_80:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      return swift_willThrow();
    }

LABEL_15:
    v12 = result >> 3;
    v13 = result & 7;
    if (result >> 3 > 2)
    {
      break;
    }

    if (v12 == 1)
    {
      if (v13 != 5)
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
            goto LABEL_83;
          }

          v16 = v3[1];
          if (v6 < v16 + result)
          {
            goto LABEL_80;
          }

          v3[3] = 9;
          v3[4] = v16 + result;
        }

        else
        {
          if (v13 != 1)
          {
            goto LABEL_80;
          }

          v16 = v3[1];
        }

        v5 = (v16 + 1);
        if (v6 < (v16 + 1))
        {
          goto LABEL_80;
        }

        v10 = *v16;
        goto LABEL_7;
      }

      v22 = v3[1];
      v5 = (v22 + 1);
      if (v6 < (v22 + 1))
      {
        goto LABEL_80;
      }

      v23 = *v22;
      v3[1] = v5;
      v10 = v23;
      goto LABEL_8;
    }

    if (v12 == 2)
    {
      if (v13 != 5)
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
            goto LABEL_85;
          }

          v14 = v3[1];
          if (v6 < v14 + result)
          {
            goto LABEL_80;
          }

          v3[3] = 17;
          v3[4] = v14 + result;
        }

        else
        {
          if (v13 != 1)
          {
            goto LABEL_80;
          }

          v14 = v3[1];
        }

        v5 = (v14 + 1);
        if (v6 < (v14 + 1))
        {
          goto LABEL_80;
        }

        v9 = *v14;
        goto LABEL_7;
      }

      v18 = v3[1];
      v5 = (v18 + 1);
      if (v6 < (v18 + 1))
      {
        goto LABEL_80;
      }

      v19 = *v18;
      v3[1] = v5;
      v9 = v19;
      goto LABEL_8;
    }

LABEL_28:
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
          goto LABEL_86;
        }

        v5 = v3[1] + result;
        if (v6 < v5)
        {
          goto LABEL_80;
        }
      }

      else
      {
        if (v13 != 5)
        {
          goto LABEL_80;
        }

        v5 = v3[1] + 4;
        if (v6 < v5)
        {
          goto LABEL_80;
        }
      }

      goto LABEL_7;
    }

    if ((result & 7) != 0)
    {
      if (v13 != 1)
      {
        goto LABEL_80;
      }

      v5 = v3[1] + 8;
      if (v6 < v5)
      {
        goto LABEL_80;
      }

      goto LABEL_7;
    }

    result = ProtobufDecoder.decodeVarint()(result);
    if (v2)
    {
      return result;
    }

    v5 = v3[1];
LABEL_8:
    if (v5 >= v6)
    {
      goto LABEL_4;
    }
  }

  if (v12 == 3)
  {
    if (v13 != 5)
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
          goto LABEL_84;
        }

        v17 = v3[1];
        if (v6 < v17 + result)
        {
          goto LABEL_80;
        }

        v3[3] = 25;
        v3[4] = v17 + result;
      }

      else
      {
        if (v13 != 1)
        {
          goto LABEL_80;
        }

        v17 = v3[1];
      }

      v5 = (v17 + 1);
      if (v6 < (v17 + 1))
      {
        goto LABEL_80;
      }

      v8 = *v17;
      goto LABEL_7;
    }

    v24 = v3[1];
    v5 = (v24 + 1);
    if (v6 < (v24 + 1))
    {
      goto LABEL_80;
    }

    v25 = *v24;
    v3[1] = v5;
    v8 = v25;
    goto LABEL_8;
  }

  if (v12 != 4)
  {
    goto LABEL_28;
  }

  if (v13 == 5)
  {
    v20 = v3[1];
    v5 = (v20 + 1);
    if (v6 < (v20 + 1))
    {
      goto LABEL_80;
    }

    v21 = *v20;
    v3[1] = v5;
    v7 = v21;
    goto LABEL_8;
  }

  if (v13 != 2)
  {
    if (v13 != 1)
    {
      goto LABEL_80;
    }

    v15 = v3[1];
LABEL_5:
    v5 = (v15 + 1);
    if (v6 < (v15 + 1))
    {
      goto LABEL_80;
    }

    v7 = *v15;
LABEL_7:
    v3[1] = v5;
    goto LABEL_8;
  }

  result = ProtobufDecoder.decodeVarint()(result);
  if (v2)
  {
    return result;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v15 = v3[1];
    if (v6 < v15 + result)
    {
      goto LABEL_80;
    }

    v3[3] = 33;
    v3[4] = v15 + result;
    goto LABEL_5;
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
  return result;
}