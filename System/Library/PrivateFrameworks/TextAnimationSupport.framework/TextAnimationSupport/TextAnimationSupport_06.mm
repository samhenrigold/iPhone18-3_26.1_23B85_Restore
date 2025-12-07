void closure #1 in Text.Effect.ResolvedDrawing.Operation.drawingBounds(context:)(CGFloat *a1@<X0>, CGRect *a3@<X8>)
{
  v5 = type metadata accessor for Text.Layout.Run();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  v12 = a1[3];
  Text.Layout.Line.subscript.getter();
  Text.Layout.Run.quantizedImageBounds.getter();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  (*(v6 + 8))(v8, v5);
  v22.origin.x = v9;
  v22.origin.y = v10;
  v22.size.width = v11;
  v22.size.height = v12;
  v23.origin.x = v14;
  v23.origin.y = v16;
  v23.size.width = v18;
  v23.size.height = v20;
  *a3 = CGRectUnion(v22, v23);
}

uint64_t Text.Effect.ResolvedDrawing.Operation.draw(at:context:options:in:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5, double a6)
{
  v74 = a4;
  v75 = a3;
  v73 = a2;
  v64 = a1;
  v9 = type metadata accessor for Text.Effect.ResolvedDrawing.Operation(0);
  v10 = v9 - 8;
  v63 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for GraphicsContext.Shading();
  v66 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v65 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for Text.Layout.RunSlice();
  v72 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v71 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for Text.Layout.Run();
  v69 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Text.Layout.Line();
  v68 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = type metadata accessor for Text.Effect.ResolvedDrawing.Operation.Kind(0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  GraphicsContext.transform.getter();
  GraphicsContext.opacity.getter();
  v23 = (v6 + *(v10 + 32));
  v24 = v23[2];
  *&v87.c = v23[1];
  *&v87.tx = v24;
  *&v87.a = *v23;
  GraphicsContext.concatenate(_:)(&v87);
  GraphicsContext.opacity.getter();
  v76 = a5;
  GraphicsContext.opacity.setter();
  outlined init with copy of Text.Effect.ResolvedDrawing.Operation.Kind(v6, v22, type metadata accessor for Text.Effect.ResolvedDrawing.Operation.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v26 = *v22;
        v27 = *(v22 + 2);
        v28 = GraphicsContext.drawingState.getter();
        LODWORD(v29) = v27;
        [v26 drawInState:v28 by:v29];
LABEL_25:

        goto LABEL_26;
      }

      v48 = *v22;
      v47 = *(v22 + 1);
      v49 = *(v22 + 2);
      v50 = v64;
      v81 = *(v64 + 16);
      result = Text.Effect.Keyframes.validFilter(_:)(v48, v81);
      if (!result)
      {
        v56 = *(v49 + 16);
        if (v56)
        {
          v57 = v49 + ((*(v63 + 80) + 32) & ~*(v63 + 80));
          v58 = *(v63 + 72);
          v59 = v76;
          do
          {
            outlined init with copy of Text.Effect.ResolvedDrawing.Operation.Kind(v57, v12, type metadata accessor for Text.Effect.ResolvedDrawing.Operation);
            Text.Effect.ResolvedDrawing.Operation.draw(at:context:options:in:)(v50, 0, 0, 1, v59, a6);
            outlined destroy of Text.Effect.ResolvedDrawing.Operation(v12);
            v57 += v58;
            --v56;
          }

          while (v56);
        }

        goto LABEL_26;
      }

      v26 = result;
      v51 = *(v50 + 16);
      v82 = *v50;
      v52 = v82;
      v53 = *(v50 + 32);
      v85 = v51;
      v86 = v53;
      v84 = v82;
      *&v83 = a6;
      *(&v83 + 1) = v49;
      v54 = *(v82 + 16);
      if (v54)
      {
        result = specialized __RawDictionaryStorage.find<A>(_:)(v48);
        if (v55)
        {
          v54 = *(*(v52 + 56) + 8 * result);
        }

        else
        {
          v54 = 0;
        }
      }

      v60 = *(v50 + 40);
      v80 = *(v50 + 32);
      v79 = v60;
      v61 = v54 + v47;
      if (!__OFADD__(v54, v47))
      {
        v62 = *((*MEMORY[0x1E69E7D40] & *v26) + 0xD8);
        outlined init with copy of Text.Effect.BaseFragmentIdentifierMap(&v82, v78);
        outlined init with copy of Text.Effect.Keyframes(&v81, v78);

        outlined init with copy of Text.Effect.ResolvedDrawing.Operation.Kind(&v80, v78, type metadata accessor for [Int : CGFloat]);
        outlined init with copy of Text.Effect.ResolvedDrawing.Operation.Kind(&v79, v78, type metadata accessor for [Text.Effect.RelativeIdentifierKey : CGFloat]);
        v62(v48, v61, &v83, v50, v76, a6);
        outlined destroy of Text.Effect.DrawingContent(&v83);
        goto LABEL_25;
      }

      __break(1u);
      goto LABEL_29;
    }

    v45 = *(v22 + 1);
    v83 = *v22;
    v84 = v45;
    LOBYTE(v85) = v22[32];
    Color.init(_:)();
    v46 = v65;
    static GraphicsContext.Shading.color(_:)();

    GraphicsContext.fill(_:with:style:)();
    outlined destroy of Path(&v83);
    v66[1](v46, v67);
LABEL_26:
    GraphicsContext.transform.setter();
    return GraphicsContext.opacity.setter();
  }

  v30 = v69;
  v66 = v19;
  v31 = v71;
  v32 = v72;
  v67 = v17;
  v33 = v77;
  v34 = v70;
  if (EnumCaseMultiPayload)
  {
    type metadata accessor for (Text.Layout.RunSlice, Color.Resolved?)(0);
    (*(v32 + 32))(v31, v22, v33);
    GraphicsContext.draw(_:foregroundColor:options:)();
    (*(v32 + 8))(v31, v33);
    goto LABEL_26;
  }

  type metadata accessor for (Text.Layout.Line, Range<Int>, Color.Resolved?)(0);
  v36 = &v22[*(v35 + 48)];
  v37 = *v36;
  v38 = v36[1];
  v39 = v66;
  (*(v68 + 32))(v66, v22, v67);
  if (v37 == v38)
  {
LABEL_11:
    (*(v68 + 8))(v39, v67);
    goto LABEL_26;
  }

  v40 = v38;
  result = v37;
  if (v38 < v37)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v37 < v38)
  {
    v77 = *v76;
    v42 = (v30 + 8);
    v39 = v66;
    do
    {
      v43 = result + 1;
      v44 = v40;
      Text.Layout.Line.subscript.getter();
      GraphicsContext.draw(_:foregroundColor:options:)();
      (*v42)(v16, v34);
      v40 = v44;
      result = v43;
    }

    while (v44 != v43);
    goto LABEL_11;
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t Text.Effect.DrawingContext.Storage.Shared.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t Text.Effect.DrawingContext.Storage.append(_:)(uint64_t a1)
{
  v3 = type metadata accessor for Text.Effect.ResolvedDrawing.Operation(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 16);
  outlined init with copy of Text.Effect.ResolvedDrawing.Operation.Kind(a1, v7, type metadata accessor for Text.Effect.ResolvedDrawing.Operation.Kind);
  *&v7[*(v4 + 28)] = *(v1 + 72);
  v9 = &v7[*(v4 + 32)];
  v10 = *(v1 + 40);
  *v9 = *(v1 + 24);
  *(v9 + 1) = v10;
  *(v9 + 2) = *(v1 + 56);
  swift_beginAccess();
  v11 = *(v8 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v8 + 16) = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11[2] + 1, 1, v11);
    *(v8 + 16) = v11;
  }

  v14 = v11[2];
  v13 = v11[3];
  if (v14 >= v13 >> 1)
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v11);
  }

  v11[2] = v14 + 1;
  outlined init with take of Text.Effect.ResolvedDrawing.Operation(v7, v11 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v14);
  *(v8 + 16) = v11;
  swift_endAccess();
}

{
  v34 = type metadata accessor for Text.Effect.ResolvedDrawing.Operation(0);
  v3 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v31 - v7;
  v9 = *(v1 + 40);
  v40 = *(v1 + 24);
  v41 = v9;
  v42 = *(v1 + 56);
  v43 = 0x3FF0000000000000;
  v44 = 0;
  v45 = 0;
  v46 = 0x3FF0000000000000;
  v47 = 0;
  v48 = 0;
  result = static CGAffineTransform.== infix(_:_:)();
  if ((result & 1) != 0 || *(v1 + 72) == 1.0)
  {
    swift_beginAccess();

    specialized Array.append<A>(contentsOf:)(v11);
    swift_endAccess();
  }

  else
  {
    v12 = *(a1 + 16);
    if (v12)
    {
      v13 = *(v34 + 24);
      v33 = *(v34 + 20);
      v14 = &v8[v13];
      v32 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v15 = a1 + v32;
      v31 = *(v3 + 72);
      do
      {
        outlined init with copy of Text.Effect.ResolvedDrawing.Operation.Kind(v15, v8, type metadata accessor for Text.Effect.ResolvedDrawing.Operation);
        v16 = *(v1 + 16);
        outlined init with copy of Text.Effect.ResolvedDrawing.Operation.Kind(v8, v5, type metadata accessor for Text.Effect.ResolvedDrawing.Operation.Kind);
        v17 = *(v14 + 1);
        *&t1.a = *v14;
        v18 = *(v14 + 2);
        *&t1.c = v17;
        *&t1.tx = v18;
        v19 = *(v1 + 40);
        *&t2.a = *(v1 + 24);
        *&t2.c = v19;
        *&t2.tx = *(v1 + 56);
        CGAffineTransformConcat(&v37, &t1, &t2);
        tx = v37.tx;
        ty = v37.ty;
        v36 = *&v37.a;
        v35 = *&v37.c;
        v22 = *&v8[v33];

        outlined destroy of Text.Effect.ResolvedDrawing.Operation(v8);
        v23 = v34;
        *&v5[*(v34 + 20)] = v22 * *(v1 + 72);
        v24 = &v5[*(v23 + 24)];
        v25 = v35;
        *v24 = v36;
        *(v24 + 1) = v25;
        *(v24 + 4) = tx;
        *(v24 + 5) = ty;
        swift_beginAccess();
        v26 = *(v16 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v16 + 16) = v26;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26[2] + 1, 1, v26);
          *(v16 + 16) = v26;
        }

        v29 = v26[2];
        v28 = v26[3];
        if (v29 >= v28 >> 1)
        {
          v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v26);
        }

        v26[2] = v29 + 1;
        v30 = v31;
        outlined init with take of Text.Effect.ResolvedDrawing.Operation(v5, v26 + v32 + v29 * v31);
        *(v16 + 16) = v26;
        swift_endAccess();

        v15 += v30;
        --v12;
      }

      while (v12);
    }
  }

  return result;
}

uint64_t Text.Effect.DrawingContext.Storage.__deallocating_deinit()
{

  outlined consume of Text.Effect.StopCollector?(v0[23], v0[24], v0[25], v0[26], v0[27]);

  return swift_deallocClassInstance();
}

void type metadata completion function for Text.Effect.ResolvedDrawing.Operation(uint64_t a1)
{
  type metadata accessor for Text.Effect.ResolvedDrawing.Operation.Kind(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CGAffineTransform(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for Text.Effect.ResolvedDrawing.Operation.Kind(uint64_t a1)
{
  type metadata accessor for (Text.Layout.Line, Range<Int>, Color.Resolved?)(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for (Text.Layout.RunSlice, Color.Resolved?)(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for (Path, Color.Resolved)(319, &lazy cache variable for type metadata for (Path, Color.Resolved), MEMORY[0x1E6980F80], MEMORY[0x1E6981540]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for (RBDisplayListInterpolator, Float)(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for (Path, Color.Resolved)(319, &lazy cache variable for type metadata for (Text.Effect.RelativeIdentifierKey, Text.Effect.ResolvedDrawing), &type metadata for Text.Effect.RelativeIdentifierKey, &type metadata for Text.Effect.ResolvedDrawing);
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata accessor for (Text.Layout.Line, Range<Int>, Color.Resolved?)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (Text.Layout.Line, Range<Int>, Color.Resolved?))
  {
    type metadata accessor for Text.Layout.Line();
    type metadata accessor for Range<Int>();
    type metadata accessor for Color.Resolved?();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (Text.Layout.Line, Range<Int>, Color.Resolved?));
    }
  }
}

void type metadata accessor for Color.Resolved?()
{
  if (!lazy cache variable for type metadata for Color.Resolved?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Color.Resolved?);
    }
  }
}

void type metadata accessor for (Text.Layout.RunSlice, Color.Resolved?)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (Text.Layout.RunSlice, Color.Resolved?))
  {
    type metadata accessor for Text.Layout.RunSlice();
    type metadata accessor for Color.Resolved?();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Text.Layout.RunSlice, Color.Resolved?));
    }
  }
}

void type metadata accessor for (RBDisplayListInterpolator, Float)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (RBDisplayListInterpolator, Float))
  {
    type metadata accessor for RBDisplayListInterpolator();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (RBDisplayListInterpolator, Float));
    }
  }
}

unint64_t type metadata accessor for RBDisplayListInterpolator()
{
  result = lazy cache variable for type metadata for RBDisplayListInterpolator;
  if (!lazy cache variable for type metadata for RBDisplayListInterpolator)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for RBDisplayListInterpolator);
  }

  return result;
}

void type metadata accessor for (Path, Color.Resolved)(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

double Text.Effect.DrawingContext.fragment<A>(for:key:fragment:)@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a6@<X8>)
{
  v11 = *(*(*v6 + 16) + 48);

  Text.Effect.DrawableFragment.init(keyframes:key:fragment:)(v11, a1, a2, a3, v14);
  v12 = v14[1];
  *a6 = v14[0];
  *(a6 + 16) = v12;
  result = *&v15;
  *(a6 + 32) = v15;
  *(a6 + 48) = v16;
  return result;
}

uint64_t Text.Effect.DrawingContext.foregroundColor.setter(uint64_t a1, uint64_t a2, char a3)
{
  result = *v3;
  if (a3)
  {
    if (*(*v3 + 96))
    {
      return result;
    }
  }

  else if ((*(*v3 + 96) & 1) == 0)
  {
    result = static Color.Resolved.== infix(_:_:)();
    if (result)
    {
      return result;
    }
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v3;
  if ((result & 1) == 0)
  {
    type metadata accessor for Text.Effect.DrawingContext.Storage();
    v9 = swift_allocObject();
    *(v9 + 104) = 0u;
    *(v9 + 120) = 0u;
    *(v9 + 136) = 0u;
    __asm { FMOV            V0.2D, #1.0 }

    *(v9 + 152) = _Q0;
    *(v9 + 168) = 0x3FF0000000000000;
    *(v9 + 176) = 0;
    *(v9 + 16) = *(v8 + 16);
    v15 = *(v8 + 40);
    v16 = *(v8 + 56);
    *(v9 + 24) = *(v8 + 24);
    *(v9 + 40) = v15;
    *(v9 + 56) = v16;
    *(v9 + 72) = *(v8 + 72);
    v17 = *(v8 + 184);
    v18 = *(v8 + 192);
    v19 = *(v8 + 200);
    v20 = *(v8 + 208);
    v25 = a1;
    v21 = a2;
    v22 = *(v8 + 216);
    *(v9 + 184) = v17;
    *(v9 + 192) = v18;
    *(v9 + 200) = v19;
    *(v9 + 208) = v20;
    *(v9 + 216) = v22;
    v23 = *(v8 + 96);
    *(v9 + 80) = *(v8 + 80);
    *(v9 + 96) = v23;

    v24 = v22;
    a2 = v21;
    a1 = v25;
    outlined copy of Text.Effect.StopCollector?(v17, v18, v19, v20, v24);

    *v3 = v9;
    v8 = v9;
  }

  *(v8 + 80) = a1;
  *(v8 + 88) = a2;
  *(v8 + 96) = a3 & 1;
  return result;
}

uint64_t outlined init with copy of Text.Effect.ResolvedDrawing.Operation.Kind(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of Text.Effect.ResolvedDrawing.Operation(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Text.Effect.ResolvedDrawing.Operation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double outlined copy of Text.Effect.StopCollector?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    outlined copy of (key: Text.Effect.StopKey, segment: Text.Effect.StopCollector.Segment, indices: Set<Text.Effect.ClusterIndex>)?(a1, a2, a3);
  }

  return result;
}

double outlined copy of (key: Text.Effect.StopKey, segment: Text.Effect.StopCollector.Segment, indices: Set<Text.Effect.ClusterIndex>)?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }

  return result;
}

double outlined consume of Text.Effect.StopCollector?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    outlined consume of (key: Text.Effect.StopKey, segment: Text.Effect.StopCollector.Segment, indices: Set<Text.Effect.ClusterIndex>)?(a1, a2, a3);
  }

  return result;
}

double outlined consume of (key: Text.Effect.StopKey, segment: Text.Effect.StopCollector.Segment, indices: Set<Text.Effect.ClusterIndex>)?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }

  return result;
}

uint64_t CGRect.roundCoordinatesToNearestOrUp(toMultipleOf:)(double a1)
{
  v2 = v1;
  v4 = type metadata accessor for FloatingPointRoundingRule();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28.origin.x = *v1;
  v8 = v1 + 1;
  v28.origin.y = v1[1];
  v28.size.width = v1[2];
  v9 = v1 + 2;
  v25 = v9;
  v28.size.height = v2[3];
  v24 = v2 + 3;
  v29 = CGRectStandardize(v28);
  y = v29.origin.y;
  *v8 = v29.origin.y;
  *v9 = v29.size.width;
  v2[3] = v29.size.height;
  v11 = v29.origin.x + v29.size.width;
  v12 = v29.origin.y + v29.size.height;
  v26 = v29.origin.y + v29.size.height;
  v27 = v29.origin.x + v29.size.width;
  *v2 = a1 * 0.5 + v29.origin.x;
  v13 = *MEMORY[0x1E69E7048];
  v14 = *(v5 + 104);
  v14(v7, v13, v4);
  specialized FloatingPoint.round(_:toMultipleOf:)(v7, a1);
  v15 = *(v5 + 8);
  v15(v7, v4);
  *v8 = a1 * 0.5 + y;
  v14(v7, v13, v4);
  specialized FloatingPoint.round(_:toMultipleOf:)(v7, a1);
  v15(v7, v4);
  v27 = a1 * 0.5 + v11;
  v14(v7, v13, v4);
  specialized FloatingPoint.round(_:toMultipleOf:)(v7, a1);
  v15(v7, v4);
  v26 = a1 * 0.5 + v12;
  v14(v7, v13, v4);
  specialized FloatingPoint.round(_:toMultipleOf:)(v7, a1);
  v15(v7, v4);
  v16 = v27;
  v17 = *v2;
  v18 = *v8;
  v20 = v24;
  v19 = v25;
  v30.size.width = *v25;
  v21 = *v24;
  v30.origin.x = v17;
  v30.origin.y = *v8;
  v30.size.height = *v24;
  v31.size.width = v16 - CGRectGetMinX(v30);
  *v19 = v31.size.width;
  v22 = v26;
  v31.origin.x = v17;
  v31.origin.y = v18;
  v31.size.height = v21;
  *v20 = v22 - CGRectGetMinY(v31);
  v14(v7, *MEMORY[0x1E69E7038], v4);
  specialized FloatingPoint.round(_:toMultipleOf:)(v7, a1);
  specialized FloatingPoint.round(_:toMultipleOf:)(v7, a1);
  return (v15)(v7, v4);
}

uint64_t closure #1 in SquishTextEffect.configuration(_:)(__n128 a1, double a2, double a3, double a4, uint64_t a5, __int128 *a6, uint64_t a7)
{
  v10 = a1.n128_u64[0];
  outlined init with copy of Text.Effect.DrawableFragment<SquishTextEffect>(a6, v25, &lazy cache variable for type metadata for Text.Effect.DrawableFragment<SquishTextEffect>, lazy protocol witness table accessor for type SquishTextEffect and conformance SquishTextEffect, &type metadata for SquishTextEffect, type metadata accessor for Text.Effect.DrawableFragment, a1);
  _s7SwiftUI4TextV0C16AnimationSupportE6EffectO16PathInterpolatorV_12quantization7optionsAhF16DrawableFragmentVy__xG_AF19QuantizationContextVAH7OptionsVtcAD0cF0RzlufCAD06SquishcF0V_Tt2g5(a6, a7, 1, v25);
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  *(v13 + 24) = a2;
  *(v13 + 32) = a3;
  *(v13 + 40) = a4;
  v14 = swift_allocObject();
  v15 = v25[3];
  v16 = v25[4];
  *(v14 + 48) = v25[2];
  *(v14 + 64) = v15;
  *(v14 + 80) = v16;
  v17 = v26;
  v18 = v25[1];
  *(v14 + 16) = v25[0];
  *(v14 + 32) = v18;
  *(v14 + 96) = v17;
  *(v14 + 104) = partial apply for closure #1 in closure #1 in SquishTextEffect.configuration(_:);
  *(v14 + 112) = v13;
  _ss23_ContiguousArrayStorageCy7SwiftUI4TextV0F16AnimationSupportE6EffectO8DrawableV8FragmentOGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.Drawable.Fragment>, &type metadata for Text.Effect.Drawable.Fragment);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_195CC8D00;
  *(inited + 32) = partial apply for closure #1 in Text.Effect.DrawableFragment.transform(with:transform:);
  *(inited + 40) = v14;
  _ss23_ContiguousArrayStorageCy7SwiftUI4TextV0F16AnimationSupportE6EffectO8DrawableV8FragmentOGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.Drawable>, &type metadata for Text.Effect.Drawable);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_195CC8D00;
  *(v20 + 32) = inited;
  v21 = v20 + 32;
  specialized static Text.Effect.DrawingBuilder.buildBlock(_:)(v20);
  v23 = v22;
  swift_setDeallocating();
  outlined destroy of Text.Effect.Drawable(v21);
  return v23;
}

void closure #1 in closure #1 in SquishTextEffect.configuration(_:)(uint64_t a1, double *a2, double a3, double a4, double a5, double a6)
{
  type metadata accessor for Spring?(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v87 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Text.Effect.DrawableFragment<SquishTextEffect>(0, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.WidthMultiplierAttribute>, lazy protocol witness table accessor for type Text.Effect.WidthMultiplierAttribute and conformance Text.Effect.WidthMultiplierAttribute, &type metadata for Text.Effect.WidthMultiplierAttribute, type metadata accessor for Text.Effect.AttributeTracker.Value);
  v15 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v81 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v81 - v22;
  v24 = a2[8];
  v25 = a2[5] - a2[4];
  if (v25 < 0.0)
  {
    v27 = 0.0;
    v26 = 0.0 / v24;
    if (v26 < 0.0)
    {
LABEL_5:
      if (a5 > 0.0)
      {
        v28 = 0.0 / a5;
        goto LABEL_13;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v26 = v25 / v24;
    if (v26 < 0.0)
    {
      v27 = 0.0;
      goto LABEL_5;
    }
  }

  v27 = 1.0;
  if (v26 <= 1.0)
  {
    if (v26 < a5)
    {
      v28 = v26 / a5;
LABEL_13:
      v29 = 1.0;
      if (v28 == 1.0)
      {
        goto LABEL_19;
      }

      goto LABEL_14;
    }

    v27 = v26;
  }

  else if (a5 > 1.0)
  {
    v29 = 1.0;
    v28 = 1.0 / a5;
    if (1.0 / a5 == 1.0)
    {
      goto LABEL_19;
    }

LABEL_14:
    v29 = 1.0 - exp2(v28 * -10.0);
    goto LABEL_19;
  }

LABEL_16:
  v30 = (v27 - a5) / a6;
  v31 = 1.0;
  if (v30 != 1.0)
  {
    v31 = 1.0 - exp2(v30 * -10.0);
  }

  v29 = 1.0 - v31;
LABEL_19:
  v33 = *a2;
  v32 = *(a2 + 1);
  v88 = *(a2 + 32);
  if (one-time initialization token for spring != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Spring();
  v90 = __swift_project_value_buffer(v34, static SquishTextEffect.spring);
  v35 = 0;
  if (v25 < 0.0)
  {
    v36 = 0.0;
  }

  else
  {
    v36 = v25;
  }

  if (__OFSUB__(v33, a1))
  {
    __break(1u);
  }

  else
  {
    v37 = v29 * a3 + 1.0;
    v38 = 1.0;
    __asm { FMOV            V2.2D, #1.0 }

    v89 = _Q2;
    v44 = 0.0;
    v45 = 0;
    v46 = 0.0;
    v47 = 0.0;
    if (_ZF)
    {
      v82 = v33;
      v83 = v17;
      v86 = v15;
      v84 = v20;
      v48 = v29 * a4 + 1.0;
      v102[0] = &type metadata for Text.Effect.WidthMultiplierAttribute;
      v102[1] = v32;
      v102[2] = a1;
      v102[3] = 0;
      v103 = 1;
      v104 = 0;
      v105 = 1;
      v98[0] = &type metadata for Text.Effect.WidthMultiplierAttribute;
      v98[1] = v32;
      v85 = a1;
      v98[2] = a1;
      v98[3] = 0;
      v99 = 1;
      v100 = 0;
      v101 = 1;
      *v91 = v48;
      v49 = v88;
      swift_beginAccess();
      if (*(*(v49 + 16) + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v102), (v50 & 1) != 0) && (type metadata accessor for Text.Effect.DrawableFragment<SquishTextEffect>(0, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.ValueBox<Text.Effect.WidthMultiplierAttribute>, lazy protocol witness table accessor for type Text.Effect.WidthMultiplierAttribute and conformance Text.Effect.WidthMultiplierAttribute, &type metadata for Text.Effect.WidthMultiplierAttribute, type metadata accessor for Text.Effect.AttributeTracker.ValueBox), (v51 = swift_dynamicCastClass()) != 0))
      {
        outlined init with copy of Text.Effect.DrawableFragment<SquishTextEffect>(v51 + *(*v51 + 120), v23, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.WidthMultiplierAttribute>, lazy protocol witness table accessor for type Text.Effect.WidthMultiplierAttribute and conformance Text.Effect.WidthMultiplierAttribute, &type metadata for Text.Effect.WidthMultiplierAttribute, type metadata accessor for Text.Effect.AttributeTracker.Value, v52);
      }

      else
      {
        v53 = *(*(v34 - 8) + 56);
        v54 = v87;
        v53(v87, 1, 1, v34);
        *v23 = v89;
        *(v23 + 2) = 0;
        v55 = v86;
        v56 = *(v86 + 44);
        v53(&v23[v56], 1, 1, v34);
        v57 = &v23[*(v55 + 48)];
        v58 = &v23[*(v55 + 52)];
        outlined assign with take of Spring?(v54, &v23[v56]);
        *v57 = 0;
        v57[8] = 1;
        *v58 = 0;
        v58[8] = 1;
      }

      swift_endAccess();
      v59 = v90;
      if (Spring.isValid.getter())
      {
        v61 = specialized Text.Effect.AttributeTracker.Value.updateSettlingTime(spring:target:at:)(v59, v48, v36);
        v62 = &v23[*(v86 + 48)];
        lazy protocol witness table accessor for type CGFloat and conformance CGFloat(v61, v63, v64);
        Spring.update<A>(value:velocity:target:deltaTime:)();
        *v62 = v36;
        v62[8] = 0;
      }

      else
      {
        outlined destroy of Text.Effect.AttributeTracker.Value<Text.Effect.WidthMultiplierAttribute>(v23, v60);
        v66 = *(v34 - 8);
        v67 = v87;
        (*(v66 + 16))(v87, v59, v34);
        v68 = *(v66 + 56);
        v68(v67, 0, 1, v34);
        *v23 = v48;
        *(v23 + 1) = v48;
        *(v23 + 2) = 0;
        v69 = v86;
        v70 = *(v86 + 44);
        v68(&v23[v70], 1, 1, v34);
        v71 = &v23[*(v69 + 48)];
        v72 = &v23[*(v69 + 52)];
        outlined assign with take of Spring?(v67, &v23[v70]);
        *v71 = 0;
        v71[8] = 1;
        *v72 = 0;
        v72[8] = 1;
      }

      v73 = v84;
      a1 = v85;
      outlined init with copy of Text.Effect.DrawableFragment<SquishTextEffect>(v23, v84, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.WidthMultiplierAttribute>, lazy protocol witness table accessor for type Text.Effect.WidthMultiplierAttribute and conformance Text.Effect.WidthMultiplierAttribute, &type metadata for Text.Effect.WidthMultiplierAttribute, type metadata accessor for Text.Effect.AttributeTracker.Value, v65);
      v74 = v83;
      outlined init with copy of Text.Effect.DrawableFragment<SquishTextEffect>(v73, v83, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.WidthMultiplierAttribute>, lazy protocol witness table accessor for type Text.Effect.WidthMultiplierAttribute and conformance Text.Effect.WidthMultiplierAttribute, &type metadata for Text.Effect.WidthMultiplierAttribute, type metadata accessor for Text.Effect.AttributeTracker.Value, v75);
      swift_beginAccess();
      specialized Text.Effect.AttributeTracker.Tracker.subscript.setter(v74, v98);
      swift_endAccess();
      outlined destroy of Text.Effect.AttributeTracker.Value<Text.Effect.WidthMultiplierAttribute>(v73, v76);
      v38 = *(v23 + 1);
      outlined destroy of Text.Effect.AttributeTracker.Value<Text.Effect.WidthMultiplierAttribute>(v23, v77);
      v35 = *(a2 + 26);
      v44 = a2[27];
      v45 = *(a2 + 28);
      v46 = a2[29];
      v47 = a2[30];
      v33 = v82;
    }

    v78 = v44 - v46;
    v79 = v46 + v47;
    MidX = CGRectGetMidX(*&v35);
    memset(v92, 0, sizeof(v92));
    v93 = MidX;
    v94 = v44;
    v95 = v37;
    v96 = v89;
    v97 = 0;
    Text.Effect.TransformContext.record(target:for:spring:)(v92, a1, v90, v91);
    Text.Effect.TransformContext.draw(state:keyPath:)(v91, 0, 0, 0, 1);
    if (v33 == a1)
    {
      a2[17] = v38 * a2[17];
    }
  }
}

double protocol witness for Text.Effect.Base.timing(for:from:to:duration:) in conformance SquishTextEffect@<D0>(uint64_t a1@<X0>, char *a2@<X5>, char a3@<W6>, _OWORD *a4@<X8>)
{
  specialized SquishTextEffect.timing(for:from:to:duration:)(a1, a2, a3 & 1, v7);
  v5 = v7[1];
  *a4 = v7[0];
  a4[1] = v5;
  result = *&v8;
  a4[2] = v8;
  return result;
}

unint64_t instantiation function for generic protocol witness table for SquishTextEffect(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = lazy protocol witness table accessor for type SquishTextEffect and conformance SquishTextEffect(a1, a2, a3);
  *(a1 + 8) = v4;
  result = lazy protocol witness table accessor for type SquishTextEffect and conformance SquishTextEffect(v4, v5, v6);
  *(a1 + 16) = result;
  return result;
}

double specialized SquishTextEffect.timing(for:from:to:duration:)@<D0>(uint64_t a1@<X0>, char *a2@<X1>, char a3@<W2>, _OWORD *a4@<X8>)
{
  type metadata accessor for Text.Effect.DrawableFragment<SquishTextEffect>(0, &lazy cache variable for type metadata for Text.Effect.DrawableContent<SquishTextEffect>, lazy protocol witness table accessor for type SquishTextEffect and conformance SquishTextEffect, &type metadata for SquishTextEffect, type metadata accessor for Text.Effect.DrawableContent);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v20[-v10];
  v12 = type metadata accessor for Spring();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v20[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  LOBYTE(v21[0]) = 0;
  v20[8] = 1;
  v23 = xmmword_195CCCC80;
  v24 = 1;
  v25 = 0;
  v26 = 0;
  v27 = 2;
  v28 = xmmword_195CCB140;
  v29 = 0;
  v30 = 1;
  v31 = xmmword_195CCB150;
  v32 = 0;
  v33 = MEMORY[0x1E69E7CC0];
  v34 = 0;
  v35 = xmmword_195CCB160;
  v36 = 0;
  if (one-time initialization token for spring != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v12, static SquishTextEffect.spring);
  v17.n128_f64[0] = (*(v13 + 16))(v15, v16, v12);
  outlined init with copy of Text.Effect.DrawableFragment<SquishTextEffect>(a1, v11, &lazy cache variable for type metadata for Text.Effect.DrawableContent<SquishTextEffect>, lazy protocol witness table accessor for type SquishTextEffect and conformance SquishTextEffect, &type metadata for SquishTextEffect, type metadata accessor for Text.Effect.DrawableContent, v17);
  _s7SwiftUI4TextV0C16AnimationSupportE6EffectO6TimingV13configuration8duration6spring7contentA2H13ConfigurationV_SdSgAA6SpringVAF15DrawableContentVy__xGtcAD0cF0RzlufCAD06SquishcF0V_Tt3g5(&v23, a2, a3 & 1, v15, v11, v21);
  v18 = v21[1];
  *a4 = v21[0];
  a4[1] = v18;
  result = *&v22;
  a4[2] = v22;
  return result;
}

uint64_t specialized SquishTextEffect.configuration(_:)(double a1, double a2, double a3, double a4)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  v9 = swift_allocObject();
  *(v9 + 16) = partial apply for closure #1 in SquishTextEffect.configuration(_:);
  *(v9 + 24) = v8;

  v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v12 = v10[2];
  v11 = v10[3];
  if (v12 >= v11 >> 1)
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v10);
  }

  v10[2] = v12 + 1;
  v13 = &v10[2 * v12];
  v13[4] = partial apply for specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A.Text.Effect.Base.Timing, @guaranteed Text.Effect.DrawableFragment<A>, @unowned Text.Effect.QuantizationContext) -> (@owned Text.Effect.Drawable);
  v13[5] = v9;
  return MEMORY[0x1E69E7CC0];
}

void _ss23_ContiguousArrayStorageCy7SwiftUI4TextV0F16AnimationSupportE6EffectO8DrawableV8FragmentOGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for _ContiguousArrayStorage();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for Spring?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Spring?)
  {
    type metadata accessor for Spring();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Spring?);
    }
  }
}

