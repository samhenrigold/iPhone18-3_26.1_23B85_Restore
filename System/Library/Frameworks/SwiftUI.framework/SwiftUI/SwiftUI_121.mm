uint64_t closure #2 in closure #1 in closure #1 in _InspectorSplitViewRoot.body(children:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  outlined init with copy of _VariadicView_Children(a1, v5);
  v5[4] = v7;
  v5[5] = v8;
  v5[8] = v11;
  v5[9] = v12;
  v5[6] = v9;
  v5[7] = v10;
  v6[4] = v7;
  v6[5] = v8;
  v6[9] = v12;
  v6[10] = v13;
  v6[7] = v10;
  v6[8] = v11;
  v6[6] = v9;
  v6[2] = v5[2];
  v6[3] = v5[3];
  v6[1] = v5[1];
  v5[10] = v13;
  v6[0] = v5[0];
  outlined init with copy of ModifiedContent<_VariadicView_Children, _FlexFrameLayout>(v6, v5);
  outlined init with copy of ModifiedContent<_VariadicView_Children, _FlexFrameLayout>(v5, a2);
  outlined destroy of ModifiedContent<_VariadicView_Children, _FlexFrameLayout>(v6);
  return outlined destroy of ModifiedContent<_VariadicView_Children, _FlexFrameLayout>(v5);
}

uint64_t protocol witness for static _VariadicView_ViewRoot._makeViewList(root:inputs:body:) in conformance _InspectorSplitViewRoot<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _InspectorSplitViewRoot<A>, a5);

  return MEMORY[0x1EEDDCF90](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t partial apply for closure #1 in _InspectorSplitViewRoot.body(children:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for _InspectorSplitViewRoot(0, v6, v7, a2) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = v3 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8);

  return closure #1 in _InspectorSplitViewRoot.body(children:)(a1, v3 + v9, v10, v6, v7, a3);
}

unint64_t lazy protocol witness table accessor for type InspectorSplitViewLayout and conformance InspectorSplitViewLayout()
{
  result = lazy protocol witness table cache variable for type InspectorSplitViewLayout and conformance InspectorSplitViewLayout;
  if (!lazy protocol witness table cache variable for type InspectorSplitViewLayout and conformance InspectorSplitViewLayout)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InspectorSplitViewLayout, &unk_1EFFD9AA0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type InspectorSplitViewLayout and conformance InspectorSplitViewLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InspectorSplitViewLayout and conformance InspectorSplitViewLayout;
  if (!lazy protocol witness table cache variable for type InspectorSplitViewLayout and conformance InspectorSplitViewLayout)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InspectorSplitViewLayout, &unk_1EFFD9AA0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type InspectorSplitViewLayout and conformance InspectorSplitViewLayout);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InspectorDimmingView and conformance InspectorDimmingView()
{
  result = lazy protocol witness table cache variable for type InspectorDimmingView and conformance InspectorDimmingView;
  if (!lazy protocol witness table cache variable for type InspectorDimmingView and conformance InspectorDimmingView)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InspectorDimmingView, &type metadata for InspectorDimmingView, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type InspectorDimmingView and conformance InspectorDimmingView);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>>, _BackgroundModifier<InspectorSeparatorShadow>>, _AnimationModifier<Bool>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>>, _BackgroundModifier<InspectorSeparatorShadow>>, _AnimationModifier<Bool>>)
  {
    type metadata accessor for ModifiedContent<HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>>, _BackgroundModifier<InspectorSeparatorShadow>>(255);
    type metadata accessor for _AnimationModifier<Bool>(255, &lazy cache variable for type metadata for _AnimationModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388], MEMORY[0x1E697F540]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>>, _BackgroundModifier<InspectorSeparatorShadow>>, _AnimationModifier<Bool>>);
    }
  }
}

void type metadata accessor for ModifiedContent<HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>>, _BackgroundModifier<InspectorSeparatorShadow>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>>, _BackgroundModifier<InspectorSeparatorShadow>>)
  {
    type metadata accessor for HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>>(255);
    type metadata accessor for _LayoutRoot<InspectorSplitViewLayout>(255, &lazy cache variable for type metadata for _BackgroundModifier<InspectorSeparatorShadow>, lazy protocol witness table accessor for type InspectorSeparatorShadow and conformance InspectorSeparatorShadow, &type metadata for InspectorSeparatorShadow, MEMORY[0x1E697F930]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>>, _BackgroundModifier<InspectorSeparatorShadow>>);
    }
  }
}

void type metadata accessor for HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>>)
  {
    type metadata accessor for TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>(255);
    lazy protocol witness table accessor for type TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)> and conformance TupleView<A>, type metadata accessor for TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>, MEMORY[0x1E6981F48]);
    v1 = type metadata accessor for HStack();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>>, _BackgroundModifier<InspectorSeparatorShadow>>, _AnimationModifier<Bool>>?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata accessor for (InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>))
  {
    type metadata accessor for _AnimationModifier<Bool>(255, &lazy cache variable for type metadata for ModifiedContent<_VariadicView_Children, _FlexFrameLayout>, MEMORY[0x1E697FFD0], MEMORY[0x1E697EC00], MEMORY[0x1E697E830]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>));
    }
  }
}

