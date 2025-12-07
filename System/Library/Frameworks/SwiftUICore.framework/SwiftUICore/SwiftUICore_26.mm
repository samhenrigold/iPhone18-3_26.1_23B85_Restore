uint64_t sub_18D195540()
{

  return swift_deallocObject();
}

uint64_t GraphicsContext.Storage.__deallocating_deinit()
{
  if (*(v0 + 64) == 1)
  {
    RBDrawingStateDestroy();
  }

  outlined consume of EnvironmentValues?(*(v0 + 32), *(v0 + 40));

  return swift_deallocClassInstance();
}

uint64_t GraphicsContext.Storage.Shared.__deallocating_deinit()
{
  GraphicsContext.Storage.Shared.deinit();

  return swift_deallocClassInstance();
}

uint64_t outlined destroy of GraphicsContext.Shading?(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  type metadata accessor for GraphicsContext.Shading?(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for GraphicsContext.ResolvedShading(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 104) >> 11) & 0x1F80 | (*(a1 + 104) >> 9) | (*(a1 + 104) >> 13) & 0xFFFFE000;
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

void outlined consume of GraphicsContext.ResolvedShading(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14, void *a15)
{
  v15 = a14 >> 60;
  if ((a14 >> 60) > 5)
  {
    if (v15 == 6)
    {

LABEL_15:

      return;
    }

    if (v15 != 7)
    {
      if (v15 != 8)
      {
        return;
      }

      goto LABEL_15;
    }

    outlined consume of GraphicsImage.Contents?(a1, a2);
  }

  else
  {
    if (v15 != 3)
    {
      if (v15 == 4)
      {
        outlined consume of _ShapeStyle_Pack.Fill(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, BYTE5(a11));
        outlined consume of GraphicsBlendMode?(a13, a14);
      }

      else if (v15 != 5)
      {
        return;
      }

      goto LABEL_15;
    }
  }
}

void lazy protocol witness table accessor for type PassthroughSubject<(), Never> and conformance PassthroughSubject<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  if (!*a1)
  {
    v5 = a2(255);
    swift_getWitnessTable(a3, v5);
    atomic_store(v6, a1);
  }
}

uint64_t DisplayList.GraphicsRenderer.render(list:in:)(uint64_t *a1, CGFloat *a2)
{
  v3 = v2;
  v5 = *a1;
  RBDrawingStateGetIdentifier();
  RBDrawingStateGetIdentifierNamespace2();
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = (v5 + 32);
    do
    {
      v8 = v7[1];
      v9 = v7[2];
      v10 = v7[3];
      *&v27[12] = *(v7 + 60);
      v11 = *v7;
      v26 = v9;
      *v27 = v10;
      v24 = v11;
      v25 = v8;
      v12 = *&v27[24];
      if (*&v27[24])
      {
        v14 = *(v3 + 48);
        v13 = *(v3 + 52);
        v15 = *(v3 + 56);
        v16 = *(v3 + 64);
        *(v3 + 48) = *&v27[24];
        *(v3 + 52) = 0;
        *(v3 + 64) = 1;
        swift_beginAccess();
        v17 = *(v3 + 88);
        if (v17 && *(v17 + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v12), (v18 & 1) != 0))
        {
          swift_endAccess();
          outlined init with copy of DisplayList.Item(&v24, v22);
          RBUUIDInitFromHash();
          GraphicsContext.copyOnWrite()();
          RBDrawingStateSetIdentifier2();
        }

        else
        {
          swift_endAccess();
          outlined init with copy of DisplayList.Item(&v24, v22);
          GraphicsContext.copyOnWrite()();
          RBDrawingStateSetIdentifier();
        }
      }

      else
      {
        v14 = *(v3 + 48);
        v13 = *(v3 + 52) + 1;
        *(v3 + 52) = v13;
        v15 = *(v3 + 56);
        v16 = *(v3 + 64);
        *(v3 + 64) = 0;
        outlined init with copy of DisplayList.Item(&v24, v22);
      }

      v22[2] = v26;
      v23[0] = *v27;
      *(v23 + 12) = *&v27[12];
      v22[0] = v24;
      v22[1] = v25;
      DisplayList.GraphicsRenderer.render(item:in:)(v22, a2);
      outlined destroy of DisplayList.Item(&v24);
      v19 = *(v3 + 64);
      if ((v19 & 0xC) != 0)
      {
        v20 = *(v3 + 48);
        if ((*(v3 + 64) & 4) != 0)
        {
          *(v3 + 48) = *(v3 + 56);
        }

        if ((v19 & 8) != 0)
        {
          *(v3 + 56) = v20;
        }
      }

      if (v19)
      {
        *(v3 + 48) = v14;
        *(v3 + 52) = v13;
      }

      if ((v19 & 2) != 0)
      {
        *(v3 + 56) = v15;
      }

      *(v3 + 64) = v16;
      v7 += 5;
      --v6;
    }

    while (v6);
  }

  GraphicsContext.copyOnWrite()();
  return RBDrawingStateSetIdentifier2();
}

void type metadata accessor for DisplayList.ArchiveIDs?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for DisplayList.ArchiveIDs?)
  {
    type metadata accessor for DisplayList.ArchiveIDs(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for DisplayList.ArchiveIDs?);
    }
  }
}