uint64_t outlined destroy of Text.Effect.AttributeTracker.Value<Text.Effect.WidthMultiplierAttribute>(uint64_t a1, __n128 a2)
{
  type metadata accessor for Text.Effect.DrawableFragment<SquishTextEffect>(0, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.WidthMultiplierAttribute>, lazy protocol witness table accessor for type Text.Effect.WidthMultiplierAttribute and conformance Text.Effect.WidthMultiplierAttribute, &type metadata for Text.Effect.WidthMultiplierAttribute, type metadata accessor for Text.Effect.AttributeTracker.Value);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of Text.Effect.DrawableFragment<SquishTextEffect>(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t), __n128 a7)
{
  type metadata accessor for Text.Effect.DrawableFragment<SquishTextEffect>(0, a3, a4, a5, a6);
  (*(*(v9 - 8) + 16))(a2, a1, v9);
  return a2;
}

void type metadata accessor for Text.Effect.DrawableFragment<SquishTextEffect>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type ShakeVerticalTextEffect.LayoutState and conformance ShakeVerticalTextEffect.LayoutState(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type ShakeVerticalTextEffect.LayoutState and conformance ShakeVerticalTextEffect.LayoutState;
  if (!lazy protocol witness table cache variable for type ShakeVerticalTextEffect.LayoutState and conformance ShakeVerticalTextEffect.LayoutState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShakeVerticalTextEffect.LayoutState and conformance ShakeVerticalTextEffect.LayoutState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShakeVerticalTextEffect.LayoutState and conformance ShakeVerticalTextEffect.LayoutState;
  if (!lazy protocol witness table cache variable for type ShakeVerticalTextEffect.LayoutState and conformance ShakeVerticalTextEffect.LayoutState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShakeVerticalTextEffect.LayoutState and conformance ShakeVerticalTextEffect.LayoutState);
  }

  return result;
}

id closure #1 in ShakeVerticalTextEffect.configuration(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Text.Effect.ConcreteLayoutState<ShakeVerticalTextEffect>(0, &lazy cache variable for type metadata for AnyDynamicFontModifier<WeightDeltaModifier>, lazy protocol witness table accessor for type WeightDeltaModifier and conformance WeightDeltaModifier, &type metadata for WeightDeltaModifier, type metadata accessor for AnyDynamicFontModifier);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_195CCCD30;
  *(v6 + 32) = 0x408F400000000000;
  v7 = Text.Effect.Content.modifier(_:)(v6, a1, a2, a3);

  return v7;
}

uint64_t closure #2 in ShakeVerticalTextEffect.configuration(_:)(__int128 *a1, __int128 *a2, uint64_t a3)
{
  v68 = *a1;
  v4 = *(a1 + 2);
  v5 = *(a1 + 3);
  v6 = *(a1 + 4);
  v53 = *(a1 + 5);
  v7 = a2[1];
  v60 = *a2;
  v61 = v7;
  v62 = a2[2];
  v63 = *(a2 + 6);
  v8 = *(&v60 + 1);
  type metadata accessor for Text.Effect.ConcreteLayoutState<ShakeVerticalTextEffect>(0, &lazy cache variable for type metadata for Text.Effect.ConcreteLayoutState<ShakeVerticalTextEffect>, lazy protocol witness table accessor for type ShakeVerticalTextEffect and conformance ShakeVerticalTextEffect, &type metadata for ShakeVerticalTextEffect, type metadata accessor for Text.Effect.ConcreteLayoutState);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v10 = v60;
  v11 = v62;
  swift_retain_n();
  v12 = Text.Effect.Keyframes.subscript.getter(v8, v9, v60);
  if (!v12)
  {
    goto LABEL_31;
  }

  if ((v62 & 0x8000000000000000) != 0)
  {
    goto LABEL_27;
  }

  v52 = v6;
  v6 = *(v12 + 16);
  if (v62 >= v6)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v50 = v5;
  v51 = v4;
  v13 = (v12 + 32);
  v14 = *(v12 + 32 + 8 * v62);
  v15 = 0;
  if (v62)
  {
    v16 = v62;
    while (1)
    {
      v17 = *(*(*v13 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
      v18 = __OFADD__(v15, v17);
      v15 += v17;
      if (v18)
      {
        break;
      }

      ++v13;
      if (!--v16)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

LABEL_8:

  *&v75 = v60;
  *(&v75 + 1) = v8;
  v76 = v9;
  v77 = v14;
  v78 = v62;
  v79 = v6;
  v80 = v15;
  outlined init with copy of Text.Effect.BaseFragment(&v75, &v69);
  v19 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v69 = v19;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v75, isUniquelyReferenced_nonNull_native, 0.0);
  outlined destroy of Text.Effect.BaseFragment(&v75);
  v21 = v69;
  v22 = swift_allocObject();
  *(v22 + 16) = 1;
  v23 = Text.Effect.Keyframes.subscript.getter(v8, v22, v10);
  if (v23)
  {
    v6 = *(v23 + 16);
    if (v11 >= v6)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v24 = *(v23 + 32 + 8 * v11);
    if (!v11)
    {
      v26 = 0;
LABEL_18:

      *&v69 = v10;
      *(&v69 + 1) = v8;
      v70 = v22;
      v71 = v24;
      v72 = v11;
      v73 = v6;
      v74 = v26;
      outlined init with copy of Text.Effect.BaseFragment(&v69, &v64);
      v29 = swift_isUniquelyReferenced_nonNull_native();
      *&v64 = v21;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v69, v29, 1.0);
      outlined destroy of Text.Effect.BaseFragment(&v69);
      v30 = v64;
      v56 = v60;
      v57 = v61;
      v58 = v62;
      v59 = v63;
      outlined init with copy of Text.Effect.DrawableFragment<ShakeVerticalTextEffect>(a2, &v64, &lazy cache variable for type metadata for Text.Effect.DrawableFragment<ShakeVerticalTextEffect>, type metadata accessor for Text.Effect.DrawableFragment);

      v31 = specialized static Text.Effect.stopMarkers(_:)(&v60);
      Text.Effect.PathInterpolator.Map.computeFragment(quantization:stopMarkers:defaultKey:options:)(a3, v31, v32, 3, v30, 0.0);
      v55 = v33;
      v49 = v34;

      v35 = *(v30 + 16);
      if (v35)
      {
        v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSd_Tt1g5(*(v30 + 16), 0);
        v36 = specialized Sequence._copySequenceContents(initializing:)(&v64, v6 + 4, v35, v30);
        v37 = v64;

        outlined consume of [Double : Text.Effect.BaseFragment].Iterator._Variant(v37);
        if (v36 != v35)
        {
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }
      }

      else
      {

        v6 = MEMORY[0x1E69E7CC0];
      }

      *&v64 = v6;
      specialized MutableCollection<>.sort(by:)(&v64);

      v38 = specialized Text.Effect.PathInterpolator.MapKeys.init(_:)(v64);
      v64 = v56;
      v65 = v57;
      v66 = v58;
      v67 = v59;
      v81 = v51;
      v82 = v50;
      v83 = v52;
      v84 = v53;
      v39 = swift_allocObject();
      *(v39 + 16) = v68;
      *(v39 + 32) = v51;
      *(v39 + 40) = v50;
      *(v39 + 48) = v52;
      *(v39 + 56) = v53;
      v40 = a2[1];
      *(v39 + 64) = *a2;
      *(v39 + 80) = v40;
      *(v39 + 96) = a2[2];
      *(v39 + 112) = *(a2 + 6);
      v41 = swift_allocObject();
      v42 = v65;
      *(v41 + 16) = v64;
      *(v41 + 32) = v42;
      *(v41 + 48) = v66;
      *(v41 + 64) = v67;
      *(v41 + 72) = 0;
      *(v41 + 80) = v55;
      *(v41 + 88) = v49;
      *(v41 + 96) = v38;
      *(v41 + 104) = partial apply for closure #2 in closure #2 in ShakeVerticalTextEffect.configuration(_:);
      *(v41 + 112) = v39;
      v43 = MEMORY[0x1E69E6F90];
      type metadata accessor for _ContiguousArrayStorage<Text.Effect.Drawable.Fragment>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.Drawable.Fragment>, &type metadata for Text.Effect.Drawable.Fragment, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_195CC8D00;
      *(inited + 32) = partial apply for closure #1 in Text.Effect.DrawableFragment.transform(with:transform:);
      *(inited + 40) = v41;
      type metadata accessor for _ContiguousArrayStorage<Text.Effect.Drawable.Fragment>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.Drawable>, &type metadata for Text.Effect.Drawable, v43);
      v45 = swift_initStackObject();
      *(v45 + 16) = xmmword_195CC8D00;
      *(v45 + 32) = inited;
      outlined init with copy of Text.Effect.DrawableFragment<ShakeVerticalTextEffect>(a2, &v56, &lazy cache variable for type metadata for Text.Effect.DrawableFragment<ShakeVerticalTextEffect>, type metadata accessor for Text.Effect.DrawableFragment);
      outlined init with copy of [Text.Effect.Timing.Fragment](&v81, &v56, &lazy cache variable for type metadata for [Text.Effect.Timing.GlyphInfo], &type metadata for Text.Effect.Timing.GlyphInfo);
      outlined init with copy of [Text.Effect.Timing.Fragment](&v82, &v56, &lazy cache variable for type metadata for [Text.Effect.Timing.Fragment], &type metadata for Text.Effect.Timing.Fragment);
      outlined init with copy of Text.Effect.Timing.GlyphTiming(&v83, &v56, type metadata accessor for [Text.Effect.Timing.GlyphTiming]);
      outlined init with copy of Text.Effect.ChunkCollection(&v84, &v56);
      specialized static Text.Effect.DrawingBuilder.buildBlock(_:)(v45);
      v47 = v46;
      swift_setDeallocating();
      outlined destroy of Text.Effect.Drawable(v45 + 32);
      return v47;
    }

    v25 = 0;
    v26 = 0;
    while (1)
    {
      v27 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        goto LABEL_24;
      }

      v28 = *(*(*(v23 + 32 + 8 * v25) + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
      v18 = __OFADD__(v26, v28);
      v26 += v28;
      if (v18)
      {
        goto LABEL_25;
      }

      if (__OFSUB__(v11, v27))
      {
        goto LABEL_26;
      }

      ++v25;
      if (v11 == v27)
      {
        goto LABEL_18;
      }
    }
  }

LABEL_31:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);

  __break(1u);
  return result;
}

void closure #2 in closure #2 in ShakeVerticalTextEffect.configuration(_:)(unint64_t a1, double *a2, uint64_t a3, uint64_t a4)
{
  v53 = type metadata accessor for Text.Layout.Line();
  v8 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for Text.Layout.Run();
  v11 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Text.Effect.Timing.GlyphTiming(0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = a2[8];
  v19 = a2[5] - a2[4];
  if (v19 >= 0.0)
  {
    v21 = v19 / v18;
    v20 = 0.0;
    if (v21 < 0.0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v20 = 0.0;
    v21 = 0.0 / v18;
    if (v21 < 0.0)
    {
      goto LABEL_8;
    }
  }

  if (v21 <= 1.0)
  {
    v20 = v21;
  }

  else
  {
    v20 = 1.0;
  }

LABEL_8:
  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_32;
  }

  if (*(*(a3 + 16) + 16) <= a1)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v22 = *(a3 + 32);
  if (*(v22 + 16) <= a1)
  {
LABEL_34:
    __break(1u);
    return;
  }

  v46 = v15;
  v49 = a2;
  v23 = v22 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v24 = *(v16 + 72);
  v48 = a1;
  v47 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Text.Effect.Timing.GlyphTiming(v23 + v24 * a1, v47, type metadata accessor for Text.Effect.Timing.GlyphTiming);
  v25 = *(a4 + 24);
  v26 = *(v25 + 16);
  v27 = 0.0;
  v28 = 0.0;
  if (v26 != *(v25 + 24))
  {
    v51 = OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_line;
    v50 = *(v8 + 16);
    v38 = (v11 + 8);
    v39 = v26 + 1;
    do
    {
      while (1)
      {
        v40 = v53;
        v50(v10, v25 + v51, v53);
        Text.Layout.Line.subscript.getter();
        (*(v8 + 8))(v10, v40);
        if (v39 - 1 < *(v25 + 16) || v39 - 1 >= *(v25 + 24))
        {
          __break(1u);
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

        v42 = Text.Layout.Run.font.getter();
        if (v42)
        {
          break;
        }

        (*v38)(v13, v52);
        if (v28 <= 0.0)
        {
          v28 = 0.0;
        }

LABEL_30:
        if (*(v25 + 24) == v39)
        {
          goto LABEL_12;
        }

        ++v39;
      }

      v43 = v42;
      Size = CTFontGetSize(v42);

      (*v38)(v13, v52);
      if (v28 <= Size)
      {
        v28 = Size;
        goto LABEL_30;
      }
    }

    while (v39++ != *(v25 + 24));
  }

LABEL_12:
  if (v20 < 1.0)
  {
    v29 = sin(v20 * -6.0 * 3.0);
    v27 = pow(2.71828183, -v20) * v29;
  }

  v30 = pow(v20, 0.8);
  v31 = 1.0 - (v30 + -1.0) * (v30 + -1.0) + 1.0 - (v30 + -1.0) * (v30 + -1.0) + -1.0;
  v55 = COERCE_UNSIGNED_INT64(pow(1.0 - v31 * v31, 0.4));
  v56 = v28 / 3.0 * v27;
  v58 = 0;
  v59 = 0;
  v57 = 0;
  __asm { FMOV            V0.2D, #1.0 }

  v60 = _Q0;
  v61 = 0x3FF0000000000000;
  v62 = 0;
  v37 = v47;
  Text.Effect.TransformContext.record(target:for:spring:)(&v55, v48, v47 + *(v46 + 24), v54);
  Text.Effect.TransformContext.draw(state:keyPath:)(v54, 0, 0, 0, 1);
  outlined destroy of Text.Effect.Timing.GlyphTiming(v37);
}

double protocol witness for Text.Effect.Base.timing(for:from:to:duration:) in conformance ShakeVerticalTextEffect@<D0>(uint64_t a1@<X0>, char *a2@<X5>, char a3@<W6>, _OWORD *a4@<X8>)
{
  specialized ShakeVerticalTextEffect.timing(for:from:to:duration:)(a1, a2, a3 & 1, v7);
  v5 = v7[1];
  *a4 = v7[0];
  a4[1] = v5;
  result = *&v8;
  a4[2] = v8;
  return result;
}

unint64_t instantiation function for generic protocol witness table for ShakeVerticalTextEffect(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = lazy protocol witness table accessor for type ShakeVerticalTextEffect and conformance ShakeVerticalTextEffect(a1, a2, a3);
  *(a1 + 8) = v4;
  result = lazy protocol witness table accessor for type ShakeVerticalTextEffect and conformance ShakeVerticalTextEffect(v4, v5, v6);
  *(a1 + 16) = result;
  return result;
}

double specialized ShakeVerticalTextEffect.timing(for:from:to:duration:)@<D0>(uint64_t a1@<X0>, char *a2@<X1>, char a3@<W2>, _OWORD *a4@<X8>)
{
  type metadata accessor for Text.Effect.ConcreteLayoutState<ShakeVerticalTextEffect>(0, &lazy cache variable for type metadata for Text.Effect.DrawableContent<ShakeVerticalTextEffect>, lazy protocol witness table accessor for type ShakeVerticalTextEffect and conformance ShakeVerticalTextEffect, &type metadata for ShakeVerticalTextEffect, type metadata accessor for Text.Effect.DrawableContent);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v18[-v9];
  v11 = type metadata accessor for Spring();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v18[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18[24] = 1;
  v18[16] = 1;
  v21 = xmmword_195CCCD40;
  v22 = 1;
  v23 = 0;
  v24 = 0;
  v25 = 2;
  v27 = 0;
  v28 = 0;
  v26 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 1;
  v33 = MEMORY[0x1E69E7CC0];
  v34 = 0;
  v35 = xmmword_195CCB160;
  v36 = 0;
  if (one-time initialization token for spring != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v11, static ShakeVerticalTextEffect.spring);
  (*(v12 + 16))(v14, v15, v11);
  outlined init with copy of Text.Effect.DrawableFragment<ShakeVerticalTextEffect>(a1, v10, &lazy cache variable for type metadata for Text.Effect.DrawableContent<ShakeVerticalTextEffect>, type metadata accessor for Text.Effect.DrawableContent);
  _s7SwiftUI4TextV0C16AnimationSupportE6EffectO6TimingV13configuration8duration6spring7contentA2H13ConfigurationV_SdSgAA6SpringVAF15DrawableContentVy__xGtcAD0cF0RzlufCAD013ShakeVerticalcF0V_Tt3g5(&v21, a2, a3 & 1, v14, v10, v19);
  v16 = v19[1];
  *a4 = v19[0];
  a4[1] = v16;
  result = *&v20;
  a4[2] = v20;
  return result;
}

void *specialized ShakeVerticalTextEffect.configuration(_:)()
{
  v0 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v2 = v0[2];
  v1 = v0[3];
  if (v2 >= v1 >> 1)
  {
    v0 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v1 > 1), v2 + 1, 1, v0);
  }

  v0[2] = v2 + 1;
  v3 = &v0[4 * v2];
  v3[4] = 1;
  v3[5] = closure #1 in ShakeVerticalTextEffect.configuration(_:);
  v3[6] = 0;
  *(v3 + 56) = 1;
  v4 = swift_allocObject();
  *(v4 + 16) = partial apply for closure #2 in ShakeVerticalTextEffect.configuration(_:);
  *(v4 + 24) = 0;
  v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v7 = v5[2];
  v6 = v5[3];
  if (v7 >= v6 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v5);
  }

  v5[2] = v7 + 1;
  v8 = &v5[2 * v7];
  v8[4] = partial apply for specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A.Text.Effect.Base.Timing, @guaranteed Text.Effect.DrawableFragment<A>, @unowned Text.Effect.QuantizationContext) -> (@owned Text.Effect.Drawable);
  v8[5] = v4;
  return v0;
}

uint64_t outlined init with copy of [Text.Effect.Timing.Fragment](uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for _ContiguousArrayStorage<Text.Effect.Drawable.Fragment>(0, a3, a4, MEMORY[0x1E69E62F8]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with copy of Text.Effect.Timing.GlyphTiming(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void type metadata accessor for [Text.Effect.Timing.GlyphTiming](uint64_t a1)
{
  if (!lazy cache variable for type metadata for [Text.Effect.Timing.GlyphTiming])
  {
    type metadata accessor for Text.Effect.Timing.GlyphTiming(255);
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for [Text.Effect.Timing.GlyphTiming]);
    }
  }
}

void type metadata accessor for Text.Effect.ConcreteLayoutState<ShakeVerticalTextEffect>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t outlined init with copy of Text.Effect.DrawableFragment<ShakeVerticalTextEffect>(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  type metadata accessor for Text.Effect.ConcreteLayoutState<ShakeVerticalTextEffect>(0, a3, lazy protocol witness table accessor for type ShakeVerticalTextEffect and conformance ShakeVerticalTextEffect, &type metadata for ShakeVerticalTextEffect, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t getEnumTagSinglePayload for Text.Effect.KeyframeSequence.Entry(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t storeEnumTagSinglePayload for Text.Effect.KeyframeSequence.Entry(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Text.Effect.KeyframeSequence and conformance Text.Effect.KeyframeSequence(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type Text.Effect.KeyframeSequence and conformance Text.Effect.KeyframeSequence;
  if (!lazy protocol witness table cache variable for type Text.Effect.KeyframeSequence and conformance Text.Effect.KeyframeSequence)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.KeyframeSequence and conformance Text.Effect.KeyframeSequence);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Effect.KeyframeSequence and conformance Text.Effect.KeyframeSequence;
  if (!lazy protocol witness table cache variable for type Text.Effect.KeyframeSequence and conformance Text.Effect.KeyframeSequence)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.KeyframeSequence and conformance Text.Effect.KeyframeSequence);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Effect.KeyframeSequence and conformance Text.Effect.KeyframeSequence;
  if (!lazy protocol witness table cache variable for type Text.Effect.KeyframeSequence and conformance Text.Effect.KeyframeSequence)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.KeyframeSequence and conformance Text.Effect.KeyframeSequence);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Effect.KeyframeSequence and conformance Text.Effect.KeyframeSequence;
  if (!lazy protocol witness table cache variable for type Text.Effect.KeyframeSequence and conformance Text.Effect.KeyframeSequence)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.KeyframeSequence and conformance Text.Effect.KeyframeSequence);
  }

  return result;
}

void (*protocol witness for Collection.subscript.read in conformance Text.Effect.KeyframeSequence(void (*result)(), unint64_t *a2))()
{
  v3 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *(*v2 + 16))
  {
    v4 = *v2 + 24 * v3;
    v5 = *(v4 + 32);
    v6 = *(v4 + 40);
    LOBYTE(v4) = *(v4 + 48);
    *result = v5;
    *(result + 1) = v6;
    *(result + 16) = v4;
    return protocol witness for TextRenderer.draw(layout:in:) in conformance TextWipeTransitionModifier.NullRenderer;
  }

  __break(1u);
  return result;
}

void *protocol witness for Sequence._copyToContiguousArray() in conformance Text.Effect.KeyframeSequence()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(*v0);

  return v1;
}