void type metadata accessor for _LayoutRoot<InspectorSplitViewLayout>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type InspectorSeparatorShadow and conformance InspectorSeparatorShadow()
{
  result = lazy protocol witness table cache variable for type InspectorSeparatorShadow and conformance InspectorSeparatorShadow;
  if (!lazy protocol witness table cache variable for type InspectorSeparatorShadow and conformance InspectorSeparatorShadow)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InspectorSeparatorShadow, &type metadata for InspectorSeparatorShadow, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type InspectorSeparatorShadow and conformance InspectorSeparatorShadow);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _LayoutRoot<InspectorSplitViewLayout> and conformance _LayoutRoot<A>()
{
  result = lazy protocol witness table cache variable for type _LayoutRoot<InspectorSplitViewLayout> and conformance _LayoutRoot<A>;
  if (!lazy protocol witness table cache variable for type _LayoutRoot<InspectorSplitViewLayout> and conformance _LayoutRoot<A>)
  {
    type metadata accessor for _LayoutRoot<InspectorSplitViewLayout>(255, &lazy cache variable for type metadata for _LayoutRoot<InspectorSplitViewLayout>, lazy protocol witness table accessor for type InspectorSplitViewLayout and conformance InspectorSplitViewLayout, &unk_1EFFD9AA0, MEMORY[0x1E697DDC0]);
    result = swift_getWitnessTable(MEMORY[0x1E697DDC8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _LayoutRoot<InspectorSplitViewLayout> and conformance _LayoutRoot<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _LayoutRoot<InspectorSplitViewLayout> and conformance _LayoutRoot<A>;
  if (!lazy protocol witness table cache variable for type _LayoutRoot<InspectorSplitViewLayout> and conformance _LayoutRoot<A>)
  {
    type metadata accessor for _LayoutRoot<InspectorSplitViewLayout>(255, &lazy cache variable for type metadata for _LayoutRoot<InspectorSplitViewLayout>, lazy protocol witness table accessor for type InspectorSplitViewLayout and conformance InspectorSplitViewLayout, &unk_1EFFD9AA0, MEMORY[0x1E697DDC0]);
    result = swift_getWitnessTable(MEMORY[0x1E697DDD0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _LayoutRoot<InspectorSplitViewLayout> and conformance _LayoutRoot<A>);
  }

  return result;
}

double partial apply for closure #1 in closure #1 in closure #1 in _InspectorSplitViewRoot.body(children:)@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;

  return result;
}

unint64_t lazy protocol witness table accessor for type _OverlayModifier<InspectorDimmingView> and conformance _OverlayModifier<A>()
{
  result = lazy protocol witness table cache variable for type _OverlayModifier<InspectorDimmingView> and conformance _OverlayModifier<A>;
  if (!lazy protocol witness table cache variable for type _OverlayModifier<InspectorDimmingView> and conformance _OverlayModifier<A>)
  {
    type metadata accessor for _LayoutRoot<InspectorSplitViewLayout>(255, &lazy cache variable for type metadata for _OverlayModifier<InspectorDimmingView>, lazy protocol witness table accessor for type InspectorDimmingView and conformance InspectorDimmingView, &type metadata for InspectorDimmingView, MEMORY[0x1E697EC08]);
    result = swift_getWitnessTable(MEMORY[0x1E697EC18], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _OverlayModifier<InspectorDimmingView> and conformance _OverlayModifier<A>);
  }

  return result;
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>>, _BackgroundModifier<InspectorSeparatorShadow>>, _AnimationModifier<Bool>>?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ModifiedContent<ModifiedContent<HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>>, _BackgroundModifier<InspectorSeparatorShadow>>, _AnimationModifier<Bool>>?(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>>, _BackgroundModifier<InspectorSeparatorShadow>>, _AnimationModifier<Bool>>? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>>, _BackgroundModifier<InspectorSeparatorShadow>>, _AnimationModifier<Bool>>? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>>, _BackgroundModifier<InspectorSeparatorShadow>>, _AnimationModifier<Bool>>? and conformance <A> A?)
  {
    v5[3] = v0;
    v5[4] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>>, _BackgroundModifier<InspectorSeparatorShadow>>, _AnimationModifier<Bool>>?(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>>, _BackgroundModifier<InspectorSeparatorShadow>>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable(MEMORY[0x1E6982090], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>>, _BackgroundModifier<InspectorSeparatorShadow>>, _AnimationModifier<Bool>>? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>>, _BackgroundModifier<InspectorSeparatorShadow>>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>>, _BackgroundModifier<InspectorSeparatorShadow>>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>>, _BackgroundModifier<InspectorSeparatorShadow>>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>>, _BackgroundModifier<InspectorSeparatorShadow>>, _AnimationModifier<Bool>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>>, _BackgroundModifier<InspectorSeparatorShadow>> and conformance <> ModifiedContent<A, B>();
    v5[1] = lazy protocol witness table accessor for type _AnimationModifier<Bool> and conformance _AnimationModifier<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>>, _BackgroundModifier<InspectorSeparatorShadow>>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>>, _BackgroundModifier<InspectorSeparatorShadow>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>>, _BackgroundModifier<InspectorSeparatorShadow>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>>, _BackgroundModifier<InspectorSeparatorShadow>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>>, _BackgroundModifier<InspectorSeparatorShadow>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>> and conformance HStack<A>, type metadata accessor for HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>>, MEMORY[0x1E69817F8]);
    v5[1] = lazy protocol witness table accessor for type _BackgroundModifier<InspectorSeparatorShadow> and conformance _BackgroundModifier<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>>, _BackgroundModifier<InspectorSeparatorShadow>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)> and conformance TupleView<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _BackgroundModifier<InspectorSeparatorShadow> and conformance _BackgroundModifier<A>()
{
  result = lazy protocol witness table cache variable for type _BackgroundModifier<InspectorSeparatorShadow> and conformance _BackgroundModifier<A>;
  if (!lazy protocol witness table cache variable for type _BackgroundModifier<InspectorSeparatorShadow> and conformance _BackgroundModifier<A>)
  {
    type metadata accessor for _LayoutRoot<InspectorSplitViewLayout>(255, &lazy cache variable for type metadata for _BackgroundModifier<InspectorSeparatorShadow>, lazy protocol witness table accessor for type InspectorSeparatorShadow and conformance InspectorSeparatorShadow, &type metadata for InspectorSeparatorShadow, MEMORY[0x1E697F930]);
    result = swift_getWitnessTable(MEMORY[0x1E697F940], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _BackgroundModifier<InspectorSeparatorShadow> and conformance _BackgroundModifier<A>);
  }

  return result;
}

uint64_t outlined init with copy of ModifiedContent<_VariadicView_Children, _FlexFrameLayout>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for _AnimationModifier<Bool>(0, &lazy cache variable for type metadata for ModifiedContent<_VariadicView_Children, _FlexFrameLayout>, MEMORY[0x1E697FFD0], MEMORY[0x1E697EC00], MEMORY[0x1E697E830]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<_VariadicView_Children, _FlexFrameLayout>(uint64_t a1)
{
  type metadata accessor for _AnimationModifier<Bool>(0, &lazy cache variable for type metadata for ModifiedContent<_VariadicView_Children, _FlexFrameLayout>, MEMORY[0x1E697FFD0], MEMORY[0x1E697EC00], MEMORY[0x1E697E830]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for Binding<PresentationDetent>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t instantiation function for generic protocol witness table for InspectorSplitViewLayout(uint64_t a1)
{
  result = lazy protocol witness table accessor for type InspectorSplitViewLayout and conformance InspectorSplitViewLayout();
  *(a1 + 8) = result;
  return result;
}

uint64_t specialized InspectorSplitViewLayout.placeSubviews(in:proposal:subviews:cache:)(double *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v10 = *a1;
  v11 = a1[1];
  v12 = *(a1 + 16);
  v13 = *(a1 + 17);
  v14 = *v5;
  v24 = v5[1];
  v25 = v5[2];
  v15 = v5[5];
  if (__PAIR64__(*(v5 + 2), *(v5 + 1)) == 0x100000001)
  {
    v16 = a5 >= a4 ? 1194.0 : 1024.0;
    if (a4 < v16)
    {
      LODWORD(v26.a) = *a1;
      v26.b = v11;
      LOBYTE(v26.c) = v12;
      BYTE1(v26.c) = v13;
      result = LayoutSubviews.endIndex.getter();
      if ((result & 0x8000000000000000) == 0)
      {
        v18 = result;
        if (result)
        {
          v19 = 0;
          do
          {
            if (v19)
            {
              v35.origin.x = a2;
              v35.origin.y = a3;
              v35.size.width = a4;
              v35.size.height = a5;
              CGRectGetWidth(v35);
              v36.origin.x = a2;
              v36.origin.y = a3;
              v36.size.width = a4;
              v36.size.height = a5;
              LODWORD(v26.a) = v10;
              CGRectGetHeight(v36);
              v26.b = v11;
              LOBYTE(v26.c) = v12;
              BYTE1(v26.c) = v13;
              LayoutSubviews.subscript.getter();
              v29 = v31;
              v30 = v32;
            }

            else
            {
              LODWORD(v26.a) = v10;
              v26.b = v11;
              LOBYTE(v26.c) = v12;
              BYTE1(v26.c) = v13;
              LayoutSubviews.subscript.getter();
              v29 = v31;
              v30 = v32;
              v37.origin.x = a2;
              v37.origin.y = a3;
              v37.size.width = a4;
              v37.size.height = a5;
              CGRectGetWidth(v37);
              v38.origin.x = a2;
              v38.origin.y = a3;
              v38.size.width = a4;
              v38.size.height = a5;
              CGRectGetHeight(v38);
            }

            static UnitPoint.topLeading.getter();
            LOBYTE(v27) = 0;
            result = LayoutSubview.place(at:anchor:proposal:)();
            ++v19;
          }

          while (v18 != v19);
        }

        return result;
      }

LABEL_24:
      __break(1u);
      return result;
    }
  }

  LODWORD(v26.a) = *a1;
  v26.b = v11;
  LOBYTE(v26.c) = v12;
  BYTE1(v26.c) = v13;
  result = LayoutSubviews.endIndex.getter();
  if (result < 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  v20 = result;
  if (result)
  {
    v21 = 0;
    if (v14)
    {
      v22 = -v24;
    }

    else
    {
      v22 = v15;
    }

    do
    {
      if (v21)
      {
        LODWORD(v31) = v10;
        *(&v31 + 1) = v11;
        v32 = v12;
        v33 = v13;
        LayoutSubviews.subscript.getter();
        v27 = v29;
        v28 = v30;
        v39.origin.x = a2;
        v39.origin.y = a3;
        v39.size.width = a4;
        v39.size.height = a5;
        Width = CGRectGetWidth(v39);
        CGAffineTransformMakeTranslation(&v26, Width + v22, -v25);
        v34.x = a2;
        v34.y = a3;
        CGPointApplyAffineTransform(v34, &v26);
        v40.origin.x = a2;
        v40.origin.y = a3;
        v40.size.width = a4;
        v40.size.height = a5;
        CGRectGetHeight(v40);
        static UnitPoint.topLeading.getter();
        LOBYTE(v26.a) = 0;
      }

      else
      {
        LODWORD(v26.a) = v10;
        v26.b = v11;
        LOBYTE(v26.c) = v12;
        BYTE1(v26.c) = v13;
        LayoutSubviews.subscript.getter();
        v29 = v31;
        v30 = v32;
        v41.origin.x = a2;
        v41.origin.y = a3;
        v41.size.width = a4;
        v41.size.height = a5;
        CGRectGetWidth(v41);
        v42.origin.x = a2;
        v42.origin.y = a3;
        v42.size.width = a4;
        v42.size.height = a5;
        CGRectGetHeight(v42);
        static UnitPoint.topLeading.getter();
        LOBYTE(v27) = 0;
      }

      result = LayoutSubview.place(at:anchor:proposal:)();
      ++v21;
    }

    while (v20 != v21);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InspectorPresentationMode and conformance InspectorPresentationMode()
{
  result = lazy protocol witness table cache variable for type InspectorPresentationMode and conformance InspectorPresentationMode;
  if (!lazy protocol witness table cache variable for type InspectorPresentationMode and conformance InspectorPresentationMode)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InspectorPresentationMode, &type metadata for InspectorPresentationMode, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type InspectorPresentationMode and conformance InspectorPresentationMode);
  }

  return result;
}

void type metadata completion function for TokenField(uint64_t a1)
{
  type metadata accessor for Binding<AttributedString>(319);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for TokenField(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = type metadata accessor for AttributedString();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = ((v8 + 16) & ~v8) + *(v7 + 64);
  v10 = *(a3 + 16);
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = (*(v11 + 80) | *(v7 + 80)) & 0x100000;
  v14 = ((-33 - v12 - ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) | v12) - *(v11 + 64);
  v15 = *a2;
  *a1 = *a2;
  if ((v12 | v8) <= 7 && v13 == 0 && v14 >= 0xFFFFFFFFFFFFFFE7)
  {
    v32 = v10;
    v18 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    v19 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v18 = *v19;
    v20 = *(v7 + 16);

    v20(v18 + 1, v19 + 1, v6);
    v21 = ((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
    v22 = ((a2 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
    v23 = v22[1];
    *v21 = *v22;
    v21[1] = v23;
    v24 = (v21 + 23) & 0xFFFFFFFFFFFFFFF8;
    v25 = (v22 + 23) & 0xFFFFFFFFFFFFFFF8;
    v26 = *(v25 + 24);

    if (v26 < 0xFFFFFFFF)
    {
      v30 = *(v25 + 16);
      *v24 = *v25;
      *(v24 + 16) = v30;
    }

    else
    {
      v27 = *v25;
      v28 = *(v25 + 8);
      v29 = *(v25 + 16);
      outlined copy of Text.Storage(*v25, v28, v29);
      *v24 = v27;
      *(v24 + 8) = v28;
      *(v24 + 16) = v29;
      *(v24 + 24) = *(v25 + 24);
    }

    (*(v11 + 16))(v24 + 32, v25 + 32, v32);
  }

  else
  {
    a1 = (v15 + (((v12 | v8) & 0xF8 ^ 0x1F8) & ((v12 | v8) + 16)));
  }

  return a1;
}

uint64_t destroy for TokenField(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 15;

  v5 = type metadata accessor for AttributedString();
  v6 = *(v5 - 8);
  v7 = v6 + 8;
  v8 = *(v6 + 80);
  (*(v6 + 8))(((v4 & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & ~v8, v5);
  v9 = (a1 + *(v7 + 56) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8;

  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  if (*(v10 + 24) >= 0xFFFFFFFFuLL)
  {
    outlined consume of Text.Storage(*v10, *(v10 + 8), *(v10 + 16));
  }

  v11 = *(*(a2 + 16) - 8);
  v12 = *(v11 + 8);
  v13 = (v10 + *(v11 + 80) + 32) & ~*(v11 + 80);

  return v12(v13);
}

uint64_t *initializeWithCopy for TokenField(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v6;
  v7 = type metadata accessor for AttributedString();
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v10 = v8 + 16;
  v11 = *(v8 + 80);

  v9((v5 + v11 + 8) & ~v11, (v6 + v11 + 8) & ~v11, v7);
  v12 = ((v11 + 16) & ~v11) + *(v10 + 48) + 7;
  v13 = ((a1 + v12) & 0xFFFFFFFFFFFFFFF8);
  v14 = ((a2 + v12) & 0xFFFFFFFFFFFFFFF8);
  v15 = v14[1];
  *v13 = *v14;
  v13[1] = v15;
  v16 = (v13 + 23) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v14 + 23) & 0xFFFFFFFFFFFFFFF8;
  v18 = *(v17 + 24);

  if (v18 < 0xFFFFFFFF)
  {
    v22 = *(v17 + 16);
    *v16 = *v17;
    *(v16 + 16) = v22;
  }

  else
  {
    v19 = *v17;
    v20 = *(v17 + 8);
    v21 = *(v17 + 16);
    outlined copy of Text.Storage(*v17, v20, v21);
    *v16 = v19;
    *(v16 + 8) = v20;
    *(v16 + 16) = v21;
    *(v16 + 24) = *(v17 + 24);
  }

  v23 = *(*(a3 + 16) - 8);
  (*(v23 + 16))((v16 + *(v23 + 80) + 32) & ~*(v23 + 80), (v17 + *(v23 + 80) + 32) & ~*(v23 + 80));
  return a1;
}

uint64_t *assignWithCopy for TokenField(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = a2 + 15;
  *a1 = *a2;

  v7 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 &= 0xFFFFFFFFFFFFFFF8;
  *v7 = *v6;

  v8 = type metadata accessor for AttributedString();
  v9 = *(v8 - 8);
  v10 = v9 + 24;
  v11 = *(v9 + 80);
  (*(v9 + 24))((v7 + v11 + 8) & ~v11, (v11 + 8 + v6) & ~v11, v8);
  v12 = ((v11 + 16) & ~v11) + *(v10 + 40) + 7;
  v13 = ((a1 + v12) & 0xFFFFFFFFFFFFFFF8);
  v14 = ((a2 + v12) & 0xFFFFFFFFFFFFFFF8);
  v15 = v14[1];
  *v13 = *v14;
  v13[1] = v15;

  v16 = (v13 + 23) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v14 + 23) & 0xFFFFFFFFFFFFFFF8;
  v18 = *(v17 + 24);
  if (*(v16 + 24) < 0xFFFFFFFFuLL)
  {
    if (v18 >= 0xFFFFFFFF)
    {
      v25 = *v17;
      v26 = *(v17 + 8);
      v27 = *(v17 + 16);
      outlined copy of Text.Storage(*v17, v26, v27);
      *v16 = v25;
      *(v16 + 8) = v26;
      *(v16 + 16) = v27;
      *(v16 + 24) = *(v17 + 24);

      goto LABEL_8;
    }

LABEL_7:
    v28 = *(v17 + 16);
    *v16 = *v17;
    *(v16 + 16) = v28;
    goto LABEL_8;
  }

  if (v18 < 0xFFFFFFFF)
  {
    outlined consume of Text.Storage(*v16, *(v16 + 8), *(v16 + 16));

    goto LABEL_7;
  }

  v19 = *v17;
  v20 = *(v17 + 8);
  v21 = *(v17 + 16);
  outlined copy of Text.Storage(*v17, v20, v21);
  v22 = *v16;
  v23 = *(v16 + 8);
  v24 = *(v16 + 16);
  *v16 = v19;
  *(v16 + 8) = v20;
  *(v16 + 16) = v21;
  outlined consume of Text.Storage(v22, v23, v24);
  *(v16 + 24) = *(v17 + 24);

LABEL_8:
  v29 = *(*(a3 + 16) - 8);
  (*(v29 + 24))((v16 + *(v29 + 80) + 32) & ~*(v29 + 80), (v17 + *(v29 + 80) + 32) & ~*(v29 + 80));
  return a1;
}

void *initializeWithTake for TokenField(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v7 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *v7;
  v8 = type metadata accessor for AttributedString();
  v9 = *(v8 - 8);
  v10 = v9 + 32;
  v11 = *(v9 + 80);
  (*(v9 + 32))((v6 + v11 + 8) & ~v11, (v7 + v11 + 8) & ~v11, v8);
  v12 = ((v11 + 16) & ~v11) + *(v10 + 32) + 7;
  v13 = ((a1 + v12) & 0xFFFFFFFFFFFFFFF8);
  v14 = ((a2 + v12) & 0xFFFFFFFFFFFFFFF8);
  *v13 = *v14;
  v15 = ((v13 + 23) & 0xFFFFFFFFFFFFFFF8);
  v16 = ((v14 + 23) & 0xFFFFFFFFFFFFFFF8);
  v17 = v16[1];
  *v15 = *v16;
  v15[1] = v17;
  v18 = *(*(a3 + 16) - 8);
  (*(v18 + 32))((v15 + *(v18 + 80) + 32) & ~*(v18 + 80), (v16 + *(v18 + 80) + 32) & ~*(v18 + 80));
  return a1;
}

void *assignWithTake for TokenField(void *a1, void *a2, uint64_t a3)
{
  v6 = a2 + 15;
  *a1 = *a2;

  v7 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 &= 0xFFFFFFFFFFFFFFF8;
  *v7 = *v6;

  v8 = type metadata accessor for AttributedString();
  v9 = *(v8 - 8);
  v10 = v9 + 40;
  v11 = *(v9 + 80);
  (*(v9 + 40))((v7 + v11 + 8) & ~v11, (v11 + 8 + v6) & ~v11, v8);
  v12 = ((v11 + 16) & ~v11) + *(v10 + 24) + 7;
  v13 = ((a1 + v12) & 0xFFFFFFFFFFFFFFF8);
  v14 = a2 + v12;
  v15 = (v14 & 0xFFFFFFFFFFFFFFF8) + 23;
  *v13 = *(v14 & 0xFFFFFFFFFFFFFFF8);

  v16 = (v13 + 23) & 0xFFFFFFFFFFFFFFF8;
  v17 = v15 & 0xFFFFFFFFFFFFFFF8;
  if (*(v16 + 24) < 0xFFFFFFFFuLL)
  {
    goto LABEL_5;
  }

  if (*(v17 + 24) < 0xFFFFFFFFuLL)
  {
    outlined consume of Text.Storage(*v16, *(v16 + 8), *(v16 + 16));

LABEL_5:
    v22 = *(v17 + 16);
    *v16 = *v17;
    *(v16 + 16) = v22;
    goto LABEL_6;
  }

  v18 = *(v17 + 16);
  v19 = *v16;
  v20 = *(v16 + 8);
  v21 = *(v16 + 16);
  *v16 = *v17;
  *(v16 + 16) = v18;
  outlined consume of Text.Storage(v19, v20, v21);
  *(v16 + 24) = *(v17 + 24);

LABEL_6:
  v23 = *(*(a3 + 16) - 8);
  (*(v23 + 40))((v16 + *(v23 + 80) + 32) & ~*(v23 + 80), (v17 + *(v23 + 80) + 32) & ~*(v23 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for TokenField(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(type metadata accessor for AttributedString() - 8);
  v7 = v6;
  v8 = *(v6 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v6 + 84);
  }

  v10 = *(*(a3 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v6 + 80);
  v13 = *(v6 + 64);
  v14 = *(v10 + 80);
  if (v11 <= v9)
  {
    v15 = v9;
  }

  else
  {
    v15 = *(v10 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v16 = ((v12 + 16) & ~v12) + v13;
  v17 = v14 + 32;
  if (a2 <= v15)
  {
    goto LABEL_31;
  }

  v18 = ((v17 + ((((v16 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v14) + *(v10 + 64);
  v19 = 8 * v18;
  if (v18 <= 3)
  {
    v22 = ((a2 - v15 + ~(-1 << v19)) >> v19) + 1;
    if (HIWORD(v22))
    {
      v20 = *(a1 + v18);
      if (!v20)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v22 > 0xFF)
    {
      v20 = *(a1 + v18);
      if (!*(a1 + v18))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v22 < 2)
    {
LABEL_31:
      if (v9 >= v11)
      {
        v27 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((v8 & 0x80000000) != 0)
        {
          v29 = *(v7 + 48);

          return v29((v27 + v12 + 8) & ~v12);
        }

        else
        {
          v28 = *v27;
          if (v28 >= 0xFFFFFFFF)
          {
            LODWORD(v28) = -1;
          }

          return (v28 + 1);
        }
      }

      else
      {
        v26 = *(v10 + 48);

        return v26((v17 + ((((a1 + v16 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v14, v11);
      }
    }
  }

  v20 = *(a1 + v18);
  if (!*(a1 + v18))
  {
    goto LABEL_31;
  }

LABEL_18:
  v23 = (v20 - 1) << v19;
  if (v18 > 3)
  {
    v23 = 0;
  }

  if (v18)
  {
    if (v18 <= 3)
    {
      v24 = ((v17 + ((((v16 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8)) & ~v14) + *(v10 + 64);
    }

    else
    {
      v24 = 4;
    }

    if (v24 > 2)
    {
      if (v24 == 3)
      {
        v25 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v25 = *a1;
      }
    }

    else if (v24 == 1)
    {
      v25 = *a1;
    }

    else
    {
      v25 = *a1;
    }
  }

  else
  {
    v25 = 0;
  }

  return v15 + (v25 | v23) + 1;
}

void storeEnumTagSinglePayload for TokenField(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(type metadata accessor for AttributedString() - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v8 + 84);
  }

  v12 = *(*(a4 + 16) - 8);
  v13 = *(v12 + 84);
  v14 = *(v8 + 80);
  v15 = *(v8 + 64);
  v16 = *(v12 + 80);
  if (v13 <= v11)
  {
    v17 = v11;
  }

  else
  {
    v17 = *(v12 + 84);
  }

  v18 = ((v14 + 16) & ~v14) + v15;
  v19 = ((v16 + 32 + ((((v18 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v16) + *(v12 + 64);
  if (a3 <= v17)
  {
    v20 = 0;
  }

  else if (v19 <= 3)
  {
    v23 = ((a3 - v17 + ~(-1 << (8 * v19))) >> (8 * v19)) + 1;
    if (HIWORD(v23))
    {
      v20 = 4;
    }

    else
    {
      if (v23 < 0x100)
      {
        v24 = 1;
      }

      else
      {
        v24 = 2;
      }

      if (v23 >= 2)
      {
        v20 = v24;
      }

      else
      {
        v20 = 0;
      }
    }
  }

  else
  {
    v20 = 1;
  }

  if (v17 < a2)
  {
    v21 = ~v17 + a2;
    if (v19 < 4)
    {
      v22 = (v21 >> (8 * v19)) + 1;
      if (v19)
      {
        v25 = v21 & ~(-1 << (8 * v19));
        bzero(a1, v19);
        if (v19 != 3)
        {
          if (v19 == 2)
          {
            *a1 = v25;
            if (v20 > 1)
            {
LABEL_61:
              if (v20 == 2)
              {
                *&a1[v19] = v22;
              }

              else
              {
                *&a1[v19] = v22;
              }

              return;
            }
          }

          else
          {
            *a1 = v21;
            if (v20 > 1)
            {
              goto LABEL_61;
            }
          }

          goto LABEL_58;
        }

        *a1 = v25;
        a1[2] = BYTE2(v25);
      }

      if (v20 > 1)
      {
        goto LABEL_61;
      }
    }

    else
    {
      bzero(a1, v19);
      *a1 = v21;
      v22 = 1;
      if (v20 > 1)
      {
        goto LABEL_61;
      }
    }

LABEL_58:
    if (v20)
    {
      a1[v19] = v22;
    }

    return;
  }

  if (v20 > 1)
  {
    if (v20 != 2)
    {
      *&a1[v19] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v19] = 0;
LABEL_33:
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!v20)
  {
    goto LABEL_33;
  }

  a1[v19] = 0;
  if (!a2)
  {
    return;
  }

LABEL_34:
  if (v11 >= v13)
  {
    if (v11 >= a2)
    {
      v30 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v10 & 0x80000000) != 0)
      {
        v32 = *(v9 + 56);

        v32((v30 + v14 + 8) & ~v14, a2);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v31 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v31 = (a2 - 1);
        }

        *v30 = v31;
      }
    }

    else
    {
      if (v18 <= 3)
      {
        v27 = ~(-1 << (8 * v18));
      }

      else
      {
        v27 = -1;
      }

      if (v18)
      {
        v28 = v27 & (~v11 + a2);
        if (v18 <= 3)
        {
          v29 = v18;
        }

        else
        {
          v29 = 4;
        }

        bzero(a1, v18);
        if (v29 > 2)
        {
          if (v29 == 3)
          {
            *a1 = v28;
            a1[2] = BYTE2(v28);
          }

          else
          {
            *a1 = v28;
          }
        }

        else if (v29 == 1)
        {
          *a1 = v28;
        }

        else
        {
          *a1 = v28;
        }
      }
    }
  }

  else
  {
    v26 = *(v12 + 56);

    v26((v16 + 32 + (((&a1[v18 + 7] & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v16, a2, v13);
  }
}

uint64_t TokenField.init(valueType:text:prompt:token:label:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, void (*a9)(uint64_t), uint64_t a10, __int128 a11, __int128 a12, uint64_t a13, uint64_t a14)
{
  v27[0] = a11;
  v27[1] = a12;
  v28 = a13;
  v29 = a14;
  v22 = type metadata accessor for TokenField(0, v27);
  v23 = (a8 + *(v22 + 72));
  outlined init with copy of Binding<AttributedString>(a1, a8);
  v24 = (a8 + *(v22 + 68));
  *v24 = a6;
  v24[1] = a7;
  *v23 = a2;
  v23[1] = a3;
  v23[2] = a4;
  v23[3] = a5;

  v25 = outlined copy of Text?(a2, a3, a4, a5);
  a9(v25);
  outlined consume of Text?(a2, a3, a4, a5);

  return outlined destroy of ResolvedTokenFieldStyle(a1, type metadata accessor for Binding<AttributedString>);
}

uint64_t TokenField.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19[1] = a2;
  v4 = type metadata accessor for ResolvedTokenFieldStyle(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v19[0] = lazy protocol witness table accessor for type TokenFieldConfiguration.Label and conformance TokenFieldConfiguration.Label();
  v8 = *(a1 + 40);
  v27[0] = &type metadata for TokenFieldConfiguration.Label;
  v27[1] = v7;
  v27[2] = v19[0];
  v27[3] = v8;
  type metadata accessor for StaticSourceWriter(255, v27);
  v9 = type metadata accessor for ModifiedContent();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v19 - v14;
  TokenField.configuration.getter(a1, v6);
  v21 = v7;
  v22 = *(a1 + 24);
  v23 = v8;
  v24 = *(a1 + 48);
  v25 = v2;
  v16 = lazy protocol witness table accessor for type ResolvedTokenFieldStyle and conformance ResolvedTokenFieldStyle();
  View.viewAlias<A, B>(_:_:)(&type metadata for TokenFieldConfiguration.Label, partial apply for closure #1 in TokenField.body.getter, v20, v4, &type metadata for TokenFieldConfiguration.Label, v7, v16);
  outlined destroy of ResolvedTokenFieldStyle(v6, type metadata accessor for ResolvedTokenFieldStyle);
  v26[0] = v16;
  v26[1] = &protocol witness table for StaticSourceWriter<A, B>;
  swift_getWitnessTable(MEMORY[0x1E697E858], v9, v26);
  static ViewBuilder.buildExpression<A>(_:)();
  v17 = *(v10 + 8);
  v17(v12, v9);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v17)(v15, v9);
}

uint64_t TokenField.configuration.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  outlined init with copy of Binding<AttributedString>(v3, a2);
  v8 = (v3 + *(a1 + 72));
  v9 = v8[1];
  v21 = *v8;
  v10 = v8[2];
  v11 = v8[3];
  (*(v6 + 16))(&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1);
  v12 = (*(v6 + 80) + 64) & ~*(v6 + 80);
  v13 = swift_allocObject();
  v14 = *(a1 + 32);
  *(v13 + 1) = *(a1 + 16);
  *(v13 + 2) = v14;
  *(v13 + 3) = *(a1 + 48);
  (*(v6 + 32))(&v13[v12], &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v15 = type metadata accessor for TokenFieldConfiguration(0);
  v16 = (a2 + *(v15 + 24));
  v17 = v21;
  *v16 = v21;
  v16[1] = v9;
  v16[2] = v10;
  v16[3] = v11;
  v18 = (a2 + *(v15 + 28));
  *v18 = partial apply for closure #1 in TokenField.configuration.getter;
  v18[1] = v13;
  return outlined copy of Text?(v17, v9, v10, v11);
}

uint64_t closure #1 in TokenField.body.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[0] = v6;
  v13[1] = v7;
  v13[2] = v8;
  v13[3] = v9;
  v13[4] = v10;
  v13[5] = v11;
  type metadata accessor for TokenField(0, v13);
  static ViewBuilder.buildExpression<A>(_:)();
  static ViewBuilder.buildExpression<A>(_:)();
  return (*(v3 + 8))(v5, a2);
}

uint64_t closure #1 in TokenField.configuration.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = a2;
  v22[0] = a1;
  MEMORY[0x1EEE9AC00](a1);
  v22[1] = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for Binding();
  v15 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v17 = v22 - v16;
  type metadata accessor for Binding<AnyToken>();
  v25 = a3;
  v26 = a4;
  v27 = a5;
  v28 = a6;
  v29 = a7;
  v30 = a8;
  v18 = type metadata accessor for TokenField.ToToken(0, &v25);
  swift_getWitnessTable(protocol conformance descriptor for TokenField<A, B, C>.ToToken, v18, v22[0]);
  Binding.projecting<A>(_:)();
  v25 = a3;
  v26 = a4;
  v27 = a5;
  v28 = a6;
  v29 = a7;
  v30 = a8;
  v19 = type metadata accessor for TokenField(0, &v25);
  (*(v24 + *(v19 + 68)))(v17);
  v20 = AnyView.init<A>(_:)();
  (*(v15 + 8))(v17, v23);
  return v20;
}

unint64_t lazy protocol witness table accessor for type ResolvedTokenFieldStyle and conformance ResolvedTokenFieldStyle()
{
  result = lazy protocol witness table cache variable for type ResolvedTokenFieldStyle and conformance ResolvedTokenFieldStyle;
  if (!lazy protocol witness table cache variable for type ResolvedTokenFieldStyle and conformance ResolvedTokenFieldStyle)
  {
    v3 = type metadata accessor for ResolvedTokenFieldStyle(255);
    result = swift_getWitnessTable(protocol conformance descriptor for ResolvedTokenFieldStyle, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedTokenFieldStyle and conformance ResolvedTokenFieldStyle);
  }

  return result;
}

uint64_t partial apply for closure #1 in TokenField.configuration.getter(uint64_t a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v12[0] = v1[2];
  v3 = v12[0];
  v12[1] = v4;
  v12[2] = v5;
  v12[3] = v6;
  v12[4] = v7;
  v12[5] = v8;
  v9 = *(type metadata accessor for TokenField(0, v12) - 8);
  v10 = v1 + ((*(v9 + 80) + 64) & ~*(v9 + 80));

  return closure #1 in TokenField.configuration.getter(a1, v10, v3, v4, v5, v6, v7, v8);
}

void type metadata accessor for Binding<AnyToken>()
{
  if (!lazy cache variable for type metadata for Binding<AnyToken>)
  {
    v0 = type metadata accessor for Binding();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Binding<AnyToken>);
    }
  }
}

uint64_t outlined destroy of ResolvedTokenFieldStyle(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double TokenField.ToToken.get(base:)(uint64_t a1)
{
  outlined init with copy of Any(a1, &v4);
  swift_dynamicCast();
  return result;
}

void *specialized TokenField.ToToken.set(base:newValue:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined destroy of AnyToken(v13);
  (*(v10 + 16))(v12, a2, a4);
  return AnyToken.init<A>(_:)(v12, a4, a1);
}

uint64_t TableRowContent.swipeActions<A>(edge:allowsFullSwipe:content:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, void (*a3)(double)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v10 = 0;
  v11 = 256;
  return TableRowContent.swipeActions<A>(edge:allowsFullSwipe:style:content:)(a1 & 1, a2, &v10, a3, a4, a5, a6, a7, a9, a8);
}

uint64_t TableRowContent.swipeActions<A>(edge:allowsFullSwipe:style:content:)@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t *a3@<X2>, void (*a4)(double)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v47 = a8;
  v45 = a9;
  v46 = a6;
  v40 = a5;
  v41 = a4;
  v43 = a1;
  v44 = a2;
  v42 = *(a7 - 8);
  v37 = a10;
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v32[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for _EnvironmentKeyTransformModifier<SymbolVariants>();
  v14 = type metadata accessor for ModifiedContent();
  v39 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v32[-v15];
  type metadata accessor for StyleContextWriter<SwipeActionsStyleContext>();
  v17 = type metadata accessor for ModifiedContent();
  MEMORY[0x1EEE9AC00](v17);
  v38 = &v32[-v18];
  v19 = _s7SwiftUI32_EnvironmentKeyTransformModifierVyAA14SymbolVariantsVGACyxGAA04ViewF0AAWlTm_0(&lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<SymbolVariants> and conformance _EnvironmentKeyTransformModifier<A>, type metadata accessor for _EnvironmentKeyTransformModifier<SymbolVariants>, MEMORY[0x1E6980B30]);
  v53[0] = a10;
  v53[1] = v19;
  v20 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v14, v53);
  v35 = WitnessTable;
  v22 = _s7SwiftUI32_EnvironmentKeyTransformModifierVyAA14SymbolVariantsVGACyxGAA04ViewF0AAWlTm_0(&lazy protocol witness table cache variable for type StyleContextWriter<SwipeActionsStyleContext> and conformance StyleContextWriter<A>, type metadata accessor for StyleContextWriter<SwipeActionsStyleContext>, MEMORY[0x1E697F4D0]);
  v52[0] = WitnessTable;
  v52[1] = v22;
  v36 = swift_getWitnessTable(v20, v17, v52);
  v24 = type metadata accessor for SwipeActionsTableRowModifier(0, v17, v36, v23);
  v25 = *(v24 - 8);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v32[-v27];
  v34 = *a3;
  v33 = *(a3 + 8);
  v29 = *(a3 + 9);
  v41(v26);
  static SymbolVariants.fill.getter();
  v51 = v48;
  View.symbolVariant(_:)();
  (*(v42 + 8))(v13, a7);
  v30 = v38;
  View.styleContext<A>(_:)();
  (*(v39 + 8))(v16, v14);
  v48 = v34;
  v49 = v33;
  v50 = v29;
  SwipeActionsTableRowModifier.init(edge:actions:allowsFullSwipe:style:)(v43 & 1, v30, v44, &v48, v17, v36, v28);
  swift_getWitnessTable(protocol conformance descriptor for SwipeActionsTableRowModifier<A>, v24);
  TableRowContent.modifier<A>(_:)(v28, v46, v24);
  return (*(v25 + 8))(v28, v24);
}

void type metadata accessor for _EnvironmentKeyTransformModifier<SymbolVariants>()
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<SymbolVariants>)
  {
    v0 = type metadata accessor for _EnvironmentKeyTransformModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<SymbolVariants>);
    }
  }
}

void type metadata accessor for StyleContextWriter<SwipeActionsStyleContext>()
{
  if (!lazy cache variable for type metadata for StyleContextWriter<SwipeActionsStyleContext>)
  {
    v0 = type metadata accessor for StyleContextWriter();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StyleContextWriter<SwipeActionsStyleContext>);
    }
  }
}

uint64_t SwipeActionsTableRowModifier.init(edge:actions:allowsFullSwipe:style:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _BYTE *a7@<X8>)
{
  v11 = *a4;
  v12 = *(a4 + 8);
  v13 = *(a4 + 9);
  *a7 = a1 & 1;
  v14 = type metadata accessor for SwipeActionsTableRowModifier(0, a5, a6, a4);
  result = (*(*(a5 - 8) + 32))(&a7[v14[9]], a2, a5);
  a7[v14[10]] = a3;
  v16 = &a7[v14[11]];
  *v16 = v11;
  v16[8] = v12;
  v16[9] = v13;
  return result;
}

uint64_t type metadata completion function for SwipeActionsTableRowModifier(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for SwipeActionsTableRowModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  v6 = *(v4 + 64);
  if (v5 > 7 || (*(v4 + 80) & 0x100000) != 0 || ((((v5 + 1) & ~v5) + v6) & 0xFFFFFFFFFFFFFFF8) + 18 > 0x18)
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v5 & 0xF8 ^ 0x1F8) & (v5 + 16)));
  }

  else
  {
    *a1 = *a2;
    v10 = (a1 + v5 + 1) & ~v5;
    v11 = (a2 + v5 + 1) & ~v5;
    (*(v4 + 16))(v10, v11);
    *(v10 + v6) = *(v11 + v6);
    v12 = (v10 + v6) & 0xFFFFFFFFFFFFFFF8;
    v13 = (v11 + v6) & 0xFFFFFFFFFFFFFFF8;
    v14 = *(v13 + 8);
    *(v12 + 16) = *(v13 + 16);
    *(v12 + 8) = v14;
  }

  return v3;
}

_BYTE *initializeWithCopy for SwipeActionsTableRowModifier(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  v5 = v4 + 16;
  v6 = *(v4 + 80);
  v7 = &a1[v6 + 1] & ~v6;
  v8 = &a2[v6 + 1] & ~v6;
  (*(v4 + 16))(v7, v8);
  v9 = *(v5 + 48);
  v10 = v9 + v7;
  v11 = v9 + v8;
  *v10 = *v11;
  v10 &= 0xFFFFFFFFFFFFFFF8;
  v11 &= 0xFFFFFFFFFFFFFFF8;
  v12 = *(v11 + 16);
  *(v10 + 8) = *(v11 + 8);
  *(v10 + 16) = v12;
  return a1;
}

_BYTE *assignWithCopy for SwipeActionsTableRowModifier(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  v5 = v4 + 24;
  v6 = *(v4 + 80);
  v7 = &a1[v6 + 1] & ~v6;
  v8 = &a2[v6 + 1] & ~v6;
  (*(v4 + 24))(v7, v8);
  v9 = *(v5 + 40);
  v10 = v9 + v7;
  v11 = v9 + v8;
  *v10 = *v11;
  v10 &= 0xFFFFFFFFFFFFFFF8;
  v11 &= 0xFFFFFFFFFFFFFFF8;
  v12 = *(v11 + 16);
  *(v10 + 8) = *(v11 + 8);
  *(v10 + 16) = v12;
  return a1;
}

_BYTE *initializeWithTake for SwipeActionsTableRowModifier(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  v5 = v4 + 32;
  v6 = *(v4 + 80);
  v7 = &a1[v6 + 1] & ~v6;
  v8 = &a2[v6 + 1] & ~v6;
  (*(v4 + 32))(v7, v8);
  v9 = *(v5 + 32);
  v10 = v9 + v7;
  v11 = v9 + v8;
  *v10 = *v11;
  v10 &= 0xFFFFFFFFFFFFFFF8;
  v11 &= 0xFFFFFFFFFFFFFFF8;
  v12 = *(v11 + 16);
  *(v10 + 8) = *(v11 + 8);
  *(v10 + 16) = v12;
  return a1;
}

_BYTE *assignWithTake for SwipeActionsTableRowModifier(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  v5 = v4 + 40;
  v6 = *(v4 + 80);
  v7 = &a1[v6 + 1] & ~v6;
  v8 = &a2[v6 + 1] & ~v6;
  (*(v4 + 40))(v7, v8);
  v9 = *(v5 + 24);
  v10 = v9 + v7;
  v11 = v9 + v8;
  *v10 = *v11;
  v10 &= 0xFFFFFFFFFFFFFFF8;
  v11 &= 0xFFFFFFFFFFFFFFF8;
  v12 = *(v11 + 16);
  *(v10 + 8) = *(v11 + 8);
  *(v10 + 16) = v12;
  return a1;
}

uint64_t getEnumTagSinglePayload for SwipeActionsTableRowModifier(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 1) & ~v6) + *(*(*(a3 + 16) - 8) + 64)) & 0xFFFFFFFFFFFFFFF8) + 18;
  v9 = (a2 - v7 + 0xFFFF) >> 16;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (*&a1[v8])
      {
        goto LABEL_24;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (v13)
      {
        goto LABEL_24;
      }
    }

LABEL_28:
    if (v5 > 0xFE)
    {
      return (*(v4 + 48))(&a1[v6 + 1] & ~v6);
    }

    v17 = *a1;
    if (v17 >= 2)
    {
      return v17 - 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v12)
  {
    goto LABEL_28;
  }

  v13 = a1[v8];
  if (!a1[v8])
  {
    goto LABEL_28;
  }

LABEL_24:
  v15 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

void storeEnumTagSinglePayload for SwipeActionsTableRowModifier(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((((v9 + 1) & ~v9) + *(*(*(a4 + 16) - 8) + 64)) & 0xFFFFFFFFFFFFFFF8) + 18;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 0xFFFF) >> 16;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v7 > 0xFE)
      {
        v17 = *(v6 + 56);
        v18 = &a1[v9 + 1] & ~v9;

        v17(v18);
      }

      else
      {
        *a1 = a2 + 1;
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, v10);
  if (v10 <= 3)
  {
    v16 = HIWORD(v15) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

uint64_t SwipeActionsTableRowModifier.body.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v6);
  v8 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = *(a1 + 16);
  result = (*(v4 + 32))(v9 + v8, v7, a1);
  *a2 = partial apply for closure #1 in SwipeActionsTableRowModifier.body.getter;
  a2[1] = v9;
  return result;
}

void closure #1 in SwipeActionsTableRowModifier.body.getter(void *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SwipeActionsTableRowModifier(0, v10, v11, v11);
  v13 = a2[v12[10]];
  v14 = &a2[v12[11]];
  v15 = *v14;
  v16 = v14[8];
  v17 = v14[9];
  (*(v7 + 16))(v9, &a2[v12[9]], a3);
  v18 = AnyView.init<A>(_:)();
  v19 = *a2;
  if (v19 == 1)
  {
    v20 = 7;
  }

  else
  {
    v20 = 3;
  }

  if (v19 == 1)
  {
    v21 = a1 + 4;
  }

  else
  {
    v21 = a1;
  }

  if (v19 == 1)
  {
    v22 = 5;
  }

  else
  {
    v22 = 1;
  }

  if (v19 == 1)
  {
    v23 = 6;
  }

  else
  {
    v23 = 2;
  }

  v24 = 256;
  if (!v17)
  {
    v24 = 0;
  }

  v25 = v24 | v16;

  *v21 = v13;
  a1[v22] = v15;
  a1[v23] = v25;
  a1[v20] = v18;
}

void partial apply for closure #1 in SwipeActionsTableRowModifier.body.getter(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for SwipeActionsTableRowModifier(0, v6, v7, a4) - 8);
  v9 = (v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80)));

  closure #1 in SwipeActionsTableRowModifier.body.getter(a1, v9, v6, v7);
}

double destroy for TableRowSwipeActionsTraitKey.Storage()
{

  return result;
}

uint64_t initializeWithCopy for TableRowSwipeActionsTraitKey.Storage(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t assignWithCopy for TableRowSwipeActionsTraitKey.Storage(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  v5 = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 40) = v5;
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t assignWithTake for TableRowSwipeActionsTraitKey.Storage(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t initializeWithCopy for TableRowSwipeActionsTraitKey.Item(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t assignWithCopy for TableRowSwipeActionsTraitKey.Item(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v3;
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t assignWithTake for TableRowSwipeActionsTraitKey.Item(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t static ContainerBackgroundPlacement.custom<A>(_:)@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  result = ContainerBackgroundKeys.AnyCustomKey.init<A>(_:)(a1, a1);
  *a2 = result;
  return result;
}

uint64_t static ContainerBackgroundPlacement.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 < 0)
  {
    if (v3 < 0 && v3 == v2)
    {
      return 1;
    }
  }

  else if (v2 == v3)
  {
    return 1;
  }

  return 0;
}

uint64_t ContainerBackgroundPlacement.hash(into:)()
{
  v1 = *v0;
  if (*v0 < 0)
  {
    MEMORY[0x18D00F6F0](1);
    v1 = v1;
  }

  else
  {
    MEMORY[0x18D00F6F0](0);
  }

  return MEMORY[0x18D00F6F0](v1);
}

Swift::Int ContainerBackgroundPlacement.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 < 0)
  {
    MEMORY[0x18D00F6F0](1);
    v1 = v1;
  }

  else
  {
    MEMORY[0x18D00F6F0](0);
  }

  MEMORY[0x18D00F6F0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ContainerBackgroundPlacement.Storage()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 < 0)
  {
    MEMORY[0x18D00F6F0](1);
    v1 = v1;
  }

  else
  {
    MEMORY[0x18D00F6F0](0);
  }

  MEMORY[0x18D00F6F0](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ContainerBackgroundPlacement.Storage()
{
  v1 = *v0;
  if (*v0 < 0)
  {
    MEMORY[0x18D00F6F0](1);
    v1 = v1;
  }

  else
  {
    MEMORY[0x18D00F6F0](0);
  }

  return MEMORY[0x18D00F6F0](v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ContainerBackgroundPlacement.Storage(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  if (v2 < 0)
  {
    MEMORY[0x18D00F6F0](1);
    v2 = v2;
  }

  else
  {
    MEMORY[0x18D00F6F0](0);
  }

  MEMORY[0x18D00F6F0](v2);
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance ContainerBackgroundPlacement(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 < 0)
  {
    return v3 < 0 && v3 == v2;
  }

  return v2 == v3;
}

double static ContainerBackgroundModifier._makeView(modifier:inputs:body:)@<D0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(void)@<X2>, void *a4@<X8>)
{
  v36 = a4;
  v6 = *a1;
  v7 = a2[3];
  v48[2] = a2[2];
  v49 = v7;
  v50 = a2[4];
  v51 = *(a2 + 20);
  v8 = a2[1];
  v48[0] = *a2;
  v48[1] = v8;
  v9 = swift_allocObject();
  v10 = a2[3];
  v44 = a2[2];
  v45 = v10;
  v46 = a2[4];
  v47 = *(a2 + 20);
  v11 = a2[1];
  v42 = *a2;
  v43 = v11;
  a3();
  for (i = 0; i != 5; ++i)
  {
    v23 = outlined read-only object #0 of static ContainerBackgroundModifier._makeView(modifier:inputs:body:)[i + 32];
    if (v23 <= 1)
    {
      v13 = &protocol witness table for ContainerBackgroundKeys.NavigationKey;
      if (outlined read-only object #0 of static ContainerBackgroundModifier._makeView(modifier:inputs:body:)[i + 32])
      {
        v13 = &protocol witness table for ContainerBackgroundKeys.NavigationSplitViewKey;
      }

      v14 = &protocol witness table for ContainerBackgroundKeys.NavigationKey;
      if (outlined read-only object #0 of static ContainerBackgroundModifier._makeView(modifier:inputs:body:)[i + 32])
      {
        v14 = &protocol witness table for ContainerBackgroundKeys.NavigationSplitViewKey;
      }

      v15 = &type metadata for ContainerBackgroundKeys.NavigationKey;
      if (outlined read-only object #0 of static ContainerBackgroundModifier._makeView(modifier:inputs:body:)[i + 32])
      {
        v15 = &type metadata for ContainerBackgroundKeys.NavigationSplitViewKey;
      }

      goto LABEL_8;
    }

    if (v23 != 2 && v23 == 3)
    {
      v13 = &protocol witness table for ContainerBackgroundKeys.PresentationKey;
      v14 = &protocol witness table for ContainerBackgroundKeys.PresentationKey;
      v15 = &type metadata for ContainerBackgroundKeys.PresentationKey;
LABEL_8:
      v39 = 0uLL;
      *&v40 = 0;
      *(&v40 + 1) = v15;
      *&v41 = v14;
      *(&v41 + 1) = v13;
      outlined init with take of MutableCollection & RangeReplaceableCollection(&v39, &v42);
      v16 = *(&v43 + 1);
      v17 = v44;
      v18 = __swift_project_boxed_opaque_existential_1(&v42, *(&v43 + 1));
      MEMORY[0x1EEE9AC00](v18);
      v32 = v48;
      v33 = v6;
      v34 = v9;
      v35 = v23;
      MEMORY[0x1EEE9AC00](v19);
      v28[2] = v16;
      v29 = v17;
      v30 = partial apply for closure #1 in static ContainerBackgroundModifier._makeView(modifier:inputs:body:);
      v31 = v20;
      static ContainerBackgroundKind.Builtin.apply<A, B>(key:_:)(v21, partial apply for thunk for @callee_guaranteed (@unowned @thick ContainerBackgroundPlacementKey & HostPreferenceKey.Type) -> (), v28, v16);
      v22 = __swift_destroy_boxed_opaque_existential_1(&v42);
      continue;
    }

    v40 = 0u;
    v41 = 0u;
    v39 = 0u;
    v22 = outlined destroy of (ContainerBackgroundPlacementKey & HostPreferenceKey)?(&v39);
  }

  *&v39 = v49;
  DWORD2(v39) = DWORD2(v49);
  v37[2] = v49;
  v38 = DWORD2(v49);
  MEMORY[0x1EEE9AC00](v22);
  v34 = __PAIR64__(v25, v6);
  swift_beginAccess();
  outlined init with copy of PreferencesInputs(&v39, v37);
  PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
  swift_endAccess();

  v26 = v36;
  *v36 = *(v9 + 16);
  v26[1] = *(v9 + 24);

  return result;
}

uint64_t transformKey #1 <A>(_:dependsOnEnvironment:) in static ContainerBackgroundModifier._makeView(modifier:inputs:body:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    a1 = swift_beginAccess();
  }

  v10 = *(a3 + 48);
  v11 = *(a3 + 56);
  v8 = *(a3 + 48);
  v9 = *(a3 + 56);
  MEMORY[0x1EEE9AC00](a1);
  swift_beginAccess();
  outlined init with copy of PreferencesInputs(&v10, v7);
  PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
  swift_endAccess();
}

uint64_t implicit closure #1 in transformKey #1 <A>(_:dependsOnEnvironment:) in static ContainerBackgroundModifier._makeView(modifier:inputs:body:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = a1;
  v9 = a2;
  v11 = type metadata accessor for ContainerBackgroundModifier.PreferenceValue(0, a3, a4, a4);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ContainerBackgroundModifier.PreferenceValue<A>, v11);
  type metadata accessor for Attribute<(_:)>(0);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v8, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_24, v10, v11, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);
  return v7;
}

uint64_t implicit closure #1 in static ContainerBackgroundModifier._makeView(modifier:inputs:body:)(uint64_t a1)
{
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for (_:)(0, &lazy cache variable for type metadata for (_:), &type metadata for ContainerBackgroundKeys.CustomValue, &parameter_flags_35);
  lazy protocol witness table accessor for type ContainerBackgroundModifier.CustomPreferenceValue and conformance ContainerBackgroundModifier.CustomPreferenceValue();
  return Attribute.init<A>(body:value:flags:update:)();
}

void ContainerBackgroundModifier.transformPreference(_:placement:environment:)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a2;
  v7 = *a3;
  v6 = a3[1];
  v9 = *(v3 + 8);
  v8 = *(v3 + 16);
  v10 = *(v3 + 24);
  if (!v9)
  {
    goto LABEL_11;
  }

  v12 = *a1;
  v11 = *(a1 + 8);
  if (v11 >> 62)
  {
    if (v11 >> 62 != 1)
    {

      if (v8)
      {
        goto LABEL_7;
      }

LABEL_9:
      outlined consume of ContainerBackgroundValue.Content(v12, v11);
      v13 = 0;
      goto LABEL_10;
    }

    outlined copy of ContainerBackgroundValue.Content(v12, v11);
  }

  else
  {

    outlined copy of ContainerBackgroundValue.Content(v12, v11);
  }

  static Alignment.center.getter();
  type metadata accessor for ModifiedContent<AnyView, _BackgroundModifier<AnyView>>(0);
  lazy protocol witness table accessor for type ModifiedContent<AnyView, _BackgroundModifier<AnyView>> and conformance <> ModifiedContent<A, B>();
  v9 = AnyView.init<A>(_:)();
  if (!v8)
  {
    goto LABEL_9;
  }

LABEL_7:

  outlined consume of ContainerBackgroundValue.Content(v12, v11);
  v13 = v8 | 0x4000000000000000;
LABEL_10:
  *a1 = v9;
  *(a1 + 8) = v13;
LABEL_11:
  if (v5 < 0)
  {
    v14 = v5;
  }

  else
  {
    v14 = 5;
  }

  LOBYTE(v16) = v14;

  EnvironmentValues.containerBackgroundKind.setter();
  *(a1 + 24) = v7;
  *(a1 + 32) = v6;

  if (v10 == 2)
  {
    if (!v8 || (*(a1 + 16) & 1) != 0)
    {

      return;
    }

    ShapeStyle.resolveBackgroundMaterial(in:level:)();

    if (v17 != 255)
    {
      outlined consume of Material?(v16, v17);
    }

    v15 = v17 != 255;
  }

  else
  {

    v15 = (*(a1 + 16) | v10) & 1;
  }

  *(a1 + 16) = v15;
}

double ContainerBackgroundModifier.PreferenceValue.modifier.getter@<D0>(uint64_t a2@<X8>)
{
  Value = AGGraphGetValue();
  v4 = *(Value + 8);
  v5 = *(Value + 16);
  v6 = *(Value + 24);
  *a2 = *Value;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;

  return result;
}

void ContainerBackgroundModifier.PreferenceValue.environment.getter(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  if (*MEMORY[0x1E698D3F8] == a1)
  {
    v3 = 0;
    v4 = 1;
  }

  else
  {
    Value = AGGraphGetValue();
    v4 = *Value;
    v3 = Value[1];
  }

  *a2 = v4;
  a2[1] = v3;
}

void (*ContainerBackgroundModifier.PreferenceValue.value.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  ContainerBackgroundModifier.PreferenceValue.modifier.getter(&v17);
  v8 = v17;

  (*(a4 + 16))(&v15, a3, a4);
  if (v8 < 0)
  {
    if ((v15 & 0x8000000000000000) == 0 || v15 != v8)
    {
      return destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
    }
  }

  else if (v15 < 0 || v8 != v15)
  {
    return destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
  }

  ContainerBackgroundModifier.PreferenceValue.environment.getter(a2, &v15);
  v9 = v15;
  if (v15 == 1)
  {
    v10 = &v18;
    EnvironmentValues.init()();
    v9 = v17;
  }

  else
  {
    v10 = &v16;
  }

  v12 = *v10;
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  *(v13 + 32) = a1;
  *(v13 + 40) = a2;
  *(v13 + 48) = v9;
  *(v13 + 56) = v12;
  return partial apply for closure #2 in ContainerBackgroundModifier.PreferenceValue.value.getter;
}

double closure #2 in ContainerBackgroundModifier.PreferenceValue.value.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  ContainerBackgroundModifier.PreferenceValue.modifier.getter(&v18);
  v15 = v18;
  v16 = v19;
  v17 = v20;
  (*(a7 + 16))(&v14, a6, a7);
  v13[0] = a4;
  v13[1] = a5;
  ContainerBackgroundModifier.transformPreference(_:placement:environment:)(a1, &v14, v13);

  return result;
}

uint64_t protocol witness for Rule.value.getter in conformance ContainerBackgroundModifier.PreferenceValue<A>@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v4 = ContainerBackgroundModifier.PreferenceValue.value.getter(*v2, *(v2 + 8), *(a1 + 16), *(a1 + 24));
  v6 = v5;
  result = swift_allocObject();
  *(result + 16) = v4;
  *(result + 24) = v6;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@inout AccessibilityLargeContentViewTree) -> ();
  a2[1] = result;
  return result;
}

void closure #2 in ContainerBackgroundModifier.CustomPreferenceValue.value.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(AGGraphGetValue() + 8))
  {

    specialized Dictionary.subscript.setter(v4, a3);
  }
}

uint64_t protocol witness for Rule.value.getter in conformance ContainerBackgroundModifier.CustomPreferenceValue@<X0>(uint64_t (**a1)(uint64_t a1)@<X8>)
{
  v7 = *v1;
  v3 = *AGGraphGetValue();
  if (v3 < 0)
  {
    v5 = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
    v4 = 0;
  }

  else
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v7;
    *(v4 + 24) = v3;
    v5 = partial apply for closure #2 in ContainerBackgroundModifier.CustomPreferenceValue.value.getter;
  }

  result = swift_allocObject();
  *(result + 16) = v5;
  *(result + 24) = v4;
  *a1 = partial apply for thunk for @escaping @callee_guaranteed (@inout PlatformItemList) -> ();
  a1[1] = result;
  return result;
}

uint64_t View.containerBackground<A>(_:for:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for OrOperationViewInputPredicate<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, InterfaceIdiomPredicate<ComplicationInterfaceIdiom>>(0);
  v7 = type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type _BackgroundPreferenceModifier<ContainerBackgroundKeys.CustomKey, AnyView??> and conformance _BackgroundPreferenceModifier<A, B>(&lazy protocol witness table cache variable for type OrOperationViewInputPredicate<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, InterfaceIdiomPredicate<ComplicationInterfaceIdiom>> and conformance OrOperationViewInputPredicate<A, B>, type metadata accessor for OrOperationViewInputPredicate<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, InterfaceIdiomPredicate<ComplicationInterfaceIdiom>>, MEMORY[0x1E6980940]);
  v9[0] = a5;
  v9[1] = &protocol witness table for ContainerBackgroundModifier;
  swift_getWitnessTable(MEMORY[0x1E697E858], v7, v9);
  return StaticIf<>.init(_:then:else:)();
}

double closure #1 in View.containerBackground<A>(_:for:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, uint64_t a9)
{
  v34 = a6;
  v35 = a2;
  v32 = a4;
  v33 = a1;
  v31 = a8;
  v30 = *(a5 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v29 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v14(v12);
  v37 = a9;
  v38 = a5;
  v39 = v15;
  v40 = a7;
  v16 = type metadata accessor for _ShapeView();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v28 - v18;
  type metadata accessor for _EnvironmentKeyWritingModifier<ContainerBackgroundKind?>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<ContainerBackgroundKind?>, &lazy cache variable for type metadata for ContainerBackgroundKind?, MEMORY[0x1E6980180], MEMORY[0x1E6980A08]);
  v20 = type metadata accessor for ModifiedContent();
  MEMORY[0x1EEE9AC00](v20);
  Shape.fill<A>(_:style:)(a3, 256, a9, a5, v15, a7);
  swift_getKeyPath();
  if (v35 < 0)
  {
    v21 = v35;
  }

  else
  {
    v21 = 5;
  }

  LOBYTE(v37) = v21;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697DB78], v16);
  View.environment<A>(_:_:)();

  v23 = (*(v17 + 8))(v19, v16);
  v24 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ContainerBackgroundKind?> and conformance _EnvironmentKeyWritingModifier<A>(v23);
  v36[0] = WitnessTable;
  v36[1] = v24;
  swift_getWitnessTable(MEMORY[0x1E697E858], v20, v36);
  v25 = AnyView.init<A>(_:)();
  (*(v30 + 16))(v29, a3, a5);
  v26 = AnyShapeStyle.init<A>(_:)();
  v37 = v35;
  v38 = v25;
  v39 = v26;
  LOBYTE(v40) = 2;
  MEMORY[0x18D00A570](&v37, v32, &type metadata for ContainerBackgroundModifier, v34);

  return result;
}

double View.containerBackground<A>(for:alignment:content:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v34 = a6;
  v30 = a8;
  v29 = a5;
  v28 = a4;
  v31 = a2;
  v32 = a3;
  v33 = a9;
  v27 = a10;
  swift_getTupleTypeMetadata2();
  v13 = type metadata accessor for TupleView();
  swift_getWitnessTable(MEMORY[0x1E6981F48], v13);
  v14 = type metadata accessor for ZStack();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v26 - v16;
  type metadata accessor for _EnvironmentKeyWritingModifier<ContainerBackgroundKind?>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<ContainerBackgroundKind?>, &lazy cache variable for type metadata for ContainerBackgroundKind?, MEMORY[0x1E6980180], MEMORY[0x1E6980A08]);
  v18 = type metadata accessor for ModifiedContent();
  MEMORY[0x1EEE9AC00](v18);
  v19 = *a1;
  v35 = v34;
  v36 = a7;
  v37 = a8;
  v38 = v27;
  v39 = v28;
  v40 = v29;
  ZStack.init(alignment:content:)();
  swift_getKeyPath();
  if (v19 < 0)
  {
    v20 = v19;
  }

  else
  {
    v20 = 5;
  }

  LOBYTE(v41[0]) = v20;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E6981880], v14);
  View.environment<A>(_:_:)();

  v22 = (*(v15 + 8))(v17, v14);
  v23 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ContainerBackgroundKind?> and conformance _EnvironmentKeyWritingModifier<A>(v22);
  v43[0] = WitnessTable;
  v43[1] = v23;
  swift_getWitnessTable(MEMORY[0x1E697E858], v18, v43);
  v24 = AnyView.init<A>(_:)();
  v41[0] = v19;
  v41[1] = v24;
  v41[2] = 0;
  v42 = 2;
  MEMORY[0x18D00A570](v41, v34, &type metadata for ContainerBackgroundModifier, v30);

  return result;
}

uint64_t View.containerBackground<A>(_:for:allowsVibrancy:)(uint64_t a1, uint64_t *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  type metadata accessor for OrOperationViewInputPredicate<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, InterfaceIdiomPredicate<ComplicationInterfaceIdiom>>(0);
  v8 = type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type _BackgroundPreferenceModifier<ContainerBackgroundKeys.CustomKey, AnyView??> and conformance _BackgroundPreferenceModifier<A, B>(&lazy protocol witness table cache variable for type OrOperationViewInputPredicate<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, InterfaceIdiomPredicate<ComplicationInterfaceIdiom>> and conformance OrOperationViewInputPredicate<A, B>, type metadata accessor for OrOperationViewInputPredicate<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, InterfaceIdiomPredicate<ComplicationInterfaceIdiom>>, MEMORY[0x1E6980940]);
  v10[0] = a6;
  v10[1] = &protocol witness table for ContainerBackgroundModifier;
  swift_getWitnessTable(MEMORY[0x1E697E858], v8, v10);
  return StaticIf<>.init(_:then:else:)();
}

double closure #1 in View.containerBackground<A>(_:for:allowsVibrancy:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v36 = a5;
  v37 = a7;
  v33 = a4;
  v38 = a2;
  v34 = a9;
  v35 = a1;
  v32 = *(a6 - 8);
  v14 = MEMORY[0x1EEE9AC00](a1);
  v31 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v16(v14);
  v40 = a11;
  v41 = a6;
  v42 = v17;
  v43 = a8;
  v30[1] = a8;
  v18 = type metadata accessor for _ShapeView();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v30 - v20;
  type metadata accessor for _EnvironmentKeyWritingModifier<ContainerBackgroundKind?>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<ContainerBackgroundKind?>, &lazy cache variable for type metadata for ContainerBackgroundKind?, MEMORY[0x1E6980180], MEMORY[0x1E6980A08]);
  v22 = type metadata accessor for ModifiedContent();
  MEMORY[0x1EEE9AC00](v22);
  Shape.fill<A>(_:style:)(a3, 256, a11, a6, v17, a8);
  swift_getKeyPath();
  if (v38 < 0)
  {
    v23 = v38;
  }

  else
  {
    v23 = 5;
  }

  LOBYTE(v40) = v23;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697DB78], v18);
  View.environment<A>(_:_:)();

  v25 = (*(v19 + 8))(v21, v18);
  v26 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ContainerBackgroundKind?> and conformance _EnvironmentKeyWritingModifier<A>(v25);
  v39[0] = WitnessTable;
  v39[1] = v26;
  swift_getWitnessTable(MEMORY[0x1E697E858], v22, v39);
  v27 = AnyView.init<A>(_:)();
  (*(v32 + 16))(v31, a3, a6);
  v28 = AnyShapeStyle.init<A>(_:)();
  v40 = v38;
  v41 = v27;
  v42 = v28;
  LOBYTE(v43) = v33;
  MEMORY[0x18D00A570](&v40, v36, &type metadata for ContainerBackgroundModifier, v37);

  return result;
}

