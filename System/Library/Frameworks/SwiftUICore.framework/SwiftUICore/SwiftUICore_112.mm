void MultiViewResponder.children.modify(void **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 3);
  if (a2)
  {

    MultiViewResponder.children.setter(v4);
  }

  else
  {
    MultiViewResponder.children.setter(v3);
  }

  free(v2);
}

uint64_t MultiViewResponder.__allocating_init()()
{
  v0 = swift_allocObject();
  MultiViewResponder.init()();
  return v0;
}

uint64_t MultiViewResponder.init()()
{
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 40) = MEMORY[0x1E69E7CC0];
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = v1;
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  swift_weakInit();
  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  v2 = swift_dynamicCastClassUnconditional();
  swift_beginAccess();
  swift_unknownObjectWeakLoadStrong();
  v3 = *(v2 + 208);

  swift_beginAccess();
  *(v0 + 24) = v3;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v0;
}

Swift::Void __swiftcall MultiViewResponder.childrenDidChange()()
{
  swift_beginAccess();
  v1 = *(v0 + 80);
  *(v0 + 80) = MEMORY[0x1E69E7CC0];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    do
    {
      outlined init with copy of ContentPathObservers.Observer(v3, v6);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v4 = v7;
        ObjectType = swift_getObjectType();
        (*(v4 + 8))(v0, ObjectType, v4);
        swift_unknownObjectRelease();
      }

      outlined destroy of ContentPathObservers.Observer(v6);
      v3 += 16;
      --v2;
    }

    while (v2);
  }

  swift_endAccess();
}

Swift::Void __swiftcall MultiViewResponder.resetGesture()()
{
  v1 = (*(*v0 + 208))();
  v2 = v1;
  if (v1 >> 62)
  {
    v3 = __CocoaSet.count.getter();
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v3; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x193AC03C0](i, v2);
    }

    else
    {
      v5 = *(v2 + 8 * i + 32);
    }

    (*(*v5 + 120))();
  }

LABEL_10:
}

double MultiViewResponder.__ivar_destroyer()
{

  return result;
}

void *MultiViewResponder.deinit(__n128 a1)
{
  outlined destroy of weak ViewGraphDelegate?(v1 + 16, a1);
  swift_weakDestroy();

  return v1;
}

uint64_t MultiViewResponder.__deallocating_deinit(__n128 a1)
{
  outlined destroy of weak ViewGraphDelegate?(v1 + 16, a1);
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t (*specialized protocol witness for Collection.subscript.read in conformance [A](uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x193AC03C0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return destroy for _AnyRadialGradient;
  }

  __break(1u);
  return result;
}

uint64_t *specialized protocol witness for Collection.subscript.read in conformance [A](uint64_t *result, unint64_t a2, uint64_t a3)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x193AC03C0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return destroy for Image.ResizableProvider;
  }

  __break(1u);
  return result;
}

unint64_t type metadata accessor for EventGraphHost()
{
  result = lazy cache variable for type metadata for EventGraphHost;
  if (!lazy cache variable for type metadata for EventGraphHost)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for EventGraphHost);
  }

  return result;
}

uint64_t ViewResponder.hitTest(globalPoint:radius:cacheKey:options:)(uint64_t a1, uint64_t *a2, double a3, double a4, double a5)
{
  v5 = *a2;
  if ((*a2 & 0x20) != 0)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1;
  }

  v7 = (*a2 & 0x20 | a1 & 0x100000000) != 0;
  if ((v5 & 0x20) == 0 && (a1 & 0x100000000) != 0)
  {
    v7 = 0;
    v6 = ++static ViewResponder.hitTestKey;
  }

  if ((v5 & 4) != 0)
  {
    v13[0] = v5;
    return ViewResponder.singlePointHitTest(globalPoint:cacheKey:options:)(v6 | (v7 << 32), v13, a3, a4);
  }

  else
  {
    hitPoints(point:radius:)(a3, a4, a5);
    v11 = v5;
    v12 = 0;
    LOBYTE(v13[0]) = v7;
    ViewResponder.hitTest(globalPoints:weights:mask:cacheKey:options:)(v8, v9, &v12, v6 | (v7 << 32), &v11, v13);

    return v13[0];
  }
}

id HitTestBindingResponder.__allocating_init(inputs:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = *(a1 + 48);
  *(v2 + 120) = *(a1 + 32);
  *(v2 + 136) = v3;
  *(v2 + 152) = *(a1 + 64);
  v4 = *(a1 + 16);
  *(v2 + 88) = *a1;
  *(v2 + 184) = 0u;
  *(v2 + 200) = 0u;
  *(v2 + 168) = *(a1 + 80);
  *(v2 + 104) = v4;
  result = AGSubgraphGetCurrent();
  if (result)
  {
    v6 = MEMORY[0x1E69E7CC0];
    *(v2 + 176) = result;
    *(v2 + 40) = v6;
    *(v2 + 48) = 0u;
    *(v2 + 64) = 0u;
    *(v2 + 80) = v6;
    *(v2 + 24) = 0;
    swift_unknownObjectWeakInit();
    swift_weakInit();
    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    v7 = swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    v8 = *(v7 + 208);

    swift_beginAccess();
    *(v2 + 24) = v8;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t HitTestBindingResponder.bindEvent(_:)(uint64_t a1)
{
  outlined init with copy of AnyTrackedValue(a1, v10);
  HitTestableEvent.init(_:)(v10, v11);
  if (v12 == 1)
  {
    return MultiViewResponder.bindEvent(_:)(a1);
  }

  v3 = 0;
  if (v17)
  {
    v4 = 0;
  }

  else
  {
    v4 = v16;
  }

  if ((v4 & 0x20) == 0)
  {
    v3 = ++static ViewResponder.hitTestKey;
  }

  if ((v4 & 4) != 0)
  {
    v10[0] = v4;
    LOBYTE(v9) = (v4 & 0x20) != 0;
    v7 = ViewResponder.singlePointHitTest(globalPoint:cacheKey:options:)(v3 | (v9 << 32), v10, v13, v14);
    outlined destroy of HitTestableEvent?(v11);
    result = v7;
    if (!v7)
    {
      return MultiViewResponder.bindEvent(_:)(a1);
    }
  }

  else
  {
    hitPoints(point:radius:)(v13, v14, v15);
    v8 = v4;
    v9 = 0;
    LOBYTE(v10[0]) = (v4 & 0x20) != 0;
    ViewResponder.hitTest(globalPoints:weights:mask:cacheKey:options:)(v5, v6, &v9, v3 | (LOBYTE(v10[0]) << 32), &v8, v10);
    outlined destroy of HitTestableEvent?(v11);

    result = v10[0];
    if (!v10[0])
    {
      return MultiViewResponder.bindEvent(_:)(a1);
    }
  }

  return result;
}

uint64_t HitTestBindingResponder.__allocating_init(inputs:viewSubgraph:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v4;
  v7[4] = *(a1 + 64);
  v8 = *(a1 + 80);
  v5 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v5;
  return DefaultLayoutViewResponder.init(inputs:viewSubgraph:)(v7, a2);
}

uint64_t ViewResponder.singlePointHitTest(globalPoint:cacheKey:options:)(unint64_t a1, uint64_t *a2, double a3, double a4)
{
  v8 = *a2;
  v24 = *a2;
  v9 = *(*v4 + 176);
  v9(&v23, &v24);
  if (v23 == 1)
  {
    return 0;
  }

  _sSay7SwiftUI13ViewResponderCGMaTm_5(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CGPoint>, type metadata accessor for CGPoint, MEMORY[0x1E69E6F90]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_18DDA6EB0;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  v23 = v8;
  v11 = HIDWORD(a1) & 1;
  *&v12 = a1;
  (*(*v4 + 184))(&v24);

  v13 = v25;
  if ((v24 & 1) == 0)
  {

    return 0;
  }

  if (v25 >> 62)
  {
LABEL_29:
    v16 = __CocoaSet.count.getter();
    if (v16)
    {
      goto LABEL_8;
    }

LABEL_30:

    goto LABEL_31;
  }

  v16 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
    goto LABEL_30;
  }

LABEL_8:
  v21 = v9;
  v22 = v4;
  v14 = 0;
  v9 = (v13 + 32);
  v17 = 0.0;
  v11 = *&v12 | (v11 << 32);
  while (!__OFSUB__(v16--, 1))
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x193AC03C0](v16, v13);
    }

    else
    {
      if ((v16 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      if (v16 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v4 = *(v9 + v16);
    }

    v24 = v8;
    v19 = ViewResponder.singlePointHitTest(globalPoint:cacheKey:options:)(v11, &v24, a3, a4);
    v12 = v20;

    if (v19)
    {
      if (v17 < v12)
      {
        if (!v14)
        {
          v17 = v12;
          v14 = v19;
          goto LABEL_12;
        }

        if (v19 != v14)
        {
          v17 = v12;
          v14 = v19;
        }
      }
    }

LABEL_12:
    if (!v16)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_24:

  v9 = v21;
  v4 = v22;
  if (!v14 || v17 <= 0.0)
  {
LABEL_31:
    v24 = v8;
    v9(&v23, &v24);

    if (!v23)
    {

      return v4;
    }

    return 0;
  }

  return v14;
}

void hitPoints(point:radius:)(double a1, double a2, double a3)
{
  v3 = fabs(a3);
  v4 = 1.0;
  v5 = 4.0;
  if (v3 > 1.0)
  {
    v4 = 60.0;
    if (v3 <= 60.0)
    {
      v5 = fmax(v3 / 6.0, 4.0);
      v4 = v3;
    }

    else
    {
      v5 = 10.0;
    }
  }

  v6 = ceil(v4 / v5);
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    return;
  }

  v7 = v6;
  if (v6 >= 6)
  {
    v8 = 6;
  }

  else
  {
    v8 = v6;
  }

  _sSay7SwiftUI13ViewResponderCGMaTm_5(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CGPoint>, type metadata accessor for CGPoint, MEMORY[0x1E69E6F90]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_18DDA6EB0;
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;
  type metadata accessor for _ShapeStyle_Pack.Style?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Double>, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6F90]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_18DDA6EB0;
  *(v10 + 32) = 0x4038000000000000;
  if (v7 < 1)
  {
    goto LABEL_28;
  }

  v12 = v10;
  if (v7 != 1)
  {
    v13.f64[0] = a1;
    v13.f64[1] = a2;
    v14 = 1;
    v15 = 4;
    v38 = v13;
    *&v11 = v5;
    while (v14 != v8)
    {
      ++v14;
      v40 = v11;
      v18 = __sincos_stret(6.28318531 / v15);
      *&v17 = v18.__cosval;
      *&v16 = v18.__sinval;
      v19 = v38;
      v11 = v40;
      v20 = v15;
      v21 = xmmword_18DDAA020;
      do
      {
        v23 = *(v9 + 16);
        v22 = *(v9 + 24);
        if (v23 >= v22 >> 1)
        {
          v33 = v17;
          v35 = v16;
          v31 = v21;
          v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v9);
          v21 = v31;
          v17 = v33;
          v16 = v35;
          v19 = v38;
          v11 = v40;
          v9 = v29;
        }

        *(v9 + 16) = v23 + 1;
        *(v9 + 16 * v23 + 32) = vaddq_f64(vmulq_n_f64(v21, *&v11), v19);
        v25 = *(v12 + 16);
        v24 = *(v12 + 24);
        if (v25 >= v24 >> 1)
        {
          v34 = v17;
          v36 = v16;
          v32 = v21;
          v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v12);
          v21 = v32;
          v17 = v34;
          v16 = v36;
          v19 = v38;
          v11 = v40;
          v12 = v30;
        }

        *(v12 + 16) = v25 + 1;
        *(v12 + 8 * v25 + 32) = 24.0 / v15;
        v26 = vmulq_n_f64(v21, *&v17);
        v27 = vmulq_n_f64(v21, *&v16);
        v28 = vextq_s8(v27, v27, 8uLL);
        *&v21.f64[0] = *&vsubq_f64(v26, v28);
        v21.f64[1] = vaddq_f64(v26, v28).f64[1];
        --v20;
      }

      while (v20);
      v15 += 4;
      *&v11 = v5 + *&v11;
      if (v14 == v8)
      {
        return;
      }
    }

    __break(1u);
    goto LABEL_25;
  }
}

void ViewResponder.hitTest(globalPoints:weights:mask:cacheKey:options:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a3;
  v12 = *a5;
  v54 = *a5;
  v13 = *(*v6 + 176);
  v13(v52, &v54);
  if (v52[0] == 1)
  {
    goto LABEL_2;
  }

  v41 = v13;
  *v52 = v12;
  v43 = HIDWORD(a4) & 1;
  v42 = a4;
  v14 = (*(*v6 + 184))(&v54, a1, a4 | (v43 << 32), v52);
  v15 = v55;
  v50 = v56;
  v16 = *(a1 + 16);
  v44 = a6;
  v45 = v6;
  if (!v16)
  {
    v18 = 0.0;
    a6 = v11;
    v19 = v11;
    goto LABEL_14;
  }

  v17 = v54;
  v48 = v54;
  if ((v11 & 1) != 0 || (v54 & 1) == 0)
  {
    a6 = v11 | 1;
    v18 = 0.0;
    v19 = v11;
    if (v16 == 1)
    {
      goto LABEL_14;
    }

    goto LABEL_36;
  }

  if (!*(a2 + 16))
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v18 = *(a2 + 32) + 0.0;
  if ((*(*v6 + 168))(v14) <= 0.5)
  {
    a6 = v11;
    v19 = v11;
  }

  else
  {
    v19 = v11 | 1;
    a6 = v11;
  }

  v17 = v48;
  if (v16 != 1)
  {
LABEL_36:
    v31 = (a2 + 40);
    v32 = 1;
    v47 = v16;
    while (v32 <= 0x3F)
    {
      v33 = 1 << v32;
      if (((1 << v32) & v11) != 0 || ((1 << v32) & v17) == 0)
      {
        goto LABEL_38;
      }

      if (v32 >= *(a2 + 16))
      {
        goto LABEL_70;
      }

      v35 = v11;
      v36 = v19;
      v18 = v18 + *v31;
      v6 = v45;
      if ((*(*v45 + 168))(v14) <= 0.5)
      {
        v19 = v36 & ~v33;
      }

      else
      {
        v19 = v36 | v33;
      }

      v11 = v35;
      v16 = v47;
      v17 = v48;
LABEL_39:
      ++v32;
      ++v31;
      if (v16 == v32)
      {
        goto LABEL_14;
      }
    }

    v33 = 0;
LABEL_38:
    a6 |= v33;
    goto LABEL_39;
  }

LABEL_14:
  v40 = v19;
  v6 = v45;
  v15 = v15 * (v18 * (*(*v45 + 168))(v14));
  if (v15 == 0.0)
  {

    *v44 = 0;
    v44[1] = 0;
    v44[2] = 0;
    return;
  }

  v16 = v50;
  if (v50 >> 62)
  {
LABEL_71:
    v20 = __CocoaSet.count.getter();
    if (v20)
    {
      goto LABEL_18;
    }

    goto LABEL_72;
  }

  v20 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v20)
  {
LABEL_18:
    v21 = v16;
    v22 = v16 & 0xC000000000000001;
    v23 = v21 & 0xFFFFFFFFFFFFFF8;
    v24 = v21 + 32;
    v25 = 0.0;
    v26 = 0.0;
    v46 = v22;
    v49 = 0;
    while (1)
    {
      if (__OFSUB__(v20--, 1))
      {
        __break(1u);
LABEL_51:

        v26 = v26 * 1.2;
        v6 = v45;
        goto LABEL_52;
      }

      v28 = v25;
      if (v22)
      {
        v6 = MEMORY[0x193AC03C0](v20, v50);
      }

      else
      {
        if ((v20 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          v37 = static Semantics.forced >= a6;
          goto LABEL_62;
        }

        if (v20 >= *(v23 + 16))
        {
          goto LABEL_60;
        }

        v6 = *(v24 + 8 * v20);
      }

      *v52 = a6;
      v53[0] = v12;
      ViewResponder.hitTest(globalPoints:weights:mask:cacheKey:options:)(a1, a2, v52, v42 | (v43 << 32), v53, &v54);

      if (v54)
      {
        a6 = v56;
        v29 = v55;
        if (v26 >= v55)
        {
        }

        else if (v25 >= v55)
        {

          v26 = v29;
        }

        else if (v49)
        {
          v6 = v54;
          v30 = v56;

          a6 = v30;
          v22 = v46;
          if (v6 != v49)
          {
            v26 = v25;
          }

          v25 = v29;
          v49 = v6;
        }

        else
        {
          v25 = v55;
          v26 = v28;
          v49 = v54;
        }
      }

      if (!v20)
      {
        goto LABEL_51;
      }
    }
  }

LABEL_72:

  v49 = 0;
  v25 = 0.0;
  v26 = 0.0;
LABEL_52:
  swift_beginAccess();
  v37 = static HitTestPassThroughFeature.overrideValue;
  a6 = v44;
  v38 = v41;
  if (static HitTestPassThroughFeature.overrideValue == 2)
  {
    if (one-time initialization token for v7 != -1)
    {
      swift_once();
    }

    LODWORD(a6) = static Semantics.v7;
    if (one-time initialization token for forced != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if ((byte_1ED53C51C & 1) == 0)
    {
      goto LABEL_61;
    }

    v37 = dyld_program_sdk_at_least();
LABEL_62:
    a6 = v44;
    v38 = v41;
  }

  if (!v49)
  {
    goto LABEL_68;
  }

  v39 = fmax(v26, 8.0);
  if (v37)
  {
    v39 = 0.0;
  }

  if (v39 < v25)
  {
    *a6 = v49;
    *(a6 + 8) = v15;
    *(a6 + 16) = v40;
  }

  else
  {
LABEL_68:
    v53[0] = v12;
    v38(&v51, v53);

    if (v51)
    {
LABEL_2:
      *a6 = 0;
      *(a6 + 8) = 0;
      *(a6 + 16) = 0;
      return;
    }

    *a6 = v6;
    *(a6 + 8) = v15;
    *(a6 + 16) = v40;
  }
}

uint64_t outlined destroy of HitTestableEvent?(uint64_t a1)
{
  type metadata accessor for _ShapeStyle_Pack.Style?(0, &lazy cache variable for type metadata for HitTestableEvent?, &type metadata for HitTestableEvent, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void DefaultLayoutViewResponder.makeGesture(inputs:)(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = a1[5];
  v35[4] = a1[4];
  v35[5] = v5;
  *v36 = a1[6];
  *&v36[12] = *(a1 + 108);
  v6 = a1[1];
  v35[0] = *a1;
  v35[1] = v6;
  v7 = a1[3];
  v35[2] = a1[2];
  v35[3] = v7;
  specialized _GestureInputs.makeDefaultOutputs<A>()(v32);
  v8 = v32[0];
  v9 = v32[1];
  v10 = v33;
  v11 = v34;
  if (!AGSubgraphIsValid())
  {
    goto LABEL_9;
  }

  v31 = v11;
  v30 = v8;
  v12 = AGSubgraphGetCurrent();
  if (!v12)
  {
    __break(1u);
    goto LABEL_11;
  }

  v13 = v12;
  v14 = v10;
  v15 = v36[24];
  v16 = v9;
  v17 = AGSubgraphGetGraph();
  v18 = AGSubgraphCreate();

  v19 = *(v3 + 184);
  *(v3 + 184) = v18;
  v20 = v18;

  AGSubgraphAddChild2();
  if (!*(v3 + 184))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  AGSubgraphAddChild();
  v9 = v16;
  v10 = v14;
  v11 = v31;
  if ((v15 & 0x10) == 0)
  {
    goto LABEL_7;
  }

  v21 = AGSubgraphGetGraph();
  v22 = AGSubgraphCreate();

  v23 = *(v3 + 192);
  *(v3 + 192) = v22;
  v24 = v22;

  v25 = *(v3 + 184);
  if (v25)
  {
    v26 = v25;
    AGSubgraphAddChild2();

LABEL_7:
    v27 = *(v3 + 184);
    if (v27)
    {
      v28 = v27;
      AGGraphClearUpdate();
      v29 = AGSubgraphGetCurrent();
      AGSubgraphSetCurrent();
      LODWORD(v8) = v30;
      closure #1 in DefaultLayoutViewResponder.makeGesture(inputs:)(v3, v35, v30 | (v9 << 32), v10, v31);
      AGSubgraphSetCurrent();

      AGGraphSetUpdate();
LABEL_9:
      *a2 = v8;
      *(a2 + 4) = v9;
      *(a2 + 8) = v10;
      *(a2 + 16) = v11;
      return;
    }

    goto LABEL_12;
  }

LABEL_13:
  __break(1u);
}

Swift::Void __swiftcall DefaultLayoutViewResponder.resetGesture()()
{
  v1 = v0[25];
  v2 = v0[26];
  v0[25] = 0;
  v0[26] = 0;
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v1, v2);
  v3 = v0[23];
  v0[23] = 0;

  v4 = v0[24];
  v0[24] = 0;

  v5 = (*(*v0 + 208))();
  v6 = v5;
  if (v5 >> 62)
  {
    v7 = __CocoaSet.count.getter();
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  if (v7 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v7; ++i)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x193AC03C0](i, v6);
    }

    else
    {
      v9 = *(v6 + 8 * i + 32);
    }

    (*(*v9 + 120))();
  }

LABEL_10:
}

uint64_t DefaultLayoutViewResponder.__allocating_init(inputs:)(uint64_t a1)
{
  v2 = swift_allocObject();
  DefaultLayoutViewResponder.init(inputs:)(a1);
  return v2;
}

double DefaultLayoutResponderFilter.children.getter()
{
  type metadata accessor for [ViewResponder](0);
  AGGraphGetValue();

  return result;
}

double key path getter for DefaultLayoutResponderFilter.children : DefaultLayoutResponderFilter@<D0>(void *a2@<X8>)
{
  type metadata accessor for [ViewResponder](0);
  *a2 = *AGGraphGetValue();

  return result;
}

double DefaultLayoutResponderFilter.children.setter(uint64_t a1)
{
  type metadata accessor for [ViewResponder](0);
  AGGraphSetValue();

  return result;
}

double (*DefaultLayoutResponderFilter.children.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *(a1 + 24) = *v1;
  type metadata accessor for [ViewResponder](0);
  *(a1 + 16) = v3;
  *a1 = *AGGraphGetValue();

  return DefaultLayoutResponderFilter.children.modify;
}

double DefaultLayoutResponderFilter.children.modify(uint64_t *a1, char a2)
{
  a1[1] = *a1;
  AGGraphSetValue();

  return result;
}

uint64_t (*DefaultLayoutResponderFilter.$children.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  *(a1 + 8) = *v1;
  return DefaultLayoutResponderFilter.$children.modify;
}

uint64_t DefaultLayoutResponderFilter.init(children:responder:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

Swift::Void __swiftcall DefaultLayoutResponderFilter.updateValue()()
{
  v1 = *(v0 + 8);
  type metadata accessor for [ViewResponder](0);
  AGGraphGetValue();
  if (v2)
  {
    v3 = *(*v1 + 320);

    v3(v4);
  }

  if (!AGGraphGetOutputValue())
  {
    type metadata accessor for _ContiguousArrayStorage<Swift.AnyObject>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_18DDAB4D0;
    *(v5 + 32) = v1;

    AGGraphSetOutputValue();
  }
}

uint64_t DefaultLayoutViewResponder.inputs.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 120);
  v4 = *(v1 + 152);
  v10 = *(v1 + 136);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 168);
  v6 = *(v1 + 104);
  v9[0] = *(v1 + 88);
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return outlined init with copy of _ViewInputs(v9, v8);
}

uint64_t DefaultLayoutViewResponder.__allocating_init(inputs:viewSubgraph:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  DefaultLayoutViewResponder.init(inputs:viewSubgraph:)(a1, a2);
  return v4;
}

uint64_t DefaultLayoutViewResponder.init(inputs:viewSubgraph:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  *(v2 + 120) = *(a1 + 32);
  *(v2 + 136) = v3;
  *(v2 + 152) = *(a1 + 64);
  v4 = *(a1 + 16);
  *(v2 + 88) = *a1;
  *(v2 + 200) = 0u;
  *(v2 + 184) = 0u;
  *(v2 + 168) = *(a1 + 80);
  *(v2 + 104) = v4;
  v5 = MEMORY[0x1E69E7CC0];
  *(v2 + 176) = a2;
  *(v2 + 40) = v5;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = v5;
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  swift_weakInit();
  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  v6 = swift_dynamicCastClassUnconditional();
  swift_beginAccess();
  swift_unknownObjectWeakLoadStrong();
  v7 = *(v6 + 208);

  swift_beginAccess();
  *(v2 + 24) = v7;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v2;
}

void specialized _GestureInputs.makeDefaultOutputs<A>()(uint64_t a1@<X8>)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = *(v1 + 120);
  v13 = 0;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for _ContiguousArrayStorage<Swift.AnyObject>(0, &lazy cache variable for type metadata for GesturePhase<()>, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for GesturePhase);
  type metadata accessor for DefaultRule<GesturePhase<()>>(0);
  lazy protocol witness table accessor for type DefaultRule<GestureDebug.Data> and conformance DefaultRule<A>(&lazy protocol witness table cache variable for type DefaultRule<GesturePhase<()>> and conformance DefaultRule<A>, type metadata accessor for DefaultRule<GesturePhase<()>>);
  v4 = Attribute.init<A>(body:value:flags:update:)();
  if ((v3 & 8) != 0)
  {
    v13 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for DefaultRule<GestureDebug.Data>(0, v6, v7, v8);
    lazy protocol witness table accessor for type DefaultRule<GestureDebug.Data> and conformance DefaultRule<A>(&lazy protocol witness table cache variable for type DefaultRule<GestureDebug.Data> and conformance DefaultRule<A>, type metadata accessor for DefaultRule<GestureDebug.Data>);
    v5 = Attribute.init<A>(body:value:flags:update:)();
  }

  else
  {
    v5 = *MEMORY[0x1E698D3F8];
  }

  v13 = *(v1 + 96);
  v14 = *(v1 + 104);
  outlined init with copy of PreferencesInputs(&v13, &v11);
  PreferencesInputs.makeIndirectOutputs()(&v11);

  v9 = v11;
  v10 = v12;

  *a1 = v4;
  *(a1 + 4) = v5;
  *(a1 + 8) = v9;
  *(a1 + 16) = v10;
}

void closure #1 in DefaultLayoutViewResponder.makeGesture(inputs:)(uint64_t a1, __int128 *a2, unint64_t a3, uint64_t a4, unsigned int a5)
{
  v63 = *MEMORY[0x1E69E9840];
  *&v55 = a1;

  v7 = Attribute.init<A>(body:value:flags:update:)();

  v8 = AGGraphGetAttributeGraph();
  if (!AGGraphGetContext())
  {
    __break(1u);
  }

  v9 = AGCreateWeakAttribute();
  v10 = v9;
  v11 = HIDWORD(v9);
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v10;
  *(v13 + 28) = v11;
  v14 = *(a1 + 200);
  v15 = *(a1 + 208);
  *(a1 + 200) = partial apply for closure #1 in closure #1 in DefaultLayoutViewResponder.makeGesture(inputs:);
  *(a1 + 208) = v13;

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v14, v15);

  v16 = *(a2 + 2);
  v17 = *(a2 + 40);
  v49 = *(a2 + 24);
  v50 = v17;
  v18 = *(a2 + 72);
  *v51 = *(a2 + 56);
  *&v51[16] = v18;
  *v34 = a2[6];
  *&v34[12] = *(a2 + 108);
  v19 = *(a1 + 104);
  v53 = *(a1 + 88);
  *v54 = v19;
  v20 = *(a1 + 120);
  v21 = *(a1 + 136);
  v22 = *(a1 + 152);
  *&v54[64] = *(a1 + 168);
  *&v54[32] = v21;
  *&v54[48] = v22;
  *&v54[16] = v20;
  v23 = *(a1 + 192);
  if (v23)
  {
    v24 = *(a1 + 192);
LABEL_6:
    v26 = *(a2 + 11);
    v35 = *a2;
    v36 = v16;
    v37 = *(a2 + 24);
    v38 = *(a2 + 40);
    v39[0] = *(a2 + 56);
    *(v39 + 12) = *(a2 + 68);
    outlined init with copy of _GestureInputs(a2, &v55);
    outlined init with copy of _ViewInputs(&v53, &v55);
    v27 = v23;
    outlined destroy of _ViewInputs(&v35);
    v28 = *v54;
    v52 = v53;
    v49 = *&v54[8];
    v50 = *&v54[24];
    *v51 = *&v54[40];
    *&v51[12] = *&v54[52];
    swift_beginAccess();
    v29 = v28[3];
    v40[1] = v28[2];
    v40[2] = v29;
    v30 = v28[5];
    v40[3] = v28[4];
    v40[4] = v30;
    v40[0] = v28[1];
    type metadata accessor for _ContiguousArrayStorage<Swift.AnyObject>(0, &lazy cache variable for type metadata for MutableBox<CachedEnvironment>, &type metadata for CachedEnvironment, type metadata accessor for MutableBox);
    v31 = swift_allocObject();
    memmove((v31 + 16), v28 + 1, 0x50uLL);
    outlined init with copy of CachedEnvironment(v40, &v55);

    v55 = v52;
    v57 = v49;
    v58 = v50;
    v59 = *v51;
    v60 = *&v51[16];
    v56 = v31;
    v61 = v24;
    v62[0] = *v34;
    *(v62 + 12) = *&v34[12];
    _s7SwiftUI13LayoutGesturePAAE05_makeD07gesture6inputsAA01_D7OutputsVyytGAA11_GraphValueVyxG_AA01_D6InputsVtFZAA07DefaultcD0V_Tt2B5(v7, &v55, &v41);
    specialized _GestureOutputs.overrideDefaultValues(_:)(v41, *(&v41 + 1), v42, a3, a4);

    v41 = v52;
    v43 = v49;
    v44 = v50;
    v45 = *v51;
    v46 = *&v51[16];
    v42 = v31;
    v47 = v24;
    v48[0] = *v34;
    *(v48 + 12) = *&v34[12];
    outlined destroy of _GestureInputs(&v41);
    return;
  }

  v25 = *(a1 + 184);
  if (v25)
  {
    v24 = v25;
    v23 = 0;
    goto LABEL_6;
  }

  __break(1u);
}