uint64_t lazy protocol witness table accessor for type IndexingIterator<Text.Effect.KeyframeSequence> and conformance IndexingIterator<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IndexingIterator<Text.Effect.KeyframeSequence>(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for IndexingIterator<Text.Effect.KeyframeSequence>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = lazy protocol witness table accessor for type Text.Effect.KeyframeSequence and conformance Text.Effect.KeyframeSequence(0, a2, a3);
    v7 = a3(a1, &type metadata for Text.Effect.KeyframeSequence, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type Slice<Text.Effect.KeyframeSequence> and conformance <> Slice<A>(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IndexingIterator<Text.Effect.KeyframeSequence>(255, &lazy cache variable for type metadata for Slice<Text.Effect.KeyframeSequence>, MEMORY[0x1E69E74D0]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata completion function for TextEffectImplementation(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v27 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v19 = dispatch thunk of Collection.count.getter();
  if (!v19)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v41 = v19;
  v45 = ContiguousArray.init()();
  v32 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v41);
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = dispatch thunk of Collection.subscript.read();
      v23 = v13;
      v24 = v13;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      ContiguousArray.append(_:)();
      result = dispatch thunk of Collection.formIndex(after:)();
      ++v21;
      v13 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a8;
  v9 = v8;
  v60 = a2;
  v61 = a4;
  v59 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v43 = &v42 - v14;
  v46 = a5;
  v44 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v56 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v57 = &v42 - v18;
  v19 = type metadata accessor for Optional();
  v47 = *(v19 - 8);
  v48 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v50 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v42 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v49 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v55 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v42 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a6;
  v62 = swift_getAssociatedTypeWitness();
  v51 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v31 = &v42 - v30;
  v32 = dispatch thunk of Sequence.underestimatedCount.getter();
  v63 = ContiguousArray.init()();
  v58 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v32);
  (*(v55 + 2))(v29, v52, a3);
  v61 = v31;
  v55 = a3;
  result = dispatch thunk of Sequence.makeIterator()();
  if (v32 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v32)
  {
    v34 = (v54 + 48);
    v35 = (v54 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      dispatch thunk of IteratorProtocol.next()();
      result = (*v34)(v23, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v59(v23, v57);
      if (v9)
      {
        (*(v51 + 8))(v61, v62);

        (*(v44 + 32))(v45, v57, v46);
        return (*v35)(v23, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v35)(v23, AssociatedTypeWitness);
      ContiguousArray.append(_:)();
      if (!--v32)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v36 = v50;
  dispatch thunk of IteratorProtocol.next()();
  v37 = v36;
  v38 = v54;
  v39 = *(v54 + 48);
  v57 = (v54 + 48);
  v55 = v39;
  if (v39(v36, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v51 + 8))(v61, v62);
    (*(v47 + 8))(v37, v48);
    return v63;
  }

  else
  {
    v54 = *(v38 + 32);
    v40 = (v38 + 8);
    v41 = v43;
    while (1)
    {
      (v54)(v41, v37, AssociatedTypeWitness);
      v59(v41, v56);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v40)(v41, AssociatedTypeWitness);
      ContiguousArray.append(_:)();
      dispatch thunk of IteratorProtocol.next()();
      if (v55(v37, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v40)(v41, AssociatedTypeWitness);
    (*(v51 + 8))(v61, v62);

    return (*(v44 + 32))(v45, v56, v46);
  }
}

void *static TextEffectImplementation.ResolvedMap.Key.== infix(_:_:)(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (__OFSUB__(*a2, *result))
  {
    __break(1u);
  }

  else if (*a2 == *result)
  {
    v5 = type metadata accessor for TextEffectImplementation.ResolvedMap.Key(0, a3, a4, a4);
    lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex(v5, v6, v7);

    return static RangeSet.== infix(_:_:)();
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t TextEffectImplementation.ResolvedMap.Key.hash(into:)(uint64_t a1)
{
  MEMORY[0x19A8BDE60](*v1);
  _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_3(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BE0]);
  lazy protocol witness table accessor for type RangeSet<Text.Layout.CharacterIndex> and conformance <> RangeSet<A>();
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int TextEffectImplementation.ResolvedMap.Key.hashValue.getter()
{
  Hasher.init(_seed:)();
  TextEffectImplementation.ResolvedMap.Key.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t TextEffectImplementation.ResolvedMap.Key.init(fragment:ranges:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  v7 = *(type metadata accessor for TextEffectImplementation.ResolvedMap.Key(0, a3, a4, a4) + 36);
  _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_3(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BE0]);
  v9 = *(*(v8 - 8) + 32);

  return v9(&a5[v7], a2, v8);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TextEffectImplementation<A>.ResolvedMap.Key(uint64_t a1)
{
  Hasher.init(_seed:)();
  TextEffectImplementation.ResolvedMap.Key.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t TextEffectImplementation.ResolvedMap.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for TextEffectImplementation.ResolvedMap.Key(0, a3, a4, a4);
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x19A8BD560](&v9, a1, a2, v6, &type metadata for Text.Effect.ResolvedDrawing, WitnessTable);
  return v9;
}

void TextEffectImplementation.ResolvedMap.reset()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TextEffectImplementation.ResolvedMap.Key(255, *(a1 + 16), *(a1 + 24), a4);
  swift_getWitnessTable();
  type metadata accessor for Dictionary();

  Dictionary.removeAll(keepingCapacity:)(0);
}

uint64_t TextEffectImplementation.ResolvedMap.init()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for TextEffectImplementation.ResolvedMap.Key(0, a1, a2, a4);
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE68690](v4, &type metadata for Text.Effect.ResolvedDrawing, WitnessTable);
}

uint64_t TextEffectImplementation.AnimationInfo.updateLayout(effect:identifier:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v65 = a4;
  v73 = a1;
  v12 = *(*v6 + 120);
  v63 = *(*v6 + 128);
  v13 = *(v63 + 16);
  v70 = type metadata accessor for Text.Effect.DrawableContent(0, v12, v13, a4);
  v69 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v72 = v57 - v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v75 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v66 = v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v71 = v57 - v17;
  v18 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = v57 - v19;
  type metadata accessor for Text.Effect.ConcreteLayoutState(0, v12, v13, v21);
  v22 = *(v13 + 128);
  v67 = v13;
  v22(v12, v13);
  v23 = Text.Effect.ConcreteLayoutState.__allocating_init(state:)(v20);
  v64 = a2;
  v24 = Text.Effect.Keyframes.subscript.getter(a2, v23, a5);
  if (!v24)
  {
LABEL_17:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v25 = *(v24 + 16);
  v74 = v23;
  if (v25)
  {
    v58 = a3;
    v59 = a5;
    v60 = a6;
    v61 = v6;
    v77[0] = MEMORY[0x1E69E7CC0];
    v62 = v24;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v25, 0);
    v26 = v62;
    v27 = v77[0];
    v28 = *(v62 + 16);
    v29 = *(v77[0] + 16);
    v30 = 32;
    while (1)
    {
      v31 = *(*(*(v26 + v30) + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
      v77[0] = v27;
      v32 = *(v27 + 24);
      if (v29 >= v32 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v29 + 1, 1);
        v26 = v62;
        v27 = v77[0];
      }

      *(v27 + 16) = v29 + 1;
      *(v27 + 8 * v29 + 32) = v31;
      if (!v28)
      {
        break;
      }

      --v28;
      v30 += 8;
      ++v29;
      if (!--v25)
      {

        v7 = v61;
        v23 = v74;
        a6 = v60;
        a5 = v59;
        a3 = v58;
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  v27 = MEMORY[0x1E69E7CC0];
LABEL_10:
  v33 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(v27, v7[2]);
  v34 = v33;
  if (v33)
  {
    LODWORD(v62) = v33;
    v35 = v64;
    TextEffectsAnimationController.state(for:time:)(v64, v77, *(a6 + 56));
    v7[3] = (*(v63 + 24))(0x6C6F686563616C50, 0xEB00000000726564, v12);
    v7[4] = v36;

    v37 = v67;
    Text.Effect.BaseContext.content<A>(for:key:)(v12, v35, v23, a3, v65, a5);
    v58 = v77[8];
    v59 = v77[9];
    protocol witness for TextRenderer.draw(layout:in:) in conformance TextWipeTransitionModifier.NullRenderer();
    v63 = v38;
    v64 = v39;
    v57[1] = v77[10];
    protocol witness for TextRenderer.draw(layout:in:) in conformance TextWipeTransitionModifier.NullRenderer();
    v60 = v40;
    v61 = v41;
    v65 = *(*v7 + 160);
    v42 = v65;
    swift_beginAccess();
    v43 = v7 + v42;
    v44 = v66;
    v45 = AssociatedTypeWitness;
    (*(v75 + 16))(v66, v43, AssociatedTypeWitness);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v47 = *(AssociatedConformanceWitness + 8);

    v59 = v47(v45, AssociatedConformanceWitness);
    v49 = v48;
    (*(v75 + 8))(v44, v45);
    v50 = v49 & 1;
    v51 = v72;
    (*(v37 + 136))(v72, v63, v64, v60, v61, v59, v50, v12, v37);

    (*(v69 + 8))(v51, v70);
    v52 = v65;
    swift_beginAccess();
    (*(v75 + 40))(v7 + v52, v71, v45);
    swift_endAccess();
    swift_beginAccess();
    if (*(v7[5] + 16))
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v76 = v7[5];
      v7[5] = 0x8000000000000000;
      type metadata accessor for _NativeDictionary<Text.Effect.FragmentIdentifier, Text.Effect.Drawable>(0, v54, v55);
      _NativeDictionary.removeAll(isUnique:)(isUniquelyReferenced_nonNull_native);
      v7[5] = v76;
    }

    swift_endAccess();

    outlined destroy of Text.Effect.State(v77);
    v7[2] = v27;
    v34 = v62;
  }

  else
  {
  }

  return v34 & 1;
}

uint64_t TextEffectImplementation.AnimationInfo.clearFrameCache()()
{
  v1 = *v0;
  swift_beginAccess();

  Text.Effect.AttributeTracker.Tracker.commitUpdates()();
  swift_endAccess();

  *(v0 + *(*v0 + 176)) = 0;

  swift_beginAccess();
  v3 = type metadata accessor for TextEffectImplementation.ResolvedMap(0, *(v1 + 120), *(v1 + 128), v2);
  TextEffectImplementation.ResolvedMap.reset()(v3, v4, v5, v6);
  return swift_endAccess();
}

uint64_t TextEffectImplementation.AnimationInfo.restart()()
{
  v1 = *v0;
  v2 = *(v0 + *(*v0 + 168));
  swift_beginAccess();
  *(v2 + 48) = 1;
  *(v0 + *(*v0 + 176)) = 0;

  swift_beginAccess();
  v4 = type metadata accessor for TextEffectImplementation.ResolvedMap(0, *(v1 + 120), *(v1 + 128), v3);
  TextEffectImplementation.ResolvedMap.reset()(v4, v5, v6, v7);
  return swift_endAccess();
}

BOOL TextEffectImplementation.AnimationInfo.isSettled.getter()
{
  v1 = *(v0 + *(*v0 + 168));
  swift_beginAccess();
  return *(v1 + 32) == 0;
}

void TextEffectImplementation.AnimationInfo.layout(for:state:context:)(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v29 = a4;
  v30 = a5;
  v27 = a2;
  v28 = a3;
  v31 = a6;
  v8 = *v6;
  v9 = *(*v6 + 120);
  v10 = *(*(*v6 + 128) + 16);
  v11 = type metadata accessor for Text.Effect.DrawableContent(0, v9, v10, a3);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v26 - v14);
  v16 = *(v8 + 176);
  v17 = *(v6 + v16);
  if (v17)
  {
    type metadata accessor for Text.Effect.DrawableFragment(0, v9, v10, v13);
    v18 = Text.Effect.DrawableFragment.fragmentIndex.getter();
    if ((v18 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v19 = v18;
      if (v18 < *(v17 + 16))
      {
        v20 = *(type metadata accessor for Text.Effect.Layout.Fragment(0) - 8);
        outlined init with copy of Text.Effect.Layout.Fragment(v17 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v19, v31, type metadata accessor for Text.Effect.Layout.Fragment);
        return;
      }
    }

    __break(1u);
    goto LABEL_11;
  }

  v21 = type metadata accessor for Text.Effect.DrawableFragment(0, v9, v10, v13);
  Text.Effect.DrawableFragment.content.getter(v21, v15);
  v22 = TextEffectImplementation.AnimationInfo.performLayout(for:state:context:)(v15, a1, v27, v28, v29, v30);
  (*(v12 + 8))(v15, v11);
  *(v6 + v16) = v22;

  v23 = Text.Effect.DrawableFragment.fragmentIndex.getter();
  if ((v23 & 0x8000000000000000) != 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v24 = v23;
  if (v23 >= *(v22 + 16))
  {
LABEL_12:
    __break(1u);
    return;
  }

  v25 = *(type metadata accessor for Text.Effect.Layout.Fragment(0) - 8);
  outlined init with copy of Text.Effect.Layout.Fragment(v22 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v24, v31, type metadata accessor for Text.Effect.Layout.Fragment);
}

uint64_t TextEffectImplementation.AnimationInfo.performLayout(for:state:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v54 = a6;
  v53 = a5;
  v52 = a4;
  v51 = a3;
  v50 = a2;
  v55 = a1;
  v7 = *v6;
  v8 = type metadata accessor for Text.Effect.BaseContent(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v44 = (&v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v49 = v6;
  v10 = *(v7 + 128);
  v11 = *(v10 + 16);
  v12 = *(v7 + 120);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v47 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v45 = &v44 - v13;
  _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_3(255, &lazy cache variable for type metadata for Range<Text.Effect.FragmentIdentifier>, lazy protocol witness table accessor for type Text.Effect.FragmentIdentifier and conformance Text.Effect.FragmentIdentifier, &type metadata for Text.Effect.FragmentIdentifier, MEMORY[0x1E69E66A8]);
  v15 = v14;
  v46 = v11;
  v17 = type metadata accessor for Text.Effect.DrawableContent(255, v12, v11, v16);
  v18 = lazy protocol witness table accessor for type Range<Text.Effect.FragmentIdentifier> and conformance <> Range<A>();
  WitnessTable = swift_getWitnessTable();
  *&v69 = v15;
  *(&v69 + 1) = v17;
  v70 = v18;
  v71 = WitnessTable;
  v20 = type metadata accessor for Zip2Sequence();
  v21 = *(v20 - 1);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v44 - v22;
  v24 = swift_getWitnessTable();
  lazy protocol witness table accessor for type Text.Effect.FragmentIdentifier and conformance Text.Effect.FragmentIdentifier(v24, v25, v26);
  RandomAccessCollection<>.indices.getter();
  v68 = v69;
  v27 = v49;
  zip<A, B>(_:_:)();
  v62 = v27;
  v63 = v50;
  v64 = v51;
  v65 = v52;
  v66 = v53;
  v67 = v54;
  v57 = v12;
  v58 = v10;
  v59 = partial apply for closure #1 in TextEffectImplementation.AnimationInfo.performLayout(for:state:context:);
  v60 = &v61;
  v28 = type metadata accessor for Text.Effect.Layout.Fragment(0);
  v29 = swift_getWitnessTable();
  v31 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for thunk for @callee_guaranteed (@unowned Text.Effect.FragmentIdentifier, @guaranteed Text.Effect.DrawableFragment<A>) -> (@out Text.Effect.Layout.Fragment), v56, v20, v28, MEMORY[0x1E69E73E0], v29, MEMORY[0x1E69E7410], v30);
  (*(v21 + 8))(v23, v20);
  *&v68 = v31;
  if (*(v10 + 48))(v12, v10) != 3 && (static TextAlignment.== infix(_:_:)())
  {
    v32 = *(*v27 + 160);
    swift_beginAccess();
    v33 = v47;
    v34 = v27 + v32;
    v35 = v45;
    v36 = AssociatedTypeWitness;
    (*(v47 + 16))(v45, v34, AssociatedTypeWitness);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v38 = (*(AssociatedConformanceWitness + 24))(v36, AssociatedConformanceWitness);
    (*(v33 + 8))(v35, v36);
    if (v38)
    {
      v39 = v55;
      v40 = *(v38 + 16);
      if (!v40)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v39 = v55;
      v41 = v44;
      outlined init with copy of Text.Effect.Layout.Fragment(v55, v44, type metadata accessor for Text.Effect.BaseContent);
      v38 = specialized Text.Effect.ChunkCollection.init(content:)(v41);
      v40 = *(v38 + 16);
      if (!v40)
      {
LABEL_9:

        return v68;
      }
    }

    v42 = (v38 + 48);
    do
    {
      specialized TextEffectImplementation.AnimationInfo.centerAlign(fragments:chunk:content:)(&v68, *(v42 - 2), *v42, v39, v12, v10);
      v42 += 4;
      --v40;
    }

    while (v40);
    goto LABEL_9;
  }

  return v68;
}

uint64_t TextEffectImplementation.AnimationInfo.drawable(_:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  swift_beginAccess();
  v12 = *(v5 + 40);
  if (*(v12 + 16))
  {
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v14)
    {
      v15 = *(*(v12 + 56) + 8 * v13);
      swift_endAccess();

      return v15;
    }
  }

  v16 = swift_endAccess();
  v19 = 0;
  MEMORY[0x1EEE9AC00](v16);
  v18[2] = a2;
  v18[3] = a3;
  v18[4] = a4;
  v18[5] = a5;
  v18[6] = v6;
  v18[7] = a1;
  v18[8] = &v19;
  result = TextEffectsAnimationController.evaluateWithTraitCollection(_:)(partial apply for closure #1 in TextEffectImplementation.AnimationInfo.drawable(_:context:), v18);
  v15 = v19;
  if (v19)
  {
    swift_beginAccess();
    swift_bridgeObjectRetain_n();
    specialized Dictionary.subscript.setter(v15, a1);
    swift_endAccess();

    return v15;
  }

  __break(1u);
  return result;
}

void closure #1 in TextEffectImplementation.AnimationInfo.drawable(_:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, unint64_t a6, uint64_t *a7)
{
  v32 = a7;
  v30[1] = a4;
  v10 = *a5;
  v31 = *(*a5 + 128);
  v11 = *(v31 + 16);
  v12 = *(v10 + 120);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v16 = v30 - v15;
  v17 = &a5[*(v10 + 192)];
  v18 = *v17;
  v19 = v17[1];

  specialized Text.Effect.BaseContext.fragment<A>(for:key:fragment:)(v18, v19, a6, a3, v33);

  v20 = *(a5 + 3);
  v21 = *(a5 + 4);
  v22 = *(*a5 + 160);
  swift_beginAccess();
  (*(v14 + 16))(v16, &a5[v22], AssociatedTypeWitness);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v24 = *(Strong + OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_contentsScale);
    v25 = Strong;
  }

  else
  {

    v24 = 1.0;
  }

  memset(v34, 0, sizeof(v34));
  v35 = 1;
  v36 = v24;
  Text.Effect.Configuration.drawable(for:timing:quantization:)(v33, v16, v34, v20, v21, v12, v31);
  v27 = v26;

  v29 = type metadata accessor for Text.Effect.DrawableFragment(0, v12, v11, v28);
  (*(*(v29 - 8) + 8))(v33, v29);
  (*(v14 + 8))(v16, AssociatedTypeWitness);
  *v32 = v27;
}

uint64_t TextEffectImplementation.AnimationInfo.needsUpdate(for:state:consideringRestart:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = *(AssociatedConformanceWitness + 16);
  v8 = swift_checkMetadataState();
  v9 = v7(a1, v8, AssociatedConformanceWitness);
  v11 = v10;
  v13 = v12;

  v14 = Text.Effect.AttributeTracker.needsUpdate(for:state:interval:consideringRestart:)(a1, a2, v9, v11, v13 & 1, v3);

  return v14 & 1;
}

void closure #1 in TextEffectImplementation.AnimationInfo.performLayout(for:state:context:)(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, double a7@<X6>, double a8@<X7>, uint64_t a9@<X8>)
{
  v106 = a7;
  v107 = a8;
  *&v105 = a6;
  *&v104 = a5;
  v93 = a9;
  v13 = *(*(*a3 + 128) + 16);
  v14 = *(*a3 + 120);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  v17 = &v90 - v16;
  v19 = type metadata accessor for Text.Effect.DrawableFragment(0, v14, v13, v18);
  v100 = Text.Effect.DrawableFragment.fragmentIndex.getter();
  v92 = TextEffectImplementation.AnimationInfo.needsUpdate(for:state:consideringRestart:)(v100, a4, 0);
  if ((v92 & 1) == 0)
  {
LABEL_35:
    type metadata accessor for Text.Effect.ConcreteLayoutState(0, v14, v13, v20);
    (*(v13 + 128))(v14, v13);
    v17 = Text.Effect.ConcreteLayoutState.__allocating_init(state:)(v17);
    v49 = *(a2 + 3);
    v50 = OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_characterRanges;
    _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_3(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BE0]);
    v29 = v93;
    (*(*(v51 - 8) + 16))(v93, v49 + v50, v51);
    v28 = *(v49 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_metrics);
    v27 = *(v49 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_metrics + 8);
    v26 = *(v49 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_metrics + 16);
    v25 = *(v49 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_metrics + 24);
LABEL_80:
    v86 = v92;
    v87 = type metadata accessor for Text.Effect.Layout.Fragment(0);
    v88 = (v29 + *(v87 + 20));
    *v88 = v28;
    v88[1] = v27;
    v88[2] = v26;
    v88[3] = v25;
    v89 = v29 + *(v87 + 24);
    *v89 = v17;
    *(v89 + 8) = 0;
    *(v89 + 16) = (v86 & 1) == 0;
    return;
  }

  v21 = TextEffectImplementation.AnimationInfo.drawable(_:context:)(a1, v104, v105, *&v106, *&v107);
  Text.Effect.DrawableFragment.lineBreakingFragment.getter(v19, v110);
  v101 = v19;
  v22 = Text.Effect.DrawableFragment.range.getter();
  if (__OFSUB__(v23, v22))
  {
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  v98 = a3;
  v99 = a2;
  if (v23 == v22)
  {

    v24 = MEMORY[0x1E69E7CC0];
    v25 = 0.0;
    v26 = 0.0;
    v27 = 0.0;
    v28 = 0.0;
    v17 = MEMORY[0x1E69E7CC0];
    v29 = v93;
    if (*(a4 + 40))
    {
LABEL_6:
      v30 = v101;
      *&v31 = COERCE_DOUBLE(specialized Text.Effect.DrawableFragment.visualOrder.getter());
      v106 = v32;
      v107 = *&v31;
      v33 = *(v31 + 16);
      if (v33)
      {
        *&v105 = *(a2 + 6);
        v34 = *&v107 + 32;
        a2 = v24 + 32;

        v35 = 0;
        v36 = 0;
        v37 = 0.0;
        while (1)
        {
          if (v36 >= *(*&v107 + 16))
          {
            goto LABEL_82;
          }

          v38 = v34 + 24 * v36;
          v39 = *v38;
          v40 = *(v38 + 8);
          v41 = *(v38 + 16);
          if (v41)
          {
            if (v41 != 1)
            {
              v14 = 1;
              goto LABEL_25;
            }

            v42 = v40 - 1;
            if (__OFSUB__(v40, 1))
            {
              goto LABEL_90;
            }

            v43 = __OFSUB__(v42, v35);
            v44 = v42 - v35;
            if (v43)
            {
              goto LABEL_92;
            }

            v45 = v35 + 1;
            if (__OFADD__(v35, 1))
            {
              goto LABEL_94;
            }

            v43 = __OFSUB__(v40, v39);
            v46 = v40 - v39;
            if (v43)
            {
              goto LABEL_95;
            }
          }

          else
          {
            v44 = v39 + v35;
            if (__OFADD__(v39, v35))
            {
              goto LABEL_89;
            }

            v45 = v35 + 1;
            if (__OFADD__(v35, 1))
            {
              goto LABEL_91;
            }

            v43 = __OFSUB__(v40, v39);
            v46 = v40 - v39;
            if (v43)
            {
              goto LABEL_93;
            }
          }

          v14 = v45 >= v46;
          if (v45 < v46)
          {
            v35 = v45;
          }

          else
          {
            v35 = 0;
          }

          v39 = v44;
LABEL_25:
          v43 = __OFADD__(*&v106, v39);
          v47 = *&v106 + v39;
          if (v43)
          {
            goto LABEL_83;
          }

          v13 = v47 - v105;
          if (__OFSUB__(v47, v105))
          {
            goto LABEL_84;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            if ((v13 & 0x8000000000000000) != 0)
            {
              goto LABEL_34;
            }
          }

          else
          {
            v17 = specialized _ArrayBuffer._consumeAndCreateNew()(v17);
            if ((v13 & 0x8000000000000000) != 0)
            {
LABEL_34:
              __break(1u);
              goto LABEL_35;
            }
          }

          if (v13 >= *(v17 + 2))
          {
            goto LABEL_85;
          }

          v48 = &v17[128 * v13];
          *(v48 + 17) = v37;
          *(v48 + 18) = 0;
          if (v13 >= *(v24 + 2))
          {
            goto LABEL_86;
          }

          v36 += v14;
          v37 = v37 + *&a2[8 * v13];
          if (v36 >= v33)
          {
            (*(*(v101 - 8) + 8))(v110);
            v29 = v93;
            a2 = v99;
            goto LABEL_79;
          }
        }
      }

      v82 = *(*(v30 - 8) + 8);

      v82(v110, v30);
LABEL_79:

      v83 = *(a2 + 3);
      v84 = OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_characterRanges;
      _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_3(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BE0]);
      (*(*(v85 - 8) + 16))(v29, v83 + v84, v85);

      goto LABEL_80;
    }

LABEL_5:
    swift_beginAccess();

    specialized Set._Variant.insert(_:)(v108, v100);
    swift_endAccess();

    goto LABEL_6;
  }

  v52 = v22;
  if (v23 >= v22)
  {
    v91 = v21;
    v97 = *(*a3 + 168);
    if (v22 < v23)
    {
      v53 = *(v91 + 16);
      v94 = v91 + 40;
      v24 = MEMORY[0x1E69E7CC0];
      v17 = MEMORY[0x1E69E7CC0];
      v106 = 0.0;
      v107 = 0.0;
      v26 = 0.0;
      v25 = 0.0;
      v95 = v23;
      v96 = v53;
      while (1)
      {
        Text.Effect.DrawableFragment.typographicBounds(for:)(v52, &v111);
        Text.Effect.DrawableFragment.typographicBounds(for:)(v52, &v113);
        v54 = *v112;
        v55 = *&v112[8];
        v57 = *&v112[16];
        v56 = *&v112[24];
        v58 = *(v98 + v97);
        LOBYTE(v108[0]) = 1;
        v59 = *(a4 + 48);
        v109[3] = *(a4 + 32);
        v109[4] = v59;
        v60 = *(a4 + 80);
        v109[5] = *(a4 + 64);
        v109[6] = v60;
        v61 = *(a4 + 16);
        v109[1] = *a4;
        v109[2] = v61;
        v109[13] = v111;
        v109[14] = *v112;
        v109[15] = *&v112[16];
        *&v109[0] = v52;
        *(&v109[0] + 1) = v100;
        v109[7] = *&v112[8];
        *&v109[8] = *&v112[24];
        *(&v109[8] + 8) = *v112;
        *(&v109[9] + 8) = *&v112[16];
        *(&v109[10] + 1) = *v112;
        v109[11] = v115;
        *&v109[12] = v116;
        *(&v109[12] + 1) = v114;
        *&v109[16] = v58;
        *(&v109[16] + 1) = MEMORY[0x1E69E7CC0];
        memset(&v109[17], 0, 104);
        BYTE8(v109[23]) = 1;

        if (v53)
        {
          outlined init with copy of Text.Effect.State(a4, v108);
          v62 = v94;
          v63 = v53;
          do
          {
            v64 = *(v62 - 8);

            v64(v52, v109);

            v62 += 16;
            --v63;
          }

          while (v63);
          v65 = *&v109[0];
          v57 = *(&v109[7] + 1);
          v55 = *&v109[7];
          v66 = *(&v109[8] + 1);
          v56 = *&v109[8];
          v67 = *&v109[0] == v52;
          if (__OFSUB__(*&v109[0], v52))
          {
            goto LABEL_87;
          }
        }

        else
        {
          outlined init with copy of Text.Effect.State(a4, v108);
          v66 = v54;
          v65 = v52;
          v67 = 1;
        }

        if (v67)
        {
          v68 = v55;
        }

        else
        {
          v68 = 0.0;
        }

        if (v67)
        {
          v69 = v57;
        }

        else
        {
          v69 = 0.0;
        }

        if (v67)
        {
          v70 = v56;
        }

        else
        {
          v70 = 0.0;
        }

        if (v67)
        {
          v71 = v66;
        }

        else
        {
          v71 = 0.0;
        }

        v72 = v106;
        if (v106 <= v68)
        {
          v72 = v68;
        }

        v73 = v107;
        if (v107 <= v69)
        {
          v73 = v69;
        }

        v106 = v72;
        v107 = v73;
        if (v26 <= v70)
        {
          v26 = v70;
        }

        v104 = v109[10];
        v105 = v109[9];
        v102 = v109[12];
        v103 = v109[11];
        v74 = *(&v109[16] + 1);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 2) + 1, 1, v17);
        }

        v76 = *(v17 + 2);
        v75 = *(v17 + 3);
        if (v76 >= v75 >> 1)
        {
          v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v75 > 1), v76 + 1, 1, v17);
        }

        *(v17 + 2) = v76 + 1;
        v77 = &v17[128 * v76];
        *(v77 + 4) = v65;
        *(v77 + 5) = v55;
        *(v77 + 6) = v57;
        *(v77 + 7) = v56;
        *(v77 + 8) = v66;
        v78 = v105;
        *(v77 + 88) = v104;
        *(v77 + 72) = v78;
        v79 = v103;
        *(v77 + 120) = v102;
        *(v77 + 104) = v79;
        *(v77 + 17) = 0;
        *(v77 + 18) = 0;
        *(v77 + 19) = v74;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 2) + 1, 1, v24);
        }

        a2 = v99;
        v53 = v96;
        v81 = *(v24 + 2);
        v80 = *(v24 + 3);
        if (v81 >= v80 >> 1)
        {
          v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v80 > 1), v81 + 1, 1, v24);
        }

        ++v52;
        *(v24 + 2) = v81 + 1;
        *&v24[8 * v81 + 32] = v71 - v54;
        memcpy(v108, v109, 0x179uLL);
        outlined destroy of Text.Effect.TransformContext(v108);
        if (__OFSUB__(v95, v52))
        {
          goto LABEL_88;
        }

        v25 = v25 + v71;
        if (v95 == v52)
        {
          break;
        }

        if (v52 >= v95)
        {
          goto LABEL_81;
        }
      }

      v29 = v93;
      v28 = v106;
      v27 = v107;
      if (*(a4 + 40))
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }

LABEL_81:
    __break(1u);
LABEL_82:
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
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

LABEL_97:
  __break(1u);
}

BOOL closure #1 in TextEffectImplementation.AnimationInfo.centerAlign(fragments:chunk:content:)(unint64_t *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v35 = a5;
  v34 = a4;
  v33[1] = a3;
  _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_3(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BE0]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v33 - v12;
  v14 = type metadata accessor for Text.Layout.Line();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  if (v19 == a2)
  {
    return 1;
  }

  v33[0] = *(a6 + 16);
  type metadata accessor for Text.Effect.DrawableContent(0, v35, v33[0], v16);
  v21 = Text.Effect.DrawableContent.subscript.getter(v19, v36);
  v22 = v37;
  v38 = v37;
  v23 = *(v37 + 16);
  (*(v15 + 16))(v18, v37 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_line, v14, v21);

  v24 = Text.Layout.Line.endIndex.getter();
  (*(v15 + 8))(v18, v14);
  if (v23)
  {
    v25 = 2;
  }

  else
  {
    v25 = 3;
  }

  if (v24 == *(v22 + 24))
  {
    v26 = v25;
  }

  else
  {
    v26 = v23 == 0;
  }

  (*(v11 + 16))(v13, v22 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_characterRanges, v10);
  v27 = specialized RangeSet.lowerBound.getter();
  v29 = v28;
  outlined destroy of Text.Effect.KeyframeLayout.Fragment(&v38);
  v31 = type metadata accessor for Text.Effect.DrawableFragment(0, v35, v33[0], v30);
  (*(*(v31 - 8) + 8))(v36, v31);
  (*(v11 + 8))(v13, v10);
  v32 = v26 | 4;
  if (v27)
  {
    v32 = v26;
  }

  if (v29)
  {
    v32 = v26;
  }

  return (v34 & ~v32) == 0;
}

uint64_t closure #2 in TextEffectImplementation.AnimationInfo.centerAlign(fragments:chunk:content:)@<X0>(double *a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, double *a6@<X8>)
{
  v25 = a6;
  v11 = type metadata accessor for Text.Effect.Layout.Fragment(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = *a2;
  v17 = *(a5 + 16);
  type metadata accessor for Text.Effect.DrawableContent(0, a4, v17, v18);
  Text.Effect.DrawableContent.subscript.getter(v16, v26);
  v20 = type metadata accessor for Text.Effect.DrawableFragment(0, a4, v17, v19);
  Text.Effect.DrawableFragment.defaultDrawingFragment.getter(v20, v27);
  v21 = Text.Effect.DrawableFragment.width.getter();
  v22 = *(*(v20 - 8) + 8);
  result = v22(v27, v20);
  if ((v16 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v16 < *(*a3 + 16))
  {
    outlined init with copy of Text.Effect.Layout.Fragment(*a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v16, v14, type metadata accessor for Text.Effect.Layout.Fragment);
    v22(v26, v20);
    v24 = *&v14[*(v11 + 20) + 24];
    result = outlined destroy of Text.Effect.Layout.Fragment(v14, type metadata accessor for Text.Effect.Layout.Fragment);
    *v25 = v15 + v21 - v24;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t TextEffectImplementation.AnimationInfo.resolve(id:fragment:ranges:state:in:)(uint64_t a1, uint64_t (**a2)(char *, uint64_t), void (*a3)(uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  *&v300 = a5;
  v293 = *&a4;
  v291 = a3;
  v275 = a1;
  v7 = *v5;
  v292 = type metadata accessor for Text.Effect.PathInterpolator.Cluster(0);
  v290 = *(v292 - 8);
  MEMORY[0x1EEE9AC00](v292);
  v289 = &v258 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Text.Effect.ResolvedDrawing.Operation(0);
  v10 = *(v9 - 8);
  v295 = v9;
  v296 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v302 = &v258 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v294.f64[0] = type metadata accessor for Text.Effect.ResolvedDrawing.Operation.Kind(0);
  MEMORY[0x1EEE9AC00](*&v294.f64[0]);
  *&v303 = &v258 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v283 = type metadata accessor for Text.Layout.Run();
  v269 = *(v283 - 8);
  MEMORY[0x1EEE9AC00](v283);
  v285 = &v258 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v301 = type metadata accessor for Text.Layout.Line();
  v298.f64[0] = *(v301 - 8);
  MEMORY[0x1EEE9AC00](v301);
  v299 = &v258 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v284 = &v258 - v16;
  type metadata accessor for RangeSet<Int>.Ranges(0, &lazy cache variable for type metadata for RangeSet<Int>.Ranges, MEMORY[0x1E69E7BA8]);
  v286 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v271 = &v258 - v18;
  type metadata accessor for RangeSet<Int>.Ranges(0, &lazy cache variable for type metadata for RangeSet<Int>, MEMORY[0x1E69E7BE0]);
  v279 = v19;
  v270 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v280 = &v258 - v20;
  v277 = type metadata accessor for Text.Effect.Layout.Fragment(0);
  MEMORY[0x1EEE9AC00](v277);
  v278 = &v258 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_3(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BE0]);
  v23 = v22;
  v24 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v258 - v25;
  v287 = v5;
  v27 = *(v7 + 120);
  v28 = *(v7 + 128);
  v30 = type metadata accessor for TextEffectImplementation.ResolvedMap.Key(0, v27, v28, v29);
  v281 = *(v30 - 8);
  v282 = v30;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v258 - v31;
  v272 = *(v28 + 16);
  v297 = type metadata accessor for Text.Effect.DrawableFragment(0, v27, v272, v33);
  v276 = a2;
  v34 = Text.Effect.DrawableFragment.fragmentIndex.getter();
  v273 = v24;
  v274 = v23;
  v37 = *(v24 + 16);
  v36 = v24 + 16;
  v35 = v37;
  v37(v26, v291, v23);
  TextEffectImplementation.ResolvedMap.Key.init(fragment:ranges:)(v34, v26, v27, v28, v32);
  v38 = *(*v287 + 184);
  v39 = v287;
  swift_beginAccess();
  v40 = TextEffectImplementation.ResolvedMap.subscript.getter(v32, *(v39 + v38), v27, v28);
  if (v40)
  {
    v41 = v40;
    swift_endAccess();
    Text.Effect.DrawingContext.Storage.append(_:)(v41);

    return (*(v281 + 8))(v32, v282);
  }

  v260 = v34;
  v261 = v35;
  v262 = v36;
  v263 = v26;
  v264 = v38;
  v265 = v28;
  v268 = v27;
  v266 = v32;
  swift_endAccess();
  v43 = *v300;
  v44 = *(*v300 + 16);
  v46 = v44[4];
  v45 = v44[5];
  v47 = v44[6];
  v48 = v44[7];

  v49 = v278;
  TextEffectImplementation.AnimationInfo.layout(for:state:context:)(*&v293, v46, v45, v47, v48, v278);

  v267 = v43;
  v50 = *(v43 + 16);
  v51 = v50[3];
  v53 = v50[4];
  v52 = v50[5];
  v55 = v50[6];
  v54 = v50[7];
  v56 = v50[8];
  v57 = v50[9];
  type metadata accessor for Text.Effect.DrawingContext.Storage.Shared();
  v58 = swift_allocObject();
  v58[3] = v51;
  v293 = *&v53;
  v58[4] = v53;
  v58[5] = v52;
  v58[6] = v55;
  v58[7] = v54;
  v58[8] = v56;
  v58[9] = v57;
  *&v300 = v57;
  v58[2] = MEMORY[0x1E69E7CC0];
  v59 = type metadata accessor for Text.Effect.DrawingContext.Storage();
  v60 = swift_allocObject();
  *(v60 + 32) = 0;
  *(v60 + 40) = 0;
  *(v60 + 48) = 0x3FF0000000000000;
  *(v60 + 56) = 0;
  *(v60 + 64) = 0;
  *(v60 + 72) = 0x3FF0000000000000;
  *(v60 + 80) = 0;
  v288 = (v60 + 80);
  *(v60 + 88) = 0;
  *(v60 + 96) = 1;
  *(v60 + 104) = 0u;
  *(v60 + 120) = 0u;
  *(v60 + 136) = 0u;
  __asm { FMOV            V1.2D, #1.0 }

  v258 = _Q1;
  *(v60 + 152) = _Q1;
  *(v60 + 168) = 0x3FF0000000000000;
  *(v60 + 176) = 0;
  *(v60 + 184) = 0u;
  *(v60 + 200) = 0u;
  *(v60 + 216) = 0;
  *(v60 + 16) = v58;
  *(v60 + 24) = 0x3FF0000000000000;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v67 = Strong;
    v68 = *(Strong + OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_contentsScale);
  }

  else
  {

    v68 = 1.0;
  }

  v70 = v289;
  v69 = v290;
  v71 = v299;
  v293 = *&v60;
  *&v338[0] = v60;
  memset(&v338[1], 0, 24);
  v339 = 1;
  v340 = v68;
  v72 = v49 + *(v277 + 24);
  v73 = *v72;
  v74 = *(v72 + 8);
  LODWORD(v72) = *(v72 + 16);
  v277 = v73;
  if (v72 == 1)
  {
    v75 = *(*(v267 + 16) + 48);
    v259 = v74;
    outlined copy of Text.Effect.Layout.Fragment.Storage(v73, v74, 1);

    specialized Text.Effect.BaseContext.fragment<A>(for:key:fragment:)(v275, v73, v260, v75, &v330);

    v73 = v331;
    *&v306 = v331;
    v76 = v263;
    v77 = v274;
    v261(v263, v331 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_characterRanges, v274);
    _ss8RangeSetV6RangesVy7SwiftUI4TextV6LayoutV14CharacterIndexV_GADyx_GSlsWlTm_1(&lazy protocol witness table cache variable for type RangeSet<Text.Layout.CharacterIndex> and conformance RangeSet<A>, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, MEMORY[0x1E69E7BE0], MEMORY[0x1E69E7BF0]);

    v78 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v273 + 8))(v76, v77);
    v79 = &OBJC_PROTOCOL___NSCustomTextRenderingDelegate;
    *&v300 = v73;
    if ((v78 & 1) == 0)
    {
      goto LABEL_87;
    }

    type metadata accessor for _ContiguousArrayStorage<Range<Int>>(0);
    v80 = swift_allocObject();
    *(v80 + 16) = xmmword_195CC8D00;
    v81 = *(v73 + 16);
    v289 = v80;
    *(v80 + 32) = v81;
    outlined destroy of Text.Effect.KeyframeLayout.Fragment(&v306);
    v82 = 1;
    v83 = v301;
LABEL_90:
    name = v79[43].name;
    v291 = *(*&v298.f64[0] + 16);
    v292 = name;
    *&v298.f64[0] += 16;
    v290 = (*&v298.f64[0] - 8);
    v188 = (v289 + 40);
    v189 = v303;
    v190 = v291;
    do
    {
      v191 = *(v188 - 1);
      v192 = *v188;
      v190(v71, v300 + v292, v83);
      type metadata accessor for (Text.Layout.Line, Range<Int>, Color.Resolved?)(0);
      v194 = v83;
      v195 = (v189 + *(v193 + 48));
      v196 = v189;
      v197 = *(v193 + 64);
      v190(v196, v71, v194);
      *v195 = v191;
      v195[1] = v192;
      v198 = 0uLL;
      v199 = *&v293;
      v200 = *(*&v293 + 96);
      if ((v200 & 1) == 0)
      {
        v198 = *v288;
      }

      v201 = v303;
      v202 = v303 + v197;
      *v202 = v198;
      *(v202 + 16) = v200;
      swift_storeEnumTagMultiPayload();
      v203 = *(v199 + 16);
      v204 = v302;
      outlined init with copy of Text.Effect.Layout.Fragment(v201, v302, type metadata accessor for Text.Effect.ResolvedDrawing.Operation.Kind);
      v205 = v295;
      *(v204 + *(v295 + 20)) = *(v199 + 72);
      v206 = (v204 + *(v205 + 24));
      v207 = *(v199 + 40);
      *v206 = *(v199 + 24);
      v206[1] = v207;
      v206[2] = *(v199 + 56);
      swift_beginAccess();
      v208 = *(v203 + 16);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v203 + 16) = v208;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v208 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v208[2] + 1, 1, v208);
        *(v203 + 16) = v208;
      }

      v71 = v299;
      v210 = v296;
      v211 = v297;
      v213 = v208[2];
      v212 = v208[3];
      if (v213 >= v212 >> 1)
      {
        v214 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v212 > 1), v213 + 1, 1, v208);
        v210 = v296;
        v208 = v214;
      }

      v188 += 2;
      v208[2] = v213 + 1;
      outlined init with take of Text.Effect.ResolvedDrawing.Operation(v302, v208 + ((*(v210 + 80) + 32) & ~*(v210 + 80)) + *(v210 + 72) * v213);
      *(v203 + 16) = v208;
      swift_endAccess();
      v189 = v303;
      outlined destroy of Text.Effect.Layout.Fragment(v303, type metadata accessor for Text.Effect.ResolvedDrawing.Operation.Kind);
      v83 = v301;
      (*v290)(v71, v301);

      --v82;
    }

    while (v82);

    (*(*(v211 - 8) + 8))(&v330, v211);
    goto LABEL_99;
  }

  v84 = *&v74;
  v335 = 0uLL;
  v336 = 0;
  v337 = MEMORY[0x1E69E7CC0];
  v288 = *(v73 + 16);
  if (!v288)
  {

    v221 = v293;
    goto LABEL_102;
  }

  v285 = v59;
  v286 = v73 + 32;
  v259 = v74;
  outlined copy of Text.Effect.Layout.Fragment.Storage(v73, v74, 0);

  v85 = 0;
  v86 = 0;
  v71 = 0;
  LODWORD(v296) = 0;
  v299 = 0;
  *&v300 = 0;
  *&v301 = 0;
  v87 = 0;
  while (1)
  {
    v88 = (v286 + (v87 << 7));
    v89 = *v88;
    v90 = v88[1];
    v91 = v88[2];
    v332[3] = v88[3];
    v332[2] = v91;
    v332[1] = v90;
    v332[0] = v89;
    v92 = v88[4];
    v93 = v88[5];
    v94 = v88[6];
    v332[7] = v88[7];
    v332[6] = v94;
    v332[5] = v93;
    v332[4] = v92;
    v330 = v88[7];
    v92.f64[0] = v94.f64[1] + v84;
    v294 = v92;
    memmove(v333, v88, 0x68uLL);
    v333[13] = *&v294.f64[0];
    v95.f64[1] = v330.f64[1];
    v334 = v330;
    if (v87 == v288)
    {
      goto LABEL_122;
    }

    v96 = *&v334.f64[1];
    *&v303 = *(*&v334.f64[1] + 16);
    if (v303)
    {
      break;
    }

    outlined init with copy of Text.Effect.DisplayInfo(v332, &v330);
    outlined destroy of Text.Effect.DisplayInfo(v333);
LABEL_84:
    ++v87;
    v178 = *(v73 + 16);
    if (v87 == v178)
    {
      v74 = v259;
      outlined consume of Text.Effect.Layout.Fragment.Storage(v73, v259, 0);
      v221 = v338[0];
LABEL_102:
      Text.Effect.StopCollector.flushSegment()();
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v303 = *(*&v221 + 200);
        v301 = *(*&v221 + 184);
        v302 = *(*&v221 + 216);
        v217 = v281;
        v216 = v282;
        v218 = v268;
        v219 = v265;
        v222 = v276;
        v223 = v278;
      }

      else
      {
        *&v224 = COERCE_DOUBLE(swift_allocObject());
        *(v224 + 104) = 0u;
        *(v224 + 120) = 0u;
        *(v224 + 136) = 0u;
        *(v224 + 152) = v258;
        *(v224 + 168) = 0x3FF0000000000000;
        *(v224 + 176) = 0;
        *(v224 + 16) = *(*&v221 + 16);
        v225 = *(*&v221 + 40);
        v226 = *(*&v221 + 56);
        *(v224 + 24) = *(*&v221 + 24);
        *(v224 + 40) = v225;
        *(v224 + 56) = v226;
        *(v224 + 72) = *(*&v221 + 72);
        v227 = *(*&v221 + 200);
        v228 = *(*&v221 + 216);
        v301 = *(*&v221 + 184);
        v230 = *(&v301 + 1);
        v229 = v301;
        *(v224 + 184) = v301;
        v231 = v227;
        v232 = v74;
        v233 = *(&v227 + 1);
        v303 = v227;
        *(v224 + 200) = v227;
        *(v224 + 216) = v228;
        v234 = *(*&v221 + 96);
        *(v224 + 80) = *(*&v221 + 80);
        *(v224 + 96) = v234;

        v235 = v229;
        v236 = v233;
        v74 = v232;
        v223 = v278;
        v302 = v228;
        outlined copy of Text.Effect.StopCollector?(v235, v230, v231, v236, v228);

        *&v338[0] = v224;
        v221 = *&v224;
        v217 = v281;
        v216 = v282;
        v218 = v268;
        v219 = v265;
        v222 = v276;
      }

      v237 = v336;
      *(*&v221 + 184) = v335;
      *(*&v221 + 200) = v237;
      *(*&v221 + 208) = v337;
      v238 = v277;
      closure #2 in TextEffectImplementation.AnimationInfo.resolve(id:fragment:ranges:state:in:)(v338, v277, v223, v291, v222, v84);
      outlined consume of Text.Effect.Layout.Fragment.Storage(v238, v74, 0);
      v220 = v338[0];
      v239 = *(*&v338[0] + 184);
      v240 = *(*&v338[0] + 192);
      v241 = *(*&v338[0] + 200);
      v242 = *(*&v338[0] + 208);
      v243 = *(*&v338[0] + 216);
      *(*&v338[0] + 184) = v301;
      *(*&v220 + 200) = v303;
      *(*&v220 + 216) = v302;
      outlined consume of Text.Effect.StopCollector?(v239, v240, v241, v242, v243);
      v215 = v223;
LABEL_106:
      v244 = *(*&v220 + 16);
      swift_beginAccess();
      v245 = *(v244 + 16);
      *(v244 + 16) = MEMORY[0x1E69E7CC0];
      swift_beginAccess();
      v247 = type metadata accessor for TextEffectImplementation.ResolvedMap(0, v218, v219, v246);

      v249 = v266;
      specialized TextEffectImplementation.ResolvedMap.subscript.setter(v248, v266, v247, v250);
      swift_endAccess();
      Text.Effect.DrawingContext.Storage.append(_:)(v245);

      outlined destroy of Text.Effect.Layout.Fragment(v215, type metadata accessor for Text.Effect.Layout.Fragment);
      (*(v217 + 8))(v249, v216);
    }

    if (v87 >= v178)
    {
      __break(1u);
LABEL_87:
      RangeSet.init()();
      v180 = *(v73 + 16);
      v179 = *(v73 + 24);
      v83 = v301;
      v181 = v285;
      v182 = v284;
      if (v180 != v179)
      {
        if (v179 < v180)
        {
          goto LABEL_124;
        }

        if (v180 < v179)
        {
          v251 = *(*&v298.f64[0] + 16);
          v289 = OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_line;
          v290 = v251;
          v292 = *&v298.f64[0] + 16;
          v276 = (*&v298.f64[0] + 8);
          v252 = (v269 + 8);
          while (1)
          {
            v253 = v180 + 1;
            (v290)(v182, v300 + v289, v83);
            Text.Layout.Line.subscript.getter();
            (*v276)(v182, v83);
            v254 = Text.Layout.Run.characterRange.getter();
            v256 = v255;
            (*v252)(v181, v283);
            if (specialized RangeSet.overlaps(_:)(v254, v256))
            {
              if (v180 == 0x7FFFFFFFFFFFFFFFLL)
              {
                goto LABEL_123;
              }

              *&v310[0] = v180;
              *(&v310[0] + 1) = v180 + 1;
              v257 = RangeSet._ranges.modify();
              RangeSet.Ranges._insert(contentsOf:)();
              v257(&v316, 0);
            }

            v180 = v253;
            v83 = v301;
            v182 = v284;
            v181 = v285;
            if (v179 == v253)
            {
              goto LABEL_88;
            }
          }
        }

        goto LABEL_125;
      }

LABEL_88:
      v183 = v279;
      v184 = v280;
      RangeSet.ranges.getter();
      lazy protocol witness table accessor for type RangeSet<Int>.Ranges and conformance RangeSet<A>.Ranges(v185);
      v186 = dispatch thunk of Sequence._copyToContiguousArray()();
      outlined destroy of Text.Effect.KeyframeLayout.Fragment(&v306);
      (*(v270 + 8))(v184, v183);
      v289 = v186;
      v82 = *(v186 + 16);
      if (v82)
      {
        v79 = &OBJC_PROTOCOL___NSCustomTextRenderingDelegate;
        goto LABEL_90;
      }

      (*(*(v297 - 8) + 8))(&v330, v297);
LABEL_99:
      outlined consume of Text.Effect.Layout.Fragment.Storage(v277, v259, 1);
      v215 = v278;
      v217 = v281;
      v216 = v282;
      v218 = v268;
      v219 = v265;
      v220 = v293;
      goto LABEL_106;
    }
  }

  v293 = *&v87;
  v297 = v333[0];
  v95.f64[0] = v334.f64[0];
  v298 = v95;
  outlined init with copy of Text.Effect.DisplayInfo(v332, &v330);
  if (!*(v96 + 16))
  {
    goto LABEL_116;
  }

  v97 = 0;
  v302 = v96 + 32;
  v98.f64[0] = v294.f64[0];
  v98.f64[1] = v298.f64[0];
  v294 = v98;
  v295 = v96;
  while (1)
  {
    v99 = (v302 + 216 * v97);
    v100 = v99[1];
    v316 = *v99;
    v317 = v100;
    v101 = v99[2];
    v102 = v99[3];
    v103 = v99[5];
    v320 = v99[4];
    v321 = v103;
    v318 = v101;
    v319 = v102;
    v104 = v99[6];
    v105 = v99[7];
    v106 = v99[8];
    v325 = v99[9];
    v324 = v106;
    v323 = v105;
    v322 = v104;
    v107 = v99[10];
    v108 = v99[11];
    v109 = v99[12];
    v329 = *(v99 + 208);
    v328 = v109;
    v327 = v108;
    v326 = v107;
    memmove(&v330, v99, 0xD1uLL);
    if (_s7SwiftUI4TextV0C16AnimationSupportE6EffectO11DisplayInfoV13DrawOperationOWOg(&v330) != 2)
    {
      destructiveProjectEnumData for Text.Effect.DisplayInfo.DrawOperation(&v330);
      goto LABEL_31;
    }

    v110 = destructiveProjectEnumData for Text.Effect.DisplayInfo.DrawOperation(&v330);
    v310[10] = v326;
    v310[11] = v327;
    v310[12] = v328;
    v311 = v329;
    v310[6] = v322;
    v310[7] = v323;
    v310[8] = v324;
    v310[9] = v325;
    v310[2] = v318;
    v310[3] = v319;
    v310[4] = v320;
    v310[5] = v321;
    v310[0] = v316;
    v310[1] = v317;
    v111 = destructiveProjectEnumData for Text.Effect.DisplayInfo.DrawOperation(v310);
    v113 = *(v110 + 64);
    v112 = *(v110 + 72);
    v114 = *(v110 + 88);
    v115 = *(v110 + 96);
    v116 = *(v110 + 128);
    v117 = *(v110 + 144);
    v312 = *(v110 + 112);
    v313 = v116;
    v314 = v117;
    v315 = *(v110 + 160);
    _VF = __OFSUB__(v297, v113);
    v118 = v297 - v113;
    if (_VF)
    {
      goto LABEL_117;
    }

    if ((v118 & 0x8000000000000000) != 0)
    {
      goto LABEL_118;
    }

    if (v118 >= *(v112 + 16))
    {
      goto LABEL_119;
    }

    v119 = v111;
    v298 = v115;
    outlined init with copy of Text.Effect.Layout.Fragment(v112 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + v69[9] * v118, v70, type metadata accessor for Text.Effect.PathInterpolator.Cluster);
    outlined init with copy of Text.Effect.Layout.Fragment(v119, &v306, type metadata accessor for (Text.Effect.PathInterpolator, Text.Effect.DrawingState));
    v120 = Text.Layout.Cluster.stopKey.getter();
    if (v120 == 2)
    {
      break;
    }

    if (!v301 || ((v296 ^ v120) & 1) != 0)
    {
      v300 = *(v70 + *(v292 + 28));
      v86 = v120 & 1;
      Text.Effect.StopCollector.flushSegment()();
      outlined consume of (key: Text.Effect.StopKey, segment: Text.Effect.StopCollector.Segment, indices: Set<Text.Effect.ClusterIndex>)?(v335, *(&v335 + 1), v336);
      *&v335 = v86;
      v71 = MEMORY[0x1E69E7CC0];
      *(&v335 + 1) = MEMORY[0x1E69E7CC0];
      v85 = MEMORY[0x1E69E7CD0];
      v336 = MEMORY[0x1E69E7CD0];
    }

    else
    {
      if (!v71)
      {
        LODWORD(v296) = v86;
        outlined destroy of Text.Effect.DisplayInfo.DrawOperation(&v316);
        outlined destroy of Text.Effect.Layout.Fragment(v70, type metadata accessor for Text.Effect.PathInterpolator.Cluster);
        *&v301 = 0;
        v299 = v86;
        *&v300 = v85;
        goto LABEL_31;
      }

      v300 = *(v70 + *(v292 + 28));
    }

    v305 = v85;

    v168 = swift_isUniquelyReferenced_nonNull_native();
    v169 = v71;
    if ((v168 & 1) == 0)
    {
      v169 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v71 + 16) + 1, 1, v71);
    }

    *&v301 = v169;
    v171 = *(v169 + 2);
    v170 = *(v169 + 3);
    if (v171 >= v170 >> 1)
    {
      *&v301 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v170 > 1), v171 + 1, 1, v301);
    }

    v172 = vaddq_f64(v294, v298);
    v309 = v315;
    v307 = v313;
    v308 = v314;
    v306 = v312;
    v173 = v301;
    *(v301 + 16) = v171 + 1;
    v174 = v173 + 96 * v171;
    *(v174 + 32) = v114;
    *(v174 + 40) = v172;
    v175 = v306;
    v176 = v307;
    v177 = v308;
    *(v174 + 104) = v309;
    *(v174 + 88) = v177;
    *(v174 + 72) = v176;
    *(v174 + 56) = v175;
    *(v174 + 112) = v300;
    specialized Set._Variant.insert(_:)(&v304, v297);
    outlined destroy of Text.Effect.DisplayInfo.DrawOperation(&v316);
    outlined destroy of Text.Effect.Layout.Fragment(v70, type metadata accessor for Text.Effect.PathInterpolator.Cluster);
    outlined consume of (key: Text.Effect.StopKey, segment: Text.Effect.StopCollector.Segment, indices: Set<Text.Effect.ClusterIndex>)?(v86, v71, v85);
    v85 = v305;
    *&v335 = v86 & 1;
    *(&v335 + 1) = v173;
    v336 = v305;
    LODWORD(v296) = v86;
    v299 = v335;
    *&v300 = v305;
    v86 = v335;
    v71 = v173;
    v96 = v295;
