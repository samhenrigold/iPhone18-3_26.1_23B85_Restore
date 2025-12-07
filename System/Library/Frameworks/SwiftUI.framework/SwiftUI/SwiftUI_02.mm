uint64_t one-time initialization function for combine()
{
  _s7SwiftUI29AccessibilityChildBehaviorBox33_F0D4BE429651399A5FAD2DF7DCDF699DLLCyAA0cdE0V7CombineVGMaTm_1(0, &lazy cache variable for type metadata for AccessibilityChildBehaviorBox<AccessibilityChildBehavior.Combine>, lazy protocol witness table accessor for type AccessibilityChildBehavior.Combine and conformance AccessibilityChildBehavior.Combine, &type metadata for AccessibilityChildBehavior.Combine);
  result = swift_allocObject();
  *(result + 16) = 0;
  static AccessibilityChildBehavior.combine = result;
  return result;
}

uint64_t _UIHostingView.invalidatesIntrinsicContentSizeOnIdealSizeChange.setter(char a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x1E0);
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return _UIHostingView.invalidatesIntrinsicContentSizeOnIdealSizeChange.didset(v4);
}

uint64_t _UIHostingView.invalidatesIntrinsicContentSizeOnIdealSizeChange.didset(char a1)
{
  v2 = a1 & 1;
  v3 = (*MEMORY[0x1E69E7D40] & *v1);
  v4 = v3[60];
  result = swift_beginAccess();
  v6 = *(v1 + v4);
  if (v6 != v2)
  {
    _UIHostingView.viewGraph.getter(result);
    static _ProposedSize.unspecified.getter();
    if (v6)
    {
      v7 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v8 = swift_allocObject();
      v8[2] = v3[10];
      v8[3] = v3[11];
      v8[4] = v7;
      swift_beginAccess();
      type metadata accessor for ViewGraphGeometryObservers<SizeThatFitsMeasurer>(0);
      ViewGraphGeometryObservers.addObserver(for:exclusive:callback:)();
      swift_endAccess();
    }

    else
    {
      swift_beginAccess();
      type metadata accessor for ViewGraphGeometryObservers<SizeThatFitsMeasurer>(0);
      ViewGraphGeometryObservers.stopObserving(proposal:)();
      swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_18BD6E9C8()
{

  return swift_deallocObject();
}

uint64_t @objc _UIHostingView._axesForDerivingIntrinsicContentSizeFromLayoutSize.getter(void *a1)
{
  v1 = a1;
  v2 = _UIHostingView._axesForDerivingIntrinsicContentSizeFromLayoutSize.getter();

  return v2;
}

uint64_t _UIHostingView._axesForDerivingIntrinsicContentSizeFromLayoutSize.getter()
{
  v0 = _UIHostingView.base.getter();
  v1 = UIHostingViewBase._axesForDerivingIntrinsicContentSizeFromLayoutSize.getter();

  return v1;
}

double @objc _UIHostingView._layoutSizeThatFits(_:fixedAxes:)(void *a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  v8 = a1;
  v9 = _UIHostingView._layoutSizeThatFits(_:fixedAxes:)(a5, a2, a3);

  return v9;
}

double _UIHostingView._layoutSizeThatFits(_:fixedAxes:)(uint64_t a1, double a2, double a3)
{
  v6 = _UIHostingView.base.getter();
  v7 = MEMORY[0x18D0019E0](a1, a2, a3);

  return v7;
}

uint64_t UIHostingContentView.updateViewGraphForDisplay(isHidden:)(char a1)
{
  v2 = v1;
  v4 = a1 & 1;
  v5 = MEMORY[0x1E69E7D40];
  v6 = *MEMORY[0x1E69E7D40] & *v1;
  result = _UIHostingView.isHiddenForReuse.getter();
  if ((result & 1) != v4)
  {
    _UIHostingView.isHiddenForReuse.setter(v4);
    specialized _UIHostingView.focusBridge.getter();

    FocusBridge.canAcceptFocus.setter((a1 & 1) == 0);

    if ((a1 & 1) == 0 && *(v1 + *((*v5 & *v1) + 0x770)) == 1)
    {
      static Semantics.v6.getter();
      v8 = isLinkedOnOrAfter(_:)();
      if (v8)
      {
        MEMORY[0x1EEE9AC00](v8);
        static Update.ensure<A>(_:)();
      }
    }

    v9 = *(v6 + 1808);
    aBlock = *(v6 + 1792);
    v36 = v9;
    v10 = type metadata accessor for UIHostingContentView(0, &aBlock);
    swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v10);
    ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
    v11 = *v1;
    v12 = *v5;
    if (a1 & 1) != 0 || (v13 = v1 + *((v12 & v11) + 0x760), (v13[25]) || (v14 = (v1 + *((v12 & v11) + 0x768)), (v14[2]) || ((v15 = *v13, v16 = *(v13 + 1), v17 = *(v13 + 2), v18 = v13[24], v20 = *v14, v19 = v14[1], *&aBlock = v15, BYTE8(aBlock) = v16 & 1, *&v36 = v17, BYTE8(v36) = v18 & 1, swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v10), v21 = ViewRendererHost.sizeThatFits(_:)(), UIHostingContentView.roundSize(_:)(v21), v11 = *v1, v12 = *v5, v23 == v20) ? (v24 = v22 == v19) : (v24 = 0), v24))
    {
      v32 = 0;
      v28 = 0;
    }

    else
    {
      v25 = v1 + *((v12 & v11) + 0x760);
      *(v25 + 1) = 0;
      *(v25 + 2) = 0;
      *v25 = 0;
      *(v25 + 12) = 256;
      v26 = v1 + *((*v5 & *v1) + 0x768);
      *v26 = 0;
      *(v26 + 1) = 0;
      v26[16] = 1;
      v27 = objc_opt_self();
      v28 = swift_allocObject();
      *(v28 + 16) = v2;
      v29 = swift_allocObject();
      *(v29 + 16) = partial apply for closure #2 in UIHostingContentView.updateViewGraphForDisplay(isHidden:);
      *(v29 + 24) = v28;
      v37 = partial apply for thunk for @callee_guaranteed () -> ();
      v38 = v29;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v36 = thunk for @escaping @callee_guaranteed () -> ();
      *(&v36 + 1) = &block_descriptor_40;
      v30 = _Block_copy(&aBlock);
      v31 = v2;

      [v27 performWithoutAnimation_];
      _Block_release(v30);
      LOBYTE(v27) = swift_isEscapingClosureAtFileLocation();

      if (v27)
      {
        __break(1u);
        return result;
      }

      v11 = *v31;
      v12 = *v5;
      v32 = partial apply for closure #2 in UIHostingContentView.updateViewGraphForDisplay(isHidden:);
    }

    v33 = *(v2 + *((v12 & v11) + 0x738));
    if (v33)
    {
      v34 = v33;
      _UIHostingView.isHiddenForReuse.setter(a1 & 1);
    }

    if ((a1 & 1) == 0)
    {
      *(v2 + *((*v5 & *v2) + 0x770)) = 1;
    }

    return outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v32, v28);
  }

  return result;
}

uint64_t sub_18BD6EFA4()
{

  return swift_deallocObject();
}

void @objc UIHostingContentView._containerViewIsHidden(forReuse:)(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  UIHostingContentView._containerViewIsHidden(forReuse:)(a3);
}

uint64_t protocol witness for ViewGraphFeature.isHiddenForReuseDidChange(graph:) in conformance PlatformItemListViewGraph(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 361) & 2) != 0)
  {
    result = swift_beginAccess();
    if ((*(a1 + 41) & 1) == 0)
    {
      *(v1 + 9) = 1;
    }
  }

  return result;
}

id @objc UIHostingContentView._popupMenuButton.getter(void *a1)
{
  v1 = a1;
  v2 = UIHostingContentView._popupMenuButton.getter();

  return v2;
}

uint64_t UIHostingContentView._popupMenuButton.getter()
{
  UIHostingContentView.popUpButton.getter(&v2);
  if (v3)
  {
    Strong = 0;
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
  }

  outlined destroy of UIHostingConfigurationStorage(&v2, type metadata accessor for WeakBox<UIButton>?);
  return Strong;
}

uint64_t UIHostingContentView.popUpButton.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x750);
  swift_beginAccess();
  return outlined init with copy of UIHostingConfigurationStorage(v1 + v3, a1, type metadata accessor for WeakBox<UIButton>?);
}

void @objc UIHostingContentView._popupMenuButtonDidChangeHandler.setter(void *a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = thunk for @escaping @callee_unowned @convention(block) () -> ()partial apply;
  }

  else
  {
    v5 = 0;
  }

  v6 = a1;
  UIHostingContentView._popupMenuButtonDidChangeHandler.setter(v4, v5);
}

uint64_t UIHostingContentView._popupMenuButtonDidChangeHandler.setter(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x748));
  v4 = *v3;
  v5 = v3[1];
  *v3 = a1;
  v3[1] = a2;
  return outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v4, v5);
}

void @objc UIHostingContentView._containerBackgroundViewDidChangeHandler.setter(void *a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = thunk for @escaping @callee_unowned @convention(block) () -> ()partial apply;
  }

  else
  {
    v5 = 0;
  }

  v6 = a1;
  UIHostingContentView._containerBackgroundViewDidChangeHandler.setter(v4, v5);
}

uint64_t sub_18BD6F414()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t UIHostingContentView._containerBackgroundViewDidChangeHandler.setter(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x730));
  v4 = *v3;
  v5 = v3[1];
  *v3 = a1;
  v3[1] = a2;
  return outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v4, v5);
}

void *@objc UIHostingContentView._containerBackgroundView.getter(void *a1)
{
  v1 = a1;
  v2 = specialized UIHostingContentView._containerBackgroundView.getter();
  v3 = v2;

  return v2;
}

uint64_t UIHostingContentView.configuration.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x710);
  v7[0] = *((*MEMORY[0x1E69E7D40] & *v1) + 0x700);
  v7[1] = v3;
  v4 = type metadata accessor for UIHostingConfiguration(0, v7);
  a1[3] = v4;
  a1[4] = swift_getWitnessTable(protocol conformance descriptor for UIHostingConfiguration<A, B>, v4);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return UIHostingContentView._configuration.getter(boxed_opaque_existential_1);
}

uint64_t specialized UIHostingContentView.supports(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[0] = a2;
  v13[1] = a3;
  v13[2] = a4;
  v13[3] = a5;
  v6 = type metadata accessor for UIHostingConfiguration(0, v13);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13[-1] - v8;
  outlined init with copy of _Benchmark(a1, v13);
  type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for UIContentConfiguration, MEMORY[0x1E69DC068]);
  result = swift_dynamicCast();
  if (result)
  {
    v11 = result;
    (*(v7 + 8))(v9, v6);
    return v11;
  }

  return result;
}

void storeEnumTagSinglePayload for UIHostingConfiguration(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v47 = *(a4 + 16);
  v6 = *(v47 - 8);
  v45 = *(a4 + 24);
  v46 = v6;
  v7 = *(v6 + 84);
  v8 = *(v45 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = *(v6 + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = type metadata accessor for UICellConfigurationState();
  v12 = 0;
  v13 = *(v11 - 8);
  v14 = *(v13 + 84);
  v15 = *(v6 + 64);
  v16 = *(v8 + 80);
  v17 = *(v8 + 64);
  v18 = *(v13 + 80);
  if (v14)
  {
    v19 = v14 - 1;
  }

  else
  {
    v19 = 0;
  }

  if (v19 <= 0x7FFFFFFF)
  {
    v20 = 0x7FFFFFFF;
  }

  else
  {
    v20 = v19;
  }

  if (v20 <= v10)
  {
    v21 = v10;
  }

  else
  {
    v21 = v20;
  }

  v22 = v18 | 7;
  v23 = (v18 + 99) & ~v18;
  if (v14)
  {
    v24 = *(*(v11 - 8) + 64);
  }

  else
  {
    v24 = *(*(v11 - 8) + 64) + 1;
  }

  v25 = v23 + v24;
  v26 = (((v18 | 7) + v17 + ((v15 + v16) & ~v16)) & ~(v18 | 7)) + ((v23 + v24) & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v21 < a3)
  {
    if ((((v18 | 7) + v17 + ((v15 + v16) & ~v16)) & ~(v18 | 7)) + ((v23 + v24) & 0xFFFFFFF8) == -24)
    {
      v27 = a3 - v21 + 1;
    }

    else
    {
      v27 = 2;
    }

    if (v27 >= 0x10000)
    {
      v28 = 4;
    }

    else
    {
      v28 = 2;
    }

    if (v27 < 0x100)
    {
      v28 = 1;
    }

    if (v27 >= 2)
    {
      v12 = v28;
    }

    else
    {
      v12 = 0;
    }
  }

  v29 = a2;
  if (a2 > v21)
  {
    if (v26)
    {
      v30 = 1;
    }

    else
    {
      v30 = a2 - v21;
    }

    if (v26)
    {
      v31 = ~v21 + a2;
      bzero(a1, v26);
      *a1 = v31;
    }

    if (v12 > 1)
    {
      if (v12 == 2)
      {
        *(a1 + v26) = v30;
      }

      else
      {
        *(a1 + v26) = v30;
      }
    }

    else if (v12)
    {
      *(a1 + v26) = v30;
    }

    return;
  }

  v32 = a1;
  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *(a1 + v26) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_46;
    }

    *(a1 + v26) = 0;
  }

  else if (v12)
  {
    *(a1 + v26) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_46;
  }

  if (!a2)
  {
    return;
  }

LABEL_46:
  if (v7 == v21)
  {
    v33 = v47;
    v34 = *(v46 + 56);
    v35 = a2;
    v36 = v7;

LABEL_49:
    v34(v32, v35, v36, v33);
    return;
  }

  v32 = ((a1 + v15 + v16) & ~v16);
  if (v9 == v21)
  {
    v34 = *(v8 + 56);
    v35 = a2;
    v36 = v9;
    v33 = v45;

    goto LABEL_49;
  }

  v37 = ((v32 + v17 + v22) & ~v22);
  if (v20 >= v29)
  {
    v39 = ((v37 + v18 + 99) & ~v18);
    if (v19 < 0x7FFFFFFF)
    {
      v43 = &v39[v24] & 0xFFFFFFFFFFFFFFF8;
      if ((v29 & 0x80000000) != 0)
      {
        *(v43 + 8) = v29 & 0x7FFFFFFF;
        *(v43 + 16) = 0;
      }

      else
      {
        *(v43 + 8) = v29 - 1;
        *(v43 + 16) = 1;
      }
    }

    else if (v19 >= v29)
    {
      v44 = *(v13 + 56);

      v44(v39, v29 + 1);
    }

    else
    {
      if (v24 <= 3)
      {
        v40 = ~(-1 << (8 * v24));
      }

      else
      {
        v40 = -1;
      }

      if (v24)
      {
        v41 = v40 & (~v19 + v29);
        if (v24 <= 3)
        {
          v42 = v24;
        }

        else
        {
          v42 = 4;
        }

        bzero(v39, v24);
        if (v42 > 2)
        {
          if (v42 == 3)
          {
            *v39 = v41;
            v39[2] = BYTE2(v41);
          }

          else
          {
            *v39 = v41;
          }
        }

        else if (v42 == 1)
        {
          *v39 = v41;
        }

        else
        {
          *v39 = v41;
        }
      }
    }
  }

  else if ((v25 & 0xFFFFFFF8) != 0xFFFFFFE8)
  {
    v38 = ~v20 + v29;
    bzero(((v32 + v17 + v22) & ~v22), (v25 & 0xFFFFFFF8) + 24);
    *v37 = v38;
  }
}

uint64_t specialized UIHostingContentView._configuration.setter(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x710);
  v13[0] = *((*MEMORY[0x1E69E7D40] & *v1) + 0x700);
  v13[1] = v5;
  v6 = type metadata accessor for UIHostingConfiguration(0, v13);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v13 - v8 + 16;
  v10 = *((v4 & v3) + 0x728);
  swift_beginAccess();
  (*(v7 + 16))(v9, &v1[v10], v6);
  swift_beginAccess();
  (*(v7 + 24))(&v1[v10], a1, v6);
  swift_endAccess();
  UIHostingContentView._configuration.didset(v9);
  return (*(v7 + 8))(v9, v6);
}

uint64_t assignWithCopy for UIHostingConfiguration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 24;
  (*v6)();
  v7 = *(*(a3 + 24) - 8);
  v8 = v7 + 24;
  v9 = *(v7 + 80);
  v10 = *(v6 + 40) + v9;
  v11 = (v10 + a1) & ~v9;
  v12 = (v10 + a2) & ~v9;
  (*(v7 + 24))(v11, v12);
  v13 = *(v8 + 40);
  v14 = type metadata accessor for UICellConfigurationState();
  v15 = *(v14 - 8);
  v16 = *(v15 + 80);
  v17 = (v16 | 7) + v13;
  v18 = (v17 + v11) & ~(v16 | 7);
  v19 = (v17 + v12) & ~(v16 | 7);
  *v18 = *v19;
  LOBYTE(v17) = *(v19 + 0x10);
  *(v18 + 8) = *(v19 + 8);
  *(v18 + 16) = v17;
  LOBYTE(v17) = *(v19 + 32);
  *(v18 + 24) = *(v19 + 24);
  *(v18 + 32) = v17;
  LOBYTE(v17) = *(v19 + 48);
  *(v18 + 40) = *(v19 + 40);
  *(v18 + 48) = v17;
  LOBYTE(v17) = *(v19 + 64);
  *(v18 + 56) = *(v19 + 56);
  *(v18 + 64) = v17;
  LOBYTE(v17) = *(v19 + 80);
  *(v18 + 72) = *(v19 + 72);
  *(v18 + 80) = v17;
  LOBYTE(v17) = *(v19 + 96);
  *(v18 + 88) = *(v19 + 88);
  *(v18 + 96) = v17;
  *(v18 + 97) = *(v19 + 97);
  *(v18 + 98) = *(v19 + 98);
  v20 = ((v16 + 99 + v18) & ~v16);
  v21 = ((v16 + 99 + v19) & ~v16);
  v22 = *(v15 + 48);
  LODWORD(v13) = v22(v20, 1, v14);
  v23 = v22(v21, 1, v14);
  if (v13)
  {
    if (!v23)
    {
      (*(v15 + 16))(v20, v21, v14);
      (*(v15 + 56))(v20, 0, 1, v14);
      goto LABEL_12;
    }

    v24 = *(v15 + 84);
    v25 = *(v15 + 64);
  }

  else
  {
    if (!v23)
    {
      (*(v15 + 24))(v20, v21, v14);
      goto LABEL_12;
    }

    (*(v15 + 8))(v20, v14);
    v24 = *(v15 + 84);
    v25 = *(v15 + 64);
  }

  if (v24)
  {
    v26 = v25;
  }

  else
  {
    v26 = v25 + 1;
  }

  memcpy(v20, v21, v26);
LABEL_12:
  if (*(v15 + 84))
  {
    v27 = *(v15 + 64);
  }

  else
  {
    v27 = *(v15 + 64) + 1;
  }

  v28 = &v20[v27];
  v29 = &v21[v27];
  *v28 = *v29;
  v30 = v28 & 0xFFFFFFFFFFFFFFF8;
  v31 = v29 & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectWeakCopyAssign();
  *(v30 + 16) = *(v31 + 16);
  return a1;
}

void type metadata accessor for WeakBox<UIButton>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for WeakBox<UIButton>)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for UIButton, 0x1E69DC738);
    v1 = type metadata accessor for WeakBox();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for WeakBox<UIButton>);
    }
  }
}

void @objc UIHostingContentView.layoutMarginsDidChange()(void *a1)
{
  v1 = a1;
  UIHostingContentView.layoutMarginsDidChange()();
}

uint64_t UIHostingContentView.layoutMarginsDidChange()()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x710);
  v10[0] = *((*MEMORY[0x1E69E7D40] & *v0) + 0x700);
  v10[1] = v3;
  v4 = type metadata accessor for UIHostingContentView(0, v10);
  v11.receiver = v0;
  v11.super_class = v4;
  objc_msgSendSuper2(&v11, sel_layoutMarginsDidChange);
  v5 = _UIHostingView.base.getter();
  UIHostingViewBase.allowUIKitAnimationsForNextUpdate.setter();

  v6 = *(v1 + *((*v2 & *v1) + 0x738));
  if (v6)
  {
    v7 = v6;
    v8 = _UIHostingView.base.getter();

    UIHostingViewBase.allowUIKitAnimationsForNextUpdate.setter();
  }

  return UIHostingContentView.updateHostedViews()();
}

uint64_t UIHostingContentView.configuration.setter(void *a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x710);
  v19[0] = *((*MEMORY[0x1E69E7D40] & *v1) + 0x700);
  v19[1] = v3;
  v4 = type metadata accessor for UIHostingConfiguration(255, v19);
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v19 - v7;
  v9 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v19 - v14;
  outlined init with copy of _Benchmark(a1, v19);
  type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for UIContentConfiguration, MEMORY[0x1E69DC068]);
  v16 = swift_dynamicCast();
  v17 = *(v9 + 56);
  if (v16)
  {
    v17(v8, 0, 1, v4);
    (*(v9 + 32))(v15, v8, v4);
    specialized UIHostingContentView._configuration.setter(v15);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return (*(v9 + 8))(v15, v4);
  }

  else
  {
    v17(v8, 1, 1, v4);
    (*(v6 + 8))(v8, v5);
    *&v19[0] = 0;
    *(&v19[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(256);
    MEMORY[0x18D00C9B0](0xD0000000000000DELL, 0x800000018CD4C840);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x18D00C9B0](0xD00000000000001ELL, 0x800000018CD4C920);
    UIHostingContentView._configuration.getter(v12);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    (*(v9 + 8))(v12, v4);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t UIHostingContentView._configuration.didset(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *MEMORY[0x1E69E7D40];
  v6 = type metadata accessor for UICellConfigurationState();
  v48 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v43 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (UICellConfigurationState?, UICellConfigurationState?)(0);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UICellConfigurationState?(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v49 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v43 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v43 - v18;
  v20 = *((v5 & v4) + 0x700);
  v21 = *((v5 & v4) + 0x708);
  v22 = *((v5 & v4) + 0x718);
  v44 = *((v5 & v4) + 0x710);
  v45 = v20;
  v50 = v20;
  v51 = v21;
  v46 = v22;
  v47 = v21;
  v52 = v44;
  v53 = v22;
  v23 = type metadata accessor for UIHostingConfiguration(0, &v50);
  v24 = *(v23 + 56);
  v25 = type metadata accessor for UIHostingConfigurationStorage(0);
  outlined init with copy of UIHostingConfigurationStorage(a1 + *(v25 + 36) + v24, v19, type metadata accessor for UICellConfigurationState?);
  v26 = v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x728);
  swift_beginAccess();
  outlined init with copy of UIHostingConfigurationStorage(&v26[*(v23 + 56) + *(v25 + 36)], v16, type metadata accessor for UICellConfigurationState?);
  v27 = *(v9 + 56);
  outlined init with copy of UIHostingConfigurationStorage(v19, v11, type metadata accessor for UICellConfigurationState?);
  v28 = v48;
  outlined init with copy of UIHostingConfigurationStorage(v16, &v11[v27], type metadata accessor for UICellConfigurationState?);
  v29 = *(v28 + 48);
  if (v29(v11, 1, v6) == 1)
  {
    outlined destroy of UIHostingConfigurationStorage(v16, type metadata accessor for UICellConfigurationState?);
    outlined destroy of UIHostingConfigurationStorage(v19, type metadata accessor for UICellConfigurationState?);
    if (v29(&v11[v27], 1, v6) == 1)
    {
      outlined destroy of UIHostingConfigurationStorage(v11, type metadata accessor for UICellConfigurationState?);
      return UIHostingContentView.updateHostedViews()();
    }
  }

  else
  {
    outlined init with copy of UIHostingConfigurationStorage(v11, v49, type metadata accessor for UICellConfigurationState?);
    if (v29(&v11[v27], 1, v6) != 1)
    {
      v37 = &v11[v27];
      v38 = v43;
      (*(v28 + 32))(v43, v37, v6);
      lazy protocol witness table accessor for type HostingContentViewRootModifier and conformance HostingContentViewRootModifier(&lazy protocol witness table cache variable for type UICellConfigurationState and conformance UICellConfigurationState, MEMORY[0x1E69DC0B8], MEMORY[0x1E69DC0C0]);
      v39 = v49;
      v40 = dispatch thunk of static Equatable.== infix(_:_:)();
      v41 = *(v28 + 8);
      v41(v38, v6);
      outlined destroy of UIHostingConfigurationStorage(v16, type metadata accessor for UICellConfigurationState?);
      outlined destroy of UIHostingConfigurationStorage(v19, type metadata accessor for UICellConfigurationState?);
      v41(v39, v6);
      outlined destroy of UIHostingConfigurationStorage(v11, type metadata accessor for UICellConfigurationState?);
      v31 = v46;
      v30 = v47;
      if (v40)
      {
        return UIHostingContentView.updateHostedViews()();
      }

      goto LABEL_7;
    }

    outlined destroy of UIHostingConfigurationStorage(v16, type metadata accessor for UICellConfigurationState?);
    outlined destroy of UIHostingConfigurationStorage(v19, type metadata accessor for UICellConfigurationState?);
    (*(v28 + 8))(v49, v6);
  }

  outlined destroy of UIHostingConfigurationStorage(v11, type metadata accessor for (UICellConfigurationState?, UICellConfigurationState?));
  v31 = v46;
  v30 = v47;
LABEL_7:
  v50 = v45;
  v51 = v30;
  v52 = v44;
  v53 = v31;
  v32 = type metadata accessor for UIHostingContentView(0, &v50);
  swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v32);
  ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
  v34 = *(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x738));
  if (v34)
  {
    v35 = type metadata accessor for _UIHostingView(0, v30, v31, v33);
    v36 = v34;
    swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v35);
    ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
  }

  return UIHostingContentView.updateHostedViews()();
}

void type metadata accessor for (UICellConfigurationState?, UICellConfigurationState?)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (UICellConfigurationState?, UICellConfigurationState?))
  {
    type metadata accessor for UICellConfigurationState?(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (UICellConfigurationState?, UICellConfigurationState?));
    }
  }
}

void UIHostingContentView.updateBackgroundHostIfNeeded(_:)(void (*a1)(uint64_t), uint64_t a2)
{
  v26 = a2;
  v27 = a1;
  v3 = MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x708);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v26 - v6;
  v28[0] = *((v9 & v8) + 0x700);
  v28[1] = v4;
  v29 = *(v10 + 1808);
  v11 = type metadata accessor for UIHostingConfiguration(0, v28);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v26 - v13;
  UIHostingContentView._configuration.getter(&v26 - v13);
  v15 = v14[*(v11 + 56)];
  v16 = *(v12 + 8);
  v16(v14, v11);
  v17 = *((*v3 & *v2) + 0x738);
  v18 = *(v2 + v17);
  if (v15 == 1)
  {
    if (v18)
    {
      UIHostingContentView._configuration.getter(v14);
      (*(v5 + 16))(v7, &v14[*(v11 + 52)], v4);
      v19 = v18;
      v16(v14, v11);
      specialized _UIHostingView.rootView.setter(v7);
      (*(v5 + 8))(v7, v4);
    }

    else
    {
      v22 = UIHostingContentView.makeBackgroundHost()();
      v23 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x738);
      v24 = *(v2 + v23);
      *(v2 + v23) = v22;

      if (v27)
      {
        v27(v25);
      }
    }
  }

  else
  {
    v20 = v27;
    if (v18)
    {
      *(v2 + v17) = 0;

      if (v20)
      {
        v20(v21);
      }
    }
  }
}

uint64_t static SwiftUITextAccessibilityProvider.makeView(content:text:resolved:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = a1[1];
  v26 = *a1;
  v14 = *(a1 + 16);
  swift_beginAccess();
  v15 = *(a6 + 128);
  v48 = *(a6 + 112);
  v49 = v15;
  v50 = *(a6 + 144);
  v51 = *(a6 + 160);
  v16 = *(a6 + 64);
  v44 = *(a6 + 48);
  v45 = v16;
  v17 = *(a6 + 96);
  v46 = *(a6 + 80);
  v47 = v17;
  v18 = *(a6 + 32);
  v42 = *(a6 + 16);
  v43 = v18;
  outlined init with copy of TextLayoutProperties(&v42, &v52);
  v19 = ResolvedStyledText.isDynamic.getter();
  v20 = ResolvedStyledText.isEmpty.getter();
  a4 &= 1u;
  LOBYTE(v27[0]) = a4;
  v60 = v48;
  v61 = v49;
  *v62 = v50;
  v62[16] = v51;
  v56 = v44;
  v57 = v45;
  v58 = v46;
  v59 = v47;
  v54 = v42;
  v55 = v43;
  *&v52 = a2;
  *(&v52 + 1) = a3;
  LOBYTE(v53) = a4;
  *(&v53 + 1) = a5;
  v62[17] = v19 & 1;
  v62[18] = v20 & 1;
  v39 = v48;
  v40 = v49;
  v41[0] = v50;
  v35 = v44;
  v36 = v45;
  v37 = v46;
  v38 = v47;
  v33 = v42;
  v34 = v43;
  *(v41 + 15) = *&v62[15];
  v31 = v52;
  v32 = v53;
  outlined copy of Text.Storage(a2, a3, a4);

  specialized AccessibilityStaticTextModifier.body(content:)(v26, v13, v14, v27);
  outlined destroy of AccessibilityStaticTextModifier<StyledTextContentView>.Configuration(&v52);
  v21 = v27[1];
  v22 = v28;
  v23 = v29;
  v24 = v30;
  *a7 = v27[0];
  *(a7 + 8) = v21;
  *(a7 + 16) = v22;
  *(a7 + 24) = v23;
  *(a7 + 32) = v24;
  *(a7 + 40) = a2;
  *(a7 + 48) = a3;
  *(a7 + 56) = a4;
  *(a7 + 64) = a5;
  outlined copy of Text.Storage(a2, a3, a4);
}