double closure #1 in closure #1 in DefaultLayoutViewResponder.makeGesture(inputs:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v4 = _threadTransactionID();
    specialized GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)(0, v4, a2, 1, 1);
  }

  return result;
}

double DefaultLayoutViewResponder.__ivar_destroyer()
{
  v1 = *(v0 + 136);
  v4[2] = *(v0 + 120);
  v4[3] = v1;
  v4[4] = *(v0 + 152);
  v5 = *(v0 + 168);
  v2 = *(v0 + 104);
  v4[0] = *(v0 + 88);
  v4[1] = v2;
  outlined destroy of _ViewInputs(v4);

  return outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(*(v0 + 200), *(v0 + 208));
}

uint64_t protocol witness for AnyGestureResponder.inputs.getter in conformance GestureResponder<A>@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 120);
  v4 = *(v1 + 152);
  v10 = *(v1 + 136);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 168);
  v6 = *(v1 + 104);
  v9[0] = *(v1 + 88);
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return outlined init with copy of _ViewInputs(v9, v8);
}

void lazy protocol witness table accessor for type DefaultLayoutResponderFilter and conformance DefaultLayoutResponderFilter()
{
  if (!lazy protocol witness table cache variable for type DefaultLayoutResponderFilter and conformance DefaultLayoutResponderFilter)
  {
    swift_getWitnessTable(protocol conformance descriptor for DefaultLayoutResponderFilter, &type metadata for DefaultLayoutResponderFilter, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type DefaultLayoutResponderFilter and conformance DefaultLayoutResponderFilter);
  }
}

void type metadata accessor for DefaultRule<GesturePhase<()>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for DefaultRule<GesturePhase<()>>)
  {
    type metadata accessor for _ContiguousArrayStorage<Swift.AnyObject>(255, &lazy cache variable for type metadata for GesturePhase<()>, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for GesturePhase);
    v3 = v2;
    lazy protocol witness table accessor for type GesturePhase<()> and conformance GesturePhase<A>();
    v6 = type metadata accessor for DefaultRule(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for DefaultRule<GesturePhase<()>>);
    }
  }
}

void lazy protocol witness table accessor for type GesturePhase<()> and conformance GesturePhase<A>()
{
  if (!lazy protocol witness table cache variable for type GesturePhase<()> and conformance GesturePhase<A>)
  {
    type metadata accessor for _ContiguousArrayStorage<Swift.AnyObject>(255, &lazy cache variable for type metadata for GesturePhase<()>, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for GesturePhase);
    swift_getWitnessTable(protocol conformance descriptor for GesturePhase<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type GesturePhase<()> and conformance GesturePhase<A>);
  }
}

void lazy protocol witness table accessor for type DefaultRule<GestureDebug.Data> and conformance DefaultRule<A>(unint64_t *a1, uint64_t (*a2)(uint64_t))
{
  if (!*a1)
  {
    v3 = a2(255);
    swift_getWitnessTable(protocol conformance descriptor for DefaultRule<A>, v3);
    atomic_store(v4, a1);
  }
}

void type metadata accessor for DefaultRule<GestureDebug.Data>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for DefaultRule<GestureDebug.Data>)
  {
    v4 = type metadata accessor for DefaultRule(0, &type metadata for GestureDebug.Data, &protocol witness table for GestureDebug.Data, a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for DefaultRule<GestureDebug.Data>);
    }
  }
}

double static ViewResponder.ContainsPointsResult.passthrough(to:)@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = a1;

  return result;
}

uint64_t ViewResponder.init()()
{
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  swift_weakInit();
  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  v1 = swift_dynamicCastClassUnconditional();
  swift_beginAccess();
  swift_unknownObjectWeakLoadStrong();
  v2 = *(v1 + 208);

  swift_beginAccess();
  *(v0 + 24) = v2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t ViewResponder.deinit(__n128 a1)
{
  outlined destroy of weak ViewGraphDelegate?(v1 + 16, a1);
  swift_weakDestroy();
  return v1;
}

uint64_t ViewResponder.description.getter()
{
  MEMORY[0x193ABEDD0](0x2865646F6ELL, 0xE500000000000000);
  _print_unlocked<A, B>(_:_:)();
  v1 = MEMORY[0x193ABEDD0](32, 0xE100000000000000);
  v2 = (*(*v0 + 224))(v1);
  MEMORY[0x193ABEDD0](v2);

  MEMORY[0x193ABEDD0](41, 0xE100000000000000);
  return 0;
}

double ViewResponder.ContainsPointsCache.init()@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

void *ViewResponder.ContainsPointsResult.init(mask:priority:children:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = *result;
  *(a3 + 8) = a4;
  *(a3 + 16) = a2;
  return result;
}

void ViewResponder.ContainsPointsCache.fetch(key:_:)(uint64_t a1@<X0>, void (*a2)(void *__return_ptr)@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v7 = v3[3];
  if (!v7 || (*v3 & 0x100000000) != 0 || (a1 & 0x100000000) != 0 || *v3 != a1)
  {
    a2(v12);
    v9 = v12[0];
    v10 = v12[1];
    v11 = v12[2];

    *v4 = a1 & 0x1FFFFFFFFLL;
    v4[1] = v9;
    v4[2] = v10;
    v4[3] = v11;
    *a3 = v9;
    a3[1] = v10;
    a3[2] = v11;
  }

  else
  {
    v8 = v3[2];
    *a3 = v3[1];
    a3[1] = v8;
    a3[2] = v7;
  }
}

uint64_t ViewResponder.containsGlobalPoints(_:cacheKey:options:)@<X0>(void *a1@<X8>)
{
  result = (*(*v1 + 208))();
  *a1 = 0;
  a1[1] = 0;
  a1[2] = result;
  return result;
}

uint64_t ViewResponder.init(host:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  swift_weakInit();
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v2;
}

double ViewResponder.parent.setter(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    if (!a1)
    {
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v4 = v1[3];
        ObjectType = swift_getObjectType();
        v6 = type metadata accessor for EventGraphHost();
        (*(v4 + 16))(v9, v6, v6, ObjectType, v4);
        swift_unknownObjectRelease();
        if (v9[0])
        {
          v7 = v9[1];
          v8 = swift_getObjectType();
          (*(v7 + 8))(v8, v7);
          swift_unknownObjectRelease();
          EventBindingManager.willRemoveResponder(_:)(v1);
          (*(*v1 + 120))();
        }
      }
    }
  }

  swift_weakAssign();

  return result;
}

uint64_t ViewResponder.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  swift_weakInit();
  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  v1 = swift_dynamicCastClassUnconditional();
  swift_beginAccess();
  swift_unknownObjectWeakLoadStrong();
  v2 = *(v1 + 208);

  swift_beginAccess();
  *(v0 + 24) = v2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t ViewResponder.__allocating_init(host:)(uint64_t a1, uint64_t a2)
{
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  swift_weakInit();
  swift_beginAccess();
  *(v3 + 24) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v3;
}

uint64_t key path setter for ViewResponder.parent : ViewResponder(uint64_t *a1, uint64_t *a2)
{
  ViewResponder.parent.willset(*a1);
  swift_beginAccess();
  return swift_weakAssign();
}

double ViewResponder.parent.willset(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    if (!a1)
    {
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v4 = v1[3];
        ObjectType = swift_getObjectType();
        v6 = type metadata accessor for EventGraphHost();
        (*(v4 + 16))(v9, v6, v6, ObjectType, v4);
        swift_unknownObjectRelease();
        if (v9[0])
        {
          v7 = v9[1];
          v8 = swift_getObjectType();
          (*(v7 + 8))(v8, v7);
          swift_unknownObjectRelease();
          EventBindingManager.willRemoveResponder(_:)(v1);
          (*(*v1 + 120))();
        }
      }
    }
  }

  return result;
}

void (*ViewResponder.parent.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  swift_beginAccess();
  *(v4 + 64) = swift_weakLoadStrong();
  return ViewResponder.parent.modify;
}

void ViewResponder.parent.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 64);
  if (a2)
  {

    ViewResponder.parent.willset(v4);
    swift_weakAssign();
  }

  else
  {
    if (swift_weakLoadStrong())
    {

      if (!v3)
      {
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v5 = *(v2[9] + 24);
          ObjectType = swift_getObjectType();
          v7 = type metadata accessor for EventGraphHost();
          (*(v5 + 16))(v7, v7, ObjectType, v5);
          swift_unknownObjectRelease();
          if (v2[6])
          {
            v8 = v2[9];
            v9 = v2[7];
            v10 = swift_getObjectType();
            (*(v9 + 8))(v10, v9);
            swift_unknownObjectRelease();
            EventBindingManager.willRemoveResponder(_:)(v8);
            (*(*v8 + 120))();
          }
        }
      }
    }

    swift_weakAssign();
  }

  free(v2);
}

Swift::Int ViewResponder.HitTestPolicy.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

void static ViewResponder.ContainsPointsResult.stop.getter(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = MEMORY[0x1E69E7CC0];
}

void *ViewResponder.descriptionChildren.getter()
{
  v1 = (*(*v0 + 208))();
  v2 = specialized _arrayForceCast<A, B>(_:)(v1);

  return v2;
}

Swift::Void __swiftcall ViewResponder.printTree(depth:)(Swift::Int depth)
{
  v2 = v1;
  v21 = indentString(_:)(depth);
  v22 = v4;
  MEMORY[0x193ABEDD0](43, 0xE100000000000000);
  v20[0] = 0;
  v20[1] = 0xE000000000000000;
  v5 = MEMORY[0x193ABEDD0](32, 0xE100000000000000);
  v6 = (*(*v1 + 224))(v5);
  MEMORY[0x193ABEDD0](v6);

  MEMORY[0x193ABEDD0](32, 0xE100000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](32, 0xE100000000000000);
  MEMORY[0x193ABEDD0](0, 0xE000000000000000);

  (*(*v1 + 240))(&v21);
  v8 = v21;
  v7 = v22;
  if (one-time initialization token for events != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Log.events);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, v20);
    _os_log_impl(&dword_18D018000, v10, v11, "%s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x193AC4820](v13, -1, -1);
    MEMORY[0x193AC4820](v12, -1, -1);
  }

  v14 = (*(*v2 + 208))();
  v15 = v14;
  if (!(v14 >> 62))
  {
    v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_7;
    }

LABEL_15:

    return;
  }

  v16 = __CocoaSet.count.getter();
  if (!v16)
  {
    goto LABEL_15;
  }

LABEL_7:
  v17 = __OFADD__(depth, 1);
  v18 = depth + 1;
  if (v17)
  {
    __break(1u);
  }

  else if (v16 >= 1)
  {
    for (i = 0; i != v16; ++i)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        MEMORY[0x193AC03C0](i, v15);
      }

      else
      {
      }

      ViewResponder.printTree(depth:)(v18);
    }

    goto LABEL_15;
  }

  __break(1u);
}

uint64_t indentString(_:)(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      do
      {
        MEMORY[0x193ABEDD0](8316, 0xE200000000000000);
        --v1;
      }

      while (v1);
      return 0;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t ViewResponder.__ivar_destroyer(__n128 a1)
{
  outlined destroy of weak ViewGraphDelegate?(v1 + 16, a1);

  return swift_weakDestroy();
}

uint64_t ViewResponder.__deallocating_deinit()
{

  outlined destroy of weak ViewGraphDelegate?(v0 + 16, v1);
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

void *protocol witness for CustomRecursiveStringConvertible.descriptionChildren.getter in conformance ViewResponder()
{
  v1 = (*(**v0 + 208))();
  v2 = specialized _arrayForceCast<A, B>(_:)(v1);

  return v2;
}

uint64_t static ViewGraph.eventGraphHost.getter()
{
  specialized static GraphHost.currentHost.getter();
  v0 = swift_dynamicCastClassUnconditional();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v1 = *(v0 + 208);

    ObjectType = swift_getObjectType();
    v3 = type metadata accessor for EventGraphHost();
    (*(v1 + 16))(&v5, v3, v3, ObjectType, v1);
    swift_unknownObjectRelease();
    return v5;
  }

  else
  {

    return 0;
  }
}

uint64_t specialized closure #1 in sequence<A>(first:next:)(uint64_t *a1, void (*a2)(uint64_t *__return_ptr, uint64_t *))
{
  v2 = *a1;
  if (*(a1 + 8) == 1)
  {
    *(a1 + 8) = 0;
  }

  else if (v2)
  {
    v7 = *a1;

    a2(&v8, &v7);

    v5 = v8;

    *a1 = v5;
    return v5;
  }

  return v2;
}

uint64_t specialized closure #1 in sequence<A>(first:next:)@<X0>(uint64_t *a1@<X0>, void (*a2)(uint64_t *__return_ptr, uint64_t *)@<X1>, uint64_t *a3@<X8>)
{
  result = specialized closure #1 in sequence<A>(first:next:)(a1, a2);
  *a3 = result;
  return result;
}

void lazy protocol witness table accessor for type ViewResponder.HitTestPolicy and conformance ViewResponder.HitTestPolicy()
{
  if (!lazy protocol witness table cache variable for type ViewResponder.HitTestPolicy and conformance ViewResponder.HitTestPolicy)
  {
    swift_getWitnessTable(protocol conformance descriptor for ViewResponder.HitTestPolicy, &type metadata for ViewResponder.HitTestPolicy, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ViewResponder.HitTestPolicy and conformance ViewResponder.HitTestPolicy);
  }
}

void lazy protocol witness table accessor for type ViewResponder.ContainsPointsOptions and conformance ViewResponder.ContainsPointsOptions()
{
  if (!lazy protocol witness table cache variable for type ViewResponder.ContainsPointsOptions and conformance ViewResponder.ContainsPointsOptions)
  {
    swift_getWitnessTable(protocol conformance descriptor for ViewResponder.ContainsPointsOptions, &type metadata for ViewResponder.ContainsPointsOptions, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ViewResponder.ContainsPointsOptions and conformance ViewResponder.ContainsPointsOptions);
  }
}

{
  if (!lazy protocol witness table cache variable for type ViewResponder.ContainsPointsOptions and conformance ViewResponder.ContainsPointsOptions)
  {
    swift_getWitnessTable(protocol conformance descriptor for ViewResponder.ContainsPointsOptions, &type metadata for ViewResponder.ContainsPointsOptions, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ViewResponder.ContainsPointsOptions and conformance ViewResponder.ContainsPointsOptions);
  }
}

{
  if (!lazy protocol witness table cache variable for type ViewResponder.ContainsPointsOptions and conformance ViewResponder.ContainsPointsOptions)
  {
    swift_getWitnessTable(protocol conformance descriptor for ViewResponder.ContainsPointsOptions, &type metadata for ViewResponder.ContainsPointsOptions, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ViewResponder.ContainsPointsOptions and conformance ViewResponder.ContainsPointsOptions);
  }
}

{
  if (!lazy protocol witness table cache variable for type ViewResponder.ContainsPointsOptions and conformance ViewResponder.ContainsPointsOptions)
  {
    swift_getWitnessTable(protocol conformance descriptor for ViewResponder.ContainsPointsOptions, &type metadata for ViewResponder.ContainsPointsOptions, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ViewResponder.ContainsPointsOptions and conformance ViewResponder.ContainsPointsOptions);
  }
}

void lazy protocol witness table accessor for type ViewResponder.Features and conformance ViewResponder.Features()
{
  if (!lazy protocol witness table cache variable for type ViewResponder.Features and conformance ViewResponder.Features)
  {
    swift_getWitnessTable(protocol conformance descriptor for ViewResponder.Features, &type metadata for ViewResponder.Features, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ViewResponder.Features and conformance ViewResponder.Features);
  }
}

{
  if (!lazy protocol witness table cache variable for type ViewResponder.Features and conformance ViewResponder.Features)
  {
    swift_getWitnessTable(protocol conformance descriptor for ViewResponder.Features, &type metadata for ViewResponder.Features, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ViewResponder.Features and conformance ViewResponder.Features);
  }
}

{
  if (!lazy protocol witness table cache variable for type ViewResponder.Features and conformance ViewResponder.Features)
  {
    swift_getWitnessTable(protocol conformance descriptor for ViewResponder.Features, &type metadata for ViewResponder.Features, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ViewResponder.Features and conformance ViewResponder.Features);
  }
}

{
  if (!lazy protocol witness table cache variable for type ViewResponder.Features and conformance ViewResponder.Features)
  {
    swift_getWitnessTable(protocol conformance descriptor for ViewResponder.Features, &type metadata for ViewResponder.Features, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ViewResponder.Features and conformance ViewResponder.Features);
  }
}

uint64_t initializeWithCopy for ViewResponder.ContainsPointsCache(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t assignWithCopy for ViewResponder.ContainsPointsCache(uint64_t a1, int *a2)
{
  v3 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *a1 = v3;
  *(a1 + 8) = *(a2 + 1);
  *(a1 + 16) = *(a2 + 2);
  *(a1 + 24) = *(a2 + 3);

  return a1;
}

uint64_t assignWithTake for ViewResponder.ContainsPointsCache(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

void *assignWithCopy for ViewResponder.ContainsPointsResult(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];

  return a1;
}

void *assignWithTake for ViewResponder.ContainsPointsResult(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];

  return a1;
}

uint64_t TrivialContentPathObserver.contentPathDidChange(for:changes:transform:finished:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6, uint64_t a7)
{
  result = (*(a7 + 16))(a1, a6, a7, a4);
  *a5 = 1;
  return result;
}

void lazy protocol witness table accessor for type ContentPathChanges and conformance ContentPathChanges()
{
  if (!lazy protocol witness table cache variable for type ContentPathChanges and conformance ContentPathChanges)
  {
    swift_getWitnessTable(protocol conformance descriptor for ContentPathChanges, &type metadata for ContentPathChanges, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ContentPathChanges and conformance ContentPathChanges);
  }
}

{
  if (!lazy protocol witness table cache variable for type ContentPathChanges and conformance ContentPathChanges)
  {
    swift_getWitnessTable(protocol conformance descriptor for ContentPathChanges, &type metadata for ContentPathChanges, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ContentPathChanges and conformance ContentPathChanges);
  }
}

{
  if (!lazy protocol witness table cache variable for type ContentPathChanges and conformance ContentPathChanges)
  {
    swift_getWitnessTable(protocol conformance descriptor for ContentPathChanges, &type metadata for ContentPathChanges, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ContentPathChanges and conformance ContentPathChanges);
  }
}

{
  if (!lazy protocol witness table cache variable for type ContentPathChanges and conformance ContentPathChanges)
  {
    swift_getWitnessTable(protocol conformance descriptor for ContentPathChanges, &type metadata for ContentPathChanges, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ContentPathChanges and conformance ContentPathChanges);
  }
}

uint64_t BlurStyle.init(radius:isOpaque:dither:hardEdges:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = a4;
  *(a3 + 8) = result;
  *(a3 + 9) = a2;
  return result;
}

double (*BlurStyle.animatableData.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return ViewSize.width.modify;
}

void BlurStyle.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 9);
  if (*v2 != 0.0)
  {
    v7 = fabs(v4);
    if (v7 >= 65536.0)
    {
      v8 = 9;
    }

    else
    {
      v8 = 13;
    }

    ProtobufEncoder.encodeVarint(_:)(v8);
    if (v7 < 65536.0)
    {
      v9 = a1[1];
      v10 = v9 + 4;
      if (!__OFADD__(v9, 4))
      {
        *&v4 = v4;
        if (a1[2] >= v10)
        {
          a1[1] = v10;
          *(*a1 + v9) = LODWORD(v4);
          goto LABEL_12;
        }

        goto LABEL_19;
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      *ProtobufEncoder.growBufferSlow(to:)(v10) = LODWORD(v4);
      goto LABEL_12;
    }

    v11 = a1[1];
    v10 = v11 + 8;
    if (__OFADD__(v11, 8))
    {
      goto LABEL_18;
    }

    if (a1[2] < v10)
    {
      *ProtobufEncoder.growBufferSlow(to:)(v10) = v4;
    }

    else
    {
      a1[1] = v10;
      *(*a1 + v11) = v4;
    }
  }

LABEL_12:
  if (v5)
  {
    ProtobufEncoder.encodeVarint(_:)(0x10uLL);
    ProtobufEncoder.encodeVarint(_:)(1uLL);
  }

  if (v6)
  {
    ProtobufEncoder.encodeVarint(_:)(0x18uLL);
    ProtobufEncoder.encodeVarint(_:)(1uLL);
  }
}

unint64_t BlurStyle.init(from:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = result;
  v5 = *(result + 8);
  v6 = *(result + 16);
  if (v5 >= v6)
  {
    v8 = 0;
    v7 = 0;
    v9 = 0.0;
LABEL_58:
    v3[3] = 0;
    *a2 = v9;
    *(a2 + 8) = v7;
    *(a2 + 9) = v8;
    return result;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0.0;
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
    v11 = result >> 3;
    v12 = result & 7;
    if (result >> 3 == 3)
    {
      break;
    }

    if (v11 == 2)
    {
      if ((result & 7) != 0)
      {
        if (v12 != 2)
        {
          goto LABEL_56;
        }

        result = ProtobufDecoder.decodeVarint()(result);
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_61;
        }

        v14 = v3[1] + result;
        if (v6 < v14)
        {
          goto LABEL_56;
        }

        v3[3] = 16;
        v3[4] = v14;
      }

      result = ProtobufDecoder.decodeVarint()(result);
      if (v2)
      {
        return result;
      }

      v7 = result != 0;
    }

    else if (v11 == 1)
    {
      if (v12 == 5)
      {
        v17 = v3[1];
        if (v6 < (v17 + 1))
        {
          goto LABEL_56;
        }

        v18 = *v17;
        v3[1] = v17 + 1;
        v9 = v18;
      }

      else
      {
        if (v12 == 2)
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

          v13 = v3[1];
          if (v6 < v13 + result)
          {
            goto LABEL_56;
          }

          v3[3] = 9;
          v3[4] = v13 + result;
        }

        else
        {
          if (v12 != 1)
          {
            goto LABEL_56;
          }

          v13 = v3[1];
        }

        if (v6 < (v13 + 1))
        {
          goto LABEL_56;
        }

        v9 = *v13;
        v3[1] = v13 + 1;
      }
    }

    else
    {
      if ((result & 7) > 1)
      {
        if (v12 == 2)
        {
          result = ProtobufDecoder.decodeVarint()(result);
          if (v2)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_63;
          }

          v16 = v3[1] + result;
          if (v6 < v16)
          {
            goto LABEL_56;
          }
        }

        else
        {
          if (v12 != 5)
          {
            goto LABEL_56;
          }

          v16 = v3[1] + 4;
          if (v6 < v16)
          {
            goto LABEL_56;
          }
        }

        goto LABEL_3;
      }

      if ((result & 7) != 0)
      {
        if (v12 != 1)
        {
          goto LABEL_56;
        }

        v16 = v3[1] + 8;
        if (v6 < v16)
        {
          goto LABEL_56;
        }

LABEL_3:
        v3[1] = v16;
        goto LABEL_4;
      }

      result = ProtobufDecoder.decodeVarint()(result);
      if (v2)
      {
        return result;
      }
    }

LABEL_4:
    v5 = v3[1];
    if (v5 >= v6)
    {
      goto LABEL_58;
    }
  }

  if ((result & 7) == 0)
  {
LABEL_32:
    result = ProtobufDecoder.decodeVarint()(result);
    if (v2)
    {
      return result;
    }

    v8 = result != 0;
    goto LABEL_4;
  }

  if (v12 != 2)
  {
    goto LABEL_56;
  }

  result = ProtobufDecoder.decodeVarint()(result);
  if (v2)
  {
    return result;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v15 = v3[1] + result;
    if (v6 < v15)
    {
      goto LABEL_56;
    }

    v3[3] = 24;
    v3[4] = v15;
    goto LABEL_32;
  }

  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for BlurStyle(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 10))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for BlurStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

Swift::Int Image.Interpolation.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

uint64_t Image.interpolation(_:)(char *a1, uint64_t a2)
{
  v3 = *a1;
  type metadata accessor for ImageProviderBox<Image.InterpolationProvider>(0, &lazy cache variable for type metadata for ImageProviderBox<Image.InterpolationProvider>, lazy protocol witness table accessor for type Image.InterpolationProvider and conformance Image.InterpolationProvider, &unk_1F0073168);
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = v3;

  return v4;
}

void lazy protocol witness table accessor for type Image.InterpolationProvider and conformance Image.InterpolationProvider()
{
  if (!lazy protocol witness table cache variable for type Image.InterpolationProvider and conformance Image.InterpolationProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for Image.InterpolationProvider, &unk_1F0073168, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Image.InterpolationProvider and conformance Image.InterpolationProvider);
  }
}

{
  if (!lazy protocol witness table cache variable for type Image.InterpolationProvider and conformance Image.InterpolationProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for Image.InterpolationProvider, &unk_1F0073168, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Image.InterpolationProvider and conformance Image.InterpolationProvider);
  }
}

uint64_t Image.antialiased(_:)(char a1, uint64_t a2)
{
  type metadata accessor for ImageProviderBox<Image.InterpolationProvider>(0, &lazy cache variable for type metadata for ImageProviderBox<Image.AntialiasedProvider>, lazy protocol witness table accessor for type Image.AntialiasedProvider and conformance Image.AntialiasedProvider, &unk_1F00730E8);
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = a1;

  return v4;
}

void type metadata accessor for ImageProviderBox<Image.InterpolationProvider>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    v7 = a3();
    v9 = type metadata accessor for ImageProviderBox(a1, a4, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void lazy protocol witness table accessor for type Image.AntialiasedProvider and conformance Image.AntialiasedProvider()
{
  if (!lazy protocol witness table cache variable for type Image.AntialiasedProvider and conformance Image.AntialiasedProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for Image.AntialiasedProvider, &unk_1F00730E8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Image.AntialiasedProvider and conformance Image.AntialiasedProvider);
  }
}

{
  if (!lazy protocol witness table cache variable for type Image.AntialiasedProvider and conformance Image.AntialiasedProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for Image.AntialiasedProvider, &unk_1F00730E8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Image.AntialiasedProvider and conformance Image.AntialiasedProvider);
  }
}