LABEL_31:
    if (++v97 == v303)
    {
      outlined destroy of Text.Effect.DisplayInfo(v333);
      v73 = v277;
      v87 = *&v293;
      goto LABEL_84;
    }

    if (v97 >= *(v96 + 16))
    {
      goto LABEL_116;
    }
  }

  v121 = v301;
  v122 = v300;
  if (!v301)
  {
LABEL_80:
    outlined destroy of Text.Effect.DisplayInfo.DrawOperation(&v316);
    outlined destroy of Text.Effect.Layout.Fragment(v70, type metadata accessor for Text.Effect.PathInterpolator.Cluster);
    outlined consume of (key: Text.Effect.StopKey, segment: Text.Effect.StopCollector.Segment, indices: Set<Text.Effect.ClusterIndex>)?(v299, v121, v122);
    v85 = 0;
    v86 = 0;
    v71 = 0;
    LODWORD(v296) = 0;
    v299 = 0;
    *&v300 = 0;
    *&v301 = 0;
    v335 = 0uLL;
    v336 = 0;
    goto LABEL_31;
  }

  outlined copy of (key: Text.Effect.StopKey, segment: Text.Effect.StopCollector.Segment, indices: Set<Text.Effect.ClusterIndex>)?(v299, v121, v122);
  specialized Text.Effect.StopSegment.init(segment:)(v121);
  if (!v123)
  {

    goto LABEL_80;
  }

  v125 = v123;
  v126 = v124;
  v127 = v337;
  v296 = *(v337 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v127 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v296 + 1, 1, v127);
  }

  v129 = *(v127 + 2);
  v128 = *(v127 + 3);
  if (v129 >= v128 >> 1)
  {
    v127 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v128 > 1), v129 + 1, 1, v127);
  }

  *(v127 + 2) = v129 + 1;
  v130 = &v127[16 * v129];
  *(v130 + 4) = v125;
  *(v130 + 5) = v126;

  v131 = 0;
  *&v337 = v127;
  v132 = v300;
  v133 = v300 + 56;
  v134 = 1 << *(v300 + 32);
  if (v134 < 64)
  {
    v135 = ~(-1 << v134);
  }

  else
  {
    v135 = -1;
  }

  v136 = v135 & *(v300 + 56);
  v137 = (v134 + 63) >> 6;
  while (v136)
  {
    v138 = v131;
LABEL_45:
    v139 = *(*(v132 + 48) + ((v138 << 9) | (8 * __clz(__rbit64(v136)))));
    v140 = *(&v337 + 1);
    v141 = swift_isUniquelyReferenced_nonNull_native();
    *&v306 = v140;
    *&v298.f64[0] = v139;
    v142 = specialized __RawDictionaryStorage.find<A>(_:)(v139);
    v145 = *(v140 + 16);
    v146 = (v143 & 1) == 0;
    _VF = __OFADD__(v145, v146);
    v147 = v145 + v146;
    if (_VF)
    {
      goto LABEL_120;
    }

    v148 = v143;
    if (*(v140 + 24) >= v147)
    {
      if (v141)
      {
        v149 = v140;
      }

      else
      {
        v284 = v142;
        type metadata accessor for _DictionaryStorage<Text.Effect.ClusterIndex, Int>(0, v143, v144);
        v154 = static _DictionaryStorage.copy(original:)();
        v149 = v154;
        if (*(v140 + 16))
        {
          v155 = (v154 + 64);
          v156 = v140 + 64;
          v157 = ((1 << *(v149 + 32)) + 63) >> 6;
          if (v149 != v140 || v155 >= v156 + 8 * v157)
          {
            memmove(v155, (v140 + 64), 8 * v157);
          }

          v158 = 0;
          *(v149 + 16) = *(v140 + 16);
          v159 = 1 << *(v140 + 32);
          if (v159 < 64)
          {
            v160 = ~(-1 << v159);
          }

          else
          {
            v160 = -1;
          }

          v161 = v160 & *(v140 + 64);
          for (i = (v159 + 63) >> 6; v161; *(*(v149 + 56) + 8 * v164) = v167)
          {
            v163 = __clz(__rbit64(v161));
            v161 &= v161 - 1;
            v164 = v163 | (v158 << 6);
LABEL_69:
            v167 = *(*(v140 + 56) + 8 * v164);
            *(*(v149 + 48) + 8 * v164) = *(*(v140 + 48) + 8 * v164);
          }

          v165 = v158;
          while (1)
          {
            v158 = v165 + 1;
            if (__OFADD__(v165, 1))
            {
              goto LABEL_126;
            }

            if (v158 >= i)
            {
              break;
            }

            v166 = *(v156 + 8 * v158);
            ++v165;
            if (v166)
            {
              v161 = (v166 - 1) & v166;
              v164 = __clz(__rbit64(v166)) | (v158 << 6);
              goto LABEL_69;
            }
          }
        }

        v142 = v284;
      }

      v96 = v295;
      v150 = v298.f64[0];
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v147, v141);
      v149 = v306;
      v150 = v298.f64[0];
      v142 = specialized __RawDictionaryStorage.find<A>(_:)(*&v298.f64[0]);
      if ((v148 & 1) != (v151 & 1))
      {
        goto LABEL_127;
      }

      v96 = v295;
    }

    v136 &= v136 - 1;
    if (v148)
    {
      *(*(v149 + 56) + 8 * v142) = v296;
    }

    else
    {
      *(v149 + 8 * (v142 >> 6) + 64) |= 1 << v142;
      *(*(v149 + 48) + 8 * v142) = v150;
      *(*(v149 + 56) + 8 * v142) = v296;
      v152 = *(v149 + 16);
      _VF = __OFADD__(v152, 1);
      v153 = v152 + 1;
      if (_VF)
      {
        goto LABEL_121;
      }

      *(v149 + 16) = v153;
    }

    *(&v337 + 1) = v149;
    v131 = v138;
    v132 = v300;
  }

  while (1)
  {
    v138 = v131 + 1;
    if (__OFADD__(v131, 1))
    {
      break;
    }

    if (v138 >= v137)
    {
      outlined destroy of Text.Effect.DisplayInfo.DrawOperation(&v316);
      v70 = v289;
      outlined destroy of Text.Effect.Layout.Fragment(v289, type metadata accessor for Text.Effect.PathInterpolator.Cluster);

      outlined consume of (key: Text.Effect.StopKey, segment: Text.Effect.StopCollector.Segment, indices: Set<Text.Effect.ClusterIndex>)?(v299, v301, v132);
      v85 = 0;
      v86 = 0;
      v71 = 0;
      LODWORD(v296) = 0;
      v299 = 0;
      *&v300 = 0;
      *&v301 = 0;
      v335 = 0uLL;
      v336 = 0;
      v69 = v290;
      goto LABEL_31;
    }

    v136 = *(v133 + 8 * v138);
    ++v131;
    if (v136)
    {
      goto LABEL_45;
    }
  }

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
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void closure #2 in TextEffectImplementation.AnimationInfo.resolve(id:fragment:ranges:state:in:)(double *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v112 = a3;
  v109 = type metadata accessor for Text.Layout.Cluster();
  MEMORY[0x1EEE9AC00](v109);
  v108 = &v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = *(a2 + 16);
  if (!v111)
  {
    return;
  }

  v13 = v11;
  v110 = a2 + 32;
  v98 = a2;

  v14 = 0;
  v106 = v13 + 16;
  v107 = v13;
  v105 = v13 + 8;
  __asm { FMOV            V0.2D, #1.0 }

  v100 = _Q0;
  v101 = a4;
  v102 = a5;
  while (1)
  {
    v116 = v14;
    v20 = (v110 + (v14 << 7));
    v22 = v20[5];
    v21 = v20[6];
    v23 = v20[3];
    v121 = v20[4];
    v122 = v22;
    v24 = v20[7];
    v123 = v21;
    v124 = v24;
    v25 = v20[1];
    v118[0] = *v20;
    v118[1] = v25;
    v119 = v20[2];
    v120 = v23;
    v125[0] = v118[0];
    v125[1] = v25;
    v126 = *(v20 + 12);
    v125[4] = v121;
    v125[5] = v22;
    v125[2] = v119;
    v125[3] = v23;
    v128 = v20[7];
    v127 = *(&v21 + 1) + a6;
    v26 = outlined init with copy of Text.Effect.DisplayInfo(v118, v117);
    lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex(v26, v27, v28);
    if (static RangeSet.== infix(_:_:)())
    {
      goto LABEL_10;
    }

    v29 = *(a5 + 48);
    _VF = __OFSUB__(*&v125[0], v29);
    v30 = *&v125[0] - v29;
    if (_VF)
    {
      break;
    }

    if ((v30 & 0x8000000000000000) != 0)
    {
      goto LABEL_49;
    }

    v31 = *(*(a5 + 24) + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters);
    if (v30 >= *(v31 + 16))
    {
      goto LABEL_50;
    }

    v32 = v107;
    v33 = v108;
    v34 = v109;
    (*(v107 + 16))(v108, v31 + ((*(v107 + 80) + 32) & ~*(v107 + 80)) + *(v107 + 72) * v30, v109);
    v35 = Text.Layout.Cluster.characterRange.getter();
    v37 = v36;
    (*(v32 + 8))(v33, v34);
    if ((specialized RangeSet.overlaps(_:)(v35, v37) & 1) == 0)
    {
      outlined destroy of Text.Effect.DisplayInfo(v125);
      goto LABEL_4;
    }

LABEL_10:
    v38 = *(a5 + 16);
    v129[0] = *a5;
    v129[1] = v38;
    v129[2] = *(a5 + 32);
    v130 = *(a5 + 48);
    v39 = *a1;
    v40 = *(*a1 + 104);
    v41 = *(*a1 + 112);
    v43 = *(*a1 + 120);
    v42 = *(*a1 + 128);
    v44 = *(*a1 + 136);
    v114 = *(*a1 + 152);
    v115 = v44;
    v45 = *(v39 + 168);
    v113 = *(v39 + 176);
    v46 = *(&v128 + 1);
    v47 = *(*(&v128 + 1) + 16);
    if (v47)
    {
      v48 = *(&v128 + 1) + 32;
      v49 = (*(&v128 + 1) + 32);
      while (1)
      {
        memmove(v117, v49, 0xD1uLL);
        if (_s7SwiftUI4TextV0C16AnimationSupportE6EffectO11DisplayInfoV13DrawOperationOWOg(v117) == 2)
        {
          break;
        }

        v49 += 216;
        if (!--v47)
        {
          goto LABEL_32;
        }
      }

      destructiveProjectEnumData for Text.Effect.DisplayInfo.DrawOperation(v117);
      memmove(v117, v49, 0xD1uLL);
      if (_s7SwiftUI4TextV0C16AnimationSupportE6EffectO11DisplayInfoV13DrawOperationOWOg(v117) != 2)
      {
        goto LABEL_51;
      }

      v50 = destructiveProjectEnumData for Text.Effect.DisplayInfo.DrawOperation(v117);
      v51 = v50 + 11;
      if (v50[11] != v40 || (v50[12] == v41 ? (_ZF = v50[13] == v43) : (_ZF = 0), !_ZF || (v53 = v50, (static Angle.== infix(_:_:)() & 1) == 0) || (v54 = vmovn_s64(vceqq_f64(*(v53 + 15), v115)), (v54.i32[0] & v54.i32[1] & 1) == 0) || v53[17] != v114.f64[0] || v53[18] != v114.f64[1] || v53[19] != v45 || *(v53 + 160) != v113))
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v39 = *a1;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          type metadata accessor for Text.Effect.DrawingContext.Storage();
          v56 = swift_allocObject();
          *(v56 + 24) = 0x3FF0000000000000;
          *(v56 + 32) = 0;
          *(v56 + 40) = 0;
          *(v56 + 48) = 0x3FF0000000000000;
          *(v56 + 56) = 0;
          *(v56 + 64) = 0;
          *(v56 + 80) = 0;
          *(v56 + 88) = 0;
          *(v56 + 72) = 0x3FF0000000000000;
          *(v56 + 96) = 1;
          *(v56 + 104) = 0u;
          *(v56 + 120) = 0u;
          *(v56 + 136) = 0u;
          *(v56 + 152) = v100;
          *(v56 + 168) = 0x3FF0000000000000;
          *(v56 + 176) = 0;
          *(v56 + 184) = 0u;
          *(v56 + 200) = 0u;
          *(v56 + 216) = 0;
          *(v56 + 16) = *(v39 + 16);
          v57 = *(v39 + 40);
          v58 = *(v39 + 56);
          *(v56 + 24) = *(v39 + 24);
          *(v56 + 40) = v57;
          *(v56 + 56) = v58;
          *(v56 + 72) = *(v39 + 72);
          v59 = *(v39 + 192);
          v104.f64[0] = *(v39 + 184);
          v103.f64[0] = v59;
          v61 = *(v39 + 208);
          v99 = *(v39 + 200);
          v60 = v99;
          v62 = *(v39 + 216);
          *(v56 + 184) = v104.f64[0];
          *(v56 + 192) = v59;
          *(v56 + 200) = v60;
          *(v56 + 208) = v61;
          *(v56 + 216) = v62;
          v63 = *(v39 + 96);
          *(v56 + 80) = *(v39 + 80);
          *(v56 + 96) = v63;

          v64 = v62;
          a5 = v102;
          outlined copy of Text.Effect.StopCollector?(*&v104.f64[0], *&v103.f64[0], v99, v61, v64);

          *a1 = v56;
          v39 = v56;
        }

        *(v39 + 104) = *v51;
        v65 = v51[1];
        v66 = v51[2];
        v67 = v51[3];
        *(v39 + 161) = *(v51 + 57);
        *(v39 + 152) = v67;
        *(v39 + 136) = v66;
        *(v39 + 120) = v65;
      }

LABEL_32:
      v68 = *(v46 + 16);
      if (v68)
      {
        v69 = *&v125[0];
        v70 = v127;
        v71 = *&v128;
        do
        {
          v72 = *(v48 + 16);
          v131[0] = *v48;
          v131[1] = v72;
          v73 = *(v48 + 32);
          v74 = *(v48 + 48);
          v75 = *(v48 + 80);
          v131[4] = *(v48 + 64);
          v131[5] = v75;
          v131[2] = v73;
          v131[3] = v74;
          v76 = *(v48 + 96);
          v77 = *(v48 + 112);
          v78 = *(v48 + 144);
          v131[8] = *(v48 + 128);
          v131[9] = v78;
          v131[6] = v76;
          v131[7] = v77;
          v79 = *(v48 + 160);
          v80 = *(v48 + 176);
          v81 = *(v48 + 192);
          v132 = *(v48 + 208);
          v131[11] = v80;
          v131[12] = v81;
          v131[10] = v79;
          outlined init with copy of Text.Effect.DisplayInfo.DrawOperation(v131, v117);
          Text.Effect.DisplayInfo.DrawOperation.resolve(_:fragment:displacement:in:)(v69, v129, a1, v70, v71);
          outlined destroy of Text.Effect.DisplayInfo.DrawOperation(v131);
          v48 += 216;
          --v68;
        }

        while (v68);
      }
    }

    if (v40 != *(v39 + 104) || v41 != *(v39 + 112) || v43 != *(v39 + 120))
    {
      outlined destroy of Text.Effect.DisplayInfo(v125);
LABEL_44:
      v86 = swift_isUniquelyReferenced_nonNull_native();
      v87 = *a1;
      if ((v86 & 1) == 0)
      {
        type metadata accessor for Text.Effect.DrawingContext.Storage();
        v88 = swift_allocObject();
        *(v88 + 24) = 0x3FF0000000000000;
        *(v88 + 32) = 0;
        *(v88 + 40) = 0;
        *(v88 + 48) = 0x3FF0000000000000;
        *(v88 + 56) = 0;
        *(v88 + 64) = 0;
        *(v88 + 80) = 0;
        *(v88 + 88) = 0;
        *(v88 + 72) = 0x3FF0000000000000;
        *(v88 + 96) = 1;
        *(v88 + 104) = 0u;
        *(v88 + 120) = 0u;
        *(v88 + 136) = 0u;
        *(v88 + 152) = v100;
        *(v88 + 168) = 0x3FF0000000000000;
        *(v88 + 176) = 0;
        *(v88 + 184) = 0u;
        *(v88 + 200) = 0u;
        *(v88 + 216) = 0;
        *(v88 + 16) = *(*&v87 + 16);
        v89 = *(*&v87 + 40);
        v90 = *(*&v87 + 56);
        *(v88 + 24) = *(*&v87 + 24);
        *(v88 + 40) = v89;
        *(v88 + 56) = v90;
        *(v88 + 72) = *(*&v87 + 72);
        v91 = *(*&v87 + 184);
        v92 = *(*&v87 + 192);
        v93 = *(*&v87 + 200);
        v94 = *(*&v87 + 208);
        v95 = *(*&v87 + 216);
        *(v88 + 184) = v91;
        *(v88 + 192) = v92;
        *(v88 + 200) = v93;
        *(v88 + 208) = v94;
        *(v88 + 216) = v95;
        v96 = *(*&v87 + 96);
        *(v88 + 80) = *(*&v87 + 80);
        *(v88 + 96) = v96;

        v97 = v94;
        a5 = v102;
        outlined copy of Text.Effect.StopCollector?(v91, v92, v93, v97, v95);

        *a1 = v88;
        v87 = *&v88;
      }

      *(*&v87 + 104) = v40;
      *(*&v87 + 112) = v41;
      *(*&v87 + 120) = v43;
      *(*&v87 + 128) = v42;
      v19 = v114;
      *(*&v87 + 136) = v115;
      *(*&v87 + 152) = v19;
      *(*&v87 + 168) = v45;
      *(*&v87 + 176) = v113;
      goto LABEL_4;
    }

    v82 = *(v39 + 152);
    v103 = *(v39 + 136);
    v104 = v82;
    v83 = *(v39 + 168);
    v84 = *(v39 + 176);
    v85 = static Angle.== infix(_:_:)();
    outlined destroy of Text.Effect.DisplayInfo(v125);
    if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v115, v103), vceqq_f64(v114, v104)))) & 1) == 0 || v45 != v83 || (v85 & 1) == 0 || v113 != v84)
    {
      goto LABEL_44;
    }

LABEL_4:
    v14 = v116 + 1;
    if (v116 + 1 == v111)
    {

      return;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
}

uint64_t TextEffectImplementation.AnimationInfo.__ivar_destroyer()
{

  v1 = *(*v0 + 160);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v1, AssociatedTypeWitness);
}

char *TextEffectImplementation.AnimationInfo.deinit()
{

  v1 = *(*v0 + 160);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v1, AssociatedTypeWitness);

  return v0;
}

uint64_t TextEffectImplementation.AnimationInfo.__deallocating_deinit()
{
  TextEffectImplementation.AnimationInfo.deinit();

  return swift_deallocClassInstance();
}

id @objc TextEffectImplementation.name.getter(void *a1)
{
  v1 = specialized TextEffectImplementation.name.getter(*((*MEMORY[0x1E69E7D40] & *a1) + 0x118), *((*MEMORY[0x1E69E7D40] & *a1) + 0x120));
  v2 = MEMORY[0x19A8BD5F0](v1);

  return v2;
}

uint64_t TextEffectImplementation.updateInfo(_:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a5;
  v9 = *MEMORY[0x1E69E7D40] & *v5;
  v10 = *(v9 + 0x118);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v20 - v12;
  type metadata accessor for TextEffectImplementation.AnimationInfo(0, v10, *((v15 & v14) + 0x120), v16);
  if (swift_dynamicCastClass())
  {
    (*(v11 + 16))(v13, &v5[*(v9 + 296)], v10);
    v17 = *&v5[OBJC_IVAR____TtC20TextAnimationSupport16AnyTextAnimation_id];

    v18 = TextEffectImplementation.AnimationInfo.updateLayout(effect:identifier:context:)(v13, v17, a2, a3, a4, v21);

    (*(v11 + 8))(v13, v10);
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

unint64_t TextEffectImplementation.applyKeyframe(_:to:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v35 = a1;
  v5 = *v2;
  v6 = *MEMORY[0x1E69E7D40];
  v7 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x120);
  v8 = *(v7 + 16);
  v9 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x118);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v37 = *(AssociatedTypeWitness - 8);
  v38 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v34 - v11;
  v13 = *(v9 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v34 - v16;
  (*(v13 + 16))(&v34 - v16, &v3[*((v6 & v5) + 0x128)], v9, v15);
  v36 = (*(v7 + 24))(0x6C6F686563616C50, 0xEB00000000726564, v9, v7);
  v19 = v18;
  (*(v13 + 8))(v17, v9);
  v20 = a2;
  v39[0] = a2;
  v39[1] = MEMORY[0x1E69E7CC0];
  v39[2] = MEMORY[0x1E69E7CC0];
  if (v35 && (type metadata accessor for TextEffectKeyframeBox(), (v21 = swift_dynamicCastClass()) != 0) && *(*(v21 + OBJC_IVAR____TtC20TextAnimationSupport21TextEffectKeyframeBox_entry) + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(*&v3[OBJC_IVAR____TtC20TextAnimationSupport16AnyTextAnimation_id]), (v23 & 1) != 0) && (type metadata accessor for Text.Effect.ConcreteLayoutState(0, v9, v8, v22), (v24 = swift_dynamicCastClass()) != 0))
  {
    v26 = v37;
    v25 = v38;
    (*(v37 + 16))(v12, v24 + *(*v24 + 128), v38);
    v27 = v20;
    swift_unknownObjectRetain();

    Text.Effect.Configuration.updateContent(_:for:)(v39, v12, v36, v19, v9, v7);

    (*(v26 + 8))(v12, v25);
    v28 = v39[0];
    v29 = Text.Effect.Content.resolveIfModified()();

    swift_unknownObjectRelease();
  }

  else
  {
    v30 = *(v8 + 120);
    v31 = a2;
    v30(v9, v8);
    Text.Effect.Configuration.updateContent(_:for:)(v39, v12, v36, v19, v9, v7);

    (*(v37 + 8))(v12, v38);
    v32 = v39[0];
    v29 = Text.Effect.Content.resolveIfModified()();
  }

  return v29;
}

id @objc TextEffectImplementation.applyKeyframe(_:to:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_unknownObjectRetain();
  v7 = a4;
  v8 = a1;
  v9 = TextEffectImplementation.applyKeyframe(_:to:)(a3, v7);
  swift_unknownObjectRelease();

  return v9;
}

void *TextEffectImplementation.states.getter()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x118);
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x120);
  v3 = (*(*(v2 + 16) + 112))(v1, *(v2 + 16));
  if (!v3)
  {
    return 0;
  }

  MEMORY[0x1EEE9AC00](v3);
  swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Array();
  swift_getWitnessTable();
  v11 = _ArrayProtocol.filter(_:)();
  MEMORY[0x1EEE9AC00](v11);
  v10[2] = v1;
  v10[3] = v2;
  v5 = type metadata accessor for Text.Effect.AnyLayoutState();
  WitnessTable = swift_getWitnessTable();
  v8 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #2 in TextEffectImplementation.states.getter, v10, v4, v5, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v7);

  return v8;
}