uint64_t destroy for AccessibilityStaticTextModifier.Configuration(uint64_t a1)
{
  outlined consume of Text.Storage(*a1, *(a1 + 8), *(a1 + 16));
}

uint64_t specialized AccessibilityStaticTextModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  AccessibilityProperties.init(reserving:)();
  static AccessibilityAttachment.properties(_:)();
  outlined destroy of AccessibilityProperties(&v55);
  _sypSgMaTm_4(0, &lazy cache variable for type metadata for MutableBox<AccessibilityAttachment>, MEMORY[0x1E697FFF0], MEMORY[0x1E697DAC0]);
  v9 = swift_allocObject();
  memcpy((v9 + 16), __src, 0x128uLL);
  v10 = *(v4 + 3);
  v11 = *(v4 + 177);
  v12 = *(v4 + 178);
  swift_beginAccess();
  if (v12)
  {
    v13 = 0x800000008;
  }

  else
  {
    v13 = 0x100000001;
  }

  closure #1 in ModifiedContent<>.accessibilityVisibility(_:)(v9 + 16, v13);

  _sypSgMaTm_4(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text>, MEMORY[0x1E6981148], MEMORY[0x1E69E6F90]);
  v14 = swift_allocObject();
  v66 = *v4;
  v15 = v66;
  v67 = *(v4 + 16);
  v65 = v10;
  *(v14 + 16) = xmmword_18CD63400;
  *(v14 + 32) = v15;
  *(v14 + 48) = *(v4 + 2);
  *(v14 + 56) = v10;
  *(v9 + 40) = v14;
  *(v9 + 48) = 2;
  outlined init with copy of Text.Storage(&v66, __src);
  outlined init with copy of [Text.Modifier](&v65, __src);

  v16 = v4[9];
  v17 = v4[7];
  v40 = v4[8];
  v41 = v16;
  v18 = v4[9];
  v42 = v4[10];
  v19 = v4[5];
  v20 = v4[3];
  v36 = v4[4];
  v37 = v19;
  v21 = v4[5];
  v22 = v4[7];
  v38 = v4[6];
  v39 = v22;
  v23 = v4[3];
  v35[0] = v4[2];
  v35[1] = v23;
  v50 = v40;
  v51 = v18;
  v52 = v4[10];
  v46 = v36;
  v47 = v21;
  v48 = v38;
  v49 = v17;
  v43 = *(v4 + 176);
  v53 = *(v4 + 176);
  v44 = v35[0];
  v45 = v20;
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
  v61 = v40;
  v62 = v51;
  v63 = v52;
  v64 = v53;
  v57 = v36;
  v58 = v47;
  v59 = v38;
  v60 = v49;
  v55 = v35[0];
  v56 = v45;
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
  v24 = *(v9 + 256);
  __src[6] = *(v9 + 240);
  __src[7] = v24;
  __src[8] = *(v9 + 272);
  LOBYTE(__src[9]) = *(v9 + 288);
  v25 = *(v9 + 192);
  __src[2] = *(v9 + 176);
  __src[3] = v25;
  v26 = *(v9 + 224);
  __src[4] = *(v9 + 208);
  __src[5] = v26;
  v27 = *(v9 + 160);
  __src[0] = *(v9 + 144);
  __src[1] = v27;
  v28 = v62;
  *(v9 + 240) = v61;
  *(v9 + 256) = v28;
  *(v9 + 272) = v63;
  *(v9 + 288) = v64;
  v29 = v58;
  *(v9 + 176) = v57;
  *(v9 + 192) = v29;
  v30 = v60;
  *(v9 + 208) = v59;
  *(v9 + 224) = v30;
  v31 = v56;
  *(v9 + 144) = v55;
  *(v9 + 160) = v31;

  outlined init with copy of TextLayoutProperties(v35, &v34);
  _sypSgWOhTm_3(__src, &lazy cache variable for type metadata for AccessibilityTextLayoutProperties?, MEMORY[0x1E6980B48]);

  if (v11)
  {
    v32 = 1280;
  }

  else
  {
    v32 = 256;
  }

  result = closure #1 in ModifiedContent<>.accessibilityTraits(_:)(v9 + 16, v32, v32);
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = v9;
  *(a4 + 32) = 0;
  return result;
}

uint64_t closure #1 in ModifiedContent<>.accessibilityTraits(_:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if ((*(result + 56) & 1) == 0)
  {
    v3 = *(result + 48);
    v4 = *(result + 40) & ~a3;
    v5 = a3 | ~v3;
    a3 |= v3;
    a2 = v5 & a2 | v4;
  }

  *(result + 40) = a2;
  *(result + 48) = a3;
  *(result + 56) = 0;
  return result;
}

uint64_t closure #1 in ModifiedContent<>.accessibilityVisibility(_:)(uint64_t result, unint64_t a2)
{
  v2 = HIDWORD(a2);
  if ((*(result + 120) & 1) == 0)
  {
    v3 = *(result + 112);
    LODWORD(v2) = HIDWORD(v3) | HIDWORD(a2);
    LODWORD(a2) = (~HIDWORD(v3) | HIDWORD(a2)) & a2 | v3 & ~HIDWORD(a2);
  }

  *(result + 112) = a2 | (v2 << 32);
  *(result + 120) = 0;
  return result;
}

void type metadata accessor for AccessibilityStaticTextModifier<StyledTextContentView>.Configuration(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  return specialized Array.append<A>(contentsOf:)(a1, MEMORY[0x1E6981748]);
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), &type metadata for Toolbar.BarLocation);
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), &type metadata for AnyAccessibilityAction);
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), &type metadata for ToolbarPlacement.Role);
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), &type metadata for ContentScrollViewBox);
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), type metadata accessor for CommandsList.Item);
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), type metadata accessor for ToolbarStorage.Entry);
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), type metadata accessor for PlatformItemList.Item);
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), MEMORY[0x1E6980A40]);
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), MEMORY[0x1E69DBC20]);
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), type metadata accessor for (String?, String));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), type metadata accessor for (key: String?, value: String));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), &lazy cache variable for type metadata for CodingKey, MEMORY[0x1E69E7C30]);
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), type metadata accessor for CommandGroupPlacement);
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), MEMORY[0x1E69E8450]);
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), &lazy cache variable for type metadata for Selectable, &protocol descriptor for Selectable);
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), type metadata accessor for DisplayList.HostedViewState.Key);
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), &lazy cache variable for type metadata for TableColumnList, &protocol descriptor for TableColumnList);
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), &type metadata for UINavigationItemAdaptorStorage.Adaptor);
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), MEMORY[0x1E6969C28]);
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), &type metadata for AccessibilityListRotorEntry);
}

{
  v2 = v1;
  v4 = specialized BidirectionalCollection._distance(from:to:)(*(a1 + 240), *(a1 + 248), *(a1 + 256), *(a1 + 264), *(a1 + 272), *(a1 + 280));
  v5 = *v1;
  v6 = *(*v1 + 2);
  v7 = v4 + v6;
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v8 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v10 = *(v5 + 3) >> 1, v10 < v7))
  {
    if (v6 <= v7)
    {
      v11 = v7;
    }

    else
    {
      v11 = v6;
    }

    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v11, 1, v5);
    v10 = *(v5 + 3) >> 1;
  }

  v12 = *(v5 + 2);
  v13 = v10 - v12;
  v14 = &v5[96 * v12];
  outlined init with copy of LazyMapSequence<DefaultIndices<CountingIndexCollection<ShadowRowCollection<TableDataSourceAdaptor>>>, ListUpdate<CountingIndex<Int>, CountingIndex<Int>>>(a1, &v31);
  v15 = specialized Sequence._copySequenceContents(initializing:)(v38, v14 + 2, v13);
  result = outlined destroy of LazyMapSequence<DefaultIndices<CountingIndexCollection<ShadowRowCollection<TableDataSourceAdaptor>>>, ListUpdate<CountingIndex<Int>, CountingIndex<Int>>>(a1, &lazy cache variable for type metadata for LazyMapSequence<DefaultIndices<CountingIndexCollection<ShadowRowCollection<TableDataSourceAdaptor>>>, ListUpdate<CountingIndex<Int>, CountingIndex<Int>>>, MEMORY[0x1E69E6C98]);
  if (v15 < v8)
  {
    goto LABEL_15;
  }

  if (v15 < 1)
  {
    goto LABEL_12;
  }

  v17 = *(v5 + 2);
  v18 = __OFADD__(v17, v15);
  v19 = v17 + v15;
  if (!v18)
  {
    *(v5 + 2) = v19;
LABEL_12:
    if (v15 != v13)
    {
LABEL_13:
      result = outlined destroy of LazyMapSequence<DefaultIndices<CountingIndexCollection<ShadowRowCollection<TableDataSourceAdaptor>>>, ListUpdate<CountingIndex<Int>, CountingIndex<Int>>>(v38, &lazy cache variable for type metadata for LazyMapSequence<DefaultIndices<CountingIndexCollection<ShadowRowCollection<TableDataSourceAdaptor>>>, ListUpdate<CountingIndex<Int>, CountingIndex<Int>>>.Iterator, MEMORY[0x1E69E6C88]);
      *v2 = v5;
      return result;
    }

LABEL_16:
    v20 = *(v5 + 2);
    specialized LazyMapSequence.Iterator.next()(&v31);
    for (i = v37; HIBYTE(v37) <= 0xFEu; i = v37)
    {
      v22 = *(v5 + 3);
      v23 = v22 >> 1;
      if ((v22 >> 1) < v20 + 1)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v20 + 1, 1, v5);
        i = v37;
        v23 = *(v5 + 3) >> 1;
      }

      v27 = v33;
      v28 = v34;
      v29 = v35;
      v30 = v36;
      v25 = v31;
      v26 = v32;
      if (i >> 8 <= 0xFE && v20 < v23)
      {
        v24 = &v5[96 * v20 + 120];
        do
        {
          memmove(v24 - 88, &v25, 0x58uLL);
          *v24 = i;
          v24 += 96;
          ++v20;
          specialized LazyMapSequence.Iterator.next()(&v31);
          v27 = v33;
          v28 = v34;
          v29 = v35;
          v30 = v36;
          LOWORD(i) = v37;
          v25 = v31;
          v26 = v32;
        }

        while (HIBYTE(v37) <= 0xFEu && v20 < v23);
      }

      *(v5 + 2) = v20;
    }

    goto LABEL_13;
  }

  __break(1u);
  return result;
}

{
  v2 = v1;
  v3 = specialized BidirectionalCollection._distance(from:to:)(*(a1 + 32), *(a1 + 40), *(a1 + 48) & 1, *(a1 + 56), *(a1 + 64), *(a1 + 72) & 1, *a1, *(a1 + 8) & 1, *(a1 + 16), *(a1 + 24));
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v9 = *(v4 + 3) >> 1, v9 < v6))
  {
    if (v5 <= v6)
    {
      v10 = v6;
    }

    else
    {
      v10 = v5;
    }

    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    v9 = *(v4 + 3) >> 1;
  }

  v11 = *(v4 + 2);
  v12 = v9 - v11;
  result = specialized Sequence._copySequenceContents(initializing:)(v37, &v4[96 * v11 + 32], v9 - v11);
  if (result < v7)
  {
    goto LABEL_15;
  }

  if (result < 1)
  {
    goto LABEL_12;
  }

  v14 = *(v4 + 2);
  v15 = __OFADD__(v14, result);
  v16 = v14 + result;
  if (!v15)
  {
    *(v4 + 2) = v16;
LABEL_12:
    if (result != v12)
    {
LABEL_13:
      v35[4] = v37[4];
      v35[5] = v37[5];
      v35[6] = v37[6];
      v36 = v38;
      v35[0] = v37[0];
      v35[1] = v37[1];
      v35[2] = v37[2];
      v35[3] = v37[3];
      result = outlined destroy of LazyMapSequence<DefaultIndices<CountingIndexCollection<ResolvedTableRowIDs>>, ListUpdate<CountingIndex<Int>, CountingIndex<Int>>>.Iterator(v35);
      *v2 = v4;
      return result;
    }

LABEL_16:
    v17 = *(v4 + 2);
    specialized LazyMapSequence.Iterator.next()(&v28);
    for (i = v34; HIBYTE(v34) <= 0xFEu; i = v34)
    {
      v19 = *(v4 + 3);
      v20 = v19 >> 1;
      if ((v19 >> 1) < v17 + 1)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v17 + 1, 1, v4);
        v20 = *(v4 + 3) >> 1;
      }

      v24 = v30;
      v25 = v31;
      v26 = v32;
      v27 = v33;
      __src = v28;
      v23 = v29;
      if (v17 < v20)
      {
        v21 = &v4[96 * v17 + 120];
        do
        {
          memmove(v21 - 88, &__src, 0x58uLL);
          *v21 = i;
          v21 += 96;
          ++v17;
          specialized LazyMapSequence.Iterator.next()(&v28);
          v24 = v30;
          v25 = v31;
          v26 = v32;
          v27 = v33;
          i = v34;
          __src = v28;
          v23 = v29;
        }

        while (HIBYTE(v34) <= 0xFEu && v17 < v20);
      }

      *(v4 + 2) = v17;
    }

    goto LABEL_13;
  }

  __break(1u);
  return result;
}

{
  return specialized Array.append<A>(contentsOf:)(a1, MEMORY[0x1E69815C0]);
}

uint64_t outlined consume of AccessibilityImageLabel?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 >> 1 != 0xFFFFFFFF)
  {
    return outlined consume of AccessibilityImageLabel(a1, a2, a3, a4);
  }

  return a1;
}

uint64_t protocol witness for static PreferenceKey.defaultValue.getter in conformance InspectorStorage.PreferenceKey@<X0>(void *a1@<X2>, void *a2@<X3>, void *a4@<X8>)
{
  if (*a1 != -1)
  {
    v6 = a2;
    v7 = a4;
    swift_once();
    a4 = v7;
    a2 = v6;
  }

  *a4 = *a2;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result, uint64_t a2)
{
  v3 = *(result + 16);
  v4 = *v2;
  v5 = *(*v2 + 16);
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 + v3 <= *(v4 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  v4 = result;
  if (!*(v6 + 16))
  {
LABEL_10:

    if (!v3)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v4 + 24) >> 1) - *(v4 + 16) < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_11:
    *v2 = v4;
    return result;
  }

  v7 = *(v4 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v4 + 16) = v9;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t storeEnumTagSinglePayload for DragItemTimings(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 90) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 90) = 0;
    }

    if (a2)
    {
      *(result + 89) = a2 + 2;
    }
  }

  return result;
}

__n128 __swift_memcpy90_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 74) = *(a2 + 74);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

void protocol witness for static PreferenceKey.defaultValue.getter in conformance DragItemTimings.Key(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  *(a1 + 80) = 0;
  *(a1 + 88) = 513;
}

uint64_t getEnumTagSinglePayload for DragItemTimings(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 90))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 89);
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

void ContextMenuBridge.preferencesDidChange(_:)(uint64_t *a1)
{
  v2 = v1;
  v3 = v1 + OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = *(v3 + 8);
  ObjectType = swift_getObjectType();
  LOBYTE(v4) = ViewGraphDelegate.shouldCreateUIInteractions.getter(ObjectType, *(*(v4 + 16) + 8));
  swift_unknownObjectRelease();
  if ((v4 & 1) == 0)
  {
    return;
  }

  if (!swift_unknownObjectWeakLoadStrong())
  {
LABEL_20:
    __break(1u);
    return;
  }

  v6 = *(v3 + 8);
  v7 = swift_getObjectType();
  v8 = ViewGraphDelegate.uiView.getter(v7, *(*(v6 + 16) + 8));
  swift_unknownObjectRelease();
  if (!v8)
  {
    return;
  }

  PreferenceValues.subscript.getter();
  PreferenceValues.subscript.getter();
  v9 = OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_hasContextMenuSeed;
  if (v18 != -1)
  {
    v10 = *(v1 + OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_hasContextMenuSeed);
    if (v10 != -1 && v18 == v10)
    {
      v11 = *(v1 + OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_menuOrderSeed);
      if (v11 != -1 && v18 == v11)
      {

        return;
      }
    }
  }

  v12 = OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_interaction;
  v13 = *(v1 + OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_interaction);
  if (v13)
  {
    if ((v17 & 1) == 0)
    {
      v14 = v13;
      [v14 dismissMenu];
      v15 = v14;
      [v8 removeInteraction_];

      v16 = 0;
LABEL_16:
      v8 = *(v2 + v12);
      *(v2 + v12) = v16;
    }
  }

  else if (v17)
  {
    v16 = [objc_allocWithZone(MEMORY[0x1E69DC8E0]) initWithDelegate_];
    [v8 swiftui:v16 addManagedInteraction:?];

    goto LABEL_16;
  }

  *(v2 + OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_menuOrder) = v17;
  *(v2 + v9) = v18;
  *(v2 + OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_menuOrderSeed) = v18;
}

void DragAndDropBridge.updateDragInteraction(_:_:)(unsigned __int8 *a1, uint64_t a2)
{
  v3 = v2;
  v4 = *a1;
  v5 = *(a1 + 1);
  v6 = *(a2 + 92);
  v7 = v2 + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    __break(1u);
    return;
  }

  v8 = *(v7 + 8);
  ObjectType = swift_getObjectType();
  v21 = ViewGraphDelegate.uiView.getter(ObjectType, *(*(v8 + 16) + 8));
  swift_unknownObjectRelease();
  if (v21)
  {
    v10 = OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_hasDragItemsSeed;
    if (v5 != -1)
    {
      v11 = *(v2 + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_hasDragItemsSeed);
      if (v11 != -1 && v5 == v11)
      {
LABEL_15:
        v16 = *(v3 + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_dragInteraction);
        if (v16 && ((v17 = OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_dragTimingsSeed, v6 == -1) || ((v18 = *(v3 + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_dragTimingsSeed), v18 != -1) ? (v19 = v6 == v18) : (v19 = 0), !v19)))
        {
          v20 = v16;
          DragItemTimings.apply(to:)(v20);

          *(v3 + v17) = v6;
        }

        else
        {
        }

        return;
      }
    }

    v13 = OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_dragInteraction;
    if (*(v2 + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_dragInteraction))
    {
      if ((v4 & 1) == 0)
      {
        [v21 removeInteraction_];
        v14 = 0;
LABEL_13:
        v15 = *(v3 + v13);
        *(v3 + v13) = v14;
      }
    }

    else if (v4)
    {
      v14 = [objc_allocWithZone(MEMORY[0x1E69DC988]) initWithDelegate_];
      [v14 setEnabled_];
      [v21 swiftui:v14 addManagedInteraction:?];
      goto LABEL_13;
    }

    *(v3 + v10) = v5;
    goto LABEL_15;
  }
}

void DragAndDropBridge.preferencesDidChange(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = v1 + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    LOBYTE(v4) = ViewGraphDelegate.shouldCreateUIInteractions.getter(ObjectType, *(*(v4 + 16) + 8));
    swift_unknownObjectRelease();
    if (v4)
    {
      v18 = v2;
      PreferenceValues.subscript.getter();
      v14[0] = v16;
      v15 = v17;
      v13 = v2;
      PreferenceValues.subscript.getter();
      v6[2] = v9;
      v6[3] = v10;
      v6[4] = v11;
      v6[5] = v12;
      v6[0] = v7;
      v6[1] = v8;
      DragAndDropBridge.updateDragInteraction(_:_:)(v14, v6);
      *&v7 = v2;
      PreferenceValues.subscript.getter();
      LOBYTE(v18) = v6[0];
      HIDWORD(v18) = DWORD1(v6[0]);
      DragAndDropBridge.updateDropInteraction(_:)(&v18);
      *&v7 = v2;
      PreferenceValues.subscript.getter();
      LOBYTE(v18) = v6[0];
      HIDWORD(v18) = DWORD1(v6[0]);
      DragAndDropBridge.updateSpringLoadedInteraction(_:)(&v18);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t UIKitStatusBarBridge.preferencesDidChange(_:)(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v1 + 24);
  v14[0] = v3;

  v5 = VersionSeedSetTracker.hasChanges(in:)(v14, v4);

  if (v5 || (static Semantics.v7.getter(), result = isLinkedOnOrAfter(_:)(), (result & 1) != 0) && (v11 = *(v2 + 17), v11 != 2) && (v12 = v11 & 1, v14[0] = v3, result = PreferenceValues.subscript.getter(), v13 = v15, *(v2 + 17) = v15, v13 != v12))
  {
    v14[0] = v3;
    PreferenceValues.subscript.getter();
    v6 = v15;
    v7 = v15;
    if (v15 == 2)
    {
      v8 = 0;
    }

    else
    {
      v8 = BYTE1(v15) & 1;
    }

    static Semantics.v7.getter();
    if ((isLinkedOnOrAfter(_:)() & 1) == 0)
    {
      v14[0] = v3;
      PreferenceValues.subscript.getter();
      *(v2 + 17) = v15;
    }

    v9 = v6 & 1;
    if (v7 == 2)
    {
      v9 = 2;
    }

    *(v2 + 16) = v9;
    UIKitStatusBarBridge.updateStatusBar(isAnimated:shouldDefer:)(v8, 0);
    v15 = v3;
    swift_beginAccess();
    VersionSeedSetTracker.updateSeeds(to:)();
    return swift_endAccess();
  }

  return result;
}

void DragAndDropBridge.updateDropInteraction(_:)(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 1);
  v5 = OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_canDropSeed;
  if (v4 == -1 || v4 != *(v1 + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_canDropSeed))
  {
    v6 = v1 + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host;
    if (!swift_unknownObjectWeakLoadStrong())
    {
      __break(1u);
      return;
    }

    v7 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    v9 = ViewGraphDelegate.uiView.getter(ObjectType, *(*(v7 + 16) + 8));
    swift_unknownObjectRelease();
    if (v9)
    {
      v10 = OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_dropInteraction;
      v11 = *(v2 + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_dropInteraction);
      if (v11)
      {
        if ((v3 & 1) == 0)
        {
          v12 = v11;
          [v9 removeInteraction_];

          v13 = 0;
LABEL_10:
          v9 = *(v2 + v10);
          *(v2 + v10) = v13;
        }
      }

      else if (v3)
      {
        v13 = [objc_allocWithZone(MEMORY[0x1E69DC9B8]) initWithDelegate_];
        [v9 swiftui:v13 addManagedInteraction:?];

        goto LABEL_10;
      }

      *(v2 + v5) = v4;
    }
  }
}

void DragAndDropBridge.updateSpringLoadedInteraction(_:)(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 1);
  v5 = OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_canSpringLoadSeed;
  if (v4 == -1 || v4 != *&v1[OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_canSpringLoadSeed])
  {
    v6 = &v1[OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host];
    if (!swift_unknownObjectWeakLoadStrong())
    {
      __break(1u);
      return;
    }

    v7 = *(v6 + 1);
    ObjectType = swift_getObjectType();
    v9 = ViewGraphDelegate.uiView.getter(ObjectType, *(*(v7 + 16) + 8));
    swift_unknownObjectRelease();
    if (v9)
    {
      v10 = OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_springLoadedInteraction;
      v11 = *&v2[OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_springLoadedInteraction];
      if (v11)
      {
        if ((v3 & 1) == 0)
        {
          v12 = v11;
          [v9 removeInteraction_];

          v13 = *&v2[v10];
          *&v2[v10] = 0;

LABEL_11:
          *&v2[v5] = v4;
          return;
        }
      }

      else if (v3)
      {
        v14 = type metadata accessor for DragAndDropBridge.SpringLoadedBehavior();
        v15 = objc_allocWithZone(v14);
        swift_unknownObjectWeakInit();
        v28 = OBJC_IVAR____TtCC7SwiftUI17DragAndDropBridge20SpringLoadedBehavior_base;
        v16 = objc_opt_self();
        v17 = v2;
        *&v15[v28] = [v16 _defaultInteractionBehavior];
        swift_unknownObjectWeakAssign();
        v31.receiver = v15;
        v31.super_class = v14;
        v18 = objc_msgSendSuper2(&v31, sel_init);

        v19 = type metadata accessor for DragAndDropBridge.SpringLoadedEffect();
        v20 = objc_allocWithZone(v19);
        swift_unknownObjectWeakInit();
        *&v20[OBJC_IVAR____TtCC7SwiftUI17DragAndDropBridge18SpringLoadedEffect_blinkTimer] = 0;
        v20[OBJC_IVAR____TtCC7SwiftUI17DragAndDropBridge18SpringLoadedEffect_previousHighlightState] = 0;
        swift_unknownObjectWeakAssign();
        v30.receiver = v20;
        v30.super_class = v19;
        v21 = objc_msgSendSuper2(&v30, sel_init);
        v22 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v23 = objc_allocWithZone(MEMORY[0x1E69DCF80]);
        aBlock[4] = partial apply for closure #1 in DragAndDropBridge.updateSpringLoadedInteraction(_:);
        aBlock[5] = v22;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UISpringLoadedInteraction, @guaranteed UISpringLoadedInteractionContext) -> ();
        aBlock[3] = &block_descriptor_96;
        v24 = _Block_copy(aBlock);

        v25 = [v23 initWithInteractionBehavior:v18 interactionEffect:v21 activationHandler:v24];

        _Block_release(v24);

        v26 = v25;
        [v9 swiftui:v26 addManagedInteraction:?];

        v27 = *&v2[v10];
        *&v2[v10] = v26;

        goto LABEL_11;
      }

      goto LABEL_11;
    }
  }
}

uint64_t sub_18BD72364()
{
  MEMORY[0x18D011290](v0 + 16);

  return swift_deallocObject();
}

uint64_t FocusViewGraph.needsUpdate(graph:)(uint64_t a1)
{
  v2 = v1;
  v4 = v2[16];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(a1 + 208);
    ObjectType = swift_getObjectType();
    v7 = ViewGraphDelegate.uiView.getter(ObjectType, v5);
    swift_unknownObjectRelease();
    if (v7)
    {
      type metadata accessor for UIFocusSystem();
      v8 = v7;
      v9 = static UIFocusSystem.focusSystem(for:)();

      if (v9)
      {
      }

      v2[18] = ((v9 != 0) ^ v2[17]) & 1;
      v2[17] = v9 != 0;
    }
  }

  if (v4)
  {
    return 1;
  }

  else
  {
    return v2[18];
  }
}

uint64_t PlatformItemListViewGraph.needsUpdate(graph:)(uint64_t a1)
{
  if (*(v1 + 9))
  {
    return 1;
  }

  if (*(v1 + 8) != 1)
  {
    return 0;
  }

  swift_beginAccess();
  if ((*(a1 + 361) & 2) == 0)
  {
    return 0;
  }

  result = AGGraphGetWeakValue();
  if (result)
  {
    result = v4 & 1;
    *(v1 + 9) = v4 & 1;
  }

  return result;
}

uint64_t AccessibilityViewGraph.needsUpdate(graph:)(uint64_t a1)
{
  swift_beginAccess();
  if (*(a1 + 360) != 1)
  {
    return 0;
  }

  swift_beginAccess();
  v3 = *(a1 + 361);
  if ((v3 & 0x20) == 0)
  {
    goto LABEL_27;
  }

  if ((*(v1 + 45) & 1) == 0)
  {
    if (!ViewGraph.parentHost.getter())
    {
      GraphHost.addPreference<A>(_:)();
      result = 1;
      *(v1 + 45) = 1;
      return result;
    }
  }

  if (!AGGraphGetWeakValue())
  {
    goto LABEL_27;
  }

  PreferenceValues.subscript.getter();
  v4 = *(v1 + 48);
  v5 = *(v23 + 16);
  if (!v5)
  {
    v6 = 0;
    goto LABEL_26;
  }

  if (v5 == 1)
  {
    v6 = 0;
    v7 = 0;
LABEL_22:
    v16 = v5 - v7;
    v17 = (v23 + 56 * v7 + 32);
    do
    {
      v19 = *v17;
      v17 += 7;
      v18 = v19;
      if (v19 > v6)
      {
        v6 = v18;
      }

      --v16;
    }

    while (v16);
    goto LABEL_26;
  }

  v9 = 0;
  v10 = 0;
  v7 = v5 & 0x7FFFFFFFFFFFFFFELL;
  v11 = (v23 + 88);
  v12 = v5 & 0x7FFFFFFFFFFFFFFELL;
  do
  {
    v13 = *(v11 - 7);
    v15 = *v11;
    v11 += 14;
    v14 = v15;
    if (v13 > v9)
    {
      v9 = v13;
    }

    if (v14 > v10)
    {
      v10 = v14;
    }

    v12 -= 2;
  }

  while (v12);
  if (v9 <= v10)
  {
    v6 = v10;
  }

  else
  {
    v6 = v9;
  }

  if (v5 != v7)
  {
    goto LABEL_22;
  }

LABEL_26:

  if (v4 != v6)
  {
    return 1;
  }

LABEL_27:
  if (*(v1 + 24) != 1 || (WeakValue = AGGraphGetWeakValue()) == 0)
  {
    if ((v3 & 0x20) != 0)
    {
      return *(v1 + 44);
    }

    return 0;
  }

  v21 = *(WeakValue + 8);
  v22 = *(v1 + 16);
  result = v22 != v21;
  if ((v3 & 0x20) != 0 && v22 == v21)
  {
    return *(v1 + 44);
  }

  return result;
}