uint64_t outlined destroy of ViewGraphRenderHost?(uint64_t a1)
{
  _ss23_ContiguousArrayStorageCys7CVarArg_pGMaTm_5(0, &lazy cache variable for type metadata for ViewGraphRenderHost?, &lazy cache variable for type metadata for ViewGraphRenderHost, &protocol descriptor for ViewGraphRenderHost, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t closure #1 in ImageRendererHost.render(ifNewerThan:renderer:)(void *a1, uint64_t a2, char a3, void (*a4)(uint64_t, uint64_t (*)(CGFloat *a1), double), uint64_t a5)
{
  v28 = a5;
  v35 = a4;
  v8 = type metadata accessor for ImageRendererHost(0, *(*a1 + 80), *(*a1 + 88), a4);
  type metadata accessor for (DisplayList, DisplayList.Version)();
  ViewRendererHost.updateViewGraph<A>(body:)(closure #1 in closure #1 in ImageRendererHost.render(ifNewerThan:renderer:), 0, v8, v9, &protocol witness table for ImageRendererHost<A>);
  v10 = v32;
  v11 = v33;
  v12 = HIDWORD(v33);
  v13 = v34;
  if ((a3 & 1) == 0 && v34 <= a2)
  {
  }

  swift_beginAccess();
  value = printTree.value;
  if (printTree.value == 2)
  {
    v16 = getenv("SWIFTUI_PRINT_TREE");
    if (!v16)
    {
      printTree.value = 0;
      swift_endAccess();
      goto LABEL_11;
    }

    v17 = atoi(v16);
    printTree.value = v17 != 0;
    swift_endAccess();
    if (!v17)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  swift_endAccess();
  if (value)
  {
LABEL_9:
    type metadata accessor for _ContiguousArrayStorage<Any>();
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_18DDA6EB0;
    v32 = 0;
    v33 = 0xE000000000000000;
    _StringGuts.grow(_:)(22);
    MEMORY[0x193ABEDD0](0xD000000000000010, 0x800000018DD82C00);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x193ABEDD0](2618, 0xE200000000000000);
    v29 = v10;
    v30 = v11;
    v31 = v12;
    DisplayList.description.getter();
    MEMORY[0x193ABEDD0](v19, v20, v21);

    *(v18 + 56) = MEMORY[0x1E69E6158];
    *(v18 + 32) = 0;
    *(v18 + 40) = 0xE000000000000000;
    print(_:separator:terminator:)();
  }

LABEL_11:
  v22 = AGGraphGetValue();
  v23 = MEMORY[0x1EEE9AC00](v22);
  v24 = a1;
  v25 = v10;
  v26 = v11;
  v27 = v12;
  v35(v13, partial apply for closure #3 in closure #1 in ImageRendererHost.render(ifNewerThan:renderer:), v23);
}

uint64_t ViewRendererHost.updateViewGraph<A>(body:)(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  specialized static Update.begin()();
  AGGraphClearUpdate();
  closure #1 in ViewRendererHost.updateViewGraph<A>(body:)(v5, a1, a2, a3, a4, a5);
  AGGraphSetUpdate();

  return static Update.end()();
}

double closure #1 in ViewRendererHost.updateViewGraph<A>(body:)(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ViewGraphRootValueUpdater.updateGraph()();
  (*(*(a6 + 8) + 8))(a4);
  a2();

  return result;
}

void closure #1 in closure #1 in ImageRendererHost.render(ifNewerThan:renderer:)(uint64_t a2@<X8>)
{
  type metadata accessor for (DisplayList, DisplayList.Version)();
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    v4 = *(WeakValue + 8);
    v5 = *(WeakValue + 12);
    v6 = *(WeakValue + 16);
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
  }

  *a2 = v7;
  *(a2 + 8) = v4;
  *(a2 + 12) = v5;
  *(a2 + 16) = v6;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_nTm(uint64_t a1, void (*a2)(void), unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  v5 = *(a1 + 16);
  if (v5)
  {
    a2(0);
    v10 = static _DictionaryStorage.allocate(capacity:)();
    v11 = a1 + 32;

    while (1)
    {
      outlined init with copy of (RBDisplayListRenderKey, Any)(v11, &v18, a3, a4);
      v12 = v18;
      result = a5(v18);
      if (v14)
      {
        break;
      }

      *(v10 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v10[6] + 8 * result) = v12;
      result = outlined init with take of Any(&v19, (v10[7] + 32 * result));
      v15 = v10[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v10[2] = v17;
      v11 += 40;
      if (!--v5)
      {

        return v10;
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

void type metadata accessor for (RBImageRendererProperty, Any)(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void _sSo23RBImageRendererPropertya_yptMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t outlined init with copy of (RBDisplayListRenderKey, Any)(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  type metadata accessor for (RBImageRendererProperty, Any)(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance NSAttributedStringKey(void *a1, uint64_t *a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t RasterizationOptions.resolvedColorMode.getter()
{
  result = *v0;
  if (result == -1)
  {
    v2 = v0[2];
    v3 = ((v2 << 25) >> 31) & 9;
    if ((v2 & 0x40) != 0)
    {
      v4 = 10;
    }

    else
    {
      v4 = 1;
    }

    if ((v2 & 0x40) != 0)
    {
      v5 = 10;
    }

    else
    {
      v5 = 2;
    }

    if (*(v0 + 4) == 1)
    {
      v5 = v4;
    }

    if (*(v0 + 4))
    {
      return v5;
    }

    else
    {
      return v3;
    }
  }

  return result;
}

uint64_t GraphicsContext.Storage.Shared.init(list:environment:)(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  *(v2 + 24) = 0;
  *(v2 + 32) = [objc_allocWithZone(MEMORY[0x1E69C7100]) init];
  *(v2 + 40) = [objc_allocWithZone(MEMORY[0x1E69C70D8]) init];
  *(v2 + 72) = 0;
  _s7SwiftUI15GraphicsContextV15ResolvedShadingOSgWOi0_(v12);
  v6 = v12[9];
  *(v2 + 208) = v12[8];
  *(v2 + 224) = v6;
  *(v2 + 240) = v13;
  v7 = v12[5];
  *(v2 + 144) = v12[4];
  *(v2 + 160) = v7;
  v8 = v12[7];
  *(v2 + 176) = v12[6];
  *(v2 + 192) = v8;
  v9 = v12[1];
  *(v2 + 80) = v12[0];
  *(v2 + 96) = v9;
  v10 = v12[3];
  *(v2 + 112) = v12[2];
  *(v2 + 128) = v10;
  *(v2 + 248) = 2;
  *(v2 + 264) = 0;
  *(v2 + 272) = 0;
  *(v2 + 256) = 0;
  *(v2 + 16) = a1;
  *(v2 + 48) = v4;
  *(v2 + 56) = v5;
  *(v2 + 64) = [a1 defaultColorSpace];
  return v2;
}

double _s7SwiftUI15GraphicsContextV15ResolvedShadingOSgWOi0_(uint64_t a1)
{
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0x1FFFFCFCFE00;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0;
  return result;
}

void GraphicsContext.copyOnWrite()()
{
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v1 = *v0;
    v2 = RBDrawingStateInit();
    type metadata accessor for GraphicsContext.Storage();
    v3 = swift_allocObject();
    *(v3 + 32) = xmmword_18DD85500;
    *(v3 + 48) = 1065353216;
    *(v3 + 56) = 0x7FF8000000000000;
    v4 = *(v1 + 16);
    v5 = *(v4 + 64);
    if (v5 == RBDrawingStateGetDefaultColorSpace())
    {
      *(v3 + 16) = v4;
    }

    else
    {
      v6 = v0;
      v7 = RBDrawingStateGetDisplayList();
      v8 = *(v1 + 32);
      v9 = *(v1 + 40);
      v10 = v8;
      v11 = v9;
      if (v8 == 1)
      {
        v10 = *(v4 + 48);
        v11 = *(v4 + 56);
      }

      v12[0] = v10;
      v12[1] = v11;
      type metadata accessor for GraphicsContext.Storage.Shared();
      swift_allocObject();
      outlined copy of EnvironmentValues?(v8, v9);
      *(v3 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v7, v12);
      v0 = v6;
    }

    *(v3 + 24) = v2;
    *(v3 + 64) = 1;
    *(v3 + 48) = *(v1 + 48);
    *(v3 + 52) = *(v1 + 52);

    *v0 = v3;
  }
}

uint64_t GraphicsContext.Storage.Shared.deinit()
{

  v1 = *(v0 + 224);
  v7[8] = *(v0 + 208);
  v7[9] = v1;
  v8 = *(v0 + 240);
  v2 = *(v0 + 160);
  v7[4] = *(v0 + 144);
  v7[5] = v2;
  v3 = *(v0 + 192);
  v7[6] = *(v0 + 176);
  v7[7] = v3;
  v4 = *(v0 + 96);
  v7[0] = *(v0 + 80);
  v7[1] = v4;
  v5 = *(v0 + 128);
  v7[2] = *(v0 + 112);
  v7[3] = v5;
  outlined destroy of GraphicsContext.Shading?(v7, &lazy cache variable for type metadata for GraphicsContext.ResolvedShading?, &type metadata for GraphicsContext.ResolvedShading);

  return v0;
}

void type metadata accessor for GraphicsContext.Shading?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

id RBShape.setPath(_:style:shapeDistance:)(double *a1, __int16 a2, double a3)
{
  v5 = a2;
  v6 = *a1;
  v7 = *(a1 + 32);
  if (v7 <= 1)
  {
    if (!*(a1 + 32))
    {
      [v3 setRect_];
      return RBShape.setRenderingMode(style:shapeDistance:)(a3);
    }

    if (v7 == 1)
    {
      [v3 setEllipseInRect_];
      return RBShape.setRenderingMode(style:shapeDistance:)(a3);
    }

LABEL_10:
    v10 = Path.retainRBPath()();
    v24[0] = 0x3FF0000000000000;
    v24[1] = 0;
    v24[2] = 0;
    v24[3] = 0x3FF0000000000000;
    v24[4] = 0;
    v24[5] = 0;
    [v3 setRBPath:v10 transform:{v11, v24}];
    [v3 setEOFill_];
    RBPathRelease();
    return RBShape.setRenderingMode(style:shapeDistance:)(a3);
  }

  if (v7 != 2)
  {
    v8 = *(a1 + 1) | v6 | *(a1 + 2) | *(a1 + 3);
    if (v7 == 6 && v8 == 0)
    {
      [v3 setEmpty];
      return RBShape.setRenderingMode(style:shapeDistance:)(a3);
    }

    goto LABEL_10;
  }

  v12 = *(v6 + 16);
  v13 = *(v6 + 24);
  v14 = *(v6 + 32);
  v15 = *(v6 + 40);
  v16 = *(v6 + 48);
  v17 = *(v6 + 56);
  v18 = *(v6 + 64);
  v25.origin.x = v12;
  v25.origin.y = v13;
  v25.size.width = v14;
  v25.size.height = v15;
  v19 = fabs(CGRectGetWidth(v25)) * 0.5;
  v26.origin.x = v12;
  v26.origin.y = v13;
  v26.size.width = v14;
  v26.size.height = v15;
  v20 = fabs(CGRectGetHeight(v26)) * 0.5;
  if (v20 >= v19)
  {
    v20 = v19;
  }

  if (v20 >= v16)
  {
    v21 = v16;
  }

  else
  {
    v21 = v20;
  }

  if (v20 >= v17)
  {
    v22 = v17;
  }

  else
  {
    v22 = v20;
  }

  [v3 setRoundedRect:v18 cornerSize:v12 cornerStyle:{v13, v14, v15, v21, v22}];
  return RBShape.setRenderingMode(style:shapeDistance:)(a3);
}

id RBShape.setRenderingMode(style:shapeDistance:)(double a1)
{
  if ((~*&a1 & 0x7FF0000000000000) != 0 || (*&a1 & 0xFFFFFFFFFFFFFLL) == 0)
  {
    if (a1 < 0.0)
    {
      v3 = 3;
    }

    else
    {
      v3 = 2;
    }

    v4 = a1;
    [v1 setRenderingMode_];
    a1 = fabs(v4);
    v5 = sel_setRenderingModeArgument_;
    v6 = v1;
  }

  else
  {
    v5 = sel_setRenderingMode_;
    v6 = v1;
  }

  return [v6 v5];
}

void GraphicsContext.draw(_:with:style:)(double *a1, __int128 *a2, uint64_t *a3, uint64_t a4)
{
  v7 = *a3;
  v8 = a3[1];
  v10 = a3[2];
  v9 = a3[3];
  v11 = a3[4];
  v12 = *(a3 + 40);
  v13 = a2[9];
  v98[8] = a2[8];
  v98[9] = v13;
  v99 = *(a2 + 20);
  v14 = a2[5];
  v98[4] = a2[4];
  v98[5] = v14;
  v15 = a2[7];
  v98[6] = a2[6];
  v98[7] = v15;
  v16 = a2[1];
  v98[0] = *a2;
  v98[1] = v16;
  v17 = a2[3];
  v98[2] = a2[2];
  v98[3] = v17;
  v18 = _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOg(v98);
  if (v18 == 8)
  {
    v29 = destructiveProjectEnumData for GraphicsContext.ResolvedShading(v98);
    v30 = *v29;
    if (*(*v29 + 16))
    {
      v31 = *(v30 + 160);
      v83 = *(v30 + 144);
      v84 = v31;
      v86 = *(v30 + 192);
      v32 = *(v30 + 160);
      v85 = *(v30 + 176);
      v33 = *(v30 + 96);
      v79 = *(v30 + 80);
      v80 = v33;
      v34 = *(v30 + 112);
      v82 = *(v30 + 128);
      v35 = *(v30 + 96);
      v81 = *(v30 + 112);
      v36 = *(v30 + 48);
      v76 = *(v30 + 32);
      v77 = v36;
      v78 = *(v30 + 64);
      v37 = *(v30 + 176);
      v73 = v32;
      v74 = v37;
      v75 = *(v30 + 192);
      v69 = v35;
      v70 = v34;
      v38 = *(v30 + 144);
      v71 = *(v30 + 128);
      v72 = v38;
      v39 = *(v30 + 48);
      v65 = *(v30 + 32);
      v66 = v39;
      v40 = *(v30 + 80);
      v67 = *(v30 + 64);
      v68 = v40;
      v63[0] = v7;
      v63[1] = v8;
      v63[2] = v10;
      v63[3] = v9;
      v63[4] = v11;
      v64 = v12;
      outlined init with copy of GraphicsContext.ResolvedShading(&v76, &v87);
      GraphicsContext.draw(_:with:style:)(a1, &v65, v63, a4);
      v95 = v73;
      v96 = v74;
      v97 = v75;
      v91 = v69;
      v92 = v70;
      v93 = v71;
      v94 = v72;
      v87 = v65;
      v88 = v66;
      v89 = v67;
      v90 = v68;
      outlined destroy of GraphicsContext.ResolvedShading(&v87);
    }

    else
    {
      __break(1u);
    }
  }

  else if (v18 == 4)
  {
    v28 = destructiveProjectEnumData for GraphicsContext.ResolvedShading(v98);
    v91 = *(v28 + 64);
    v92 = *(v28 + 80);
    v93 = *(v28 + 96);
    *&v94 = *(v28 + 112);
    v87 = *v28;
    v88 = *(v28 + 16);
    v89 = *(v28 + 32);
    v90 = *(v28 + 48);
    *&v76 = v7;
    *(&v76 + 1) = v8;
    *&v77 = v10;
    *(&v77 + 1) = v9;
    *&v78 = v11;
    BYTE8(v78) = v12;
    v65 = 0u;
    v66 = 0u;
    LOBYTE(v67) = 1;
    _ShapeStyle_Pack.Style.draw(_:style:in:bounds:)(a1, &v76, a4, &v65);
  }

  else if (v18)
  {
    v41 = v11;
    v42 = a1;
    v43 = *(*(a4 + 16) + 32);
    if (v12)
    {
      *&v76 = v7;
      *(&v76 + 1) = v8;
      *&v77 = v10;
      *(&v77 + 1) = v9;
      *&v78 = v41;
      v44 = v43;
      RBShape.setStrokedPath(_:style:)(v42, &v76, v45, v46, v47, v48);
    }

    else
    {
      v55 = *(a4 + 56);
      v56 = v43;
      RBShape.setPath(_:style:shapeDistance:)(v42, v7 & 0x101, v55);
    }

    v57 = a2[9];
    v95 = a2[8];
    v96 = v57;
    v97 = *(a2 + 20);
    v58 = a2[5];
    v91 = a2[4];
    v92 = v58;
    v59 = a2[7];
    v93 = a2[6];
    v94 = v59;
    v60 = a2[1];
    v87 = *a2;
    v88 = v60;
    v61 = a2[3];
    v89 = a2[2];
    v90 = v61;
    GraphicsContext.Storage.Shared.setShading(_:)(&v87);
    RBDrawingStateDrawShape();
  }

  else
  {
    v19 = destructiveProjectEnumData for GraphicsContext.ResolvedShading(v98);
    v20 = *(v19 + 16);
    v62 = *v19;
    v76 = *v19;
    LODWORD(v77) = v20;
    v21 = *(a4 + 16);
    v22 = *(v21 + 32);
    if (v12)
    {
      *&v87 = v7;
      *(&v87 + 1) = v8;
      *&v88 = v10;
      *(&v88 + 1) = v9;
      *&v89 = v11;
      v23 = v22;
      RBShape.setStrokedPath(_:style:)(a1, &v87, v24, v25, v26, v27);
    }

    else
    {
      v49 = *(a4 + 56);
      v50 = v22;
      RBShape.setPath(_:style:shapeDistance:)(a1, v7 & 0x101, v49);
    }

    RBDrawingStateInit();
    RBDrawingStateClipShape();
    RBDrawingStateBeginLayer();
    if (*(&v62 + 3) != 0.0)
    {
      [*(v21 + 32) setInfinite];
      GraphicsContext.Storage.Shared.setColor(_:)(&v76, v51, v52, v53, v54);
      RBDrawingStateDrawShape();
    }

    RBDrawingStateDrawLayer();
    RBDrawingStateDestroy();
  }
}

void GraphicsContext.Storage.Shared.setShading(_:)(uint64_t a1)
{
  v54 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 144);
  v52[8] = *(a1 + 128);
  v52[9] = v2;
  v53 = *(a1 + 160);
  v3 = *(a1 + 80);
  v52[4] = *(a1 + 64);
  v52[5] = v3;
  v4 = *(a1 + 112);
  v52[6] = *(a1 + 96);
  v52[7] = v4;
  v5 = *(a1 + 16);
  v52[0] = *a1;
  v52[1] = v5;
  v6 = *(a1 + 48);
  v52[2] = *(a1 + 32);
  v52[3] = v6;
  v7 = _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOg(v52);
  v8 = destructiveProjectEnumData for GraphicsContext.ResolvedShading(v52);
  if (v7 > 3)
  {
    if (v7 <= 5)
    {
      if (v7 == 5)
      {
        v21 = *v8;
        v22 = *(v8 + 8);
        v23 = *(v8 + 12);
        v24 = *(v8 + 16);
        v25 = *(v8 + 72);
        v26 = *(v8 + 76);
        v27 = *(v8 + 40);
        v46 = *(v8 + 24);
        v47 = v27;
        v48 = *(v8 + 56);
        LOBYTE(v49) = v25;
        v28 = *(v1 + 64);
        v29 = ResolvedGradient.constantColor.getter();
        if ((v31 & 0x100000000) == 0)
        {
          v43 = v29;
          v44 = v30;
          v45 = v31;
          GraphicsContext.Storage.Shared.setColor(_:)(&v43, v32, v33, v34, v35);
          return;
        }

        v43 = v21;
        LOBYTE(v44) = v22;
        HIDWORD(v44) = v23;
        LOBYTE(v45) = v24;

        specialized withGradient(_:in:do:)(&v43, v28, v1, &v46, v26, closure #1 in GraphicsContext.Storage.Shared.setGradient(_:geometry:options:in:colorSpace:)partial apply, closure #1 in withGradient(_:in:do:)partial apply, closure #2 in withGradient(_:in:do:)partial apply);
        goto LABEL_18;
      }
    }

    else
    {
      if (v7 == 6)
      {
        v13 = *(v8 + 72);
        v14 = *(v8 + 80);
        v15 = *(v8 + 88);
        v16 = *(v8 + 96);
        v47 = *(v8 + 16);
        v48 = *(v8 + 32);
        v49 = *(v8 + 48);
        *&v50 = *(v8 + 64);
        v46 = *v8;
        GraphicsContext.Storage.Shared.setMeshGradient(_:in:)(&v46, v13, v14, v15, v16);
        return;
      }

      if (v7 == 7)
      {
        v36 = *(v8 + 112);
        v37 = *(v8 + 120);
        v38 = *(v8 + 128);
        v39 = *(v8 + 136);
        v40 = *(v8 + 144);
        v41 = *(v8 + 152);
        v42 = *(v8 + 160);
        v49 = *(v8 + 48);
        v50 = *(v8 + 64);
        v51[0] = *(v8 + 80);
        *(v51 + 12) = *(v8 + 92);
        v46 = *v8;
        v47 = *(v8 + 16);
        v48 = *(v8 + 32);
        RBFill.setRepeatedImage(_:origin:scale:sourceRect:in:)(&v46, *(v1 + 64), v36, v37, v42, v38, v39, v40, v41);
        *(v1 + 272) = 0;
        goto LABEL_18;
      }
    }

    goto LABEL_20;
  }

  if (v7 <= 2)
  {
    if (v7 == 1)
    {
      LODWORD(v9) = *(v8 + 16);
      v46 = *v8;
      LODWORD(v47) = LODWORD(v9);
      GraphicsContext.Storage.Shared.setColor(_:)(&v46, v9, *&v46, v11, v12);
      return;
    }

    if (v7 == 2)
    {
      LODWORD(v9) = *v8;
      LODWORD(v10) = *(v8 + 4);
      LODWORD(v11) = *(v8 + 8);
      LODWORD(v12) = *(v8 + 12);
      [*(v1 + 40) setColor:1 colorSpace:{v9, v10, v11, v12}];
      *(v1 + 272) = 0;
LABEL_18:

      return;
    }

LABEL_20:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v17 = *v8;
  v18 = *(v8 + 24);
  v19 = *(v8 + 32);
  v20 = *(v8 + 48);
  v46 = v19;
  v47 = v20;
  if (v17)
  {
    [*(v1 + 40) setShader:v17 bounds:&v46 flags:v18 & 1];
  }

  else
  {
    LODWORD(v19) = *MEMORY[0x1E69C7148];
    LODWORD(v20) = *(MEMORY[0x1E69C7148] + 4);
    LODWORD(v11) = *(MEMORY[0x1E69C7148] + 8);
    LODWORD(v12) = *(MEMORY[0x1E69C7148] + 12);
    [*(v1 + 40) setColor_];
  }
}

void closure #1 in ImageRendererHost.cgImage.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  *(a4 + 128) = a1;
  v9 = (a4 + *(*a4 + 240));
  swift_beginAccess();
  v10 = *v9;
  if (v9[1])
  {

    v11 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA012DisplayScaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v10);
  }

  else
  {
    v12 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA012DisplayScaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(*v9);
    if (v12)
    {
      v11 = v12[9];
    }

    else
    {
      v11 = 1.0;
    }
  }

  swift_endAccess();
  swift_beginAccess();
  *(a4 + 120) = v11;
  swift_beginAccess();
  *(a4 + 104) = a5;
  *(a4 + 112) = a6;
  swift_beginAccess();
  *(a4 + 144) = 0;
  swift_unknownObjectRelease();
  v13 = *(a4 + 104);
  v14 = *(a4 + 112);
  v15 = *(a4 + 120);
  v16 = *(a4 + 16);
  v49 = *(a4 + 21);
  v47 = *(a4 + 21);
  v48 = *(a4 + 20);
  v17 = *(a4 + 24);
  v18 = *(a4 + 28);
  v50 = v9[1];
  v51 = *v9;
  if (v17)
  {
    v19 = *(a4 + 16);
    v20 = objc_opt_self();

    v21 = v20;
    v16 = v19;
    v22 = [v21 sharedDefaultDevice];
    if (v22)
    {
      v23 = v22;
      swift_unknownObjectRetain();
      goto LABEL_11;
    }
  }

  else
  {
  }

  v23 = [objc_opt_self() sharedDevice];
LABEL_11:
  type metadata accessor for _ContiguousArrayStorage<(RBImageRendererProperty, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(RBImageRendererProperty, Any)>, &lazy cache variable for type metadata for (RBImageRendererProperty, Any), type metadata accessor for RBImageRendererProperty);
  inited = swift_initStackObject();
  v25 = *MEMORY[0x1E69C71B8];
  *(inited + 32) = *MEMORY[0x1E69C71B8];
  v26 = MEMORY[0x1E69E7DE0];
  *(inited + 16) = xmmword_18DDACA80;
  *(inited + 40) = v15;
  v27 = *MEMORY[0x1E69C7198];
  *(inited + 64) = v26;
  *(inited + 72) = v27;
  LODWORD(aBlock) = v16;
  BYTE4(aBlock) = v48;
  BYTE5(aBlock) = v47;
  DWORD2(aBlock) = v17;
  BYTE12(aBlock) = v18;
  v28 = RasterizationOptions.resolvedColorMode.getter();
  v29 = MEMORY[0x1E69E72F0];
  *(inited + 80) = v28;
  v30 = *MEMORY[0x1E69C71A8];
  *(inited + 104) = v29;
  *(inited + 112) = v30;
  v31 = MEMORY[0x1E69E6370];
  *(inited + 120) = (v17 & 2) != 0;
  v32 = *MEMORY[0x1E69C7188];
  *(inited + 144) = v31;
  *(inited + 152) = v32;
  *(inited + 184) = v29;
  *(inited + 160) = 1;
  v33 = v25;
  v34 = v27;
  v35 = v30;
  v36 = v32;
  v37 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo23RBImageRendererPropertya_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  _sSo23RBImageRendererPropertya_yptMaTm_0(0, &lazy cache variable for type metadata for (RBImageRendererProperty, Any), type metadata accessor for RBImageRendererProperty);
  swift_arrayDestroy();
  v38 = *MEMORY[0x1E69C71C0];
  v39 = dword_18DDEDA20[v49];
  v56 = MEMORY[0x1E69E6448];
  LODWORD(aBlock) = v39;
  outlined init with take of Any(&aBlock, v60);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v59 = v37;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v60, v38, isUniquelyReferenced_nonNull_native);
  type metadata accessor for RBImageRendererProperty(0);
  lazy protocol witness table accessor for type PassthroughSubject<(), Never> and conformance PassthroughSubject<A, B>(&lazy protocol witness table cache variable for type RBImageRendererProperty and conformance RBImageRendererProperty, type metadata accessor for RBImageRendererProperty, protocol conformance descriptor for RBImageRendererProperty);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v42 = swift_allocObject();
  v42[2] = v51;
  v42[3] = v50;
  v42[4] = a2;
  v42[5] = a3;
  v43 = swift_allocObject();
  *(v43 + 16) = partial apply for closure #1 in static CGImageRef.render(size:scale:environment:options:backgroundGPUMode:renderer:);
  *(v43 + 24) = v42;
  v57 = partial apply for thunk for @callee_guaranteed (@guaranteed RBDisplayList) -> ();
  v58 = v43;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v55 = thunk for @escaping @callee_guaranteed (@guaranteed RBDisplayList) -> ();
  v56 = &block_descriptor_28;
  v44 = _Block_copy(&aBlock);

  v45 = [v23 renderImageInRect:isa options:v44 renderer:{0.0, 0.0, v13, v14}];
  swift_unknownObjectRelease();

  _Block_release(v44);
  swift_unknownObjectRelease();

  LOBYTE(isa) = swift_isEscapingClosureAtFileLocation();

  if (isa)
  {
    __break(1u);
  }

  else
  {
    v46 = *(a4 + 96);
    *(a4 + 96) = v45;
  }
}

uint64_t sub_18D1977C4()
{

  return swift_deallocObject();
}

void type metadata accessor for _ContiguousArrayStorage<(RBImageRendererProperty, Any)>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    _sSo23RBImageRendererPropertya_yptMaTm_0(255, a3, a4);
    v5 = type metadata accessor for _ContiguousArrayStorage();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void thunk for @escaping @callee_guaranteed (@guaranteed RBDisplayList) -> ()(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

double closure #1 in static CGImageRef.render(size:scale:environment:options:backgroundGPUMode:renderer:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *))
{
  type metadata accessor for GraphicsContext.Storage();
  v8 = swift_allocObject();
  *(v8 + 32) = xmmword_18DD85500;
  *(v8 + 48) = 1065353216;
  *(v8 + 56) = 0x7FF8000000000000;
  v11[0] = a2;
  v11[1] = a3;
  type metadata accessor for GraphicsContext.Storage.Shared();
  swift_allocObject();

  v9 = a1;

  *(v8 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v9, v11);
  *(v8 + 24) = RBDisplayListGetState();
  *(v8 + 64) = 0;
  v11[0] = v8;
  a4(v11);

  return result;
}

uint64_t closure #3 in closure #1 in ImageRendererHost.render(ifNewerThan:renderer:)(CGFloat *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 + 88);
  v6 = *(v5 + 64);
  *(v5 + 72) = xmmword_18DDAB910;
  v12 = a3;
  v13 = a4;
  v14 = HIDWORD(a4);

  v7 = *(v5 + 48);
  v8 = *(v5 + 56);
  DisplayList.GraphicsRenderer.render(list:in:)(&v12, a1);
  swift_beginAccess();

  v9 = MEMORY[0x1E69E7CC8];
  *(v5 + 16) = MEMORY[0x1E69E7CC8];

  swift_beginAccess();
  v10 = *(v5 + 32);
  *(v5 + 32) = v9;
  *(v5 + 40) = v9;
  *(v5 + 16) = v10;
  swift_endAccess();
  *(v5 + 48) = v7;
  *(v5 + 56) = v8;
  *(v5 + 64) = v6;
}

uint64_t LinearGradient._Paint.draw(path:style:in:bounds:)(double *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a2 + 4);
  v8 = *(a2 + 40);
  v9 = *v4;
  v10 = *(v4 + 8);
  v11 = *(v4 + 3);
  v12 = *(v4 + 16);
  v13 = *(v4 + 3);
  v14 = *(v4 + 5);
  v32 = a2[1];
  v33 = *a2;
  if ((*(a4 + 32) & 1) == 0)
  {
    v15 = *a4;
    v17 = *(a4 + 16);
    goto LABEL_6;
  }

  v15 = *a1;
  v16 = *(a1 + 32);
  if (v16 <= 2)
  {
    v17 = *(a1 + 2);
    if (v16 >= 2)
    {
      v15 = *(*&v15.f64[0] + 16);
      v17 = *(*a1 + 32);
    }

    goto LABEL_6;
  }

  if (v16 != 5)
  {
    if (v16 != 6)
    {
      goto LABEL_19;
    }

    v15 = *MEMORY[0x1E695F050];
    v17 = *(MEMORY[0x1E695F050] + 16);
LABEL_6:
    v48 = v12;
    *&v49 = v9;
    BYTE8(v49) = v10;
    HIDWORD(v49) = v11;
    v50[0] = v12;
    *&v50[8] = vaddq_f64(v15, vmulq_f64(v13, v17));
    *&v50[24] = vaddq_f64(v15, vmulq_f64(v14, v17));
    *&v50[40] = 0;
    *&v51 = 0;
    BYTE8(v51) = 0;
    HIDWORD(v51) = 0;
    _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOi4_(&v49);
    v45 = v55;
    v46 = v56;
    v47 = v57;
    v41 = v51;
    v42 = v52;
    v43 = v53;
    v44 = v54;
    v37 = v49;
    v38 = *v50;
    v39 = *&v50[16];
    v40 = *&v50[32];
    v34[0] = v33;
    v34[1] = v32;
    v35 = v7;
    v36 = v8;

    GraphicsContext.draw(_:with:style:)(a1, &v37, v34, a3);
    v58[8] = v45;
    v58[9] = v46;
    v59 = v47;
    v58[4] = v41;
    v58[5] = v42;
    v58[6] = v43;
    v58[7] = v44;
    v58[0] = v37;
    v58[1] = v38;
    v58[2] = v39;
    v58[3] = v40;
    return outlined destroy of GraphicsContext.ResolvedShading(v58);
  }

  v19 = *a1;
  v30 = *(v4 + 3);
  v31 = *(v4 + 5);
  if (*(*&v15.f64[0] + 16))
  {
    if (*(*&v15.f64[0] + 16) == 1)
    {

      RBPathGetBoundingRect();
    }

    else
    {

      v20 = MEMORY[0x193AC3640](v19 + 24);
    }

    width = v22;
    x = v20;
    y = v21;
    height = v23;
    goto LABEL_17;
  }

  v24 = *(*&v15.f64[0] + 24);
  if (v24)
  {
    v25 = v24;

    PathBoundingBox = CGPathGetPathBoundingBox(v25);
    width = PathBoundingBox.size.width;
    x = PathBoundingBox.origin.x;
    y = PathBoundingBox.origin.y;
    height = PathBoundingBox.size.height;

LABEL_17:
    outlined destroy of Path(a1);
    v17.f64[0] = width;
    v15.f64[0] = x;
    v15.f64[1] = y;
    v17.f64[1] = height;
    v13 = v30;
    v14 = v31;
    goto LABEL_6;
  }

  __break(1u);
LABEL_19:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _AnyResolvedPaint.draw(path:style:in:bounds:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  v8 = *(a2 + 16);
  v10[0] = *a2;
  v10[1] = v8;
  v11 = v6;
  v12 = v7;
  return (*(*(v5 + 192) + 32))(a1, v10, a3, a4, *(v5 + 184));
}

void specialized withGradient(_:in:do:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, void (*a7)(void), uint64_t (*a8)(uint64_t, uint64_t))
{
  v99 = *MEMORY[0x1E69E9840];
  v96 = a3;
  v97 = a4;
  v98 = a5;
  v12 = *a1;
  v13 = *(*a1 + 16);
  if (!v13)
  {
    v14 = 0;
    v17 = 1;
    goto LABEL_11;
  }

  LOBYTE(v14) = 0;
  v15 = v12 + 72;
  v16 = 1 - v13;
  v17 = 5;
  while ((v14 & 1) != 0)
  {
    v14 = 1;
    if (!v16)
    {
      goto LABEL_11;
    }

LABEL_4:
    ++v16;
    v15 += 48;
    if (v16 == 1)
    {
      goto LABEL_57;
    }
  }

  v14 = *v15 ^ 1;
  if (v16)
  {
    goto LABEL_4;
  }

  if (*v15)
  {
    v17 = 1;
  }

  else
  {
    v17 = 5;
  }

LABEL_11:
  MEMORY[0x1EEE9AC00](a1);
  v8 = v79;
  v79[2] = v12;
  v80 = v18;
  v81 = v19;
  v82 = v20;
  v83 = a2;
  v84 = v14;
  MEMORY[0x1EEE9AC00](v21);
  v9 = v71;
  v71[2] = v12;
  v72 = v27;
  v73 = v25;
  v74 = v26;
  v75 = v14;
  v76 = v28;
  v77 = &v95;
  v78 = v13;
  if (!v13)
  {
    return;
  }

  if (v13 >> 59)
  {
    __break(1u);
LABEL_63:
    __break(1u);
  }

  v89 = v27;
  v90 = v24;
  v91 = v26;
  v86 = v25;
  v92 = v23;
  if ((16 * v13) >= 1025)
  {
    goto LABEL_58;
  }

LABEL_14:
  MEMORY[0x1EEE9AC00](v22);
  v93 = v71 - v33;
  if ((v13 * v17) >> 60)
  {
    goto LABEL_63;
  }

  v88 = v32;
  if ((8 * v13 * v17) >= 1025)
  {
    v87 = v30;
    v85 = v31;
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      v68 = v87;
      v69 = v85;
      v70 = swift_slowAlloc();
      closure #1 in closure #1 in withGradientStorage(count:valuesPerLocation:element:do:)(v70, v13 * v17, v13, v68, v8, v93, v13, v17, v69);
      MEMORY[0x193AC4820](v70, -1, -1);
      return;
    }
  }

  v87 = v71;
  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  v8 = v71 - v34;
  v35 = 0;
  v12 += 72;
  v36 = (v93 + 8);
  do
  {
    v9 = v35 * v17;
    if ((v35 * v17) >> 64 != (v35 * v17) >> 63)
    {
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      v87 = a7;
      v65 = a8;
      v22 = swift_stdlib_isStackAllocationSafe();
      if ((v22 & 1) == 0)
      {
        v66 = v87;
        v67 = swift_slowAlloc();
        closure #1 in withGradientStorage(count:valuesPerLocation:element:do:)(v67, v13, v13, v17, v66, v8, v65, v9);
        MEMORY[0x193AC4820](v67, -1, -1);
        return;
      }

      goto LABEL_14;
    }

    v41 = *(v12 - 10);
    v42 = *(v12 - 9);
    v43 = *(v12 - 8);
    v44 = *(v12 - 7);
    if (a2 != 2)
    {
      RBColorFromLinear();
    }

    v45 = &v8[8 * v9];
    *(v36 - 2) = v41;
    *(v36 - 1) = v42;
    *v36 = v43;
    v36[1] = v44;
    *v45 = *(v12 - 3);
    if (v14)
    {
      if (*v12)
      {
        v38 = 0.0;
        v40 = 1.0;
        v39 = 1.0;
        v37 = 0.0;
      }

      else
      {
        v37 = *(v12 - 4);
        v38 = *(v12 - 3);
        v39 = *(v12 - 2);
        v40 = *(v12 - 1);
      }

      *(v45 + 1) = v37;
      *(v45 + 2) = v38;
      *(v45 + 3) = v39;
      *(v45 + 4) = v40;
    }

    ++v35;
    v12 += 48;
    v36 += 4;
  }

  while (v13 != v35);
  if (v89)
  {
    v46 = v92;
    v47 = v91;
    v48 = v90;
    if (v89 == 1)
    {
      if (v14)
      {
        v49 = 576;
      }

      else
      {
        v49 = 64;
      }
    }

    else if (v14)
    {
      v49 = 704;
    }

    else
    {
      v49 = 192;
    }
  }

  else
  {
    v46 = v92;
    v47 = v91;
    v48 = v90;
    if (v14)
    {
      v49 = 640;
    }

    else
    {
      v49 = 128;
    }
  }

  v50 = RBGradientFlags.union(_:)(v48, v49);
  v51 = *a4;
  v52 = *(a4 + 8);
  v53 = *(a4 + 16);
  v54 = *(a4 + 24);
  v55 = *(a4 + 32);
  v56 = *(a4 + 40);
  v57 = *(a4 + 48);
  v58 = *(v46 + 40);
  if (v57 > 2)
  {
    if (v57 == 3)
    {
      v60 = v51;
      v61 = v52;
      v62 = v53;
      [*(v46 + 40) setRadialGradientCenter:v13 startRadius:v93 endRadius:v8 stopCount:v50 colors:0.0 locations:0.0 flags:{v55, v56}];
      v100.origin.x = v60;
      v100.origin.y = v61;
      v100.size.width = v62;
      v100.size.height = v54;
      Width = CGRectGetWidth(v100);
      v101.origin.x = v60;
      v101.origin.y = v61;
      v101.size.width = v62;
      v101.size.height = v54;
      Height = CGRectGetHeight(v101);
      *v94 = Width;
      v94[1] = 0;
      v94[2] = 0;
      *&v94[3] = Height;
      *&v94[4] = v60;
      *&v94[5] = v61;
      [v58 concat_];
      if (v47)
      {
        goto LABEL_54;
      }
    }

    else if (v57 == 4)
    {
      [*(v46 + 40) setConicGradientCenter:v13 angle:v93 stopCount:v8 colors:v50 locations:v51 flags:{v52, v53}];
      if (v47)
      {
        goto LABEL_54;
      }
    }

    else
    {
      [*(v46 + 40) setAngularGradientCenter:v13 startAngle:v93 endAngle:0 stopCount:v8 colors:v50 colorSpace:v51 locations:v52 flags:{v53, v54, v55, v56}];
      if (v47)
      {
        goto LABEL_54;
      }
    }

    goto LABEL_53;
  }

  if (!v57)
  {
    [*(v46 + 40) setAxialGradientStartPoint:v13 endPoint:v93 stopCount:v8 colors:v50 locations:v51 flags:{v52, v53, v54, v55, v56}];
LABEL_46:
    if (v47)
    {
      goto LABEL_54;
    }

LABEL_53:
    LODWORD(v59) = v86;
    [v58 setHeadroom_];
    goto LABEL_54;
  }

  if (v57 == 1)
  {
    [*(v46 + 40) setRadialGradientCenter:v13 startRadius:v93 endRadius:v8 stopCount:v50 colors:v51 locations:v52 flags:{v53, v54, v55, v56}];
    goto LABEL_46;
  }

  [*(v46 + 40) setRadialGradientStartCenter:v13 startRadius:v93 endCenter:v8 endRadius:v50 stopCount:v51 colors:v52 locations:v53 flags:{v54, v55, v56}];
  if ((v47 & 1) == 0)
  {
    goto LABEL_53;
  }

LABEL_54:
  *(v46 + 272) = 0;
}

uint64_t RBGradientFlags.union(_:)(char a1, unsigned int a2)
{
  v2 = a2 & 0xFFFFFFF8 | 1;
  if ((a1 & 1) == 0)
  {
    v2 = a2;
  }

  v3 = a2 & 0xFFFFFFF8 | 2;
  if ((a1 & 2) == 0)
  {
    v3 = v2;
  }

  if ((a1 & 4) != 0)
  {
    v3 = v3 & 0xFFFFFF3F | 0x40;
  }

  if ((v3 & 0xF00) != 0 || (a1 & 8) == 0)
  {
    return v3;
  }

  else
  {
    return v3 | 0x400;
  }
}

double one-time initialization function for resizable()
{
  result = 0.0;
  static Image.ResizingInfo.resizable = 0u;
  unk_1EAB12458 = 0u;
  byte_1EAB12468 = 1;
  return result;
}

BOOL specialized GraphicsContext.drawAsVector(image:rect:style:shading:)(uint64_t a1, __int128 *a2, float *a3, CGFloat a4, CGFloat a5, double a6, double a7)
{
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v12 = COERCE_DOUBLE(v249);
  v13 = *a2;
  *&v249[16] = a2[1];
  v14 = a2[3];
  *&v249[32] = a2[2];
  v15 = *(a1 + 32);
  v16 = *(a1 + 40);
  v17 = *(a1 + 44);
  v18 = *(a1 + 52);
  *&v249[48] = v14;
  *&v249[57] = *(a2 + 57);
  v19 = *(a1 + 60);
  LOBYTE(v20) = *(a1 + 64);
  v21 = v9 & 0xFE;
  *v249 = v13;
  if (v21 == 2)
  {
    v166 = v19;
    RBDrawingStateBeginLayer();
    b = 0.0;
    v23 = 0.0;
    v24 = 0.0;
    if (v10 != 0.0)
    {
      if (v16 <= 3)
      {
        v25 = v15;
      }

      else
      {
        v25 = v11;
      }

      if (v16 <= 3)
      {
        v26 = v11;
      }

      else
      {
        v26 = v15;
      }

      v23 = 1.0 / v10 * v26;
      v24 = 1.0 / v10 * v25;
    }

    a = a6 / v23;
    d = a7 / v24;
    if (v16)
    {
      specialized CGAffineTransform.init(orientation:in:)(v16, v246, a6, a7);
      v29 = v247;
      v30 = v248;
      CGAffineTransformMakeTranslation(&t1, a4, a5);
      tx = t1.tx;
      ty = t1.ty;
      v167 = *&t1.c;
      v169 = *&t1.a;
      CGAffineTransformMakeTranslation(&t1, -a4, -a5);
      *&t2.a = v246[0];
      *&t2.c = v246[1];
      t2.tx = v29;
      t2.ty = v30;
      CGAffineTransformConcat(&v216, &t1, &t2);
      t1 = v216;
      *&t2.a = v169;
      *&t2.c = v167;
      t2.tx = tx;
      t2.ty = ty;
      CGAffineTransformConcat(&v216, &t1, &t2);
      t1 = v216;
      CGAffineTransformInvert(&t2, &t1);
      t1.a = a6 / v23;
      t1.c = 0.0;
      t1.b = 0.0;
      t1.d = a7 / v24;
      t1.tx = a4;
      t1.ty = a5;
      CGAffineTransformConcat(&v216, &t1, &t2);
      a = v216.a;
      b = v216.b;
      c = v216.c;
      d = v216.d;
      v34 = v216.tx;
      v35 = v216.ty;
    }

    else
    {
      c = 0.0;
      v34 = a4;
      v35 = a5;
    }

    v36 = v8[2];
    if (v9 == 2)
    {
      v37 = v8[4];
      v38 = v8[6];
      v39 = d;
      RBDrawingStateGetCTM();
      v175 = *&t1.a;
      v177 = *&t1.c;
      v171 = t1.tx;
      v40 = t1.ty;
      v41 = v36;
      v159 = v37;
      outlined copy of Image.Location(v37);
      v157 = v38;
      t1.a = a;
      t1.b = b;
      t1.c = c;
      t1.d = v39;
      t1.tx = v34;
      t1.ty = v35;
      RBDrawingStateConcatCTM();
      v42 = [v41 renderingMode];
      v43 = a6;
      v44 = a4;
      v45 = a5;
      v158 = v41;
      if (v42 != 255)
      {
        goto LABEL_36;
      }

      v46 = *v249;
      switch(v249[72])
      {
        case 4:
          v59 = *(a3 + 4);
          v60 = *(a3 + 5);
          if (v59 == 1)
          {
            v61 = *(a3 + 2);
            v62 = *(v61 + 48);
            v63 = *(v61 + 56);
          }

          else
          {
            v63 = *(a3 + 5);
            v62 = *(a3 + 4);
          }

          outlined init with copy of GraphicsContext.Shading?(v249, &t1);
          outlined init with copy of GraphicsContext.Shading?(v249, &t1);
          outlined copy of EnvironmentValues?(v59, v60);
          v64 = specialized ShapeStyle.isMultiLevel(in:)(v62, v63, v46);

          outlined destroy of GraphicsContext.Shading?(v249, &lazy cache variable for type metadata for GraphicsContext.Shading?, &type metadata for GraphicsContext.Shading);
          outlined destroy of GraphicsContext.Shading?(v249, &lazy cache variable for type metadata for GraphicsContext.Shading?, &type metadata for GraphicsContext.Shading);
          v41 = v158;
          if (!v64)
          {
LABEL_34:
            if (one-time initialization token for preferredIfEnabled != -1)
            {
              goto LABEL_142;
            }

            goto LABEL_35;
          }

          break;
        case 8:
          if (*(*v249 + 16) <= 1uLL)
          {
            goto LABEL_34;
          }

          break;
        case 0xA:
          v47 = vorrq_s8(vorrq_s8(*&v249[8], *&v249[40]), vorrq_s8(*&v249[24], *&v249[56]));
          if (*&vorr_s8(*v47.i8, *&vextq_s8(v47, v47, 8uLL)) | *v249)
          {
            goto LABEL_34;
          }

          v48 = *(a3 + 4);
          v49 = *(a3 + 5);
          if (v48 == 1)
          {
            v50 = *(a3 + 2);
            v51 = *(v50 + 48);
            v52 = *(v50 + 56);
          }

          else
          {
            v52 = *(a3 + 5);
            v51 = *(a3 + 4);
          }

          outlined init with copy of GraphicsContext.Shading?(v249, &t1);
          outlined copy of EnvironmentValues?(v48, v49);

          v156 = specialized ShapeStyle.isMultiLevel(in:)(v51, v52);

          outlined destroy of GraphicsContext.Shading?(v249, &lazy cache variable for type metadata for GraphicsContext.Shading?, &type metadata for GraphicsContext.Shading);
          if (!v156)
          {
            goto LABEL_34;
          }

          break;
        default:
          goto LABEL_34;
      }

      v42 = 4;
LABEL_36:
      v65 = [v41 beginUpdateWithRenderingMode_];
      v41 = v65;
      v66 = **&v12;
      *&v243.c = *(*&v12 + 16);
      v67 = *(*&v12 + 48);
      *&v243.tx = *(*&v12 + 32);
      v244 = v67;
      v245 = *&v249[64];
      *&v243.a = v66;
      v68 = v249[72];
      if (v249[72] == 255)
      {
        v71 = v171;
        if (v20)
        {
          LODWORD(v17) = 1065353216;
          v76 = 2143289344;
          LODWORD(v77) = 1065353216;
          *&v18 = 1065353216;
          LODWORD(v78) = 1065353216;
        }

        else
        {
          v77 = HIDWORD(v17);
          v78 = HIDWORD(*&v18);
          v76 = v166;
        }

        *&t2.a = __PAIR64__(v77, v17);
        *&t2.b = __PAIR64__(v78, LODWORD(v18));
        LODWORD(t2.c) = v76;
        _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOi0_(&t2);
        v239 = v230;
        v240 = v231;
        v241 = v232;
        v235 = v226;
        v236 = v227;
        v237 = v228;
        v238 = v229;
        t1 = t2;
        v242 = v233;
        v20 = a3;
        v17 = v159;
        if (v42 == 2)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v69 = MEMORY[0x193AC3780](v65);
        v17 = v159;
        *&t2.a = v159;
        outlined init with copy of GraphicsContext.Shading?(v249, &t1);
        outlined copy of Image.Location(v159);
        _ShapeStyle_ResolverMode.init(rbSymbolStyleMask:location:)(v69, &t2, &t1);
        v18 = t1.a;
        if (BYTE2(t1.b))
        {
          b_low = LOWORD(t1.b);
        }

        else
        {
          b_low = LOWORD(t1.b) != 0;
        }

        t1 = v243;
        v235 = v244;
        *&v236 = v245;
        BYTE8(v236) = v68;
        v20 = a3;
        GraphicsContext.Shading.resolve(in:levels:)(a3, b_low, &v216);

        outlined destroy of GraphicsContext.Shading?(v249, &lazy cache variable for type metadata for GraphicsContext.Shading?, &type metadata for GraphicsContext.Shading);
        v231 = v222;
        v232 = v223;
        v233 = v224;
        v227 = v218;
        v228 = v219;
        v229 = v220;
        v230 = v221;
        t2 = v216;
        v226 = v217;
        v71 = v171;
        if (_s7SwiftUI15GraphicsContextV15ResolvedShadingOSgWOg(&t2) == 1)
        {
          __asm { FMOV            V0.4S, #1.0 }

          *&t1.a = _Q0;
          LODWORD(t1.c) = 2143289344;
          _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOi0_(&t1);
          v213 = v240;
          v214 = v241;
          v215 = v242;
          v209 = v236;
          v210 = v237;
          v211 = v238;
          v212 = v239;
          v207 = t1;
          v208 = v235;
        }

        else
        {
          v213 = v222;
          v214 = v223;
          v215 = v224;
          v209 = v218;
          v210 = v219;
          v211 = v220;
          v212 = v221;
          v207 = v216;
          v208 = v217;
        }

        v239 = v212;
        v240 = v213;
        v241 = v214;
        v235 = v208;
        v236 = v209;
        v237 = v210;
        v238 = v211;
        t1 = v207;
        v242 = v215;
        if (v42 == 2)
        {
LABEL_46:
          v79 = *(v20 + 4);
          v80 = *(v20 + 5);
          v81 = *&v79;
          v12 = *&v80;
          if (v79 == 1)
          {
            v82 = *(v20 + 2);
            v81 = *(v82 + 48);
            v12 = *(v82 + 56);
          }

          v216.a = v81;
          v216.b = v12;
          if (v17 >= 2)
          {
            v83 = v17;
          }

          else
          {
            v17 = 0;
          }

          v84.n128_f64[0] = outlined copy of EnvironmentValues?(v79, v80);
          ResolvedMulticolorStyle.init(in:bundle:)(&v216, v17, &t2, v84);
          v162 = t2.b;
          v163 = t2.a;
          v161 = t2.c;
          v85 = *&t2.d;
          goto LABEL_55;
        }
      }

      v162 = 0.0;
      v163 = 0.0;
      v161 = 0.0;
      v85 = 1;
LABEL_55:
      v168 = *&v85;
      updated = RBSymbolUpdateGroupCount();
      if (updated < 0)
      {
        goto LABEL_141;
      }

      *&v18 = updated;
      if (!updated)
      {
LABEL_133:
        outlined destroy of GraphicsContext.ResolvedShading(&t1);
        outlined consume of ResolvedMulticolorStyle?(*&v163, *&v162, *&v161, *&v168);
        [v158 endUpdate_];

        outlined consume of Image.Location(v159);
        goto LABEL_134;
      }

      v87 = 0.0;
      v170 = updated;
      while (1)
      {
        v88 = RBSymbolUpdateGroupSize();
        if (v88 < 0)
        {
          goto LABEL_140;
        }

        v17 = v88;
        if (v88)
        {
          break;
        }

LABEL_58:
        ++*&v87;
        *&v18 = v170;
        if (*&v87 == v170)
        {
          goto LABEL_133;
        }
      }

      v18 = 0.0;
      while (1)
      {
        *&t2.a = v41;
        t2.b = v87;
        t2.c = v18;
        v95 = RBSymbolUpdateLayerStyle();
        *&t2.a = v41;
        t2.b = v87;
        t2.c = v18;
        RBSymbolUpdateLayerDrawingOpacity();
        if (v96 <= 0.0 || v95 == 10)
        {
          goto LABEL_65;
        }

        v98 = v96;
        if (v95 > 6)
        {
          switch(v95)
          {
            case 7:
              v99 = 0.25;
              v100 = 3;
              break;
            case 8:
              v99 = 0.25;
              v100 = 4;
              break;
            case 9:
              *&v216.a = v41;
              v216.b = v87;
              v216.c = v18;
              v101 = RBSymbolUpdateLayerColorName();
              if (!v101)
              {
                goto LABEL_65;
              }

              v102 = v101;
              v12 = COERCE_DOUBLE(static String._unconditionallyBridgeFromObjectiveC(_:)());
              v104 = v103;

              if (*&v168 == 1)
              {

LABEL_122:
                *&v216.a = v41;
                v216.b = v87;
                v216.c = v18;
                v143 = RBSymbolUpdateLayerDefaultColor();
                v126 = 1.0;
                if (v143)
                {
                  v144 = v143;
                  v145 = specialized Color.Resolved.init(failableCGColor:)(v144);
                  if (v147)
                  {

                    v130 = NAN;
                    v127 = 1.0;
                    v128 = 1.0;
                    v129 = 1.0;
                    v126 = 1.0;
                  }

                  else
                  {
                    v148 = v145;
                    v149 = *&v146;
                    v150 = a7;
                    v151 = *(&v146 + 1);
                    CGColorGetContentHeadroom();
                    v153 = v152;

                    v129 = v151;
                    a7 = v150;
                    v43 = a6;
                    v128 = v149;
                    v127 = *(&v148 + 1);
                    LODWORD(v126) = v148;
                    v130 = NAN;
                    if (v153 != 0.0)
                    {
                      v130 = v153;
                    }
                  }
                }

                else
                {
                  v130 = NAN;
                  v127 = 1.0;
                  v128 = 1.0;
                  v129 = 1.0;
                }
              }

              else
              {
                v207.a = v163;
                v207.b = v162;
                v207.c = v161;
                v207.d = v168;
                *&__dst.a = *&v207.a;
                *&__dst.c = *&v207.c;
                outlined init with copy of ResolvedMulticolorStyle(&v207, &v189);
                v122 = ResolvedMulticolorStyle.resolveHDR(name:)(*&v12, v104);
                v12 = v123;
                v125 = v124;

                *&v216.a = *&__dst.a;
                *&v216.c = *&__dst.c;
                outlined destroy of ResolvedMulticolorStyle(&v216);
                if ((v125 & 0x100000000) != 0)
                {
                  goto LABEL_122;
                }

                v127 = *(&v122 + 1);
                LODWORD(v126) = v122;
                v129 = *(&v12 + 1);
                v128 = *&v12;
                v130 = *&v125;
              }

              *&v216.a = __PAIR64__(LODWORD(v127), LODWORD(v126));
              *&v216.b = __PAIR64__(LODWORD(v129), LODWORD(v128));
              *&v216.c = v130;
              _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOi0_(&v216);
              v231 = v222;
              v232 = v223;
              v233 = v224;
              v227 = v218;
              v228 = v219;
              v229 = v220;
              v230 = v221;
              t2 = v216;
              v226 = v217;
              v44 = a4;
              v45 = a5;
              v71 = v171;
              goto LABEL_129;
            default:
              goto LABEL_65;
          }
        }

        else if (v95)
        {
          if (v95 == 5)
          {
            v99 = 0.5;
            v100 = 1;
          }

          else
          {
            if (v95 != 6)
            {
              goto LABEL_65;
            }

            v99 = 0.25;
            v100 = 2;
          }
        }

        else
        {
          v100 = 0;
          v99 = 1.0;
        }

        v222 = v240;
        v223 = v241;
        v224 = v242;
        v218 = v236;
        v219 = v237;
        v220 = v238;
        v221 = v239;
        v216 = t1;
        v217 = v235;
        v105 = _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOg(&v216);
        if (v105 == 8)
        {
          v109 = destructiveProjectEnumData for GraphicsContext.ResolvedShading(&v216);
          v110 = *(*v109 + 16);
          if (!v110)
          {
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:
            swift_once();
LABEL_35:
            v42 = dword_18DDD8B10[static SymbolRenderingMode.preferredIfEnabled];
            goto LABEL_36;
          }

          v111 = v110 - 1;
          if (v111 >= v100)
          {
            v111 = v100;
          }

          memmove(&__dst, (*v109 + 168 * v111 + 32), 0xA8uLL);
          v99 = 1.0;
        }

        else
        {
          if (v105 == 4)
          {
            v106 = destructiveProjectEnumData for GraphicsContext.ResolvedShading(&v216);
            v107 = v106;
            if (*(v106 + 85))
            {
              v195 = v240;
              v196 = v241;
              v197 = v242;
              v191 = v236;
              v192 = v237;
              v193 = v238;
              v194 = v239;
              v189 = t1;
              v190 = v235;
              v108 = destructiveProjectEnumData for GraphicsContext.ResolvedShading(&v189);
              outlined init with copy of _ShapeStyle_Pack.Style(v108, &v180);
LABEL_121:
              v137 = *v107;
              v138 = *(v107 + 16);
              v139 = *(v107 + 48);
              *&v189.tx = *(v107 + 32);
              v190 = v139;
              *&v189.a = v137;
              *&v189.c = v138;
              v140 = *(v107 + 64);
              v141 = *(v107 + 80);
              v142 = *(v107 + 96);
              *&v194 = *(v107 + 112);
              v192 = v141;
              v193 = v142;
              v191 = v140;
              _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOi3_(&v189);
              v213 = v195;
              v214 = v196;
              v215 = v197;
              v209 = v191;
              v210 = v192;
              v211 = v193;
              v212 = v194;
              *&v207.a = *&v189.a;
              *&v207.c = *&v189.c;
              v90 = *&v189.tx;
              v89 = v190;
              goto LABEL_63;
            }

            v165 = *(v106 + 8);
            v166 = *(v106 + 16);
            v164 = *v106;
            v115 = *(v106 + 12);
            v116 = *(v106 + 96);
            v117 = *(v106 + 104);
            if (v117 == 255)
            {
              v185 = v239;
              v186 = v240;
              v187 = v241;
              v188 = v242;
              v181 = v235;
              v182 = v236;
              v183 = v237;
              v184 = v238;
              v180 = t1;
              v131 = destructiveProjectEnumData for GraphicsContext.ResolvedShading(&v180);
              v195 = v240;
              v196 = v241;
              v197 = v242;
              v191 = v236;
              v192 = v237;
              v193 = v238;
              v194 = v239;
              v189 = t1;
              v190 = v235;
              v132 = destructiveProjectEnumData for GraphicsContext.ResolvedShading(&v189);
              outlined init with copy of _ShapeStyle_Pack.Style(v132, v179);
              outlined init with copy of _ShapeStyle_Pack.Style(v131, v179);
              if (one-time initialization token for normal != -1)
              {
                swift_once();
              }

              v120 = static GraphicsBlendMode.normal;
              v121 = byte_1ED52F818;
              outlined copy of GraphicsBlendMode(static GraphicsBlendMode.normal, byte_1ED52F818);
            }

            else
            {
              v185 = v239;
              v186 = v240;
              v187 = v241;
              v188 = v242;
              v181 = v235;
              v182 = v236;
              v183 = v237;
              v184 = v238;
              v180 = t1;
              v118 = destructiveProjectEnumData for GraphicsContext.ResolvedShading(&v180);
              v195 = v240;
              v196 = v241;
              v197 = v242;
              v191 = v236;
              v192 = v237;
              v193 = v238;
              v194 = v239;
              v189 = t1;
              v190 = v235;
              v119 = destructiveProjectEnumData for GraphicsContext.ResolvedShading(&v189);
              outlined init with copy of _ShapeStyle_Pack.Style(v119, v179);
              outlined init with copy of _ShapeStyle_Pack.Style(v118, v179);
              v120 = v116;
              v121 = v117;
            }

            outlined copy of GraphicsBlendMode?(v116, v117);
            if (one-time initialization token for normal != -1)
            {
              swift_once();
            }

            v133 = static GraphicsBlendMode.normal;
            *&v12 = byte_1ED52F818;
            outlined copy of GraphicsBlendMode(static GraphicsBlendMode.normal, byte_1ED52F818);
            outlined destroy of GraphicsContext.ResolvedShading(&t1);
            if (v121)
            {
              outlined consume of GraphicsBlendMode(v120, 1);
              if (LODWORD(v12))
              {
                outlined consume of GraphicsBlendMode(v133, 1);
                v134 = v120 == v133;
LABEL_118:
                v20 = a3;
                if (v134 && !*(*(v107 + 112) + 16))
                {
                  *&v12 = HIDWORD(v164);
                  outlined destroy of GraphicsContext.ResolvedShading(&t1);
                  *&v154 = *(v107 + 88) * v115;
                  v189.a = v164;
                  *&v189.b = __PAIR64__(v154, v165);
                  LODWORD(v189.c) = v166;
                  _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOi0_(&v189);
                  v71 = v171;
                  v44 = a4;
                  v45 = a5;
                  v231 = v195;
                  v232 = v196;
                  v233 = v197;
                  v227 = v191;
                  v228 = v192;
                  v229 = v193;
                  v230 = v194;
                  *&t2.a = *&v189.a;
                  *&t2.c = *&v189.c;
                  v114 = *&v189.tx;
                  v113 = v190;
LABEL_100:
                  *&t2.tx = v114;
                  v226 = v113;
LABEL_129:
                  if (*(*(v20 + 2) + 64) != 2)
                  {
                    RBColorFromLinear();
                  }

                  *&v216.a = v41;
                  v216.b = v87;
                  v216.c = v18;
                  RBSymbolUpdateLayerDraw();
                  p_t2 = &t2;
                  goto LABEL_64;
                }

                goto LABEL_121;
              }

              v135 = v133;
              v136 = 0;
            }

            else
            {
              if ((LOBYTE(v12) & 1) == 0)
              {
                outlined consume of GraphicsBlendMode(v120, 0);
                outlined consume of GraphicsBlendMode(v133, 0);
                v134 = v120 == v133;
                goto LABEL_118;
              }

              outlined consume of GraphicsBlendMode(v120, 0);
              v135 = v133;
              v136 = 1;
            }

            outlined consume of GraphicsBlendMode(v135, v136);
            v20 = a3;
            goto LABEL_121;
          }

          v204 = v240;
          v205 = v241;
          v206 = v242;
          v200 = v236;
          v201 = v237;
          v202 = v238;
          v203 = v239;
          __dst = t1;
          v199 = v235;
        }

        v98 = v98 * v99;
        v195 = v204;
        v196 = v205;
        v197 = v206;
        v191 = v200;
        v192 = v201;
        v193 = v202;
        v194 = v203;
        v189 = __dst;
        v190 = v199;
        v112 = _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOg(&v189);
        if (v112 == 1)
        {
          destructiveProjectEnumData for GraphicsContext.ResolvedShading(&v189);
          v231 = v204;
          v232 = v205;
          v233 = v206;
          v227 = v200;
          v228 = v201;
          v229 = v202;
          v230 = v203;
          *&t2.a = *&__dst.a;
          *&t2.c = *&__dst.c;
          v114 = *&__dst.tx;
          v113 = v199;
          goto LABEL_100;
        }

        if (v112 == 2)
        {
          destructiveProjectEnumData for GraphicsContext.ResolvedShading(&v189);
          if (*(*(v20 + 2) + 64) == 2)
          {
            RBColorToLinear();
          }

          *&v180.a = v41;
          v180.b = v87;
          v180.c = v18;
          RBSymbolUpdateLayerDraw();
          goto LABEL_65;
        }

        outlined init with copy of GraphicsContext.ResolvedShading(&__dst, &v180);
        v213 = v204;
        v214 = v205;
        v215 = v206;
        v209 = v200;
        v210 = v201;
        v211 = v202;
        v212 = v203;
        *&v207.a = *&__dst.a;
        *&v207.c = *&__dst.c;
        v90 = *&__dst.tx;
        v89 = v199;
LABEL_63:
        *&v207.tx = v90;
        v208 = v89;
        v91 = RBDrawingStateInit();
        *&v189.a = v41;
        v189.b = v87;
        v189.c = v18;
        RBSymbolUpdateLayerClip();
        *&v189.a = v175;
        *&v189.c = v177;
        v189.tx = v71;
        v189.ty = v40;
        RBDrawingStateSetCTM();
        v185 = v212;
        v186 = v213;
        v187 = v214;
        v181 = v208;
        v182 = v209;
        v183 = v210;
        v184 = v211;
        v180 = v207;
        v188 = v215;
        v92 = v98 * v20[12];
        v93 = *(v20 + 13);
        outlined init with copy of GraphicsContext.ResolvedShading(&v207, &v189);
        GraphicsContext.draw(shading:bounds:in:alpha:blendMode:)(&v180, v91, v93, v20, v44, v45, v43, a7, v92);
        v195 = v186;
        v196 = v187;
        v191 = v182;
        v192 = v183;
        v193 = v184;
        v194 = v185;
        v189 = v180;
        v197 = v188;
        v190 = v181;
        outlined destroy of GraphicsContext.ResolvedShading(&v189);
        RBDrawingStateDestroy();
        p_t2 = &v207;
LABEL_64:
        outlined destroy of GraphicsContext.ResolvedShading(p_t2);
LABEL_65:
        if (v17 == ++*&v18)
        {
          goto LABEL_58;
        }
      }
    }

    v53 = v8[3];
    t1.a = a;
    t1.b = b;
    t1.c = c;
    t1.d = d;
    t1.tx = v34;
    t1.ty = v35;
    CGAffineTransformTranslate(&t2, &t1, 0.0, v24);
    t1 = t2;
    CGAffineTransformScale(&t2, &t1, 1.0, -1.0);
    v54 = t2.tx;
    v55 = t2.ty;
    v176 = *&t2.c;
    v178 = *&t2.a;

    outlined copy of Image.Location?(v53);

    *&t1.c = v176;
    *&t1.a = v178;
    t1.tx = v54;
    t1.ty = v55;
    RBDrawingStateConcatCTM();
    v56 = RBDrawingStateInit();
    (*(*v36 + 88))();
    v57 = RBDrawingStateScaleCTM();
    v58 = v56;
    if ((v20 & 1) == 0)
    {
      if (*(*(a3 + 2) + 64) != 2)
      {
        RBColorFromLinear();
      }

      RBDrawingStateAddAlphaMultiplyFilter2();
      v57 = RBDrawingStateBeginLayer();
      v58 = v57;
    }

    (*(*v36 + 96))(v57);
    RBDrawingStateDrawDisplayList();
    swift_unknownObjectRelease();
    if (v58 != v56)
    {
      RBDrawingStateDrawLayer();
    }

    RBDrawingStateDestroy();

    outlined consume of Image.Location?(v53);

LABEL_134:
    RBDrawingStateDrawLayer();
    v21 = 2;
  }

  return v21 == 2;
}

void DrawableImageContents.displayList.getter()
{
  if (v0[5] || (v1 = [objc_allocWithZone(MEMORY[0x1E69C70A8]) init], objc_msgSend(v1, sel_setDefaultColorSpace_, 1), LODWORD(v2) = 1.0, v3 = objc_msgSend(v1, sel_beginCGContextWithAlpha_, v2), (*(*v0 + 120))(), objc_msgSend(v1, sel_endCGContext), v4 = objc_msgSend(v1, sel_moveContents), v1, v3, v0[5] = v4, swift_unknownObjectRelease(), v0[5]))
  {

    swift_unknownObjectRetain();
  }

  else
  {
    __break(1u);
  }
}

uint64_t ImageRenderer.__deallocating_deinit(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

id *ImageRendererHost.deinit()
{
  v1 = *v0;

  swift_unknownObjectRelease();
  (*(*(v1[10] - 8) + 8))(v0 + *(*v0 + 29));

  return v0;
}

uint64_t type metadata completion function for GroupElementsOfContent(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4[0] = *(a1 + 16);
  v4[1] = v1;
  result = type metadata accessor for GroupElementsOfContent.Storage(319, v4);
  if (v3 <= 0x3F)
  {
    *&v4[0] = *(result - 8) + 64;
    *(&v4[0] + 1) = MEMORY[0x1E69E7CB8] + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for GroupElementsOfContent.Storage(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t specialized static EnvironmentObject._makeProperty<A>(in:container:fieldOffset:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = *MEMORY[0x1E69E9840];
  v11 = Attribute.init<A>(body:value:flags:update:)();
  v12 = specialized static GraphHost.currentHost.getter();
  v13 = *(a3 + 16);
  swift_beginAccess();
  LODWORD(v13) = *(v13 + 16);
  v14 = AGCreateWeakAttribute();
  specialized StoreBox.init(host:environment:signal:)(v12, v13, v14, v24);

  v21 = v24[0];
  v22 = v24[1];
  v23 = v24[2];
  v16 = type metadata accessor for StoreBox(0, a4, a6, v15);
  swift_getWitnessTable(protocol conformance descriptor for StoreBox<A>, v16, v21, v22, v23);
  _DynamicPropertyBuffer.append<A>(_:fieldOffset:)(&v21, a2, v16, v17);
  if (AGSubgraphShouldRecordTree())
  {
    v19 = type metadata accessor for EnvironmentObject(0, a4, a6, v18);
    LODWORD(v21) = 2;
    static DynamicProperty.addTreeValueSlow<A>(_:as:in:fieldOffset:flags:)(v11, a4, a5, a2, &v21, v19, a4);
  }

  return (*(*(v16 - 8) + 8))(v24, v16);
}

uint64_t specialized StoreBox.init(host:environment:signal:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, unint64_t a3@<X2>, uint64_t a6@<X8>)
{
  v10 = HIDWORD(a3);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for SubscriptionLifetime(0, AssociatedTypeWitness, AssociatedConformanceWitness, v13);
  v14 = SubscriptionLifetime.__allocating_init()();
  type metadata accessor for AttributeInvalidatingSubscriber(0, AssociatedTypeWitness, AssociatedConformanceWitness, v15);
  result = specialized AttributeInvalidatingSubscriber.__allocating_init(host:attribute:)(a1, a3);
  *a6 = a2;
  *(a6 + 4) = a3;
  *(a6 + 8) = v10;
  *(a6 + 16) = result;
  *(a6 + 24) = v14;
  *(a6 + 32) = 0;
  *(a6 + 40) = 0;
  return result;
}

uint64_t initializeWithCopy for StoreBox(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;

  swift_unknownObjectRetain();
  return a1;
}

uint64_t destroy for StoreBox(void *a1)
{

  return swift_unknownObjectRelease();
}

uint64_t StoreBox.update(property:phase:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v49 = a1;
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v44 = &v41 - v8;
  v9 = *(v3 + 4);
  v10 = v3[3];
  v43 = v3[2];
  v47 = v10;
  v12 = v3[4];
  v11 = v3[5];
  Value = AGGraphGetValue();
  v15 = Value[1];
  v51[5] = *Value;
  v51[6] = v15;
  v16 = v14 & 1;
  v52 = v14 & 1;
  v46 = v5;
  v48 = v9;
  if (v11 && (v14 & 1) == 0)
  {
    v42 = v7;
    v17 = v12;
    v18 = v49;
    swift_unknownObjectRetain_n();

    swift_unknownObjectRelease();
    *v18 = v11;
    v19 = v11;
    goto LABEL_12;
  }

  EnvironmentObjectKey.init()();
  v51[0] = v6;
  v51[1] = v5;
  swift_getKeyPath();

  v20 = swift_readAtKeyPath();
  v19 = *v21;
  swift_unknownObjectRetain();
  v20(v51, 0);

  *v49 = v19;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (v11)
  {
    if (!v19)
    {
      goto LABEL_27;
    }

    if (v11 != v19)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (!v19)
  {
LABEL_9:
    v16 = 0;
    v52 = 0;
LABEL_10:
    if (!v19)
    {
      goto LABEL_27;
    }
  }

  v42 = v7;
  v17 = v12;
LABEL_12:
  if (one-time initialization token for v6 != -1)
  {
    swift_once();
  }

  v22 = static Semantics.v6;
  v12 = v17;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  v23 = swift_beginAccess();
  if (byte_1ED53C51C != 1)
  {
    if (static Semantics.forced < v22)
    {
      goto LABEL_18;
    }

LABEL_20:
    v27 = 0;
    goto LABEL_21;
  }

  v23 = dyld_program_sdk_at_least();
  if (v23)
  {
    goto LABEL_20;
  }

LABEL_18:
  v23 = static ObservableObject.hasDefaultPublisher.getter(v6, v46);
  v27 = v23 ^ 1;
LABEL_21:
  v28 = SubscriptionLifetime.isUninitialized.getter(v23, v24, v25, v26);
  if (!v11 || v28 || v19 != v11 || (v27 & 1) != 0)
  {
    v50 = v43;

    v29 = v44;
    dispatch thunk of ObservableObject.objectWillChange.getter();
    v30 = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v33 = type metadata accessor for AttributeInvalidatingSubscriber(0, v30, AssociatedConformanceWitness, v32);
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for AttributeInvalidatingSubscriber<A>, v33);
    v36 = v35;
    swift_getWitnessTable(protocol conformance descriptor for AttributeInvalidatingSubscriber<A>, v33, WitnessTable);
    SubscriptionLifetime.subscribe<A>(subscriber:to:)(&v50, v29, v33, v36);
    swift_unknownObjectRelease();
    (*(v42 + 8))(v29, v30);
  }

  else
  {
    swift_unknownObjectRelease();
    v19 = v11;
  }

LABEL_27:
  if (!AGGraphGetWeakValue())
  {

    LOBYTE(v38) = 0;
    v39 = 0;
    if (!v16)
    {
      goto LABEL_32;
    }

LABEL_31:
    v4[4] = ++v12;
    v39 = v38 | v16;
    goto LABEL_32;
  }

  v38 = v37;

  if ((v38 | v16))
  {
    goto LABEL_31;
  }

  v39 = 0;
LABEL_32:
  v49[1] = v12;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v4[5] = v19;
  return v39 & 1;
}

uint64_t type metadata completion function for AutomaticStyleOverrideModifier(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t View.transaction<A>(_:body:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v30 = a6;
  v25[1] = a4;
  v26 = a3;
  v27 = a1;
  v28 = a2;
  v29 = a7;
  v8 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25[0] = v11;
  v14 = type metadata accessor for CustomModifier(0, v11, v12, v13);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v25 - v16;
  v19 = type metadata accessor for _PushPopTransactionModifier(0, v14, &protocol witness table for CustomModifier<A, B>, v18);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = v25 - v21;
  PlaceholderContentView.init()();
  v26();
  (*(v8 + 32))(v17, v10, a5);
  v23 = ViewModifier.transaction(_:)(v27, v28, v14, &protocol witness table for CustomModifier<A, B>, v22);
  (*(v15 + 8))(v17, v14, v23);
  View.modifier<A>(_:)();
  return (*(v20 + 8))(v22, v19);
}

uint64_t View.id<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, v20, a2, v16);
  (*(v12 + 16))(v14, a1, a3);
  return IDView.init(_:id:)(v18, v14, a2, a3, a4, a5, a6);
}

uint64_t IDView.init(_:id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a3 - 8) + 32))(a7, a1);
  v15[0] = a3;
  v15[1] = a4;
  v15[2] = a5;
  v15[3] = a6;
  v13 = type metadata accessor for IDView(0, v15);
  return (*(*(a4 - 8) + 32))(a7 + *(v13 + 52), a2, a4);
}

uint64_t ZStack.init(alignment:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v5[0] = a1;
  v5[1] = a2;
  return _VariadicView.Tree.init(_:content:)(v5, partial apply for closure #1 in ZStack.init(alignment:content:), &type metadata for _ZStackLayout, a3, &protocol witness table for _ZStackLayout, a4);
}

uint64_t closure #1 in ZStack.init(alignment:content:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - v9;
  v11(v8);
  static ViewBuilder.buildExpression<A>(_:)();
  v12 = *(v4 + 8);
  v12(v6, a3);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v12)(v10, a3);
}

double ViewModifier.transaction(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = *(a3 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, v5, v12);
  (*(v11 + 32))(a5, v14, a3);
  v16 = (a5 + *(type metadata accessor for _PushPopTransactionModifier(0, a3, a4, v15) + 36));
  *v16 = a1;
  v16[1] = a2;

  return result;
}

uint64_t initializeWithCopy for _GeometryActionModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 24);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = v3;

  return a1;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance EnvironmentalViewChild<A>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for EnvironmentalViewChild<A>, a1);

  return static AsyncAttribute.flags.getter();
}

double MutableBox.value.setter(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 40))(v1 + v4, a1);
  swift_endAccess();
  return result;
}

void storeEnumTagSinglePayload for SubscriptionLifetime.Connection(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(type metadata accessor for CombineIdentifier() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a4 + 24) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  v13 = *(v10 + 80);
  if (v11 <= v9)
  {
    v14 = *(v8 + 84);
  }

  else
  {
    v14 = *(v10 + 84);
  }

  v15 = ((*(v10 + 64) + ((v13 + ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v13) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v14 >= a3)
  {
    v18 = 0;
    v19 = a2 - v14;
    if (a2 <= v14)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (((*(v10 + 64) + ((v13 + ((v12 + 7) & 0xFFFFFFF8) + 8) & ~v13) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = a3 - v14 + 1;
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

    v19 = a2 - v14;
    if (a2 <= v14)
    {
LABEL_17:
      if (v18 > 1)
      {
        if (v18 != 2)
        {
          *(a1 + v15) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_33;
        }

        *(a1 + v15) = 0;
      }

      else if (v18)
      {
        *(a1 + v15) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return;
      }

LABEL_33:
      if (v9 >= v11)
      {
        v23 = *(v8 + 56);

        v23(a1, a2);
      }

      else
      {
        v22 = *(v10 + 56);

        v22((((a1 + v12 + 7) & 0xFFFFFFFFFFFFFFF8) + v13 + 8) & ~v13, a2, v11);
      }

      return;
    }
  }

  if (((*(v10 + 64) + ((v13 + ((v12 + 7) & 0xFFFFFFF8) + 8) & ~v13) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v20 = v19;
  }

  else
  {
    v20 = 1;
  }

  if (((*(v10 + 64) + ((v13 + ((v12 + 7) & 0xFFFFFFF8) + 8) & ~v13) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v21 = ~v14 + a2;
    bzero(a1, v15);
    *a1 = v21;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      *(a1 + v15) = v20;
    }

    else
    {
      *(a1 + v15) = v20;
    }
  }

  else if (v18)
  {
    *(a1 + v15) = v20;
  }
}

uint64_t getEnumTagSinglePayload for SubscriptionLifetime.Connection(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(type metadata accessor for CombineIdentifier() - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a3 + 24) - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v7)
  {
    v12 = *(v6 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v12 < a2)
  {
    v13 = ((*(v8 + 64) + ((v11 + ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v14 = v13 & 0xFFFFFFF8;
    if ((v13 & 0xFFFFFFF8) != 0)
    {
      v15 = 2;
    }

    else
    {
      v15 = a2 - v12 + 1;
    }

    if (v15 >= 0x10000)
    {
      v16 = 4;
    }

    else
    {
      v16 = 2;
    }

    if (v15 < 0x100)
    {
      v16 = 1;
    }

    v17 = v15 >= 2 ? v16 : 0;
    if (v17 > 1)
    {
      if (v17 == 2)
      {
        v18 = *(a1 + v13);
        if (v18)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v18 = *(a1 + v13);
        if (v18)
        {
          goto LABEL_20;
        }
      }
    }

    else if (v17)
    {
      v18 = *(a1 + v13);
      if (v18)
      {
LABEL_20:
        v19 = v18 - 1;
        if (v14)
        {
          v19 = 0;
          LODWORD(v14) = *a1;
        }

        return v12 + (v14 | v19) + 1;
      }
    }

    if (!v12)
    {
      return 0;
    }
  }

  if (v7 >= v9)
  {
    v22 = *(v6 + 48);

    return v22(a1);
  }

  else
  {
    v21 = *(v8 + 48);

    return v21((((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8) + v11 + 8) & ~v11, v9);
  }
}

void *protocol witness for static View._makeView(view:inputs:) in conformance Color@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
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
  return _s7SwiftUI17EnvironmentalViewPAAE05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyxG_AA01_D6InputsVtFZAA5ColorV_Tt2B5(v3, v7, a3);
}

void lazy protocol witness table accessor for type EnvironmentalViewChild<Color> and conformance EnvironmentalViewChild<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentalViewChild<Color> and conformance EnvironmentalViewChild<A>)
  {
    type metadata accessor for _TraitWritingModifier<TransitionTraitKey>(255, &lazy cache variable for type metadata for EnvironmentalViewChild<Color>, &type metadata for Color, &protocol witness table for Color, type metadata accessor for EnvironmentalViewChild);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentalViewChild<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentalViewChild<Color> and conformance EnvironmentalViewChild<A>);
  }
}

unsigned int *_s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA9ColorViewV_Tt1B5(unsigned int *result, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 36) & 1) == 0)
  {
    v2 = *result;
    v3 = *(a2 + 8);
    v4 = *(a2 + 24);
    v5 = *(a2 + 28);
    v6 = *(a2 + 16);
    v7 = result;
    swift_beginAccess();
    v8 = *(v6 + 16);
    v10[0] = v2;
    v10[1] = v8;
    v10[2] = v4;
    v10[3] = v3;
    v10[4] = v5;
    v13 = 0;
    v12 = 0;
    v11 = 0;
    v14 = 1;
    v15 = 0;
    v16 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for AnimatableAttribute<VariableBlurStyle>(0, &lazy cache variable for type metadata for AnimatableAttribute<ColorView>, lazy protocol witness table accessor for type ColorView and conformance ColorView, &type metadata for ColorView);
    lazy protocol witness table accessor for type AnimatableAttribute<GlassEffectShapeModifier> and conformance AnimatableAttribute<A>(&lazy protocol witness table cache variable for type AnimatableAttribute<ColorView> and conformance AnimatableAttribute<A>, &lazy cache variable for type metadata for AnimatableAttribute<ColorView>, lazy protocol witness table accessor for type ColorView and conformance ColorView, &type metadata for ColorView);
    v9 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<VariableBlurStyle>(v10, &lazy cache variable for type metadata for AnimatableAttribute<ColorView>, lazy protocol witness table accessor for type ColorView and conformance ColorView, &type metadata for ColorView);
    *v7 = v9;
    AGGraphGetFlags();
    return AGGraphSetFlags();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PlatformArchivedDisplayList(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

void *_s7SwiftUI17EnvironmentalViewPAAE05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyxG_AA01_D6InputsVtFZAA5ColorV_Tt2B5@<X0>(unsigned int a1@<W0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 2);
  swift_beginAccess();
  v7 = *(v6 + 16);
  type metadata accessor for PropertyList.Tracker();
  v8 = swift_allocObject();
  type metadata accessor for [GlassContainer.Effect](0, &lazy cache variable for type metadata for AtomicBuffer<TrackerData>, &type metadata for TrackerData, type metadata accessor for AtomicBuffer);
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E7CC8];
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = v10;
  v11 = MEMORY[0x1E69E7CC0];
  *(v9 + 40) = v10;
  *(v9 + 48) = v11;
  *(v9 + 56) = 0;
  *(v8 + 16) = v9;
  *&v28[0] = __PAIR64__(v7, a1);
  *(&v28[0] + 1) = v8;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for _TraitWritingModifier<TransitionTraitKey>(0, &lazy cache variable for type metadata for EnvironmentalViewChild<Color>, &type metadata for Color, &protocol witness table for Color, type metadata accessor for EnvironmentalViewChild);
  lazy protocol witness table accessor for type EnvironmentalViewChild<Color> and conformance EnvironmentalViewChild<A>();

  v12 = Attribute.init<A>(body:value:flags:update:)();

  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v14 = a2[3];
  v24 = a2[2];
  v25 = v14;
  v26 = a2[4];
  v15 = *(a2 + 20);
  v16 = a2[1];
  v22 = *a2;
  v23 = v16;
  v17 = v24;
  v27 = v15;
  LODWORD(v24) = 0;
  v29 = v15;
  v28[3] = v14;
  v28[4] = v26;
  v28[0] = v22;
  v28[1] = v16;
  v28[2] = v24;
  v30[1] = v16;
  v30[2] = v24;
  v30[0] = v22;
  v19 = v12;
  outlined init with copy of _ViewInputs(a2, v20);
  outlined init with copy of _ViewInputs(v28, v20);
  _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA9ColorViewV_Tt1B5(&v19, v30);
  _s7SwiftUI16RendererLeafViewPAAE04makedE04view6inputsAA01_E7OutputsVAA11_GraphValueVyxG_AA01_E6InputsVtFZAA05ColorE0V_Tt2B5(v19, v28, a3);
  outlined destroy of _ViewInputs(v28);
  LODWORD(v24) = v17;
  if (ShouldRecordTree)
  {
    _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v22);
    AGSubgraphEndTreeElement();
  }

  v20[2] = v24;
  v20[3] = v25;
  v20[4] = v26;
  v21 = v27;
  v20[0] = v22;
  v20[1] = v23;
  return outlined destroy of _ViewInputs(v20);
}

unint64_t _s7SwiftUI16RendererLeafViewPAAE04makedE04view6inputsAA01_E7OutputsVAA11_GraphValueVyxG_AA01_E6InputsVtFZAA05ColorE0V_Tt2B5@<X0>(unsigned int a1@<W0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v46 = *MEMORY[0x1E69E9840];
  v37 = MEMORY[0x1E69E7CC0];
  v6 = *MEMORY[0x1E698D3F8];
  LODWORD(v38) = 0;
  HIDWORD(v38) = *MEMORY[0x1E698D3F8];
  v7 = a2[6];
  if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v7))
  {
    v36 = a3;
    v8 = ++lastIdentity;
    v9 = *a2;
    if (*(a2 + 37))
    {
      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v40);
      result = AGWeakAttributeGetAttribute();
      if (result == v6)
      {
        __break(1u);
        return result;
      }

      v39[0] = v8;
      v34 = Attribute<A>.subscript.modify(&v40, result);
      v35 = _DisplayList_StableIdentityScope.pushIdentity(_:)(v39);
      (v34)(&v40, 0, v35);
    }

    v10 = *(a2 + 3);
    v42 = *(a2 + 2);
    v43 = v10;
    v44 = *(a2 + 4);
    v45 = *(a2 + 20);
    v11 = *(a2 + 1);
    v40 = *a2;
    v41 = v11;
    swift_beginAccess();
    v12 = CachedEnvironment.animatedPosition(for:)(&v40);
    v13 = *(a2 + 3);
    v42 = *(a2 + 2);
    v43 = v13;
    v44 = *(a2 + 4);
    v45 = *(a2 + 20);
    v14 = *(a2 + 1);
    v40 = *a2;
    v41 = v14;
    CachedEnvironment.animatedSize(for:)(&v40);
    swift_endAccess();
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v16 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v9, v40);
    if (v16)
    {
      v17 = *(v16 + 72);
    }

    else
    {
      v17 = 0;
    }

    v18 = *(a2 + 17);
    *&v40 = __PAIR64__(a1, v8);
    *(&v40 + 1) = __PAIR64__(OffsetAttribute2, v12);
    LODWORD(v41) = v18;
    BYTE4(v41) = v17;
    WORD3(v41) = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ContentResponderPathDataRule<ColorView>(0, &lazy cache variable for type metadata for LeafDisplayList<ColorView>, &type metadata for ColorView, &protocol witness table for ColorView, type metadata accessor for LeafDisplayList);
    lazy protocol witness table accessor for type LeafDisplayList<ColorView> and conformance LeafDisplayList<A>();
    v19 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v40) = 0;
    PreferencesOutputs.subscript.setter(v19, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    a3 = v36;
  }

  if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA014ViewRespondersI0V_TtB5Tf4dn_n(v7))
  {
    v20 = *(a2 + 3);
    v21 = *(a2 + 4);
    v22 = *(a2 + 1);
    v42 = *(a2 + 2);
    v43 = v20;
    v44 = v21;
    v45 = *(a2 + 20);
    v40 = *a2;
    v41 = v22;
    swift_beginAccess();
    v23 = CachedEnvironment.animatedSize(for:)(&v40);
    v24 = *(a2 + 3);
    v42 = *(a2 + 2);
    v43 = v24;
    v44 = *(a2 + 4);
    v45 = *(a2 + 20);
    v25 = *(a2 + 1);
    v40 = *a2;
    v41 = v25;
    v26 = CachedEnvironment.animatedPosition(for:)(&v40);
    swift_endAccess();
    v27 = *(a2 + 15);
    *&v40 = __PAIR64__(v23, a1);
    *(&v40 + 1) = __PAIR64__(v27, v26);
    *&v41 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for [ViewResponder](0);
    type metadata accessor for ContentResponderPathDataRule<ColorView>(0, &lazy cache variable for type metadata for LeafResponderFilter<ColorView>, &type metadata for ColorView, &protocol witness table for ColorView, type metadata accessor for LeafResponderFilter);
    lazy protocol witness table accessor for type LeafResponderFilter<ColorView> and conformance LeafResponderFilter<A>();
    v28 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v40) = 0;
    PreferencesOutputs.subscript.setter(v28, &type metadata for ViewRespondersKey, &protocol witness table for ViewRespondersKey);
  }

  result = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA20ContentShapePathDataV_TtB5Tf4dn_n(v7);
  if (result)
  {
    v30 = AGGraphCreateOffsetAttribute2();
    *&v40 = *(a2 + 60);
    *(&v40 + 1) = __PAIR64__(a1, v30);
    LODWORD(v41) = v6;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ContentResponderPathDataRule<ColorView>(0, &lazy cache variable for type metadata for ContentResponderPathDataRule<ColorView>, &type metadata for ColorView, &protocol witness table for ColorView, type metadata accessor for ContentResponderPathDataRule);
    lazy protocol witness table accessor for type ContentResponderPathDataRule<ColorView> and conformance ContentResponderPathDataRule<A>();
    v31 = Attribute.init<A>(body:value:flags:update:)();
    *&v40 = v7;
    result = PreferenceKeys._index(of:)(&type metadata for ContentShapePathData);
    v32 = *(v7 + 16);
    if (result != v32)
    {
      if (result >= v32)
      {
        __break(1u);
      }

      if (*(v7 + 16 * result + 32) == &type metadata for ContentShapePathData)
      {
        LODWORD(v40) = v31;
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        _s7SwiftUI20ContentShapePathDataVSgMaTm_0(0, &lazy cache variable for type metadata for ContentShapePathData?, MEMORY[0x1E69E6720]);
        _s7SwiftUI20ContentShapePathDataVSgMaTm_0(0, &lazy cache variable for type metadata for ToOptional<ContentShapePathData>, type metadata accessor for ToOptional);
        lazy protocol witness table accessor for type ToOptional<ContentShapePathData> and conformance ToOptional<A>();
        v33 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v40) = 0;
        result = PreferencesOutputs.subscript.setter(v33, &type metadata for ContentShapePathData, &protocol witness table for ContentShapePathData);
      }
    }
  }

  *a3 = v37;
  a3[1] = v38;
  return result;
}

void type metadata accessor for ContentResponderPathDataRule<ColorView>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void lazy protocol witness table accessor for type LeafDisplayList<ColorView> and conformance LeafDisplayList<A>()
{
  if (!lazy protocol witness table cache variable for type LeafDisplayList<ColorView> and conformance LeafDisplayList<A>)
  {
    type metadata accessor for ContentResponderPathDataRule<ColorView>(255, &lazy cache variable for type metadata for LeafDisplayList<ColorView>, &type metadata for ColorView, &protocol witness table for ColorView, type metadata accessor for LeafDisplayList);
    swift_getWitnessTable(protocol conformance descriptor for LeafDisplayList<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type LeafDisplayList<ColorView> and conformance LeafDisplayList<A>);
  }
}

void lazy protocol witness table accessor for type LeafResponderFilter<ColorView> and conformance LeafResponderFilter<A>()
{
  if (!lazy protocol witness table cache variable for type LeafResponderFilter<ColorView> and conformance LeafResponderFilter<A>)
  {
    type metadata accessor for ContentResponderPathDataRule<ColorView>(255, &lazy cache variable for type metadata for LeafResponderFilter<ColorView>, &type metadata for ColorView, &protocol witness table for ColorView, type metadata accessor for LeafResponderFilter);
    swift_getWitnessTable(protocol conformance descriptor for LeafResponderFilter<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type LeafResponderFilter<ColorView> and conformance LeafResponderFilter<A>);
  }
}

uint64_t static LeafDisplayList.flags.getter(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 32))())
  {
    return 8;
  }

  type metadata accessor for AGAttributeTypeFlags(0);
  lazy protocol witness table accessor for type AGAttributeTypeFlags and conformance AGAttributeTypeFlags();
  lazy protocol witness table accessor for type UInt32 and conformance UInt32();
  OptionSet<>.init()();
  return v3;
}