double View.containerBackground<A>(for:allowsVibrancy:alignment:content:)@<D0>(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v26 = a8;
  v30 = a7;
  v29 = a6;
  v28 = a5;
  v31 = a3;
  v32 = a4;
  v33 = a2;
  v34 = a9;
  v27 = a11;
  swift_getTupleTypeMetadata2();
  v13 = type metadata accessor for TupleView();
  swift_getWitnessTable(MEMORY[0x1E6981F48], v13);
  v14 = type metadata accessor for ZStack();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v26 - v16;
  type metadata accessor for _EnvironmentKeyWritingModifier<ContainerBackgroundKind?>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<ContainerBackgroundKind?>, &lazy cache variable for type metadata for ContainerBackgroundKind?, MEMORY[0x1E6980180], MEMORY[0x1E6980A08]);
  v18 = type metadata accessor for ModifiedContent();
  MEMORY[0x1EEE9AC00](v18);
  v19 = *a1;
  v35 = a7;
  v36 = v26;
  v37 = a10;
  v38 = v27;
  v39 = v28;
  v40 = v29;
  ZStack.init(alignment:content:)();
  swift_getKeyPath();
  if (v19 < 0)
  {
    v20 = v19;
  }

  else
  {
    v20 = 5;
  }

  LOBYTE(v41[0]) = v20;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E6981880], v14, v26, v27, v28, v29);
  View.environment<A>(_:_:)();

  v22 = (*(v15 + 8))(v17, v14);
  v23 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ContainerBackgroundKind?> and conformance _EnvironmentKeyWritingModifier<A>(v22);
  v43[0] = WitnessTable;
  v43[1] = v23;
  swift_getWitnessTable(MEMORY[0x1E697E858], v18, v43);
  v24 = AnyView.init<A>(_:)();
  v41[0] = v19;
  v41[1] = v24;
  v41[2] = 0;
  v42 = v33;
  MEMORY[0x18D00A570](v41, v30, &type metadata for ContainerBackgroundModifier, a10);

  return result;
}

double closure #1 in View.containerBackground<A>(for:alignment:content:)(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v18 - v13;
  v15 = static Color.clear.getter();
  a1();
  static ViewBuilder.buildExpression<A>(_:)();
  v16 = *(v9 + 8);
  v16(v11, a4);
  v20 = v15;
  v21[0] = &v20;
  (*(v9 + 16))(v11, v14, a4);
  v21[1] = v11;

  v19[0] = MEMORY[0x1E69815C0];
  v19[1] = a4;
  v18[1] = MEMORY[0x1E6981580];
  v18[2] = a6;
  static ViewBuilder.buildBlock<each A>(_:)(v21, 2uLL, v19);

  v16(v14, a4);
  v16(v11, a4);

  return result;
}

double View.applyContainerBackground<A>(for:isEnabled:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  *(v9 + 32) = a5;
  *(v9 + 40) = a2;
  static Alignment.center.getter();
  type metadata accessor for _EnvironmentKeyWritingModifier<ContainerBackgroundKind?>(0, &lazy cache variable for type metadata for AnyView??, &lazy cache variable for type metadata for AnyView?, MEMORY[0x1E6981910], MEMORY[0x1E69E6720]);
  lazy protocol witness table accessor for type AnyView?? and conformance <A> A?();
  View.backgroundPreferenceValue<A, B>(_:alignment:_:)();

  return result;
}

void closure #1 in View.applyContainerBackground<A>(for:isEnabled:)(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  if (a2)
  {
    v5 = *a1;
    v6 = ContainerBackgroundKeys.AnyCustomKey.init<A>(_:)(a3, a3);
    if (*(v5 + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v6), (v7 & 1) != 0))
    {
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 1;
  }

  *a4 = v8;
}

double View.applyContainerBackground<A, B>(for:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = swift_allocObject();
  v15[2] = a4;
  v15[3] = a5;
  v15[4] = a6;
  v15[5] = a7;
  v15[6] = a8;
  v15[7] = a2;
  v15[8] = a3;

  static Alignment.center.getter();
  View.backgroundPreferenceValue<A, B>(_:alignment:_:)();

  return result;
}

uint64_t closure #1 in View.applyContainerBackground<A, B>(for:content:)(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - v12;
  v15 = *v14;
  v17 = ContainerBackgroundKeys.AnyCustomKey.init<A>(_:)(v16, v16);
  if (*(v15 + 16) && (v18 = specialized __RawDictionaryStorage.find<A>(_:)(v17), (v19 & 1) != 0))
  {
    v20 = *(*(v15 + 56) + 8 * v18);
  }

  else
  {
    v20 = 0;
  }

  a2(v20);

  static ViewBuilder.buildExpression<A>(_:)();
  v21 = *(v8 + 8);
  v21(v10, a6);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v21)(v13, a6);
}

void View.containerBackgroundSpecifiedPreference<A, B>(key:placement:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  type metadata accessor for ContainerBackground.CustomSpecifiedPreferenceModifier(0, a4, a5, a7);

  JUMPOUT(0x18D00A570);
}

double View.containerBackground<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = a4;
  v7[5] = a5;
  type metadata accessor for Optional();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in View.containerBackground<A>(_:), v7, MEMORY[0x1E69E73E0], MEMORY[0x1E6981910], v5, &v8);
  v7[7] = v8;
  View._trait<A>(_:_:)();

  return result;
}

uint64_t closure #1 in View.containerBackground<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a4@<X8>)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  result = AnyView.init<A>(_:)();
  *a4 = result;
  return result;
}

uint64_t implicit closure #1 in static ContainerBackground.CustomSpecifiedPreferenceModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E698D3F8];
  if ((a1 & 0x100000000) == 0)
  {
    v4 = a1;
  }

  v9 = v4;
  v11 = type metadata accessor for ContainerBackground.Specified(0, a3, a3, a4);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ContainerBackground.Specified<A>, v11);
  type metadata accessor for ContainerBackgroundKind?(0, &lazy cache variable for type metadata for Attribute<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v9, closure #1 in Attribute.init<A>(_:)partial apply, v10, v11, MEMORY[0x1E69E73E0], v5, MEMORY[0x1E69E7410], v6);
  return v8;
}

double ContainerBackground.Specified.childValue.getter(uint64_t a1)
{
  if (*MEMORY[0x1E698D3F8] != a1)
  {
    AGGraphGetValue();
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance ContainerBackground.CustomSpecifiedPreferenceModifier<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ContainerBackground.CustomSpecifiedPreferenceModifier<A, B>, a5);

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t ContainerBackground.Specified.value.getter(uint64_t a1, uint64_t a2)
{
  ContainerBackground.Specified.childValue.getter(a1);
  if (v3)
  {
    v4 = v3;
    v5 = ContainerBackgroundKeys.AnyCustomKey.init<A>(_:)(a2, a2);
    if (*(v4 + 16))
    {
      specialized __RawDictionaryStorage.find<A>(_:)(v5);
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t protocol witness for Rule.value.getter in conformance ContainerBackground.Specified<A>@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = ContainerBackground.Specified.value.getter(*v2, *(a1 + 16));
  *a2 = result & 1;
  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance ContainerBackground.Specified<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ContainerBackground.Specified<A>, a1);

  return MEMORY[0x1EEDDE9B8](a1, WitnessTable);
}

uint64_t lazy protocol witness table accessor for type _BackgroundPreferenceModifier<ContainerBackgroundKeys.CustomKey, AnyView??> and conformance _BackgroundPreferenceModifier<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ContainerBackgroundKind?> and conformance _EnvironmentKeyWritingModifier<A>(double a1)
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ContainerBackgroundKind?> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ContainerBackgroundKind?> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<ContainerBackgroundKind?>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<ContainerBackgroundKind?>, &lazy cache variable for type metadata for ContainerBackgroundKind?, MEMORY[0x1E6980180], MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable(MEMORY[0x1E6980A18], v4, v1, v2);
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ContainerBackgroundKind?> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

void type metadata accessor for _EnvironmentKeyWritingModifier<ContainerBackgroundKind?>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for ContainerBackgroundKind?(255, a3, a4, MEMORY[0x1E69E6720]);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AnyView?? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type AnyView?? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type AnyView?? and conformance <A> A?)
  {
    v5[3] = v0;
    v5[4] = v1;
    type metadata accessor for _EnvironmentKeyWritingModifier<ContainerBackgroundKind?>(255, &lazy cache variable for type metadata for AnyView??, &lazy cache variable for type metadata for AnyView?, MEMORY[0x1E6981910], MEMORY[0x1E69E6720]);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type AnyView? and conformance <A> A?();
    result = swift_getWitnessTable(MEMORY[0x1E6982090], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type AnyView?? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ContainerBackgroundPlacement and conformance ContainerBackgroundPlacement()
{
  result = lazy protocol witness table cache variable for type ContainerBackgroundPlacement and conformance ContainerBackgroundPlacement;
  if (!lazy protocol witness table cache variable for type ContainerBackgroundPlacement and conformance ContainerBackgroundPlacement)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ContainerBackgroundPlacement, &type metadata for ContainerBackgroundPlacement, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ContainerBackgroundPlacement and conformance ContainerBackgroundPlacement);
  }

  return result;
}

void type metadata accessor for _BackgroundPreferenceModifier<ContainerBackgroundKeys.CustomKey, AnyView??>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _BackgroundPreferenceModifier<ContainerBackgroundKeys.CustomKey, AnyView??>)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<ContainerBackgroundKind?>(255, &lazy cache variable for type metadata for AnyView??, &lazy cache variable for type metadata for AnyView?, MEMORY[0x1E6981910], MEMORY[0x1E69E6720]);
    lazy protocol witness table accessor for type AnyView?? and conformance <A> A?();
    v1 = type metadata accessor for _BackgroundPreferenceModifier();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _BackgroundPreferenceModifier<ContainerBackgroundKeys.CustomKey, AnyView??>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _TraitWritingModifier<ContainerBackgroundTraitKey> and conformance _TraitWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _TraitWritingModifier<ContainerBackgroundTraitKey> and conformance _TraitWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _TraitWritingModifier<ContainerBackgroundTraitKey> and conformance _TraitWritingModifier<A>)
  {
    _s7SwiftUI23InterfaceIdiomPredicateVyAA06WidgetcD0VGMaTm_1(255, &lazy cache variable for type metadata for _TraitWritingModifier<ContainerBackgroundTraitKey>, &type metadata for ContainerBackgroundTraitKey, &protocol witness table for ContainerBackgroundTraitKey, MEMORY[0x1E697FDB8]);
    result = swift_getWitnessTable(MEMORY[0x1E697FDC0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _TraitWritingModifier<ContainerBackgroundTraitKey> and conformance _TraitWritingModifier<A>);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContainerBackgroundPlacement(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF && *(a1 + 8))
  {
    return (*a1 + 15);
  }

  v3 = (((*a1 >> 60) >> 3) & 0xFFFFFFF1 | (2 * ((*a1 >> 60) & 7))) ^ 0xF;
  if (v3 >= 0xE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for ContainerBackgroundPlacement(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xE)
  {
    *result = a2 - 15;
    if (a3 >= 0xF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = (((-a2 >> 1) & 7) - 8 * a2) << 60;
    }
  }

  return result;
}

uint64_t assignWithTake for ContainerBackgroundValue(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  outlined consume of ContainerBackgroundValue.Content(v4, v5);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t initializeWithCopy for ContainerBackgroundModifier(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t assignWithCopy for ContainerBackgroundModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t assignWithTake for ContainerBackgroundModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t getEnumTagSinglePayload for ContainerBackgroundModifier(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 25))
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

uint64_t storeEnumTagSinglePayload for ContainerBackgroundModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ContainerBackgroundPlacement.Storage and conformance ContainerBackgroundPlacement.Storage()
{
  result = lazy protocol witness table cache variable for type ContainerBackgroundPlacement.Storage and conformance ContainerBackgroundPlacement.Storage;
  if (!lazy protocol witness table cache variable for type ContainerBackgroundPlacement.Storage and conformance ContainerBackgroundPlacement.Storage)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ContainerBackgroundPlacement.Storage, &type metadata for ContainerBackgroundPlacement.Storage, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ContainerBackgroundPlacement.Storage and conformance ContainerBackgroundPlacement.Storage);
  }

  return result;
}

uint64_t outlined destroy of (ContainerBackgroundPlacementKey & HostPreferenceKey)?(uint64_t a1)
{
  type metadata accessor for (ContainerBackgroundPlacementKey & HostPreferenceKey)?(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for (ContainerBackgroundPlacementKey & HostPreferenceKey)?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (ContainerBackgroundPlacementKey & HostPreferenceKey)?)
  {
    type metadata accessor for ContainerBackgroundPlacementKey & HostPreferenceKey();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for (ContainerBackgroundPlacementKey & HostPreferenceKey)?);
    }
  }
}

unint64_t type metadata accessor for ContainerBackgroundPlacementKey & HostPreferenceKey()
{
  result = lazy cache variable for type metadata for ContainerBackgroundPlacementKey & HostPreferenceKey;
  if (!lazy cache variable for type metadata for ContainerBackgroundPlacementKey & HostPreferenceKey)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for ContainerBackgroundPlacementKey & HostPreferenceKey);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ContainerBackgroundModifier.CustomPreferenceValue and conformance ContainerBackgroundModifier.CustomPreferenceValue()
{
  result = lazy protocol witness table cache variable for type ContainerBackgroundModifier.CustomPreferenceValue and conformance ContainerBackgroundModifier.CustomPreferenceValue;
  if (!lazy protocol witness table cache variable for type ContainerBackgroundModifier.CustomPreferenceValue and conformance ContainerBackgroundModifier.CustomPreferenceValue)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ContainerBackgroundModifier.CustomPreferenceValue, &unk_1EFFDA0A0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ContainerBackgroundModifier.CustomPreferenceValue and conformance ContainerBackgroundModifier.CustomPreferenceValue);
  }

  return result;
}

BOOL specialized static ContainerBackgroundPlacement.Storage.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2 == *a1;
  if (*a2 >= 0)
  {
    v3 = 0;
  }

  if (v2 >= 0)
  {
    return v2 == *a2;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type ImplicitContainerShape and conformance ImplicitContainerShape()
{
  result = lazy protocol witness table cache variable for type ImplicitContainerShape and conformance ImplicitContainerShape;
  if (!lazy protocol witness table cache variable for type ImplicitContainerShape and conformance ImplicitContainerShape)
  {
    result = swift_getWitnessTable(MEMORY[0x1E697FE90], MEMORY[0x1E697FE98], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ImplicitContainerShape and conformance ImplicitContainerShape);
  }

  return result;
}

uint64_t *assignWithCopy for ContainerBackgroundValue.Content(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  outlined copy of ContainerBackgroundValue.Content(*a2, v4);
  v5 = *a1;
  v6 = a1[1];
  *a1 = v3;
  a1[1] = v4;
  outlined consume of ContainerBackgroundValue.Content(v5, v6);
  return a1;
}

uint64_t *assignWithTake for ContainerBackgroundValue.Content(uint64_t *a1, _OWORD *a2)
{
  v3 = *a1;
  v4 = a1[1];
  *a1 = *a2;
  outlined consume of ContainerBackgroundValue.Content(v3, v4);
  return a1;
}

void type metadata accessor for ModifiedContent<AnyView, _BackgroundModifier<AnyView>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<AnyView, _BackgroundModifier<AnyView>>)
  {
    _s7SwiftUI23InterfaceIdiomPredicateVyAA06WidgetcD0VGMaTm_1(255, &lazy cache variable for type metadata for _BackgroundModifier<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], MEMORY[0x1E697F930]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<AnyView, _BackgroundModifier<AnyView>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<AnyView, _BackgroundModifier<AnyView>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<AnyView, _BackgroundModifier<AnyView>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<AnyView, _BackgroundModifier<AnyView>> and conformance <> ModifiedContent<A, B>)
  {
    v6[4] = v0;
    v6[5] = v1;
    type metadata accessor for ModifiedContent<AnyView, _BackgroundModifier<AnyView>>(255);
    v4 = v3;
    v5 = lazy protocol witness table accessor for type _BackgroundModifier<AnyView> and conformance _BackgroundModifier<A>();
    v6[0] = MEMORY[0x1E6981900];
    v6[1] = v5;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v6);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<AnyView, _BackgroundModifier<AnyView>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _BackgroundModifier<AnyView> and conformance _BackgroundModifier<A>()
{
  result = lazy protocol witness table cache variable for type _BackgroundModifier<AnyView> and conformance _BackgroundModifier<A>;
  if (!lazy protocol witness table cache variable for type _BackgroundModifier<AnyView> and conformance _BackgroundModifier<A>)
  {
    _s7SwiftUI23InterfaceIdiomPredicateVyAA06WidgetcD0VGMaTm_1(255, &lazy cache variable for type metadata for _BackgroundModifier<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], MEMORY[0x1E697F930]);
    result = swift_getWitnessTable(MEMORY[0x1E697F940], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _BackgroundModifier<AnyView> and conformance _BackgroundModifier<A>);
  }

  return result;
}

uint64_t _VariadicView_Children.tagIndex<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Binding();
  return Binding<A>.projectingTagIndex(viewList:)();
}

{
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  ViewList.applySublists(from:style:list:to:)();
  return 0;
}

uint64_t closure #1 in _VariadicView_Children.tagIndex<A>(_:)(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v57 = a4;
  v49 = a3;
  v59 = a2;
  v9 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v50 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v52 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v14 = &v49 - v13;
  v15 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v55 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v49 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v49 - v22;
  v56 = a1;
  v60 = *(a1 + 80);

  v51 = a6;
  ViewTraitCollection.tag<A>(for:)();

  (*(v9 + 16))(v20, v59, a5);
  (*(v9 + 56))(v20, 0, 1, a5);
  v53 = TupleTypeMetadata2;
  v24 = *(TupleTypeMetadata2 + 48);
  v25 = *(v15 + 16);
  v25(v14, v23, v11);
  v59 = v11;
  v25(&v14[v24], v20, v11);
  v54 = v9;
  v26 = *(v9 + 48);
  v58 = v14;
  if (v26(v14, 1, a5) == 1)
  {
    v27 = *(v15 + 8);
    v28 = v20;
    v29 = v59;
    v27(v28, v59);
    v27(v23, v29);
    v30 = v58;
    v31 = v26(&v58[v24], 1, a5) == 1;
    v32 = v30;
    if (!v31)
    {
      goto LABEL_7;
    }

    v27(v30, v59);
    v33 = v56;
  }

  else
  {
    v34 = v58;
    v25(v55, v58, v59);
    if (v26(&v34[v24], 1, a5) == 1)
    {
      v35 = *(v15 + 8);
      v36 = v20;
      v37 = v59;
      v35(v36, v59);
      v35(v23, v37);
      (*(v54 + 8))(v55, a5);
      v32 = v58;
LABEL_7:
      (*(v52 + 8))(v32, v53);
      v33 = v56;
      goto LABEL_10;
    }

    v38 = v54;
    v39 = v58;
    v40 = v50;
    (*(v54 + 32))(v50, &v58[v24], a5);
    v41 = v55;
    v42 = dispatch thunk of static Equatable.== infix(_:_:)();
    v43 = *(v38 + 8);
    v43(v40, a5);
    v44 = *(v15 + 8);
    v45 = v20;
    v46 = v59;
    v44(v45, v59);
    v44(v23, v46);
    v43(v41, a5);
    v44(v39, v46);
    v33 = v56;
    if ((v42 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  v60 = *(v33 + 80);
  if ((ViewTraitCollection.isAuxiliaryContent.getter() & 1) == 0)
  {
    result = 0;
    v48 = v49;
    *v49 = *v57;
    *(v48 + 8) = 0;
    return result;
  }

LABEL_10:
  *v57 += *(v33 + 8);
  return 1;
}

uint64_t _VariadicView_Children.Element.tag<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  ViewTraitCollection.tag<A>(for:)();
}

uint64_t GroupBox.init(label:content:)@<X0>(uint64_t a1@<X0>, void (*a2)(double)@<X1>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t x8_0@<X8>)
{
  v15 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v24 - v16;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v24 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(v19);
  v22 = *(a4 - 8);
  (*(v22 + 16))(v17, a1, a4);
  (*(v22 + 56))(v17, 0, 1, a4);
  GroupBox.init(content:label:)(v21, v17, a4, a5, a6, a7, x8_0);
  return (*(v22 + 8))(a1, a4);
}

uint64_t GroupBox<>.init(content:)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  v7[1] = a2;
  v7[0] = MEMORY[0x1E6981E70];
  v7[2] = MEMORY[0x1E6981E60];
  v7[3] = a3;
  *&a4[*(type metadata accessor for GroupBox(0, v7) + 56)] = 0;
  *a4 = 1;
  return a1();
}