uint64_t PreferenceValues.seed<A>(for:)@<X0>(_DWORD *a4@<X8>)
{
  swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for PreferenceValues.Value();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v11 - v8;
  v11[1] = *v4;
  PreferenceValues.subscript.getter();
  *a4 = *&v9[*(v6 + 28)];
  return (*(v7 + 8))(v9, v6);
}

Swift::Void __swiftcall _UIHostingView.preferencesDidChange()()
{
  v2 = v1;
  v3 = *MEMORY[0x1E69E7D40] & *v1;
  _UIHostingView.viewGraph.getter(v0);
  GraphHost.preferenceValues()();

  v4 = v40;
  v5 = _UIHostingView.viewController.getter();
  if (v5)
  {
    v6 = v5;
    UIHostingController.preferencesDidChange(_:)(&v40);
  }

  *&v40 = v4;
  DragAndDropBridge.preferencesDidChange(_:)(&v40);
  v7 = specialized _UIHostingView.pointerBridge.getter();
  if (v7)
  {
    *&v40 = v4;
    v8 = v7;
    PointerBridge.preferencesDidChange(_:)(&v40);
  }

  v9 = specialized _UIHostingView.contextMenuBridge.getter();
  *&v40 = v4;
  v10 = v9;
  ContextMenuBridge.preferencesDidChange(_:)(&v40);

  specialized _UIHostingView.statusBarBridge.getter();
  *&v40 = v4;

  UIKitStatusBarBridge.preferencesDidChange(_:)(&v40);

  if (_UIHostingView.sceneBridge.getter())
  {
    *&v40 = v4;
    SceneBridge.preferencesDidChange(_:)(&v40);
  }

  v11 = specialized _UIHostingView.scenePresentationBridge.getter();
  if (v11)
  {
    v12 = v11;
    swift_beginAccess();
    *&v48[0] = v4;

    PreferenceValues.subscript.getter();
    v13 = *(v12 + 16);
    if (v13 == -1 || DWORD2(v42) == -1 || v13 != DWORD2(v42))
    {
      *(v12 + 16) = DWORD2(v42);
      closure #1 in ScenePresentationBridge.preferencesDidChange(_:)(&v40, v12);
    }

    outlined destroy of PreferenceValues.Value<AnyHashable?>(&v40, &lazy cache variable for type metadata for PreferenceValues.Value<AnyHashable?>, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8]);
    swift_endAccess();
  }

  specialized DeprecatedAlertBridge.preferencesDidChange(_:)(v4);
  specialized DeprecatedAlertBridge.preferencesDidChange(_:)(v4);
  v14 = specialized _UIHostingView.popoverBridge.getter();
  if (v14)
  {
    *&v40 = v4;
    v15 = v14;
    UIKitPopoverBridge.preferencesDidChange(_:)(&v40);
  }

  v16 = specialized _UIHostingView.editMenuBridge.getter();
  *&v40 = v4;
  v17 = v16;
  EditMenuBridge.preferencesDidChange(_:)(&v40);

  v20 = _UIHostingView.sheetBridge.getter(v18, v19);
  if (v20)
  {
    v21 = v20;
    specialized SheetBridge.preferencesDidChange(_:)(v4, &type metadata for SheetPreference.Key, &protocol witness table for SheetPreference.Key, &unk_1EFFA0980, &unk_1EFFA09D0, &unk_1EFFA09F8, partial apply for specialized closure #1 in SheetBridge.dismissAndPresentAgain(preference:presented:animated:hasNoModifier:presenter:), partial apply for closure #2 in SheetBridge.dismissAndPresentAgain(preference:presented:animated:hasNoModifier:presenter:), &unk_1EFFA09A8, partial apply for specialized closure #6 in SheetBridge.preferencesDidChange(_:), partial apply for closure #3 in SheetBridge.preferencesDidChange(_:));
  }

  specialized _UIHostingView.focusBridge.getter();
  *&v40 = v4;

  FocusBridge.preferencesDidChange(_:)(&v40);

  if (specialized _UIHostingView.sharingActivityPickerBridge.getter())
  {
    *&v40 = v4;

    SharingActivityPickerBridge.preferencesDidChange(_:)(&v40);
  }

  v22 = specialized _UIHostingView.shareConfigurationBridge.getter();
  if (v22)
  {
    v23 = v22;
    swift_beginAccess();
    *&v34 = v4;
    swift_retain_n();
    PreferenceValues.subscript.getter();
    v24 = *(v23 + 32);
    if (v24 == -1 || *&v45[24] == -1 || v24 != *&v45[24])
    {
      *(v23 + 32) = *&v45[24];
      v48[0] = v40;
      v48[1] = v41;
      v48[4] = v44;
      v48[5] = *v45;
      v49 = *&v45[16];
      v48[2] = v42;
      v48[3] = v43;
      outlined init with copy of AnyShareConfiguration?(v48, &v34, &lazy cache variable for type metadata for AnyShareConfiguration?, &type metadata for AnyShareConfiguration);
      ShareConfigurationBridge.shareConfigurationDidChange(_:)(v48);
      _ss11AnyHashableVSgWOhTm_1(v48, &lazy cache variable for type metadata for AnyShareConfiguration?, &type metadata for AnyShareConfiguration, MEMORY[0x1E69E6720]);
      v38 = v44;
      v39[0] = *v45;
      *(v39 + 12) = *&v45[12];
      v34 = v40;
      v35 = v41;
      v36 = v42;
      v37 = v43;
    }

    else
    {
      v38 = v44;
      v39[0] = *v45;
      *(v39 + 12) = *&v45[12];
      v34 = v40;
      v35 = v41;
      v36 = v42;
      v37 = v43;
    }

    outlined destroy of PreferenceValues.Value<AnyHashable?>(&v34, &lazy cache variable for type metadata for PreferenceValues.Value<AnyShareConfiguration?>, &lazy cache variable for type metadata for AnyShareConfiguration?, &type metadata for AnyShareConfiguration);
    swift_endAccess();
  }

  *&v40 = v4;
  UILargeContentViewerInteractionBridge.preferencesDidChange(_:)(&v40);
  v25 = specialized _UIHostingView.avkitCaptureButtonBridge.getter();
  *&v40 = v4;
  v26 = v25;
  AVKitCaptureButtonBridge.preferencesDidChange(_:)(&v40);

  v27 = specialized _UIHostingView.tooltipBridge.getter();
  *&v40 = v4;
  v28 = v27;
  PreferenceValues.subscript.getter();
  v46[0] = v34;
  v47 = DWORD1(v34);
  TooltipBridge.updateState(hasTooltip:)(v46);

  v29 = specialized _UIHostingView.pencilEventsBridge.getter();
  *&v40 = v4;
  v30 = v29;
  PreferenceValues.subscript.getter();
  v46[0] = v34;
  v47 = DWORD1(v34);
  PencilEventsBridge.updateState(wantsPencilEvents:)(v46);

  if (_UIHostingView.delegate.getter())
  {
    v32 = v31;
    ObjectType = swift_getObjectType();
    *&v40 = v4;
    (*(v32 + 40))(v2, &v40, *(v3 + 80), *(v3 + 88), ObjectType, v32);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_18BD72EEC()
{
  MEMORY[0x18D011290](v0 + 16);

  return swift_deallocObject();
}

BOOL VersionSeedSetTracker.hasChanges(in:)(uint64_t a1, uint64_t a2)
{
  v2 = (a2 + 48);
  v3 = *(a2 + 16) + 1;
  do
  {
    if (!--v3)
    {
      break;
    }

    v4 = *v2;
    PreferenceValues.seed<A>(for:)(&v6);
    if (v4 == -1)
    {
      break;
    }

    if (v6 == -1)
    {
      break;
    }

    v2 += 6;
  }

  while (v4 == v6);
  return v3 != 0;
}

Swift::Void __swiftcall _UIHostingView.didRender()()
{
  v0 = _UIHostingView.viewController.getter();
  if (v0)
  {
    v1 = v0;
    UIHostingController.didRender()();
  }
}

void TooltipBridge.updateState(hasTooltip:)(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 1);
  v5 = OBJC_IVAR____TtC7SwiftUI13TooltipBridge_hasTooltipSeed;
  if (v4 == -1 || v4 != *(v1 + OBJC_IVAR____TtC7SwiftUI13TooltipBridge_hasTooltipSeed))
  {
    v6 = v1 + OBJC_IVAR____TtC7SwiftUI13TooltipBridge_host;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = *(v6 + 8);
      ObjectType = swift_getObjectType();
      v9 = ViewGraphDelegate.uiView.getter(ObjectType, *(*(v7 + 16) + 8));
      swift_unknownObjectRelease();
      if (v9)
      {
        v10 = OBJC_IVAR____TtC7SwiftUI13TooltipBridge_tooltipInteraction;
        v11 = *(v2 + OBJC_IVAR____TtC7SwiftUI13TooltipBridge_tooltipInteraction);
        if (((v11 == 0) & v3) == 1)
        {
          v12 = [objc_allocWithZone(MEMORY[0x1E69DD178]) init];
          [v12 setDelegate_];
          v13 = v12;
          [v9 swiftui:v13 addManagedInteraction:?];
        }

        else
        {
          if ((v11 == 0) | v3 & 1)
          {
LABEL_10:

            *(v2 + v5) = v4;
            return;
          }

          v14 = v11;
          [v9 removeInteraction_];

          v13 = 0;
        }

        v9 = *(v2 + v10);
        *(v2 + v10) = v13;
        goto LABEL_10;
      }
    }
  }
}

void specialized DeprecatedAlertBridge.preferencesDidChange(_:)(uint64_t a1)
{
  v2 = v1;
  *&v104 = a1;
  PreferenceValues.subscript.getter();
  v3 = MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x70);
  v5 = *(v1 + v4);
  if (v5 == -1 || v124 == -1 || v5 != v124)
  {
    v8 = v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
    if (!swift_unknownObjectWeakLoadStrong())
    {
      __break(1u);
      goto LABEL_62;
    }

    v9 = *(v8 + 1);
    ObjectType = swift_getObjectType();
    v11 = ViewGraphDelegate.uiPresenterViewController.getter(ObjectType, *(*(v9 + 16) + 8));
    swift_unknownObjectRelease();
    if (v11)
    {
      v12 = *((*v3 & *v1) + 0x90);
      if (*(v1 + v12))
      {
        outlined destroy of PreferenceValues.Value<AnyHashable?>(&v113, &lazy cache variable for type metadata for PreferenceValues.Value<ActionSheet.Presentation?>, &lazy cache variable for type metadata for ActionSheet.Presentation?, &type metadata for ActionSheet.Presentation);

        return;
      }

      *(v1 + v4) = v124;
      v13 = *v1;
      v14 = (*v3 & *v1);
      v15 = v14[15];
      v16 = *(v2 + v15);
      if (v16)
      {
        v84 = *((*v3 & v13) + 0x78);
        v17 = v14[17];
        swift_beginAccess();
        outlined init with copy of AnyShareConfiguration?(v2 + v17, &v104, &lazy cache variable for type metadata for ActionSheet.Presentation?, &type metadata for ActionSheet.Presentation);
        if (*(&v105 + 1))
        {
          outlined init with copy of ActionSheet.Presentation(&v104, &v93);
          v18 = v16;
          _ss11AnyHashableVSgWOhTm_1(&v104, &lazy cache variable for type metadata for ActionSheet.Presentation?, &type metadata for ActionSheet.Presentation, MEMORY[0x1E69E6720]);
          outlined init with copy of AnyShareConfiguration?(&v99, &aBlock, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8]);
          outlined destroy of ActionSheet.Presentation(&v93);
        }

        else
        {
          v32 = v16;
          _ss11AnyHashableVSgWOhTm_1(&v104, &lazy cache variable for type metadata for ActionSheet.Presentation?, &type metadata for ActionSheet.Presentation, MEMORY[0x1E69E6720]);
          aBlock = 0u;
          v90 = 0u;
          v91 = 0;
        }

        outlined init with copy of AnyShareConfiguration?(&v113, &v104, &lazy cache variable for type metadata for ActionSheet.Presentation?, &type metadata for ActionSheet.Presentation);
        if (*(&v105 + 1))
        {
          outlined init with copy of AnyShareConfiguration?(&v108, &v93, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8]);
          outlined destroy of ActionSheet.Presentation(&v104);
        }

        else
        {
          _ss11AnyHashableVSgWOhTm_1(&v104, &lazy cache variable for type metadata for ActionSheet.Presentation?, &type metadata for ActionSheet.Presentation, MEMORY[0x1E69E6720]);
          v93 = 0u;
          v94 = 0u;
          *&v95 = 0;
        }

        v33 = MEMORY[0x1E69E69B8];
        outlined init with copy of AnyShareConfiguration?(&aBlock, &v104, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8]);
        outlined init with copy of AnyShareConfiguration?(&v93, &v106[8], &lazy cache variable for type metadata for AnyHashable?, v33);
        if (*(&v105 + 1))
        {
          outlined init with copy of AnyShareConfiguration?(&v104, v88, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8]);
          if (*&v106[32])
          {
            v86[0] = *&v106[8];
            v86[1] = *&v106[24];
            v87 = *&v106[40];
            v34 = MEMORY[0x18D00E7E0](v88, v86);
            outlined destroy of AnyHashable(v86);
            v35 = MEMORY[0x1E69E69B8];
            v36 = MEMORY[0x1E69E6720];
            _ss11AnyHashableVSgWOhTm_1(&v93, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8], MEMORY[0x1E69E6720]);
            _ss11AnyHashableVSgWOhTm_1(&aBlock, &lazy cache variable for type metadata for AnyHashable?, v35, v36);
            outlined destroy of AnyHashable(v88);
            _ss11AnyHashableVSgWOhTm_1(&v104, &lazy cache variable for type metadata for AnyHashable?, v35, v36);
            if ((v34 & 1) == 0)
            {
LABEL_37:
              v43 = outlined init with copy of AnyShareConfiguration?(&v113, &v93, &lazy cache variable for type metadata for ActionSheet.Presentation?, &type metadata for ActionSheet.Presentation);
              if (*(&v94 + 1))
              {
                v110 = v101;
                v111 = v102;
                v112 = v103;
                *&v106[32] = v97;
                v107 = v98;
                v108 = v99;
                v109 = v100;
                v104 = v93;
                v105 = v94;
                *v106 = v95;
                *&v106[16] = v96;
                if (*(&v97 + 1))
                {
                  (*(&v97 + 1))(v43);
                }

                v44 = MEMORY[0x1E69E69B8];
                outlined init with copy of AnyShareConfiguration?(&v108, &v93, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8]);
                v45 = *(&v94 + 1);
                _ss11AnyHashableVSgWOhTm_1(&v93, &lazy cache variable for type metadata for AnyHashable?, v44, MEMORY[0x1E69E6720]);
                if (v45)
                {
                  v46 = 1;
                  *(v2 + v12) = 1;
                  v47 = (v2 + *((*v3 & *v2) + 0x80));
                  v48 = *v47;
                  v49 = v47[1];
                  v50 = swift_allocObject();
                  swift_unknownObjectWeakInit();
                  outlined init with copy of ActionSheet.Presentation(&v104, &v93);
                  v51 = swift_allocObject();
                  v52 = v99;
                  *(v51 + 136) = v100;
                  v53 = v102;
                  *(v51 + 152) = v101;
                  *(v51 + 168) = v53;
                  v54 = v95;
                  *(v51 + 72) = v96;
                  v55 = v98;
                  *(v51 + 88) = v97;
                  *(v51 + 104) = v55;
                  *(v51 + 120) = v52;
                  v56 = v94;
                  *(v51 + 24) = v93;
                  *(v51 + 40) = v56;
                  *(v51 + 16) = v16;
                  v57 = v103;
                  *(v51 + 56) = v54;
                  *(v51 + 184) = v57;
                  *(v51 + 192) = v48;
                  *(v51 + 200) = v49;
                  *(v51 + 208) = v50;
                  *(v51 + 216) = v11;
                  v91 = partial apply for specialized closure #1 in DeprecatedAlertBridge.preferencesDidChange(_:);
                  v92 = v51;
                  *&aBlock = MEMORY[0x1E69E9820];
                  *(&aBlock + 1) = 1107296256;
                  *&v90 = thunk for @escaping @callee_guaranteed () -> ();
                  *(&v90 + 1) = &block_descriptor_84;
                  v58 = _Block_copy(&aBlock);

                  v59 = v11;
                  v60 = v16;

                  [v60 dismissViewControllerAnimated:1 completion:v58];
                  _Block_release(v58);

                  outlined destroy of ActionSheet.Presentation(&v104);
                }

                else
                {
                  v65 = (v2 + *((*v3 & *v2) + 0x80));
                  v66 = *v65;
                  v67 = v65[1];

                  specialized PlatformAlertController.update<A>(for:with:environmentChanged:)(&v104, v66, v67, 0);

                  [v16 dismissViewControllerAnimated:1 completion:0];

                  outlined destroy of ActionSheet.Presentation(&v104);
                  v68 = *(v2 + v84);
                  *(v2 + v84) = 0;

                  v46 = 0;
                }

                *(v2 + *((*v3 & *v2) + 0x68)) = v46;
              }

              else
              {

                _ss11AnyHashableVSgWOhTm_1(&v93, &lazy cache variable for type metadata for ActionSheet.Presentation?, &type metadata for ActionSheet.Presentation, MEMORY[0x1E69E6720]);
                v61 = *(v2 + v84);
                *(v2 + v84) = 0;

                *(v2 + *((*v3 & *v2) + 0x68)) = 0;
              }

              goto LABEL_59;
            }

            goto LABEL_33;
          }

          v41 = MEMORY[0x1E69E69B8];
          v42 = MEMORY[0x1E69E6720];
          _ss11AnyHashableVSgWOhTm_1(&v93, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8], MEMORY[0x1E69E6720]);
          _ss11AnyHashableVSgWOhTm_1(&aBlock, &lazy cache variable for type metadata for AnyHashable?, v41, v42);
          outlined destroy of AnyHashable(v88);
        }

        else
        {
          v37 = MEMORY[0x1E69E6720];
          _ss11AnyHashableVSgWOhTm_1(&v93, &lazy cache variable for type metadata for AnyHashable?, v33, MEMORY[0x1E69E6720]);
          _ss11AnyHashableVSgWOhTm_1(&aBlock, &lazy cache variable for type metadata for AnyHashable?, v33, v37);
          if (!*&v106[32])
          {
            _ss11AnyHashableVSgWOhTm_1(&v104, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8], MEMORY[0x1E69E6720]);
LABEL_33:
            outlined init with copy of AnyShareConfiguration?(&v113, &v93, &lazy cache variable for type metadata for ActionSheet.Presentation?, &type metadata for ActionSheet.Presentation);
            if (*(&v94 + 1))
            {
              v110 = v101;
              v111 = v102;
              v112 = v103;
              *&v106[32] = v97;
              v107 = v98;
              v108 = v99;
              v109 = v100;
              v104 = v93;
              v105 = v94;
              *v106 = v95;
              *&v106[16] = v96;
              v38 = (v2 + *((*v3 & *v2) + 0x80));
              v39 = *v38;
              v40 = v38[1];

              specialized PlatformAlertController.update<A>(for:with:environmentChanged:)(&v104, v39, v40, 0);

              outlined destroy of ActionSheet.Presentation(&v104);
            }

            else
            {
              _ss11AnyHashableVSgWOhTm_1(&v93, &lazy cache variable for type metadata for ActionSheet.Presentation?, &type metadata for ActionSheet.Presentation, MEMORY[0x1E69E6720]);
            }

            outlined init with copy of AnyShareConfiguration?(&v113, &v104, &lazy cache variable for type metadata for ActionSheet.Presentation?, &type metadata for ActionSheet.Presentation);
            v69 = *(&v105 + 1);
            _ss11AnyHashableVSgWOhTm_1(&v104, &lazy cache variable for type metadata for ActionSheet.Presentation?, &type metadata for ActionSheet.Presentation, MEMORY[0x1E69E6720]);
            v70 = *((*v3 & *v2) + 0x68);
            v71 = *(v2 + v70);
            if ((v69 == 0) != v71)
            {
              goto LABEL_58;
            }

            *(v2 + v70) = v71 ^ 1;
            if (v71)
            {
              outlined init with copy of AnyShareConfiguration?(&v113, &v104, &lazy cache variable for type metadata for ActionSheet.Presentation?, &type metadata for ActionSheet.Presentation);
              if (*(&v105 + 1))
              {
                v73 = *&v106[40];
                v72 = v107;
                outlined copy of AppIntentExecutor?(*&v106[40], v107);
                v74 = outlined destroy of ActionSheet.Presentation(&v104);
                if (v73)
                {
                  v73(v74);
                  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v73, v72);
                }
              }

              else
              {
                _ss11AnyHashableVSgWOhTm_1(&v104, &lazy cache variable for type metadata for ActionSheet.Presentation?, &type metadata for ActionSheet.Presentation, MEMORY[0x1E69E6720]);
              }

              v81 = *(v2 + v84);
              *(v2 + v84) = 0;

              [v16 dismissViewControllerAnimated:1 completion:0];
              goto LABEL_58;
            }

            v75 = [v16 popoverPresentationController];
            if (!v75)
            {
LABEL_55:
              [v11 presentViewController:v16 animated:1 completion:0];
LABEL_58:

              goto LABEL_59;
            }

            v76 = v75;
            if (swift_unknownObjectWeakLoadStrong())
            {
              v77 = *(v8 + 1);
              v78 = swift_getObjectType();
              v79 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView, 0x1E69DD250);
              (*(*(*(v77 + 16) + 8) + 16))(&v104, v79, v79, v78);
              swift_unknownObjectRelease();
              v80 = v104;
              [v76 setSourceView_];

              goto LABEL_55;
            }

            goto LABEL_63;
          }
        }

        outlined destroy of WeakBox<UIWindowScene>?(&v104, type metadata accessor for (AnyHashable?, AnyHashable?));
        goto LABEL_37;
      }

      v19 = v14[13];
      if (*(v2 + v19))
      {
LABEL_64:
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return;
      }

      outlined init with copy of AnyShareConfiguration?(&v113, &v93, &lazy cache variable for type metadata for ActionSheet.Presentation?, &type metadata for ActionSheet.Presentation);
      if (!*(&v94 + 1))
      {

        _ss11AnyHashableVSgWOhTm_1(&v93, &lazy cache variable for type metadata for ActionSheet.Presentation?, &type metadata for ActionSheet.Presentation, MEMORY[0x1E69E6720]);
        v110 = v121;
        v111 = v122;
        v112 = v123;
        *&v106[32] = v117;
        v107 = v118;
        v108 = v119;
        v109 = v120;
        v104 = v113;
        v105 = v114;
        v62 = *v3 & *v2;
        *v106 = v115;
        *&v106[16] = v116;
        v63 = *(v62 + 136);
        swift_beginAccess();
        v64 = v2 + v63;
LABEL_60:
        outlined assign with take of ActionSheet.Presentation?(&v104, v64, &lazy cache variable for type metadata for ActionSheet.Presentation?, &type metadata for ActionSheet.Presentation);
        swift_endAccess();
        return;
      }

      v85 = v15;
      v110 = v101;
      v111 = v102;
      v112 = v103;
      *&v106[32] = v97;
      v107 = v98;
      v108 = v99;
      v109 = v100;
      v104 = v93;
      v105 = v94;
      *v106 = v95;
      *&v106[16] = v96;
      type metadata accessor for PlatformAlertController();
      v20 = [swift_getObjCClassFromMetadata() alertControllerWithTitle:0 message:0 preferredStyle:*(v2 + *((*v3 & *v2) + 0x98))];
      v21 = (v2 + *((*v3 & *v2) + 0x80));
      v22 = *v21;
      v23 = v21[1];

      v24 = v20;

      specialized PlatformAlertController.update<A>(for:with:environmentChanged:)(&v104, v22, v23, 0);

      v25 = [v24 popoverPresentationController];
      if (!v25)
      {
LABEL_22:
        [v11 presentViewController:v24 animated:1 completion:0];

        outlined destroy of ActionSheet.Presentation(&v104);
        *(v2 + v4) = v124;
        v31 = *(v2 + v85);
        *(v2 + v85) = v24;

        *(v2 + v19) = 1;
LABEL_59:
        v110 = v121;
        v111 = v122;
        v112 = v123;
        *&v106[32] = v117;
        v107 = v118;
        v108 = v119;
        v109 = v120;
        v104 = v113;
        v105 = v114;
        v82 = *v3 & *v2;
        *v106 = v115;
        *&v106[16] = v116;
        v83 = *(v82 + 136);
        swift_beginAccess();
        v64 = v2 + v83;
        goto LABEL_60;
      }

      v26 = v25;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v27 = *(v8 + 1);
        v28 = swift_getObjectType();
        v29 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView, 0x1E69DD250);
        (*(*(*(v27 + 16) + 8) + 16))(&v93, v29, v29, v28);
        swift_unknownObjectRelease();
        v30 = v93;
        [v26 setSourceView_];

        goto LABEL_22;
      }

LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }
  }

  outlined destroy of PreferenceValues.Value<AnyHashable?>(&v113, &lazy cache variable for type metadata for PreferenceValues.Value<ActionSheet.Presentation?>, &lazy cache variable for type metadata for ActionSheet.Presentation?, &type metadata for ActionSheet.Presentation);
}