uint64_t sub_18D19C1D4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t *initializeWithCopy for AccessibilityCustomAttributes.Value(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v11 = *a2;
        v10 = a2[1];
        outlined copy of Data._Representation(v11, v10);
        *a1 = v11;
        a1[1] = v10;
      }

      else
      {
        v6 = a2[1];
        *a1 = *a2;
        a1[1] = v6;
      }

      goto LABEL_13;
    }

LABEL_9:
    v8 = *a2;
    *a1 = *a2;
    v9 = v8;
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload > 5)
  {
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload == 4)
  {
    v7 = type metadata accessor for Date();
  }

  else
  {
    v7 = type metadata accessor for URL();
  }

  (*(*(v7 - 8) + 16))(a1, a2, v7);
LABEL_13:
  swift_storeEnumTagMultiPayload();
  return a1;
}

void type metadata accessor for AccessibilityCustomAttributes.Value?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for AccessibilityCustomAttributes.Value(uint64_t a1)
{
  result = type metadata singleton initialization cache for AccessibilityCustomAttributes.Value;
  if (!type metadata singleton initialization cache for AccessibilityCustomAttributes.Value)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_7SwiftUI29AccessibilityCustomAttributesV5ValueOTt0g5Tf4g_n(uint64_t a1)
{
  type metadata accessor for (String, AccessibilityCustomAttributes.Value)(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(a1 + 16);
  if (v7)
  {
    type metadata accessor for _DictionaryStorage<String, [String : CGFloat]>(0, &lazy cache variable for type metadata for _DictionaryStorage<String, AccessibilityCustomAttributes.Value>, type metadata accessor for AccessibilityCustomAttributes.Value);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      outlined init with copy of (GlassContainer.Entry.StableID, SeedValue<GlassContainer.EntryState>)(v10, v6, type metadata accessor for (String, AccessibilityCustomAttributes.Value));
      v12 = *v6;
      v13 = v6[1];
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for AccessibilityCustomAttributes.Value(0);
      result = outlined init with take of AccessibilityCustomAttributes.Value(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

uint64_t AccessibilityCustomAttributes.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for AccessibilityCustomAttributes.Value?(0, &lazy cache variable for type metadata for AccessibilityCustomAttributes.Value?, type metadata accessor for AccessibilityCustomAttributes.Value, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - v10;
  v12 = type metadata accessor for AccessibilityCustomAttributes.Value(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AccessibilityCustomAttributes.Value?(a1, v11, &lazy cache variable for type metadata for AccessibilityCustomAttributes.Value?, type metadata accessor for AccessibilityCustomAttributes.Value);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    v16 = MEMORY[0x1E69E6720];
    _sypSgWOhTm_2(v11, &lazy cache variable for type metadata for AccessibilityCustomAttributes.Value?, type metadata accessor for AccessibilityCustomAttributes.Value, MEMORY[0x1E69E6720], type metadata accessor for AccessibilityCustomAttributes.Value?);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, a3, v8);

    _sypSgWOhTm_2(a1, &lazy cache variable for type metadata for AccessibilityCustomAttributes.Value?, type metadata accessor for AccessibilityCustomAttributes.Value, v16, type metadata accessor for AccessibilityCustomAttributes.Value?);
    return _sypSgWOhTm_2(v8, &lazy cache variable for type metadata for AccessibilityCustomAttributes.Value?, type metadata accessor for AccessibilityCustomAttributes.Value, v16, type metadata accessor for AccessibilityCustomAttributes.Value?);
  }

  else
  {
    outlined init with take of AccessibilityCustomAttributes.Value(v11, v15, type metadata accessor for AccessibilityCustomAttributes.Value);
    outlined init with copy of AccessibilityCustomAttributes.Value(v15, v8, type metadata accessor for AccessibilityCustomAttributes.Value);
    (*(v13 + 56))(v8, 0, 1, v12);
    specialized Dictionary.subscript.setter(v8, a2, a3);
    _sypSgWOhTm_2(a1, &lazy cache variable for type metadata for AccessibilityCustomAttributes.Value?, type metadata accessor for AccessibilityCustomAttributes.Value, MEMORY[0x1E69E6720], type metadata accessor for AccessibilityCustomAttributes.Value?);
    return outlined destroy of AccessibilityCustomAttributes.Value(v15, type metadata accessor for AccessibilityCustomAttributes.Value);
  }
}

uint64_t outlined init with copy of AccessibilityCustomAttributes.Value?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  type metadata accessor for AccessibilityCustomAttributes.Value?(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for AccessibilityCustomAttributes.Value(0);
      outlined assign with take of (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for AccessibilityCustomAttributes.Value);
      return;
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    specialized _NativeDictionary.copy()();
    goto LABEL_7;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, a4 & 1);
  v21 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  if ((v16 & 1) != (v22 & 1))
  {
LABEL_15:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v12 = v21;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  specialized _NativeDictionary._insert(at:key:value:)(v12, a2, a3, a1, v18);
}

{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 16 * v11);
    *v22 = a1;
    v22[1] = a2;
  }

  else
  {

    specialized _NativeDictionary._insert(at:key:value:)(v11, a3, a1, a2, v21);
  }
}

{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = *(v21 + 56);
    v23 = *(v22 + 8 * v11);
    *(v22 + 8 * v11) = a1;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v21);
  }
}