BOOL closure #1 in TextEffectImplementation.states.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v11 - v8;
  (*(v4 + 120))(a2, v4, v7);
  swift_getAssociatedConformanceWitness();
  LOBYTE(a2) = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v6 + 8))(v9, AssociatedTypeWitness);
  return (a2 & 1) == 0;
}

uint64_t closure #2 in TextEffectImplementation.states.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v14 - v10;
  type metadata accessor for Text.Effect.ConcreteLayoutState(0, a2, v7, v12);
  (*(v9 + 16))(v11, a1, AssociatedTypeWitness);
  result = Text.Effect.ConcreteLayoutState.__allocating_init(state:)(v11);
  *a4 = result;
  return result;
}

void TextEffectImplementation.appendInteractionMetrics(for:to:at:context:)(uint64_t a1, unint64_t a2, char **a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  v9 = v8;
  v128.n128_u64[0] = a5;
  v127.n128_u64[0] = a4;
  v130 = a3;
  v15 = *v9;
  v16 = *MEMORY[0x1E69E7D40];
  v17 = type metadata accessor for Text.Layout.Cluster();
  v18 = *(v17 - 8);
  v119 = v17;
  v120 = v18;
  MEMORY[0x1EEE9AC00](v17);
  v118 = v108 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for Text.Effect.Layout.Fragment(0);
  MEMORY[0x1EEE9AC00](v109);
  v110 = v108 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = a7;
  TextEffectsAnimationController.state(for:time:)(a1, v153, a8);
  v21 = *((v16 & v15) + 0x118);
  v22 = OBJC_IVAR____TtC20TextAnimationSupport16AnyTextAnimation_id;
  v23 = *(v9 + OBJC_IVAR____TtC20TextAnimationSupport16AnyTextAnimation_id);
  v24 = *((v16 & v15) + 0x120);
  v25 = specialized TextEffectImplementation.lineBreakingState.getter(v21, v24);
  v26 = *(v24 + 16);
  specialized Text.Effect.BaseContext.fragment<A>(for:key:fragment:)(v23, v25, a2, a6, &v159);

  v27 = *(v9 + v22);
  v28 = specialized TextEffectImplementation.defaultDrawingState.getter(v21, v24);
  specialized Text.Effect.BaseContext.fragment<A>(for:key:fragment:)(v27, v28, a2, a6, &v162);

  if ((v154 & 0xFE) != 2)
  {
    v142 = v162;
    v143 = v163;
    v144 = v164;
    v145 = v165;
    v44 = type metadata accessor for Text.Effect.DrawableFragment(0, v21, v26, v29);
    v45 = *(v44 - 8);
    (*(v45 + 16))(&v134, &v162, v44);
    appendMetrics #1 <A>(_:) in TextEffectImplementation.appendInteractionMetrics(for:to:at:context:)(&v142, &v159, v130);
    v46 = *(v45 + 8);
    v46(&v162, v44);
LABEL_7:
    v46(&v162, v44);
    v46(&v159, v44);
    outlined destroy of Text.Effect.State(v153);
    return;
  }

  v30 = specialized TextEffectImplementation.animationInfo(persist:from:to:variant:duration:context:)(1, v155, v156, v157, v158, v153[6], 0, v127.n128_i64[0], v128.n128_i64[0], a6, v129);
  if ((TextEffectImplementation.AnimationInfo.needsUpdate(for:state:consideringRestart:)(a2, v153, 1) & 1) == 0)
  {
    v142 = v162;
    v143 = v163;
    v144 = v164;
    v145 = v165;
    v44 = type metadata accessor for Text.Effect.DrawableFragment(0, v21, v26, v31);
    v47 = *(v44 - 8);
    (*(v47 + 16))(&v134, &v162, v44);
    appendMetrics #1 <A>(_:) in TextEffectImplementation.appendInteractionMetrics(for:to:at:context:)(&v142, &v159, v130);
    v46 = *(v47 + 8);
    v46(&v162, v44);

    goto LABEL_7;
  }

  v32 = v30;
  v33 = v110;
  TextEffectImplementation.AnimationInfo.layout(for:state:context:)(v153, v127.n128_i64[0], v128.n128_i64[0], a6, v129, v110);
  v35 = v33 + *(v109 + 24);
  v36 = *v35;
  v117 = *(v35 + 8);
  v37 = v130;
  if (*(v35 + 16) == 1)
  {
    v38 = *(v9 + v22);
    v39 = v36;

    specialized Text.Effect.BaseContext.fragment<A>(for:key:fragment:)(v38, v39, a2, a6, &v134);
    v142 = v134;
    v143 = v135;
    v144 = v136;
    v145 = v137;
    appendMetrics #1 <A>(_:) in TextEffectImplementation.appendInteractionMetrics(for:to:at:context:)(&v142, &v159, v37);

    outlined destroy of Text.Effect.State(v153);
    v41 = type metadata accessor for Text.Effect.DrawableFragment(0, v21, v26, v40);
    v42 = *(*(v41 - 8) + 8);
    v42(&v134, v41);
    v43 = outlined consume of Text.Effect.Layout.Fragment.Storage(v39, v117, 1);
    (v42)(&v159, v41, v43);
    v42(&v162, v41);
    outlined destroy of Text.Effect.Layout.Fragment(v110, type metadata accessor for Text.Effect.Layout.Fragment);
    return;
  }

  v108[1] = v32;
  v48 = v36;
  v108[0] = type metadata accessor for Text.Effect.DrawableFragment(0, v21, v26, v34);
  v49 = specialized Text.Effect.DrawableFragment.visualOrder.getter();
  v115 = v50;
  v51 = v117;
  outlined copy of Text.Effect.Layout.Fragment.Storage(v48, v117, 0);
  v52 = *(v49 + 16);
  v116 = v49;

  if (!v52)
  {
LABEL_39:

    outlined consume of Text.Effect.Layout.Fragment.Storage(v48, v51, 0);
    v102 = v110;
    v103 = *(v110 + *(v109 + 20) + 24);
    v104 = v108[0];
    v105 = Text.Effect.DrawableFragment.width.getter();

    outlined destroy of Text.Effect.State(v153);
    v106 = *(*(v104 - 8) + 8);
    v106(&v159, v104);
    v106(&v162, v104);
    outlined destroy of Text.Effect.Layout.Fragment(v102, type metadata accessor for Text.Effect.Layout.Fragment);
    v107 = type metadata accessor for Text.Effect.InteractionMetrics(0);
    *(v37 + *(v107 + 28)) = v103 - v105 + *(v37 + *(v107 + 28));
    return;
  }

  v53 = 0;
  v54 = 0;
  v55 = *&v51;
  v113 = v48 + 32;
  v114 = v116 + 32;
  v111 = v120 + 8;
  v112 = v120 + 16;
  while (1)
  {
    v56 = (v114 + 24 * v53);
    v57 = *v56;
    v58 = v56[1];
    v59 = *(v56 + 16);
    if (v59)
    {
      if (v59 != 1)
      {
        v65 = 1;
        goto LABEL_26;
      }

      v60 = v58 - 1;
      if (__OFSUB__(v58, 1))
      {
        goto LABEL_47;
      }

      v61 = __OFSUB__(v60, v54);
      v62 = v60 - v54;
      if (v61)
      {
        goto LABEL_49;
      }

      v63 = v54 + 1;
      if (__OFADD__(v54, 1))
      {
        goto LABEL_50;
      }

      v61 = __OFSUB__(v58, v57);
      v64 = v58 - v57;
      if (v61)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v62 = v57 + v54;
      if (__OFADD__(v57, v54))
      {
        goto LABEL_46;
      }

      v63 = v54 + 1;
      if (__OFADD__(v54, 1))
      {
        goto LABEL_48;
      }

      v61 = __OFSUB__(v58, v57);
      v64 = v58 - v57;
      if (v61)
      {
        goto LABEL_51;
      }
    }

    v65 = v63 >= v64;
    v54 = v63 < v64 ? v63 : 0;
    v57 = v62;
LABEL_26:
    v61 = __OFADD__(v115, v57);
    v66 = v115 + v57;
    if (v61)
    {
      break;
    }

    v67 = v66 - v161;
    if (__OFSUB__(v66, v161))
    {
      goto LABEL_41;
    }

    if ((v67 & 0x8000000000000000) != 0)
    {
      goto LABEL_42;
    }

    if (v67 >= *(v48 + 16))
    {
      goto LABEL_43;
    }

    v68 = v160;
    v69 = (v113 + (v67 << 7));
    v70 = *v69;
    v71 = v69[1];
    v72 = v69[3];
    v136 = v69[2];
    v137 = v72;
    v134 = v70;
    v135 = v71;
    v73 = v69[4];
    v74 = v69[5];
    v75 = v69[7];
    v140 = v69[6];
    v141 = v75;
    v138 = v73;
    v139 = v74;
    v133[0] = v69[7];
    v76 = *(&v140 + 1) + v55;
    memmove(&v142, v69, 0x68uLL);
    v151 = v76;
    v152 = v133[0];
    v77 = *(v68 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters);
    if (v67 >= *(v77 + 16))
    {
      goto LABEL_44;
    }

    v129 = v54;
    v78 = v48;
    v79 = v119;
    v80 = v120;
    v81 = v77 + ((*(v120 + 80) + 32) & ~*(v120 + 80)) + *(v120 + 72) * v67;
    v82 = v118;
    (*(v120 + 16))(v118, v81, v119);
    outlined init with copy of Text.Effect.DisplayInfo(&v134, v133);
    v83 = Text.Layout.Cluster.characterRange.getter();
    v85 = v84;
    v86 = (*(v80 + 8))(v82, v79);
    v86.n128_u64[0] = v148;
    v125 = v86;
    v86.n128_u64[0] = v149;
    v123 = v86;
    v87 = v151;
    v86.n128_u64[0] = v150;
    v128 = v86;
    v86.n128_u64[0] = v147;
    v122 = v86;
    v88 = v146;
    v86.n128_u64[0] = *(&v142 + 1);
    v124 = v86;
    v86.n128_u64[0] = v143;
    v127 = v86;
    v86.n128_u64[0] = *(&v143 + 1);
    v126 = v86;
    v89 = v144;
    v90 = v37 + *(type metadata accessor for Text.Effect.InteractionMetrics(0) + 28);
    v92 = *v90;
    *&v91 = *(v90 + 1);
    v131 = v83;
    v132 = v85;
    if (__OFSUB__(v85, v83))
    {
      goto LABEL_45;
    }

    v121 = v91;
    if (v85 != v83)
    {
      _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_3(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BE0]);
      v93 = RangeSet._ranges.modify();
      _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_3(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>.Ranges, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BA8]);
      RangeSet.Ranges._insert(contentsOf:)();
      v93(v133, 0);
      v37 = v130;
    }

    v94 = *v37;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v94 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v94 + 2) + 1, 1, v94);
    }

    v96 = *(v94 + 2);
    v95 = *(v94 + 3);
    if (v96 >= v95 >> 1)
    {
      v94 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v95 > 1), v96 + 1, 1, v94);
    }

    v53 += v65;
    outlined destroy of Text.Effect.DisplayInfo(&v142);
    *(v94 + 2) = v96 + 1;
    v97 = &v94[96 * v96];
    *(v97 + 4) = v83;
    *(v97 + 5) = v85;
    *(v97 + 6) = v87 + v92;
    *&v98 = v121;
    *(&v98 + 1) = v122.n128_u64[0];
    v100 = v124.n128_u64[0];
    *&v99 = v125.n128_u64[0];
    *(&v99 + 1) = v123.n128_u64[0];
    *(v97 + 72) = v99;
    *&v99 = v128.n128_u64[0];
    *(&v99 + 1) = v100;
    *(v97 + 56) = v98;
    *&v101 = v127.n128_u64[0];
    *(&v101 + 1) = v126.n128_u64[0];
    *(v97 + 104) = v101;
    *(v97 + 88) = v99;
    *(v97 + 15) = v89;
    v37 = v130;
    *v130 = v94;
    *v90 = v88 - *&v99 + v92;
    v51 = v117;
    v48 = v78;
    v54 = v129;
    if (v53 >= *(v116 + 16))
    {
      goto LABEL_39;
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
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
}

void appendMetrics #1 <A>(_:) in TextEffectImplementation.appendInteractionMetrics(for:to:at:context:)(uint64_t a1, uint64_t a2, char **a3)
{
  v78 = a3;
  v77 = type metadata accessor for Text.Layout.Cluster();
  v64 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v60 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v76 = &v57 - v7;
  v8 = type metadata accessor for Text.Layout.Line();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v13 = *(a2 + 24);
  v62 = *(a2 + 48);
  v58 = v14;
  v15 = *(v14 + 16);
  v61 = v13;
  v65 = &v57 - v16;
  v15(v12);
  v17 = *(a1 + 24);
  v66 = v10;
  v59 = v8;
  (v15)(v10, v17 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_line, v8);
  v63 = v17;
  v18 = *(v17 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_visualOrder);
  v19 = *(a1 + 48);
  v83 = 0;
  v84 = 0;
  v82 = v18;
  v20 = OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters;

  v87 = Text.Effect.VisualOrderCollection.Iterator.next()();
  if (v87.is_nil)
  {
LABEL_2:

    v21 = *(v58 + 8);
    v22 = v59;
    v21(v66, v59);
    v21(v65, v22);
  }

  else
  {
    v23 = v64 + 16;
    v75 = (v64 + 8);
    v24 = 0.0;
    while (1)
    {
      v25 = v19 + v87.value;
      if (__OFADD__(v19, v87.value))
      {
        break;
      }

      if (__OFSUB__(v25, v19))
      {
        goto LABEL_21;
      }

      if (v87.value < 0)
      {
        goto LABEL_22;
      }

      v26 = *(v63 + v20);
      if (v87.value >= *(v26 + 16))
      {
        goto LABEL_23;
      }

      v27 = (*(v64 + 80) + 32) & ~*(v64 + 80);
      v28 = *(v64 + 72);
      v29 = *(v64 + 16);
      v29(v76, v26 + v27 + v28 * v87.value, v77);
      Text.Layout.Cluster.typographicBounds(with:)(v66, v85);
      v30 = v25 - v62;
      if (__OFSUB__(v25, v62))
      {
        goto LABEL_24;
      }

      if ((v30 & 0x8000000000000000) != 0)
      {
        goto LABEL_25;
      }

      v31 = *(v61 + v20);
      if (v30 >= *(v31 + 16))
      {
        goto LABEL_26;
      }

      v32 = v31 + v27 + v28 * v30;
      v33 = v60;
      v34 = v77;
      v35 = v23;
      v29(v60, v32, v77);
      Text.Layout.Cluster.typographicBounds(with:)(v65, v86);
      v36 = *v75;
      (*v75)(v33, v34);
      v37 = Text.Layout.Cluster.characterRange.getter();
      v39 = v38;
      *&v40 = v86[4];
      v71 = v40;
      *&v40 = v86[5];
      v69 = v40;
      *&v40 = v86[3];
      v68 = v40;
      *&v40 = v86[2];
      v74 = v40;
      v41 = v85[2];
      *&v40 = v85[3];
      v70 = v40;
      *&v40 = v85[4];
      v73 = v40;
      *&v40 = v85[5];
      v72 = v40;
      v42 = v78 + *(type metadata accessor for Text.Effect.InteractionMetrics(0) + 28);
      v44 = *v42;
      *&v43 = *(v42 + 1);
      v80 = v37;
      v81 = v39;
      if (__OFSUB__(v39, v37))
      {
        goto LABEL_27;
      }

      v67 = v43;
      if (v39 != v37)
      {
        _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_3(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BE0]);
        v45 = RangeSet._ranges.modify();
        _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_3(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>.Ranges, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BA8]);
        RangeSet.Ranges._insert(contentsOf:)();
        v45(v79, 0);
      }

      v46 = v78;
      v47 = *v78;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v46 = v47;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v47 + 2) + 1, 1, v47);
        *v78 = v47;
      }

      v50 = *(v47 + 2);
      v49 = *(v47 + 3);
      if (v50 >= v49 >> 1)
      {
        v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v50 + 1, 1, v47);
        *v78 = v56;
      }

      v36(v76, v77);
      v51 = *v78;
      *(v51 + 2) = v50 + 1;
      v52 = &v51[96 * v50];
      *(v52 + 4) = v37;
      *(v52 + 5) = v39;
      *(v52 + 6) = v24 + v44;
      *&v53 = v67;
      *(&v53 + 1) = v68;
      *&v54 = v71;
      *(&v54 + 1) = v69;
      *(v52 + 72) = v54;
      *(v52 + 56) = v53;
      v55 = *&v74;
      *&v54 = v74;
      *(&v54 + 1) = v70;
      *&v53 = v73;
      *(&v53 + 1) = v72;
      *(v52 + 104) = v53;
      *(v52 + 88) = v54;
      *(v52 + 15) = v41;
      *v42 = v41 - v55 + v44;
      v24 = v24 + v41 - *&v54;
      v87 = Text.Effect.VisualOrderCollection.Iterator.next()();
      v23 = v35;
      if (v87.is_nil)
      {
        goto LABEL_2;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }
}

uint64_t TextEffectImplementation.resolve(_:ranges:in:)(uint64_t a1, unint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t), uint64_t *a4)
{
  v5 = v4;
  v168 = a3;
  v149 = a2;
  v150 = a1;
  v166 = *v5;
  v7 = *MEMORY[0x1E69E7D40];
  v8 = type metadata accessor for Text.Effect.ResolvedDrawing.Operation(0);
  v159 = *(v8 - 8);
  v160 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v169 = v139 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = type metadata accessor for Text.Effect.ResolvedDrawing.Operation.Kind(0);
  MEMORY[0x1EEE9AC00](v158);
  v144 = v139 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = type metadata accessor for Text.Layout.Run();
  v140 = *(v167 - 8);
  MEMORY[0x1EEE9AC00](v167);
  v157 = v139 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RangeSet<Int>.Ranges(0, &lazy cache variable for type metadata for RangeSet<Int>.Ranges, MEMORY[0x1E69E7BA8]);
  v152 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v139 - v13;
  type metadata accessor for RangeSet<Int>.Ranges(0, &lazy cache variable for type metadata for RangeSet<Int>, MEMORY[0x1E69E7BE0]);
  v151 = v15;
  v141 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v153 = v139 - v16;
  _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_3(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BE0]);
  v146 = *(v17 - 8);
  v147 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v145 = v139 - v18;
  v19 = type metadata accessor for Text.Layout.Line();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v161 = v139 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v163 = v139 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = v139 - v25;
  v154 = a4;
  v162 = *a4;
  v27 = *(*(v162 + 16) + 48);
  v28 = OBJC_IVAR____TtC20TextAnimationSupport16AnyTextAnimation_id;
  v29 = *(v5 + OBJC_IVAR____TtC20TextAnimationSupport16AnyTextAnimation_id);
  v30 = v7;
  v31 = *((v7 & v166) + 0x118);
  v148 = v5;
  v32 = *((v30 & v166) + 0x120);

  v166 = v32;
  v33 = specialized TextEffectImplementation.defaultDrawingState.getter(v31, v32);
  v34 = Text.Effect.Keyframes.subscript.getter(v29, v33, v27);

  if (v34)
  {
    v143 = v34;
    v139[1] = v14;
    v36 = v162;
    v37 = *(*(v162 + 16) + 24);

    TextEffectsAnimationController.state(for:time:)(v150, v172, v37);

    v38 = v154[3];
    v39 = *(v154 + 32);
    v40 = v154[5];
    v181 = v36;
    v182 = *(v154 + 1);
    v183 = v38;
    v184 = v39;
    v185 = v40;
    v41 = *(v148 + v28);
    v42 = v166;
    v43 = specialized TextEffectImplementation.defaultDrawingState.getter(v31, v166);
    v44 = *(v42 + 16);
    Text.Effect.DrawingContext.fragment<A>(for:key:fragment:)(v41, v43, v149, v178);

    v142 = type metadata accessor for Text.Effect.DrawableFragment(0, v31, v44, v45);
    v46 = Text.Effect.DrawableFragment.lineBreakingFragment.getter(v142, v179);
    v47 = *(v20 + 16);
    v47(v26, v180 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_line, v19, v46);
    Text.Layout.Line.origin.getter();
    v49 = v48;
    v50 = *(v20 + 8);
    v155 = v26;
    v50(v26, v19);
    v51 = v163;
    v164 = v47;
    v165 = v20 + 16;
    (v47)(v163, v178[3] + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_line, v19);
    Text.Layout.Line.origin.getter();
    v53 = v52;
    v166 = v19;
    v163 = v50;
    v50(v51, v19);
    v54 = v49 - v53;

    v55 = v36;
    v56 = v20 + 8;
    if (v54 != 0.0)
    {
      v57 = v154;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v55 = *v57;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        type metadata accessor for Text.Effect.DrawingContext.Storage();
        v59 = swift_allocObject();
        *(v59 + 104) = 0u;
        *(v59 + 120) = 0u;
        *(v59 + 136) = 0u;
        __asm { FMOV            V0.2D, #1.0 }

        *(v59 + 152) = _Q0;
        *(v59 + 168) = 0x3FF0000000000000;
        *(v59 + 176) = 0;
        *(v59 + 16) = *(v55 + 16);
        v65 = *(v55 + 40);
        v66 = *(v55 + 56);
        *(v59 + 24) = *(v55 + 24);
        *(v59 + 40) = v65;
        *(v59 + 56) = v66;
        *(v59 + 72) = *(v55 + 72);
        v67 = *(v55 + 184);
        v68 = *(v55 + 192);
        v69 = *(v55 + 200);
        v70 = *(v55 + 208);
        v71 = *(v55 + 216);
        *(v59 + 184) = v67;
        *(v59 + 192) = v68;
        *(v59 + 200) = v69;
        *(v59 + 208) = v70;
        *(v59 + 216) = v71;
        v72 = *(v55 + 96);
        *(v59 + 80) = *(v55 + 80);
        *(v59 + 96) = v72;

        outlined copy of Text.Effect.StopCollector?(v67, v68, v69, v70, v71);

        *v154 = v59;
        v55 = v59;
      }

      v73 = *(v55 + 40);
      *&v171.a = *(v55 + 24);
      *&v171.c = v73;
      *&v171.tx = *(v55 + 56);
      CGAffineTransformTranslate(&v170, &v171, 0.0, v54);
      v74 = *&v170.c;
      v75 = *&v170.tx;
      *(v55 + 24) = *&v170.a;
      *(v55 + 40) = v74;
      *(v55 + 56) = v75;
    }

    result = v143;
    if ((v173 & 0xFE) == 2)
    {

      v76 = v176;
      v169 = v175;
      v77 = v142;
      v78 = v177;
      v79 = v174;
      v80 = v172[6];
      v81 = *(v55 + 16);
      v83 = v81[4];
      v82 = v81[5];
      v85 = v81[6];
      v84 = v81[7];

      specialized TextEffectImplementation.animationInfo(persist:from:to:variant:duration:context:)(1, v79, v169, v76, v78, v80, 0, v83, v82, v85, v84);

      TextEffectImplementation.AnimationInfo.resolve(id:fragment:ranges:state:in:)(v150, v178, v168, v172, &v181);

      outlined destroy of Text.Effect.State(v172);
      v86 = *(*(v77 - 8) + 8);
      v86(v178, v77);
      v87 = v77;
LABEL_23:
      v86(v179, v87);
    }

    if ((v149 & 0x8000000000000000) != 0)
    {
      goto LABEL_33;
    }

    if (*(v143 + 16) <= v149)
    {
LABEL_34:
      __break(1u);
    }

    else
    {
      v88 = *(v143 + 8 * v149 + 32);

      v90 = v145;
      v89 = v146;
      v91 = v147;
      (*(v146 + 16))(v145, &v88[OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_characterRanges], v147);
      _ss8RangeSetV6RangesVy7SwiftUI4TextV6LayoutV14CharacterIndexV_GADyx_GSlsWlTm_1(&lazy protocol witness table cache variable for type RangeSet<Text.Layout.CharacterIndex> and conformance RangeSet<A>, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, MEMORY[0x1E69E7BE0], MEMORY[0x1E69E7BF0]);
      v92 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v89 + 8))(v90, v91);
      if (v92)
      {
        type metadata accessor for _ContiguousArrayStorage<Range<Int>>(0);
        v93 = swift_allocObject();
        *(v93 + 16) = xmmword_195CC8D00;
        v94 = *(v88 + 1);
        v154 = v93;
        *(v93 + 32) = v94;
        v95 = 1;
        goto LABEL_14;
      }

      result = RangeSet.init()();
      v96 = *(v88 + 2);
      v97 = *(v88 + 3);
      v98 = v155;
      if (*&v96 == v97)
      {
LABEL_13:
        v99 = v151;
        v100 = v153;
        RangeSet.ranges.getter();
        lazy protocol witness table accessor for type RangeSet<Int>.Ranges and conformance RangeSet<A>.Ranges(v101);
        v102 = dispatch thunk of Sequence._copyToContiguousArray()();
        (*(v141 + 8))(v100, v99);
        v154 = v102;
        v95 = *(v102 + 16);
        if (!v95)
        {
LABEL_22:

          outlined destroy of Text.Effect.State(v172);
          v130 = v142;
          v86 = *(*(v142 - 8) + 8);
          v86(v178, v142);
          v87 = v130;
          goto LABEL_23;
        }

LABEL_14:
        v156 = v56;
        v157 = v88;
        v155 = OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_line;
        v103 = v154 + 5;
        v104 = v166;
        v105 = v144;
        v106 = v161;
        do
        {
          v167 = v103;
          v168 = v95;
          v107 = *(v103 - 1);
          v108 = *v103;
          v109 = v164;
          v164(v106, &v157[v155], v104);
          type metadata accessor for (Text.Layout.Line, Range<Int>, Color.Resolved?)(0);
          v111 = (v105 + *(v110 + 48));
          v112 = v104;
          v113 = *(v110 + 64);
          v109(v105, v106, v112);
          *v111 = v107;
          v111[1] = v108;
          v114 = v162;
          v115 = *(v162 + 96);
          v116 = 0uLL;
          if ((v115 & 1) == 0)
          {
            v116 = *(v162 + 80);
          }

          v117 = v105 + v113;
          *v117 = v116;
          *(v117 + 16) = v115;
          swift_storeEnumTagMultiPayload();
          v118 = *(v114 + 16);
          v119 = v169;
          outlined init with copy of Text.Effect.Layout.Fragment(v105, v169, type metadata accessor for Text.Effect.ResolvedDrawing.Operation.Kind);
          v120 = v160;
          v121 = *(v114 + 24);
          v122 = *(v114 + 40);
          v123 = *(v114 + 56);
          *(v119 + *(v160 + 20)) = *(v114 + 72);
          v124 = (v119 + *(v120 + 24));
          *v124 = v121;
          v124[1] = v122;
          v124[2] = v123;
          swift_beginAccess();
          v125 = *(v118 + 16);

          v126 = swift_isUniquelyReferenced_nonNull_native();
          *(v118 + 16) = v125;
          if ((v126 & 1) == 0)
          {
            v125 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v125[2] + 1, 1, v125);
            *(v118 + 16) = v125;
          }

          v127 = v167;
          v129 = v125[2];
          v128 = v125[3];
          if (v129 >= v128 >> 1)
          {
            v125 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v128 > 1), v129 + 1, 1, v125);
          }

          v103 = (v127 + 16);
          v125[2] = v129 + 1;
          outlined init with take of Text.Effect.ResolvedDrawing.Operation(v169, v125 + ((*(v159 + 80) + 32) & ~*(v159 + 80)) + *(v159 + 72) * v129);
          *(v118 + 16) = v125;
          swift_endAccess();
          outlined destroy of Text.Effect.Layout.Fragment(v105, type metadata accessor for Text.Effect.ResolvedDrawing.Operation.Kind);
          v106 = v161;
          v104 = v166;
          (v163)(v161, v166);

          v95 = v168 - 1;
        }

        while (v168 != 1);
        goto LABEL_22;
      }

      if (v97 >= *&v96)
      {
        if (*&v96 < v97)
        {
          v154 = OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_line;
          v131 = (v140 + 8);
          while (1)
          {
            *&v133 = *&v96 + 1;
            v134 = v166;
            v164(v98, v154 + v88, v166);
            v135 = v157;
            Text.Layout.Line.subscript.getter();
            (v163)(v98, v134);
            v136 = Text.Layout.Run.characterRange.getter();
            v138 = v137;
            (*v131)(v135, v167);
            result = specialized RangeSet.overlaps(_:)(v136, v138);
            if (result)
            {
              if (v96 == NAN)
              {
                __break(1u);
LABEL_33:
                __break(1u);
                goto LABEL_34;
              }

              v170.a = v96;
              *&v170.b = *&v96 + 1;
              v132 = RangeSet._ranges.modify();
              RangeSet.Ranges._insert(contentsOf:)();
              v132(&v171, 0);
            }

            v96 = v133;
            v98 = v155;
            if (v97 == *&v133)
            {
              goto LABEL_13;
            }
          }
        }

        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
  }

  return result;
}

uint64_t TextEffectImplementation.needsUpdate(_:at:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  TextEffectsAnimationController.state(for:time:)(a1, v14, a7);
  if ((v16 & 0xFE) == 2)
  {
    specialized TextEffectImplementation.animationInfo(persist:from:to:variant:duration:context:)(1, v17, v18, v19, v20, v15, 0, a3, a4, a5, a6);
    v12 = TextEffectImplementation.AnimationInfo.needsUpdate(for:state:consideringRestart:)(a2, v14, 1);
  }

  else
  {
    v12 = 0;
  }

  outlined destroy of Text.Effect.State(v14);
  return v12 & 1;
}

