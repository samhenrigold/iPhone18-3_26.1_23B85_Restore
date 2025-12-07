id TextLinesLayer.init(layer:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  outlined init with copy of Any(a1, v15);
  if (swift_dynamicCast())
  {
    v5 = v14;
    v6 = *&v14[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919414TextLinesLayer_content + 8];
    v7 = *&v14[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919414TextLinesLayer_content + 16];
    v8 = &v2[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919414TextLinesLayer_content];
    v9 = *&v14[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919414TextLinesLayer_content + 24];
    v10 = *&v14[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919414TextLinesLayer_content + 40];
    *v8 = *&v14[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919414TextLinesLayer_content];
    *(v8 + 1) = v6;
    *(v8 + 2) = v7;
    *(v8 + 24) = v9;
    *(v8 + 40) = v10;
    v13.receiver = v2;
    v13.super_class = ObjectType;

    v11 = objc_msgSendSuper2(&v13, sel_initWithLayer_, v5);
    [v11 setOpaque_];
    [v11 setNeedsDisplay];

    __swift_destroy_boxed_opaque_existential_0(a1);
    return v11;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in TextLinesLayer.draw(in:)(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x1EEE9AC00](v5).n128_u64[0];
  v9 = &v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  [a2 contentsScale];
  v12 = a2;
  v13 = a3;
  EnvironmentValues.init()();
  static GraphicsContext.renderingTo(cgContext:environment:deviceScale:content:)();
  return (*(v6 + 8))(v9, v5);
}

void closure #1 in closure #1 in TextLinesLayer.draw(in:)(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v43 = a1;
  v44 = a3;
  type metadata accessor for _SetStorage<Text.Effect.Identifier>(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BE0]);
  v42 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v35 - v7;
  v8 = type metadata accessor for Text.Layout.Line();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v45 = &v35 - v13;
  type metadata accessor for (Text.Layout.Line, CGPoint)(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v41 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a2 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919414TextLinesLayer_content;
  v18 = *(a2 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919414TextLinesLayer_content);
  v17 = *(v16 + 8);
  v19 = *(v18 + 16);

  v46 = v17;

  v39 = v19;
  if (v19)
  {
    v20 = 0;
    v21 = (v9 + 32);
    v36 = (v6 + 8);
    v37 = (v9 + 8);
    v38 = v9 + 16;
    v22 = (v46 + 40);
    while (v20 < *(v18 + 16))
    {
      v23 = v18;
      v24 = v18 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v20;
      v25 = v45;
      (*(v9 + 16))(v45, v24, v8);
      v26 = *(v46 + 16);
      if (v20 == v26)
      {

        (*v37)(v25, v8);
        return;
      }

      if (v20 >= v26)
      {
        goto LABEL_10;
      }

      ++v20;
      v27 = *(v22 - 1);
      v28 = *v22;
      v29 = *v21;
      v30 = v41;
      (*v21)(v41, v25, v8);
      v29(v11, v30, v8);
      v47 = Text.Layout.Line.characterRange.getter();
      v48 = v31;
      lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex(v47, v31, v32);
      v33 = v40;
      v34 = RangeSet.init(_:)();
      MEMORY[0x1EEE9AC00](v34);
      *(&v35 - 2) = v11;
      TextRenderLayer.draw(line:glyphOrigin:ranges:in:_:)(v11, v33, v43, partial apply for closure #1 in closure #1 in closure #1 in TextLinesLayer.draw(in:), (&v35 - 4), v27, v28);
      (*v36)(v33, v42);
      (*v37)(v11, v8);
      v22 += 2;
      v18 = v23;
      if (v39 == v20)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
LABEL_7:
  }
}

uint64_t TextRenderLayer.draw(line:glyphOrigin:ranges:in:_:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, double a6, double a7)
{
  v95 = a5;
  v96 = a4;
  v103 = a3;
  v98 = a1;
  v11 = type metadata accessor for TextRenderLayer.Layout(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v93 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v90 = &v85 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v89 = &v85 - v17;
  v18 = MEMORY[0x1E69E6720];
  type metadata accessor for TextRenderLayer.Layout?(0, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v99 = &v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v94 = &v85 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v92 = &v85 - v24;
  type metadata accessor for TextRenderLayer.Layout?(0, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout, v18);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v97 = &v85 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v91 = &v85 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v85 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v85 - v33;
  v35 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_layout;
  swift_beginAccess();
  outlined init with copy of TextRenderLayer.Layout?(v7 + v35, v34, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
  v36 = *(v12 + 48);
  v100 = v11;
  v102 = v12 + 48;
  v101 = v36;
  LODWORD(v11) = v36(v34, 1, v11);
  result = outlined destroy of TextRenderLayer.Layout?(v34, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
  if (v11 == 1)
  {
    return result;
  }

  TextRenderLayer.textMarkers(for:)(a2, v38);
  v40 = v7;
  if (!v39)
  {
    v96(v103);
    v49 = v99;
    v50 = v98;
LABEL_7:
    v45 = v100;
    goto LABEL_21;
  }

  v41 = v39;
  v87 = a2;
  v88 = v7;
  v42 = type metadata accessor for Text.Effect.InteractionMetrics(0);
  v43 = *(*(v42 - 8) + 56);
  v44 = v92;
  v86 = v42;
  v43(v92, 1, 1);
  v45 = v100;
  if (!*(v41 + 16))
  {
    v46 = &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?;
    v47 = type metadata accessor for Text.Effect.InteractionMetrics;
    v48 = v44;
    goto LABEL_9;
  }

  outlined init with copy of TextRenderLayer.Layout?(v88 + v35, v31, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
  if (v101(v31, 1, v45) == 1)
  {
    outlined destroy of TextRenderLayer.Layout?(v44, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics);
    v46 = &lazy cache variable for type metadata for TextRenderLayer.Layout?;
    v47 = type metadata accessor for TextRenderLayer.Layout;
    v48 = v31;
LABEL_9:
    outlined destroy of TextRenderLayer.Layout?(v48, v46, v47);
    v50 = v98;
LABEL_10:
    v96(v103);
    v49 = v99;
    goto LABEL_11;
  }

  v54 = v89;
  outlined init with take of TextRenderLayer.Layout(v31, v89, type metadata accessor for TextRenderLayer.Layout);

  v50 = v98;
  v55 = Text.Layout.Line.textLineFragment.getter();
  if (!v55)
  {

    outlined destroy of TextRenderLayer.Layout?(v44, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics);
    outlined destroy of Text.Effect.Composition(v54, type metadata accessor for TextRenderLayer.Layout);
    goto LABEL_10;
  }

  v56 = v55;
  v57 = Text.Effect.Markers.layoutInfo(for:glyphOrigin:metrics:layoutAttributedString:)(v50, v44, *(v54 + *(v45 + 44)), v41);

  LOBYTE(v107) = 0;
  MEMORY[0x1EEE9AC00](v58);
  *(&v85 - 6) = &v107;
  *(&v85 - 5) = v56;
  *(&v85 - 4) = a6;
  *(&v85 - 3) = a7;
  v83 = v57;
  GraphicsContext.withCGContext(content:)();

  outlined destroy of TextRenderLayer.Layout?(v44, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics);
  outlined destroy of Text.Effect.Composition(v54, type metadata accessor for TextRenderLayer.Layout);
  v59 = v107;
  v96(v103);
  if (v59)
  {

    v49 = v99;
    v50 = v98;
    v40 = v88;
    v45 = v100;
    goto LABEL_18;
  }

  v49 = v99;
  v50 = v98;
  v45 = v100;
LABEL_11:
  v51 = v94;
  (v43)(v94, 1, 1, v86);
  if (!*(v41 + 16))
  {

    outlined destroy of TextRenderLayer.Layout?(v51, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics);
    v40 = v88;
LABEL_18:
    a2 = v87;
    goto LABEL_21;
  }

  v40 = v88;
  v52 = v91;
  outlined init with copy of TextRenderLayer.Layout?(v88 + v35, v91, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
  v53 = v101(v52, 1, v45);
  a2 = v87;
  if (v53 == 1)
  {

    outlined destroy of TextRenderLayer.Layout?(v51, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics);
    outlined destroy of TextRenderLayer.Layout?(v52, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
    goto LABEL_21;
  }

  v60 = v52;
  v61 = v90;
  outlined init with take of TextRenderLayer.Layout(v60, v90, type metadata accessor for TextRenderLayer.Layout);
  v62 = Text.Layout.Line.textLineFragment.getter();
  if (!v62)
  {

    outlined destroy of TextRenderLayer.Layout?(v94, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics);
    outlined destroy of Text.Effect.Composition(v61, type metadata accessor for TextRenderLayer.Layout);
    goto LABEL_7;
  }

  v63 = v62;
  v64 = v61;
  v65 = v100;
  v66 = Text.Effect.Markers.layoutInfo(for:glyphOrigin:metrics:layoutAttributedString:)(v50, v94, *(v64 + *(v100 + 44)), v41);

  MEMORY[0x1EEE9AC00](v67);
  *(&v85 - 4) = v63;
  *(&v85 - 3) = a6;
  v83 = *&a7;
  v84 = v66;
  GraphicsContext.withCGContext(content:)();

  v45 = v65;
  a2 = v87;

  outlined destroy of TextRenderLayer.Layout?(v94, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics);
  outlined destroy of Text.Effect.Composition(v90, type metadata accessor for TextRenderLayer.Layout);
LABEL_21:
  v68 = type metadata accessor for Text.Effect.InteractionMetrics(0);
  (*(*(v68 - 8) + 56))(v49, 1, 1, v68);
  v69 = v40 + v35;
  v70 = v97;
  outlined init with copy of TextRenderLayer.Layout?(v69, v97, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
  if (v101(v70, 1, v45) == 1)
  {
    outlined destroy of TextRenderLayer.Layout?(v49, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics);
    return outlined destroy of TextRenderLayer.Layout?(v70, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
  }

  v71 = v93;
  outlined init with take of TextRenderLayer.Layout(v70, v93, type metadata accessor for TextRenderLayer.Layout);
  TextRenderLayer.correctionMarkers(for:)(a2, v72);
  if (!v73)
  {
    goto LABEL_35;
  }

  if (!*(v73 + 16))
  {

LABEL_35:
    outlined destroy of TextRenderLayer.Layout?(v49, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics);
    v82 = v71;
    return outlined destroy of Text.Effect.Composition(v82, type metadata accessor for TextRenderLayer.Layout);
  }

  v74 = Text.Effect.Markers.layoutInfo(for:glyphOrigin:metrics:layoutAttributedString:)(v50, v49, *(v71 + *(v45 + 44)), v73);
  v75 = v74;
  v76 = *(v74 + 2);
  if (!v76)
  {
LABEL_33:

    outlined destroy of TextRenderLayer.Layout?(v99, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics);

    v82 = v93;
    return outlined destroy of Text.Effect.Composition(v82, type metadata accessor for TextRenderLayer.Layout);
  }

  v77 = 0;
  v78 = (v74 + 32);
  v79 = *(v74 + 2);
  while (v77 < v79)
  {
    if (v76 == v77)
    {
      goto LABEL_42;
    }

    outlined init with copy of Text.Effect.MarkerLayoutInfo.Element(v78, &v107);
    if (v108 == 1)
    {
      v80 = v107;
      outlined init with copy of TextEffectsAnimationController.Timing?(&v109, &v104, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
      if (!v105)
      {
        goto LABEL_43;
      }

      v81 = outlined init with take of Any(&v104, v106);
      MEMORY[0x1EEE9AC00](v81);
      *(&v85 - 4) = v80;
      *(&v85 - 3) = v106;
      v83 = &v107;
      GraphicsContext.withCGContext(content:)();
      __swift_destroy_boxed_opaque_existential_0(v106);
    }

    ++v77;
    outlined destroy of Text.Effect.MarkerLayoutInfo.Element(&v107);
    v79 = *(v75 + 2);
    v78 += 96;
    if (v77 == v79)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  outlined destroy of TextEffectsAnimationController.Timing?(&v104, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
  LODWORD(v84) = 0;
  v83 = 1243;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id TextRunsLayer.init(layer:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Any(a1, v14);
  if (swift_dynamicCast())
  {
    v7 = v13;
    v8 = OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919413TextRunsLayer_content;
    swift_beginAccess();
    outlined init with copy of Text.Effect.Composition(v7 + v8, v6, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
    outlined init with take of TextRenderLayer.Layout(v6, v1 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919413TextRunsLayer_content, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
    v12.receiver = v1;
    v12.super_class = ObjectType;
    v9 = objc_msgSendSuper2(&v12, sel_initWithLayer_, v7);
    [v9 setOpaque_];
    [v9 setNeedsDisplay];

    __swift_destroy_boxed_opaque_existential_0(a1);
    return v9;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in TextRunsLayer.draw(in:)(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x1EEE9AC00](v5).n128_u64[0];
  v9 = &v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  [a2 contentsScale];
  v12 = a3;
  v13 = a2;
  EnvironmentValues.init()();
  static GraphicsContext.renderingTo(cgContext:environment:deviceScale:content:)();
  return (*(v6 + 8))(v9, v5);
}

uint64_t closure #1 in closure #1 in TextRunsLayer.draw(in:)(uint64_t *a1, uint64_t a2, char *a3, __n128 a4)
{
  v25 = a1;
  v26 = a2;
  type metadata accessor for _SetStorage<Text.Effect.Identifier>(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BE0]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v24 - v8;
  v10 = type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns(0);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Text.Layout.Line();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = &a3[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919413TextRunsLayer_content];
  swift_beginAccess();
  (*(v15 + 16))(v17, v18, v14);
  v19 = &v18[*(v11 + 28)];
  v20 = *v19;
  v21 = v19[1];
  outlined init with copy of Text.Effect.Composition(v18, v13, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
  Text.Layout.Line.characterRanges(runIndices:)();
  outlined destroy of Text.Effect.Composition(v13, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
  v22 = a3;
  specialized TextRenderLayer.draw(line:glyphOrigin:ranges:in:_:)(v17, v9, v25, v26, v22, v20, v21);

  (*(v7 + 8))(v9, v6);
  return (*(v15 + 8))(v17, v14);
}

void *closure #1 in closure #1 in closure #1 in TextRunsLayer.draw(in:)(uint64_t *a1, uint64_t a2)
{
  v47 = a1;
  v54 = type metadata accessor for Text.Layout.Run();
  v46 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RangeSet<Int><>.IndexSequence(0, v5, v6);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v53 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RangeSet<Int>(0, &lazy cache variable for type metadata for RangeSet<Int>, MEMORY[0x1E69E6548], MEMORY[0x1E69E7BE0]);
  v52 = v9;
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v51 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v45 - v13;
  v15 = type metadata accessor for Text.Layout.Line();
  v49 = *(v15 - 8);
  v16 = v49;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns(0);
  v20 = v19 - 8;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns.Iterator(0) - 8;
  MEMORY[0x1EEE9AC00](v50);
  v55 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919413TextRunsLayer_content;
  swift_beginAccess();
  outlined init with copy of Text.Effect.Composition(a2 + v24, v22, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
  v25 = *(v16 + 16);
  v26 = v22;
  v48 = v22;
  v25(v18, v22, v15);
  v27 = *(v10 + 16);
  v28 = &v26[*(v20 + 32)];
  v29 = v14;
  v30 = v14;
  v31 = v52;
  v27(v30, v28, v52);
  v25(v55, v18, v15);
  v32 = v51;
  v27(v51, v29, v31);
  RangeSet.ranges.getter();
  v33 = *(v10 + 8);
  v33(v32, v31);
  v33(v29, v31);
  (*(v49 + 8))(v18, v15);
  outlined destroy of Text.Effect.Composition(v48, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
  v34 = &v55[*(v50 + 28)];
  type metadata accessor for RangeSet<Int><>.IndexSequence.Iterator(0, v35, v36);
  v38 = *(v37 + 48);
  type metadata accessor for RangeSet<Int>(0, &lazy cache variable for type metadata for RangeSet<Int>.Ranges, MEMORY[0x1E69E6548], MEMORY[0x1E69E7BA8]);
  (*(*(v39 - 8) + 32))(&v34[v38], v53, v39);
  *v34 = 0;
  *(v34 + 1) = 0;
  if (RangeSet.Ranges.count.getter() < 1)
  {
    return outlined destroy of Text.Effect.Composition(v55, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns.Iterator);
  }

  v40 = 0;
  v41 = 0;
  v42 = (v46 + 8);
  while (1)
  {
    result = RangeSet.Ranges.subscript.getter();
    if (__OFADD__(v56, v40))
    {
      break;
    }

    if (__OFADD__(v40++, 1))
    {
      goto LABEL_12;
    }

    result = RangeSet.Ranges.subscript.getter();
    if (__OFSUB__(v57, v56))
    {
      goto LABEL_13;
    }

    if (v40 >= v57 - v56)
    {
      v40 = 0;
      *v34 = ++v41;
    }

    Text.Layout.Line.subscript.getter();
    GraphicsContext.draw(_:options:)();
    (*v42)(v4, v54);
    if (v41 >= RangeSet.Ranges.count.getter())
    {
      *(v34 + 1) = v40;
      return outlined destroy of Text.Effect.Composition(v55, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns.Iterator);
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

void @objc TextLinesLayer.draw(in:)(void *a1, uint64_t a2, void *a3, void (*a4)(uint64_t, id, id, uint64_t))
{
  v6 = a3;
  v12 = a1;
  v7 = [v12 superlayer];
  if (v7)
  {
    v8 = v7;
    type metadata accessor for TextRenderLayer(0);
    v9 = swift_dynamicCastClass();
    if (v9)
    {
      v10 = v9;
      v11 = v6;
      v6 = v12;
      v12 = v8;
      a4(v10, v11, v6, v10);

      v8 = v12;
    }

    v6 = v12;
    v12 = v8;
  }
}

uint64_t type metadata completion function for TextRunsLayer(uint64_t a1)
{
  result = type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns(319);
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id DynamicEffectLayer.draw(inDisplayList:)(void *a1)
{
  v3 = type metadata accessor for EnvironmentValues();
  result = [v1 bounds];
  if (v6 > 0.0 && v5 > 0.0)
  {
    v7 = a1;
    EnvironmentValues.init()();
    v13 = GraphicsContext.init(displayList:environment:)();
    v8 = [v1 superlayer];
    if (v8)
    {
      v9 = v8;
      type metadata accessor for TextRenderLayer(0);
      v10 = swift_dynamicCastClass();
      if (v10)
      {
        v11 = v10;
        v12 = v1;
        specialized TextRenderLayer.drawContent(_:)(v11, v12, &v13);
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t TextRenderLayer.draw(composition:segmentIndex:in:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v157 = a3;
  v152 = a2;
  v5 = type metadata accessor for Text.Effect.ResolvedDrawing.Operation(0);
  v154 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v133 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v163 = &v133 - v9;
  v160 = type metadata accessor for TextRenderLayer.Layout(0);
  v162 = *(v160 - 8);
  MEMORY[0x1EEE9AC00](v160);
  v139 = &v133 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v147 = &v133 - v12;
  v13 = MEMORY[0x1E69E6720];
  type metadata accessor for TextRenderLayer.Layout?(0, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v141 = &v133 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v143 = &v133 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v146 = &v133 - v19;
  v156 = type metadata accessor for Text.Effect.InteractionMetrics(0);
  v153 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156);
  v151 = (&v133 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for _SetStorage<Text.Effect.Identifier>(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BE0]);
  v150 = v21;
  v149 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v159 = &v133 - v22;
  v23 = type metadata accessor for Text.Effect.Composition.Run(0);
  v158 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v133 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v133 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v133 - v30;
  type metadata accessor for TextRenderLayer.Layout?(0, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout, v13);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v148 = &v133 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v142 = &v133 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v133 - v37;
  v39 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_layout;
  swift_beginAccess();
  v145 = v39;
  outlined init with copy of TextRenderLayer.Layout?(v3 + v39, v38, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
  v40 = *(v162 + 48);
  v162 += 48;
  v144 = v40;
  LODWORD(v39) = v40(v38, 1, v160);
  result = outlined destroy of TextRenderLayer.Layout?(v38, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
  if (v39 != 1)
  {
    v155 = v3;
    TextRenderLayer.drawingContext(_:time:)(0.0, 1, &v166);
    v138 = type metadata accessor for Text.Effect.Composition(0);
    v42 = *(a1 + *(v138 + 24));
    v43 = *(v42 + 16);
    if (v43)
    {
      v44 = v42 + ((*(v158 + 80) + 32) & ~*(v158 + 80));
      v45 = v158[9];
      do
      {
        outlined init with copy of Text.Effect.Composition(v44, v31, type metadata accessor for Text.Effect.Composition.Run);
        Text.Effect.Composition.Operation.resolve(line:in:)(a1, &v166);
        outlined destroy of Text.Effect.Composition(v31, type metadata accessor for Text.Effect.Composition.Operation);
        v44 += v45;
        --v43;
      }

      while (v43);
    }

    v140 = a1;
    v46 = v166;
    v47 = *(v166 + 16);
    v48 = swift_beginAccess();
    v51 = *(v47 + 16);
    *(v47 + 16) = MEMORY[0x1E69E7CC0];
    v52 = v155;
    v53 = *(v155 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_markers);
    if (!v53 || !*(v53 + 16))
    {
      v73 = *(v155 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_time);
      v74 = *(v46 + 16);
      v75 = v74[4];
      v168 = v74[3];
      v169 = v75;
      v167 = v74[2];
      v165 = v167;
      v172 = v168;
      v173 = *(&v75 + 1);
      v164 = v75;
      v76 = *(v51 + 16);
      if (v76)
      {
        v77 = v154;
        v78 = v51 + ((*(v154 + 80) + 32) & ~*(v154 + 80));
        outlined init with copy of Text.Effect.BaseFragmentIdentifierMap(&v165, &v171);
        outlined init with copy of Text.Effect.Keyframes(&v172, &v171);

        outlined init with copy of [Int : CGFloat](&v164, &v171);
        outlined init with copy of Text.Effect.Composition(&v173, &v171, type metadata accessor for [Text.Effect.RelativeIdentifierKey : CGFloat]);
        v79 = *(v77 + 72);
        v80 = v157;
        do
        {
          outlined init with copy of Text.Effect.Composition(v78, v7, type metadata accessor for Text.Effect.ResolvedDrawing.Operation);
          Text.Effect.ResolvedDrawing.Operation.draw(at:context:options:in:)(&v167, 0, 0, 1, v80, v73);
          outlined destroy of Text.Effect.Composition(v7, type metadata accessor for Text.Effect.ResolvedDrawing.Operation);
          v78 += v79;
          --v76;
        }

        while (v76);
      }

      else
      {
        outlined init with copy of Text.Effect.BaseFragmentIdentifierMap(&v165, &v171);
        outlined init with copy of Text.Effect.Keyframes(&v172, &v171);

        outlined init with copy of [Int : CGFloat](&v164, &v171);
        outlined init with copy of Text.Effect.Composition(&v173, &v171, type metadata accessor for [Text.Effect.RelativeIdentifierKey : CGFloat]);
      }

      outlined destroy of Text.Effect.BaseFragmentIdentifierMap(&v165);
      outlined destroy of Text.Effect.Keyframes(&v172);

      outlined destroy of [Int : CGFloat](&v164);
      outlined destroy of Text.Effect.Composition(&v173, type metadata accessor for [Text.Effect.RelativeIdentifierKey : CGFloat]);
    }

    v136 = v51;
    v137 = v46;
    v54 = lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex(v48, v49, v50);
    v55 = v159;
    v161 = v54;
    RangeSet.init()();
    v56 = *(v42 + 16);
    v57 = v140;
    if (v56)
    {
      v58 = v42 + ((*(v158 + 80) + 32) & ~*(v158 + 80));
      v59 = v158[9];
      do
      {
        outlined init with copy of Text.Effect.Composition(v58, v28, type metadata accessor for Text.Effect.Composition.Run);
        Text.Effect.Composition.Operation.appendCharacterRanges(line:to:)(v57, v55);
        outlined destroy of Text.Effect.Composition(v28, type metadata accessor for Text.Effect.Composition.Operation);
        v58 += v59;
        --v56;
      }

      while (v56);
    }

    v135 = v42;
    v60 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_time;
    v61 = *(v52 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_time);
    v63 = *(v52 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_baseFragmentIdentifierMap);
    v62 = *(v52 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_baseFragmentIdentifierMap + 8);
    v64 = *(v52 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_animationController);
    swift_beginAccess();
    v65 = *(v64 + 112);
    v66 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_interactionMetrics;
    swift_beginAccess();
    v67 = *(v52 + v66);
    if (*(v67 + 16) && (v68 = specialized __RawDictionaryStorage.find<A>(_:)(v152), (v69 & 1) != 0))
    {
      v70 = v151;
      outlined init with copy of Text.Effect.Composition(*(v67 + 56) + *(v153 + 72) * v68, v151, type metadata accessor for Text.Effect.InteractionMetrics);
      swift_endAccess();
      v72 = v155;
    }

    else
    {
      v133 = v66;
      v134 = v60;
      swift_endAccess();
      v81 = v151;
      *v151 = MEMORY[0x1E69E7CC0];
      v82 = v156;

      RangeSet.init()();
      *(v81 + *(v82 + 24)) = MEMORY[0x1E69E7CD0];
      v83 = v62;
      v84 = v81;
      v85 = (v81 + *(v82 + 28));
      *v85 = 0;
      v85[1] = 0;
      v86 = *(v135 + 16);
      v87 = v140;
      v88 = v63;
      v161 = v64;
      if (v86)
      {
        v89 = v135 + ((*(v158 + 80) + 32) & ~*(v158 + 80));
        v90 = v158[9];
        do
        {
          outlined init with copy of Text.Effect.Composition(v89, v25, type metadata accessor for Text.Effect.Composition.Run);
          Text.Effect.Composition.Operation.appendInteractionMetrics(to:at:line:context:)(v84, v87, v88, v83, v65, v161, v61);
          outlined destroy of Text.Effect.Composition(v25, type metadata accessor for Text.Effect.Composition.Operation);
          v89 += v90;
          --v86;
        }

        while (v86);
      }

      v91 = v146;
      outlined init with copy of Text.Effect.Composition(v84, v146, type metadata accessor for Text.Effect.InteractionMetrics);
      (*(v153 + 56))(v91, 0, 1, v156);
      v72 = v155;
      swift_beginAccess();
      specialized Dictionary.subscript.setter(v91, v152);
      swift_endAccess();

      v70 = v84;
      v60 = v134;
    }

    v92 = v159;
    TextRenderLayer.textMarkers(for:)(v159, v71);
    v94 = v157;
    v95 = v140;
    v96 = v147;
    if (v93)
    {
      if (*(v93 + 16))
      {
        v97 = v93;
        v98 = (v140 + *(v138 + 20));
        v99 = *v98;
        v100 = v98[1];
        v101 = v143;
        outlined init with copy of Text.Effect.Composition(v70, v143, type metadata accessor for Text.Effect.InteractionMetrics);
        (*(v153 + 56))(v101, 0, 1, v156);
        v102 = v142;
        outlined init with copy of TextRenderLayer.Layout?(v72 + v145, v142, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
        if (v144(v102, 1, v160) == 1)
        {
          outlined destroy of TextRenderLayer.Layout?(v101, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics);

          outlined destroy of TextRenderLayer.Layout?(v102, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
        }

        else
        {
          outlined init with take of TextRenderLayer.Layout(v102, v96, type metadata accessor for TextRenderLayer.Layout);
          v103 = Text.Layout.Line.textLineFragment.getter();
          if (v103)
          {
            v104 = v103;
            v105 = v143;
            v106 = Text.Effect.Markers.layoutInfo(for:glyphOrigin:metrics:layoutAttributedString:)(v95, v143, *(v96 + *(v160 + 44)), v97);
            v134 = v60;
            v107 = v106;

            v158 = &v133;
            LOBYTE(v167) = 0;
            MEMORY[0x1EEE9AC00](v108);
            *(&v133 - 6) = &v167;
            *(&v133 - 5) = v104;
            *(&v133 - 4) = v99;
            *(&v133 - 3) = v100;
            *(&v133 - 2) = v107;
            GraphicsContext.withCGContext(content:)();
            v161 = 0;
            v60 = v134;

            outlined destroy of TextRenderLayer.Layout?(v105, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics);
            outlined destroy of Text.Effect.Composition(v96, type metadata accessor for TextRenderLayer.Layout);
            v109 = v167;
LABEL_32:
            v110 = *(v72 + v60);
            v111 = *(v137 + 16);
            v112 = v111[4];
            v168 = v111[3];
            v169 = v112;
            v167 = v111[2];
            v171 = v167;
            v170 = v168;
            v172 = *(&v112 + 1);
            v173 = v112;
            v113 = *(v136 + 16);
            if (v113)
            {
              v114 = v70;
              v115 = v95;
              v116 = v154;
              v117 = v136 + ((*(v154 + 80) + 32) & ~*(v154 + 80));
              outlined init with copy of Text.Effect.BaseFragmentIdentifierMap(&v171, &v164);
              outlined init with copy of Text.Effect.Keyframes(&v170, &v164);

              outlined init with copy of [Int : CGFloat](&v173, &v164);
              outlined init with copy of Text.Effect.Composition(&v172, &v164, type metadata accessor for [Text.Effect.RelativeIdentifierKey : CGFloat]);
              v118 = *(v116 + 72);
              v119 = v163;
              do
              {
                outlined init with copy of Text.Effect.Composition(v117, v119, type metadata accessor for Text.Effect.ResolvedDrawing.Operation);
                Text.Effect.ResolvedDrawing.Operation.draw(at:context:options:in:)(&v167, 0, 0, 1, v94, v110);
                v119 = v163;
                outlined destroy of Text.Effect.Composition(v163, type metadata accessor for Text.Effect.ResolvedDrawing.Operation);
                v117 += v118;
                --v113;
              }

              while (v113);

              v72 = v155;
              v92 = v159;
              v95 = v115;
              v70 = v114;
            }

            else
            {
              outlined init with copy of Text.Effect.BaseFragmentIdentifierMap(&v171, &v164);
              outlined init with copy of Text.Effect.Keyframes(&v170, &v164);

              outlined init with copy of [Int : CGFloat](&v173, &v164);
              outlined init with copy of Text.Effect.Composition(&v172, &v164, type metadata accessor for [Text.Effect.RelativeIdentifierKey : CGFloat]);
            }

            outlined destroy of Text.Effect.BaseFragmentIdentifierMap(&v171);
            outlined destroy of Text.Effect.Keyframes(&v170);

            outlined destroy of [Int : CGFloat](&v173);
            outlined destroy of Text.Effect.Composition(&v172, type metadata accessor for [Text.Effect.RelativeIdentifierKey : CGFloat]);
            v121 = v148;
            if ((v109 & 1) == 0)
            {
              TextRenderLayer.textMarkers(for:)(v92, v120);
              if (v122)
              {
                if (*(v122 + 16))
                {
                  v123 = v122;
                  v124 = (v95 + *(v138 + 20));
                  v125 = *v124;
                  v126 = v124[1];
                  v127 = v141;
                  outlined init with copy of Text.Effect.Composition(v70, v141, type metadata accessor for Text.Effect.InteractionMetrics);
                  (*(v153 + 56))(v127, 0, 1, v156);
                  outlined init with copy of TextRenderLayer.Layout?(v72 + v145, v121, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
                  if (v144(v121, 1, v160) == 1)
                  {
                    outlined destroy of TextRenderLayer.Layout?(v127, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics);

                    outlined destroy of TextRenderLayer.Layout?(v121, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
                  }

                  else
                  {
                    v128 = v139;
                    outlined init with take of TextRenderLayer.Layout(v121, v139, type metadata accessor for TextRenderLayer.Layout);
                    v129 = Text.Layout.Line.textLineFragment.getter();
                    if (v129)
                    {
                      v130 = v129;
                      v131 = Text.Effect.Markers.layoutInfo(for:glyphOrigin:metrics:layoutAttributedString:)(v95, v127, *(v128 + *(v160 + 44)), v123);

                      MEMORY[0x1EEE9AC00](v132);
                      *(&v133 - 4) = v130;
                      *(&v133 - 3) = v125;
                      *(&v133 - 2) = v126;
                      *(&v133 - 1) = v131;
                      GraphicsContext.withCGContext(content:)();

                      outlined destroy of TextRenderLayer.Layout?(v127, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics);
                    }

                    else
                    {
                      outlined destroy of TextRenderLayer.Layout?(v127, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics);
                    }

                    outlined destroy of Text.Effect.Composition(v128, type metadata accessor for TextRenderLayer.Layout);
                    v92 = v159;
                  }
                }

                else
                {
                }
              }
            }

            TextRenderLayer.drawCorrectionMarkers(composition:characterRanges:metrics:in:)(v95, v92, v70, v94);
            outlined destroy of Text.Effect.Composition(v70, type metadata accessor for Text.Effect.InteractionMetrics);
            (*(v149 + 8))(v92, v150);
          }

          outlined destroy of TextRenderLayer.Layout?(v143, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics);

          outlined destroy of Text.Effect.Composition(v96, type metadata accessor for TextRenderLayer.Layout);
        }
      }

      else
      {
      }
    }

    v109 = 0;
    v161 = 0;
    goto LABEL_32;
  }

  return result;
}

id SharedDynamicLayer.init(layer:)(void *a1)
{
  ObjectType = swift_getObjectType();
  outlined init with copy of Any(a1, v9);
  if (swift_dynamicCast())
  {
    v4 = v8;
    v7.receiver = v1;
    v7.super_class = ObjectType;
    v5 = objc_msgSendSuper2(&v7, sel_initWithLayer_, v8);
    [v5 setOpaque_];
    [v5 setNeedsDisplay];

    __swift_destroy_boxed_opaque_existential_0(a1);
    return v5;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void SharedDynamicLayer.draw(inDisplayList:)(void *a1)
{
  v3 = type metadata accessor for EnvironmentValues();
  [v1 bounds];
  if (v5 > 0.0 && v4 > 0.0)
  {
    v6 = a1;
    EnvironmentValues.init()();
    v12 = GraphicsContext.init(displayList:environment:)();
    v7 = [v1 superlayer];
    if (v7)
    {
      v8 = v7;
      type metadata accessor for TextRenderLayer(0);
      v9 = swift_dynamicCastClass();
      if (v9)
      {
        v10 = v9;
        v11 = v1;
        specialized TextRenderLayer.drawContent(_:)(v10, v11, &v12);
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void closure #1 in SharedDynamicLayer.draw(in:)(void *a1, uint64_t *a2)
{
  v3 = [a1 superlayer];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for TextRenderLayer(0);
    if (swift_dynamicCastClass())
    {
      TextRenderLayer.drawShared(in:)(a2);
    }
  }
}

void *TextRenderLayer.drawShared(in:)(uint64_t *a1)
{
  v46 = a1;
  v50 = type metadata accessor for Text.Effect.RenderSegmentation.Effect(0);
  MEMORY[0x1EEE9AC00](v50);
  v49 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for Text.Effect.RenderSegmentation.Segment(0);
  v55 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RangeSet<Int><>.IndexSequence(0, v5, v6);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v53 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RangeSet<Int>(0, &lazy cache variable for type metadata for RangeSet<Int>, MEMORY[0x1E69E6548], MEMORY[0x1E69E7BE0]);
  v10 = v9;
  v52 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v54 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v47 = &v44 - v13;
  type metadata accessor for RangeSet<Int><>.IndexSequence.Iterator(0, v14, v15);
  v48 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TextRenderLayer.Layout?(0, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v44 - v20;
  v22 = type metadata accessor for TextRenderLayer.Layout(0);
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v44 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_layout;
  swift_beginAccess();
  outlined init with copy of TextRenderLayer.Layout?(v1 + v26, v21, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
  v27 = *(v23 + 48);
  v45 = v22;
  if (v27(v21, 1, v22) == 1)
  {
    return outlined destroy of TextRenderLayer.Layout?(v21, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
  }

  v44 = v25;
  outlined init with take of TextRenderLayer.Layout(v21, v25, type metadata accessor for TextRenderLayer.Layout);
  v29 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_sharedDrawingSegments;
  swift_beginAccess();
  v30 = v52;
  v31 = *(v52 + 2);
  v56 = v1;
  v32 = v47;
  v31(v47, v1 + v29, v10);
  v33 = v54;
  v31(v54, v32, v10);
  v34 = v53;
  RangeSet.ranges.getter();
  v35 = *(v30 + 1);
  v35(v33, v10);
  v35(v32, v10);
  v36 = *(v48 + 48);
  type metadata accessor for RangeSet<Int>(0, &lazy cache variable for type metadata for RangeSet<Int>.Ranges, MEMORY[0x1E69E6548], MEMORY[0x1E69E7BA8]);
  (*(*(v37 - 8) + 32))(&v18[v36], v34, v37);
  *v18 = 0;
  *(v18 + 1) = 0;
  if (RangeSet.Ranges.count.getter() < 1)
  {
LABEL_17:
    outlined destroy of Text.Effect.Composition(v18, type metadata accessor for RangeSet<Int><>.IndexSequence.Iterator);
    return outlined destroy of Text.Effect.Composition(v44, type metadata accessor for TextRenderLayer.Layout);
  }

  else
  {
    v38 = 0;
    v39 = 0;
    v40 = *v46;
    v53 = *&v44[*(v45 + 24)];
    v54 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_displacements;
    v52 = &v53[(*(v55 + 80) + 32) & ~*(v55 + 80)];
    while (1)
    {
      result = RangeSet.Ranges.subscript.getter();
      v41 = v57 + v38;
      if (__OFADD__(v57, v38))
      {
        break;
      }

      if (__OFADD__(v38++, 1))
      {
        goto LABEL_19;
      }

      *(v18 + 1) = v38;
      result = RangeSet.Ranges.subscript.getter();
      if (__OFSUB__(v58, v57))
      {
        goto LABEL_20;
      }

      if (v38 >= v58 - v57)
      {
        v38 = 0;
        *v18 = ++v39;
        *(v18 + 1) = 0;
      }

      v57 = v40;
      if ((v41 & 0x8000000000000000) != 0)
      {
        goto LABEL_21;
      }

      if (v41 >= *(*&v54[v56] + 16))
      {
        goto LABEL_22;
      }

      result = GraphicsContext.translateBy(x:y:)();
      if (v41 >= *(v53 + 2))
      {
        goto LABEL_23;
      }

      outlined init with copy of Text.Effect.Composition(&v52[*(v55 + 72) * v41], v4, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
      if (swift_getEnumCaseMultiPayload() < 2)
      {

        outlined destroy of Text.Effect.Composition(v4, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
      }

      else
      {
        v43 = v49;
        outlined init with take of TextRenderLayer.Layout(v4, v49, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
        TextRenderLayer.draw(composition:segmentIndex:in:)(v43 + *(v50 + 24), v41, &v57);
        outlined destroy of Text.Effect.Composition(v43, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
      }

      if (v39 >= RangeSet.Ranges.count.getter())
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  return result;
}

id DynamicEffectLayer.init(layer:)(void *a1, uint64_t *a2, void *a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v9 = type metadata accessor for Text.Effect.RenderSegmentation.Effect(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Any(a1, v19);
  if (swift_dynamicCast())
  {
    v12 = v18;
    v13 = *a2;
    swift_beginAccess();
    outlined init with copy of Text.Effect.Composition(&v12[v13], v11, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
    outlined init with take of TextRenderLayer.Layout(v11, &v4[*a2], type metadata accessor for Text.Effect.RenderSegmentation.Effect);
    *&v4[*a3] = *&v12[*a3];
    v17.receiver = v4;
    v17.super_class = ObjectType;
    v14 = objc_msgSendSuper2(&v17, sel_initWithLayer_, v12);
    [v14 setOpaque_];
    [v14 setNeedsDisplay];

    __swift_destroy_boxed_opaque_existential_0(a1);
    return v14;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id @objc DynamicEffectLayer.init(layer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5, uint64_t a6)
{
  swift_unknownObjectRetain();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  return DynamicEffectLayer.init(layer:)(v10, a4, a5, a6);
}

void closure #1 in StaticEffectLayer.draw(in:)(uint64_t *a1, id a2)
{
  v4 = [a2 superlayer];
  if (v4)
  {
    v9 = v4;
    type metadata accessor for TextRenderLayer(0);
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v6 = v5;
      v7 = a2;
      specialized TextRenderLayer.drawContent(_:)(v6, v7, a1);

      v8 = v7;
    }

    else
    {
      v8 = v9;
    }
  }
}

void closure #1 in DynamicEffectLayer.draw(in:)(char *a1, uint64_t *a2, void *a3, void *a4)
{
  v8 = type metadata accessor for Text.Effect.Composition(0);
  *&v9 = MEMORY[0x1EEE9AC00](v8 - 8).n128_u64[0];
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a1 superlayer];
  if (v15)
  {
    type metadata accessor for TextRenderLayer(0);
    if (swift_dynamicCastClass())
    {
      v12 = &a1[*a3];
      swift_beginAccess();
      v13 = type metadata accessor for Text.Effect.RenderSegmentation.Effect(0);
      outlined init with copy of Text.Effect.Composition(&v12[*(v13 + 24)], v11, type metadata accessor for Text.Effect.Composition);
      TextRenderLayer.draw(composition:segmentIndex:in:)(v11, *&a1[*a4], a2);

      outlined destroy of Text.Effect.Composition(v11, type metadata accessor for Text.Effect.Composition);
    }

    else
    {
      v14 = v15;
    }
  }
}

uint64_t type metadata completion function for DynamicEffectLayer(uint64_t a1)
{
  result = type metadata accessor for Text.Effect.RenderSegmentation.Effect(319);
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void LayerGeometryObserver.validateLayers()()
{
  v4 = v0;
  v5 = OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919421LayerGeometryObserver_ancestor;
  v6 = *(v0 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919421LayerGeometryObserver_ancestor);
  v7 = &unk_1EAEDF000;
  if (!v6)
  {
LABEL_9:
    v15 = v7[54];
    swift_beginAccess();
    v16 = *(v4 + v15);
    if (v16 >> 62)
    {
      if (v16 < 0)
      {
        v34 = *(v4 + v15);
      }

      else
      {
        v34 = v16 & 0xFFFFFFFFFFFFFF8;
      }

      if (!MEMORY[0x19A8BDCD0](v34))
      {
        return;
      }
    }

    else if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

    LayerGeometryObserver.removeObservers()();
    *(v4 + v15) = MEMORY[0x1E69E7CC0];

    v17 = *(v4 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919421LayerGeometryObserver__root);
    *(v4 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919421LayerGeometryObserver__root) = 0;

    return;
  }

  v8 = OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919421LayerGeometryObserver_observedLayers;
  swift_beginAccess();
  v9 = *(v4 + v8);
  if (v9 >> 62)
  {
    if (v9 < 0)
    {
      v18 = v9;
    }

    else
    {
      v18 = v9 & 0xFFFFFFFFFFFFFF8;
    }

    if (MEMORY[0x19A8BDCD0](v18))
    {
      goto LABEL_4;
    }

LABEL_16:
    v13 = v6;
    goto LABEL_17;
  }

  if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_16;
  }

LABEL_4:
  if ((v9 & 0xC000000000000001) != 0)
  {
    goto LABEL_66;
  }

  if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_68;
  }

  v10 = *(v9 + 32);
  v11 = v6;
  v12 = v10;
  while (1)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CALayer, 0x1E6979398);
    v13 = v11;
    v14 = static NSObject.== infix(_:_:)();

    if (v14)
    {

      if (*(v4 + v5))
      {
        return;
      }

      goto LABEL_9;
    }

LABEL_17:
    v35 = MEMORY[0x1E69E7CC0];
    v1 = v13;
    v7 = 0;
    v19 = v1;
    while (1)
    {
      v20 = v19;
      MEMORY[0x19A8BD720]();
      if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v9 = v35;
      if ([v20 masksToBounds])
      {
        if (v35 >> 62)
        {
          if (v35 < 0)
          {
            v22 = v35;
          }

          else
          {
            v22 = v35 & 0xFFFFFFFFFFFFFF8;
          }

          v7 = MEMORY[0x19A8BDCD0](v22);
        }

        else
        {
          v7 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }
      }

      v21 = [v20 superlayer];

      if (!v21)
      {
        break;
      }

      v19 = v21;

      v6 = v21;
    }

    v23 = *(v4 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919421LayerGeometryObserver__root);
    *(v4 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919421LayerGeometryObserver__root) = v6;
    v2 = v6;

    v5 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if ((v5 & 0x8000000000000000) != 0)
    {
      goto LABEL_59;
    }

    v24 = v35 & 0xFFFFFFFFFFFFFF8;
    v6 = (v35 >> 62);
    if (v35 >> 62)
    {
      goto LABEL_60;
    }

    if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v5)
    {
      goto LABEL_33;
    }

LABEL_65:
    __break(1u);
LABEL_66:
    v11 = v6;

    v12 = MEMORY[0x19A8BDB80](0, v9);
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  if (v35 < 0)
  {
    v7 = v35;
  }

  else
  {
    v7 = v24;
  }

  if (MEMORY[0x19A8BDCD0](v7) < 0)
  {
    __break(1u);
    return;
  }

  if (MEMORY[0x19A8BDCD0](v7) < v5)
  {
    goto LABEL_65;
  }

LABEL_33:
  if ((v35 & 0xC000000000000001) != 0 && v5)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CALayer, 0x1E6979398);

    v25 = 0;
    do
    {
      v26 = v25 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v25);
      v25 = v26;
    }

    while (v5 != v26);
  }

  else
  {
  }

  if (v6)
  {
    v7 = _CocoaArrayWrapper.subscript.getter();
    v3 = v27;
    v6 = v28;
    v5 = v29;

    if ((v5 & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v7 = (v35 & 0xFFFFFFFFFFFFFF8);
    v3 = (v35 & 0xFFFFFFFFFFFFFF8) + 32;
    v5 = (2 * v5) | 1;
    if ((v5 & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v32 = swift_dynamicCastClass();
  if (!v32)
  {
    swift_unknownObjectRelease();
    v32 = MEMORY[0x1E69E7CC0];
  }

  v33 = *(v32 + 16);

  if (!__OFSUB__(v5 >> 1, v6))
  {
    if (v33 != (v5 >> 1) - v6)
    {
      goto LABEL_69;
    }

    v31 = swift_dynamicCastClass();
    swift_unknownObjectRelease_n();
    if (!v31)
    {
      v31 = MEMORY[0x1E69E7CC0];
      goto LABEL_50;
    }

    goto LABEL_51;
  }

LABEL_68:
  __break(1u);
LABEL_69:
  swift_unknownObjectRelease_n();
LABEL_43:
  specialized _copyCollectionToContiguousArray<A>(_:)(v7, v3, v6, v5);
  v31 = v30;
LABEL_50:
  swift_unknownObjectRelease();
LABEL_51:
  LayerGeometryObserver.updateObserversIfChanged(_:)(v31);
}

void LayerGeometryObserver.updateObserversIfChanged(_:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_21;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v4 = OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919421LayerGeometryObserver_observedLayers;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (!(v5 >> 62))
  {
    if (v3 == *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_29:
    LayerGeometryObserver.removeObservers()();
    *(v1 + v4) = a1;

    LayerGeometryObserver.addObservers()();
    return;
  }

  if (v5 < 0)
  {
    v13 = *(v1 + v4);
  }

  else
  {
    v13 = v5 & 0xFFFFFFFFFFFFFF8;
  }

  if (v3 != MEMORY[0x19A8BDCD0](v13))
  {
    goto LABEL_29;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
  }

  else if (v3)
  {
    v6 = 4;
    do
    {
      v7 = v6 - 4;
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x19A8BDB80](v6 - 4, a1);
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v8 = *(a1 + 8 * v6);
      }

      v9 = v8;
      swift_beginAccess();
      v10 = *(v1 + v4);
      if ((v10 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x19A8BDB80](v6 - 4);
        swift_endAccess();
        swift_unknownObjectRelease();
      }

      else
      {
        if (v7 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_20:
          __break(1u);
LABEL_21:
          if ((a1 & 0x8000000000000000) != 0)
          {
            v12 = a1;
          }

          else
          {
            v12 = a1 & 0xFFFFFFFFFFFFFF8;
          }

          v3 = MEMORY[0x19A8BDCD0](v12);
          goto LABEL_3;
        }

        v11 = *(v10 + 8 * v6);
        swift_endAccess();
      }

      if (v9 != v11)
      {
        goto LABEL_29;
      }

      ++v6;
      --v3;
    }

    while (v3);
  }
}

void LayerGeometryObserver.removeObservers()()
{
  v1 = OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919421LayerGeometryObserver_observedLayers;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    if (v2 < 0)
    {
      v12 = v2;
    }

    else
    {
      v12 = v2 & 0xFFFFFFFFFFFFFF8;
    }

    v3 = MEMORY[0x19A8BDCD0](v12);
    if (!v3)
    {
      return;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else
  {

    v4 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x19A8BDB80](v4, v2);
      }

      else
      {
        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      ++v4;
      v7 = MEMORY[0x19A8BD5F0](0x73646E756F62, 0xE600000000000000);
      [v6 removeObserver:v0 forKeyPath:v7 context:&static LayerGeometryObserver.context];

      v8 = MEMORY[0x19A8BD5F0](0x6E6F697469736F70, 0xE800000000000000);
      [v6 removeObserver:v0 forKeyPath:v8 context:&static LayerGeometryObserver.context];

      v9 = MEMORY[0x19A8BD5F0](0x6F50726F68636E61, 0xEB00000000746E69);
      [v6 removeObserver:v0 forKeyPath:v9 context:&static LayerGeometryObserver.context];

      v10 = MEMORY[0x19A8BD5F0](0x726F66736E617274, 0xE90000000000006DLL);
      [v6 removeObserver:v0 forKeyPath:v10 context:&static LayerGeometryObserver.context];

      v11 = MEMORY[0x19A8BD5F0](0x426F54736B73616DLL, 0xED000073646E756FLL);
      [v6 removeObserver:v0 forKeyPath:v11 context:&static LayerGeometryObserver.context];
    }

    while (v3 != v4);
  }
}

void LayerGeometryObserver.clip(bounds:for:)(void *a1, CGFloat x, CGFloat y, CGFloat width, CGFloat height)
{
  LayerGeometryObserver.validateLayers()();
  v11 = OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919421LayerGeometryObserver_observedLayers;
  swift_beginAccess();
  v12 = *(v5 + v11);
  if (v12 >> 62)
  {
    if (v12 < 0)
    {
      v28 = *(v5 + v11);
    }

    else
    {
      v28 = v12 & 0xFFFFFFFFFFFFFF8;
    }

    v13 = MEMORY[0x19A8BDCD0](v28);
    v14 = &off_1E744B000;
    if (!v13)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v14 = &off_1E744B000;
    if (!v13)
    {
      goto LABEL_12;
    }
  }

  if (v13 < 1)
  {
    __break(1u);
    goto LABEL_34;
  }

  v30 = v11;

  for (i = 0; i != v13; ++i)
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x19A8BDB80](i, v12);
    }

    else
    {
      v16 = *(v12 + 8 * i + 32);
    }

    v17 = v16;
    if ([v16 v14[339]])
    {
      [v17 bounds];
      [a1 convertRect:v17 fromLayer:?];
      v34.origin.x = v18;
      v34.origin.y = v19;
      v34.size.width = v20;
      v34.size.height = v21;
      v31.origin.x = x;
      v31.origin.y = y;
      v31.size.width = width;
      v31.size.height = height;
      v32 = CGRectIntersection(v31, v34);
      x = v32.origin.x;
      y = v32.origin.y;
      width = v32.size.width;
      height = v32.size.height;
    }
  }

  v11 = v30;
LABEL_12:
  v12 = *(v5 + v11);
  if (!(v12 >> 62))
  {
    v22 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v22)
    {
      return;
    }

LABEL_14:
    v5 = v22 - 1;
    if (!__OFSUB__(v22, 1))
    {
      if ((v12 & 0xC000000000000001) == 0)
      {
        if ((v5 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v5 < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v23 = *(v12 + 8 * v5 + 32);
LABEL_19:
          if (([v23 v14[339]] & 1) == 0)
          {
            [v23 bounds];
            [a1 convertRect:v23 fromLayer:?];
            v35.origin.x = v24;
            v35.origin.y = v25;
            v35.size.width = v26;
            v35.size.height = v27;
            v33.origin.x = x;
            v33.origin.y = y;
            v33.size.width = width;
            v33.size.height = height;
            CGRectIntersection(v33, v35);
          }

          return;
        }

        __break(1u);
        return;
      }

LABEL_35:

      v23 = MEMORY[0x19A8BDB80](v5, v12);

      goto LABEL_19;
    }

LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v12 < 0)
  {
    v29 = *(v5 + v11);
  }

  else
  {
    v29 = v12 & 0xFFFFFFFFFFFFFF8;
  }

  v22 = MEMORY[0x19A8BDCD0](v29);
  if (v22)
  {
    goto LABEL_14;
  }
}

void LayerGeometryObserver.addObservers()()
{
  swift_beginAccess();
  v1 = OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919421LayerGeometryObserver_observedLayers;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_10:
    swift_endAccess();
    return;
  }

  if (v2 < 0)
  {
    v12 = v2;
  }

  else
  {
    v12 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = MEMORY[0x19A8BDCD0](v12);
  if (!v3)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v3 >= 1)
  {

    v4 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x19A8BDB80](v4, v2);
      }

      else
      {
        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      ++v4;
      v7 = MEMORY[0x19A8BD5F0](0x73646E756F62, 0xE600000000000000);
      [v6 addObserver:v0 forKeyPath:v7 options:1 context:&static LayerGeometryObserver.context];

      v8 = MEMORY[0x19A8BD5F0](0x6E6F697469736F70, 0xE800000000000000);
      [v6 addObserver:v0 forKeyPath:v8 options:1 context:&static LayerGeometryObserver.context];

      v9 = MEMORY[0x19A8BD5F0](0x6F50726F68636E61, 0xEB00000000746E69);
      [v6 addObserver:v0 forKeyPath:v9 options:1 context:&static LayerGeometryObserver.context];

      v10 = MEMORY[0x19A8BD5F0](0x726F66736E617274, 0xE90000000000006DLL);
      [v6 addObserver:v0 forKeyPath:v10 options:1 context:&static LayerGeometryObserver.context];

      v11 = MEMORY[0x19A8BD5F0](0x426F54736B73616DLL, 0xED000073646E756FLL);
      [v6 addObserver:v0 forKeyPath:v11 options:1 context:&static LayerGeometryObserver.context];
    }

    while (v3 != v4);

    goto LABEL_10;
  }

  __break(1u);
}

void LayerGeometryObserver.observeValue(forKeyPath:of:change:context:)(uint64_t a1, void *a2, uint64_t a3, Class isa, void *a5)
{
  ObjectType = swift_getObjectType();
  swift_beginAccess();
  if (a5 != &static LayerGeometryObserver.context)
  {
    if (a2)
    {
      a2 = MEMORY[0x19A8BD5F0](a1, a2);
    }

    outlined init with copy of TextEffectsAnimationController.Timing?(a3, v23, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
    v14 = v24;
    if (v24)
    {
      v15 = __swift_project_boxed_opaque_existential_0(v23, v24);
      v16 = *(v14 - 8);
      v17 = MEMORY[0x1EEE9AC00](v15);
      v19 = &v21 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v16 + 16))(v19, v17);
      v20 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v16 + 8))(v19, v14);
      v13 = __swift_destroy_boxed_opaque_existential_0(v23);
      if (!isa)
      {
LABEL_9:
        v22.receiver = v5;
        v22.super_class = ObjectType;
        objc_msgSendSuper2(&v22, sel_observeValueForKeyPath_ofObject_change_context_, a2, v20, isa, a5, v13);

        swift_unknownObjectRelease();
        goto LABEL_10;
      }
    }

    else
    {
      v20 = 0;
      if (!isa)
      {
        goto LABEL_9;
      }
    }

    type metadata accessor for NSKeyValueChangeKey(0);
    _s7SwiftUI4TextV6LayoutV4LineVAGSlAAWlTm_0(&lazy protocol witness table cache variable for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey, type metadata accessor for NSKeyValueChangeKey, &protocol conformance descriptor for NSKeyValueChangeKey);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    goto LABEL_9;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  isa = Strong;
  TextEffectsRenderer.layerGeometryDidChange()();
LABEL_10:
}

Swift::Void __swiftcall TextEffectsRenderer.layerGeometryDidChange()()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_currentIDs);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_surfaceMap;
    v11 = *(v3 + 16);
    v10 = v3 + 16;
    v9 = v11;
    v12 = v6 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v13 = *(v10 + 56);
    v27 = (v10 - 8);
    v24[1] = v6;

    v25 = v8;
    v26 = v13;
    do
    {
      v9(v5, v12, v2);
      swift_beginAccess();
      v14 = *(v1 + v8);
      if (*(v14 + 16) && (v15 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v16 & 1) != 0))
      {
        v17 = *(*(v14 + 56) + 8 * v15);
        swift_endAccess();
        v18 = v1;
        v19 = v9;
        v20 = v10;
        v21 = *v27;
        v22 = v17;
        v21(v5, v2);
        v10 = v20;
        v9 = v19;
        v1 = v18;
        v8 = v25;
        v13 = v26;
        v23 = *&v22[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919417TextRenderSurface__layer];
        v23[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_updateFlags] |= 0x40u;
        [v23 setNeedsLayout];
      }

      else
      {
        swift_endAccess();
        (*v27)(v5, v2);
      }

      v12 += v13;
      --v7;
    }

    while (v7);
  }
}

void closure #1 in TextRenderLayer.SegmentLayer.draw(in:)(void *a1, id a2, void (*a3)(uint64_t, id, id, uint64_t))
{
  v6 = [a2 superlayer];
  if (v6)
  {
    v7 = v6;
    type metadata accessor for TextRenderLayer(0);
    v8 = swift_dynamicCastClass();
    if (v8)
    {
      v9 = v8;
      v10 = a1;
      v11 = a2;
      v12 = v7;
      a3(v9, v10, v11, v9);
    }
  }
}

uint64_t closure #3 in TextRenderLayer.SegmentLayer.draw(in:)(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  *&v5 = MEMORY[0x1EEE9AC00](v3).n128_u64[0];
  v7 = &v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  [a2 contentsScale];
  v10 = a2;
  EnvironmentValues.init()();
  static GraphicsContext.renderingTo(cgContext:environment:deviceScale:content:)();
  return (*(v4 + 8))(v7, v3);
}

void TextRenderLayer.SegmentLayer.updateEffect(dynamic:superlayer:segmentIndex:)(char a1, char *a2, unint64_t a3)
{
  type metadata accessor for RangeSet<Int>(0, &lazy cache variable for type metadata for RangeSet<Int>, MEMORY[0x1E69E6548], MEMORY[0x1E69E7BE0]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v65 - v10;
  v12 = type metadata accessor for Text.Effect.Composition(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Text.Effect.RenderSegmentation.Effect(0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v3;
  v20 = *v3 >> 62;
  if (v20 == 2)
  {
    if (a1)
    {
      return;
    }

    v66 = v3;
    v21 = (v19 & 0x3FFFFFFFFFFFFFFFLL);
    v22 = (v19 & 0x3FFFFFFFFFFFFFFFLL) + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919418DynamicEffectLayer_content;
    v23 = v16;
    swift_beginAccess();
    outlined init with copy of Text.Effect.Composition(v22, v18, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
    v24 = type metadata accessor for StaticEffectLayer(0);
    v25 = a2;
    v26 = objc_allocWithZone(v24);
    outlined init with copy of Text.Effect.Composition(v18, &v26[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919417StaticEffectLayer_content], type metadata accessor for Text.Effect.RenderSegmentation.Effect);
    *&v26[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919417StaticEffectLayer_segmentIndex] = a3;
    v67.receiver = v26;
    v67.super_class = v24;
    v27 = objc_msgSendSuper2(&v67, sel_init);
    [v27 setOpaque_];
    [v27 setNeedsDisplay];
    outlined destroy of Text.Effect.Composition(v18, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
    [v27 setDelegate_];
    outlined init with copy of Text.Effect.Composition(v22 + *(v23 + 24), v14, type metadata accessor for Text.Effect.Composition);
    TextRenderLayer.drawingBounds(for:segmentIndex:allowingNull:)(v14, a3, 0);
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    outlined destroy of Text.Effect.Composition(v14, type metadata accessor for Text.Effect.Composition);
    TextRenderLayer.pixelLength.getter();
    v37 = v36;
    v70.origin.x = v29;
    v70.origin.y = v31;
    v70.size.width = v33;
    v70.size.height = v35;
    MinX = CGRectGetMinX(v70);
    v71.origin.x = v29;
    v71.origin.y = v31;
    v71.size.width = v33;
    v71.size.height = v35;
    MaxX = CGRectGetMaxX(v71);
    v72.origin.x = v29;
    v72.origin.y = v31;
    v72.size.width = v33;
    v72.size.height = v35;
    MinY = CGRectGetMinY(v72);
    v73.origin.x = v29;
    v73.origin.y = v31;
    v73.size.width = v33;
    v73.size.height = v35;
    MaxY = CGRectGetMaxY(v73);
    if ((a3 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v42 = *&v25[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_displacements];
      if (*(v42 + 16) > a3)
      {
        v43 = v37 * floor(MinX / v37);
        v44 = ceil(MaxX / v37);
        v45 = v37 * floor(MinY / v37);
        v46 = v37 * ceil(MaxY / v37);
        v47 = v37 * v44 - v43;
        v48 = v46 - v45;
        [v27 setFrame_];
        [v27 setBounds_];
        [v27 setContentsScale_];

        [v25 insertSublayer:v27 above:v21];
        v49 = 0xC000000000000000;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_16:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  if (v20 != 3)
  {
    goto LABEL_16;
  }

  if ((a1 & 1) == 0)
  {
    return;
  }

  v66 = v3;
  v21 = (v19 & 0x3FFFFFFFFFFFFFFFLL);
  v50 = OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919417StaticEffectLayer_content;
  swift_beginAccess();
  outlined init with copy of Text.Effect.Composition(v21 + v50, v18, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
  v51 = type metadata accessor for DynamicEffectLayer(0);
  v52 = a2;
  v53 = objc_allocWithZone(v51);
  outlined init with copy of Text.Effect.Composition(v18, &v53[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919418DynamicEffectLayer_content], type metadata accessor for Text.Effect.RenderSegmentation.Effect);
  *&v53[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919418DynamicEffectLayer_segmentIndex] = a3;
  v69.receiver = v53;
  v69.super_class = v51;
  v54 = v52;
  v27 = objc_msgSendSuper2(&v69, sel_init);
  [v27 setOpaque_];
  [v27 setNeedsDisplay];
  outlined destroy of Text.Effect.Composition(v18, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
  [v27 setDelegate_];
  v55 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_sharedDrawingSegments;
  swift_beginAccess();
  (*(v9 + 16))(v11, &v54[v55], v8);
  v68 = a3;
  LOBYTE(v55) = RangeSet.contains(_:)();
  (*(v9 + 8))(v11, v8);
  if (v55)
  {
    [v27 setFrame_];
    [v27 setHidden_];
  }

  else
  {
    v56 = v21;
    [v56 frame];
    [v27 setFrame_];
    [v56 bounds];
    v58 = v57;
    v60 = v59;
    v62 = v61;
    v64 = v63;

    [v27 setBounds_];
  }

  [v27 setContentsScale_];
  [v54 insertSublayer:v27 above:v21];
  v49 = 0x8000000000000000;
LABEL_12:
  [v21 removeFromSuperlayer];

  *v66 = v49 | v27;
}

uint64_t TextRenderLayer.drawingBounds(for:segmentIndex:allowingNull:)(uint64_t a1, uint64_t a2, int a3)
{
  v50 = a3;
  v49 = a2;
  v5 = type metadata accessor for Text.Effect.ResolvedDrawing.Operation(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Text.Effect.Composition.Run(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  TextRenderLayer.drawingContext(_:time:)(*(v3 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_time), 0, v52);
  v13 = *(a1 + *(type metadata accessor for Text.Effect.Composition(0) + 24));
  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = v13 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v16 = *(v10 + 72);
    do
    {
      outlined init with copy of Text.Effect.Composition(v15, v12, type metadata accessor for Text.Effect.Composition.Run);
      Text.Effect.Composition.Operation.resolve(line:in:)(a1, v52);
      outlined destroy of Text.Effect.Composition(v12, type metadata accessor for Text.Effect.Composition.Operation);
      v15 += v16;
      --v14;
    }

    while (v14);
  }

  v17 = v52[0];
  v18 = *(v52[0] + 16);
  swift_beginAccess();
  v19 = *(v18 + 16);
  *(v18 + 16) = MEMORY[0x1E69E7CC0];
  v20 = *(v17 + 16);
  v21 = v20[4];
  v54 = v20[3];
  v55 = v21;
  v53 = v20[2];
  v57 = v53;
  v56 = v54;
  v58 = *(&v21 + 1);
  v59[0] = v21;
  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  width = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
  v26 = *(v19 + 16);
  if (v26)
  {
    v27 = v19 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    outlined init with copy of Text.Effect.BaseFragmentIdentifierMap(&v57, v51);
    outlined init with copy of Text.Effect.Keyframes(&v56, v51);

    outlined init with copy of [Int : CGFloat](v59, v51);
    outlined init with copy of Text.Effect.Composition(&v58, v51, type metadata accessor for [Text.Effect.RelativeIdentifierKey : CGFloat]);
    v28 = *(v6 + 72);
    do
    {
      outlined init with copy of Text.Effect.Composition(v27, v8, type metadata accessor for Text.Effect.ResolvedDrawing.Operation);
      Text.Effect.ResolvedDrawing.Operation.drawingBounds(context:)(&v53);
      v66.origin.x = v29;
      v66.origin.y = v30;
      v66.size.width = v31;
      v66.size.height = v32;
      v60.origin.x = x;
      v60.origin.y = y;
      v60.size.width = width;
      v60.size.height = height;
      v61 = CGRectUnion(v60, v66);
      x = v61.origin.x;
      y = v61.origin.y;
      width = v61.size.width;
      height = v61.size.height;
      outlined destroy of Text.Effect.Composition(v8, type metadata accessor for Text.Effect.ResolvedDrawing.Operation);
      v27 += v28;
      --v26;
    }

    while (v26);
  }

  else
  {
    outlined init with copy of Text.Effect.BaseFragmentIdentifierMap(&v57, v51);
    outlined init with copy of Text.Effect.Keyframes(&v56, v51);

    outlined init with copy of [Int : CGFloat](v59, v51);
    outlined init with copy of Text.Effect.Composition(&v58, v51, type metadata accessor for [Text.Effect.RelativeIdentifierKey : CGFloat]);
  }

  outlined destroy of Text.Effect.BaseFragmentIdentifierMap(&v57);
  outlined destroy of Text.Effect.Keyframes(&v56);

  outlined destroy of [Int : CGFloat](v59);
  outlined destroy of Text.Effect.Composition(&v58, type metadata accessor for [Text.Effect.RelativeIdentifierKey : CGFloat]);
  v33 = v49;
  TextRenderLayer.correctionMarkersBounds(composition:segmentIndex:)(a1, v49, TextRenderLayer.correctionMarkersBounds(line:glyphOrigin:ranges:metrics:), v34);
  v67.origin.x = v35;
  v67.origin.y = v36;
  v67.size.width = v37;
  v67.size.height = v38;
  v62.origin.x = x;
  v62.origin.y = y;
  v62.size.width = width;
  v62.size.height = height;
  v63 = CGRectUnion(v62, v67);
  v39 = v63.origin.x;
  v40 = v63.origin.y;
  v41 = v63.size.width;
  v42 = v63.size.height;
  TextRenderLayer.correctionMarkersBounds(composition:segmentIndex:)(a1, v33, TextRenderLayer.markedTextBounds(line:glyphOrigin:ranges:metrics:), v63.origin);
  v68.origin.x = v43;
  v68.origin.y = v44;
  v68.size.width = v45;
  v68.size.height = v46;
  v64.origin.x = v39;
  v64.origin.y = v40;
  v64.size.width = v41;
  v64.size.height = v42;
  v65 = CGRectUnion(v64, v68);
  CGRectIsNull(v65);
}

id TextRenderLayer.init(layer:)(void *a1)
{
  ObjectType = swift_getObjectType();
  type metadata accessor for TextRenderLayer.Layout?(0, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v28 - v5;
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_fragment;
  *&v1[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_fragment] = 0;
  v8 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_layout;
  v9 = type metadata accessor for TextRenderLayer.Layout(0);
  (*(*(v9 - 8) + 56))(&v1[v8], 1, 1, v9);
  v10 = &v1[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_rawLayout];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 4) = 0;
  *&v1[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_markers] = 0;
  v29 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_updateFlags;
  v1[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_updateFlags] = 0;
  v11 = MEMORY[0x1E69E7CC8];
  *&v1[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_interactionMetrics] = MEMORY[0x1E69E7CC8];
  v12 = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_segmentLayers] = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_effectToSegmentsIndices] = v11;
  v13 = MEMORY[0x1E69E7CD0];
  *&v1[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_effectIdentifiers] = MEMORY[0x1E69E7CD0];
  *&v1[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_version] = -1;
  RangeSet.init()();
  *&v1[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_sharedDrawingLayer] = 0;
  *&v1[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_displacements] = v12;
  v14 = &v1[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_layoutBounds];
  *v14 = 0u;
  v14[1] = 0u;
  v15 = &v1[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_layoutBoundsNaturalOutsets];
  *v15 = 0u;
  v15[1] = 0u;
  *&v1[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_layoutLineFragmentPadding] = 0;
  v16 = &v1[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_currentDisplacement];
  *v16 = 0u;
  v16[1] = 0u;
  *&v1[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_activeIdentifiers] = v13;
  v17 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_time;
  *&v1[v17] = CACurrentMediaTime();
  v30 = a1;
  outlined init with copy of Any(a1, v33);
  if (swift_dynamicCast())
  {
    v18 = v32;
    *&v1[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_animationController] = *&v32[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_animationController];
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakAssign();

    v20 = *&v18[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_fragment];
    v21 = *&v1[v7];
    *&v1[v7] = v20;
    v22 = v20;

    v23 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_layout;
    swift_beginAccess();
    outlined init with copy of TextRenderLayer.Layout?(&v18[v23], v6, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
    swift_beginAccess();
    outlined assign with take of TextRenderLayer.Layout?(v6, &v1[v8]);
    swift_endAccess();
    v1[v29] = 15;
    v24 = *&v18[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_baseFragmentIdentifierMap + 8];
    v25 = &v1[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_baseFragmentIdentifierMap];
    *v25 = *&v18[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_baseFragmentIdentifierMap];
    v25[1] = v24;
    v31.receiver = v1;
    v31.super_class = ObjectType;

    v26 = objc_msgSendSuper2(&v31, sel_initWithLayer_, v18);

    __swift_destroy_boxed_opaque_existential_0(v30);
    return v26;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t @objc TextLinesLayer.init(layer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *))
{
  swift_unknownObjectRetain();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  return a4(&v6);
}

void TextRenderLayer.drawingContext(_:time:)(double a1@<X1>, char a2@<W2>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v5 = *(v3 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_time);
  }

  else
  {
    v5 = a1;
  }

  v6 = *(v3 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_baseFragmentIdentifierMap);
  v7 = *(v3 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_baseFragmentIdentifierMap + 8);
  v8 = *(v3 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_animationController);
  swift_beginAccess();
  v9 = *(v8 + 112);
  swift_retain_n();

  v10 = Text.Effect.Composition.displacements(at:context:)(v6, v7, v9, v8, v5);
  v12 = v11;

  type metadata accessor for Text.Effect.DrawingContext.Storage.Shared();
  v13 = swift_allocObject();
  v13[3] = v5;
  *(v13 + 4) = v6;
  *(v13 + 5) = v7;
  *(v13 + 6) = v9;
  *(v13 + 7) = v8;
  *(v13 + 8) = v10;
  *(v13 + 9) = v12;
  *(v13 + 2) = MEMORY[0x1E69E7CC0];
  type metadata accessor for Text.Effect.DrawingContext.Storage();
  v14 = swift_allocObject();
  *(v14 + 32) = 0;
  *(v14 + 40) = 0;
  *(v14 + 48) = 0x3FF0000000000000;
  *(v14 + 56) = 0;
  *(v14 + 64) = 0;
  *(v14 + 72) = 0x3FF0000000000000;
  *(v14 + 80) = 0;
  *(v14 + 88) = 0;
  *(v14 + 96) = 1;
  *(v14 + 104) = 0u;
  *(v14 + 120) = 0u;
  *(v14 + 136) = 0u;
  __asm { FMOV            V1.2D, #1.0 }

  *(v14 + 152) = _Q1;
  *(v14 + 168) = 0x3FF0000000000000;
  *(v14 + 176) = 0;
  *(v14 + 184) = 0u;
  *(v14 + 200) = 0u;
  *(v14 + 216) = 0;
  *(v14 + 16) = v13;
  *(v14 + 24) = 0x3FF0000000000000;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = *&Strong[OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_contentsScale];
  }

  else
  {
    v21 = 1.0;
  }

  *a3 = v14;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 1;
  *(a3 + 40) = v21;
}

void TextRenderLayer.drawCorrectionMarkers(composition:characterRanges:metrics:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35[2] = a4;
  v8 = MEMORY[0x1E69E6720];
  type metadata accessor for TextRenderLayer.Layout?(0, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v35 - v10;
  v12 = type metadata accessor for TextRenderLayer.Layout(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TextRenderLayer.Layout?(0, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics, v8);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v35 - v17;
  v19 = *(v4 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_markers);
  if (!v19 || !*(v19 + 16))
  {
    return;
  }

  type metadata accessor for Text.Effect.Composition(0);
  outlined init with copy of Text.Effect.Composition(a3, v18, type metadata accessor for Text.Effect.InteractionMetrics);
  v20 = type metadata accessor for Text.Effect.InteractionMetrics(0);
  (*(*(v20 - 8) + 56))(v18, 0, 1, v20);
  v21 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_layout;
  swift_beginAccess();
  outlined init with copy of TextRenderLayer.Layout?(v4 + v21, v11, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    outlined destroy of TextRenderLayer.Layout?(v18, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics);
    outlined destroy of TextRenderLayer.Layout?(v11, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
    return;
  }

  outlined init with take of TextRenderLayer.Layout(v11, v15, type metadata accessor for TextRenderLayer.Layout);
  TextRenderLayer.correctionMarkers(for:)(a2, v22);
  if (!v23)
  {
    goto LABEL_17;
  }

  if (!*(v23 + 16))
  {

LABEL_17:
    outlined destroy of TextRenderLayer.Layout?(v18, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics);
    goto LABEL_18;
  }

  v24 = *&v15[*(v12 + 44)];
  v35[1] = v23;
  v25 = Text.Effect.Markers.layoutInfo(for:glyphOrigin:metrics:layoutAttributedString:)(a1, v18, v24, v23);
  v26 = v25;
  v27 = *(v25 + 2);
  if (!v27)
  {
LABEL_15:

    outlined destroy of TextRenderLayer.Layout?(v18, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics);

LABEL_18:
    outlined destroy of Text.Effect.Composition(v15, type metadata accessor for TextRenderLayer.Layout);
    return;
  }

  v28 = 0;
  v29 = (v25 + 32);
  v30 = *(v25 + 2);
  while (v28 < v30)
  {
    if (v27 == v28)
    {
      goto LABEL_21;
    }

    outlined init with copy of Text.Effect.MarkerLayoutInfo.Element(v29, &v39);
    if (v40 == 1)
    {
      v31 = v39;
      outlined init with copy of TextEffectsAnimationController.Timing?(&v41, &v36, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
      if (!v37)
      {
        goto LABEL_22;
      }

      v32 = outlined init with take of Any(&v36, v38);
      MEMORY[0x1EEE9AC00](v32);
      v35[-4] = v31;
      v35[-3] = v38;
      v33 = &v39;
      GraphicsContext.withCGContext(content:)();
      __swift_destroy_boxed_opaque_existential_0(v38);
    }

    ++v28;
    outlined destroy of Text.Effect.MarkerLayoutInfo.Element(&v39);
    v30 = *(v26 + 2);
    v29 += 96;
    if (v28 == v30)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  outlined destroy of TextEffectsAnimationController.Timing?(&v36, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
  v34 = 0;
  v33 = 1243;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void TextRenderLayer.textMarkers(for:)(uint64_t a1, __n128 a2)
{
  v38 = a1;
  type metadata accessor for _SetStorage<Text.Effect.Identifier>(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>.Ranges, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BA8]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v37 = &v30 - v6;
  type metadata accessor for IndexingIterator<RangeSet<Text.Layout.CharacterIndex>.Ranges>(0);
  v36 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_markers);
  if (v10)
  {
    v35 = *(v10 + 16);
    if (v35)
    {
      v32 = (v5 + 16);
      v33 = v10 + 32;
      v31 = (v5 + 8);

      v12 = 0;
      v40 = MEMORY[0x1E69E7CC0];
      v34 = v11;
      do
      {
        if (v12 >= *(v11 + 16))
        {
          __break(1u);
          return;
        }

        v39 = v12;
        v13 = v33 + 32 * v12;
        v14 = *(v13 + 8);
        v15 = *(v13 + 16);
        v16 = *(v13 + 24);
        v41 = *v13;
        outlined copy of Text.Effect.Markers.MarkerType(v41, v14);
        type metadata accessor for _SetStorage<Text.Effect.Identifier>(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BE0]);
        v17 = v37;
        RangeSet.ranges.getter();
        v18.n128_f64[0] = (*v32)(v9, v17, v4);
        v19 = *(v36 + 36);
        lazy protocol witness table accessor for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges, MEMORY[0x1E69E7BC8], v18);
        dispatch thunk of Collection.startIndex.getter();
        (*v31)(v17, v4);
        while (1)
        {
          dispatch thunk of Collection.endIndex.getter();
          if (*&v9[v19] == v42[0])
          {
            break;
          }

          v20 = dispatch thunk of Collection.subscript.read();
          v22 = *v21;
          v23 = v21[1];
          v20(v42, 0);
          dispatch thunk of Collection.formIndex(after:)();
          if (v15 > v22)
          {
            v22 = v15;
          }

          if (v16 >= v23)
          {
            v24 = v23;
          }

          else
          {
            v24 = v16;
          }

          if (!((v22 >= v24) | v14 & 1))
          {

            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v25 = v40;
            }

            else
            {
              v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v40 + 2) + 1, 1, v40);
            }

            v27 = *(v25 + 2);
            v26 = *(v25 + 3);
            v28 = (v27 + 1);
            if (v27 >= v26 >> 1)
            {
              v40 = (v27 + 1);
              v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v25);
              v28 = v40;
            }

            *(v25 + 2) = v28;
            v40 = v25;
            v29 = &v25[32 * v27];
            *(v29 + 4) = v41;
            v29[40] = 0;
            *(v29 + 6) = v22;
            *(v29 + 7) = v24;
          }
        }

        v12 = v39 + 1;
        outlined destroy of Text.Effect.Composition(v9, type metadata accessor for IndexingIterator<RangeSet<Text.Layout.CharacterIndex>.Ranges>);
        outlined consume of Text.Effect.Markers.MarkerType(v41, v14);
        v11 = v34;
      }

      while (v12 != v35);

      if (*(v40 + 2))
      {
        return;
      }

      goto LABEL_21;
    }

    if (!*(MEMORY[0x1E69E7CC0] + 16))
    {
LABEL_21:
    }
  }
}

uint64_t TextRenderLayer.correctionMarkersBounds(line:glyphOrigin:ranges:metrics:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = a3;
  type metadata accessor for TextRenderLayer.Layout?(0, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v40 - v7;
  v9 = type metadata accessor for TextRenderLayer.Layout(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_layout;
  swift_beginAccess();
  outlined init with copy of TextRenderLayer.Layout?(v3 + v13, v8, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of TextRenderLayer.Layout?(v8, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
  }

  outlined init with take of TextRenderLayer.Layout(v8, v12, type metadata accessor for TextRenderLayer.Layout);
  TextRenderLayer.correctionMarkers(for:)(a2, v15);
  if (!v16)
  {
    return outlined destroy of Text.Effect.Composition(v12, type metadata accessor for TextRenderLayer.Layout);
  }

  v17 = *&v12[*(v9 + 44)];
  v18 = v41;
  v41 = v16;
  v19 = Text.Effect.Markers.layoutInfo(for:glyphOrigin:metrics:layoutAttributedString:)(a1, v18, v17, v16);
  v20 = v19;
  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  width = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
  v25 = *(v19 + 2);
  if (v25)
  {
    v26 = 0;
    v27 = (v19 + 32);
    v28 = MEMORY[0x1E69E7CA0];
    v29 = *(v19 + 2);
    while (v26 < v29)
    {
      if (v25 == v26)
      {
        goto LABEL_16;
      }

      outlined init with copy of Text.Effect.MarkerLayoutInfo.Element(v27, &v46);
      if (v47 == 1)
      {
        v30 = v46;
        outlined init with copy of TextEffectsAnimationController.Timing?(&v48, &v42, &lazy cache variable for type metadata for Any?, v28 + 8);
        if (!v43)
        {
          goto LABEL_17;
        }

        outlined init with take of Any(&v42, &v44);
        __swift_project_boxed_opaque_existential_0(&v44, v45);
        v31 = _bridgeAnythingToObjectiveC<A>(_:)();
        _NSTextCorrectionMarkerBounds(v30, v31);
        v33 = v32;
        v35 = v34;
        v37 = v36;
        v39 = v38;
        swift_unknownObjectRelease();
        v49.origin.x = x;
        v49.origin.y = y;
        v49.size.width = width;
        v49.size.height = height;
        v51.origin.x = v33;
        v51.origin.y = v35;
        v51.size.width = v37;
        v51.size.height = v39;
        v50 = CGRectUnion(v49, v51);
        x = v50.origin.x;
        y = v50.origin.y;
        width = v50.size.width;
        height = v50.size.height;
        outlined destroy of Text.Effect.MarkerLayoutInfo.Element(&v46);
        __swift_destroy_boxed_opaque_existential_0(&v44);
      }

      else
      {
        outlined destroy of Text.Effect.MarkerLayoutInfo.Element(&v46);
      }

      ++v26;
      v29 = *(v20 + 2);
      v27 += 96;
      if (v26 == v29)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    outlined destroy of TextEffectsAnimationController.Timing?(&v42, &lazy cache variable for type metadata for Any?, v28 + 8);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_13:

    return outlined destroy of Text.Effect.Composition(v12, type metadata accessor for TextRenderLayer.Layout);
  }

  return result;
}

void TextRenderLayer.correctionMarkersBounds(composition:segmentIndex:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, char *, uint64_t, double, double), __n128 a4)
{
  v78 = a2;
  type metadata accessor for _SetStorage<Text.Effect.Identifier>(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BE0]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v66 - v10;
  type metadata accessor for TextRenderLayer.Layout?(0, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v66 - v13;
  v15 = type metadata accessor for Text.Effect.Composition.Run(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v66 - v20;
  v22 = type metadata accessor for Text.Effect.InteractionMetrics(0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = (&v66 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = *(v4 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_markers);
  if (v27 && *(v27 + 16))
  {
    v70 = a3;
    v71 = v16;
    v72 = a1;
    v73 = v14;
    v75 = v24;
    v76 = v26;
    v77 = v23;
    v68 = v11;
    v69 = v9;
    v28 = *(v4 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_time);
    v30 = *(v4 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_baseFragmentIdentifierMap);
    v29 = *(v4 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_baseFragmentIdentifierMap + 8);
    v31 = *(v4 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_animationController);
    swift_beginAccess();
    v32 = *(v31 + 112);
    v33 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_interactionMetrics;
    swift_beginAccess();
    v74 = v4;
    v34 = *(v4 + v33);
    if (*(v34 + 16) && (v35 = specialized __RawDictionaryStorage.find<A>(_:)(v78), (v36 & 1) != 0))
    {
      outlined init with copy of Text.Effect.Composition(*(v34 + 56) + *(v75 + 72) * v35, v76, type metadata accessor for Text.Effect.InteractionMetrics);
      swift_endAccess();
    }

    else
    {
      v66 = v33;
      v67 = v8;
      v37 = swift_endAccess();
      v39 = v76;
      v38 = v77;
      *v76 = MEMORY[0x1E69E7CC0];
      lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex(v37, v40, v41);
      v80 = v30;

      RangeSet.init()();
      *(v39 + *(v38 + 24)) = MEMORY[0x1E69E7CD0];
      v42 = (v39 + *(v38 + 28));
      v43 = type metadata accessor for Text.Effect.Composition(0);
      *v42 = 0;
      v42[1] = 0;
      v44 = *(v43 + 24);
      v79 = v32;
      v45 = v72;
      v46 = *(v72 + v44);
      v47 = *(v46 + 16);
      if (v47)
      {
        v48 = v46 + ((*(v71 + 80) + 32) & ~*(v71 + 80));
        v49 = *(v71 + 72);
        do
        {
          outlined init with copy of Text.Effect.Composition(v48, v21, type metadata accessor for Text.Effect.Composition.Run);
          Text.Effect.Composition.Operation.appendInteractionMetrics(to:at:line:context:)(v39, v45, v80, v29, v79, v31, v28);
          outlined destroy of Text.Effect.Composition(v21, type metadata accessor for Text.Effect.Composition.Operation);
          v48 += v49;
          --v47;
        }

        while (v47);
      }

      v50 = v73;
      outlined init with copy of Text.Effect.Composition(v39, v73, type metadata accessor for Text.Effect.InteractionMetrics);
      (*(v75 + 56))(v50, 0, 1, v77);
      swift_beginAccess();
      specialized Dictionary.subscript.setter(v50, v78);
      swift_endAccess();

      v8 = v67;
    }

    v51 = v70;
    v52 = type metadata accessor for Text.Effect.Composition(0);
    v53 = v72;
    v54 = (v72 + *(v52 + 20));
    v55 = *v54;
    v56 = v54[1];
    lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex(v52, v57, v58);
    v59 = v68;
    RangeSet.init()();
    v60 = *(v53 + *(v52 + 24));
    v61 = *(v60 + 16);
    if (v61)
    {
      v62 = v60 + ((*(v71 + 80) + 32) & ~*(v71 + 80));
      v63 = *(v71 + 72);
      do
      {
        outlined init with copy of Text.Effect.Composition(v62, v18, type metadata accessor for Text.Effect.Composition.Run);
        Text.Effect.Composition.Operation.appendCharacterRanges(line:to:)(v53, v59);
        outlined destroy of Text.Effect.Composition(v18, type metadata accessor for Text.Effect.Composition.Operation);
        v62 += v63;
        --v61;
      }

      while (v61);
    }

    v64 = v76;
    v65 = v73;
    outlined init with copy of Text.Effect.Composition(v76, v73, type metadata accessor for Text.Effect.InteractionMetrics);
    (*(v75 + 56))(v65, 0, 1, v77);
    v51(v53, v59, v65, v55, v56);
    outlined destroy of TextRenderLayer.Layout?(v65, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics);
    (*(v69 + 8))(v59, v8);
    outlined destroy of Text.Effect.Composition(v64, type metadata accessor for Text.Effect.InteractionMetrics);
  }
}

void TextRenderLayer.markedTextBounds(line:glyphOrigin:ranges:metrics:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v78 = a1;
  v79 = a3;
  type metadata accessor for TextRenderLayer.Layout?(0, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v67 - v6;
  v8 = type metadata accessor for TextRenderLayer.Layout(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_layout;
  swift_beginAccess();
  outlined init with copy of TextRenderLayer.Layout?(v3 + v12, v7, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
  v13 = (*(v9 + 48))(v7, 1, v8);
  v14 = MEMORY[0x1E695F050];
  if (v13 == 1)
  {
    outlined destroy of TextRenderLayer.Layout?(v7, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
  }

  else
  {
    outlined init with take of TextRenderLayer.Layout(v7, v11, type metadata accessor for TextRenderLayer.Layout);
    v15 = *(v3 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_fragment);
    v16 = v11;
    if (v15)
    {
      v17 = v15;
      TextRenderLayer.textMarkers(for:)(a2, v18);
      if (v19)
      {
        v20 = Text.Effect.Markers.layoutInfo(for:glyphOrigin:metrics:layoutAttributedString:)(v78, v79, *(v16 + *(v8 + 44)), v19);

        v21 = swift_allocObject();
        v22 = v14[1];
        *(v21 + 16) = *v14;
        v67[2] = v21 + 16;
        v68 = v21;
        *(v21 + 32) = v22;
        v23 = *(v20 + 2);
        if (v23)
        {
          v24 = v20 + 32;
          swift_beginAccess();
          v25 = 0;
          v67[1] = v81;
          v67[0] = 1107296256;
          v72 = v17;
          v73 = v16;
          v70 = v23;
          v71 = v20;
          v69 = v20 + 32;
          while (v25 < *(v20 + 2))
          {
            outlined init with copy of Text.Effect.MarkerLayoutInfo.Element(&v24[96 * v25], v83);
            if (v83[8])
            {
              outlined destroy of Text.Effect.MarkerLayoutInfo.Element(v83);
            }

            else
            {
              v26 = [v17 textLineFragments];
              type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSTextLineFragment, 0x1E69DB830);
              v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              v74 = v25;
              if (v27 >> 62)
              {
                if (v27 < 0)
                {
                  v66 = v27;
                }

                else
                {
                  v66 = v27 & 0xFFFFFFFFFFFFFF8;
                }

                v28 = MEMORY[0x19A8BDCD0](v66);
                if (v28)
                {
LABEL_13:
                  v29 = 0;
                  v30 = v85;
                  v77 = v27 & 0xFFFFFFFFFFFFFF8;
                  v78 = v27 & 0xC000000000000001;
                  v79 = v84;
                  v76 = v85 - v84;
                  v31 = __OFSUB__(v85, v84);
                  v75 = v31;
                  while (1)
                  {
                    if (v78)
                    {
                      v32 = MEMORY[0x19A8BDB80](v29, v27);
                    }

                    else
                    {
                      if (v29 >= *(v77 + 16))
                      {
                        goto LABEL_48;
                      }

                      v32 = *(v27 + 8 * v29 + 32);
                    }

                    v33 = v32;
                    v34 = v29 + 1;
                    if (__OFADD__(v29, 1))
                    {
                      break;
                    }

                    v35 = v27;
                    v36 = [v32 characterRange];
                    v38 = v37;
                    v39 = Text.Layout.CharacterIndex.init(_:)();
                    if (__OFADD__(v36, v38))
                    {
                      goto LABEL_45;
                    }

                    v40 = Text.Layout.CharacterIndex.init(_:)();
                    if (v40 < v39)
                    {
                      goto LABEL_46;
                    }

                    if (v39 < v30 && v79 < v40)
                    {
                      if (__OFSUB__(v40, v39))
                      {
                        goto LABEL_47;
                      }

                      if (v40 != v39)
                      {
                        if (v75)
                        {
                          goto LABEL_49;
                        }

                        if (v76)
                        {

                          v42 = v68;
                          v44 = v68[4];
                          v43 = v68[5];
                          v46 = v68[2];
                          v45 = v68[3];
                          v47 = objc_allocWithZone(MEMORY[0x1E69DB790]);
                          v48 = [v47 initWithRange_];
                          outlined init with copy of Text.Effect.MarkerLayoutInfo.Element(v83, v82);
                          v49 = swift_allocObject();
                          v50 = v82[3];
                          *(v49 + 48) = v82[2];
                          *(v49 + 64) = v50;
                          v51 = v82[5];
                          *(v49 + 80) = v82[4];
                          *(v49 + 96) = v51;
                          v52 = v82[1];
                          *(v49 + 16) = v82[0];
                          *(v49 + 32) = v52;
                          *(v49 + 112) = v42;
                          v81[2] = partial apply for closure #1 in TextRenderLayer.markedTextBounds(line:glyphOrigin:ranges:metrics:);
                          v81[3] = v49;
                          v80[0] = MEMORY[0x1E69E9820];
                          v80[1] = v67[0];
                          v81[0] = thunk for @escaping @callee_guaranteed (@unowned CGRect, @guaranteed NSTextRange) -> (@unowned CGRect);
                          v81[1] = &block_descriptor_128;
                          v53 = _Block_copy(v80);

                          _NSMarkedTextBounds(v33, v48, v53);
                          v55 = v54;
                          v57 = v56;
                          v59 = v58;
                          v61 = v60;
                          _Block_release(v53);

                          v86.origin.x = v46;
                          v86.origin.y = v45;
                          v86.size.width = v44;
                          v86.size.height = v43;
                          v88.origin.x = v55;
                          v88.origin.y = v57;
                          v88.size.width = v59;
                          v88.size.height = v61;
                          v87 = CGRectUnion(v86, v88);
                          x = v87.origin.x;
                          y = v87.origin.y;
                          width = v87.size.width;
                          height = v87.size.height;

                          outlined destroy of Text.Effect.MarkerLayoutInfo.Element(v83);
                          v42[2] = x;
                          v42[3] = y;
                          v42[4] = width;
                          v42[5] = height;
                          goto LABEL_40;
                        }
                      }
                    }

                    ++v29;
                    v27 = v35;
                    if (v34 == v28)
                    {
                      goto LABEL_39;
                    }
                  }

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
                  break;
                }
              }

              else
              {
                v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v28)
                {
                  goto LABEL_13;
                }
              }

LABEL_39:

              outlined destroy of Text.Effect.MarkerLayoutInfo.Element(v83);
LABEL_40:
              v17 = v72;
              v16 = v73;
              v23 = v70;
              v20 = v71;
              v24 = v69;
              v25 = v74;
            }

            if (++v25 == v23)
            {
              goto LABEL_42;
            }
          }

          __break(1u);
        }

        else
        {
LABEL_42:

          outlined destroy of Text.Effect.Composition(v16, type metadata accessor for TextRenderLayer.Layout);
          swift_beginAccess();
        }
      }

      else
      {
        outlined destroy of Text.Effect.Composition(v16, type metadata accessor for TextRenderLayer.Layout);
      }
    }

    else
    {
      outlined destroy of Text.Effect.Composition(v11, type metadata accessor for TextRenderLayer.Layout);
    }
  }
}

void TextRenderLayer.correctionMarkers(for:)(uint64_t a1, __n128 a2)
{
  v39 = a1;
  type metadata accessor for _SetStorage<Text.Effect.Identifier>(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>.Ranges, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BA8]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v38 = &v31 - v6;
  type metadata accessor for IndexingIterator<RangeSet<Text.Layout.CharacterIndex>.Ranges>(0);
  v37 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_markers);
  if (v10)
  {
    v36 = *(v10 + 16);
    if (v36)
    {
      v33 = (v5 + 16);
      v34 = v10 + 32;
      v32 = (v5 + 8);

      v12 = 0;
      v42 = MEMORY[0x1E69E7CC0];
      v35 = v11;
      do
      {
        if (v12 >= *(v11 + 16))
        {
          __break(1u);
          return;
        }

        v13 = v34 + 32 * v12;
        v14 = *v13;
        v15 = *(v13 + 8);
        v16 = *(v13 + 16);
        v17 = *(v13 + 24);
        v40 = v12;
        v41 = v14;
        outlined copy of Text.Effect.Markers.MarkerType(v14, v15);
        type metadata accessor for _SetStorage<Text.Effect.Identifier>(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BE0]);
        v18 = v38;
        RangeSet.ranges.getter();
        v19.n128_f64[0] = (*v33)(v9, v18, v4);
        v20 = *(v37 + 36);
        lazy protocol witness table accessor for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges, MEMORY[0x1E69E7BC8], v19);
        dispatch thunk of Collection.startIndex.getter();
        (*v32)(v18, v4);
        while (1)
        {
          dispatch thunk of Collection.endIndex.getter();
          if (*&v9[v20] == v43[0])
          {
            break;
          }

          v21 = dispatch thunk of Collection.subscript.read();
          v23 = *v22;
          v24 = v22[1];
          v21(v43, 0);
          dispatch thunk of Collection.formIndex(after:)();
          if (v16 > v23)
          {
            v23 = v16;
          }

          if (v17 >= v24)
          {
            v25 = v24;
          }

          else
          {
            v25 = v17;
          }

          if (((v23 < v25) & v15) != 0)
          {
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v26 = v42;
            }

            else
            {
              v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v42 + 2) + 1, 1, v42);
            }

            v28 = *(v26 + 2);
            v27 = *(v26 + 3);
            v29 = (v28 + 1);
            if (v28 >= v27 >> 1)
            {
              v42 = (v28 + 1);
              v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v26);
              v29 = v42;
            }

            *(v26 + 2) = v29;
            v42 = v26;
            v30 = &v26[32 * v28];
            *(v30 + 4) = v41;
            v30[40] = 1;
            *(v30 + 6) = v23;
            *(v30 + 7) = v25;
          }
        }

        v12 = v40 + 1;
        outlined destroy of Text.Effect.Composition(v9, type metadata accessor for IndexingIterator<RangeSet<Text.Layout.CharacterIndex>.Ranges>);
        outlined consume of Text.Effect.Markers.MarkerType(v41, v15);
        v11 = v35;
      }

      while (v12 != v36);

      if (*(v42 + 2))
      {
        return;
      }

      goto LABEL_21;
    }

    if (!*(MEMORY[0x1E69E7CC0] + 16))
    {
LABEL_21:
    }
  }
}

void closure #1 in TextRenderLayer.drawTextMarkersBackground(markers:line:glyphOrigin:ranges:metrics:in:)(const char *a1, _BYTE *a2, void *a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v11[4] = partial apply for closure #1 in closure #1 in TextRenderLayer.drawTextMarkersBackground(markers:line:glyphOrigin:ranges:metrics:in:);
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed (@unowned CGRect, @guaranteed NSTextRange) -> (@unowned CGRect);
  v11[3] = &block_descriptor_90;
  v9 = _Block_copy(v11);
  v10 = a3;

  LOBYTE(a1) = _NSMarkedTextDrawBackground(v10, a1, v9);
  _Block_release(v9);
  *a2 = a1;
}

double thunk for @escaping @callee_guaranteed (@unowned CGRect, @guaranteed NSTextRange) -> (@unowned CGRect)(uint64_t a1, void *a2, double a3, double a4, double a5, double a6)
{
  v11 = *(a1 + 32);

  v12 = a2;
  v13 = v11(a3, a4, a5, a6);

  return v13;
}

void closure #1 in TextRenderLayer.drawTextMarkersIndicator(markers:line:glyphOrigin:ranges:metrics:in:)(const char *a1, void *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v9[4] = partial apply for closure #1 in closure #1 in TextRenderLayer.drawTextMarkersIndicator(markers:line:glyphOrigin:ranges:metrics:in:);
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed (@unowned CGRect, @guaranteed NSTextRange) -> (@unowned CGRect);
  v9[3] = &block_descriptor_96;
  v7 = _Block_copy(v9);
  v8 = a2;

  _NSMarkedTextDrawIndicator(v8, a1, v7);
  _Block_release(v7);
}

void closure #1 in closure #1 in TextRenderLayer.drawTextMarkersBackground(markers:line:glyphOrigin:ranges:metrics:in:)(double a1, uint64_t a2, void *a3, uint64_t a4)
{
  NSTextRange.textRange.getter();
  if ((v9 & 1) == 0)
  {
    v10 = Range<>.relative(to:)(a3, v7, v8);
    Text.Effect.MarkerLayoutInfo.rect(for:with:)(v10, v11, a4, a1);
  }
}

double closure #1 in TextRenderLayer.drawCorrectionMarkers(line:glyphOrigin:ranges:metrics:in:)(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_0(a3, a3[3]);
  v5 = _bridgeAnythingToObjectiveC<A>(_:)();
  _NSTextCorrectionMarkerDraw(a2, v5, a1);
  swift_unknownObjectRelease();
  return result;
}

void TextRenderLayer.ensureUnsharedDrawing(for:)(unint64_t a1)
{
  v2 = v1;
  v74 = a1;
  type metadata accessor for RangeSet<Int>(0, &lazy cache variable for type metadata for RangeSet<Int>, MEMORY[0x1E69E6548], MEMORY[0x1E69E7BE0]);
  v71 = v3;
  v70 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v69 = &v67 - v4;
  v5 = type metadata accessor for Text.Effect.RenderSegmentation.Segment(0);
  v73 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for Text.Effect.RenderSegmentation.Effect(0);
  MEMORY[0x1EEE9AC00](v68);
  v72 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TextRenderLayer.Layout?(0, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v67 - v10;
  v12 = type metadata accessor for TextRenderLayer.Layout(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_layout;
  swift_beginAccess();
  v17 = v2 + v16;
  v18 = v2;
  outlined init with copy of TextRenderLayer.Layout?(v17, v11, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    outlined destroy of TextRenderLayer.Layout?(v11, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
    return;
  }

  outlined init with take of TextRenderLayer.Layout(v11, v15, type metadata accessor for TextRenderLayer.Layout);
  v19 = v74;
  if ((v74 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_29;
  }

  v20 = *&v15[*(v12 + 24)];
  if (*(v20 + 16) <= v74)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  outlined init with copy of Text.Effect.Composition(v20 + ((v73[80] + 32) & ~v73[80]) + *(v73 + 9) * v74, v7, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    outlined destroy of Text.Effect.Composition(v15, type metadata accessor for TextRenderLayer.Layout);
    v58 = type metadata accessor for Text.Effect.RenderSegmentation.Segment;
    v59 = v7;
LABEL_27:
    outlined destroy of Text.Effect.Composition(v59, v58);
    return;
  }

  v73 = v15;
  v21 = v7;
  v22 = v72;
  outlined init with take of TextRenderLayer.Layout(v21, v72, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
  v23 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_sharedDrawingSegments;
  swift_beginAccess();
  v24 = v70;
  v25 = v2 + v23;
  v26 = v69;
  v27 = v71;
  v67 = *(v70 + 16);
  v67(v69, v25, v71);
  v75 = v19;
  v28 = RangeSet.contains(_:)();
  v29 = *(v24 + 8);
  v29(v26, v27);
  if ((v28 & 1) == 0)
  {
    v60 = v22;
    goto LABEL_24;
  }

  v76 = v19;
  v77 = v19 + 1;
  swift_beginAccess();
  RangeSet.remove(contentsOf:)();
  swift_endAccess();
  v30 = v18;
  TextRenderLayer.drawingBounds(for:segmentIndex:allowingNull:)(v22 + *(v68 + 24), v19, 0);
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  TextRenderLayer.pixelLength.getter();
  v40 = v39;
  v78.origin.x = v32;
  v78.origin.y = v34;
  v78.size.width = v36;
  v78.size.height = v38;
  MinX = CGRectGetMinX(v78);
  v79.origin.x = v32;
  v79.origin.y = v34;
  v79.size.width = v36;
  v79.size.height = v38;
  MaxX = CGRectGetMaxX(v79);
  v80.origin.x = v32;
  v80.origin.y = v34;
  v80.size.width = v36;
  v80.size.height = v38;
  MinY = CGRectGetMinY(v80);
  v81.origin.x = v32;
  v81.origin.y = v34;
  v81.size.width = v36;
  v81.size.height = v38;
  MaxY = CGRectGetMaxY(v81);
  v45 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_segmentLayers;
  swift_beginAccess();
  v46 = *(v30 + v45);
  if (*(v46 + 16) <= v19)
  {
    goto LABEL_30;
  }

  v47 = v30;
  v48 = v40 * floor(MinX / v40);
  v49 = ceil(MaxX / v40);
  v50 = v40 * floor(MinY / v40);
  v51 = v40 * ceil(MaxY / v40);
  v52 = v40 * v49 - v48;
  v53 = v51 - v50;
  v54 = v19;
  v55 = *(v46 + 8 * v19 + 32);
  v56 = v55 >> 62;
  v57 = (v55 & 0x3FFFFFFFFFFFFFFFLL);
  if ((v55 >> 62) > 1)
  {
    v55 &= 0x3FFFFFFFFFFFFFFFuLL;
    if (v56 != 2)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v56)
  {
LABEL_14:
    v55 = v57;
  }

LABEL_15:
  v61 = v57;
  [v55 bounds];
  v84.origin.x = v48;
  v84.origin.y = v50;
  v84.size.width = v52;
  v84.size.height = v53;
  if (!CGRectEqualToRect(v82, v84))
  {
    [v55 setBounds_];
    [v55 setNeedsDisplay];
  }

  v62 = *(v47 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_displacements);
  if (*(v62 + 16) > v54)
  {
    v63 = v62 + 16 * v54;
    v64 = v48 + *(v63 + 32);
    v65 = v50 + *(v63 + 40);
    [v55 frame];
    v85.origin.x = v64;
    v85.origin.y = v65;
    v85.size.width = v52;
    v85.size.height = v53;
    if (!CGRectEqualToRect(v83, v85))
    {
      [v55 setFrame_];
    }

    if ([v55 isHidden])
    {
      [v55 setHidden_];
    }

    v67(v26, v47 + v23, v27);
    v66 = RangeSet.isEmpty.getter();
    v29(v26, v27);
    if ((v66 & 1) == 0)
    {
      outlined destroy of Text.Effect.Composition(v72, type metadata accessor for Text.Effect.RenderSegmentation.Effect);

      goto LABEL_26;
    }

    TextRenderLayer.updateSharedDrawingBounds()();

    v60 = v72;
LABEL_24:
    outlined destroy of Text.Effect.Composition(v60, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
LABEL_26:
    v59 = v73;
    v58 = type metadata accessor for TextRenderLayer.Layout;
    goto LABEL_27;
  }

LABEL_31:
  __break(1u);
}

void TextRenderLayer.ensureSharedDrawing(for:)(int64_t a1)
{
  v2 = v1;
  type metadata accessor for RangeSet<Int>(0, &lazy cache variable for type metadata for RangeSet<Int>, MEMORY[0x1E69E6548], MEMORY[0x1E69E7BE0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v19 - v7;
  v9 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_sharedDrawingSegments;
  swift_beginAccess();
  (*(v6 + 16))(v8, v2 + v9, v5);
  v19[0] = a1;
  v10 = RangeSet.contains(_:)();
  (*(v6 + 8))(v8, v5);
  if ((v10 & 1) == 0)
  {
    swift_beginAccess();
    v11 = a1 + 1;
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (v11 >= a1)
    {
      v19[4] = a1;
      v19[5] = a1 + 1;
      if (v11 != a1)
      {
        v12 = RangeSet._ranges.modify();
        type metadata accessor for RangeSet<Int>(0, &lazy cache variable for type metadata for RangeSet<Int>.Ranges, MEMORY[0x1E69E6548], MEMORY[0x1E69E7BA8]);
        RangeSet.Ranges._insert(contentsOf:)();
        v12(v19, 0);
      }

      swift_endAccess();
      v13 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_segmentLayers;
      swift_beginAccess();
      if ((a1 & 0x8000000000000000) == 0)
      {
        v14 = *(v2 + v13);
        if (*(v14 + 16) > a1)
        {
          v15 = *(v14 + 8 * a1 + 32);
          v16 = v15 >> 62;
          v17 = (v15 & 0x3FFFFFFFFFFFFFFFLL);
          if ((v15 >> 62) > 1)
          {
            v15 &= 0x3FFFFFFFFFFFFFFFuLL;
            if (v16 != 2)
            {
LABEL_13:
              v18 = v17;
              [v15 setFrame_];
              [v15 setHidden_];

              return;
            }
          }

          else if (!v16)
          {
            goto LABEL_13;
          }

          v15 = v17;
          goto LABEL_13;
        }

LABEL_18:
        __break(1u);
        return;
      }

LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_17;
  }
}

uint64_t specialized Dictionary.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v3;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v21 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v10 = v21;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for Text.Effect.InteractionMetrics(0);
    v20 = *(v12 - 8);
    outlined init with take of TextRenderLayer.Layout(v11 + *(v20 + 72) * v8, a2, type metadata accessor for Text.Effect.InteractionMetrics);
    specialized _NativeDictionary._delete(at:)(v8, v10, v13);
    *v4 = v10;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v12;
  }

  else
  {
    v18 = type metadata accessor for Text.Effect.InteractionMetrics(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

double specialized Dictionary.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v16 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v9 = v16;
    }

    v10 = *(v9 + 56) + 120 * v7;
    v11 = *(v10 + 80);
    *(a2 + 64) = *(v10 + 64);
    *(a2 + 80) = v11;
    *(a2 + 96) = *(v10 + 96);
    *(a2 + 112) = *(v10 + 112);
    v12 = *(v10 + 16);
    *a2 = *v10;
    *(a2 + 16) = v12;
    v13 = *(v10 + 32);
    v14 = *(v10 + 48);
    *(a2 + 32) = v13;
    *(a2 + 48) = v14;
    specialized _NativeDictionary._delete(at:)(v7, v9, v13);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    *(a2 + 48) = 1;
    *(a2 + 56) = 0u;
    *(a2 + 72) = 0u;
    *(a2 + 88) = 0u;
    *(a2 + 97) = 0u;
  }

  return result;
}

void TextRenderLayer.updateClippingBounds()()
{
  type metadata accessor for RangeSet<Int>(0, &lazy cache variable for type metadata for RangeSet<Int>, MEMORY[0x1E69E6548], MEMORY[0x1E69E7BE0]);
  v75 = v1;
  v71 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v74 = &v64 - v2;
  v3 = type metadata accessor for Text.Effect.RenderSegmentation.Segment(0);
  v78 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Text.Effect.RenderSegmentation.Effect(0);
  MEMORY[0x1EEE9AC00](v6);
  v76 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TextRenderLayer.Layout?(0, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v64 - v9;
  v11 = type metadata accessor for TextRenderLayer.Layout(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_layout;
  swift_beginAccess();
  outlined init with copy of TextRenderLayer.Layout?(v0 + v15, v10, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    outlined destroy of TextRenderLayer.Layout?(v10, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
    return;
  }

  outlined init with take of TextRenderLayer.Layout(v10, v14, type metadata accessor for TextRenderLayer.Layout);
  v16 = *(v0 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_baseFragmentIdentifierMap + 8);
  v83 = *(v0 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_baseFragmentIdentifierMap);
  v80 = v16;
  v17 = *(v0 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_animationController);
  swift_beginAccess();
  v82 = v17;
  v81 = *(v17 + 112);
  v18 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_segmentLayers;
  swift_beginAccess();
  v68 = v18;
  v19 = *(*(v0 + v18) + 16);
  if (!v19)
  {
LABEL_32:
    outlined destroy of Text.Effect.Composition(v14, type metadata accessor for TextRenderLayer.Layout);
    return;
  }

  v20 = *&v14[*(v11 + 24)];
  if (v19 > *(v20 + 16))
  {
    goto LABEL_35;
  }

  v21 = v0;
  v65 = v14;
  v22 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_sharedDrawingSegments;
  v67 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_geometryObserver;
  v66 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_displacements;
  v23 = v78;
  v24 = v20 + ((*(v78 + 80) + 32) & ~*(v78 + 80));

  v73 = v22;
  swift_beginAccess();
  v25 = 0;
  v26 = 0;
  v27 = *(v23 + 72);
  v72 = (v71 + 2);
  ++v71;
  v28 = v76;
  v77 = v21;
  v70 = v6;
  v79 = v19;
  v78 = v27;
  while (1)
  {
    outlined init with copy of Text.Effect.Composition(v24, v5, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      outlined destroy of Text.Effect.Composition(v5, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
      goto LABEL_7;
    }

    outlined init with take of TextRenderLayer.Layout(v5, v28, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
    v29 = *(v6 + 24);
    Text.Effect.Composition.useSharedDrawing(context:)(v83, v80, v81, v82);
    if ((v30 & 1) == 0)
    {
      outlined destroy of Text.Effect.Composition(v28, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
      goto LABEL_13;
    }

    v31 = v3;
    v32 = v74;
    v33 = v75;
    (*v72)(v74, v21 + v73, v75);
    v84 = v26;
    v34 = RangeSet.contains(_:)();
    (*v71)(v32, v33);
    if (v34)
    {
      v28 = v76;
      outlined destroy of Text.Effect.Composition(v76, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
      v3 = v31;
      v6 = v70;
LABEL_13:
      v19 = v79;
      v27 = v78;
      goto LABEL_7;
    }

    v35 = *(v21 + v68);
    v28 = v76;
    if (v26 >= *(v35 + 16))
    {
      break;
    }

    v36 = *(v35 + 8 * v26 + 32);
    v37 = v36 >> 62;
    v38 = (v36 & 0x3FFFFFFFFFFFFFFFLL);
    if ((v36 >> 62) <= 1)
    {
      v3 = v31;
      if (!v37)
      {
        goto LABEL_20;
      }

LABEL_19:
      v36 = v38;
      goto LABEL_20;
    }

    v36 &= 0x3FFFFFFFFFFFFFFFuLL;
    v3 = v31;
    if (v37 == 2)
    {
      goto LABEL_19;
    }

LABEL_20:
    v69 = v38;
    TextRenderLayer.drawingBounds(for:segmentIndex:allowingNull:)(v28 + v29, v26, 0);
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v46 = v45;
    TextRenderLayer.pixelLength.getter();
    v48 = v47;
    v85.origin.x = v40;
    v85.origin.y = v42;
    v85.size.width = v44;
    v85.size.height = v46;
    v49 = v48 * floor(CGRectGetMinX(v85) / v48);
    v86.origin.x = v40;
    v86.origin.y = v42;
    v86.size.width = v44;
    v86.size.height = v46;
    v50 = v48 * ceil(CGRectGetMaxX(v86) / v48);
    v87.origin.x = v40;
    v87.origin.y = v42;
    v87.size.width = v44;
    v87.size.height = v46;
    v51 = v48 * floor(CGRectGetMinY(v87) / v48);
    v88.origin.x = v40;
    v88.origin.y = v42;
    v88.size.width = v44;
    v88.size.height = v46;
    v52 = v50 - v49;
    v53 = v48 * ceil(CGRectGetMaxY(v88) / v48) - v51;
    Strong = swift_unknownObjectWeakLoadStrong();
    v6 = v70;
    if (Strong)
    {
      v55 = Strong;
      LayerGeometryObserver.clip(bounds:for:)(v36, v49, v51, v50 - v49, v53);
      v49 = v56;
      v51 = v57;
      v52 = v58;
      v53 = v59;
    }

    v19 = v79;
    v27 = v78;
    [v36 bounds];
    v91.origin.x = v49;
    v91.origin.y = v51;
    v91.size.width = v52;
    v91.size.height = v53;
    if (!CGRectEqualToRect(v89, v91))
    {
      [v36 setBounds_];
      [v36 setNeedsDisplay];
    }

    v60 = *(v77 + v66);
    if (v26 >= *(v60 + 16))
    {
      goto LABEL_34;
    }

    v61 = v60 + v25;
    v62 = v49 + *(v61 + 32);
    v63 = v51 + *(v61 + 40);
    [v36 frame];
    v92.origin.x = v62;
    v92.origin.y = v63;
    v92.size.width = v52;
    v92.size.height = v53;
    if (!CGRectEqualToRect(v90, v92))
    {
      [v36 setFrame_];
    }

    if ([v36 isHidden])
    {
      [v36 setHidden_];

      outlined destroy of Text.Effect.Composition(v28, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
    }

    else
    {
      outlined destroy of Text.Effect.Composition(v28, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
    }

    v21 = v77;
LABEL_7:
    ++v26;
    v25 += 16;
    v24 += v27;
    if (v19 == v26)
    {

      v14 = v65;
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
}

void TextRenderLayer.appendBaselineOffsets(to:)(char **a1)
{
  v69 = a1;
  v78 = type metadata accessor for Text.Layout.Line();
  v82 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v77 = &v67 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for Text.Effect.RenderSegmentation.Effect(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v71 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns(0);
  MEMORY[0x1EEE9AC00](v75);
  v74 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for Text.Effect.RenderSegmentation.Segment(0);
  v80 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v70 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v72 = &v67 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v67 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v67 - v12;
  type metadata accessor for (offset: Int, element: Text.Effect.RenderSegmentation.Segment)(0);
  v15 = v14;
  v83 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v79 = (&v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MEMORY[0x1E69E6720];
  type metadata accessor for TextRenderLayer.Layout?(0, &lazy cache variable for type metadata for (offset: Int, element: Text.Effect.RenderSegmentation.Segment)?, type metadata accessor for (offset: Int, element: Text.Effect.RenderSegmentation.Segment), MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v87 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = (&v67 - v21);
  v86 = type metadata accessor for TextRenderLayer.Layout;
  type metadata accessor for TextRenderLayer.Layout?(0, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout, v17);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v67 - v24;
  v26 = type metadata accessor for TextRenderLayer.Layout(0);
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v67 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_layout;
  v31 = v73;
  swift_beginAccess();
  outlined init with copy of TextRenderLayer.Layout?(v31 + v30, v25, &lazy cache variable for type metadata for TextRenderLayer.Layout?, v86);
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    outlined destroy of TextRenderLayer.Layout?(v25, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
    return;
  }

  outlined init with take of TextRenderLayer.Layout(v25, v29, type metadata accessor for TextRenderLayer.Layout);
  v32 = *(v26 + 24);
  v81 = v29;
  v33 = *&v29[v32];
  v85 = *(v33 + 16);
  v68 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_displacements;
  v34 = v83;
  v83 += 6;
  v84 = (v34 + 7);
  v76 = (v82 + 8);
  v86 = v33;

  v82 = 0;
  v35 = 0;
  v36 = 0;
  v37 = v71;
  while (1)
  {
    v38 = v87;
    if (v36 == v85)
    {
      v39 = 1;
      v36 = v85;
      goto LABEL_9;
    }

    if ((v36 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v36 >= *(v86 + 2))
    {
      goto LABEL_49;
    }

    v40 = v79;
    v41 = v86 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v36;
    v42 = *(v15 + 48);
    *v79 = v36;
    outlined init with copy of Text.Effect.Composition(v41, v40 + v42, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
    outlined init with take of TextRenderLayer.Layout(v40, v38, type metadata accessor for (offset: Int, element: Text.Effect.RenderSegmentation.Segment));
    v39 = 0;
    ++v36;
LABEL_9:
    (*v84)(v38, v39, 1, v15);
    outlined init with take of Text.Effect.RangeCoordinateSpace?(v38, v22, &lazy cache variable for type metadata for (offset: Int, element: Text.Effect.RenderSegmentation.Segment)?, type metadata accessor for (offset: Int, element: Text.Effect.RenderSegmentation.Segment));
    if ((*v83)(v22, 1, v15) == 1)
    {
      outlined destroy of Text.Effect.Composition(v81, type metadata accessor for TextRenderLayer.Layout);

      return;
    }

    v43 = *v22;
    outlined init with take of TextRenderLayer.Layout(v22 + *(v15 + 48), v13, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
    outlined init with copy of Text.Effect.Composition(v13, v10, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v45 = v74;
        outlined init with take of TextRenderLayer.Layout(v10, v74, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
        v46 = *(v45 + *(v75 + 28));
        v47 = type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns;
        v48 = v45;
      }

      else
      {
        outlined init with take of TextRenderLayer.Layout(v10, v37, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
        v46 = *v37;
        v47 = type metadata accessor for Text.Effect.RenderSegmentation.Effect;
        v48 = v37;
      }

      outlined destroy of Text.Effect.Composition(v48, v47);
    }

    else
    {
      v46 = *(v10 + 2);
    }

    if ((v35 & (v46 == v82)) == 0)
    {
      if ((v43 & 0x8000000000000000) != 0)
      {
        goto LABEL_50;
      }

      v49 = *(v73 + v68);
      if (v43 >= *(v49 + 16))
      {
        goto LABEL_51;
      }

      v50 = *(v49 + 16 * v43 + 40);
      outlined init with copy of Text.Effect.Composition(v13, v72, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
      v51 = swift_getEnumCaseMultiPayload();
      if (v51)
      {
        v52 = v70;
        if (v51 == 1)
        {
          v53 = v74;
          outlined init with take of TextRenderLayer.Layout(v72, v74, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
          v82 = *(v53 + *(v75 + 28));
          v54 = type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns;
          v55 = v53;
        }

        else
        {
          outlined init with take of TextRenderLayer.Layout(v72, v37, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
          v82 = *v37;
          v54 = type metadata accessor for Text.Effect.RenderSegmentation.Effect;
          v55 = v37;
        }

        outlined destroy of Text.Effect.Composition(v55, v54);
      }

      else
      {
        v82 = *(v72 + 16);

        v52 = v70;
      }

      outlined init with copy of Text.Effect.Composition(v13, v52, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
      v56 = swift_getEnumCaseMultiPayload();
      v67 = v13;
      if (v56)
      {
        if (v56 == 1)
        {
          v57 = v74;
          outlined init with take of TextRenderLayer.Layout(v52, v74, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
          v58 = *(v57 + *(v75 + 28));
          outlined destroy of Text.Effect.Composition(v57, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
          v59 = v58 + 1;
          if (__OFADD__(v58, 1))
          {
            goto LABEL_56;
          }

          if (v59 < v58)
          {
            goto LABEL_58;
          }
        }

        else
        {
          outlined init with take of TextRenderLayer.Layout(v52, v37, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
          v58 = *v37;
          outlined destroy of Text.Effect.Composition(v37, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
          v59 = v58 + 1;
          if (__OFADD__(v58, 1))
          {
            goto LABEL_55;
          }

          if (v59 < v58)
          {
            goto LABEL_57;
          }
        }
      }

      else
      {
        v58 = v52[2];
        v60 = *(*v52 + 16);

        v59 = v58 + v60;
        if (__OFADD__(v58, v60))
        {
          goto LABEL_54;
        }

        if (v59 < v58)
        {
          goto LABEL_59;
        }
      }

      if (v58 != v59)
      {
        if (v59 < v58)
        {
          goto LABEL_52;
        }

        if (v58 >= v59)
        {
          goto LABEL_53;
        }

        v61 = *v69;
        do
        {
          v62 = v77;
          Text.Layout.subscript.getter();
          Text.Layout.Line.origin.getter();
          v64 = v63;
          (*v76)(v62, v78);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v61 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v61 + 2) + 1, 1, v61);
          }

          v66 = *(v61 + 2);
          v65 = *(v61 + 3);
          if (v66 >= v65 >> 1)
          {
            v61 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v65 > 1), v66 + 1, 1, v61);
          }

          ++v58;
          *(v61 + 2) = v66 + 1;
          *&v61[8 * v66 + 32] = v50 + v64;
        }

        while (v59 != v58);
        *v69 = v61;
        v37 = v71;
      }

      v13 = v67;
    }

    outlined destroy of Text.Effect.Composition(v13, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
    v35 = 1;
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
}

void TextRenderLayer.drawingBounds.getter()
{
  v1 = v0;
  v117 = type metadata accessor for Text.Effect.RenderSegmentation.Effect(0);
  MEMORY[0x1EEE9AC00](v117);
  v116 = &v106 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = type metadata accessor for Text.Layout.Run();
  v142 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144);
  v143 = &v106 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RangeSet<Int><>.IndexSequence(0, v4, v5);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v115 = &v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RangeSet<Int>(0, &lazy cache variable for type metadata for RangeSet<Int>, MEMORY[0x1E69E6548], MEMORY[0x1E69E7BE0]);
  v114 = v8;
  v141 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v113 = &v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v112 = &v106 - v11;
  v111 = type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns.Iterator(0);
  MEMORY[0x1EEE9AC00](v111);
  v145 = &v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns(0);
  MEMORY[0x1EEE9AC00](v110);
  v127 = &v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v125 = &v106 - v15;
  v16 = type metadata accessor for Text.Layout.Line();
  v106 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v126 = &v106 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v106 - v19;
  v139 = type metadata accessor for Text.Effect.RenderSegmentation.Segment(0);
  v122 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v131 = &v106 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (offset: Int, element: Text.Effect.RenderSegmentation.Segment)(0);
  v130 = v22;
  v140 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v121 = (&v106 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = MEMORY[0x1E69E6720];
  type metadata accessor for TextRenderLayer.Layout?(0, &lazy cache variable for type metadata for (offset: Int, element: Text.Effect.RenderSegmentation.Segment)?, type metadata accessor for (offset: Int, element: Text.Effect.RenderSegmentation.Segment), MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v129 = &v106 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v128 = (&v106 - v28);
  type metadata accessor for TextRenderLayer.Layout?(0, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout, v24);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v31 = &v106 - v30;
  v32 = type metadata accessor for TextRenderLayer.Layout(0);
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v106 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_layout;
  swift_beginAccess();
  v118 = v1;
  outlined init with copy of TextRenderLayer.Layout?(v1 + v36, v31, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
  if ((*(v33 + 48))(v31, 1, v32) == 1)
  {
    outlined destroy of TextRenderLayer.Layout?(v31, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
    return;
  }

  outlined init with take of TextRenderLayer.Layout(v31, v35, type metadata accessor for TextRenderLayer.Layout);
  v37 = *MEMORY[0x1E695F050];
  v38 = *(MEMORY[0x1E695F050] + 8);
  v39 = *(MEMORY[0x1E695F050] + 16);
  v40 = *(MEMORY[0x1E695F050] + 24);
  v41 = *&v35[*(v32 + 24)];
  v137 = (v140 + 7);
  v136 = (v140 + 6);
  v42 = (v106 + 16);
  v138 = *(v41 + 16);
  v109 = (v141 + 16);
  v108 = (v141 + 8);
  v43 = (v106 + 8);
  ++v142;
  v120 = v41;

  v44 = 0;
  v135 = v37;
  v134 = v38;
  v133 = v39;
  v132 = v40;
  v45 = v131;
  v46 = v130;
  v47 = v129;
  v48 = v128;
  v49 = v35;
  v124 = v35;
  v140 = v42;
  v119 = v16;
  v107 = v43;
  while (1)
  {
    if (v44 == v138)
    {
      v59 = 1;
      v141 = v138;
    }

    else
    {
      if ((v44 & 0x8000000000000000) != 0)
      {
        goto LABEL_33;
      }

      if (v44 >= *(v120 + 16))
      {
        goto LABEL_34;
      }

      v60 = v44 + 1;
      v61 = v120 + ((*(v122 + 80) + 32) & ~*(v122 + 80)) + *(v122 + 72) * v44;
      v62 = *(v46 + 48);
      v63 = v121;
      *v121 = v44;
      outlined init with copy of Text.Effect.Composition(v61, v63 + v62, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
      outlined init with take of TextRenderLayer.Layout(v63, v47, type metadata accessor for (offset: Int, element: Text.Effect.RenderSegmentation.Segment));
      v59 = 0;
      v141 = v60;
      v42 = v140;
    }

    (*v137)(v47, v59, 1, v46);
    outlined init with take of Text.Effect.RangeCoordinateSpace?(v47, v48, &lazy cache variable for type metadata for (offset: Int, element: Text.Effect.RenderSegmentation.Segment)?, type metadata accessor for (offset: Int, element: Text.Effect.RenderSegmentation.Segment));
    if ((*v136)(v48, 1, v46) == 1)
    {

      TextRenderLayer.pixelLength.getter();
      v146 = v37;
      v147 = v38;
      v148 = v39;
      v149 = v40;
      CGRect.roundCoordinatesToNearestOrUp(toMultipleOf:)(v105);
      outlined destroy of Text.Effect.Composition(v49, type metadata accessor for TextRenderLayer.Layout);
      return;
    }

    v64 = *v48;
    outlined init with take of TextRenderLayer.Layout(v48 + *(v46 + 48), v45, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      v96 = *v45;
      v123 = v45[1];
      v97 = *(v96 + 16);
      x = v135;
      y = v134;
      width = v133;
      height = v132;
      if (v97)
      {
        v98 = v96 + ((*(v106 + 80) + 32) & ~*(v106 + 80));
        v99 = *(v106 + 72);
        v100 = *(v106 + 16);
        x = v135;
        y = v134;
        width = v133;
        height = v132;
        do
        {
          v100(v20, v98, v16);
          Text.Layout.Line.quantizedImageBounds.getter();
          v158.origin.x = v101;
          v158.origin.y = v102;
          v158.size.width = v103;
          v158.size.height = v104;
          v154.origin.x = x;
          v154.origin.y = y;
          v154.size.width = width;
          v154.size.height = height;
          v155 = CGRectUnion(v154, v158);
          x = v155.origin.x;
          y = v155.origin.y;
          width = v155.size.width;
          height = v155.size.height;
          (*v43)(v20, v16);
          v98 += v99;
          --v97;
        }

        while (v97);
      }

      goto LABEL_28;
    }

    if (EnumCaseMultiPayload != 1)
    {
      v50 = v116;
      outlined init with take of TextRenderLayer.Layout(v45, v116, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
      TextRenderLayer.drawingBounds(for:segmentIndex:allowingNull:)(v50 + *(v117 + 24), v64, 0);
      x = v51;
      y = v53;
      width = v55;
      height = v57;
      outlined destroy of Text.Effect.Composition(v50, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
      goto LABEL_5;
    }

    v66 = v125;
    outlined init with take of TextRenderLayer.Layout(v45, v125, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
    v67 = v66;
    v68 = v127;
    outlined init with copy of Text.Effect.Composition(v67, v127, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
    v69 = *v42;
    v70 = v126;
    v71 = v68;
    v69();
    v72 = *v109;
    v73 = v71 + *(v110 + 24);
    v74 = v112;
    v75 = v114;
    (*v109)(v112, v73, v114);
    v76 = v145;
    v77 = v70;
    v43 = v107;
    (v69)(v145, v77, v16);
    v78 = v113;
    v72(v113, v74, v75);
    v79 = v115;
    RangeSet.ranges.getter();
    v80 = *v108;
    v81 = v78;
    v16 = v119;
    (*v108)(v81, v75);
    v80(v74, v75);
    (*v43)(v126, v16);
    outlined destroy of Text.Effect.Composition(v127, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
    v82 = (v76 + *(v111 + 20));
    type metadata accessor for RangeSet<Int><>.IndexSequence.Iterator(0, v83, v84);
    v86 = *(v85 + 48);
    type metadata accessor for RangeSet<Int>(0, &lazy cache variable for type metadata for RangeSet<Int>.Ranges, MEMORY[0x1E69E6548], MEMORY[0x1E69E7BA8]);
    (*(*(v87 - 8) + 32))(&v82[v86], v79, v87);
    *v82 = 0;
    *(v82 + 1) = 0;
    if (RangeSet.Ranges.count.getter() >= 1)
    {
      break;
    }

    outlined destroy of Text.Effect.Composition(v76, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns.Iterator);
    outlined destroy of Text.Effect.Composition(v125, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
    x = v135;
    y = v134;
    width = v133;
    height = v132;
LABEL_28:
    v45 = v131;
    v46 = v130;
    v47 = v129;
    v48 = v128;
    v49 = v124;
LABEL_5:
    v150.origin.x = v37;
    v150.origin.y = v38;
    v150.size.width = v39;
    v150.size.height = v40;
    v156.origin.x = x;
    v156.origin.y = y;
    v156.size.width = width;
    v156.size.height = height;
    v151 = CGRectUnion(v150, v156);
    v37 = v151.origin.x;
    v38 = v151.origin.y;
    v39 = v151.size.width;
    v40 = v151.size.height;
    v42 = v140;
    v44 = v141;
  }

  v88 = 0;
  v89 = 0;
  x = v135;
  y = v134;
  width = v133;
  height = v132;
  while (1)
  {
    RangeSet.Ranges.subscript.getter();
    if (__OFADD__(*&v146, v88))
    {
      break;
    }

    if (__OFADD__(v88++, 1))
    {
      goto LABEL_31;
    }

    RangeSet.Ranges.subscript.getter();
    if (__OFSUB__(*&v147, *&v146))
    {
      goto LABEL_32;
    }

    if (v88 >= *&v147 - *&v146)
    {
      v88 = 0;
      *v82 = ++v89;
    }

    v90 = v143;
    Text.Layout.Line.subscript.getter();
    Text.Layout.Run.quantizedImageBounds.getter();
    v157.origin.x = v91;
    v157.origin.y = v92;
    v157.size.width = v93;
    v157.size.height = v94;
    v152.origin.x = x;
    v152.origin.y = y;
    v152.size.width = width;
    v152.size.height = height;
    v153 = CGRectUnion(v152, v157);
    x = v153.origin.x;
    y = v153.origin.y;
    width = v153.size.width;
    height = v153.size.height;
    (*v142)(v90, v144);
    if (v89 >= RangeSet.Ranges.count.getter())
    {
      outlined destroy of Text.Effect.Composition(v125, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
      *(v82 + 1) = v88;
      outlined destroy of Text.Effect.Composition(v145, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns.Iterator);
      v16 = v119;
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
}

Swift::Void __swiftcall TextEffectsRenderer.refreshRenderingAttributes()()
{
  v1 = *(v0 + OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_currentFragments);
  if (v1 >> 62)
  {
LABEL_21:
    if (v1 < 0)
    {
      v8 = v1;
    }

    else
    {
      v8 = v1 & 0xFFFFFFFFFFFFFF8;
    }

    v2 = MEMORY[0x19A8BDCD0](v8);
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x19A8BDB80](v3, v1);
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v7 = [v4 textElement];

      if (!v7)
      {
        break;
      }

      ++v3;
      if (v6 == v2)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:

    specialized TextEffectsRenderer.updateKeyframes(with:)(v0);
  }
}

void (*specialized RangeReplaceableCollection.removeFirst()(void (*result)(void, uint64_t)))(void, uint64_t)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 >> 62;
  if (!v4)
  {
    if (*((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    v5 = MEMORY[0x19A8BDB80](0, v3);
    if (!v4)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  if (v3 < 0)
  {
    v6 = *v1;
  }

  else
  {
    v6 = *v1 & 0xFFFFFFFFFFFFFF8;
  }

  result = MEMORY[0x19A8BDCD0](v6);
  if (!result)
  {
    goto LABEL_23;
  }

  result = MEMORY[0x19A8BDCD0](v6);
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
    goto LABEL_14;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(v3 + 32);
    if (!v4)
    {
LABEL_6:
      result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_19;
    }

LABEL_15:
    if (v3 < 0)
    {
      v7 = v3;
    }

    else
    {
      v7 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    result = MEMORY[0x19A8BDCD0](v7);
LABEL_19:
    if (result)
    {
      v2(0, 1);
      return v5;
    }

    goto LABEL_22;
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t closure #1 in TextRenderLayer.displaceSublayers()(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Text.Effect.RenderSegmentation.Segment(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  result = type metadata accessor for TextRenderLayer.Layout(0);
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v12 = *(a2 + *(result + 24));
    if (v10 < *(v12 + 16))
    {
      outlined init with copy of Text.Effect.Composition(v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v10, v9, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
      v13 = Text.Effect.RenderSegmentation.Segment.lineIndex.getter();
      outlined destroy of Text.Effect.Composition(v9, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
      return v13 == a3;
    }
  }

  __break(1u);
  return result;
}

uint64_t closure #2 in TextRenderLayer.displaceSublayers()@<X0>(unint64_t *a1@<X0>, double *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, double *a9@<X8>, uint64_t a10)
{
  v38 = a8;
  v36 = a6;
  v37 = a7;
  v35 = a5;
  v39 = a9;
  v14 = type metadata accessor for Text.Effect.RenderSegmentation.Effect(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Text.Effect.RenderSegmentation.Segment(0);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a1;
  v22 = *a2;
  v23 = *a3;
  result = type metadata accessor for TextRenderLayer.Layout(0);
  if ((v21 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v25 = *(a4 + *(result + 24));
  if (v21 >= *(v25 + 16))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  outlined init with copy of Text.Effect.Composition(v25 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v21, v20, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    outlined init with take of TextRenderLayer.Layout(v20, v16, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
    v26 = &v16[*(v14 + 24)];
    v27 = *(v35 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_time);
    v28 = type metadata accessor for Text.Effect.Composition(0);
    MEMORY[0x1EEE9AC00](v28);
    *(&v35 - 6) = v27;
    v29 = v36;
    v30 = v37;
    *(&v35 - 5) = v26;
    *(&v35 - 4) = v29;
    v31 = v38;
    *(&v35 - 3) = v30;
    *(&v35 - 2) = v31;
    *(&v35 - 1) = a10;
    v33 = specialized Sequence.reduce<A>(_:_:)(partial apply for closure #1 in Text.Effect.Composition.widthDifference(at:context:), 0.0, (&v35 - 8), v32);
    result = outlined destroy of Text.Effect.Composition(v16, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
    *a2 = v33 + *a2;
  }

  else
  {
    result = outlined destroy of Text.Effect.Composition(v20, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
  }

  v34 = v39;
  *v39 = v22;
  *(v34 + 1) = v23;
  return result;
}

uint64_t Text.Layout.Line.xrange(runIndex:range:)@<X0>(uint64_t a1@<X0>, CFIndex a2@<X1>, CFIndex a3@<X2>, double *a4@<X8>)
{
  v5 = v4;
  v60 = a4;
  secondaryOffset[1] = *MEMORY[0x1E69E9840];
  v9 = type metadata accessor for LayoutDirection();
  v57 = *(v9 - 8);
  v58 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v56 = &v51 - v13;
  v14 = type metadata accessor for Text.Layout.Run();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = a1;
  Text.Layout.Line.subscript.getter();
  v18 = Text.Layout.Run.characterRange.getter();
  v20 = v19;
  v21 = *(v15 + 8);
  v21(v17, v14);
  v52 = a3;
  v53 = a2;
  if (v18 <= a2)
  {
    v22 = a2;
  }

  else
  {
    v22 = v18;
  }

  if (v20 >= a3)
  {
    v23 = a3;
  }

  else
  {
    v23 = v20;
  }

  v54 = v23;
  v55 = v22;
  if (v22 < v23)
  {
    v24 = v20;
    v25 = Text.Layout.Line.line.getter();
    if (v25)
    {
      v26 = v25;
      v51 = v5;
      Text.Layout.Line.subscript.getter();
      v27 = v56;
      Text.Layout.Run.layoutDirection.getter();
      v21(v17, v14);
      v29 = v57;
      v28 = v58;
      (*(v57 + 104))(v11, *MEMORY[0x1E697E7D8], v58);
      v30 = static LayoutDirection.== infix(_:_:)();
      (*(v29 + 8))(v11, v28);
      secondaryOffset[0] = 0.0;
      v31 = v55;
      OffsetForStringIndex = CTLineGetOffsetForStringIndex(v26, v55, secondaryOffset);
      v34 = v26;
      if (OffsetForStringIndex == secondaryOffset[0])
      {
        goto LABEL_12;
      }

      if (__OFSUB__(v31, v18))
      {
        goto LABEL_34;
      }

      if (v18 < v53)
      {
LABEL_12:
        v35 = v51;
        v36 = v54;
      }

      else
      {
        v35 = v51;
        v36 = v54;
        if (__OFADD__(v59, v30 & 1))
        {
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        v53 = v26;
        if (v59 + (v30 & 1) < 0)
        {
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
        }

        MEMORY[0x1EEE9AC00](v32);
        *(&v51 - 2) = v35;
        specialized Sequence.reduce<A>(_:_:)(closure #1 in Text.Layout.Line.width(of:)partial apply, (&v51 - 4), 0, v49);
        OffsetForStringIndex = v50;
        v34 = v53;
      }

      v61 = 0.0;
      v38 = CTLineGetOffsetForStringIndex(v34, v36, &v61);
      if (v38 != v61)
      {
        if (__OFSUB__(v24, v36))
        {
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        if (v24 <= v52)
        {
          v39 = (v30 & 1) == 0;
          if (__OFADD__(v59, v39))
          {
LABEL_37:
            __break(1u);
            goto LABEL_38;
          }

          if (v59 + v39 < 0)
          {
            goto LABEL_39;
          }

          MEMORY[0x1EEE9AC00](v37);
          *(&v51 - 2) = v35;
          specialized Sequence.reduce<A>(_:_:)(partial apply for closure #1 in Text.Layout.Line.width(of:), (&v51 - 4), 0, v40);
        }
      }

      if (v38 >= OffsetForStringIndex)
      {
        v41 = OffsetForStringIndex;
      }

      else
      {
        v41 = v38;
      }

      if (v38 >= OffsetForStringIndex)
      {
        v42 = v38;
      }

      else
      {
        v42 = OffsetForStringIndex;
      }

      if (v41 > v42)
      {
        __break(1u);
      }

      else
      {
        Text.Layout.Line.origin.getter();
        v44 = v43;

        if (v41 + v44 <= v42 + v44)
        {
          v45 = v60;
          *v60 = v41 + v44;
          v45[1] = v42 + v44;
          *(v45 + 2) = v31;
          *(v45 + 3) = v36;
          v46 = type metadata accessor for Text.Effect.RangeCoordinateSpace(0);
          (*(v29 + 32))(v45 + *(v46 + 24), v27, v28);
          return (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
        }
      }

      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }
  }

  v48 = type metadata accessor for Text.Effect.RangeCoordinateSpace(0);
  return (*(*(v48 - 8) + 56))(v60, 1, 1, v48);
}

uint64_t Text.Layout.Line.containsRightToLeft.getter()
{
  v43 = type metadata accessor for LayoutDirection();
  v1 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v42 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v31 - v4;
  v44 = type metadata accessor for Text.Layout.Run();
  v5 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v40 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Text.Layout.Line();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IndexingIterator<Text.Layout.Line>(0);
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = Text.Layout.Line.line.getter();
  if (result)
  {
    v16 = result;
    if (CTLineIsRightToLeft())
    {

      return 1;
    }

    else if (CTLineHasBidiLevels())
    {
      v32 = v16;
      (*(v8 + 16))(v10, v0, v7);
      v17 = MEMORY[0x1E6981048];
      _s7SwiftUI4TextV6LayoutV4LineVAGSlAAWlTm_0(&lazy protocol witness table cache variable for type Text.Layout.Line and conformance Text.Layout.Line, MEMORY[0x1E6981048], MEMORY[0x1E6981050]);
      dispatch thunk of Sequence.makeIterator()();
      v18 = *(v12 + 36);
      _s7SwiftUI4TextV6LayoutV4LineVAGSlAAWlTm_0(&lazy protocol witness table cache variable for type Text.Layout.Line and conformance Text.Layout.Line, v17, MEMORY[0x1E6981058]);
      v38 = (v5 + 16);
      v37 = *MEMORY[0x1E697E7D8];
      v35 = v1 + 8;
      v36 = (v1 + 104);
      v33 = (v5 + 8);
      v34 = v18;
      v19 = v40;
      v20 = (v1 + 8);
      do
      {
        dispatch thunk of Collection.endIndex.getter();
        v21 = *&v14[v18];
        v39 = v21 != v45[0];
        if (v21 == v45[0])
        {
          break;
        }

        v22 = dispatch thunk of Collection.subscript.read();
        (*v38)(v19);
        (v22)(v45, 0);
        dispatch thunk of Collection.formIndex(after:)();
        v23 = v41;
        Text.Layout.Run.layoutDirection.getter();
        v24 = v7;
        v26 = v42;
        v25 = v43;
        (*v36)(v42, v37, v43);
        LOBYTE(v22) = static LayoutDirection.== infix(_:_:)();
        v27 = v14;
        v28 = *v20;
        v29 = v26;
        v7 = v24;
        (*v20)(v29, v25);
        v30 = v25;
        v18 = v34;
        v28(v23, v30);
        v14 = v27;
        (*v33)(v19, v44);
      }

      while ((v22 & 1) == 0);
      outlined destroy of Text.Effect.Composition(v14, type metadata accessor for IndexingIterator<Text.Layout.Line>);

      return v39;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

double closure #1 in Text.Layout.Line.width(of:)@<D0>(double *a1@<X0>, double *a3@<X8>)
{
  v5 = type metadata accessor for Text.Layout.Run();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *a1;
  Text.Layout.Line.subscript.getter();
  Text.Layout.Run.typographicBounds.getter();
  (*(v6 + 8))(v8, v5);
  result = v9 + v12;
  *a3 = v9 + v12;
  return result;
}

Swift::Void __swiftcall TextEffectsRenderer.notifyDisplayLinkObservers(with:)(TextAnimationSupport::Time with)
{
  v47 = type metadata accessor for UUID();
  v3 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v43 = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TextRenderLayer.Layout?(0, &lazy cache variable for type metadata for (key: UUID, value: TextRenderSurface)?, type metadata accessor for (key: UUID, value: TextRenderSurface), MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v40 - v9;
  v11 = OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_surfaceMap;
  swift_beginAccess();
  v12 = *(v1 + v11);
  v13 = v12 + 64;
  v14 = 1 << *(v12 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v12 + 64);
  v17 = (v14 + 63) >> 6;
  v40[1] = v3 + 32;
  v40[2] = v3 + 16;
  v44 = v3;
  v45 = v12;
  v46 = (v3 + 8);

  v18 = 0;
  v41 = v10;
  v42 = v7;
  while (v16)
  {
    v19 = v18;
LABEL_15:
    v22 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v23 = v22 | (v19 << 6);
    v24 = v44;
    v25 = v45;
    v26 = v43;
    v27 = v47;
    (*(v44 + 16))(v43, *(v45 + 48) + *(v44 + 72) * v23, v47);
    v28 = *(*(v25 + 56) + 8 * v23);
    type metadata accessor for (key: UUID, value: TextRenderSurface)(0);
    v30 = v29;
    v31 = *(v29 + 48);
    v32 = *(v24 + 32);
    v7 = v42;
    v32(v42, v26, v27);
    *&v7[v31] = v28;
    (*(*(v30 - 8) + 56))(v7, 0, 1, v30);
    v33 = v28;
    v10 = v41;
LABEL_16:
    outlined init with take of Text.Effect.RangeCoordinateSpace?(v7, v10, &lazy cache variable for type metadata for (key: UUID, value: TextRenderSurface)?, type metadata accessor for (key: UUID, value: TextRenderSurface));
    type metadata accessor for (key: UUID, value: TextRenderSurface)(0);
    if ((*(*(v30 - 8) + 48))(v10, 1, v30) == 1)
    {

      return;
    }

    v34 = *&v10[*(v30 + 48)];
    v35 = *&v34[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919417TextRenderSurface__layer];
    *&v35[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_time] = with;
    v36 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_activeIdentifiers;
    swift_beginAccess();
    if (*(*&v35[v36] + 16))
    {
      v37 = v35;

      TextRenderLayer.updateLayers(for:at:chunk:)(v38, 1, with.seconds);

      v37[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_updateFlags] |= 2u;
      [v37 setNeedsLayout];
    }

    (*v46)(v10, v47);
  }

  if (v17 <= v18 + 1)
  {
    v20 = v18 + 1;
  }

  else
  {
    v20 = v17;
  }

  v21 = v20 - 1;
  while (1)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v19 >= v17)
    {
      type metadata accessor for (key: UUID, value: TextRenderSurface)(0);
      v30 = v39;
      (*(*(v39 - 8) + 56))(v7, 1, 1, v39);
      v16 = 0;
      v18 = v21;
      goto LABEL_16;
    }

    v16 = *(v13 + 8 * v19);
    ++v18;
    if (v16)
    {
      v18 = v19;
      goto LABEL_15;
    }
  }

  __break(1u);
}

void specialized TextEffectsRenderer.updateForStaticRendering(with:)(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v63 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v63 - v10;
  type metadata accessor for (UUID, NSTextLayoutFragment)(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v73 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = CACurrentMediaTime();
  TextEffectsAnimationController.displayLinkUpdate(at:removeFinished:)(0, v14);
  v15 = *(a1 + OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_currentIDs);
  v16 = *(v15 + 16);
  v17 = &unk_1EAEDF000;
  v75 = a1;
  v65 = v8;
  v66 = v11;
  if (v16)
  {
    v71 = OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_currentIDs;
    v72 = v3;
    v18 = OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_surfaceMap;
    v20 = *(v3 + 16);
    v19 = v3 + 16;
    v76 = v20;
    v21 = v15 + ((*(v19 + 64) + 32) & ~*(v19 + 64));
    v22 = *(v19 + 56);
    v23 = (v19 - 8);
    v74 = v15;

    do
    {
      (v76)(v5, v21, v2);
      swift_beginAccess();
      v24 = *(a1 + v18);
      if (*(v24 + 16) && (v25 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v26 & 1) != 0))
      {
        v27 = *(*(v24 + 56) + 8 * v25);
        swift_endAccess();
        v28 = v2;
        v29 = *v23;
        v30 = v27;
        v29(v5, v28);
        v31 = OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919417TextRenderSurface__layer;
        [*&v30[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919417TextRenderSurface__layer] setNeedsLayout];
        v32 = *&v30[v31];
        v2 = v28;
        a1 = v75;
        [v32 layoutIfNeeded];
      }

      else
      {
        swift_endAccess();
        (*v23)(v5, v2);
      }

      v21 += v22;
      --v16;
    }

    while (v16);

    v3 = v72;
    v15 = *(a1 + v71);
    v33 = *(v15 + 16);
    v8 = v65;
    v11 = v66;
    v17 = &unk_1EAEDF000;
  }

  else
  {
    v33 = 0;
  }

  v34 = *(a1 + OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_currentFragments);
  v72 = v17[107];

  v76 = v34;

  if (v33)
  {
    v35 = 0;
    v36 = v76 & 0xFFFFFFFFFFFFFF8;
    if (v76 < 0)
    {
      v37 = v76;
    }

    else
    {
      v37 = v76 & 0xFFFFFFFFFFFFFF8;
    }

    v64 = v37;
    v38 = (v3 + 32);
    v68 = v76 & 0xC000000000000001;
    v69 = (v3 + 8);
    v70 = v76 >> 62;
    v71 = v3 + 16;
    v74 = v15;
    v67 = v33;
    while (v35 < *(v15 + 16))
    {
      (*(v3 + 16))(v11, v15 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v35, v2);
      if (v70)
      {
        if (v35 == MEMORY[0x19A8BDCD0](v64))
        {
LABEL_30:

          (*v69)(v11, v2);
          return;
        }
      }

      else if (v35 == *(v36 + 16))
      {
        goto LABEL_30;
      }

      if (v68)
      {
        v39 = MEMORY[0x19A8BDB80](v35, v76);
      }

      else
      {
        if (v35 >= *(v36 + 16))
        {
          goto LABEL_32;
        }

        v39 = *(v76 + 8 * v35 + 32);
      }

      v40 = v39;
      v41 = *v38;
      v42 = v73;
      (*v38)(v73, v11, v2);
      v41(v8, v42, v2);
      v43 = v75;
      v44 = v72;
      swift_beginAccess();
      v45 = *(v43 + v44);
      if (*(v45 + 16) && (v46 = specialized __RawDictionaryStorage.find<A>(_:)(v8), (v47 & 1) != 0))
      {
        v48 = *(*(v45 + 56) + 8 * v46);
        swift_endAccess();
        v49 = *v69;
        v50 = v48;
        v49(v8, v2);
        v11 = v66;
        v51 = v50;
        [v40 layoutFragmentFrame];
        [v51 adjustedLayoutFragmentFrame_];
        v53 = v52;
        v55 = v54;
        v57 = v56;
        v59 = v58;
        v60 = [v51 layer];
        [v60 setFrame_];

        v61 = [v51 layer];
        [v61 setBounds_];

        v62 = [v51 layer];
        [v62 layoutIfNeeded];

        v8 = v65;
      }

      else
      {
        swift_endAccess();

        (*v69)(v8, v2);
      }

      v15 = v74;
      if (v67 == ++v35)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
LABEL_29:
  }
}

void TextEffectsRenderer.drawStatic(in:)(uint64_t *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Text.Effect.Composition(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v53 = v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_currentIDs);
  v66 = *(v10 + 16);
  if (v66)
  {
    v65 = OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_surfaceMap;
    v64 = v10 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v63 = v7 + 16;
    v62 = (v7 + 8);
    v52[1] = v71;

    v11 = 0;
    v56 = v1;
    v68 = a1;
    v55 = v6;
    v59 = v7;
    v58 = v9;
    v57 = v10;
    while (v11 < *(v10 + 16))
    {
      (*(v7 + 16))(v9, v64 + *(v7 + 72) * v11, v6);
      v12 = v65;
      swift_beginAccess();
      v13 = *(v2 + v12);
      if (*(v13 + 16) && (v14 = specialized __RawDictionaryStorage.find<A>(_:)(v9), (v15 & 1) != 0))
      {
        v16 = *(*(v13 + 56) + 8 * v14);
        swift_endAccess();
        v17 = *v62;
        v18 = v16;
        v17(v9, v6);
        v19 = *&v18[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919417TextRenderSurface__layer];
        v20 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_segmentLayers;
        swift_beginAccess();
        v21 = *(v19 + v20);
        v22 = *(v21 + 16);
        if (v22)
        {

          v24 = 32;
          v25 = v18;
          v69 = v18;
          while (1)
          {
            v28 = *(v21 + v24);
            v29 = v28 >> 62;
            if ((v28 >> 62) <= 1)
            {
              if (v29)
              {
                MEMORY[0x1EEE9AC00](v23);
                v52[-2] = v45;
                v46 = v45;
                GraphicsContext.withCGContext(content:)();
              }

              else
              {
                MEMORY[0x1EEE9AC00](v23);
                v52[-2] = v28;
                v30 = v28;
                GraphicsContext.withCGContext(content:)();
              }

              v25 = v69;
              goto LABEL_11;
            }

            if (v29 == 2)
            {
              v31 = (v28 & 0x3FFFFFFFFFFFFFFFLL);
              v32 = [v31 superlayer];
              if (v32)
              {
                v33 = v32;
                type metadata accessor for TextRenderLayer(0);
                v34 = swift_dynamicCastClass();
                if (v34)
                {
                  v35 = v34;
                  v67 = v52;
                  MEMORY[0x1EEE9AC00](v34);
                  v61 = &v52[-4];
                  v36 = v68;
                  v52[-2] = v31;
                  v52[-1] = v36;
                  v38 = *(v37 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_animationController);
                  swift_beginAccess();
                  if (*(*(v38 + 112) + 56) == *&v35[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_version])
                  {
                    if ([v35 delegate])
                    {
                      type metadata accessor for TextRenderSurface();
                      v60 = swift_dynamicCastClass();
                      if (v60)
                      {
                        Strong = swift_unknownObjectWeakLoadStrong();
                        if (Strong)
                        {
                          v40 = Strong;
                          v54 = swift_unknownObjectWeakLoadStrong();

                          if (v54)
                          {
                            v41 = swift_allocObject();
                            v42 = v61;
                            *(v41 + 16) = partial apply for closure #1 in DynamicEffectLayer.draw(in:);
                            *(v41 + 24) = v42;
                            v71[2] = partial apply for thunk for @callee_guaranteed () -> ();
                            v72 = v41;
                            v52[3] = v41;
                            aBlock[0] = MEMORY[0x1E69E9820];
                            aBlock[1] = 1107296256;
                            v71[0] = thunk for @escaping @callee_guaranteed () -> ();
                            v71[1] = &block_descriptor_0;
                            v61 = _Block_copy(aBlock);
                            v52[2] = v72;
                            v43 = v54;
                            swift_unknownObjectRetain();
                            swift_unknownObjectRetain();

                            v44 = v61;
                            _NSTextCustomRenderingDelegateWillDraw(v43, v60, v61);
                            swift_unknownObjectRelease_n();
                            swift_unknownObjectRelease_n();
                            _Block_release(v44);
                            LOBYTE(v44) = swift_isEscapingClosureAtFileLocation();

                            if (v44)
                            {
                              goto LABEL_42;
                            }

                            goto LABEL_35;
                          }
                        }
                      }

                      swift_unknownObjectRelease();
                    }

                    v47 = [v31 superlayer];
                    if (v47)
                    {
                      v48 = v47;
                      if (swift_dynamicCastClass())
                      {
                        v49 = &v31[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919418DynamicEffectLayer_content];
                        swift_beginAccess();
                        v50 = &v49[*(type metadata accessor for Text.Effect.RenderSegmentation.Effect(0) + 24)];
                        v51 = v53;
                        outlined init with copy of Text.Effect.Composition(v50, v53, type metadata accessor for Text.Effect.Composition);
                        TextRenderLayer.draw(composition:segmentIndex:in:)(v51, *&v31[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919418DynamicEffectLayer_segmentIndex], v68);

                        outlined destroy of Text.Effect.Composition(v51, type metadata accessor for Text.Effect.Composition);
                      }

                      else
                      {

                        v33 = v31;
                        v31 = v48;
                      }
                    }
                  }
                }

                else
                {
                }

LABEL_35:
                v25 = v69;
                goto LABEL_11;
              }
            }

            else
            {
              MEMORY[0x1EEE9AC00](v23);
              v52[-2] = v26;
              v27 = v26;
              v25 = v69;
              GraphicsContext.withCGContext(content:)();
            }

LABEL_11:
            v24 += 8;
            if (!--v22)
            {

              v2 = v56;
              v6 = v55;
              goto LABEL_38;
            }
          }
        }

LABEL_38:
        v7 = v59;
        v9 = v58;
        v10 = v57;
      }

      else
      {
        swift_endAccess();
        (*v62)(v9, v6);
      }

      if (++v11 == v66)
      {

        return;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
  }
}

char *TextEffectsRenderer.baselineOffsets.getter()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  MEMORY[0x1EEE9AC00](v2);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1E69E7CC0];
  v29 = MEMORY[0x1E69E7CC0];
  v7 = *(v0 + OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_currentIDs);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_surfaceMap;
    v12 = *(v3 + 16);
    v10 = v3 + 16;
    v11 = v12;
    v13 = v7 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v14 = *(v10 + 56);
    v27 = (v10 - 8);
    v28 = v10;
    v24[1] = v7;

    v25 = v14;
    v26 = v0;
    do
    {
      v11(v5, v13, v2);
      swift_beginAccess();
      v15 = *(v1 + v9);
      if (*(v15 + 16) && (v16 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v17 & 1) != 0))
      {
        v18 = *(*(v15 + 56) + 8 * v16);
        swift_endAccess();
        v19 = v9;
        v20 = v11;
        v21 = *v27;
        v22 = v18;
        v21(v5, v2);
        v11 = v20;
        v9 = v19;
        v14 = v25;
        v23 = *&v22[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919417TextRenderSurface__layer];
        TextRenderLayer.appendBaselineOffsets(to:)(&v29);

        v1 = v26;
      }

      else
      {
        swift_endAccess();
        (*v27)(v5, v2);
      }

      v13 += v14;
      --v8;
    }

    while (v8);

    return v29;
  }

  return result;
}

double TextEffectsRenderer.drawingBounds.getter()
{
  v1 = type metadata accessor for UUID();
  MEMORY[0x1EEE9AC00](v1);
  v4 = v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  width = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
  v40 = v0;
  v9 = *(v0 + OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_currentIDs);
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_surfaceMap;
    v14 = *(v2 + 16);
    v12 = v2 + 16;
    v13 = v14;
    v15 = v9 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    v38 = (v12 - 8);
    v39 = v12;
    v37[1] = v9;

    do
    {
      v13(v4, v15, v1);
      v17 = v40;
      swift_beginAccess();
      v18 = *(v17 + v11);
      if (*(v18 + 16) && (v19 = specialized __RawDictionaryStorage.find<A>(_:)(v4), (v20 & 1) != 0))
      {
        v21 = *(*(v18 + 56) + 8 * v19);
        swift_endAccess();
        v22 = v11;
        v23 = v13;
        v24 = *v38;
        v25 = v21;
        v24(v4, v1);
        v13 = v23;
        v11 = v22;
        v26 = v25;
        v27 = *&v25[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919417TextRenderSurface__layer];
        TextRenderLayer.drawingBounds.getter();
        v29 = v28;
        v31 = v30;
        v33 = v32;
        v35 = v34;

        v41.origin.x = x;
        v41.origin.y = y;
        v41.size.width = width;
        v41.size.height = height;
        v43.origin.x = v29;
        v43.origin.y = v31;
        v43.size.width = v33;
        v43.size.height = v35;
        v42 = CGRectUnion(v41, v43);
        x = v42.origin.x;
        y = v42.origin.y;
        width = v42.size.width;
        height = v42.size.height;
      }

      else
      {
        swift_endAccess();
        (*v38)(v4, v1);
      }

      v15 += v16;
      --v10;
    }

    while (v10);
  }

  return x;
}

void specialized TextEffectsRenderer.endLayout(with:)(uint64_t a1)
{
  v127 = type metadata accessor for LayoutDirection();
  v128 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v126[2] = v126 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v126[1] = v126 - v4;
  *&v148.size.height = type metadata accessor for UUID();
  v5 = *(*&v148.size.height - 8);
  MEMORY[0x1EEE9AC00](*&v148.size.height);
  v139 = v126 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v137 = v126 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v126 - v10;
  v132 = OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_currentFragments;
  v12 = *(a1 + OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_currentFragments);
  v13 = OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_currentIDs;
  v14 = *(a1 + OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_currentIDs);
  v15 = OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_updatedFragments;
  swift_beginAccess();
  v130 = v15;
  v16 = *(a1 + v15);

  v17 = specialized updatedIdentifiers<A, B>(a:b:makeIdentifier:)(v12, v14, v16);

  v19 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation4UUIDV_SayAFGTt0g5Tf4g_n(v18);

  *&v20 = COERCE_DOUBLE(specialized _NativeSet.subtracting<A>(_:)(v17, v19));

  v22 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation4UUIDV_SayAFGTt0g5Tf4g_n(v21);
  v129 = v17;

  v131 = v13;
  v23 = *(a1 + v13);

  v142 = specialized _NativeSet.subtracting<A>(_:)(v24, v22);

  v25 = 0;
  v27 = v20 + 56;
  v26 = *(v20 + 56);
  v145 = *&v20;
  v28 = 1 << *(v20 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & v26;
  v147 = a1;
  *&v148.size.width = a1 + OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_surfaceMap;
  v31 = (v28 + 63) >> 6;
  *&v148.origin.x = *&v5 + 16;
  v146 = v5;
  *&v148.origin.y = *&v5 + 8;
  while (v30)
  {
LABEL_11:
    v33 = v146;
    v34 = *(*&v146 + 72);
    height = v148.size.height;
    (*(*&v146 + 16))(v11, *(*&v145 + 48) + v34 * (__clz(__rbit64(v30)) | (v25 << 6)), *&v148.size.height);
    swift_beginAccess();
    v23 = COERCE_DOUBLE(specialized __RawDictionaryStorage.find<A>(_:)(v11));
    v22 = v36;
    v37 = *(*&v33 + 8);
    v37(v11, *&height);
    if (v22)
    {
      width = v148.size.width;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = **&width;
      v151 = **&width;
      **&width = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        specialized _NativeDictionary.copy()();
        v22 = v151;
      }

      v37((*(v22 + 48) + *&v23 * v34), *&v148.size.height);

      specialized _NativeDictionary._delete(at:)(*&v23, v22);
      **&width = v22;
    }

    v30 &= v30 - 1;
    swift_endAccess();
  }

  while (1)
  {
    v32 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    if (v32 >= v31)
    {
      break;
    }

    v30 = *(v27 + 8 * v32);
    ++v25;
    if (v30)
    {
      v25 = v32;
      goto LABEL_11;
    }
  }

  v40 = 0;
  v41 = v142 + 56;
  v42 = 1 << *(v142 + 32);
  if (v42 < 64)
  {
    v43 = ~(-1 << v42);
  }

  else
  {
    v43 = -1;
  }

  v44 = v43 & *(v142 + 56);
  v138 = OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_animationController;
  v136 = OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_geometryObserver;
  v45 = (v42 + 63) >> 6;
  v135 = *&v146 + 32;
  v46 = v139;
  v134 = v142 + 56;
  v133 = v45;
  v47 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (!v44)
    {
      do
      {
        v50 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          goto LABEL_84;
        }

        if (v50 >= v45)
        {

          v86 = v147;
          v23 = *&v132;
          *(v147 + v132) = *(v147 + v130);

          *(v86 + v131) = v129;

          specialized TextEffectsRenderer.updateKeyframes(with:)(v86);
          v22 = *(v86 + *&v23);
          if (v22 >> 62)
          {
            goto LABEL_89;
          }

          v87 = 0;
          if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_43;
          }

          goto LABEL_37;
        }

        v44 = *(v41 + 8 * v50);
        ++v40;
      }

      while (!v44);
      v40 = v50;
    }

    v51 = *(v142 + 48);
    v52 = v146;
    v140 = *(*&v146 + 72);
    v53 = v137;
    v54 = v148.size.height;
    v141 = *(*&v146 + 16);
    v141(v137, v51 + v140 * (__clz(__rbit64(v44)) | (v40 << 6)), *&v148.size.height);
    (*(*&v52 + 32))(v46, v53, COERCE_CGFLOAT(*&v54));
    v145 = COERCE_DOUBLE(type metadata accessor for TextRenderSurface());
    v55 = objc_allocWithZone(*&v145);
    v144 = OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919417TextRenderSurface_renderer;
    swift_unknownObjectWeakInit();
    *&v55[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919417TextRenderSurface_yDisplacement] = 0;
    v23 = *(v147 + v138);
    v56 = *(v147 + v136);
    v143 = COERCE_DOUBLE(type metadata accessor for TextRenderLayer(0));
    v57 = objc_allocWithZone(*&v143);
    swift_unknownObjectWeakInit();
    *&v57[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_fragment] = 0;
    v58 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_layout;
    v59 = type metadata accessor for TextRenderLayer.Layout(0);
    (*(*(v59 - 8) + 56))(&v57[v58], 1, 1, v59);
    v60 = &v57[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_rawLayout];
    *v60 = 0u;
    *(v60 + 1) = 0u;
    *(v60 + 4) = 0;
    *&v57[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_markers] = 0;
    v57[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_updateFlags] = 0;
    v61 = MEMORY[0x1E69E7CC8];
    *&v57[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_interactionMetrics] = MEMORY[0x1E69E7CC8];
    *&v57[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_segmentLayers] = v47;
    *&v57[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_effectToSegmentsIndices] = v61;
    *&v57[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_effectIdentifiers] = MEMORY[0x1E69E7CD0];
    *&v57[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_version] = -1;

    v62 = v56;
    RangeSet.init()();
    *&v57[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_sharedDrawingLayer] = 0;
    *&v57[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_displacements] = v47;
    v63 = &v57[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_layoutBounds];
    *v63 = 0u;
    v63[1] = 0u;
    v64 = &v57[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_layoutBoundsNaturalOutsets];
    *v64 = 0u;
    v64[1] = 0u;
    *&v57[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_layoutLineFragmentPadding] = 0;
    v65 = &v57[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_currentDisplacement];
    *v65 = 0u;
    v65[1] = 0u;
    *&v57[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_activeIdentifiers] = MEMORY[0x1E69E7CD0];
    v66 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_time;
    *&v57[v66] = CACurrentMediaTime();
    *&v57[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_animationController] = v23;
    swift_unknownObjectWeakAssign();
    v69 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI4TextV0E16AnimationSupportE6EffectO10IdentifierV_SiTt0g5Tf4g_n(v47, v67, v68);
    v70 = &v57[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_baseFragmentIdentifierMap];
    *v70 = v69;
    v70[1] = 0;
    v150.receiver = v57;
    *&v150.super_class = v143;

    v71 = objc_msgSendSuper2(&v150, sel_init);

    *&v55[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919417TextRenderSurface__layer] = v71;
    v46 = v139;
    swift_unknownObjectWeakAssign();
    v149.receiver = v55;
    *&v149.super_class = v145;
    v72 = objc_msgSendSuper2(&v149, sel_init);
    [*&v72[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919417TextRenderSurface__layer] setDelegate_];
    v73 = v148.size.width;
    swift_beginAccess();
    v74 = swift_isUniquelyReferenced_nonNull_native();
    v151 = **&v73;
    v22 = v151;
    **&v73 = 0x8000000000000000;
    v75 = specialized __RawDictionaryStorage.find<A>(_:)(v46);
    v77 = *(v22 + 16);
    v78 = (LOBYTE(v76) & 1) == 0;
    v79 = __OFADD__(v77, v78);
    v80 = v77 + v78;
    if (v79)
    {
      goto LABEL_87;
    }

    v23 = v76;
    if (*(v22 + 24) < v80)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v80, v74);
      v22 = v151;
      v75 = specialized __RawDictionaryStorage.find<A>(_:)(v46);
      if ((LOBYTE(v23) & 1) != (v81 & 1))
      {
LABEL_100:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }

LABEL_30:
      v82 = v151;
      if (LOBYTE(v23))
      {
        goto LABEL_18;
      }

      goto LABEL_31;
    }

    if (v74)
    {
      goto LABEL_30;
    }

    v22 = &v151;
    v85 = v75;
    specialized _NativeDictionary.copy()();
    v75 = v85;
    v82 = v151;
    if (LOBYTE(v23))
    {
LABEL_18:
      v48 = v82[7];
      v49 = *(v48 + 8 * v75);
      *(v48 + 8 * v75) = v72;

      (**&v148.origin.y)(v46, *&v148.size.height);
      goto LABEL_19;
    }

LABEL_31:
    v82[(v75 >> 6) + 8] |= 1 << v75;
    v22 = v75;
    v23 = v148.size.height;
    v141((v82[6] + v75 * v140), v46, *&v148.size.height);
    *(v82[7] + 8 * v22) = v72;
    (**&v148.origin.y)(v46, COERCE_CGFLOAT(*&v23));
    v83 = v82[2];
    v79 = __OFADD__(v83, 1);
    v84 = v83 + 1;
    if (v79)
    {
      break;
    }

    v82[2] = v84;
LABEL_19:
    v44 &= v44 - 1;
    **&v73 = v82;

    swift_endAccess();
    v41 = v134;
    v45 = v133;
  }

  while (1)
  {
    __break(1u);
LABEL_89:
    if (v22 < 0)
    {
      v124 = v22;
    }

    else
    {
      v124 = v22 & 0xFFFFFFFFFFFFFF8;
    }

    v87 = 0;
    if (MEMORY[0x19A8BDCD0](v124))
    {
LABEL_37:
      if ((v22 & 0xC000000000000001) != 0)
      {

        v88 = MEMORY[0x19A8BDB80](0, v22);
      }

      else
      {
        if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_100;
        }

        v88 = *(v22 + 32);
      }

      v89 = [v88 textLayoutManager];

      if (v89)
      {
        v90 = [v89 textContainer];

        if (v90)
        {
          [v90 lineFragmentPadding];
          v87 = v91;
        }
      }
    }

LABEL_43:
    v92 = OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_lineFragmentPadding;
    v93 = v147;
    *(v147 + OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_lineFragmentPadding) = v87;
    v22 = *(v93 + *&v23);
    v94 = MEMORY[0x1E695F050];
    if (v22 >> 62)
    {
      v125 = v22 < 0 ? v22 : v22 & 0xFFFFFFFFFFFFFF8;
      v95 = MEMORY[0x19A8BDCD0](v125);
    }

    else
    {
      v95 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v97 = *v94;
    v96 = *(v94 + 8);
    v98 = *(v94 + 16);
    v99 = *(v94 + 24);

    if (!v95)
    {
      break;
    }

    v23 = 0.0;
    LODWORD(v141) = *MEMORY[0x1E697E7D0];
    v142 = v128 + 104;
    v100 = *&v99;
    v101 = v98;
    v102 = *&v96;
    v146 = v97;
    v145 = *&v96;
    *&v144 = v98;
    v143 = *&v99;
    while (1)
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v103 = MEMORY[0x19A8BDB80](*&v23, v22);
      }

      else
      {
        if (*&v23 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_86;
        }

        v103 = *(v22 + 8 * *&v23 + 32);
      }

      v104 = v103;
      v105 = *&v23 + 1;
      if (__OFADD__(*&v23, 1))
      {
        break;
      }

      v148.origin.x = v97;
      v148.origin.y = v102;
      v148.size.width = v101;
      v148.size.height = v100;
      [v103 layoutFragmentFrame];
      x = v153.origin.x;
      y = v153.origin.y;
      v108 = v153.size.width;
      v109 = v153.size.height;
      v110 = *(v147 + v92);
      if (!CGRectIsNull(v153))
      {
        v154.origin.x = x;
        v154.origin.y = y;
        v154.size.width = v108;
        v154.size.height = v109;
        v155 = CGRectStandardize(v154);
        v111 = v155.origin.y;
        v112 = v155.origin.x - v110;
        v113 = v155.size.width - (-v110 - v110);
        v114 = v155.size.height + 0.0;
        v155.origin.x = v112;
        v155.size.width = v113;
        v155.size.height = v155.size.height + 0.0;
        v115 = CGRectGetWidth(v155);
        x = v146;
        y = v145;
        v108 = *&v144;
        v109 = v143;
        if (v115 >= 0.0)
        {
          v156.origin.x = v112;
          v156.origin.y = v111;
          v156.size.width = v113;
          v156.size.height = v114;
          v116 = CGRectGetHeight(v156);
          if (v116 >= 0.0)
          {
            x = v112;
          }

          else
          {
            x = v146;
          }

          if (v116 >= 0.0)
          {
            y = v111;
          }

          else
          {
            y = v145;
          }

          if (v116 >= 0.0)
          {
            v108 = v113;
          }

          else
          {
            v108 = *&v144;
          }

          if (v116 >= 0.0)
          {
            v109 = v114;
          }

          else
          {
            v109 = v143;
          }
        }
      }

      v158.origin.x = x;
      v158.origin.y = y;
      v158.size.width = v108;
      v158.size.height = v109;
      v152 = CGRectUnion(v148, v158);
      v97 = v152.origin.x;
      v102 = v152.origin.y;
      v101 = v152.size.width;
      v100 = v152.size.height;

      ++*&v23;
      if (v105 == v95)
      {
        goto LABEL_68;
      }
    }

LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
  }

  v102 = *&v96;
  v101 = v98;
  v100 = *&v99;
LABEL_68:

  v157.origin.x = v97;
  v157.origin.y = v102;
  v157.size.width = v101;
  v157.size.height = v100;
  IsNull = CGRectIsNull(v157);
  if (IsNull)
  {
    v118 = 0.0;
  }

  else
  {
    v118 = v97;
  }

  if (IsNull)
  {
    v119 = 0.0;
  }

  else
  {
    v119 = v102;
  }

  if (IsNull)
  {
    v120 = 0.0;
  }

  else
  {
    v120 = v101;
  }

  if (IsNull)
  {
    v121 = 0.0;
  }

  else
  {
    v121 = v100;
  }

  v122 = (v147 + OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_layoutBounds);
  v159.origin.x = v118;
  v159.origin.y = v119;
  v159.size.width = v120;
  v159.size.height = v121;
  v123 = CGRectEqualToRect(*(v147 + OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_layoutBounds), v159);
  if (!v123)
  {
    *v122 = v118;
    v122[1] = v119;
    v122[2] = v120;
    v122[3] = v121;
  }

  TextEffectsRenderer.updateDisplacementAndBounds(changed:)(!v123);
  TextEffectsAnimationController.restorePendingSnapshots()();
}

double specialized TextEffectsRenderer.updateKeyframes(with:)(uint64_t a1)
{
  v128 = type metadata accessor for UUID();
  v2 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128);
  v4 = &v98 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v114 = &v98 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v98 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v110 = &v98 - v11;
  type metadata accessor for TextRenderLayer.Layout?(0, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v107 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v112 = &v98 - v15;
  type metadata accessor for (NSTextLayoutFragment, UUID)(0);
  v122 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v116 = &v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v119 = &v98 - v19;
  v20 = *(a1 + OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_keyframesVersion) + 1;
  v106 = OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_keyframesVersion;
  *(a1 + OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_keyframesVersion) = v20;
  type metadata accessor for Text.Effect.Keyframes.Storage();
  v21 = swift_allocObject();
  v22 = MEMORY[0x1E69E7CD0];
  v21[5] = MEMORY[0x1E69E7CD0];
  v23 = MEMORY[0x1E69E7CC8];
  v21[6] = MEMORY[0x1E69E7CC8];
  v21[2] = v23;
  v21[3] = v23;
  v21[4] = v23;
  swift_beginAccess();
  v21[5] = v22;
  v21[7] = v20;
  v139 = v21;
  v26 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI4TextV0E16AnimationSupportE6EffectO10IdentifierV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0], v24, v25);
  v27 = *(a1 + OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_currentFragments);
  v137 = v26;
  v138 = 0;
  v111 = OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_currentIDs;
  v127 = a1;
  v28 = *(a1 + OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_currentIDs);
  v108 = OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_currentFragments;
  if (v27 >> 62)
  {
    goto LABEL_64;
  }

  v120 = v27 & 0xFFFFFFFFFFFFFF8;
  for (i = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = MEMORY[0x19A8BDCD0](v96))
  {
    v117 = v9;
    v123 = (v2 + 32);
    v124 = v2 + 16;
    v125 = (v2 + 8);
    v126 = OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_surfaceMap;

    if (i)
    {
      v9 = 0;
      v109 = 0;
      v118 = v27 & 0xC000000000000001;
      v115 = i;
      v121 = v28;
      while (1)
      {
        if (v118)
        {
          v30 = MEMORY[0x19A8BDB80](v9, v27);
        }

        else
        {
          if (v9 >= *(v120 + 16))
          {
            goto LABEL_60;
          }

          v30 = *(v27 + 8 * v9 + 32);
        }

        v31 = v30;
        v32 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_59;
        }

        v33 = *(v121 + 16);
        if (v9 == v33)
        {

          goto LABEL_19;
        }

        if (v9 >= v33)
        {
          goto LABEL_62;
        }

        v28 = v27;
        v34 = *(v122 + 48);
        v35 = v119;
        v36 = v128;
        (*(v2 + 16))(&v119[v34], v121 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v9, v128);
        v37 = v127;
        (*(v2 + 32))(v4, &v35[v34], v36);
        v38 = v126;
        swift_beginAccess();
        v39 = *(v37 + v38);
        if (*(v39 + 16) && (v40 = specialized __RawDictionaryStorage.find<A>(_:)(v4), (v41 & 1) != 0))
        {
          v42 = *(*(v39 + 56) + 8 * v40);
          swift_endAccess();
          v43 = *v125;
          v44 = v42;
          v104 = v44;
          v43(v4, v128);
          v45 = v137;
          v46 = v138;
          v47 = *(v127 + v106);
          v48 = *&v44[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919417TextRenderSurface__layer];
          TextRenderLayer.update(with:baseFragmentIdentifierMap:version:)(v31, v45, v46, v47, &v129);
          v49 = v129;
          v50 = v130;
          v103 = v129;
          v102 = v130;
          v51 = v131;
          v52 = v132;
          v100 = v133;
          v99 = v134;
          v101 = v135;
          v105 = v136;

          Text.Effect.Keyframes.appendPartial(map:keyframes:baseFragmentIdentifierMap:)(v49, v50, v51, v52, v100, v99, v101, &v137);

          v109 |= v105;
          v9 = v32;
          v27 = v28;
          v28 = v121;
          if (v32 == v115)
          {
            goto LABEL_19;
          }
        }

        else
        {
          swift_endAccess();

          (*v125)(v4, v128);
          ++v9;
          v27 = v28;
          if (v32 == v115)
          {
            goto LABEL_19;
          }
        }
      }
    }

    v109 = 0;
LABEL_19:

    v27 = *(v127 + OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_animationController);
    v9 = v114;
    v53 = v110;
    if (v109)
    {
      TextEffectsAnimationController.updateKeyframes(_:)(v139);
    }

    else
    {
      TextEffectsAnimationController.updateKeyframes(version:)(*(v127 + v106));
    }

    v54 = *(v127 + v111);
    v55 = *(v54 + 16);
    if (!v55)
    {
      break;
    }

    v4 = v54 + ((*(v2 + 80) + 32) & ~*(v2 + 80));

    v56 = 0;
    v28 = &off_1E744B000;
    while (v56 < *(v54 + 16))
    {
      (*(v2 + 16))(v9, v4 + *(v2 + 72) * v56, v128);
      v58 = v126;
      v57 = v127;
      swift_beginAccess();
      v27 = *(v57 + v58);
      if (*(v27 + 16) && (v59 = specialized __RawDictionaryStorage.find<A>(_:)(v9), (v60 & 1) != 0))
      {
        v61 = *(*(v27 + 56) + 8 * v59);
        swift_endAccess();
        v62 = *&v61[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919417TextRenderSurface__layer];
        v63 = v61;
        v64 = [v62 superlayer];
        v27 = [v64 superlayer];

        v9 = v114;
        if (v27)
        {

          (*v123)(v112, v9, v128);
          v65 = 0;
LABEL_32:
          v53 = v110;
          goto LABEL_34;
        }
      }

      else
      {
        swift_endAccess();
      }

      ++v56;
      (*v125)(v9, v128);
      if (v55 == v56)
      {

        v65 = 1;
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    v120 = v27 & 0xFFFFFFFFFFFFFF8;
    if (v27 < 0)
    {
      v96 = v27;
    }

    else
    {
      v96 = v27 & 0xFFFFFFFFFFFFFF8;
    }
  }

  v65 = 1;
LABEL_34:
  v66 = v112;
  v67 = v128;
  (*(v2 + 56))(v112, v65, 1, v128);

  v68 = v66;
  v27 = v107;
  outlined init with copy of TextRenderLayer.Layout?(v68, v107, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8]);
  if ((*(v2 + 48))(v27, 1, v67) == 1)
  {
    outlined destroy of TextRenderLayer.Layout?(v27, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8]);
  }

  else
  {
    (*v123)(v53, v27, v128);
    v70 = v126;
    v69 = v127;
    swift_beginAccess();
    v27 = *(v69 + v70);
    if (*(v27 + 16) && (v71 = specialized __RawDictionaryStorage.find<A>(_:)(v53), (v72 & 1) != 0))
    {
      v73 = *(*(v27 + 56) + 8 * v71);
      swift_endAccess();
      v74 = *(v127 + OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_geometryObserver);
      v75 = *&v73[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919417TextRenderSurface__layer];
      v76 = v73;
      v27 = [v75 superlayer];
      v77 = [v27 superlayer];

      (*v125)(v53, v128);
      v78 = *(v74 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919421LayerGeometryObserver_ancestor);
      *(v74 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919421LayerGeometryObserver_ancestor) = v77;
    }

    else
    {
      swift_endAccess();
      (*v125)(v53, v128);
    }
  }

  v79 = *(v127 + v108);
  v9 = *(v127 + v111);
  if (v79 >> 62)
  {
    if (v79 < 0)
    {
      v97 = *(v127 + v108);
    }

    else
    {
      v97 = v79 & 0xFFFFFFFFFFFFFF8;
    }

    v28 = MEMORY[0x19A8BDCD0](v97);
  }

  else
  {
    v28 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v28)
  {
    v4 = 0;
    v80 = v79 & 0xC000000000000001;
    v121 = v79 & 0xFFFFFFFFFFFFFF8;
    v120 = v79 & 0xC000000000000001;
    v113 = v2;
    while (1)
    {
      if (v80)
      {
        v81 = MEMORY[0x19A8BDB80](v4, v79);
      }

      else
      {
        if (v4 >= *(v121 + 16))
        {
          goto LABEL_61;
        }

        v81 = *(v79 + 8 * v4 + 32);
      }

      v82 = v81;
      v83 = *(v9 + 16);
      if (v4 == v83)
      {
        break;
      }

      if (v4 >= v83)
      {
        goto LABEL_63;
      }

      v84 = *(v122 + 48);
      v85 = v116;
      v86 = v128;
      (*(v2 + 16))(&v116[v84], v9 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v4, v128);
      v87 = &v85[v84];
      v88 = v117;
      (*(v2 + 32))(v117, v87, v86);
      v89 = v126;
      v90 = v127;
      swift_beginAccess();
      v27 = *(v90 + v89);
      if (*(v27 + 16) && (v91 = specialized __RawDictionaryStorage.find<A>(_:)(v88), (v92 & 1) != 0))
      {
        v93 = *(*(v27 + 56) + 8 * v91);
        swift_endAccess();
        v94 = *v125;
        v27 = v93;
        v94(v88, v128);
        v2 = v113;
        v80 = v120;
      }

      else
      {
        swift_endAccess();

        (*v125)(v88, v128);
      }

      if (v28 == ++v4)
      {
        goto LABEL_55;
      }
    }

    outlined destroy of TextRenderLayer.Layout?(v112, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8]);
  }

  else
  {
LABEL_55:

    outlined destroy of TextRenderLayer.Layout?(v112, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8]);
  }

  return result;
}

void specialized TextEffectsRenderer.updateKeyframes(with:)(unint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v104 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v104 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v121 = &v104 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v115 = &v104 - v12;
  type metadata accessor for TextRenderLayer.Layout?(0, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v114 = &v104 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v118 = &v104 - v16;
  type metadata accessor for (NSTextLayoutFragment, UUID)(0);
  v128 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v119 = &v104 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v125 = &v104 - v20;
  v21 = *(a1 + OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_keyframesVersion) + 1;
  v113 = OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_keyframesVersion;
  *(a1 + OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_keyframesVersion) = v21;
  type metadata accessor for Text.Effect.Keyframes.Storage();
  v22 = swift_allocObject();
  v23 = MEMORY[0x1E69E7CD0];
  v22[5] = MEMORY[0x1E69E7CD0];
  v24 = MEMORY[0x1E69E7CC8];
  v22[6] = MEMORY[0x1E69E7CC8];
  v22[2] = v24;
  v22[3] = v24;
  v22[4] = v24;
  swift_beginAccess();
  v22[5] = v23;
  v22[7] = v21;
  v144 = v22;
  v27 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI4TextV0E16AnimationSupportE6EffectO10IdentifierV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0], v25, v26);
  v116 = OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_currentFragments;
  v28 = *(a1 + OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_currentFragments);
  v142 = v27;
  v143 = 0;
  v117 = OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_currentIDs;
  v29 = *(a1 + OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_currentIDs);
  if (v28 >> 62)
  {
    goto LABEL_68;
  }

  v126 = v28 & 0xFFFFFFFFFFFFFF8;
  for (i = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = MEMORY[0x19A8BDCD0](v102))
  {
    v120 = v8;
    v133 = OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_surfaceMap;
    v131 = v3 + 16;
    v129 = (v3 + 32);
    v132 = (v3 + 8);

    v127 = a1;
    if (i)
    {
      v8 = 0;
      LODWORD(v31) = 0;
      v124 = v28 & 0xC000000000000001;
      v122 = i;
      v123 = v28;
      v130 = v29;
LABEL_5:
      v112 = v31;
      v31 = v2;
      while (1)
      {
        if (v124)
        {
          v32 = MEMORY[0x19A8BDB80](v8, v28);
          v2 = v31;
        }

        else
        {
          if (v8 >= *(v126 + 16))
          {
            goto LABEL_64;
          }

          v2 = v31;
          v32 = *(v28 + 8 * v8 + 32);
        }

        v33 = v8 + 1;
        v29 = v130;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_63;
        }

        v34 = v130[2];
        if (v8 == v34)
        {

          LOBYTE(v31) = v112;
          goto LABEL_23;
        }

        if (v8 >= v34)
        {
          goto LABEL_66;
        }

        v35 = *(v128 + 48);
        v36 = v125;
        (*(v3 + 16))(&v125[v35], v130 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v8, v2);
        (*(v3 + 32))(v5, &v36[v35], v2);
        v37 = v133;
        swift_beginAccess();
        v2 = a1;
        v29 = *(a1 + v37);
        if (v29[2])
        {
          v38 = specialized __RawDictionaryStorage.find<A>(_:)(v5);
          if (v39)
          {
            v40 = *(v29[7] + 8 * v38);
            swift_endAccess();
            v41 = *v132;
            v42 = v40;
            v110 = v42;
            v41(v5, v31);
            v43 = v142;
            v44 = v143;
            v45 = *(a1 + v113);
            v46 = *&v42[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919417TextRenderSurface__layer];
            TextRenderLayer.update(with:baseFragmentIdentifierMap:version:)(v32, v43, v44, v45, &v134);
            v47 = v134;
            v48 = v135;
            v109 = v134;
            v108 = v135;
            v106 = v136;
            v105 = v137;
            v49 = v139;
            v104 = v138;
            v107 = v140;
            v2 = v31;
            v111 = v141;

            Text.Effect.Keyframes.appendPartial(map:keyframes:baseFragmentIdentifierMap:)(v47, v48, v106, v105, v104, v49, v107, &v142);

            LODWORD(v31) = v112 | v111;
            a1 = v127;
            v8 = v33;
            v28 = v123;
            v29 = v130;
            if (v33 != v122)
            {
              goto LABEL_5;
            }

            goto LABEL_22;
          }
        }

        swift_endAccess();

        (*v132)(v5, v31);
        ++v8;
        v28 = v123;
        if (v33 == v122)
        {
          v2 = v31;
          LOBYTE(v31) = v112;
          goto LABEL_22;
        }
      }
    }

    LOBYTE(v31) = 0;
LABEL_22:

LABEL_23:

    v29 = *(a1 + OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_animationController);
    v8 = v120;
    v28 = v116;
    if (v31)
    {
      TextEffectsAnimationController.updateKeyframes(_:)(v144);
    }

    else
    {
      TextEffectsAnimationController.updateKeyframes(version:)(*(a1 + v113));
    }

    v50 = *(a1 + v117);
    v51 = *(v50 + 16);
    if (!v51)
    {
      break;
    }

    v5 = (v50 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));

    a1 = 0;
    while (a1 < *(v50 + 16))
    {
      (*(v3 + 16))(v8, &v5[*(v3 + 72) * a1], v2);
      v52 = v127;
      v53 = v133;
      swift_beginAccess();
      v29 = *(v52 + v53);
      if (v29[2] && (v54 = specialized __RawDictionaryStorage.find<A>(_:)(v8), (v55 & 1) != 0))
      {
        v56 = *(v29[7] + 8 * v54);
        swift_endAccess();
        v57 = *&v56[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919417TextRenderSurface__layer];
        v58 = v56;
        v28 = &off_1E744B000;
        v59 = [v57 superlayer];
        v29 = [v59 superlayer];

        v8 = v120;
        if (v29)
        {

          (*v129)(v118, v8, v2);
          v60 = 0;
LABEL_36:
          a1 = v127;
          v61 = v115;
          v28 = v116;
          goto LABEL_38;
        }
      }

      else
      {
        swift_endAccess();
      }

      ++a1;
      (*v132)(v8, v2);
      if (v51 == a1)
      {

        v60 = 1;
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    v126 = v28 & 0xFFFFFFFFFFFFFF8;
    if (v28 < 0)
    {
      v102 = v28;
    }

    else
    {
      v102 = v28 & 0xFFFFFFFFFFFFFF8;
    }
  }

  v60 = 1;
  v61 = v115;
LABEL_38:
  v62 = v118;
  (*(v3 + 56))(v118, v60, 1, v2);

  v63 = v62;
  v64 = v114;
  outlined init with copy of TextRenderLayer.Layout?(v63, v114, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8]);
  v65 = (*(v3 + 48))(v64, 1, v2);
  v66 = v119;
  if (v65 == 1)
  {
    outlined destroy of TextRenderLayer.Layout?(v64, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8]);
  }

  else
  {
    (*v129)(v61, v64, v2);
    v67 = v133;
    swift_beginAccess();
    v68 = *(a1 + v67);
    if (*(v68 + 16) && (v69 = specialized __RawDictionaryStorage.find<A>(_:)(v61), (v70 & 1) != 0))
    {
      v71 = *(*(v68 + 56) + 8 * v69);
      swift_endAccess();
      v72 = *(a1 + OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_geometryObserver);
      v73 = *&v71[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919417TextRenderSurface__layer];
      v74 = v71;
      v75 = [v73 superlayer];
      v76 = [v75 superlayer];

      v66 = v119;
      (*v132)(v61, v2);
      v77 = *(v72 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919421LayerGeometryObserver_ancestor);
      *(v72 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919421LayerGeometryObserver_ancestor) = v76;
    }

    else
    {
      swift_endAccess();
      (*v132)(v61, v2);
    }
  }

  v78 = *(a1 + v28);
  v130 = *(a1 + v117);
  if (v78 >> 62)
  {
    if (v78 < 0)
    {
      v103 = v78;
    }

    else
    {
      v103 = v78 & 0xFFFFFFFFFFFFFF8;
    }

    v29 = MEMORY[0x19A8BDCD0](v103);
  }

  else
  {
    v29 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v28 = v121;

  if (v29)
  {
    v8 = 0;
    v126 = v78 & 0xC000000000000001;
    v125 = (v78 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if (v126)
      {
        v79 = MEMORY[0x19A8BDB80](v8, v78);
      }

      else
      {
        if (v8 >= *(v125 + 2))
        {
          goto LABEL_65;
        }

        v79 = *(v78 + 8 * v8 + 32);
      }

      v5 = v79;
      v80 = v130[2];
      if (v8 == v80)
      {
        break;
      }

      if (v8 >= v80)
      {
        goto LABEL_67;
      }

      v81 = v29;
      v82 = *(v128 + 48);
      (*(v3 + 16))(&v66[v82], v130 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v8, v2);
      (*(v3 + 32))(v28, &v66[v82], v2);
      v83 = v133;
      swift_beginAccess();
      v84 = *(a1 + v83);
      if (*(v84 + 16) && (v85 = specialized __RawDictionaryStorage.find<A>(_:)(v28), (v86 & 1) != 0))
      {
        v87 = *(*(v84 + 56) + 8 * v85);
        swift_endAccess();
        v88 = *v132;
        v89 = v87;
        v88(v121, v2);
        v28 = v121;
        v90 = v89;
        [v5 layoutFragmentFrame];
        [v90 adjustedLayoutFragmentFrame_];
        v92 = v91;
        v94 = v93;
        v96 = v95;
        v98 = v97;
        v99 = [v90 layer];
        [v99 setFrame_];

        v100 = [v90 &off_1E744B878];
        [v100 setBounds_];

        a1 = v127;
        v101 = [v90 &off_1E744B878];
        [v101 layoutIfNeeded];

        v66 = v119;
      }

      else
      {
        swift_endAccess();

        (*v132)(v28, v2);
      }

      ++v8;
      v29 = v81;
      if (v81 == v8)
      {
        goto LABEL_59;
      }
    }

    outlined destroy of TextRenderLayer.Layout?(v118, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8]);
  }

  else
  {
LABEL_59:

    outlined destroy of TextRenderLayer.Layout?(v118, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8]);
  }
}

double TextEffectsRenderer.updateKeyframes(with:)(void (*a1)(void *, id), uint64_t a2)
{
  v119 = a2;
  v118 = a1;
  type metadata accessor for TextRenderLayer.Layout?(0, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v113 = &v107 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v117 = &v107 - v6;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v120 = &v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v107 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v128 = &v107 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v107 - v16;
  type metadata accessor for (NSTextLayoutFragment, UUID)(0);
  v129 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v124 = &v107 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v126 = &v107 - v21;
  v22 = *&v2[OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_keyframesVersion] + 1;
  v111 = OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_keyframesVersion;
  *&v2[OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_keyframesVersion] = v22;
  type metadata accessor for Text.Effect.Keyframes.Storage();
  v23 = swift_allocObject();
  v24 = MEMORY[0x1E69E7CD0];
  v23[5] = MEMORY[0x1E69E7CD0];
  v25 = MEMORY[0x1E69E7CC8];
  v23[6] = MEMORY[0x1E69E7CC8];
  v23[2] = v25;
  v23[3] = v25;
  v23[4] = v25;
  swift_beginAccess();
  v23[5] = v24;
  v26 = v2;
  v23[7] = v22;
  v140 = v23;
  v29 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI4TextV0E16AnimationSupportE6EffectO10IdentifierV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0], v27, v28);
  v30 = *&v2[OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_currentFragments];
  v138 = v29;
  v139 = 0;
  v116 = OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_currentIDs;
  v131 = *&v26[OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_currentIDs];
  v112 = OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_currentFragments;
  if (v30 >> 62)
  {
    goto LABEL_66;
  }

  v127 = v30 & 0xFFFFFFFFFFFFFF8;
  for (i = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = MEMORY[0x19A8BDCD0](v105))
  {
    v114 = v12;
    v133 = v8 + 16;
    v130 = (v8 + 32);
    v134 = (v8 + 8);
    v135 = OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_surfaceMap;

    v132 = v26;
    v32 = v7;
    if (i)
    {
      v33 = 0;
      v115 = 0;
      v125 = v30 & 0xC000000000000001;
      v123 = v30;
      v122 = i;
      v121 = v8;
      while (1)
      {
        if (v125)
        {
          v34 = MEMORY[0x19A8BDB80](v33, v30);
          v35 = v33 + 1;
          if (__OFADD__(v33, 1))
          {
            goto LABEL_18;
          }
        }

        else
        {
          if (v33 >= *(v127 + 16))
          {
            goto LABEL_62;
          }

          v34 = *(v30 + 8 * v33 + 32);
          v35 = v33 + 1;
          if (__OFADD__(v33, 1))
          {
LABEL_18:
            __break(1u);
            goto LABEL_19;
          }
        }

        v36 = *(v131 + 16);
        if (v33 == v36)
        {
          break;
        }

        if (v33 >= v36)
        {
          goto LABEL_64;
        }

        v37 = v8;
        v38 = v34;
        v7 = v32;
        v39 = *(v129 + 48);
        v40 = v26;
        v41 = v17;
        v42 = v126;
        v43 = v134;
        (*(v37 + 16))(&v126[v39], v131 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v33, v7);
        v44 = &v42[v39];
        v17 = v41;
        v26 = v40;
        v32 = v7;
        (*(v37 + 32))(v17, v44, v7);
        v45 = v135;
        swift_beginAccess();
        v46 = *&v26[v45];
        if (*(v46 + 16) && (v47 = specialized __RawDictionaryStorage.find<A>(_:)(v17), (v48 & 1) != 0))
        {
          v49 = *(*(v46 + 56) + 8 * v47);
          swift_endAccess();
          v50 = *v43;
          v51 = v49;
          v109 = v51;
          v50(v17, v7);
          v52 = v138;
          v53 = v139;
          v54 = *&v132[v111];
          v55 = *&v51[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919417TextRenderSurface__layer];
          v108 = v38;
          TextRenderLayer.update(with:baseFragmentIdentifierMap:version:)(v38, v52, v53, v54, v136);
          v56 = v136[0];
          v57 = v136[1];
          v58 = v136[2];
          v7 = v136[3];
          v59 = v136[4];
          v60 = v136[5];
          v107 = v136[6];
          v110 = v137;

          Text.Effect.Keyframes.appendPartial(map:keyframes:baseFragmentIdentifierMap:)(v56, v57, v58, v7, v59, v60, v107, &v138);

          v115 |= v110;
          v26 = v132;
          v33 = v35;
        }

        else
        {
          swift_endAccess();

          (*v43)(v17, v7);
          ++v33;
        }

        v12 = v128;
        v30 = v123;
        v8 = v121;
        if (v35 == v122)
        {
          goto LABEL_20;
        }
      }

      v12 = v128;
    }

    else
    {
LABEL_19:
      v115 = 0;
      v12 = v128;
LABEL_20:
    }

    v30 = *&v26[OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_animationController];
    v17 = v120;
    if (v115)
    {
      TextEffectsAnimationController.updateKeyframes(_:)(v140);
    }

    else
    {
      TextEffectsAnimationController.updateKeyframes(version:)(*&v26[v111]);
    }

    v61 = v26;
    v26 = *&v26[v116];
    v62 = *(v26 + 2);
    if (!v62)
    {
      break;
    }

    v17 = &v26[(*(v8 + 80) + 32) & ~*(v8 + 80)];

    v63 = 0;
    v7 = &off_1E744B000;
    while (v63 < *(v26 + 2))
    {
      (*(v8 + 16))(v12, &v17[*(v8 + 72) * v63], v32);
      v64 = v132;
      v65 = v135;
      swift_beginAccess();
      v30 = *(v64 + v65);
      if (*(v30 + 16) && (v66 = specialized __RawDictionaryStorage.find<A>(_:)(v12), (v67 & 1) != 0))
      {
        v68 = *(*(v30 + 56) + 8 * v66);
        swift_endAccess();
        v69 = *&v68[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919417TextRenderSurface__layer];
        v70 = v68;
        v71 = [v69 superlayer];
        v30 = [v71 superlayer];

        v12 = v128;
        if (v30)
        {

          (*v130)(v117, v12, v32);
          v72 = 0;
LABEL_35:
          v61 = v132;
          v17 = v120;
          goto LABEL_37;
        }
      }

      else
      {
        swift_endAccess();
      }

      ++v63;
      (*v134)(v12, v32);
      if (v62 == v63)
      {

        v72 = 1;
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    v127 = v30 & 0xFFFFFFFFFFFFFF8;
    if (v30 < 0)
    {
      v105 = v30;
    }

    else
    {
      v105 = v30 & 0xFFFFFFFFFFFFFF8;
    }
  }

  v72 = 1;
LABEL_37:
  v73 = v117;
  (*(v8 + 56))(v117, v72, 1, v32);

  v74 = v73;
  v75 = v113;
  outlined init with copy of TextRenderLayer.Layout?(v74, v113, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8]);
  v76 = (*(v8 + 48))(v75, 1, v32);
  v77 = v114;
  if (v76 == 1)
  {
    outlined destroy of TextRenderLayer.Layout?(v75, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8]);
  }

  else
  {
    (*v130)(v114, v75, v32);
    v78 = v135;
    swift_beginAccess();
    v79 = *(v61 + v78);
    if (*(v79 + 16) && (v80 = specialized __RawDictionaryStorage.find<A>(_:)(v77), (v81 & 1) != 0))
    {
      v82 = *(*(v79 + 56) + 8 * v80);
      swift_endAccess();
      v83 = *(v61 + OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_geometryObserver);
      v84 = *&v82[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919417TextRenderSurface__layer];
      v26 = v82;
      v85 = [v84 superlayer];
      v86 = [v85 superlayer];

      (*v134)(v77, v32);
      v87 = *(v83 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919421LayerGeometryObserver_ancestor);
      *(v83 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919421LayerGeometryObserver_ancestor) = v86;
      v61 = v132;
    }

    else
    {
      swift_endAccess();
      (*v134)(v77, v32);
    }
  }

  v7 = *(v61 + v112);
  v88 = *(v61 + v116);
  if (v7 >> 62)
  {
    if (v7 < 0)
    {
      v106 = *(v61 + v112);
    }

    else
    {
      v106 = v7 & 0xFFFFFFFFFFFFFF8;
    }

    v30 = MEMORY[0x19A8BDCD0](v106);
  }

  else
  {
    v30 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v30)
  {
    v12 = 0;
    v131 = v7 & 0xC000000000000001;
    v128 = (v7 & 0xFFFFFFFFFFFFFF8);
    v127 = v88;
    while (1)
    {
      if (v131)
      {
        v89 = MEMORY[0x19A8BDB80](v12, v7);
      }

      else
      {
        if (v12 >= *(v128 + 2))
        {
          goto LABEL_63;
        }

        v89 = *(v7 + 8 * v12 + 32);
      }

      v90 = v89;
      v91 = *(v88 + 16);
      if (v12 == v91)
      {
        break;
      }

      if (v12 >= v91)
      {
        goto LABEL_65;
      }

      v26 = v30;
      v92 = v88 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v12;
      v93 = *(v129 + 48);
      v94 = v124;
      (*(v8 + 16))(&v124[v93], v92, v32);
      (*(v8 + 32))(v17, &v94[v93], v32);
      v95 = v132;
      v96 = v135;
      swift_beginAccess();
      v97 = *(v95 + v96);
      if (*(v97 + 16) && (v98 = specialized __RawDictionaryStorage.find<A>(_:)(v17), (v99 & 1) != 0))
      {
        v100 = *(*(v97 + 56) + 8 * v98);
        swift_endAccess();
        v101 = *v134;
        v102 = v100;
        v101(v120, v32);
        v103 = v102;
        v118(v90, v103);

        v17 = v120;
      }

      else
      {
        swift_endAccess();

        (*v134)(v17, v32);
      }

      v30 = v26;
      ++v12;
      v88 = v127;
      if (v26 == v12)
      {
        goto LABEL_58;
      }
    }

    outlined destroy of TextRenderLayer.Layout?(v117, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8]);
  }

  else
  {
LABEL_58:

    outlined destroy of TextRenderLayer.Layout?(v117, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8]);
  }

  return result;
}

BOOL TextEffectsRenderer.fragmentsValid.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_currentFragments);
  if (v1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = MEMORY[0x19A8BDCD0](v10))
  {

    if (!i)
    {
      break;
    }

    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x19A8BDB80](v3, v1);
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v7 = [v4 textElement];

      v8 = v7 != 0;
      if (v7)
      {

        ++v3;
        if (v6 != i)
        {
          continue;
        }
      }

      goto LABEL_14;
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    if (v1 < 0)
    {
      v10 = v1;
    }

    else
    {
      v10 = v1 & 0xFFFFFFFFFFFFFF8;
    }
  }

  v8 = 1;
LABEL_14:

  return v8;
}

void TextEffectsRenderer.enumerateTextSegments(in:type:options:textLayoutManager:using:)(id a1, uint64_t a2, uint64_t isEscapingClosureAtFileLocation, void *a4, void *a5, uint64_t a6)
{
  if (!TextEffectsRenderer.fragmentsValid.getter())
  {
    goto LABEL_10;
  }

  v13 = *&v6[OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_currentFragments];
  if (v13 >> 62)
  {
    goto LABEL_6;
  }

  if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
  {
    while (1)
    {
      v14 = swift_allocObject();
      v14[2] = a1;
      v14[3] = a5;
      v14[4] = a6;
      v14[5] = v6;
      a6 = swift_allocObject();
      *(a6 + 16) = partial apply for closure #1 in TextEffectsRenderer.enumerateTextSegments(in:type:options:textLayoutManager:using:);
      *(a6 + 24) = v14;
      v29 = partial apply for thunk for @callee_guaranteed (@guaranteed NSTextRange?, @unowned CGRect, @unowned CGFloat, @guaranteed NSTextContainer, @unowned NSTextLayoutManagerSegmentCategory) -> (@unowned Bool);
      v30 = a6;
      aBlock = MEMORY[0x1E69E9820];
      v26 = 1107296256;
      v27 = thunk for @escaping @callee_guaranteed (@guaranteed NSTextRange?, @unowned CGRect, @unowned CGFloat, @guaranteed NSTextContainer, @unowned NSTextLayoutManagerSegmentCategory) -> (@unowned Bool);
      v28 = &block_descriptor_153;
      a5 = _Block_copy(&aBlock);
      a1 = a1;
      v15 = v6;

      [a4 enumerateTextSegmentAndCategoryInRange:a1 type:a2 options:isEscapingClosureAtFileLocation usingBlock:a5];
      _Block_release(a5);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        break;
      }

      __break(1u);
LABEL_6:
      if (v13 < 0)
      {
        v16 = v13;
      }

      else
      {
        v16 = v13 & 0xFFFFFFFFFFFFFF8;
      }

      if (MEMORY[0x19A8BDCD0](v16) < 1)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v17 = swift_allocObject();
    *(v17 + 16) = a5;
    *(v17 + 24) = a6;
    v29 = partial apply for thunk for @callee_guaranteed (@guaranteed NSTextRange?, @unowned CGRect, @unowned CGFloat, @guaranteed NSTextContainer) -> (@unowned Bool);
    v30 = v17;
    aBlock = MEMORY[0x1E69E9820];
    v26 = 1107296256;
    v27 = thunk for @escaping @callee_guaranteed (@guaranteed NSTextRange?, @unowned CGRect, @unowned CGFloat, @guaranteed NSTextContainer) -> (@unowned Bool);
    v28 = &block_descriptor_144;
    v18 = _Block_copy(&aBlock);

    [a4 enumerateTextSegmentsInRange:a1 type:a2 options:isEscapingClosureAtFileLocation usingBlock:v18];
    _Block_release(v18);
    v19 = swift_isEscapingClosureAtFileLocation();

    if (v19)
    {
      __break(1u);
    }

    else
    {
      type metadata accessor for [Text.Effect.Identifier](0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Any>, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_195CC8D00;
      aBlock = 0;
      v26 = 0xE000000000000000;
      _StringGuts.grow(_:)(38);

      aBlock = 0xD000000000000029;
      v26 = 0x8000000195CE05F0;
      v21 = StaticString.description.getter();
      MEMORY[0x19A8BD680](v21);

      MEMORY[0x19A8BD680](58, 0xE100000000000000);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x19A8BD680](v22);

      MEMORY[0x19A8BD680](0xD00000000000001CLL, 0x8000000195CDEE50);
      v23 = aBlock;
      v24 = v26;
      *(v20 + 56) = MEMORY[0x1E69E6158];
      *(v20 + 32) = v23;
      *(v20 + 40) = v24;
      print(_:separator:terminator:)();
    }
  }
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed NSTextRange?, @unowned CGRect, @unowned CGFloat, @guaranteed NSTextContainer) -> (@unowned Bool)(uint64_t a1, void *a2, void *a3, double a4, double a5, double a6, double a7, double a8)
{
  v15 = *(a1 + 32);
  v16 = a2;
  v17 = a3;
  v18 = v15(a2, v17, a4, a5, a6, a7, a8);

  return v18 & 1;
}

void closure #1 in TextEffectsRenderer.enumerateTextSegments(in:type:options:textLayoutManager:using:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, uint64_t, double, double, double, double, double), uint64_t a6, void (*a7)(uint64_t, void *, __n128), CGFloat a8, CGFloat a9, CGFloat a10, CGFloat a11, double a12)
{
  v185 = a7;
  v184 = a4;
  v171 = a3;
  v21 = MEMORY[0x1E69E6720];
  type metadata accessor for TextRenderLayer.Layout?(0, &lazy cache variable for type metadata for Text.Effect.SegmentInteraction.Element?, type metadata accessor for Text.Effect.SegmentInteraction.Element, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v167 = &v162 - v23;
  v172 = type metadata accessor for Text.Effect.SegmentInteraction.Element(0);
  v173 = *(v172 - 8);
  MEMORY[0x1EEE9AC00](v172);
  v165 = &v162 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v164 = &v162 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v166 = &v162 - v28;
  type metadata accessor for _SetStorage<Text.Effect.Identifier>(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BE0]);
  v175 = v29;
  v168 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v176 = &v162 - v30;
  v31 = type metadata accessor for Text.Effect.RenderSegmentation.Segment(0);
  v174 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v169 = &v162 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TextRenderLayer.Layout?(0, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout, v21);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v177 = &v162 - v34;
  v178 = type metadata accessor for TextRenderLayer.Layout(0);
  v35 = *(v178 - 8);
  MEMORY[0x1EEE9AC00](v178);
  v170 = &v162 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for UUID();
  v38 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v40 = &v162 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v198 = &v162 - v42;
  type metadata accessor for (UUID, NSTextLayoutFragment)(0);
  MEMORY[0x1EEE9AC00](v43 - 8);
  v197 = &v162 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1 || (NSTextRange.textRange.getter(), v186 = v46, (v47 & 1) != 0))
  {
    NSTextRange.textRange.getter();
    v186 = v48;
    if (v49)
    {
      a5(a1, a2, a8, a9, a10, a11, a12);
      return;
    }
  }

  v189 = v45;
  v179 = a1;
  v182 = a2;
  v180 = a6;
  v181 = a5;
  v50 = *&v185[OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_currentIDs];
  v51 = *&v185[OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_currentFragments];
  v52 = *(v50 + 2);
  v183 = OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_surfaceMap;

  v199 = v51;

  v196 = v52;
  if (!v52)
  {
LABEL_32:

    goto LABEL_34;
  }

  v53 = 0;
  v195 = v38 + 16;
  v54 = v199 & 0xFFFFFFFFFFFFFF8;
  if ((v199 & 0x8000000000000000) != 0)
  {
    v55 = v199;
  }

  else
  {
    v55 = v199 & 0xFFFFFFFFFFFFFF8;
  }

  v162 = v55;
  v192 = v199 & 0xC000000000000001;
  v56 = v38 + 32;
  v163 = v35 + 6;
  v193 = (v38 + 8);
  v194 = v199 >> 62;
  v191 = v50;
  v190 = (v199 & 0xFFFFFFFFFFFFFF8);
  v188 = v40;
  v187 = v37;
  while (1)
  {
    if (v53 >= *(v50 + 2))
    {
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v57 = v198;
    (*(v38 + 16))(v198, &v50[((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v53], v37);
    if (v194)
    {
      break;
    }

    if (v53 == *(v54 + 16))
    {
      goto LABEL_33;
    }

LABEL_15:
    if (v192)
    {
      v58 = MEMORY[0x19A8BDB80](v53, v199);
    }

    else
    {
      if (v53 >= *(v54 + 16))
      {
        goto LABEL_40;
      }

      v58 = *(v199 + 8 * v53 + 32);
    }

    v59 = v58;
    v60 = *v56;
    v61 = v197;
    (*v56)(v197, v57, v37);
    v60(v40, v61, v37);
    v62 = [v59 rangeInElement];
    NSTextRange.textRange.getter();
    v54 = v63;
    v35 = v64;
    v65 = v59;
    v66 = v37;
    v68 = v67;

    if (v68)
    {
      (*v193)(v40, v66);

      v37 = v66;
    }

    else if (v189 >= v54)
    {
      v69 = v35 < v186;
      v37 = v187;
      v35 = v65;
      if (v69)
      {
        v40 = v188;
        (*v193)(v188, v187);
      }

      else
      {
        v70 = v185;
        v71 = v183;
        swift_beginAccess();
        v72 = *&v70[v71];
        v40 = v188;
        if (!*(v72 + 16) || (v73 = specialized __RawDictionaryStorage.find<A>(_:)(v188), (v74 & 1) == 0))
        {
          swift_endAccess();

          (*v193)(v40, v37);
          goto LABEL_11;
        }

        v37 = *(*(v72 + 56) + 8 * v73);
        swift_endAccess();
        v75 = OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919417TextRenderSurface__layer;
        v76 = *(v37 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919417TextRenderSurface__layer);
        v77 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_layout;
        swift_beginAccess();
        v78 = v76 + v77;
        v79 = v177;
        outlined init with copy of TextRenderLayer.Layout?(v78, v177, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
        if ((*v163)(v79, 1, v178) != 1)
        {
          v185 = v35;
          v190 = v37;

          v92 = v79;
          v93 = v170;
          outlined init with take of TextRenderLayer.Layout(v92, v170, type metadata accessor for TextRenderLayer.Layout);
          v197 = v75;
          v94 = *(v37 + v75);
          v53 = *(v94 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_baseFragmentIdentifierMap);
          v184 = *(v94 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_baseFragmentIdentifierMap + 8);
          v35 = *(v94 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_animationController);
          swift_beginAccess();
          v38 = v35[14];
          v95 = *(v94 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_displacements);
          v96 = *(v95 + 16);
          v196 = *(v93 + *(v178 + 24));
          v97 = *(v196 + 16);
          if (v96 == v97)
          {

            v56 = v171;
            goto LABEL_42;
          }

          v56 = v171;
          if (v97)
          {
            type metadata accessor for CGPoint(0);

            v95 = static Array._allocateBufferUninitialized(minimumCapacity:)();
            *(v95 + 16) = v97;
            bzero((v95 + 32), 16 * v97);
            goto LABEL_42;
          }

LABEL_41:

          v95 = MEMORY[0x1E69E7CC0];
LABEL_42:
          v98 = v189 - v54;
          if (__OFSUB__(v189, v54))
          {
            goto LABEL_109;
          }

          v99 = &v186[-v189];
          if (__OFSUB__(v186, v189))
          {
LABEL_110:
            __break(1u);
          }

          else
          {
            v189 = v38;
            v191 = v53;
            if (!__OFADD__(v99, v98))
            {
              v100 = Text.Layout.CharacterIndex.init(_:)();
              v101 = Text.Layout.CharacterIndex.init(_:)();
              v198 = v100;
              v199 = v101;
              v102 = v169;
              if (v101 >= v100)
              {
                v103 = v196;
                v104 = *&v197[v37];
                v105 = *&v104[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_time];

                v106 = v104;
                v192 = v35;
                v186 = v106;
                if ((v56 & 1) != 0 && !specialized Text.Effect.SegmentInteraction.matches(range:)(v198, v199, v103))
                {
                  if ((v56 & 2) != 0)
                  {
                    v171 = 2;
                  }

                  else
                  {
                    if ((v56 & 4) != 0)
                    {
                      v56 = 4;
                    }

                    v171 = v56;
                  }
                }

                v107 = v196;
                v108 = *(v196 + 16);
                v197 = (v168 + 8);

                v195 = v95;

                v109 = 0;
                v194 = MEMORY[0x1E69E7CC0];
                v110 = v174;
                v111 = v198;
                while (1)
                {
                  if (v108 == v109)
                  {
                    v123 = v194;
                    v124 = *(v194 + 16);
                    v125 = v195;
                    if (v124)
                    {
                      v200 = MEMORY[0x1E69E7CC0];
                      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v124, 0);
                      v126 = v200;
                      v127 = v196 + ((*(v110 + 80) + 32) & ~*(v110 + 80));
                      v128 = v125 + 32;
                      v129 = 32;
                      v130 = v165;
                      while (1)
                      {
                        v131 = *(v123 + v129);
                        if ((v131 & 0x8000000000000000) != 0)
                        {
                          goto LABEL_106;
                        }

                        if (v131 >= *(v196 + 16))
                        {
                          goto LABEL_107;
                        }

                        outlined init with copy of Text.Effect.Composition(v127 + *(v110 + 72) * v131, v130, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
                        if (v131 >= *(v195 + 16))
                        {
                          goto LABEL_108;
                        }

                        v132 = *(v128 + 16 * v131);
                        v133 = v172;
                        *(v130 + *(v172 + 20)) = v131;
                        *(v130 + *(v133 + 24)) = v132;
                        v200 = v126;
                        v135 = *(v126 + 16);
                        v134 = *(v126 + 24);
                        if (v135 >= v134 >> 1)
                        {
                          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v134 > 1), v135 + 1, 1);
                          v126 = v200;
                        }

                        *(v126 + 16) = v135 + 1;
                        outlined init with take of TextRenderLayer.Layout(v130, v126 + ((*(v173 + 80) + 32) & ~*(v173 + 80)) + *(v173 + 72) * v135, type metadata accessor for Text.Effect.SegmentInteraction.Element);
                        v129 += 8;
                        --v124;
                        v110 = v174;
                        if (!v124)
                        {

                          goto LABEL_78;
                        }
                      }
                    }

                    v126 = MEMORY[0x1E69E7CC0];
LABEL_78:
                    v136 = v167;
                    v137 = v166;
                    if (v171 > 3)
                    {
                      if (v171 == 4)
                      {
                        if (!*(v126 + 16))
                        {
                          goto LABEL_98;
                        }

                        v138 = v186;
                        Text.Effect.SegmentInteraction.Element.displacement(type:time:context:layer:)(1u, v191, v184, v189, v192, v186, v105);
                      }

                      else
                      {
                        if (v171 != 5)
                        {
                          if (v171 != 7)
                          {
LABEL_95:
                            if (*(v126 + 16))
                            {
                              v145 = v199;
                              v146 = v198;
                              v147 = v173;
                              outlined init with copy of Text.Effect.Composition(v126 + ((*(v173 + 80) + 32) & ~*(v173 + 80)), v166, type metadata accessor for Text.Effect.SegmentInteraction.Element);
                              specialized BidirectionalCollection.last.getter(v126, v136);
                              if ((*(v147 + 48))(v136, 1, v172) == 1)
                              {
                                outlined destroy of Text.Effect.Composition(v137, type metadata accessor for Text.Effect.SegmentInteraction.Element);
                                outlined destroy of TextRenderLayer.Layout?(v136, &lazy cache variable for type metadata for Text.Effect.SegmentInteraction.Element?, type metadata accessor for Text.Effect.SegmentInteraction.Element);

                                v141 = 0.0;
                                v140 = 0.0;
                                v143 = v181;
                                goto LABEL_99;
                              }

                              v152 = v164;
                              outlined init with take of TextRenderLayer.Layout(v136, v164, type metadata accessor for Text.Effect.SegmentInteraction.Element);
                              v153 = v146;
                              v154 = v145;
                              v155 = v146;
                              v156 = v191;
                              v157 = v184;
                              v158 = v189;
                              v159 = v192;
                              v138 = v186;
                              Text.Effect.SegmentInteraction.Element.displacement(for:type:time:context:layer:)(v153, v154, 0, v191, v184, v189, v192, v186, v105);
                              v141 = v160;
                              Text.Effect.SegmentInteraction.Element.displacement(for:type:time:context:layer:)(v155, v199, 1u, v156, v157, v158, v159, v138, v105);
                              v140 = v161;
                              outlined destroy of Text.Effect.Composition(v152, type metadata accessor for Text.Effect.SegmentInteraction.Element);
                              outlined destroy of Text.Effect.Composition(v137, type metadata accessor for Text.Effect.SegmentInteraction.Element);

LABEL_92:
                              v143 = v181;
LABEL_100:

                              v203.origin.x = a8;
                              v203.origin.y = a9;
                              v203.size.width = a10;
                              v203.size.height = a11;
                              v148 = v141 + CGRectGetMinX(v203);
                              v204.origin.x = a8;
                              v204.origin.y = a9;
                              v204.size.width = a10;
                              v204.size.height = a11;
                              v149 = v140 + CGRectGetMaxX(v204);
                              v150 = OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919417TextRenderSurface_yDisplacement;
                              v151 = v190;
                              swift_beginAccess();
                              v143(v179, v182, v148, *&v151[v150] + a9, v149 - v148, a11, a12);

                              (*v193)(v188, v187);
                              outlined destroy of Text.Effect.Composition(v170, type metadata accessor for TextRenderLayer.Layout);
                              return;
                            }
                          }

LABEL_98:

                          v141 = 0.0;
                          v140 = 0.0;
                          v143 = v181;
                          goto LABEL_99;
                        }

                        if (!*(v126 + 16))
                        {
                          goto LABEL_98;
                        }

                        v138 = v186;
                        Text.Effect.SegmentInteraction.Element.displacement(for:type:time:context:layer:)(v198, v199, 0, v191, v184, v189, v192, v186, v105);
                      }

                      v141 = v142;

                      v140 = 0.0;
                      goto LABEL_92;
                    }

                    if (v171 != 2)
                    {
                      if (v171 != 3)
                      {
                        goto LABEL_95;
                      }

                      if (*(v126 + 16))
                      {
                        v138 = v186;
                        Text.Effect.SegmentInteraction.Element.displacement(for:type:time:context:layer:)(v198, v199, 1u, v191, v184, v189, v192, v186, v105);
                        v140 = v139;

                        v141 = 0.0;
                        goto LABEL_92;
                      }

                      goto LABEL_98;
                    }

                    v143 = v181;
                    if (*(v126 + 16))
                    {
                      v138 = v186;
                      Text.Effect.SegmentInteraction.Element.displacement(type:time:context:layer:)(0, v191, v184, v189, v192, v186, v105);
                      v140 = v144;

                      v141 = 0.0;
                      goto LABEL_100;
                    }

                    v141 = 0.0;
                    v140 = 0.0;
LABEL_99:
                    v138 = v186;
                    goto LABEL_100;
                  }

                  v112 = v109;
                  if (v109 >= v108)
                  {
                    __break(1u);
LABEL_104:
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
                    goto LABEL_110;
                  }

                  v113 = v176;
                  if (__OFADD__(v109, 1))
                  {
                    goto LABEL_104;
                  }

                  if (v109 >= *(v107 + 16))
                  {
                    goto LABEL_105;
                  }

                  outlined init with copy of Text.Effect.Composition(v107 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v109, v102, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
                  v114 = v102;
                  v115 = v113;
                  Text.Effect.RenderSegmentation.Segment.characterRanges.getter(v113);
                  v116 = v199;
                  if (specialized RangeSet.overlaps(_:)(v111, v199))
                  {
                    (*v197)(v113, v175);
                    outlined destroy of Text.Effect.Composition(v114, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
                    v102 = v114;
                  }

                  else
                  {
                    v117 = specialized RangeSet.contains(_:)(v111, v116);
                    (*v197)(v115, v175);
                    outlined destroy of Text.Effect.Composition(v114, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
                    v102 = v114;
                    if (!v117)
                    {
                      v118 = specialized Text.Effect.SegmentInteraction.isEndOfFragment(for:range:)(v112, v111, v116, v107);
                      v109 = v112 + 1;
                      if ((v118 & 1) == 0)
                      {
                        continue;
                      }
                    }
                  }

                  v119 = v194;
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v200 = v119;
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v119 + 16) + 1, 1);
                    v119 = v200;
                  }

                  v122 = *(v119 + 16);
                  v121 = *(v119 + 24);
                  if (v122 >= v121 >> 1)
                  {
                    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v121 > 1), v122 + 1, 1);
                    v119 = v200;
                  }

                  *(v119 + 16) = v122 + 1;
                  v194 = v119;
                  *(v119 + 8 * v122 + 32) = v112;
                  v109 = v112 + 1;
                  v110 = v174;
                  v107 = v196;
                }
              }

LABEL_112:
              __break(1u);
              return;
            }
          }

          __break(1u);
          goto LABEL_112;
        }

        v80 = v35;
        v81 = v79;
        v35 = *v193;
        v82 = v37;
        v40 = v188;
        v37 = v187;
        (v35)(v188, v187);

        outlined destroy of TextRenderLayer.Layout?(v81, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
      }
    }

    else
    {
      v40 = v188;
      v37 = v187;
      (*v193)(v188, v187);
    }

LABEL_11:
    ++v53;
    v50 = v191;
    v54 = v190;
    if (v196 == v53)
    {
      goto LABEL_32;
    }
  }

  if (v53 != MEMORY[0x19A8BDCD0](v162))
  {
    goto LABEL_15;
  }

LABEL_33:

  (*v193)(v57, v37);
LABEL_34:
  type metadata accessor for [Text.Effect.Identifier](0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Any>, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
  v83 = swift_allocObject();
  *(v83 + 16) = xmmword_195CC8D00;
  v201 = 0;
  v202 = 0xE000000000000000;
  _StringGuts.grow(_:)(38);

  v201 = 0;
  v202 = 0xE000000000000000;
  _StringGuts.grow(_:)(33);

  v201 = 0xD00000000000001FLL;
  v202 = 0x8000000195CE0680;
  v84 = [v184 description];
  v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v87 = v86;

  MEMORY[0x19A8BD680](v85, v87);

  MEMORY[0x19A8BD680](2108704, 0xE300000000000000);
  v88 = StaticString.description.getter();
  MEMORY[0x19A8BD680](v88);

  MEMORY[0x19A8BD680](58, 0xE100000000000000);
  v200 = 80;
  v89 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x19A8BD680](v89);

  MEMORY[0x19A8BD680](0xD00000000000001CLL, 0x8000000195CDEE50);
  v90 = v201;
  v91 = v202;
  *(v83 + 56) = MEMORY[0x1E69E6158];
  *(v83 + 32) = v90;
  *(v83 + 40) = v91;
  print(_:separator:terminator:)();

  v181(v179, v182, a8, a9, a10, a11, a12);
}

unint64_t _sSa9repeating5countSayxGx_SitcfCSo7CGPointV_Tt1g5(unint64_t result, double a2, double a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    return result;
  }

  v3 = result;
  if (!result)
  {
    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for CGPoint(0);
  result = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(result + 16) = v3;
  v4 = (result + 32);
  if (v3 <= 3)
  {
    v5 = 0;
    v7 = a2;
    v6 = a3;
LABEL_9:
    v11 = v3 - v5;
    do
    {
      *v4 = v7;
      v4[1] = v6;
      v4 += 2;
      --v11;
    }

    while (v11);
    return result;
  }

  v5 = v3 & 0x7FFFFFFFFFFFFFFCLL;
  v4 += 2 * (v3 & 0x7FFFFFFFFFFFFFFCLL);
  v7 = a2;
  v6 = a3;
  *&v8 = a2;
  *(&v8 + 1) = a3;
  v9 = (result + 64);
  v10 = v3 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    *(v9 - 2) = v8;
    *(v9 - 1) = v8;
    *v9 = v8;
    v9[1] = v8;
    v9 += 4;
    v10 -= 4;
  }

  while (v10);
  if (v5 != v3)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed NSTextRange?, @unowned CGRect, @unowned CGFloat, @guaranteed NSTextContainer, @unowned NSTextLayoutManagerSegmentCategory) -> (@unowned Bool)(uint64_t a1, void *a2, void *a3, uint64_t a4, double a5, double a6, double a7, double a8, double a9)
{
  v17 = *(a1 + 32);
  v18 = a2;
  v19 = a3;
  LOBYTE(a4) = v17(a2, v19, a4, a5, a6, a7, a8, a9);

  return a4 & 1;
}

Swift::Void __swiftcall TextEffectsRenderer.invalidateTemporaryAttributes(in:)(NSTextRange in)
{
  v42[0] = in.super.isa;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v43 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TextRenderLayer.Layout?(0, &lazy cache variable for type metadata for (key: UUID, value: TextRenderSurface)?, type metadata accessor for (key: UUID, value: TextRenderSurface), MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v42 - v9;
  v11 = OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_surfaceMap;
  swift_beginAccess();
  v12 = *(v1 + v11);
  v13 = v12 + 64;
  v14 = 1 << *(v12 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v12 + 64);
  v17 = (v14 + 63) >> 6;
  v42[1] = v3 + 32;
  v42[2] = v3 + 16;
  v44 = v3;
  v45 = v12;
  v46 = (v3 + 8);

  v18 = 0;
  v47 = v10;
  v48 = v7;
  while (v16)
  {
    v19 = v18;
LABEL_16:
    v22 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v23 = v22 | (v19 << 6);
    v25 = v44;
    v24 = v45;
    v26 = v43;
    (*(v44 + 16))(v43, *(v45 + 48) + *(v44 + 72) * v23, v2);
    v27 = *(*(v24 + 56) + 8 * v23);
    type metadata accessor for (key: UUID, value: TextRenderSurface)(0);
    v29 = v28;
    v30 = *(v28 + 48);
    v31 = *(v25 + 32);
    v7 = v48;
    v31(v48, v26, v2);
    *&v7[v30] = v27;
    (*(*(v29 - 8) + 56))(v7, 0, 1, v29);
    v32 = v27;
    v10 = v47;
LABEL_17:
    outlined init with take of Text.Effect.RangeCoordinateSpace?(v7, v10, &lazy cache variable for type metadata for (key: UUID, value: TextRenderSurface)?, type metadata accessor for (key: UUID, value: TextRenderSurface));
    type metadata accessor for (key: UUID, value: TextRenderSurface)(0);
    if ((*(*(v29 - 8) + 48))(v10, 1, v29) == 1)
    {

      return;
    }

    v33 = *&v10[*(v29 + 48)];
    v34 = *&v33[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919417TextRenderSurface__layer];
    v35 = *&v34[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_fragment];
    if (v35)
    {
      v36 = v2;
      v37 = v34;
      v38 = v35;
      v39 = [v38 rangeInElement];
      v40 = [v39 intersectsWithTextRange_];

      if (v40)
      {
        v37[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_updateFlags] |= 0x90u;
        [v37 setNeedsLayout];
      }

      v2 = v36;
      v10 = v47;
    }

    else
    {
      v37 = *&v10[*(v29 + 48)];
    }

    (*v46)(v10, v2);
    v7 = v48;
  }

  if (v17 <= v18 + 1)
  {
    v20 = v18 + 1;
  }

  else
  {
    v20 = v17;
  }

  v21 = v20 - 1;
  while (1)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v19 >= v17)
    {
      type metadata accessor for (key: UUID, value: TextRenderSurface)(0);
      v29 = v41;
      (*(*(v41 - 8) + 56))(v7, 1, 1, v41);
      v16 = 0;
      v18 = v21;
      goto LABEL_17;
    }

    v16 = *(v13 + 8 * v19);
    ++v18;
    if (v16)
    {
      v18 = v19;
      goto LABEL_16;
    }
  }

  __break(1u);
}

CGPoint __swiftcall TextEffectsRenderer.convertFromRenderSpace(_:)(CGPoint a1)
{
  y = a1.y;
  x = a1.x;
  v3 = MEMORY[0x1E69E6720];
  type metadata accessor for TextRenderLayer.Layout?(0, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v147 = &v144 - v5;
  v6 = type metadata accessor for Text.Effect.Composition.Run(0);
  v146 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v168 = &v144 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = type metadata accessor for Text.Effect.InteractionMetrics(0);
  v148 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149);
  v154 = (&v144 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v172 = type metadata accessor for Text.Effect.RenderSegmentation.Effect(0);
  MEMORY[0x1EEE9AC00](v172);
  v178 = &v144 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns(0);
  MEMORY[0x1EEE9AC00](v171);
  v170 = &v144 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = type metadata accessor for Text.Effect.RenderSegmentation.Segment(0);
  v181 = *(v186 - 8);
  MEMORY[0x1EEE9AC00](v186);
  v198 = &v144 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v182 = &v144 - v13;
  type metadata accessor for (offset: Int, element: Text.Effect.RenderSegmentation.Segment)(0);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v188 = (&v144 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for TextRenderLayer.Layout?(0, &lazy cache variable for type metadata for (offset: Int, element: Text.Effect.RenderSegmentation.Segment)?, type metadata accessor for (offset: Int, element: Text.Effect.RenderSegmentation.Segment), v3);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v203 = &v144 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = (&v144 - v21);
  type metadata accessor for TextRenderLayer.Layout?(0, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout, v3);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v167 = &v144 - v24;
  v166 = type metadata accessor for TextRenderLayer.Layout(0);
  v25 = *(v166 - 8);
  MEMORY[0x1EEE9AC00](v166);
  v165 = &v144 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for UUID();
  v197 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v144 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v204 = &v144 - v31;
  type metadata accessor for (UUID, NSTextLayoutFragment)(0);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v196 = &v144 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(v1 + OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_currentIDs);
  v184 = v1;
  v35 = *(v1 + OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_currentFragments);
  v36 = v34;
  v37 = *(v34 + 16);
  v183 = OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_surfaceMap;

  v199 = v35;

  v193 = v37;
  if (!v37)
  {
LABEL_43:

    goto LABEL_55;
  }

  v38 = 0;
  v176 = 0;
  v195 = v197 + 16;
  v39 = v199 & 0xFFFFFFFFFFFFFF8;
  if (v199 < 0)
  {
    v40 = v199;
  }

  else
  {
    v40 = v199 & 0xFFFFFFFFFFFFFF8;
  }

  v145 = v40;
  v191 = v199 & 0xC000000000000001;
  v189 = (v199 + 32);
  v190 = (v197 + 32);
  v194 = (v197 + 8);
  v155 = (v25 + 48);
  v202 = (v16 + 56);
  v201 = (v16 + 48);
  v41 = *(MEMORY[0x1E695F050] + 8);
  v164 = *MEMORY[0x1E695F050];
  v163 = v41;
  v43 = *(MEMORY[0x1E695F050] + 16);
  v42 = *(MEMORY[0x1E695F050] + 24);
  v162 = v43;
  v161 = v42;
  v187 = v199 & 0xFFFFFFFFFFFFFF8;
  v180 = v36;
  while (1)
  {
    if (v38 >= *(v36 + 16))
    {
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    (*(v197 + 16))(v204, v36 + ((*(v197 + 80) + 32) & ~*(v197 + 80)) + *(v197 + 72) * v38, v27);
    if (v199 >> 62)
    {
      if (v38 == MEMORY[0x19A8BDCD0](v145))
      {
LABEL_44:

        (*v194)(v204, v27);
        goto LABEL_55;
      }
    }

    else if (v38 == *(v39 + 16))
    {
      goto LABEL_44;
    }

    if (v191)
    {
      v44 = MEMORY[0x19A8BDB80](v38, v199);
    }

    else
    {
      if (v38 >= *(v39 + 16))
      {
        goto LABEL_57;
      }

      v44 = *&v189[8 * v38];
    }

    v45 = v44;
    v46 = *v190;
    v47 = v196;
    (*v190)(v196, v204, v27);
    v46(v29, v47, v27);
    [v45 layoutFragmentFrame];
    v206.x = x;
    v206.y = y;
    if (CGRectContainsPoint(v210, v206))
    {
      break;
    }

    (*v194)(v29, v27);

LABEL_7:
    ++v38;
    v39 = v187;
    if (v38 == v193)
    {
      goto LABEL_43;
    }
  }

  v48 = v184;
  v49 = v183;
  swift_beginAccess();
  v50 = *(v48 + v49);
  if (!*(v50 + 16) || (v51 = specialized __RawDictionaryStorage.find<A>(_:)(v29), (v52 & 1) == 0))
  {
    swift_endAccess();

    (*v194)(v29, v27);
    goto LABEL_20;
  }

  v169 = v45;
  v53 = *(*(v50 + 56) + 8 * v51);
  swift_endAccess();
  v179 = OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919417TextRenderSurface__layer;
  v54 = *&v53[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919417TextRenderSurface__layer];
  v55 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_layout;
  swift_beginAccess();
  v56 = v54 + v55;
  v57 = v167;
  outlined init with copy of TextRenderLayer.Layout?(v56, v167, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
  v58 = v166;
  if ((*v155)(v57, 1, v166) == 1)
  {
    v59 = v53;
    v60 = v57;
    v61 = *v194;
    v62 = v59;
    v61(v29, v27);

    outlined destroy of TextRenderLayer.Layout?(v60, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
LABEL_20:
    v36 = v180;
    goto LABEL_7;
  }

  v151 = v29;
  v152 = v27;
  v63 = v57;
  v64 = v165;
  outlined init with take of TextRenderLayer.Layout(v63, v165, type metadata accessor for TextRenderLayer.Layout);
  v65 = *(v64 + *(v58 + 24));
  v66 = *(v54 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_displacements);
  v67 = *(v54 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_layoutBounds);
  v68 = *(v54 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_layoutBounds + 8);
  v69 = *(v65 + 16);
  v185 = v66 + 32;
  v150 = v53;

  v192 = v65;

  v70 = 0;
  v71 = v182;
  v72 = v181;
  v177 = v53;
  v160 = v66;
  v158 = v69;
  v157 = v15;
  v159 = v68;
  for (i = v22; ; v22 = i)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          if (v70 == v69)
          {
            v73 = 1;
            v70 = v69;
            v74 = v203;
          }

          else
          {
            if ((v70 & 0x8000000000000000) != 0)
            {
              goto LABEL_58;
            }

            if (v70 >= *(v192 + 16))
            {
              goto LABEL_59;
            }

            v75 = v192 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v70;
            v76 = *(v15 + 48);
            v77 = v188;
            *v188 = v70;
            outlined init with copy of Text.Effect.Composition(v75, v77 + v76, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
            v78 = v77;
            v74 = v203;
            outlined init with take of TextRenderLayer.Layout(v78, v203, type metadata accessor for (offset: Int, element: Text.Effect.RenderSegmentation.Segment));
            v73 = 0;
            ++v70;
          }

          (*v202)(v74, v73, 1, v15);
          outlined init with take of Text.Effect.RangeCoordinateSpace?(v74, v22, &lazy cache variable for type metadata for (offset: Int, element: Text.Effect.RenderSegmentation.Segment)?, type metadata accessor for (offset: Int, element: Text.Effect.RenderSegmentation.Segment));
          if ((*v201)(v22, 1, v15) == 1)
          {
            v29 = v151;
            v27 = v152;
            (*v194)(v151, v152);

            outlined destroy of Text.Effect.Composition(v165, type metadata accessor for TextRenderLayer.Layout);
            goto LABEL_20;
          }

          v79 = *v22;
          outlined init with take of TextRenderLayer.Layout(v22 + *(v15 + 48), v71, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
          if ((v79 & 0x8000000000000000) == 0 && v79 < *(v66 + 16))
          {
            break;
          }

          outlined destroy of Text.Effect.Composition(v71, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
        }

        v80 = (v185 + 16 * v79);
        v82 = *v80;
        v81 = v80[1];
        outlined init with copy of Text.Effect.Composition(v71, v198, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload)
        {
          break;
        }

        v212 = CGRectOffset(*(v198 + 24), v67 + v82, v68 + v81);
        v86 = v212.origin.x;
        v87 = v212.origin.y;
        width = v212.size.width;
        v175 = v81;
        v89 = v67;
        height = v212.size.height;
        v71 = v182;

        v213.origin.x = v86;
        v213.origin.y = v87;
        v213.size.width = width;
        v213.size.height = height;
        v67 = v89;
        v208.y = y;
        v68 = v159;
        v91 = v175;
        v208.x = x;
        v92 = CGRectContainsPoint(v213, v208);
        outlined destroy of Text.Effect.Composition(v71, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
        if (v92)
        {
          (*v194)(v151, v152);

          x = x - v82;
          v112 = y - v91;
          goto LABEL_45;
        }
      }

      if (EnumCaseMultiPayload != 1)
      {
        break;
      }

      v84 = v170;
      outlined init with take of TextRenderLayer.Layout(v198, v170, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
      v211 = CGRectOffset(*(v84 + *(v171 + 32)), v67 + v82, v68 + v81);
      v207.x = x;
      v207.y = y;
      v85 = CGRectContainsPoint(v211, v207);
      outlined destroy of Text.Effect.Composition(v84, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
      outlined destroy of Text.Effect.Composition(v71, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
      v72 = v181;
      if (v85)
      {
        (*v194)(v151, v152);

        x = x - v82;
        v112 = y - v81;
LABEL_45:
        y = v112;
        goto LABEL_54;
      }
    }

    v93 = v178;
    outlined init with take of TextRenderLayer.Layout(v198, v178, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
    v94 = *&v177[v179];
    v173 = v93 + *(v172 + 24);
    v95 = *&v94[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_time];
    v96 = *&v94[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_baseFragmentIdentifierMap];
    v97 = *&v94[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_baseFragmentIdentifierMap + 8];
    v98 = *&v94[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_animationController];
    swift_beginAccess();
    v99 = *(v98 + 112);
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    swift_retain_n();
    v100 = v94;
    v101 = Text.Effect.Composition.displacements(at:context:)(v96, v97, v99, v98, v95);
    v103 = v102;

    v205[0] = v96;
    v205[1] = v97;
    v153 = v97;
    v205[2] = v99;
    v205[3] = v98;
    v175 = *&v101;
    v205[4] = v101;
    v205[5] = v103;
    v174 = v103;
    v104 = *(*&v177[v179] + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_time);
    v105 = type metadata accessor for Text.Effect.Composition(0);
    v106 = *(v173 + *(v105 + 24));
    MEMORY[0x1EEE9AC00](v105);
    *(&v144 - 4) = v104;
    v108 = v107;
    *(&v144 - 3) = v107;
    *(&v144 - 2) = v205;
    v109 = v176;
    v214.origin.x = specialized Sequence.reduce<A>(_:_:)(partial apply for closure #1 in Text.Effect.Composition.bounds(at:context:), v164, v163, v162, v161, (&v144 - 6), v106);
    v215 = CGRectOffset(v214, v67 + v82, v68 + v81);
    v110 = v215.origin.x;
    v111 = v215.origin.y;
    v209.x = x;
    v209.y = y;
    if (CGRectContainsPoint(v215, v209))
    {
      break;
    }

    v176 = v109;
    v71 = v182;
    outlined destroy of Text.Effect.Composition(v182, type metadata accessor for Text.Effect.RenderSegmentation.Segment);

    outlined destroy of Text.Effect.Composition(v178, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
    v72 = v181;
    v66 = v160;
    v69 = v158;
    v15 = v157;
  }

  v113 = v106;
  v202 = v99;
  v203 = v98;
  v204 = v96;

  v114 = x - v82;
  v115 = *&v177[v179];
  v116 = y - v81;
  v117 = *(v115 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_time);
  v118 = *&OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_interactionMetrics;
  swift_beginAccess();
  v119 = *(v115 + *&v118);
  if (*(v119 + 16) && (v120 = specialized __RawDictionaryStorage.find<A>(_:)(v79), (v121 & 1) != 0))
  {
    v122 = *(v119 + 56) + *(v148 + 72) * v120;
    v123 = v154;
    outlined init with copy of Text.Effect.Composition(v122, v154, type metadata accessor for Text.Effect.InteractionMetrics);
    swift_endAccess();
  }

  else
  {
    y = v118;
    v124 = swift_endAccess();
    v125 = v154;
    *v154 = MEMORY[0x1E69E7CC0];
    v126 = v149;
    lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex(v124, v127, v128);
    v201 = v115;
    v199 = v115;
    RangeSet.init()();
    *(v125 + *(v126 + 24)) = MEMORY[0x1E69E7CD0];
    v129 = (v125 + *(v126 + 28));
    *v129 = 0;
    v129[1] = 0;
    v130 = v113;
    v131 = *(v113 + 16);
    v132 = v168;
    v133 = v204;
    v134 = v203;
    v135 = v202;
    v136 = v153;
    if (v131)
    {
      v137 = v108;
      v138 = v130 + ((*(v146 + 80) + 32) & ~*(v146 + 80));
      v139 = *(v146 + 72);
      do
      {
        outlined init with copy of Text.Effect.Composition(v138, v132, type metadata accessor for Text.Effect.Composition.Run);
        Text.Effect.Composition.Operation.appendInteractionMetrics(to:at:line:context:)(v154, v137, v133, v136, v135, v134, v117);
        v132 = v168;
        outlined destroy of Text.Effect.Composition(v168, type metadata accessor for Text.Effect.Composition.Operation);
        v138 += v139;
        --v131;
      }

      while (v131);
    }

    v140 = v154;
    v141 = v147;
    outlined init with copy of Text.Effect.Composition(v154, v147, type metadata accessor for Text.Effect.InteractionMetrics);
    (*(v148 + 56))(v141, 0, 1, v149);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v141, v79);
    swift_endAccess();

    v123 = v140;
  }

  v142 = Text.Effect.InteractionMetrics.displacedPoint(from:activeOrigin:)(__PAIR128__(*&v116, *&v114), __PAIR128__(*&v111, *&v110));
  x = v142.x;
  y = v142.y;

  outlined destroy of Text.Effect.Composition(v123, type metadata accessor for Text.Effect.InteractionMetrics);
  outlined destroy of Text.Effect.Composition(v182, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
  (*v194)(v151, v152);
  outlined destroy of Text.Effect.Composition(v178, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
LABEL_54:
  outlined destroy of Text.Effect.Composition(v165, type metadata accessor for TextRenderLayer.Layout);
LABEL_55:
  v42 = x;
  v43 = y;
LABEL_60:
  result.y = v43;
  result.x = v42;
  return result;
}