{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3 & 0xFFFFFFFF000000FFLL);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3 & 0xFFFFFFFF000000FFLL);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3 & 0xFFFFFFFF000000FFLL, a1, v21);

    outlined copy of Material.ID(a2, a3);
  }
}

{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 16 * v11);
    *v22 = a1;
    v22[1] = a2;
  }

  else
  {

    specialized _NativeDictionary._insert(at:key:value:)(v11, a3, a1, a2, v21);
  }
}

{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(*(v21 + 56) + 8 * v11) = a1;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v21);
  }
}

{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  else
  {

    specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v21);
  }
}

{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      type metadata accessor for _NSRange(0);
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  else
  {

    specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v21);
  }
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for AccessibilityCustomAttributes.Value(0);
  result = outlined init with take of ResolvableTextSegmentAttribute.Value(a4, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for AccessibilityCustomAttributes.Value);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

void destroy for AccessibilityCustomAttributes.Value(void **a1, uint64_t a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v4 = *a1;
          v5 = a1[1];

          outlined consume of Data._Representation(v4, v5);
        }
      }

      else
      {
      }

      return;
    }

    goto LABEL_14;
  }

  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload != 6 && EnumCaseMultiPayload != 7)
    {
      return;
    }

LABEL_14:
    v7 = *a1;

    return;
  }

  if (EnumCaseMultiPayload == 4)
  {
    v6 = type metadata accessor for Date();
  }

  else
  {
    v6 = type metadata accessor for URL();
  }

  v8 = *(*(v6 - 8) + 8);

  v8(a1, v6);
}

uint64_t Optional<A>.merge(with:)(void (*a1)(uint64_t, char *, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v38 = a3;
  v6 = a1;
  v7 = *(a2 + 16);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v37 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v36 = &v33 - v11;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13.n128_f64[0] = MEMORY[0x1EEE9AC00](TupleTypeMetadata2 - 8);
  v15 = &v33 - v14;
  v17 = *(v16 + 56);
  v18 = *(a2 - 8);
  v19 = *(v18 + 16);
  v40 = v4;
  v19(&v33 - v14, v4, a2, v13);
  v35 = v6;
  (v19)(&v15[v17], v6, a2);
  v39 = v8;
  v20 = *(v8 + 48);
  LODWORD(v6) = v20(v15, 1, v7);
  v21 = v20(&v15[v17], 1, v7);
  if (v6 == 1)
  {
    if (v21 == 1)
    {
      v22 = 0;
    }

    else
    {
      v23 = *(v18 + 8);
      v24 = v40;
      v23(v40, a2);
      (v19)(v24, v35, a2);
      v23(&v15[v17], a2);
      v22 = 1;
    }
  }

  else if (v21 == 1)
  {
    (*(v39 + 8))(v15, v7);
    v22 = 0;
  }

  else
  {
    v34 = *(v18 + 8);
    v25 = v40;
    v34(v40, a2);
    v26 = v39;
    v27 = *(v39 + 32);
    v35 = v27;
    v28 = v36;
    v27(v36, v15, v7);
    v29 = &v15[v17];
    v30 = v37;
    v27(v37, v29, v7);
    v31 = *(v26 + 56);
    v31(v25, 1, 1, v7);
    v34(v25, a2);
    v22 = (*(v38 + 8))(v30, v7);
    (*(v26 + 8))(v30, v7);
    v35(v25, v28, v7);
    v31(v25, 0, 1, v7);
  }

  return v22 & 1;
}

uint64_t type metadata completion function for AccessibilityCustomAttributes.Value(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for URL();
    if (v3 <= 0x3F)
    {
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

uint64_t AccessibilityCustomAttributes.init(_:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  type metadata accessor for AccessibilityCustomAttributes.Value?(0, &lazy cache variable for type metadata for AccessibilityCustomAttributes.Value?, type metadata accessor for AccessibilityCustomAttributes.Value, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v13 - v9;
  *a4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_7SwiftUI29AccessibilityCustomAttributesV5ValueOTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  outlined init with copy of AccessibilityCustomAttributes.Value(a3, v10, type metadata accessor for AccessibilityCustomAttributes.Value);
  v11 = type metadata accessor for AccessibilityCustomAttributes.Value(0);
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  AccessibilityCustomAttributes.subscript.setter(v10, a1, a2);
  return outlined destroy of AccessibilityCustomAttributes.Value(a3, type metadata accessor for AccessibilityCustomAttributes.Value);
}

void type metadata accessor for (String, AccessibilityCustomAttributes.Value)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (String, AccessibilityCustomAttributes.Value))
  {
    type metadata accessor for AccessibilityCustomAttributes.Value(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (String, AccessibilityCustomAttributes.Value));
    }
  }
}

uint64_t outlined init with copy of AccessibilityCustomAttributes.Value(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of AccessibilityCustomAttributes.Value(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for AccessibilityCustomAttributes.Value?(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AccessibilityCustomAttributes.Value(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v14 + 48))(a1, 1, v11) == 1)
  {
    _s7SwiftUI11DisplayListV10ArchiveIDsVSgWOhTm_0(a1, type metadata accessor for AccessibilityCustomAttributes.Value?);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, a3, v9);

    return _s7SwiftUI11DisplayListV10ArchiveIDsVSgWOhTm_0(v9, type metadata accessor for AccessibilityCustomAttributes.Value?);
  }

  else
  {
    outlined init with take of (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)(a1, v13, type metadata accessor for AccessibilityCustomAttributes.Value);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  return result;
}

{
  v4 = v3;
  if (*(a1 + 24))
  {
    outlined init with take of AnyTrackedValue(a1, v16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v16, a2, a3, isUniquelyReferenced_nonNull_native);
    *v3 = v14;
  }

  else
  {
    outlined destroy of _DisplayList_AnyEffectAnimator?(a1, &lazy cache variable for type metadata for EventType?, &lazy cache variable for type metadata for EventType, &protocol descriptor for EventType);
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v3;
      v15 = *v4;
      if (!v12)
      {
        specialized _NativeDictionary.copy()();
        v13 = v15;
      }

      outlined init with take of AnyTrackedValue((*(v13 + 56) + 40 * v11), v16);
      specialized _NativeDictionary._delete(at:)(v11, v13);
      *v4 = v13;
    }

    else
    {
      v17 = 0;
      memset(v16, 0, sizeof(v16));
    }

    return outlined destroy of _DisplayList_AnyEffectAnimator?(v16, &lazy cache variable for type metadata for EventType?, &lazy cache variable for type metadata for EventType, &protocol descriptor for EventType);
  }

  return result;
}

void type metadata accessor for _DictionaryStorage<Int, LocalizedStringKey.FormatArgument>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    v6 = type metadata accessor for _DictionaryStorage();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t outlined destroy of AccessibilityCustomAttributes.Value(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double *static Animation.timingCurve(_:_:_:_:duration:)(double a1, double a2, double a3, double a4, double a5)
{
  v6 = a1 * 3.0;
  v7 = (a3 - a1) * 3.0 - a1 * 3.0;
  v8 = 1.0 - a1 * 3.0 - v7;
  v9 = a2 * 3.0;
  v10 = (a4 - a2) * 3.0;
  v11 = v10 - v9;
  v12 = 1.0 - v9 - (v10 - v9);
  type metadata accessor for InternalAnimationBox<BezierAnimation>(0);
  result = swift_allocObject();
  result[2] = a5;
  result[3] = v8;
  result[4] = v7;
  result[5] = v6;
  result[6] = v12;
  result[7] = v11;
  result[8] = v9;
  return result;
}

uint64_t Animation.delay(_:)(uint64_t a1, double a2)
{
  v5 = a2;
  v2 = *(*a1 + 144);
  lazy protocol witness table accessor for type DelayAnimation and conformance DelayAnimation();
  return v2(&v5, &type metadata for DelayAnimation, v3);
}

void lazy protocol witness table accessor for type DelayAnimation and conformance DelayAnimation()
{
  if (!lazy protocol witness table cache variable for type DelayAnimation and conformance DelayAnimation)
  {
    swift_getWitnessTable(protocol conformance descriptor for DelayAnimation, &type metadata for DelayAnimation, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type DelayAnimation and conformance DelayAnimation);
  }
}

{
  if (!lazy protocol witness table cache variable for type DelayAnimation and conformance DelayAnimation)
  {
    swift_getWitnessTable(protocol conformance descriptor for DelayAnimation, &type metadata for DelayAnimation, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type DelayAnimation and conformance DelayAnimation);
  }
}

{
  if (!lazy protocol witness table cache variable for type DelayAnimation and conformance DelayAnimation)
  {
    swift_getWitnessTable(protocol conformance descriptor for DelayAnimation, &type metadata for DelayAnimation, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type DelayAnimation and conformance DelayAnimation);
  }
}

void type metadata accessor for InternalAnimationBox<SpringAnimation>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for InternalAnimationBox<SpringAnimation>)
  {
    lazy protocol witness table accessor for type SpringAnimation and conformance SpringAnimation();
    v4 = type metadata accessor for InternalAnimationBox(a1, &type metadata for SpringAnimation, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for InternalAnimationBox<SpringAnimation>);
    }
  }
}

double *static Animation.interpolatingSpring(mass:stiffness:damping:initialVelocity:)(double a1, double a2, double a3, double a4)
{
  type metadata accessor for InternalAnimationBox<SpringAnimation>(0);
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  return result;
}

uint64_t View.background<A>(alignment:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(double)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v24[2] = a6;
  v24[0] = a7;
  v24[1] = a4;
  v11 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for _BackgroundModifier(0, v15, v16, v14);
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = v24 - v20;
  a3(v19);
  (*(v11 + 32))(v21, v13, a5);
  v22 = &v21[*(v17 + 36)];
  *v22 = a1;
  *(v22 + 1) = a2;
  View.modifier<A>(_:)();
  return (*(v18 + 8))(v21, v17);
}

void lazy protocol witness table accessor for type SpringAnimation and conformance SpringAnimation()
{
  if (!lazy protocol witness table cache variable for type SpringAnimation and conformance SpringAnimation)
  {
    swift_getWitnessTable(protocol conformance descriptor for SpringAnimation, &type metadata for SpringAnimation, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SpringAnimation and conformance SpringAnimation);
  }
}

{
  if (!lazy protocol witness table cache variable for type SpringAnimation and conformance SpringAnimation)
  {
    swift_getWitnessTable(protocol conformance descriptor for SpringAnimation, &type metadata for SpringAnimation, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SpringAnimation and conformance SpringAnimation);
  }
}

{
  if (!lazy protocol witness table cache variable for type SpringAnimation and conformance SpringAnimation)
  {
    swift_getWitnessTable(protocol conformance descriptor for SpringAnimation, &type metadata for SpringAnimation, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SpringAnimation and conformance SpringAnimation);
  }
}

{
  if (!lazy protocol witness table cache variable for type SpringAnimation and conformance SpringAnimation)
  {
    swift_getWitnessTable(protocol conformance descriptor for SpringAnimation, &type metadata for SpringAnimation, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SpringAnimation and conformance SpringAnimation);
  }
}

void instantiation function for generic protocol witness table for SpringAnimation(uint64_t a1)
{
  lazy protocol witness table accessor for type SpringAnimation and conformance SpringAnimation();
  *(a1 + 8) = v2;
}

{
  lazy protocol witness table accessor for type SpringAnimation and conformance SpringAnimation();
  *(a1 + 8) = v2;
}

double View.animation<A>(_:body:)@<D0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;

  View.transaction<A>(_:body:)(partial apply for closure #1 in View.animation<A>(_:body:), v12, a2, a3, a4, a5, a6);

  return result;
}

uint64_t sub_18D19E29C()
{

  return swift_deallocObject();
}

uint64_t View.scaleEffect(_:anchor:)()
{
  return View.modifier<A>(_:)();
}

{
  return View.modifier<A>(_:)();
}