void *TextEffectImplementation.metrics(_:ranges:at:context:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  v9 = v8;
  *&v89.f64[0] = a6;
  v86 = a4;
  v87 = a5;
  v15 = *MEMORY[0x1E69E7D40] & *v9;
  v83 = type metadata accessor for Text.Layout.Cluster();
  v16 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v18 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v84.f64[0] = type metadata accessor for Text.Effect.Layout.Fragment(0);
  MEMORY[0x1EEE9AC00](*&v84.f64[0]);
  v85 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = a7;
  TextEffectsAnimationController.state(for:time:)(a1, v101, a8);
  v20 = swift_allocObject();
  v21 = v20;
  *(v20 + 16) = 0u;
  *(v20 + 32) = 0u;
  if ((v102 & 0xFE) != 2)
  {
    v42 = specialized TextEffectImplementation.defaultDrawingState.getter(*(v15 + 280), *(v15 + 288));
    specialized appendMetrics #1 <A>(_:) in TextEffectImplementation.metrics(_:ranges:at:context:)(v42, *&v89.f64[0], v9, a2, a3, v21);
    outlined destroy of Text.Effect.State(v101);

    swift_beginAccess();
    v43 = *(v21 + 32);
    v89 = *(v21 + 16);
    v90 = v43;
  }

  v81 = v20 + 16;
  v82 = v20;
  *&v90.f64[0] = a3;
  v22 = *&v89.f64[0];
  v23 = specialized TextEffectImplementation.animationInfo(persist:from:to:variant:duration:context:)(0, v103, v104, v105, v106, v101[6], 0, v86, v87, *&v89.f64[0], v88);
  v24 = TextEffectImplementation.AnimationInfo.needsUpdate(for:state:consideringRestart:)(a2, v101, 1);
  v25 = *(v15 + 280);
  if ((v24 & 1) == 0)
  {
    v44 = specialized TextEffectImplementation.defaultDrawingState.getter(*(v15 + 280), *(v15 + 288));
    v45 = v22;
    v46 = v82;
    specialized appendMetrics #1 <A>(_:) in TextEffectImplementation.metrics(_:ranges:at:context:)(v44, v45, v9, a2, *&v90.f64[0], v82);

    outlined destroy of Text.Effect.State(v101);

LABEL_23:
    swift_beginAccess();
    v75 = v46[2];
    v89 = v46[1];
    v90 = v75;
  }

  v26 = *(v9 + OBJC_IVAR____TtC20TextAnimationSupport16AnyTextAnimation_id);
  v27 = *(v15 + 288);
  v28 = specialized TextEffectImplementation.defaultDrawingState.getter(v25, v27);
  v29 = a2;
  v30 = v22;
  v31 = v23;
  v32 = *(v27 + 16);
  v80 = v29;
  specialized Text.Effect.BaseContext.fragment<A>(for:key:fragment:)(v26, v28, v29, v30, v107);

  v33 = v85;
  TextEffectImplementation.AnimationInfo.layout(for:state:context:)(v101, v86, v87, v30, v88, v85);
  lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex(v34, v35, v36);
  v37 = *&v90.f64[0];
  if (static RangeSet.== infix(_:_:)())
  {
    v39 = type metadata accessor for Text.Effect.DrawableFragment(0, v25, v32, v38);
    (*(*(v39 - 8) + 8))(v107, v39);

    outlined destroy of Text.Effect.State(v101);
    v40 = (v33 + *(*&v84.f64[0] + 20));
    v41 = v40[1];
    v89 = *v40;
    v90 = v41;
    outlined destroy of Text.Effect.Layout.Fragment(v33, type metadata accessor for Text.Effect.Layout.Fragment);
  }

  v78 = v25;
  v79 = v31;
  v47 = v33 + *(*&v84.f64[0] + 24);
  v48 = *v47;
  v49 = *(v47 + 8);
  if (*(v47 + 16) == 1)
  {
    outlined copy of Text.Effect.Layout.Fragment.Storage(v48, v49, 1);
    v46 = v82;
    specialized appendMetrics #1 <A>(_:) in TextEffectImplementation.metrics(_:ranges:at:context:)(v48, *&v89.f64[0], v9, v80, v37, v82);

    outlined consume of Text.Effect.Layout.Fragment.Storage(v48, v49, 1);
    outlined destroy of Text.Effect.State(v101);
    v51 = type metadata accessor for Text.Effect.DrawableFragment(0, v78, v32, v50);
    (*(*(v51 - 8) + 8))(v107, v51);
    outlined destroy of Text.Effect.Layout.Fragment(v33, type metadata accessor for Text.Effect.Layout.Fragment);
    goto LABEL_23;
  }

  v52 = *(v48 + 16);
  if (!v52)
  {

    outlined destroy of Text.Effect.State(v101);
    v46 = v82;
LABEL_22:
    v74 = type metadata accessor for Text.Effect.DrawableFragment(0, v78, v32, v73);
    (*(*(v74 - 8) + 8))(v107, v74);
    outlined destroy of Text.Effect.Layout.Fragment(v33, type metadata accessor for Text.Effect.Layout.Fragment);
    outlined consume of Text.Effect.Layout.Fragment.Storage(v48, v49, 0);
    goto LABEL_23;
  }

  v80 = v32;
  v76 = v49;
  v53 = *&v49;
  v88 = v108;
  v89.f64[0] = v109;
  v86 = v16 + 16;
  v87 = OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters;

  v54 = v52 - 1;
  v77 = v48;
  v55 = (v48 + 144);
  v84 = 0u;
  v56 = 0.0;
  v57 = 0.0;
  v46 = v82;
  v58 = v83;
  while (1)
  {
    v59 = *(v55 - 7);
    v60 = *(v55 - 6);
    v61 = *(v55 - 4);
    v92[2] = *(v55 - 5);
    v92[3] = v61;
    v92[0] = v59;
    v92[1] = v60;
    v62 = *(v55 - 3);
    v63 = *(v55 - 2);
    v64 = *v55;
    v93 = *(v55 - 1);
    v94 = v64;
    v92[4] = v62;
    v92[5] = v63;
    v91[0] = *v55;
    v65 = *(&v93 + 1) + v53;
    result = memmove(&v95, v55 - 7, 0x68uLL);
    v99 = v65;
    v100 = v91[0];
    v67 = v95 - *&v89.f64[0];
    if (__OFSUB__(v95, *&v89.f64[0]))
    {
      break;
    }

    if ((v67 & 0x8000000000000000) != 0)
    {
      goto LABEL_26;
    }

    v68 = *(v88 + v87);
    if (v67 >= *(v68 + 16))
    {
      goto LABEL_27;
    }

    (*(v16 + 16))(v18, v68 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v67, v58);
    outlined init with copy of Text.Effect.DisplayInfo(v92, v91);
    v69 = Text.Layout.Cluster.characterRange.getter();
    v71 = v70;
    (*(v16 + 8))(v18, v58);
    LOBYTE(v69) = specialized RangeSet.overlaps(_:)(v69, v71);
    outlined destroy of Text.Effect.DisplayInfo(&v95);
    if (v69)
    {
      v72 = v98;
      if (v57 <= v96)
      {
        v57 = v96;
      }

      v46[1].f64[0] = v57;
      v84 = vbslq_s8(vcgeq_f64(v97, v84), v97, v84);
      *(v46 + 24) = v84;
      v56 = v56 + v72;
      v46[2].f64[1] = v56;
    }

    if (!v54)
    {

      outlined destroy of Text.Effect.State(v101);
      v33 = v85;
      v32 = v80;
      v49 = v76;
      v48 = v77;
      goto LABEL_22;
    }

    --v54;
    v55 += 8;
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t TextEffectImplementation.widthDifference(_:ranges:at:context:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7, double a8)
{
  v33 = a6;
  v34 = a7;
  v29 = a4;
  v30 = a5;
  v31 = a2;
  v32 = a3;
  v11 = *((*MEMORY[0x1E69E7D40] & *v8) + 0x120);
  v12 = *(v11 + 16);
  v13 = *((*MEMORY[0x1E69E7D40] & *v8) + 0x118);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v28 - v20;
  if ((*(v11 + 48))(v13, v11, v19) == 3 || (result = static TextAlignment.== infix(_:_:)(), (result & 1) == 0))
  {
    TextEffectsAnimationController.state(for:time:)(a1, v35, a8);
    if ((v36 & 0xFE) == 2 || ((*(v12 + 120))(v13, v12), (*(v12 + 128))(v13, v12), swift_getAssociatedConformanceWitness(), v23 = dispatch thunk of static Equatable.== infix(_:_:)(), v24 = *(v15 + 8), v24(v17, AssociatedTypeWitness), v24(v21, AssociatedTypeWitness), (v23 & 1) == 0))
    {
      v26 = v31;
      v25 = v32;
      v27 = v33;
      TextEffectImplementation.metrics(_:ranges:at:context:)(a1, v31, v32, v29, v30, v33, v34, a8);
      specialized TextEffectImplementation.lineBreakingMetrics(_:ranges:context:)(a1, v26, v25, v27);
      return outlined destroy of Text.Effect.State(v35);
    }

    else
    {
      return outlined destroy of Text.Effect.State(v35);
    }
  }

  return result;
}

uint64_t TextEffectImplementation.duration(from:to:variant:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v22 = a8;
  v23 = a3;
  v24 = a4;
  v25 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = &v21 - v14;
  v16 = specialized TextEffectImplementation.animationInfo(persist:from:to:variant:duration:context:)(1, a1, a2, v23, v24, 0, 1, v25, a7, v22, a9);
  v17 = *(*v16 + 160);
  swift_beginAccess();
  (*(v13 + 16))(v15, v16 + v17, AssociatedTypeWitness);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v19 = (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);

  (*(v13 + 8))(v15, AssociatedTypeWitness);
  return v19;
}

id TextEffectImplementation.saveSnapshot(animationController:)(uint64_t a1)
{
  v2 = v1;
  v3 = MEMORY[0x1E69E7D40];
  v4 = *MEMORY[0x1E69E7D40] & *v1;
  v5 = *(v4 + 0x118);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v28 - v7;
  v10 = *(v9 + 56);
  v11 = OBJC_IVAR____TtC20TextAnimationSupport16AnyTextAnimation_id;
  TextEffectsAnimationController.state(for:time:)(*&v1[OBJC_IVAR____TtC20TextAnimationSupport16AnyTextAnimation_id], v30, v10);
  if (TextEffectsAnimationController.animationInfo(for:)(*&v1[v11]))
  {
    v13 = *(v4 + 288);
    type metadata accessor for TextEffectImplementation.AnimationInfo(0, v5, v13, v12);
    v14 = swift_dynamicCastClass();
    if (v14)
    {
      v16 = v14;
      v17 = type metadata accessor for TextEffectStateSnapshot(0, v5, v13, v15);
      (*(v6 + 16))(v8, &v2[*((*v3 & *v2) + 0x128)], v5);
      v18 = *(v16 + *(*v16 + 168));
      type metadata accessor for Text.Effect.AttributeTracker();
      v19 = swift_allocObject();
      swift_beginAccess();
      v29 = v6;
      v20 = v18[3];
      v21 = v18[4];
      v22 = v18[5];

      specialized Text.Effect.AttributeTracker.Tracker.deepCopy()(v20, v21, v22, v31);

      v23 = v31[1];
      *(v19 + 16) = v31[0];
      *(v19 + 32) = v23;
      *(v19 + 48) = v32;
      swift_beginAccess();
      v24 = v18[7];

      *(v19 + 56) = v24;
      v25 = objc_allocWithZone(v17);
      v26 = specialized TextEffectStateSnapshot.init(effect:time:state:attributes:)(v8, v30, v19, v10);
      (*(v29 + 8))(v8, v5);

      return v26;
    }
  }

  outlined destroy of Text.Effect.State(v30);
  return 0;
}

void TextEffectImplementation.restoreSnapshot(_:context:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v43 = a2;
  v44 = a5;
  v41 = a4;
  v42 = a3;
  v8 = *v5;
  v9 = *MEMORY[0x1E69E7D40];
  v10 = *MEMORY[0x1E69E7D40] & *v5;
  v11 = *(v10 + 0x118);
  v12 = *(*((*MEMORY[0x1E69E7D40] & v8) + 0x118) - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v40 - v13;
  type metadata accessor for TextEffectStateSnapshot(0, v11, *((v9 & v15) + 0x120), v16);
  v17 = swift_dynamicCastClass();
  if (v17)
  {
    v18 = v17;
    (*(v12 + 16))(v14, &v6[*(v10 + 296)], v11);
    v19 = a1;
    v20 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v12 + 8))(v14, v11);
    if (v20)
    {
      v21 = MEMORY[0x1E69E7D40];
      v22 = v18 + *((*MEMORY[0x1E69E7D40] & *v18) + 0x70);
      v23 = *(v22 + 8);
      v24 = *(v22 + 9);
      v40 = v19;
      v25 = *(v22 + 10);
      v26 = *(v22 + 11);
      v27 = *(v22 + 6);

      v43 = specialized TextEffectImplementation.animationInfo(persist:from:to:variant:duration:context:)(1, v23, v24, v25, v26, v27, 0, v43, v42, v41, v44);

      v28 = *(v18 + *((*v21 & *v18) + 0x78));
      type metadata accessor for Text.Effect.AttributeTracker();
      v29 = swift_allocObject();
      swift_beginAccess();
      v30 = v28[3];
      v31 = v28[4];
      v32 = v28[5];

      specialized Text.Effect.AttributeTracker.Tracker.deepCopy()(v30, v31, v32, v46);

      v33 = v46[1];
      *(v29 + 16) = v46[0];
      *(v29 + 32) = v33;
      *(v29 + 48) = v47;
      swift_beginAccess();
      v34 = v28[7];

      *(v29 + 56) = v34;
      *(v43 + *(*v43 + 168)) = v29;

      v35 = *(v22 + 1);
      v48[0] = *v22;
      v48[1] = v35;
      v36 = *(v22 + 2);
      v37 = *(v22 + 3);
      v38 = *(v22 + 5);
      v48[4] = *(v22 + 4);
      v48[5] = v38;
      v48[2] = v36;
      v48[3] = v37;
      v39 = *&v6[OBJC_IVAR____TtC20TextAnimationSupport16AnyTextAnimation_id];
      outlined init with copy of Text.Effect.State(v48, &v45);
      TextEffectsAnimationController.restoreState(_:for:)(v48, v39);
      outlined destroy of Text.Effect.State(v48);
    }

    else
    {
    }
  }
}

uint64_t TextEffectImplementation.phase(from:)(uint64_t a1, uint64_t a2)
{
  v23 = a2;
  v4 = *(*((*MEMORY[0x1E69E7D40] & *v2) + 0x120) + 16);
  v5 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x118);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - v9;
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v22 - v17;
  (*(v4 + 88))(a1, v23, v5, v4, v16);
  if ((*(v11 + 48))(v10, 1, AssociatedTypeWitness) == 1)
  {
    (*(v8 + 8))(v10, v7);
    return 0;
  }

  else
  {
    (*(v11 + 32))(v18, v10, AssociatedTypeWitness);
    type metadata accessor for Text.Effect.ConcretePhase(0, v5, v4, v20);
    (*(v11 + 16))(v14, v18, AssociatedTypeWitness);
    v21 = Text.Effect.ConcretePhase.__allocating_init(_:)(v14);
    (*(v11 + 8))(v18, AssociatedTypeWitness);
    return v21;
  }
}

uint64_t TextEffectImplementation.defaultAnimatorPhase.getter()
{
  v1 = *(*((*MEMORY[0x1E69E7D40] & *v0) + 0x120) + 16);
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x118);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  v5 = &v8 - v4;
  type metadata accessor for Text.Effect.ConcretePhase(0, v2, v1, v6);
  (*(v1 + 72))(v2, v1);
  return Text.Effect.ConcretePhase.__allocating_init(_:)(v5);
}

void TextEffectImplementation.configuration(from:)(uint64_t a1)
{
  v3 = *(*((*MEMORY[0x1E69E7D40] & *v1) + 0x120) + 16);
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x118);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v20 - v8;
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v20 - v17;
  if (v15)
  {
    (*(v3 + 64))(v15, v4, v3, v16);
    if ((*(v10 + 48))(v9, 1, AssociatedTypeWitness) == 1)
    {
      (*(v7 + 8))(v9, v6);
    }

    else
    {
      (*(v10 + 32))(v18, v9, AssociatedTypeWitness);
      type metadata accessor for Text.Effect.ConcreteConfiguration(0, v4, v3, v19);
      (*(v10 + 16))(v13, v18, AssociatedTypeWitness);
      Text.Effect.ConcreteConfiguration.__allocating_init(_:)(v13);
      (*(v10 + 8))(v18, AssociatedTypeWitness);
    }
  }
}

uint64_t type metadata completion function for TextEffectImplementation.AnimationInfo(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

uint64_t type metadata completion function for TextEffectStateSnapshot(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t TextEffectStateSnapshot.__ivar_destroyer()
{
  (*(*(*((*MEMORY[0x1E69E7D40] & *v0) + 0x50) - 8) + 8))(&v0[*((*MEMORY[0x1E69E7D40] & *v0) + 0x60)]);
}

id TextEffectImplementation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t @objc TextEffectStateSnapshot.__ivar_destroyer(char *a1)
{
  (*(*(*((*MEMORY[0x1E69E7D40] & *a1) + 0x50) - 8) + 8))(&a1[*((*MEMORY[0x1E69E7D40] & *a1) + 0x60)]);
}

uint64_t type metadata instantiation function for TextEffectImplementation.ResolvedMap(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

double closure #1 in Text.Effect.DrawableFragment.transform(with:transform:)(uint64_t a1, uint64_t a2, __int128 *a3, void (*a4)(uint64_t, uint64_t))
{
  v8 = a3[3];
  v30 = a3[2];
  v31 = v8;
  v32 = a3[4];
  v9 = a3[1];
  v28 = *a3;
  v29 = v9;
  v10 = *(a2 + 288);
  v11 = *(a2 + 320);
  v24 = *(a2 + 304);
  v25 = v11;
  v12 = *(a2 + 320);
  v26 = *(a2 + 336);
  v13 = *(a2 + 288);
  v22 = *(a2 + 272);
  v23 = v13;
  v34[0] = v22;
  v34[1] = v10;
  v14 = *(a2 + 336);
  v34[3] = v12;
  v34[4] = v14;
  v33 = *(a3 + 10);
  v27 = *(a2 + 352);
  v35 = *(a2 + 352);
  v34[2] = v24;
  outlined init with copy of Text.Effect.TransformContext.DrawingMode(&v22, v36);
  outlined init with copy of Text.Effect.PathInterpolator(a3, v36);
  outlined destroy of Text.Effect.TransformContext.DrawingMode(v34);
  v15 = v31;
  *(a2 + 304) = v30;
  *(a2 + 320) = v15;
  *(a2 + 336) = v32;
  *(a2 + 352) = v33;
  v16 = v29;
  *(a2 + 272) = v28;
  *(a2 + 288) = v16;
  a4(a1, a2);
  v17 = *(a2 + 320);
  v36[2] = *(a2 + 304);
  v36[3] = v17;
  v36[4] = *(a2 + 336);
  v37 = *(a2 + 352);
  v18 = *(a2 + 288);
  v36[0] = *(a2 + 272);
  v36[1] = v18;
  outlined destroy of Text.Effect.TransformContext.DrawingMode(v36);
  v19 = v25;
  *(a2 + 304) = v24;
  *(a2 + 320) = v19;
  *(a2 + 336) = v26;
  *(a2 + 352) = v27;
  result = *&v22;
  v21 = v23;
  *(a2 + 272) = v22;
  *(a2 + 288) = v21;
  return result;
}

void *specialized TextEffectImplementation.AnimationInfo.init(effect:identifier:from:to:variant:duration:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = v12;
  v59 = a8;
  v62 = a7;
  v63 = a5;
  v65 = a6;
  v67 = a4;
  v70 = a3;
  v71 = a1;
  v15 = *v12;
  v16 = v15[15];
  v17 = v15[16];
  v18 = *(v17 + 16);
  v19 = type metadata accessor for Text.Effect.DrawableContent(0, v16, v18, a4);
  v60 = *(v19 - 8);
  v61 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v58 = v56 - v20;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v64 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v69 = v56 - v21;
  v22 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = v56 - v23;
  v25 = v15[21];
  type metadata accessor for Text.Effect.AttributeTracker();
  v26 = swift_allocObject();
  v27 = MEMORY[0x1E69E7CC8];
  *(v26 + 16) = MEMORY[0x1E69E7CC8];
  *(v26 + 24) = v27;
  *(v26 + 32) = 0;
  *(v26 + 40) = v27;
  v28 = MEMORY[0x1E69E7CD0];
  *(v26 + 48) = 0;
  *(v26 + 56) = v28;
  *(v13 + v25) = v26;
  *(v13 + *(*v13 + 176)) = 0;
  v29 = *(*v13 + 184);
  *(v13 + v29) = TextEffectImplementation.ResolvedMap.init()(v16, v17, v30, v31);
  type metadata accessor for Text.Effect.ConcreteLayoutState(0, v16, v18, v32);
  (*(v18 + 128))(v16, v18);
  v33 = Text.Effect.ConcreteLayoutState.__allocating_init(state:)(v24);
  v34 = (v13 + *(*v13 + 192));
  *v34 = a2;
  v34[1] = v33;

  v56[2] = v33;
  v68 = a11;
  v35 = Text.Effect.Keyframes.subscript.getter(a2, v33, a11);
  if (!v35)
  {
LABEL_12:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v36 = v35;
  v57 = a10;
  v13[3] = (*(v17 + 24))(0x6C6F686563616C50, 0xEB00000000726564, v16, v17);
  v13[4] = v37;
  v38 = *v34;
  v39 = v34[1];

  v40 = v57;
  v41 = v58;
  v56[1] = a9;
  v57 = a12;
  Text.Effect.BaseContext.content<A>(for:key:)(v16, v38, v39, a9, v40, v68);

  v42 = v69;
  (*(v18 + 136))(v41, v70, v67, v63, v65, v62, v59 & 1, v16, v18);
  (*(v60 + 8))(v41, v61);
  v13[5] = MEMORY[0x1E69E7CC8];
  v43 = *(*v13 + 160);
  v44 = v64;
  v45 = *(v64 + 16);
  v62 = v13;
  v46 = AssociatedTypeWitness;
  v45(v13 + v43, v42, AssociatedTypeWitness);
  v47 = *(v36 + 16);
  if (v47)
  {
    v61 = v16;
    v72 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v47, 0);
    v48 = v72;
    v49 = *(v36 + 16);
    v50 = *(v72 + 16);
    v51 = 32;
    v52 = v62;
    while (1)
    {
      v53 = *(*(*(v36 + v51) + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
      v72 = v48;
      v54 = *(v48 + 24);
      if (v50 >= v54 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v50 + 1, 1);
        v48 = v72;
      }

      *(v48 + 16) = v50 + 1;
      *(v48 + 8 * v50 + 32) = v53;
      if (!v49)
      {
        break;
      }

      --v49;
      v51 += 8;
      ++v50;
      if (!--v47)
      {

        (*(*(v61 - 8) + 8))(v71);
        (*(v64 + 8))(v69, AssociatedTypeWitness);

        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

  (*(*(v16 - 8) + 8))(v71, v16);
  (*(v44 + 8))(v69, v46);
  v48 = MEMORY[0x1E69E7CC0];
  v52 = v62;
LABEL_10:
  v52[2] = v48;
  return v52;
}

void *specialized TextEffectImplementation.AnimationInfo.__allocating_init(effect:identifier:from:to:variant:duration:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  type metadata accessor for TextEffectImplementation.AnimationInfo(0, a13, a14, a4);
  swift_allocObject();
  return specialized TextEffectImplementation.AnimationInfo.init(effect:identifier:from:to:variant:duration:context:)(a1, a2, a3, a4, a5, a6, a7, a8 & 1, a9, a10, a11, a12);
}

uint64_t specialized TextEffectImplementation.animationInfo(persist:from:to:variant:duration:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v41 = a8;
  v40 = a7;
  v43 = a6;
  v38 = a4;
  v39 = a5;
  v37 = a3;
  v42 = a1;
  v12 = *MEMORY[0x1E69E7D40] & *v11;
  v13 = *(v12 + 0x118);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v31 - v15;
  v17 = OBJC_IVAR____TtC20TextAnimationSupport16AnyTextAnimation_id;
  v18 = *&v11[OBJC_IVAR____TtC20TextAnimationSupport16AnyTextAnimation_id];
  swift_beginAccess();
  if (*(*(a11 + 80) + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v18), (v19 & 1) != 0))
  {
    swift_endAccess();
    v20 = *(v12 + 288);
  }

  else
  {
    v31 = v18;
    v36 = a9;
    swift_endAccess();
    (*(v14 + 16))(v16, &v11[*((*MEMORY[0x1E69E7D40] & *v11) + 0x128)], v13);
    v35 = *&v11[v17];
    v20 = *(v12 + 288);
    protocol witness for TextRenderer.draw(layout:in:) in conformance TextWipeTransitionModifier.NullRenderer();
    v33 = v23;
    v34 = v22;
    protocol witness for TextRenderer.draw(layout:in:) in conformance TextWipeTransitionModifier.NullRenderer();
    v25 = v24;
    v32 = v26;

    v27 = v41;

    v28 = specialized TextEffectImplementation.AnimationInfo.__allocating_init(effect:identifier:from:to:variant:duration:context:)(v16, v35, v34, v33, v25, v32, v43, v40 & 1, v27, v36, a10, a11, v13, v20);
    if (v42)
    {
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v44 = *(a11 + 80);
      *(a11 + 80) = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v28, v31, isUniquelyReferenced_nonNull_native);
      *(a11 + 80) = v44;
      swift_endAccess();
    }
  }

  type metadata accessor for TextEffectImplementation.AnimationInfo(0, v13, v20, v21);
  result = swift_dynamicCastClass();
  if (!result)
  {

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t specialized TextEffectImplementation.lineBreakingState.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  v6 = &v9 - v5;
  type metadata accessor for Text.Effect.ConcreteLayoutState(0, a1, v3, v7);
  (*(v3 + 120))(a1, v3);
  return Text.Effect.ConcreteLayoutState.__allocating_init(state:)(v6);
}

uint64_t specialized TextEffectImplementation.defaultDrawingState.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  v6 = &v9 - v5;
  type metadata accessor for Text.Effect.ConcreteLayoutState(0, a1, v3, v7);
  (*(v3 + 128))(a1, v3);
  return Text.Effect.ConcreteLayoutState.__allocating_init(state:)(v6);
}

uint64_t specialized Text.Effect.Key.key<A>(for:state:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v15 - v11;
  type metadata accessor for Text.Effect.ConcreteLayoutState(0, a4, a5, v13);
  (*(v10 + 16))(v12, a2, AssociatedTypeWitness);
  Text.Effect.ConcreteLayoutState.__allocating_init(state:)(v12);
  return a3;
}

void specialized TextEffectImplementation.AnimationInfo.centerAlign(fragments:chunk:content:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v121 = a6;
  v139 = a5;
  v153 = a4;
  v150 = a1;
  v8 = MEMORY[0x1E6981010];
  _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_3(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>.Ranges, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BA8]);
  v130 = v9;
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v129 = &v117[-v11];
  v141 = type metadata accessor for LayoutDirection();
  v12 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141);
  v128 = &v117[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v140 = &v117[-v15];
  _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_3(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, v8, MEMORY[0x1E69E7BE0]);
  v149 = v16;
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v120 = &v117[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19);
  v142 = &v117[-v20];
  MEMORY[0x1EEE9AC00](v21);
  v119 = &v117[-v22];
  v148 = type metadata accessor for Text.Layout.Line();
  v23 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  v147 = &v117[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v151 = a2;
  if (a3 >= a2)
  {
    if (v151 == a3)
    {
      return;
    }

    v127 = *(v121 + 16);
    v152 = type metadata accessor for Text.Effect.DrawableContent(0, v139, v127, v24);
    v134 = 0;
    v145 = (v23 + 8);
    v146 = (v23 + 16);
    v143 = (v17 + 8);
    v144 = (v17 + 16);
    v124 = (v12 + 88);
    v125 = (v12 + 16);
    v123 = *MEMORY[0x1E697E7D0];
    v118 = *MEMORY[0x1E697E7D8];
    v126 = (v10 + 8);
    v122 = (v12 + 8);
    v138 = a3;
    while (1)
    {
      v28 = v151;
      Text.Effect.DrawableContent.subscript.getter(v151, v155);
      v30 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      v131 = *v150;
      if (v30 >= v131[2])
      {
        v46 = 0;
        v47 = v129;
        v42 = v127;
        v41 = v139;
      }

      else
      {
        v31 = Text.Effect.DrawableContent.subscript.getter(v28 + 1, v157);
        v32 = v158;
        v167 = v158;
        v33 = *(v158 + 16);
        v34 = v147;
        v35 = v148;
        (*v146)(v147, v158 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_line, v148, v31);

        v36 = Text.Layout.Line.endIndex.getter();
        (*v145)(v34, v35);
        v37 = *(v32 + 24);
        v38 = v32 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_characterRanges;
        v39 = v119;
        v40 = v149;
        (*v144)(v119, v38, v149);
        specialized RangeSet.lowerBound.getter();
        outlined destroy of Text.Effect.KeyframeLayout.Fragment(&v167);
        (*v143)(v39, v40);
        v41 = v139;
        v42 = v127;
        v44 = type metadata accessor for Text.Effect.DrawableFragment(0, v139, v127, v43);
        (*(*(v44 - 8) + 8))(v157, v44);
        v46 = v36 == v37 && v33 == 0;
        v47 = v129;
      }

      v48 = type metadata accessor for Text.Effect.DrawableFragment(0, v41, v42, v29);
      v49 = v140;
      Text.Effect.DrawableFragment.baseWritingDirection.getter(v140);
      v50 = v128;
      v51 = v141;
      (*v125)(v128, v49, v141);
      v52 = (*v124)(v50, v51);
      LODWORD(v133) = v46;
      if (v52 == v123)
      {
        v53 = v30;
        v132 = 253;
        v54 = 1;
      }

      else
      {
        if (v52 != v118)
        {
          goto LABEL_83;
        }

        v53 = v30;
        v132 = 254;
        v54 = 2;
      }

      v137 = v54;
      v55 = v156;
      v166 = v156;
      v56 = *(v156 + 16);
      v57 = v147;
      v58 = *v146;
      v59 = v148;
      (*v146)(v147, v156 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_line, v148);

      v60 = Text.Layout.Line.endIndex.getter();
      v136 = *v145;
      v136(v57, v59);
      if (v56)
      {
        v61 = 2;
      }

      else
      {
        v61 = 3;
      }

      if (v60 == *(v55 + 24))
      {
        v62 = v61;
      }

      else
      {
        v62 = v56 == 0;
      }

      v135 = *v144;
      v135(v142, v55 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_characterRanges, v149);
      RangeSet.ranges.getter();
      _ss8RangeSetV6RangesVy7SwiftUI4TextV6LayoutV14CharacterIndexV_GADyx_GSlsWlTm_1(&lazy protocol witness table cache variable for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>.Ranges, MEMORY[0x1E69E7BA8], MEMORY[0x1E69E7BC8]);
      v63 = v130;
      dispatch thunk of Collection.startIndex.getter();
      dispatch thunk of Collection.endIndex.getter();
      if (v154[4] != v154[0])
      {
        v64 = dispatch thunk of Collection.subscript.read();
        v64(v154, 0);
      }

      (*v126)(v47, v63);
      outlined destroy of Text.Effect.KeyframeLayout.Fragment(&v166);
      v27 = v53;
      v65 = *v143;
      v66 = (*v143)(v142, v149);
      if (v62 == 3)
      {
        goto LABEL_33;
      }

      v67 = v133 ^ 1;
      if ((v62 | v132) != 0xFF)
      {
        v67 = 1;
      }

      if (v67)
      {
        v26 = v138;
        if (v151 >= v138)
        {
          goto LABEL_76;
        }

        if (v53 > v138)
        {
          goto LABEL_77;
        }

        Text.Effect.DrawableFragment.defaultDrawingFragment.getter(v48, v164);
        v104 = Text.Effect.DrawableFragment.width.getter();
        v105 = *(*(v48 - 8) + 8);
        v105(v164, v48);
        if (v151 < 0)
        {
          goto LABEL_78;
        }

        v106 = v131;
        if (v151 >= v131[2])
        {
          goto LABEL_79;
        }

        v107 = type metadata accessor for Text.Effect.Layout.Fragment(0);
        v108 = (*(*(v107 - 8) + 80) + 32) & ~*(*(v107 - 8) + 80);
        v109 = *(*(v107 - 8) + 72) * v151;
        v110 = *(v106 + v108 + *(v107 + 20) + v109 + 24);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v111 = v131;
        }

        else
        {
          v111 = specialized _ArrayBuffer._consumeAndCreateNew()(v131);
        }

        if (v151 >= v111[2])
        {
          goto LABEL_80;
        }

        v112 = v111 + v108 + v109;
        *&v112[*(v107 + 20) + 24] = v104;
        v113 = v111;
        v105(v155, v48);
        (*v122)(v140, v141);
        if (v151 >= v113[2])
        {
          goto LABEL_81;
        }

        v114 = &v112[*(v107 + 24)];
        if ((v114[16] & 1) == 0)
        {
          *(v114 + 1) = (v104 - v110) * 0.5;
          v114[16] = 0;
        }

        *v150 = v113;
      }

      else
      {
LABEL_33:
        v133 = v65;
        v68 = v58;
        MEMORY[0x1EEE9AC00](v66);
        v69 = v151;
        v70 = v138;
        v71 = v139;
        v72 = v121;
        *&v117[-48] = v139;
        *&v117[-40] = v72;
        v73 = v153;
        *&v117[-32] = v69;
        *&v117[-24] = v73;
        v74 = v134;
        v75 = specialized Collection.prefix(while:)(partial apply for closure #1 in TextEffectImplementation.AnimationInfo.centerAlign(fragments:chunk:content:), &v117[-64], v69, v70);
        v77 = v76;
        MEMORY[0x1EEE9AC00](v75);
        *&v117[-32] = v71;
        *&v117[-24] = v72;
        v115 = v73;
        v116 = v150;
        specialized Sequence.reduce<A>(_:_:)(partial apply for closure #2 in TextEffectImplementation.AnimationInfo.centerAlign(fragments:chunk:content:), &v117[-48], v75, v77);
        if (__OFSUB__(v77, v75))
        {
          goto LABEL_70;
        }

        if (v75 == v77)
        {
          goto LABEL_71;
        }

        if (v75 >= v77)
        {
          goto LABEL_72;
        }

        v134 = v74;
        v79 = v78 * 0.5 / (v77 - v75);
        v151 = v77;
        v80 = v77 - 1;
        v81 = Text.Effect.DrawableContent.subscript.getter(v77 - 1, v159);
        v82 = v160;
        v165 = v160;
        v83 = *(v160 + 16);
        v84 = v147;
        v85 = v148;
        v68(v147, v160 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_line, v148, v81);

        v86 = Text.Layout.Line.endIndex.getter();
        v136(v84, v85);
        v87 = *(v82 + 24);
        v88 = v82 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_characterRanges;
        v89 = v120;
        v90 = v149;
        v135(v120, v88, v149);
        specialized RangeSet.lowerBound.getter();
        outlined destroy of Text.Effect.KeyframeLayout.Fragment(&v165);
        v133(v89, v90);
        if (v86 != v87 || v83)
        {
          Text.Effect.DrawableFragment.defaultDrawingFragment.getter(v48, v161);
          v92 = Text.Effect.DrawableFragment.width.getter();
          (*(*(v48 - 8) + 8))(v161, v48);
          if (v151 < 1)
          {
            goto LABEL_74;
          }

          v91 = *v150;
          if (v80 >= *(*v150 + 16))
          {
            goto LABEL_75;
          }

          v93 = type metadata accessor for Text.Effect.Layout.Fragment(0);
          v96 = *(v93 - 8);
          v94 = v93 - 8;
          v95 = v96;
          v97 = v96;
          if (v79 >= (v92 - *(v91 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v96 + 72) * v80 + *(v94 + 28) + 24)) * 0.5)
          {
            v79 = (v92 - *(v91 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v95 + 72) * v80 + *(v94 + 28) + 24)) * 0.5;
          }
        }

        else
        {
          v91 = *v150;
        }

        v98 = v75;
        do
        {
          Text.Effect.DrawableContent.subscript.getter(v98, v162);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            if (v75 < 0)
            {
              goto LABEL_66;
            }
          }

          else
          {
            v91 = specialized _ArrayBuffer._consumeAndCreateNew()(v91);
            if (v75 < 0)
            {
LABEL_66:
              __break(1u);
LABEL_67:
              __break(1u);
LABEL_68:
              __break(1u);
              goto LABEL_69;
            }
          }

          if (v98 >= v91[2])
          {
            goto LABEL_67;
          }

          v99 = type metadata accessor for Text.Effect.Layout.Fragment(0);
          v100 = v91 + ((*(*(v99 - 8) + 80) + 32) & ~*(*(v99 - 8) + 80)) + *(*(v99 - 8) + 72) * v98;
          v101 = v100 + *(v99 + 24);
          if ((*(v101 + 16) & 1) == 0)
          {
            *(v101 + 8) = v79;
            *(v101 + 16) = 0;
          }

          Text.Effect.DrawableFragment.defaultDrawingFragment.getter(v48, v163);
          v102 = Text.Effect.DrawableFragment.width.getter();
          v103 = *(*(v48 - 8) + 8);
          v103(v163, v48);
          v103(v162, v48);
          if (v98 >= v91[2])
          {
            goto LABEL_68;
          }

          ++v98;
          *(v100 + *(v99 + 20) + 24) = v102;
        }

        while (v151 != v98);
        v103(v159, v48);
        v103(v155, v48);
        *v150 = v91;
        (*v122)(v140, v141);
        v26 = v138;
        v27 = v151;
        if (v151 > v138)
        {
          goto LABEL_73;
        }
      }

      v151 = v27;
      if (v27 == v26)
      {
        return;
      }
    }

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
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
  }

  __break(1u);
LABEL_83:
  LODWORD(v116) = 0;
  v115 = 363;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t specialized TextEffectImplementation.ResolvedMap.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for TextEffectImplementation.ResolvedMap.Key(0, *(a3 + 16), *(a3 + 24), a4);
  v7 = MEMORY[0x1EEE9AC00](v6);
  (*(v9 + 16))(v11 - v8, a2, v6, v7);
  v11[1] = a1;
  swift_getWitnessTable();
  type metadata accessor for Dictionary();
  return Dictionary.subscript.setter();
}

uint64_t specialized TextEffectImplementation.lineBreakingMetrics(_:ranges:context:)(uint64_t a1, unint64_t a2, uint64_t a3, char *a4)
{
  v53 = a4;
  v54 = a3;
  v6 = *v4;
  v7 = *MEMORY[0x1E69E7D40];
  v8 = type metadata accessor for Text.Layout.Line();
  v9 = *(v8 - 8);
  v56 = v8;
  v57 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v55 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Text.Layout.Run();
  v48 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v46 - v15;
  _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_3(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BE0]);
  v18 = v17;
  v49 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v58 = &v46 - v19;
  v20 = *(v4 + OBJC_IVAR____TtC20TextAnimationSupport16AnyTextAnimation_id);
  v21 = specialized TextEffectImplementation.lineBreakingState.getter(*((v7 & v6) + 0x118), *((v7 & v6) + 0x120));
  v22 = Text.Effect.Keyframes.subscript.getter(v20, v21, v53);

  if (!v22)
  {
    return result;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(v22 + 16) <= a2)
  {
LABEL_26:
    __break(1u);
    return result;
  }

  v53 = v16;
  v24 = *(v22 + 8 * a2 + 32);

  v25 = *(v49 + 16);
  v47 = v18;
  v25(v58, v24 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_characterRanges, v18);
  v26 = *(v24 + 16);
  v27 = 0.0;
  v28 = 0.0;
  v29 = 0.0;
  v30 = 0.0;
  if (v26 != *(v24 + 24))
  {
    v51 = *(v57 + 16);
    v52 = OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_line;
    v57 += 16;
    v50 = (v57 - 8);
    v31 = (v48 + 32);
    v32 = (v48 + 8);
    do
    {
      ++v26;
      while (1)
      {
        v33 = v13;
        v34 = v11;
        v35 = v55;
        v36 = v56;
        v51(v55, v24 + v52, v56);
        v37 = v53;
        Text.Layout.Line.subscript.getter();
        result = (*v50)(v35, v36);
        if (v26 - 1 < *(v24 + 16) || v26 - 1 >= *(v24 + 24))
        {
          __break(1u);
          goto LABEL_25;
        }

        v39 = v37;
        v13 = v33;
        v11 = v34;
        v40 = (*v31)(v33, v39, v34);
        lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex(v40, v41, v42);
        if (static RangeSet.== infix(_:_:)())
        {
          break;
        }

        v43 = Text.Layout.Run.characterRange.getter();
        if (specialized RangeSet.overlaps(_:)(v43, v44))
        {
          break;
        }

        (*v32)(v33, v34);
        if (v26++ == *(v24 + 24))
        {
          goto LABEL_23;
        }
      }

      Text.Layout.Run.typographicBounds.getter();
      (*v32)(v33, v34);
      if (v30 <= v60)
      {
        v30 = v60;
      }

      if (v29 <= v61)
      {
        v29 = v61;
      }

      if (v28 <= v62)
      {
        v28 = v62;
      }

      v27 = v27 + v59;
    }

    while (*(v24 + 24) != v26);
  }

LABEL_23:

  return (*(v49 + 8))(v58, v47);
}

uint64_t specialized appendMetrics #1 <A>(_:) in TextEffectImplementation.metrics(_:ranges:at:context:)(char *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, float64x2_t *a6)
{
  v57 = a5;
  v52 = a1;
  v10 = type metadata accessor for Text.Layout.Line();
  v11 = *(v10 - 8);
  v54 = v10;
  v55 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v53 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Text.Layout.Run();
  v48 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v46 - v17;
  _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_3(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BE0]);
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v56 = &v46 - v22;
  v23 = *(a3 + OBJC_IVAR____TtC20TextAnimationSupport16AnyTextAnimation_id);
  swift_beginAccess();
  v24 = *(a2 + 48);
  if (*(v24 + 16))
  {
    v25 = specialized __RawDictionaryStorage.find<A>(_:)(v23, v52);
    if (v26)
    {
      v27 = *(*(v24 + 56) + 16 * v25);
      result = swift_endAccess();
      if ((a4 & 0x8000000000000000) == 0)
      {
        if (*(v27 + 16) <= a4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v52 = v18;
        v50 = v13;
        v29 = *(v27 + 8 * a4 + 32);
        v46 = v21;
        v47 = v20;
        (*(v21 + 16))(v56, v29 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_characterRanges, v20);
        v30 = *(v29 + 16);
        v51 = OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_line;

        swift_beginAccess();
        if (v30 == *(v29 + 24))
        {
LABEL_6:

          return (*(v46 + 8))(v56, v47);
        }

        v49 = *(v55 + 16);
        v55 += 16;
        v31 = (v55 - 8);
        v32 = (v48 + 32);
        v33 = (v48 + 8);
        while (1)
        {
          v36 = v53;
          v37 = v54;
          v49(v53, v29 + v51, v54);
          v38 = v52;
          Text.Layout.Line.subscript.getter();
          result = (*v31)(v36, v37);
          if (v30 < *(v29 + 16) || v30 >= *(v29 + 24))
          {
            break;
          }

          v40 = v50;
          v41 = (*v32)(v15, v38, v50);
          lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex(v41, v42, v43);
          if (static RangeSet.== infix(_:_:)() & 1) != 0 || (v44 = Text.Layout.Run.characterRange.getter(), (specialized RangeSet.overlaps(_:)(v44, v45)))
          {
            Text.Layout.Run.typographicBounds.getter();
            (*v33)(v15, v40);
            a6[1] = vbslq_s8(vcgeq_f64(v59, a6[1]), v59, a6[1]);
            v34 = v60;
            if (a6[2].f64[0] > v60)
            {
              v34 = a6[2].f64[0];
            }

            v35 = v58 + a6[2].f64[1];
            a6[2].f64[0] = v34;
            a6[2].f64[1] = v35;
          }

          else
          {
            (*v33)(v15, v40);
          }

          if (++v30 == *(v29 + 24))
          {
            goto LABEL_6;
          }
        }

        __break(1u);
      }

      __break(1u);
      goto LABEL_23;
    }
  }

  return swift_endAccess();
}

id specialized TextEffectStateSnapshot.init(effect:time:state:attributes:)(uint64_t a1, _OWORD *a2, uint64_t a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = MEMORY[0x1E69E7D40];
  (*(*(*((*MEMORY[0x1E69E7D40] & *v4) + 0x50) - 8) + 16))(&v4[*((*MEMORY[0x1E69E7D40] & *v4) + 0x60)], a1);
  *&v4[*((*v10 & *v4) + 0x68)] = a4;
  v11 = &v4[*((*v10 & *v4) + 0x70)];
  v12 = a2[1];
  *v11 = *a2;
  *(v11 + 1) = v12;
  v13 = a2[5];
  *(v11 + 4) = a2[4];
  *(v11 + 5) = v13;
  v14 = a2[3];
  *(v11 + 2) = a2[2];
  *(v11 + 3) = v14;
  *&v4[*((*v10 & *v4) + 0x78)] = a3;
  v16.receiver = v4;
  v16.super_class = ObjectType;
  return objc_msgSendSuper2(&v16, sel_init);
}

double outlined consume of Text.Effect.Layout.Fragment.Storage(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }

  return result;
}

double outlined copy of Text.Effect.Layout.Fragment.Storage(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Range<Text.Effect.FragmentIdentifier> and conformance <> Range<A>()
{
  result = lazy protocol witness table cache variable for type Range<Text.Effect.FragmentIdentifier> and conformance <> Range<A>;
  if (!lazy protocol witness table cache variable for type Range<Text.Effect.FragmentIdentifier> and conformance <> Range<A>)
  {
    _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_3(255, &lazy cache variable for type metadata for Range<Text.Effect.FragmentIdentifier>, lazy protocol witness table accessor for type Text.Effect.FragmentIdentifier and conformance Text.Effect.FragmentIdentifier, &type metadata for Text.Effect.FragmentIdentifier, MEMORY[0x1E69E66A8]);
    v6 = lazy protocol witness table accessor for type Text.Effect.FragmentIdentifier and conformance Text.Effect.FragmentIdentifier(v1, v2, v3);
    lazy protocol witness table accessor for type Int and conformance Int(v6, v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Range<Text.Effect.FragmentIdentifier> and conformance <> Range<A>);
  }

  return result;
}

uint64_t partial apply for thunk for @callee_guaranteed (@unowned Text.Effect.FragmentIdentifier, @guaranteed Text.Effect.DrawableFragment<A>) -> (@out Text.Effect.Layout.Fragment)(uint64_t *a1)
{
  v2 = *(v1 + 32);
  v3 = *a1;
  v4 = *(a1 + 3);
  v6[0] = *(a1 + 1);
  v6[1] = v4;
  v6[2] = *(a1 + 5);
  v7 = a1[7];
  return v2(v3, v6);
}

uint64_t _ss8RangeSetV6RangesVy7SwiftUI4TextV6LayoutV14CharacterIndexV_GADyx_GSlsWlTm_1(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_3(255, a2, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RangeSet<Int>.Ranges and conformance RangeSet<A>.Ranges(__n128 a1)
{
  result = lazy protocol witness table cache variable for type RangeSet<Int>.Ranges and conformance RangeSet<A>.Ranges;
  if (!lazy protocol witness table cache variable for type RangeSet<Int>.Ranges and conformance RangeSet<A>.Ranges)
  {
    type metadata accessor for RangeSet<Int>.Ranges(255, &lazy cache variable for type metadata for RangeSet<Int>.Ranges, MEMORY[0x1E69E7BA8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RangeSet<Int>.Ranges and conformance RangeSet<A>.Ranges);
  }

  return result;
}

void type metadata accessor for RangeSet<Int>.Ranges(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<Range<Int>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<Range<Int>>)
  {
    type metadata accessor for RangeSet<Int>.Ranges(255, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E66A8]);
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ContiguousArrayStorage<Range<Int>>);
    }
  }
}

uint64_t outlined init with copy of Text.Effect.Layout.Fragment(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void type metadata accessor for (Text.Effect.PathInterpolator, Text.Effect.DrawingState)()
{
  if (!lazy cache variable for type metadata for (Text.Effect.PathInterpolator, Text.Effect.DrawingState))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Text.Effect.PathInterpolator, Text.Effect.DrawingState));
    }
  }
}