void protocol witness for ImageProvider.resolve(in:) in conformance Image.InterpolationProvider(uint64_t a1@<X8>)
{
  v3 = v1[8];
  (*(**v1 + 80))();
  *(a1 + 106) = v3;
  Image.Resolved.image.didset();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance Image.InterpolationProvider(unsigned __int8 *a1, uint64_t a2)
{
  v2 = a1[8];
  v3 = *(a2 + 8);
  return (*a1 == *a2 || ((*(**a1 + 96))() & 1) != 0) && v2 == v3;
}

void protocol witness for ImageProvider.resolve(in:) in conformance Image.AntialiasedProvider(uint64_t a1@<X8>)
{
  v3 = v1[8];
  (*(**v1 + 80))();
  *(a1 + 105) = v3;
  Image.Resolved.image.didset();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Image.AntialiasedProvider(unsigned __int8 *a1, uint64_t a2)
{
  v2 = a1[8];
  v3 = *(a2 + 8);
  if (*a1 == *a2 || ((*(**a1 + 96))() & 1) != 0)
  {
    return v2 ^ v3 ^ 1u;
  }

  else
  {
    return 0;
  }
}

unint64_t Image.Interpolation.init(protobufValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 4;
  if (result < 4)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

void lazy protocol witness table accessor for type Image.Interpolation and conformance Image.Interpolation()
{
  if (!lazy protocol witness table cache variable for type Image.Interpolation and conformance Image.Interpolation)
  {
    swift_getWitnessTable(protocol conformance descriptor for Image.Interpolation, &type metadata for Image.Interpolation, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Image.Interpolation and conformance Image.Interpolation);
  }
}

uint64_t *assignWithCopy for Image.AntialiasedProvider(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t *assignWithTake for Image.AntialiasedProvider(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

id _ShapeStyle_ResolverMode.bundle.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t _ShapeStyle_ResolverMode.init(foregroundLevels:options:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = 0;
  *(a3 + 8) = result;
  *(a3 + 10) = v3;
  return result;
}

_BYTE *_ShapeStyle_ResolverMode.formUnion(_:)(_BYTE *result)
{
  v2 = *(result + 4);
  v3 = result[10];
  v4 = *v1;
  if (!*v1)
  {
    v4 = *result;
    result = *result;
  }

  *v1 = v4;
  v5 = *(v1 + 4);
  if (v2 > v5)
  {
    LOWORD(v5) = v2;
  }

  *(v1 + 4) = v5;
  *(v1 + 10) |= v3;
  return result;
}

_DWORD *specialized AnimatableAttributeHelper.reset()(__n128 a1)
{
  if (*(v1 + 40))
  {
    specialized AnimatorState.removeListeners()();
  }

  *(v1 + 40) = 0;

  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  result = AGGraphGetValue();
  *(v1 + 48) = *result >> 1;
  return result;
}

void lazy protocol witness table accessor for type _ShapeStyle_ResolverMode.Options and conformance _ShapeStyle_ResolverMode.Options()
{
  if (!lazy protocol witness table cache variable for type _ShapeStyle_ResolverMode.Options and conformance _ShapeStyle_ResolverMode.Options)
  {
    swift_getWitnessTable(protocol conformance descriptor for _ShapeStyle_ResolverMode.Options, &type metadata for _ShapeStyle_ResolverMode.Options, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _ShapeStyle_ResolverMode.Options and conformance _ShapeStyle_ResolverMode.Options);
  }
}

{
  if (!lazy protocol witness table cache variable for type _ShapeStyle_ResolverMode.Options and conformance _ShapeStyle_ResolverMode.Options)
  {
    swift_getWitnessTable(protocol conformance descriptor for _ShapeStyle_ResolverMode.Options, &type metadata for _ShapeStyle_ResolverMode.Options, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _ShapeStyle_ResolverMode.Options and conformance _ShapeStyle_ResolverMode.Options);
  }
}

{
  if (!lazy protocol witness table cache variable for type _ShapeStyle_ResolverMode.Options and conformance _ShapeStyle_ResolverMode.Options)
  {
    swift_getWitnessTable(protocol conformance descriptor for _ShapeStyle_ResolverMode.Options, &type metadata for _ShapeStyle_ResolverMode.Options, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _ShapeStyle_ResolverMode.Options and conformance _ShapeStyle_ResolverMode.Options);
  }
}

{
  if (!lazy protocol witness table cache variable for type _ShapeStyle_ResolverMode.Options and conformance _ShapeStyle_ResolverMode.Options)
  {
    swift_getWitnessTable(protocol conformance descriptor for _ShapeStyle_ResolverMode.Options, &type metadata for _ShapeStyle_ResolverMode.Options, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _ShapeStyle_ResolverMode.Options and conformance _ShapeStyle_ResolverMode.Options);
  }
}

uint64_t assignWithCopy for _ShapeStyle_ResolverMode(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  *a1 = *a2;
  v6 = v5;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 10) = *(a2 + 10);
  return a1;
}

uint64_t assignWithTake for _ShapeStyle_ResolverMode(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 10) = *(a2 + 10);
  return a1;
}

uint64_t getEnumTagSinglePayload for _ShapeStyle_ResolverMode(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 11))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for _ShapeStyle_ResolverMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 10) = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 11) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 11) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t assignWithCopy for ShapeStyleResolver(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 13) = *(a2 + 13);
  *(a1 + 14) = *(a2 + 14);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  return a1;
}

uint64_t assignWithTake for ShapeStyleResolver(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 14) = *(a2 + 14);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  return a1;
}

uint64_t outlined init with copy of AnimatorState<_AnyAnimatableData>.Fork(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  type metadata accessor for AnimatorState<_AnyAnimatableData>.Fork(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

void type metadata accessor for AnimatorState<_AnyAnimatableData>.Fork(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    v7 = a3();
    v9 = type metadata accessor for AnimatorState.Fork(a1, a4, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t outlined destroy of AnimatorState<_AnyAnimatableData>.Fork(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  type metadata accessor for AnimatorState<_AnyAnimatableData>.Fork(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t outlined init with copy of AnimatorState<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>.Fork(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of AnimatorState<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>.Fork(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 _TransformEffect.transform.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  result = *(v1 + 32);
  *(a1 + 32) = result;
  return result;
}

__n128 _TransformEffect.transform.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v2;
  result = *(a1 + 32);
  *(v1 + 32) = result;
  return result;
}

void __swiftcall _TransformEffect.init(transform:)(SwiftUI::_TransformEffect *__return_ptr retstr, CGAffineTransform *transform)
{
  v2 = *&transform->c;
  *&retstr->transform.a = *&transform->a;
  *&retstr->transform.c = v2;
  *&retstr->transform.tx = *&transform->tx;
}

__n128 _TransformEffect.effectValue(size:)@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = 0;
  *(a1 + 24) = v2;
  *(a1 + 40) = 0;
  result = *(v1 + 32);
  *(a1 + 48) = result;
  *(a1 + 64) = 0x3FF0000000000000;
  return result;
}

__n128 protocol witness for GeometryEffect.effectValue(size:) in conformance _TransformEffect@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = 0;
  *(a1 + 24) = v2;
  *(a1 + 40) = 0;
  result = *(v1 + 32);
  *(a1 + 48) = result;
  *(a1 + 64) = 0x3FF0000000000000;
  return result;
}

uint64_t VisualEffect.transformEffect(_:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  v4 = *(a1 + 24);
  v6[0] = *a1;
  v6[1] = v4;
  v6[2] = a1[3];
  return (a4)(v6, a2, a3);
}

uint64_t VisualEffect.transformEffect(_:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = a1[1];
  v9[0] = *a1;
  v9[1] = v7;
  v9[2] = a1[2];
  lazy protocol witness table accessor for type _TransformEffect and conformance _TransformEffect();
  return VisualEffect.geometryEffect<A>(_:)(v9, a2, &type metadata for _TransformEffect, a3, a4);
}

void type metadata accessor for GeometryVisualEffect<_TransformEffect>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for GeometryVisualEffect<_TransformEffect>)
  {
    lazy protocol witness table accessor for type _TransformEffect and conformance _TransformEffect();
    v4 = type metadata accessor for GeometryVisualEffect(a1, &type metadata for _TransformEffect, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for GeometryVisualEffect<_TransformEffect>);
    }
  }
}

void lazy protocol witness table accessor for type GeometryVisualEffect<_TransformEffect> and conformance GeometryVisualEffect<A>()
{
  if (!lazy protocol witness table cache variable for type GeometryVisualEffect<_TransformEffect> and conformance GeometryVisualEffect<A>)
  {
    type metadata accessor for GeometryVisualEffect<_TransformEffect>(255);
    swift_getWitnessTable(protocol conformance descriptor for GeometryVisualEffect<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type GeometryVisualEffect<_TransformEffect> and conformance GeometryVisualEffect<A>);
  }
}

uint64_t static AnyEquatable.== infix(_:_:)(uint64_t a1, void *a2)
{
  if (*a1 == *a2)
  {
    return 1;
  }

  else
  {
    return (*(**a1 + 88))() & 1;
  }
}

__n128 AnyEquatable.init(hash:)@<Q0>(__n128 *a1@<X0>, __n128 **a2@<X8>)
{
  v5 = a1[1].n128_u32[0];
  type metadata accessor for HashEquatableBox();
  v6 = swift_allocObject();
  result = *a1;
  v6[1] = *a1;
  v6[2].n128_u32[0] = v5;
  *a2 = v6;
  return result;
}

void AnyEquatableBox.hash.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 20) = 1;
}

__n128 HashEquatableBox.hash.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[2].n128_u32[0];
  result = v1[1];
  *a1 = result;
  a1[1].n128_u32[0] = v2;
  a1[1].n128_u8[4] = 0;
  return result;
}

uint64_t Material.ResolvedMaterial.intelligenceLightSourceLayer.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 12);
  v6 = v4 > 2 && v3 > 6;
  v7 = v6;
  if (v6)
  {
    v8 = 7;
    v9 = 3;
  }

  else
  {
    outlined copy of Material.ID(v3, v4);
    v8 = v3;
    v9 = v4;
  }

  outlined consume of Material.ID(v8, v9);
  outlined consume of Material.ID(7, 3u);
  *(a1 + 36) = 1065353216;
  if (one-time initialization token for normal != -1)
  {
    swift_once();
  }

  v10 = 256;
  if (!v7)
  {
    v10 = 0;
  }

  v11 = static GraphicsBlendMode.normal;
  v12 = byte_1ED52F818;
  *(a1 + 40) = static GraphicsBlendMode.normal;
  *(a1 + 48) = v12;
  *a1 = v10 & 0xFFFFFFFFFFFFFFFELL | v5 & 1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 3;

  return outlined copy of GraphicsBlendMode(v11, v12);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance IntelligenceLightSourceLayer()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance IntelligenceLightSourceLayer()
{
  v1 = v0[1];
  MEMORY[0x193AC11A0](*v0);
  Hasher._combine(_:)(v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance IntelligenceLightSourceLayer(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v2);
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

uint64_t getEnumTagSinglePayload for IntelligenceLightSourceLayer(unsigned __int16 *a1, unsigned int a2)
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
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

void lazy protocol witness table accessor for type IntelligenceLightSourceLayer and conformance IntelligenceLightSourceLayer()
{
  if (!lazy protocol witness table cache variable for type IntelligenceLightSourceLayer and conformance IntelligenceLightSourceLayer)
  {
    swift_getWitnessTable(protocol conformance descriptor for IntelligenceLightSourceLayer, &type metadata for IntelligenceLightSourceLayer, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type IntelligenceLightSourceLayer and conformance IntelligenceLightSourceLayer);
  }
}

uint64_t ProtobufEncoder.cgFloatField(_:_:defaultValue:)(uint64_t result, uint64_t a2, char a3, double a4)
{
  v5 = a4;
  if ((a3 & 1) != 0 || *&a2 != a4)
  {
    v6 = fabs(a4);
    v7 = 5;
    if (v6 >= 65536.0)
    {
      v7 = 1;
    }

    ProtobufEncoder.encodeVarint(_:)(v7 | (8 * result));
    if (v6 < 65536.0)
    {
      v8 = v4[1];
      result = v8 + 4;
      if (!__OFADD__(v8, 4))
      {
        *&v5 = v5;
        if (v4[2] >= result)
        {
          v4[1] = result;
          *(*v4 + v8) = LODWORD(v5);
          return result;
        }

        goto LABEL_16;
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      result = ProtobufEncoder.growBufferSlow(to:)(result);
      *result = LODWORD(v5);
      return result;
    }

    v9 = v4[1];
    result = v9 + 8;
    if (__OFADD__(v9, 8))
    {
      goto LABEL_15;
    }

    if (v4[2] < result)
    {
      result = ProtobufEncoder.growBufferSlow(to:)(result);
    }

    else
    {
      v4[1] = result;
      result = *v4 + v9;
    }

    *result = v5;
  }

  return result;
}

void ProtobufEncoder.enumField<A, B>(_:_:defaultValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25 = a8;
  v24 = a7;
  v26 = a2;
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v24 - v14;
  v16 = *(a5 - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = (*(a6 + 16))(a4, a6, v18);
  (*(v13 + 16))(v15, a3, v12);
  if ((*(v16 + 48))(v15, 1, a5) == 1)
  {
    (*(v13 + 8))(v15, v12);
  }

  else
  {
    (*(v16 + 32))(v20, v15, a5);
    v22 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v16 + 8))(v20, a5);
    if (v22)
    {
      return;
    }
  }

  v23 = (*(v25 + 8))(a5);
  ProtobufEncoder.encodeVarint(_:)(8 * v21);
  ProtobufEncoder.encodeVarint(_:)(v23);
}

uint64_t ProtobufEncoder.messageField<A, B>(_:_:defaultValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = (*(a6 + 16))(a4, a6);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if ((result & 1) == 0)
  {
    ProtobufEncoder.encodeVarint(_:)((8 * v11) | 2);
    return ProtobufEncoder.encodeMessage<A>(_:)(a2, a5, a8);
  }

  return result;
}

uint64_t ProtobufEncoder.messageField<A, B>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = (*(a5 + 16))(a3, a5);
  ProtobufEncoder.encodeVarint(_:)((8 * v9) | 2);
  return ProtobufEncoder.encodeMessage<A>(_:)(a2, a4, a6);
}

uint64_t ProtobufEncoder.cgFloatField<A>(_:_:defaultValue:)(double a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  result = (*(a6 + 16))(a5, a6);
  if ((a4 & 1) != 0 || *&a3 != a1)
  {
    v11 = fabs(a1);
    v12 = 5;
    if (v11 >= 65536.0)
    {
      v12 = 1;
    }

    ProtobufEncoder.encodeVarint(_:)(v12 | (8 * result));
    if (v11 < 65536.0)
    {
      v13 = v6[1];
      result = v13 + 4;
      if (!__OFADD__(v13, 4))
      {
        *&a1 = a1;
        if (v6[2] >= result)
        {
          v6[1] = result;
          *(*v6 + v13) = LODWORD(a1);
          return result;
        }

        goto LABEL_15;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      result = ProtobufEncoder.growBufferSlow(to:)(result);
      *result = LODWORD(a1);
      return result;
    }

    v14 = v6[1];
    result = v14 + 8;
    if (__OFADD__(v14, 8))
    {
      goto LABEL_14;
    }

    if (v6[2] < result)
    {
      result = ProtobufEncoder.growBufferSlow(to:)(result);
      *result = a1;
    }

    else
    {
      v6[1] = result;
      *(*v6 + v14) = a1;
    }
  }

  return result;
}

void ProtobufEncoder.enumField<A, B>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = (*(a5 + 16))(a3, a5);
  v9 = (*(a6 + 8))(a4, a6);
  ProtobufEncoder.encodeVarint(_:)(8 * v8);

  ProtobufEncoder.encodeVarint(_:)(v9);
}

void ProtobufEncoder.stringField<A>(_:_:defaultValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = type metadata accessor for String.Encoding();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = (*(a7 + 16))(a6, a7, v13);
  if ((a2 || a3 != 0xE000000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v17 = (8 * v16) | 2;
    v18 = v22[1];
    ProtobufEncoder.encodeVarint(_:)(v17);
    static String.Encoding.utf8.getter();
    v19 = String.data(using:allowLossyConversion:)();
    v21 = v20;
    (*(v12 + 8))(v15, v11);
    if (v21 >> 60 == 15)
    {
      lazy protocol witness table accessor for type ProtobufEncoder.EncodingError and conformance ProtobufEncoder.EncodingError();
      swift_allocError();
      swift_willThrow();
    }

    else
    {
      specialized Data._Representation.withUnsafeBytes<A>(_:)(v19, v21, v18);
      outlined consume of Data?(v19, v21);
    }
  }
}

uint64_t ProtobufEncoder.messageField<A>(_:_:)(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v9 = (*(a5 + 16))(a4, a5);
  ProtobufEncoder.encodeVarint(_:)((8 * v9) | 2);
  v10 = *(v5 + 8);
  v11 = *(v5 + 24);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 16) + 1, 1, v11);
    v11 = result;
  }

  v14 = *(v11 + 16);
  v13 = *(v11 + 24);
  if (v14 >= v13 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v11);
    v11 = result;
  }

  *(v11 + 16) = v14 + 1;
  *(v11 + 8 * v14 + 32) = v10;
  *(v7 + 24) = v11;
  if (__OFADD__(v10, 1))
  {
    __break(1u);
  }

  else
  {
    *(v7 + 8) = v10 + 1;
    result = a2(v7);
    if (!v6)
    {
      return ProtobufEncoder.endLengthDelimited()();
    }
  }

  return result;
}

void ProtobufEncoder.BOOLField<A>(_:_:defaultValue:)(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  v8 = (*(a5 + 16))(a4, a5);
  if (v7 == 2 || ((a3 ^ a2) & 1) != 0)
  {
    ProtobufEncoder.encodeVarint(_:)(8 * v8);

    ProtobufEncoder.encodeVarint(_:)(a2 & 1);
  }
}

uint64_t ProtobufEncoder.doubleField<A>(_:_:defaultValue:)(double a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  result = (*(a6 + 16))(a5, a6);
  if ((a4 & 1) != 0 || *&a3 != a1)
  {
    ProtobufEncoder.encodeVarint(_:)((8 * result) | 1);
    v11 = v6[1];
    result = v11 + 8;
    if (__OFADD__(v11, 8))
    {
      __break(1u);
    }

    else if (v6[2] >= result)
    {
      v6[1] = result;
      *(*v6 + v11) = a1;
      return result;
    }

    result = ProtobufEncoder.growBufferSlow(to:)(result);
    *result = a1;
  }

  return result;
}

uint64_t ProtobufEncoder.floatField<A>(_:_:defaultValue:)(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = (*(a5 + 16))(a4, a5);
  if ((a3 & 0x100000000) != 0 || *&a3 != a1)
  {
    ProtobufEncoder.encodeVarint(_:)((8 * result) | 5);
    v9 = v5[1];
    result = v9 + 4;
    if (__OFADD__(v9, 4))
    {
      __break(1u);
    }

    else if (v5[2] >= result)
    {
      v5[1] = result;
      *(*v5 + v9) = a1;
      return result;
    }

    result = ProtobufEncoder.growBufferSlow(to:)(result);
    *result = a1;
  }

  return result;
}

void ProtobufEncoder.dataField(_:_:)(uint64_t result, _BYTE *a2, _BYTE *a3)
{
  if (a2 && a3 != a2)
  {
    ProtobufEncoder.encodeVarint(_:)((8 * result) | 2);

    ProtobufEncoder.encodeData(_:)(a2, a3);
  }
}

void ProtobufEncoder.dataField(_:_:)(uint64_t result, uint64_t a2, unint64_t a3)
{
  v6 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (v6)
    {
      if (a2 == a2 >> 32)
      {
        return;
      }
    }

    else if ((a3 & 0xFF000000000000) == 0)
    {
      return;
    }

LABEL_9:
    ProtobufEncoder.encodeVarint(_:)((8 * result) | 2);
    specialized Data._Representation.withUnsafeBytes<A>(_:)(a2, a3, v3);
    return;
  }

  if (v6 == 2 && *(a2 + 16) != *(a2 + 24))
  {
    goto LABEL_9;
  }
}

Swift::Void __swiftcall ProtobufEncoder.doubleField(_:_:defaultValue:)(Swift::UInt _, Swift::Double a2, Swift::Double_optional defaultValue)
{
  if ((v3 & 1) != 0 || *&defaultValue.is_nil != a2)
  {
    ProtobufEncoder.encodeVarint(_:)((8 * _) | 1);
    v6 = v4[1];
    v7 = v6 + 8;
    if (__OFADD__(v6, 8))
    {
      __break(1u);
    }

    else if (v4[2] >= v7)
    {
      v4[1] = v7;
      v8 = (*v4 + v6);
LABEL_6:
      *v8 = a2;
      return;
    }

    v8 = ProtobufEncoder.growBufferSlow(to:)(v7);
    goto LABEL_6;
  }
}

Swift::Void __swiftcall ProtobufEncoder.encodeFloat(_:)(Swift::Float a1)
{
  v2 = v1[1];
  v3 = v2 + 4;
  if (__OFADD__(v2, 4))
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1[2] < v3)
  {
LABEL_6:
    v5 = a1;
    v4 = ProtobufEncoder.growBufferSlow(to:)(v3);
    a1 = v5;
    goto LABEL_4;
  }

  v1[1] = v3;
  v4 = (*v1 + v2);
LABEL_4:
  *v4 = a1;
}

uint64_t ProtobufEncoder.packedField<A>(_:_:)(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v8 = (*(a5 + 16))(a4, a5);
  ProtobufEncoder.encodeVarint(_:)((8 * v8) | 2);
  v9 = *(v5 + 8);
  v10 = *(v5 + 24);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 16) + 1, 1, v10);
    v10 = result;
  }

  v13 = *(v10 + 16);
  v12 = *(v10 + 24);
  if (v13 >= v12 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v10);
    v10 = result;
  }

  *(v10 + 16) = v13 + 1;
  *(v10 + 8 * v13 + 32) = v9;
  *(v6 + 24) = v10;
  if (__OFADD__(v9, 1))
  {
    __break(1u);
  }

  else
  {
    *(v6 + 8) = v9 + 1;
    a2(v6);

    return ProtobufEncoder.endLengthDelimited()();
  }

  return result;
}

void ProtobufEncoder.enumField<A>(_:_:defaultValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20 = a5;
  v21 = a1;
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - v11;
  v13 = *(a4 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v12, a3, v9, v15);
  if ((*(v13 + 48))(v12, 1, a4) == 1)
  {
    (*(v10 + 8))(v12, v9);
  }

  else
  {
    (*(v13 + 32))(v17, v12, a4);
    v18 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v13 + 8))(v17, a4);
    if (v18)
    {
      return;
    }
  }

  v19 = (*(a6 + 8))(a4, a6);
  ProtobufEncoder.encodeVarint(_:)(8 * v21);
  ProtobufEncoder.encodeVarint(_:)(v19);
}

void ProtobufEncoder.uintField(_:_:defaultValue:)(uint64_t a1, Swift::UInt a2, uint64_t a3, char a4)
{
  if ((a4 & 1) != 0 || a2 != a3)
  {
    ProtobufEncoder.encodeVarint(_:)(8 * a1);

    ProtobufEncoder.encodeVarint(_:)(a2);
  }
}

Swift::Int ProtobufEncoder.EncodingError.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](0);
  return Hasher._finalize()();
}

Swift::Void __swiftcall ProtobufEncoder.BOOLField(_:_:defaultValue:)(Swift::UInt _, Swift::Bool a2, Swift::Bool_optional defaultValue)
{
  if (defaultValue.value == 2 || ((defaultValue.value ^ a2) & 1) != 0)
  {
    ProtobufEncoder.encodeVarint(_:)(8 * _);

    ProtobufEncoder.encodeVarint(_:)(a2);
  }
}

Swift::Void __swiftcall ProtobufEncoder.encodeVarint(_:)(Swift::UInt a1)
{
  if (a1 > 0x7F)
  {
    v3 = (147 * (70 - __clz(a1))) >> 10;
    v2 = v1[1];
    v4 = __OFADD__(v2, v3);
    v5 = v2 + v3;
    if (!v4)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v2 = v1[1];
  if (v2 < v1[2])
  {
    *(*v1 + v2) = a1;
    v1[1] = v2 + 1;
    return;
  }

  v5 = v2 + 1;
  if (__OFADD__(v2, 1))
  {
    goto LABEL_13;
  }

LABEL_5:
  if (v1[2] < v5)
  {
LABEL_14:
    v10 = a1;
    v6 = ProtobufEncoder.growBufferSlow(to:)(v5);
    a1 = v10;
    goto LABEL_7;
  }

  v1[1] = v5;
  v6 = (*v1 + v2);
LABEL_7:
  LOBYTE(v7) = a1 & 0x7F;
  if (a1 >= 0x80)
  {
    do
    {
      v8 = v7 | 0x80;
      v7 = (a1 >> 7) & 0x7F;
      *v6++ = v8;
      v9 = a1 >= 0x4000;
      a1 >>= 7;
    }

    while (v9);
  }

  *v6 = v7;
}

void ProtobufEncoder.enumField<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (*(a4 + 8))(a3, a4);
  ProtobufEncoder.encodeVarint(_:)(8 * a1);

  ProtobufEncoder.encodeVarint(_:)(v5);
}

void ProtobufEncoder.intField(_:_:defaultValue:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) != 0 || a2 != a3)
  {
    ProtobufEncoder.encodeVarint(_:)(8 * a1);

    ProtobufEncoder.encodeVarint(_:)((2 * a2) ^ (a2 >> 63));
  }
}

Swift::Void __swiftcall ProtobufEncoder.fixed32Field(_:_:defaultValue:)(Swift::UInt _, Swift::UInt32 a2, Swift::UInt32_optional defaultValue)
{
  if ((*&defaultValue.value & 0x100000000) != 0 || defaultValue.value != a2)
  {
    ProtobufEncoder.encodeVarint(_:)((8 * _) | 5);
    v5 = v3[1];
    v6 = v5 + 4;
    if (__OFADD__(v5, 4))
    {
      __break(1u);
    }

    else if (v3[2] >= v6)
    {
      v3[1] = v6;
      v7 = (*v3 + v5);
LABEL_6:
      *v7 = a2;
      return;
    }

    v7 = ProtobufEncoder.growBufferSlow(to:)(v6);
    goto LABEL_6;
  }
}

Swift::Void __swiftcall ProtobufEncoder.encodeFixed32(_:)(Swift::UInt32 a1)
{
  v2 = v1[1];
  v3 = v2 + 4;
  if (__OFADD__(v2, 4))
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1[2] < v3)
  {
LABEL_6:
    v5 = a1;
    v4 = ProtobufEncoder.growBufferSlow(to:)(v2 + 4);
    a1 = v5;
    goto LABEL_4;
  }

  v1[1] = v3;
  v4 = (*v1 + v2);
LABEL_4:
  *v4 = a1;
}

Swift::Void __swiftcall ProtobufEncoder.fixed64Field(_:_:defaultValue:)(Swift::UInt _, Swift::UInt64 a2, Swift::UInt64_optional defaultValue)
{
  if (defaultValue.is_nil || a2 != defaultValue.value)
  {
    ProtobufEncoder.encodeVarint(_:)((8 * _) | 1);
    v5 = v3[1];
    v6 = v5 + 8;
    if (__OFADD__(v5, 8))
    {
      __break(1u);
    }

    else if (v3[2] >= v6)
    {
      v3[1] = v6;
      v7 = (*v3 + v5);
LABEL_6:
      *v7 = a2;
      return;
    }

    v7 = ProtobufEncoder.growBufferSlow(to:)(v6);
    goto LABEL_6;
  }
}

Swift::Void __swiftcall ProtobufEncoder.encodeFixed64(_:)(Swift::UInt64 a1)
{
  v2 = v1[1];
  v3 = v2 + 8;
  if (__OFADD__(v2, 8))
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1[2] < v3)
  {
LABEL_6:
    v5 = a1;
    v4 = ProtobufEncoder.growBufferSlow(to:)(v2 + 8);
    a1 = v5;
    goto LABEL_4;
  }

  v1[1] = v3;
  v4 = (*v1 + v2);
LABEL_4:
  *v4 = a1;
}

Swift::Void __swiftcall ProtobufEncoder.floatField(_:_:defaultValue:)(Swift::UInt _, Swift::Float a2, Swift::Float_optional *defaultValue)
{
  if ((defaultValue & 0x100000000) != 0 || *&defaultValue != a2)
  {
    ProtobufEncoder.encodeVarint(_:)((8 * _) | 5);
    v5 = v3[1];
    v6 = v5 + 4;
    if (__OFADD__(v5, 4))
    {
      __break(1u);
    }

    else if (v3[2] >= v6)
    {
      v3[1] = v6;
      v7 = (*v3 + v5);
LABEL_6:
      *v7 = a2;
      return;
    }

    v7 = ProtobufEncoder.growBufferSlow(to:)(v6);
    goto LABEL_6;
  }
}

void ProtobufEncoder.encodeData(_:)(_BYTE *a1, _BYTE *a2)
{
  v4 = a2 - a1;
  if (a1)
  {
    v5 = a2 - a1;
  }

  else
  {
    v5 = 0;
  }

  if (v5 < 0)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  ProtobufEncoder.encodeVarint(_:)(v5);
  if (!a1 || a2 == a1)
  {
    return;
  }

  v7 = v2[1];
  v5 = v7 + v4;
  if (__OFADD__(v7, v4))
  {
    goto LABEL_15;
  }

  if (v2[2] < v5)
  {
LABEL_16:
    v8 = ProtobufEncoder.growBufferSlow(to:)(v5);
    goto LABEL_11;
  }

  v2[1] = v5;
  v8 = (*v2 + v7);
LABEL_11:

  memcpy(v8, a1, v4);
}

uint64_t ProtobufEncoder.packedField(_:_:)(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = v2;
  ProtobufEncoder.encodeVarint(_:)((8 * a1) | 2);
  v5 = *(v2 + 8);
  v6 = *(v2 + 24);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 16) + 1, 1, v6);
    v6 = result;
  }

  v9 = *(v6 + 16);
  v8 = *(v6 + 24);
  if (v9 >= v8 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v6);
    v6 = result;
  }

  *(v6 + 16) = v9 + 1;
  *(v6 + 8 * v9 + 32) = v5;
  *(v3 + 24) = v6;
  if (__OFADD__(v5, 1))
  {
    __break(1u);
  }

  else
  {
    *(v3 + 8) = v5 + 1;
    a2(v3);

    return ProtobufEncoder.endLengthDelimited()();
  }

  return result;
}

uint64_t ProtobufEncoder.endLengthDelimited()()
{
  v2 = v0[3];
  if (*(v2 + 16))
  {
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v4 = *(v2 + 16);
      if (v4)
      {
        goto LABEL_4;
      }

LABEL_18:
      __break(1u);
      goto LABEL_19;
    }
  }

  else
  {
    __break(1u);
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
  v2 = result;
  v4 = *(result + 16);
  if (!v4)
  {
    goto LABEL_18;
  }

LABEL_4:
  v5 = v4 - 1;
  v6 = *(v2 + 8 * v5 + 32);
  *(v2 + 16) = v5;
  v0[3] = v2;
  v4 = v0[1];
  v2 = v4 - (v6 + 1);
  if (__OFSUB__(v4, v6 + 1))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v2 > 127)
  {
    v1 = (147 * (70 - __clz(v2))) >> 10;
    goto LABEL_9;
  }

  if (v4 < v0[2])
  {
    *(*v0 + v6) = v2;
    return result;
  }