uint64_t View.matchedGeometryEffect<A>(id:in:properties:anchor:isSource:)(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  v31 = a7;
  v30 = a5;
  v29 = a4;
  v15 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v28[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = type metadata accessor for _MatchedGeometryEffect(0, v19, v20, v18);
  v22 = *(v21 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v28[-v24];
  (*(v15 + 16))(v17, a1, a6, v23);
  (*(v15 + 32))(v25, v17, a6);
  *&v25[*(v21 + 36)] = a2;
  v26 = &v25[*(v21 + 40)];
  *v26 = a3;
  v26[1] = a8;
  v26[2] = a9;
  *(v26 + 24) = v29;
  View.modifier<A>(_:)();
  return (*(v22 + 8))(v25, v21);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _CompositingGroupEffect(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

void instantiation function for generic protocol witness table for HStackLayout(uint64_t a1)
{
  lazy protocol witness table accessor for type HStackLayout and conformance HStackLayout();
  *(a1 + 8) = v2;
}

{
  lazy protocol witness table accessor for type HStackLayout and conformance HStackLayout();
  *(a1 + 8) = v2;
}

void lazy protocol witness table accessor for type HStackLayout and conformance HStackLayout()
{
  if (!lazy protocol witness table cache variable for type HStackLayout and conformance HStackLayout)
  {
    swift_getWitnessTable(protocol conformance descriptor for HStackLayout, &type metadata for HStackLayout, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type HStackLayout and conformance HStackLayout);
  }
}

{
  if (!lazy protocol witness table cache variable for type HStackLayout and conformance HStackLayout)
  {
    swift_getWitnessTable("5~'b(\b\a", &type metadata for HStackLayout, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type HStackLayout and conformance HStackLayout);
  }
}

double get_witness_table_7SwiftUI4ViewRzAA7GestureRd__r__lAA15ModifiedContentVyxAA03AddD8ModifierVyqd__AA07DefaultD8CombinerVGGAaBHPxAaBHD1__AjA0cH0HPyHCHCTm(uint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  v3 = *a1;
  v4 = a1[2];
  v5 = a1[3];
  v11[0] = a1[1];
  v11[1] = a3;
  v11[2] = v5;
  v11[3] = a2();
  v6 = type metadata accessor for AddGestureModifier(255, v11);
  v8 = type metadata accessor for ModifiedContent(255, v3, v6, v7);
  v10[0] = v4;
  v10[1] = &protocol witness table for AddGestureModifier<A, B>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v8, v10);
}

uint64_t type metadata completion function for _MatchedGeometryEffect(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _ScaleEffect(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _AllowsHitTestingModifier(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t one-time initialization function for topTrailing()
{
  if (one-time initialization token for trailing != -1)
  {
    result = swift_once();
  }

  v0 = static HorizontalAlignment.trailing;
  if (one-time initialization token for top != -1)
  {
    result = swift_once();
  }

  static Alignment.topTrailing = v0;
  unk_1ED525040 = static VerticalAlignment.top;
  return result;
}

void storeEnumTagSinglePayload for AddGestureModifier(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = (((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8 | 4;
  if (v8 >= a2)
  {
    if (v8 < a3)
    {
      a1[v10] = 0;
    }

    if (a2)
    {
      if (v7 < 0x7FFFFFFE)
      {
        v13 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
        if (a2 > 0x7FFFFFFE)
        {
          *v13 = 0;
          v13[1] = 0;
          *v13 = a2 - 0x7FFFFFFF;
        }

        else
        {
          v13[1] = a2;
        }
      }

      else
      {
        v12 = *(v6 + 56);

        v12();
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
}

uint64_t getEnumTagSinglePayload for AddGestureModifier(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 < a2 && *(a1 + ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8 | 4)))
  {
    return v7 + *a1 + 1;
  }

  if (v5 >= 0x7FFFFFFE)
  {
    return (*(v4 + 48))();
  }

  v9 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  if ((v9 + 1) >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _BlurEffect(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

double EnvironmentValues.sizeCategory.setter(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *a1;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA015DynamicTypeSizeF033_B498FA81088CF7FADFFFFFC897E05C74LLVG_Tt2B5(v2, v4);

  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA015DynamicTypeSizeK033_B498FA81088CF7FADFFFFFC897E05C74LLVG_Ttg5(v3, *v2);
  }

  return result;
}

uint64_t InternalAnimationBox.modifier<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = a1;
  v5 = *v3;
  v6 = *(a2 - 8);
  v26 = a3;
  v27 = v6;
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v5[27];
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - v12;
  v25 = v5[28];
  v29[0] = v9;
  v29[1] = v14;
  v29[2] = v25;
  v29[3] = v15;
  v16 = type metadata accessor for InternalCustomAnimationModifiedContent(0, v29);
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v25 - v19;
  (*(v10 + 16))(v13, &v3[v5[22]], v9, v18);
  (*(v27 + 16))(v8, v28, a2);
  InternalCustomAnimationModifiedContent.init(base:modifier:)(v13, v8, v9, a2, v25, v26, v20);
  swift_getWitnessTable(protocol conformance descriptor for InternalCustomAnimationModifiedContent<A, B>, v16);
  v23 = specialized Animation.init<A>(_:)(v20, v16, v21, v22);
  (*(v17 + 8))(v20, v16);
  return v23;
}

uint64_t type metadata completion function for InternalCustomAnimationModifiedContent(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  v5 = *(a1 + 16);
  v6 = v2;
  v7 = v1;
  result = type metadata accessor for CustomAnimationModifiedContent(319, &v5);
  if (v4 <= 0x3F)
  {
    *&v5 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t CustomAnimationModifiedContent.init(base:modifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a3 - 8) + 32))(a7, a1);
  v15[0] = a3;
  v15[1] = a4;
  v15[2] = a5;
  v15[3] = a6;
  v13 = type metadata accessor for CustomAnimationModifiedContent(0, v15);
  return (*(*(a4 - 8) + 32))(a7 + *(v13 + 52), a2, a4);
}

void instantiation function for generic protocol witness table for InternalCustomAnimationModifiedContent<A, B>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for InternalCustomAnimationModifiedContent<A, B>);
  *(a1 + 8) = v2;
}

{
  swift_getWitnessTable(protocol conformance descriptor for InternalCustomAnimationModifiedContent<A, B>);
  *(a1 + 8) = v2;
}

uint64_t specialized Animation.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for InternalAnimationBox(0, a2, a3, a4);
  swift_allocObject();
  return specialized InternalAnimationBox.init(_:)(a1);
}

uint64_t specialized InternalAnimationBox.init(_:)(uint64_t a1)
{
  v2 = MEMORY[0x1EEE9AC00](a1);
  v4 = &v7 - v3;
  (*(v5 + 16))(&v7 - v3, v2);
  (*(*(*(*v1 + 160) - 8) + 32))(v1 + *(*v1 + 176), v4);
  return v1;
}

uint64_t static _OverlayPreferenceModifier._makeView(modifier:inputs:body:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(_OWORD *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v8 = *a1;
  v9 = *(a2 + 48);
  v12[2] = *(a2 + 32);
  v12[3] = v9;
  v12[4] = *(a2 + 64);
  v13 = *(a2 + 80);
  v10 = *(a2 + 16);
  v12[0] = *a2;
  v12[1] = v10;
  return makeSecondaryPreferenceView<A, B>(modifier:inputs:body:flipOrder:)(v8, v12, a3, 0, a4, a5, a6, a8, a7);
}

void *assignWithCopy for _AppearanceActionModifier(void *a1, void *a2)
{
  v4 = *a2;
  if (*a1)
  {
    if (v4)
    {
      v5 = a2[1];
      *a1 = v4;
      a1[1] = v5;

      goto LABEL_8;
    }
  }

  else if (v4)
  {
    v6 = a2[1];
    *a1 = v4;
    a1[1] = v6;

    goto LABEL_8;
  }

  *a1 = *a2;
LABEL_8:
  v7 = a2[2];
  if (!a1[2])
  {
    if (v7)
    {
      v9 = a2[3];
      a1[2] = v7;
      a1[3] = v9;

      return a1;
    }

LABEL_14:
    *(a1 + 1) = *(a2 + 1);
    return a1;
  }

  if (!v7)
  {

    goto LABEL_14;
  }

  v8 = a2[3];
  a1[2] = v7;
  a1[3] = v8;

  return a1;
}

Swift::Void __swiftcall ValueActionDispatcher.updateValue()()
{
  v2 = v1;
  v3 = v0;
  v4 = *(v0 + 16);
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v42 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v43 = &v40 - v9;
  v10 = *(v4 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v41 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v48 = &v40 - v14;
  Value = AGGraphGetValue();
  v16 = *(v3 + 44);
  if (*(v2 + v16) != *Value >> 1)
  {
    *(v2 + v16) = *AGGraphGetValue() >> 1;
    v17 = *(v3 + 40);
    (*(v6 + 8))(v2 + v17, v5);
    (*(v10 + 56))(v2 + v17, 1, 1, v4);
    v18 = v2 + *(v3 + 48);
    *(v18 + 4) = 0xFFFFFFFFLL;
    *(v18 + 12) = 0;
  }

  v47 = v6;
  v19 = AGGraphGetValue();
  v20 = v48;
  v44 = *(v10 + 16);
  v45 = v10 + 16;
  v21 = v44(v48, v19, v4);
  v22 = *(v3 + 40);
  MEMORY[0x1EEE9AC00](v21);
  v23 = *(v3 + 24);
  *(&v40 - 4) = v4;
  *(&v40 - 3) = v23;
  v40 = v23;
  *(&v40 - 2) = v20;
  v46 = v5;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in ValueActionDispatcher.updateValue(), (&v40 - 6), MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], v24, v49);
  if (LOBYTE(v49[0]) != 2 && (v49[0] & 1) != 0)
  {
    v25 = v2 + *(v3 + 48);
    AGGraphClearUpdate();
    v26 = *AGGraphGetValue();
    AGGraphSetUpdate();
    if (*(v25 + 4) == v26)
    {
      v27 = *(v25 + 8);
      if (!v27 || (v28 = v27 - 1, (*(v25 + 8) = v28) == 0))
      {
        if ((*(v25 + 12) & 1) == 0)
        {
          v49[0] = 0;
          v49[1] = 0xE000000000000000;
          _StringGuts.grow(_:)(44);

          v49[0] = 0;
          v49[1] = 0xE000000000000000;
          _StringGuts.grow(_:)(23);

          strcpy(v49, "onChange(of: ");
          HIWORD(v49[1]) = -4864;
          swift_getAssociatedTypeWitness();
          v29 = _typeName(_:qualified:)();
          MEMORY[0x193ABEDD0](v29);

          MEMORY[0x193ABEDD0](0x6E6F697463612029, 0xE800000000000000);
          MEMORY[0x193ABEDD0](0xD00000000000002ALL, 0x800000018DD75B90);
          specialized static Log.externalWarning(_:)(v49[0], v49[1]);

          *(v25 + 12) = 1;
        }

        goto LABEL_12;
      }
    }

    else
    {
      *(v25 + 4) = v26;
      *(v25 + 8) = 2;
    }

    v30 = v46;
    v31 = *(v47 + 16);
    v32 = v43;
    v31(v43, v2 + v22, v46);
    LOBYTE(v49[0]) = 1;
    v44(v41, v48, v4);
    v31(v42, v32, v30);
    v33 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v34 = (v11 + *(v47 + 80) + v33) & ~*(v47 + 80);
    v35 = swift_allocObject();
    v37 = v40;
    v36 = v41;
    *(v35 + 16) = v4;
    *(v35 + 24) = v37;
    (*(v10 + 32))(v35 + v33, v36, v4);
    v38 = v47;
    (*(v47 + 32))(v35 + v34, v42, v30);
    static Update.enqueueAction(reason:_:)(v49, partial apply for closure #2 in ValueActionDispatcher.updateValue(), v35);

    (*(v38 + 8))(v43, v30);
  }

LABEL_12:
  (*(v47 + 8))(v2 + v22, v46);
  v39 = v48;
  v44((v2 + v22), v48, v4);
  (*(v10 + 56))(v2 + v22, 0, 1, v4);
  (*(v10 + 8))(v39, v4);
}

uint64_t sub_18D19F9C0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for Optional() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v2 + 8);
  v7(v0 + v3, v1);
  if (!(*(v2 + 48))(v0 + v6, 1, v1))
  {
    v7(v0 + v6, v1);
  }

  return swift_deallocObject();
}

void *static _AnimationModifier._makeView(modifier:inputs:body:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X8>)
{
  v12 = *a1;
  v13 = a2[3];
  v42 = a2[2];
  v43 = v13;
  v44 = a2[4];
  v45 = *(a2 + 20);
  v14 = a2[1];
  v40 = *a2;
  v41 = v14;
  BloomFilter.init(hashValue:)(&type metadata for ArchivedViewInput);
  v15 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17ArchivedViewInputV_Tt0B5(v40, v34);
  if (v15)
  {
    if ((*(v15 + 72) & 1) == 0)
    {
LABEL_3:
      v26 = v42;
      v27 = v43;
      v28 = v44;
      v29 = v45;
      v24 = v40;
      v25 = v41;
      LODWORD(v32[0]) = v12;
      outlined init with copy of _ViewInputs(&v40, &v34);
      static _AnimationModifier._makeInputs(modifier:inputs:)(v32, &v24, a5, a6);
      v30[2] = v26;
      v30[3] = v27;
      v30[4] = v28;
      v31 = v29;
      v30[0] = v24;
      v30[1] = v25;
      v20 = v26;
      v21 = v27;
      v22 = v28;
      v23 = v29;
      v18 = v24;
      v19 = v25;
      v16 = outlined init with copy of _ViewInputs(v30, &v34);
      (a3)(v16, &v18);
      v32[2] = v20;
      v32[3] = v21;
      v32[4] = v22;
      v33 = v23;
      v32[0] = v18;
      v32[1] = v19;
      outlined destroy of _ViewInputs(v32);
      v36 = v26;
      v37 = v27;
      v38 = v28;
      v39 = v29;
      v34 = v24;
      v35 = v25;
      return outlined destroy of _ViewInputs(&v34);
    }
  }

  else
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    if ((static ArchivedViewInput.defaultValue & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  LODWORD(v32[0]) = v12;
  v36 = v42;
  v37 = v43;
  v38 = v44;
  v39 = v45;
  v34 = v40;
  v35 = v41;
  return static _AnimationModifier.makeArchivedView(modifier:inputs:body:)(v32, &v34, a3, a4, a5, a6, a7);
}

uint64_t type metadata completion function for StrokeShapeView(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for _StrokedShape(255, a1[2], a1[5], a4);
  v6 = a1[3];
  swift_getWitnessTable(protocol conformance descriptor for _StrokedShape<A>, v5);
  v7 = a1[6];
  v15[0] = v5;
  v15[1] = v6;
  v15[2] = v8;
  v15[3] = v7;
  v9 = type metadata accessor for _ShapeView(255, v15);
  v11 = type metadata accessor for _BackgroundModifier(255, a1[4], a1[7], v10);
  result = type metadata accessor for ModifiedContent(319, v9, v11, v12);
  if (v14 <= 0x3F)
  {
    v15[0] = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for _StrokedShape(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void instantiation function for generic protocol witness table for _StrokedShape<A>(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _StrokedShape<A>);
  *(a1 + 8) = v5;
  swift_getWitnessTable(protocol conformance descriptor for _StrokedShape<A>, a2, WitnessTable);
  *(a1 + 16) = v6;
}

void type metadata accessor for (properties: MatchedGeometryProperties, anchor: UnitPoint, isSource: Bool)()
{
  if (!lazy cache variable for type metadata for (properties: MatchedGeometryProperties, anchor: UnitPoint, isSource: Bool))
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (properties: MatchedGeometryProperties, anchor: UnitPoint, isSource: Bool));
    }
  }
}

void type metadata accessor for (ViewFrame?, AnyOptionalAttribute)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (ViewFrame?, AnyOptionalAttribute))
  {
    _s14AttributeGraph0A0Vy7SwiftUI11DisplayListVGMaTm_2(255, &lazy cache variable for type metadata for ViewFrame?, &type metadata for ViewFrame, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (ViewFrame?, AnyOptionalAttribute));
    }
  }
}

__n128 __swift_memcpy37_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 29) = *(a2 + 29);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t static Optional<A>._viewListCount(inputs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 48);
  v20 = *(a1 + 32);
  v21 = v6;
  v7 = *(a1 + 64);
  v8 = *(a1 + 16);
  v19[0] = *a1;
  v19[1] = v8;
  v22 = v7;
  v23[0] = v19[0];
  v23[1] = v8;
  v23[2] = v20;
  v23[3] = v6;
  LOBYTE(v24) = 0;
  v9 = *(a1 + 65);
  *(&v24 + 1) = *(a1 + 72);
  *(&v24 + 1) = v9;
  v16 = v20;
  v17 = v6;
  v18 = v24;
  v14 = v19[0];
  v15 = v8;
  v10 = *(a3 + 40);
  outlined init with copy of _ViewListCountInputs(v19, v26);
  outlined init with copy of _ViewListCountInputs(v23, v26);
  v10(&v14, a2, a3);
  v25[2] = v16;
  v25[3] = v17;
  v25[4] = v18;
  v25[0] = v14;
  v25[1] = v15;
  outlined destroy of _ViewListCountInputs(v25);
  v11 = *(a1 + 16);
  v26[0] = *a1;
  v26[1] = v11;
  v12 = *(a1 + 48);
  v26[2] = *(a1 + 32);
  v26[3] = v12;
  v27 = 0;
  *v28 = *(a1 + 65);
  *&v28[7] = *(a1 + 72);
  outlined destroy of _ViewListCountInputs(v26);
  return 0;
}

uint64_t static View._viewListCount(inputs:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  return _ViewListCountInputs.withUniqueBody<A>(type:body:)(a2, partial apply for closure #1 in static View._viewListCount(inputs:));
}

{
  return static View._viewListCount(inputs:)(a1, a2, a3);
}

uint64_t static StyleModifier._viewListCount(inputs:body:)(_OWORD *a1, uint64_t (*a2)(__int128 *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a1[1];
  v7 = a1[3];
  v27 = a1[2];
  v28 = v7;
  v8 = a1[3];
  v29 = a1[4];
  v9 = a1[1];
  v26[0] = *a1;
  v26[1] = v9;
  v23 = v27;
  v24 = v8;
  v25 = a1[4];
  v21 = v26[0];
  v22 = v6;
  LODWORD(v31[0]) = *MEMORY[0x1E698D3F8];
  *(&v31[0] + 1) = type metadata accessor for StyleModifierType(0, a4, a5, a4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = type metadata accessor for StyleInput(0, AssociatedTypeWitness, v11, v12);
  outlined init with copy of _ViewListCountInputs(v26, v32);
  _ViewListCountInputs.append<A, B>(_:to:)(v31, v13, v13, &type metadata for AnyStyleModifier, &protocol witness table for StyleInput<A>);
  v30[2] = v23;
  v30[3] = v24;
  v30[4] = v25;
  v30[0] = v21;
  v30[1] = v22;
  v18 = v23;
  v19 = v24;
  v20 = v25;
  v16 = v21;
  v17 = v22;
  outlined init with copy of _ViewListCountInputs(v30, v32);
  v14 = a2(&v16);
  v31[2] = v18;
  v31[3] = v19;
  v31[4] = v20;
  v31[0] = v16;
  v31[1] = v17;
  outlined destroy of _ViewListCountInputs(v31);
  v32[2] = v23;
  v32[3] = v24;
  v32[4] = v25;
  v32[0] = v21;
  v32[1] = v22;
  outlined destroy of _ViewListCountInputs(v32);
  return v14;
}

uint64_t static StaticIf<>._viewListCount(inputs:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = a1[1];
  v30 = *a1;
  v31 = v12;
  v13 = a1[3];
  v32 = a1[2];
  v33 = v13;
  v34 = a1[4];
  v14 = v30;
  v15 = v31;
  v16 = *MEMORY[0x1E698D3F8];
  v35 = 1;
  v17 = MEMORY[0x1E69E7CC0];
  v18 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI19ResolvedShapeStyles33_B62A4B04AF9F1325924A089D63071424LLV_14AttributeGraph0O0VyAC01_F10Style_PackVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  type metadata accessor for MutableBox<CachedEnvironment>(0, v19, v20, v21);
  v22 = swift_allocObject();
  *(v22 + 16) = v16;
  *(v22 + 24) = v17;
  *(v22 + 32) = 0u;
  *(v22 + 48) = 0u;
  *(v22 + 64) = 0u;
  *(v22 + 80) = 256;
  *(v22 + 88) = v18;
  *&v27 = v14;
  DWORD2(v27) = v16;
  *&v28 = v22;
  DWORD2(v28) = v16;
  HIDWORD(v28) = v16;
  LODWORD(v29) = -1;
  DWORD1(v29) = v15;
  *(&v29 + 1) = MEMORY[0x1E69E7CD0];
  v23 = *(a5 + 8);
  outlined init with copy of _ViewListCountInputs(&v30, v26);
  LOBYTE(a2) = v23(&v27, a2, a5);
  v36[0] = v27;
  v36[1] = v28;
  v36[2] = v29;
  outlined destroy of _GraphInputs(v36);
  v26[2] = v32;
  v26[3] = v33;
  v26[4] = v34;
  v26[0] = v30;
  v26[1] = v31;
  if (a2)
  {
    return (*(a6 + 40))(v26, a3, a6);
  }

  else
  {
    return (*(a7 + 40))(v26, a4, a7);
  }
}

uint64_t type metadata completion function for _ContentShapeKindModifier(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t static EnvironmentalModifier._makeViewList(modifier:inputs:body:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v37 = *MEMORY[0x1E69E9840];
  v9 = *a1;
  static DynamicPropertyCache.fields(of:)(a5, v34);
  v11 = v34[0];
  v10 = v34[1];
  v12 = v35;
  v13 = v36;
  outlined init with copy of _ViewListInputs(a2, v34);
  v21 = v13;
  v22 = v9;
  v25 = v9;
  v27 = v11;
  v28 = v10;
  v29 = v12;
  v30 = v13;
  static EnvironmentalModifier.makeResolvedModifier(modifier:inputs:fields:)(&v26, &v31, &v25, v34, &v27, a5, a6);
  v14 = v26;
  v15 = v32;
  v20 = v31;
  v16 = v33;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
  }

  LODWORD(v27) = v14;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 32))(&v27, v34, a3, a4, AssociatedTypeWitness, AssociatedConformanceWitness);
  $defer #1 <A>() in static View.makeDebuggableViewList(view:inputs:)(v14, AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((v16 & 1) == 0)
  {
    v31 = v20;
    v32 = v15;
    v26 = v22;
    v27 = v11;
    v28 = v10;
    v29 = v12;
    v30 = v21;
    _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(&v26, &v27, a5);
  }

  outlined destroy of _ViewListInputs(v34);
  return outlined consume of DynamicPropertyCache.Fields.Layout(v11, v10, v12);
}

uint64_t HStack.init(alignment:spacing:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v6[0] = a1;
  v6[1] = a2;
  v7 = a3 & 1;
  return _VariadicView.Tree.init(_:content:)(v6, partial apply for closure #1 in HStack.init(alignment:spacing:content:), &type metadata for _HStackLayout, a4, &protocol witness table for _HStackLayout, a5);
}

uint64_t closure #1 in HStack.init(alignment:spacing:content:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - v9;
  v11(v8);
  static ViewBuilder.buildExpression<A>(_:)();
  v12 = *(v4 + 8);
  v12(v6, a3);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v12)(v10, a3);
}

uint64_t _ViewInputs.applyBackgroundStyle<A, B>(value:offset:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v24 = *MEMORY[0x1E69E9840];
  v23 = 2;
  result = (*(a5 + 40))(&v23, a4, a5);
  if (v23 != 2 && (v23 & 1) != 0)
  {
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    v11 = *(v6 + 16);
    v12 = swift_beginAccess();
    v13 = *(v11 + 16);
    v22[0] = OffsetAttribute2;
    v22[1] = v13;
    MEMORY[0x1EEE9AC00](v12);
    v19 = type metadata accessor for ForegroundEnvironment(0, a4, a5, v14);
    swift_getWitnessTable(protocol conformance descriptor for ForegroundEnvironment<A>, v19);
    v20 = v15;
    type metadata accessor for Attribute<_ShapeStyle_Pack>(0, &lazy cache variable for type metadata for Attribute<EnvironmentValues>, &type metadata for EnvironmentValues, MEMORY[0x1E698D388]);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v22, closure #1 in Attribute.init<A>(_:)partial apply, &v18, v19, MEMORY[0x1E69E73E0], v16, MEMORY[0x1E69E7410], v17);
    return _GraphInputs.environment.setter(v21);
  }

  return result;
}

id DefaultLayoutViewResponder.init(inputs:)(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(v1 + 120) = *(a1 + 32);
  *(v1 + 136) = v2;
  *(v1 + 152) = *(a1 + 64);
  v3 = *(a1 + 16);
  *(v1 + 88) = *a1;
  *(v1 + 200) = 0u;
  *(v1 + 184) = 0u;
  *(v1 + 168) = *(a1 + 80);
  *(v1 + 104) = v3;
  result = AGSubgraphGetCurrent();
  if (result)
  {
    v5 = MEMORY[0x1E69E7CC0];
    *(v1 + 176) = result;
    *(v1 + 40) = v5;
    *(v1 + 48) = 0u;
    *(v1 + 64) = 0u;
    *(v1 + 80) = v5;
    *(v1 + 24) = 0;
    swift_unknownObjectWeakInit();
    swift_weakInit();
    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    v6 = swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    v7 = *(v6 + 208);

    swift_beginAccess();
    *(v1 + 24) = v7;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _s7SwiftUI15_RendererEffectPAAE05_makecD06effect6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVyxG_AA01_I6InputsVAiA01_K0V_ANtctFZAA25_AllowsHitTestingModifierV_Tt3B5@<X0>(unsigned int a1@<W0>, void *a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, void *a4@<X8>)
{
  v64 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 3);
  v61 = *(a2 + 2);
  v62 = v8;
  v9 = *(a2 + 17);
  v63 = *(a2 + 16);
  v10 = *(a2 + 1);
  v59 = *a2;
  v60 = v10;
  v41 = a2[9];
  v42 = *(a2 + 20);
  v11 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(a2[6]);
  if (v11)
  {
    v12 = *(a2 + 3);
    v13 = *(a2 + 4);
    v14 = *(a2 + 1);
    v55 = *(a2 + 2);
    v56 = v12;
    v57 = v13;
    v58 = *(a2 + 20);
    v53 = *a2;
    v54 = v14;
    swift_beginAccess();
    outlined init with copy of _ViewInputs(a2, v50);
    v9 = CachedEnvironment.animatedPosition(for:)(&v53);
    swift_endAccess();
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v53);
  }

  v50[2] = v61;
  v50[3] = v62;
  v50[0] = v59;
  v50[1] = v60;
  *&v51 = __PAIR64__(v9, v63);
  *(&v51 + 1) = v41;
  v52 = v42;
  v46 = v61;
  v47 = v62;
  v48 = v51;
  v49 = v42;
  v44 = v59;
  v45 = v60;
  v15 = outlined init with copy of _ViewInputs(v50, &v53);
  a3(v40, v15, &v44);
  v55 = v46;
  v56 = v47;
  v57 = v48;
  v58 = v49;
  v53 = v44;
  v54 = v45;
  outlined destroy of _ViewInputs(&v53);
  if ((v11 & 1) == 0)
  {
LABEL_16:
    v46 = v61;
    v47 = v62;
    v44 = v59;
    v45 = v60;
    *&v48 = __PAIR64__(v9, v63);
    *(&v48 + 1) = v41;
    v49 = v42;
    result = outlined destroy of _ViewInputs(&v44);
    *a4 = v40[0];
    a4[1] = v40[1];
    return result;
  }

  v39 = a1;
  v16 = ++lastIdentity;
  v17 = *a2;
  v18 = a2[2];
  if ((*(a2 + 37) & 1) == 0)
  {
    v19 = *MEMORY[0x1E698D3F8];
LABEL_7:
    v20 = *(a2 + 3);
    v46 = *(a2 + 2);
    v47 = v20;
    v48 = *(a2 + 4);
    v49 = *(a2 + 20);
    v21 = *(a2 + 1);
    v44 = *a2;
    v45 = v21;
    swift_beginAccess();
    v22 = CachedEnvironment.animatedPosition(for:)(&v44);
    v23 = *(a2 + 3);
    v46 = *(a2 + 2);
    v47 = v23;
    v48 = *(a2 + 4);
    v49 = *(a2 + 20);
    v24 = *(a2 + 1);
    v44 = *a2;
    v45 = v24;
    v25 = CachedEnvironment.animatedSize(for:)(&v44);
    swift_endAccess();
    v26 = *(v18 + 16);
    v27 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v40[0]);
    if ((v27 & 0x100000000) == 0)
    {
      v19 = v27;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v28 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v17, v44);
    if (v28)
    {
      v29 = *(v28 + 72);
    }

    else
    {
      v29 = 0;
    }

    BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
    v30 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v17, v44);
    if (v30)
    {
      v31 = *(v30 + 72);
    }

    else
    {
      v31 = 0;
    }

    v32 = *(a2 + 15);
    v33 = *(a2 + 17);
    v34 = *(a2 + 19);
    *&v44 = __PAIR64__(v39, v16);
    *(&v44 + 1) = __PAIR64__(v25, v22);
    *&v45 = __PAIR64__(v33, v32);
    *(&v45 + 1) = __PAIR64__(v34, v26);
    LODWORD(v46) = v19;
    BYTE4(v46) = v29;
    DWORD2(v46) = 0;
    HIDWORD(v46) = v31;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(0, &lazy cache variable for type metadata for RendererEffectDisplayList<_AllowsHitTestingModifier>, &type metadata for _AllowsHitTestingModifier, &protocol witness table for _AllowsHitTestingModifier, type metadata accessor for RendererEffectDisplayList);
    lazy protocol witness table accessor for type RendererEffectDisplayList<_AllowsHitTestingModifier> and conformance RendererEffectDisplayList<A>();
    v35 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v44) = 0;
    PreferencesOutputs.subscript.setter(v35, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    goto LABEL_16;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v44);
  result = AGWeakAttributeGetAttribute();
  v19 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v43[0] = v16;
    v37 = Attribute<A>.subscript.modify(&v44, result);
    v38 = _DisplayList_StableIdentityScope.pushIdentity(_:)(v43);
    (v37)(&v44, 0, v38);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

double static _AllowsHitTestingModifier._makeView(modifier:inputs:body:)@<D0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, double *a4@<X8>)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v6 = a2[3];
  v26 = a2[2];
  v27 = v6;
  v28 = a2[4];
  v29 = *(a2 + 20);
  v7 = a2[1];
  v24 = *a2;
  v25 = v7;
  _s7SwiftUI15_RendererEffectPAAE05_makecD06effect6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVyxG_AA01_I6InputsVAiA01_K0V_ANtctFZAA25_AllowsHitTestingModifierV_Tt3B5(v5, &v24, a3, &v15);
  if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA014ViewRespondersI0V_TtB5Tf4dn_n(v27))
  {
    v8 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA014ViewRespondersI0V_TtB5(v15);
    if ((v8 & 0x100000000) != 0)
    {
      specialized static GraphHost.currentHost.getter();
      type metadata accessor for ViewGraph();
      swift_dynamicCastClassUnconditional();
      type metadata accessor for [ViewResponder](0);
      v9 = specialized GraphHost.intern<A>(_:for:id:)(MEMORY[0x1E69E7CC0], v10, 0);
    }

    else
    {
      v9 = v8;
    }

    type metadata accessor for AllowsHitTestingResponder();
    *(swift_allocObject() + 216) = 1;
    v20 = v26;
    v21 = v27;
    v22 = v28;
    v23 = v29;
    v18 = v24;
    v19 = v25;
    outlined init with copy of _ViewInputs(&v24, v17);
    v11 = DefaultLayoutViewResponder.init(inputs:)(&v18);
    *&v18 = __PAIR64__(v9, v5);
    *(&v18 + 1) = v11;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for [ViewResponder](0);
    lazy protocol witness table accessor for type AllowsHitTestingFilter and conformance AllowsHitTestingFilter();
    v12 = Attribute.init<A>(body:value:flags:update:)();

    LOBYTE(v18) = 0;
    PreferencesOutputs.subscript.setter(v12, &type metadata for ViewRespondersKey, &protocol witness table for ViewRespondersKey);
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE037AllowsHitTestingAccessibilityProviderF033_0DA0B6FBFACBDA8275B06C3CD0F4D8CALLV_Tt2g5(v24);
  v17[0] = v5;
  v20 = v26;
  v21 = v27;
  v22 = v28;
  v23 = v29;
  v18 = v24;
  v19 = v25;
  (*(v13 + 8))(v17, &v18, &v15);
  *a4 = v15;
  result = v16;
  a4[1] = v16;
  return result;
}

void lazy protocol witness table accessor for type RendererEffectDisplayList<_AllowsHitTestingModifier> and conformance RendererEffectDisplayList<A>()
{
  if (!lazy protocol witness table cache variable for type RendererEffectDisplayList<_AllowsHitTestingModifier> and conformance RendererEffectDisplayList<A>)
  {
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(255, &lazy cache variable for type metadata for RendererEffectDisplayList<_AllowsHitTestingModifier>, &type metadata for _AllowsHitTestingModifier, &protocol witness table for _AllowsHitTestingModifier, type metadata accessor for RendererEffectDisplayList);
    swift_getWitnessTable(protocol conformance descriptor for RendererEffectDisplayList<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type RendererEffectDisplayList<_AllowsHitTestingModifier> and conformance RendererEffectDisplayList<A>);
  }
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE037AllowsHitTestingAccessibilityProviderF033_0DA0B6FBFACBDA8275B06C3CD0F4D8CALLV_Tt2g5(uint64_t a1)
{
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.AllowsHitTestingAccessibilityProviderKey);
  v2 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE037AllowsHitTestingAccessibilityProviderV033_0DA0B6FBFACBDA8275B06C3CD0F4D8CALLV_Tt0B5(a1, v5);
  if (v2)
  {
    v3 = (v2 + 72);
  }

  else
  {
    v3 = &static _GraphInputs.AllowsHitTestingAccessibilityProviderKey.defaultValue;
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }
  }

  return *v3;
}

void lazy protocol witness table accessor for type LayoutPriorityLayout and conformance LayoutPriorityLayout()
{
  if (!lazy protocol witness table cache variable for type LayoutPriorityLayout and conformance LayoutPriorityLayout)
  {
    swift_getWitnessTable(protocol conformance descriptor for LayoutPriorityLayout, &type metadata for LayoutPriorityLayout, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type LayoutPriorityLayout and conformance LayoutPriorityLayout);
  }
}

{
  if (!lazy protocol witness table cache variable for type LayoutPriorityLayout and conformance LayoutPriorityLayout)
  {
    swift_getWitnessTable(protocol conformance descriptor for LayoutPriorityLayout, &type metadata for LayoutPriorityLayout, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type LayoutPriorityLayout and conformance LayoutPriorityLayout);
  }
}

void *protocol witness for static UnaryLayout.makeViewImpl(modifier:inputs:body:) in conformance LayoutPriorityLayout@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, __int128 *)@<X2>, void *a5@<X8>)
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
  return specialized static UnaryLayout<>.makeViewImpl(modifier:inputs:body:)(v5, v9, a3, a5);
}

void lazy protocol witness table accessor for type UnaryLayoutComputer<LayoutPriorityLayout> and conformance UnaryLayoutComputer<A>()
{
  if (!lazy protocol witness table cache variable for type UnaryLayoutComputer<LayoutPriorityLayout> and conformance UnaryLayoutComputer<A>)
  {
    type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(255, &lazy cache variable for type metadata for UnaryLayoutComputer<LayoutPriorityLayout>, lazy protocol witness table accessor for type LayoutPriorityLayout and conformance LayoutPriorityLayout, &type metadata for LayoutPriorityLayout, type metadata accessor for UnaryLayoutComputer);
    swift_getWitnessTable(protocol conformance descriptor for UnaryLayoutComputer<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type UnaryLayoutComputer<LayoutPriorityLayout> and conformance UnaryLayoutComputer<A>);
  }
}

void lazy protocol witness table accessor for type UnaryChildGeometry<LayoutPriorityLayout> and conformance UnaryChildGeometry<A>()
{
  if (!lazy protocol witness table cache variable for type UnaryChildGeometry<LayoutPriorityLayout> and conformance UnaryChildGeometry<A>)
  {
    type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(255, &lazy cache variable for type metadata for UnaryChildGeometry<LayoutPriorityLayout>, lazy protocol witness table accessor for type LayoutPriorityLayout and conformance LayoutPriorityLayout, &type metadata for LayoutPriorityLayout, type metadata accessor for UnaryChildGeometry);
    swift_getWitnessTable(protocol conformance descriptor for UnaryChildGeometry<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type UnaryChildGeometry<LayoutPriorityLayout> and conformance UnaryChildGeometry<A>);
  }
}

uint64_t one-time initialization function for bottom()
{
  if (one-time initialization token for center != -1)
  {
    result = swift_once();
  }

  v0 = static HorizontalAlignment.center;
  if (one-time initialization token for bottom != -1)
  {
    result = swift_once();
  }

  static Alignment.bottom = v0;
  unk_1ED526F50 = static VerticalAlignment.bottom;
  return result;
}

void type metadata accessor for LayoutEngineBox<UnaryLayoutEngine<LayoutPriorityLayout>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for LayoutEngineBox<UnaryLayoutEngine<LayoutPriorityLayout>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for UnaryLayoutEngine<LayoutPriorityLayout>, lazy protocol witness table accessor for type LayoutPriorityLayout and conformance LayoutPriorityLayout, &type metadata for LayoutPriorityLayout, type metadata accessor for UnaryLayoutEngine);
    v4 = type metadata accessor for LayoutEngineBox(a1, v2, &protocol witness table for UnaryLayoutEngine<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for LayoutEngineBox<UnaryLayoutEngine<LayoutPriorityLayout>>);
    }
  }
}

void lazy protocol witness table accessor for type ViewBodyAccessor<LinearGradient> and conformance ViewBodyAccessor<A>()
{
  if (!lazy protocol witness table cache variable for type ViewBodyAccessor<LinearGradient> and conformance ViewBodyAccessor<A>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<LinearGradient>, &type metadata for LinearGradient, &protocol witness table for LinearGradient, type metadata accessor for ViewBodyAccessor);
    swift_getWitnessTable(protocol conformance descriptor for ViewBodyAccessor<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type ViewBodyAccessor<LinearGradient> and conformance ViewBodyAccessor<A>);
  }
}

uint64_t View.contentShape<A>(_:eoFill:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = a5;
  v8 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for _ContentShapeModifier(0, v11, v12, v11);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v19 - v16;
  (*(v8 + 16))(v10, a1, a4, v15);
  (*(v8 + 32))(v17, v10, a4);
  v17[*(v13 + 36)] = a2;
  View.modifier<A>(_:)();
  return (*(v14 + 8))(v17, v13);
}

uint64_t View.clipShape<A>(_:style:)(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a5;
  v8 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for _ClipEffect(0, v11, v12, v11);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v20 - v16;
  (*(v8 + 16))(v10, a1, a4, v15);
  (*(v8 + 32))(v17, v10, a4);
  v18 = &v17[*(v13 + 36)];
  *v18 = a2 & 1;
  v18[1] = HIBYTE(a2) & 1;
  View.modifier<A>(_:)();
  return (*(v14 + 8))(v17, v13);
}