{
  v2 = v1;
  *&__dst[0] = a1;
  PreferenceValues.subscript.getter();
  v3 = MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x70);
  v5 = *(v1 + v4);
  if (v5 == -1 || v88 == -1 || v5 != v88)
  {
    v8 = v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
    if (!swift_unknownObjectWeakLoadStrong())
    {
      __break(1u);
      goto LABEL_62;
    }

    v9 = *(v8 + 1);
    ObjectType = swift_getObjectType();
    v11 = ViewGraphDelegate.uiPresenterViewController.getter(ObjectType, *(*(v9 + 16) + 8));
    swift_unknownObjectRelease();
    if (v11)
    {
      v12 = *((*v3 & *v1) + 0x90);
      if (*(v1 + v12))
      {
        outlined destroy of PreferenceValues.Value<AnyHashable?>(v87, &lazy cache variable for type metadata for PreferenceValues.Value<Alert.Presentation?>, &lazy cache variable for type metadata for Alert.Presentation?, &type metadata for Alert.Presentation);

        return;
      }

      *(v1 + v4) = v88;
      v13 = *v1;
      v14 = (*v3 & *v1);
      v15 = v14[15];
      v16 = *(v2 + v15);
      if (v16)
      {
        v76 = *((*v3 & v13) + 0x78);
        v17 = v14[17];
        swift_beginAccess();
        outlined init with copy of AnyShareConfiguration?(v2 + v17, __dst, &lazy cache variable for type metadata for Alert.Presentation?, &type metadata for Alert.Presentation);
        if (*&__dst[3])
        {
          outlined init with copy of Alert.Presentation(__dst, __src);
          v18 = v16;
          _ss11AnyHashableVSgWOhTm_1(__dst, &lazy cache variable for type metadata for Alert.Presentation?, &type metadata for Alert.Presentation, MEMORY[0x1E69E6720]);
          outlined init with copy of AnyShareConfiguration?(&__src[13], &aBlock, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8]);
          outlined destroy of Alert.Presentation(__src);
        }

        else
        {
          v32 = v16;
          _ss11AnyHashableVSgWOhTm_1(__dst, &lazy cache variable for type metadata for Alert.Presentation?, &type metadata for Alert.Presentation, MEMORY[0x1E69E6720]);
          aBlock = 0u;
          v82 = 0u;
          v83 = 0;
        }

        outlined init with copy of AnyShareConfiguration?(v87, __dst, &lazy cache variable for type metadata for Alert.Presentation?, &type metadata for Alert.Presentation);
        if (*&__dst[3])
        {
          outlined init with copy of AnyShareConfiguration?(&__dst[26], __src, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8]);
          outlined destroy of Alert.Presentation(__dst);
        }

        else
        {
          _ss11AnyHashableVSgWOhTm_1(__dst, &lazy cache variable for type metadata for Alert.Presentation?, &type metadata for Alert.Presentation, MEMORY[0x1E69E6720]);
          memset(__src, 0, 40);
        }

        v33 = MEMORY[0x1E69E69B8];
        outlined init with copy of AnyShareConfiguration?(&aBlock, __dst, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8]);
        outlined init with copy of AnyShareConfiguration?(__src, &__dst[5], &lazy cache variable for type metadata for AnyHashable?, v33);
        if (*&__dst[3])
        {
          outlined init with copy of AnyShareConfiguration?(__dst, v80, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8]);
          if (*&__dst[8])
          {
            v78[0] = *&__dst[5];
            v78[1] = *&__dst[7];
            v79 = __dst[9];
            v34 = MEMORY[0x18D00E7E0](v80, v78);
            outlined destroy of AnyHashable(v78);
            v35 = MEMORY[0x1E69E69B8];
            v36 = MEMORY[0x1E69E6720];
            _ss11AnyHashableVSgWOhTm_1(__src, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8], MEMORY[0x1E69E6720]);
            _ss11AnyHashableVSgWOhTm_1(&aBlock, &lazy cache variable for type metadata for AnyHashable?, v35, v36);
            outlined destroy of AnyHashable(v80);
            _ss11AnyHashableVSgWOhTm_1(__dst, &lazy cache variable for type metadata for AnyHashable?, v35, v36);
            if ((v34 & 1) == 0)
            {
LABEL_37:
              outlined init with copy of AnyShareConfiguration?(v87, __src, &lazy cache variable for type metadata for Alert.Presentation?, &type metadata for Alert.Presentation);
              if (*(&__src[1] + 1))
              {
                v43 = memcpy(__dst, __src, sizeof(__dst));
                if (*&__dst[23])
                {
                  (*&__dst[23])(v43);
                }

                v44 = MEMORY[0x1E69E69B8];
                outlined init with copy of AnyShareConfiguration?(&__dst[26], __src, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8]);
                v45 = *(&__src[1] + 1);
                _ss11AnyHashableVSgWOhTm_1(__src, &lazy cache variable for type metadata for AnyHashable?, v44, MEMORY[0x1E69E6720]);
                if (v45)
                {
                  v46 = 1;
                  *(v2 + v12) = 1;
                  v47 = (v2 + *((*v3 & *v2) + 0x80));
                  v48 = *v47;
                  v49 = v47[1];
                  v50 = swift_allocObject();
                  swift_unknownObjectWeakInit();
                  outlined init with copy of Alert.Presentation(__dst, __src);
                  v51 = swift_allocObject();
                  v51[2] = v16;
                  memcpy(v51 + 3, __src, 0x118uLL);
                  v51[38] = v48;
                  v51[39] = v49;
                  v51[40] = v50;
                  v51[41] = v11;
                  v83 = partial apply for specialized closure #1 in DeprecatedAlertBridge.preferencesDidChange(_:);
                  v84 = v51;
                  *&aBlock = MEMORY[0x1E69E9820];
                  *(&aBlock + 1) = 1107296256;
                  *&v82 = thunk for @escaping @callee_guaranteed () -> ();
                  *(&v82 + 1) = &block_descriptor_93;
                  v52 = _Block_copy(&aBlock);

                  v53 = v11;
                  v54 = v16;

                  [v54 dismissViewControllerAnimated:1 completion:v52];
                  _Block_release(v52);

                  outlined destroy of Alert.Presentation(__dst);
                }

                else
                {
                  v58 = (v2 + *((*v3 & *v2) + 0x80));
                  v59 = *v58;
                  v60 = v58[1];

                  specialized PlatformAlertController.update<A>(for:with:environmentChanged:)(__dst, v59, v60, 0);

                  [v16 dismissViewControllerAnimated:1 completion:0];

                  outlined destroy of Alert.Presentation(__dst);
                  v61 = *(v2 + v76);
                  *(v2 + v76) = 0;

                  v46 = 0;
                }

                *(v2 + *((*v3 & *v2) + 0x68)) = v46;
              }

              else
              {

                _ss11AnyHashableVSgWOhTm_1(__src, &lazy cache variable for type metadata for Alert.Presentation?, &type metadata for Alert.Presentation, MEMORY[0x1E69E6720]);
                v55 = *(v2 + v76);
                *(v2 + v76) = 0;

                *(v2 + *((*v3 & *v2) + 0x68)) = 0;
              }

              goto LABEL_59;
            }

            goto LABEL_33;
          }

          v41 = MEMORY[0x1E69E69B8];
          v42 = MEMORY[0x1E69E6720];
          _ss11AnyHashableVSgWOhTm_1(__src, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8], MEMORY[0x1E69E6720]);
          _ss11AnyHashableVSgWOhTm_1(&aBlock, &lazy cache variable for type metadata for AnyHashable?, v41, v42);
          outlined destroy of AnyHashable(v80);
        }

        else
        {
          v37 = MEMORY[0x1E69E6720];
          _ss11AnyHashableVSgWOhTm_1(__src, &lazy cache variable for type metadata for AnyHashable?, v33, MEMORY[0x1E69E6720]);
          _ss11AnyHashableVSgWOhTm_1(&aBlock, &lazy cache variable for type metadata for AnyHashable?, v33, v37);
          if (!*&__dst[8])
          {
            _ss11AnyHashableVSgWOhTm_1(__dst, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8], MEMORY[0x1E69E6720]);
LABEL_33:
            outlined init with copy of AnyShareConfiguration?(v87, __src, &lazy cache variable for type metadata for Alert.Presentation?, &type metadata for Alert.Presentation);
            if (*(&__src[1] + 1))
            {
              memcpy(__dst, __src, sizeof(__dst));
              v38 = (v2 + *((*v3 & *v2) + 0x80));
              v39 = *v38;
              v40 = v38[1];

              specialized PlatformAlertController.update<A>(for:with:environmentChanged:)(__dst, v39, v40, 0);

              outlined destroy of Alert.Presentation(__dst);
            }

            else
            {
              _ss11AnyHashableVSgWOhTm_1(__src, &lazy cache variable for type metadata for Alert.Presentation?, &type metadata for Alert.Presentation, MEMORY[0x1E69E6720]);
            }

            outlined init with copy of AnyShareConfiguration?(v87, __dst, &lazy cache variable for type metadata for Alert.Presentation?, &type metadata for Alert.Presentation);
            v62 = __dst[3];
            _ss11AnyHashableVSgWOhTm_1(__dst, &lazy cache variable for type metadata for Alert.Presentation?, &type metadata for Alert.Presentation, MEMORY[0x1E69E6720]);
            v63 = *((*v3 & *v2) + 0x68);
            v64 = *(v2 + v63);
            if ((*&v62 == 0) != v64)
            {
              goto LABEL_58;
            }

            *(v2 + v63) = v64 ^ 1;
            if (v64)
            {
              outlined init with copy of AnyShareConfiguration?(v87, __dst, &lazy cache variable for type metadata for Alert.Presentation?, &type metadata for Alert.Presentation);
              if (*&__dst[3])
              {
                v65 = *&__dst[23];
                v66 = *&__dst[24];
                outlined copy of AppIntentExecutor?(*&__dst[23], *&__dst[24]);
                v67 = outlined destroy of Alert.Presentation(__dst);
                if (v65)
                {
                  (v65)(v67);
                  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v65, v66);
                }
              }

              else
              {
                _ss11AnyHashableVSgWOhTm_1(__dst, &lazy cache variable for type metadata for Alert.Presentation?, &type metadata for Alert.Presentation, MEMORY[0x1E69E6720]);
              }

              v74 = *(v2 + v76);
              *(v2 + v76) = 0;

              [v16 dismissViewControllerAnimated:1 completion:0];
              goto LABEL_58;
            }

            v68 = [v16 popoverPresentationController];
            if (!v68)
            {
LABEL_55:
              [v11 presentViewController:v16 animated:1 completion:0];
LABEL_58:

              goto LABEL_59;
            }

            v69 = v68;
            if (swift_unknownObjectWeakLoadStrong())
            {
              v70 = *(v8 + 1);
              v71 = swift_getObjectType();
              v72 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView, 0x1E69DD250);
              (*(*(*(v70 + 16) + 8) + 16))(__dst, v72, v72, v71);
              swift_unknownObjectRelease();
              v73 = __dst[0];
              [v69 setSourceView_];

              goto LABEL_55;
            }

            goto LABEL_63;
          }
        }

        outlined destroy of WeakBox<UIWindowScene>?(__dst, type metadata accessor for (AnyHashable?, AnyHashable?));
        goto LABEL_37;
      }

      v19 = v14[13];
      if (*(v2 + v19))
      {
LABEL_64:
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return;
      }

      outlined init with copy of AnyShareConfiguration?(v87, __src, &lazy cache variable for type metadata for Alert.Presentation?, &type metadata for Alert.Presentation);
      if (!*(&__src[1] + 1))
      {

        _ss11AnyHashableVSgWOhTm_1(__src, &lazy cache variable for type metadata for Alert.Presentation?, &type metadata for Alert.Presentation, MEMORY[0x1E69E6720]);
        memcpy(__dst, v87, sizeof(__dst));
        v56 = *((*v3 & *v2) + 0x88);
        swift_beginAccess();
        v57 = v2 + v56;
LABEL_60:
        outlined assign with take of ActionSheet.Presentation?(__dst, v57, &lazy cache variable for type metadata for Alert.Presentation?, &type metadata for Alert.Presentation);
        swift_endAccess();
        return;
      }

      v77 = v15;
      memcpy(__dst, __src, sizeof(__dst));
      type metadata accessor for PlatformAlertController();
      v20 = [swift_getObjCClassFromMetadata() alertControllerWithTitle:0 message:0 preferredStyle:*(v2 + *((*v3 & *v2) + 0x98))];
      v21 = (v2 + *((*v3 & *v2) + 0x80));
      v22 = *v21;
      v23 = v21[1];

      v24 = v20;

      specialized PlatformAlertController.update<A>(for:with:environmentChanged:)(__dst, v22, v23, 0);

      v25 = [v24 popoverPresentationController];
      if (!v25)
      {
LABEL_22:
        [v11 presentViewController:v24 animated:1 completion:0];

        outlined destroy of Alert.Presentation(__dst);
        *(v2 + v4) = v88;
        v31 = *(v2 + v77);
        *(v2 + v77) = v24;

        *(v2 + v19) = 1;
LABEL_59:
        memcpy(__dst, v87, sizeof(__dst));
        v75 = *((*v3 & *v2) + 0x88);
        swift_beginAccess();
        v57 = v2 + v75;
        goto LABEL_60;
      }

      v26 = v25;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v27 = *(v8 + 1);
        v28 = swift_getObjectType();
        v29 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView, 0x1E69DD250);
        (*(*(*(v27 + 16) + 8) + 16))(__src, v29, v29, v28);
        swift_unknownObjectRelease();
        v30 = *&__src[0];
        [v26 setSourceView_];

        goto LABEL_22;
      }

LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }
  }

  outlined destroy of PreferenceValues.Value<AnyHashable?>(v87, &lazy cache variable for type metadata for PreferenceValues.Value<Alert.Presentation?>, &lazy cache variable for type metadata for Alert.Presentation?, &type metadata for Alert.Presentation);
}

uint64_t sub_18BD74138()
{
  outlined consume of Text.Storage(*(v0 + 24), *(v0 + 32), *(v0 + 40));

  if (*(v0 + 80))
  {
    outlined consume of Text.Storage(*(v0 + 56), *(v0 + 64), *(v0 + 72));
  }

  if (*(v0 + 96))
  {
  }

  if (*(v0 + 144))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 120));
  }

  return swift_deallocObject();
}

void UILargeContentViewerInteractionBridge.preferencesDidChange(_:)(void *a1)
{
  v2 = v1;
  *&v44[0] = *a1;
  PreferenceValues.subscript.getter();
  v3 = v48;
  v4 = OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_largeContentViewTreeSeed;
  if (v48 != -1 && v48 == *(v1 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_largeContentViewTreeSeed))
  {
    outlined destroy of AccessibilityLargeContentViewItem?(v46, &lazy cache variable for type metadata for PreferenceValues.Value<AccessibilityLargeContentViewTree>, &type metadata for AccessibilityLargeContentViewTree, MEMORY[0x1E697EA38]);
    return;
  }

  v5 = v1 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_largeContentViewTree;
  v6 = *(v2 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_largeContentViewTree + 208);
  v44[12] = *(v2 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_largeContentViewTree + 192);
  v44[13] = v6;
  v44[14] = *(v2 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_largeContentViewTree + 224);
  v45 = *(v2 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_largeContentViewTree + 240);
  v7 = *(v2 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_largeContentViewTree + 144);
  v44[8] = *(v2 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_largeContentViewTree + 128);
  v44[9] = v7;
  v8 = *(v2 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_largeContentViewTree + 176);
  v44[10] = *(v2 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_largeContentViewTree + 160);
  v44[11] = v8;
  v9 = *(v2 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_largeContentViewTree + 80);
  v44[4] = *(v2 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_largeContentViewTree + 64);
  v44[5] = v9;
  v10 = *(v2 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_largeContentViewTree + 112);
  v44[6] = *(v2 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_largeContentViewTree + 96);
  v44[7] = v10;
  v11 = *(v2 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_largeContentViewTree + 16);
  v44[0] = *(v2 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_largeContentViewTree);
  v44[1] = v11;
  v12 = *(v2 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_largeContentViewTree + 48);
  v44[2] = *(v2 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_largeContentViewTree + 32);
  v44[3] = v12;
  v13 = v46[13];
  *(v5 + 192) = v46[12];
  *(v5 + 208) = v13;
  *(v5 + 224) = v46[14];
  *(v5 + 240) = v47;
  v14 = v46[9];
  *(v5 + 128) = v46[8];
  *(v5 + 144) = v14;
  v15 = v46[11];
  *(v5 + 160) = v46[10];
  *(v5 + 176) = v15;
  v16 = v46[5];
  *(v5 + 64) = v46[4];
  *(v5 + 80) = v16;
  v17 = v46[7];
  *(v5 + 96) = v46[6];
  *(v5 + 112) = v17;
  v18 = v46[1];
  *v5 = v46[0];
  *(v5 + 16) = v18;
  v19 = *&v46[2];
  v20 = v46[3];
  *(v5 + 32) = v46[2];
  *(v5 + 48) = v20;
  outlined init with copy of AccessibilityLargeContentViewTree(v46, v42, v19);
  outlined destroy of AccessibilityLargeContentViewTree(v44);
  v21 = *(v5 + 208);
  v42[12] = *(v5 + 192);
  v42[13] = v21;
  v42[14] = *(v5 + 224);
  v43 = *(v5 + 240);
  v22 = *(v5 + 144);
  v42[8] = *(v5 + 128);
  v42[9] = v22;
  v23 = *(v5 + 176);
  v42[10] = *(v5 + 160);
  v42[11] = v23;
  v24 = *(v5 + 80);
  v42[4] = *(v5 + 64);
  v42[5] = v24;
  v25 = *(v5 + 112);
  v42[6] = *(v5 + 96);
  v42[7] = v25;
  v26 = *(v5 + 16);
  v42[0] = *v5;
  v42[1] = v26;
  v27 = *(v5 + 48);
  v42[2] = *(v5 + 32);
  v42[3] = v27;
  v28 = AccessibilityLargeContentViewTree.hasValue.getter();
  v29 = OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_interaction;
  v30 = *(v2 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_interaction);
  if (!v30)
  {
    if (v28)
    {
      v35 = [objc_allocWithZone(MEMORY[0x1E69DCC18]) initWithDelegate_];
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v37 = Strong;
        [Strong swiftui:v35 addManagedInteraction:?];

        v38 = *(v2 + v29);
        *(v2 + v29) = v35;
        v39 = v35;

        v40 = [v39 gestureRecognizerForExclusionRelationship];
        if ([v40 delegate])
        {
          objc_opt_self();
          v41 = swift_dynamicCastObjCClass();
          if (!v41)
          {
            swift_unknownObjectRelease();
          }
        }

        else
        {
          v41 = 0;
        }

        swift_unknownObjectWeakAssign();

        [v40 setDelegate_];
        [v40 setDelaysTouchesEnded_];
        [v40 setCancelsTouchesInView_];
        outlined destroy of AccessibilityLargeContentViewItem?(v46, &lazy cache variable for type metadata for PreferenceValues.Value<AccessibilityLargeContentViewTree>, &type metadata for AccessibilityLargeContentViewTree, MEMORY[0x1E697EA38]);

        swift_unknownObjectWeakAssign();
        goto LABEL_16;
      }

LABEL_19:
      __break(1u);
      return;
    }

LABEL_13:
    outlined destroy of AccessibilityLargeContentViewItem?(v46, &lazy cache variable for type metadata for PreferenceValues.Value<AccessibilityLargeContentViewTree>, &type metadata for AccessibilityLargeContentViewTree, MEMORY[0x1E697EA38]);
    goto LABEL_16;
  }

  if (v28)
  {
    goto LABEL_13;
  }

  v31 = swift_unknownObjectWeakLoadStrong();
  if (!v31)
  {
    __break(1u);
    goto LABEL_19;
  }

  v32 = v31;
  v33 = v30;
  [v32 removeInteraction_];
  outlined destroy of AccessibilityLargeContentViewItem?(v46, &lazy cache variable for type metadata for PreferenceValues.Value<AccessibilityLargeContentViewTree>, &type metadata for AccessibilityLargeContentViewTree, MEMORY[0x1E697EA38]);

  v34 = *(v2 + v29);
  *(v2 + v29) = 0;

  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
LABEL_16:
  *(v2 + v4) = v3;
}

void FocusBridge.preferencesDidChange(_:)(uint64_t *a1)
{
  v2 = v1;
  v3 = FocusBridge.host.getter();
  if (v3)
  {
    v5 = v3;
    v6 = v4;
    PreferenceValues.subscript.getter();
    v7 = *(v36 + 16);
    if (v7)
    {
      v8 = v36 + 32;

      v9 = 0;
      do
      {
        outlined init with copy of FocusStoreList.Item(v8, &v36);
        v10 = v36;
        outlined destroy of FocusStoreList.Item(&v36);
        if (v10 > v9)
        {
          v9 = v10;
        }

        v8 += 72;
        --v7;
      }

      while (v7);
    }

    else
    {
      v9 = 0;
    }

    swift_beginAccess();
    if (*(v2 + 48) == v9)
    {
    }

    else
    {
      v36 = 0;
      *&v37 = MEMORY[0x1E69E7CC0];
      *(&v37 + 1) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_7SwiftUI12PropertyListVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);

      FocusStore.makeStoreContent(_:)(v11);
      swift_bridgeObjectRelease_n();
      v12 = v37;
      *(v2 + 48) = v36;
      *(v2 + 56) = v12;

      v13 = FocusBridge.host.getter();
      if (v13)
      {
        v14 = v13;
        swift_getObjectType();
        ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
      }
    }

    PreferenceValues.subscript.getter();
    v15 = v36;
    v16 = *(v36 + 16);
    if (v16)
    {
      if (v16 >= 5)
      {
        v19 = *(v36 + 16) & 3;
        if ((v16 & 3) == 0)
        {
          v19 = 4;
        }

        v18 = v16 - v19;
        v20 = (v36 + 96);
        v21 = 0uLL;
        v22 = v18;
        v23 = 0uLL;
        do
        {
          v24 = v20 - 8;
          v25 = vld4q_f64(v24);
          v26 = vld4q_f64(v20);
          v21 = vbslq_s8(vcgtq_s64(v25, v21), v25, v21);
          v23 = vbslq_s8(vcgtq_s64(v26, v23), v26, v23);
          v20 += 16;
          v22 -= 4;
        }

        while (v22);
        v27 = vbslq_s8(vcgtq_s64(v21, v23), v21, v23);
        v28 = vextq_s8(v27, v27, 8uLL).u64[0];
        v17 = vbsl_s8(vcgtd_s64(v27.i64[0], v28), *v27.i8, v28);
      }

      else
      {
        v17 = 0;
        v18 = 0;
      }

      v29 = v16 - v18;
      v30 = (v36 + 32 * v18 + 32);
      do
      {
        v32 = *v30;
        v30 += 4;
        v31 = v32;
        if (*&v32 > *&v17)
        {
          v17 = v31;
        }

        --v29;
      }

      while (v29);
    }

    else
    {
      v17 = 0;
    }

    ObjectType = swift_getObjectType();
    (*(v6 + 24))(&v36, ObjectType, v6);
    v34 = v38;

    if (v34 == *&v17)
    {
    }

    else
    {
      FocusedValues.init(_:)(v15, &v36);
      v35 = *(v6 + 32);

      v35(&v36, ObjectType, v6);
      ViewRendererHost.isRootHost.getter();
    }
  }
}

uint64_t sub_18BD757A0()
{
  outlined consume of Text.Storage(*(v0 + 24), *(v0 + 32), *(v0 + 40));

  if (*(v0 + 80))
  {
    outlined consume of Text.Storage(*(v0 + 56), *(v0 + 64), *(v0 + 72));
  }

  outlined consume of Text.Storage(*(v0 + 96), *(v0 + 104), *(v0 + 112));

  if (*(v0 + 128))
  {
  }

  if (*(v0 + 176))
  {
    outlined consume of Text.Storage(*(v0 + 152), *(v0 + 160), *(v0 + 168));

    if (*(v0 + 184))
    {
    }
  }

  if (*(v0 + 208))
  {
  }

  if (*(v0 + 256))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 232));
  }

  return swift_deallocObject();
}

void type metadata accessor for PreferenceValues.Value<AnyHashable?>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    _ss11AnyHashableVSgMaTm_2(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = type metadata accessor for PreferenceValues.Value();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t initializeWithCopy for PresentationOptionsPreference(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  v4 = (a1 + 8);
  v5 = a2[2];

  if (v5)
  {
    *(a1 + 8) = a2[1];
    *(a1 + 16) = v5;
    *(a1 + 24) = *(a2 + 3);
  }

  else
  {
    v6 = *(a2 + 3);
    *v4 = *(a2 + 1);
    *(a1 + 24) = v6;
  }

  *(a1 + 40) = *(a2 + 20);
  v7 = a2[6];
  if (v7 >= 2)
  {
    if (v7 != 2)
    {
      *(a1 + 48) = v7;
      v8 = v7;
      goto LABEL_9;
    }

    v7 = 2;
  }

  *(a1 + 48) = v7;
LABEL_9:
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 64) = a2[8];
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = a2[10];
  *(a1 + 88) = *(a2 + 88);
  v9 = a2[15];
  if (v9)
  {
    v10 = a2[16];
    *(a1 + 120) = v9;
    *(a1 + 128) = v10;
    (**(v9 - 8))(a1 + 96, a2 + 12);
  }

  else
  {
    v11 = *(a2 + 7);
    *(a1 + 96) = *(a2 + 6);
    *(a1 + 112) = v11;
    *(a1 + 128) = a2[16];
  }

  *(a1 + 136) = *(a2 + 68);
  return a1;
}

_WORD *storeEnumTagSinglePayload for OutlineRootConfiguration(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OutlineRootConfiguration(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
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

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

double protocol witness for static PreferenceKey.defaultValue.getter in conformance Alert.Presentation.Key@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 272) = 0;
  result = 0.0;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t outlined destroy of PreferenceValues.Value<AnyHashable?>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for PreferenceValues.Value<AnyHashable?>(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t storeEnumTagSinglePayload for ActionSheet.Presentation(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
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
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double protocol witness for static PreferenceKey.defaultValue.getter in conformance ActionSheet.Presentation.Key@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 160) = 0;
  result = 0.0;
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
  return result;
}

double protocol witness for ImageProvider.resolveNamedImage(in:) in conformance UIImage@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t storeEnumTagSinglePayload for AccessibilityRelationshipScope.Key(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccessibilityRelationshipScope.Key(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t getEnumTagSinglePayload for SheetPreference.Value(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 107))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 106);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for PresentationOptionsPreference(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 138))
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

uint64_t storeEnumTagSinglePayload for PresentationOptionsPreference(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 138) = 1;
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

    *(result + 138) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t protocol witness for static PreferenceKey.defaultValue.getter in conformance PresentationOptionsPreferenceKey@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
    v2 = a1;
  }

  return outlined init with copy of PresentationOptionsPreference(&static PresentationOptionsPreferenceKey.defaultValue, v2);
}

__n128 __swift_memcpy137_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 121) = *(a2 + 121);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

void destroy for PresentationOptionsPreference(void *a1)
{

  if (a1[2])
  {
  }

  v2 = a1[6];
  if (v2 >= 3)
  {
  }

  if (a1[15])
  {

    __swift_destroy_boxed_opaque_existential_1(a1 + 12);
  }
}

double storeEnumTagSinglePayload for AccessibilityLargeContentViewTree(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 232) = 0;
    result = 0.0;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 240) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 242) = 1;
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
      result = 0.0;
      *(a1 + 160) = 0u;
      *(a1 + 176) = 0u;
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
      *(a1 + 192) = 0;
      *(a1 + 200) = -a2 << 24;
      *(a1 + 208) = 0u;
      *(a1 + 224) = 0u;
      *(a1 + 240) = 0;
      return result;
    }

    *(a1 + 242) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double protocol witness for static PreferenceKey.defaultValue.getter in conformance AccessibilityLargeContentViewTree.Key@<D0>(uint64_t a1@<X8>)
{
  _s7SwiftUI33AccessibilityLargeContentViewTreeOWOi1_(v10);
  v2 = v22;
  *(a1 + 192) = v21;
  *(a1 + 208) = v2;
  *(a1 + 224) = v23;
  *(a1 + 240) = v24;
  v3 = v18;
  *(a1 + 128) = v17;
  *(a1 + 144) = v3;
  v4 = v20;
  *(a1 + 160) = v19;
  *(a1 + 176) = v4;
  v5 = v14;
  *(a1 + 64) = v13;
  *(a1 + 80) = v5;
  v6 = v16;
  *(a1 + 96) = v15;
  *(a1 + 112) = v6;
  v7 = v10[1];
  *a1 = v10[0];
  *(a1 + 16) = v7;
  result = *&v11;
  v9 = v12;
  *(a1 + 32) = v11;
  *(a1 + 48) = v9;
  return result;
}

uint64_t getEnumTagSinglePayload for AccessibilityLargeContentViewTree(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 242))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 203);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

__n128 __swift_memcpy242_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 240) = *(a2 + 120);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t storeEnumTagSinglePayload for SheetPreference.Value(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 91) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 107) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 107) = 0;
    }

    if (a2)
    {
      *(result + 106) = -a2;
    }
  }

  return result;
}

void outlined consume of AccessibilityLargeContentViewTree(uint64_t result, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, unsigned __int16 a31)
{
  v31 = a31 >> 14;
  if (v31 == 1)
  {
  }

  else if (!v31)
  {
    v36 = a4;

    outlined consume of Image.Resolved?(a3, v36, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25);
  }
}

uint64_t storeEnumTagSinglePayload for Alert.Presentation(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 280) = 1;
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

    *(result + 280) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy107_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 91) = *(a2 + 91);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t destroy for SheetPreference.Value(uint64_t result)
{
  v1 = result;
  v2 = *(result + 106);
  if (v2 >= 2)
  {
    v2 = *result + 2;
  }

  if (v2 == 1)
  {

    if (v1[1])
    {
    }

    if (v1[7])
    {
      __swift_destroy_boxed_opaque_existential_1(v1 + 4);
    }
  }

  else if (!v2)
  {
  }

  return result;
}

uint64_t protocol witness for static PreferenceKey.defaultValue.getter in conformance SheetPreference.Key@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  v5 = a2;
  v6 = a4;
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
    v6 = a4;
    v5 = a2;
  }

  return outlined init with copy of SheetPreference.Value(v5, v6);
}

uint64_t initializeWithCopy for SheetPreference.Value(uint64_t a1, uint64_t *a2)
{
  v4 = *(a2 + 106);
  if (v4 >= 2)
  {
    v4 = *a2 + 2;
  }

  if (v4 == 1)
  {
    *a1 = *a2;
    v6 = a2 + 1;
    v5 = a2[1];

    if (v5)
    {
      v7 = a2[2];
      *(a1 + 8) = v5;
      *(a1 + 16) = v7;
    }

    else
    {
      *(a1 + 8) = *v6;
    }

    *(a1 + 24) = a2[3];
    v11 = a2[7];
    if (v11)
    {
      v12 = a2[8];
      *(a1 + 56) = v11;
      *(a1 + 64) = v12;
      (**(v11 - 8))(a1 + 32, a2 + 4);
    }

    else
    {
      v13 = *(a2 + 3);
      *(a1 + 32) = *(a2 + 2);
      *(a1 + 48) = v13;
      *(a1 + 64) = a2[8];
    }

    *(a1 + 72) = *(a2 + 36);
    v14 = a2[11];
    *(a1 + 80) = a2[10];
    *(a1 + 88) = v14;
    *(a1 + 96) = a2[12];
    *(a1 + 104) = *(a2 + 52);
    *(a1 + 106) = 1;
  }

  else if (v4)
  {
    v8 = *(a2 + 5);
    *(a1 + 64) = *(a2 + 4);
    *(a1 + 80) = v8;
    *(a1 + 91) = *(a2 + 91);
    v9 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 16) = v9;
    v10 = *(a2 + 3);
    *(a1 + 32) = *(a2 + 2);
    *(a1 + 48) = v10;
  }

  else
  {
    *a1 = *a2;
    *(a1 + 106) = 0;
  }

  return a1;
}