uint64_t GroupBox.init(content:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a3 - 8) + 56))(a7, 1, 1, a3);
  v17[0] = a3;
  v17[1] = a4;
  v17[2] = a5;
  v17[3] = a6;
  v14 = type metadata accessor for GroupBox(0, v17);
  *(a7 + *(v14 + 56)) = 0;
  (*(*(a4 - 8) + 32))(a7 + *(v14 + 52), a1, a4);
  v15 = type metadata accessor for Optional();
  return (*(*(v15 - 8) + 40))(a7, a2, v15);
}

uint64_t GroupBox.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  *&v40 = a1[2];
  v3 = type metadata accessor for ModifiedContent();
  type metadata accessor for RelationshipModifier<String>(255, v4, v5, v6);
  v7 = type metadata accessor for ModifiedContent();
  v37 = lazy protocol witness table accessor for type GroupBoxStyleConfiguration.Label and conformance GroupBoxStyleConfiguration.Label();
  *&v38 = a1[4];
  v59[0] = v38;
  v59[1] = &protocol witness table for AccessibilityAttachmentModifier;
  v8 = MEMORY[0x1E697E858];
  v58[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v3, v59);
  v58[1] = &protocol witness table for RelationshipModifier<A>;
  v33 = v8;
  v36 = v7;
  WitnessTable = swift_getWitnessTable(v8, v7, v58);
  v54 = &type metadata for GroupBoxStyleConfiguration.Label;
  v55 = v7;
  v56 = v37;
  v57 = WitnessTable;
  type metadata accessor for OptionalSourceWriter(255, &v54);
  v9 = type metadata accessor for ModifiedContent();
  v39 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v32 - v10;
  v12 = a1[3];
  v13 = type metadata accessor for ModifiedContent();
  v14 = lazy protocol witness table accessor for type GroupBoxStyleConfiguration.Content and conformance GroupBoxStyleConfiguration.Content();
  v34 = v14;
  v53[0] = a1[5];
  v15 = v53[0];
  v53[1] = &protocol witness table for RelationshipModifier<A>;
  v16 = swift_getWitnessTable(v8, v13, v53);
  v54 = &type metadata for GroupBoxStyleConfiguration.Content;
  v55 = v13;
  v56 = v14;
  v57 = v16;
  type metadata accessor for StaticSourceWriter(255, &v54);
  v17 = type metadata accessor for ModifiedContent();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v32 - v22;
  *&v24 = v40;
  *(&v24 + 1) = v12;
  v40 = v24;
  *&v25 = v38;
  *(&v25 + 1) = v15;
  v38 = v25;
  v48 = v24;
  v49 = v25;
  v26 = v41;
  v50 = v41;
  v27 = lazy protocol witness table accessor for type ResolvedGroupBoxStyle and conformance ResolvedGroupBoxStyle();
  View.optionalViewAlias<A, B>(_:_:)(&type metadata for GroupBoxStyleConfiguration.Label, partial apply for closure #1 in GroupBox.body.getter, v47, &type metadata for ResolvedGroupBoxStyle, &type metadata for GroupBoxStyleConfiguration.Label, v36, v27, v37, WitnessTable);
  v45 = v38;
  v44 = v40;
  v46 = v26;
  v52[0] = v27;
  v52[1] = &protocol witness table for OptionalSourceWriter<A, B>;
  v28 = v33;
  v29 = swift_getWitnessTable(v33, v9, v52);
  View.viewAlias<A, B>(_:_:)(&type metadata for GroupBoxStyleConfiguration.Content, partial apply for closure #2 in GroupBox.body.getter, v43, v9, &type metadata for GroupBoxStyleConfiguration.Content, v13, v29);
  (*(v39 + 8))(v11, v9);
  v51[0] = v29;
  v51[1] = &protocol witness table for StaticSourceWriter<A, B>;
  swift_getWitnessTable(v28, v17, v51);
  static ViewBuilder.buildExpression<A>(_:)();
  v30 = *(v18 + 8);
  v30(v20, v17);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v30)(v23, v17);
}

uint64_t closure #1 in GroupBox.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = v34 - v15;
  (*(v13 + 16))(v34 - v15, a1, v12, v14);
  v17 = *(a2 - 8);
  if ((*(v17 + 48))(v16, 1, a2) == 1)
  {
    (*(v13 + 8))(v16, v12);
    type metadata accessor for ModifiedContent();
    type metadata accessor for RelationshipModifier<String>(255, v18, v19, v20);
    v21 = type metadata accessor for ModifiedContent();
    v22 = 1;
  }

  else
  {
    v36[0] = a2;
    v36[1] = a3;
    v36[2] = a4;
    v36[3] = a5;
    type metadata accessor for GroupBox(0, v36);
    Namespace.wrappedValue.getter();
    destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
    v36[0] = v23;
    v25 = type metadata accessor for AccessibilityGroupBoxLabelModifier(0, a2, a4, v24);
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for AccessibilityGroupBoxLabelModifier<A>, v25);
    v27 = type metadata accessor for ModifiedContent();
    type metadata accessor for RelationshipModifier<String>(255, v28, v29, v30);
    v31 = type metadata accessor for ModifiedContent();
    v35[0] = a4;
    v35[1] = &protocol witness table for AccessibilityAttachmentModifier;
    v32 = MEMORY[0x1E697E858];
    v34[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v27, v35);
    v34[1] = &protocol witness table for RelationshipModifier<A>;
    swift_getWitnessTable(v32, v31, v34);
    View.accessibilityConfiguration<A>(_:)(v36, a2, v25, a4, WitnessTable);
    (*(v17 + 8))(v16, a2);
    v21 = swift_checkMetadataState();
    v22 = 0;
  }

  return (*(*(v21 - 8) + 56))(a6, v22, 1);
}

unint64_t lazy protocol witness table accessor for type ResolvedGroupBoxStyle and conformance ResolvedGroupBoxStyle()
{
  result = lazy protocol witness table cache variable for type ResolvedGroupBoxStyle and conformance ResolvedGroupBoxStyle;
  if (!lazy protocol witness table cache variable for type ResolvedGroupBoxStyle and conformance ResolvedGroupBoxStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResolvedGroupBoxStyle, &type metadata for ResolvedGroupBoxStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedGroupBoxStyle and conformance ResolvedGroupBoxStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvedGroupBoxStyle and conformance ResolvedGroupBoxStyle;
  if (!lazy protocol witness table cache variable for type ResolvedGroupBoxStyle and conformance ResolvedGroupBoxStyle)
  {
    result = swift_getWitnessTable("aL\bb", &type metadata for ResolvedGroupBoxStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedGroupBoxStyle and conformance ResolvedGroupBoxStyle);
  }

  return result;
}

uint64_t closure #2 in GroupBox.body.getter@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v23[1] = a6;
  type metadata accessor for RelationshipModifier<String>(255, a2, a3, a4);
  v10 = type metadata accessor for ModifiedContent();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v23 - v15;
  v25[0] = a2;
  v25[1] = a3;
  v25[2] = a4;
  v25[3] = a5;
  v23[0] = *(type metadata accessor for GroupBox(0, v25) + 52);
  Namespace.wrappedValue.getter();
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
  v25[0] = v17;
  v19 = type metadata accessor for AccessibilityGroupBoxContentModifier(0, a3, a5, v18);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for AccessibilityGroupBoxContentModifier<A>, v19);
  v24[0] = a5;
  v24[1] = &protocol witness table for RelationshipModifier<A>;
  swift_getWitnessTable(MEMORY[0x1E697E858], v10, v24);
  View.accessibilityConfiguration<A>(_:)(v25, a3, v19, a5, WitnessTable);
  static ViewBuilder.buildExpression<A>(_:)();
  v21 = *(v11 + 8);
  v21(v13, v10);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v21)(v16, v10);
}

uint64_t GroupBox<>.init(_:content:)@<X0>(uint64_t (*a5)(uint64_t, uint64_t)@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>)
{
  v15[0] = MEMORY[0x1E6981148];
  v15[1] = a6;
  v15[2] = MEMORY[0x1E6981138];
  v15[3] = a7;
  *(a8 + *(type metadata accessor for GroupBox(0, v15) + 56)) = 0;
  v10 = Text.init(_:tableName:bundle:comment:)();
  *a8 = v10;
  a8[1] = v12;
  a8[2] = v11 & 1;
  a8[3] = v13;
  return a5(v10, v12);
}

uint64_t GroupBox<>.init<A>(_:content:)@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X4>, uint64_t *a5@<X8>)
{
  v9 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[0] = MEMORY[0x1E6981148];
  v18[1] = v12;
  v18[2] = MEMORY[0x1E6981138];
  v18[3] = v13;
  *(a5 + *(type metadata accessor for GroupBox(0, v18) + 56)) = 0;
  (*(v9 + 16))(v11, a1, a3);
  *a5 = Text.init<A>(_:)();
  a5[1] = v15;
  a5[2] = v14 & 1;
  a5[3] = v16;
  a2();
  return (*(v9 + 8))(a1, a3);
}

uint64_t type metadata completion function for GroupBox(uint64_t a1)
{
  result = type metadata accessor for Optional();
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

uint64_t *initializeBufferWithCopyOfBuffer for GroupBox(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  v7 = *(v6 - 8);
  if (*(v7 + 84))
  {
    v8 = *(v7 + 64);
  }

  else
  {
    v8 = *(v7 + 64) + 1;
  }

  v9 = *(v5 - 8);
  v10 = *(v9 + 80);
  v11 = v8 + v10;
  v12 = *(v9 + 64) + 7;
  v13 = v10 | *(v7 + 80) & 0xF8;
  if (v13 > 7 || ((*(v7 + 80) | *(v9 + 80)) & 0x100000) != 0 || ((v12 + ((v8 + v10) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v16 = *a2;
    *a1 = *a2;
    a1 = (v16 + (((v13 | 7) + 16) & ~(v13 | 7)));
  }

  else
  {
    v17 = ~v10;
    if ((*(v7 + 48))(a2, 1, v6))
    {
      memcpy(a1, a2, v8);
    }

    else
    {
      (*(v7 + 16))(a1, a2, v6);
      (*(v7 + 56))(a1, 0, 1, v6);
    }

    v18 = (a2 + v11) & v17;
    (*(v9 + 16))((a1 + v11) & v17, v18, v5);
    *((v12 + ((a1 + v11) & v17)) & 0xFFFFFFFFFFFFFFF8) = *((v12 + v18) & 0xFFFFFFFFFFFFFFF8);
  }

  return a1;
}

uint64_t destroy for GroupBox(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(a1, 1, v4))
  {
    (*(v5 + 8))(a1, v4);
  }

  v6 = *(a2 + 24);
  v7 = *(*(v6 - 8) + 8);
  v8 = *(*(v6 - 8) + 80);
  v9 = *(v5 + 64) + a1;
  if (!*(v5 + 84))
  {
    ++v9;
  }

  return v7((v9 + v8) & ~v8);
}

void *initializeWithCopy for GroupBox(void *a1, const void *a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = *(v7 + 84);
    v9 = *(v7 + 64);
    if (v8)
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 + 1;
    }

    memcpy(a1, a2, v10);
  }

  else
  {
    (*(v7 + 16))(a1, a2, v6);
    v12 = *(v7 + 56);
    v11 = v7 + 56;
    v12(a1, 0, 1, v6);
    v8 = *(v11 + 28);
    v9 = *(v11 + 8);
  }

  if (v8)
  {
    v13 = v9;
  }

  else
  {
    v13 = v9 + 1;
  }

  v14 = *(*(a3 + 24) - 8);
  v15 = v14 + 16;
  v16 = *(v14 + 80);
  v17 = v13 + v16;
  v18 = (a1 + v17) & ~v16;
  v19 = (a2 + v17) & ~v16;
  (*(v14 + 16))(v18, v19);
  *((*(v15 + 48) + 7 + v18) & 0xFFFFFFFFFFFFFFF8) = *((*(v15 + 48) + 7 + v19) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

void *assignWithCopy for GroupBox(void *a1, void *a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (v9)
  {
    if (!v10)
    {
      (*(v7 + 16))(a1, a2, v6);
      (*(v7 + 56))(a1, 0, 1, v6);
      goto LABEL_12;
    }

    v11 = *(v7 + 84);
    v12 = *(v7 + 64);
  }

  else
  {
    if (!v10)
    {
      (*(v7 + 24))(a1, a2, v6);
      goto LABEL_12;
    }

    (*(v7 + 8))(a1, v6);
    v11 = *(v7 + 84);
    v12 = *(v7 + 64);
  }

  if (v11)
  {
    v13 = v12;
  }

  else
  {
    v13 = v12 + 1;
  }

  memcpy(a1, a2, v13);
LABEL_12:
  if (*(v7 + 84))
  {
    v14 = *(v7 + 64);
  }

  else
  {
    v14 = *(v7 + 64) + 1;
  }

  v15 = *(*(a3 + 24) - 8);
  v16 = v15 + 24;
  v17 = *(v15 + 80);
  v18 = v14 + v17;
  v19 = (a1 + v18) & ~v17;
  v20 = (a2 + v18) & ~v17;
  (*(v15 + 24))(v19, v20);
  *((*(v16 + 40) + 7 + v19) & 0xFFFFFFFFFFFFFFF8) = *((*(v16 + 40) + 7 + v20) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

void *initializeWithTake for GroupBox(void *a1, const void *a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = *(v7 + 84);
    v9 = *(v7 + 64);
    if (v8)
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 + 1;
    }

    memcpy(a1, a2, v10);
  }

  else
  {
    (*(v7 + 32))(a1, a2, v6);
    v12 = *(v7 + 56);
    v11 = v7 + 56;
    v12(a1, 0, 1, v6);
    v8 = *(v11 + 28);
    v9 = *(v11 + 8);
  }

  if (v8)
  {
    v13 = v9;
  }

  else
  {
    v13 = v9 + 1;
  }

  v14 = *(*(a3 + 24) - 8);
  v15 = v14 + 32;
  v16 = *(v14 + 80);
  v17 = v13 + v16;
  v18 = (a1 + v17) & ~v16;
  v19 = (a2 + v17) & ~v16;
  (*(v14 + 32))(v18, v19);
  *((*(v15 + 32) + 7 + v18) & 0xFFFFFFFFFFFFFFF8) = *((*(v15 + 32) + 7 + v19) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

void *assignWithTake for GroupBox(void *a1, void *a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (v9)
  {
    if (!v10)
    {
      (*(v7 + 32))(a1, a2, v6);
      (*(v7 + 56))(a1, 0, 1, v6);
      goto LABEL_12;
    }

    v11 = *(v7 + 84);
    v12 = *(v7 + 64);
  }

  else
  {
    if (!v10)
    {
      (*(v7 + 40))(a1, a2, v6);
      goto LABEL_12;
    }

    (*(v7 + 8))(a1, v6);
    v11 = *(v7 + 84);
    v12 = *(v7 + 64);
  }

  if (v11)
  {
    v13 = v12;
  }

  else
  {
    v13 = v12 + 1;
  }

  memcpy(a1, a2, v13);
LABEL_12:
  if (*(v7 + 84))
  {
    v14 = *(v7 + 64);
  }

  else
  {
    v14 = *(v7 + 64) + 1;
  }

  v15 = *(*(a3 + 24) - 8);
  v16 = v15 + 40;
  v17 = *(v15 + 80);
  v18 = v14 + v17;
  v19 = (a1 + v18) & ~v17;
  v20 = (a2 + v18) & ~v17;
  (*(v15 + 40))(v19, v20);
  *((*(v16 + 24) + 7 + v19) & 0xFFFFFFFFFFFFFFF8) = *((*(v16 + 24) + 7 + v20) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t getEnumTagSinglePayload for GroupBox(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a3 + 24);
  v9 = *(v8 - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v11 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  v13 = *(v9 + 80);
  if (v6)
  {
    v14 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v14 = *(*(*(a3 + 16) - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = v14 + v13;
  if (v12 < a2)
  {
    v16 = ((*(*(v8 - 8) + 64) + (v15 & ~v13) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v17 = a2 - v12;
    v18 = v16 & 0xFFFFFFF8;
    if ((v16 & 0xFFFFFFF8) != 0)
    {
      v19 = 2;
    }

    else
    {
      v19 = v17 + 1;
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

    v21 = v19 >= 2 ? v20 : 0;
    if (v21 > 1)
    {
      if (v21 == 2)
      {
        v22 = *(a1 + v16);
        if (v22)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v22 = *(a1 + v16);
        if (v22)
        {
          goto LABEL_26;
        }
      }
    }

    else if (v21)
    {
      v22 = *(a1 + v16);
      if (v22)
      {
LABEL_26:
        v23 = v22 - 1;
        if (v18)
        {
          v23 = 0;
          v24 = *a1;
        }

        else
        {
          v24 = 0;
        }

        return v12 + (v24 | v23) + 1;
      }
    }

    if (!v12)
    {
      return 0;
    }
  }

  if (v7 >= v11)
  {
    v28 = (*(v5 + 48))(a1);
    if (v28 >= 2)
    {
      return v28 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v25 = *(v10 + 48);
    v26 = (a1 + v15) & ~v13;

    return v25(v26, v11, v8);
  }
}

void storeEnumTagSinglePayload for GroupBox(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(*(a4 + 24) - 8);
  v10 = *(v9 + 84);
  v11 = *(*(*(a4 + 16) - 8) + 64);
  v12 = *(v9 + 80);
  v13 = *(v9 + 64);
  if (v10 <= v8)
  {
    v14 = v8;
  }

  else
  {
    v14 = *(v9 + 84);
  }

  if (!v7)
  {
    ++v11;
  }

  v15 = ((v13 + ((v11 + v12) & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v14 < a3)
  {
    v16 = a3 - v14;
    if (((v13 + ((v11 + v12) & ~v12) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v17 = v16 + 1;
    }

    else
    {
      v17 = 2;
    }

    if (v17 >= 0x10000)
    {
      v18 = 4;
    }

    else
    {
      v18 = 2;
    }

    if (v17 < 0x100)
    {
      v18 = 1;
    }

    if (v17 >= 2)
    {
      v5 = v18;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v14)
  {
    if (((v13 + ((v11 + v12) & ~v12) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v19 = a2 - v14;
    }

    else
    {
      v19 = 1;
    }

    if (((v13 + ((v11 + v12) & ~v12) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v20 = ~v14 + a2;
      v21 = a1;
      bzero(a1, ((v13 + ((v11 + v12) & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      a1 = v21;
      *v21 = v20;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v15) = v19;
      }

      else
      {
        *(a1 + v15) = v19;
      }
    }

    else if (v5)
    {
      *(a1 + v15) = v19;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v15) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_39;
    }

    *(a1 + v15) = 0;
  }

  else if (v5)
  {
    *(a1 + v15) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_39;
  }

  if (!a2)
  {
    return;
  }

LABEL_39:
  if (v8 >= v10)
  {
    if (v8 >= a2)
    {
      v28 = *(v6 + 56);

      v28();
    }

    else
    {
      if (v11 <= 3)
      {
        v24 = ~(-1 << (8 * v11));
      }

      else
      {
        v24 = -1;
      }

      if (v11)
      {
        v25 = v24 & (~v8 + a2);
        if (v11 <= 3)
        {
          v26 = v11;
        }

        else
        {
          v26 = 4;
        }

        v27 = a1;
        bzero(a1, v11);
        if (v26 > 2)
        {
          if (v26 == 3)
          {
            *v27 = v25;
            *(v27 + 2) = BYTE2(v25);
          }

          else
          {
            *v27 = v25;
          }
        }

        else if (v26 == 1)
        {
          *v27 = v25;
        }

        else
        {
          *v27 = v25;
        }
      }
    }
  }

  else
  {
    v22 = *(v9 + 56);
    v23 = (a1 + v11 + v12) & ~v12;

    v22(v23);
  }
}

double Gesture<>.values(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *(a3 - 8);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, v14, v11);
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a1;
  v15[5] = a2;
  (*(v10 + 32))(a5, v13, a3);
  v17 = (a5 + *(type metadata accessor for TaskGesture(0, a3, a4, v16) + 36));
  *v17 = &async function pointer to partial apply for closure #1 in Gesture<>.values(_:);
  v17[1] = v15;

  return result;
}

uint64_t closure #1 in Gesture<>.values(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[7] = AssociatedTypeWitness;
  v9 = type metadata accessor for TaskPhase(255, AssociatedTypeWitness, v7, v8);
  v5[8] = v9;
  v10 = type metadata accessor for AsyncStream();
  v5[9] = v10;
  v5[10] = *(v10 - 8);
  v5[11] = swift_task_alloc();
  v5[12] = swift_getWitnessTable(MEMORY[0x1E69E86A0], v10);
  type metadata accessor for AsyncMapSequence();
  v5[13] = swift_task_alloc();
  v13 = type metadata accessor for GestureValues(0, AssociatedTypeWitness, v11, v12);
  v5[14] = v13;
  v5[15] = *(v13 - 8);
  v5[16] = swift_task_alloc();
  v5[17] = *(AssociatedTypeWitness - 8);
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v5[20] = *(v9 - 8);
  v5[21] = swift_task_alloc();
  type metadata accessor for Optional();
  v5[22] = swift_task_alloc();
  v14 = type metadata accessor for AsyncStream.Iterator();
  v5[23] = v14;
  v5[24] = *(v14 - 8);
  v5[25] = swift_task_alloc();
  v5[26] = type metadata accessor for MainActor();
  v5[27] = static MainActor.shared.getter();
  v16 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[28] = v16;
  v5[29] = v15;

  return MEMORY[0x1EEE6DFA0](closure #1 in Gesture<>.values(_:), v16, v15);
}

uint64_t closure #1 in Gesture<>.values(_:)()
{
  AsyncStream.makeAsyncIterator()();
  v1 = static MainActor.shared.getter();
  v0[30] = v1;
  v2 = swift_task_alloc();
  v0[31] = v2;
  *v2 = v0;
  v2[1] = closure #1 in Gesture<>.values(_:);
  v3 = v0[22];
  v4 = v0[23];
  v5 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v3, v1, v5, v4);
}

{
  v1 = *v0;

  v2 = *(v1 + 232);
  v3 = *(v1 + 224);

  return MEMORY[0x1EEE6DFA0](closure #1 in Gesture<>.values(_:), v3, v2);
}

{
  v1 = *(v0 + 176);
  v2 = *(v0 + 160);
  v3 = *(v0 + 64);
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    (*(v2 + 32))(*(v0 + 168), v1, v3);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v7 = *(v0 + 168);
    if (EnumCaseMultiPayload)
    {
      v9 = *(v0 + 144);
      v8 = *(v0 + 152);
      v10 = *(v0 + 136);
      v11 = *(v0 + 104);
      v12 = *(v0 + 80);
      v13 = *(v0 + 88);
      v14 = *(v0 + 72);
      v15 = *(v0 + 56);
      v16 = *(v0 + 16);
      v26 = *(v0 + 24);
      v27 = *(v0 + 128);
      v25 = *(v0 + 40);
      if (EnumCaseMultiPayload == 1)
      {
        (*(v10 + 32))(*(v0 + 152), v7, *(v0 + 56));
        (*(v10 + 16))(v9, v8, v15);
        (*(v12 + 16))(v13, v16, v14);
        *(swift_allocObject() + 16) = v25;
        AsyncSequence.map<A>(_:)();

        GestureValues.init(firstValue:hasEnded:base:)(v9, 0, v11, v15, v27);
        v28 = (v26 + *v26);
        v17 = swift_task_alloc();
        *(v0 + 256) = v17;
        *v17 = v0;
        v18 = closure #1 in Gesture<>.values(_:);
      }

      else
      {
        (*(v10 + 32))(*(v0 + 152), v7, *(v0 + 56));
        (*(v10 + 16))(v9, v8, v15);
        (*(v12 + 16))(v13, v16, v14);
        *(swift_allocObject() + 16) = v25;
        AsyncSequence.map<A>(_:)();

        GestureValues.init(firstValue:hasEnded:base:)(v9, 1, v11, v15, v27);
        v28 = (v26 + *v26);
        v17 = swift_task_alloc();
        *(v0 + 264) = v17;
        *v17 = v0;
        v18 = closure #1 in Gesture<>.values(_:);
      }

      v17[1] = v18;
      v24 = *(v0 + 128);

      return v28(v24);
    }

    else
    {
      (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 64));
      v19 = static MainActor.shared.getter();
      *(v0 + 240) = v19;
      v20 = swift_task_alloc();
      *(v0 + 248) = v20;
      *v20 = v0;
      v20[1] = closure #1 in Gesture<>.values(_:);
      v21 = *(v0 + 176);
      v22 = *(v0 + 184);
      v23 = MEMORY[0x1E69E85E0];

      return MEMORY[0x1EEE6D9C8](v21, v19, v23, v22);
    }
  }
}

{
  v1 = *v0;
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 120);
  v4 = *(*v0 + 112);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 232);
  v6 = *(v1 + 224);

  return MEMORY[0x1EEE6DFA0](closure #1 in Gesture<>.values(_:), v6, v5);
}

{
  (*(v0[17] + 8))(v0[19], v0[7]);
  v1 = static MainActor.shared.getter();
  v0[30] = v1;
  v2 = swift_task_alloc();
  v0[31] = v2;
  *v2 = v0;
  v2[1] = closure #1 in Gesture<>.values(_:);
  v3 = v0[22];
  v4 = v0[23];
  v5 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v3, v1, v5, v4);
}

{
  v1 = *v0;
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 120);
  v4 = *(*v0 + 112);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 232);
  v6 = *(v1 + 224);

  return MEMORY[0x1EEE6DFA0](closure #1 in Gesture<>.values(_:), v6, v5);
}

uint64_t partial apply for closure #1 in Gesture<>.values(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out ());

  return closure #1 in Gesture<>.values(_:)(a1, v7, v6, v4, v5);
}

uint64_t closure #1 in closure #1 in Gesture<>.values(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in Gesture<>.values(_:), 0, 0);
}

uint64_t TaskPhase.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, v4);
  return (*(*(*(a1 + 16) - 8) + 32))(a2, v6);
}

uint64_t GestureValues.init(firstValue:hasEnded:base:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  v11 = type metadata accessor for GestureValues(0, a4, v9, v10);
  *(a5 + *(v11 + 28)) = a2;
  v12 = *(v11 + 32);
  type metadata accessor for TaskPhase(255, a4, v13, v14);
  v15 = type metadata accessor for AsyncStream();
  swift_getWitnessTable(MEMORY[0x1E69E86A0], v15);
  v16 = type metadata accessor for AsyncMapSequence();
  v17 = *(*(v16 - 8) + 32);

  return v17(a5 + v12, a3, v16);
}

uint64_t closure #2 in closure #1 in Gesture<>.values(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](closure #2 in closure #1 in Gesture<>.values(_:), 0, 0);
}

uint64_t closure #2 in closure #1 in Gesture<>.values(_:)()
{
  v1 = *(v0 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for TaskPhase(0, AssociatedTypeWitness, v3, v4);
  TaskPhase.value.getter(v5, v1);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t GestureValues.makeAsyncIterator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TaskPhase(255, *(a1 + 16), a3, a4);
  v6 = type metadata accessor for AsyncStream();
  swift_getWitnessTable(MEMORY[0x1E69E86A0], v6);
  v7 = type metadata accessor for AsyncMapSequence();
  v8 = MEMORY[0x1EEE9AC00](v7);
  (*(v9 + 16))(&v12 - v10, v4 + *(a1 + 32), v7, v8);
  return AsyncMapSequence.makeAsyncIterator()();
}

uint64_t protocol witness for AsyncSequence.makeAsyncIterator() in conformance GestureValues<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  GestureValues.makeAsyncIterator()(a1, a2, a3, a4);
  v6 = *(*(a1 - 8) + 8);

  return v6(v4, a1);
}

uint64_t static TaskGesture._makeGesture(gesture:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _DWORD *a5@<X8>)
{
  v44 = *MEMORY[0x1E69E9840];
  v8 = *a1;
  v9 = a2[5];
  v41 = a2[4];
  v42 = v9;
  v43 = a2[6];
  v10 = a2[1];
  v37 = *a2;
  v38 = v10;
  v11 = a2[3];
  v39 = a2[2];
  v40 = v11;
  v12 = *(a2 + 28);
  v13 = *(a2 + 116);
  v26 = a3;
  v27 = a4;
  v21 = v8;
  type metadata accessor for TaskGesture(255, a3, a4, a4);
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  v32 = v41;
  v33 = v42;
  v34 = v43;
  v28 = v37;
  v29 = v38;
  v30 = v39;
  v31 = v40;
  v35 = v12;
  v36 = v13;
  (*(a4 + 32))(v20, &v28, a3, a4);
  LODWORD(v28) = v8;
  v14 = _GraphValue.value.getter();
  swift_getAssociatedTypeWitness();
  type metadata accessor for _GestureOutputs();
  *&v28 = __PAIR64__(_GestureOutputs.phase.getter(), v14);
  *(&v28 + 1) = v12;
  *&v29 = 0;
  v23 = type metadata accessor for GesturePhase();
  v16 = type metadata accessor for TaskGesturePhase(0, a3, a4, v15);
  v24 = v16;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TaskGesturePhase<A>, v16);
  v17 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v28, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_2, v22, v16, MEMORY[0x1E69E73E0], v17, MEMORY[0x1E69E7410], v18);
  *a5 = v21;
  _GestureOutputs.phase.getter();
  return AGGraphSetFlags();
}

uint64_t closure #1 in static TaskGesture._makeGesture(gesture:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[2] = type metadata accessor for TaskGesture(0, a2, a3, a4);
  v9[3] = a2;
  v6 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v9, a2, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  return v9[5];
}

uint64_t static TaskPhase<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v54 = a1;
  v55 = a2;
  v52 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v48 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v47 = &v46 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v49 = &v46 - v8;
  v53 = v9;
  v11 = type metadata accessor for TaskPhase(0, v9, v9, v10);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v46 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v46 - v19;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v22 = *(TupleTypeMetadata2 - 8);
  v23 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v25 = &v46 - v24;
  v27 = *(v26 + 48);
  v51 = v12;
  v28 = *(v12 + 16);
  v28(&v46 - v24, v54, v11, v23);
  (v28)(&v25[v27], v55, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (v28)(v17, v25, v11);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v31 = v52;
        v30 = v53;
        v32 = v47;
        (*(v52 + 32))(v47, &v25[v27], v53);
        v33 = dispatch thunk of static Equatable.== infix(_:_:)();
        v34 = *(v31 + 8);
        v34(v32, v30);
        v34(v17, v30);
LABEL_13:
        v22 = v51;
        goto LABEL_14;
      }

      v14 = v17;
    }

    else
    {
      (v28)(v14, v25, v11);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v37 = v52;
        v36 = v53;
        v38 = v48;
        (*(v52 + 32))(v48, &v25[v27], v53);
        v33 = dispatch thunk of static Equatable.== infix(_:_:)();
        v39 = *(v37 + 8);
        v39(v38, v36);
        v39(v14, v36);
        goto LABEL_13;
      }
    }
  }

  else
  {
    v35 = v49;
    (v28)(v20, v25, v11);
    if (!swift_getEnumCaseMultiPayload())
    {
      v40 = v52;
      v41 = v35;
      v42 = v35;
      v43 = v53;
      (*(v52 + 32))(v42, &v25[v27], v53);
      v33 = dispatch thunk of static Equatable.== infix(_:_:)();
      v44 = *(v40 + 8);
      v44(v41, v43);
      v44(v20, v43);
      goto LABEL_13;
    }

    v14 = v20;
  }

  (*(v52 + 8))(v14, v53);
  v33 = 0;
  v11 = TupleTypeMetadata2;
LABEL_14:
  (*(v22 + 8))(v25, v11);
  return v33 & 1;
}

uint64_t TaskPhase<>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, v13, v3, v9);
  LODWORD(v3) = swift_getEnumCaseMultiPayload();
  (*(v5 + 32))(v7, v11, v4);
  MEMORY[0x18D00F6F0](v3);
  dispatch thunk of Hashable.hash(into:)();
  return (*(v5 + 8))(v7, v4);
}

Swift::Int TaskPhase<>.hashValue.getter(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  TaskPhase<>.hash(into:)(v5, a1, a2);
  return Hasher._finalize()();
}

uint64_t TaskGesturePhase.gesture.getter@<X0>(uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v5 = type metadata accessor for TaskGesture(0, a2, a3, a2);
  Value = AGGraphGetValue();
  v7 = *(*(v5 - 8) + 16);

  return v7(a4, Value, v5);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance <> TaskPhase<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  Hasher.init(_seed:)();
  TaskPhase<>.hash(into:)(v6, a2, v4);
  return Hasher._finalize()();
}

uint64_t type metadata completion function for GestureValues(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    type metadata accessor for TaskPhase(255, result, v2, v3);
    v5 = type metadata accessor for AsyncStream();
    swift_getWitnessTable(MEMORY[0x1E69E86A0], v5);
    result = type metadata accessor for AsyncMapSequence();
    if (v6 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for GestureValues(void *a1, void *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v13 = *a2;
    *v3 = *a2;
    v3 = (v13 + ((v4 + 16) & ~v4));
  }

  else
  {
    v5 = *(a3 + 16);
    (*(*(v5 - 8) + 16))(a1, a2, v5);
    v8 = *(a3 + 32);
    *(v3 + *(a3 + 28)) = *(a2 + *(a3 + 28));
    type metadata accessor for TaskPhase(255, v5, v9, v10);
    v11 = type metadata accessor for AsyncStream();
    swift_getWitnessTable(MEMORY[0x1E69E86A0], v11);
    v12 = type metadata accessor for AsyncMapSequence();
    (*(*(v12 - 8) + 16))(v3 + v8, a2 + v8, v12);
  }

  return v3;
}

uint64_t destroy for GestureValues(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  (*(*(v4 - 8) + 8))(a1, v4);
  v5 = *(a2 + 32);
  type metadata accessor for TaskPhase(255, v4, v6, v7);
  v8 = type metadata accessor for AsyncStream();
  swift_getWitnessTable(MEMORY[0x1E69E86A0], v8);
  v9 = type metadata accessor for AsyncMapSequence();
  v10 = *(*(v9 - 8) + 8);

  return v10(a1 + v5, v9);
}

uint64_t initializeWithCopy for GestureValues(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 32);
  *(a1 + *(a3 + 28)) = *(a2 + *(a3 + 28));
  type metadata accessor for TaskPhase(255, v6, v8, v9);
  v10 = type metadata accessor for AsyncStream();
  swift_getWitnessTable(MEMORY[0x1E69E86A0], v10);
  v11 = type metadata accessor for AsyncMapSequence();
  (*(*(v11 - 8) + 16))(a1 + v7, a2 + v7, v11);
  return a1;
}

uint64_t assignWithCopy for GestureValues(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  *(a1 + *(a3 + 28)) = *(a2 + *(a3 + 28));
  v7 = *(a3 + 32);
  type metadata accessor for TaskPhase(255, v6, v8, v9);
  v10 = type metadata accessor for AsyncStream();
  swift_getWitnessTable(MEMORY[0x1E69E86A0], v10);
  v11 = type metadata accessor for AsyncMapSequence();
  (*(*(v11 - 8) + 24))(a1 + v7, a2 + v7, v11);
  return a1;
}

uint64_t initializeWithTake for GestureValues(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = *(a3 + 32);
  *(a1 + *(a3 + 28)) = *(a2 + *(a3 + 28));
  type metadata accessor for TaskPhase(255, v6, v8, v9);
  v10 = type metadata accessor for AsyncStream();
  swift_getWitnessTable(MEMORY[0x1E69E86A0], v10);
  v11 = type metadata accessor for AsyncMapSequence();
  (*(*(v11 - 8) + 32))(a1 + v7, a2 + v7, v11);
  return a1;
}

uint64_t assignWithTake for GestureValues(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = *(a3 + 32);
  *(a1 + *(a3 + 28)) = *(a2 + *(a3 + 28));
  type metadata accessor for TaskPhase(255, v6, v8, v9);
  v10 = type metadata accessor for AsyncStream();
  swift_getWitnessTable(MEMORY[0x1E69E86A0], v10);
  v11 = type metadata accessor for AsyncMapSequence();
  (*(*(v11 - 8) + 40))(a1 + v7, a2 + v7, v11);
  return a1;
}

uint64_t type metadata completion function for TaskPhase(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for TaskPhase(void *a1, unsigned __int16 *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if (v6 > 7 || (v5 + 1) > 0x18 || (*(v4 + 80) & 0x100000) != 0)
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v6 + 16) & ~v6));

    return v3;
  }

  v10 = *(a2 + v5);
  if (v10 >= 3)
  {
    if (v5 <= 3)
    {
      v11 = *(v4 + 64);
    }

    else
    {
      v11 = 4;
    }

    if (v11 > 1)
    {
      if (v11 == 2)
      {
        v12 = *a2;
      }

      else if (v11 == 3)
      {
        v12 = *a2 | (*(a2 + 2) << 16);
      }

      else
      {
        v12 = *a2;
      }

      goto LABEL_21;
    }

    if (v11)
    {
      v12 = *a2;
LABEL_21:
      v13 = (v12 | ((v10 - 3) << (8 * v5))) + 3;
      v14 = v12 + 3;
      if (v5 >= 4)
      {
        v10 = v14;
      }

      else
      {
        v10 = v13;
      }
    }
  }

  (*(v4 + 16))(a1);
  if (v10 == 2)
  {
    *(v3 + v5) = 2;
  }

  else
  {
    *(v3 + v5) = v10 == 1;
  }

  return v3;
}

uint64_t initializeWithCopy for TaskPhase(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(*(*(a3 + 16) - 8) + 64);
  v5 = a2[v4];
  if (v5 >= 3)
  {
    if (v4 <= 3)
    {
      v6 = *(*(*(a3 + 16) - 8) + 64);
    }

    else
    {
      v6 = 4;
    }

    if (v6 <= 1)
    {
      if (!v6)
      {
        goto LABEL_16;
      }

      v7 = *a2;
    }

    else if (v6 == 2)
    {
      v7 = *a2;
    }

    else if (v6 == 3)
    {
      v7 = *a2 | (a2[2] << 16);
    }

    else
    {
      v7 = *a2;
    }

    v8 = (v7 | ((v5 - 3) << (8 * v4))) + 3;
    v9 = v7 + 3;
    if (v4 >= 4)
    {
      LOBYTE(v5) = v9;
    }

    else
    {
      LOBYTE(v5) = v8;
    }
  }

LABEL_16:
  (*(*(*(a3 + 16) - 8) + 16))(a1);
  *(a1 + v4) = v5;
  return a1;
}

unsigned __int16 *assignWithCopy for TaskPhase(unsigned __int16 *a1, unsigned __int16 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = *(a3 + 16);
    v6 = *(v5 - 8);
    v7 = v6;
    v8 = *(v6 + 64);
    (*(v6 + 8))(a1, v5);
    v9 = *(a2 + v8);
    if (v9 >= 3)
    {
      if (v8 <= 3)
      {
        v10 = v8;
      }

      else
      {
        v10 = 4;
      }

      if (v10 > 1)
      {
        if (v10 == 2)
        {
          v11 = *a2;
        }

        else if (v10 == 3)
        {
          v11 = *a2 | (*(a2 + 2) << 16);
        }

        else
        {
          v11 = *a2;
        }

        goto LABEL_14;
      }

      if (v10)
      {
        v11 = *a2;
LABEL_14:
        v12 = (v11 | ((v9 - 3) << (8 * v8))) + 3;
        v13 = v11 + 3;
        if (v8 >= 4)
        {
          LOBYTE(v9) = v13;
        }

        else
        {
          LOBYTE(v9) = v12;
        }
      }
    }

    (*(v7 + 16))(a1, a2, v5);
    *(a1 + v8) = v9;
  }

  return a1;
}