double static _MaskEffect._makeView(modifier:inputs:body:)@<D0>(uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, void *x8_0@<X8>)
{
  v9 = *(a2 + 48);
  v12[2] = *(a2 + 32);
  v12[3] = v9;
  v12[4] = *(a2 + 64);
  v13 = *(a2 + 80);
  v10 = *(a2 + 16);
  v12[0] = *a2;
  v12[1] = v10;

  return specialized static _ViewOutputs.makeMaskView(inputs:contentBody:maskBody:outputsFromMask:mayUseForegroundColor:alignment:)(v12, partial apply for makeMask #1 <A>(inputs:) in static _MaskEffect._makeView(modifier:inputs:body:), 0, 1, 0x100000000, a3, x8_0);
}

double specialized static _ViewOutputs.makeMaskView(inputs:contentBody:maskBody:outputsFromMask:mayUseForegroundColor:alignment:)@<D0>(uint64_t a1@<X0>, void (*a2)(uint64_t *__return_ptr, __int128 *)@<X1>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, void (*a7)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X6>, void *a9@<X8>)
{
  v106 = *MEMORY[0x1E69E9840];
  v11 = *(a1 + 48);
  v102 = *(a1 + 32);
  v103 = v11;
  v104 = *(a1 + 64);
  v105 = *(a1 + 80);
  v12 = *(a1 + 16);
  v100 = *a1;
  v101 = v12;
  v13 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v11);
  v59 = v100;
  v14 = v101;
  v15 = DWORD1(v102);
  v16 = *(a1 + 48);
  *v99 = *(a1 + 32);
  *&v99[16] = v16;
  *&v99[32] = *(a1 + 64);
  *&v99[48] = *(a1 + 80);
  v17 = *(a1 + 16);
  v97 = *a1;
  v98 = v17;
  if ((WORD2(v102) & 0x100) != 0)
  {
    outlined init with copy of _ViewInputs(&v100, &v91);
    specialized _GraphInputs.pushScope<A>(id:)(0);
    if ((v15 & 0x20) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    outlined init with copy of _ViewInputs(&v100, &v91);
    if ((v15 & 0x20) == 0)
    {
      goto LABEL_11;
    }
  }

  *&v99[4] = v15 | 2;
  v93 = v102;
  v94 = v103;
  v95 = v104;
  v96 = v105;
  v91 = v100;
  v92 = v101;
  swift_beginAccess();
  v18 = CachedEnvironment.animatedPosition(for:)(&v91);
  swift_endAccess();
  *&v99[36] = v18;
  if (one-time initialization token for layoutDirection != -1)
  {
    swift_once();
  }

  v19 = static CachedEnvironment.ID.layoutDirection;
  swift_beginAccess();
  v20 = specialized CachedEnvironment.attribute<A>(id:_:)(v19, closure #1 in _GraphInputs.layoutDirection.getter, 0);
  swift_endAccess();
  v21 = *MEMORY[0x1E698D3F8];
  if ((a6 & 0x100000000) != 0)
  {
    v22 = *MEMORY[0x1E698D3F8];
  }

  else
  {
    v22 = a6;
  }

  *&v91 = __PAIR64__(v20, v22);
  *(&v91 + 1) = __PAIR64__(DWORD2(v104), v104);
  LODWORD(v92) = v21;
  DWORD1(v92) = v21;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type SecondaryLayerGeometryQuery and conformance SecondaryLayerGeometryQuery();
  Attribute.init<A>(body:value:flags:update:)();
LABEL_11:
  v93 = *v99;
  v94 = *&v99[16];
  v95 = *&v99[32];
  v96 = *&v99[48];
  v91 = v97;
  v92 = v98;
  v23 = *v99;
  v88 = v97;
  v89 = v98;
  LODWORD(v90[3]) = *&v99[48];
  v90[1] = *&v99[16];
  v90[2] = *&v99[32];
  v90[0] = *v99;
  if ((*&v99[4] & 0x100) != 0)
  {
    outlined init with copy of _ViewInputs(&v91, &v82);
    specialized _GraphInputs.pushScope<A>(id:)(1);
  }

  else
  {
    outlined init with copy of _ViewInputs(&v91, &v82);
  }

  v61 = v15;
  if ((v15 & 0x20) != 0)
  {
    LODWORD(v90[2]) = AGGraphCreateOffsetAttribute2();
    v23 = LODWORD(v90[0]) | 0x18;
    DWORD2(v90[2]) = AGGraphCreateOffsetAttribute2();
    LODWORD(v90[0]) = v23;
  }

  v24 = MEMORY[0x1E69E7CC0];
  *&v90[1] = MEMORY[0x1E69E7CC0];
  v25 = v13;
  if (v13)
  {
    *&v82 = MEMORY[0x1E69E7CC0];
    v26 = PreferenceKeys._index(of:)(&type metadata for DisplayList.Key);

    v27 = *(v24 + 16);
    if (v26 != v27)
    {
      if (v26 >= v27)
      {
        goto LABEL_55;
      }

      if (*(v24 + 16 * v26 + 32) == &type metadata for DisplayList.Key)
      {
        goto LABEL_24;
      }
    }

    if (v27 >= v26)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v90[1] = v24;
      if (!isUniquelyReferenced_nonNull_native || (v29 = v24, v27 >= *(v24 + 24) >> 1))
      {
        v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v27 + 1, 1, MEMORY[0x1E69E7CC0]);
        *&v90[1] = v29;
      }

      specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v26, v26, 1, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
      *&v90[1] = v29;
      goto LABEL_24;
    }

    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

LABEL_24:
  if (a4)
  {
    v80[0] = v97;
    v30 = v98;
    v23 = *v99;
    v82 = *&v99[4];
    v83 = *&v99[20];
    v84 = *&v99[36];
    v97 = v88;
    v98 = v89;
    *&v99[48] = v90[3];
    *&v99[16] = v90[1];
    *&v99[32] = v90[2];
    *v99 = v90[0];
    v88 = v80[0];
    v89 = v30;
    LODWORD(v90[0]) = v23;
    *(&v90[2] + 4) = v84;
    *(&v90[1] + 4) = v83;
    *(v90 + 4) = v82;
  }

  v31 = v25;
  if (a5)
  {
    swift_beginAccess();
    LODWORD(v82) = *(v14 + 16);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type MaskDefaultForeground and conformance MaskDefaultForeground();
    v32 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v80[0]) = 1;
    v33 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI19ResolvedShapeStyles33_B62A4B04AF9F1325924A089D63071424LLV_14AttributeGraph0O0VyAC01_F10Style_PackVGTt0g5Tf4g_n(v24);
    type metadata accessor for MutableBox<CachedEnvironment>(0, v34, v35, v36);
    v37 = swift_allocObject();
    *(v37 + 16) = v32;
    *(v37 + 24) = v24;
    *(v37 + 32) = 0u;
    *(v37 + 48) = 0u;
    *(v37 + 64) = 0u;
    *(v37 + 80) = 256;
    *(v37 + 88) = v33;

    *&v89 = v37;
    if ((v23 & 0x20) == 0)
    {
      LODWORD(v90[0]) = v23 | 0x20;
    }

    v31 = v25;
  }

  v78[2] = *v99;
  v78[3] = *&v99[16];
  v78[4] = *&v99[32];
  v79 = *&v99[48];
  v78[0] = v97;
  v78[1] = v98;
  v84 = *v99;
  v85 = *&v99[16];
  v86 = *&v99[32];
  v87 = *&v99[48];
  v82 = v97;
  v83 = v98;
  v38 = outlined init with copy of _ViewInputs(v78, v80);
  a7(&v68, v38, &v82);
  outlined destroy of _ViewInputs(v78);
  v80[2] = v90[0];
  v80[3] = v90[1];
  v80[4] = v90[2];
  v81 = v90[3];
  v80[0] = v88;
  v80[1] = v89;
  v74 = v90[0];
  v75 = v90[1];
  v76 = v90[2];
  v77 = v90[3];
  v72 = v88;
  v73 = v89;
  outlined init with copy of _ViewInputs(v80, &v82);
  a2(&v66, &v72);
  v84 = v74;
  v85 = v75;
  v86 = v76;
  v87 = v77;
  v82 = v72;
  v83 = v73;
  v39 = outlined destroy of _ViewInputs(&v82);
  if ((v31 & 1) == 0)
  {
    v43 = 0;
    v44 = a9;
    v41 = v61;
    if ((a4 & 1) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  v40 = ++lastIdentity;
  v41 = v61;
  if ((v61 & 0x100) == 0)
  {
    v42 = *MEMORY[0x1E698D3F8];
    goto LABEL_43;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(v59, &v72);
  Attribute = AGWeakAttributeGetAttribute();
  v42 = *MEMORY[0x1E698D3F8];
  if (Attribute == *MEMORY[0x1E698D3F8])
  {
LABEL_56:
    __break(1u);
  }

  LODWORD(v70[0]) = v40;
  v50 = Attribute<A>.subscript.modify(&v72, Attribute);
  v51 = _DisplayList_StableIdentityScope.pushIdentity(_:)(v70);
  (v50)(&v72, 0, v51);
LABEL_43:
  v74 = v102;
  v75 = v103;
  v76 = v104;
  v77 = v105;
  v72 = v100;
  v73 = v101;
  swift_beginAccess();
  v52 = CachedEnvironment.animatedPosition(for:)(&v72);
  v74 = v102;
  v75 = v103;
  v76 = v104;
  v77 = v105;
  v72 = v100;
  v73 = v101;
  v53 = CachedEnvironment.animatedCGSize(for:)(&v72);
  swift_endAccess();
  v54 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v68);
  if ((v54 & 0x100000000) != 0)
  {
    v55 = v42;
  }

  else
  {
    v55 = v54;
  }

  v56 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v66);
  if ((v56 & 0x100000000) == 0)
  {
    v42 = v56;
  }

  BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
  v57 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v59, v72);
  if (v57)
  {
    v58 = *(v57 + 72);
  }

  else
  {
    v58 = 0;
  }

  v44 = a9;
  *&v72 = __PAIR64__(v52, v40);
  *(&v72 + 1) = __PAIR64__(DWORD1(v104), v53);
  *&v73 = __PAIR64__(v42, v55);
  BYTE8(v73) = v58;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type MaskDisplayList and conformance MaskDisplayList();
  v39 = Attribute.init<A>(body:value:flags:update:)();
  v43 = v39;
  if (a4)
  {
LABEL_34:
    v45 = v68;
    v68 = v66;
    v66 = v45;
    v46 = v69;
    v69 = v67;
    v67 = v46;
  }

LABEL_35:
  if ((v41 & 0x20) != 0)
  {
    MEMORY[0x1EEE9AC00](v39);
    MEMORY[0x1EEE9AC00](v48);
    AGGraphMutateAttribute();
    if ((v31 & 1) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  if (v31)
  {
LABEL_37:
    LOBYTE(v72) = (v31 ^ 1) & 1;
    PreferencesOutputs.subscript.setter(v43 | (v72 << 32), &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
  }

LABEL_38:
  v70[2] = *v99;
  v70[3] = *&v99[16];
  v70[4] = *&v99[32];
  v71 = *&v99[48];
  v70[0] = v97;
  v70[1] = v98;
  outlined destroy of _ViewInputs(v70);
  *v44 = v68;
  v44[1] = v69;

  v74 = v90[0];
  v75 = v90[1];
  v76 = v90[2];
  v77 = v90[3];
  v72 = v88;
  v73 = v89;
  outlined destroy of _ViewInputs(&v72);

  return result;
}

{
  v106 = *MEMORY[0x1E69E9840];
  v11 = *(a1 + 48);
  v102 = *(a1 + 32);
  v103 = v11;
  v104 = *(a1 + 64);
  v105 = *(a1 + 80);
  v12 = *(a1 + 16);
  v100 = *a1;
  v101 = v12;
  v13 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v11);
  v59 = v100;
  v14 = v101;
  v15 = DWORD1(v102);
  v16 = *(a1 + 48);
  *v99 = *(a1 + 32);
  *&v99[16] = v16;
  *&v99[32] = *(a1 + 64);
  *&v99[48] = *(a1 + 80);
  v17 = *(a1 + 16);
  v97 = *a1;
  v98 = v17;
  if ((WORD2(v102) & 0x100) != 0)
  {
    outlined init with copy of _ViewInputs(&v100, &v91);
    specialized _GraphInputs.pushScope<A>(id:)(0);
    if ((v15 & 0x20) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    outlined init with copy of _ViewInputs(&v100, &v91);
    if ((v15 & 0x20) == 0)
    {
      goto LABEL_11;
    }
  }

  *&v99[4] = v15 | 2;
  v93 = v102;
  v94 = v103;
  v95 = v104;
  v96 = v105;
  v91 = v100;
  v92 = v101;
  swift_beginAccess();
  v18 = CachedEnvironment.animatedPosition(for:)(&v91);
  swift_endAccess();
  *&v99[36] = v18;
  if (one-time initialization token for layoutDirection != -1)
  {
    swift_once();
  }

  v19 = static CachedEnvironment.ID.layoutDirection;
  swift_beginAccess();
  v20 = specialized CachedEnvironment.attribute<A>(id:_:)(v19, closure #1 in _GraphInputs.layoutDirection.getter, 0);
  swift_endAccess();
  v21 = *MEMORY[0x1E698D3F8];
  if ((a6 & 0x100000000) != 0)
  {
    v22 = *MEMORY[0x1E698D3F8];
  }

  else
  {
    v22 = a6;
  }

  *&v91 = __PAIR64__(v20, v22);
  *(&v91 + 1) = __PAIR64__(DWORD2(v104), v104);
  LODWORD(v92) = v21;
  DWORD1(v92) = v21;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type SecondaryLayerGeometryQuery and conformance SecondaryLayerGeometryQuery();
  Attribute.init<A>(body:value:flags:update:)();
LABEL_11:
  v93 = *v99;
  v94 = *&v99[16];
  v95 = *&v99[32];
  v96 = *&v99[48];
  v91 = v97;
  v92 = v98;
  v23 = *v99;
  v88 = v97;
  v89 = v98;
  LODWORD(v90[3]) = *&v99[48];
  v90[1] = *&v99[16];
  v90[2] = *&v99[32];
  v90[0] = *v99;
  if ((*&v99[4] & 0x100) != 0)
  {
    outlined init with copy of _ViewInputs(&v91, &v82);
    specialized _GraphInputs.pushScope<A>(id:)(1);
  }

  else
  {
    outlined init with copy of _ViewInputs(&v91, &v82);
  }

  v61 = v15;
  if ((v15 & 0x20) != 0)
  {
    LODWORD(v90[2]) = AGGraphCreateOffsetAttribute2();
    v23 = LODWORD(v90[0]) | 0x18;
    DWORD2(v90[2]) = AGGraphCreateOffsetAttribute2();
    LODWORD(v90[0]) = v23;
  }

  v24 = MEMORY[0x1E69E7CC0];
  *&v90[1] = MEMORY[0x1E69E7CC0];
  v25 = v13;
  if (v13)
  {
    *&v82 = MEMORY[0x1E69E7CC0];
    v26 = PreferenceKeys._index(of:)(&type metadata for DisplayList.Key);

    v27 = *(v24 + 16);
    if (v26 != v27)
    {
      if (v26 >= v27)
      {
        goto LABEL_55;
      }

      if (*(v24 + 16 * v26 + 32) == &type metadata for DisplayList.Key)
      {
        goto LABEL_24;
      }
    }

    if (v27 >= v26)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v90[1] = v24;
      if (!isUniquelyReferenced_nonNull_native || (v29 = v24, v27 >= *(v24 + 24) >> 1))
      {
        v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v27 + 1, 1, MEMORY[0x1E69E7CC0]);
        *&v90[1] = v29;
      }

      specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v26, v26, 1, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
      *&v90[1] = v29;
      goto LABEL_24;
    }

    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

LABEL_24:
  if (a4)
  {
    v80[0] = v97;
    v30 = v98;
    v23 = *v99;
    v82 = *&v99[4];
    v83 = *&v99[20];
    v84 = *&v99[36];
    v97 = v88;
    v98 = v89;
    *&v99[48] = v90[3];
    *&v99[16] = v90[1];
    *&v99[32] = v90[2];
    *v99 = v90[0];
    v88 = v80[0];
    v89 = v30;
    LODWORD(v90[0]) = v23;
    *(&v90[2] + 4) = v84;
    *(&v90[1] + 4) = v83;
    *(v90 + 4) = v82;
  }

  v31 = v25;
  if (a5)
  {
    swift_beginAccess();
    LODWORD(v82) = *(v14 + 16);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type MaskDefaultForeground and conformance MaskDefaultForeground();
    v32 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v80[0]) = 1;
    v33 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI19ResolvedShapeStyles33_B62A4B04AF9F1325924A089D63071424LLV_14AttributeGraph0O0VyAC01_F10Style_PackVGTt0g5Tf4g_n(v24);
    type metadata accessor for MutableBox<CachedEnvironment>(0, v34, v35, v36);
    v37 = swift_allocObject();
    *(v37 + 16) = v32;
    *(v37 + 24) = v24;
    *(v37 + 32) = 0u;
    *(v37 + 48) = 0u;
    *(v37 + 64) = 0u;
    *(v37 + 80) = 256;
    *(v37 + 88) = v33;

    *&v89 = v37;
    if ((v23 & 0x20) == 0)
    {
      LODWORD(v90[0]) = v23 | 0x20;
    }

    v31 = v25;
  }

  v78[2] = *v99;
  v78[3] = *&v99[16];
  v78[4] = *&v99[32];
  v79 = *&v99[48];
  v78[0] = v97;
  v78[1] = v98;
  v84 = *v99;
  v85 = *&v99[16];
  v86 = *&v99[32];
  v87 = *&v99[48];
  v82 = v97;
  v83 = v98;
  outlined init with copy of _ViewInputs(v78, v80);
  a2(&v68, &v82);
  v80[2] = v84;
  v80[3] = v85;
  v80[4] = v86;
  v81 = v87;
  v80[0] = v82;
  v80[1] = v83;
  outlined destroy of _ViewInputs(v80);
  v84 = v90[0];
  v85 = v90[1];
  v86 = v90[2];
  v87 = v90[3];
  v82 = v88;
  v83 = v89;
  v74 = v90[0];
  v75 = v90[1];
  v76 = v90[2];
  v77 = v90[3];
  v72 = v88;
  v73 = v89;
  v38 = outlined init with copy of _ViewInputs(&v82, v70);
  a7(&v66, v38, &v72);
  v39 = outlined destroy of _ViewInputs(&v82);
  if ((v31 & 1) == 0)
  {
    v43 = 0;
    v44 = a9;
    v41 = v61;
    if ((a4 & 1) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  v40 = ++lastIdentity;
  v41 = v61;
  if ((v61 & 0x100) == 0)
  {
    v42 = *MEMORY[0x1E698D3F8];
    goto LABEL_43;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(v59, &v72);
  Attribute = AGWeakAttributeGetAttribute();
  v42 = *MEMORY[0x1E698D3F8];
  if (Attribute == *MEMORY[0x1E698D3F8])
  {
LABEL_56:
    __break(1u);
  }

  LODWORD(v70[0]) = v40;
  v50 = Attribute<A>.subscript.modify(&v72, Attribute);
  v51 = _DisplayList_StableIdentityScope.pushIdentity(_:)(v70);
  (v50)(&v72, 0, v51);
LABEL_43:
  v74 = v102;
  v75 = v103;
  v76 = v104;
  v77 = v105;
  v72 = v100;
  v73 = v101;
  swift_beginAccess();
  v52 = CachedEnvironment.animatedPosition(for:)(&v72);
  v74 = v102;
  v75 = v103;
  v76 = v104;
  v77 = v105;
  v72 = v100;
  v73 = v101;
  v53 = CachedEnvironment.animatedCGSize(for:)(&v72);
  swift_endAccess();
  v54 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v68);
  if ((v54 & 0x100000000) != 0)
  {
    v55 = v42;
  }

  else
  {
    v55 = v54;
  }

  v56 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v66);
  if ((v56 & 0x100000000) == 0)
  {
    v42 = v56;
  }

  BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
  v57 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v59, v72);
  if (v57)
  {
    v58 = *(v57 + 72);
  }

  else
  {
    v58 = 0;
  }

  v44 = a9;
  *&v72 = __PAIR64__(v52, v40);
  *(&v72 + 1) = __PAIR64__(DWORD1(v104), v53);
  *&v73 = __PAIR64__(v42, v55);
  BYTE8(v73) = v58;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type MaskDisplayList and conformance MaskDisplayList();
  v39 = Attribute.init<A>(body:value:flags:update:)();
  v43 = v39;
  if (a4)
  {
LABEL_34:
    v45 = v68;
    v68 = v66;
    v66 = v45;
    v46 = v69;
    v69 = v67;
    v67 = v46;
  }

LABEL_35:
  if ((v41 & 0x20) != 0)
  {
    MEMORY[0x1EEE9AC00](v39);
    MEMORY[0x1EEE9AC00](v48);
    AGGraphMutateAttribute();
    if ((v31 & 1) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  if (v31)
  {
LABEL_37:
    LOBYTE(v72) = (v31 ^ 1) & 1;
    PreferencesOutputs.subscript.setter(v43 | (v72 << 32), &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
  }

LABEL_38:
  v70[2] = *v99;
  v70[3] = *&v99[16];
  v70[4] = *&v99[32];
  v71 = *&v99[48];
  v70[0] = v97;
  v70[1] = v98;
  outlined destroy of _ViewInputs(v70);
  *v44 = v68;
  v44[1] = v69;

  v74 = v90[0];
  v75 = v90[1];
  v76 = v90[2];
  v77 = v90[3];
  v72 = v88;
  v73 = v89;
  outlined destroy of _ViewInputs(&v72);

  return result;
}

void lazy protocol witness table accessor for type MaskDefaultForeground and conformance MaskDefaultForeground()
{
  if (!lazy protocol witness table cache variable for type MaskDefaultForeground and conformance MaskDefaultForeground)
  {
    swift_getWitnessTable(protocol conformance descriptor for MaskDefaultForeground, &type metadata for MaskDefaultForeground, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type MaskDefaultForeground and conformance MaskDefaultForeground);
  }
}

void *makeMask #1 <A>(inputs:) in static _MaskAlignmentEffect._makeView(modifier:inputs:body:)@<X0>(__int128 *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(uint64_t, uint64_t, uint64_t)@<X4>, uint64_t (*a6)(uint64_t)@<X5>, uint64_t a7@<X8>)
{
  v47 = *MEMORY[0x1E69E9840];
  v11 = a1[3];
  v43 = a1[2];
  v44 = v11;
  v45 = a1[4];
  v46 = *(a1 + 20);
  v12 = a1[1];
  v41 = *a1;
  v42 = v12;
  v23 = a3;
  v24 = a4;
  v22[1] = a2;
  v13 = a5(255, a3, a4);
  type metadata accessor for _GraphValue(0, v13, v14, v15);
  _GraphValue.subscript.getter(a6, a3, v22);
  v16 = v22[0];
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v33 = v43;
  v34 = v44;
  v35 = v45;
  v36 = v46;
  v31 = v41;
  v32 = v42;
  v18 = v43;
  LODWORD(v33) = 0;
  v21 = v16;
  v37[0] = v41;
  v37[1] = v42;
  v38 = v46;
  v37[3] = v44;
  v37[4] = v45;
  v37[2] = v33;
  v27 = v33;
  v28 = v44;
  v29 = v45;
  v30 = v46;
  v25 = v41;
  v26 = v42;
  v19 = *(a4 + 24);
  outlined init with copy of _ViewInputs(&v41, v39);
  outlined init with copy of _ViewInputs(v37, v39);
  v19(&v21, &v25, a3, a4);
  v39[2] = v27;
  v39[3] = v28;
  v39[4] = v29;
  v40 = v30;
  v39[0] = v25;
  v39[1] = v26;
  outlined destroy of _ViewInputs(v39);
  LODWORD(v33) = v18;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(a7, &v31);
    AGSubgraphEndTreeElement();
  }

  v27 = v33;
  v28 = v34;
  v29 = v35;
  v30 = v36;
  v25 = v31;
  v26 = v32;
  return outlined destroy of _ViewInputs(&v25);
}

uint64_t closure #1 in makeMask #1 <A>(inputs:) in static _MaskEffect._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[2] = type metadata accessor for _MaskEffect(0, a2, a3, a4);
  v9[3] = a2;
  v6 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v9, a2, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  return v9[5];
}

uint64_t specialized static View.makeViewList(view:inputs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v3, v17);
  v6 = v17[0];
  v7 = v17[1];
  v8 = v18;
  v9 = v19;
  outlined init with copy of _ViewListInputs(a2, v17);
  if (AGTypeGetKind() - 2 <= 3)
  {
    LOBYTE(v15[0]) = v8;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(v17, v6, v7, v8 | (v9 << 32), a1, v15);
    v10 = v15[1];
    v11 = v15[2];
    v12 = v16;
    type metadata accessor for _ShapeView<Rectangle, ForegroundStyle>(0);
    if (AGSubgraphShouldRecordTree())
    {
      AGSubgraphBeginTreeElement();
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleVAA15ForegroundStyleVG_Tt2B5(v17, a3);
      AGSubgraphEndTreeElement();
      if (v12)
      {
        goto LABEL_7;
      }
    }

    else
    {
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleVAA15ForegroundStyleVG_Tt2B5(v17, a3);
      if (v12)
      {
LABEL_7:
        outlined destroy of _ViewListInputs(v17);
        return outlined consume of DynamicPropertyCache.Fields.Layout(v6, v7, v8);
      }
    }

    LOBYTE(v15[0]) = v8;
    specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v6, v7, (v9 << 32) | v8, v10, v11);
    goto LABEL_7;
  }

  _StringGuts.grow(_:)(70);
  MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
  MEMORY[0x193ABEDD0](0x6C676E6174636552, 0xE900000000000065);
  MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v20 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v3, v17);
  v6 = v17[0];
  v7 = v17[1];
  v8 = v18;
  v9 = v19;
  outlined init with copy of _ViewListInputs(a2, v17);
  if (AGTypeGetKind() - 2 <= 3)
  {
    LOBYTE(v15[0]) = v8;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(v17, v6, v7, v8 | (v9 << 32), a1, v15);
    v10 = v15[1];
    v11 = v15[2];
    v12 = v16;
    type metadata accessor for _ShapeView<Rectangle, LinearGradient>(0);
    if (AGSubgraphShouldRecordTree())
    {
      AGSubgraphBeginTreeElement();
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleVAA14LinearGradientVG_Tt2B5(v17, a3);
      AGSubgraphEndTreeElement();
      if (v12)
      {
        goto LABEL_7;
      }
    }

    else
    {
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleVAA14LinearGradientVG_Tt2B5(v17, a3);
      if (v12)
      {
LABEL_7:
        outlined destroy of _ViewListInputs(v17);
        return outlined consume of DynamicPropertyCache.Fields.Layout(v6, v7, v8);
      }
    }

    LOBYTE(v15[0]) = v8;
    specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v6, v7, (v9 << 32) | v8, v10, v11);
    goto LABEL_7;
  }

  _StringGuts.grow(_:)(70);
  MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
  MEMORY[0x193ABEDD0](0x72477261656E694CLL, 0xEE00746E65696461);
  MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v20 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v3, v17);
  v6 = v17[0];
  v7 = v17[1];
  v8 = v18;
  v9 = v19;
  outlined init with copy of _ViewListInputs(a2, v17);
  if (AGTypeGetKind() - 2 <= 3)
  {
    LOBYTE(v15[0]) = v8;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(v17, v6, v7, v8 | (v9 << 32), a1, v15);
    v10 = v15[1];
    v11 = v15[2];
    v12 = v16;
    type metadata accessor for _ShapeView<Circle, ForegroundStyle>(0);
    if (AGSubgraphShouldRecordTree())
    {
      AGSubgraphBeginTreeElement();
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA6CircleVAA15ForegroundStyleVG_Tt2B5(v17, a3);
      AGSubgraphEndTreeElement();
      if (v12)
      {
        goto LABEL_7;
      }
    }

    else
    {
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA6CircleVAA15ForegroundStyleVG_Tt2B5(v17, a3);
      if (v12)
      {
LABEL_7:
        outlined destroy of _ViewListInputs(v17);
        return outlined consume of DynamicPropertyCache.Fields.Layout(v6, v7, v8);
      }
    }

    LOBYTE(v15[0]) = v8;
    specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v6, v7, (v9 << 32) | v8, v10, v11);
    goto LABEL_7;
  }

  _StringGuts.grow(_:)(70);
  MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
  MEMORY[0x193ABEDD0](0x656C63726943, 0xE600000000000000);
  MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v20 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v3, v17);
  v6 = v17[0];
  v7 = v17[1];
  v8 = v18;
  v9 = v19;
  outlined init with copy of _ViewListInputs(a2, v17);
  if (AGTypeGetKind() - 2 <= 3)
  {
    LOBYTE(v15[0]) = v8;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(v17, v6, v7, v8 | (v9 << 32), a1, v15);
    v10 = v15[1];
    v11 = v15[2];
    v12 = v16;
    type metadata accessor for _ShapeView<AnyShape, ForegroundStyle>(0);
    if (AGSubgraphShouldRecordTree())
    {
      AGSubgraphBeginTreeElement();
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA03AnyL0VAA15ForegroundStyleVG_Tt2B5(v17, a3);
      AGSubgraphEndTreeElement();
      if (v12)
      {
        goto LABEL_7;
      }
    }

    else
    {
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA03AnyL0VAA15ForegroundStyleVG_Tt2B5(v17, a3);
      if (v12)
      {
LABEL_7:
        outlined destroy of _ViewListInputs(v17);
        return outlined consume of DynamicPropertyCache.Fields.Layout(v6, v7, v8);
      }
    }

    LOBYTE(v15[0]) = v8;
    specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v6, v7, (v9 << 32) | v8, v10, v11);
    goto LABEL_7;
  }

  _StringGuts.grow(_:)(70);
  MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
  MEMORY[0x193ABEDD0](0x6570616853796E41, 0xE800000000000000);
  MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v20 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v3, v17);
  v6 = v17[0];
  v7 = v17[1];
  v8 = v18;
  v9 = v19;
  outlined init with copy of _ViewListInputs(a2, v17);
  if (AGTypeGetKind() - 2 < 4)
  {
    type metadata accessor for _ShapeView<RoundedRectangle, ForegroundStyle>(0);
    LOBYTE(v15[0]) = v8;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(v17, v6, v7, v8 | (v9 << 32), a1, v15);
    v10 = v15[1];
    v11 = v15[2];
    v12 = v16;
    if (AGSubgraphShouldRecordTree())
    {
      AGSubgraphBeginTreeElement();
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA16RoundedRectangleVAA15ForegroundStyleVG_Tt2B5(v17, a3);
      AGSubgraphEndTreeElement();
      if (v12)
      {
        goto LABEL_7;
      }
    }

    else
    {
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA16RoundedRectangleVAA15ForegroundStyleVG_Tt2B5(v17, a3);
      if (v12)
      {
LABEL_7:
        outlined destroy of _ViewListInputs(v17);
        return outlined consume of DynamicPropertyCache.Fields.Layout(v6, v7, v8);
      }
    }

    LOBYTE(v15[0]) = v8;
    specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v6, v7, (v9 << 32) | v8, v10, v11);
    goto LABEL_7;
  }

  _StringGuts.grow(_:)(70);
  MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
  MEMORY[0x193ABEDD0](0xD000000000000010, 0x800000018DD78EF0);
  MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v20 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v3, v17);
  v6 = v17[0];
  v7 = v17[1];
  v8 = v18;
  v9 = v19;
  outlined init with copy of _ViewListInputs(a2, v17);
  if (AGTypeGetKind() - 2 < 4)
  {
    type metadata accessor for _ShapeView<ContainerRelativeShape, ForegroundStyle>(0);
    LOBYTE(v15[0]) = v8;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(v17, v6, v7, v8 | (v9 << 32), a1, v15);
    v10 = v15[1];
    v11 = v15[2];
    v12 = v16;
    if (AGSubgraphShouldRecordTree())
    {
      AGSubgraphBeginTreeElement();
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA017ContainerRelativeL0VAA15ForegroundStyleVG_Tt2B5(v17, a3);
      AGSubgraphEndTreeElement();
      if (v12)
      {
        goto LABEL_7;
      }
    }

    else
    {
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA017ContainerRelativeL0VAA15ForegroundStyleVG_Tt2B5(v17, a3);
      if (v12)
      {
LABEL_7:
        outlined destroy of _ViewListInputs(v17);
        return outlined consume of DynamicPropertyCache.Fields.Layout(v6, v7, v8);
      }
    }

    LOBYTE(v15[0]) = v8;
    specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v6, v7, (v9 << 32) | v8, v10, v11);
    goto LABEL_7;
  }

  _StringGuts.grow(_:)(70);
  MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
  MEMORY[0x193ABEDD0](0xD000000000000016, 0x800000018DD78E90);
  MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v20 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v3, v17);
  v6 = v17[0];
  v7 = v17[1];
  v8 = v18;
  v9 = v19;
  outlined init with copy of _ViewListInputs(a2, v17);
  if (AGTypeGetKind() - 2 <= 3)
  {
    LOBYTE(v15[0]) = v8;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(v17, v6, v7, v8 | (v9 << 32), a1, v15);
    v10 = v15[1];
    v11 = v15[2];
    v12 = v16;
    type metadata accessor for _ShapeView<Path, ForegroundStyle>(0);
    if (AGSubgraphShouldRecordTree())
    {
      AGSubgraphBeginTreeElement();
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA4PathVAA15ForegroundStyleVG_Tt2B5(v17, a3);
      AGSubgraphEndTreeElement();
      if (v12)
      {
        goto LABEL_7;
      }
    }

    else
    {
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA4PathVAA15ForegroundStyleVG_Tt2B5(v17, a3);
      if (v12)
      {
LABEL_7:
        outlined destroy of _ViewListInputs(v17);
        return outlined consume of DynamicPropertyCache.Fields.Layout(v6, v7, v8);
      }
    }

    LOBYTE(v15[0]) = v8;
    specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v6, v7, (v9 << 32) | v8, v10, v11);
    goto LABEL_7;
  }

  _StringGuts.grow(_:)(70);
  MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
  MEMORY[0x193ABEDD0](1752457552, 0xE400000000000000);
  MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v20 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v3, v17);
  v8 = v17[0];
  v7 = v17[1];
  v9 = v18;
  v10 = v19;
  outlined init with copy of _ViewListInputs(a2, v17);
  if (AGTypeGetKind() - 2 >= 4)
  {
    _StringGuts.grow(_:)(70);
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](0xD000000000000011, 0x800000018DD78DF0);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    LOBYTE(v15[0]) = v9;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(v17, v8, v7, v9 | (v10 << 32), a1, v15);
    v11 = v15[1];
    v12 = v15[2];
    v13 = v16;
    if (AGSubgraphShouldRecordTree())
    {
      type metadata accessor for _ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>(0);
      AGSubgraphBeginTreeElement();
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleVAAE17AsymmetricalInsetVAA15ForegroundStyleVG_Tt2B5(v17, a3);
      AGSubgraphEndTreeElement();
      if ((v13 & 1) == 0)
      {
LABEL_4:
        LOBYTE(v15[0]) = v9;
        specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v8, v7, (v10 << 32) | v9, v11, v12);
        outlined consume of DynamicPropertyCache.Fields.Layout(v8, v7, v9);
        return outlined destroy of _ViewListInputs(v17);
      }
    }

    else
    {
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleVAAE17AsymmetricalInsetVAA15ForegroundStyleVG_Tt2B5(v17, a3);
      if ((v13 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    outlined destroy of _ViewListInputs(v17);
    return outlined consume of DynamicPropertyCache.Fields.Layout(v8, v7, v9);
  }

  return result;
}

{
  v19 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v3, &v16);
  v7 = v16;
  v8 = v17;
  v9 = v18;
  outlined init with copy of _ViewListInputs(a2, &v16);
  if (AGTypeGetKind() - 2 >= 4)
  {
    _StringGuts.grow(_:)(70);
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](0xD00000000000001ALL, 0x800000018DD78D90);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    LOBYTE(v14[0]) = v8;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v16, v7, *(&v7 + 1), v8 | (v9 << 32), a1, v14);
    v10 = v14[1];
    v11 = v14[2];
    v12 = v15;
    if (AGSubgraphShouldRecordTree())
    {
      type metadata accessor for ModifiedContent<GeometryReader<ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>, _GeometryGroupEffect>(0);
      AGSubgraphBeginTreeElement();
      _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA14GeometryReaderVyACyAA22GlassContainerResolverVyACyAA6ZStackVyAA7ForEachVySayAA0qR0O6EffectVGAZ15DisplayMaterialV2IDVACyAA0qwE033_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA013_TraitWritingF0VyAA18TransitionTraitKeyVGGGGAA0qr10TintConfigF033_EC08899B622ECCACC85E95BA1EEBE316LLVGGAA21_BackdropGroupEffect2VGG_AA01_o5GroupW0VTt2B5(&v16, a3);
      AGSubgraphEndTreeElement();
      if ((v12 & 1) == 0)
      {
LABEL_4:
        LOBYTE(v14[0]) = v8;
        specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v7, *(&v7 + 1), (v9 << 32) | v8, v10, v11);
        outlined consume of DynamicPropertyCache.Fields.Layout(v7, *(&v7 + 1), v8);
        return outlined destroy of _ViewListInputs(&v16);
      }
    }

    else
    {
      _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA14GeometryReaderVyACyAA22GlassContainerResolverVyACyAA6ZStackVyAA7ForEachVySayAA0qR0O6EffectVGAZ15DisplayMaterialV2IDVACyAA0qwE033_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA013_TraitWritingF0VyAA18TransitionTraitKeyVGGGGAA0qr10TintConfigF033_EC08899B622ECCACC85E95BA1EEBE316LLVGGAA21_BackdropGroupEffect2VGG_AA01_o5GroupW0VTt2B5(&v16, a3);
      if ((v12 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    outlined destroy of _ViewListInputs(&v16);
    return outlined consume of DynamicPropertyCache.Fields.Layout(v7, *(&v7 + 1), v8);
  }

  return result;
}

{
  v20 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v3, v17);
  v8 = v17[0];
  v7 = v17[1];
  v9 = v18;
  v10 = v19;
  outlined init with copy of _ViewListInputs(a2, v17);
  if (AGTypeGetKind() - 2 >= 4)
  {
    _StringGuts.grow(_:)(70);
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](0xD00000000000003ELL, 0x800000018DD78F90);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    LOBYTE(v15[0]) = v9;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(v17, v8, v7, v9 | (v10 << 32), a1, v15);
    v11 = v15[1];
    v12 = v15[2];
    v13 = v16;
    if (AGSubgraphShouldRecordTree())
    {
      type metadata accessor for FontBox<Font.PlatformFontProvider>(0, &lazy cache variable for type metadata for GeometryReader<GlassEntryView>, lazy protocol witness table accessor for type GlassEntryView and conformance GlassEntryView, &type metadata for GlassEntryView, type metadata accessor for GeometryReader);
      AGSubgraphBeginTreeElement();
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA14GeometryReaderVyAA010GlassEntryC033_D12F2F25A0BD65FFBD3A7636B60067DFLLVG_Tt2B5(v17, a3);
      AGSubgraphEndTreeElement();
      if ((v13 & 1) == 0)
      {
LABEL_4:
        LOBYTE(v15[0]) = v9;
        specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v8, v7, (v10 << 32) | v9, v11, v12);
        outlined consume of DynamicPropertyCache.Fields.Layout(v8, v7, v9);
        return outlined destroy of _ViewListInputs(v17);
      }
    }

    else
    {
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA14GeometryReaderVyAA010GlassEntryC033_D12F2F25A0BD65FFBD3A7636B60067DFLLVG_Tt2B5(v17, a3);
      if ((v13 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    outlined destroy of _ViewListInputs(v17);
    return outlined consume of DynamicPropertyCache.Fields.Layout(v8, v7, v9);
  }

  return result;
}

{
  v20 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v3, v17);
  v8 = v17[0];
  v7 = v17[1];
  v9 = v18;
  v10 = v19;
  outlined init with copy of _ViewListInputs(a2, v17);
  if (AGTypeGetKind() - 2 >= 4)
  {
    _StringGuts.grow(_:)(70);
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](0xD00000000000003BLL, 0x800000018DD78E10);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    LOBYTE(v15[0]) = v9;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(v17, v8, v7, v9 | (v10 << 32), a1, v15);
    v11 = v15[1];
    v12 = v15[2];
    v13 = v16;
    if (AGSubgraphShouldRecordTree())
    {
      type metadata accessor for _ShapeView<CombinedContentShape, ForegroundStyle>(0);
      AGSubgraphBeginTreeElement();
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA015CombinedContentL033_6E67AD6866B38627EB183D41FF0BA80ALLVAA15ForegroundStyleVG_Tt2B5(v17, a3);
      AGSubgraphEndTreeElement();
      if ((v13 & 1) == 0)
      {
LABEL_4:
        LOBYTE(v15[0]) = v9;
        specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v8, v7, (v10 << 32) | v9, v11, v12);
        outlined consume of DynamicPropertyCache.Fields.Layout(v8, v7, v9);
        return outlined destroy of _ViewListInputs(v17);
      }
    }

    else
    {
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA015CombinedContentL033_6E67AD6866B38627EB183D41FF0BA80ALLVAA15ForegroundStyleVG_Tt2B5(v17, a3);
      if ((v13 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    outlined destroy of _ViewListInputs(v17);
    return outlined consume of DynamicPropertyCache.Fields.Layout(v8, v7, v9);
  }

  return result;
}

{
  v21 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v3, v18);
  v8 = v18[0];
  v7 = v18[1];
  v9 = v19;
  v10 = v20;
  outlined init with copy of _ViewListInputs(a2, v18);
  if (AGTypeGetKind() - 2 >= 4)
  {
    _StringGuts.grow(_:)(70);
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](0xD000000000000036, 0x800000018DD78F50);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    LOBYTE(v16[0]) = v9;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(v18, v8, v7, v9 | (v10 << 32), a1, v16);
    v11 = LODWORD(v16[0]);
    v12 = v16[1];
    v13 = v16[2];
    v14 = v17;
    if (AGSubgraphShouldRecordTree())
    {
      type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>, GlassEffectContainerModifier>(0, &lazy cache variable for type metadata for ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEffectLayout>, ForEach<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>>, GlassMaterialEffect>, type metadata accessor for _VariadicView.Tree<_LayoutRoot<GlassEffectLayout>, ForEach<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>>, &type metadata for GlassMaterialEffect);
      AGSubgraphBeginTreeElement();
      _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA09_VariadicE0O4TreeVy_AA11_LayoutRootVyAA011GlassEffectQ033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA7ForEachVySayAA0S9ContainerO5EntryVGA4_8StableIDVACyACyAA6ZStackVyAA0s14EntryContainerE0AXLLVGAA013_TraitWritingF0VyAA01_Q5TraitVyAY3KeyVGGGA14_yAA18TransitionTraitKeyVGGGG_AA0s8MaterialT033_62A32D59B8A902A88963544196023CF7LLVTt2B5(v11, v18, a3);
      AGSubgraphEndTreeElement();
      if ((v14 & 1) == 0)
      {
LABEL_4:
        LOBYTE(v16[0]) = v9;
        specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v8, v7, (v10 << 32) | v9, v12, v13);
        outlined consume of DynamicPropertyCache.Fields.Layout(v8, v7, v9);
        return outlined destroy of _ViewListInputs(v18);
      }
    }

    else
    {
      _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA09_VariadicE0O4TreeVy_AA11_LayoutRootVyAA011GlassEffectQ033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA7ForEachVySayAA0S9ContainerO5EntryVGA4_8StableIDVACyACyAA6ZStackVyAA0s14EntryContainerE0AXLLVGAA013_TraitWritingF0VyAA01_Q5TraitVyAY3KeyVGGGA14_yAA18TransitionTraitKeyVGGGG_AA0s8MaterialT033_62A32D59B8A902A88963544196023CF7LLVTt2B5(v11, v18, a3);
      if ((v14 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    outlined destroy of _ViewListInputs(v18);
    return outlined consume of DynamicPropertyCache.Fields.Layout(v8, v7, v9);
  }

  return result;
}

{
  v21 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v3, v18);
  v8 = v18[0];
  v7 = v18[1];
  v9 = v19;
  v10 = v20;
  outlined init with copy of _ViewListInputs(a2, v18);
  if (AGTypeGetKind() - 2 >= 4)
  {
    _StringGuts.grow(_:)(70);
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](0xD000000000000035, 0x800000018DD78FD0);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    LOBYTE(v16[0]) = v9;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(v18, v8, v7, v9 | (v10 << 32), a1, v16);
    v11 = LODWORD(v16[0]);
    v12 = v16[1];
    v13 = v16[2];
    v14 = v17;
    if (AGSubgraphShouldRecordTree())
    {
      type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>, GlassEffectPlatformItemModifier>, GlassEntryInteractionModifier>, GlassEntryFlexInteractionModifier>, GlassTransitionStateModifier>, ScheduledAnimationModifier<Int>>(0);
      AGSubgraphBeginTreeElement();
      _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyACyACyACyACyAA09_VariadicE0O4TreeVy_AA11_LayoutRootVyAA010GlassEntryQ033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA7ForEachVySayAA0S9ContainerO4ItemVGA4_2IDVAA0s4ItemE0AXLLVGGAA0s11EffectShapeF033_62A32D59B8A902A88963544196023CF7LLVGAA0s18EffectPlatformItemF0AXLLVGAA0st11InteractionF0AXLLVGAA0st15FlexInteractionF0AXLLVGAA0s15TransitionStateF0AXLLVG_AA018ScheduledAnimationF0020_94C2570E898B27608B6V11D65EF8A1A07LLVySiGTt2B5(v11, v18, a3);
      AGSubgraphEndTreeElement();
      if ((v14 & 1) == 0)
      {
LABEL_4:
        LOBYTE(v16[0]) = v9;
        specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v8, v7, (v10 << 32) | v9, v12, v13);
        outlined consume of DynamicPropertyCache.Fields.Layout(v8, v7, v9);
        return outlined destroy of _ViewListInputs(v18);
      }
    }

    else
    {
      _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyACyACyACyACyAA09_VariadicE0O4TreeVy_AA11_LayoutRootVyAA010GlassEntryQ033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA7ForEachVySayAA0S9ContainerO4ItemVGA4_2IDVAA0s4ItemE0AXLLVGGAA0s11EffectShapeF033_62A32D59B8A902A88963544196023CF7LLVGAA0s18EffectPlatformItemF0AXLLVGAA0st11InteractionF0AXLLVGAA0st15FlexInteractionF0AXLLVGAA0s15TransitionStateF0AXLLVG_AA018ScheduledAnimationF0020_94C2570E898B27608B6V11D65EF8A1A07LLVySiGTt2B5(v11, v18, a3);
      if ((v14 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    outlined destroy of _ViewListInputs(v18);
    return outlined consume of DynamicPropertyCache.Fields.Layout(v8, v7, v9);
  }

  return result;
}

{
  v20 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v3, v17);
  v8 = v17[0];
  v7 = v17[1];
  v9 = v18;
  v10 = v19;
  outlined init with copy of _ViewListInputs(a2, v17);
  if (AGTypeGetKind() - 2 >= 4)
  {
    _StringGuts.grow(_:)(70);
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](0xD000000000000034, 0x800000018DD79080);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    LOBYTE(v15[0]) = v9;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(v17, v8, v7, v9 | (v10 << 32), a1, v15);
    v11 = v15[1];
    v12 = v15[2];
    v13 = v16;
    if (AGSubgraphShouldRecordTree())
    {
      type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveGlassItemView, GlassTransitionStateModifier>, _GeometryGroupEffect>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<_LayoutTrait<GlassEntryLayout.Key>>>(0);
      AGSubgraphBeginTreeElement();
      _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyACyACyAA018PrimitiveGlassItemE033_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA0p15TransitionStateF0ARLLVGAA20_GeometryGroupEffectVGAA013_TraitWritingF0VyAA18TransitionTraitKeyVGG_A_yAA12_LayoutTraitVyAA0P11EntryLayoutARLLV3KeyVGGTt2B5(v17, a3);
      AGSubgraphEndTreeElement();
      if ((v13 & 1) == 0)
      {
LABEL_4:
        LOBYTE(v15[0]) = v9;
        specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v8, v7, (v10 << 32) | v9, v11, v12);
        outlined consume of DynamicPropertyCache.Fields.Layout(v8, v7, v9);
        return outlined destroy of _ViewListInputs(v17);
      }
    }

    else
    {
      _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyACyACyAA018PrimitiveGlassItemE033_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA0p15TransitionStateF0ARLLVGAA20_GeometryGroupEffectVGAA013_TraitWritingF0VyAA18TransitionTraitKeyVGG_A_yAA12_LayoutTraitVyAA0P11EntryLayoutARLLV3KeyVGGTt2B5(v17, a3);
      if ((v13 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    outlined destroy of _ViewListInputs(v17);
    return outlined consume of DynamicPropertyCache.Fields.Layout(v8, v7, v9);
  }

  return result;
}

{
  v20 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v3, v17);
  v6 = v17[0];
  v7 = v17[1];
  v8 = v18;
  v9 = v19;
  outlined init with copy of _ViewListInputs(a2, v17);
  if (AGTypeGetKind() - 2 <= 3)
  {
    LOBYTE(v15[0]) = v8;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(v17, v6, v7, v8 | (v9 << 32), a1, v15);
    v10 = v15[1];
    v11 = v15[2];
    v12 = v16;
    type metadata accessor for _ShapeView<Rectangle._Inset, ForegroundStyle>(0);
    if (AGSubgraphShouldRecordTree())
    {
      AGSubgraphBeginTreeElement();
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleV6_InsetVAA15ForegroundStyleVG_Tt2B5(v17, a3);
      AGSubgraphEndTreeElement();
      if (v12)
      {
        goto LABEL_7;
      }
    }

    else
    {
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleV6_InsetVAA15ForegroundStyleVG_Tt2B5(v17, a3);
      if (v12)
      {
LABEL_7:
        outlined destroy of _ViewListInputs(v17);
        return outlined consume of DynamicPropertyCache.Fields.Layout(v6, v7, v8);
      }
    }

    LOBYTE(v15[0]) = v8;
    specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v6, v7, (v9 << 32) | v8, v10, v11);
    goto LABEL_7;
  }

  _StringGuts.grow(_:)(70);
  MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
  MEMORY[0x193ABEDD0](0x7465736E495FLL, 0xE600000000000000);
  MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v31 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v3, &v22);
  v7 = v22;
  v8 = v23;
  v9 = v24;
  v10 = HIDWORD(v24);
  outlined init with copy of _ViewListInputs(a2, v29);
  if (AGTypeGetKind() - 2 > 3)
  {
    v22 = 0;
    v23 = 0xE000000000000000;
    _StringGuts.grow(_:)(70);
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](0x77656956746F6F52, 0xE800000000000000);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    LOBYTE(v22) = v9;
    v20 = v10;
    v21 = a1;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(v29, v7, v8, v9 | (v10 << 32), a1, &v22);
    v11 = v22;
    v18 = v24;
    v19 = v23;
    v12 = v25;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      AGSubgraphBeginTreeElement();
    }

    LODWORD(v22) = v11;
    outlined init with copy of _ViewListInputs(v29, &v23);
    v14 = AGSubgraphGetCurrent();
    if (!v14)
    {
      __break(1u);
    }

    v26 = v14;
    type metadata accessor for [Unmanaged<DynamicViewList<AnyView>.Item>](0, &lazy cache variable for type metadata for MutableBox<[Unmanaged<DynamicViewList<AnyView>.Item>]>, type metadata accessor for [Unmanaged<DynamicViewList<AnyView>.Item>], type metadata accessor for MutableBox);
    v15 = swift_allocObject();
    *(v15 + 16) = MEMORY[0x1E69E7CC0];
    v27 = v15;
    v28 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ViewList();
    type metadata accessor for FontBox<Font.PlatformFontProvider>(0, &lazy cache variable for type metadata for DynamicViewList<AnyView>, lazy protocol witness table accessor for type AnyView and conformance AnyView, &type metadata for AnyView, type metadata accessor for DynamicViewList);
    lazy protocol witness table accessor for type DynamicViewList<AnyView> and conformance DynamicViewList<A>();
    v16 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of DynamicViewList<AnyView>(&v22);
    *a3 = v16;
    *(a3 + 8) = 0;
    *(a3 + 40) = 1;
    *(a3 + 48) = v30;
    *(a3 + 56) = 0;
    *(a3 + 64) = 1;
    if (ShouldRecordTree)
    {
      AGSubgraphEndTreeElement();
    }

    if ((v12 & 1) == 0)
    {
      LOBYTE(v22) = v9;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(v21, v7, v8, (v20 << 32) | v9, v19, v18);
    }

    outlined destroy of _ViewListInputs(v29);
    return outlined consume of DynamicPropertyCache.Fields.Layout(v7, v8, v9);
  }

  return result;
}