uint64_t specialized SheetBridge.preferencesDidChange(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void (*a11)(void *))
{
  v13 = v11;
  *&v116 = a1;
  PreferenceValues.subscript.getter();
  if (*(v11 + direct field offset for SheetBridge.lastEnvironment + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<InheritedColorSeedKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ContainerBackgroundKeys.TransparentPresentation>, &type metadata for ContainerBackgroundKeys.TransparentPresentation, &protocol witness table for ContainerBackgroundKeys.TransparentPresentation, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ContainerBackgroundKeys.TransparentPresentation> and conformance EnvironmentPropertyKey<A>();

    swift_retain_n();
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<InheritedColorSeedKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ContainerBackgroundKeys.TransparentPresentation>, &type metadata for ContainerBackgroundKeys.TransparentPresentation, &protocol witness table for ContainerBackgroundKeys.TransparentPresentation, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ContainerBackgroundKeys.TransparentPresentation> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.getter();
  }

  if (v116)
  {
    v15 = 0;
  }

  else
  {
    *&v116 = a1;
    PreferenceValues.subscript.getter();
    v15 = v103;
  }

  *&v116 = a1;
  PreferenceValues.subscript.getter();
  v16 = direct field offset for SheetBridge.interactiveDismissHandlerSeed;
  swift_beginAccess();
  *&v123[0] = a1;
  PreferenceValues.subscript.getter();
  v17 = *(v11 + v16);
  if (v17 == -1 || v104 == -1 || v17 != v104)
  {
    *(v11 + v16) = v104;
    v18 = v103;
    if (v103)
    {
      v19 = *(&v103 + 1);
    }

    else
    {
      v19 = 0;
    }

    v20 = (v11 + direct field offset for SheetBridge.interactiveDismissHandler);
    v21 = *(v11 + direct field offset for SheetBridge.interactiveDismissHandler);
    v22 = *(v11 + direct field offset for SheetBridge.interactiveDismissHandler + 8);
    *v20 = v103;
    v20[1] = v19;
    outlined copy of AppIntentExecutor?(v18, *(&v18 + 1));
    outlined copy of AppIntentExecutor?(v18, *(&v18 + 1));
    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v21, v22);
    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v18, *(&v18 + 1));
  }

  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v103, *(&v103 + 1));
  swift_endAccess();
  v23 = v11 + direct field offset for SheetBridge.host;
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    __break(1u);
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  v25 = *(v23 + 1);
  ObjectType = swift_getObjectType();
  v27 = ViewGraphDelegate.uiViewController.getter(ObjectType, *(*(v25 + 16) + 8));
  swift_unknownObjectRelease();
  if (v27)
  {
    type metadata accessor for EnvironmentPropertyKey<InheritedColorSeedKey>(0, &lazy cache variable for type metadata for PresentationHostingController<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for PresentationHostingController);
    v28 = swift_dynamicCastClass();
    if (!v28)
    {
LABEL_28:

      goto LABEL_29;
    }

    v29 = *(v28 + direct field offset for PresentationHostingController.presentingBridgeKind);

    if (!v29)
    {
      result = swift_unknownObjectWeakLoadStrong();
      if (!result)
      {
LABEL_98:
        __break(1u);
        goto LABEL_99;
      }

      v30 = *(v23 + 1);
      v31 = swift_getObjectType();
      v27 = ViewGraphDelegate.uiViewController.getter(v31, *(*(v30 + 16) + 8));
      swift_unknownObjectRelease();
      if (v27)
      {
        v32 = swift_dynamicCastClass();
        if (v32)
        {
          v33 = v32;
          v98 = a7;
          v34 = direct field offset for SheetBridge.remotePresentationDelayTracker;
          swift_beginAccess();
          *&v123[0] = a1;
          PreferenceValues.subscript.getter();
          v35 = *(v13 + v34);
          if (v35 == -1 || DWORD1(v103) == -1 || v35 != DWORD1(v103))
          {
            *(v13 + v34) = DWORD1(v103);
            v36 = direct field offset for PresentationHostingController.isDelayingRemotePresentation;
            if (*(v33 + direct field offset for PresentationHostingController.isDelayingRemotePresentation) == 1 && (v103 & 1) == 0)
            {
              [v33 _endDelayingPresentation];
              *(v33 + v36) = 0;
            }
          }

          swift_endAccess();
          a7 = v98;
        }

        goto LABEL_28;
      }
    }
  }

LABEL_29:
  v37 = *(v13 + direct field offset for SheetBridge.seed);
  if (v37 != -1 && v128 != -1 && v37 == v128)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v38 = *(v23 + 1);
      v39 = swift_getObjectType();
      v40 = ViewGraphDelegate.uiViewController.getter(v39, *(*(v38 + 16) + 8));
      swift_unknownObjectRelease();
      if (!v40)
      {
        goto LABEL_91;
      }

      type metadata accessor for EnvironmentPropertyKey<InheritedColorSeedKey>(0, &lazy cache variable for type metadata for PresentationHostingController<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for PresentationHostingController);
      v41 = swift_dynamicCastClass();
      if (!v41)
      {

        goto LABEL_91;
      }

      v42 = *(v41 + direct field offset for PresentationHostingController.presentingBridgeKind);

      if (v42)
      {
LABEL_91:
        v95 = &lazy cache variable for type metadata for PreferenceValues.Value<SheetPreference.Value>;
        v96 = &type metadata for SheetPreference.Value;
        v97 = MEMORY[0x1E697EA38];
        v82 = v127;
        goto LABEL_92;
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
LABEL_39:
        v46 = swift_dynamicCastClass();
        if (v46)
        {
          v47 = v46;
          MEMORY[0x1EEE9AC00](v46);
          swift_beginAccess();
          specialized VersionSeedTracker.didChange(_:action:)(a1, a11);
          swift_endAccess();
          v48 = direct field offset for SheetBridge.backgroundTracker;
          swift_beginAccess();
          *&v123[0] = a1;
          PreferenceValues.subscript.getter();
          v49 = *(v13 + v48);
          if (v49 == -1 || DWORD1(v103) == -1 || v49 != DWORD1(v103))
          {
            *(v13 + v48) = DWORD1(v103);
            specialized PresentationHostingController.setBackgroundTransparency(preferenceValue:)(v15);
          }

          swift_endAccess();
          v50 = direct field offset for SheetBridge.interactiveDismissTracker;
          swift_beginAccess();
          *&v123[0] = a1;
          PreferenceValues.subscript.getter();
          v51 = *(v13 + v50);
          if (v51 == -1 || DWORD1(v103) == -1 || v51 != DWORD1(v103))
          {
            *(v13 + v50) = DWORD1(v103);
            specialized PresentationHostingController.updateFullScreenInteractiveDismissIfNeeded(disabled:)(v103);
          }

          swift_endAccess();
          *&v116 = a1;
          PreferenceValues.subscript.getter();
          _ss11AnyHashableVSgWOhTm_1(v127, &lazy cache variable for type metadata for PreferenceValues.Value<SheetPreference.Value>, &type metadata for SheetPreference.Value, MEMORY[0x1E697EA38]);
          *(v47 + direct field offset for PresentationHostingController.lastInteractiveDismissDisabled) = v103;

          return _ss11AnyHashableVSgWOhTm_1(&v126, &lazy cache variable for type metadata for PreferenceValues.Value<PresentationOptionsPreference>, &type metadata for PresentationOptionsPreference, MEMORY[0x1E697EA38]);
        }

        goto LABEL_91;
      }

      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v44 = *(v23 + 1);
        v45 = swift_getObjectType();
        Strong = ViewGraphDelegate.uiPresenterViewController.getter(v45, *(*(v44 + 16) + 8));
        swift_unknownObjectRelease();
        if (Strong)
        {
          goto LABEL_39;
        }

        goto LABEL_91;
      }

      goto LABEL_100;
    }

    goto LABEL_96;
  }

  *(v13 + direct field offset for SheetBridge.seed) = v128;
  outlined init with copy of SheetPreference.Value(v127, &v116);
  if (BYTE10(v121[1]))
  {
    if (BYTE10(v121[1]) == 1)
    {
      v52 = v116;
      v53 = v117;
      v54 = v118;
      v55 = v119;
      v56 = v120;
      v57 = v121[0];
      v58 = *&v121[1];
      v59 = WORD4(v121[1]);
      goto LABEL_54;
    }
  }

  else
  {
    outlined destroy of SheetPreference.Value(&v116);
  }

  v59 = 0;
  v58 = 0;
  v52 = 0uLL;
  v53 = 0uLL;
  v54 = 0uLL;
  v55 = 0uLL;
  v56 = 0uLL;
  v57 = 0uLL;
LABEL_54:
  v123[0] = v52;
  v123[1] = v53;
  v123[2] = v54;
  v123[3] = v55;
  v123[4] = v56;
  v123[5] = v57;
  v124 = v58;
  v125 = v59;
  outlined init with copy of AnyShareConfiguration?(v123, &v103, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
  v99 = a7;
  if (v103)
  {
    v120 = v107;
    v121[0] = v108[0];
    *(v121 + 10) = *(v108 + 10);
    v116 = v103;
    v117 = v104;
    v118 = v105;
    v119 = v106;
    v60 = *&v108[0];

    outlined destroy of SheetPreference(&v116);
  }

  else
  {
    _ss11AnyHashableVSgWOhTm_1(&v103, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference, MEMORY[0x1E69E6720]);
    v61 = direct field offset for SheetBridge.presentationState;
    swift_beginAccess();
    outlined init with copy of PresentationState(v13 + v61, &v116);
    v62 = PresentationState.presentingViewID.getter();
    LOBYTE(v61) = v63;
    outlined destroy of PresentationState(&v116);
    if (v61)
    {
      v60 = 1;
    }

    else
    {
      v60 = SheetPreference.Value.dismissalTransaction(for:)(v62);
      outlined copy of Transaction?(v60);
    }
  }

  v64 = direct field offset for SheetBridge.presentationState;
  swift_beginAccess();
  outlined init with copy of PresentationState(v13 + v64, &v116);
  v65 = PresentationState.presentingViewID.getter();
  v67 = v66;
  outlined destroy of PresentationState(&v116);
  if ((v67 & 1) != 0 || (v68 = SheetPreference.Value.viewIDs.getter(), v69 = specialized Set.contains(_:)(v65, v68), , (v69 & 1) == 0))
  {
    v70 = 1;
    if (v60 != 1)
    {
      goto LABEL_63;
    }
  }

  else
  {
    v70 = 0;
    if (v60 != 1)
    {
LABEL_63:
      v71 = Transaction.disablesAnimations.getter();
      outlined consume of ListItemTint?(v60);
      v72 = v71 ^ 1;
      goto LABEL_66;
    }
  }

  v72 = 0;
LABEL_66:
  swift_beginAccess();
  v100 = v72;
  PresentationState.presentationDidChange(_:animated:hasNoModifier:)(v123, v72 & 1, v70);
  swift_endAccess();
  outlined init with copy of PresentationState(v13 + v64, &v116);
  v114 = v121[7];
  v115[0] = v122[0];
  *(v115 + 11) = *(v122 + 11);
  v110 = v121[3];
  v111 = v121[4];
  v112 = v121[5];
  v113 = v121[6];
  v107 = v120;
  v108[0] = v121[0];
  v108[1] = v121[1];
  v109 = v121[2];
  v103 = v116;
  v104 = v117;
  v105 = v118;
  v106 = v119;
  if (BYTE10(v122[1]) >= 2u)
  {
    outlined destroy of PresentationState.Base(&v103);
    v74 = swift_unknownObjectWeakLoadStrong();
    if (!v74)
    {
      result = swift_unknownObjectWeakLoadStrong();
      if (!result)
      {
LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
        goto LABEL_101;
      }

      v75 = *(v23 + 1);
      v76 = swift_getObjectType();
      v74 = ViewGraphDelegate.uiPresenterViewController.getter(v76, *(*(v75 + 16) + 8));
      swift_unknownObjectRelease();
      if (!v74)
      {
        outlined consume of ListItemTint?(v60);
        goto LABEL_90;
      }
    }

    outlined init with copy of AnyShareConfiguration?(v123, &v103, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
    if (v103)
    {
      v120 = v107;
      v121[0] = v108[0];
      *(v121 + 10) = *(v108 + 10);
      v77 = *MEMORY[0x1E69E7D40] & *v13;
      v116 = v103;
      v117 = v104;
      v118 = v105;
      v119 = v106;
      (*(v77 + 592))(&v116, v74, v72 & 1);

      outlined consume of ListItemTint?(v60);
      outlined destroy of SheetPreference(&v116);
LABEL_90:
      _ss11AnyHashableVSgWOhTm_1(v123, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference, MEMORY[0x1E69E6720]);
      goto LABEL_91;
    }

    outlined consume of ListItemTint?(v60);
    v81 = MEMORY[0x1E69E6720];
    _ss11AnyHashableVSgWOhTm_1(v123, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference, MEMORY[0x1E69E6720]);
    _ss11AnyHashableVSgWOhTm_1(v127, &lazy cache variable for type metadata for PreferenceValues.Value<SheetPreference.Value>, &type metadata for SheetPreference.Value, MEMORY[0x1E697EA38]);
    v82 = &v103;
LABEL_88:
    v95 = &lazy cache variable for type metadata for SheetPreference?;
    v96 = &type metadata for SheetPreference;
    v97 = v81;
LABEL_92:
    _ss11AnyHashableVSgWOhTm_1(v82, v95, v96, v97);
    return _ss11AnyHashableVSgWOhTm_1(&v126, &lazy cache variable for type metadata for PreferenceValues.Value<PresentationOptionsPreference>, &type metadata for PresentationOptionsPreference, MEMORY[0x1E697EA38]);
  }

  outlined destroy of SheetPreference(&v103);
  outlined init with copy of PresentationState(v13 + v64, &v116);
  v73 = PresentationState.Base.presentedVC.getter();
  result = outlined destroy of PresentationState(&v116);
  if (!v73)
  {
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  outlined init with copy of AnyShareConfiguration?(v123, &v116, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
  if (!v116)
  {
    _ss11AnyHashableVSgWOhTm_1(&v116, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference, MEMORY[0x1E69E6720]);
    goto LABEL_77;
  }

  v107 = v120;
  v108[0] = v121[0];
  *(v108 + 10) = *(v121 + 10);
  v103 = v116;
  v104 = v117;
  v105 = v118;
  v106 = v119;
  if (v60 == 1)
  {
    outlined destroy of SheetPreference(&v103);
LABEL_77:
    swift_beginAccess();
    PresentationState.dismiss(willPresentAgain:hasNoModifier:)(0, v70);
    swift_endAccess();
    if (v70)
    {
      v73[direct field offset for PresentationHostingController.didPresenterLoseModifierRecursively] = 1;
    }

    v78 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v79 = swift_allocObject();
    *(v79 + 16) = v73;
    *(v79 + 24) = v100 & 1;
    *(v79 + 32) = v78;
    v80 = v73;

    onNextMainRunLoop(do:)();

    outlined consume of ListItemTint?(v60);

    _ss11AnyHashableVSgWOhTm_1(v123, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference, MEMORY[0x1E69E6720]);
    _ss11AnyHashableVSgWOhTm_1(v127, &lazy cache variable for type metadata for PreferenceValues.Value<SheetPreference.Value>, &type metadata for SheetPreference.Value, MEMORY[0x1E697EA38]);

    return _ss11AnyHashableVSgWOhTm_1(&v126, &lazy cache variable for type metadata for PreferenceValues.Value<PresentationOptionsPreference>, &type metadata for PresentationOptionsPreference, MEMORY[0x1E697EA38]);
  }

  outlined init with copy of PresentationState(v13 + v64, &v116);
  outlined init with copy of SheetPreference(&v103, v101);
  v83 = PresentationState.hasIdentityMatching(_:)(v101);
  _ss11AnyHashableVSgWOhTm_1(v101, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference, MEMORY[0x1E69E6720]);
  outlined destroy of PresentationState(&v116);
  if (v83)
  {
    (*((*MEMORY[0x1E69E7D40] & *v13) + 0x248))(&v103, v73, v60);
LABEL_83:
    outlined consume of ListItemTint?(v60);

    outlined destroy of SheetPreference(&v103);
    goto LABEL_90;
  }

  v84 = swift_unknownObjectWeakLoadStrong();
  if (v84)
  {
LABEL_87:
    outlined init with copy of SheetPreference(&v103, &v116);
    swift_beginAccess();
    PresentationState.dismiss(willPresentAgain:hasNoModifier:)(1, 1);
    swift_endAccess();
    v73[direct field offset for PresentationHostingController.didPresenterLoseModifierRecursively] = 1;
    v87 = swift_allocObject();
    swift_unknownObjectWeakInit();
    outlined init with copy of AnyShareConfiguration?(&v116, v101, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
    v88 = swift_allocObject();
    v89 = v101[2];
    *(v88 + 72) = v101[3];
    v90 = v102[0];
    *(v88 + 88) = v101[4];
    *(v88 + 104) = v90;
    *(v88 + 114) = *(v102 + 10);
    v91 = v101[1];
    *(v88 + 24) = v101[0];
    *(v88 + 40) = v91;
    *(v88 + 16) = v87;
    *(v88 + 56) = v89;
    *(v88 + 136) = v73;
    *(v88 + 144) = v84;
    *(v88 + 152) = v100 & 1;
    LOBYTE(v101[0]) = 17;
    v92 = swift_allocObject();
    *(v92 + 16) = v73;
    *(v92 + 24) = v99;
    *(v92 + 32) = v88;
    *(v92 + 40) = v100 & 1;
    v93 = v73;
    v94 = v84;

    static Update.enqueueAction(reason:_:)();
    outlined consume of ListItemTint?(v60);

    outlined destroy of SheetPreference(&v103);
    v81 = MEMORY[0x1E69E6720];
    _ss11AnyHashableVSgWOhTm_1(v123, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference, MEMORY[0x1E69E6720]);
    _ss11AnyHashableVSgWOhTm_1(v127, &lazy cache variable for type metadata for PreferenceValues.Value<SheetPreference.Value>, &type metadata for SheetPreference.Value, MEMORY[0x1E697EA38]);
    v82 = &v116;
    goto LABEL_88;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v85 = *(v23 + 1);
    v86 = swift_getObjectType();
    v84 = ViewGraphDelegate.uiPresenterViewController.getter(v86, *(*(v85 + 16) + 8));
    swift_unknownObjectRelease();
    if (!v84)
    {
      goto LABEL_83;
    }

    goto LABEL_87;
  }

LABEL_101:
  __break(1u);
  return result;
}

void outlined consume of EditMenuPresentation?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a4)
  {
  }
}

void EditMenuBridge.preferencesDidChange(_:)(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v41 = *a1;
  PreferenceValues.subscript.getter();
  v4 = v34;
  v5 = v35;
  v7 = v36;
  v6 = v37;
  if (v40 != -1 && v40 == *(v1 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_editMenuPresentationSeed))
  {
    outlined consume of EditMenuPresentation?(v34, v35, v36, v37, v38, v39);
    return;
  }

  v32 = OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_editMenuPresentationSeed;
  v33 = v40;
  v8 = v1 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_host;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    __break(1u);
    goto LABEL_29;
  }

  v9 = *(v8 + 8);
  ObjectType = swift_getObjectType();
  v11 = ViewGraphDelegate.shouldCreateUIInteractions.getter(ObjectType, *(*(v9 + 16) + 8));
  swift_unknownObjectRelease();
  if (v11)
  {
    v13 = v39;
    v12 = v38;
    if (!v37)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v13 = v39;
    v12 = v38;
    if (!v37)
    {
      goto LABEL_14;
    }

    if (!v35)
    {
      v34 = v3;
      PreferenceValues.subscript.getter();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v30 = Strong;
        if (v41)
        {
          v31 = [objc_allocWithZone(MEMORY[0x1E69DC9E0]) initWithDelegate_];
          [v30 swiftui:v31 addManagedInteraction:?];
          outlined consume of EditMenuPresentation?(v4, 0, v36, v37, v38, v39);
        }

        else
        {
          outlined consume of EditMenuPresentation?(v4, 0, v36, v37, v38, v39);
        }

        goto LABEL_21;
      }

      v14 = v4;
      v15 = 0;
      goto LABEL_12;
    }
  }

  v34 = v36;
  v35 = v37;
  LOBYTE(v36) = v12 & 1;
  outlined copy of EditMenuPresentation?(v4, v5, v7, v37, v12, v13);
  type metadata accessor for PlatformItemList?(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](&v41);
  if (v41 == 1)
  {
    LODWORD(v34) = v4;
    v35 = v5;
    v36 = v7;
    LOBYTE(v38) = v12 & 1;
    v39 = v13;
    EditMenuBridge.presentMenu(_:)(&v34);
    outlined consume of EditMenuPresentation?(v4, v5, v7, v6, v12, v13);
    v14 = v4;
    v15 = v5;
LABEL_12:
    v16 = v7;
    v17 = v6;
    v18 = v12;
LABEL_20:
    outlined consume of EditMenuPresentation?(v14, v15, v16, v17, v18, v13);
LABEL_21:
    *(v2 + v32) = v33;
    return;
  }

  outlined consume of EditMenuPresentation?(v4, v5, v7, v37, v12, v13);
LABEL_14:
  v19 = OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_interaction;
  v20 = *(v1 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_interaction);
  if (!v20 || ([v20 dismissMenu], (v21 = *(v1 + v19)) == 0))
  {
    v14 = v4;
    v15 = v5;
    v16 = v7;
    v17 = v37;
    v18 = v38;
    goto LABEL_20;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v22 = *(v8 + 8);
    v23 = swift_getObjectType();
    v24 = *(*(v22 + 16) + 8);
    v25 = v21;
    v26 = ViewGraphDelegate.uiView.getter(v23, v24);
    swift_unknownObjectRelease();
    if (v26)
    {
      v27 = v25;
      [v26 removeInteraction_];
      outlined consume of EditMenuPresentation?(v4, v5, v7, v37, v38, v39);

      v28 = *(v2 + v19);
      *(v2 + v19) = 0;
    }

    else
    {
      outlined consume of EditMenuPresentation?(v4, v5, v7, v37, v38, v39);
    }

    goto LABEL_21;
  }

LABEL_29:
  __break(1u);
}

void *AVKitCaptureButtonBridge.preferencesDidChange(_:)(void *a1)
{
  v2 = v1;
  result = PreferenceValues.seed.getter();
  if (v12)
  {
    v4 = OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_seedTracker;
    swift_beginAccess();
    PreferenceValues.subscript.getter();
    v5 = *(v1 + v4);
    if (v5 == -1 || v14 == -1 || v5 != v14)
    {
      *(v1 + v4) = v14;
      if (v12)
      {
        v8 = swift_allocObject();
        *(v8 + 16) = v12;
        *(v8 + 24) = v13;
        v9 = (v1 + OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_dispatch);
        v10 = *(v1 + OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_dispatch);
        v11 = *(v2 + OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_dispatch + 8);
        *v9 = _s7SwiftUI27AVKitPressableCaptureButtonVAC5PhaseOytIegnnr_AcEIegnn_TRTA_0;
        v9[1] = v8;
        outlined copy of AppIntentExecutor?(v12, v13);
        outlined copy of AppIntentExecutor?(v12, v13);

        outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v10, v11);
        if (!*(v2 + OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_interaction))
        {
          AVKitCaptureButtonBridge.attachInteraction()();
        }

        outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v12, v13);
      }

      else
      {
        AVKitCaptureButtonBridge.removeInteraction()();
      }
    }

    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v12, v13);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_18BD77E5C()
{

  return swift_deallocObject();
}

void PencilEventsBridge.updateState(wantsPencilEvents:)(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 1);
  v5 = OBJC_IVAR____TtC7SwiftUI18PencilEventsBridge_wantsPencilEventsSeed;
  if (v4 == -1 || v4 != *(v1 + OBJC_IVAR____TtC7SwiftUI18PencilEventsBridge_wantsPencilEventsSeed))
  {
    v6 = v1 + OBJC_IVAR____TtC7SwiftUI18PencilEventsBridge_host;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = *(v6 + 8);
      ObjectType = swift_getObjectType();
      v9 = ViewGraphDelegate.uiView.getter(ObjectType, *(*(v7 + 16) + 8));
      swift_unknownObjectRelease();
      if (v9)
      {
        v10 = OBJC_IVAR____TtC7SwiftUI18PencilEventsBridge_pencilInteraction;
        v11 = *(v2 + OBJC_IVAR____TtC7SwiftUI18PencilEventsBridge_pencilInteraction);
        if (v3)
        {
          if (!v11)
          {
            v12 = [objc_allocWithZone(MEMORY[0x1E69DCD58]) init];
            [v12 setDelegate_];
            [v9 swiftui:v12 addManagedInteraction:?];
            v13 = *(v2 + v10);
            *(v2 + v10) = v12;
            v14 = v12;

            type metadata accessor for UIPencilInteraction();
            ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
            v16 = MEMORY[0x18D00C850](0xD000000000000012, 0x800000018CD42D60);
            [ObjCClassFromMetadata addObserver:v2 forKeyPath:v16 options:3 context:v2 + OBJC_IVAR____TtC7SwiftUI18PencilEventsBridge_preferredTapActionContext];

            v17 = MEMORY[0x18D00C850](0xD000000000000016, 0x800000018CD42D80);
            [ObjCClassFromMetadata addObserver:v2 forKeyPath:v17 options:3 context:v2 + OBJC_IVAR____TtC7SwiftUI18PencilEventsBridge_preferredSqueezeActionContext];
LABEL_10:

LABEL_12:
            *(v2 + v5) = v4;
            return;
          }
        }

        else if (v11)
        {
          v14 = v11;
          [v9 removeInteraction_];
          v18 = *(v2 + v10);
          *(v2 + v10) = 0;

          type metadata accessor for UIPencilInteraction();
          v19 = swift_getObjCClassFromMetadata();
          v20 = MEMORY[0x18D00C850](0xD000000000000012, 0x800000018CD42D60);
          [v19 removeObserver:v2 forKeyPath:v20 context:v2 + OBJC_IVAR____TtC7SwiftUI18PencilEventsBridge_preferredTapActionContext];

          v17 = MEMORY[0x18D00C850](0xD000000000000016, 0x800000018CD42D80);
          [v19 removeObserver:v2 forKeyPath:v17 context:v2 + OBJC_IVAR____TtC7SwiftUI18PencilEventsBridge_preferredSqueezeActionContext];
          goto LABEL_10;
        }

        v17 = v9;
        goto LABEL_12;
      }
    }
  }
}

uint64_t one-time initialization function for defaultValue(uint64_t a1)
{
  return one-time initialization function for defaultValue(a1, &static SheetPreference.Key.defaultValue);
}

{
  return one-time initialization function for defaultValue(a1, &static SheetPreference.InspectorKey.defaultValue);
}

{
  return one-time initialization function for defaultValue(a1, static SearchKey.defaultValue);
}

{
  return one-time initialization function for defaultValue(a1, static NavigationPropertiesKey.defaultValue);
}

{
  return one-time initialization function for defaultValue(a1, static SearchContentKey.defaultValue);
}

{
  return one-time initialization function for defaultValue(a1, static NavigationPropertiesContentKey.defaultValue);
}

{
  return one-time initialization function for defaultValue(a1, type metadata accessor for URL?, static EnvironmentValues.FileDialogDefaultDirectoryKey.defaultValue, MEMORY[0x1E6968FB0]);
}

{
  return one-time initialization function for defaultValue(a1, type metadata accessor for Predicate<Pack{URL}>?, static EnvironmentValues.FileDialogURLEnabledKey.defaultValue, type metadata accessor for Predicate<Pack{URL}>);
}

{
  return one-time initialization function for defaultValue(a1, type metadata accessor for WidgetAuxiliaryViewMetadata?, static WidgetAuxiliaryViewMetadata.Key.defaultValue, type metadata accessor for WidgetAuxiliaryViewMetadata);
}

{
  return one-time initialization function for defaultValue(a1, type metadata accessor for URL?, static WidgetAuxiliaryURLPreferenceKey.defaultValue, MEMORY[0x1E6968FB0]);
}

double one-time initialization function for defaultValue()
{
  result = 0.0;
  unk_1ED5A762A = 0u;
  xmmword_1ED5A7610 = 0u;
  unk_1ED5A7620 = 0u;
  xmmword_1ED5A75F0 = 0u;
  unk_1ED5A7600 = 0u;
  static SheetPreference.defaultValue = 0u;
  unk_1ED5A75E0 = 0u;
  byte_1ED5A763A = 2;
  return result;
}

{
  static PresentationOptionsPreferenceKey.defaultValue = MEMORY[0x1E69E7CD0];
  result = 0.0;
  unk_1ED5A7648 = 0u;
  unk_1ED5A7658 = 0u;
  word_1ED5A7668 = 1542;
  qword_1ED5A7670 = 2;
  word_1ED5A7678 = 3;
  byte_1ED5A767A = 0;
  qword_1ED5A7680 = 0;
  byte_1ED5A7688 = 1;
  qword_1ED5A7690 = 0;
  byte_1ED5A7698 = 1;
  xmmword_1ED5A76A0 = 0u;
  unk_1ED5A76B0 = 0u;
  unk_1ED5A76B9 = 0u;
  byte_1ED5A76C9 = 2;
  return result;
}

{
  result = 0.0;
  *&algn_1ED5A74F0[9] = 0u;
  static ToolbarKey.defaultValue = 0u;
  *algn_1ED5A74F0 = 0u;
  qword_1ED5A7510 = MEMORY[0x1E69E7CC0];
  byte_1ED5A7518 = 1;
  qword_1ED5A7520 = MEMORY[0x1E69E7CD0];
  return result;
}

{
  dword_1EAA12E58 = 0;
  result = 0.0;
  static PPTTestCaseEnvironmentKey.defaultValue = 0u;
  unk_1EAA12E48 = 0u;
  return result;
}

{
  static EnvironmentValues.WindowToolbarConfigurationKey.defaultValue = 773;
  result = 0.0;
  *&qword_1ED576448 = xmmword_18CDE1060;
  byte_1ED576458 = -4;
  return result;
}

{
  result = 0.0;
  xmmword_1EAA05C68 = 0u;
  unk_1EAA05C78 = 0u;
  xmmword_1EAA05C48 = 0u;
  unk_1EAA05C58 = 0u;
  static SearchFocusContextKey.defaultValue = 0u;
  return result;
}

{
  result = 0.0;
  unk_1EAB09AA9 = 0u;
  static ToolbarContentKey.defaultValue = 0u;
  unk_1EAB09AA0 = 0u;
  qword_1EAB09AC0 = MEMORY[0x1E69E7CC0];
  byte_1EAB09AC8 = 1;
  qword_1EAB09AD0 = MEMORY[0x1E69E7CD0];
  return result;
}

{
  static NavigationTransitionKey.defaultValue = 0u;
  unk_1EAB09908 = 0u;
  *&result = 1;
  xmmword_1EAB09918 = xmmword_18CD6A6D0;
  return result;
}

{
  qword_1ED5A7258 = 0;
  result = 0.0;
  xmmword_1ED5A7238 = 0u;
  unk_1ED5A7248 = 0u;
  xmmword_1ED5A7218 = 0u;
  unk_1ED5A7228 = 0u;
  xmmword_1ED5A71F8 = 0u;
  unk_1ED5A7208 = 0u;
  xmmword_1ED5A71D8 = 0u;
  unk_1ED5A71E8 = 0u;
  xmmword_1ED5A71B8 = 0u;
  unk_1ED5A71C8 = 0u;
  xmmword_1ED5A7198 = 0u;
  unk_1ED5A71A8 = 0u;
  xmmword_1ED5A7178 = 0u;
  unk_1ED5A7188 = 0u;
  xmmword_1ED5A7158 = 0u;
  unk_1ED5A7168 = 0u;
  static AccessibilityAttachment.Key.defaultValue = 0u;
  unk_1ED5A7148 = 0u;
  byte_1ED5A7260 = 2;
  return result;
}