LABEL_20:
  if ((v2 & 0x8000000000000000) == 0)
  {
    goto LABEL_25;
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  for (i = ProtobufEncoder.growBufferSlow(to:)(result); ; i = *v0 + v4)
  {
    v4 = -(v2 + 1);
    if (!__OFSUB__(0, v2 + 1))
    {
      break;
    }

    __break(1u);
LABEL_25:
    v1 = 1;
LABEL_9:
    result = v4 + v1 - 1;
    if (__OFADD__(v4, v1 - 1))
    {
      goto LABEL_22;
    }

    if (v0[2] < result)
    {
      goto LABEL_23;
    }

    v0[1] = result;
  }

  v8 = (i - (v2 + 1));
  result = memmove(&v8[v1], (i - v2), v2);
  LOBYTE(v9) = v2 & 0x7F;
  if (v2 >= 128)
  {
    do
    {
      v10 = v9 | 0x80;
      v9 = (v2 >> 7) & 0x7F;
      *v8++ = v10;
      v11 = v2 >= 0x4000;
      v2 = v2 >> 7;
    }

    while (v11);
  }

  *v8 = v9;
  return result;
}

uint64_t ProtobufEncoder.messageField(_:_:)(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = v2;
  ProtobufEncoder.encodeVarint(_:)((8 * a1) | 2);
  v6 = *(v2 + 8);
  v7 = *(v2 + 24);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 16) + 1, 1, v7);
    v7 = result;
  }

  v10 = *(v7 + 16);
  v9 = *(v7 + 24);
  if (v10 >= v9 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v7);
    v7 = result;
  }

  *(v7 + 16) = v10 + 1;
  *(v7 + 8 * v10 + 32) = v6;
  *(v4 + 24) = v7;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
  }

  else
  {
    *(v4 + 8) = v6 + 1;
    result = a2(v4);
    if (!v3)
    {
      return ProtobufEncoder.endLengthDelimited()();
    }
  }

  return result;
}

uint64_t ProtobufEncoder.messageField<A>(_:_:defaultValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if ((result & 1) == 0)
  {
    ProtobufEncoder.encodeVarint(_:)((8 * a1) | 2);
    return ProtobufEncoder.encodeMessage<A>(_:)(a2, a4, a6);
  }

  return result;
}

uint64_t ProtobufEncoder.encodeMessage<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 8);
  v8 = *(v3 + 24);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1, v8);
    v8 = result;
  }

  v11 = *(v8 + 16);
  v10 = *(v8 + 24);
  if (v11 >= v10 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v8);
    v8 = result;
  }

  *(v8 + 16) = v11 + 1;
  *(v8 + 8 * v11 + 32) = v7;
  *(v3 + 24) = v8;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
  }

  else
  {
    *(v3 + 8) = v7 + 1;
    result = (*(a3 + 8))(v3, a2, a3);
    if (!v4)
    {
      return ProtobufEncoder.endLengthDelimited()();
    }
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ProtobufEncoder.stringField(_:_:defaultValue:)(Swift::UInt _, Swift::String a2, Swift::String_optional defaultValue)
{
  object = defaultValue.value._object;
  countAndFlagsBits = defaultValue.value._countAndFlagsBits;
  v5 = a2._object;
  v6 = a2._countAndFlagsBits;
  v8 = type metadata accessor for String.Encoding();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!object || (v6 != countAndFlagsBits || v5 != object) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v12 = (8 * _) | 2;
    v13 = v17[1];
    ProtobufEncoder.encodeVarint(_:)(v12);
    static String.Encoding.utf8.getter();
    v14 = String.data(using:allowLossyConversion:)();
    v16 = v15;
    (*(v9 + 8))(v11, v8);
    if (v16 >> 60 == 15)
    {
      lazy protocol witness table accessor for type ProtobufEncoder.EncodingError and conformance ProtobufEncoder.EncodingError();
      swift_allocError();
      swift_willThrow();
    }

    else
    {
      specialized Data._Representation.withUnsafeBytes<A>(_:)(v14, v16, v13);
      outlined consume of Data?(v14, v16);
    }
  }
}

double ProtobufEncoder.codableField<A>(_:_:defaultValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    return ProtobufEncoder.codableField<A>(_:_:)(a1, a2, a4, a5);
  }

  return result;
}

double ProtobufEncoder.codableField<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ProtobufEncoder.encodeVarint(_:)((8 * a1) | 2);

  v9 = ProtobufEncoder.binaryPlistData<A>(for:)(a2, a3, a4);
  if (v5)
  {
  }

  else
  {
    v12 = v9;
    v13 = v10;

    specialized Data._Representation.withUnsafeBytes<A>(_:)(v12, v13, v4);
    return outlined consume of Data._Representation(v12, v13);
  }

  return result;
}

double ProtobufEncoder.codableWithConfigurationField<A>(_:_:configuration:defaultValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    return ProtobufEncoder.codableWithConfigurationField<A>(_:_:configuration:)(a1, a2, a3, a5, a6);
  }

  return result;
}

double ProtobufEncoder.codableWithConfigurationField<A>(_:_:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ProtobufEncoder.encodeVarint(_:)((8 * a1) | 2);

  v11 = ProtobufEncoder.binaryPlistData<A>(for:configuration:)(a2, a3, a4, a5);
  if (v6)
  {
  }

  else
  {
    v14 = v11;
    v15 = v12;

    specialized Data._Representation.withUnsafeBytes<A>(_:)(v14, v15, v5);
    return outlined consume of Data._Representation(v14, v15);
  }

  return result;
}

Swift::Void __swiftcall ProtobufEncoder.emptyField(_:)(Swift::UInt a1)
{
  ProtobufEncoder.encodeVarint(_:)((8 * a1) | 2);
  v2 = *(v1 + 8);
  v3 = *(v1 + 24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
  }

  v5 = *(v3 + 2);
  v4 = *(v3 + 3);
  if (v5 >= v4 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1, v3);
  }

  *(v3 + 2) = v5 + 1;
  *&v3[8 * v5 + 32] = v2;
  *(v1 + 24) = v3;
  if (__OFADD__(v2, 1))
  {
    __break(1u);
  }

  else
  {
    *(v1 + 8) = v2 + 1;

    ProtobufEncoder.endLengthDelimited()();
  }
}

void ProtobufEncoder.uintField<A>(_:_:defaultValue:)(uint64_t a1, Swift::UInt a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v9 = (*(a6 + 16))(a5, a6);
  if ((a4 & 1) != 0 || a2 != a3)
  {
    ProtobufEncoder.encodeVarint(_:)(8 * v9);

    ProtobufEncoder.encodeVarint(_:)(a2);
  }
}

void ProtobufEncoder.intField<A>(_:_:defaultValue:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v9 = (*(a6 + 16))(a5, a6);
  if ((a4 & 1) != 0 || a2 != a3)
  {
    ProtobufEncoder.encodeVarint(_:)(8 * v9);

    ProtobufEncoder.encodeVarint(_:)((2 * a2) ^ (a2 >> 63));
  }
}

uint64_t ProtobufEncoder.fixed32Field<A>(_:_:defaultValue:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = (*(a5 + 16))(a4, a5);
  if ((a3 & 0x100000000) != 0 || a3 != a2)
  {
    ProtobufEncoder.encodeVarint(_:)((8 * result) | 5);
    v9 = v5[1];
    result = v9 + 4;
    if (__OFADD__(v9, 4))
    {
      __break(1u);
    }

    else if (v5[2] >= result)
    {
      v5[1] = result;
      *(*v5 + v9) = a2;
      return result;
    }

    result = ProtobufEncoder.growBufferSlow(to:)(result);
    *result = a2;
  }

  return result;
}

uint64_t ProtobufEncoder.fixed64Field<A>(_:_:defaultValue:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  result = (*(a6 + 16))(a5, a6);
  if ((a4 & 1) != 0 || a2 != a3)
  {
    ProtobufEncoder.encodeVarint(_:)((8 * result) | 1);
    v11 = v6[1];
    result = v11 + 8;
    if (__OFADD__(v11, 8))
    {
      __break(1u);
    }

    else if (v6[2] >= result)
    {
      v6[1] = result;
      *(*v6 + v11) = a2;
      return result;
    }

    result = ProtobufEncoder.growBufferSlow(to:)(result);
    *result = a2;
  }

  return result;
}

void ProtobufEncoder.dataField<A>(_:_:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = (*(a5 + 16))(a4, a5);
  v9 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v9 != 2)
    {
      return;
    }

    v10 = *(a2 + 16);
    v11 = *(a2 + 24);
LABEL_8:
    if (v10 == v11)
    {
      return;
    }

    goto LABEL_9;
  }

  if (v9)
  {
    v10 = a2;
    v11 = a2 >> 32;
    goto LABEL_8;
  }

  if ((a3 & 0xFF000000000000) != 0)
  {
LABEL_9:
    ProtobufEncoder.encodeVarint(_:)((8 * v8) | 2);
    specialized Data._Representation.withUnsafeBytes<A>(_:)(a2, a3, v5);
  }
}

void ProtobufEncoder.dataField<A>(_:_:)(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  v7 = (*(a5 + 16))(a4, a5);
  if (a2 && a3 != a2)
  {
    ProtobufEncoder.encodeVarint(_:)((8 * v7) | 2);

    ProtobufEncoder.encodeData(_:)(a2, a3);
  }
}

double ProtobufEncoder.codableField<A, B>(_:_:defaultValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = (*(a6 + 16))(a4, a6);
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    return ProtobufEncoder.codableField<A>(_:_:)(v11, a2, a5, a7);
  }

  return result;
}

double ProtobufEncoder.codableWithConfigurationField<A, B>(_:_:configuration:defaultValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = (*(a7 + 16))(a5, a7);
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    return ProtobufEncoder.codableWithConfigurationField<A>(_:_:configuration:)(v13, a2, a3, a6, a8);
  }

  return result;
}

Swift::Void __swiftcall ProtobufEncoder.encodeBool(_:)(Swift::Bool a1)
{
  v2 = v1[1];
  v3 = v2 + 1;
  if (__OFADD__(v2, 1))
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1[2] < v3)
  {
LABEL_6:
    v5 = a1;
    v4 = ProtobufEncoder.growBufferSlow(to:)(v2 + 1);
    a1 = v5;
    goto LABEL_4;
  }

  v1[1] = v3;
  v4 = (*v1 + v2);
LABEL_4:
  *v4 = a1;
}

uint64_t ProtobufEncoder.growBufferSlow(to:)(int64_t a1)
{
  v2 = a1;
  if (a1 <= 128)
  {
    a1 = 128;
  }

  v3 = malloc_good_size(a1);
  v4 = realloc(*v1, v3);
  if (v4)
  {
    v5 = *(v1 + 8);
    *v1 = v4;
    *(v1 + 8) = v2;
    *(v1 + 16) = v3;
    return v4 + v5;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t specialized static ProtobufEncoder.encoding(_:)(void (*a1)(void **, double))
{
  v3 = type metadata accessor for Data.Deallocator();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = MEMORY[0x1E69E7CC0];
  v17 = MEMORY[0x1E69E7CC8];
  a1(&v13, v5);
  if (v1)
  {
    free(v13);
    v8 = v16;
  }

  else
  {
    if (v13)
    {
      v9 = v14;
      v10 = v13;
      (*(v4 + 104))(v7, *MEMORY[0x1E6969000], v3);
      v8 = specialized Data.init(bytesNoCopy:count:deallocator:)(v10, v9, v7);
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

uint64_t initializeWithCopy for ProtobufEncoder(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

void *assignWithCopy for ProtobufEncoder(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];

  a1[4] = a2[4];

  return a1;
}

uint64_t assignWithTake for ProtobufEncoder(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  return a1;
}

void specialized String.withCString<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_7;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    **(a3 + 24) = a1;
    goto LABEL_6;
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
LABEL_7:
    _StringGuts._slowWithCString<A>(_:)();
    goto LABEL_6;
  }

  **(a3 + 24) = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
LABEL_6:
}

SwiftUI::CustomEventCategory_optional __swiftcall CustomEventCategory.init(rawValue:)(SwiftUI::CustomEventCategory_optional rawValue)
{
  value = rawValue.value;
  if (rawValue.value > (SwiftUI_CustomEventCategory_action|0x40))
  {
    if (rawValue.value > (SwiftUI_CustomEventCategory_unknownDefault|SwiftUI_CustomEventCategory_instantiation|0x40))
    {
      if (rawValue.value == (SwiftUI_CustomEventCategory_unknownDefault|SwiftUI_CustomEventCategory_dynamicProperties|0x40))
      {
        *v1 = SwiftUI_CustomEventCategory_observable;
        return rawValue;
      }

      if (rawValue.value == 84)
      {
        *v1 = SwiftUI_CustomEventCategory_transaction;
        return rawValue;
      }
    }

    else
    {
      if (rawValue.value == 68)
      {
        *v1 = SwiftUI_CustomEventCategory_dynamicProperties;
        return rawValue;
      }

      if (rawValue.value == (SwiftUI_CustomEventCategory_dynamicProperties|0x40))
      {
        *v1 = SwiftUI_CustomEventCategory_graph;
        return rawValue;
      }
    }

    goto LABEL_19;
  }

  if (rawValue.value > 0x41u)
  {
    if (rawValue.value == 66)
    {
      *v1 = SwiftUI_CustomEventCategory_animation;
      return rawValue;
    }

    if (rawValue.value == (SwiftUI_CustomEventCategory_action|0x40))
    {
      *v1 = SwiftUI_CustomEventCategory_instantiation;
      return rawValue;
    }

    goto LABEL_19;
  }

  if (rawValue.value)
  {
    if (rawValue.value == 65)
    {
      *v1 = SwiftUI_CustomEventCategory_action;
      return rawValue;
    }

LABEL_19:
    value = SwiftUI_CustomEventCategory_unknownDefault;
  }

  *v1 = value;
  return rawValue;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CustomEventCategory()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0x4443424741544F00uLL >> (8 * *v0));
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CustomEventCategory(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0x4443424741544F00uLL >> (8 * *v1));
  return Hasher._finalize()();
}

double static CustomEventTrace.register(graph:)(void *a1)
{
  type metadata accessor for CustomEventTrace.Recorder();
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = a1;
  v4 = swift_slowAlloc();
  *(v2 + 24) = v4;
  bzero(v4, 7uLL);
  *v4 = 1598440771;

  static CustomEventTrace.recorder = v2;

  return result;
}

char *static CustomEventTrace.setEnabledCategory(_:enabled:)(char *a1, char a2)
{
  v3 = *a1;
  if (one-time initialization token for enabledCategories != -1)
  {
    swift_once();
  }

  v4 = static CustomEventTrace.enabledCategories;
  result = swift_isUniquelyReferenced_nonNull_native();
  static CustomEventTrace.enabledCategories = v4;
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
    v4 = result;
  }

  v6 = qword_18DDD2898[v3];
  if (v6 >= *(v4 + 2))
  {
    __break(1u);
  }

  else
  {
    v4[v6 + 32] = a2 & 1;
    static CustomEventTrace.enabledCategories = v4;
  }

  return result;
}

void static CustomEventTrace.trace<A>(_:_:value:)(char *a1, char a2)
{
  v2 = *a1;
  if (one-time initialization token for enabledCategories != -1)
  {
    v14 = a2;
    a1 = swift_once();
    a2 = v14;
  }

  v3 = 0x4443424741544F00uLL >> (8 * v2);
  if (*(static CustomEventTrace.enabledCategories + 2) <= v3)
  {
    __break(1u);
  }

  else if (*(static CustomEventTrace.enabledCategories + v3 + 32) == 1)
  {
    v4 = static CustomEventTrace.recorder;
    if (static CustomEventTrace.recorder)
    {
      v5 = *(static CustomEventTrace.recorder + 24);
      *(v5 + 4) = v3;
      *(v5 + 5) = a2;
      v6 = *(v4 + 16);
      MEMORY[0x1EEE9AC00](a1);
      v15[2] = v7;
      v15[3] = v6;
      v15[4] = v8;
      v9 = v7;
      v11 = v10;

      v12 = v6;
      _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v11, partial apply for closure #1 in AGGraphRef.addTraceEvent<A>(_:value:), v15, v9, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v13);
    }
  }
}

uint64_t CustomEventTrace.Recorder.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t static CustomEventTrace.getNextTraceID(id:)(atomic_uint *a1)
{
  v1 = *a1 >> 1;
  atomic_fetch_add_explicit(a1, 2u, memory_order_relaxed);
  return v1 + 1;
}

double static CustomEventTrace.observableFireWithTransaction(transaction:key:attribute:)(int a1, uint64_t a2, int a3)
{
  v3 = one-time initialization token for enabledCategories;

  if (v3 != -1)
  {
    swift_once();
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x50uLL)
  {
    __break(1u);
  }

  if (*(static CustomEventTrace.enabledCategories + 111) == 1 && static CustomEventTrace.recorder)
  {
    *(*(static CustomEventTrace.recorder + 24) + 4) = 17999;
    type metadata accessor for (UInt32, AnyKeyPath?, AGAttribute)(0);
    AGGraphAddTraceEvent();
  }

  else
  {
  }

  return result;
}

SwiftUI::CustomEventTrace::TransactionEventType_optional __swiftcall CustomEventTrace.TransactionEventType.init(rawValue:)(SwiftUI::CustomEventTrace::TransactionEventType_optional rawValue)
{
  if (rawValue.value > 0x44u)
  {
    if (rawValue.value == (SwiftUI_CustomEventTrace_TransactionEventType_continueAsContinuation|0x40))
    {
      *v1 = 1;
      return rawValue;
    }

    if (rawValue.value != 78)
    {
      if (rawValue.value == 81)
      {
        *v1 = 3;
        return rawValue;
      }

      goto LABEL_12;
    }

    *v1 = 4;
  }

  else
  {
    if (rawValue.value == 65)
    {
      *v1 = 2;
      return rawValue;
    }

    if (rawValue.value != 66)
    {
      if (rawValue.value == (SwiftUI_CustomEventTrace_TransactionEventType_enqueue|0x40))
      {
        *v1 = 5;
        return rawValue;
      }

LABEL_12:
      *v1 = 6;
      return rawValue;
    }

    *v1 = 0;
  }

  return rawValue;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CustomEventTrace.TransactionEventType()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0x434E51414542uLL >> (8 * *v0));
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CustomEventTrace.TransactionEventType(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0x434E51414542uLL >> (8 * *v1));
  return Hasher._finalize()();
}

uint64_t static CustomEventTrace.transactionBegin(_:)(uint64_t a1)
{

  return static CustomEventTrace.transactionBegin(_:)(a1, 66);
}

uint64_t static CustomEventTrace.transactionEnd(_:)(uint64_t a1)
{

  return static CustomEventTrace.transactionBegin(_:)(a1, 69);
}

uint64_t static CustomEventTrace.transactionAppend(to:)(uint64_t a1)
{

  return static CustomEventTrace.transactionBegin(_:)(a1, 65);
}

uint64_t static CustomEventTrace.transactionEnqueue(_:)(uint64_t a1)
{

  return static CustomEventTrace.transactionBegin(_:)(a1, 81);
}

uint64_t static CustomEventTrace.transactionContinueAsNewTransaction(_:)(uint64_t a1)
{

  return static CustomEventTrace.transactionBegin(_:)(a1, 78);
}

uint64_t static CustomEventTrace.transactionBegin(_:)(uint64_t result, char a2)
{
  if (one-time initialization token for enabledCategories != -1)
  {
    v3 = result;
    v4 = a2;
    swift_once();
    a2 = v4;
    result = v3;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x55uLL)
  {
    __break(1u);
  }

  if (*(static CustomEventTrace.enabledCategories + 116) == 1)
  {
    if (static CustomEventTrace.recorder)
    {
      v2 = *(static CustomEventTrace.recorder + 24);
      *(v2 + 4) = 84;
      *(v2 + 5) = a2;
      return AGGraphAddTraceEvent();
    }
  }

  return result;
}

uint64_t static CustomEventTrace.transactionContinueAsContinuation(_:)(uint64_t result)
{
  if (one-time initialization token for enabledCategories != -1)
  {
    v1 = result;
    swift_once();
    result = v1;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x55uLL)
  {
    __break(1u);
  }

  if (*(static CustomEventTrace.enabledCategories + 116) == 1)
  {
    if (static CustomEventTrace.recorder)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 17236;
      type metadata accessor for GraphHost();
      return AGGraphAddTraceEvent();
    }
  }

  return result;
}

SwiftUI::CustomEventTrace::ActionEventType::Reason_optional __swiftcall CustomEventTrace.ActionEventType.Reason.init(rawValue:)(Swift::UInt32 rawValue)
{
  if (rawValue - 65 > 0x1D)
  {
    *v1 = 17;
  }

  else
  {
    *v1 = byte_18DDD28D8[rawValue - 65];
  }

  return rawValue;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CustomEventTrace.ActionEventType.Reason()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(dword_18DDD28F8[*v0]);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CustomEventTrace.ActionEventType.Reason(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(dword_18DDD28F8[*v1]);
  return Hasher._finalize()();
}

SwiftUI::CustomEventTrace::ActionEventType_optional __swiftcall CustomEventTrace.ActionEventType.init(rawValue:)(SwiftUI::CustomEventTrace::ActionEventType_optional rawValue)
{
  if (rawValue.value > (SwiftUI_CustomEventTrace_ActionEventType_unknownDefault|SwiftUI_CustomEventTrace_ActionEventType_finish|0x40))
  {
    if (rawValue.value != (SwiftUI_CustomEventTrace_ActionEventType_unknownDefault|SwiftUI_CustomEventTrace_ActionEventType_gestureMetadata|0x40))
    {
      if (rawValue.value == 83)
      {
        *v1 = 1;
        return rawValue;
      }

      goto LABEL_8;
    }

    *v1 = 3;
  }

  else
  {
    if (rawValue.value != (SwiftUI_CustomEventTrace_ActionEventType_unknownDefault|SwiftUI_CustomEventTrace_ActionEventType_start|0x40))
    {
      if (rawValue.value == (SwiftUI_CustomEventTrace_ActionEventType_unknownDefault|SwiftUI_CustomEventTrace_ActionEventType_finish|0x40))
      {
        *v1 = 2;
        return rawValue;
      }

LABEL_8:
      *v1 = 4;
      return rawValue;
    }

    *v1 = 0;
  }

  return rawValue;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CustomEventTrace.ActionEventType()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0x47465345u >> (8 * *v0));
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CustomEventTrace.ActionEventType(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0x47465345u >> (8 * *v1));
  return Hasher._finalize()();
}

uint64_t static CustomEventTrace.enqueueAction(_:_:)(uint64_t result, char *a2)
{
  if (one-time initialization token for enabledCategories != -1)
  {
    v2 = result;
    swift_once();
    result = v2;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x42uLL)
  {
    __break(1u);
  }

  if (*(static CustomEventTrace.enabledCategories + 97) == 1)
  {
    if (static CustomEventTrace.recorder)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 17729;
      type metadata accessor for (UInt32, UInt32?)(0);
      return AGGraphAddTraceEvent();
    }
  }

  return result;
}

uint64_t static CustomEventTrace.startAction(_:_:)(uint64_t result, char *a2)
{
  if (one-time initialization token for enabledCategories != -1)
  {
    v2 = result;
    swift_once();
    result = v2;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x42uLL)
  {
    __break(1u);
  }

  if (*(static CustomEventTrace.enabledCategories + 97) == 1)
  {
    if (static CustomEventTrace.recorder)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 21313;
      type metadata accessor for (UInt32, UInt32?)(0);
      return AGGraphAddTraceEvent();
    }
  }

  return result;
}

uint64_t static CustomEventTrace.finishAction(_:_:)(uint64_t result, char *a2)
{
  if (one-time initialization token for enabledCategories != -1)
  {
    v2 = result;
    swift_once();
    result = v2;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x42uLL)
  {
    __break(1u);
  }

  if (*(static CustomEventTrace.enabledCategories + 97) == 1)
  {
    if (static CustomEventTrace.recorder)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 17985;
      type metadata accessor for (UInt32, UInt32?)(0);
      return AGGraphAddTraceEvent();
    }
  }

  return result;
}

uint64_t static CustomEventTrace.additionalInfo(_:info:)(uint64_t result, uint64_t a2)
{
  if (one-time initialization token for enabledCategories != -1)
  {
    v2 = result;
    swift_once();
    result = v2;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x42uLL)
  {
    __break(1u);
  }

  if (*(static CustomEventTrace.enabledCategories + 97) == 1)
  {
    if (static CustomEventTrace.recorder)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 18241;
      type metadata accessor for (UInt32, AGAttribute?)(0);
      return AGGraphAddTraceEvent();
    }
  }

  return result;
}

void static CustomEventTrace.setNeedsUpdate(values:graph:)(__int16 a1, void *a2)
{
  v2 = one-time initialization token for enabledCategories;
  v3 = a2;
  if (v2 != -1)
  {
    v5 = v3;
    swift_once();
    v3 = v5;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x48uLL)
  {
    __break(1u);
  }

  if (*(static CustomEventTrace.enabledCategories + 103) == 1 && static CustomEventTrace.recorder)
  {
    *(*(static CustomEventTrace.recorder + 24) + 4) = 20039;
    v4 = v3;
    type metadata accessor for (ViewGraphRootValues, AGAttribute)(0, &lazy cache variable for type metadata for (ViewGraphRootValues, AGGraphRef), type metadata accessor for AGGraphRef);
    AGGraphAddTraceEvent();
  }

  else
  {
  }
}

SwiftUI::CustomEventTrace::AnimationEventType_optional __swiftcall CustomEventTrace.AnimationEventType.init(rawValue:)(SwiftUI::CustomEventTrace::AnimationEventType_optional rawValue)
{
  if (rawValue.value <= SwiftUI_CustomEventTrace_AnimationEventType_unknownDefault)
  {
    v2 = 0x5040302010006uLL >> (8 * rawValue.value);
  }

  else
  {
    v2 = 6;
  }

  *v1 = v2;
  return rawValue;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CustomEventTrace.AnimationEventType()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*v0 + 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CustomEventTrace.AnimationEventType(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*v1 + 1);
  return Hasher._finalize()();
}

uint64_t static CustomEventTrace.animationBegin(attribute:propertyType:function:)(uint64_t a1, uint64_t a2, __int128 *a3)
{

  return static CustomEventTrace.animationBegin(attribute:propertyType:function:)(a1, a2, a3, 1);
}

uint64_t static CustomEventTrace.animationEnd(_:)(uint64_t a1)
{

  return static CustomEventTrace.animationEnd(_:)(a1, 2);
}

uint64_t static CustomEventTrace.animationAttrUpdate(_:)(uint64_t a1)
{

  return static CustomEventTrace.animationEnd(_:)(a1, 3);
}

uint64_t static CustomEventTrace.animationEnd(_:)(uint64_t result, char a2)
{
  if (one-time initialization token for enabledCategories != -1)
  {
    v3 = result;
    v4 = a2;
    swift_once();
    a2 = v4;
    result = v3;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
  {
    __break(1u);
  }

  if (*(static CustomEventTrace.enabledCategories + 98) == 1)
  {
    if (static CustomEventTrace.recorder)
    {
      v2 = *(static CustomEventTrace.recorder + 24);
      *(v2 + 4) = 66;
      *(v2 + 5) = a2;
      type metadata accessor for AnyKeyPath?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute);
      return AGGraphAddTraceEvent();
    }
  }

  return result;
}

uint64_t static CustomEventTrace.animationScheduleTick(attribute:time:)(uint64_t result, uint64_t *a2)
{
  if (one-time initialization token for enabledCategories != -1)
  {
    v2 = result;
    swift_once();
    result = v2;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
  {
    __break(1u);
  }

  if (*(static CustomEventTrace.enabledCategories + 98) == 1)
  {
    if (static CustomEventTrace.recorder)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 1090;
      type metadata accessor for (AGAttribute?, Double)(0);
      return AGGraphAddTraceEvent();
    }
  }

  return result;
}

uint64_t static CustomEventTrace.animationTick(onMain:time:)(uint64_t result, uint64_t *a2)
{
  if (one-time initialization token for enabledCategories != -1)
  {
    v2 = result;
    swift_once();
    result = v2;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
  {
    __break(1u);
  }

  if (*(static CustomEventTrace.enabledCategories + 98) == 1)
  {
    if (static CustomEventTrace.recorder)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 1346;
      type metadata accessor for (Bool, Double)();
      return AGGraphAddTraceEvent();
    }
  }

  return result;
}

uint64_t static CustomEventTrace.animationRetarget(attribute:propertyType:function:)(uint64_t a1, uint64_t a2, __int128 *a3)
{

  return static CustomEventTrace.animationBegin(attribute:propertyType:function:)(a1, a2, a3, 6);
}