uint64_t initializeWithTake for TaskPhase(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(*(*(a3 + 16) - 8) + 64);
  v5 = a2[v4];
  if (v5 >= 3)
  {
    if (v4 <= 3)
    {
      v6 = *(*(*(a3 + 16) - 8) + 64);
    }

    else
    {
      v6 = 4;
    }

    if (v6 <= 1)
    {
      if (!v6)
      {
        goto LABEL_16;
      }

      v7 = *a2;
    }

    else if (v6 == 2)
    {
      v7 = *a2;
    }

    else if (v6 == 3)
    {
      v7 = *a2 | (a2[2] << 16);
    }

    else
    {
      v7 = *a2;
    }

    v8 = (v7 | ((v5 - 3) << (8 * v4))) + 3;
    v9 = v7 + 3;
    if (v4 >= 4)
    {
      LOBYTE(v5) = v9;
    }

    else
    {
      LOBYTE(v5) = v8;
    }
  }

LABEL_16:
  (*(*(*(a3 + 16) - 8) + 32))(a1);
  *(a1 + v4) = v5;
  return a1;
}

unsigned __int16 *assignWithTake for TaskPhase(unsigned __int16 *a1, unsigned __int16 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = *(a3 + 16);
    v6 = *(v5 - 8);
    v7 = v6;
    v8 = *(v6 + 64);
    (*(v6 + 8))(a1, v5);
    v9 = *(a2 + v8);
    if (v9 >= 3)
    {
      if (v8 <= 3)
      {
        v10 = v8;
      }

      else
      {
        v10 = 4;
      }

      if (v10 > 1)
      {
        if (v10 == 2)
        {
          v11 = *a2;
        }

        else if (v10 == 3)
        {
          v11 = *a2 | (*(a2 + 2) << 16);
        }

        else
        {
          v11 = *a2;
        }

        goto LABEL_14;
      }

      if (v10)
      {
        v11 = *a2;
LABEL_14:
        v12 = (v11 | ((v9 - 3) << (8 * v8))) + 3;
        v13 = v11 + 3;
        if (v8 >= 4)
        {
          LOBYTE(v9) = v13;
        }

        else
        {
          LOBYTE(v9) = v12;
        }
      }
    }

    (*(v7 + 32))(a1, a2, v5);
    *(a1 + v8) = v9;
  }

  return a1;
}

uint64_t getEnumTagSinglePayload for TaskPhase(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_23;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 253) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 < 2)
    {
LABEL_23:
      v10 = *(a1 + v3);
      if (v10 >= 3)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_23;
  }

LABEL_12:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 254;
}

void storeEnumTagSinglePayload for TaskPhase(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  v6 = v5 + 1;
  if (a3 < 0xFE)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 253) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFD)
  {
    v8 = a2 - 254;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_37:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_37;
          }
        }

LABEL_34:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_23:
      a1[v5] = -a2;
      return;
    }

LABEL_22:
    if (!a2)
    {
      return;
    }

    goto LABEL_23;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_22;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_23;
  }
}

uint64_t getEnumTag for TaskPhase(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(*(a2 + 16) - 8) + 64);
  v3 = a1[v2];
  v4 = v3 - 3;
  if (v3 >= 3)
  {
    if (v2 <= 3)
    {
      v5 = *(*(*(a2 + 16) - 8) + 64);
    }

    else
    {
      v5 = 4;
    }

    if (v5 <= 1)
    {
      if (!v5)
      {
        return v3;
      }

      v6 = *a1;
    }

    else if (v5 == 2)
    {
      v6 = *a1;
    }

    else if (v5 == 3)
    {
      v6 = *a1 | (a1[2] << 16);
    }

    else
    {
      v6 = *a1;
    }

    v7 = (v6 | (v4 << (8 * v2))) + 3;
    LODWORD(v3) = v6 + 3;
    if (v2 >= 4)
    {
      return v3;
    }

    else
    {
      return v7;
    }
  }

  return v3;
}

void destructiveInjectEnumTag for TaskPhase(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (a2 > 2)
  {
    v4 = a2 - 3;
    if (v3 < 4)
    {
      a1[v3] = (v4 >> (8 * v3)) + 3;
      if (v3)
      {
        v6 = v4 & ~(-1 << (8 * v3));
        bzero(a1, v3);
        if (v3 == 3)
        {
          *a1 = v6;
          a1[2] = BYTE2(v6);
        }

        else if (v3 == 2)
        {
          *a1 = v6;
        }

        else
        {
          *a1 = v4;
        }
      }
    }

    else
    {
      a1[v3] = 3;
      bzero(a1, v3);
      *a1 = v4;
    }
  }

  else
  {
    a1[v3] = a2;
  }
}

uint64_t type metadata completion function for TaskGesturePhase.Handler(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for TaskPhase(255, AssociatedTypeWitness, v2, v3);
  type metadata accessor for AsyncStream.Continuation();
  result = type metadata accessor for Optional();
  if (v5 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void TaskGesturePhase.Handler.setContinuation(_:)(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for TaskPhase(0, AssociatedTypeWitness, v4, v5);
  v7 = *(v6 - 8);
  v25 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - v8;
  v10 = type metadata accessor for AsyncStream.Continuation();
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  v13.n128_f64[0] = MEMORY[0x1EEE9AC00](v11);
  v15 = &v24 - v14;
  v16 = *(v10 - 8);
  (*(v16 + 16))(&v24 - v14, a1, v10, v13);
  (*(v16 + 56))(v15, 0, 1, v10);
  v17 = *(*v1 + 96);
  swift_beginAccess();
  (*(v12 + 40))(v1 + v17, v15, v11);
  swift_endAccess();
  v18 = *(*v1 + 104);
  swift_beginAccess();
  v19 = *(v1 + v18);

  *(v1 + v18) = static Array._allocateUninitialized(_:)();

  if (*(v1 + *(*v1 + 112)))
  {

    AsyncStream.Continuation.finish()();
    return;
  }

  if (MEMORY[0x18D00CDE0](v19, v6))
  {
    v20 = 0;
    do
    {
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (IsNativeType)
      {
        (*(v7 + 16))(v9, v19 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v20, v6);
        v22 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          goto LABEL_12;
        }
      }

      else
      {
        v23 = _ArrayBuffer._getElementSlowPath(_:)();
        if (v25 != 8)
        {
          __break(1u);
          return;
        }

        v26 = v23;
        (*(v7 + 16))(v9, &v26, v6);
        swift_unknownObjectRelease();
        v22 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
LABEL_12:
          __break(1u);
          break;
        }
      }

      TaskGesturePhase.Handler.enqueue(phase:)(v9);
      (*(v7 + 8))(v9, v6);
      ++v20;
    }

    while (v22 != MEMORY[0x18D00CDE0](v19, v6));
  }
}

void TaskGesturePhase.Handler.enqueue(phase:)(uint64_t a1)
{
  v35 = *v1;
  v3 = v35;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for TaskPhase(0, AssociatedTypeWitness, v5, v6);
  v34 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v36 = &v29 - v8;
  v9 = type metadata accessor for AsyncStream.Continuation.YieldResult();
  v32 = *(v9 - 8);
  v33 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v31 = &v29 - v10;
  v11 = type metadata accessor for AsyncStream.Continuation();
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v29 - v14;
  v16 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v29 - v18;
  v20 = *(v3 + 112);
  if ((v1[v20] & 1) == 0)
  {
    v30 = a1;
    v21 = *(v35 + 96);
    swift_beginAccess();
    (*(v13 + 16))(v15, &v1[v21], v12);
    v22 = (*(v16 + 48))(v15, 1, v11);
    v23 = (v34 + 16);
    if (v22 == 1)
    {
      (*(v13 + 8))(v15, v12);
      (*v23)(v36, v30, v7);
      swift_beginAccess();
      type metadata accessor for Array();
      Array.append(_:)();
      swift_endAccess();
    }

    else
    {
      (*(v16 + 32))(v19, v15, v11);
      (*v23)(v36, v30, v7);
      v24 = v31;
      AsyncStream.Continuation.yield(_:)();
      (*(v16 + 8))(v19, v11);
      v26 = v32;
      v25 = v33;
      v27 = (*(v32 + 88))(v24, v33);
      v28 = *MEMORY[0x1E69E8620];
      (*(v26 + 8))(v24, v25);
      if (v27 == v28)
      {
        v1[v20] = 1;
      }
    }
  }
}

void TaskGesturePhase.Handler.invalidate()()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v24 = *(*v0 + 80);
  v25 = v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for TaskPhase(255, AssociatedTypeWitness, v4, v5);
  v6 = type metadata accessor for AsyncStream.Continuation();
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - v9;
  v11 = *(v6 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v14 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v24 - v16;
  v18 = *(v1 + 112);
  if ((*(v0 + v18) & 1) == 0)
  {
    *(v0 + v18) = 1;
    v19 = *(*v0 + 96);
    swift_beginAccess();
    (*(v8 + 16))(v10, v0 + v19, v7);
    if ((*(v11 + 48))(v10, 1, v6) == 1)
    {
      (*(v8 + 8))(v10, v7);
    }

    else
    {
      v20 = *(v11 + 32);
      v20(v17, v10, v6);
      v26 = 17;
      (*(v11 + 16))(v14, v17, v6);
      v21 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v22 = swift_allocObject();
      v23 = v25;
      *(v22 + 16) = v24;
      *(v22 + 24) = v23;
      v20((v22 + v21), v14, v6);
      static Update.enqueueAction(reason:_:)();

      (*(v11 + 8))(v17, v6);
    }
  }
}

void closure #1 in TaskGesturePhase.Handler.invalidate()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for TaskPhase(255, AssociatedTypeWitness, v4, v5);
  type metadata accessor for AsyncStream.Continuation();
  AsyncStream.Continuation.finish()();
}

uint64_t *TaskGesturePhase.Handler.deinit()
{
  TaskGesturePhase.Handler.invalidate()();
  v1 = *(*v0 + 96);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for TaskPhase(255, AssociatedTypeWitness, v3, v4);
  type metadata accessor for AsyncStream.Continuation();
  v5 = type metadata accessor for Optional();
  (*(*(v5 - 8) + 8))(v0 + v1, v5);

  return v0;
}

double TaskGesturePhase.Handler.__deallocating_deinit()
{
  TaskGesturePhase.Handler.deinit();

  swift_deallocClassInstance();
  return result;
}

uint64_t TaskGesturePhase.Handler.init()()
{
  v1 = *(*v0 + 96);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for TaskPhase(255, AssociatedTypeWitness, v3, v4);
  v5 = type metadata accessor for AsyncStream.Continuation();
  (*(*(v5 - 8) + 56))(v0 + v1, 1, 1, v5);
  v6 = *(*v0 + 104);
  swift_checkMetadataState();
  *(v0 + v6) = Array.init()();
  *(v0 + *(*v0 + 112)) = 0;
  return v0;
}

uint64_t TaskGesturePhase.updateValue()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v135 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v121 = type metadata accessor for TaskGesture(0, v6, v7, a4);
  v119 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v117 = &v93[-v8];
  v123 = v7;
  v124 = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for TaskPhase(255, AssociatedTypeWitness, v10, v11);
  v114 = type metadata accessor for AsyncStream.Continuation.BufferingPolicy();
  v112 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v113 = &v93[-v13];
  v120 = type metadata accessor for AsyncStream();
  v118 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v116 = &v93[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v115 = v14;
  MEMORY[0x1EEE9AC00](v15);
  v126 = &v93[-v16];
  v133 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v127 = &v93[-v18];
  v128 = AssociatedTypeWitness;
  v19 = type metadata accessor for GesturePhase();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v125 = &v93[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v22);
  v122 = &v93[-v23];
  MEMORY[0x1EEE9AC00](v24);
  v129 = &v93[-v25];
  v132 = v12;
  v26 = type metadata accessor for Optional();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v130 = &v93[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v29);
  v131 = &v93[-v30];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v32 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v34 = &v93[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v36 = MEMORY[0x1EEE9AC00](v35);
  v38 = &v93[-v37];
  swift_getWitnessTable(protocol conformance descriptor for TaskGesturePhase<A>, a1, v36);
  result = ResettableGestureRule.resetIfNeeded()();
  if ((result & 1) == 0)
  {
    return result;
  }

  v109 = v27;
  v110 = v26;
  v106 = a1;
  v40 = *(TupleTypeMetadata2 + 48);
  v41 = v4[1];
  v101 = *v4;
  v102 = *(v4 + 1);
  v107 = v4;
  v108 = *(v4 + 2);
  v100 = v41;
  Value = AGGraphGetValue();
  v44 = v43;
  v45 = *(v20 + 16);
  v45(v38, Value, v19);
  v38[v40] = v44 & 1;
  v46 = *(v32 + 16);
  v104 = v32 + 16;
  v103 = v46;
  v46(v34, v38, TupleTypeMetadata2);
  v47 = v34[*(TupleTypeMetadata2 + 48)];
  v48 = *(v20 + 8);
  v105 = v34;
  v49 = v20 + 8;
  v111 = v48;
  v48(v34, v19);
  if (v47 != 1)
  {
    return (*(v32 + 8))(v38, TupleTypeMetadata2);
  }

  v98 = v32;
  v99 = TupleTypeMetadata2;
  v50 = v131;
  v95 = *(v133 + 56);
  v95(v131, 1, 1, v132);
  v51 = v129;
  v45(v129, v38, v19);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v97 = v38;
  if (EnumCaseMultiPayload <= 1)
  {
    v96 = v19;
    v94 = EnumCaseMultiPayload;
    if (EnumCaseMultiPayload)
    {
      (*(v109 + 8))(v50, v110);
      v61 = v125;
      v45(v125, v51, v96);
      (*(*(v128 - 8) + 32))(v50, v61);
      v58 = 0;
      v57 = v132;
      v59 = v133;
    }

    else
    {
      v53 = v122;
      v45(v122, v51, v96);
      v54 = v128;
      v55 = *(v128 - 8);
      v56 = (*(v55 + 48))(v53, 1, v128);
      v57 = v132;
      if (v56 == 1)
      {
        v58 = 0;
        v50 = v131;
        v59 = v133;
LABEL_13:
        v19 = v96;
        goto LABEL_14;
      }

      v62 = v131;
      (*(v109 + 8))(v131, v110);
      (*(v55 + 32))(v62, v53, v54);
      v50 = v62;
      v58 = 0;
      v59 = v133;
    }

LABEL_12:
    swift_storeEnumTagMultiPayload();
    v95(v50, 0, 1, v57);
    goto LABEL_13;
  }

  v57 = v132;
  v59 = v133;
  v58 = 1;
  if (EnumCaseMultiPayload == 2)
  {
    v94 = 2;
    (*(v109 + 8))(v50, v110);
    v60 = v125;
    v96 = v19;
    v45(v125, v51, v19);
    (*(*(v128 - 8) + 32))(v50, v60);
    v58 = 1;
    goto LABEL_12;
  }

LABEL_14:
  v132 = v49;
  v111(v51, v19);
  v63 = v109;
  v64 = v130;
  v65 = v110;
  (*(v109 + 16))(v130, v50, v110);
  if ((*(v59 + 48))(v64, 1, v57) == 1)
  {
    (*(v63 + 8))(v64, v65);
    v66 = v107;
    v67 = v108;
  }

  else
  {
    v68 = v127;
    (*(v59 + 32))(v127, v64, v57);
    v66 = v107;
    v67 = v108;
    if (!v108)
    {
      v130 = (v101 | (v100 << 32));
      v70 = v123;
      v71 = v124;
      type metadata accessor for TaskGesturePhase.Handler(0, v124, v123, v69);
      swift_allocObject();
      v108 = TaskGesturePhase.Handler.init()();
      (*(v112 + 104))(v113, *MEMORY[0x1E69E8650], v114);
      swift_retain_n();
      AsyncStream.init(_:bufferingPolicy:_:)();
      v72 = v117;
      TaskGesturePhase.gesture.getter(v71, v70, v117);
      v73 = v121;
      v74 = &v72[*(v121 + 36)];
      v75 = *(v74 + 1);
      v129 = *v74;
      v76 = *(v119 + 8);

      v76(v72, v73);
      v134 = 17;
      v77 = v118;
      v78 = *(v118 + 16);
      LODWORD(v130) = v58;
      v79 = v116;
      v80 = v120;
      v78(v116, v126, v120);
      v81 = (*(v77 + 80) + 48) & ~*(v77 + 80);
      v82 = swift_allocObject();
      v83 = v123;
      v82[2] = v124;
      v82[3] = v83;
      v82[4] = v129;
      v82[5] = v75;
      v84 = v82 + v81;
      v50 = v131;
      v85 = v79;
      v58 = v130;
      (*(v77 + 32))(v84, v85, v80);

      static Update.enqueueAction(reason:_:)();
      v59 = v133;

      v86 = v80;
      v68 = v127;
      (*(v77 + 8))(v126, v86);
      v66 = v107;
      v67 = v108;
      *(v107 + 2) = v108;
    }

    swift_retain_n();
    TaskGesturePhase.Handler.enqueue(phase:)(v68);

    (*(v59 + 8))(v68, v57);
  }

  v87 = v99;
  v88 = v105;
  if (v58)
  {
    if (v67)
    {
      TaskGesturePhase.Handler.invalidate()();
    }

    *(v66 + 2) = 0;
  }

  v89 = v97;
  v90 = v103(v88, v97, v87);
  v91 = MEMORY[0x1EEE9AC00](v90);
  *&v93[-16] = v106;
  *&v93[-8] = swift_getWitnessTable(protocol conformance descriptor for TaskGesturePhase<A>, v91);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v88, partial apply for closure #1 in StatefulRule.value.setter, &v93[-32], v19, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v92);
  (*(v63 + 8))(v50, v65);
  (*(v98 + 8))(v89, v87);
  return v111(v88, v19);
}

double closure #2 in TaskGesturePhase.updateValue()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for TaskPhase(255, AssociatedTypeWitness, v10, v11);
  v12 = type metadata accessor for AsyncStream();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v23 - v14;
  type metadata accessor for TaskPriority?(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  (*(v13 + 16))(v15, a3, v12);
  v20 = (*(v13 + 80) + 64) & ~*(v13 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  *(v21 + 4) = a4;
  *(v21 + 5) = a5;
  *(v21 + 6) = v24;
  *(v21 + 7) = a2;
  (*(v13 + 32))(&v21[v20], v15, v12);

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v18, &async function pointer to partial apply for closure #1 in closure #2 in TaskGesturePhase.updateValue(), v21);

  return result;
}

uint64_t closure #1 in closure #2 in TaskGesturePhase.updateValue()(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v10 = (a4 + *a4);
  v8 = swift_task_alloc();
  *(v6 + 16) = v8;
  *v8 = v6;
  v8[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return v10(a6);
}

void TaskGesturePhase.resetPhase()()
{
  if (*(v0 + 16))
  {
    TaskGesturePhase.Handler.invalidate()();
  }

  *(v0 + 16) = 0;
}

void static TaskGesturePhase.willRemove(attribute:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AGGraphGetAttributeInfo();
  type metadata accessor for TaskGesturePhase(0, a2, a3, v5);
  TaskGesturePhase.resetPhase()();
}

uint64_t protocol witness for static StatefulRule.initialValue.getter in conformance TaskGesturePhase<A>@<X0>(uint64_t a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  v3 = type metadata accessor for GesturePhase();
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

void partial apply for closure #1 in TaskGesturePhase.Handler.invalidate()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for TaskPhase(255, AssociatedTypeWitness, v4, v5);
  v6 = *(type metadata accessor for AsyncStream.Continuation() - 8);
  v7 = v0 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

  closure #1 in TaskGesturePhase.Handler.invalidate()(v7, v1, v2);
}

uint64_t partial apply for closure #2 in closure #1 in Gesture<>.values(_:)(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out ());

  return closure #2 in closure #1 in Gesture<>.values(_:)(a1, a2, v7, v6);
}

uint64_t partial apply for closure #1 in closure #1 in Gesture<>.values(_:)(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out ());

  return closure #1 in closure #1 in Gesture<>.values(_:)(a1, a2, v7, v6);
}

uint64_t assignWithCopy for TaskGesturePhase(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t assignWithTake for TaskGesturePhase(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

double partial apply for closure #2 in TaskGesturePhase.updateValue()()
{
  v1 = v0[2];
  v2 = v0[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for TaskPhase(255, AssociatedTypeWitness, v4, v5);
  v6 = *(type metadata accessor for AsyncStream() - 8);
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0 + ((*(v6 + 80) + 48) & ~*(v6 + 80));

  return closure #2 in TaskGesturePhase.updateValue()(v7, v8, v9, v1, v2);
}

uint64_t partial apply for closure #1 in closure #2 in TaskGesturePhase.updateValue()(uint64_t a1)
{
  v3 = v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for TaskPhase(255, AssociatedTypeWitness, v6, v7);
  v8 = *(type metadata accessor for AsyncStream() - 8);
  v9 = (*(v8 + 80) + 64) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[6];
  v13 = v1[7];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in closure #2 in TaskGesturePhase.updateValue()(a1, v10, v11, v12, v13, v1 + v9);
}

void PickerOption.init<A>(_:value:isAlternate:)()
{
  PickerOption.init<>(_:value:isAlternate:)();
}

{
  PickerOption.init<A, B>(_:value:isAlternate:)();
}

void PickerOption.init<>(_:value:isAlternate:)()
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

{
  PickerOption.init<A>(_:value:isAlternate:)();
}

void PickerOption.init<A>(_:_:isAlternate:)()
{
  PickerOption.init<A, B>(_:value:isAlternate:)();
}

{
  PickerOption.init<A>(_:value:isAlternate:)();
}

uint64_t destroy for DocumentIntroductionConfiguration(uint64_t a1)
{

  if (*(a1 + 24))
  {
  }

  if (*(a1 + 64))
  {
    outlined consume of Text.Storage(*(a1 + 40), *(a1 + 48), *(a1 + 56));
  }

  if (*(a1 + 80))
  {
  }

  if (*(a1 + 96))
  {
  }
}

uint64_t initializeWithCopy for DocumentIntroductionConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  v6 = (a2 + 24);
  v5 = *(a2 + 24);

  if (v5)
  {
    v7 = *(a2 + 32);
    *(a1 + 24) = v5;
    *(a1 + 32) = v7;

    v8 = *(a2 + 64);
    if (v8)
    {
LABEL_3:
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = *(a2 + 56);
      outlined copy of Text.Storage(v9, v10, v11);
      *(a1 + 40) = v9;
      *(a1 + 48) = v10;
      *(a1 + 56) = v11;
      *(a1 + 64) = v8;

      goto LABEL_6;
    }
  }

  else
  {
    *(a1 + 24) = *v6;
    v8 = *(a2 + 64);
    if (v8)
    {
      goto LABEL_3;
    }
  }

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
LABEL_6:
  v12 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);

  if (v12)
  {
    v13 = *(a2 + 88);
    *(a1 + 80) = v12;
    *(a1 + 88) = v13;
  }

  else
  {
    *(a1 + 80) = *(a2 + 80);
  }

  v14 = *(a2 + 96);
  if (v14)
  {
    v15 = *(a2 + 104);
    *(a1 + 96) = v14;
    *(a1 + 104) = v15;
  }

  else
  {
    *(a1 + 96) = *(a2 + 96);
  }

  v16 = *(a2 + 120);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = v16;

  return a1;
}

uint64_t assignWithCopy for DocumentIntroductionConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  v4 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (v4)
    {
      v5 = *(a2 + 32);
      *(a1 + 24) = v4;
      *(a1 + 32) = v5;

      goto LABEL_8;
    }
  }

  else if (v4)
  {
    v6 = *(a2 + 32);
    *(a1 + 24) = v4;
    *(a1 + 32) = v6;

    goto LABEL_8;
  }

  *(a1 + 24) = *(a2 + 24);