{
  v0 = type metadata accessor for UIListContentConfiguration();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v11 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for CellConfiguration(0);
  __swift_allocate_value_buffer(v3, static CellConfigurationKey.defaultValue);
  v4 = __swift_project_value_buffer(v3, static CellConfigurationKey.defaultValue);
  v5 = type metadata accessor for UICellConfigurationState();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 1, 1, v5);
  *(v4 + v3[7]) = 2;
  outlined destroy of UICellConfigurationState?(v4, &lazy cache variable for type metadata for UICellConfigurationState?, MEMORY[0x1E69DC0B8]);
  v6(v4, 1, 1, v5);
  *(v4 + v3[5]) = 0;
  static UIListContentConfiguration.cell()();
  specialized CellConfiguration.Values.init(_:)(v2, v11);
  v7 = (v4 + v3[9]);
  v8 = v11[1];
  *v7 = v11[0];
  v7[1] = v8;
  result = *&v12;
  v10 = v13;
  v7[2] = v12;
  v7[3] = v10;
  *(v4 + v3[6]) = 0;
  *(v4 + v3[8]) = 0;
  return result;
}

{
  result = 0.0;
  xmmword_1EAB09BC0 = 0u;
  unk_1EAB09BD0 = 0u;
  static DropOntoTraitKey.defaultValue = 0u;
  return result;
}

{
  qword_1EA9FB1D8 = 0;
  result = 0.0;
  static ToolbarItemPlacementKey.defaultValue = 0u;
  unk_1EA9FB1C8 = 0u;
  byte_1EA9FB1E0 = 2;
  return result;
}

{
  if (one-time initialization token for defaultGridCellMinWidth != -1)
  {
    swift_once();
  }

  result = *&static ClarityUIMetrics.defaultGridCellMinWidth;
  static DefaultGridCellMinWidthEnvironmentKey.defaultValue = static ClarityUIMetrics.defaultGridCellMinWidth;
  return result;
}

{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  static SegmentedControlStyleKey.defaultValue = static AnySegmentedControlStyle.default;

  return result;
}

{
  qword_1EAA04278 = 0;
  result = 0.0;
  static SearchFieldToolbarItemPlacementKey.defaultValue = 0u;
  unk_1EAA04268 = 0u;
  byte_1EAA04280 = -1;
  return result;
}

{
  result = 0.0;
  xmmword_1EAA34AA0 = 0u;
  unk_1EAA34AB0 = 0u;
  xmmword_1EAA34A80 = 0u;
  unk_1EAA34A90 = 0u;
  static ControlGroupCollapsedViewKey.defaultValue = 0u;
  *algn_1EAA34A70 = 0u;
  return result;
}

{
  qword_1EAA36110 = 0;
  result = 0.0;
  xmmword_1EAA360F0 = 0u;
  unk_1EAA36100 = 0u;
  xmmword_1EAA360D0 = 0u;
  unk_1EAA360E0 = 0u;
  xmmword_1EAA360B0 = 0u;
  unk_1EAA360C0 = 0u;
  xmmword_1EAA36090 = 0u;
  unk_1EAA360A0 = 0u;
  static _IdentifiedViewsKey.defaultValue = 0u;
  unk_1EAA36080 = 0u;
  byte_1EAA36118 = 2;
  return result;
}

{
  qword_1EAA37698 = 0;
  result = 0.0;
  static TextInputValidationKey.defaultValue = 0u;
  unk_1EAA37688 = 0u;
  return result;
}

{
  result = 0.0;
  xmmword_1EAA38EE8 = 0u;
  unk_1EAA38EF8 = 0u;
  xmmword_1EAA38EC8 = 0u;
  unk_1EAA38ED8 = 0u;
  static EnvironmentValues.ToolbarUpdateContextKey.defaultValue = 0u;
  unk_1EAA38EB8 = 0u;
  return result;
}

{
  v0 = type metadata accessor for UIListContentConfiguration();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  word_1EAA3A060 = 0;
  LOWORD(static HeaderFooterConfigurationKey.defaultValue) = 0;
  *(&static HeaderFooterConfigurationKey.defaultValue + 1) = 0;
  static UIListContentConfiguration.header()();
  specialized HeaderFooterConfiguration.Values.init(_:)(v2, v4);
  *&algn_1EAA3A062[6] = v4[0];
  *(&xmmword_1EAA3A070 + 8) = v4[1];
  result = *&v5;
  unk_1EAA3A088 = v5;
  return result;
}

{
  result = 0.0;
  static FocusDelegation.Key.defaultValue = 0u;
  unk_1EAB09F98 = 0u;
  xmmword_1EAB09FA8 = 0u;
  unk_1EAB09FB8 = xmmword_18CD6A6D0;
  return result;
}

uint64_t one-time initialization function for defaultValue(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v4 = a2;
    swift_once();
    a2 = v4;
  }

  return outlined init with copy of SheetPreference.Value(&static SheetPreference.defaultValue, a2);
}

uint64_t static App.main()(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Semantics.v6.getter();
  if (isLinkedOnOrAfter(_:)() & 1) == 0 || (AGTypeID.isValueType.getter())
  {
    (*(a2 + 32))(a1, a2);
    runApp<A>(_:)(v5, a1, a2);
  }

  v8 = 0;
  v9 = 0xE000000000000000;
  _StringGuts.grow(_:)(40);

  v8 = 0xD00000000000001ALL;
  v9 = 0x800000018CD491A0;
  v6 = _typeName(_:qualified:)();
  MEMORY[0x18D00C9B0](v6);

  MEMORY[0x18D00C9B0](0x6C63206120736920, 0xEC0000002E737361);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type SceneID and conformance SceneID()
{
  result = lazy protocol witness table cache variable for type SceneID and conformance SceneID;
  if (!lazy protocol witness table cache variable for type SceneID and conformance SceneID)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SceneID, &type metadata for SceneID, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SceneID and conformance SceneID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SceneID and conformance SceneID;
  if (!lazy protocol witness table cache variable for type SceneID and conformance SceneID)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SceneID, &type metadata for SceneID, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SceneID and conformance SceneID);
  }

  return result;
}

uint64_t closure #1 in AppGraph.instantiateOutputs()(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  v2 = *(a1 + 88);
  v14[0] = *(a1 + 72);
  v14[1] = v2;
  v15 = *(a1 + 104);
  v11 = v14[0];
  v12 = v2;
  *v13 = v15;
  outlined init with copy of _GraphInputs(v14, v20);
  PreferencesInputs.init(hostKeys:)();
  *&v13[16] = *&v20[0];
  *&v13[24] = DWORD2(v20[0]);
  v3 = *(a1 + 88);
  swift_beginAccess();
  v4 = *(a1 + 200);
  v5 = *(a1 + 224);
  LODWORD(v20[0]) = *(v3 + 16);
  *(v20 + 4) = __PAIR64__(v5, v4);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type RootEnvironment and conformance RootEnvironment();
  Attribute.init<A>(body:value:flags:update:)();
  _GraphInputs.environment.setter();
  PreferenceKeys.add(_:)();
  PreferenceKeys.add(_:)();
  PreferenceKeys.add(_:)();
  LODWORD(v20[0]) = *(a1 + 216);
  lazy protocol witness table accessor for type FocusedValuesInputKey and conformance FocusedValuesInputKey();
  PropertyList.subscript.setter();
  LODWORD(v20[0]) = *(a1 + 220);
  lazy protocol witness table accessor for type FocusStoreInputKey and conformance FocusStoreInputKey();
  PropertyList.subscript.setter();
  v6 = *(a1 + 176);
  v16[0] = v11;
  v16[1] = v12;
  v17[0] = *v13;
  *(v17 + 12) = *&v13[12];
  v8 = v11;
  v9 = v12;
  v10[0] = *v13;
  *(v10 + 12) = *&v13[12];

  outlined init with copy of _SceneInputs(v16, v20);
  v6(&v8);

  v18[0] = v8;
  v18[1] = v9;
  v19[0] = v10[0];
  *(v19 + 12) = *(v10 + 12);
  outlined destroy of _SceneInputs(v18);
  v20[0] = v11;
  v20[1] = v12;
  v21[0] = *v13;
  *(v21 + 12) = *&v13[12];
  return outlined destroy of _SceneInputs(v20);
}

uint64_t UIApplicationDelegateAdaptor.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FallbackDelegateBox(0, a2, a3, a4);
  static AppGraph.delegateBox = FallbackDelegateBox.__allocating_init(_:)(0);
}

uint64_t FallbackDelegateBox.__allocating_init(_:)(uint64_t a1)
{
  result = swift_allocObject();
  v3 = a1;
  if (!a1)
  {
    v3 = *(*result + 104);
  }

  *(result + 16) = v3;
  *(result + 24) = a1 != 0;
  return result;
}

void runApp<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  static Update.dispatchImmediately<A>(reason:_:)();
  v3 = type metadata accessor for AppDelegate();
  v4 = MEMORY[0x18D00E850]();
  closure #1 in KitRendererCommon(_:)(v4, v3);
}

void closure #1 in runApp<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for AppGraph(0);
  v6 = specialized AppGraph.__allocating_init<A>(app:)(a1, a2, a3);
  if ((*(v6 + 234) & 1) == 0)
  {
    if (AppGraph.traceLaunch.getter())
    {
      type metadata accessor for AGGraphRef(0);
      static AGGraphRef.startTracing(options:)();
    }

    else if ((AppGraph.launchProfileOptions.getter() & 2) != 0)
    {
      AGGraphStartProfiling();
    }
  }

  GraphHost.instantiate()();
  if (static AppGraph.shared)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    static AppGraph.shared = v6;
  }
}

uint64_t type metadata accessor for AppGraph(uint64_t a1)
{
  result = type metadata singleton initialization cache for AppGraph;
  if (!type metadata singleton initialization cache for AppGraph)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t specialized AppGraph.__allocating_init<A>(app:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v7);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  (*(v5 + 32))(v10 + v9, v8, a2);
  swift_allocObject();
  return AppGraph.init(makeRootScene:)(partial apply for closure #1 in AppGraph.init<A>(app:), v10);
}

uint64_t sub_18BD78C10()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t AppGraph.init(makeRootScene:)(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  *(v2 + 192) = MEMORY[0x1E69E7CD0];
  *(v2 + 204) = 0;
  *(v2 + 208) = 1;
  *(v2 + 228) = 0;
  *(v2 + 232) = 1;
  *(v2 + 233) = 2;
  *(v2 + 236) = *MEMORY[0x1E698D3F8];
  *(v2 + 176) = a1;
  *(v2 + 184) = a2;

  GraphHost.Data.init()();
  v9 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  v3 = *(&v18[0] + 1);
  static CustomEventTrace.instantiateBegin(_:)();

  *(v2 + 200) = Attribute.init<A>(body:value:flags:update:)();
  v4 = MEMORY[0x1E69E7CC0];
  type metadata accessor for HashableWeakBox<Swift.AnyObject>(0, &lazy cache variable for type metadata for [SceneList.Item.Summary], &type metadata for SceneList.Item.Summary, MEMORY[0x1E69E62F8]);
  *(v2 + 212) = Attribute.init<A>(body:value:flags:update:)();
  *(v2 + 216) = Attribute.init<A>(body:value:flags:update:)();
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_7SwiftUI12PropertyListVTt0g5Tf4g_n(v4);
  v5 = Attribute.init<A>(body:value:flags:update:)();

  *(v2 + 220) = v5;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7SceneIDO_AC16KeyboardShortcutVTt0g5Tf4g_n(v4);
  type metadata accessor for [SceneID : KeyboardShortcut](0, &lazy cache variable for type metadata for [SceneID : KeyboardShortcut], lazy protocol witness table accessor for type SceneID and conformance SceneID, &type metadata for SceneID, &type metadata for KeyboardShortcut);
  v6 = Attribute.init<A>(body:value:flags:update:)();

  *(v2 + 224) = v6;
  v15 = v18[4];
  v16 = v18[5];
  v17 = v19;
  v11 = v18[0];
  v12 = v18[1];
  v13 = v18[2];
  v14 = v18[3];
  outlined init with copy of GraphHost.Data(v18, v10);
  v7 = GraphHost.init(data:)();

  AGSubgraphSetCurrent();
  static CustomEventTrace.instantiateEnd(_:)();

  outlined destroy of GraphHost.Data(v18);

  return v7;
}

void type metadata accessor for HashableWeakBox<Swift.AnyObject>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7SceneIDO_AC16KeyboardShortcutVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<Edge, Bool>(0, &lazy cache variable for type metadata for _DictionaryStorage<SceneID, KeyboardShortcut>, lazy protocol witness table accessor for type SceneID and conformance SceneID, &type metadata for SceneID, &type metadata for KeyboardShortcut);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 80); ; i += 56)
    {
      v5 = *(i - 6);
      v6 = *(i - 5);
      v7 = *(i - 32);
      v9 = *(i - 3);
      v8 = *(i - 2);
      v10 = *(i - 1);
      v11 = *i;
      outlined copy of SceneID(v5, v6, v7);

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6, v7);
      if (v13)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v3[6] + 24 * result;
      *v14 = v5;
      *(v14 + 8) = v6;
      *(v14 + 16) = v7;
      v15 = v3[7] + 32 * result;
      *v15 = v9;
      *(v15 + 8) = v8;
      *(v15 + 16) = v10;
      *(v15 + 24) = v11;
      v16 = v3[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v3[2] = v18;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t AppGraph.traceLaunch.getter()
{
  v1 = *(v0 + 233);
  if (v1 == 2)
  {
    LOBYTE(v1) = static ProcessEnvironment.BOOL(forKey:defaultValue:)();
    *(v0 + 233) = v1 & 1;
  }

  return v1 & 1;
}

const char *AppGraph.launchProfileOptions.getter()
{
  if (*(v0 + 232) != 1)
  {
    return *(v0 + 228);
  }

  result = getenv("SWIFTUI_PROFILE_LAUNCH");
  if (result)
  {
    result = atoi(result);
  }

  *(v0 + 228) = result;
  *(v0 + 232) = 0;
  return result;
}

unint64_t lazy protocol witness table accessor for type AppGraph and conformance AppGraph()
{
  result = lazy protocol witness table cache variable for type AppGraph and conformance AppGraph;
  if (!lazy protocol witness table cache variable for type AppGraph and conformance AppGraph)
  {
    v3 = type metadata accessor for AppGraph(255);
    result = swift_getWitnessTable(protocol conformance descriptor for AppGraph, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AppGraph and conformance AppGraph);
  }

  return result;
}

Swift::Void __swiftcall AppGraph.instantiateOutputs()()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 64);
  v3 = *(v0 + 96);
  v30 = *(v0 + 80);
  v31 = v3;
  v4 = *(v0 + 32);
  v27[0] = *(v0 + 16);
  v27[1] = v4;
  v5 = *(v0 + 64);
  v7 = *(v0 + 16);
  v6 = *(v0 + 32);
  v28 = *(v0 + 48);
  v29 = v5;
  v8 = *(v0 + 96);
  v24 = v30;
  v25 = v8;
  v20 = v7;
  v21 = v6;
  v32 = *(v0 + 112);
  v26 = *(v0 + 112);
  v22 = v28;
  v23 = v2;
  outlined init with copy of GraphHost.Data(v27, v19);
  v9 = GraphHost.Data.updateSeed.modify();
  ++*v10;
  v9(v19, 0);
  outlined destroy of GraphHost.Data(v27);
  v11 = *(v0 + 32);
  AGGraphClearUpdate();
  v12 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  closure #1 in AppGraph.instantiateOutputs()(v1);
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  v13 = v20;
  v14 = DWORD2(v20);
  v15 = *(v1 + 32);
  AGGraphClearUpdate();
  v16 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  *&v20 = v13;
  DWORD2(v20) = v14;
  if ((PreferencesOutputs.subscript.getter() & 0x100000000) == 0)
  {
    *(v1 + 204) = AGGraphCreateIndirectAttribute2();
    *(v1 + 208) = 0;
  }

  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  *&v20 = v13;
  DWORD2(v20) = v14;
  v17 = PreferencesOutputs.subscript.getter();
  if ((v17 & 0x100000000) != 0)
  {
    v18 = *MEMORY[0x1E698D3F8];
  }

  else
  {
    v18 = v17;
  }

  *(v1 + 236) = v18;
  *&v20 = v13;
  DWORD2(v20) = v14;
  PreferencesOutputs.subscript.getter();

  swift_beginAccess();
  *(v1 + 132) = AGCreateWeakAttribute();
  swift_endAccess();
}

unint64_t lazy protocol witness table accessor for type RootEnvironment and conformance RootEnvironment()
{
  result = lazy protocol witness table cache variable for type RootEnvironment and conformance RootEnvironment;
  if (!lazy protocol witness table cache variable for type RootEnvironment and conformance RootEnvironment)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RootEnvironment, &unk_1F001F890, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type RootEnvironment and conformance RootEnvironment);
  }

  return result;
}

uint64_t __swift_memcpy12_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t initializeWithCopy for _SceneInputs(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 2);
  *(a1 + 16) = a2[2];
  *(a1 + 24) = *(a2 + 3);
  v3 = a2[6];
  *(a1 + 40) = a2[5];
  *(a1 + 48) = v3;
  *(a1 + 56) = *(a2 + 14);

  return a1;
}

uint64_t closure #1 in AppGraph.init<A>(app:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1[1];
  v27 = *a1;
  v28 = v7;
  v29[0] = a1[2];
  *(v29 + 12) = *(a1 + 44);
  static DynamicPropertyCache.fields(of:)();
  v8 = v34;
  v9 = v35;
  v10 = DWORD1(v35);
  v24 = v27;
  v25 = v28;
  v26[0] = v29[0];
  *(v26 + 12) = *(v29 + 12);
  v19[2] = a3;
  outlined init with copy of _SceneInputs(&v27, &v34);
  v11 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a2, partial apply for closure #1 in Attribute.init(value:), v19, a3, MEMORY[0x1E69E73E0], v11, MEMORY[0x1E69E7410], v12);
  _GraphValue.init(_:)();
  v34 = v8;
  LOBYTE(v35) = v9;
  DWORD1(v35) = v10;
  v14 = type metadata accessor for AppBodyAccessor(0, a3, a4, v13);
  swift_getWitnessTable(protocol conformance descriptor for AppBodyAccessor<A>, v14);
  BodyAccessor.makeBody(container:inputs:fields:)();
  outlined consume of DynamicPropertyCache.Fields.Layout(v8, *(&v8 + 1), v9);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v30[0] = v24;
  v30[1] = v25;
  v31[0] = v26[0];
  *(v31 + 12) = *(v26 + 12);
  v20 = v24;
  v21 = v25;
  v22[0] = v26[0];
  *(v22 + 12) = *(v26 + 12);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v17 = *(AssociatedConformanceWitness + 32);
  outlined init with copy of _SceneInputs(v30, &v34);
  v17(v23, &v20, AssociatedTypeWitness, AssociatedConformanceWitness);
  v32[0] = v20;
  v32[1] = v21;
  v33[0] = v22[0];
  *(v33 + 12) = *(v22 + 12);
  outlined destroy of _SceneInputs(v32);
  v34 = v24;
  v35 = v25;
  v36[0] = v26[0];
  *(v36 + 12) = *(v26 + 12);
  return outlined destroy of _SceneInputs(&v34);
}

uint64_t protocol witness for static DynamicProperty._makeProperty<A>(in:container:fieldOffset:inputs:) in conformance UIApplicationDelegateAdaptor<A>()
{
  type metadata accessor for GraphHost();
  MEMORY[0x18D00B7D0]();
  type metadata accessor for AppGraph(0);
  v0 = swift_dynamicCastClass();

  if (!v0)
  {

    JUMPOUT(0x18D009810);
  }

  return result;
}

uint64_t closure #1 in Attribute.init(value:)(uint64_t a1, uint64_t a2)
{
  v5[5] = *MEMORY[0x1E69E9840];
  v5[2] = a2;
  v5[3] = a1;
  v2 = type metadata accessor for Attribute();
  return _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v2, partial apply for closure #1 in closure #1 in Attribute.init(value:), v5, MEMORY[0x1E698D3D0], MEMORY[0x1E69E73E0], v2, MEMORY[0x1E69E7410], v3);
}

uint64_t partial apply for closure #1 in closure #1 in Attribute.init(value:)@<X0>(_DWORD *a2@<X8>)
{
  result = Attribute.init<A>(body:value:flags:update:)();
  *a2 = result;
  return result;
}

uint64_t type metadata completion function for WindowGroup(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for WindowGroupRootContent(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for WindowGroupRootContent(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

void *sub_18BD79E00(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

void type metadata accessor for _EnvironmentKeyWritingModifier<Bool>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_2(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6370]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_3(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_1@<X0>(_DWORD *a2@<X8>)
{
  type metadata accessor for (_:)();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  result = Attribute.init<A>(body:value:flags:update:)();
  *a2 = result;
  return result;
}

uint64_t closure #1 in Attribute.init<A>(_:)partial apply@<X0>(_DWORD *x8_0@<X8>)
{
  return closure #1 in Attribute.init<A>(_:)(x8_0);
}

{
  return closure #1 in Attribute.init<A>(_:)(x8_0);
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_3(x8_0);
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_16(x8_0);
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TATm_3(type metadata accessor for (_:), x8_0);
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_14(x8_0);
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_18(x8_0);
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_21(x8_0);
}

void *destructiveInjectEnumTag for PPTTestCase.ScrollMode(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t type metadata completion function for SubscriptionView(uint64_t a1)
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

uint64_t static Scene.makeBody(scene:inputs:fields:)(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  if (AGTypeID.isValueType.getter())
  {
    v10 = type metadata accessor for SceneBodyAccessor(0, a6, a7, v9);
    swift_getWitnessTable(protocol conformance descriptor for SceneBodyAccessor<A>, v10);
    return BodyAccessor.makeBody(container:inputs:fields:)();
  }

  else
  {
    _StringGuts.grow(_:)(28);

    v12 = _typeName(_:qualified:)();
    MEMORY[0x18D00C9B0](v12);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t static Scene._makeScene(scene:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a1;
  v8 = a2[1];
  v37 = *a2;
  v38 = v8;
  v39[0] = a2[2];
  *(v39 + 12) = *(a2 + 44);
  static DynamicPropertyCache.fields(of:)();
  v9 = v44;
  v34 = v37;
  v35 = v38;
  v36[0] = v39[0];
  *(v36 + 12) = *(v39 + 12);
  v20 = DWORD1(v44);
  v21 = v7;
  LODWORD(v31) = v7;
  v22 = *(&v43 + 1);
  v23 = v43;
  v40 = v43;
  LOBYTE(v41) = v44;
  DWORD1(v41) = DWORD1(v44);
  outlined init with copy of _SceneInputs(&v37, &v43);
  static Scene.makeBody(scene:inputs:fields:)(v30, &v43, &v31, &v34, &v40, a3, a4);
  v10 = *(&v43 + 1);
  v19 = v43;
  LOBYTE(v7) = v44;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v40 = v34;
  v41 = v35;
  v42[0] = v36[0];
  *(v42 + 12) = *(v36 + 12);
  v31 = v34;
  v32 = v35;
  v33[0] = v36[0];
  *(v33 + 12) = *(v36 + 12);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = *(AssociatedConformanceWitness + 32);
  outlined init with copy of _SceneInputs(&v40, &v43);
  v13(&v25, v30, &v31, AssociatedTypeWitness, AssociatedConformanceWitness);
  v43 = v31;
  v44 = v32;
  v45[0] = v33[0];
  *(v45 + 12) = *(v33 + 12);
  outlined destroy of _SceneInputs(&v43);
  v14 = v25;
  v15 = v26;
  if (v7)
  {
    v31 = v34;
    v32 = v35;
    v33[0] = v36[0];
    *(v33 + 12) = *(v36 + 12);
    outlined destroy of _SceneInputs(&v31);
    v17 = v22;
    v16 = v23;
  }

  else
  {
    v30[0] = v19;
    v30[1] = v10;
    v29 = v21;
    v25 = v23;
    v26 = v22;
    v27 = v9;
    v28 = v20;
    _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)();
    v31 = v34;
    v32 = v35;
    v33[0] = v36[0];
    *(v33 + 12) = *(v36 + 12);
    outlined destroy of _SceneInputs(&v31);
    v16 = v23;
    v17 = v22;
  }

  result = outlined consume of DynamicPropertyCache.Fields.Layout(v16, v17, v9);
  *a5 = v14;
  *(a5 + 8) = v15;
  return result;
}

uint64_t closure #1 in static WindowSceneList._makeScene(scene:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[2] = type metadata accessor for WindowSceneList(0, a2, a3, a4);
  v12 = type metadata accessor for WindowSceneConfiguration(0, a2, a3, v7);
  v8 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v11, v12, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v9);
  return v13;
}

unint64_t lazy protocol witness table accessor for type _SceneInputs.NamespaceInput and conformance _SceneInputs.NamespaceInput()
{
  result = lazy protocol witness table cache variable for type _SceneInputs.NamespaceInput and conformance _SceneInputs.NamespaceInput;
  if (!lazy protocol witness table cache variable for type _SceneInputs.NamespaceInput and conformance _SceneInputs.NamespaceInput)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _SceneInputs.NamespaceInput, &type metadata for _SceneInputs.NamespaceInput, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _SceneInputs.NamespaceInput and conformance _SceneInputs.NamespaceInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _SceneInputs.NamespaceInput and conformance _SceneInputs.NamespaceInput;
  if (!lazy protocol witness table cache variable for type _SceneInputs.NamespaceInput and conformance _SceneInputs.NamespaceInput)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _SceneInputs.NamespaceInput, &type metadata for _SceneInputs.NamespaceInput, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _SceneInputs.NamespaceInput and conformance _SceneInputs.NamespaceInput);
  }

  return result;
}

void protocol witness for static PropertyKey.defaultValue.getter in conformance _SceneInputs.NamespaceInput(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 2;
}

void type metadata accessor for String?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _sSSSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _sSSSgMaTm_1(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _sSSSgMaTm_2(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t closure #2 in implicit closure #1 in static WindowSceneList._makeScene(scene:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for WindowSceneList(0, a2, a3, a4);
  v6 = *(v5 + 36);
  v12[2] = v5;
  type metadata accessor for String?(0, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  v8 = v7;
  v9 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v6, closure #1 in static PointerOffset.of(_:)partial apply, v12, v8, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  return v12[5];
}

uint64_t closure #1 in static PointerOffset.of(_:)partial apply@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for String?(0, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  return closure #1 in static PointerOffset.of(_:)(a1, a2);
}

{
  result = type metadata accessor for ProgressViewValue(0);
  *a2 = a1 - 1;
  return result;
}

{
  return closure #1 in static PointerOffset.of(_:)(a1, a2);
}

{
  return closure #1 in static PointerOffset.of(_:)(a1, a2);
}

{
  type metadata accessor for _ContiguousArrayStorage<PreferencesOutputs>(0, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  return closure #1 in static PointerOffset.of(_:)(a1, a2);
}

{
  type metadata accessor for Binding<AnyNavigationPath>(0, &lazy cache variable for type metadata for Binding<AnyNavigationPath>, &type metadata for AnyNavigationPath, MEMORY[0x1E6981948]);
  return closure #1 in static PointerOffset.of(_:)(a1, a2);
}

{
  return closure #1 in static PointerOffset.of(_:)(a1, a2);
}

{
  type metadata accessor for TokenFieldConfiguration(0);
  return closure #1 in static PointerOffset.of(_:)(a1, a2);
}

{
  _s7SwiftUI19NavigationAuthorityVSgMaTm_1(0, &lazy cache variable for type metadata for NavigationStackViewPosition?, &type metadata for NavigationStackViewPosition, MEMORY[0x1E69E6720]);
  return closure #1 in static PointerOffset.of(_:)(a1, a2);
}

{
  return closure #1 in static PointerOffset.of(_:)(a1, a2);
}

{
  return closure #1 in static PointerOffset.of(_:)(a1, a2);
}

{
  return closure #1 in static PointerOffset.of(_:)partial apply(a1, a2);
}

{
  type metadata accessor for Binding<Bool>?(0);
  return closure #1 in static PointerOffset.of(_:)(a1, a2);
}

{
  return closure #1 in static PointerOffset.of(_:)(a1, a2);
}

{
  return closure #1 in static PointerOffset.of(_:)(a1, a2);
}

{
  type metadata accessor for EventFilter<()>(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  return closure #1 in static PointerOffset.of(_:)(a1, a2);
}

{
  _s7SwiftUI7BindingVySbGMaTm_9(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  return closure #1 in static PointerOffset.of(_:)(a1, a2);
}

{
  return closure #1 in static PointerOffset.of(_:)(a1, a2);
}

{
  type metadata accessor for ToolbarStorage.SearchItem?(0);
  return closure #1 in static PointerOffset.of(_:)(a1, a2);
}

{
  type metadata accessor for ToolbarStorage?(0, &lazy cache variable for type metadata for NavigationTitleStorage?, &type metadata for NavigationTitleStorage, MEMORY[0x1E69E6720]);
  return closure #1 in static PointerOffset.of(_:)(a1, a2);
}

{
  return closure #1 in static PointerOffset.of(_:)(a1, a2);
}

{
  _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_0(0, &lazy cache variable for type metadata for Binding<[SwiftUIAnySortComparator]>?, type metadata accessor for Binding<[SwiftUIAnySortComparator]>, MEMORY[0x1E69E6720]);
  return closure #1 in static PointerOffset.of(_:)(a1, a2);
}

{
  type metadata accessor for Binding<EditMode>?(0, &lazy cache variable for type metadata for Binding<AnySelectionManager>?, &lazy cache variable for type metadata for Binding<AnySelectionManager>, &type metadata for AnySelectionManager);
  return closure #1 in static PointerOffset.of(_:)(a1, a2);
}

{
  type metadata accessor for Never?(0, &lazy cache variable for type metadata for Binding<UInt32>, MEMORY[0x1E69E7668], MEMORY[0x1E6981948]);
  return closure #1 in static PointerOffset.of(_:)(a1, a2);
}

{
  return closure #1 in static PointerOffset.of(_:)(a1, a2);
}

uint64_t closure #3 in implicit closure #1 in static WindowSceneList._makeScene(scene:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for WindowSceneList(0, a2, a3, a4);
  v6 = *(v5 + 40);
  v11[2] = v5;
  v7 = type metadata accessor for Any.Type();
  v8 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v6, _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_3, v11, v7, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v9);
  return v11[5];
}

unint64_t type metadata accessor for Any.Type()
{
  result = lazy cache variable for type metadata for Any.Type;
  if (!lazy cache variable for type metadata for Any.Type)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for Any.Type);
  }

  return result;
}

__n128 initializeWithCopy for WindowSceneList.MakeList(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 32);
  if (v2 == 255)
  {
    result = *(a2 + 16);
    *(a1 + 16) = result;
    *(a1 + 32) = *(a2 + 32);
  }

  else
  {
    v3 = *(a2 + 16);
    v4 = *(a2 + 24);
    v5 = v2 & 1;
    outlined copy of SceneID(v3, v4, v2 & 1);
    *(a1 + 16) = v3;
    *(a1 + 24) = v4;
    *(a1 + 32) = v5;
  }

  return result;
}

uint64_t destroy for WindowSceneList.MakeList(uint64_t result)
{
  v1 = *(result + 32);
  if (v1 != 255)
  {
    return outlined consume of SceneID(*(result + 16), *(result + 24), v1 & 1);
  }

  return result;
}

uint64_t implicit closure #1 in _SceneOutputs.writeSceneList(inputs:value:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for [SceneList.Namespace : SceneList](0);
  lazy protocol witness table accessor for type WriteSceneList and conformance WriteSceneList();
  return Attribute.init<A>(body:value:flags:update:)();
}

uint64_t destroy for _SceneInputs(void *a1)
{
}

unint64_t lazy protocol witness table accessor for type SceneList.Namespace and conformance SceneList.Namespace()
{
  result = lazy protocol witness table cache variable for type SceneList.Namespace and conformance SceneList.Namespace;
  if (!lazy protocol witness table cache variable for type SceneList.Namespace and conformance SceneList.Namespace)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SceneList.Namespace, &type metadata for SceneList.Namespace, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SceneList.Namespace and conformance SceneList.Namespace);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SceneList.Namespace and conformance SceneList.Namespace;
  if (!lazy protocol witness table cache variable for type SceneList.Namespace and conformance SceneList.Namespace)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SceneList.Namespace, &type metadata for SceneList.Namespace, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SceneList.Namespace and conformance SceneList.Namespace);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SceneList.Namespace and conformance SceneList.Namespace;
  if (!lazy protocol witness table cache variable for type SceneList.Namespace and conformance SceneList.Namespace)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SceneList.Namespace, &type metadata for SceneList.Namespace, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SceneList.Namespace and conformance SceneList.Namespace);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SceneList.Namespace and conformance SceneList.Namespace;
  if (!lazy protocol witness table cache variable for type SceneList.Namespace and conformance SceneList.Namespace)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SceneList.Namespace, &type metadata for SceneList.Namespace, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SceneList.Namespace and conformance SceneList.Namespace);
  }

  return result;
}