uint64_t outlined destroy of Text.Effect.Layout.Fragment(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for _DictionaryStorage<Text.Effect.ClusterIndex, Int>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<Text.Effect.ClusterIndex, Int>)
  {
    lazy protocol witness table accessor for type Text.Effect.ClusterIndex and conformance Text.Effect.ClusterIndex(0, a2, a3);
    v3 = type metadata accessor for _DictionaryStorage();
    if (!v4)
    {
      atomic_store(v3, &lazy cache variable for type metadata for _DictionaryStorage<Text.Effect.ClusterIndex, Int>);
    }
  }
}

void type metadata accessor for _NativeDictionary<Text.Effect.FragmentIdentifier, Text.Effect.Drawable>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!lazy cache variable for type metadata for _NativeDictionary<Text.Effect.FragmentIdentifier, Text.Effect.Drawable>)
  {
    lazy protocol witness table accessor for type Text.Effect.FragmentIdentifier and conformance Text.Effect.FragmentIdentifier(0, a2, a3);
    v3 = type metadata accessor for _NativeDictionary();
    if (!v4)
    {
      atomic_store(v3, &lazy cache variable for type metadata for _NativeDictionary<Text.Effect.FragmentIdentifier, Text.Effect.Drawable>);
    }
  }
}

void type metadata completion function for TextEffectImplementation.ResolvedMap.Key(uint64_t a1)
{
  _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_3(319, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BE0]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t lazy protocol witness table accessor for type RangeSet<Text.Layout.CharacterIndex> and conformance <> RangeSet<A>()
{
  result = lazy protocol witness table cache variable for type RangeSet<Text.Layout.CharacterIndex> and conformance <> RangeSet<A>;
  if (!lazy protocol witness table cache variable for type RangeSet<Text.Layout.CharacterIndex> and conformance <> RangeSet<A>)
  {
    _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_3(255, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BE0]);
    lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RangeSet<Text.Layout.CharacterIndex> and conformance <> RangeSet<A>);
  }

  return result;
}

void *specialized Sequence.reduce<A>(_:_:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a4)
  {
    v6 = a3;
    if (a4 >= a3)
    {
      v7 = result;
      while (a4 != v6)
      {
        v9 = v6;
        result = (v7)(&v8, &v10, &v9);
        if (!v4)
        {
          ++v6;
          v10 = v8;
          if (a4 != v6)
          {
            continue;
          }
        }

        return result;
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

void *specialized Sequence.reduce<A>(_:_:)(void *result, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  if (a7 != a8)
  {
    v10 = a7;
    if (a8 >= a7)
    {
      v11 = result;
      while (a8 != v10)
      {
        v13 = v10;
        result = (v11)(v12, &v14, &v13);
        if (!v8)
        {
          ++v10;
          v14 = *v12;
          v15 = *&v12[1];
          v16 = *&v12[2];
          v17 = *&v12[3];
          if (a8 != v10)
          {
            continue;
          }
        }

        return result;
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

double specialized Sequence.reduce<A>(_:_:)(void (*a1)(void *__return_ptr, double *, uint64_t), double result, double a3, double a4, double a5, uint64_t a6, uint64_t a7)
{
  v15 = result;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v8 = *(a7 + 16);
  if (v8)
  {
    v11 = *(type metadata accessor for Text.Effect.Composition.Run(0) - 8);
    v12 = a7 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v13 = *(v11 + 72);
    do
    {
      a1(v14, &v15, v12);
      if (v7)
      {
        break;
      }

      result = *v14;
      v15 = *v14;
      v16 = *&v14[1];
      v17 = *&v14[2];
      v18 = *&v14[3];
      v12 += v13;
      --v8;
    }

    while (v8);
  }

  return result;
}

double specialized Sequence.reduce<A>(_:_:)(void (*a1)(double *__return_ptr, double *), double a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  if (v6)
  {
    v9 = *(type metadata accessor for Text.Effect.Composition.Run(0) - 8);
    v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v11 = *(v9 + 72);
    (a1)(&v15, &v16, a4 + v10);
    if (!v4)
    {
      for (i = a4 + v11 + v10; ; i = v13)
      {
        a2 = v15;
        v16 = v15;
        if (!--v6)
        {
          break;
        }

        v13 = i + v11;
        a1(&v15, &v16);
      }
    }
  }

  return a2;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF7SwiftUI4TextV0F16AnimationSupportE6EffectO15ChunkCollectionV_AK6TimingV0J033_363E424B8D24CACCD5AAF4ADF34E118BLLVs5NeverOTg5(void (*a1)(__int128 *__return_ptr, _OWORD *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    return v5;
  }

  v22 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
  v5 = v22;
  for (i = (a3 + 48); ; i += 2)
  {
    v9 = *i;
    v18[0] = *(i - 1);
    v18[1] = v9;
    a1(&v19, v18);
    if (v3)
    {
      break;
    }

    v10 = v19;
    v11 = v20;
    v12 = v21;
    v22 = v5;
    v14 = *(v5 + 16);
    v13 = *(v5 + 24);
    if (v14 >= v13 >> 1)
    {
      v17 = v19;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
      v10 = v17;
      v5 = v22;
    }

    *(v5 + 16) = v14 + 1;
    v15 = v5 + 32 * v14;
    *(v15 + 32) = v10;
    *(v15 + 48) = v11;
    *(v15 + 56) = v12;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_So7CGPointVs5NeverOTg5(void (*a1)(__int128 *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v21 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v6 = v21;
    v9 = a4;
    if (a4 <= a3)
    {
      v9 = a3;
    }

    v10 = v9 - a3 + 1;
    while (v8 < v5)
    {
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_17;
      }

      v19 = a3 + v8;
      a1(&v20, &v19);
      if (v4)
      {
        goto LABEL_22;
      }

      v12 = v20;
      v21 = v6;
      v14 = *(v6 + 16);
      v13 = *(v6 + 24);
      if (v14 >= v13 >> 1)
      {
        v16 = v20;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
        v12 = v16;
        v6 = v21;
      }

      *(v6 + 16) = v14 + 1;
      *(v6 + 16 * v14 + 32) = v12;
      if (a4 < a3)
      {
        goto LABEL_18;
      }

      if (v10 == ++v8)
      {
        goto LABEL_19;
      }

      if (v11 == v5)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_21:
  __break(1u);
LABEL_22:

  __break(1u);
  return result;
}

void specialized Collection.first.getter(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  swift_beginAccess();
  if (!*(*(v3 + 48) + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(v4, v5), (v6 & 1) == 0))
  {
LABEL_11:
    swift_endAccess();
    __break(1u);
    goto LABEL_12;
  }

  swift_endAccess();
  v7 = Text.Effect.Keyframes.subscript.getter(v4, v5, v3);
  if (!v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = *(v7 + 16);

  if (v8)
  {

    v9 = Text.Effect.Keyframes.subscript.getter(v4, v5, v3);
    if (!v9)
    {
LABEL_13:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return;
    }

    v10 = *(v9 + 16);
    if (v10)
    {
      v11 = *(v9 + 32);

      *a1 = v3;
      a1[1] = v4;
      a1[2] = v5;
      a1[3] = v11;
      a1[4] = 0;
      a1[5] = v10;
      a1[6] = 0;
      return;
    }

    __break(1u);
    goto LABEL_11;
  }

  a1[6] = 0;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
}

unint64_t specialized Collection.first.getter(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = _StringGuts.validateScalarIndex(_:)(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v9 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v17[0] = a1;
        v17[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v8 = v17 + v6;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v7 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v7 = _StringObject.sharedUTF8.getter();
        }

        v8 = (v7 + v6);
      }

      v9 = *v8;
      if (*v8 < 0)
      {
        v10 = (__clz(v9 ^ 0xFF) - 24);
        if (v10 > 2)
        {
          if (v10 == 3)
          {
            v11 = v8[1];
            v12 = v8[2];
            v13 = ((v9 & 0xF) << 12) | ((v11 & 0x3F) << 6);
          }

          else
          {
            v14 = v8[1];
            v15 = v8[2];
            v12 = v8[3];
            v13 = ((v9 & 0xF) << 18) | ((v14 & 0x3F) << 12) | ((v15 & 0x3F) << 6);
          }

          v9 = v13 & 0xFFFFFFC0 | v12 & 0x3F;
        }

        else if (v10 != 1)
        {
          v9 = v8[1] & 0x3F | ((v9 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v9 = 0;
  }

  LOBYTE(v17[0]) = v2 == 0;
  return v9 | ((v2 == 0) << 32);
}

char *Text.Layout.Line.xranges(range:metrics:)(CFIndex a1, CFIndex a2, uint64_t a3)
{
  v9 = MEMORY[0x1E69E6720];
  type metadata accessor for TextRenderLayer.Layout?(0, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v94 - v14;
  v16 = type metadata accessor for Text.Effect.InteractionMetrics(0);
  v115 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for Text.Layout.Run();
  v103 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v106 = &v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for Text.Effect.RangeCoordinateSpace(0);
  v111 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v21 = (&v94 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22);
  v109 = &v94 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v112 = &v94 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v104 = &v94 - v27;
  type metadata accessor for TextRenderLayer.Layout?(0, &lazy cache variable for type metadata for Text.Effect.RangeCoordinateSpace?, type metadata accessor for Text.Effect.RangeCoordinateSpace, v9);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v108 = &v94 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v105 = &v94 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v110 = &v94 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v113 = (&v94 - v35);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v94 - v37;
  v116 = Text.Layout.Line.line.getter();
  if (!v116)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v101 = v38;
  v102 = a3;
  v39 = Text.Layout.Line.characterRange.getter();
  if (v39 <= a1)
  {
    v41 = a1;
  }

  else
  {
    v41 = v39;
  }

  if (v40 >= a2)
  {
    v42 = a2;
  }

  else
  {
    v42 = v40;
  }

  if (v41 >= v42)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v98 = a1;
  v99 = a2;
  v100 = v3;
  if ((Text.Layout.Line.containsRightToLeft.getter() & 1) == 0)
  {
    v43 = v116;
    OffsetForStringIndex = CTLineGetOffsetForStringIndex(v116, v41, 0);
    v5 = CTLineGetOffsetForStringIndex(v43, v42, 0);
    outlined init with copy of TextRenderLayer.Layout?(v102, v15, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics);
    v44 = v115;
    if ((*(v115 + 48))(v15, 1, v16) == 1)
    {
      outlined destroy of TextRenderLayer.Layout?(v15, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics);
    }

    else
    {
      outlined init with take of TextRenderLayer.Layout(v15, v18, type metadata accessor for Text.Effect.InteractionMetrics);
      if (OffsetForStringIndex < v5)
      {
        if (OffsetForStringIndex <= v5)
        {
          v45 = *(v114 + 24);
          v46 = *MEMORY[0x1E697E7D0];
          v47 = type metadata accessor for LayoutDirection();
          (*(*(v47 - 8) + 104))(v21 + v45, v46, v47);
          *v21 = OffsetForStringIndex;
          v21[1] = v5;
          *(v21 + 2) = v41;
          *(v21 + 3) = v42;
          type metadata accessor for _ContiguousArrayStorage<ClosedRange<CGFloat>>(0);
          v48 = swift_allocObject();
          *(v48 + 16) = xmmword_195CC8D00;
          outlined init with copy of Text.Effect.Composition(v18, v12, type metadata accessor for Text.Effect.InteractionMetrics);
          (*(v44 + 56))(v12, 0, 1, v16);
          Text.Effect.RangeCoordinateSpace.xrange(using:)(v12);
          OffsetForStringIndex = v49;
          v5 = v50;
          outlined destroy of TextRenderLayer.Layout?(v12, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics);
          Text.Layout.Line.origin.getter();
          v52 = OffsetForStringIndex + v51;
          v53 = v5 + v51;
          if (v52 <= v53)
          {
            *(v48 + 32) = v52;
            *(v48 + 40) = v53;

            outlined destroy of Text.Effect.Composition(v21, type metadata accessor for Text.Effect.RangeCoordinateSpace);
            outlined destroy of Text.Effect.Composition(v18, type metadata accessor for Text.Effect.InteractionMetrics);
            return v48;
          }

          goto LABEL_56;
        }

LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

      outlined destroy of Text.Effect.Composition(v18, type metadata accessor for Text.Effect.InteractionMetrics);
    }

    if (OffsetForStringIndex < v5)
    {
      type metadata accessor for _ContiguousArrayStorage<ClosedRange<CGFloat>>(0);
      v55 = swift_allocObject();
      *(v55 + 16) = xmmword_195CC8D00;
      if (OffsetForStringIndex > v5)
      {
        __break(1u);
      }

      else
      {
        v56 = v55;
        Text.Layout.Line.origin.getter();
        v58 = OffsetForStringIndex + v57;
        v59 = v5 + v57;
        if (v58 <= v59)
        {
          *(v56 + 32) = v58;
          *(v56 + 40) = v59;

          return v56;
        }
      }

      __break(1u);
      goto LABEL_55;
    }

    return MEMORY[0x1E69E7CC0];
  }

  v60 = *(v111 + 56);
  v61 = v114;
  v97 = v111 + 56;
  v96 = v60;
  v60(v101, 1, 1, v114);
  type metadata accessor for Text.Layout.Line();
  _s7SwiftUI4TextV6LayoutV4LineVAGSlAAWlTm_0(&lazy protocol witness table cache variable for type Text.Layout.Line and conformance Text.Layout.Line, MEMORY[0x1E6981048], MEMORY[0x1E6981058]);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v62 = v118;
  if (v117 < v118)
  {
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (v118 != v117)
  {
    v115 = v117;
    if (v118 >= v117)
    {
LABEL_61:
      __break(1u);
LABEL_62:
      v103 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v103 + 2) + 1, 1, v103);
      goto LABEL_50;
    }

    v65 = (v111 + 48);
    v95 = v103 + 8;
    v103 = MEMORY[0x1E69E7CC0];
    v67 = v112;
    v66 = v113;
    v68 = v104;
    v69 = v110;
    while (1)
    {
      v70 = v62;
      Text.Layout.Line.xrange(runIndex:range:)(v62, v98, v99, v66);
      v66 = v113;
      v71 = *v65;
      if ((*v65)(v113, 1, v61) != 1)
      {
        break;
      }

      outlined destroy of TextRenderLayer.Layout?(v66, &lazy cache variable for type metadata for Text.Effect.RangeCoordinateSpace?, type metadata accessor for Text.Effect.RangeCoordinateSpace);
LABEL_32:
      v62 = v70 + 1;
      if (v115 == v70 + 1)
      {
        goto LABEL_27;
      }
    }

    outlined init with take of TextRenderLayer.Layout(v66, v68, type metadata accessor for Text.Effect.RangeCoordinateSpace);
    v72 = v101;
    outlined init with copy of TextRenderLayer.Layout?(v101, v69, &lazy cache variable for type metadata for Text.Effect.RangeCoordinateSpace?, type metadata accessor for Text.Effect.RangeCoordinateSpace);
    if (v71(v69, 1, v61) == 1)
    {
      outlined destroy of TextRenderLayer.Layout?(v72, &lazy cache variable for type metadata for Text.Effect.RangeCoordinateSpace?, type metadata accessor for Text.Effect.RangeCoordinateSpace);
      outlined destroy of TextRenderLayer.Layout?(v69, &lazy cache variable for type metadata for Text.Effect.RangeCoordinateSpace?, type metadata accessor for Text.Effect.RangeCoordinateSpace);
      outlined init with take of TextRenderLayer.Layout(v68, v72, type metadata accessor for Text.Effect.RangeCoordinateSpace);
      v73 = v72;
    }

    else
    {
      outlined init with take of TextRenderLayer.Layout(v69, v67, type metadata accessor for Text.Effect.RangeCoordinateSpace);
      if (vabdd_f64(*(v67 + 8), *v68) < 0.001)
      {
        v74 = *(v67 + 24);
        v75 = *(v68 + 16);
        if (__OFSUB__(v75, v74))
        {
          goto LABEL_57;
        }

        if (v75 == v74)
        {
          v76 = *(v67 + 16);
          v77 = *(v68 + 24);
          if (v77 < v76)
          {
            goto LABEL_59;
          }

          OffsetForStringIndex = *v67;
          v5 = *(v68 + 8);
          if (*v67 > v5)
          {
            goto LABEL_60;
          }

          v78 = v106;
          Text.Layout.Line.subscript.getter();
          v79 = v114;
          v80 = v105;
          Text.Layout.Run.layoutDirection.getter();
          (*v95)(v78, v107);
          outlined destroy of Text.Effect.Composition(v67, type metadata accessor for Text.Effect.RangeCoordinateSpace);
          outlined destroy of Text.Effect.Composition(v68, type metadata accessor for Text.Effect.RangeCoordinateSpace);
          v81 = v101;
          outlined destroy of TextRenderLayer.Layout?(v101, &lazy cache variable for type metadata for Text.Effect.RangeCoordinateSpace?, type metadata accessor for Text.Effect.RangeCoordinateSpace);
          *v80 = OffsetForStringIndex;
          *(v80 + 8) = v5;
          *(v80 + 16) = v76;
          *(v80 + 24) = v77;
          v61 = v79;
          v96(v80, 0, 1, v79);
          outlined init with take of Text.Effect.RangeCoordinateSpace?(v80, v81, &lazy cache variable for type metadata for Text.Effect.RangeCoordinateSpace?, type metadata accessor for Text.Effect.RangeCoordinateSpace);
          v69 = v110;
          goto LABEL_48;
        }
      }

      Text.Effect.RangeCoordinateSpace.xrange(using:)(v102);
      OffsetForStringIndex = v82;
      v5 = v83;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v103 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v103 + 2) + 1, 1, v103);
      }

      v85 = *(v103 + 2);
      v84 = *(v103 + 3);
      if (v85 >= v84 >> 1)
      {
        v103 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v84 > 1), v85 + 1, 1, v103);
      }

      outlined destroy of Text.Effect.Composition(v67, type metadata accessor for Text.Effect.RangeCoordinateSpace);
      v86 = v101;
      outlined destroy of TextRenderLayer.Layout?(v101, &lazy cache variable for type metadata for Text.Effect.RangeCoordinateSpace?, type metadata accessor for Text.Effect.RangeCoordinateSpace);
      v87 = v103;
      *(v103 + 2) = v85 + 1;
      v88 = &v87[16 * v85];
      *(v88 + 4) = OffsetForStringIndex;
      *(v88 + 5) = v5;
      outlined init with take of TextRenderLayer.Layout(v68, v86, type metadata accessor for Text.Effect.RangeCoordinateSpace);
      v73 = v86;
      v67 = v112;
    }

    v96(v73, 0, 1, v61);
LABEL_48:
    v66 = v113;
    goto LABEL_32;
  }

  v103 = MEMORY[0x1E69E7CC0];
LABEL_27:
  v63 = v101;
  v64 = v108;
  outlined init with copy of TextRenderLayer.Layout?(v101, v108, &lazy cache variable for type metadata for Text.Effect.RangeCoordinateSpace?, type metadata accessor for Text.Effect.RangeCoordinateSpace);
  if ((*(v111 + 48))(v64, 1, v61) == 1)
  {
    outlined destroy of TextRenderLayer.Layout?(v63, &lazy cache variable for type metadata for Text.Effect.RangeCoordinateSpace?, type metadata accessor for Text.Effect.RangeCoordinateSpace);

    outlined destroy of TextRenderLayer.Layout?(v64, &lazy cache variable for type metadata for Text.Effect.RangeCoordinateSpace?, type metadata accessor for Text.Effect.RangeCoordinateSpace);
    return v103;
  }

  outlined init with take of TextRenderLayer.Layout(v64, v109, type metadata accessor for Text.Effect.RangeCoordinateSpace);
  Text.Effect.RangeCoordinateSpace.xrange(using:)(v102);
  OffsetForStringIndex = v89;
  v5 = v90;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_62;
  }

LABEL_50:
  v92 = *(v103 + 2);
  v91 = *(v103 + 3);
  if (v92 >= v91 >> 1)
  {
    v103 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v91 > 1), v92 + 1, 1, v103);
  }

  outlined destroy of Text.Effect.Composition(v109, type metadata accessor for Text.Effect.RangeCoordinateSpace);
  outlined destroy of TextRenderLayer.Layout?(v101, &lazy cache variable for type metadata for Text.Effect.RangeCoordinateSpace?, type metadata accessor for Text.Effect.RangeCoordinateSpace);
  result = v103;
  *(v103 + 2) = v92 + 1;
  v93 = &result[16 * v92];
  *(v93 + 4) = OffsetForStringIndex;
  *(v93 + 5) = v5;
  return result;
}

uint64_t specialized BidirectionalCollection.last.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = v3 - 1;
    v6 = type metadata accessor for Text.Effect.SegmentInteraction.Element(0);
    v13 = *(v6 - 8);
    outlined init with copy of Text.Effect.Composition(a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v5, a2, type metadata accessor for Text.Effect.SegmentInteraction.Element);
    v7 = *(v13 + 56);
    v8 = a2;
    v9 = 0;
    v10 = v6;
  }

  else
  {
    v11 = type metadata accessor for Text.Effect.SegmentInteraction.Element(0);
    v7 = *(*(v11 - 8) + 56);
    v10 = v11;
    v8 = a2;
    v9 = 1;
  }

  return v7(v8, v9, 1, v10);
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for TextRenderLayer.Layout?(0, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22 - v7;
  v9 = type metadata accessor for Text.Effect.InteractionMetrics(0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9, v11) == 1)
  {
    outlined destroy of TextRenderLayer.Layout?(a1, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics);
    v14 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v15)
    {
      v16 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v3;
      v23 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        specialized _NativeDictionary.copy()();
        v18 = v23;
      }

      outlined init with take of TextRenderLayer.Layout(*(v18 + 56) + *(v10 + 72) * v16, v8, type metadata accessor for Text.Effect.InteractionMetrics);
      specialized _NativeDictionary._delete(at:)(v16, v18, v19);
      *v3 = v18;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return outlined destroy of TextRenderLayer.Layout?(v8, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics);
  }

  else
  {
    outlined init with take of TextRenderLayer.Layout(a1, v13, type metadata accessor for Text.Effect.InteractionMetrics);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, a2, v20);
    *v3 = v23;
  }

  return result;
}

{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v8)
    {
      v9 = result;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        specialized _NativeDictionary.copy()();
        v11 = v13;
      }

      result = specialized _NativeDictionary._delete(at:)();
      *v3 = v11;
    }
  }

  return result;
}

void specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v13;
  }

  else
  {
    v7 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v14 = *v3;
      if (!v10)
      {
        specialized _NativeDictionary.copy()();
        v11 = v14;
      }

      specialized _NativeDictionary._delete(at:)(v9, v11, v12);
      *v3 = v11;
    }
  }
}