LABEL_8:
  v7 = *(a2 + 64);
  if (*(a1 + 64))
  {
    if (v7)
    {
      v8 = *(a2 + 40);
      v9 = *(a2 + 48);
      v10 = *(a2 + 56);
      outlined copy of Text.Storage(v8, v9, v10);
      v11 = *(a1 + 40);
      v12 = *(a1 + 48);
      v13 = *(a1 + 56);
      *(a1 + 40) = v8;
      *(a1 + 48) = v9;
      *(a1 + 56) = v10;
      outlined consume of Text.Storage(v11, v12, v13);
      *(a1 + 64) = *(a2 + 64);
    }

    else
    {
      outlined destroy of Text(a1 + 40);
      v17 = *(a2 + 56);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 56) = v17;
    }
  }

  else if (v7)
  {
    v14 = *(a2 + 40);
    v15 = *(a2 + 48);
    v16 = *(a2 + 56);
    outlined copy of Text.Storage(v14, v15, v16);
    *(a1 + 40) = v14;
    *(a1 + 48) = v15;
    *(a1 + 56) = v16;
    *(a1 + 64) = *(a2 + 64);
  }

  else
  {
    v18 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v18;
  }

  *(a1 + 72) = *(a2 + 72);

  v19 = *(a2 + 80);
  if (*(a1 + 80))
  {
    if (v19)
    {
      v20 = *(a2 + 88);
      *(a1 + 80) = v19;
      *(a1 + 88) = v20;

      goto LABEL_22;
    }
  }

  else if (v19)
  {
    v21 = *(a2 + 88);
    *(a1 + 80) = v19;
    *(a1 + 88) = v21;

    goto LABEL_22;
  }

  *(a1 + 80) = *(a2 + 80);
LABEL_22:
  v22 = *(a2 + 96);
  if (!*(a1 + 96))
  {
    if (v22)
    {
      v24 = *(a2 + 104);
      *(a1 + 96) = v22;
      *(a1 + 104) = v24;

      goto LABEL_29;
    }

LABEL_28:
    *(a1 + 96) = *(a2 + 96);
    goto LABEL_29;
  }

  if (!v22)
  {

    goto LABEL_28;
  }

  v23 = *(a2 + 104);
  *(a1 + 96) = v22;
  *(a1 + 104) = v23;

LABEL_29:
  *(a1 + 112) = *(a2 + 112);

  *(a1 + 120) = *(a2 + 120);
  *(a1 + 124) = *(a2 + 124);
  return a1;
}

uint64_t assignWithTake for DocumentIntroductionConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);

  v5 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (v5)
    {
      v6 = *(a2 + 32);
      *(a1 + 24) = v5;
      *(a1 + 32) = v6;

      if (!*(a1 + 64))
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }

LABEL_9:
    *(a1 + 24) = *(a2 + 24);
    if (!*(a1 + 64))
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if (!v5)
  {
    goto LABEL_9;
  }

  v7 = *(a2 + 32);
  *(a1 + 24) = v5;
  *(a1 + 32) = v7;
  if (!*(a1 + 64))
  {
    goto LABEL_13;
  }

LABEL_10:
  v8 = *(a2 + 64);
  if (v8)
  {
    v9 = *(a2 + 56);
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v12 = *(a1 + 56);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = v9;
    outlined consume of Text.Storage(v10, v11, v12);
    *(a1 + 64) = v8;

    goto LABEL_14;
  }

  outlined destroy of Text(a1 + 40);
LABEL_13:
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
LABEL_14:
  *(a1 + 72) = *(a2 + 72);

  v13 = *(a2 + 80);
  if (*(a1 + 80))
  {
    if (v13)
    {
      v14 = *(a2 + 88);
      *(a1 + 80) = v13;
      *(a1 + 88) = v14;

      goto LABEL_21;
    }
  }

  else if (v13)
  {
    v15 = *(a2 + 88);
    *(a1 + 80) = v13;
    *(a1 + 88) = v15;
    goto LABEL_21;
  }

  *(a1 + 80) = *(a2 + 80);
LABEL_21:
  v16 = *(a2 + 96);
  if (!*(a1 + 96))
  {
    if (v16)
    {
      v18 = *(a2 + 104);
      *(a1 + 96) = v16;
      *(a1 + 104) = v18;
      goto LABEL_28;
    }

LABEL_27:
    *(a1 + 96) = *(a2 + 96);
    goto LABEL_28;
  }

  if (!v16)
  {

    goto LABEL_27;
  }

  v17 = *(a2 + 104);
  *(a1 + 96) = v16;
  *(a1 + 104) = v17;

LABEL_28:
  *(a1 + 112) = *(a2 + 112);

  *(a1 + 120) = *(a2 + 120);
  return a1;
}

UIContextMenuConfiguration_optional __swiftcall ListCollectionViewCellBase.outermostContextMenuConfiguration()()
{
  if (*(v0 + direct field offset for ListCollectionViewCellBase.host))
  {
    v1 = specialized _UIHostingView.contextMenuBridge.getter();
    v2 = ContextMenuBridge.outermostConfiguration()();

    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  result.value.super.isa = v4;
  result.is_nil = v3;
  return result;
}

uint64_t ListCollectionViewCellBase.outermostContextMenuResponder.getter()
{
  if (*(v0 + direct field offset for ListCollectionViewCellBase.host))
  {
    v1 = specialized _UIHostingView.contextMenuBridge.getter();
    v2 = &v1[OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host];
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v4 = *(v2 + 1);
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 24);
    v7 = v1;
    v8 = v6(ObjectType, v4);
    v9 = swift_unknownObjectRelease();
    if (v8)
    {
      MEMORY[0x1EEE9AC00](v9);
      dispatch thunk of ResponderNode.visit(applying:)();

      return 0;
    }
  }

  return 0;
}

double ListCollectionViewCellBase.swipeActions.getter@<D0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + direct field offset for ListCollectionViewCellBase.host);
  if (v3)
  {
    v4 = v3;
    _UIHostingView.viewGraph.getter(v4);

    LOBYTE(v13[0]) = 17;
    type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for SwipeActions.Value?, &type metadata for SwipeActions.Value);
    static Update.dispatchImmediately<A>(reason:_:)();
  }

  else
  {
    _s7SwiftUI12SwipeActionsO5ValueVSgWOi0_(v13);
    v6 = v13[11];
    a1[10] = v13[10];
    a1[11] = v6;
    v7 = v13[13];
    a1[12] = v13[12];
    a1[13] = v7;
    v8 = v13[7];
    a1[6] = v13[6];
    a1[7] = v8;
    v9 = v13[9];
    a1[8] = v13[8];
    a1[9] = v9;
    v10 = v13[3];
    a1[2] = v13[2];
    a1[3] = v10;
    v11 = v13[5];
    a1[4] = v13[4];
    a1[5] = v11;
    result = *v13;
    v12 = v13[1];
    *a1 = v13[0];
    a1[1] = v12;
  }

  return result;
}

double ListCollectionViewCellBase.identifiedViews.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + direct field offset for ListCollectionViewCellBase.host);
  if (v3)
  {
    v4 = *MEMORY[0x1E69E7D40] & *v1;
    v5 = type metadata accessor for ModifiedContent();
    v16 = *(*(v4 + 176) + 8);
    v17 = lazy protocol witness table accessor for type CollectionViewCellModifier and conformance CollectionViewCellModifier();
    v6 = v3;
    WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v5, &v16);
    v9 = type metadata accessor for _UIHostingView(0, v5, WitnessTable, v8);
    swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v9, v16, v17);
    ViewRendererHost.preferenceValue<A>(_:)();

    v10 = v27[0];
    *(a1 + 128) = v26;
    *(a1 + 144) = v10;
    *(a1 + 153) = *(v27 + 9);
    v11 = v23;
    *(a1 + 64) = v22;
    *(a1 + 80) = v11;
    v12 = v25;
    *(a1 + 96) = v24;
    *(a1 + 112) = v12;
    v13 = v19;
    *a1 = v18;
    *(a1 + 16) = v13;
    v14 = v21;
    *(a1 + 32) = v20;
    *(a1 + 48) = v14;
  }

  else
  {
    *(a1 + 160) = 0;
    *&v14 = 0;
    *(a1 + 128) = 0u;
    *(a1 + 144) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 112) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 168) = 2;
  }

  return *&v14;
}

uint64_t ListCollectionViewCellBase.responderNode.getter()
{
  v1 = *(v0 + direct field offset for ListCollectionViewCellBase.host);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  _UIHostingView.viewGraph.getter(v2);

  v3 = ViewGraph.responderNode.getter();

  return v3;
}

uint64_t ListCollectionViewCellBase.secondaryNavigationBehavior.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = direct field offset for ListCollectionViewCellBase._secondaryNavigationBehavior;
  swift_beginAccess();
  return outlined init with copy of AnyAccessibilityValue?(v1 + v3, a1, &lazy cache variable for type metadata for PlatformItemList.Item.SecondaryNavigationBehavior?, &type metadata for PlatformItemList.Item.SecondaryNavigationBehavior);
}

void *ListCollectionViewCellBase.dragBridge.getter()
{
  v1 = *(v0 + direct field offset for ListCollectionViewCellBase.host);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x120));
  v3 = v2;
  return v2;
}

void __swiftcall ListCollectionViewCellBase.editMenuInteraction(_:menuFor:suggestedActions:)(UIMenu_optional *__return_ptr retstr, UIEditMenuInteraction _, UIEditMenuConfiguration *menuFor, Swift::OpaquePointer suggestedActions)
{
  v8 = v4 + OBJC_IVAR____TtC7SwiftUI25AnyListCollectionViewCell_editMenuDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v8 + 8);
    ObjectType = swift_getObjectType();
    (*(v9 + 8))(_.super.isa, menuFor, suggestedActions._rawValue, ObjectType, v9);
    swift_unknownObjectRelease();
  }
}

__C::CGRect __swiftcall ListCollectionViewCellBase.editMenuInteraction(_:targetRectFor:)(UIEditMenuInteraction _, UIEditMenuConfiguration *targetRectFor)
{
  v5 = v2 + OBJC_IVAR____TtC7SwiftUI25AnyListCollectionViewCell_editMenuDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    v8 = (*(v6 + 16))(_.super.isa, targetRectFor, ObjectType, v6);
    v10 = v9;
    v12 = v11;
    v14 = v13;
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0.0;
    v10 = 0.0;
    v12 = 0.0;
    v14 = 0.0;
  }

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

double ListCollectionViewCellBase.editMenuInteraction(_:willPresentMenuFor:animator:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3 + OBJC_IVAR____TtC7SwiftUI25AnyListCollectionViewCell_editMenuDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v7 + 8);
    ObjectType = swift_getObjectType();
    (*(v9 + 24))(a1, a2, a3, ObjectType, v9);

    swift_unknownObjectRelease();
  }

  return result;
}

double ListCollectionViewCellBase.editMenuInteraction(_:willDismissMenuFor:animator:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3 + OBJC_IVAR____TtC7SwiftUI25AnyListCollectionViewCell_editMenuDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v7 + 8);
    ObjectType = swift_getObjectType();
    (*(v9 + 32))(a1, a2, a3, ObjectType, v9);

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t ListCollectionViewCellBase.avoidOffScreenRendering.getter(uint64_t a1)
{
  static Semantics.v6.getter();
  if ((isLinkedOnOrAfter(_:)() & 1) == 0)
  {
    return 0;
  }

  result = ListCollectionViewCellBase.backgroundHost.getter();
  if (result)
  {

    return 1;
  }

  return result;
}

UIContextMenuConfiguration_optional __swiftcall AnyListCollectionViewCell.outermostContextMenuConfiguration()()
{
  v0 = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  result.value.super.isa = v0;
  result.is_nil = v1;
  return result;
}

id AnyListCollectionViewCell.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC7SwiftUI25AnyListCollectionViewCell_selectionDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC7SwiftUI25AnyListCollectionViewCell_insetsDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC7SwiftUI25AnyListCollectionViewCell_editMenuDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for AnyListCollectionViewCell();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id AnyListCollectionViewCell.__deallocating_deinit(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t ListCollectionViewCellBase.selectionBehavior.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + direct field offset for ListCollectionViewCellBase.selectionBehavior + 48);
  v9 = *(v1 + direct field offset for ListCollectionViewCellBase.selectionBehavior + 32);
  v10 = v2;
  v11 = *(v1 + direct field offset for ListCollectionViewCellBase.selectionBehavior + 64);
  v3 = v11;
  v4 = *(v1 + direct field offset for ListCollectionViewCellBase.selectionBehavior + 16);
  v8[0] = *(v1 + direct field offset for ListCollectionViewCellBase.selectionBehavior);
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return outlined init with copy of AnyAccessibilityValue?(v8, v7, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior);
}

id @objc ListCollectionViewCellBase.focusEffect.getter(void *a1)
{
  v1 = a1;
  v2 = ListCollectionViewCellBase.focusEffect.getter();

  return v2;
}

id ListCollectionViewCellBase.focusEffect.getter()
{
  v1 = *MEMORY[0x1E69E7D40] & *v0;
  v2 = ListCollectionViewCellBase.backgroundHost.getter();
  if (v2)
  {

    if (one-time initialization token for suppressFocusHaloWithBackground != -1)
    {
      swift_once();
    }

    if (suppressFocusHaloWithBackground)
    {
      return 0;
    }
  }

  v5 = type metadata accessor for ListCollectionViewCellBase(0, *(v1 + 168), *(v1 + 176), v3);
  v6.receiver = v0;
  v6.super_class = v5;
  return objc_msgSendSuper2(&v6, sel_focusEffect);
}

void @objc ListCollectionViewCellBase.focusEffect.setter(void *a1, uint64_t a2, void *a3)
{
  v9 = a3;
  v5 = a1;
  specialized ListCollectionViewCellBase.focusEffect.setter(a3, v6, v7, v8);
}

id ListCollectionViewCellBase.init(coder:)(void *a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  *(v1 + direct field offset for ListCollectionViewCellBase.wasEditing) = 0;
  *(v1 + direct field offset for ListCollectionViewCellBase.wasSwiped) = 0;
  v5 = v1 + direct field offset for ListCollectionViewCellBase.cellHostWidth;
  *v5 = 0;
  v5[8] = 1;
  v6 = direct field offset for ListCollectionViewCellBase.lastConfiguration;
  v7 = type metadata accessor for UIListContentConfiguration();
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  v8 = v1 + direct field offset for ListCollectionViewCellBase.uniformHeight;
  *v8 = 0;
  v8[8] = 1;
  *(v1 + direct field offset for ListCollectionViewCellBase.shouldHugContent) = 0;
  v9 = (v1 + direct field offset for ListCollectionViewCellBase.viewListID);
  *v9 = 0;
  v9[1] = 0;
  v10 = v1 + direct field offset for ListCollectionViewCellBase.selectionBehavior;
  v10[64] = 0;
  *(v10 + 2) = 0u;
  *(v10 + 3) = 0u;
  *v10 = xmmword_18CD633F0;
  *(v10 + 1) = 0u;
  v11 = (v1 + direct field offset for ListCollectionViewCellBase._secondaryNavigationBehavior);
  *v11 = 0;
  v11[1] = 0;
  v11[2] = 0;
  v11[3] = 1;
  v11[5] = 0;
  v11[6] = 0;
  v11[4] = 0;
  *(v1 + direct field offset for ListCollectionViewCellBase.popUpButtonSeed) = -1;
  *(v1 + direct field offset for ListCollectionViewCellBase.host) = 0;
  v13 = type metadata accessor for ListCollectionViewCellBase(0, *((v4 & v3) + 0xA8), *((v4 & v3) + 0xB0), v12);
  v16.receiver = v1;
  v16.super_class = v13;
  v14 = objc_msgSendSuper2(&v16, sel_initWithCoder_, a1);

  if (v14)
  {
  }

  return v14;
}

uint64_t @objc ListCollectionViewCellBase.canBecomeFocused.getter(void *a1)
{
  v1 = a1;
  v2 = ListCollectionViewCellBase.canBecomeFocused.getter();

  return v2 & 1;
}

id ListCollectionViewCellBase.canBecomeFocused.getter()
{
  v1 = *MEMORY[0x1E69E7D40] & *v0;
  v2 = MEMORY[0x18D00C850](0x4774694B49555841, 0xEB0000000065756CLL);
  v3 = NSClassFromString(v2);

  if (v3 && [v0 respondsToSelector_] && (objc_msgSend(v0, sel__accessibilityIsFKARunningForFocusItem) & 1) != 0)
  {
    return 0;
  }

  v6 = type metadata accessor for ListCollectionViewCellBase(0, *(v1 + 168), *(v1 + 176), v4);
  v7.receiver = v0;
  v7.super_class = v6;
  return objc_msgSendSuper2(&v7, sel_canBecomeFocused);
}

id @objc ListCollectionViewCellBase.editMenuInteraction(_:menuFor:suggestedActions:)(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenuElement, 0x1E69DCC78);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a3;
  v10 = a4;
  v11 = a1;
  ListCollectionViewCellBase.editMenuInteraction(_:menuFor:suggestedActions:)(v12, v9, v10, v8);
  v14 = v13;

  return v14;
}

double @objc ListCollectionViewCellBase.editMenuInteraction(_:targetRectFor:)(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  *&v9 = ListCollectionViewCellBase.editMenuInteraction(_:targetRectFor:)(v6, v7);

  return v9;
}

void @objc ListCollectionViewCellBase.editMenuInteraction(_:willPresentMenuFor:animator:)(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(id, id, uint64_t))
{
  v10 = a3;
  v11 = a4;
  swift_unknownObjectRetain();
  v12 = a1;
  a6(v10, v11, a5);

  swift_unknownObjectRelease();
}

double closure #1 in ListCollectionViewCellBase.hostingView<A>(_:didChangePlatformItemList:)(void *a1, char a2)
{
  v4 = *MEMORY[0x1E69E7D40] & *a1;
  v5 = a1 + OBJC_IVAR____TtC7SwiftUI25AnyListCollectionViewCell_selectionDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v5 + 1);
    ObjectType = swift_getObjectType();
    (*(v7 + 8))(a1, a2 & 1, *(v4 + 168), *(v4 + 176), ObjectType, v7);

    swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall ListCollectionViewCellBase.removeFromSuperview()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xA8);
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xB0);
  v6.receiver = v1;
  v6.super_class = type metadata accessor for ListCollectionViewCellBase(0, v2, v3, v0);
  objc_msgSendSuper2(&v6, sel_removeFromSuperview);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = v3;
  v5[4] = v4;

  static Update.enqueueAction(reason:_:)();
}

void closure #1 in ListCollectionViewCellBase.removeFromSuperview()(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + direct field offset for ListCollectionViewCellBase.host);
    if (v3)
    {
      v4 = v3;

      v2 = _UIHostingView.base.getter();
      UIHostingViewBase.updateRemovedState(uiView:)(0);
    }
  }
}

void @objc ListCollectionViewCellBase.removeFromSuperview()(void *a1)
{
  v1 = a1;
  ListCollectionViewCellBase.removeFromSuperview()();
}

uint64_t ListCollectionViewCellBase.canUpdateSwipeActionPresentationBinding.getter()
{
  ListCollectionViewCellBase.swipeActions.getter(v15);
  v26 = v15[10];
  v27 = v15[11];
  v28 = v15[12];
  v29 = v15[13];
  v22 = v15[6];
  v23 = v15[7];
  v24 = v15[8];
  v25 = v15[9];
  v18 = v15[2];
  v19 = v15[3];
  v20 = v15[4];
  v21 = v15[5];
  v16 = v15[0];
  v17 = v15[1];
  if (_s7SwiftUI12SwipeActionsO5ValueVSgWOg(&v16) != 1)
  {
    outlined init with copy of AnyAccessibilityValue?(&v16, v7, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration);
    outlined destroy of AnyAccessibilityValue?(v15, &lazy cache variable for type metadata for SwipeActions.Value?, &type metadata for SwipeActions.Value);
    if (*(&v17 + 1))
    {
      v0 = v18;
      outlined copy of Binding<Int>?(v18, *(&v18 + 1));
      outlined destroy of AnyAccessibilityValue?(&v16, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration);
      if (*(&v0 + 1))
      {
        v2 = v0 >> 64;
        v1 = v0;
LABEL_9:
        outlined consume of Binding<NavigationSplitViewColumn>?(v1, v2);
        return 1;
      }
    }
  }

  ListCollectionViewCellBase.swipeActions.getter(v6);
  v11 = v6[10];
  v12 = v6[11];
  v13 = v6[12];
  v14 = v6[13];
  v7[6] = v6[6];
  v8 = v6[7];
  v9 = v6[8];
  v10 = v6[9];
  v7[2] = v6[2];
  v7[3] = v6[3];
  v7[4] = v6[4];
  v7[5] = v6[5];
  v7[0] = v6[0];
  v7[1] = v6[1];
  if (_s7SwiftUI12SwipeActionsO5ValueVSgWOg(v7) != 1)
  {
    outlined init with copy of AnyAccessibilityValue?(&v8, &v5, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration);
    outlined destroy of AnyAccessibilityValue?(v6, &lazy cache variable for type metadata for SwipeActions.Value?, &type metadata for SwipeActions.Value);
    if (*(&v9 + 1))
    {
      v3 = v10;
      outlined copy of Binding<Int>?(v10, *(&v10 + 1));
      outlined destroy of AnyAccessibilityValue?(&v8, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration);
      if (*(&v3 + 1))
      {
        v2 = v3 >> 64;
        v1 = v3;
        goto LABEL_9;
      }
    }
  }

  return 0;
}

double ListCollectionViewCellBase.updateSwipeActionPresentationBinding()()
{
  v1 = v0;
  ListCollectionViewCellBase.swipeActions.getter(v15);
  v26 = v15[10];
  v27 = v15[11];
  v28 = v15[12];
  v29 = v15[13];
  v22 = v15[6];
  v23 = v15[7];
  v24 = v15[8];
  v25 = v15[9];
  v18 = v15[2];
  v19 = v15[3];
  v20 = v15[4];
  v21 = v15[5];
  v16 = v15[0];
  v17 = v15[1];
  if (_s7SwiftUI12SwipeActionsO5ValueVSgWOg(&v16) != 1)
  {
    outlined init with copy of AnyAccessibilityValue?(&v16, v7, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration);
    outlined destroy of AnyAccessibilityValue?(v15, &lazy cache variable for type metadata for SwipeActions.Value?, &type metadata for SwipeActions.Value);
    if (*(&v17 + 1))
    {
      v2 = *(&v18 + 1);
      outlined copy of Binding<Int>?(v18, *(&v18 + 1));
      outlined destroy of AnyAccessibilityValue?(&v16, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration);
      if (v2)
      {
        LOBYTE(v7[0]) = *(v1 + direct field offset for ListCollectionViewCellBase.wasSwiped);
        dispatch thunk of AnyLocation.set(_:transaction:)();
      }
    }
  }

  ListCollectionViewCellBase.swipeActions.getter(v6);
  v11 = v6[10];
  v12 = v6[11];
  v13 = v6[12];
  v14 = v6[13];
  v7[6] = v6[6];
  v8 = v6[7];
  v9 = v6[8];
  v10 = v6[9];
  v7[2] = v6[2];
  v7[3] = v6[3];
  v7[4] = v6[4];
  v7[5] = v6[5];
  v7[0] = v6[0];
  v7[1] = v6[1];
  if (_s7SwiftUI12SwipeActionsO5ValueVSgWOg(v7) != 1)
  {
    outlined init with copy of AnyAccessibilityValue?(&v8, v5, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration);
    outlined destroy of AnyAccessibilityValue?(v6, &lazy cache variable for type metadata for SwipeActions.Value?, &type metadata for SwipeActions.Value);
    if (*(&v9 + 1))
    {
      v4 = *(&v10 + 1);
      outlined copy of Binding<Int>?(v10, *(&v10 + 1));
      outlined destroy of AnyAccessibilityValue?(&v8, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration);
      if (v4)
      {
        v5[0] = *(v1 + direct field offset for ListCollectionViewCellBase.wasSwiped);
        dispatch thunk of AnyLocation.set(_:transaction:)();
      }
    }
  }

  return result;
}

Swift::Void __swiftcall ListCollectionViewCellBase.didUpdateFocus(in:with:)(UIFocusUpdateContext in, UIFocusAnimationCoordinator with)
{
  v6 = type metadata accessor for ListCollectionViewCellBase(0, *((*MEMORY[0x1E69E7D40] & *v3) + 0xA8), *((*MEMORY[0x1E69E7D40] & *v3) + 0xB0), v2);
  v8.receiver = v3;
  v8.super_class = v6;
  objc_msgSendSuper2(&v8, sel_didUpdateFocusInContext_withAnimationCoordinator_, in.super.isa, with.super.isa);
  v7 = *(v3 + direct field offset for ListCollectionViewCellBase.host);
  if (v7)
  {
    [v7 didUpdateFocusInContext:in.super.isa withAnimationCoordinator:with.super.isa];
  }
}

void @objc ListCollectionViewCellBase.didUpdateFocus(in:with:)(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  ListCollectionViewCellBase.didUpdateFocus(in:with:)(v6, v7);
}

uint64_t @objc ListCollectionViewCellBase._disableRasterizeInAnimations()(void *a1)
{
  v1 = a1;
  v2 = ListCollectionViewCellBase._disableRasterizeInAnimations()(&selRef__disableRasterizeInAnimations);

  return v2 & 1;
}

uint64_t ListCollectionViewCellBase._disableRasterizeInAnimations()(SEL *a1)
{
  v3 = *MEMORY[0x1E69E7D40] & *v1;
  if (ListCollectionViewCellBase.avoidOffScreenRendering.getter(a1))
  {
    return 1;
  }

  v6 = type metadata accessor for ListCollectionViewCellBase(0, *(v3 + 168), *(v3 + 176), v4);
  v7.receiver = v1;
  v7.super_class = v6;
  return objc_msgSendSuper2(&v7, *a1);
}

uint64_t @objc ListCollectionViewCellBase._disableGroupOpacityInAnimations()(void *a1)
{
  v1 = a1;
  v2 = ListCollectionViewCellBase._disableRasterizeInAnimations()(&selRef__disableGroupOpacityInAnimations);

  return v2 & 1;
}

void ListCollectionViewCellBase.__ivar_destroyer()
{
  _s5UIKit25UIBackgroundConfigurationVSgWOhTm_0(v0 + direct field offset for ListCollectionViewCellBase.lastConfiguration, type metadata accessor for UIListContentConfiguration?);

  outlined consume of PlatformItemList.Item.SelectionBehavior?(*(v0 + direct field offset for ListCollectionViewCellBase.selectionBehavior), *(v0 + direct field offset for ListCollectionViewCellBase.selectionBehavior + 8), *(v0 + direct field offset for ListCollectionViewCellBase.selectionBehavior + 16), *(v0 + direct field offset for ListCollectionViewCellBase.selectionBehavior + 24), *(v0 + direct field offset for ListCollectionViewCellBase.selectionBehavior + 32), *(v0 + direct field offset for ListCollectionViewCellBase.selectionBehavior + 40), *(v0 + direct field offset for ListCollectionViewCellBase.selectionBehavior + 48));
  outlined destroy of AnyAccessibilityValue?(v0 + direct field offset for ListCollectionViewCellBase._secondaryNavigationBehavior, &lazy cache variable for type metadata for PlatformItemList.Item.SecondaryNavigationBehavior?, &type metadata for PlatformItemList.Item.SecondaryNavigationBehavior);
  v1 = *(v0 + direct field offset for ListCollectionViewCellBase.host);
}

id ListCollectionViewCellBase.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ListCollectionViewCellBase(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0xA8), *((*MEMORY[0x1E69E7D40] & *v4) + 0xB0), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

void @objc ListCollectionViewCellBase.__ivar_destroyer(uint64_t a1)
{
  _s5UIKit25UIBackgroundConfigurationVSgWOhTm_0(a1 + direct field offset for ListCollectionViewCellBase.lastConfiguration, type metadata accessor for UIListContentConfiguration?);

  outlined consume of PlatformItemList.Item.SelectionBehavior?(*(a1 + direct field offset for ListCollectionViewCellBase.selectionBehavior), *(a1 + direct field offset for ListCollectionViewCellBase.selectionBehavior + 8), *(a1 + direct field offset for ListCollectionViewCellBase.selectionBehavior + 16), *(a1 + direct field offset for ListCollectionViewCellBase.selectionBehavior + 24), *(a1 + direct field offset for ListCollectionViewCellBase.selectionBehavior + 32), *(a1 + direct field offset for ListCollectionViewCellBase.selectionBehavior + 40), *(a1 + direct field offset for ListCollectionViewCellBase.selectionBehavior + 48));
  outlined destroy of AnyAccessibilityValue?(a1 + direct field offset for ListCollectionViewCellBase._secondaryNavigationBehavior, &lazy cache variable for type metadata for PlatformItemList.Item.SecondaryNavigationBehavior?, &type metadata for PlatformItemList.Item.SecondaryNavigationBehavior);
  v2 = *(a1 + direct field offset for ListCollectionViewCellBase.host);
}

uint64_t ListCollectionViewHeaderFooter.hostingView<A>(_:willModifyViewInputs:)()
{
  lazy protocol witness table accessor for type PlatformItemListFlagsInput and conformance PlatformItemListFlagsInput();
  PropertyList.subscript.setter();
  return PropertyList.subscript.setter();
}

id @objc ListCollectionViewCell.init(coder:)(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v8.receiver = a1;
  v8.super_class = (a4)(0, a2);
  v5 = a3;
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, v5);

  if (v6)
  {
  }

  return v6;
}