{
  v20 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v3, v17);
  v6 = v17[0];
  v7 = v17[1];
  v8 = v18;
  v9 = v19;
  outlined init with copy of _ViewListInputs(a2, v17);
  if (AGTypeGetKind() - 2 <= 3)
  {
    LOBYTE(v15[0]) = v8;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(v17, v6, v7, v8 | (v9 << 32), a1, v15);
    v10 = v15[1];
    v11 = v15[2];
    v12 = v16;
    type metadata accessor for _ShapeView<Ellipse, ForegroundStyle>(0);
    if (AGSubgraphShouldRecordTree())
    {
      AGSubgraphBeginTreeElement();
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA7EllipseVAA15ForegroundStyleVG_Tt2B5(v17, a3);
      AGSubgraphEndTreeElement();
      if (v12)
      {
        goto LABEL_7;
      }
    }

    else
    {
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA7EllipseVAA15ForegroundStyleVG_Tt2B5(v17, a3);
      if (v12)
      {
LABEL_7:
        outlined destroy of _ViewListInputs(v17);
        return outlined consume of DynamicPropertyCache.Fields.Layout(v6, v7, v8);
      }
    }

    LOBYTE(v15[0]) = v8;
    specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v6, v7, (v9 << 32) | v8, v10, v11);
    goto LABEL_7;
  }

  _StringGuts.grow(_:)(70);
  MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
  MEMORY[0x193ABEDD0](0x657370696C6C45, 0xE700000000000000);
  MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v20 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v3, v17);
  v6 = v17[0];
  v7 = v17[1];
  v8 = v18;
  v9 = v19;
  outlined init with copy of _ViewListInputs(a2, v17);
  if (AGTypeGetKind() - 2 <= 3)
  {
    LOBYTE(v15[0]) = v8;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(v17, v6, v7, v8 | (v9 << 32), a1, v15);
    v10 = v15[1];
    v11 = v15[2];
    v12 = v16;
    type metadata accessor for _ShapeView<Ellipse._Inset, ForegroundStyle>(0);
    if (AGSubgraphShouldRecordTree())
    {
      AGSubgraphBeginTreeElement();
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA7EllipseV6_InsetVAA15ForegroundStyleVG_Tt2B5(v17, a3);
      AGSubgraphEndTreeElement();
      if (v12)
      {
        goto LABEL_7;
      }
    }

    else
    {
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA7EllipseV6_InsetVAA15ForegroundStyleVG_Tt2B5(v17, a3);
      if (v12)
      {
LABEL_7:
        outlined destroy of _ViewListInputs(v17);
        return outlined consume of DynamicPropertyCache.Fields.Layout(v6, v7, v8);
      }
    }

    LOBYTE(v15[0]) = v8;
    specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v6, v7, (v9 << 32) | v8, v10, v11);
    goto LABEL_7;
  }

  _StringGuts.grow(_:)(70);
  MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
  MEMORY[0x193ABEDD0](0x7465736E495FLL, 0xE600000000000000);
  MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v20 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v3, v17);
  v6 = v17[0];
  v7 = v17[1];
  v8 = v18;
  v9 = v19;
  outlined init with copy of _ViewListInputs(a2, v17);
  if (AGTypeGetKind() - 2 <= 3)
  {
    LOBYTE(v15[0]) = v8;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(v17, v6, v7, v8 | (v9 << 32), a1, v15);
    v10 = v15[1];
    v11 = v15[2];
    v12 = v16;
    type metadata accessor for _ShapeView<Capsule, ForegroundStyle>(0);
    if (AGSubgraphShouldRecordTree())
    {
      AGSubgraphBeginTreeElement();
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA7CapsuleVAA15ForegroundStyleVG_Tt2B5(v17, a3);
      AGSubgraphEndTreeElement();
      if (v12)
      {
        goto LABEL_7;
      }
    }

    else
    {
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA7CapsuleVAA15ForegroundStyleVG_Tt2B5(v17, a3);
      if (v12)
      {
LABEL_7:
        outlined destroy of _ViewListInputs(v17);
        return outlined consume of DynamicPropertyCache.Fields.Layout(v6, v7, v8);
      }
    }

    LOBYTE(v15[0]) = v8;
    specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v6, v7, (v9 << 32) | v8, v10, v11);
    goto LABEL_7;
  }

  _StringGuts.grow(_:)(70);
  MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
  MEMORY[0x193ABEDD0](0x656C7573706143, 0xE700000000000000);
  MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v20 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v3, v17);
  v6 = v17[0];
  v7 = v17[1];
  v8 = v18;
  v9 = v19;
  outlined init with copy of _ViewListInputs(a2, v17);
  if (AGTypeGetKind() - 2 <= 3)
  {
    LOBYTE(v15[0]) = v8;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(v17, v6, v7, v8 | (v9 << 32), a1, v15);
    v10 = v15[1];
    v11 = v15[2];
    v12 = v16;
    type metadata accessor for _ShapeView<Capsule._Inset, ForegroundStyle>(0);
    if (AGSubgraphShouldRecordTree())
    {
      AGSubgraphBeginTreeElement();
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA7CapsuleV6_InsetVAA15ForegroundStyleVG_Tt2B5(v17, a3);
      AGSubgraphEndTreeElement();
      if (v12)
      {
        goto LABEL_7;
      }
    }

    else
    {
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA7CapsuleV6_InsetVAA15ForegroundStyleVG_Tt2B5(v17, a3);
      if (v12)
      {
LABEL_7:
        outlined destroy of _ViewListInputs(v17);
        return outlined consume of DynamicPropertyCache.Fields.Layout(v6, v7, v8);
      }
    }

    LOBYTE(v15[0]) = v8;
    specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v6, v7, (v9 << 32) | v8, v10, v11);
    goto LABEL_7;
  }

  _StringGuts.grow(_:)(70);
  MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
  MEMORY[0x193ABEDD0](0x7465736E495FLL, 0xE600000000000000);
  MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v20 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v3, v17);
  v6 = v17[0];
  v7 = v17[1];
  v8 = v18;
  v9 = v19;
  outlined init with copy of _ViewListInputs(a2, v17);
  if (AGTypeGetKind() - 2 <= 3)
  {
    LOBYTE(v15[0]) = v8;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(v17, v6, v7, v8 | (v9 << 32), a1, v15);
    v10 = v15[1];
    v11 = v15[2];
    v12 = v16;
    type metadata accessor for _ShapeView<Circle._Inset, ForegroundStyle>(0);
    if (AGSubgraphShouldRecordTree())
    {
      AGSubgraphBeginTreeElement();
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA6CircleV6_InsetVAA15ForegroundStyleVG_Tt2B5(v17, a3);
      AGSubgraphEndTreeElement();
      if (v12)
      {
        goto LABEL_7;
      }
    }

    else
    {
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA6CircleV6_InsetVAA15ForegroundStyleVG_Tt2B5(v17, a3);
      if (v12)
      {
LABEL_7:
        outlined destroy of _ViewListInputs(v17);
        return outlined consume of DynamicPropertyCache.Fields.Layout(v6, v7, v8);
      }
    }

    LOBYTE(v15[0]) = v8;
    specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v6, v7, (v9 << 32) | v8, v10, v11);
    goto LABEL_7;
  }

  _StringGuts.grow(_:)(70);
  MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
  MEMORY[0x193ABEDD0](0x7465736E495FLL, 0xE600000000000000);
  MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v20 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v3, v17);
  v6 = v17[0];
  v7 = v17[1];
  v8 = v18;
  v9 = v19;
  outlined init with copy of _ViewListInputs(a2, v17);
  if (AGTypeGetKind() - 2 < 4)
  {
    type metadata accessor for _ShapeView<PartialContainerRelativeShape, ForegroundStyle>(0);
    LOBYTE(v15[0]) = v8;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(v17, v6, v7, v8 | (v9 << 32), a1, v15);
    v10 = v15[1];
    v11 = v15[2];
    v12 = v16;
    if (AGSubgraphShouldRecordTree())
    {
      AGSubgraphBeginTreeElement();
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA024PartialContainerRelativeL0VAA15ForegroundStyleVG_Tt2B5(v17, a3);
      AGSubgraphEndTreeElement();
      if (v12)
      {
        goto LABEL_7;
      }
    }

    else
    {
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA024PartialContainerRelativeL0VAA15ForegroundStyleVG_Tt2B5(v17, a3);
      if (v12)
      {
LABEL_7:
        outlined destroy of _ViewListInputs(v17);
        return outlined consume of DynamicPropertyCache.Fields.Layout(v6, v7, v8);
      }
    }

    LOBYTE(v15[0]) = v8;
    specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v6, v7, (v9 << 32) | v8, v10, v11);
    goto LABEL_7;
  }

  _StringGuts.grow(_:)(70);
  MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
  MEMORY[0x193ABEDD0](0xD00000000000001DLL, 0x800000018DD78E50);
  MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v20 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v3, v17);
  v6 = v17[0];
  v7 = v17[1];
  v8 = v18;
  v9 = v19;
  outlined init with copy of _ViewListInputs(a2, v17);
  if (AGTypeGetKind() - 2 < 4)
  {
    type metadata accessor for _ShapeView<DefaultGlassEffectShape, ForegroundStyle>(0);
    LOBYTE(v15[0]) = v8;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(v17, v6, v7, v8 | (v9 << 32), a1, v15);
    v10 = v15[1];
    v11 = v15[2];
    v12 = v16;
    if (AGSubgraphShouldRecordTree())
    {
      AGSubgraphBeginTreeElement();
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA018DefaultGlassEffectL0VAA15ForegroundStyleVG_Tt2B5(v17, a3);
      AGSubgraphEndTreeElement();
      if (v12)
      {
        goto LABEL_7;
      }
    }

    else
    {
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA018DefaultGlassEffectL0VAA15ForegroundStyleVG_Tt2B5(v17, a3);
      if (v12)
      {
LABEL_7:
        outlined destroy of _ViewListInputs(v17);
        return outlined consume of DynamicPropertyCache.Fields.Layout(v6, v7, v8);
      }
    }

    LOBYTE(v15[0]) = v8;
    specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v6, v7, (v9 << 32) | v8, v10, v11);
    goto LABEL_7;
  }

  _StringGuts.grow(_:)(70);
  MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
  MEMORY[0x193ABEDD0](0xD000000000000017, 0x800000018DD7D4D0);
  MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v20 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v3, v17);
  v6 = v17[0];
  v7 = v17[1];
  v8 = v18;
  v9 = v19;
  outlined init with copy of _ViewListInputs(a2, v17);
  if (AGTypeGetKind() - 2 < 4)
  {
    type metadata accessor for _ShapeView<UnevenRoundedRectangle, ForegroundStyle>(0);
    LOBYTE(v15[0]) = v8;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(v17, v6, v7, v8 | (v9 << 32), a1, v15);
    v10 = v15[1];
    v11 = v15[2];
    v12 = v16;
    if (AGSubgraphShouldRecordTree())
    {
      AGSubgraphBeginTreeElement();
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA22UnevenRoundedRectangleVAA15ForegroundStyleVG_Tt2B5(v17, a3);
      AGSubgraphEndTreeElement();
      if (v12)
      {
        goto LABEL_7;
      }
    }

    else
    {
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA22UnevenRoundedRectangleVAA15ForegroundStyleVG_Tt2B5(v17, a3);
      if (v12)
      {
LABEL_7:
        outlined destroy of _ViewListInputs(v17);
        return outlined consume of DynamicPropertyCache.Fields.Layout(v6, v7, v8);
      }
    }

    LOBYTE(v15[0]) = v8;
    specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v6, v7, (v9 << 32) | v8, v10, v11);
    goto LABEL_7;
  }

  _StringGuts.grow(_:)(70);
  MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
  MEMORY[0x193ABEDD0](0xD000000000000016, 0x800000018DD78ED0);
  MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v20 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v3, v17);
  v6 = v17[0];
  v7 = v17[1];
  v8 = v18;
  v9 = v19;
  outlined init with copy of _ViewListInputs(a2, v17);
  if (AGTypeGetKind() - 2 <= 3)
  {
    LOBYTE(v15[0]) = v8;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(v17, v6, v7, v8 | (v9 << 32), a1, v15);
    v10 = v15[1];
    v11 = v15[2];
    v12 = v16;
    type metadata accessor for _ShapeView<UnevenRoundedRectangle._Inset, ForegroundStyle>(0);
    if (AGSubgraphShouldRecordTree())
    {
      AGSubgraphBeginTreeElement();
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA22UnevenRoundedRectangleV6_InsetVAA15ForegroundStyleVG_Tt2B5(v17, a3);
      AGSubgraphEndTreeElement();
      if (v12)
      {
        goto LABEL_7;
      }
    }

    else
    {
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA22UnevenRoundedRectangleV6_InsetVAA15ForegroundStyleVG_Tt2B5(v17, a3);
      if (v12)
      {
LABEL_7:
        outlined destroy of _ViewListInputs(v17);
        return outlined consume of DynamicPropertyCache.Fields.Layout(v6, v7, v8);
      }
    }

    LOBYTE(v15[0]) = v8;
    specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v6, v7, (v9 << 32) | v8, v10, v11);
    goto LABEL_7;
  }

  _StringGuts.grow(_:)(70);
  MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
  MEMORY[0x193ABEDD0](0x7465736E495FLL, 0xE600000000000000);
  MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v20 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v3, v17);
  v6 = v17[0];
  v7 = v17[1];
  v8 = v18;
  v9 = v19;
  outlined init with copy of _ViewListInputs(a2, v17);
  if (AGTypeGetKind() - 2 < 4)
  {
    type metadata accessor for _ShapeView<ImplicitContainerShape, ForegroundStyle>(0);
    LOBYTE(v15[0]) = v8;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(v17, v6, v7, v8 | (v9 << 32), a1, v15);
    v10 = v15[1];
    v11 = v15[2];
    v12 = v16;
    if (AGSubgraphShouldRecordTree())
    {
      AGSubgraphBeginTreeElement();
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA017ImplicitContainerL0VAA15ForegroundStyleVG_Tt2B5(v17, a3);
      AGSubgraphEndTreeElement();
      if (v12)
      {
        goto LABEL_7;
      }
    }

    else
    {
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA017ImplicitContainerL0VAA15ForegroundStyleVG_Tt2B5(v17, a3);
      if (v12)
      {
LABEL_7:
        outlined destroy of _ViewListInputs(v17);
        return outlined consume of DynamicPropertyCache.Fields.Layout(v6, v7, v8);
      }
    }

    LOBYTE(v15[0]) = v8;
    specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v6, v7, (v9 << 32) | v8, v10, v11);
    goto LABEL_7;
  }

  _StringGuts.grow(_:)(70);
  MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
  MEMORY[0x193ABEDD0](0xD000000000000016, 0x800000018DD78E70);
  MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v20 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v3, v17);
  v6 = v17[0];
  v7 = v17[1];
  v8 = v18;
  v9 = v19;
  outlined init with copy of _ViewListInputs(a2, v17);
  if (AGTypeGetKind() - 2 <= 3)
  {
    LOBYTE(v15[0]) = v8;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(v17, v6, v7, v8 | (v9 << 32), a1, v15);
    v10 = v15[1];
    v11 = v15[2];
    v12 = v16;
    type metadata accessor for _ShapeView<ContainerRelativeShape._Inset, ForegroundStyle>(0);
    if (AGSubgraphShouldRecordTree())
    {
      AGSubgraphBeginTreeElement();
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA017ContainerRelativeL0V6_InsetVAA15ForegroundStyleVG_Tt2B5(v17, a3);
      AGSubgraphEndTreeElement();
      if (v12)
      {
        goto LABEL_7;
      }
    }

    else
    {
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA017ContainerRelativeL0V6_InsetVAA15ForegroundStyleVG_Tt2B5(v17, a3);
      if (v12)
      {
LABEL_7:
        outlined destroy of _ViewListInputs(v17);
        return outlined consume of DynamicPropertyCache.Fields.Layout(v6, v7, v8);
      }
    }

    LOBYTE(v15[0]) = v8;
    specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v6, v7, (v9 << 32) | v8, v10, v11);
    goto LABEL_7;
  }

  _StringGuts.grow(_:)(70);
  MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
  MEMORY[0x193ABEDD0](0x7465736E495FLL, 0xE600000000000000);
  MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v20 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v3, v17);
  v6 = v17[0];
  v7 = v17[1];
  v8 = v18;
  v9 = v19;
  outlined init with copy of _ViewListInputs(a2, v17);
  if (AGTypeGetKind() - 2 < 4)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Bool>>, _EnvironmentKeyWritingModifier<Font?>>(0);
    LOBYTE(v15[0]) = v8;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(v17, v6, v7, v8 | (v9 << 32), a1, v15);
    v10 = v15[1];
    v11 = v15[2];
    v12 = v16;
    if (AGSubgraphShouldRecordTree())
    {
      AGSubgraphBeginTreeElement();
      _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyAA13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLVAA01_m11TransactionF0VySbGG_AA022_EnvironmentKeyWritingF0VyAA4FontVSgGTt2B5(v17, a3);
      AGSubgraphEndTreeElement();
      if (v12)
      {
        goto LABEL_7;
      }
    }

    else
    {
      _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyAA13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLVAA01_m11TransactionF0VySbGG_AA022_EnvironmentKeyWritingF0VyAA4FontVSgGTt2B5(v17, a3);
      if (v12)
      {
LABEL_7:
        outlined destroy of _ViewListInputs(v17);
        return outlined consume of DynamicPropertyCache.Fields.Layout(v6, v7, v8);
      }
    }

    LOBYTE(v15[0]) = v8;
    specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v6, v7, (v9 << 32) | v8, v10, v11);
    goto LABEL_7;
  }

  _StringGuts.grow(_:)(70);
  MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
  MEMORY[0x193ABEDD0](0xD000000000000016, 0x800000018DDEA1B0);
  MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v19 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v3, &v16);
  v7 = v16;
  v8 = v17;
  v9 = v18;
  outlined init with copy of _ViewListInputs(a2, &v16);
  if (AGTypeGetKind() - 2 <= 3)
  {
    LOBYTE(v14[0]) = v8;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v16, v7, *(&v7 + 1), v8 | (v9 << 32), a1, v14);
    v10 = v14[2];
    v13 = v14[1];
    v11 = v15;
    type metadata accessor for ModifiedContent<Text, _OverlayPreferenceModifier<Text.LayoutKey, ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>>>(0, &lazy cache variable for type metadata for ModifiedContent<Text, _OverlayPreferenceModifier<Text.LayoutKey, ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>>>, type metadata accessor for _OverlayPreferenceModifier<Text.LayoutKey, ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>>, &type metadata for Text);
    if (AGSubgraphShouldRecordTree())
    {
      AGSubgraphBeginTreeElement();
      _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA4TextV_AA018_OverlayPreferenceF0VyAR9LayoutKeyVAA7ForEachVySnySiGSiACyACyAA13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLVAA01_m11TransactionF0VySdGGAA13_OffsetEffectVGGGTt2B5(&v16, a3);
      AGSubgraphEndTreeElement();
      if (v11)
      {
        goto LABEL_7;
      }
    }

    else
    {
      _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA4TextV_AA018_OverlayPreferenceF0VyAR9LayoutKeyVAA7ForEachVySnySiGSiACyACyAA13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLVAA01_m11TransactionF0VySdGGAA13_OffsetEffectVGGGTt2B5(&v16, a3);
      if (v11)
      {
LABEL_7:
        outlined destroy of _ViewListInputs(&v16);
        return outlined consume of DynamicPropertyCache.Fields.Layout(v7, *(&v7 + 1), v8);
      }
    }

    LOBYTE(v14[0]) = v8;
    specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v7, *(&v7 + 1), (v9 << 32) | v8, v13, v10);
    goto LABEL_7;
  }

  _StringGuts.grow(_:)(70);
  MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
  MEMORY[0x193ABEDD0](0x6E6974616D696E41, 0xED00007478655467);
  MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v20 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v3, v17);
  v6 = v17[0];
  v7 = v17[1];
  v8 = v18;
  v9 = v19;
  outlined init with copy of _ViewListInputs(a2, v17);
  if (AGTypeGetKind() - 2 < 4)
  {
    type metadata accessor for _ShapeView<ConcentricRectangle, ForegroundStyle>(0);
    LOBYTE(v15[0]) = v8;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(v17, v6, v7, v8 | (v9 << 32), a1, v15);
    v10 = v15[1];
    v11 = v15[2];
    v12 = v16;
    if (AGSubgraphShouldRecordTree())
    {
      AGSubgraphBeginTreeElement();
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA19ConcentricRectangleVAA15ForegroundStyleVG_Tt2B5(v17, a3);
      AGSubgraphEndTreeElement();
      if (v12)
      {
        goto LABEL_7;
      }
    }

    else
    {
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA19ConcentricRectangleVAA15ForegroundStyleVG_Tt2B5(v17, a3);
      if (v12)
      {
LABEL_7:
        outlined destroy of _ViewListInputs(v17);
        return outlined consume of DynamicPropertyCache.Fields.Layout(v6, v7, v8);
      }
    }

    LOBYTE(v15[0]) = v8;
    specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v6, v7, (v9 << 32) | v8, v10, v11);
    goto LABEL_7;
  }

  _StringGuts.grow(_:)(70);
  MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
  MEMORY[0x193ABEDD0](0xD000000000000013, 0x800000018DD78EB0);
  MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v20 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v3, v17);
  v6 = v17[0];
  v7 = v17[1];
  v8 = v18;
  v9 = v19;
  outlined init with copy of _ViewListInputs(a2, v17);
  if (AGTypeGetKind() - 2 < 4)
  {
    type metadata accessor for _ShapeView<Rectangle, EllipticalGradient>(0);
    LOBYTE(v15[0]) = v8;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(v17, v6, v7, v8 | (v9 << 32), a1, v15);
    v10 = v15[1];
    v11 = v15[2];
    v12 = v16;
    if (AGSubgraphShouldRecordTree())
    {
      AGSubgraphBeginTreeElement();
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleVAA18EllipticalGradientVG_Tt2B5(v17, a3);
      AGSubgraphEndTreeElement();
      if (v12)
      {
        goto LABEL_7;
      }
    }

    else
    {
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleVAA18EllipticalGradientVG_Tt2B5(v17, a3);
      if (v12)
      {
LABEL_7:
        outlined destroy of _ViewListInputs(v17);
        return outlined consume of DynamicPropertyCache.Fields.Layout(v6, v7, v8);
      }
    }

    LOBYTE(v15[0]) = v8;
    specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v6, v7, (v9 << 32) | v8, v10, v11);
    goto LABEL_7;
  }

  _StringGuts.grow(_:)(70);
  MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
  MEMORY[0x193ABEDD0](0xD000000000000012, 0x800000018DD78F30);
  MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v20 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v3, v17);
  v6 = v17[0];
  v7 = v17[1];
  v8 = v18;
  v9 = v19;
  outlined init with copy of _ViewListInputs(a2, v17);
  if (AGTypeGetKind() - 2 <= 3)
  {
    LOBYTE(v15[0]) = v8;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(v17, v6, v7, v8 | (v9 << 32), a1, v15);
    v10 = v15[1];
    v11 = v15[2];
    v12 = v16;
    type metadata accessor for _ShapeView<RoundedRectangle._Inset, ForegroundStyle>(0);
    if (AGSubgraphShouldRecordTree())
    {
      AGSubgraphBeginTreeElement();
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA16RoundedRectangleV6_InsetVAA15ForegroundStyleVG_Tt2B5(v17, a3);
      AGSubgraphEndTreeElement();
      if (v12)
      {
        goto LABEL_7;
      }
    }

    else
    {
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA16RoundedRectangleV6_InsetVAA15ForegroundStyleVG_Tt2B5(v17, a3);
      if (v12)
      {
LABEL_7:
        outlined destroy of _ViewListInputs(v17);
        return outlined consume of DynamicPropertyCache.Fields.Layout(v6, v7, v8);
      }
    }

    LOBYTE(v15[0]) = v8;
    specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v6, v7, (v9 << 32) | v8, v10, v11);
    goto LABEL_7;
  }

  _StringGuts.grow(_:)(70);
  MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
  MEMORY[0x193ABEDD0](0x7465736E495FLL, 0xE600000000000000);
  MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v20 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v3, v17);
  v6 = v17[0];
  v7 = v17[1];
  v8 = v18;
  v9 = v19;
  outlined init with copy of _ViewListInputs(a2, v17);
  if (AGTypeGetKind() - 2 <= 3)
  {
    LOBYTE(v15[0]) = v8;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(v17, v6, v7, v8 | (v9 << 32), a1, v15);
    v10 = v15[1];
    v11 = v15[2];
    v12 = v16;
    type metadata accessor for _ShapeView<Rectangle, AngularGradient>(0);
    if (AGSubgraphShouldRecordTree())
    {
      AGSubgraphBeginTreeElement();
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleVAA15AngularGradientVG_Tt2B5(v17, a3);
      AGSubgraphEndTreeElement();
      if (v12)
      {
        goto LABEL_7;
      }
    }

    else
    {
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleVAA15AngularGradientVG_Tt2B5(v17, a3);
      if (v12)
      {
LABEL_7:
        outlined destroy of _ViewListInputs(v17);
        return outlined consume of DynamicPropertyCache.Fields.Layout(v6, v7, v8);
      }
    }

    LOBYTE(v15[0]) = v8;
    specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v6, v7, (v9 << 32) | v8, v10, v11);
    goto LABEL_7;
  }

  _StringGuts.grow(_:)(70);
  MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
  MEMORY[0x193ABEDD0](0x4772616C75676E41, 0xEF746E6569646172);
  MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v20 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v3, v17);
  v6 = v17[0];
  v7 = v17[1];
  v8 = v18;
  v9 = v19;
  outlined init with copy of _ViewListInputs(a2, v17);
  if (AGTypeGetKind() - 2 <= 3)
  {
    LOBYTE(v15[0]) = v8;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(v17, v6, v7, v8 | (v9 << 32), a1, v15);
    v10 = v15[1];
    v11 = v15[2];
    v12 = v16;
    type metadata accessor for _ShapeView<Rectangle, RadialGradient>(0);
    if (AGSubgraphShouldRecordTree())
    {
      AGSubgraphBeginTreeElement();
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleVAA14RadialGradientVG_Tt2B5(v17, a3);
      AGSubgraphEndTreeElement();
      if (v12)
      {
        goto LABEL_7;
      }
    }

    else
    {
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleVAA14RadialGradientVG_Tt2B5(v17, a3);
      if (v12)
      {
LABEL_7:
        outlined destroy of _ViewListInputs(v17);
        return outlined consume of DynamicPropertyCache.Fields.Layout(v6, v7, v8);
      }
    }

    LOBYTE(v15[0]) = v8;
    specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v6, v7, (v9 << 32) | v8, v10, v11);
    goto LABEL_7;
  }

  _StringGuts.grow(_:)(70);
  MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
  MEMORY[0x193ABEDD0](0x72476C6169646152, 0xEE00746E65696461);
  MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void lazy protocol witness table accessor for type MaskDisplayList and conformance MaskDisplayList()
{
  if (!lazy protocol witness table cache variable for type MaskDisplayList and conformance MaskDisplayList)
  {
    swift_getWitnessTable(protocol conformance descriptor for MaskDisplayList, &unk_1F00657F0, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type MaskDisplayList and conformance MaskDisplayList);
  }
}