uint64_t initializeWithCopy for WriteSceneList(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  outlined copy of SceneList.Namespace(*a2, v5, v6);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 20) = *(a2 + 20);
  return a1;
}

uint64_t type metadata completion function for WindowSceneList(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for WindowSceneConfiguration(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void closure #1 in KitRendererCommon(_:)(char **a1, uint64_t a2)
{
  v3 = static CommandLine.argc.getter();
  type metadata accessor for SwiftUIApplication();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v5)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = MEMORY[0x18D00C850](v6);
  }

  v7 = swift_getObjCClassFromMetadata();
  v8 = NSStringFromClass(v7);
  if (!v8)
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = MEMORY[0x18D00C850](v9);
  }

  v10 = UIApplicationMain(v3, a1, v5, v8);

  exit(v10);
}

uint64_t type metadata completion function for WindowSceneConfiguration(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t static WindowSceneList._makeScene(scene:inputs:)(int *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v7 = a2[2];
  v19 = a2[6];
  v20 = *(a2 + 14);
  v29 = a3;
  v30 = a4;
  LODWORD(v33) = v6;
  type metadata accessor for WindowSceneList(255, a3, a4, a4);
  type metadata accessor for _GraphValue();
  type metadata accessor for WindowSceneConfiguration(0, a3, a4, v8);
  _GraphValue.subscript.getter();
  type metadata accessor for _GraphValue();
  v9 = _GraphValue.value.getter();
  PreferencesOutputs.init()();
  lazy protocol witness table accessor for type _SceneInputs.NamespaceInput and conformance _SceneInputs.NamespaceInput();
  PropertyList.subscript.getter();
  v17 = *(&v33 + 1);
  v18 = v33;
  v10 = v34;
  swift_beginAccess();
  v11 = *(v7 + 16);
  v27 = a3;
  v28 = a4;
  type metadata accessor for String?(0, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  _GraphValue.subscript.getter();
  v25 = a3;
  v26 = a4;
  type metadata accessor for Any.Type();
  _GraphValue.subscript.getter();
  *&v33 = __PAIR64__(v11, v9);
  DWORD2(v33) = v21;
  v34 = 0uLL;
  v35 = -1;
  v31[0] = v33;
  v31[1] = 0uLL;
  v32 = -1;
  List = type metadata accessor for WindowSceneList.MakeList(0, a3, a4, v12);
  v23 = List;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for WindowSceneList<A>.MakeList, List);
  type metadata accessor for String?(0, &lazy cache variable for type metadata for Attribute<SceneList>, &type metadata for SceneList, MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v31, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_5, v22, List, MEMORY[0x1E69E73E0], v14, MEMORY[0x1E69E7410], v15);
  (*(*(List - 8) + 8))(&v33, List);
  *&v31[0] = v19;
  DWORD2(v31[0]) = v20;

  PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();
  outlined consume of SceneList.Namespace(v18, v17, v10);
}

unint64_t lazy protocol witness table accessor for type WriteSceneList and conformance WriteSceneList()
{
  result = lazy protocol witness table cache variable for type WriteSceneList and conformance WriteSceneList;
  if (!lazy protocol witness table cache variable for type WriteSceneList and conformance WriteSceneList)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for WriteSceneList, &unk_1F0017D70, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type WriteSceneList and conformance WriteSceneList);
  }

  return result;
}

uint64_t WriteSceneList.updateValue()()
{
  Value = AGGraphGetValue();
  v3 = v2;
  v4 = *Value;

  AGGraphGetValue();
  if (((v3 | v5) & 1) != 0 || (type metadata accessor for [SceneList.Namespace : SceneList](0), !AGGraphGetOutputValue()))
  {

    v6 = AGGraphGetValue();
    v7 = *v6;
    v8 = v6[1];

    type metadata accessor for _ContiguousArrayStorage<(SceneList.Namespace, SceneList)>(0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18CD63400;
    v10 = *v0;
    v11 = *(v0 + 8);
    v12 = *(v0 + 16);
    *(inited + 32) = *v0;
    *(inited + 40) = v11;
    *(inited + 48) = v12;
    *(inited + 56) = v4;
    *(inited + 64) = v7;
    *(inited + 72) = v8;
    outlined copy of SceneList.Namespace(v10, v11, v12);

    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI9SceneListV9NamespaceO_AETt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of (SceneList.Namespace, SceneList)(inited + 32);
    type metadata accessor for [SceneList.Namespace : SceneList](0);
    AGGraphSetOutputValue();
  }
}

uint64_t WindowSceneList.MakeList.updateValue()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v63 = *MEMORY[0x1E69E9840];
  v6 = type metadata accessor for WindowSceneConfiguration(0, *(a1 + 16), *(a1 + 24), a4);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v24 - v9;
  v11 = *(v4 + 32);
  if (v11 == 255)
  {
    type metadata accessor for String?(0, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    Value = AGGraphGetValue();
    v12 = Value[1];
    if (v12)
    {
      v13 = *Value;
      *(v4 + 16) = *Value;
      *(v4 + 24) = v12;
      *(v4 + 32) = 0;

      LOBYTE(v11) = 0;
    }

    else
    {
      ++windowGroupCounter;
      type metadata accessor for Any.Type();
      v15 = AGGraphGetValue();
      v13 = *v15;
      v12 = windowGroupCounter;
      *(v4 + 16) = *v15;
      *(v4 + 24) = v12;
      LOBYTE(v11) = 1;
      *(v4 + 32) = 1;
    }
  }

  else
  {
    v13 = *(v4 + 16);
    v12 = *(v4 + 24);
  }

  *&v59[136] = *v4;
  v60 = v13;
  v61 = v12;
  v62 = v11;
  WindowSceneList.MakeList.configuration.getter(a1, v8, v10);
  WindowSceneConfiguration.sceneListValue()(v6);
  (*(v7 + 8))(v10, v6);
  outlined init with copy of SceneList.Item.Value(v59, v25);
  v16 = v11 & 1;
  outlined copy of SceneID(v13, v12, v11 & 1);
  DisplayList.Version.init(forUpdate:)();
  v17 = v24[71];
  WindowSceneList.MakeList.environment.getter(v24);
  v18 = v24[0];
  v19 = v24[1];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v20 = MEMORY[0x1E69E7CC0];
  v21 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_Say7SwiftUI28AnyConnectionOptionActionBoxCGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v25[17] = v13;
  v25[18] = v12;
  v26 = v16;
  v27 = v17;
  v28 = v18;
  v29 = v19;
  v30 = 0;
  v49 = 0;
  v50 = 0;
  v51 = 0u;
  v52 = 1;
  v53 = 0u;
  v54 = 1;
  v55 = 0;
  v56 = v20;
  v57 = v21;
  v58 = 0;
  outlined init with copy of SceneList.Item(v25, v24);
  EnvironmentValues.init()();
  type metadata accessor for String?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<SceneList.Item>, &type metadata for SceneList.Item, MEMORY[0x1E69E6F90]);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_18CD63400;
  memcpy((v22 + 32), v24, 0x231uLL);
  v24[0] = v22;
  v24[1] = v24[72];
  v24[2] = v24[73];
  AGGraphSetOutputValue();
  outlined destroy of SceneList.Item(v25);
  outlined destroy of SceneList.Item.Value(v59);
}

char *AppDelegate.init()(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC7SwiftUI11AppDelegate_fallbackDelegate] = 0;
  *&v2[OBJC_IVAR____TtC7SwiftUI11AppDelegate_mainMenuController] = 0;
  v13.receiver = v2;
  v13.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v13, sel_init);
  if (static AppDelegate.shared)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v5 = v4;
  static AppDelegate.shared = v4;
  if (!static AppGraph.delegateBox)
  {
    v11 = v4;
    goto LABEL_7;
  }

  v6 = *(*static AppGraph.delegateBox + 80);
  v7 = v4;

  v9 = v6(v8);

  if (!v9)
  {
LABEL_7:
    v10 = 0;
    goto LABEL_8;
  }

  v10 = swift_dynamicCastObjCProtocolConditional();
  if (!v10)
  {

    goto LABEL_7;
  }

LABEL_8:
  *&v5[OBJC_IVAR____TtC7SwiftUI11AppDelegate_fallbackDelegate] = v10;
  swift_unknownObjectRelease();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  static SceneNavigationStrategy_Phone.shared = 1;
  return v5;
}

id specialized AppDelegate.application(_:configurationForConnecting:options:)(void *a1)
{
  type metadata accessor for [SceneList.Item]?(0);
  static Update.ensure<A>(_:)();
  v2 = v68[0];
  v3 = [a1 role];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
    goto LABEL_14;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v9)
  {
LABEL_6:

LABEL_15:

    goto LABEL_16;
  }

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  if (v10 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v12 == v13)
  {
    goto LABEL_14;
  }

  v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v15)
  {
    goto LABEL_6;
  }

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;
  if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19)
  {
LABEL_14:

    goto LABEL_15;
  }

  v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v23)
  {
    goto LABEL_6;
  }

  v24 = one-time initialization token for carPlay;
  v25 = v3;
  if (v24 != -1)
  {
    swift_once();
  }

  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;
  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v26;
  v32 = v29;
  if (v31 != v30 || v28 != v29)
  {
    v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v35)
    {

      goto LABEL_25;
    }

    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v44;
    if (v43 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v32 == v45)
    {

LABEL_46:
      if (!v68[0])
      {
        goto LABEL_78;
      }

      v47 = *(v68[0] + 16);
      if (!v47)
      {
        goto LABEL_77;
      }

      v48 = 0;
      v49 = v68[0] + 32;
      while (1)
      {
        if (v48 >= *(v2 + 16))
        {
          goto LABEL_84;
        }

        outlined init with copy of SceneList.Item(v49, v68);
        outlined init with copy of SceneList.Item.Value(v68, &v62);
        if (v67 > 3u && v67 <= 6u)
        {
          if (v67 == 5)
          {
            outlined destroy of SceneList.Item(v68);
            v39 = v62;
            v40 = v63;
            v41 = v64;
            v32 = v66;
            if (v66 < 2)
            {
              outlined consume of SceneID(v62, v63, v64);
            }

            else
            {
              if (v66 == 2)
              {
LABEL_81:
                v55 = v39;
                v56 = v41;
                v57 = v40;

                outlined consume of SceneID(v55, v57, v56);
                goto LABEL_82;
              }

              v50 = v65;
              outlined consume of SceneID(v62, v63, v64);
              outlined consume of UISceneAdaptorConfiguration.Kind(v50, v32);
            }

            goto LABEL_50;
          }

          if (v67 != 6)
          {
            goto LABEL_76;
          }
        }

        outlined destroy of SceneList.Item(v68);
        result = outlined destroy of SceneList.Item.Value(&v62);
LABEL_50:
        ++v48;
        v49 += 568;
        if (v47 == v48)
        {
          goto LABEL_77;
        }
      }
    }

    v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v46)
    {
      goto LABEL_46;
    }

    if (!v68[0])
    {
      goto LABEL_78;
    }

    v51 = *(v68[0] + 16);
    if (!v51)
    {
      goto LABEL_77;
    }

    v52 = 0;
    v53 = v68[0] + 32;
    while (1)
    {
      if (v52 >= *(v2 + 16))
      {
        __break(1u);
        return result;
      }

      outlined init with copy of SceneList.Item(v53, v68);
      outlined init with copy of SceneList.Item.Value(v68, &v62);
      if (v67 > 3u && v67 <= 6u)
      {
        if (v67 == 5)
        {
          outlined destroy of SceneList.Item(v68);
          result = v62;
          v33 = v63;
          v34 = v64;
          v32 = v66;
          if (v66 && v66 != 2 && v66 != 1)
          {
            goto LABEL_85;
          }

          outlined consume of SceneID(v62, v63, v64);

          goto LABEL_66;
        }

        if (v67 != 6)
        {
LABEL_76:
          _diagnoseUnexpectedEnumCase<A>(type:)();
          __break(1u);
LABEL_77:

LABEL_78:
          v54 = [a1 configuration];

          return v54;
        }
      }

      outlined destroy of SceneList.Item(v68);
      result = outlined destroy of SceneList.Item.Value(&v62);
LABEL_66:
      ++v52;
      v53 += 568;
      if (v51 == v52)
      {
        goto LABEL_77;
      }
    }
  }

LABEL_25:
  if (!v68[0])
  {
    goto LABEL_78;
  }

  v36 = *(v68[0] + 16);
  if (!v36)
  {
    goto LABEL_77;
  }

  v37 = 0;
  v38 = v68[0] + 32;
  while (v37 < *(v2 + 16))
  {
    outlined init with copy of SceneList.Item(v38, v68);
    outlined init with copy of SceneList.Item.Value(v68, &v62);
    if (v67 <= 3u || v67 > 6u)
    {
      goto LABEL_28;
    }

    if (v67 != 5)
    {
      if (v67 != 6)
      {
        goto LABEL_76;
      }

LABEL_28:
      outlined destroy of SceneList.Item(v68);
      result = outlined destroy of SceneList.Item.Value(&v62);
      goto LABEL_29;
    }

    outlined destroy of SceneList.Item(v68);
    v39 = v62;
    v40 = v63;
    v41 = v64;
    v32 = v66;
    if (v66 == 1 || v66 == 2)
    {
      outlined consume of SceneID(v62, v63, v64);
    }

    else
    {
      if (!v66)
      {
        goto LABEL_81;
      }

      v42 = v65;
      outlined consume of SceneID(v62, v63, v64);
      outlined consume of UISceneAdaptorConfiguration.Kind(v42, v32);
    }

LABEL_29:
    ++v37;
    v38 += 568;
    if (v36 == v37)
    {
      goto LABEL_77;
    }
  }

  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  v58 = v65;
  v59 = result;
  v60 = v34;
  v61 = v33;

  outlined consume of SceneID(v59, v61, v60);
  outlined consume of UISceneAdaptorConfiguration.Kind(v58, v32);
LABEL_82:

LABEL_16:
  v20 = [a1 role];
  v21 = [objc_allocWithZone(MEMORY[0x1E69DCE88]) initWithName:0 sessionRole:v20];

  type metadata accessor for AppSceneDelegate();
  [v21 setDelegateClass_];
  return v21;
}

void type metadata accessor for [SceneList.Item]?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for [SceneList.Item]?)
  {
    _ss11AnyHashableVSgMaTm_1(255, &lazy cache variable for type metadata for [SceneList.Item], &type metadata for SceneList.Item, MEMORY[0x1E69E62F8]);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for [SceneList.Item]?);
    }
  }
}

uint64_t closure #1 in AppDelegate.application(_:configurationForConnecting:options:)@<X0>(void *a1@<X8>)
{
  if (static AppGraph.shared)
  {

    AppGraph.sceneList(namespace:)(0, 0, 2, &v4);

    v2 = v4;
  }

  else
  {
    v2 = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t AppGraph.sceneList(namespace:)@<X0>(void *Value@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if ((*(v4 + 208) & 1) == 0)
  {
    type metadata accessor for [SceneID : KeyboardShortcut](0, &lazy cache variable for type metadata for [SceneList.Namespace : SceneList], lazy protocol witness table accessor for type SceneList.Namespace and conformance SceneList.Namespace, &type metadata for SceneList.Namespace, &type metadata for SceneList);
    v9 = AGGraphGetValue();
    v10 = *v9;
    if (*(*v9 + 16))
    {

      v11 = specialized __RawDictionaryStorage.find<A>(_:)(Value, a2, a3);
      if (v12)
      {
        v13 = (*(v10 + 56) + 24 * v11);
        v14 = *v13;
        v15 = v13[1];
        v16 = v13[2];

        *a4 = v14;
        a4[1] = v15;
        a4[2] = v16;
        return result;
      }
    }
  }

  result = EnvironmentValues.init()();
  *a4 = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t outlined init with copy of Any?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Any?(0, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for Any?()
{
  if (!lazy cache variable for type metadata for Any?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Any?);
    }
  }
}

Swift::Void __swiftcall UIHostingController.sizingOptionsDidChange(from:)(SwiftUI::UIHostingControllerSizingOptions from)
{
  v2 = v1;
  v3 = *MEMORY[0x1E69E7D40] & *v1;
  v4 = *from.rawValue;
  v5 = direct field offset for UIHostingController.sizingOptions;
  swift_beginAccess();
  v6 = *(v1 + v5) & ~v4;
  if ((v6 & 3) != 0)
  {
    v7 = *(v1 + direct field offset for UIHostingController.host);
    _UIHostingView.viewGraph.getter(v7);

    static _ProposedSize.unspecified.getter();
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v9 = swift_allocObject();
    v10 = *(v3 + 80);
    v9[2] = v10;
    v11 = *(v3 + 88);
    v9[3] = v11;
    v9[4] = v8;
    swift_beginAccess();
    type metadata accessor for ViewGraphGeometryObservers<SizeThatFitsMeasurer>(0);
    ViewGraphGeometryObservers.addObserver(for:exclusive:callback:)();
    swift_endAccess();

    v12 = *(v2 + direct field offset for UIHostingController.host);
    v13 = _UIHostingView.viewGraph.getter(v12);

    swift_beginAccess();
    LODWORD(v12) = *(v13 + 128);

    if (v12 == 1)
    {
      static CGSize.invalidValue.getter();
      v15 = v14;
      v17 = v16;
      v18 = *(v2 + direct field offset for UIHostingController.host);
      static _ProposedSize.unspecified.getter();
      v20 = type metadata accessor for _UIHostingView(0, v10, v11, v19);
      swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v20);
      ViewRendererHost.sizeThatFits(_:)();
      v22 = v21;
      v24 = v23;

      UIHostingController.idealSizeDidChange(from:to:)(__PAIR128__(v17, v15), __PAIR128__(v24, v22));
    }
  }

  else
  {
    v25 = direct field offset for UIHostingController.sizingOptions;
    swift_beginAccess();
    if ((*(v2 + v25) & 3) == 0)
    {
      v26 = *(v2 + direct field offset for UIHostingController.host);
      _UIHostingView.viewGraph.getter(v26);

      static _ProposedSize.unspecified.getter();
      swift_beginAccess();
      type metadata accessor for ViewGraphGeometryObservers<SizeThatFitsMeasurer>(0);
      ViewGraphGeometryObservers.stopObserving(proposal:)();
      swift_endAccess();
    }
  }

  v27 = v6;
  UIHostingController.updateWindowSizeObservers(_:)(&v27);
}

uint64_t sub_18BD7D904()
{
  MEMORY[0x18D011290](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18BD7D93C()
{

  return swift_deallocObject();
}

uint64_t UIApplicationDelegateAdaptor<>.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t (*a5)(void))
{
  (a4)(0, a2, a3);
  static AppGraph.delegateBox = a5();
}

uint64_t ObservableFallbackDelegateBox.__allocating_init()()
{
  v0 = swift_allocObject();
  ObservableObjectFallbackDelegateBox.init()();
  return v0;
}

uint64_t static ModifiedContent<>._makeScene(scene:inputs:)(int *a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1;
  v11 = a2[1];
  v16[0] = *a2;
  v16[1] = v11;
  v17[0] = a2[2];
  *(v17 + 12) = *(a2 + 44);
  v15 = v10;
  type metadata accessor for ModifiedContent();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  *(v12 + 32) = a5;
  *(v12 + 40) = a6;
  *(v12 + 48) = v10;
  (*(a6 + 32))(v14, v16, partial apply for closure #2 in static ModifiedContent<>._makeScene(scene:inputs:), v12, a4, a6);
}

uint64_t closure #1 in static ModifiedContent<>._makeScene(scene:inputs:)(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = type metadata accessor for ModifiedContent();
  v11 = *(v10 + 36);
  v15[2] = v10;
  v15[3] = a4;
  v12 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v11, a7, v15, a4, MEMORY[0x1E69E73E0], v12, MEMORY[0x1E69E7410], v13);
  return v15[5];
}

uint64_t static CommandsModifier._makeScene(modifier:inputs:body:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v10 = *a1;
  *&v35[12] = *(a2 + 44);
  v11 = a2[1];
  v33 = *a2;
  v34 = v11;
  *v35 = a2[2];
  *&v31[0] = *&v35[16];
  DWORD2(v31[0]) = *&v35[24];
  if ((PreferencesInputs.contains<A>(_:includeHostPreferences:)() & 1) == 0)
  {
    return (a3)();
  }

  v26 = v33;
  v27 = v34;
  *v28 = *v35;
  outlined init with copy of _GraphInputs(&v33, v31);
  PreferencesInputs.init(hostKeys:)();
  *&v28[16] = *&v31[0];
  *&v28[24] = DWORD2(v31[0]);
  PreferenceKeys.add(_:)();
  LODWORD(v31[0]) = v10;
  type metadata accessor for CommandsModifier(255, a4, a5, v12);
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  AGGraphCreateOffsetAttribute2();
  _GraphValue.init(_:)();
  v29[0] = v26;
  v29[1] = v27;
  v30[0] = *v28;
  *(v30 + 12) = *&v28[12];
  v21 = v26;
  v22 = v27;
  v23[0] = *v28;
  *(v23 + 12) = *&v28[12];
  v13 = *(a5 + 32);
  outlined init with copy of _CommandsInputs(v29, v31);
  v13(&v24, &v19, &v21, a4, a5);
  v31[0] = v21;
  v31[1] = v22;
  v32[0] = v23[0];
  *(v32 + 12) = *(v23 + 12);
  v14 = outlined destroy of _CommandsInputs(v31);
  v15 = v24;
  LODWORD(v13) = v25;
  v21 = v33;
  v22 = v34;
  v23[0] = *v35;
  *(v23 + 12) = *&v35[12];
  a3(&v24, v14, &v21);
  *&v21 = v15;
  DWORD2(v21) = v13;
  v16 = PreferencesOutputs.subscript.getter();

  if ((v16 & 0x100000000) == 0)
  {
    v19 = *&v28[16];
    v20 = *&v28[24];
    MEMORY[0x1EEE9AC00](*&v28[16]);

    PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
  }

  v21 = v26;
  v22 = v27;
  v23[0] = *v28;
  *(v23 + 12) = *&v28[12];
  result = outlined destroy of _CommandsInputs(&v21);
  v18 = v25;
  *a6 = v24;
  *(a6 + 8) = v18;
  return result;
}

uint64_t closure #2 in static ModifiedContent<>._makeScene(scene:inputs:)(uint64_t a1, _OWORD *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a2[1];
  v13[0] = *a2;
  v13[1] = v9;
  v14[0] = a2[2];
  *(v14 + 12) = *(a2 + 44);
  v12 = a3;
  type metadata accessor for ModifiedContent();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  return (*(a6 + 32))(v11, v13, a4, a6);
}

uint64_t closure #1 in closure #2 in static ModifiedContent<>._makeScene(scene:inputs:)(uint64_t a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13[2] = type metadata accessor for ModifiedContent();
  v13[3] = a2;
  v10 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, a7, v13, a2, MEMORY[0x1E69E73E0], v10, MEMORY[0x1E69E7410], v11);
  return v13[5];
}

void type metadata accessor for Attribute<(_:)>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Attribute<(_:)>)
  {
    type metadata accessor for (_:)();
    v1 = type metadata accessor for Attribute();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Attribute<(_:)>);
    }
  }
}

{
  if (!lazy cache variable for type metadata for Attribute<(_:)>)
  {
    type metadata accessor for (_:)();
    v1 = type metadata accessor for Attribute();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Attribute<(_:)>);
    }
  }
}

{
  if (!lazy cache variable for type metadata for Attribute<(_:)>)
  {
    type metadata accessor for (_:)();
    v1 = type metadata accessor for Attribute();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Attribute<(_:)>);
    }
  }
}

{
  type metadata accessor for Attribute<(_:)>(a1, &lazy cache variable for type metadata for Attribute<(_:)>, type metadata accessor for (_:), MEMORY[0x1E698D388]);
}

{
  type metadata accessor for Attribute<(_:)>(a1, &lazy cache variable for type metadata for Attribute<(_:)>, type metadata accessor for (_:), MEMORY[0x1E698D388]);
}

{
  if (!lazy cache variable for type metadata for Attribute<(_:)>)
  {
    type metadata accessor for (_:)();
    v1 = type metadata accessor for Attribute();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Attribute<(_:)>);
    }
  }
}

{
  if (!lazy cache variable for type metadata for Attribute<(_:)>)
  {
    type metadata accessor for (_:)();
    v1 = type metadata accessor for Attribute();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Attribute<(_:)>);
    }
  }
}

{
  if (!lazy cache variable for type metadata for Attribute<(_:)>)
  {
    type metadata accessor for (_:)();
    v1 = type metadata accessor for Attribute();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Attribute<(_:)>);
    }
  }
}

{
  if (!lazy cache variable for type metadata for Attribute<(_:)>)
  {
    type metadata accessor for (_:)(255, &lazy cache variable for type metadata for (_:), &type metadata for ContainerBackgroundValue, &parameter_flags_15);
    v1 = type metadata accessor for Attribute();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Attribute<(_:)>);
    }
  }
}

{
  if (!lazy cache variable for type metadata for Attribute<(_:)>)
  {
    type metadata accessor for (_:)();
    v1 = type metadata accessor for Attribute();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Attribute<(_:)>);
    }
  }
}

{
  if (!lazy cache variable for type metadata for Attribute<(_:)>)
  {
    type metadata accessor for (_:)();
    v1 = type metadata accessor for Attribute();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Attribute<(_:)>);
    }
  }
}