uint64_t one-time initialization function for suppressFocusHaloWithBackground()
{
  result = closure #1 in variable initialization expression of suppressFocusHaloWithBackground();
  suppressFocusHaloWithBackground = result & 1;
  return result;
}

uint64_t closure #1 in variable initialization expression of suppressFocusHaloWithBackground()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v3;

    if (v2 == 0xD000000000000011 && 0x800000018CD503D0 == v4)
    {
      LOBYTE(v1) = 1;
    }

    else
    {
      LOBYTE(v1) = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return v1 & 1;
}

id specialized ListCollectionViewCellBase.focusEffect.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for ListCollectionViewCellBase(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0xA8), *((*MEMORY[0x1E69E7D40] & *v4) + 0xB0), a4);
  v8.receiver = v4;
  v8.super_class = v6;
  return objc_msgSendSuper2(&v8, sel_setFocusEffect_, a1);
}

void outlined consume of PlatformItemList.Item.SelectionBehavior?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2 != 1)
  {
    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(a2, a3);
    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(a4, a5);

    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(a6, a7);
  }
}

double InsetTableStyle.makeBody(configuration:)@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  outlined init with copy of Binding<AnySelectionManager>?(a1, a2);
  v4 = a1[7];
  v5 = a1[8];
  v6 = a1[9];
  v7 = a1[10];
  v8 = a1[11];
  v9 = a1[12];
  v10 = a1[13];
  a2[7] = v4;
  a2[8] = v5;
  a2[9] = v6;
  a2[10] = v7;
  a2[11] = v8;
  a2[12] = v9;
  a2[13] = v10;
  outlined copy of Binding<[SwiftUIAnySortComparator]>?(v4, v5);

  return outlined copy of Binding<AnyTableColumnCustomization>?(v7, v8);
}

double protocol witness for TableStyle.makeBody(configuration:) in conformance InsetTableStyle@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  outlined init with copy of Binding<AnySelectionManager>?(a1, a2);
  v4 = a1[7];
  v5 = a1[8];
  v6 = a1[9];
  v7 = a1[10];
  v8 = a1[11];
  v9 = a1[12];
  v10 = a1[13];
  a2[7] = v4;
  a2[8] = v5;
  a2[9] = v6;
  a2[10] = v7;
  a2[11] = v8;
  a2[12] = v9;
  a2[13] = v10;
  outlined copy of Binding<[SwiftUIAnySortComparator]>?(v4, v5);

  return outlined copy of Binding<AnyTableColumnCustomization>?(v7, v8);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<CollectionViewTableRoot<Never, TableStyleConfiguration.RowsAlias, TableStyleConfiguration.ColumnsAlias>, TableShowsFirstColumnOnlyModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<CollectionViewTableRoot<Never, TableStyleConfiguration.RowsAlias, TableStyleConfiguration.ColumnsAlias>, TableShowsFirstColumnOnlyModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<CollectionViewTableRoot<Never, TableStyleConfiguration.RowsAlias, TableStyleConfiguration.ColumnsAlias>, TableShowsFirstColumnOnlyModifier> and conformance <> ModifiedContent<A, B>)
  {
    v4[2] = v0;
    v4[3] = v1;
    type metadata accessor for ModifiedContent<CollectionViewTableRoot<Never, TableStyleConfiguration.RowsAlias, TableStyleConfiguration.ColumnsAlias>, TableShowsFirstColumnOnlyModifier>(255);
    v4[0] = &protocol witness table for CollectionViewTableRoot<A, B, C>;
    v4[1] = &protocol witness table for TableShowsFirstColumnOnlyModifier;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v3, v4);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<CollectionViewTableRoot<Never, TableStyleConfiguration.RowsAlias, TableStyleConfiguration.ColumnsAlias>, TableShowsFirstColumnOnlyModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<CollectionViewTableRoot<Never, TableStyleConfiguration.RowsAlias, TableStyleConfiguration.ColumnsAlias>, TableShowsFirstColumnOnlyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<CollectionViewTableRoot<Never, TableStyleConfiguration.RowsAlias, TableStyleConfiguration.ColumnsAlias>, TableShowsFirstColumnOnlyModifier>)
  {
    type metadata accessor for CollectionViewTableRoot<Never, TableStyleConfiguration.RowsAlias, TableStyleConfiguration.ColumnsAlias>();
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<CollectionViewTableRoot<Never, TableStyleConfiguration.RowsAlias, TableStyleConfiguration.ColumnsAlias>, TableShowsFirstColumnOnlyModifier>);
    }
  }
}

void type metadata accessor for CollectionViewTableRoot<Never, TableStyleConfiguration.RowsAlias, TableStyleConfiguration.ColumnsAlias>()
{
  if (!lazy cache variable for type metadata for CollectionViewTableRoot<Never, TableStyleConfiguration.RowsAlias, TableStyleConfiguration.ColumnsAlias>)
  {
    v4[5] = v0;
    v4[6] = v1;
    v4[0] = MEMORY[0x1E69E73E0];
    v4[1] = &type metadata for TableStyleConfiguration.RowsAlias;
    v4[2] = &type metadata for TableStyleConfiguration.ColumnsAlias;
    v4[3] = &protocol witness table for TableStyleConfiguration.RowsAlias;
    v4[4] = &protocol witness table for TableStyleConfiguration.ColumnsAlias;
    v2 = type metadata accessor for CollectionViewTableRoot(0, v4);
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for CollectionViewTableRoot<Never, TableStyleConfiguration.RowsAlias, TableStyleConfiguration.ColumnsAlias>);
    }
  }
}

double TableShowsFirstColumnOnlyModifier.Child.value.getter@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  Value = AGGraphGetValue();
  v5 = Value[1];
  *&v7 = *Value;
  *(&v7 + 1) = v5;
  if ((a1 & 0x100000000) != 0)
  {
    type metadata accessor for EnvironmentPropertyKey<TableShowsFirstColumnOnlyKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TableShowsFirstColumnOnlyKey> and conformance EnvironmentPropertyKey<A>();
    swift_retain_n();
  }

  else
  {

    EnvironmentValues.horizontalSizeClass.getter();
    type metadata accessor for EnvironmentPropertyKey<TableShowsFirstColumnOnlyKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TableShowsFirstColumnOnlyKey> and conformance EnvironmentPropertyKey<A>();
  }

  PropertyList.subscript.setter();
  if (v5)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  result = *&v7;
  *a2 = v7;
  return result;
}

double protocol witness for Rule.value.getter in conformance TableShowsFirstColumnOnlyModifier.Child@<D0>(_OWORD *a1@<X8>)
{
  v2 = 0x100000000;
  if (!*(v1 + 4))
  {
    v2 = 0;
  }

  return TableShowsFirstColumnOnlyModifier.Child.value.getter(v2 | *v1, a1);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance TableShowsFirstColumnOnlyModifier(unsigned int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
{
  v3 = *a1;
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v7[4] = *(a2 + 64);
  v8 = *(a2 + 80);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return specialized static ViewModifier<>._makeView(modifier:inputs:body:)(v3, v7, a3);
}

uint64_t EnvironmentValues.tableShowsFirstColumnOnly.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<TableShowsFirstColumnOnlyKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TableShowsFirstColumnOnlyKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<TableShowsFirstColumnOnlyKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TableShowsFirstColumnOnlyKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  return v2;
}

void type metadata accessor for EnvironmentPropertyKey<TableShowsFirstColumnOnlyKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<TableShowsFirstColumnOnlyKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TableShowsFirstColumnOnlyKey>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<TableShowsFirstColumnOnlyKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<TableShowsFirstColumnOnlyKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<TableShowsFirstColumnOnlyKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<TableShowsFirstColumnOnlyKey>();
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<TableShowsFirstColumnOnlyKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void specialized implicit closure #1 in _GraphInputs.tableShowsFirstColumnOnly.getter(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<TableShowsFirstColumnOnlyKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TableShowsFirstColumnOnlyKey> and conformance EnvironmentPropertyKey<A>();

    swift_retain_n();
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<TableShowsFirstColumnOnlyKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TableShowsFirstColumnOnlyKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.getter();
  }

  *a2 = v3;
}

uint64_t specialized static TableShowsFirstColumnOnlyModifier._makeInputs(modifier:inputs:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  _GraphInputs.interfaceIdiom.getter();
  AnyInterfaceIdiom.accepts<A>(_:)();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type TableShowsFirstColumnOnlyModifier.Child and conformance TableShowsFirstColumnOnlyModifier.Child();
  Attribute.init<A>(body:value:flags:update:)();
  return _GraphInputs.environment.setter();
}

uint64_t __designTimeSelection<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[0] = a2;
  v8[1] = a3;
  lazy protocol witness table accessor for type __DesignTimeSelectionIdentifier and conformance __DesignTimeSelectionIdentifier();

  View._identified<A>(by:)(v8, a4, &type metadata for __DesignTimeSelectionIdentifier, a5);
}

void type metadata accessor for _IdentifiedModifier<__DesignTimeSelectionIdentifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _IdentifiedModifier<__DesignTimeSelectionIdentifier>)
  {
    v2 = lazy protocol witness table accessor for type __DesignTimeSelectionIdentifier and conformance __DesignTimeSelectionIdentifier();
    v4 = type metadata accessor for _IdentifiedModifier(a1, &type metadata for __DesignTimeSelectionIdentifier, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for _IdentifiedModifier<__DesignTimeSelectionIdentifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EffectiveButtonStyle.Box and conformance EffectiveButtonStyle.Box()
{
  result = lazy protocol witness table cache variable for type EffectiveButtonStyle.Box and conformance EffectiveButtonStyle.Box;
  if (!lazy protocol witness table cache variable for type EffectiveButtonStyle.Box and conformance EffectiveButtonStyle.Box)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EffectiveButtonStyle.Box, &unk_1EFFDAB40, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EffectiveButtonStyle.Box and conformance EffectiveButtonStyle.Box);
  }

  return result;
}

uint64_t specialized static EffectiveButtonStyle._makeProperty<A>(in:container:fieldOffset:inputs:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(void *), uint64_t a8)
{
  a5();
  v9 = PropertyList.subscript.getter();
  a7(v9);
  return _DynamicPropertyBuffer.append<A>(_:fieldOffset:)();
}

unint64_t lazy protocol witness table accessor for type CurrentButtonStyle.Box and conformance CurrentButtonStyle.Box()
{
  result = lazy protocol witness table cache variable for type CurrentButtonStyle.Box and conformance CurrentButtonStyle.Box;
  if (!lazy protocol witness table cache variable for type CurrentButtonStyle.Box and conformance CurrentButtonStyle.Box)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CurrentButtonStyle.Box, &unk_1EFFDAC60, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CurrentButtonStyle.Box and conformance CurrentButtonStyle.Box);
  }

  return result;
}

id specialized static KitCoreUINamedColorProvider.withAppearance(cuiColor:environment:_:)(void **a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = objc_opt_self();
  v4 = [v3 currentTraitCollection];
  v5 = [objc_allocWithZone(type metadata accessor for ViewGraphHostEnvironmentWrapper()) init];
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<InheritedTraitCollectionKey>, &type metadata for InheritedTraitCollectionKey, &protocol witness table for InheritedTraitCollectionKey);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<InheritedTraitCollectionKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<InheritedTraitCollectionKey>, &type metadata for InheritedTraitCollectionKey, &protocol witness table for InheritedTraitCollectionKey);

  v6 = PropertyList.subscript.getter();
  if (v20)
  {
    v7 = v20;
  }

  else
  {
    v6 = [v3 currentTraitCollection];
    v7 = v6;
  }

  MEMORY[0x1EEE9AC00](v6);
  v8 = v5;
  v9 = v20;
  v10 = UITraitCollection._modifyingTraits(environmentWrapper:mutations:)();

  UICoreTraitCollectionResolutionOptions.init(rawValue:)();
  v11 = UITraitCollection.coreResolvedBaseTraitCollection(environment:wrapper:options:)();

  v12 = v11;
  v13 = UITraitCollection.coreResolvedGlassMaterialTraitCollection(environment:wrapper:)();

  [v3 setCurrentTraitCollection_];

  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<InheritedColorSeedKey>, &type metadata for InheritedColorSeedKey, &protocol witness table for InheritedColorSeedKey);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<InheritedColorSeedKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<InheritedColorSeedKey>, &type metadata for InheritedColorSeedKey, &protocol witness table for InheritedColorSeedKey);
  if (v2)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  type metadata accessor for UIColor();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [ObjCClassFromMetadata performSelector_];
  result = ObjCClassFromMetadata;
  if (v15)
  {
    swift_unknownObjectRetain();
    objc_opt_self();
    v17 = swift_dynamicCastObjCClassUnconditional();
    v18 = [v17 CGColor];

    [v3 setCurrentTraitCollection_];
    return v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t PickerStyleConfiguration.$selection.getter(uint64_t a1)
{
  type metadata accessor for Binding();

  return Binding.projectedValue.getter();
}

uint64_t PickerStyleConfiguration.selectedBoundIndices(children:)(uint64_t a1, uint64_t a2)
{
  v12 = *(v2 + *(a2 + 36));
  v10[1] = *(a2 + 16);
  v11 = a1;
  type metadata accessor for Binding();
  v3 = type metadata accessor for Array();
  type metadata accessor for Binding<Int?>(0);
  v5 = v4;

  WitnessTable = swift_getWitnessTable(MEMORY[0x1E69E6340], v3);
  v8 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in PickerStyleConfiguration.selectedBoundIndices(children:), v10, v3, v5, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v7);

  return v8;
}

uint64_t _PickerValue.currentValueLabel.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, _BYTE *a3@<X8>)
{
  v5 = v3 + *(a1 + 52);
  result = type metadata accessor for PickerStyleConfiguration(0, *(a1 + 24), *(a1 + 40), a2);
  *a3 = *(v5 + *(result + 40));
  return result;
}

uint64_t _PickerValue.selection.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PickerStyleConfiguration(0, *(a1 + 24), *(a1 + 40), a4);
  type metadata accessor for Binding();
  return Binding.projectedValue.getter();
}

uint64_t _PickerValue.Init1.base.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v4 = type metadata accessor for ResolvedPicker(0, *(a1 + 24), *(a1 + 40), a2);
  Value = AGGraphGetValue();
  v6 = *(*(v4 - 8) + 16);

  return v6(a3, Value, v4);
}

uint64_t _PickerValue.Init1.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v24 = a3;
  v5 = *(a1 + 24);
  v6 = *(a1 + 40);
  v7 = type metadata accessor for PickerStyleConfiguration(0, v5, v6, a2);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - v9;
  v12 = type metadata accessor for ResolvedPicker(0, v5, v6, v11);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v23 - v13;
  v15 = *(a1 + 16);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19, v3 + *(a1 + 52), v15, v17);
  _PickerValue.Init1.base.getter(a1, v21, v14);
  (*(v8 + 32))(v10, v14, v7);
  return _PickerValue.init(style:configuration:)(v19, v10, v15, v5, *(a1 + 32), v6, v24);
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance _PickerValue<A, B>.Init1@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 32);
  v6[0] = *(a1 + 16);
  v6[1] = v3;
  v4 = type metadata accessor for _PickerValue(0, v6);
  return (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
}

uint64_t closure #1 in static PickerStyleWriter._makeInputs(modifier:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[2] = type metadata accessor for PickerStyleWriter(0, a2, a3, a4);
  v9[3] = a2;
  v6 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v9, a2, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  return v9[5];
}

uint64_t static ResolvedPicker._makeView(view:inputs:)@<X0>(int *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a1;
  v9 = (a2 + 1);
  v10 = *a2;
  lazy protocol witness table accessor for type PickerStyleInput and conformance PickerStyleInput();
  PropertyList.subscript.getter();
  if (v20)
  {
    v11 = *v9;
    v12 = v9[2];
    v13 = v9[3];
    v22 = v9[1];
    v23 = v12;
    *v24 = v13;
    *&v24[12] = *(v9 + 60);
    v14 = v21;
    v25 = v8;
    v21 = v11;
    v15 = *(v14 + 8);
    v20 = v10;
    return v15(&v25);
  }

  else
  {
    v25 = v8;
    v20 = v10;
    v17 = *v9;
    v18 = v9[2];
    v19 = v9[3];
    v22 = v9[1];
    v23 = v18;
    *v24 = v19;
    *&v24[12] = *(v9 + 60);
    v21 = v17;
    return static ResolvedPicker.makeView<A>(view:style:inputs:)(&v25, 0, &v20, a3, &type metadata for DefaultPickerStyle, a4, &protocol witness table for DefaultPickerStyle, a5);
  }
}

uint64_t static ResolvedPicker.makeView<A>(view:style:inputs:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v35 = a7;
  v36 = a2;
  v34 = a1;
  v37 = a8;
  v12 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v16;
  v42 = v15;
  v43 = v18;
  v44 = v17;
  v19 = type metadata accessor for _PickerValue.Init1(0, &v41);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v33 - v24;
  v26 = *v34;
  v27 = *(a3 + 48);
  v39[2] = *(a3 + 32);
  v39[3] = v27;
  v39[4] = *(a3 + 64);
  v40 = *(a3 + 80);
  v28 = *(a3 + 16);
  v39[0] = *a3;
  v39[1] = v28;
  v38 = v26;
  type metadata accessor for ResolvedPicker(255, a4, a6, v29);
  type metadata accessor for _GraphValue();
  LODWORD(a3) = _GraphValue.value.getter();
  (*(v12 + 16))(v14, v36, a5);
  *v25 = a3;
  v41 = a5;
  v42 = a4;
  v30 = v35;
  v43 = v35;
  v44 = a6;
  v31 = type metadata accessor for _PickerValue.Init1(0, &v41);
  (*(v12 + 32))(&v25[*(v31 + 52)], v14, a5);
  (*(v20 + 16))(v22, v25, v19);
  v41 = a5;
  v42 = a4;
  v43 = v30;
  v44 = a6;
  type metadata accessor for _PickerValue(0, &v41);
  swift_getWitnessTable(protocol conformance descriptor for _PickerValue<A, B>.Init1, v19);
  _GraphValue.init<A>(_:)();
  (*(v30 + 8))(&v41, v39, a4, a6, a5, v30);
  return (*(v20 + 8))(v25, v19);
}

uint64_t static ResolvedPicker.makeViewList<A>(view:style:inputs:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v31 = a7;
  v32 = a2;
  v33 = a8;
  v34 = a3;
  v11 = a1;
  v12 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v16;
  v37 = v15;
  v38 = v18;
  v39 = v17;
  v19 = type metadata accessor for _PickerValue.Init1(0, &v36);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v30 - v24;
  v35 = *v11;
  type metadata accessor for ResolvedPicker(255, a4, a6, v26);
  type metadata accessor for _GraphValue();
  LODWORD(v11) = _GraphValue.value.getter();
  (*(v12 + 16))(v14, v32, a5);
  *v25 = v11;
  v36 = a5;
  v37 = a4;
  v27 = v31;
  v38 = v31;
  v39 = a6;
  v28 = type metadata accessor for _PickerValue.Init1(0, &v36);
  (*(v12 + 32))(&v25[*(v28 + 52)], v14, a5);
  (*(v20 + 16))(v22, v25, v19);
  v36 = a5;
  v37 = a4;
  v38 = v27;
  v39 = a6;
  type metadata accessor for _PickerValue(0, &v36);
  swift_getWitnessTable(protocol conformance descriptor for _PickerValue<A, B>.Init1, v19);
  _GraphValue.init<A>(_:)();
  (*(v27 + 16))(&v36, v34, a4, a6, a5, v27);
  return (*(v20 + 8))(v25, v19);
}

uint64_t *initializeBufferWithCopyOfBuffer for _PickerValue(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = ((v8 + 16) & ~v8) + *(v7 + 64);
  v10 = v8 | 7 | *(v4 + 80);
  if (v10 != 7 || ((*(v4 + 80) | *(v7 + 80)) & 0x100000) != 0 || (((v8 | 7) + v5) & ~(v8 | 7)) + ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 9 > 0x18)
  {
    v13 = *a2;
    *v3 = *a2;
    v3 = (v13 + ((v10 + 16) & ~v10));
  }

  else
  {
    v26 = ~v8;
    (*(v4 + 16))(a1);
    v15 = v3 + v5 + 7;
    v16 = a2 + v5 + 7;
    *(v15 & 0xFFFFFFFFFFFFFFF8) = *(v16 & 0xFFFFFFFFFFFFFFF8);
    v17 = (((v15 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
    v18 = (((v16 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
    *v17 = *v18;
    v19 = v18 + v8;
    v20 = v17 + v8 + 8;
    v21 = v19 + 8;
    v22 = *(v7 + 16);

    v22(v20 & v26, v21 & v26, v6);
    v23 = ((v15 | 7) + v9) & 0xFFFFFFFFFFFFFFF8;
    v24 = ((v16 | 7) + v9) & 0xFFFFFFFFFFFFFFF8;
    *v23 = *v24;
    *(v23 + 8) = *(v24 + 8);
  }

  return v3;
}

uint64_t initializeWithTake for _PickerValue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 32;
  (*v6)();
  v7 = *(*(a3 + 24) - 8);
  v8 = *(v6 + 32);
  v9 = *(v7 + 32);
  v10 = v7 + 32;
  v11 = *(v7 + 80);
  v12 = (v11 | 7) + v8;
  v13 = ((v12 + a1) & ~(v11 | 7));
  v14 = ((v12 + a2) & ~(v11 | 7));
  *v13 = *v14;
  v15 = ((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
  v16 = ((v14 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v15 = *v16;
  v9((v15 + v11 + 8) & ~v11, (v16 + v11 + 8) & ~v11);
  v17 = *(v10 + 32) + ((v11 + 16) & ~v11) + 7;
  v18 = (v13 + v17) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v14 + v17) & 0xFFFFFFFFFFFFFFF8;
  *v18 = *v19;
  *(v18 + 8) = *(v19 + 8);
  return a1;
}

uint64_t assignWithTake for _PickerValue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 40;
  (*v6)();
  v7 = *(v6 + 24);
  v8 = *(a3 + 24);
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = (v10 | 7) + v7;
  v12 = ((v11 + a1) & ~(v10 | 7));
  v13 = ((v11 + a2) & ~(v10 | 7));
  *v12 = *v13;

  v14 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v15;

  (*(v9 + 40))((v14 + v10 + 8) & ~v10, (v15 + v10 + 8) & ~v10, v8);
  v16 = *(v9 + 64) + ((v10 + 16) & ~v10) + 7;
  v17 = (v12 + v16) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v13 + v16) & 0xFFFFFFFFFFFFFFF8;
  *v17 = *v18;

  *(v17 + 8) = *(v18 + 8);
  return a1;
}

uint64_t getEnumTagSinglePayload for _PickerValue(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(*(a3 + 24) - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (v10 <= v6)
  {
    v11 = *(v5 + 84);
  }

  else
  {
    v11 = v10;
  }

  if (!a2)
  {
    return 0;
  }

  v12 = v9 | 7;
  v13 = (v9 | 7) + *(*(v4 - 8) + 64);
  if (v11 >= a2)
  {
    goto LABEL_31;
  }

  v14 = (v13 & ~v12) + ((*(v7 + 64) + ((v9 + 16) & ~v9) + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  v15 = (a2 - v11 + 255) >> 8;
  if (v14 <= 3)
  {
    v16 = v15 + 1;
  }

  else
  {
    v16 = 2;
  }

  if (v16 >= 0x10000)
  {
    v17 = 4;
  }

  else
  {
    v17 = 2;
  }

  if (v16 < 0x100)
  {
    v17 = 1;
  }

  if (v16 >= 2)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = *&a1[v14];
      if (!*&a1[v14])
      {
        goto LABEL_31;
      }
    }

    else
    {
      v19 = *&a1[v14];
      if (!v19)
      {
        goto LABEL_31;
      }
    }
  }

  else if (!v18 || (v19 = a1[v14]) == 0)
  {
LABEL_31:
    if (v6 >= v10)
    {
      return (*(v5 + 48))(a1, v6, v4);
    }

    v23 = (((&a1[v13] & ~v12) + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v8 & 0x80000000) != 0)
    {
      return (*(v7 + 48))((v23 + v9 + 8) & ~v9);
    }

    v24 = *v23;
    if (v24 >= 0xFFFFFFFF)
    {
      LODWORD(v24) = -1;
    }

    return (v24 + 1);
  }

  v21 = (v19 - 1) << (8 * v14);
  if (v14 <= 3)
  {
    v22 = *a1;
  }

  else
  {
    v21 = 0;
    v22 = *a1;
  }

  return v11 + (v22 | v21) + 1;
}

void storeEnumTagSinglePayload for _PickerValue(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a4 + 24) - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  v12 = *(v9 + 64);
  if (v10 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = *(v9 + 84);
  }

  if (v13 <= v8)
  {
    v14 = *(v7 + 84);
  }

  else
  {
    v14 = v13;
  }

  v15 = (v11 | 7) + *(*(v6 - 8) + 64);
  v16 = ((v12 + ((v11 + 16) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  v17 = v16 + (v15 & ~(v11 | 7));
  if (v14 >= a3)
  {
    v21 = 0;
    if (v14 >= a2)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v18 = (a3 - v14 + 255) >> 8;
    if (v17 <= 3)
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
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    if (v14 >= a2)
    {
LABEL_20:
      if (v21 > 1)
      {
        if (v21 != 2)
        {
          *&a1[v17] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_35;
        }

        *&a1[v17] = 0;
      }

      else if (v21)
      {
        a1[v17] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return;
      }

LABEL_35:
      if (v8 >= v13)
      {
        v26 = *(v7 + 56);

        v26(a1);
      }

      else
      {
        v24 = (&a1[v15] & ~(v11 | 7));
        if (v13 >= a2)
        {
          v27 = ((v24 + 15) & 0xFFFFFFFFFFFFFFF8);
          if ((v10 & 0x80000000) != 0)
          {
            v29 = *(v9 + 56);

            v29((v27 + v11 + 8) & ~v11);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v28 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v28 = a2 - 1;
            }

            *v27 = v28;
          }
        }

        else
        {
          v25 = ~v13 + a2;
          bzero(v24, ((v12 + ((v11 + 16) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 9);
          if (v16 <= 3)
          {
            *v24 = v25;
          }

          else
          {
            *v24 = v25;
          }
        }
      }

      return;
    }
  }

  v22 = ~v14 + a2;
  bzero(a1, v17);
  if (v17 <= 3)
  {
    v23 = (v22 >> 8) + 1;
  }

  else
  {
    v23 = 1;
  }

  if (v17 <= 3)
  {
    *a1 = v22;
    if (v21 > 1)
    {
LABEL_30:
      if (v21 == 2)
      {
        *&a1[v17] = v23;
      }

      else
      {
        *&a1[v17] = v23;
      }

      return;
    }
  }

  else
  {
    *a1 = v22;
    if (v21 > 1)
    {
      goto LABEL_30;
    }
  }

  if (v21)
  {
    a1[v17] = v23;
  }
}

uint64_t partial apply for closure #1 in PickerStyleConfiguration.selectedBoundIndices(children:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = _VariadicView_Children.tagIndex<A>(_:)(a1, *(v2 + 16), *(v2 + 24));
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7 & 1;
  return result;
}

uint64_t static SegmentedPickerStyle._makeView<A>(value:inputs:)(int *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = a2[3];
  v21 = a2[2];
  v22 = v7;
  v23 = a2[4];
  v24 = *(a2 + 20);
  v8 = a2[1];
  v19 = *a2;
  v20 = v8;
  type metadata accessor for ResolvedPicker(255, a3, a4, a4);
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PickerStyleWriter<PalettePickerStyle>, EmptyModifier>(255);
  v9 = type metadata accessor for ModifiedContent();
  type metadata accessor for PickerStyleWriter<PalettePickerStyle>(255, &lazy cache variable for type metadata for PickerStyleWriter<ResolvedSegmentedPickerStyle>, &unk_1EFFDB058, &protocol witness table for ResolvedSegmentedPickerStyle);
  v10 = type metadata accessor for ModifiedContent();
  v18 = v6;
  v17[0] = &type metadata for SegmentedPickerStyle;
  v17[1] = a3;
  v17[2] = &protocol witness table for SegmentedPickerStyle;
  v17[3] = a4;
  type metadata accessor for _PickerValue(255, v17);
  type metadata accessor for _GraphValue();
  LODWORD(v17[0]) = _GraphValue.value.getter();
  v12 = type metadata accessor for SegmentedPickerStyle.Body(0, a3, a4, v11);
  swift_getWitnessTable(protocol conformance descriptor for SegmentedPickerStyle.Body<A>, v12);
  _GraphValue.init<A>(_:)();
  v16[0] = &protocol witness table for ResolvedPicker<A>;
  v16[1] = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PickerStyleWriter<PalettePickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v13 = MEMORY[0x1E697E858];
  v15[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v9, v16);
  v15[1] = &protocol witness table for PickerStyleWriter<A>;
  swift_getWitnessTable(v13, v10, v15);
  return static View.makeDebuggableView(view:inputs:)();
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PickerStyleWriter<PalettePickerStyle>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PickerStyleWriter<PalettePickerStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<MenuStyleContext>();
    type metadata accessor for PickerStyleWriter<PalettePickerStyle>(255, &lazy cache variable for type metadata for PickerStyleWriter<PalettePickerStyle>, &type metadata for PalettePickerStyle, &protocol witness table for PalettePickerStyle);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PickerStyleWriter<PalettePickerStyle>, EmptyModifier>);
    }
  }
}

void type metadata accessor for PickerStyleWriter<PalettePickerStyle>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    v5 = type metadata accessor for PickerStyleWriter(0, a3, a4, a4);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PickerStyleWriter<PalettePickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PickerStyleWriter<PalettePickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PickerStyleWriter<PalettePickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PickerStyleWriter<PalettePickerStyle>, EmptyModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type StyleContextAcceptsPredicate<MenuStyleContext> and conformance StyleContextAcceptsPredicate<A>();
    v5[1] = &protocol witness table for PickerStyleWriter<A>;
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PickerStyleWriter<PalettePickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

uint64_t static SegmentedPickerStyle._makeViewList<A>(value:inputs:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  type metadata accessor for ResolvedPicker(255, a3, a4, a4);
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PickerStyleWriter<PalettePickerStyle>, EmptyModifier>(255);
  v7 = type metadata accessor for ModifiedContent();
  type metadata accessor for PickerStyleWriter<PalettePickerStyle>(255, &lazy cache variable for type metadata for PickerStyleWriter<ResolvedSegmentedPickerStyle>, &unk_1EFFDB058, &protocol witness table for ResolvedSegmentedPickerStyle);
  v8 = type metadata accessor for ModifiedContent();
  v16 = v6;
  v15[0] = &type metadata for SegmentedPickerStyle;
  v15[1] = a3;
  v15[2] = &protocol witness table for SegmentedPickerStyle;
  v15[3] = a4;
  type metadata accessor for _PickerValue(255, v15);
  type metadata accessor for _GraphValue();
  LODWORD(v15[0]) = _GraphValue.value.getter();
  v10 = type metadata accessor for SegmentedPickerStyle.Body(0, a3, a4, v9);
  swift_getWitnessTable(protocol conformance descriptor for SegmentedPickerStyle.Body<A>, v10);
  _GraphValue.init<A>(_:)();
  v14[0] = &protocol witness table for ResolvedPicker<A>;
  v14[1] = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PickerStyleWriter<PalettePickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v11 = MEMORY[0x1E697E858];
  v13[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v7, v14);
  v13[1] = &protocol witness table for PickerStyleWriter<A>;
  swift_getWitnessTable(v11, v8, v13);
  return static View.makeDebuggableViewList(view:inputs:)();
}

uint64_t SegmentedPickerStyle.Body.value.getter@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v28 = a1;
  v30 = a5;
  v29 = type metadata accessor for PickerStyleConfiguration(0, a2, a3, a4);
  v27 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v8 = &v27 - v7;
  v32[0] = &type metadata for SegmentedPickerStyle;
  v32[1] = a2;
  v32[2] = &protocol witness table for SegmentedPickerStyle;
  v32[3] = a3;
  v9 = type metadata accessor for _PickerValue(0, v32);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v27 - v10;
  v13 = type metadata accessor for ResolvedPicker(0, a2, a3, v12);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v27 - v15;
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PickerStyleWriter<PalettePickerStyle>, EmptyModifier>(255);
  v17 = type metadata accessor for ModifiedContent();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v27 - v19;
  SegmentedPickerStyle.Body.base.getter(a2, a3, &type metadata for SegmentedPickerStyle, &protocol witness table for SegmentedPickerStyle, v11);
  (*(v27 + 32))(v8, v11, v29);
  v22 = ResolvedPicker.init(configuration:)(v8, a2, a3, v21, v16);
  View.pickerStyle<A, B>(_:in:)(v22, v23, v13, &type metadata for PalettePickerStyle, MEMORY[0x1E697EA18], &protocol witness table for ResolvedPicker<A>, MEMORY[0x1E697EA10], v20);
  (*(v14 + 8))(v16, v13);
  v24 = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PickerStyleWriter<PalettePickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v31[0] = &protocol witness table for ResolvedPicker<A>;
  v31[1] = v24;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v17, v31);
  View.pickerStyle<A>(_:)(WitnessTable, v17, &unk_1EFFDB058, WitnessTable);
  return (*(v18 + 8))(v20, v17);
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance SegmentedPickerStyle.Body<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  type metadata accessor for ResolvedPicker(255, *(a1 + 16), *(a1 + 24), a2);
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PickerStyleWriter<PalettePickerStyle>, EmptyModifier>(255);
  type metadata accessor for ModifiedContent();
  type metadata accessor for PickerStyleWriter<PalettePickerStyle>(255, &lazy cache variable for type metadata for PickerStyleWriter<ResolvedSegmentedPickerStyle>, &unk_1EFFDB058, &protocol witness table for ResolvedSegmentedPickerStyle);
  v4 = type metadata accessor for ModifiedContent();
  v5 = *(*(v4 - 8) + 56);

  return v5(a3, 1, 1, v4);
}

uint64_t static ResolvedSegmentedPickerStyle._makeView<A>(value:inputs:)(int *a1, __int128 *a2, void *a3, _UNKNOWN **a4)
{
  v6 = *a1;
  v7 = a2[3];
  v21 = a2[2];
  v22 = v7;
  v23 = a2[4];
  v24 = *(a2 + 20);
  v8 = a2[1];
  v19 = *a2;
  v20 = v8;
  v15 = a3;
  v16 = type metadata accessor for PickerStyleConfiguration.Content(255, a3, a4, a4);
  v17 = a4;
  v18 = &protocol witness table for PickerStyleConfiguration<A>.Content;
  type metadata accessor for _SegmentedControl(255, &v15);
  v9 = type metadata accessor for ModifiedContent();
  v14 = v6;
  v15 = &unk_1EFFDB058;
  v16 = a3;
  v17 = &protocol witness table for ResolvedSegmentedPickerStyle;
  v18 = a4;
  type metadata accessor for _PickerValue(255, &v15);
  type metadata accessor for _GraphValue();
  LODWORD(v15) = _GraphValue.value.getter();
  v11 = type metadata accessor for ResolvedSegmentedPickerStyle.Body(0, a3, a4, v10);
  swift_getWitnessTable(protocol conformance descriptor for ResolvedSegmentedPickerStyle.Body<A>, v11);
  _GraphValue.init<A>(_:)();
  v13[0] = &protocol witness table for _SegmentedControl<A, B>;
  v13[1] = &protocol witness table for ScrollEdgeEffectTagModifier;
  swift_getWitnessTable(MEMORY[0x1E697E858], v9, v13);
  return static View.makeDebuggableView(view:inputs:)();
}

uint64_t static ResolvedSegmentedPickerStyle._makeViewList<A>(value:inputs:)(int *a1, uint64_t a2, void *a3, _UNKNOWN **a4)
{
  v6 = *a1;
  v13 = a3;
  v14 = type metadata accessor for PickerStyleConfiguration.Content(255, a3, a4, a4);
  v15 = a4;
  v16 = &protocol witness table for PickerStyleConfiguration<A>.Content;
  type metadata accessor for _SegmentedControl(255, &v13);
  v7 = type metadata accessor for ModifiedContent();
  v12 = v6;
  v13 = &unk_1EFFDB058;
  v14 = a3;
  v15 = &protocol witness table for ResolvedSegmentedPickerStyle;
  v16 = a4;
  type metadata accessor for _PickerValue(255, &v13);
  type metadata accessor for _GraphValue();
  LODWORD(v13) = _GraphValue.value.getter();
  v9 = type metadata accessor for ResolvedSegmentedPickerStyle.Body(0, a3, a4, v8);
  swift_getWitnessTable(protocol conformance descriptor for ResolvedSegmentedPickerStyle.Body<A>, v9);
  _GraphValue.init<A>(_:)();
  v11[0] = &protocol witness table for _SegmentedControl<A, B>;
  v11[1] = &protocol witness table for ScrollEdgeEffectTagModifier;
  swift_getWitnessTable(MEMORY[0x1E697E858], v7, v11);
  return static View.makeDebuggableViewList(view:inputs:)();
}

uint64_t SegmentedPickerStyle.Body.base.getter@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10[0] = a4;
  v10[1] = a2;
  v10[2] = a5;
  v10[3] = a3;
  v7 = type metadata accessor for _PickerValue(0, v10);
  Value = AGGraphGetValue();
  return (*(*(v7 - 8) + 16))(a6, Value, v7);
}

uint64_t ResolvedSegmentedPickerStyle.Body.value.getter@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v39 = a5;
  v36 = type metadata accessor for PickerStyleConfiguration.Content(255, a2, a3, a4);
  v47[0] = a2;
  v47[1] = v36;
  v47[2] = a3;
  v47[3] = &protocol witness table for PickerStyleConfiguration<A>.Content;
  v34 = type metadata accessor for _SegmentedControl(0, v47);
  v37 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v30 - v8;
  v9 = type metadata accessor for ModifiedContent();
  v38 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v32 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v35 = &v30 - v12;
  v14 = type metadata accessor for PickerStyleConfiguration(0, a2, a3, v13);
  v31 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v30 - v18;
  LODWORD(v47[0]) = a1;
  v43 = a2;
  v44 = a3;
  v45 = a1;
  v21 = type metadata accessor for ResolvedSegmentedPickerStyle.Body(0, a2, a3, v20);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ResolvedSegmentedPickerStyle.Body<A>, v21);
  MEMORY[0x18D000B90](v21, v14, WitnessTable);
  Rule.withObservation<A>(observationCenter:do:)();

  v23 = v31;
  (*(v31 + 16))(v16, v19, v14);
  v40 = a2;
  v41 = a3;
  v42 = v19;
  v24 = v33;
  _SegmentedControl.init(configuration:content:)(v16, partial apply for closure #2 in ResolvedSegmentedPickerStyle.Body.value.getter, a2, a3, v33);
  LOBYTE(v47[0]) = 0;
  v25 = v32;
  v26 = v34;
  View.defaultScrollEdgeEffectTag(style:)(v47, v34, &protocol witness table for _SegmentedControl<A, B>);
  (*(v37 + 8))(v24, v26);
  v46[0] = &protocol witness table for _SegmentedControl<A, B>;
  v46[1] = &protocol witness table for ScrollEdgeEffectTagModifier;
  swift_getWitnessTable(MEMORY[0x1E697E858], v9, v46);
  v27 = v35;
  static ViewBuilder.buildExpression<A>(_:)();
  v28 = *(v38 + 8);
  v28(v25, v9);
  static ViewBuilder.buildExpression<A>(_:)();
  v28(v27, v9);
  return (*(v23 + 8))(v19, v14);
}

uint64_t closure #1 in ResolvedSegmentedPickerStyle.Body.value.getter@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v13[0] = &unk_1EFFDB058;
  v13[1] = a2;
  v13[2] = &protocol witness table for ResolvedSegmentedPickerStyle;
  v13[3] = a3;
  v7 = type metadata accessor for _PickerValue(0, v13);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v13 - v8;
  SegmentedPickerStyle.Body.base.getter(a2, a3, &unk_1EFFDB058, &protocol witness table for ResolvedSegmentedPickerStyle, v13 - v8);
  v11 = type metadata accessor for PickerStyleConfiguration(0, a2, a3, v10);
  return (*(*(v11 - 8) + 32))(a4, v9, v11);
}

uint64_t closure #2 in ResolvedSegmentedPickerStyle.Body.value.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
  type metadata accessor for PickerStyleConfiguration.Content(0, a2, a3, v5);
  static ViewBuilder.buildExpression<A>(_:)();

  return static ViewBuilder.buildExpression<A>(_:)();
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance ResolvedSegmentedPickerStyle.Body<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 24);
  v7[0] = *(a1 + 16);
  v7[1] = type metadata accessor for PickerStyleConfiguration.Content(255, v7[0], v4, a2);
  v7[2] = v4;
  v7[3] = &protocol witness table for PickerStyleConfiguration<A>.Content;
  type metadata accessor for _SegmentedControl(255, v7);
  v5 = type metadata accessor for ModifiedContent();
  return (*(*(v5 - 8) + 56))(a3, 1, 1, v5);
}