__n128 __swift_memcpy25_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t partial apply for closure #1 in static _ViewOutputs.makeMaskView(inputs:contentBody:maskBody:outputsFromMask:mayUseForegroundColor:alignment:)(uint64_t result)
{
  v2 = *(v1 + 24);
  *(result + 16) = *(*(v1 + 16) + 12);
  *(result + 20) = *(v2 + 12);
  return result;
}

uint64_t specialized closure #1 in PropertyList.subscript.getter(void *a1, Swift::Int hashValue)
{
  BloomFilter.init(hashValue:)(hashValue);
  v4 = specialized find1<A>(_:key:filter:)(a1, hashValue, v7);
  if (v4)
  {
    return *(v4 + 72);
  }

  if (one-time initialization token for introduced != -1)
  {
    swift_once();
  }

  v6 = static Semantics.DismissPopsInNavigationSplitViewRoots.introduced;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C524)
  {
    return dyld_program_minos_at_least();
  }

  else
  {
    return dword_1ED53C520 >= v6;
  }
}

{
  BloomFilter.init(hashValue:)(hashValue);
  v4 = specialized find1<A>(_:key:filter:)(a1, hashValue, v10[0]);
  if (!v4)
  {
    if (one-time initialization token for v7 != -1)
    {
      swift_once();
    }

    v6 = static Semantics.v7;
    if (one-time initialization token for forced != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (byte_1ED53C51C == 1)
    {
      if ((dyld_program_sdk_at_least() & 1) == 0)
      {
LABEL_9:
        v5 = 0;
        return v5 & 1;
      }
    }

    else if (static Semantics.forced < v6)
    {
      goto LABEL_9;
    }

    v10[3] = &type metadata for ContainerContextStylingFeatureEnabled.Key;
    lazy protocol witness table accessor for type ContainerContextStylingFeatureEnabled.Key and conformance ContainerContextStylingFeatureEnabled.Key();
    v10[4] = v7;
    v8 = swift_allocObject();
    v10[0] = v8;
    *(v8 + 16) = "SwiftUI";
    *(v8 + 24) = 7;
    *(v8 + 32) = 2;
    *(v8 + 40) = "containerContextStylingEnabled";
    *(v8 + 48) = 30;
    *(v8 + 56) = 2;
    v5 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1(v10);
    return v5 & 1;
  }

  v5 = *(v4 + 72);
  return v5 & 1;
}

{
  BloomFilter.init(hashValue:)(hashValue);
  v4 = specialized find1<A>(_:key:filter:)(a1, hashValue, v7);
  if (v4)
  {
    return *(v4 + 72);
  }

  if (one-time initialization token for introduced != -1)
  {
    swift_once();
  }

  v6 = static EnabledFeature.introduced;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C)
  {
    return dyld_program_sdk_at_least();
  }

  else
  {
    return static Semantics.forced >= v6;
  }
}

uint64_t one-time initialization function for introduced(uint64_t a1)
{
  return one-time initialization function for introduced(a1, &one-time initialization token for v6, &static Semantics.v6, &static Semantics.DismissPopsInNavigationSplitViewRoots.introduced, one-time initialization function for v6);
}

{
  return one-time initialization function for introduced(a1, &one-time initialization token for firstRelease, &static Semantics.firstRelease, &static EnabledFeature.introduced, one-time initialization function for firstRelease);
}

uint64_t closure #1 in static ResettableLazyLayoutRoot._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[2] = type metadata accessor for ResettableLazyLayoutRoot(0, a2, a3, a4);
  v10[3] = a2;
  v7 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, a4, v10, a2, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
  return v10[5];
}

uint64_t static ResettableLazyLayoutRoot._makeViewList(view:inputs:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v24[24] = *MEMORY[0x1E69E9840];
  v9 = *a1;
  v22[8] = a3;
  v22[9] = a4;
  LODWORD(v24[0]) = v9;
  v10 = type metadata accessor for ResettableLazyLayoutRoot(255, a3, a4, a4);
  type metadata accessor for _GraphValue(0, v10, v11, v12);
  _GraphValue.subscript.getter(partial apply for closure #1 in static ResettableLazyLayoutRoot._makeViewList(view:inputs:), a3, v23);
  v13 = v23[0];
  swift_beginAccess();
  if ((static ResettableLazyLayoutsFeature.isEnabledForTesting & 1) != 0 || (v14 = getenv("XCODE_RUNNING_FOR_PREVIEWS")) != 0 && atoi(v14))
  {
    outlined init with copy of _ViewListInputs(a2, v23);
    v15 = ResettableListContainer.init(content:inputs:)(v13, v23, a3, a4, v24);
    MEMORY[0x1EEE9AC00](v15);
    v17 = type metadata accessor for ResettableListContainer(0, a3, a4, v16);
    v22[2] = v17;
    swift_getWitnessTable(protocol conformance descriptor for ResettableListContainer<A>, v17);
    v22[3] = v18;
    type metadata accessor for Attribute<ViewList>(0);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v24, closure #1 in Attribute.init<A>(_:)partial apply, v22, v17, MEMORY[0x1E69E73E0], v19, MEMORY[0x1E69E7410], v20);
    result = (*(*(v17 - 8) + 8))(v24, v17);
    *a5 = v23[0];
    *(a5 + 8) = 0;
    *(a5 + 40) = 1;
    *(a5 + 48) = *(a2 + 48);
    *(a5 + 56) = 0;
    *(a5 + 64) = 1;
  }

  else
  {
    if (AGSubgraphShouldRecordTree())
    {
      AGSubgraphBeginTreeElement();
    }

    LODWORD(v24[0]) = v13;
    (*(a4 + 32))(v24, a2, a3, a4);
    return $defer #1 <A>() in static View.makeDebuggableViewList(view:inputs:)(v13, a3, a4);
  }

  return result;
}

uint64_t _VariadicView_Children.endIndex.getter()
{
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v1 = static Update._lock;
  _MovableLockLock(static Update._lock);
  specialized static Update.begin()();
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v2);
  v4 = ViewList.count.getter(v2, v3);
  static Update.end()();
  _MovableLockUnlock(v1);
  return v4;
}

uint64_t LocationBox.projecting<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *v3;
  v12 = v3;
  v9 = *(v3 + *(v7 + 192));

  os_unfair_lock_lock(v9 + 4);
  swift_getWitnessTable(protocol conformance descriptor for LocationBox<A>, v8);
  v10 = LocationProjectionCache.reference<A, B>(for:on:)(a1, &v12, a2, v8, a3);
  os_unfair_lock_unlock(v9 + 4);

  return v10;
}

double _ViewInputs.isInLazyContainer.setter(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t *))
{

  a2(v2, a1, &v6);

  return result;
}

uint64_t specialized _GraphInputs.subscript.setter(uint64_t a1, Swift::Int a2, Swift::Int a3, uint64_t a4)
{
  _GraphInputs.recordReusableInput<A>(_:)(a3, a3, a4);
  v8 = *(a4 + 8);

  return specialized PropertyList.subscript.setter(a1, a2, a3, v8);
}

uint64_t _GraphInputs.subscript.setter(uint64_t a1, Swift::Int a2, Swift::Int a3, uint64_t a4)
{
  specialized _GraphInputs.subscript.setter(a1, a2, a3, a4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 8);

  return v6(a1, AssociatedTypeWitness);
}

uint64_t initializeWithCopy for BaseViewList(uint64_t a1, uint64_t a2)
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

uint64_t destroy for BaseViewList(void *a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t static _PreferenceTransformModifier._makeView(modifier:inputs:body:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(void *__return_ptr)@<X2>, ValueMetadata *a4@<X4>, uint64_t a5@<X5>, void *a6@<X8>)
{
  v8 = *a1;
  v9 = *(a2 + 16);
  v16[0] = *a2;
  v16[1] = v9;
  v16[2] = *(a2 + 32);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  v19 = *(a2 + 60);
  v20 = *(a2 + 76);
  v17 = v10;
  v18 = v11;
  a3(a6);
  *&v16[0] = v10;
  DWORD2(v16[0]) = v11;
  v14[2] = a4;
  v14[3] = a5;
  v15 = v8;

  PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)(v16, v12, partial apply for implicit closure #1 in static _PreferenceTransformModifier._makeView(modifier:inputs:body:), v14, a4, a5);
}

uint64_t implicit closure #1 in static _PreferenceTransformModifier._makeView(modifier:inputs:body:)(int a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v17 = a2;
  v18 = a3;
  v10 = a1;
  v11 = _s14AttributeGraph0A0V13dynamicMemberACyqd__Gs7KeyPathCyxqd__G_tcluigqd__xcfU_TA_0;
  KeyPath = swift_getKeyPath();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  FunctionTypeMetadata = swift_getFunctionTypeMetadata();
  type metadata accessor for _PreferenceTransformModifier(255, a2, a3, v5);
  v15 = type metadata accessor for Map();
  swift_getWitnessTable(MEMORY[0x1E698D3A8], v15);
  v16 = v6;
  v7 = type metadata accessor for Attribute();

  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v10, closure #1 in Attribute.init<A>(_:)partial apply, v13, v15, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);

  return AssociatedTypeWitness;
}

__n128 sub_18D1A4624(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t *assignWithTake for Binding(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = a2 + 15;
  *a1 = *a2;

  v6 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v5 &= 0xFFFFFFFFFFFFFFF8;
  *v6 = *v5;

  v7 = *(*(a3 + 16) - 8);
  (*(v7 + 40))((v6 + *(v7 + 80) + 8) & ~*(v7 + 80), (*(v7 + 80) + 8 + v5) & ~*(v7 + 80));
  return a1;
}

uint64_t getEnumTag for StateOrBinding(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(a2 + 16) - 8);
  v3 = *(v2 + 64);
  v4 = ((v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v5 = ((*(v2 + 80) + 16) & ~*(v2 + 80)) + v3;
  if (v5 <= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = a1[v6];
  v8 = v7 - 2;
  if (v7 >= 2)
  {
    if (v6 <= 3)
    {
      v9 = v6;
    }

    else
    {
      v9 = 4;
    }

    if (v9 <= 1)
    {
      if (!v9)
      {
        return v7;
      }

      v10 = *a1;
    }

    else if (v9 == 2)
    {
      v10 = *a1;
    }

    else if (v9 == 3)
    {
      v10 = *a1 | (a1[2] << 16);
    }

    else
    {
      v10 = *a1;
    }

    v11 = (v10 | (v8 << (8 * v6))) + 2;
    LODWORD(v7) = v10 + 2;
    if (v6 >= 4)
    {
      return v7;
    }

    else
    {
      return v11;
    }
  }

  return v7;
}

void destructiveInjectEnumTag for StateOrBinding(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  if (a2 > 1)
  {
    v7 = *(v3 + 64);
    v8 = ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v9 = ((*(v3 + 80) + 16) & ~*(v3 + 80)) + v7;
    if (v9 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v9;
    }

    v11 = a2 - 2;
    if (v10 < 4)
    {
      a1[v10] = (v11 >> (8 * v10)) + 2;
      if (v10)
      {
        v13 = v11 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v10 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v11;
        }
      }
    }

    else
    {
      a1[v10] = 2;
      bzero(a1, v10);
      *a1 = v11;
    }
  }

  else
  {
    v4 = *(v3 + 64);
    v5 = ((*(v3 + 80) + 16) & ~*(v3 + 80)) + v4;
    v6 = ((v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    if (v5 <= v6)
    {
      v5 = v6;
    }

    a1[v5] = a2;
  }
}

uint64_t one-time initialization function for navigation()
{
  _ss23_ContiguousArrayStorageCys7CVarArg_pGMaTm_4(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  v1 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12 - v2;
  __swift_allocate_value_buffer(v4, static Log.navigation);
  v5 = __swift_project_value_buffer(v1, static Log.navigation);
  v6 = [objc_opt_self() standardUserDefaults];
  v7 = MEMORY[0x193ABEC20](0xD000000000000029, 0x800000018DD839A0);
  v8 = [v6 BOOLForKey_];

  if (v8)
  {
    Logger.init(subsystem:category:)();
    v9 = type metadata accessor for Logger();
    (*(*(v9 - 8) + 56))(v3, 0, 1, v9);
  }

  else
  {
    v10 = type metadata accessor for Logger();
    (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  }

  return outlined init with take of Logger?(v3, v5);
}

void lazy protocol witness table accessor for type _VariadicView_Children and conformance _VariadicView_Children()
{
  if (!lazy protocol witness table cache variable for type _VariadicView_Children and conformance _VariadicView_Children)
  {
    swift_getWitnessTable(protocol conformance descriptor for _VariadicView_Children, &type metadata for _VariadicView_Children, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _VariadicView_Children and conformance _VariadicView_Children);
  }
}

{
  if (!lazy protocol witness table cache variable for type _VariadicView_Children and conformance _VariadicView_Children)
  {
    swift_getWitnessTable(protocol conformance descriptor for _VariadicView_Children, &type metadata for _VariadicView_Children, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _VariadicView_Children and conformance _VariadicView_Children);
  }
}

{
  if (!lazy protocol witness table cache variable for type _VariadicView_Children and conformance _VariadicView_Children)
  {
    swift_getWitnessTable(protocol conformance descriptor for _VariadicView_Children, &type metadata for _VariadicView_Children, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _VariadicView_Children and conformance _VariadicView_Children);
  }
}

{
  if (!lazy protocol witness table cache variable for type _VariadicView_Children and conformance _VariadicView_Children)
  {
    swift_getWitnessTable(protocol conformance descriptor for _VariadicView_Children, &type metadata for _VariadicView_Children, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _VariadicView_Children and conformance _VariadicView_Children);
  }
}

double get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA29IgnoresAutomaticPaddingLayout33_47C1BD8C61550BB60F4F3D12F752D53DLLVGAaBHPxAaBHD1__AgA0C8ModifierHPyHCHCTm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1[1];
  v6 = type metadata accessor for ModifiedContent(255, *a1, a2, a4);
  v8[0] = v5;
  v8[1] = a3;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v6, v8);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _OffsetEffect(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t Namespace.wrappedValue.getter(uint64_t result)
{
  if (!result)
  {
    v2 = static os_log_type_t.fault.getter();
    if (one-time initialization token for runtimeIssuesLog != -1)
    {
      v3 = v2;
      swift_once();
      v2 = v3;
    }

    os_log(_:dso:log:_:_:)(v2, &dword_18D018000, static Log.runtimeIssuesLog, "Reading a Namespace property outside View.body. This will result in identifiers that never match any other identifier.", 118, 2, MEMORY[0x1E69E7CC0]);

    return AGMakeUniqueID();
  }

  return result;
}

_DWORD *initializeWithTake for EnvironmentBox(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 11) & 0xFFFFFFFFFFFFFFF8);
  v5 = ((a2 + 11) & 0xFFFFFFFFFFFFFFF8);
  *v4 = *v5;
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = ((v4 + v8 + 8) & ~v8);
  v10 = ((v5 + v8 + 8) & ~v8);
  if ((*(v7 + 48))(v10, 1, v6))
  {
    v11 = *(v7 + 84);
    v12 = *(v7 + 64);
    if (v11)
    {
      v13 = v12;
    }

    else
    {
      v13 = v12 + 1;
    }

    memcpy(v9, v10, v13);
  }

  else
  {
    (*(v7 + 32))(v9, v10, v6);
    v15 = *(v7 + 56);
    v14 = v7 + 56;
    v15(v9, 0, 1, v6);
    v11 = *(v14 + 28);
    v12 = *(v14 + 8);
  }

  if (v11)
  {
    v16 = v12;
  }

  else
  {
    v16 = v12 + 1;
  }

  *(v9 + v16) = *(v10 + v16);
  return a1;
}