unint64_t type metadata accessor for (_:)()
{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    result = swift_getFunctionTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    type metadata accessor for [SceneList.Namespace : SceneList](255, &lazy cache variable for type metadata for [SceneList.Namespace : SceneList], lazy protocol witness table accessor for type SceneList.Namespace and conformance SceneList.Namespace, &type metadata for SceneList.Namespace, &type metadata for SceneList);
    result = swift_getFunctionTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    result = swift_getFunctionTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    result = swift_getFunctionTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    result = swift_getFunctionTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    result = swift_getFunctionTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    type metadata accessor for [ViewIdentity : ConfirmationDialog](255);
    result = swift_getFunctionTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    type metadata accessor for [ViewIdentity : AlertStorage](255);
    result = swift_getFunctionTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    result = swift_getFunctionTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    result = swift_getFunctionTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    type metadata accessor for BLSAlwaysOnFrameSpecifier?(255, &lazy cache variable for type metadata for [DateSequenceTimeline], type metadata accessor for DateSequenceTimeline, MEMORY[0x1E69E62F8]);
    result = swift_getFunctionTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    result = swift_getFunctionTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    type metadata accessor for [NavigationDestinationResolverBase](255, &lazy cache variable for type metadata for [NavigationDestinationResolverBase], type metadata accessor for NavigationDestinationResolverBase, MEMORY[0x1E69E62F8]);
    result = swift_getFunctionTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_2(255, &lazy cache variable for type metadata for ToolbarStorage.SearchItem?, type metadata accessor for ToolbarStorage.SearchItem, MEMORY[0x1E69E6720]);
    result = swift_getFunctionTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    result = swift_getFunctionTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    type metadata accessor for SearchEnvironmentStorage.AllProperties?(255, &lazy cache variable for type metadata for [ViewResponder], MEMORY[0x1E697E210], MEMORY[0x1E69E62F8]);
    result = swift_getFunctionTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    type metadata accessor for [ToolbarPlacement.Role : ToolbarAppearanceConfiguration](255);
    result = swift_getFunctionTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    type metadata accessor for [NavigationLinkSelectionIdentifier : UpdateViewDestinationRequest](255);
    result = swift_getFunctionTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    type metadata accessor for Binding<Bool>(255, &lazy cache variable for type metadata for ()?, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E6720]);
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for NSUserActivity, 0x1E696B090);
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    result = swift_getFunctionTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    type metadata accessor for TextSelection(255);
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    type metadata accessor for [ContentScrollViewBox](255, &lazy cache variable for type metadata for NavigationTitleStorage?, &type metadata for NavigationTitleStorage, MEMORY[0x1E69E6720]);
    result = swift_getFunctionTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    type metadata accessor for EventFilter<()>(255, &lazy cache variable for type metadata for EditMenuPresentation?, &type metadata for EditMenuPresentation, MEMORY[0x1E69E6720]);
    result = swift_getFunctionTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    _sSay10Foundation3URLVGSgMaTm_0(255, &lazy cache variable for type metadata for [URL]?, type metadata accessor for [URL], MEMORY[0x1E69E6720]);
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    result = swift_getFunctionTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    result = swift_getFunctionTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    result = swift_getFunctionTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    result = swift_getFunctionTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    result = swift_getFunctionTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    result = swift_getFunctionTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    type metadata accessor for [String](255, &lazy cache variable for type metadata for [PrintAccessoryView], &type metadata for PrintAccessoryView, MEMORY[0x1E69E62F8]);
    result = swift_getFunctionTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

uint64_t static Optional<A>._makeCommands(content:inputs:)@<X0>(__int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t x8_0@<X8>)
{
  v8 = a2[1];
  v13[0] = *a2;
  v13[1] = v8;
  v14[0] = a2[2];
  *(v14 + 12) = *(a2 + 44);
  type metadata accessor for Optional();
  type metadata accessor for _GraphValue();
  v12[1] = _GraphValue.value.getter();
  type metadata accessor for _ConditionalContent();
  v10 = type metadata accessor for Optional<A>.Child(0, a3, a4, v9);
  swift_getWitnessTable(protocol conformance descriptor for A?<A>.Child, v10);
  _GraphValue.init<A>(_:)();
  return static _ConditionalContent<>._makeCommands(content:inputs:)(v12, v13, a3, &type metadata for EmptyCommands, a4, &protocol witness table for EmptyCommands, x8_0);
}

uint64_t type metadata accessor for Optional<A>.Child(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return __swift_instantiateGenericMetadata(a1, a2, a3, a4, &nominal type descriptor for Optional<A>.Child);
}

{
  return __swift_instantiateGenericMetadata(a1, a2, a3, a4, &nominal type descriptor for Optional<A>.Child);
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance A?<A>.Child(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for A?<A>.Child, a1);

  return MEMORY[0x1EEDDE9B8](a1, WitnessTable);
}

{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for A?<A>.Child, a1);

  return MEMORY[0x1EEDDE9B8](a1, WitnessTable);
}

uint64_t static _ConditionalContent<>._makeCommands(content:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v52 = *MEMORY[0x1E69E9840];
  v12 = *a1;
  *&v37[12] = *(a2 + 44);
  v13 = a2[1];
  v35 = *a2;
  v36 = v13;
  *v37 = a2[2];
  *&v41 = *&v37[16];
  DWORD2(v41) = *&v37[24];

  PreferencesInputs.makeIndirectOutputs()();

  v14 = v47;
  v15 = DWORD2(v47);
  v38 = v35;
  v39 = v36;
  *v40 = *v37;
  *&v40[12] = *&v37[12];
  *&v40[32] = v47;
  *&v40[40] = DWORD2(v47);
  LODWORD(v29) = v12;
  outlined init with copy of _CommandsInputs(&v35, &v47);
  type metadata accessor for _ConditionalContent();
  type metadata accessor for _GraphValue();

  _GraphValue.value.getter();
  v49 = *v40;
  *v50 = *&v40[16];
  *&v50[12] = *&v40[28];
  v47 = v38;
  v48 = v39;
  *&v41 = a3;
  *(&v41 + 1) = a4;
  *&v42 = a5;
  *(&v42 + 1) = a6;
  v16 = type metadata accessor for _ConditionalContent<>.CommandsProvider(0, &v41);
  v17 = *(v16 - 8);
  (*(v17 + 16))(&v41, &v38, v16);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _ConditionalContent<A, B><>.CommandsProvider, v16);
  _ConditionalContent.Container.init(content:provider:)();
  v31 = v43;
  v32 = v44;
  v33 = v45;
  v34 = v46;
  v29 = v41;
  v30 = v42;
  v26 = type metadata accessor for _ConditionalContent.Info();
  *&v47 = a3;
  *(&v47 + 1) = a4;
  *&v48 = v16;
  *(&v48 + 1) = WitnessTable;
  v19 = type metadata accessor for _ConditionalContent.Container();
  v27 = v19;
  v28 = swift_getWitnessTable(MEMORY[0x1E697F958], v19);
  v20 = *(v19 - 8);
  (*(v20 + 16))(&v47, &v41, v19);
  v21 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v29, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_2, v25, v19, MEMORY[0x1E69E73E0], v21, MEMORY[0x1E69E7410], v22);
  v49 = v31;
  *v50 = v32;
  *&v50[16] = v33;
  v51 = v34;
  v47 = v29;
  v48 = v30;
  v23 = *(v20 + 8);
  v23(&v47, v19);
  *&v29 = v14;
  DWORD2(v29) = v15;

  PreferencesOutputs.setIndirectDependency(_:)();
  v23(&v41, v19);
  (*(v17 + 8))(&v38, v16);

  *a7 = v14;
  *(a7 + 8) = v15;
  return result;
}

uint64_t initializeWithCopy for _ConditionalContent<>.CommandsProvider(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 2);
  *(a1 + 16) = a2[2];
  *(a1 + 24) = *(a2 + 3);
  v3 = a2[6];
  *(a1 + 40) = a2[5];
  *(a1 + 48) = v3;
  *(a1 + 56) = *(a2 + 14);
  *(a1 + 64) = a2[8];
  *(a1 + 72) = *(a2 + 18);

  return a1;
}

uint64_t destroy for _ConditionalContent<>.CommandsProvider(void *a1)
{
}

uint64_t type metadata completion function for NavigationStack(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t implicit closure #1 in static CommandsModifier._makeScene(modifier:inputs:body:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = a1;
  updated = type metadata accessor for CommandsModifier.UpdateList(0, a2, a3, a4);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for CommandsModifier<A>.UpdateList, updated);
  type metadata accessor for Attribute<(_:)>(0);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v8, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_25, v9, updated, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);
  return v7;
}

uint64_t type metadata completion function for Section(void *a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        swift_initStructMetadata();
        return 0;
      }
    }
  }

  return result;
}

uint64_t type metadata completion function for CommandMenu(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *assignWithTake for DropSession.LocalSession(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

void type metadata accessor for _PreferenceWritingModifier<ExtendedLaunchTestNameKey>()
{
  if (!lazy cache variable for type metadata for _PreferenceWritingModifier<ExtendedLaunchTestNameKey>)
  {
    v0 = type metadata accessor for _PreferenceWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _PreferenceWritingModifier<ExtendedLaunchTestNameKey>);
    }
  }
}

uint64_t static _PreferenceWritingModifier._makeScene(modifier:inputs:body:)(int *a1, _OWORD *a2, void (*a3)(uint64_t, __int128 *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a2[1];
  v15[0] = *a2;
  v15[1] = v7;
  v9 = *a2;
  v8 = a2[1];
  *v16 = a2[2];
  *&v16[12] = *(a2 + 44);
  v12 = v9;
  v13 = v8;
  *v14 = a2[2];
  *&v14[12] = *(a2 + 44);
  outlined init with copy of _SceneInputs(v15, &v21);
  PreferencesInputs.remove<A>(_:)();
  v17[0] = v12;
  v17[1] = v13;
  v18[0] = *v14;
  *(v18 + 12) = *&v14[12];
  v21 = v12;
  v22 = v13;
  v23[0] = *v14;
  *(v23 + 12) = *&v14[12];
  v10 = outlined init with copy of _SceneInputs(v17, v19);
  a3(v10, &v21);
  v19[0] = v21;
  v19[1] = v22;
  v20[0] = v23[0];
  *(v20 + 12) = *(v23 + 12);
  outlined destroy of _SceneInputs(v19);

  PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();

  v21 = v12;
  v22 = v13;
  v23[0] = *v14;
  *(v23 + 12) = *&v14[12];
  return outlined destroy of _SceneInputs(&v21);
}

uint64_t __isPlatformVersionAtLeast(int a1, int a2, int a3, int a4)
{
  if (qword_1EAA76DA8 == -1)
  {
    if (qword_1EAA76DB0)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_1EAA76DB0)
    {
      return _availability_version_check();
    }
  }

  if (qword_1EAA76DA0 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    __isPlatformVersionAtLeast_cold_2();
    a3 = v10;
    a4 = v9;
    v8 = _MergedGlobals < v11;
    if (_MergedGlobals > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_1EAA76D94 > a3)
      {
        return 1;
      }

      if (dword_1EAA76D94 >= a3)
      {
        return dword_1EAA76D98 >= a4;
      }
    }

    return 0;
  }

  v8 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t _initializeAvailabilityCheck(uint64_t result)
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = qword_1EAA76DB0;
  if (qword_1EAA76DB0)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x1EEE9AC60])
    {
      v1 = MEMORY[0x1EEE9AC60];
      qword_1EAA76DB0 = MEMORY[0x1EEE9AC60];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x18D010600](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &_MergedGlobals, &dword_1EAA76D94, &dword_1EAA76D98);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t type metadata completion function for _KeyboardShortcutPickerContent(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for _TuplePickerContent(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for Picker(uint64_t a1)
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

uint64_t type metadata completion function for Toggle(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HasKeyboardShortcut and conformance HasKeyboardShortcut()
{
  result = lazy protocol witness table cache variable for type HasKeyboardShortcut and conformance HasKeyboardShortcut;
  if (!lazy protocol witness table cache variable for type HasKeyboardShortcut and conformance HasKeyboardShortcut)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HasKeyboardShortcut, &type metadata for HasKeyboardShortcut, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HasKeyboardShortcut and conformance HasKeyboardShortcut);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HasKeyboardShortcut and conformance HasKeyboardShortcut;
  if (!lazy protocol witness table cache variable for type HasKeyboardShortcut and conformance HasKeyboardShortcut)
  {
    result = swift_getWitnessTable("Ż\bbP\b\b", &type metadata for HasKeyboardShortcut, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HasKeyboardShortcut and conformance HasKeyboardShortcut);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HasKeyboardShortcut and conformance HasKeyboardShortcut;
  if (!lazy protocol witness table cache variable for type HasKeyboardShortcut and conformance HasKeyboardShortcut)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HasKeyboardShortcut, &type metadata for HasKeyboardShortcut, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HasKeyboardShortcut and conformance HasKeyboardShortcut);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HasKeyboardShortcut and conformance HasKeyboardShortcut;
  if (!lazy protocol witness table cache variable for type HasKeyboardShortcut and conformance HasKeyboardShortcut)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HasKeyboardShortcut, &type metadata for HasKeyboardShortcut, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HasKeyboardShortcut and conformance HasKeyboardShortcut);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HasKeyboardShortcut and conformance HasKeyboardShortcut;
  if (!lazy protocol witness table cache variable for type HasKeyboardShortcut and conformance HasKeyboardShortcut)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HasKeyboardShortcut, &type metadata for HasKeyboardShortcut, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HasKeyboardShortcut and conformance HasKeyboardShortcut);
  }

  return result;
}

uint64_t type metadata completion function for CommandGroup(uint64_t a1)
{
  result = type metadata accessor for CommandOperation(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t static TupleCommandContent._makeCommands(content:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = a2[1];
  v38 = *a2;
  v6 = *a1;
  v39 = v5;
  *v40 = a2[2];
  *&v40[12] = *(a2 + 44);
  _s7SwiftUI15TupleDescriptorPAAE16tupleDescriptionyAA0c4TypeF0VyxGSo07AGTupleG0aFZAA08CommandsD0V_Tt1g5(a3, v36);
  v7 = *v36;
  *&v36[52] = *&v40[12];
  *&v36[40] = *v40;
  *&v36[24] = v39;
  *&v36[8] = v38;
  *v36 = v6;
  *&v36[72] = 0;
  v37 = MEMORY[0x1E69E7CC0];
  v8 = *(v7 + 16);
  if (v8)
  {
    outlined init with copy of _CommandsInputs(&v38, v34);
    v9 = (v7 + 40);
    do
    {
      v10 = *v9;
      v9 = (v9 + 24);
      *&v36[72] = AGTupleElementOffset();
      v34[0] = v10;
      List = type metadata accessor for TupleCommandContent.MakeList(0, a3, v11, v12);
      TypeConformance<>.visitType<A>(visitor:)(v36, List, &protocol witness table for TupleCommandContent<A>.MakeList);
      --v8;
    }

    while (v8);

    v14 = v37;
  }

  else
  {
    outlined init with copy of _CommandsInputs(&v38, v34);

    v14 = MEMORY[0x1E69E7CC0];
  }

  v15 = *(v14 + 16);
  if (v15)
  {
    *&v34[0] = MEMORY[0x1E69E7CC0];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15, 0);
    v16 = *&v34[0];
    v17 = (v14 + 40);
    do
    {
      v18 = *(v17 - 1);
      v19 = *v17;
      *&v34[0] = v16;
      v20 = *(v16 + 16);
      v21 = *(v16 + 24);

      if (v20 >= v21 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v20 + 1, 1);
        v16 = *&v34[0];
      }

      v17 += 4;
      *(v16 + 16) = v20 + 1;
      v22 = v16 + 16 * v20;
      *(v22 + 32) = v18;
      *(v22 + 40) = v19;
      --v15;
    }

    while (v15);
  }

  PreferencesOutputs.init()();
  v32 = *&v34[0];
  v33 = DWORD2(v34[0]);
  v23 = *(*&v40[16] + 16);
  if (v23)
  {
    lazy protocol witness table accessor for type PreferenceKeys and conformance PreferenceKeys();

    v24 = -v23;
    v25 = 1;
    do
    {
      v26 = protocol witness for Collection.subscript.read in conformance PreferenceKeys();
      v26(v34, 0);
      static PreferenceKey.visitKey<A>(_:)();
      ++v25;
    }

    while (v24 + v25 != 1);
  }

  else
  {
  }

  *a4 = v32;
  *(a4 + 8) = v33;
  v34[2] = *&v36[32];
  v34[3] = *&v36[48];
  v34[4] = *&v36[64];
  v35 = v37;
  v34[0] = *v36;
  v34[1] = *&v36[16];
  v29 = type metadata accessor for TupleCommandContent.MakeList(0, a3, v27, v28);
  return (*(*(v29 - 8) + 8))(v34, v29);
}

uint64_t _s7SwiftUI15TupleDescriptorPAAE16tupleDescriptionyAA0c4TypeF0VyxGSo07AGTupleG0aFZAA08CommandsD0V_Tt1g5@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = static CommandsDescriptor.typeCache;
  if (*(static CommandsDescriptor.typeCache + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v6 & 1) != 0))
  {
    *a2 = *(*(v4 + 56) + 8 * v5);
  }

  else
  {
    lazy protocol witness table accessor for type CommandsDescriptor and conformance CommandsDescriptor();
    TupleTypeDescription.init(_:)();
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = static CommandsDescriptor.typeCache;
    static CommandsDescriptor.typeCache = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, a1, isUniquelyReferenced_nonNull_native);
    static CommandsDescriptor.typeCache = v9;
    result = swift_endAccess();
    *a2 = v10;
  }

  return result;
}

void one-time initialization function for typeCache()
{
  static CommandsDescriptor.typeCache = MEMORY[0x1E69E7CC8];
}

{
  static SceneDescriptor.typeCache = MEMORY[0x1E69E7CC8];
}

{
  static ToolbarContentDescriptor.typeCache = MEMORY[0x1E69E7CC8];
}

{
  static AccessibilityRotorContentDescriptor.typeCache = MEMORY[0x1E69E7CC8];
}

{
  static TableColumnDescriptor.typeCache = MEMORY[0x1E69E7CC8];
}

{
  static NavigationDestinationDescriptor.typeCache = MEMORY[0x1E69E7CC8];
}

{
  static WidgetDescriptor.typeCache = MEMORY[0x1E69E7CC8];
}

{
  static TableRowDescriptor.typeCache = MEMORY[0x1E69E7CC8];
}

unint64_t lazy protocol witness table accessor for type CommandsDescriptor and conformance CommandsDescriptor()
{
  result = lazy protocol witness table cache variable for type CommandsDescriptor and conformance CommandsDescriptor;
  if (!lazy protocol witness table cache variable for type CommandsDescriptor and conformance CommandsDescriptor)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CommandsDescriptor, &type metadata for CommandsDescriptor, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CommandsDescriptor and conformance CommandsDescriptor);
  }

  return result;
}

void type metadata accessor for _DictionaryStorage<ObjectIdentifier, TupleTypeDescription<CommandsDescriptor>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, TupleTypeDescription<CommandsDescriptor>>)
  {
    _s7SwiftUI21ViewInputFlagModifierVyAA014InAdaptableTabC7ContextVGMaTm_0(255, &lazy cache variable for type metadata for TupleTypeDescription<CommandsDescriptor>, lazy protocol witness table accessor for type CommandsDescriptor and conformance CommandsDescriptor, &type metadata for CommandsDescriptor, MEMORY[0x1E697FAA8]);
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, TupleTypeDescription<CommandsDescriptor>>);
    }
  }
}

uint64_t TupleCommandContent.MakeList.visit<A>(type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  type metadata accessor for TupleCommandContent(255, *(a2 + 16), a3, a4);
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  AGGraphCreateOffsetAttribute2();
  _GraphValue.init(_:)();
  v8 = *(v4 + 24);
  v24[0] = *(v4 + 8);
  v24[1] = v8;
  v25[0] = *(v4 + 40);
  *(v25 + 12) = *(v4 + 52);
  v9 = *(v4 + 24);
  v18 = *(v4 + 8);
  v19 = v9;
  *v20 = *(v4 + 40);
  *&v20[12] = *(v4 + 52);
  v10 = *(a4 + 32);
  outlined init with copy of _CommandsInputs(v24, v26);
  v10(&v22, v21, &v18, a3, a4);
  v26[0] = v18;
  v26[1] = v19;
  v27[0] = *v20;
  *(v27 + 12) = *&v20[12];
  outlined destroy of _CommandsInputs(v26);
  v11 = v22;
  v12 = v23;
  v13 = *(v4 + 80);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 16) + 1, 1, v13);
    v13 = result;
  }

  v16 = *(v13 + 16);
  v15 = *(v13 + 24);
  if (v16 >= v15 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v13);
    v13 = result;
  }

  *(v13 + 16) = v16 + 1;
  v17 = v13 + 16 * v16;
  *(v17 + 32) = v11;
  *(v17 + 40) = v12;
  *(v5 + 80) = v13;
  return result;
}

uint64_t TypeConformance<>.visitType<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 8))(*v3, *v3, v3[1], a2);
}

{
  return (*(a3 + 8))(*v3, *v3, v3[1], a2);
}

{
  return (*(a3 + 8))(*v3, *v3, v3[1], a2);
}

{
  return (*(a3 + 8))(*v3, *v3, v3[1], a2);
}

{
  return (*(a3 + 8))(*v3, *v3, v3[1], a2);
}

{
  return (*(a3 + 8))(*v3, *v3, v3[1], a2);
}

uint64_t static CommandGroup._makeCommands(content:inputs:)()
{

  PreferencesOutputs.init()();
  PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();
}

uint64_t implicit closure #1 in static CommandGroup._makeCommands(content:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = *MEMORY[0x1E69E9840];
  type metadata accessor for CommandGroup(255, a2, a3, a4);
  type metadata accessor for _GraphValue();
  v11 = _GraphValue.value.getter();
  List = type metadata accessor for CommandGroup.MakeList(0, a2, a3, v6);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for CommandGroup<A>.MakeList, List);
  type metadata accessor for Attribute<CommandsList>();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v11, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_7, v12, List, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
  return v10;
}

void type metadata accessor for Attribute<CommandsList>()
{
  if (!lazy cache variable for type metadata for Attribute<CommandsList>)
  {
    v0 = type metadata accessor for Attribute();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Attribute<CommandsList>);
    }
  }
}

uint64_t destroy for TupleWidgetConfiguration.MakeList(void *a1)
{
}

uint64_t protocol witness for static _SceneModifier._makeScene(modifier:inputs:body:) in conformance _EnvironmentKeyWritingModifier<A>(int *a1, _OWORD *a2, void (*a3)(uint64_t, __int128 *), uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E6980A10], a5);

  return static _SceneModifier<>._makeScene(modifier:inputs:body:)(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t static _SceneModifier<>._makeScene(modifier:inputs:body:)(int *a1, _OWORD *a2, void (*a3)(uint64_t, __int128 *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a2[1];
  v22[0] = *a2;
  v22[1] = v9;
  v11 = *a2;
  v10 = a2[1];
  v23[0] = a2[2];
  *(v23 + 12) = *(a2 + 44);
  v12 = *a1;
  v19 = v11;
  v20 = v10;
  v21[0] = a2[2];
  *(v21 + 12) = *(a2 + 44);
  LODWORD(v26[0]) = v12;
  v13 = *(a6 + 8);
  outlined init with copy of _SceneInputs(v22, v28);
  v13(v26, &v19, a5, a6);
  v24[0] = v19;
  v24[1] = v20;
  v25[0] = v21[0];
  *(v25 + 12) = *(v21 + 12);
  v16 = v19;
  v17 = v20;
  v18[0] = v21[0];
  *(v18 + 12) = *(v21 + 12);
  v14 = outlined init with copy of _SceneInputs(v24, v28);
  a3(v14, &v16);
  v26[0] = v16;
  v26[1] = v17;
  v27[0] = v18[0];
  *(v27 + 12) = *(v18 + 12);
  outlined destroy of _SceneInputs(v26);
  v28[0] = v19;
  v28[1] = v20;
  v29[0] = v21[0];
  *(v29 + 12) = *(v21 + 12);
  return outlined destroy of _SceneInputs(v28);
}

uint64_t UIApplicationDelegateAdaptor<>.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return UIApplicationDelegateAdaptor<>.init(_:)(a1, a2, a3, type metadata accessor for ObservableFallbackDelegateBox, ObservableFallbackDelegateBox.__allocating_init());
}

{
  return UIApplicationDelegateAdaptor<>.init(_:)(a1, a2, a3, type metadata accessor for ObservableObjectFallbackDelegateBox, ObservableObjectFallbackDelegateBox.__allocating_init());
}

void NavigationPath.init()(uint64_t a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  *(a1 + 32) = MEMORY[0x1E69E7CC0];
  *(a1 + 40) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = v1;
  *(a1 + 24) = 0;
}

uint64_t get_witness_table_7SwiftUI5SceneRzRld__C11Observation10ObservableRd__r__lAA15ModifiedContentVyxAA30_EnvironmentKeyWritingModifierVyqd__SgGGAaBHpxAaBHD1__AjA01_cK0HpyHCHCTm(uint64_t a1)
{
  v1 = *(a1 + 16);
  type metadata accessor for Optional();
  type metadata accessor for _EnvironmentKeyWritingModifier();
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = &protocol witness table for _EnvironmentKeyWritingModifier<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v2, v4);
}

uint64_t type metadata completion function for Menu(uint64_t a1)
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

uint64_t getEnumTagSinglePayload for OnScrollVisibilityGeometryAction(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

void *ObservableFallbackDelegateBox.delegate.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
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
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<PreferencesOutputs>, MEMORY[0x1E697F450], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<SceneList.Item>, &type metadata for SceneList.Item, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 568);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[568 * v8])
    {
      memmove(v12, v13, 568 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
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
    type metadata accessor for _ContiguousArrayStorage<AccessibilityNodeAttachment>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Attribute<ViewList>>, type metadata accessor for Attribute<ViewList>, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ToolbarPlacement>, &type metadata for ToolbarPlacement, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
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
    type metadata accessor for _ContiguousArrayStorage<NavigationSplitViewColumnWidth?>(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 40 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
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
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<NavigationRequest>, &type metadata for NavigationRequest, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 168);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[168 * v8])
    {
      memmove(v12, v13, 168 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
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
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ToolbarStorage.ID>, &type metadata for ToolbarStorage.ID, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
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
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<GeneralItem>, &type metadata for GeneralItem, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = v8 << 6;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
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
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AccessibilityAttachment>, MEMORY[0x1E697FFF0], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 296);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[296 * v8])
    {
      memmove(v12, v13, 296 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
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
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<String>, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<TabEntry>, &type metadata for TabEntry, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 288);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[288 * v8])
    {
      memmove(v12, v13, 288 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
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
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<UniqueID>, MEMORY[0x1E6981D00], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    type metadata accessor for _ContiguousArrayStorage<AccessibilityNodeAttachment>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CGSize>, type metadata accessor for CGSize, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    memcpy(v13, v14, 16 * v8);
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
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CGFloat>, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_ScrollableLayoutItem>, &type metadata for _ScrollableLayoutItem, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[104 * v8])
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
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
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<TabCustomizationID>, &type metadata for TabCustomizationID, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
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
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ScalarDeceleration>, &type metadata for ScalarDeceleration, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 88 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
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
    type metadata accessor for _ContiguousArrayStorage<AccessibilityNodeAttachment>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ConformingTuple<Pack{Float, Float, Float, Float}>>, type metadata accessor for ConformingTuple<Pack{Float, Float, Float, Float}>, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    memcpy(v13, v14, 16 * v8);
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
    type metadata accessor for _ContiguousArrayStorage<AccessibilityNodeAttachment>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(Float, Float, Float, Float)>, type metadata accessor for (Float, Float, Float, Float), MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    memcpy(v13, v14, 16 * v8);
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
    type metadata accessor for _ContiguousArrayStorage<(Int, Int)>(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    memcpy(v13, v14, 16 * v8);
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
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<InterfaceOrientation>, &type metadata for InterfaceOrientation, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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
    type metadata accessor for _ContiguousArrayStorage<AccessibilityNodeAttachment>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AttributedStringKey.Type>, type metadata accessor for AttributedStringKey.Type, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    memcpy(v13, v14, 16 * v8);
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
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<PlatformItem>, MEMORY[0x1E697DED0], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 632);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[632 * v8])
    {
      memmove(v12, v13, 632 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
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
    type metadata accessor for _ContiguousArrayStorage<(key: Int, value: DragReorderableLayoutCoordinator.ChildFrame)>(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 56 * v8);
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
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Any>, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
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
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<DocumentLaunchScreenAction>, &type metadata for DocumentLaunchScreenAction, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
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
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<TextFormattingControl>, &type metadata for TextFormattingControl, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
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
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HostingScrollView.PlatformGroupContainer.SubstitutionCandidate>, &type metadata for HostingScrollView.PlatformGroupContainer.SubstitutionCandidate, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
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
    type metadata accessor for _ContiguousArrayStorage<ClosedRange<CGFloat>>(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    memcpy(v13, v14, 16 * v8);
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
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_Preview>, &type metadata for _Preview, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 95;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 7);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[128 * v8])
    {
      memmove(v13, v14, v8 << 7);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
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
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text>, MEMORY[0x1E6981148], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
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
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AccessibilityAttachment.Tree>, &type metadata for AccessibilityAttachment.Tree, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 304);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[304 * v8])
    {
      memmove(v12, v13, 304 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
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
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<TabItem>, &type metadata for TabItem, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[112 * v8])
    {
      memmove(v12, v13, 112 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
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
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Gradient.Stop>, MEMORY[0x1E6981AA8], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ToolbarStorage.Entry.ID>, &type metadata for ToolbarStorage.Entry.ID, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
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
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AccessibilityNodeProxy>, &type metadata for AccessibilityNodeProxy, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 184);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[184 * v8])
    {
      memmove(v12, v13, 184 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
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
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<StackItem>, &type metadata for StackItem, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<FocusableFillerBounds>, MEMORY[0x1E697FC28], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 112 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}