uint64_t LinearCapacityGaugeStyle.makeBody(configuration:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 9);
  v6 = *(a1 + 10);
  KeyPath = swift_getKeyPath();
  result = swift_getKeyPath();
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5;
  *(a2 + 10) = v6;
  *(a2 + 16) = KeyPath;
  *(a2 + 24) = 0;
  *(a2 + 32) = result;
  *(a2 + 40) = 0;
  return result;
}

uint64_t protocol witness for GaugeStyle.makeBody(configuration:) in conformance LinearCapacityGaugeStyle@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 9);
  v6 = *(a1 + 10);
  KeyPath = swift_getKeyPath();
  result = swift_getKeyPath();
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5;
  *(a2 + 10) = v6;
  *(a2 + 16) = KeyPath;
  *(a2 + 24) = 0;
  *(a2 + 32) = result;
  *(a2 + 40) = 0;
  return result;
}

double LinearCapacityGauge.body.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v24 = *v1;
  v25[0] = v3;
  *(v25 + 9) = *(v1 + 25);
  v4 = static HorizontalAlignment.center.getter();
  v23 = 1;
  closure #1 in LinearCapacityGauge.body.getter(&v24, &v14);
  v32 = v20;
  v33[0] = v21[0];
  *(v33 + 11) = *(v21 + 11);
  v28 = v16;
  v29 = v17;
  v30 = v18;
  v31 = v19;
  v26 = v14;
  v27 = v15;
  v34[6] = v20;
  v35[0] = v21[0];
  *(v35 + 11) = *(v21 + 11);
  v34[2] = v16;
  v34[3] = v17;
  v34[4] = v18;
  v34[5] = v19;
  v34[0] = v14;
  v34[1] = v15;
  outlined init with copy of TupleView<(GaugeStyleConfiguration.Label, HStack<TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, LinearCapsuleGauge, GaugeStyleConfiguration.MaximumValueLabel?)>>, GaugeStyleConfiguration.CurrentValueLabel?)>(&v26, v13, &lazy cache variable for type metadata for TupleView<(GaugeStyleConfiguration.Label, HStack<TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, LinearCapsuleGauge, GaugeStyleConfiguration.MaximumValueLabel?)>>, GaugeStyleConfiguration.CurrentValueLabel?)>, type metadata accessor for (GaugeStyleConfiguration.Label, HStack<TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, LinearCapsuleGauge, GaugeStyleConfiguration.MaximumValueLabel?)>>, GaugeStyleConfiguration.CurrentValueLabel?));
  outlined destroy of TupleView<(GaugeStyleConfiguration.Label, HStack<TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, LinearCapsuleGauge, GaugeStyleConfiguration.MaximumValueLabel?)>>, GaugeStyleConfiguration.CurrentValueLabel?)>(v34, &lazy cache variable for type metadata for TupleView<(GaugeStyleConfiguration.Label, HStack<TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, LinearCapsuleGauge, GaugeStyleConfiguration.MaximumValueLabel?)>>, GaugeStyleConfiguration.CurrentValueLabel?)>, type metadata accessor for (GaugeStyleConfiguration.Label, HStack<TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, LinearCapsuleGauge, GaugeStyleConfiguration.MaximumValueLabel?)>>, GaugeStyleConfiguration.CurrentValueLabel?));
  *&v22[87] = v31;
  *&v22[103] = v32;
  *&v22[119] = v33[0];
  *&v22[130] = *(v33 + 11);
  *&v22[23] = v27;
  *&v22[39] = v28;
  *&v22[55] = v29;
  *&v22[71] = v30;
  *&v22[7] = v26;
  v5 = v23;
  v6 = static VerticalAlignment.center.getter();
  v7 = *&v22[112];
  *(a1 + 113) = *&v22[96];
  *(a1 + 129) = v7;
  *(a1 + 145) = *&v22[128];
  v8 = *&v22[48];
  *(a1 + 49) = *&v22[32];
  *(a1 + 65) = v8;
  v9 = *&v22[80];
  *(a1 + 81) = *&v22[64];
  *(a1 + 97) = v9;
  result = *v22;
  v11 = *&v22[16];
  *(a1 + 17) = *v22;
  v12 = BYTE8(v24) & 1;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = v5;
  *(a1 + 161) = *&v22[144];
  *(a1 + 33) = v11;
  *(a1 + 168) = v6;
  *(a1 + 176) = 0;
  *(a1 + 184) = 1;
  *(a1 + 185) = v12;
  return result;
}

uint64_t closure #1 in LinearCapacityGauge.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 8);
  v5 = static VerticalAlignment.center.getter();
  v18[0] = 1;
  closure #1 in closure #1 in LinearCapacityGauge.body.getter(a1, &v32);
  v24 = *&v33[48];
  v25 = *&v33[64];
  v26 = *&v33[80];
  v27 = *&v33[96];
  v20 = v32;
  v21 = *v33;
  v22 = *&v33[16];
  v23 = *&v33[32];
  v28[0] = v32;
  v28[1] = *v33;
  v28[2] = *&v33[16];
  v28[3] = *&v33[32];
  v28[4] = *&v33[48];
  v28[5] = *&v33[64];
  v28[6] = *&v33[80];
  v29 = *&v33[96];
  outlined init with copy of TupleView<(GaugeStyleConfiguration.Label, HStack<TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, LinearCapsuleGauge, GaugeStyleConfiguration.MaximumValueLabel?)>>, GaugeStyleConfiguration.CurrentValueLabel?)>(&v20, &v30, &lazy cache variable for type metadata for TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, LinearCapsuleGauge, GaugeStyleConfiguration.MaximumValueLabel?)>, type metadata accessor for (GaugeStyleConfiguration.MinimumValueLabel?, LinearCapsuleGauge, GaugeStyleConfiguration.MaximumValueLabel?));
  outlined destroy of TupleView<(GaugeStyleConfiguration.Label, HStack<TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, LinearCapsuleGauge, GaugeStyleConfiguration.MaximumValueLabel?)>>, GaugeStyleConfiguration.CurrentValueLabel?)>(v28, &lazy cache variable for type metadata for TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, LinearCapsuleGauge, GaugeStyleConfiguration.MaximumValueLabel?)>, type metadata accessor for (GaugeStyleConfiguration.MinimumValueLabel?, LinearCapsuleGauge, GaugeStyleConfiguration.MaximumValueLabel?));
  *&v19[71] = v24;
  *&v19[87] = v25;
  *&v19[103] = v26;
  *&v19[119] = v27;
  *&v19[7] = v20;
  *&v19[23] = v21;
  *&v19[39] = v22;
  *&v19[55] = v23;
  v30 = v5;
  v31[0] = 1;
  *&v31[1] = *v19;
  v6 = *v19;
  v7 = *&v19[16];
  *&v31[17] = *&v19[16];
  v8 = *&v19[48];
  *&v31[33] = *&v19[32];
  *&v31[106] = *&v19[105];
  *&v31[97] = *&v19[96];
  v10 = *&v19[80];
  v9 = *&v19[96];
  *&v31[81] = *&v19[80];
  v11 = *&v19[64];
  *&v31[65] = *&v19[64];
  v12 = *&v19[32];
  *&v31[49] = *&v19[48];
  v13 = *&v31[96];
  *(a2 + 96) = *&v31[80];
  *(a2 + 112) = v13;
  *(a2 + 122) = *&v31[106];
  v14 = *&v31[32];
  *(a2 + 32) = *&v31[16];
  *(a2 + 48) = v14;
  v15 = *&v31[64];
  *(a2 + 64) = *&v31[48];
  *(a2 + 80) = v15;
  v16 = *v31;
  *a2 = v30;
  *(a2 + 16) = v16;
  *&v33[65] = v11;
  *&v33[81] = v10;
  *&v33[97] = v9;
  *&v33[106] = *&v19[105];
  *&v33[1] = v6;
  *&v33[17] = v7;
  *&v33[33] = v12;
  v18[142] = v4 & 1;
  *(a2 + 138) = v4 & 1;
  v32 = v5;
  v33[0] = 1;
  *&v33[49] = v8;
  outlined init with copy of HStack<TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, LinearCapsuleGauge, GaugeStyleConfiguration.MaximumValueLabel?)>>(&v30, v18);
  return outlined destroy of HStack<TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, LinearCapsuleGauge, GaugeStyleConfiguration.MaximumValueLabel?)>>(&v32);
}

uint64_t closure #1 in closure #1 in LinearCapacityGauge.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 9);
  v6 = *(a1 + 10);
  specialized Environment.wrappedValue.getter(*(a1 + 16), *(a1 + 24), &v34);
  if (v34 & 2) != 0 && (specialized Environment.wrappedValue.getter(*(a1 + 32), *(a1 + 40)))
  {
    v4 = 0.0;
  }

  KeyPath = swift_getKeyPath();
  v50 = 0;
  v8 = swift_getKeyPath();
  v49 = 0;
  v9 = swift_getKeyPath();
  v48 = 0;
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  ScaledMetric.init(wrappedValue:)();
  v10 = v34;
  v11 = v35;
  v12 = v36;
  v13 = v37;
  v14 = v38;
  v15 = v39;
  v52 = v35;
  v51 = v37;
  v16 = v50;
  v17 = v49;
  v18 = v48;
  v27 = v5 & 1;
  *&v28 = v4;
  *(&v28 + 1) = v34;
  LOBYTE(v29) = v35;
  *(&v29 + 1) = v36;
  LOBYTE(v30) = v37;
  *(&v30 + 1) = v38;
  LOBYTE(v31) = v39;
  *(&v31 + 1) = KeyPath;
  *&v32 = 0;
  BYTE8(v32) = v50;
  *v33 = v8;
  v33[8] = v49;
  *&v33[16] = v9;
  v33[24] = v48;
  *&v26[39] = v30;
  *&v26[23] = v29;
  *&v26[7] = v28;
  *&v26[96] = *&v33[9];
  *&v26[87] = *v33;
  *&v26[71] = v32;
  *&v26[55] = v31;
  v25[111] = v6 & 1;
  *a2 = v5 & 1;
  v19 = *v26;
  v20 = *&v26[16];
  v21 = *&v26[48];
  *(a2 + 33) = *&v26[32];
  *(a2 + 17) = v20;
  *(a2 + 1) = v19;
  v22 = *&v26[64];
  v23 = *&v26[80];
  *(a2 + 97) = *&v26[96];
  *(a2 + 81) = v23;
  *(a2 + 65) = v22;
  *(a2 + 49) = v21;
  *(a2 + 113) = v6 & 1;
  v34 = *&v4;
  v35 = v10;
  LOBYTE(v36) = v11;
  v37 = v12;
  LOBYTE(v38) = v13;
  v39 = v14;
  v40 = v15;
  v41 = KeyPath;
  v42 = 0;
  v43 = v16;
  v44 = v8;
  v45 = v17;
  v46 = v9;
  v47 = v18;
  outlined init with copy of LinearCapsuleGauge(&v28, v25);
  return outlined destroy of LinearCapsuleGauge(&v34);
}

uint64_t LinearCapsuleGauge.effectiveFillStyle.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 88);
  v6 = *(v0 + 96);
  v7 = *(v0 + 104);
  v8 = specialized Environment.wrappedValue.getter(v1, v2, v3);
  if (v8)
  {
    v9 = v8;

    v19[0] = v9;
  }

  else if (specialized Environment.wrappedValue.getter(v4, v5))
  {
    AnyShapeStyle.as<A>(type:)();

    v10 = v19[0];
    if (v19[0])
    {
      specialized Environment.wrappedValue.getter(v6, v7, v19);
      if (LOBYTE(v19[0]) == 1)
      {
        v11 = Gradient.reversed.getter();

        v10 = v11;
      }

      static UnitPoint.leading.getter();
      v13 = v12;
      v15 = v14;
      static UnitPoint.trailing.getter();
      v19[0] = v10;
      v19[1] = v13;
      v19[2] = v15;
      v19[3] = v16;
      v19[4] = v17;
    }
  }

  return AnyShapeStyle.init<A>(_:)();
}

double LinearCapsuleGauge.body.getter@<D0>(uint64_t a2@<X8>)
{
  v4 = v2[5];
  v18 = v2[4];
  v19[0] = v4;
  *(v19 + 9) = *(v2 + 89);
  v5 = v2[1];
  *v17 = *v2;
  *&v17[16] = v5;
  v6 = v2[3];
  *&v17[32] = v2[2];
  *&v17[48] = v6;
  v7 = static Alignment.center.getter();
  v9 = v8;
  closure #1 in LinearCapsuleGauge.body.getter(v17, &v20);
  v10 = v20;
  v11 = *(&v20 + 1);
  v12 = v21[0];
  v13 = v21[1];
  _s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMaTm_0(0, &lazy cache variable for type metadata for ScaledMetric<CGFloat>, lazy protocol witness table accessor for type CGFloat and conformance CGFloat, MEMORY[0x1E69E7DE0], MEMORY[0x1E697DF08]);
  v16 = *&v21[8];
  v20 = *&v17[8];
  *v21 = *&v17[24];
  *&v21[9] = *&v17[33];
  ScaledMetric.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *a2 = v7;
  *(a2 + 8) = v9;
  *(a2 + 16) = v10;
  *(a2 + 24) = v11;
  *(a2 + 32) = v12;
  *(a2 + 33) = v13;
  *(a2 + 40) = v16;
  *(a2 + 56) = v20;
  result = *v21;
  v15 = *&v21[16];
  *(a2 + 72) = *v21;
  *(a2 + 88) = v15;
  return result;
}

uint64_t closure #1 in LinearCapsuleGauge.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (specialized Environment.wrappedValue.getter(*(a1 + 56), *(a1 + 64), *(a1 + 72)))
  {
    v5 = v4;
  }

  else
  {
    v5 = static Color.tertiarySystemFill.getter();
  }

  v6 = swift_allocObject();
  v7 = *(a1 + 80);
  v6[5] = *(a1 + 64);
  v6[6] = v7;
  *(v6 + 105) = *(a1 + 89);
  v8 = *(a1 + 16);
  v6[1] = *a1;
  v6[2] = v8;
  v9 = *(a1 + 48);
  v6[3] = *(a1 + 32);
  v6[4] = v9;
  *a2 = 1;
  *(a2 + 8) = v5;
  *(a2 + 16) = 256;
  *(a2 + 24) = partial apply for closure #1 in closure #1 in LinearCapsuleGauge.body.getter;
  *(a2 + 32) = v6;
  return outlined init with copy of LinearCapsuleGauge(a1, &v11);
}

uint64_t LinearCapsuleGauge.indicator(width:)@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v5 = *v2;
  specialized Environment.wrappedValue.getter(*(v2 + 96), *(v2 + 104) & 1, &v9);
  v6 = -a2;
  if (v9)
  {
    v6 = a2;
  }

  v7 = (1.0 - v5) * v6;
  result = LinearCapsuleGauge.effectiveFillStyle.getter();
  *a1 = 1;
  *(a1 + 8) = result;
  *(a1 + 16) = 256;
  *(a1 + 24) = 1;
  *(a1 + 32) = v7;
  *(a1 + 40) = 0;
  *(a1 + 48) = 256;
  return result;
}

uint64_t key path getter for EnvironmentValues.sensitiveContent : EnvironmentValues@<X0>(_BYTE *a3@<X8>)
{
  result = EnvironmentValues.sensitiveContent.getter();
  *a3 = result & 1;
  return result;
}

unint64_t lazy protocol witness table accessor for type LinearCapacityGauge and conformance LinearCapacityGauge()
{
  result = lazy protocol witness table cache variable for type LinearCapacityGauge and conformance LinearCapacityGauge;
  if (!lazy protocol witness table cache variable for type LinearCapacityGauge and conformance LinearCapacityGauge)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LinearCapacityGauge, &type metadata for LinearCapacityGauge, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type LinearCapacityGauge and conformance LinearCapacityGauge);
  }

  return result;
}

uint64_t destroy for LinearCapacityGauge(uint64_t a1)
{
  outlined consume of Environment<Selector?>.Content(*(a1 + 16), *(a1 + 24));
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return outlined consume of Environment<Selector?>.Content(v2, v3);
}

uint64_t initializeWithCopy for LinearCapacityGauge(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  *a1 = *a2;
  *(a1 + 7) = *(a2 + 7);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  outlined copy of Environment<Selector?>.Content(v4, v5);
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v2 + 32);
  LOBYTE(v2) = *(v2 + 40);
  outlined copy of Environment<Selector?>.Content(v6, v2);
  *(a1 + 32) = v6;
  *(a1 + 40) = v2;
  return a1;
}

uint64_t assignWithCopy for LinearCapacityGauge(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = *(a2 + 9);
  *(a1 + 10) = *(a2 + 10);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  outlined copy of Environment<Selector?>.Content(v4, v5);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  outlined consume of Environment<Selector?>.Content(v6, v7);
  v8 = *(v2 + 32);
  LOBYTE(v2) = *(v2 + 40);
  outlined copy of Environment<Selector?>.Content(v8, v2);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  *(a1 + 32) = v8;
  *(a1 + 40) = v2;
  outlined consume of Environment<Selector?>.Content(v9, v10);
  return a1;
}

uint64_t assignWithTake for LinearCapacityGauge(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = *(a2 + 9);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  outlined consume of Environment<Selector?>.Content(v6, v7);
  v8 = *(a2 + 40);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v8;
  outlined consume of Environment<Selector?>.Content(v9, v10);
  return a1;
}

uint64_t getEnumTagSinglePayload for LinearCapacityGauge(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for LinearCapacityGauge(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

void type metadata accessor for (GaugeStyleConfiguration.Label, HStack<TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, LinearCapsuleGauge, GaugeStyleConfiguration.MaximumValueLabel?)>>, GaugeStyleConfiguration.CurrentValueLabel?)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (GaugeStyleConfiguration.Label, HStack<TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, LinearCapsuleGauge, GaugeStyleConfiguration.MaximumValueLabel?)>>, GaugeStyleConfiguration.CurrentValueLabel?))
  {
    type metadata accessor for HStack<TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, LinearCapsuleGauge, GaugeStyleConfiguration.MaximumValueLabel?)>>(255);
    type metadata accessor for AnyAccessibilityValue?(255, &lazy cache variable for type metadata for GaugeStyleConfiguration.CurrentValueLabel?, &type metadata for GaugeStyleConfiguration.CurrentValueLabel);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (GaugeStyleConfiguration.Label, HStack<TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, LinearCapsuleGauge, GaugeStyleConfiguration.MaximumValueLabel?)>>, GaugeStyleConfiguration.CurrentValueLabel?));
    }
  }
}

void type metadata accessor for HStack<TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, LinearCapsuleGauge, GaugeStyleConfiguration.MaximumValueLabel?)>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for HStack<TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, LinearCapsuleGauge, GaugeStyleConfiguration.MaximumValueLabel?)>>)
  {
    type metadata accessor for TupleView<(GaugeStyleConfiguration.Label, HStack<TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, LinearCapsuleGauge, GaugeStyleConfiguration.MaximumValueLabel?)>>, GaugeStyleConfiguration.CurrentValueLabel?)>(255, &lazy cache variable for type metadata for TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, LinearCapsuleGauge, GaugeStyleConfiguration.MaximumValueLabel?)>, type metadata accessor for (GaugeStyleConfiguration.MinimumValueLabel?, LinearCapsuleGauge, GaugeStyleConfiguration.MaximumValueLabel?));
    lazy protocol witness table accessor for type TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, LinearCapsuleGauge, GaugeStyleConfiguration.MaximumValueLabel?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, LinearCapsuleGauge, GaugeStyleConfiguration.MaximumValueLabel?)> and conformance TupleView<A>, &lazy cache variable for type metadata for TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, LinearCapsuleGauge, GaugeStyleConfiguration.MaximumValueLabel?)>, type metadata accessor for (GaugeStyleConfiguration.MinimumValueLabel?, LinearCapsuleGauge, GaugeStyleConfiguration.MaximumValueLabel?));
    v1 = type metadata accessor for HStack();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for HStack<TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, LinearCapsuleGauge, GaugeStyleConfiguration.MaximumValueLabel?)>>);
    }
  }
}

void type metadata accessor for (GaugeStyleConfiguration.MinimumValueLabel?, LinearCapsuleGauge, GaugeStyleConfiguration.MaximumValueLabel?)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (GaugeStyleConfiguration.MinimumValueLabel?, LinearCapsuleGauge, GaugeStyleConfiguration.MaximumValueLabel?))
  {
    type metadata accessor for AnyAccessibilityValue?(255, &lazy cache variable for type metadata for GaugeStyleConfiguration.MinimumValueLabel?, &type metadata for GaugeStyleConfiguration.MinimumValueLabel);
    type metadata accessor for AnyAccessibilityValue?(255, &lazy cache variable for type metadata for GaugeStyleConfiguration.MaximumValueLabel?, &type metadata for GaugeStyleConfiguration.MaximumValueLabel);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (GaugeStyleConfiguration.MinimumValueLabel?, LinearCapsuleGauge, GaugeStyleConfiguration.MaximumValueLabel?));
    }
  }
}