uint64_t static CustomEventTrace.animationBegin(attribute:propertyType:function:)(uint64_t a1, uint64_t a2, __int128 *a3, char a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 4);
  v8 = *(a3 + 40);
  v18 = 0x7FF8000000000000;
  v19 = 0x7FF8000000000000;
  v16 = 0x7FF8000000000000;
  v17 = 0x3FF0000000000000;
  v9 = a3[1];
  v20 = *a3;
  v21 = v9;
  v22 = v7;
  LOBYTE(v23) = v8;
  result = static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v20, &v19, &v18, &v17, &v16);
  v12 = v18;
  v11 = v19;
  v14 = v16;
  v13 = v17;
  if (one-time initialization token for enabledCategories != -1)
  {
    result = swift_once();
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
  {
    __break(1u);
  }

  if (*(static CustomEventTrace.enabledCategories + 98) == 1)
  {
    if (static CustomEventTrace.recorder)
    {
      v15 = *(static CustomEventTrace.recorder + 24);
      *(v15 + 4) = 66;
      *(v15 + 5) = a4;
      LODWORD(v20) = a1;
      BYTE4(v20) = BYTE4(a1) & 1;
      *(&v20 + 1) = a2;
      *&v21 = v11;
      *(&v21 + 1) = v12;
      v22 = v13;
      v23 = v14;
      type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);
      return AGGraphAddTraceEvent();
    }
  }

  return result;
}

SwiftUI::CustomEventTrace::InstantiationEventType::Kind_optional __swiftcall CustomEventTrace.InstantiationEventType.Kind.init(rawValue:)(SwiftUI::CustomEventTrace::InstantiationEventType::Kind_optional rawValue)
{
  value = rawValue.value;
  if (rawValue.value >= SwiftUI_CustomEventTrace_InstantiationEventType_Kind_unknownDefault)
  {
    value = SwiftUI_CustomEventTrace_InstantiationEventType_Kind_unknownDefault;
  }

  *v1 = value;
  return rawValue;
}

SwiftUI::CustomEventTrace::InstantiationEventType_optional __swiftcall CustomEventTrace.InstantiationEventType.init(rawValue:)(SwiftUI::CustomEventTrace::InstantiationEventType_optional rawValue)
{
  v2 = (rawValue.value - 65);
  if (v2 >= 6)
  {
    LOBYTE(v2) = 6;
  }

  *v1 = v2;
  return rawValue;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CustomEventTrace.InstantiationEventType()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*v0 + 65);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CustomEventTrace.InstantiationEventType(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*v1 + 65);
  return Hasher._finalize()();
}

void static CustomEventTrace.recordGraphHostRoot(_:_:newRoot:_:)(void *a1, void *a2, void *a3, uint64_t a4)
{
  *&v14[33] = *MEMORY[0x1E69E9840];
  (*(*a4 + 240))(v14);
  v7 = v14[0];
  v8 = one-time initialization token for enabledCategories;
  v13 = a1;
  v9 = a2;
  v10 = a3;
  if (v8 != -1)
  {
    v12 = v10;
    swift_once();
    v10 = v12;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x44uLL)
  {
    __break(1u);
  }

  if (*(static CustomEventTrace.enabledCategories + 99) == 1 && static CustomEventTrace.recorder)
  {
    *(*(static CustomEventTrace.recorder + 24) + 4) = 16707;
    v14[1] = v7;
    *&v14[9] = a1;
    *&v14[17] = v9;
    *&v14[25] = v10;
    v11 = v10;
    type metadata accessor for (Int8, AGGraphRef?, AGSubgraphRef, AGSubgraphRef)(0);
    AGGraphAddTraceEvent();
  }

  else
  {
  }
}

uint64_t static CustomEventTrace.recordNamedProperty<A>(_:_:)(__int16 a1, uint64_t a2)
{
  if (one-time initialization token for enabledCategories != -1)
  {
    v4 = a2;
    swift_once();
    a2 = v4;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x44uLL)
  {
    __break(1u);
  }

  if (*(static CustomEventTrace.enabledCategories + 99) == 1 && static CustomEventTrace.recorder)
  {
    *(*(static CustomEventTrace.recorder + 24) + 4) = 17987;
    v2 = a2;
    type metadata accessor for (ViewGraphRootValues, AGAttribute)(0, &lazy cache variable for type metadata for (ViewGraphRootValues, AGAttribute), type metadata accessor for AGAttribute);
    AGGraphAddTraceEvent();
    return v2;
  }

  return a2;
}

uint64_t static CustomEventTrace.instantiate<A>(root:closure:)(uint64_t a1, void (*a2)(void, void), uint64_t a3, uint64_t a4)
{

  return static CustomEventTrace.instantiate<A>(root:closure:)(a1, a2, a3, a4, 66, 67);
}

uint64_t static CustomEventTrace.uninstantiate<A>(root:closure:)(uint64_t a1, void (*a2)(void, void), uint64_t a3, uint64_t a4)
{

  return static CustomEventTrace.instantiate<A>(root:closure:)(a1, a2, a3, a4, 68, 69);
}

uint64_t static CustomEventTrace.instantiate<A>(root:closure:)(uint64_t a1, void (*a2)(void, void), uint64_t a3, uint64_t a4, char a5, char a6)
{
  v7 = a1;
  if (one-time initialization token for enabledCategories != -1)
  {
    v11 = a2;
    v12 = a5;
    a1 = swift_once();
    a5 = v12;
    a2 = v11;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x44uLL)
  {
    __break(1u);
  }

  if (*(static CustomEventTrace.enabledCategories + 99) == 1 && static CustomEventTrace.recorder)
  {
    v8 = *(static CustomEventTrace.recorder + 24);
    *(v8 + 4) = 67;
    *(v8 + 5) = a5;
    v9 = a2;
    type metadata accessor for AGSubgraphRef(0);
    a1 = AGGraphAddTraceEvent();
    a2 = v9;
  }

  a2(a1, a2);
  return static CustomEventTrace.instantiateBegin(_:)(v7, a6);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CustomEventTrace.ObservableEventType(uint64_t a1, uint64_t a2, Swift::UInt8 a3)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CustomEventTrace.ObservableEventType(uint64_t a1, uint64_t a2, uint64_t a3, Swift::UInt8 a4)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a4);
  return Hasher._finalize()();
}

void static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(uint64_t isStackAllocationSafe, void *a2, uint64_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = *isStackAllocationSafe;
  v5 = *(isStackAllocationSafe + 8);
  v6 = *(isStackAllocationSafe + 12);
  if (one-time initialization token for enabledCategories != -1)
  {
    v3 = a2;
    v18 = a3;
    isStackAllocationSafe = swift_once();
    LODWORD(a2) = v3;
    LODWORD(a3) = v18;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x45uLL)
  {
    __break(1u);
LABEL_25:
    v20 = a3;
    v21 = a2;
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if (!isStackAllocationSafe)
    {
      v19 = swift_slowAlloc();
      closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(v19, v6, v4, v5 | (v6 << 32), v21 & 1, v20 & 1, 7);
      if (v3)
      {

        MEMORY[0x193AC4820](v19, -1, -1);
        __break(1u);
      }

      JUMPOUT(0x193AC4820);
    }

    goto LABEL_7;
  }

  if (*(static CustomEventTrace.enabledCategories + 100) != 1)
  {
    return;
  }

  if ((v6 & 0x80000000) != 0)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  v3 = 0;
  if (v6 > 128)
  {
    goto LABEL_25;
  }

LABEL_7:
  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  v10 = &v20 - v9;
  v11 = 0;
  v12 = 0;
  v13 = 0;
LABEL_8:
  v14 = -v12;
  while ((v6 + v14) | v11)
  {
    if (!v4)
    {
      goto LABEL_33;
    }

    v16 = v4 + v11;
    if (v6 + v14 == 1)
    {
      v11 = 0;
    }

    else
    {
      v11 += *(v16 + 8);
    }

    v15 = *(v16 + 12);
    --v14;
    if (v15 < 0)
    {
      *&v10[8 * v13] = v15 & 0x7FFFFFFF;
      v12 = -v14;
      if (!__OFADD__(v13++, 1))
      {
        goto LABEL_8;
      }

      __break(1u);
      break;
    }
  }

  if (v13 < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x45uLL)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (*(static CustomEventTrace.enabledCategories + 100) == 1)
  {
    if (static CustomEventTrace.recorder)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 16708;
      v22 = v10;
      v23 = v13;
      v24 = v7 & 1;
      v25 = v8 & 1;
      type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)(0);
      AGGraphAddTraceEvent();
    }
  }
}

uint64_t closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, char a7)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
LABEL_2:
  v11 = -v9;
  while ((HIDWORD(a4) + v11) | v8)
  {
    if (!a3)
    {
      goto LABEL_22;
    }

    v13 = a3 + v8;
    if (HIDWORD(a4) + v11 == 1)
    {
      v8 = 0;
    }

    else
    {
      v8 += *(v13 + 8);
    }

    v12 = *(v13 + 12);
    --v11;
    if (v12 < 0)
    {
      *(result + 8 * v10) = v12 & 0x7FFFFFFF;
      v9 = -v11;
      if (!__OFADD__(v10++, 1))
      {
        goto LABEL_2;
      }

      __break(1u);
      break;
    }
  }

  if (v10 < 0)
  {
    __break(1u);
  }

  else if (one-time initialization token for enabledCategories == -1)
  {
    goto LABEL_14;
  }

  v17 = result;
  swift_once();
  result = v17;
LABEL_14:
  v15 = 0x4443424741544F00uLL >> (8 * a7);
  if (*(static CustomEventTrace.enabledCategories + 2) <= v15)
  {
    __break(1u);
LABEL_22:
    __break(1u);
  }

  if (*(static CustomEventTrace.enabledCategories + v15 + 32) == 1)
  {
    if (static CustomEventTrace.recorder)
    {
      v16 = *(static CustomEventTrace.recorder + 24);
      *(v16 + 4) = v15;
      *(v16 + 5) = 65;
      type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)(0);
      return AGGraphAddTraceEvent();
    }
  }

  return result;
}

void type metadata accessor for (UInt32, AnyKeyPath?, AGAttribute)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (UInt32, AnyKeyPath?, AGAttribute))
  {
    type metadata accessor for AnyKeyPath?(255, &lazy cache variable for type metadata for AnyKeyPath?, MEMORY[0x1E69E6928]);
    type metadata accessor for AGAttribute(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (UInt32, AnyKeyPath?, AGAttribute));
    }
  }
}

void type metadata accessor for (UInt32, AGAttribute?)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (UInt32, AGAttribute?))
  {
    type metadata accessor for AnyKeyPath?(255, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (UInt32, AGAttribute?));
    }
  }
}

void type metadata accessor for (ViewGraphRootValues, AGAttribute)(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (AGAttribute?, Any.Type, Double, Double, Double, Double))
  {
    type metadata accessor for AnyKeyPath?(255, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute);
    type metadata accessor for Any.Type();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &lazy cache variable for type metadata for (AGAttribute?, Any.Type, Double, Double, Double, Double));
    }
  }
}

void type metadata accessor for (AGAttribute?, Double)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (AGAttribute?, Double))
  {
    type metadata accessor for AnyKeyPath?(255, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (AGAttribute?, Double));
    }
  }
}

void type metadata accessor for (Bool, Double)()
{
  if (!lazy cache variable for type metadata for (Bool, Double))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Bool, Double));
    }
  }
}

void type metadata accessor for (Int8, AGGraphRef?, AGSubgraphRef, AGSubgraphRef)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (Int8, AGGraphRef?, AGSubgraphRef, AGSubgraphRef))
  {
    type metadata accessor for AnyKeyPath?(255, &lazy cache variable for type metadata for AGGraphRef?, type metadata accessor for AGGraphRef);
    type metadata accessor for AGSubgraphRef(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &lazy cache variable for type metadata for (Int8, AGGraphRef?, AGSubgraphRef, AGSubgraphRef));
    }
  }
}

void type metadata accessor for AnyKeyPath?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void lazy protocol witness table accessor for type CustomEventCategory and conformance CustomEventCategory()
{
  if (!lazy protocol witness table cache variable for type CustomEventCategory and conformance CustomEventCategory)
  {
    swift_getWitnessTable(protocol conformance descriptor for CustomEventCategory, &type metadata for CustomEventCategory, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CustomEventCategory and conformance CustomEventCategory);
  }
}

void lazy protocol witness table accessor for type CustomEventTrace.ObservableEventType and conformance CustomEventTrace.ObservableEventType()
{
  if (!lazy protocol witness table cache variable for type CustomEventTrace.ObservableEventType and conformance CustomEventTrace.ObservableEventType)
  {
    swift_getWitnessTable(protocol conformance descriptor for CustomEventTrace.ObservableEventType, &type metadata for CustomEventTrace.ObservableEventType, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CustomEventTrace.ObservableEventType and conformance CustomEventTrace.ObservableEventType);
  }
}

void lazy protocol witness table accessor for type CustomEventTrace.TransactionEventType and conformance CustomEventTrace.TransactionEventType()
{
  if (!lazy protocol witness table cache variable for type CustomEventTrace.TransactionEventType and conformance CustomEventTrace.TransactionEventType)
  {
    swift_getWitnessTable(protocol conformance descriptor for CustomEventTrace.TransactionEventType, &type metadata for CustomEventTrace.TransactionEventType, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CustomEventTrace.TransactionEventType and conformance CustomEventTrace.TransactionEventType);
  }
}

void lazy protocol witness table accessor for type CustomEventTrace.ActionEventType.Reason and conformance CustomEventTrace.ActionEventType.Reason()
{
  if (!lazy protocol witness table cache variable for type CustomEventTrace.ActionEventType.Reason and conformance CustomEventTrace.ActionEventType.Reason)
  {
    swift_getWitnessTable(protocol conformance descriptor for CustomEventTrace.ActionEventType.Reason, &type metadata for CustomEventTrace.ActionEventType.Reason, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CustomEventTrace.ActionEventType.Reason and conformance CustomEventTrace.ActionEventType.Reason);
  }
}

void lazy protocol witness table accessor for type CustomEventTrace.ActionEventType and conformance CustomEventTrace.ActionEventType()
{
  if (!lazy protocol witness table cache variable for type CustomEventTrace.ActionEventType and conformance CustomEventTrace.ActionEventType)
  {
    swift_getWitnessTable(protocol conformance descriptor for CustomEventTrace.ActionEventType, &type metadata for CustomEventTrace.ActionEventType, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CustomEventTrace.ActionEventType and conformance CustomEventTrace.ActionEventType);
  }
}

void lazy protocol witness table accessor for type CustomEventTrace.GraphEventType and conformance CustomEventTrace.GraphEventType()
{
  if (!lazy protocol witness table cache variable for type CustomEventTrace.GraphEventType and conformance CustomEventTrace.GraphEventType)
  {
    swift_getWitnessTable(protocol conformance descriptor for CustomEventTrace.GraphEventType, &type metadata for CustomEventTrace.GraphEventType, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CustomEventTrace.GraphEventType and conformance CustomEventTrace.GraphEventType);
  }
}

void lazy protocol witness table accessor for type CustomEventTrace.AnimationEventType and conformance CustomEventTrace.AnimationEventType()
{
  if (!lazy protocol witness table cache variable for type CustomEventTrace.AnimationEventType and conformance CustomEventTrace.AnimationEventType)
  {
    swift_getWitnessTable(protocol conformance descriptor for CustomEventTrace.AnimationEventType, &type metadata for CustomEventTrace.AnimationEventType, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CustomEventTrace.AnimationEventType and conformance CustomEventTrace.AnimationEventType);
  }
}

void lazy protocol witness table accessor for type CustomEventTrace.InstantiationEventType.Kind and conformance CustomEventTrace.InstantiationEventType.Kind()
{
  if (!lazy protocol witness table cache variable for type CustomEventTrace.InstantiationEventType.Kind and conformance CustomEventTrace.InstantiationEventType.Kind)
  {
    swift_getWitnessTable(protocol conformance descriptor for CustomEventTrace.InstantiationEventType.Kind, &type metadata for CustomEventTrace.InstantiationEventType.Kind, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CustomEventTrace.InstantiationEventType.Kind and conformance CustomEventTrace.InstantiationEventType.Kind);
  }
}

void lazy protocol witness table accessor for type CustomEventTrace.InstantiationEventType and conformance CustomEventTrace.InstantiationEventType()
{
  if (!lazy protocol witness table cache variable for type CustomEventTrace.InstantiationEventType and conformance CustomEventTrace.InstantiationEventType)
  {
    swift_getWitnessTable(protocol conformance descriptor for CustomEventTrace.InstantiationEventType, &type metadata for CustomEventTrace.InstantiationEventType, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CustomEventTrace.InstantiationEventType and conformance CustomEventTrace.InstantiationEventType);
  }
}

void lazy protocol witness table accessor for type CustomEventTrace.DynamicPropertyEventType and conformance CustomEventTrace.DynamicPropertyEventType()
{
  if (!lazy protocol witness table cache variable for type CustomEventTrace.DynamicPropertyEventType and conformance CustomEventTrace.DynamicPropertyEventType)
  {
    swift_getWitnessTable(protocol conformance descriptor for CustomEventTrace.DynamicPropertyEventType, &type metadata for CustomEventTrace.DynamicPropertyEventType, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CustomEventTrace.DynamicPropertyEventType and conformance CustomEventTrace.DynamicPropertyEventType);
  }
}

uint64_t getEnumTagSinglePayload for CustomEventTrace.ActionEventType.Reason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CustomEventTrace.ActionEventType.Reason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for CustomEventTrace.TransactionEventType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t Color.ProviderTag.box.getter(uint64_t a1)
{
  v1 = Color.ProviderTag.type.getter();
  v3 = type metadata accessor for ColorBox(0, v1, v2, v2);
  swift_getWitnessTable(protocol conformance descriptor for ColorBox<A>, v3);
  return v3;
}

ValueMetadata *Color.ProviderTag.type.getter()
{
  v1 = *v0;
  switch(v1)
  {
    case 0:
      type metadata accessor for CustomColorProvider<Color>(0);
      v3 = v2;
      v4 = &lazy protocol witness table cache variable for type CustomColorProvider<Color> and conformance CustomColorProvider<A>;
      v5 = type metadata accessor for CustomColorProvider<Color>;
      v6 = protocol conformance descriptor for CustomColorProvider<A>;
      goto LABEL_17;
    case 1:
      type metadata accessor for CustomHDRColorProvider<HDRColor>(0);
      v3 = v7;
      v4 = &lazy protocol witness table cache variable for type CustomHDRColorProvider<HDRColor> and conformance CustomHDRColorProvider<A>;
      v5 = type metadata accessor for CustomHDRColorProvider<HDRColor>;
      v6 = protocol conformance descriptor for CustomHDRColorProvider<A>;
      goto LABEL_17;
    case 2:
      v3 = &type metadata for Color.ForegroundColorProvider;
      lazy protocol witness table accessor for type Color.ForegroundColorProvider and conformance Color.ForegroundColorProvider();
      return v3;
    case 3:
      v3 = &type metadata for Color.BackgroundColorProvider;
      lazy protocol witness table accessor for type Color.BackgroundColorProvider and conformance Color.BackgroundColorProvider();
      return v3;
    case 4:
      v3 = &type metadata for Color.AccentColorProvider;
      lazy protocol witness table accessor for type Color.AccentColorProvider and conformance Color.AccentColorProvider();
      return v3;
    case 5:
      v3 = &type metadata for ResolvedColorProvider;
      lazy protocol witness table accessor for type ResolvedColorProvider and conformance ResolvedColorProvider();
      return v3;
    case 6:
      v3 = &type metadata for Color.DisplayP3;
      lazy protocol witness table accessor for type Color.DisplayP3 and conformance Color.DisplayP3();
      return v3;
    case 7:
      v3 = &type metadata for ContentStyle.ID;
      lazy protocol witness table accessor for type ContentStyle.ID and conformance ContentStyle.ID();
      return v3;
    case 8:
      v3 = &type metadata for SystemColorType;
      lazy protocol witness table accessor for type SystemColorType and conformance SystemColorType();
      return v3;
    case 9:
      v3 = &type metadata for Color.KeyColorProvider;
      lazy protocol witness table accessor for type Color.KeyColorProvider and conformance Color.KeyColorProvider();
      return v3;
    case 10:
      v3 = &type metadata for Color.CustomKeyColorProvider;
      lazy protocol witness table accessor for type Color.CustomKeyColorProvider and conformance Color.CustomKeyColorProvider();
      return v3;
    case 11:
      v3 = &type metadata for Color.TintAdjustmentProvider;
      lazy protocol witness table accessor for type Color.TintAdjustmentProvider and conformance Color.TintAdjustmentProvider();
      return v3;
    case 12:
      v3 = &type metadata for Color.DesaturatedColor;
      lazy protocol witness table accessor for type Color.DesaturatedColor and conformance Color.DesaturatedColor();
      return v3;
    case 13:
      v3 = &type metadata for GradientColorProvider;
      lazy protocol witness table accessor for type GradientColorProvider and conformance GradientColorProvider();
      return v3;
    case 14:
      v3 = &type metadata for Color.NamedColor;
      lazy protocol witness table accessor for type Color.NamedColor and conformance Color.NamedColor();
      return v3;
    case 15:
      v3 = &type metadata for Color.OpacityColor;
      lazy protocol witness table accessor for type Color.OpacityColor and conformance Color.OpacityColor();
      return v3;
    case 16:
      v3 = &type metadata for Color.SettingOpacityProvider;
      lazy protocol witness table accessor for type Color.SettingOpacityProvider and conformance Color.SettingOpacityProvider();
      return v3;
    case 17:
      v3 = &type metadata for Color.HierarchicalOpacityColor;
      lazy protocol witness table accessor for type Color.HierarchicalOpacityColor and conformance Color.HierarchicalOpacityColor();
      return v3;
    case 18:
      v3 = &type metadata for Color.DestinationOverProvider;
      lazy protocol witness table accessor for type Color.DestinationOverProvider and conformance Color.DestinationOverProvider();
      return v3;
    case 19:
      v3 = &type metadata for Color.MixProvider;
      lazy protocol witness table accessor for type Color.MixProvider and conformance Color.MixProvider();
      return v3;
    case 20:
      type metadata accessor for CGColorRef(0);
      v3 = v8;
      v4 = &lazy protocol witness table cache variable for type CGColorRef and conformance CGColorRef;
      v5 = type metadata accessor for CGColorRef;
      v6 = protocol conformance descriptor for CGColorRef;
LABEL_17:
      lazy protocol witness table accessor for type ProxyCodable<Color> and conformance ProxyCodable<A>(v4, v5, v6);
      break;
    case 21:
      v3 = &type metadata for UIKitPlatformColorProvider;
      lazy protocol witness table accessor for type UIKitPlatformColorProvider and conformance UIKitPlatformColorProvider();
      break;
    case 22:
      v3 = &type metadata for AppKitPlatformColorProvider;
      lazy protocol witness table accessor for type AppKitPlatformColorProvider and conformance AppKitPlatformColorProvider();
      break;
    case 23:
      v3 = &type metadata for HeadroomColorProvider;
      lazy protocol witness table accessor for type HeadroomColorProvider and conformance HeadroomColorProvider();
      break;
    case 24:
      v3 = &type metadata for LinearScaleColorProvider;
      lazy protocol witness table accessor for type LinearScaleColorProvider and conformance LinearScaleColorProvider();
      break;
    default:
      v3 = (*(*v1 + 104))();
      break;
  }

  return v3;
}

uint64_t static ColorProvider.box.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for ColorBox(0, a1, a2, a4);
  swift_getWitnessTable(protocol conformance descriptor for ColorBox<A>, v4);
  return v4;
}