void specialized Dictionary.subscript.setter(uint64_t a1, void *a2)
{
  if (*(a1 + 24))
  {
    outlined init with take of Any(a1, v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v6;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CA0];
    outlined destroy of TextEffectsAnimationController.Timing?(a1, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, v7);

    outlined destroy of TextEffectsAnimationController.Timing?(v7, &lazy cache variable for type metadata for Any?, v5 + 8);
  }
}

uint64_t specialized RangeSet.overlaps(_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for IndexingIterator<RangeSet<Text.Layout.CharacterIndex>.Ranges>(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E6981010];
  type metadata accessor for _SetStorage<Text.Effect.Identifier>(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>.Ranges, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BA8]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v28 - v15;
  type metadata accessor for _SetStorage<Text.Effect.Identifier>(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, v8, MEMORY[0x1E69E7BE0]);
  RangeSet.ranges.getter();
  v17.n128_f64[0] = (*(v11 + 16))(v13, v16, v10);
  lazy protocol witness table accessor for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges, MEMORY[0x1E69E7BB8], v17);
  dispatch thunk of Sequence.makeIterator()();
  v18 = *(v5 + 44);
  lazy protocol witness table accessor for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges, MEMORY[0x1E69E7BC8], v19);
  dispatch thunk of Collection.endIndex.getter();
  if (*&v7[v18] == v32[0])
  {
    v20 = 0;
LABEL_19:
    outlined destroy of Text.Effect.Composition(v7, type metadata accessor for IndexingIterator<RangeSet<Text.Layout.CharacterIndex>.Ranges>);
    (*(v11 + 8))(v16, v10);
    return v20;
  }

  v29 = v16;
  v30 = v11;
  v21 = __OFSUB__(a2, a1);
  LODWORD(v31) = v21;
  while (1)
  {
    v22 = dispatch thunk of Collection.subscript.read();
    v24 = *v23;
    v25 = v23[1];
    v22(v32, 0);
    result = dispatch thunk of Collection.formIndex(after:)();
    if (v24 >= a2 || v25 <= a1)
    {
      goto LABEL_7;
    }

    if (__OFSUB__(v25, v24))
    {
      break;
    }

    if (v25 != v24)
    {
      if (v31)
      {
        goto LABEL_21;
      }

      if (a2 != a1)
      {
        v20 = 1;
LABEL_18:
        v16 = v29;
        v11 = v30;
        goto LABEL_19;
      }
    }

LABEL_7:
    dispatch thunk of Collection.endIndex.getter();
    if (*&v7[v18] == v32[0])
    {
      v20 = 0;
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

BOOL specialized RangeSet.contains(_:)(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v29 = a2;
  type metadata accessor for IndexingIterator<RangeSet<Text.Layout.CharacterIndex>.Ranges>(0);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1E6981010];
  type metadata accessor for _SetStorage<Text.Effect.Identifier>(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>.Ranges, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BA8]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v26 - v13;
  type metadata accessor for _SetStorage<Text.Effect.Identifier>(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, v6, MEMORY[0x1E69E7BE0]);
  RangeSet.ranges.getter();
  v26 = v14;
  v27 = v9;
  v15.n128_f64[0] = (*(v9 + 16))(v11, v14, v8);
  lazy protocol witness table accessor for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges, MEMORY[0x1E69E7BB8], v15);
  dispatch thunk of Sequence.makeIterator()();
  v16 = *(v3 + 44);
  lazy protocol witness table accessor for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges, MEMORY[0x1E69E7BC8], v17);
  do
  {
    dispatch thunk of Collection.endIndex.getter();
    v18 = *&v5[v16];
    v19 = v30[0];
    if (v18 == v30[0])
    {
      break;
    }

    v20 = dispatch thunk of Collection.subscript.read();
    v22 = *v21;
    v23 = v21[1];
    v20(v30, 0);
    dispatch thunk of Collection.formIndex(after:)();
  }

  while (v22 > v28 || v23 < v29);
  outlined destroy of Text.Effect.Composition(v5, type metadata accessor for IndexingIterator<RangeSet<Text.Layout.CharacterIndex>.Ranges>);
  (*(v27 + 8))(v26, v8);
  return v18 != v19;
}

uint64_t Text.Layout.Line.baseWritingDirection.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Text.Layout.Run();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  type metadata accessor for Text.Layout.Line();
  _s7SwiftUI4TextV6LayoutV4LineVAGSlAAWlTm_0(&lazy protocol witness table cache variable for type Text.Layout.Line and conformance Text.Layout.Line, MEMORY[0x1E6981048], MEMORY[0x1E6981058]);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (dispatch thunk of Collection.distance(from:to:)() < 1)
  {
    goto LABEL_12;
  }

  Text.Layout.Line.subscript.getter();
  if (one-time initialization token for kitParagraphStyle != -1)
  {
    swift_once();
  }

  Text.Layout.Run.subscript.getter();
  (*(v3 + 8))(v5, v2);
  if (!v17)
  {
    outlined destroy of TextEffectsAnimationController.Timing?(v16, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
    goto LABEL_8;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSParagraphStyle, 0x1E69DB7D0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v6 = [objc_allocWithZone(MEMORY[0x1E69DB7D0]) init];
    goto LABEL_9;
  }

  v6 = v18;
LABEL_9:
  v7 = [v6 baseWritingDirection];

  if (v7 == 1)
  {
    v8 = MEMORY[0x1E697E7D8];
    goto LABEL_15;
  }

  if (!v7)
  {
    v8 = MEMORY[0x1E697E7D0];
LABEL_15:
    v12 = *v8;
    v13 = type metadata accessor for LayoutDirection();
    return (*(*(v13 - 8) + 104))(a1, v12, v13);
  }

LABEL_12:
  v9 = [objc_opt_self() defaultWritingDirectionForLanguage_];
  v10 = type metadata accessor for LayoutDirection();
  if (v9 == 1)
  {
    v11 = MEMORY[0x1E697E7D8];
  }

  else
  {
    v11 = MEMORY[0x1E697E7D0];
  }

  return (*(*(v10 - 8) + 104))(a1, *v11, v10);
}

uint64_t TextEffectsAnimationController.evaluateWithTraitCollection(_:)(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_unknownObjectWeakLoadStrong();
  }

  else
  {
    v6 = 0;
  }

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v11[4] = thunk for @callee_guaranteed () -> ()partial apply;
  v11[5] = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed () -> ();
  v11[3] = &block_descriptor_176;
  v8 = _Block_copy(v11);

  _NSTextCustomRenderingDelegateWillDraw(v6, 0, v8);
  swift_unknownObjectRelease();
  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t TextEffectsAnimationController.state(for:time:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v4 = v3;
  swift_beginAccess();
  v8 = v3[8];
  if (*(v8 + 16))
  {
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v10)
    {
      v11 = *(v8 + 56) + 120 * v9;
      v12 = *(v11 + 112);
      v13 = *(v11 + 96);
      v14 = *(v11 + 64);
      v114 = *(v11 + 80);
      v115 = v13;
      v116 = v12;
      v16 = *v11;
      v15 = *(v11 + 16);
      v17 = *(v11 + 32);
      v112 = *(v11 + 48);
      v113 = v14;
      v110 = v15;
      v111 = v17;
      v109 = v16;
      v94 = *(&v114 + 1);
      v18 = *(&v115 + 1);
      v95 = v115;
      v19 = v12;
      v20 = v14;
      v93 = *(&v112 + 1);
      v21 = *(&v14 + 1);
      v122 = *v11;
      v84 = *&v15;
      v121 = BYTE8(v15);
      v22 = *(v11 + 25);
      *(v120 + 15) = *(v11 + 40);
      v120[0] = v22;
      v119 = v114;
      v23 = *(v11 + 81);
      *(v118 + 3) = *(v11 + 84);
      v118[0] = v23;
      v117 = v12;
      if (v114 == 1)
      {
        outlined init with copy of TextEffectsAnimationController.Timing(&v109, &v96);
        outlined copy of TextEffectsAnimationController.Timing.PhaseConfiguration(v94, v95, v18, v19);
        v88 = 1;
        outlined copy of TextEffectsAnimationController.Timing.PhaseConfiguration(v93, v20, v21, 1);
      }

      else
      {
        outlined init with copy of TextEffectsAnimationController.Timing(&v109, &v96);
        outlined copy of TextEffectsAnimationController.Timing.PhaseConfiguration(v94, v95, v18, v19);
        v89 = v19;
        outlined copy of TextEffectsAnimationController.Timing.PhaseConfiguration(v93, v20, v21, 0);
        v40 = TextEffectsAnimationController.phaseConfiguration(with:phase:configuration:)(a1, v93, v20, v21);
        v41 = v20;
        v20 = v42;
        v91 = v18;
        v44 = v43;
        v46 = v45;

        v88 = v46;
        v46 &= 1u;
        outlined copy of TextEffectsAnimationController.Timing.PhaseConfiguration(v40, v20, v44, v46);
        outlined consume of TextEffectsAnimationController.Timing.PhaseConfiguration(v93, v41, v21, 0);
        v119 = v46;
        swift_beginAccess();
        TextEffectsAnimationController.TimingMap.resolve(_:from:)(a1, v40, v20, v44, v46);
        swift_endAccess();
        v47 = v46;
        v19 = v89;
        outlined consume of TextEffectsAnimationController.Timing.PhaseConfiguration(v40, v20, v44, v47);
        v93 = v40;
        v21 = v44;
        v18 = v91;
      }

      v90 = v20;
      v86 = v21;
      if (v19)
      {

        v87 = 1;
      }

      else
      {
        v48 = TextEffectsAnimationController.phaseConfiguration(with:phase:configuration:)(a1, v94, v95, v18);
        v50 = v49;
        v52 = v51;
        v54 = v53;

        v87 = v54;
        v54 &= 1u;
        outlined copy of TextEffectsAnimationController.Timing.PhaseConfiguration(v48, v50, v52, v54);
        outlined consume of TextEffectsAnimationController.Timing.PhaseConfiguration(v94, v95, v18, 0);
        v117 = v54;
        swift_beginAccess();
        TextEffectsAnimationController.TimingMap.resolve(_:to:)(a1, v48, v50, v52, v54);
        swift_endAccess();
        outlined consume of TextEffectsAnimationController.Timing.PhaseConfiguration(v48, v50, v52, v54);
        v94 = v48;
        v95 = v50;
        v20 = v90;
        v18 = v52;
      }

      v92 = v18;
      v31 = BYTE9(v110);
      v55 = *&v111;
      v56 = BYTE8(v111);
      if ((BYTE8(v110) & 1) == 0)
      {
        v38 = *&v110;
        v59 = v84;
        goto LABEL_34;
      }

      if (v88)
      {

        v57 = v93;

        v58 = v20;
        if ((v87 & 1) == 0)
        {
LABEL_17:
          v83 = 0;
          v85 = 0;
          goto LABEL_21;
        }
      }

      else
      {
        v57 = 0;
        v58 = 0;
        if ((v87 & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      v83 = v95;

LABEL_21:
      v60 = v4[8];
      if (*(v60 + 16) && (v61 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v62 & 1) != 0) && (v63 = *(v60 + 56) + 120 * v61, (*(v63 + 24) & 1) == 0))
      {
        v59 = *(v63 + 16);

        v71 = 0;
      }

      else
      {
        swift_beginAccess();
        v64 = Text.Effect.Keyframes.validAnimation(_:)(a1, v4[14]);
        if (v64)
        {
          v67 = v64;
          v68 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI4TextV0E16AnimationSupportE6EffectO10IdentifierV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0], v65, v66);
          v82 = v56;
          v69 = v4[14];
          v80 = *((*MEMORY[0x1E69E7D40] & *v67) + 0x78);

          v20 = v90;
          *&v81 = COERCE_DOUBLE(v80(v57, v58, v85, v83, v31, v68, 0, v69, v4));
          v79 = v70;

          v56 = v82;

          v71 = 0;
          if (v79)
          {
            *&v59 = 1.0;
          }

          else
          {
            v59 = v81;
          }
        }

        else
        {

          *&v59 = 0.0;
          v71 = 1;
        }
      }

      v121 = v71;
      swift_beginAccess();
      TextEffectsAnimationController.TimingMap.resolve(_:duration:)(a1, v59, v71);
      swift_endAccess();
      if (v71)
      {
        v38 = 1.0;
        v33 = 1;
        v34 = 0;
        v35 = 0.0;
        a3 = 0.0;
        v36 = 0.0;
        if (!v31)
        {
          goto LABEL_45;
        }

        goto LABEL_41;
      }

      v38 = *&v59;
LABEL_34:
      v36 = 0.0;
      v35 = *(&v109 + 1);
      v34 = v109;
      if (v56)
      {
        if (v56 == 1)
        {
          v33 = 0;
          v36 = v55;
          if (!v31)
          {
            goto LABEL_45;
          }
        }

        else
        {
          v33 = 1;
          if (!v31)
          {
LABEL_45:
            if (v56)
            {
              v32 = 2;
            }

            else
            {
              v32 = 3;
            }

            if (v88)
            {

              v28 = v93;

              v29 = v20;
            }

            else
            {
              v28 = 0;
              v29 = 0;
            }

            v78 = v59;
            if (v87)
            {
              v39 = v95;
            }

            else
            {
              v37 = 0;
              v39 = 0;
            }

            v96 = v122;
            v97 = v78;
            v98 = v121;
            *v99 = v120[0];
            *&v99[15] = *(v120 + 15);
            v100 = v93;
            v101 = v90;
            v102 = v86;
            v103 = v119;
            *v104 = v118[0];
            *&v104[3] = *(v118 + 3);
            v105 = v94;
            v106 = v95;
            v107 = v92;
            v108 = v117;
            result = outlined destroy of TextEffectsAnimationController.Timing(&v96);
            goto LABEL_55;
          }
        }
      }

      else
      {
        v33 = 1;
        a3 = v55;
        if (!v31)
        {
          goto LABEL_45;
        }
      }

LABEL_41:
      swift_beginAccess();
      v72 = Text.Effect.Keyframes.validTransform(_:)(a1, v4[14]);
      v73 = 0.5;
      if (v72)
      {
        v74 = v72;
        *&v75 = COERCE_DOUBLE((*((*MEMORY[0x1E69E7D40] & *v72) + 0x108))());
        v77 = v76;

        if ((v77 & 1) == 0)
        {
          v73 = *&v75;
        }
      }

      v35 = a3 - v38 * v73;
      goto LABEL_45;
    }
  }

  swift_beginAccess();
  v24 = v4[11];
  if (*(v24 + 16) && (v25 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v26 & 1) != 0))
  {
    v27 = (*(v24 + 56) + 16 * v25);
    v28 = *v27;
    v29 = v27[1];
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v28 = 0;
    v29 = 0;
  }

  LOBYTE(v31) = 0;
  v32 = 0;
  v33 = 1;
  v34 = 0;
  v35 = 0.0;
  a3 = 0.0;
  v36 = 0.0;
  v37 = v28;
  v38 = 0.0;
  v39 = v29;
LABEL_55:
  *a2 = v31;
  *(a2 + 8) = v34;
  *(a2 + 16) = v35;
  *(a2 + 24) = a3;
  *(a2 + 32) = v36;
  *(a2 + 40) = v33;
  *(a2 + 48) = v38;
  *(a2 + 56) = v32;
  *(a2 + 64) = v28;
  *(a2 + 72) = v29;
  *(a2 + 80) = v37;
  *(a2 + 88) = v39;
  return result;
}

uint64_t TextEffectsAnimationController.animationInfo(for:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 80);
  if (*(v3 + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + 8 * v4);
  }

  else
  {
    v6 = 0;
  }

  swift_endAccess();
  return v6;
}

void TextEffectsAnimationController.restoreState(_:for:)(char *a1, uint64_t a2)
{
  v3 = v2;
  if (*(v3 + 40) == 1)
  {
    v6 = *(v3 + 56);
  }

  else
  {
    v6 = CACurrentMediaTime();
  }

  swift_beginAccess();
  v7 = *(*(v3 + 72) + 16);
  v8 = *(a1 + 6);
  v9 = *(a1 + 3) - *(a1 + 2);
  v10 = 0.0;
  if (v9 < 0.0)
  {
    v9 = 0.0;
  }

  v11 = v6 - v9;
  v12 = a1[56];
  if (v12 == 3)
  {
    v108 = *a1;
    v38 = *(a1 + 8);
    v110 = *(a1 + 9);
    v112 = *(a1 + 10);
    v114 = *(*(v3 + 72) + 16);
    v39 = *(a1 + 11);
    swift_beginAccess();
    v40 = *(v3 + 64);
    v41 = 0uLL;
    if (*(v40 + 16))
    {
      v42 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
      if (v43)
      {
        v44 = *(v40 + 56) + 120 * v42;
        v45 = *v44;
        v47 = *(v44 + 32);
        v46 = *(v44 + 48);
        *&v151[16] = *(v44 + 16);
        *&v151[32] = v47;
        *v151 = v45;
        v48 = *(v44 + 64);
        v49 = *(v44 + 80);
        v50 = *(v44 + 96);
        v51 = *(v44 + 112);
        v153 = v51;
        *&v152[32] = v49;
        *&v152[48] = v50;
        *v152 = v46;
        *&v152[16] = v48;
        v10 = *v151;
        v105 = *&v151[24];
        v107 = *&v151[8];
        v52 = *&v151[40];
        v53 = v46;
        v101 = *&v152[24];
        v103 = *&v152[8];
        v99 = *&v152[40];
        v54 = *(&v50 + 1);
        outlined init with copy of TextEffectsAnimationController.Timing(v151, v148);
        v56 = v99;
        v55 = v101;
        v58 = v103;
        v57 = v105;
        v41 = v107;
        v59 = v10;
        if (v53 != 1)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v51 = 0;
        v54 = 0;
        v52 = 0;
        v57 = 0uLL;
        v58 = 0uLL;
        v55 = 0uLL;
        v56 = 0uLL;
        v41 = 0uLL;
      }
    }

    else
    {
      v51 = 0;
      v54 = 0;
      v52 = 0;
      v57 = 0uLL;
      v58 = 0uLL;
      v55 = 0uLL;
      v56 = 0uLL;
    }

    v53 = 1;
    v59 = v11;
LABEL_27:
    v137 = v10;
    v138 = v41;
    v139 = v57;
    v140 = v52;
    v141 = v53;
    v142 = v58;
    v143 = v55;
    v144 = v56;
    v145 = v54;
    v146 = v51;
    outlined destroy of TextEffectsAnimationController.Timing?(&v137, &lazy cache variable for type metadata for TextEffectsAnimationController.Timing?, &type metadata for TextEffectsAnimationController.Timing);
    v65 = specialized Dictionary.subscript.modify(v151, a2);
    if (*(v66 + 48) != 1)
    {
      TextEffectsAnimationController.Timing.endAnimationInterval()();
    }

    (v65)(v151, 0);
    specialized Set._Variant.remove(_:)(a2);
    specialized Dictionary.removeValue(forKey:)(a2, v133);
    outlined destroy of TextEffectsAnimationController.Timing?(v133, &lazy cache variable for type metadata for TextEffectsAnimationController.Timing?, &type metadata for TextEffectsAnimationController.Timing);
    v136 = 0;
    v135 = 1;
    v134 = 1;
    *v151 = v59;
    *&v151[8] = v11;
    *&v151[16] = v8;
    v151[24] = 0;
    v151[25] = v108;
    *&v151[32] = 0;
    v151[40] = 2;
    *v152 = 0;
    *&v152[8] = v38;
    *&v152[16] = v110;
    *&v152[24] = 0;
    v152[32] = 1;
    *&v152[40] = v112;
    *&v152[48] = v39;
    *&v152[56] = 0;
    v153 = 1;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v148 = *(v3 + 64);
    *(v3 + 64) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v151, a2, isUniquelyReferenced_nonNull_native);
    *(v3 + 64) = *v148;
    v68 = specialized Dictionary.subscript.modify(v148, a2);
    if (*(v69 + 48) != 1)
    {
      TextEffectsAnimationController.Timing.beginAnimationInterval()();
    }

    (v68)(v148, 0);
    v7 = v114;
    specialized Set._Variant.insert(_:)(v148, a2);
    v70 = *(v3 + 64);
    if (*(v70 + 16))
    {
      v71 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
      if (v72)
      {
        v73 = *(v70 + 56) + 120 * v71;
        v74 = *v73;
        v75 = *(v73 + 16);
        v76 = *(v73 + 48);
        v119 = *(v73 + 32);
        v120 = v76;
        v118[0] = v74;
        v118[1] = v75;
        v77 = *(v73 + 64);
        v78 = *(v73 + 80);
        v79 = *(v73 + 96);
        v124 = *(v73 + 112);
        v122 = v78;
        v123 = v79;
        v121 = v77;
        v80 = BYTE8(v119);
        v81 = *v73;
        v82 = *(v73 + 16);
        v83 = *(v73 + 48);
        v127 = *(v73 + 32);
        v128 = v83;
        v125 = v81;
        v126 = v82;
        v84 = *(v73 + 64);
        v85 = *(v73 + 80);
        v86 = *(v73 + 96);
        v132 = *(v73 + 112);
        v130 = v85;
        v131 = v86;
        v129 = v84;
        outlined init with copy of TextEffectsAnimationController.Timing(v118, v148);
        TextEffectsAnimationController.Timing.endAnimationInterval()();
        if (v80 != 1)
        {
          v87 = *(v118 + 1);
          if (*(v118 + 1) < v6)
          {
            v87 = v6;
          }

          *&v127 = v87;
          BYTE8(v127) = 0;
        }

        *&v149[16] = v129;
        *&v149[32] = v130;
        *&v149[48] = v131;
        v150 = v132;
        *v148 = v125;
        *&v148[16] = v126;
        *&v148[32] = v127;
        *v149 = v128;
        v88 = BYTE8(v127);
        outlined init with copy of TextEffectsAnimationController.Timing(v148, v116);
        v89 = swift_isUniquelyReferenced_nonNull_native();
        *&v116[0] = *(v3 + 64);
        *(v3 + 64) = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v148, a2, v89);
        *(v3 + 64) = *&v116[0];
        if (v80)
        {
          if (!v88)
          {
            specialized Set._Variant.remove(_:)(a2);
          }
        }

        else if (v88)
        {
          specialized Set._Variant.insert(_:)(v115, a2);
        }

        v116[4] = v129;
        v116[5] = v130;
        v116[6] = v131;
        v117 = v132;
        v116[0] = v125;
        v116[1] = v126;
        v116[2] = v127;
        v116[3] = v128;
        outlined destroy of TextEffectsAnimationController.Timing(v116);
      }
    }

    goto LABEL_43;
  }

  if (v12 != 2)
  {
    goto LABEL_44;
  }

  v113 = *(*(v3 + 72) + 16);
  v13 = *a1;
  v14 = *(a1 + 8);
  v109 = *(a1 + 9);
  v15 = *(a1 + 10);
  v16 = *(a1 + 11);
  swift_beginAccess();
  v17 = *(v3 + 64);
  v18 = 0uLL;
  v19 = 0.0;
  v111 = v15;
  v106 = v13;
  if (*(v17 + 16))
  {
    v20 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v21)
    {
      v22 = *(v17 + 56) + 120 * v20;
      v23 = *v22;
      v25 = *(v22 + 32);
      v24 = *(v22 + 48);
      *&v151[16] = *(v22 + 16);
      *&v151[32] = v25;
      *v151 = v23;
      v26 = *(v22 + 64);
      v27 = *(v22 + 80);
      v28 = *(v22 + 96);
      v29 = *(v22 + 112);
      v153 = v29;
      *&v152[32] = v27;
      *&v152[48] = v28;
      *v152 = v24;
      *&v152[16] = v26;
      v19 = *v151;
      v102 = *&v151[24];
      v104 = *&v151[8];
      v30 = *&v151[40];
      v31 = v24;
      v98 = *&v152[24];
      v100 = *&v152[8];
      v97 = *&v152[40];
      v32 = *(&v28 + 1);
      outlined init with copy of TextEffectsAnimationController.Timing(v151, v148);
      v34 = v97;
      v33 = v98;
      v36 = v100;
      v35 = v102;
      v18 = v104;
      v37 = v19;
      if (v31 != 1)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v29 = 0;
      v32 = 0;
      v30 = 0;
      v35 = 0uLL;
      v36 = 0uLL;
      v33 = 0uLL;
      v34 = 0uLL;
      v18 = 0uLL;
    }
  }

  else
  {
    v29 = 0;
    v32 = 0;
    v30 = 0;
    v35 = 0uLL;
    v36 = 0uLL;
    v33 = 0uLL;
    v34 = 0uLL;
  }

  v31 = 1;
  v37 = v11;
LABEL_20:
  *v148 = v19;
  *&v148[8] = v18;
  *&v148[24] = v35;
  *&v148[40] = v30;
  *v149 = v31;
  *&v149[8] = v36;
  *&v149[24] = v33;
  *&v149[40] = v34;
  *&v149[56] = v32;
  v150 = v29;
  outlined destroy of TextEffectsAnimationController.Timing?(v148, &lazy cache variable for type metadata for TextEffectsAnimationController.Timing?, &type metadata for TextEffectsAnimationController.Timing);
  v60 = specialized Dictionary.subscript.modify(v151, a2);
  if (*(v61 + 48) != 1)
  {
    TextEffectsAnimationController.Timing.endAnimationInterval()();
  }

  (v60)(v151, 0);
  specialized Set._Variant.remove(_:)(a2);
  specialized Dictionary.removeValue(forKey:)(a2, &v137);
  outlined destroy of TextEffectsAnimationController.Timing?(&v137, &lazy cache variable for type metadata for TextEffectsAnimationController.Timing?, &type metadata for TextEffectsAnimationController.Timing);
  LOBYTE(v118[0]) = 0;
  LOBYTE(v116[0]) = 1;
  v147 = 1;
  *v151 = v37;
  *&v151[8] = v11;
  *&v151[16] = v8;
  v151[24] = 0;
  v151[25] = v106;
  *&v151[32] = 0;
  v151[40] = 2;
  *v152 = 0;
  *&v152[8] = v14;
  *&v152[16] = v109;
  *&v152[24] = 0;
  v152[32] = 1;
  *&v152[40] = v111;
  *&v152[48] = v16;
  *&v152[56] = 0;
  v153 = 1;

  v62 = swift_isUniquelyReferenced_nonNull_native();
  v133[0] = *(v3 + 64);
  *(v3 + 64) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v151, a2, v62);
  *(v3 + 64) = v133[0];
  v63 = specialized Dictionary.subscript.modify(v133, a2);
  if (*(v64 + 48) != 1)
  {
    TextEffectsAnimationController.Timing.beginAnimationInterval()();
  }

  (v63)(v133, 0);
  v7 = v113;
  specialized Set._Variant.insert(_:)(v133, a2);
LABEL_43:
  swift_endAccess();
LABEL_44:
  type metadata accessor for [Text.Effect.Identifier](0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.Identifier>, &type metadata for Text.Effect.Identifier, MEMORY[0x1E69E6F90]);
  v90 = swift_allocObject();
  *(v90 + 16) = xmmword_195CC8D00;
  *(v90 + 32) = a2;
  v93 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC7SwiftUI4TextV0D16AnimationSupportE6EffectO10IdentifierV_SayAKGTt0g5Tf4g_n(v90, v91, v92);
  swift_setDeallocating();
  swift_deallocClassInstance();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v95 = Strong;
    specialized TextEffectsRenderer.notifyStateObservers(with:time:)(v93);
  }

  v96 = *(*(v3 + 72) + 16);
  if (v7)
  {
    if (!v96)
    {
      TextEffectsAnimationController.clearDisplayLink()();
    }
  }

  else if (v96)
  {
    if ((*(v3 + 40) & 1) == 0)
    {
      *(v3 + 40) = 1;
      *(v3 + 56) = CACurrentMediaTime();
      if (!TextEffectsAnimationController.startExternalDisplayLink()())
      {
        TextEffectsAnimationController.startInternalDisplayLink()();
      }
    }
  }
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance RawTextLayout(double *a1, double *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ20TextAnimationSupport03RawB6Layout33_EB92A35C21DD52D72B91A53CA7419194LLV8FragmentV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v11.origin.x = v2;
  v11.origin.y = v3;
  v11.size.width = v4;
  v11.size.height = v5;
  v12.origin.x = v6;
  v12.origin.y = v7;
  v12.size.width = v8;
  v12.size.height = v9;
  return CGRectEqualToRect(v11, v12);
}

uint64_t Text.Layout.Line.run(for:affinity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Text.Layout.Run();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Text.Layout.Line();
  _s7SwiftUI4TextV6LayoutV4LineVAGSlAAWlTm_0(&lazy protocol witness table cache variable for type Text.Layout.Line and conformance Text.Layout.Line, MEMORY[0x1E6981048], MEMORY[0x1E6981058]);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v11 = v18;
  v10 = v19;
  if (v18 < v19)
  {
    __break(1u);
LABEL_17:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    if (v19 == v18)
    {
      v12 = 1;
    }

    else
    {
      v17 = a3;
      do
      {
        Text.Layout.Line.subscript.getter();
        v13 = Text.Layout.Run.characterRange.getter();
        if (a2 == 1)
        {
          if (v13 <= a1 && v14 > a1)
          {
            goto LABEL_13;
          }
        }

        else
        {
          if (a2)
          {
            goto LABEL_17;
          }

          if (v13 <= a1 && v14 >= a1)
          {
LABEL_13:
            a3 = v17;
            (*(v7 + 32))(v17, v9, v6);
            v12 = 0;
            return (*(v7 + 56))(a3, v12, 1, v6);
          }
        }

        ++v10;
        (*(v7 + 8))(v9, v6);
      }

      while (v11 != v10);
      v12 = 1;
      a3 = v17;
    }

    return (*(v7 + 56))(a3, v12, 1, v6);
  }

  return result;
}

id Text.Layout.Line.paragraphStyle.getter()
{
  v0 = type metadata accessor for Text.Layout.Run();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  type metadata accessor for Text.Layout.Line();
  _s7SwiftUI4TextV6LayoutV4LineVAGSlAAWlTm_0(&lazy protocol witness table cache variable for type Text.Layout.Line and conformance Text.Layout.Line, MEMORY[0x1E6981048], MEMORY[0x1E6981058]);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (dispatch thunk of Collection.distance(from:to:)() >= 1)
  {
    Text.Layout.Line.subscript.getter();
    if (one-time initialization token for kitParagraphStyle != -1)
    {
      swift_once();
    }

    Text.Layout.Run.subscript.getter();
    (*(v1 + 8))(v3, v0);
    if (v8)
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSParagraphStyle, 0x1E69DB7D0);
      if (swift_dynamicCast())
      {
        return v9;
      }
    }

    else
    {
      outlined destroy of TextEffectsAnimationController.Timing?(v7, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
    }
  }

  v5 = [objc_opt_self() defaultParagraphStyle];

  return v5;
}

double Text.Layout.Line.horizontalAlignmentFactor.getter()
{
  v0 = type metadata accessor for LayoutDirection();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - v5;
  v7 = Text.Layout.Line.paragraphStyle.getter();
  v8 = [v7 horizontalAlignment];

  result = 0.0;
  if (v8 > 2)
  {
    if (v8 == 3)
    {
      return 1.0;
    }

    else if (v8 == 4)
    {
      return 0.5;
    }
  }

  else if (v8)
  {
    if (v8 == 1)
    {
      Text.Layout.Line.baseWritingDirection.getter(v6);
      (*(v1 + 104))(v3, *MEMORY[0x1E697E7D0], v0);
      v10 = static LayoutDirection.== infix(_:_:)();
      v11 = *(v1 + 8);
      v11(v3, v0);
      v11(v6, v0);
      result = 0.0;
      if (v10)
      {
        return 1.0;
      }
    }
  }

  else
  {
    Text.Layout.Line.baseWritingDirection.getter(v6);
    (*(v1 + 104))(v3, *MEMORY[0x1E697E7D0], v0);
    v12 = static LayoutDirection.== infix(_:_:)();
    v13 = *(v1 + 8);
    v13(v3, v0);
    v13(v6, v0);
    result = 1.0;
    if (v12)
    {
      return 0.0;
    }
  }

  return result;
}