unint64_t Color.ProviderTag.CodingKeys.stringValue.getter(char a1)
{
  result = 0x6D6F74737563;
  switch(a1)
  {
    case 1:
      result = 0x44486D6F74737563;
      break;
    case 2:
      result = 0x756F726765726F66;
      break;
    case 3:
      result = 0x6F72676B6361625FLL;
      break;
    case 4:
      result = 0x746E65636361;
      break;
    case 5:
      result = 0x746E6174736E6F63;
      break;
    case 6:
      result = 13168;
      break;
    case 7:
      result = 0x746E65746E6F635FLL;
      break;
    case 8:
      result = 0x6D6574737973;
      break;
    case 9:
      result = 0x6F6C6F4379656B5FLL;
      break;
    case 10:
      result = 0x4B6D6F747375635FLL;
      break;
    case 11:
      result = 0x6A6441746E69745FLL;
      break;
    case 12:
      result = 0x727574617365645FLL;
      break;
    case 13:
      result = 0x746E656964617267;
      break;
    case 14:
      result = 0x64656D616ELL;
      break;
    case 15:
      result = 0x7974696361706FLL;
      break;
    case 16:
      result = 0x676E69747465735FLL;
      break;
    case 17:
      result = 0xD000000000000014;
      break;
    case 18:
      result = 0xD000000000000010;
      break;
    case 19:
      result = 7891309;
      break;
    case 20:
      result = 0x7061724765726F63;
      break;
    case 21:
      result = 0x6C6F4374694B6975;
      break;
    case 22:
      result = 0x6F4374694B707061;
      break;
    case 23:
      result = 0x6D726F6674616C70;
      break;
    case 24:
      result = 0x6D6F6F7264616568;
      break;
    case 25:
      result = 0x63537261656E696CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Color.ProviderTag.AccentCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Color.ProviderTag.AccentCodingKeys and conformance Color.ProviderTag.AccentCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Color.ProviderTag.AccentCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Color.ProviderTag.AccentCodingKeys and conformance Color.ProviderTag.AccentCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Color.ProviderTag.AppKitColorCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Color.ProviderTag.AppKitColorCodingKeys and conformance Color.ProviderTag.AppKitColorCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Color.ProviderTag.AppKitColorCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Color.ProviderTag.AppKitColorCodingKeys and conformance Color.ProviderTag.AppKitColorCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Color.ProviderTag.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized Color.ProviderTag.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Color.ProviderTag.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Color.ProviderTag.CodingKeys and conformance Color.ProviderTag.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Color.ProviderTag.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Color.ProviderTag.CodingKeys and conformance Color.ProviderTag.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Color.ProviderTag.ConstantCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Color.ProviderTag.ConstantCodingKeys and conformance Color.ProviderTag.ConstantCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Color.ProviderTag.ConstantCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Color.ProviderTag.ConstantCodingKeys and conformance Color.ProviderTag.ConstantCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Color.ProviderTag.CoreGraphicsCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Color.ProviderTag.CoreGraphicsCodingKeys and conformance Color.ProviderTag.CoreGraphicsCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Color.ProviderTag.CoreGraphicsCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Color.ProviderTag.CoreGraphicsCodingKeys and conformance Color.ProviderTag.CoreGraphicsCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Color.ProviderTag.CustomCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Color.ProviderTag.CustomCodingKeys and conformance Color.ProviderTag.CustomCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Color.ProviderTag.CustomCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Color.ProviderTag.CustomCodingKeys and conformance Color.ProviderTag.CustomCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Color.ProviderTag.CustomHDRCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Color.ProviderTag.CustomHDRCodingKeys and conformance Color.ProviderTag.CustomHDRCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Color.ProviderTag.CustomHDRCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Color.ProviderTag.CustomHDRCodingKeys and conformance Color.ProviderTag.CustomHDRCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Color.ProviderTag.ForegroundCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Color.ProviderTag.ForegroundCodingKeys and conformance Color.ProviderTag.ForegroundCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Color.ProviderTag.ForegroundCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Color.ProviderTag.ForegroundCodingKeys and conformance Color.ProviderTag.ForegroundCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Color.ProviderTag.GradientCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Color.ProviderTag.GradientCodingKeys and conformance Color.ProviderTag.GradientCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Color.ProviderTag.GradientCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Color.ProviderTag.GradientCodingKeys and conformance Color.ProviderTag.GradientCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Color.ProviderTag.HeadroomCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Color.ProviderTag.HeadroomCodingKeys and conformance Color.ProviderTag.HeadroomCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Color.ProviderTag.HeadroomCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Color.ProviderTag.HeadroomCodingKeys and conformance Color.ProviderTag.HeadroomCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Color.ProviderTag.LinearScaleCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Color.ProviderTag.LinearScaleCodingKeys and conformance Color.ProviderTag.LinearScaleCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Color.ProviderTag.LinearScaleCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Color.ProviderTag.LinearScaleCodingKeys and conformance Color.ProviderTag.LinearScaleCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Color.ProviderTag.MixCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Color.ProviderTag.MixCodingKeys and conformance Color.ProviderTag.MixCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Color.ProviderTag.MixCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Color.ProviderTag.MixCodingKeys and conformance Color.ProviderTag.MixCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Color.ProviderTag.NamedCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Color.ProviderTag.NamedCodingKeys and conformance Color.ProviderTag.NamedCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Color.ProviderTag.NamedCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Color.ProviderTag.NamedCodingKeys and conformance Color.ProviderTag.NamedCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Color.ProviderTag.OpacityCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Color.ProviderTag.OpacityCodingKeys and conformance Color.ProviderTag.OpacityCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Color.ProviderTag.OpacityCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Color.ProviderTag.OpacityCodingKeys and conformance Color.ProviderTag.OpacityCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Color.ProviderTag.P3CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Color.ProviderTag.P3CodingKeys and conformance Color.ProviderTag.P3CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Color.ProviderTag.P3CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Color.ProviderTag.P3CodingKeys and conformance Color.ProviderTag.P3CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Color.ProviderTag.PlatformCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Color.ProviderTag.PlatformCodingKeys and conformance Color.ProviderTag.PlatformCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Color.ProviderTag.PlatformCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Color.ProviderTag.PlatformCodingKeys and conformance Color.ProviderTag.PlatformCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Color.ProviderTag.SystemCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Color.ProviderTag.SystemCodingKeys and conformance Color.ProviderTag.SystemCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Color.ProviderTag.SystemCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Color.ProviderTag.SystemCodingKeys and conformance Color.ProviderTag.SystemCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Color.ProviderTag.UiKitColorCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Color.ProviderTag.UiKitColorCodingKeys and conformance Color.ProviderTag.UiKitColorCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Color.ProviderTag.UiKitColorCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Color.ProviderTag.UiKitColorCodingKeys and conformance Color.ProviderTag.UiKitColorCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Color.ProviderTag._backgroundCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Color.ProviderTag._backgroundCodingKeys and conformance Color.ProviderTag._backgroundCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Color.ProviderTag._backgroundCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Color.ProviderTag._backgroundCodingKeys and conformance Color.ProviderTag._backgroundCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Color.ProviderTag._contentStyleCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Color.ProviderTag._contentStyleCodingKeys and conformance Color.ProviderTag._contentStyleCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Color.ProviderTag._contentStyleCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Color.ProviderTag._contentStyleCodingKeys and conformance Color.ProviderTag._contentStyleCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Color.ProviderTag._customKeyColorCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Color.ProviderTag._customKeyColorCodingKeys and conformance Color.ProviderTag._customKeyColorCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Color.ProviderTag._customKeyColorCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Color.ProviderTag._customKeyColorCodingKeys and conformance Color.ProviderTag._customKeyColorCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Color.ProviderTag._desaturationCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Color.ProviderTag._desaturationCodingKeys and conformance Color.ProviderTag._desaturationCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Color.ProviderTag._desaturationCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Color.ProviderTag._desaturationCodingKeys and conformance Color.ProviderTag._desaturationCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Color.ProviderTag._destinationOverCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Color.ProviderTag._destinationOverCodingKeys and conformance Color.ProviderTag._destinationOverCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Color.ProviderTag._destinationOverCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Color.ProviderTag._destinationOverCodingKeys and conformance Color.ProviderTag._destinationOverCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Color.ProviderTag._hierarchicalOpacityCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Color.ProviderTag._hierarchicalOpacityCodingKeys and conformance Color.ProviderTag._hierarchicalOpacityCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Color.ProviderTag._hierarchicalOpacityCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Color.ProviderTag._hierarchicalOpacityCodingKeys and conformance Color.ProviderTag._hierarchicalOpacityCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Color.ProviderTag._keyColorCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Color.ProviderTag._keyColorCodingKeys and conformance Color.ProviderTag._keyColorCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Color.ProviderTag._keyColorCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Color.ProviderTag._keyColorCodingKeys and conformance Color.ProviderTag._keyColorCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Color.ProviderTag._settingOpacityCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Color.ProviderTag._settingOpacityCodingKeys and conformance Color.ProviderTag._settingOpacityCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Color.ProviderTag._settingOpacityCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Color.ProviderTag._settingOpacityCodingKeys and conformance Color.ProviderTag._settingOpacityCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Color.ProviderTag._tintAdjustmentCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Color.ProviderTag._tintAdjustmentCodingKeys and conformance Color.ProviderTag._tintAdjustmentCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Color.ProviderTag._tintAdjustmentCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Color.ProviderTag._tintAdjustmentCodingKeys and conformance Color.ProviderTag._tintAdjustmentCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Color.ProviderTag.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E6F58];
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag.LinearScaleCodingKeys and conformance Color.ProviderTag.LinearScaleCodingKeys, &unk_1F0074588, MEMORY[0x1E69E6F58]);
  v169 = *(v5 - 8);
  v170 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v168 = &v96 - v6;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Color.ProviderTag.HeadroomCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag.HeadroomCodingKeys and conformance Color.ProviderTag.HeadroomCodingKeys, &unk_1F0074568, v4);
  v166 = *(v7 - 8);
  v167 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v164 = &v96 - v8;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Color.ProviderTag.PlatformCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag.PlatformCodingKeys and conformance Color.ProviderTag.PlatformCodingKeys, &unk_1F0074548, v4);
  v165 = v9;
  v160 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v163 = &v96 - v10;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Color.ProviderTag.AppKitColorCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag.AppKitColorCodingKeys and conformance Color.ProviderTag.AppKitColorCodingKeys, &unk_1F00744B8, v4);
  v161 = *(v11 - 8);
  v162 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v159 = &v96 - v12;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Color.ProviderTag.UiKitColorCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag.UiKitColorCodingKeys and conformance Color.ProviderTag.UiKitColorCodingKeys, &unk_1F0074498, v4);
  v157 = *(v13 - 8);
  v158 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v156 = &v96 - v14;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Color.ProviderTag.CoreGraphicsCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag.CoreGraphicsCodingKeys and conformance Color.ProviderTag.CoreGraphicsCodingKeys, &unk_1F0074478, v4);
  v154 = *(v15 - 8);
  v155 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v153 = &v96 - v16;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Color.ProviderTag.MixCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag.MixCodingKeys and conformance Color.ProviderTag.MixCodingKeys, &unk_1F0074458, v4);
  v152 = v17;
  v151 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v150 = &v96 - v18;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Color.ProviderTag._destinationOverCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag._destinationOverCodingKeys and conformance Color.ProviderTag._destinationOverCodingKeys, &unk_1F0074438, v4);
  v149 = v19;
  v148 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v147 = &v96 - v20;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Color.ProviderTag._hierarchicalOpacityCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag._hierarchicalOpacityCodingKeys and conformance Color.ProviderTag._hierarchicalOpacityCodingKeys, &unk_1F0074418, v4);
  v146 = v21;
  v145 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v144 = &v96 - v22;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Color.ProviderTag._settingOpacityCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag._settingOpacityCodingKeys and conformance Color.ProviderTag._settingOpacityCodingKeys, &unk_1F00743F8, v4);
  v143 = v23;
  v142 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v141 = &v96 - v24;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Color.ProviderTag.OpacityCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag.OpacityCodingKeys and conformance Color.ProviderTag.OpacityCodingKeys, &unk_1F00743D8, v4);
  v140 = v25;
  v139 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v138 = &v96 - v26;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Color.ProviderTag.NamedCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag.NamedCodingKeys and conformance Color.ProviderTag.NamedCodingKeys, &unk_1F00743B8, v4);
  v137 = v27;
  v136 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v135 = &v96 - v28;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Color.ProviderTag.GradientCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag.GradientCodingKeys and conformance Color.ProviderTag.GradientCodingKeys, &unk_1F0074398, v4);
  v134 = v29;
  v133 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v132 = &v96 - v30;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Color.ProviderTag._desaturationCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag._desaturationCodingKeys and conformance Color.ProviderTag._desaturationCodingKeys, &unk_1F0074378, v4);
  v131 = v31;
  v130 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v129 = &v96 - v32;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Color.ProviderTag._tintAdjustmentCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag._tintAdjustmentCodingKeys and conformance Color.ProviderTag._tintAdjustmentCodingKeys, &unk_1F0074358, v4);
  v128 = v33;
  v127 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v126 = &v96 - v34;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Color.ProviderTag._customKeyColorCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag._customKeyColorCodingKeys and conformance Color.ProviderTag._customKeyColorCodingKeys, &unk_1F0074338, v4);
  v125 = v35;
  v124 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v123 = &v96 - v36;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Color.ProviderTag._keyColorCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag._keyColorCodingKeys and conformance Color.ProviderTag._keyColorCodingKeys, &unk_1F0074318, v4);
  v122 = v37;
  v121 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v120 = &v96 - v38;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Color.ProviderTag.SystemCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag.SystemCodingKeys and conformance Color.ProviderTag.SystemCodingKeys, &unk_1F00742F8, v4);
  v119 = v39;
  v118 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v117 = &v96 - v40;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Color.ProviderTag._contentStyleCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag._contentStyleCodingKeys and conformance Color.ProviderTag._contentStyleCodingKeys, &unk_1F00742D8, v4);
  v116 = v41;
  v115 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v114 = &v96 - v42;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Color.ProviderTag.P3CodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag.P3CodingKeys and conformance Color.ProviderTag.P3CodingKeys, &unk_1F00742B8, v4);
  v113 = v43;
  v112 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v111 = &v96 - v44;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Color.ProviderTag.ConstantCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag.ConstantCodingKeys and conformance Color.ProviderTag.ConstantCodingKeys, &unk_1F0074298, v4);
  v110 = v45;
  v109 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v108 = &v96 - v46;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Color.ProviderTag.AccentCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag.AccentCodingKeys and conformance Color.ProviderTag.AccentCodingKeys, &unk_1F0074278, v4);
  v107 = v47;
  v106 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v105 = &v96 - v48;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Color.ProviderTag._backgroundCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag._backgroundCodingKeys and conformance Color.ProviderTag._backgroundCodingKeys, &unk_1F0074258, v4);
  v104 = v49;
  v103 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v102 = &v96 - v50;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Color.ProviderTag.ForegroundCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag.ForegroundCodingKeys and conformance Color.ProviderTag.ForegroundCodingKeys, &unk_1F0074238, v4);
  v101 = v51;
  v100 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v99 = &v96 - v52;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Color.ProviderTag.CustomHDRCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag.CustomHDRCodingKeys and conformance Color.ProviderTag.CustomHDRCodingKeys, &unk_1F0074218, v4);
  v98 = v53;
  v97 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v96 - v54;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Color.ProviderTag.CustomCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag.CustomCodingKeys and conformance Color.ProviderTag.CustomCodingKeys, &unk_1F00741F8, v4);
  v57 = v56;
  v96 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v59 = &v96 - v58;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Color.ProviderTag.CodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag.CodingKeys and conformance Color.ProviderTag.CodingKeys, &unk_1F00741D8, v4);
  v61 = *(v60 - 8);
  v172 = v60;
  v173 = v61;
  MEMORY[0x1EEE9AC00](v60);
  v63 = &v96 - v62;
  v64 = *v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Color.ProviderTag.CodingKeys and conformance Color.ProviderTag.CodingKeys();
  v171 = v63;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  switch(v64)
  {
    case 0:
      LOBYTE(v174) = 0;
      lazy protocol witness table accessor for type Color.ProviderTag.CustomCodingKeys and conformance Color.ProviderTag.CustomCodingKeys();
      v66 = v171;
      v65 = v172;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v96 + 8))(v59, v57);
      goto LABEL_28;
    case 1:
      LOBYTE(v174) = 1;
      lazy protocol witness table accessor for type Color.ProviderTag.CustomHDRCodingKeys and conformance Color.ProviderTag.CustomHDRCodingKeys();
      v80 = v171;
      v81 = v172;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v97 + 8))(v55, v98);
      return (*(v173 + 8))(v80, v81);
    case 2:
      LOBYTE(v174) = 2;
      lazy protocol witness table accessor for type Color.ProviderTag.ForegroundCodingKeys and conformance Color.ProviderTag.ForegroundCodingKeys();
      v76 = v99;
      v66 = v171;
      v65 = v172;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v100 + 8))(v76, v101);
      goto LABEL_28;
    case 3:
      LOBYTE(v174) = 3;
      lazy protocol witness table accessor for type Color.ProviderTag._backgroundCodingKeys and conformance Color.ProviderTag._backgroundCodingKeys();
      v78 = v102;
      v66 = v171;
      v65 = v172;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v103 + 8))(v78, v104);
      goto LABEL_28;
    case 4:
      LOBYTE(v174) = 4;
      lazy protocol witness table accessor for type Color.ProviderTag.AccentCodingKeys and conformance Color.ProviderTag.AccentCodingKeys();
      v70 = v105;
      v66 = v171;
      v65 = v172;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v106 + 8))(v70, v107);
      goto LABEL_28;
    case 5:
      LOBYTE(v174) = 5;
      lazy protocol witness table accessor for type Color.ProviderTag.ConstantCodingKeys and conformance Color.ProviderTag.ConstantCodingKeys();
      v84 = v108;
      v66 = v171;
      v65 = v172;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v109 + 8))(v84, v110);
      goto LABEL_28;
    case 6:
      LOBYTE(v174) = 6;
      lazy protocol witness table accessor for type Color.ProviderTag.P3CodingKeys and conformance Color.ProviderTag.P3CodingKeys();
      v86 = v111;
      v66 = v171;
      v65 = v172;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v112 + 8))(v86, v113);
      goto LABEL_28;
    case 7:
      LOBYTE(v174) = 7;
      lazy protocol witness table accessor for type Color.ProviderTag._contentStyleCodingKeys and conformance Color.ProviderTag._contentStyleCodingKeys();
      v79 = v114;
      v66 = v171;
      v65 = v172;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v115 + 8))(v79, v116);
      goto LABEL_28;
    case 8:
      LOBYTE(v174) = 8;
      lazy protocol witness table accessor for type Color.ProviderTag.SystemCodingKeys and conformance Color.ProviderTag.SystemCodingKeys();
      v89 = v117;
      v66 = v171;
      v65 = v172;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v118 + 8))(v89, v119);
      goto LABEL_28;
    case 9:
      LOBYTE(v174) = 9;
      lazy protocol witness table accessor for type Color.ProviderTag._keyColorCodingKeys and conformance Color.ProviderTag._keyColorCodingKeys();
      v72 = v120;
      v66 = v171;
      v65 = v172;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v121 + 8))(v72, v122);
      goto LABEL_28;
    case 10:
      LOBYTE(v174) = 10;
      lazy protocol witness table accessor for type Color.ProviderTag._customKeyColorCodingKeys and conformance Color.ProviderTag._customKeyColorCodingKeys();
      v88 = v123;
      v66 = v171;
      v65 = v172;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v124 + 8))(v88, v125);
      goto LABEL_28;
    case 11:
      LOBYTE(v174) = 11;
      lazy protocol witness table accessor for type Color.ProviderTag._tintAdjustmentCodingKeys and conformance Color.ProviderTag._tintAdjustmentCodingKeys();
      v69 = v126;
      v66 = v171;
      v65 = v172;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v127 + 8))(v69, v128);
      goto LABEL_28;
    case 12:
      LOBYTE(v174) = 12;
      lazy protocol witness table accessor for type Color.ProviderTag._desaturationCodingKeys and conformance Color.ProviderTag._desaturationCodingKeys();
      v71 = v129;
      v66 = v171;
      v65 = v172;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v130 + 8))(v71, v131);
      goto LABEL_28;
    case 13:
      LOBYTE(v174) = 13;
      lazy protocol witness table accessor for type Color.ProviderTag.GradientCodingKeys and conformance Color.ProviderTag.GradientCodingKeys();
      v85 = v132;
      v66 = v171;
      v65 = v172;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v133 + 8))(v85, v134);
      goto LABEL_28;
    case 14:
      LOBYTE(v174) = 14;
      lazy protocol witness table accessor for type Color.ProviderTag.NamedCodingKeys and conformance Color.ProviderTag.NamedCodingKeys();
      v68 = v135;
      v66 = v171;
      v65 = v172;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v136 + 8))(v68, v137);
      goto LABEL_28;
    case 15:
      LOBYTE(v174) = 15;
      lazy protocol witness table accessor for type Color.ProviderTag.OpacityCodingKeys and conformance Color.ProviderTag.OpacityCodingKeys();
      v77 = v138;
      v66 = v171;
      v65 = v172;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v139 + 8))(v77, v140);
      goto LABEL_28;
    case 16:
      LOBYTE(v174) = 16;
      lazy protocol witness table accessor for type Color.ProviderTag._settingOpacityCodingKeys and conformance Color.ProviderTag._settingOpacityCodingKeys();
      v67 = v141;
      v66 = v171;
      v65 = v172;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v142 + 8))(v67, v143);
      goto LABEL_28;
    case 17:
      LOBYTE(v174) = 17;
      lazy protocol witness table accessor for type Color.ProviderTag._hierarchicalOpacityCodingKeys and conformance Color.ProviderTag._hierarchicalOpacityCodingKeys();
      v83 = v144;
      v66 = v171;
      v65 = v172;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v145 + 8))(v83, v146);
      goto LABEL_28;
    case 18:
      LOBYTE(v174) = 18;
      lazy protocol witness table accessor for type Color.ProviderTag._destinationOverCodingKeys and conformance Color.ProviderTag._destinationOverCodingKeys();
      v87 = v147;
      v66 = v171;
      v65 = v172;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v148 + 8))(v87, v149);
      goto LABEL_28;
    case 19:
      LOBYTE(v174) = 19;
      lazy protocol witness table accessor for type Color.ProviderTag.MixCodingKeys and conformance Color.ProviderTag.MixCodingKeys();
      v90 = v150;
      v66 = v171;
      v65 = v172;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v151 + 8))(v90, v152);
      goto LABEL_28;
    case 20:
      LOBYTE(v174) = 20;
      lazy protocol witness table accessor for type Color.ProviderTag.CoreGraphicsCodingKeys and conformance Color.ProviderTag.CoreGraphicsCodingKeys();
      v73 = v153;
      v66 = v171;
      v65 = v172;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v75 = v154;
      v74 = v155;
      goto LABEL_27;
    case 21:
      LOBYTE(v174) = 21;
      lazy protocol witness table accessor for type Color.ProviderTag.UiKitColorCodingKeys and conformance Color.ProviderTag.UiKitColorCodingKeys();
      v73 = v156;
      v66 = v171;
      v65 = v172;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v75 = v157;
      v74 = v158;
      goto LABEL_27;
    case 22:
      LOBYTE(v174) = 22;
      lazy protocol witness table accessor for type Color.ProviderTag.AppKitColorCodingKeys and conformance Color.ProviderTag.AppKitColorCodingKeys();
      v73 = v159;
      v66 = v171;
      v65 = v172;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v75 = v161;
      v74 = v162;
      goto LABEL_27;
    case 23:
      LOBYTE(v174) = 24;
      lazy protocol witness table accessor for type Color.ProviderTag.HeadroomCodingKeys and conformance Color.ProviderTag.HeadroomCodingKeys();
      v73 = v164;
      v66 = v171;
      v65 = v172;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v75 = v166;
      v74 = v167;
      goto LABEL_27;
    case 24:
      LOBYTE(v174) = 25;
      lazy protocol witness table accessor for type Color.ProviderTag.LinearScaleCodingKeys and conformance Color.ProviderTag.LinearScaleCodingKeys();
      v73 = v168;
      v66 = v171;
      v65 = v172;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v75 = v169;
      v74 = v170;
LABEL_27:
      (*(v75 + 8))(v73, v74);
LABEL_28:
      result = (*(v173 + 8))(v66, v65);
      break;
    default:
      v91 = v160;
      LOBYTE(v174) = 23;
      lazy protocol witness table accessor for type Color.ProviderTag.PlatformCodingKeys and conformance Color.ProviderTag.PlatformCodingKeys();
      v92 = v163;
      v94 = v171;
      v93 = v172;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v174 = v64;
      lazy protocol witness table accessor for type Color.ProviderTag.PlatformTag and conformance Color.ProviderTag.PlatformTag();
      v95 = v165;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v91 + 8))(v92, v95);
      result = (*(v173 + 8))(v94, v93);
      break;
  }

  return result;
}

void lazy protocol witness table accessor for type Color.ProviderTag.LinearScaleCodingKeys and conformance Color.ProviderTag.LinearScaleCodingKeys()
{
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.LinearScaleCodingKeys and conformance Color.ProviderTag.LinearScaleCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag.LinearScaleCodingKeys, &unk_1F0074588, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ProviderTag.LinearScaleCodingKeys and conformance Color.ProviderTag.LinearScaleCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.LinearScaleCodingKeys and conformance Color.ProviderTag.LinearScaleCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag.LinearScaleCodingKeys, &unk_1F0074588, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ProviderTag.LinearScaleCodingKeys and conformance Color.ProviderTag.LinearScaleCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.LinearScaleCodingKeys and conformance Color.ProviderTag.LinearScaleCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag.LinearScaleCodingKeys, &unk_1F0074588, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ProviderTag.LinearScaleCodingKeys and conformance Color.ProviderTag.LinearScaleCodingKeys);
  }
}

void lazy protocol witness table accessor for type Color.ProviderTag.HeadroomCodingKeys and conformance Color.ProviderTag.HeadroomCodingKeys()
{
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.HeadroomCodingKeys and conformance Color.ProviderTag.HeadroomCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag.HeadroomCodingKeys, &unk_1F0074568, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ProviderTag.HeadroomCodingKeys and conformance Color.ProviderTag.HeadroomCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.HeadroomCodingKeys and conformance Color.ProviderTag.HeadroomCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag.HeadroomCodingKeys, &unk_1F0074568, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ProviderTag.HeadroomCodingKeys and conformance Color.ProviderTag.HeadroomCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.HeadroomCodingKeys and conformance Color.ProviderTag.HeadroomCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag.HeadroomCodingKeys, &unk_1F0074568, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ProviderTag.HeadroomCodingKeys and conformance Color.ProviderTag.HeadroomCodingKeys);
  }
}

void lazy protocol witness table accessor for type Color.ProviderTag.PlatformCodingKeys and conformance Color.ProviderTag.PlatformCodingKeys()
{
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.PlatformCodingKeys and conformance Color.ProviderTag.PlatformCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag.PlatformCodingKeys, &unk_1F0074548, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ProviderTag.PlatformCodingKeys and conformance Color.ProviderTag.PlatformCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.PlatformCodingKeys and conformance Color.ProviderTag.PlatformCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag.PlatformCodingKeys, &unk_1F0074548, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ProviderTag.PlatformCodingKeys and conformance Color.ProviderTag.PlatformCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.PlatformCodingKeys and conformance Color.ProviderTag.PlatformCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag.PlatformCodingKeys, &unk_1F0074548, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ProviderTag.PlatformCodingKeys and conformance Color.ProviderTag.PlatformCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.PlatformCodingKeys and conformance Color.ProviderTag.PlatformCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag.PlatformCodingKeys, &unk_1F0074548, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ProviderTag.PlatformCodingKeys and conformance Color.ProviderTag.PlatformCodingKeys);
  }
}

void lazy protocol witness table accessor for type Color.ProviderTag.AppKitColorCodingKeys and conformance Color.ProviderTag.AppKitColorCodingKeys()
{
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.AppKitColorCodingKeys and conformance Color.ProviderTag.AppKitColorCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag.AppKitColorCodingKeys, &unk_1F00744B8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ProviderTag.AppKitColorCodingKeys and conformance Color.ProviderTag.AppKitColorCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.AppKitColorCodingKeys and conformance Color.ProviderTag.AppKitColorCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag.AppKitColorCodingKeys, &unk_1F00744B8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ProviderTag.AppKitColorCodingKeys and conformance Color.ProviderTag.AppKitColorCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.AppKitColorCodingKeys and conformance Color.ProviderTag.AppKitColorCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag.AppKitColorCodingKeys, &unk_1F00744B8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ProviderTag.AppKitColorCodingKeys and conformance Color.ProviderTag.AppKitColorCodingKeys);
  }
}

void lazy protocol witness table accessor for type Color.ProviderTag.UiKitColorCodingKeys and conformance Color.ProviderTag.UiKitColorCodingKeys()
{
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.UiKitColorCodingKeys and conformance Color.ProviderTag.UiKitColorCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag.UiKitColorCodingKeys, &unk_1F0074498, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ProviderTag.UiKitColorCodingKeys and conformance Color.ProviderTag.UiKitColorCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.UiKitColorCodingKeys and conformance Color.ProviderTag.UiKitColorCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag.UiKitColorCodingKeys, &unk_1F0074498, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ProviderTag.UiKitColorCodingKeys and conformance Color.ProviderTag.UiKitColorCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.UiKitColorCodingKeys and conformance Color.ProviderTag.UiKitColorCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag.UiKitColorCodingKeys, &unk_1F0074498, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ProviderTag.UiKitColorCodingKeys and conformance Color.ProviderTag.UiKitColorCodingKeys);
  }
}

void lazy protocol witness table accessor for type Color.ProviderTag.CoreGraphicsCodingKeys and conformance Color.ProviderTag.CoreGraphicsCodingKeys()
{
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.CoreGraphicsCodingKeys and conformance Color.ProviderTag.CoreGraphicsCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag.CoreGraphicsCodingKeys, &unk_1F0074478, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ProviderTag.CoreGraphicsCodingKeys and conformance Color.ProviderTag.CoreGraphicsCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.CoreGraphicsCodingKeys and conformance Color.ProviderTag.CoreGraphicsCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag.CoreGraphicsCodingKeys, &unk_1F0074478, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ProviderTag.CoreGraphicsCodingKeys and conformance Color.ProviderTag.CoreGraphicsCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.CoreGraphicsCodingKeys and conformance Color.ProviderTag.CoreGraphicsCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag.CoreGraphicsCodingKeys, &unk_1F0074478, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ProviderTag.CoreGraphicsCodingKeys and conformance Color.ProviderTag.CoreGraphicsCodingKeys);
  }
}

void lazy protocol witness table accessor for type Color.ProviderTag.MixCodingKeys and conformance Color.ProviderTag.MixCodingKeys()
{
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.MixCodingKeys and conformance Color.ProviderTag.MixCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag.MixCodingKeys, &unk_1F0074458, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ProviderTag.MixCodingKeys and conformance Color.ProviderTag.MixCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.MixCodingKeys and conformance Color.ProviderTag.MixCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag.MixCodingKeys, &unk_1F0074458, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ProviderTag.MixCodingKeys and conformance Color.ProviderTag.MixCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.MixCodingKeys and conformance Color.ProviderTag.MixCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag.MixCodingKeys, &unk_1F0074458, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ProviderTag.MixCodingKeys and conformance Color.ProviderTag.MixCodingKeys);
  }
}

void lazy protocol witness table accessor for type Color.ProviderTag._destinationOverCodingKeys and conformance Color.ProviderTag._destinationOverCodingKeys()
{
  if (!lazy protocol witness table cache variable for type Color.ProviderTag._destinationOverCodingKeys and conformance Color.ProviderTag._destinationOverCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag._destinationOverCodingKeys, &unk_1F0074438, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ProviderTag._destinationOverCodingKeys and conformance Color.ProviderTag._destinationOverCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.ProviderTag._destinationOverCodingKeys and conformance Color.ProviderTag._destinationOverCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag._destinationOverCodingKeys, &unk_1F0074438, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ProviderTag._destinationOverCodingKeys and conformance Color.ProviderTag._destinationOverCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.ProviderTag._destinationOverCodingKeys and conformance Color.ProviderTag._destinationOverCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag._destinationOverCodingKeys, &unk_1F0074438, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ProviderTag._destinationOverCodingKeys and conformance Color.ProviderTag._destinationOverCodingKeys);
  }
}

void lazy protocol witness table accessor for type Color.ProviderTag._hierarchicalOpacityCodingKeys and conformance Color.ProviderTag._hierarchicalOpacityCodingKeys()
{
  if (!lazy protocol witness table cache variable for type Color.ProviderTag._hierarchicalOpacityCodingKeys and conformance Color.ProviderTag._hierarchicalOpacityCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag._hierarchicalOpacityCodingKeys, &unk_1F0074418, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ProviderTag._hierarchicalOpacityCodingKeys and conformance Color.ProviderTag._hierarchicalOpacityCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.ProviderTag._hierarchicalOpacityCodingKeys and conformance Color.ProviderTag._hierarchicalOpacityCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag._hierarchicalOpacityCodingKeys, &unk_1F0074418, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ProviderTag._hierarchicalOpacityCodingKeys and conformance Color.ProviderTag._hierarchicalOpacityCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.ProviderTag._hierarchicalOpacityCodingKeys and conformance Color.ProviderTag._hierarchicalOpacityCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag._hierarchicalOpacityCodingKeys, &unk_1F0074418, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ProviderTag._hierarchicalOpacityCodingKeys and conformance Color.ProviderTag._hierarchicalOpacityCodingKeys);
  }
}

void lazy protocol witness table accessor for type Color.ProviderTag._settingOpacityCodingKeys and conformance Color.ProviderTag._settingOpacityCodingKeys()
{
  if (!lazy protocol witness table cache variable for type Color.ProviderTag._settingOpacityCodingKeys and conformance Color.ProviderTag._settingOpacityCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag._settingOpacityCodingKeys, &unk_1F00743F8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ProviderTag._settingOpacityCodingKeys and conformance Color.ProviderTag._settingOpacityCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.ProviderTag._settingOpacityCodingKeys and conformance Color.ProviderTag._settingOpacityCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag._settingOpacityCodingKeys, &unk_1F00743F8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ProviderTag._settingOpacityCodingKeys and conformance Color.ProviderTag._settingOpacityCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.ProviderTag._settingOpacityCodingKeys and conformance Color.ProviderTag._settingOpacityCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag._settingOpacityCodingKeys, &unk_1F00743F8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ProviderTag._settingOpacityCodingKeys and conformance Color.ProviderTag._settingOpacityCodingKeys);
  }
}

void lazy protocol witness table accessor for type Color.ProviderTag.OpacityCodingKeys and conformance Color.ProviderTag.OpacityCodingKeys()
{
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.OpacityCodingKeys and conformance Color.ProviderTag.OpacityCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag.OpacityCodingKeys, &unk_1F00743D8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ProviderTag.OpacityCodingKeys and conformance Color.ProviderTag.OpacityCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.OpacityCodingKeys and conformance Color.ProviderTag.OpacityCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag.OpacityCodingKeys, &unk_1F00743D8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ProviderTag.OpacityCodingKeys and conformance Color.ProviderTag.OpacityCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.OpacityCodingKeys and conformance Color.ProviderTag.OpacityCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag.OpacityCodingKeys, &unk_1F00743D8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ProviderTag.OpacityCodingKeys and conformance Color.ProviderTag.OpacityCodingKeys);
  }
}

void lazy protocol witness table accessor for type Color.ProviderTag.NamedCodingKeys and conformance Color.ProviderTag.NamedCodingKeys()
{
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.NamedCodingKeys and conformance Color.ProviderTag.NamedCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag.NamedCodingKeys, &unk_1F00743B8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ProviderTag.NamedCodingKeys and conformance Color.ProviderTag.NamedCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.NamedCodingKeys and conformance Color.ProviderTag.NamedCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag.NamedCodingKeys, &unk_1F00743B8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ProviderTag.NamedCodingKeys and conformance Color.ProviderTag.NamedCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.NamedCodingKeys and conformance Color.ProviderTag.NamedCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag.NamedCodingKeys, &unk_1F00743B8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ProviderTag.NamedCodingKeys and conformance Color.ProviderTag.NamedCodingKeys);
  }
}

void lazy protocol witness table accessor for type Color.ProviderTag.GradientCodingKeys and conformance Color.ProviderTag.GradientCodingKeys()
{
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.GradientCodingKeys and conformance Color.ProviderTag.GradientCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag.GradientCodingKeys, &unk_1F0074398, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ProviderTag.GradientCodingKeys and conformance Color.ProviderTag.GradientCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.GradientCodingKeys and conformance Color.ProviderTag.GradientCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag.GradientCodingKeys, &unk_1F0074398, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ProviderTag.GradientCodingKeys and conformance Color.ProviderTag.GradientCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.GradientCodingKeys and conformance Color.ProviderTag.GradientCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag.GradientCodingKeys, &unk_1F0074398, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ProviderTag.GradientCodingKeys and conformance Color.ProviderTag.GradientCodingKeys);
  }
}

void lazy protocol witness table accessor for type Color.ProviderTag._desaturationCodingKeys and conformance Color.ProviderTag._desaturationCodingKeys()
{
  if (!lazy protocol witness table cache variable for type Color.ProviderTag._desaturationCodingKeys and conformance Color.ProviderTag._desaturationCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag._desaturationCodingKeys, &unk_1F0074378, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ProviderTag._desaturationCodingKeys and conformance Color.ProviderTag._desaturationCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.ProviderTag._desaturationCodingKeys and conformance Color.ProviderTag._desaturationCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag._desaturationCodingKeys, &unk_1F0074378, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ProviderTag._desaturationCodingKeys and conformance Color.ProviderTag._desaturationCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.ProviderTag._desaturationCodingKeys and conformance Color.ProviderTag._desaturationCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag._desaturationCodingKeys, &unk_1F0074378, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ProviderTag._desaturationCodingKeys and conformance Color.ProviderTag._desaturationCodingKeys);
  }
}

void lazy protocol witness table accessor for type Color.ProviderTag._tintAdjustmentCodingKeys and conformance Color.ProviderTag._tintAdjustmentCodingKeys()
{
  if (!lazy protocol witness table cache variable for type Color.ProviderTag._tintAdjustmentCodingKeys and conformance Color.ProviderTag._tintAdjustmentCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag._tintAdjustmentCodingKeys, &unk_1F0074358, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ProviderTag._tintAdjustmentCodingKeys and conformance Color.ProviderTag._tintAdjustmentCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.ProviderTag._tintAdjustmentCodingKeys and conformance Color.ProviderTag._tintAdjustmentCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag._tintAdjustmentCodingKeys, &unk_1F0074358, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ProviderTag._tintAdjustmentCodingKeys and conformance Color.ProviderTag._tintAdjustmentCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.ProviderTag._tintAdjustmentCodingKeys and conformance Color.ProviderTag._tintAdjustmentCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag._tintAdjustmentCodingKeys, &unk_1F0074358, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ProviderTag._tintAdjustmentCodingKeys and conformance Color.ProviderTag._tintAdjustmentCodingKeys);
  }
}

void lazy protocol witness table accessor for type Color.ProviderTag._customKeyColorCodingKeys and conformance Color.ProviderTag._customKeyColorCodingKeys()
{
  if (!lazy protocol witness table cache variable for type Color.ProviderTag._customKeyColorCodingKeys and conformance Color.ProviderTag._customKeyColorCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag._customKeyColorCodingKeys, &unk_1F0074338, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ProviderTag._customKeyColorCodingKeys and conformance Color.ProviderTag._customKeyColorCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.ProviderTag._customKeyColorCodingKeys and conformance Color.ProviderTag._customKeyColorCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag._customKeyColorCodingKeys, &unk_1F0074338, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ProviderTag._customKeyColorCodingKeys and conformance Color.ProviderTag._customKeyColorCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.ProviderTag._customKeyColorCodingKeys and conformance Color.ProviderTag._customKeyColorCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag._customKeyColorCodingKeys, &unk_1F0074338, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ProviderTag._customKeyColorCodingKeys and conformance Color.ProviderTag._customKeyColorCodingKeys);
  }
}

void lazy protocol witness table accessor for type Color.ProviderTag._keyColorCodingKeys and conformance Color.ProviderTag._keyColorCodingKeys()
{
  if (!lazy protocol witness table cache variable for type Color.ProviderTag._keyColorCodingKeys and conformance Color.ProviderTag._keyColorCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag._keyColorCodingKeys, &unk_1F0074318, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ProviderTag._keyColorCodingKeys and conformance Color.ProviderTag._keyColorCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.ProviderTag._keyColorCodingKeys and conformance Color.ProviderTag._keyColorCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag._keyColorCodingKeys, &unk_1F0074318, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ProviderTag._keyColorCodingKeys and conformance Color.ProviderTag._keyColorCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.ProviderTag._keyColorCodingKeys and conformance Color.ProviderTag._keyColorCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag._keyColorCodingKeys, &unk_1F0074318, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ProviderTag._keyColorCodingKeys and conformance Color.ProviderTag._keyColorCodingKeys);
  }
}

void lazy protocol witness table accessor for type Color.ProviderTag.SystemCodingKeys and conformance Color.ProviderTag.SystemCodingKeys()
{
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.SystemCodingKeys and conformance Color.ProviderTag.SystemCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag.SystemCodingKeys, &unk_1F00742F8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ProviderTag.SystemCodingKeys and conformance Color.ProviderTag.SystemCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.SystemCodingKeys and conformance Color.ProviderTag.SystemCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag.SystemCodingKeys, &unk_1F00742F8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ProviderTag.SystemCodingKeys and conformance Color.ProviderTag.SystemCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.SystemCodingKeys and conformance Color.ProviderTag.SystemCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag.SystemCodingKeys, &unk_1F00742F8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ProviderTag.SystemCodingKeys and conformance Color.ProviderTag.SystemCodingKeys);
  }
}

void lazy protocol witness table accessor for type Color.ProviderTag._contentStyleCodingKeys and conformance Color.ProviderTag._contentStyleCodingKeys()
{
  if (!lazy protocol witness table cache variable for type Color.ProviderTag._contentStyleCodingKeys and conformance Color.ProviderTag._contentStyleCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag._contentStyleCodingKeys, &unk_1F00742D8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ProviderTag._contentStyleCodingKeys and conformance Color.ProviderTag._contentStyleCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.ProviderTag._contentStyleCodingKeys and conformance Color.ProviderTag._contentStyleCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag._contentStyleCodingKeys, &unk_1F00742D8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ProviderTag._contentStyleCodingKeys and conformance Color.ProviderTag._contentStyleCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.ProviderTag._contentStyleCodingKeys and conformance Color.ProviderTag._contentStyleCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag._contentStyleCodingKeys, &unk_1F00742D8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ProviderTag._contentStyleCodingKeys and conformance Color.ProviderTag._contentStyleCodingKeys);
  }
}

void lazy protocol witness table accessor for type Color.ProviderTag.P3CodingKeys and conformance Color.ProviderTag.P3CodingKeys()
{
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.P3CodingKeys and conformance Color.ProviderTag.P3CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag.P3CodingKeys, &unk_1F00742B8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ProviderTag.P3CodingKeys and conformance Color.ProviderTag.P3CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.P3CodingKeys and conformance Color.ProviderTag.P3CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag.P3CodingKeys, &unk_1F00742B8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ProviderTag.P3CodingKeys and conformance Color.ProviderTag.P3CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.P3CodingKeys and conformance Color.ProviderTag.P3CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag.P3CodingKeys, &unk_1F00742B8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ProviderTag.P3CodingKeys and conformance Color.ProviderTag.P3CodingKeys);
  }
}

void lazy protocol witness table accessor for type Color.ProviderTag.ConstantCodingKeys and conformance Color.ProviderTag.ConstantCodingKeys()
{
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.ConstantCodingKeys and conformance Color.ProviderTag.ConstantCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag.ConstantCodingKeys, &unk_1F0074298, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ProviderTag.ConstantCodingKeys and conformance Color.ProviderTag.ConstantCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.ConstantCodingKeys and conformance Color.ProviderTag.ConstantCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag.ConstantCodingKeys, &unk_1F0074298, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ProviderTag.ConstantCodingKeys and conformance Color.ProviderTag.ConstantCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.ConstantCodingKeys and conformance Color.ProviderTag.ConstantCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag.ConstantCodingKeys, &unk_1F0074298, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ProviderTag.ConstantCodingKeys and conformance Color.ProviderTag.ConstantCodingKeys);
  }
}

void lazy protocol witness table accessor for type Color.ProviderTag.AccentCodingKeys and conformance Color.ProviderTag.AccentCodingKeys()
{
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.AccentCodingKeys and conformance Color.ProviderTag.AccentCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag.AccentCodingKeys, &unk_1F0074278, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ProviderTag.AccentCodingKeys and conformance Color.ProviderTag.AccentCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.AccentCodingKeys and conformance Color.ProviderTag.AccentCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag.AccentCodingKeys, &unk_1F0074278, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ProviderTag.AccentCodingKeys and conformance Color.ProviderTag.AccentCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.AccentCodingKeys and conformance Color.ProviderTag.AccentCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag.AccentCodingKeys, &unk_1F0074278, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ProviderTag.AccentCodingKeys and conformance Color.ProviderTag.AccentCodingKeys);
  }
}

void lazy protocol witness table accessor for type Color.ProviderTag._backgroundCodingKeys and conformance Color.ProviderTag._backgroundCodingKeys()
{
  if (!lazy protocol witness table cache variable for type Color.ProviderTag._backgroundCodingKeys and conformance Color.ProviderTag._backgroundCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag._backgroundCodingKeys, &unk_1F0074258, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ProviderTag._backgroundCodingKeys and conformance Color.ProviderTag._backgroundCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.ProviderTag._backgroundCodingKeys and conformance Color.ProviderTag._backgroundCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag._backgroundCodingKeys, &unk_1F0074258, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ProviderTag._backgroundCodingKeys and conformance Color.ProviderTag._backgroundCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.ProviderTag._backgroundCodingKeys and conformance Color.ProviderTag._backgroundCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag._backgroundCodingKeys, &unk_1F0074258, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ProviderTag._backgroundCodingKeys and conformance Color.ProviderTag._backgroundCodingKeys);
  }
}

void lazy protocol witness table accessor for type Color.ProviderTag.ForegroundCodingKeys and conformance Color.ProviderTag.ForegroundCodingKeys()
{
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.ForegroundCodingKeys and conformance Color.ProviderTag.ForegroundCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag.ForegroundCodingKeys, &unk_1F0074238, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ProviderTag.ForegroundCodingKeys and conformance Color.ProviderTag.ForegroundCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.ForegroundCodingKeys and conformance Color.ProviderTag.ForegroundCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag.ForegroundCodingKeys, &unk_1F0074238, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ProviderTag.ForegroundCodingKeys and conformance Color.ProviderTag.ForegroundCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.ForegroundCodingKeys and conformance Color.ProviderTag.ForegroundCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag.ForegroundCodingKeys, &unk_1F0074238, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ProviderTag.ForegroundCodingKeys and conformance Color.ProviderTag.ForegroundCodingKeys);
  }
}

void lazy protocol witness table accessor for type Color.ProviderTag.CustomHDRCodingKeys and conformance Color.ProviderTag.CustomHDRCodingKeys()
{
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.CustomHDRCodingKeys and conformance Color.ProviderTag.CustomHDRCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag.CustomHDRCodingKeys, &unk_1F0074218, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ProviderTag.CustomHDRCodingKeys and conformance Color.ProviderTag.CustomHDRCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.CustomHDRCodingKeys and conformance Color.ProviderTag.CustomHDRCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag.CustomHDRCodingKeys, &unk_1F0074218, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ProviderTag.CustomHDRCodingKeys and conformance Color.ProviderTag.CustomHDRCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.CustomHDRCodingKeys and conformance Color.ProviderTag.CustomHDRCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag.CustomHDRCodingKeys, &unk_1F0074218, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ProviderTag.CustomHDRCodingKeys and conformance Color.ProviderTag.CustomHDRCodingKeys);
  }
}

void lazy protocol witness table accessor for type Color.ProviderTag.CustomCodingKeys and conformance Color.ProviderTag.CustomCodingKeys()
{
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.CustomCodingKeys and conformance Color.ProviderTag.CustomCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag.CustomCodingKeys, &unk_1F00741F8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ProviderTag.CustomCodingKeys and conformance Color.ProviderTag.CustomCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.CustomCodingKeys and conformance Color.ProviderTag.CustomCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag.CustomCodingKeys, &unk_1F00741F8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ProviderTag.CustomCodingKeys and conformance Color.ProviderTag.CustomCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.CustomCodingKeys and conformance Color.ProviderTag.CustomCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag.CustomCodingKeys, &unk_1F00741F8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ProviderTag.CustomCodingKeys and conformance Color.ProviderTag.CustomCodingKeys);
  }
}

void lazy protocol witness table accessor for type Color.ProviderTag.CodingKeys and conformance Color.ProviderTag.CodingKeys()
{
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.CodingKeys and conformance Color.ProviderTag.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag.CodingKeys, &unk_1F00741D8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ProviderTag.CodingKeys and conformance Color.ProviderTag.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.CodingKeys and conformance Color.ProviderTag.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag.CodingKeys, &unk_1F00741D8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ProviderTag.CodingKeys and conformance Color.ProviderTag.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.CodingKeys and conformance Color.ProviderTag.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag.CodingKeys, &unk_1F00741D8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ProviderTag.CodingKeys and conformance Color.ProviderTag.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.CodingKeys and conformance Color.ProviderTag.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag.CodingKeys, &unk_1F00741D8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ProviderTag.CodingKeys and conformance Color.ProviderTag.CodingKeys);
  }
}

void lazy protocol witness table accessor for type Color.ProviderTag.PlatformTag and conformance Color.ProviderTag.PlatformTag()
{
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.PlatformTag and conformance Color.ProviderTag.PlatformTag)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag.PlatformTag, &type metadata for Color.ProviderTag.PlatformTag, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ProviderTag.PlatformTag and conformance Color.ProviderTag.PlatformTag);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.PlatformTag and conformance Color.ProviderTag.PlatformTag)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag.PlatformTag, &type metadata for Color.ProviderTag.PlatformTag, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ProviderTag.PlatformTag and conformance Color.ProviderTag.PlatformTag);
  }
}

uint64_t Color.ProviderTag.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v214 = a2;
  v3 = MEMORY[0x1E69E6F48];
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Color.ProviderTag.LinearScaleCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag.LinearScaleCodingKeys and conformance Color.ProviderTag.LinearScaleCodingKeys, &unk_1F0074588, MEMORY[0x1E69E6F48]);
  v212 = *(v4 - 8);
  v213 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v208 = &v134 - v5;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Color.ProviderTag.HeadroomCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag.HeadroomCodingKeys and conformance Color.ProviderTag.HeadroomCodingKeys, &unk_1F0074568, v3);
  v209 = v6;
  v184 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v207 = &v134 - v7;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Color.ProviderTag.PlatformCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag.PlatformCodingKeys and conformance Color.ProviderTag.PlatformCodingKeys, &unk_1F0074548, v3);
  v185 = v8;
  v183 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v206 = &v134 - v9;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Color.ProviderTag.AppKitColorCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag.AppKitColorCodingKeys and conformance Color.ProviderTag.AppKitColorCodingKeys, &unk_1F00744B8, v3);
  v182 = v10;
  v181 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v205 = &v134 - v11;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Color.ProviderTag.UiKitColorCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag.UiKitColorCodingKeys and conformance Color.ProviderTag.UiKitColorCodingKeys, &unk_1F0074498, v3);
  v180 = v12;
  v179 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v204 = &v134 - v13;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Color.ProviderTag.CoreGraphicsCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag.CoreGraphicsCodingKeys and conformance Color.ProviderTag.CoreGraphicsCodingKeys, &unk_1F0074478, v3);
  v178 = v14;
  v177 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v203 = &v134 - v15;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Color.ProviderTag.MixCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag.MixCodingKeys and conformance Color.ProviderTag.MixCodingKeys, &unk_1F0074458, v3);
  v176 = v16;
  v175 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v202 = &v134 - v17;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Color.ProviderTag._destinationOverCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag._destinationOverCodingKeys and conformance Color.ProviderTag._destinationOverCodingKeys, &unk_1F0074438, v3);
  v174 = v18;
  v173 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v201 = &v134 - v19;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Color.ProviderTag._hierarchicalOpacityCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag._hierarchicalOpacityCodingKeys and conformance Color.ProviderTag._hierarchicalOpacityCodingKeys, &unk_1F0074418, v3);
  v172 = v20;
  v171 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v200 = &v134 - v21;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Color.ProviderTag._settingOpacityCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag._settingOpacityCodingKeys and conformance Color.ProviderTag._settingOpacityCodingKeys, &unk_1F00743F8, v3);
  v170 = v22;
  v169 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v199 = &v134 - v23;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Color.ProviderTag.OpacityCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag.OpacityCodingKeys and conformance Color.ProviderTag.OpacityCodingKeys, &unk_1F00743D8, v3);
  v168 = v24;
  v167 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v198 = &v134 - v25;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Color.ProviderTag.NamedCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag.NamedCodingKeys and conformance Color.ProviderTag.NamedCodingKeys, &unk_1F00743B8, v3);
  v166 = v26;
  v165 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v197 = &v134 - v27;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Color.ProviderTag.GradientCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag.GradientCodingKeys and conformance Color.ProviderTag.GradientCodingKeys, &unk_1F0074398, v3);
  v164 = v28;
  v163 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v196 = &v134 - v29;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Color.ProviderTag._desaturationCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag._desaturationCodingKeys and conformance Color.ProviderTag._desaturationCodingKeys, &unk_1F0074378, v3);
  v162 = v30;
  v161 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v195 = &v134 - v31;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Color.ProviderTag._tintAdjustmentCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag._tintAdjustmentCodingKeys and conformance Color.ProviderTag._tintAdjustmentCodingKeys, &unk_1F0074358, v3);
  v160 = v32;
  v159 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v194 = &v134 - v33;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Color.ProviderTag._customKeyColorCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag._customKeyColorCodingKeys and conformance Color.ProviderTag._customKeyColorCodingKeys, &unk_1F0074338, v3);
  v158 = v34;
  v157 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v193 = &v134 - v35;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Color.ProviderTag._keyColorCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag._keyColorCodingKeys and conformance Color.ProviderTag._keyColorCodingKeys, &unk_1F0074318, v3);
  v156 = v36;
  v155 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v192 = &v134 - v37;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Color.ProviderTag.SystemCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag.SystemCodingKeys and conformance Color.ProviderTag.SystemCodingKeys, &unk_1F00742F8, v3);
  v154 = v38;
  v153 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v191 = &v134 - v39;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Color.ProviderTag._contentStyleCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag._contentStyleCodingKeys and conformance Color.ProviderTag._contentStyleCodingKeys, &unk_1F00742D8, v3);
  v152 = v40;
  v151 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v190 = &v134 - v41;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Color.ProviderTag.P3CodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag.P3CodingKeys and conformance Color.ProviderTag.P3CodingKeys, &unk_1F00742B8, v3);
  v149 = v42;
  v150 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v188 = &v134 - v43;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Color.ProviderTag.ConstantCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag.ConstantCodingKeys and conformance Color.ProviderTag.ConstantCodingKeys, &unk_1F0074298, v3);
  v147 = v44;
  v148 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v211 = &v134 - v45;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Color.ProviderTag.AccentCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag.AccentCodingKeys and conformance Color.ProviderTag.AccentCodingKeys, &unk_1F0074278, v3);
  v146 = v46;
  v145 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v189 = &v134 - v47;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Color.ProviderTag._backgroundCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag._backgroundCodingKeys and conformance Color.ProviderTag._backgroundCodingKeys, &unk_1F0074258, v3);
  v144 = v48;
  v143 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v210 = &v134 - v49;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Color.ProviderTag.ForegroundCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag.ForegroundCodingKeys and conformance Color.ProviderTag.ForegroundCodingKeys, &unk_1F0074238, v3);
  v142 = v50;
  v141 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v187 = &v134 - v51;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Color.ProviderTag.CustomHDRCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag.CustomHDRCodingKeys and conformance Color.ProviderTag.CustomHDRCodingKeys, &unk_1F0074218, v3);
  v140 = v52;
  v139 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v186 = &v134 - v53;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Color.ProviderTag.CustomCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag.CustomCodingKeys and conformance Color.ProviderTag.CustomCodingKeys, &unk_1F00741F8, v3);
  v55 = v54;
  v138 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v57 = &v134 - v56;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Color.ProviderTag.CodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag.CodingKeys and conformance Color.ProviderTag.CodingKeys, &unk_1F00741D8, v3);
  v59 = v58;
  v60 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v62 = &v134 - v61;
  v63 = a1[3];
  v215 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v63);
  lazy protocol witness table accessor for type Color.ProviderTag.CodingKeys and conformance Color.ProviderTag.CodingKeys();
  v64 = v216;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v216 = v64;
  if (v64)
  {
LABEL_9:
    v81 = v215;
    return __swift_destroy_boxed_opaque_existential_1(v81);
  }

  v136 = v57;
  v135 = v55;
  v65 = v210;
  v66 = v211;
  v67 = v212;
  v68 = v213;
  v137 = v60;
  v69 = v214;
  v70 = KeyedDecodingContainer.allKeys.getter();
  v71 = (2 * *(v70 + 16)) | 1;
  v217 = v70;
  v218 = v70 + 32;
  v219 = 0;
  v220 = v71;
  v72 = specialized Collection<>.popFirst()();
  if (v219 != v220 >> 1)
  {
LABEL_6:
    v77 = type metadata accessor for DecodingError();
    v78 = swift_allocError();
    v80 = v79;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
    *v80 = &type metadata for Color.ProviderTag;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v77 - 8) + 104))(v80, *MEMORY[0x1E69E6AF8], v77);
    v216 = v78;
    swift_willThrow();
LABEL_7:
    (*(v137 + 8))(v62, v59);
LABEL_8:
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  v73 = v209;
  switch(v72)
  {
    case 0:
      LOBYTE(v221) = 0;
      lazy protocol witness table accessor for type Color.ProviderTag.CustomCodingKeys and conformance Color.ProviderTag.CustomCodingKeys();
      v74 = v136;
      v75 = v216;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v216 = v75;
      if (v75)
      {
        goto LABEL_7;
      }

      (*(v138 + 8))(v74, v135);
      (*(v137 + 8))(v62, v59);
      swift_unknownObjectRelease();
      v76 = 0;
      goto LABEL_63;
    case 1:
      LOBYTE(v221) = 1;
      lazy protocol witness table accessor for type Color.ProviderTag.CustomHDRCodingKeys and conformance Color.ProviderTag.CustomHDRCodingKeys();
      v106 = v186;
      v107 = v216;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v216 = v107;
      if (v107)
      {
        goto LABEL_7;
      }

      (*(v139 + 8))(v106, v140);
      (*(v137 + 8))(v62, v59);
      swift_unknownObjectRelease();
      v76 = 1;
      goto LABEL_63;
    case 2:
      LOBYTE(v221) = 2;
      lazy protocol witness table accessor for type Color.ProviderTag.ForegroundCodingKeys and conformance Color.ProviderTag.ForegroundCodingKeys();
      v99 = v187;
      v100 = v216;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v216 = v100;
      if (v100)
      {
        goto LABEL_7;
      }

      (*(v141 + 8))(v99, v142);
      (*(v137 + 8))(v62, v59);
      swift_unknownObjectRelease();
      v76 = 2;
      goto LABEL_63;
    case 3:
      LOBYTE(v221) = 3;
      lazy protocol witness table accessor for type Color.ProviderTag._backgroundCodingKeys and conformance Color.ProviderTag._backgroundCodingKeys();
      v103 = v216;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v216 = v103;
      if (v103)
      {
        goto LABEL_7;
      }

      (*(v143 + 8))(v65, v144);
      (*(v137 + 8))(v62, v59);
      swift_unknownObjectRelease();
      v76 = 3;
      goto LABEL_63;
    case 4:
      LOBYTE(v221) = 4;
      lazy protocol witness table accessor for type Color.ProviderTag.AccentCodingKeys and conformance Color.ProviderTag.AccentCodingKeys();
      v89 = v189;
      v90 = v216;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v216 = v90;
      if (v90)
      {
        goto LABEL_7;
      }

      (*(v145 + 8))(v89, v146);
      (*(v137 + 8))(v62, v59);
      swift_unknownObjectRelease();
      v76 = 4;
      goto LABEL_63;
    case 5:
      LOBYTE(v221) = 5;
      lazy protocol witness table accessor for type Color.ProviderTag.ConstantCodingKeys and conformance Color.ProviderTag.ConstantCodingKeys();
      v112 = v216;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v216 = v112;
      if (v112)
      {
        goto LABEL_7;
      }

      (*(v148 + 8))(v66, v147);
      (*(v137 + 8))(v62, v59);
      swift_unknownObjectRelease();
      v76 = 5;
      goto LABEL_63;
    case 6:
      LOBYTE(v221) = 6;
      lazy protocol witness table accessor for type Color.ProviderTag.P3CodingKeys and conformance Color.ProviderTag.P3CodingKeys();
      v117 = v188;
      v118 = v216;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v216 = v118;
      if (v118)
      {
        goto LABEL_7;
      }

      (*(v150 + 8))(v117, v149);
      (*(v137 + 8))(v62, v59);
      swift_unknownObjectRelease();
      v76 = 6;
      goto LABEL_63;
    case 7:
      LOBYTE(v221) = 7;
      lazy protocol witness table accessor for type Color.ProviderTag._contentStyleCodingKeys and conformance Color.ProviderTag._contentStyleCodingKeys();
      v104 = v190;
      v105 = v216;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v216 = v105;
      if (v105)
      {
        goto LABEL_7;
      }

      (*(v151 + 8))(v104, v152);
      (*(v137 + 8))(v62, v59);
      swift_unknownObjectRelease();
      v76 = 7;
      goto LABEL_63;
    case 8:
      LOBYTE(v221) = 8;
      lazy protocol witness table accessor for type Color.ProviderTag.SystemCodingKeys and conformance Color.ProviderTag.SystemCodingKeys();
      v123 = v191;
      v124 = v216;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v216 = v124;
      if (v124)
      {
        goto LABEL_7;
      }

      (*(v153 + 8))(v123, v154);
      (*(v137 + 8))(v62, v59);
      swift_unknownObjectRelease();
      v76 = 8;
      goto LABEL_63;
    case 9:
      LOBYTE(v221) = 9;
      lazy protocol witness table accessor for type Color.ProviderTag._keyColorCodingKeys and conformance Color.ProviderTag._keyColorCodingKeys();
      v93 = v192;
      v94 = v216;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v216 = v94;
      if (v94)
      {
        goto LABEL_7;
      }

      (*(v155 + 8))(v93, v156);
      (*(v137 + 8))(v62, v59);
      swift_unknownObjectRelease();
      v76 = 9;
      goto LABEL_63;
    case 10:
      LOBYTE(v221) = 10;
      lazy protocol witness table accessor for type Color.ProviderTag._customKeyColorCodingKeys and conformance Color.ProviderTag._customKeyColorCodingKeys();
      v121 = v193;
      v122 = v216;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v216 = v122;
      if (v122)
      {
        goto LABEL_7;
      }

      (*(v157 + 8))(v121, v158);
      (*(v137 + 8))(v62, v59);
      swift_unknownObjectRelease();
      v76 = 10;
      goto LABEL_63;
    case 11:
      LOBYTE(v221) = 11;
      lazy protocol witness table accessor for type Color.ProviderTag._tintAdjustmentCodingKeys and conformance Color.ProviderTag._tintAdjustmentCodingKeys();
      v87 = v194;
      v88 = v216;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v216 = v88;
      if (v88)
      {
        goto LABEL_7;
      }

      (*(v159 + 8))(v87, v160);
      (*(v137 + 8))(v62, v59);
      swift_unknownObjectRelease();
      v76 = 11;
      goto LABEL_63;
    case 12:
      LOBYTE(v221) = 12;
      lazy protocol witness table accessor for type Color.ProviderTag._desaturationCodingKeys and conformance Color.ProviderTag._desaturationCodingKeys();
      v91 = v195;
      v92 = v216;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v216 = v92;
      if (v92)
      {
        goto LABEL_7;
      }

      (*(v161 + 8))(v91, v162);
      (*(v137 + 8))(v62, v59);
      swift_unknownObjectRelease();
      v76 = 12;
      goto LABEL_63;
    case 13:
      LOBYTE(v221) = 13;
      lazy protocol witness table accessor for type Color.ProviderTag.GradientCodingKeys and conformance Color.ProviderTag.GradientCodingKeys();
      v115 = v196;
      v116 = v216;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v216 = v116;
      if (v116)
      {
        goto LABEL_7;
      }

      (*(v163 + 8))(v115, v164);
      (*(v137 + 8))(v62, v59);
      swift_unknownObjectRelease();
      v76 = 13;
      goto LABEL_63;
    case 14:
      LOBYTE(v221) = 14;
      lazy protocol witness table accessor for type Color.ProviderTag.NamedCodingKeys and conformance Color.ProviderTag.NamedCodingKeys();
      v85 = v197;
      v86 = v216;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v216 = v86;
      if (v86)
      {
        goto LABEL_7;
      }

      (*(v165 + 8))(v85, v166);
      (*(v137 + 8))(v62, v59);
      swift_unknownObjectRelease();
      v76 = 14;
      goto LABEL_63;
    case 15:
      LOBYTE(v221) = 15;
      lazy protocol witness table accessor for type Color.ProviderTag.OpacityCodingKeys and conformance Color.ProviderTag.OpacityCodingKeys();
      v101 = v198;
      v102 = v216;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v216 = v102;
      if (v102)
      {
        goto LABEL_7;
      }

      (*(v167 + 8))(v101, v168);
      (*(v137 + 8))(v62, v59);
      swift_unknownObjectRelease();
      v76 = 15;
      goto LABEL_63;
    case 16:
      LOBYTE(v221) = 16;
      lazy protocol witness table accessor for type Color.ProviderTag._settingOpacityCodingKeys and conformance Color.ProviderTag._settingOpacityCodingKeys();
      v83 = v199;
      v84 = v216;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v216 = v84;
      if (v84)
      {
        goto LABEL_7;
      }

      (*(v169 + 8))(v83, v170);
      (*(v137 + 8))(v62, v59);
      swift_unknownObjectRelease();
      v76 = 16;
      goto LABEL_63;
    case 17:
      LOBYTE(v221) = 17;
      lazy protocol witness table accessor for type Color.ProviderTag._hierarchicalOpacityCodingKeys and conformance Color.ProviderTag._hierarchicalOpacityCodingKeys();
      v108 = v200;
      v109 = v216;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v216 = v109;
      if (v109)
      {
        goto LABEL_7;
      }

      (*(v171 + 8))(v108, v172);
      (*(v137 + 8))(v62, v59);
      swift_unknownObjectRelease();
      v76 = 17;
      goto LABEL_63;
    case 18:
      LOBYTE(v221) = 18;
      lazy protocol witness table accessor for type Color.ProviderTag._destinationOverCodingKeys and conformance Color.ProviderTag._destinationOverCodingKeys();
      v119 = v201;
      v120 = v216;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v216 = v120;
      if (v120)
      {
        goto LABEL_7;
      }

      (*(v173 + 8))(v119, v174);
      (*(v137 + 8))(v62, v59);
      swift_unknownObjectRelease();
      v76 = 18;
      goto LABEL_63;
    case 19:
      LOBYTE(v221) = 19;
      lazy protocol witness table accessor for type Color.ProviderTag.MixCodingKeys and conformance Color.ProviderTag.MixCodingKeys();
      v127 = v202;
      v128 = v216;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v216 = v128;
      if (v128)
      {
        goto LABEL_7;
      }

      (*(v175 + 8))(v127, v176);
      (*(v137 + 8))(v62, v59);
      swift_unknownObjectRelease();
      v76 = 19;
      goto LABEL_63;
    case 20:
      LOBYTE(v221) = 20;
      lazy protocol witness table accessor for type Color.ProviderTag.CoreGraphicsCodingKeys and conformance Color.ProviderTag.CoreGraphicsCodingKeys();
      v110 = v203;
      v111 = v216;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v216 = v111;
      if (v111)
      {
        goto LABEL_7;
      }

      (*(v177 + 8))(v110, v178);
      (*(v137 + 8))(v62, v59);
      swift_unknownObjectRelease();
      v76 = 20;
      goto LABEL_63;
    case 21:
      LOBYTE(v221) = 21;
      lazy protocol witness table accessor for type Color.ProviderTag.UiKitColorCodingKeys and conformance Color.ProviderTag.UiKitColorCodingKeys();
      v113 = v204;
      v114 = v216;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v216 = v114;
      if (v114)
      {
        goto LABEL_7;
      }

      (*(v179 + 8))(v113, v180);
      (*(v137 + 8))(v62, v59);
      swift_unknownObjectRelease();
      v76 = 21;
      goto LABEL_63;
    case 22:
      LOBYTE(v221) = 22;
      lazy protocol witness table accessor for type Color.ProviderTag.AppKitColorCodingKeys and conformance Color.ProviderTag.AppKitColorCodingKeys();
      v125 = v205;
      v126 = v216;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v216 = v126;
      if (v126)
      {
        goto LABEL_7;
      }

      (*(v181 + 8))(v125, v182);
      (*(v137 + 8))(v62, v59);
      swift_unknownObjectRelease();
      v76 = 22;
      goto LABEL_63;
    case 23:
      LOBYTE(v221) = 23;
      lazy protocol witness table accessor for type Color.ProviderTag.PlatformCodingKeys and conformance Color.ProviderTag.PlatformCodingKeys();
      v129 = v206;
      v130 = v216;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v216 = v130;
      if (v130)
      {
        goto LABEL_7;
      }

      lazy protocol witness table accessor for type Color.ProviderTag.PlatformTag and conformance Color.ProviderTag.PlatformTag();
      v131 = v185;
      v132 = v216;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v133 = v137;
      v216 = v132;
      if (v132)
      {
        (*(v183 + 8))(v129, v131);
        (*(v133 + 8))(v62, v59);
        goto LABEL_8;
      }

      (*(v183 + 8))(v129, v131);
      (*(v133 + 8))(v62, v59);
      swift_unknownObjectRelease();
      v76 = v221;
LABEL_63:
      v81 = v215;
      *v69 = v76;
      break;
    case 24:
      LOBYTE(v221) = 24;
      lazy protocol witness table accessor for type Color.ProviderTag.HeadroomCodingKeys and conformance Color.ProviderTag.HeadroomCodingKeys();
      v97 = v207;
      v98 = v216;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v216 = v98;
      if (v98)
      {
        goto LABEL_7;
      }

      (*(v184 + 8))(v97, v73);
      (*(v137 + 8))(v62, v59);
      swift_unknownObjectRelease();
      v76 = 23;
      goto LABEL_63;
    case 25:
      LOBYTE(v221) = 25;
      lazy protocol witness table accessor for type Color.ProviderTag.LinearScaleCodingKeys and conformance Color.ProviderTag.LinearScaleCodingKeys();
      v95 = v208;
      v96 = v216;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v216 = v96;
      if (v96)
      {
        goto LABEL_7;
      }

      (*(v67 + 8))(v95, v68);
      (*(v137 + 8))(v62, v59);
      swift_unknownObjectRelease();
      v76 = 24;
      goto LABEL_63;
    default:
      goto LABEL_6;
  }

  return __swift_destroy_boxed_opaque_existential_1(v81);
}

double CustomColorProvider.serialize(to:)(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = dispatch thunk of Encoder.userInfo.getter();
  if (one-time initialization token for environment != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for CodingUserInfoKey();
  v6 = __swift_project_value_buffer(v5, static CodingUserInfoKey.environment);
  if (!*(v4 + 16) || (v7 = specialized __RawDictionaryStorage.find<A>(_:)(v6), (v8 & 1) == 0))
  {

    goto LABEL_8;
  }

  outlined init with copy of Any(*(v4 + 56) + 32 * v7, v16);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    EnvironmentValues.init()(v16);
    v9 = *v16;
    goto LABEL_9;
  }

  v9 = v15;
LABEL_9:
  *v16 = v9;
  v10 = CustomColorProvider.resolve(in:)(v16, a2);
  specialized Color.RGBADefinition.encode(to:)(a1, v10, v11, v12, v13);

  return result;
}

void Color.Resolved.codingProxy.getter(float *a1@<X8>, float a2@<S0>, float a3@<S1>, float a4@<S2>, float a5@<S3>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
}

uint64_t specialized Color.RGBADefinition.encode(to:)(void *a1, float a2, float a3, float a4, float a5)
{
  type metadata accessor for KeyedDecodingContainer<Color.RGBADefinition<Float, Float>.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Color.RGBADefinition<Float, Float>.CodingKeys>, MEMORY[0x1E69E6F58]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v17 - v13;
  v18 = a2;
  v19 = a3;
  v20 = a4;
  v21 = a5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for Color.RGBADefinition<Float, Float>(0, &lazy cache variable for type metadata for Color.RGBADefinition<Float, Float>.CodingKeys, type metadata accessor for Color.RGBADefinition.CodingKeys);
  lazy protocol witness table accessor for type Color.RGBADefinition<Float, Float>.CodingKeys and conformance Color.RGBADefinition<A, B>.CodingKeys(&lazy protocol witness table cache variable for type Color.RGBADefinition<Float, Float>.CodingKeys and conformance Color.RGBADefinition<A, B>.CodingKeys, &lazy cache variable for type metadata for Color.RGBADefinition<Float, Float>.CodingKeys, type metadata accessor for Color.RGBADefinition.CodingKeys, protocol conformance descriptor for Color.RGBADefinition<A, B>.CodingKeys);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v22 = 0;
  v15 = v17[1];
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v15)
  {
    v22 = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v22 = 2;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v22 = 3;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v12 + 8))(v14, v11);
}

uint64_t Color.RGBADefinition.encode(to:)(void *a1, uint64_t a2)
{
  v3 = *(a2 + 56);
  v15 = *(a2 + 16);
  v11 = *(a2 + 24);
  v16 = v11;
  v14 = *(a2 + 40);
  v17 = v14;
  v12 = v3;
  v13 = v15;
  v18 = v3;
  v4 = type metadata accessor for Color.RGBADefinition.CodingKeys(255, &v15);
  swift_getWitnessTable(protocol conformance descriptor for Color.RGBADefinition<A, B>.CodingKeys, v4);
  v5 = type metadata accessor for KeyedEncodingContainer();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v15) = 0;
  v9 = v19;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v9)
  {
    LOBYTE(v15) = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v15) = 2;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v15) = 3;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void *static CustomColorProvider.deserialize(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = type metadata accessor for CustomColorProvider(255, a2, a3, a4);
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22[-1] - v11;
  outlined init with copy of AnyTrackedValue(a1, v22);
  result = _s7SwiftUI5ColorVAAE14RGBADefinitionV4fromAEy_xq_Gs7Decoder_p_tKcfCSf_SfTt1g5(v22, &v23);
  if (!v5)
  {
    type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for ColorBox<ResolvedColorProvider>, lazy protocol witness table accessor for type ResolvedColorProvider and conformance ResolvedColorProvider, &type metadata for ResolvedColorProvider, type metadata accessor for ColorBox);
    v21 = v23;
    v14 = swift_allocObject();
    *(v14 + 16) = v21;
    *(v14 + 32) = 2143289344;
    v22[0] = v14;
    type metadata accessor for CustomColorProvider<Color>(0);
    v15 = swift_dynamicCast();
    v16 = *(*(v8 - 8) + 56);
    if (v15)
    {
      v17 = *(v8 - 8);
      v16(v12, 0, 1, v8);
      return (*(v17 + 32))(a5, v12, v8);
    }

    else
    {
      v16(v12, 1, 1, v8);
      (*(v10 + 8))(v12, v9);
      v18 = type metadata accessor for DecodingError();
      swift_allocError();
      v20 = v19;
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      dispatch thunk of Decoder.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v18 - 8) + 104))(v20, *MEMORY[0x1E69E6B00], v18);
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t _s7SwiftUI5ColorVAAE14RGBADefinitionV4fromAEy_xq_Gs7Decoder_p_tKcfCSf_SfTt1g5@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v16 = a2;
  type metadata accessor for KeyedDecodingContainer<Color.RGBADefinition<Float, Float>.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Color.RGBADefinition<Float, Float>.CodingKeys>, MEMORY[0x1E69E6F48]);
  v17 = v4;
  v15 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v15 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for Color.RGBADefinition<Float, Float>(0, &lazy cache variable for type metadata for Color.RGBADefinition<Float, Float>.CodingKeys, type metadata accessor for Color.RGBADefinition.CodingKeys);
  lazy protocol witness table accessor for type Color.RGBADefinition<Float, Float>.CodingKeys and conformance Color.RGBADefinition<A, B>.CodingKeys(&lazy protocol witness table cache variable for type Color.RGBADefinition<Float, Float>.CodingKeys and conformance Color.RGBADefinition<A, B>.CodingKeys, &lazy cache variable for type metadata for Color.RGBADefinition<Float, Float>.CodingKeys, type metadata accessor for Color.RGBADefinition.CodingKeys, protocol conformance descriptor for Color.RGBADefinition<A, B>.CodingKeys);
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v7 = v15;
    v8 = v16;
    v18 = 0;
    v9 = v17;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v10 = v19;
    v18 = 1;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v11 = v19;
    v18 = 2;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v12 = v19;
    v18 = 3;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v7 + 8))(v6, v9);
    v14 = v19;
    *v8 = v10;
    v8[1] = v11;
    v8[2] = v12;
    v8[3] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Color.RGBADefinition.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v65 = a5;
  v53 = a8;
  v52 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v55 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v57 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v58 = &v49 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v60 = &v49 - v21;
  v66 = v22;
  v67 = v23;
  v68 = v24;
  v69 = v25;
  v70 = v26;
  v71 = v27;
  v28 = type metadata accessor for Color.RGBADefinition.CodingKeys(255, &v66);
  swift_getWitnessTable(protocol conformance descriptor for Color.RGBADefinition<A, B>.CodingKeys, v28);
  v64 = type metadata accessor for KeyedDecodingContainer();
  v61 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v30 = &v49 - v29;
  v62 = a2;
  v63 = a4;
  v66 = a2;
  v67 = a3;
  v56 = a3;
  v68 = a4;
  v69 = v65;
  v54 = a6;
  v70 = a6;
  v71 = a7;
  v31 = type metadata accessor for Color.RGBADefinition(0, &v66);
  v51 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v49 - v32;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v65 = v30;
  v34 = v72;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v34)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v35 = v58;
  v50 = v33;
  v49 = v31;
  v36 = v59;
  v37 = v60;
  v72 = a1;
  LOBYTE(v66) = 0;
  v38 = v62;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v39 = *(v36 + 32);
  v39(v50, v37, v38);
  LOBYTE(v66) = 1;
  v40 = v35;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v41 = v50;
  v39(&v50[*(v49 + 68)], v40, v38);
  LOBYTE(v66) = 2;
  v42 = v57;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v43 = v42;
  v44 = v49;
  v39(&v41[*(v49 + 72)], v43, v38);
  LOBYTE(v66) = 3;
  v46 = v55;
  v45 = v56;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v61 + 8))(v65, v64);
  (*(v52 + 32))(&v41[*(v44 + 76)], v46, v45);
  v47 = v51;
  (*(v51 + 16))(v53, v41, v44);
  __swift_destroy_boxed_opaque_existential_1(v72);
  return (*(v47 + 8))(v41, v44);
}

double CustomHDRColorProvider.serialize(to:)(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = dispatch thunk of Encoder.userInfo.getter();
  if (one-time initialization token for environment != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for CodingUserInfoKey();
  v6 = __swift_project_value_buffer(v5, static CodingUserInfoKey.environment);
  if (!*(v4 + 16) || (v7 = specialized __RawDictionaryStorage.find<A>(_:)(v6), (v8 & 1) == 0))
  {

    goto LABEL_8;
  }

  outlined init with copy of Any(*(v4 + 56) + 32 * v7, v12);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    EnvironmentValues.init()(v12);
    v9 = *v12;
    goto LABEL_9;
  }

  v9 = v11;
LABEL_9:
  v11 = v9;
  CustomHDRColorProvider.resolveHDR(in:)(&v11, a2, v12);
  Color.ResolvedHDR.encode(to:)(a1);

  return result;
}

void *static CustomHDRColorProvider.deserialize(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v23 = a5;
  v7 = type metadata accessor for CustomHDRColorProvider(255, a2, a3, a4);
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - v10;
  outlined init with copy of AnyTrackedValue(a1, &v19);
  result = specialized Color.ResolvedHDR.init(from:)(&v19, &v21);
  if (!v5)
  {
    v17 = v9;
    v18 = 0;
    v19 = v21;
    v20 = v22;
    type metadata accessor for CustomHDRColorProvider<HDRColor>(0);
    v13 = swift_dynamicCast();
    v14 = *(v7 - 8);
    v15 = *(v14 + 56);
    if (v13)
    {
      v15(v11, 0, 1, v7);
      return (*(v14 + 32))(v23, v11, v7);
    }

    else
    {
      v15(v11, 1, 1, v7);
      v16 = v18;
      closure #1 in implicit closure #1 in static CustomHDRColorProvider.deserialize(from:)(a1);
      v18 = v16;
      result = (*(v14 + 48))(v11, 1, v7);
      if (result != 1)
      {
        return (*(v17 + 8))(v11, v8);
      }
    }
  }

  return result;
}

uint64_t closure #1 in implicit closure #1 in static CustomHDRColorProvider.deserialize(from:)(void *a1)
{
  v2 = type metadata accessor for DecodingError();
  swift_allocError();
  v4 = v3;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.codingPath.getter();
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v2 - 8) + 104))(v4, *MEMORY[0x1E69E6B00], v2);
  return swift_willThrow();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance HDRColor()
{
  Hasher.init(_seed:)();
  ResolvedColorProvider.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance HDRColor(uint64_t a1)
{
  Hasher.init(_seed:)();
  ResolvedColorProvider.hash(into:)();
  return Hasher._finalize()();
}

double CGColorRef.serialize(to:)(void *a1)
{
  v3 = CGColorGetColorSpace(v1);
  if (v3)
  {
    v4 = v3;
    v5 = CGColorSpaceCopyName(v3);

    if (v5)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        static String._conditionallyBridgeFromObjectiveC(_:result:)();
      }
    }
  }

  CGColorRef.components.getter();
  Color.CGDefinition.encode(to:)(a1);

  return result;
}

uint64_t Color.CGDefinition.encode(to:)(void *a1)
{
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Color.CGDefinition.CodingKeys>, lazy protocol witness table accessor for type Color.CGDefinition.CodingKeys and conformance Color.CGDefinition.CodingKeys, &unk_1F00740D8, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - v6;
  v11 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Color.CGDefinition.CodingKeys and conformance Color.CGDefinition.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = 0;
  v8 = v12;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v8)
  {
    v13 = v11;
    v14 = 1;
    type metadata accessor for [CGFloat]();
    lazy protocol witness table accessor for type [CGFloat] and conformance <A> [A](&lazy protocol witness table cache variable for type [CGFloat] and conformance <A> [A], lazy protocol witness table accessor for type CGFloat and conformance CGFloat, MEMORY[0x1E69E6300]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

void lazy protocol witness table accessor for type Color.CGDefinition.CodingKeys and conformance Color.CGDefinition.CodingKeys()
{
  if (!lazy protocol witness table cache variable for type Color.CGDefinition.CodingKeys and conformance Color.CGDefinition.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.CGDefinition.CodingKeys, &unk_1F00740D8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.CGDefinition.CodingKeys and conformance Color.CGDefinition.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.CGDefinition.CodingKeys and conformance Color.CGDefinition.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.CGDefinition.CodingKeys, &unk_1F00740D8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.CGDefinition.CodingKeys and conformance Color.CGDefinition.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.CGDefinition.CodingKeys and conformance Color.CGDefinition.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.CGDefinition.CodingKeys, &unk_1F00740D8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.CGDefinition.CodingKeys and conformance Color.CGDefinition.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.CGDefinition.CodingKeys and conformance Color.CGDefinition.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.CGDefinition.CodingKeys, &unk_1F00740D8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.CGDefinition.CodingKeys and conformance Color.CGDefinition.CodingKeys);
  }
}

void type metadata accessor for [CGFloat]()
{
  if (!lazy cache variable for type metadata for [CGFloat])
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [CGFloat]);
    }
  }
}

void static CGColorRef.deserialize(from:)(void *a1)
{
  specialized static CGColorRef.deserializeCGColor(from:)(a1);
  if (!v2)
  {
    v5 = v4;
    if (!swift_dynamicCastUnknownClass())
    {
      v6 = type metadata accessor for DecodingError();
      swift_allocError();
      v8 = v7;
      type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
      *v8 = v1;
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      dispatch thunk of Decoder.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v6 - 8) + 104))(v8, *MEMORY[0x1E69E6AF8], v6);
      swift_willThrow();
    }
  }
}

void Color.CGDefinition.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v16[0] = a2;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Color.CGDefinition.CodingKeys>, lazy protocol witness table accessor for type Color.CGDefinition.CodingKeys and conformance Color.CGDefinition.CodingKeys, &unk_1F00740D8, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Color.CGDefinition.CodingKeys and conformance Color.CGDefinition.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v9 = v6;
    v10 = v16[0];
    v18 = 0;
    v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v13 = v12;
    v14 = v11;
    type metadata accessor for [CGFloat]();
    v17 = 1;
    lazy protocol witness table accessor for type [CGFloat] and conformance <A> [A](&lazy protocol witness table cache variable for type [CGFloat] and conformance <A> [A], lazy protocol witness table accessor for type CGFloat and conformance CGFloat, MEMORY[0x1E69E6330]);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v9 + 8))(v8, v5);
    v15 = v16[1];
    *v10 = v14;
    v10[1] = v13;
    v10[2] = v15;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void protocol witness for static Serializable.deserialize(from:) in conformance CGColorRef(void *a1@<X0>, void *a2@<X8>)
{
  static CGColorRef.deserialize(from:)(a1);
  if (!v2)
  {
    *a2 = v4;
  }
}

double protocol witness for CodableByProxy.codingProxy.getter in conformance Color.MixProvider@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 20);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 20) = v4;

  return result;
}

double protocol witness for static CodableByProxy.unwrap(codingProxy:) in conformance Color.MixProvider@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  v3 = *(a1 + 16);
  v4 = *(a1 + 5);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 20) = v4;

  return result;
}

double protocol witness for CodableByProxy.codingProxy.getter in conformance Color.DestinationOverProvider@<D0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;

  return result;
}

double protocol witness for static CodableByProxy.unwrap(codingProxy:) in conformance Color.DestinationOverProvider@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;

  return result;
}

double protocol witness for CodableByProxy.codingProxy.getter in conformance Color.HierarchicalOpacityColor@<D0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;

  return result;
}

double protocol witness for static CodableByProxy.unwrap(codingProxy:) in conformance Color.HierarchicalOpacityColor@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;

  return result;
}

double protocol witness for CodableByProxy.codingProxy.getter in conformance Color.OpacityColor@<D0>(void *a1@<X8>)
{
  v2 = *v1;
  a1[1] = v1[1];
  *a1 = v2;

  return result;
}

double protocol witness for static CodableByProxy.unwrap(codingProxy:) in conformance Color.OpacityColor@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;

  return result;
}

double protocol witness for CodableByProxy.codingProxy.getter in conformance Color.SettingOpacityProvider@<D0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  *(a1 + 8) = *(v1 + 2);
  *a1 = v2;

  return result;
}

double protocol witness for static CodableByProxy.unwrap(codingProxy:) in conformance Color.SettingOpacityProvider@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 2);
  *a2 = *a1;
  *(a2 + 8) = v2;

  return result;
}

void protocol witness for CodableByProxy.codingProxy.getter in conformance Color.NamedColor(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];

  if (v5)
  {
    v6 = [v5 bundlePath];
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  *a1 = v4;
  a1[1] = v3;
  a1[2] = v5;
  a1[3] = v8;
}

double protocol witness for static CodableByProxy.unwrap(codingProxy:) in conformance Color.NamedColor@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[3];
  if (!v5 || (v6 = a1[2], v7 = objc_allocWithZone(MEMORY[0x1E696AAE8]), v8 = MEMORY[0x193ABEC20](v6, v5), v9 = [v7 initWithPath_], v8, !v9))
  {
    v9 = 0;
  }

  *a2 = v4;
  a2[1] = v3;
  a2[2] = v9;

  return result;
}

double protocol witness for CodableByProxy.codingProxy.getter in conformance GradientColorProvider@<D0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return outlined copy of EitherGradient(v2, v3);
}

double protocol witness for static CodableByProxy.unwrap(codingProxy:) in conformance GradientColorProvider@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  return outlined copy of EitherGradient(v2, v3);
}

uint64_t protocol witness for Serializable.serialize(to:) in conformance Color.KeyColorProvider(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for EncodingError();
  swift_allocError();
  v6 = v5;
  type metadata accessor for (Any, EncodingError.Context)(0);
  *(v6 + 24) = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.codingPath.getter();
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v4 - 8) + 104))(v6, *MEMORY[0x1E69E6B30], v4);
  return swift_willThrow();
}

uint64_t protocol witness for static Serializable.deserialize(from:) in conformance Color.KeyColorProvider(void *a1)
{
  v3 = type metadata accessor for DecodingError();
  swift_allocError();
  v5 = v4;
  type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
  *v5 = v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.codingPath.getter();
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v3 - 8) + 104))(v5, *MEMORY[0x1E69E6AF8], v3);
  return swift_willThrow();
}

uint64_t protocol witness for Serializable.serialize(to:) in conformance Color.CustomKeyColorProvider(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = type metadata accessor for EncodingError();
  swift_allocError();
  v8 = v7;
  type metadata accessor for (Any, EncodingError.Context)(0);
  v8[3] = a2;
  *v8 = v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.codingPath.getter();
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v6 - 8) + 104))(v8, *MEMORY[0x1E69E6B30], v6);
  return swift_willThrow();
}

uint64_t protocol witness for static Serializable.deserialize(from:) in conformance Color.CustomKeyColorProvider(void *a1)
{
  v3 = type metadata accessor for DecodingError();
  swift_allocError();
  v5 = v4;
  type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
  *v5 = v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.codingPath.getter();
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v3 - 8) + 104))(v5, *MEMORY[0x1E69E6AF8], v3);
  return swift_willThrow();
}

__n128 protocol witness for static CodableByProxy.unwrap(codingProxy:) in conformance ResolvedColorProvider@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u32[0] = 2143289344;
  return result;
}

double protocol witness for CodableByProxy.codingProxy.getter in conformance Color.DisplayP3@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 16) = result;
  *(a1 + 24) = v3;
  return result;
}

double protocol witness for static CodableByProxy.unwrap(codingProxy:) in conformance Color.DisplayP3@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 16);
  v3 = *(a1 + 24);
  *a2 = *a1;
  *(a2 + 16) = result;
  *(a2 + 24) = v3;
  return result;
}

uint64_t Color.RGBADefinition.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6579570 && a2 == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E65657267 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1702194274 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7974696361706FLL && a2 == 0xE700000000000000)
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

uint64_t Color.RGBADefinition.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  v1 = 6579570;
  v2 = 1702194274;
  if (a1 != 2)
  {
    v2 = 0x7974696361706FLL;
  }

  if (a1)
  {
    v1 = 0x6E65657267;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t Color.GradientDefinition.encode(to:)(void *a1)
{
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Color.GradientDefinition.CodingKeys>, lazy protocol witness table accessor for type Color.GradientDefinition.CodingKeys and conformance Color.GradientDefinition.CodingKeys, &unk_1F00746C8, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v14 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v10 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  outlined copy of EitherGradient(v8, v9);
  lazy protocol witness table accessor for type Color.GradientDefinition.CodingKeys and conformance Color.GradientDefinition.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = v8;
  v17 = v9;
  v15 = 0;
  lazy protocol witness table accessor for type Gradient.EitherGradientDefinition and conformance Gradient.EitherGradientDefinition();
  v11 = v14;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v11)
  {
    v12.n128_f64[0] = outlined consume of EitherGradient(v16, v17);
  }

  else
  {
    outlined consume of EitherGradient(v16, v17);
    v16 = v10;
    v15 = 1;
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4, v12);
}

void Color.GradientDefinition.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Color.GradientDefinition.CodingKeys>, lazy protocol witness table accessor for type Color.GradientDefinition.CodingKeys and conformance Color.GradientDefinition.CodingKeys, &unk_1F00746C8, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Color.GradientDefinition.CodingKeys and conformance Color.GradientDefinition.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v9 = v6;
    v10 = v15;
    v19 = 0;
    lazy protocol witness table accessor for type Gradient.EitherGradientDefinition and conformance Gradient.EitherGradientDefinition();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v11 = v16;
    v18 = v17;
    v19 = 1;
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v9 + 8))(v8, v5);
    v12 = v16;
    v13 = v18;
    *v10 = v11;
    *(v10 + 8) = v13;
    *(v10 + 16) = v12;
    outlined copy of EitherGradient(v11, v13);
    __swift_destroy_boxed_opaque_existential_1(a1);
    outlined consume of EitherGradient(v11, v13);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Color.RGBADefinition<A, B>.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  EventListenerPhase.FailureReason.hash(into:)(v3, *v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Color.RGBADefinition<A, B>.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = Color.RGBADefinition.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}