void ResolvedStyledText.TextLayoutManager.LayoutManager.layoutManager(for:original:)(id a1, double a2)
{
  if (a2 == 1.0)
  {
    if (*(v2 + 32) == 1)
    {
      [*v2 setAttributedString_];
      v5 = *(v2 + 8);
      v6 = [v5 documentRange];
      [v5 invalidateLayoutForRange_];

      v7 = 0;
      v8 = 0;
      *(v2 + 32) = 0;
LABEL_20:
      *(v2 + 8);
      outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v7, v8);
      return;
    }

LABEL_19:
    v7 = 0;
    v8 = 0;
    goto LABEL_20;
  }

  v9 = *(v2 + 24);
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    if (!a1)
    {
      goto LABEL_19;
    }

    [a1 mutableCopy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSMutableAttributedString, 0x1E696AD40);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_19;
    }

    v9 = v24;
    if (!v24)
    {
      goto LABEL_19;
    }
  }

  if (*(v2 + 24) && *(v2 + 16) == a2)
  {
    v11 = 0;
    v12 = 0;
    v7 = 0;
    v8 = 0;
    if (*(v2 + 32))
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (one-time initialization token for kitFont != -1)
  {
    swift_once();
  }

  v13 = static NSAttributedStringKey.kitFont;
  v14 = [v9 length];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = v9;
  v15 = swift_allocObject();
  *(v15 + 16) = partial apply for closure #1 in ResolvedStyledText.TextLayoutManager.LayoutManager.layoutManager(for:original:);
  *(v15 + 24) = v12;
  aBlock[4] = _sypSgSo8_NSRangeVSpy10ObjectiveC8ObjCBoolVGIgnyy_AacGIegnyy_TRTA_0;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  aBlock[3] = &block_descriptor_14;
  v16 = _Block_copy(aBlock);
  v17 = a1;
  v18 = v9;

  [v18 enumerateAttribute:v13 inRange:0 options:v14 usingBlock:{0, v16}];
  _Block_release(v16);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if ((v13 & 1) == 0)
  {
    v19 = *(v2 + 24);
    v20 = v18;

    *(v2 + 16) = a2;
    *(v2 + 24) = v9;
    v11 = partial apply for closure #1 in ResolvedStyledText.TextLayoutManager.LayoutManager.layoutManager(for:original:);
LABEL_14:
    [*v2 setAttributedString_];
    v21 = *(v2 + 8);
    v22 = [v21 documentRange];
    [v21 invalidateLayoutForRange_];

    v7 = v11;
    v8 = v12;
LABEL_15:

    *(v2 + 32) = 1;
    goto LABEL_20;
  }

  __break(1u);
}

double outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_18D2CFA94()
{

  return swift_deallocObject();
}

void ResolvedStyledText.TextLayoutManager.layout(with:in:at:shape:)(_BYTE *a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  width = *a6;
  v53 = *(a6 + 8);
  v13 = *(a6 + 16);
  v15 = *(a6 + 24);
  v14 = *(a6 + 32);
  v16 = *(v6 + 216);
  swift_beginAccess();
  ResolvedStyledText.TextLayoutManager.LayoutManager.layoutManager(for:original:)(v16, a4);
  v18 = v17;
  swift_endAccess();
  v19 = [v18 textContainer];
  if (!v19)
  {
LABEL_72:
    __break(1u);
    return;
  }

  v20 = v19;
  if (a2 == INFINITY)
  {
    v21 = 1.79769313e308;
  }

  else
  {
    v21 = a2;
  }

  if (a2 > 0.0)
  {
    v22 = v21;
  }

  else
  {
    v22 = COERCE_DOUBLE(1);
  }

  if (a3 == INFINITY)
  {
    v23 = 1.79769313e308;
  }

  else
  {
    v23 = a3;
  }

  swift_beginAccess();
  v24 = *(v6 + 16);
  if (*(v6 + 24))
  {
    v24 = 0;
  }

  if (a3 > 0.0)
  {
    v25 = v23;
  }

  else
  {
    v25 = COERCE_DOUBLE(1);
  }

  v26 = v22;
  if (a3 == 0.0)
  {
    v27 = 1;
  }

  else
  {
    v27 = v24;
  }

  if (a3 == 0.0)
  {
    v28 = 1.79769313e308;
  }

  else
  {
    v28 = v25;
  }

  [v20 size];
  LODWORD(v31) = v30 != v28 || v29 != v22;
  if (v31 == 1)
  {
    [v20 setSize_];
  }

  v32 = v14;
  if ([v20 maximumNumberOfLines] != v27)
  {
    [v20 setMaximumNumberOfLines_];
    LODWORD(v31) = 1;
  }

  v33 = v54;
  if (*(v7 + 536) != width || *(v7 + 544) != v54)
  {
    goto LABEL_35;
  }

  v34 = *(v7 + 552);
  if (v34 != 4)
  {
    if (v13 == 4)
    {
      goto LABEL_35;
    }

    goto LABEL_67;
  }

  if (v13 != 4)
  {
    goto LABEL_35;
  }

  while (1)
  {
    if (a1[8] == 1)
    {
      v45 = (*(v7 + 41) + 3);
    }

    else
    {
      v45 = *a1;
    }

    if ([v20 lineBreakMode] != v45)
    {
      [v20 setLineBreakMode_];
      LODWORD(v31) = 1;
    }

    a1 = [v18 documentRange];
    if (v31)
    {
      [v18 invalidateLayoutForRange_];
    }

    [v18 ensureLayoutForRange_];
    [v18 usageBoundsForTextContainer];
    x = v58.origin.x;
    y = v58.origin.y;
    width = v58.size.width;
    height = v58.size.height;
    if (CGRectGetHeight(v58) == v28)
    {
      break;
    }

    v31 = 0;
    v13 = 0;
    if (v26 >= 0.0)
    {
      goto LABEL_59;
    }

LABEL_66:
    __break(1u);
LABEL_67:
    if (v34 != v13 || *(v7 + 560) != v15 || *(v7 + 568) != v32)
    {
LABEL_35:
      *(v7 + 536) = width;
      *(v7 + 544) = v33;
      *(v7 + 552) = v13;
      *(v7 + 560) = v15;
      *(v7 + 568) = v32;
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v35 = static CoreGlue2.shared;
      if (v13 == 4)
      {
        v36 = static CoreGlue2.shared;
        v37 = v20;
        v38 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v39 = width - v15;
        v40 = 0.0;
        if (v13 == 3)
        {
          v41 = v39;
        }

        else
        {
          v41 = 0.0;
        }

        type metadata accessor for _ContiguousArrayStorage<Path>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Path>, &type metadata for Path, MEMORY[0x1E69E6F90]);
        v38 = swift_allocObject();
        *(v38 + 16) = xmmword_18DDA6EB0;
        v42 = v35;
        v43 = v20;
        v57.origin.y = 0.0;
        v57.origin.x = v41;
        v57.size.width = v15;
        v57.size.height = v32;
        if (CGRectIsNull(v57))
        {
          v44 = 6;
          v15 = 0.0;
          v32 = 0.0;
        }

        else
        {
          v44 = 0;
          v40 = v41;
        }

        *(v38 + 32) = v40;
        *(v38 + 40) = 0;
        *(v38 + 48) = v15;
        *(v38 + 56) = v32;
        *(v38 + 64) = v44;
      }

      (*((*MEMORY[0x1E69E7D40] & *v35) + 0xA0))(v20, v38);

      LODWORD(v31) = 1;
    }
  }

  v59.origin.x = x;
  v59.origin.y = y;
  v59.size.width = width;
  v59.size.height = height;
  MaxY = CGRectGetMaxY(v59);
  v13 = swift_allocObject();
  *(v13 + 16) = &MaxY;
  v49 = swift_allocObject();
  *(v49 + 16) = partial apply for closure #1 in ResolvedStyledText.TextLayoutManager.layout(with:in:at:shape:);
  *(v49 + 24) = v13;
  aBlock[4] = thunk for @callee_guaranteed (@guaranteed NSTextLayoutFragment) -> (@unowned Bool)partial apply;
  aBlock[5] = v49;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed NSTextLayoutFragment) -> (@unowned Bool);
  aBlock[3] = &block_descriptor_24_0;
  v50 = _Block_copy(aBlock);

  v51 = [v18 enumerateTextLayoutFragmentsFromLocation:0 options:0 usingBlock:v50];
  swift_unknownObjectRelease();
  _Block_release(v50);
  LOBYTE(v50) = swift_isEscapingClosureAtFileLocation();

  if (v50)
  {
    __break(1u);
    goto LABEL_72;
  }

  v32 = MaxY;
  v60.origin.x = x;
  v60.origin.y = y;
  v60.size.width = width;
  v60.size.height = height;
  if (CGRectGetMaxY(v60) < v32)
  {
    v32 = MaxY;
    v61.origin.x = x;
    v61.origin.y = y;
    v61.size.width = width;
    v61.size.height = height;
    height = v32 - CGRectGetMinY(v61);
  }

  v31 = partial apply for closure #1 in ResolvedStyledText.TextLayoutManager.layout(with:in:at:shape:);
  if (v26 < 0.0)
  {
    goto LABEL_66;
  }

LABEL_59:
  v62.origin.x = x;
  v62.origin.y = y;
  v62.size.width = width;
  v62.size.height = height;
  CGRectGetMinX(v62);
  v63.origin.x = x;
  v63.origin.y = y;
  v63.size.width = width;
  v63.size.height = height;
  CGRectGetMaxX(v63);
  if ((*(v7 + 40) & 1) == 0)
  {
    v52 = *(v7 + 32);
    if (v52 >= 1)
    {
      if (v16)
      {
        if ([v16 length] >= 1)
        {
          NSAttributedString.limitedFontHeight(by:)(v52);
        }
      }
    }
  }

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v31, v13);
}

int8x16_t TextShape.resolve(in:layoutDirection:)@<Q0>(_BYTE *a1@<X0>, void *a2@<X8>, int8x16_t result@<Q0>, uint64_t a4@<D1>)
{
  v5 = *v4;
  if (v5 == 2)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[3] = 0;
    a2[4] = 0;
    a2[2] = 4;
    return result;
  }

  v6 = *(v4 + 8);
  if ((v5 & 1) == 0)
  {
    if (*a1)
    {
      goto LABEL_5;
    }

LABEL_7:
    v7 = 1;
    goto LABEL_8;
  }

  if (*a1)
  {
    goto LABEL_7;
  }

LABEL_5:
  v7 = 3;
LABEL_8:
  result.i64[1] = a4;
  result = vbslq_s8(vceqq_f64(result, vdupq_n_s64(0x7FF0000000000000uLL)), vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL), result);
  *a2 = result;
  a2[2] = v7;
  *(a2 + 3) = v6;
  return result;
}

void computeLayoutInfo #1 () in ResolvedStyledText.TextLayoutManager.computeMetrics(scale:requestedSize:minorAxisIsFlexible:)(void *a1)
{
  v24 = 0;
  v25 = 1;
  v21 = 0;
  v22 = 0;
  v23 = 1;
  v20 = 0;
  v19 = 0;
  v2 = swift_allocObject();
  v2[2] = &v19;
  v2[3] = &v24;
  v2[4] = &v22;
  v2[5] = &v21;
  v2[6] = &v20;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in computeLayoutInfo #1 () in ResolvedStyledText.TextLayoutManager.computeMetrics(scale:requestedSize:minorAxisIsFlexible:);
  *(v3 + 24) = v2;
  aBlock[4] = thunk for @callee_guaranteed (@guaranteed NSTextLayoutFragment) -> (@unowned Bool)partial apply;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed NSTextLayoutFragment) -> (@unowned Bool);
  aBlock[3] = &block_descriptor_45;
  v4 = _Block_copy(aBlock);

  v5 = [a1 enumerateTextLayoutFragmentsFromLocation:0 options:0 usingBlock:v4];
  swift_unknownObjectRelease();
  _Block_release(v4);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    if (!v20)
    {
      v12 = 0;
      goto LABEL_9;
    }

    v6 = v20;
    v7 = [v6 characterRange];
    if (v19 == 1)
    {
      goto LABEL_6;
    }

    v9 = &v7[v8];
    if (!__OFADD__(v7, v8))
    {
      v10 = [v6 attributedString];
      v11 = [v10 length];

      if (v9 >= v11)
      {
        v13 = [v6 textLineFragmentRange];
        if (v13)
        {
          v14 = v13;
          v15 = [v13 endLocation];

          v16 = [a1 documentRange];
          v17 = [v16 endLocation];

          [v15 compare_];
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          goto LABEL_7;
        }
      }

LABEL_6:

LABEL_7:
      v12 = v20;
LABEL_9:

      return;
    }
  }

  __break(1u);
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed NSTextLayoutFragment) -> (@unowned Bool)(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v2();

  return v4 & 1;
}

BOOL closure #1 in computeLayoutInfo #1 () in ResolvedStyledText.TextLayoutManager.computeMetrics(scale:requestedSize:minorAxisIsFlexible:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void **a6)
{
  v11 = a1;
  v12 = [a1 state];
  if (v12 == 3)
  {
    if (*a2)
    {
      v13 = 1;
    }

    else
    {
      v14 = [v11 truncatedRanges];
      if (v14)
      {
        v15 = v14;
        type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSTextRange, 0x1E69DB848);
        v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v16 >> 62)
        {
          goto LABEL_23;
        }

        v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_7;
      }

      v13 = 0;
    }

    while (1)
    {
      *a2 = v13;
      [v11 layoutFragmentFrame];
      v19 = v18;
      v20 = [v11 textLineFragments];
      type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSTextLineFragment, 0x1E69DB830);
      v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v11 >> 62)
      {
        a2 = __CocoaSet.count.getter();
        if (!a2)
        {
          goto LABEL_20;
        }
      }

      else
      {
        a2 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!a2)
        {
          goto LABEL_20;
        }
      }

      if (a2 >= 1)
      {
        break;
      }

      __break(1u);
LABEL_23:
      v17 = __CocoaSet.count.getter();
LABEL_7:

      v13 = v17 != 0;
    }

    v21 = 0;
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x193AC03C0](v21, v11);
      }

      else
      {
        v23 = *(v11 + 8 * v21 + 32);
      }

      v24 = v23;
      [v23 typographicBounds];
      v26 = v19 + v25;
      [v24 glyphOrigin];
      v28 = v26 + v27;
      if (*(a3 + 8) == 1)
      {
        *a3 = v28;
        *(a3 + 8) = 0;
      }

      ++v21;
      *a4 = v28;
      *(a4 + 8) = 0;
      ++*a5;
      v22 = *a6;
      *a6 = v24;
    }

    while (a2 != v21);
LABEL_20:

    v12 = 3;
  }

  return v12 == 3;
}

void ResolvedStyledText.TextLayoutManager.layoutValue(in:with:applyingMarginOffsets:)(uint64_t a1@<X0>, void *a2@<X8>, double a7@<D4>, uint64_t a8@<D5>)
{
  v9 = v8;
  v10 = a1;
  v14 = MEMORY[0x193AC38C0]();
  ResolvedStyledText.TextLayoutManager.prepareLayoutManager(in:with:applyingMarginOffsets:)(v10, &v65, a7, *&a8);
  v80 = v71;
  v81 = v72;
  v82 = v73;
  v76 = v67;
  v77 = v68;
  v78 = v69;
  v79 = v70;
  v74 = v65;
  v75 = v66;
  if (_sSo7CGPointV_7SwiftUI18ResolvedStyledTextC0F13LayoutManagerC7Metrics33_B6B30FF60BE9B7CF80B161CEF951DAD7LLVtSgWOg(&v74) == 1)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
LABEL_16:
    objc_autoreleasePoolPop(v14);
    return;
  }

  v15 = v74;
  v16 = *&v74 + 0.0;
  swift_beginAccess();
  v17 = *(v9 + 152);
  aBlock = *(v9 + 136);
  v18.i64[1] = *(&aBlock + 1);
  *&v51 = v17;
  LOBYTE(v64) = *(v9 + 43);
  *v18.i64 = a7;
  TextShape.resolve(in:layoutDirection:)(&v64, &v54, v18, a8);
  v19 = v81;
  if (v81)
  {
    v20 = BYTE8(v81);
    v21 = v82;
    if (*&v15 != 0.0 || *(&v15 + 1) != 0.0)
    {
      v22 = *(v81 + 16);
      if (v22)
      {
        v47 = v82;
        v48 = BYTE8(v81);
        v49 = v14;
        v60 = v71;
        v61 = v72;
        v62 = v73;
        v56 = v67;
        v57 = v68;
        v58 = v69;
        v59 = v70;
        v54 = v65;
        v55 = v66;
        outlined init with copy of (CGPoint, ResolvedStyledText.TextLayoutManager.Metrics)(&v54, &aBlock);
        *&aBlock = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22, 0);
        v23 = (v19 + 72);
        v19 = aBlock;
        do
        {
          v24 = *(v23 - 5);
          v25 = *(v23 - 4);
          v26 = *(v23 - 24);
          v27 = *(v23 - 2);
          v28 = *(v23 - 1);
          v29 = *v23;
          outlined copy of Text.Layout.Line.Line(v24, v25);
          *&aBlock = v19;
          v31 = *(v19 + 16);
          v30 = *(v19 + 24);
          if (v31 >= v30 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1);
            v19 = aBlock;
          }

          v23 += 12;
          *(v19 + 16) = v31 + 1;
          v32 = v19 + 48 * v31;
          *(v32 + 32) = v24;
          *(v32 + 40) = v25;
          *(v32 + 48) = v26;
          *(v32 + 56) = v16 + v27;
          *(v32 + 64) = *(&v15 + 1) + v28;
          *(v32 + 72) = v29;
          --v22;
        }

        while (v22);
        outlined destroy of (CGPoint, ResolvedStyledText.TextLayoutManager.Metrics)?(&v65);
        outlined destroy of (CGPoint, ResolvedStyledText.TextLayoutManager.Metrics)?(&v65);
        v14 = v49;
        v21 = v47;
        v20 = v48;
      }

      else
      {
        outlined destroy of (CGPoint, ResolvedStyledText.TextLayoutManager.Metrics)?(&v65);
        v19 = MEMORY[0x1E69E7CC0];
      }
    }

    goto LABEL_15;
  }

  v33 = v54;
  v34 = v55;
  v35 = v56;
  LOBYTE(v64) = 1;
  *&v54 = 0;
  BYTE8(v54) = 1;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  LOBYTE(v58) = 1;
  v36 = *(&v77 + 1);
  aBlock = v33;
  v51 = v34;
  v52 = v35;
  ResolvedStyledText.TextLayoutManager.layout(with:in:at:shape:)(&v54, *&v75, *(&v75 + 1), *(&v77 + 1), v76 | (BYTE1(v76) << 8), &aBlock);
  v64 = MEMORY[0x1E69E7CC0];
  v63 = 0;
  v37 = *(v9 + 216);
  swift_beginAccess();
  ResolvedStyledText.TextLayoutManager.LayoutManager.layoutManager(for:original:)(v37, v36);
  v39 = v38;
  swift_endAccess();
  v40 = *(v9 + 260);
  v41 = (v40 >> 3) & 0x10;
  v42 = *(v9 + 256) & ((v40 & 2) >> 1);
  v43 = swift_allocObject();
  *(v43 + 16) = v42;
  *(v43 + 24) = v16;
  *(v43 + 32) = *(&v15 + 1);
  *(v43 + 40) = &v64;
  *(v43 + 48) = v41;
  *(v43 + 56) = &v63;
  v44 = swift_allocObject();
  *(v44 + 16) = partial apply for closure #1 in ResolvedStyledText.TextLayoutManager.collectTextLayout(origin:scale:);
  *(v44 + 24) = v43;
  v52 = partial apply for thunk for @callee_guaranteed (@guaranteed NSTextLayoutFragment) -> (@unowned Bool);
  v53 = v44;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v51 = thunk for @escaping @callee_guaranteed (@guaranteed NSTextLayoutFragment) -> (@unowned Bool);
  *(&v51 + 1) = &block_descriptor_22;
  v45 = _Block_copy(&aBlock);

  v46 = [v39 enumerateTextLayoutFragmentsFromLocation:0 options:0 usingBlock:v45];
  swift_unknownObjectRelease();

  _Block_release(v45);
  LOBYTE(v39) = swift_isEscapingClosureAtFileLocation();

  if ((v39 & 1) == 0)
  {
    v19 = v64;
    v20 = v63;
    v21 = *(v64 + 16);

    outlined destroy of (CGPoint, ResolvedStyledText.TextLayoutManager.Metrics)?(&v65);
LABEL_15:
    *a2 = v19;
    a2[1] = v20 & 1;
    a2[2] = v21;
    goto LABEL_16;
  }

  __break(1u);
}

void NSAttributedString.Metrics.update(layoutMargins:pixelLength:)(double a1, double a2, double a3, double a4, double a5)
{
  v6 = a1 + a3 + v5[1];
  *v5 = a2 + a4 + *v5;
  v5[1] = v6;
  v7 = v5[3] + a1;
  v8 = a5 == 1.0;
  v9 = round(v7 / a5) * a5;
  v10 = v5[4] + a1;
  v11 = v9 - v7;
  v12 = ceil((v10 + v9 - v7) / a5) * a5;
  v13 = round(v7);
  v14 = v13 - v7;
  v15 = ceil(v10 + v14);
  if (v8)
  {
    v9 = v13;
  }

  if (v8)
  {
    v11 = v14;
  }

  if (!v8)
  {
    v15 = v12;
  }

  v5[3] = v9;
  v5[4] = v15;
  v5[5] = v11;
}

uint64_t TextProxy.sizeThatFits(_:)(uint64_t result, char a2, uint64_t a3, char a4)
{
  if ((a2 & 1) != 0 || (result & 0x7FFFFFFFFFFFFFFFLL) != 0 || (a4 & 1) != 0 || (a3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v12 = v4;
    v13 = v5;
    v14 = v6;
    v7 = *v4;
    v8 = result;
    v9 = a2 & 1;
    v10 = a3;
    v11 = a4 & 1;
    return (*(*v7 + 232))(&v8);
  }

  return result;
}

double ResolvedStyledText.TextLayoutManager.sizeThatFits(_:)(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  if (*(v1 + 97))
  {
    v6 = v4;
  }

  else
  {
    v6 = v2;
  }

  if (*(v1 + 97))
  {
    v7 = v5;
  }

  else
  {
    v7 = v3;
  }

  if (*(v1 + 97))
  {
    v8 = v2;
  }

  else
  {
    v8 = v4;
  }

  if (*(v1 + 97))
  {
    v9 = v3;
  }

  else
  {
    v9 = v5;
  }

  v10 = v6;
  v11 = v8;
  if (v9)
  {
    v11 = INFINITY;
  }

  if (v7)
  {
    v10 = INFINITY;
    v12 = 256;
  }

  else
  {
    v12 = 0;
  }

  specialized ResolvedStyledText.TextLayoutManager.metrics(in:layoutMargins:)(v12 | *(v1 + 97) ^ 1, &v14, v10, v11);
  return v14;
}

double specialized ResolvedStyledText.TextLayoutManager.metrics(in:layoutMargins:)@<D0>(int a1@<W0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v9 = MEMORY[0x193AC38C0]();
  swift_beginAccess();
  if (a1)
  {
    v10 = a3;
  }

  else
  {
    v10 = a4;
  }

  if (a1)
  {
    v11 = a4;
  }

  else
  {
    v11 = a3;
  }

  v12 = *(v4 + 416);
  v13 = *(v12 + 2);
  if (!v13)
  {
LABEL_25:
    swift_beginAccess();
    v22 = *(v4 + 48);
    if (v22 >= 1.0)
    {
      goto LABEL_52;
    }

    v23 = v22 > COERCE_DOUBLE(1) ? *(v4 + 48) : COERCE_DOUBLE(1);
    ResolvedStyledText.TextLayoutManager.computeMetrics(scale:requestedSize:minorAxisIsFlexible:)(a1 & 1, 0, &v73, 1.0, a3, INFINITY);
    outlined destroy of ResolvedStyledText.TextLayoutManager.Metrics(&v73);
    if (BYTE9(v78))
    {
      goto LABEL_40;
    }

    v24 = *(&v74 + 1);
    if (v74)
    {
      v25 = *(&v74 + 1);
    }

    else
    {
      v25 = *&v75;
    }

    if (v74)
    {
      v24 = *&v75;
    }

    if (v25 > a3 || v24 > a4)
    {
LABEL_40:
      ResolvedStyledText.TextLayoutManager.computeMetrics(scale:requestedSize:minorAxisIsFlexible:)(a1 & 1, 0, &v57, v23, a3, INFINITY);
      outlined destroy of ResolvedStyledText.TextLayoutManager.Metrics(&v57);
      if ((BYTE9(v62) & 1) == 0)
      {
        v27 = *(&v58 + 1);
        if (v58)
        {
          v28 = *(&v58 + 1);
        }

        else
        {
          v28 = *&v59;
        }

        if (v58)
        {
          v27 = *&v59;
        }

        if (v28 <= a3 && v27 <= a4)
        {
          v40 = 1.0;
          v41 = v23;
          do
          {
            ResolvedStyledText.TextLayoutManager.computeMetrics(scale:requestedSize:minorAxisIsFlexible:)(a1 & 1, 0, &v65, v40 + (v40 - v41) * -0.5, a3, INFINITY);
            *&v54[48] = v69;
            *&v54[64] = v70;
            v55 = v71;
            v56 = v72;
            v53 = v65;
            *v54 = v66;
            *&v54[16] = v67;
            *&v54[32] = v68;
            outlined destroy of ResolvedStyledText.TextLayoutManager.Metrics(&v53);
            if (v54[73])
            {
              v40 = v40 + (v40 - v41) * -0.5;
            }

            else
            {
              v42 = *&v54[8];
              if (v54[0])
              {
                v43 = *&v54[8];
              }

              else
              {
                v43 = *&v54[16];
              }

              if (v54[0])
              {
                v42 = *&v54[16];
              }

              v44 = v42 > a4;
              if (v42 > a4)
              {
                v45 = v23;
              }

              else
              {
                v45 = v40 + (v40 - v41) * -0.5;
              }

              if (v44)
              {
                v46 = v41;
              }

              else
              {
                v46 = v40 + (v40 - v41) * -0.5;
              }

              if (v44)
              {
                v47 = v40 + (v40 - v41) * -0.5;
              }

              else
              {
                v47 = v40;
              }

              if (v43 > a3)
              {
                v40 = v40 + (v40 - v41) * -0.5;
              }

              else
              {
                v23 = v45;
                v41 = v46;
                v40 = v47;
              }
            }
          }

          while (v40 - v41 >= 0.01);
          ResolvedStyledText.TextLayoutManager.computeMetrics(scale:requestedSize:minorAxisIsFlexible:)(a1 & 0xFFFFFF01, 0, &v65, v23, a3, a4);
          goto LABEL_54;
        }
      }

      v30 = a1 & 0xFFFFFF01;
      v31 = v23;
      v32 = a3;
      v33 = a4;
    }

    else
    {
LABEL_52:
      v31 = 1.0;
      v30 = a1 & 0xFFFFFF01;
      v32 = a3;
      v33 = a4;
    }

    ResolvedStyledText.TextLayoutManager.computeMetrics(scale:requestedSize:minorAxisIsFlexible:)(v30, 0, &v65, v31, v32, v33);
LABEL_54:
    v61 = v69;
    v62 = v70;
    v63 = v71;
    v64 = v72;
    v57 = v65;
    v58 = v66;
    v59 = v67;
    v60 = v68;
    if (ResolvedStyledText.TextLayoutManager.minorAxisIsFlexible.getter())
    {
      ResolvedStyledText.TextLayoutManager.computeMetrics(scale:requestedSize:minorAxisIsFlexible:)(a1 & 0xFFFFFF01, 1u, &v73, *(&v59 + 1), a3, a4);
      outlined destroy of ResolvedStyledText.TextLayoutManager.Metrics(&v57);
    }

    else
    {
      v77 = v61;
      v78 = v62;
      v79 = v63;
      v80 = v64;
      v73 = v57;
      v74 = v58;
      v75 = v59;
      v76 = v60;
    }

    *&v54[48] = v77;
    *&v54[64] = v78;
    v55 = v79;
    v56 = v80;
    v53 = v73;
    *v54 = v74;
    *&v54[16] = v75;
    *&v54[32] = v76;
    outlined destroy of ResolvedStyledText.TextLayoutManager.Metrics(&v53);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + 416) = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
      *(v4 + 416) = v12;
    }

    v36 = *(v12 + 2);
    v35 = *(v12 + 3);
    if (v36 >= v35 >> 1)
    {
      v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v12);
    }

    v52 = *&v54[72];
    v50 = *&v54[40];
    v51 = *&v54[56];
    v48 = *&v54[8];
    v49 = *&v54[24];
    *(v12 + 2) = v36 + 1;
    v37 = &v12[88 * v36];
    *(v37 + 4) = v10;
    *(v37 + 5) = v11;
    *(v37 + 4) = v49;
    *(v37 + 5) = v50;
    *(v37 + 56) = v52;
    *(v37 + 6) = v51;
    *(v37 + 3) = v48;
    *(v4 + 416) = v12;
    v17 = *&v54[8];
    v18 = *&v54[16];
    v82 = *&v54[40];
    v83 = *&v54[56];
    v84 = *&v54[72];
    v81 = *&v54[24];
    goto LABEL_62;
  }

  v14 = v12 + 64;
  while (1)
  {
    v15 = *(v14 - 4);
    v16 = *(v14 - 3);
    v17 = *(v14 - 2);
    v18 = *(v14 - 1);
    if (v17 >= v15)
    {
      v19 = *(v14 - 4);
    }

    else
    {
      v19 = *(v14 - 2);
    }

    if (v18 >= v16)
    {
      v20 = *(v14 - 3);
    }

    else
    {
      v20 = *(v14 - 1);
    }

    if (v16 <= v18)
    {
      v16 = *(v14 - 1);
    }

    if (v19 <= v10)
    {
      if (v15 <= v17)
      {
        v15 = *(v14 - 2);
      }

      if (v10 <= v15 && v20 <= v11 && v11 <= v16)
      {
        break;
      }
    }

    v14 += 88;
    if (!--v13)
    {
      goto LABEL_25;
    }
  }

  v21 = *(v14 + 1);
  v81 = *v14;
  v82 = v21;
  v83 = *(v14 + 2);
  v84 = *(v14 + 24);
LABEL_62:
  swift_endAccess();
  objc_autoreleasePoolPop(v9);
  *a2 = v17;
  *(a2 + 8) = v18;
  v38 = v82;
  *(a2 + 16) = v81;
  *(a2 + 32) = v38;
  result = *&v83;
  *(a2 + 48) = v83;
  *(a2 + 64) = v84;
  return result;
}

uint64_t ResolvedStyledText.TextLayoutManager.minorAxisIsFlexible.getter()
{
  v1 = *(v0 + 216);
  if (v1 && [*(v0 + 216) length] >= 1)
  {
    if (one-time initialization token for updateSchedule != -1)
    {
      swift_once();
    }

    v2 = static NSAttributedStringKey.updateSchedule;
    [v1 length];
    if ([v1 attribute:v2 atIndex:0 effectiveRange:0])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      outlined destroy of Any?(v4);
      return *(v0 + 256) & 1;
    }

    memset(v4, 0, sizeof(v4));
    outlined destroy of Any?(v4);
  }

  return 0;
}

uint64_t ResolvedStyledText.TextLayoutManager.explicitAlignment(_:at:)(uint64_t a1, double a2, double a3)
{
  swift_beginAccess();
  if (*(v3 + 97))
  {
LABEL_2:
    *&result = 0.0;
    return result;
  }

  if (one-time initialization token for lastTextBaseline != -1)
  {
    swift_once();
  }

  if (static VerticalAlignment.lastTextBaseline == a1)
  {
    if (*(v3 + 97))
    {
      v8 = a2;
    }

    else
    {
      v8 = a3;
    }

    if (*(v3 + 97))
    {
      v9 = a3;
    }

    else
    {
      v9 = a2;
    }

    specialized ResolvedStyledText.TextLayoutManager.metrics(in:layoutMargins:)(*(v3 + 97) ^ 1, v16, v9, v8);
    return v18;
  }

  else
  {
    if (one-time initialization token for firstTextBaseline != -1)
    {
      swift_once();
    }

    if (static VerticalAlignment.firstTextBaseline == a1)
    {
      if (*(v3 + 97))
      {
        v10 = a2;
      }

      else
      {
        v10 = a3;
      }

      if (*(v3 + 97))
      {
        v11 = a3;
      }

      else
      {
        v11 = a2;
      }

      specialized ResolvedStyledText.TextLayoutManager.metrics(in:layoutMargins:)(*(v3 + 97) ^ 1, v16, v11, v10);
      *&result = v17;
    }

    else
    {
      if (one-time initialization token for _firstTextLineCenter != -1)
      {
        swift_once();
      }

      if (static VerticalAlignment._firstTextLineCenter == a1)
      {
        if (*(v3 + 97))
        {
          v12 = a2;
        }

        else
        {
          v12 = a3;
        }

        if (*(v3 + 97))
        {
          v13 = a3;
        }

        else
        {
          v13 = a2;
        }

        specialized ResolvedStyledText.TextLayoutManager.metrics(in:layoutMargins:)(*(v3 + 97) ^ 1, v16, v13, v12);
        v14 = v17;
        ResolvedStyledText.maxFontMetrics.getter(v15);
        *&result = v14 + v15[0] * -0.5;
      }

      else
      {
        if (one-time initialization token for leadingText != -1)
        {
          swift_once();
        }

        if (static HorizontalAlignment.leadingText != a1)
        {
          goto LABEL_2;
        }

        swift_beginAccess();
        return *(v3 + 176);
      }
    }
  }

  return result;
}

void specialized ColorProvider._apply(color:to:)(uint64_t a1, uint64_t a2, char a3)
{
  v9 = *(a2 + 24);
  if (v9 <= 2)
  {
    v61 = v8;
    v62 = v7;
    v63 = v6;
    v64 = v5;
    v65 = v3;
    v66 = v4;
    v11 = *a2;
    if (v9)
    {
      if (v9 == 1)
      {
        v12 = *(a2 + 8);
        if (v12 == *(a2 + 16))
        {
          return;
        }

        v16 = *(a2 + 48);
        v15 = *(a2 + 56);
        if (v15)
        {

          v17 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA021SystemColorDefinitionI033_9E3352CE4697DF56A738786E16992848LLVG_Tt1g5(v16);
          v19 = v18;
        }

        else
        {
          v35 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA021SystemColorDefinitionS033_9E3352CE4697DF56A738786E16992848LLVG_Tt0g5(*(a2 + 48));
          if (v35)
          {
            v17 = v35[9];
            v19 = v35[10];
          }

          else
          {
            v19 = &protocol witness table for CoreUIDefaultSystemColorDefinition;
            v17 = &type metadata for CoreUIDefaultSystemColorDefinition;
          }
        }

        LOBYTE(v45) = a3;
        v47 = v16;
        v48 = v15;
        (v19[1])(&v57, &v45, &v47, v17, v19);
        v36 = v58;
        v37 = v59;
        v38 = v60;
        v39 = *(a2 + 56);
        v47 = *(a2 + 48);
        v48 = v39;
        v40 = *(*a1 + 168);

        v41 = v40(v12, &v47);

        v47 = v57;
        LODWORD(v48) = v36;
        *(&v48 + 1) = v37 * v41;
        v49 = v38;
        v50 = 0;
        v51 = 1065353216;
        v52 = 0;
        v53 = -1;
        *v54 = *v56;
        *&v54[3] = *&v56[3];
        v42 = MEMORY[0x1E69E7CC0];
        v55 = MEMORY[0x1E69E7CC0];
        v46 = v11;
        if (*(a2 + 40) == 1)
        {
          v42 = *(a2 + 32);

          outlined consume of _ShapeStyle_Shape.Result(v43, 1u);
          *(a2 + 32) = 0;
          *(a2 + 40) = 5;
        }

        v45 = v42;
        _ShapeStyle_Pack.subscript.setter(&v47, &v46, v12);
        v44 = v45;
        outlined consume of _ShapeStyle_Shape.Result(*(a2 + 32), *(a2 + 40));
        *(a2 + 32) = v44;
        v34 = 1;
      }

      else
      {
        v27 = a1;
        if (v11 >= 1)
        {
          v28 = *(a2 + 56);
          v47 = *(a2 + 48);
          v48 = v28;
          v29 = *(*a1 + 168);

          v31 = v29(v11, &v47);

          type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for ColorBox<Color.OpacityColor>, lazy protocol witness table accessor for type Color.OpacityColor and conformance Color.OpacityColor, &type metadata for Color.OpacityColor, type metadata accessor for ColorBox);
          v27 = swift_allocObject();
          *(v27 + 16) = a1;
          *(v27 + 24) = v31;
        }

        v32 = *(a2 + 32);
        v33 = *(a2 + 40);

        outlined consume of _ShapeStyle_Shape.Result(v32, v33);
        *(a2 + 32) = v27;
        v34 = 3;
      }

      *(a2 + 40) = v34;
    }

    else
    {
      v20 = a1;
      if (v11 >= 1)
      {
        v21 = *(a2 + 56);
        v47 = *(a2 + 48);
        v48 = v21;
        v22 = *(*a1 + 168);

        v24 = v22(v11, &v47);

        type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for ColorBox<Color.OpacityColor>, lazy protocol witness table accessor for type Color.OpacityColor and conformance Color.OpacityColor, &type metadata for Color.OpacityColor, type metadata accessor for ColorBox);
        v20 = swift_allocObject();
        *(v20 + 16) = a1;
        *(v20 + 24) = v24;
      }

      v25 = *(a2 + 32);
      v26 = *(a2 + 40);

      outlined consume of _ShapeStyle_Shape.Result(v25, v26);
      *(a2 + 32) = v20;
      *(a2 + 40) = 0;
    }
  }
}

{
  v9 = *(a2 + 24);
  if (v9 <= 2)
  {
    v51 = v8;
    v52 = v7;
    v53 = v6;
    v54 = v5;
    v55 = v3;
    v56 = v4;
    v12 = *a2;
    if (v9)
    {
      if (v9 == 1)
      {
        v13 = *(a2 + 8);
        if (v13 == *(a2 + 16))
        {
          return;
        }

        v14 = *(a2 + 56);

        specialized ColorProvider.resolveHDR(in:)(v16, v14, a3, &v47);

        v17 = v48;
        v18 = v49;
        v19 = v50;
        v20 = *(a2 + 56);
        v39 = *(a2 + 48);
        v40 = v20;
        v21 = *(*a1 + 168);

        v22 = v21(v13, &v39);

        v39 = v47;
        LODWORD(v40) = v17;
        *(&v40 + 1) = v18 * v22;
        v41 = v19;
        v42 = 0;
        v43 = 1065353216;
        v44 = 0;
        v45 = -1;
        v23 = MEMORY[0x1E69E7CC0];
        v46 = MEMORY[0x1E69E7CC0];
        v38 = v12;
        if (*(a2 + 40) == 1)
        {
          v23 = *(a2 + 32);

          outlined consume of _ShapeStyle_Shape.Result(v24, 1u);
          *(a2 + 32) = 0;
          *(a2 + 40) = 5;
        }

        _ShapeStyle_Pack.subscript.setter(&v39, &v38, v13);
        outlined consume of _ShapeStyle_Shape.Result(*(a2 + 32), *(a2 + 40));
        *(a2 + 32) = v23;
        v25 = 1;
      }

      else
      {
        v32 = a1;
        if (v12 > 0)
        {
          v33 = *(a2 + 56);
          v39 = *(a2 + 48);
          v40 = v33;
          v34 = *(*a1 + 168);

          v35 = v34(v12, &v39);

          type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for ColorBox<Color.OpacityColor>, lazy protocol witness table accessor for type Color.OpacityColor and conformance Color.OpacityColor, &type metadata for Color.OpacityColor, type metadata accessor for ColorBox);
          v32 = swift_allocObject();
          *(v32 + 16) = a1;
          *(v32 + 24) = v35;
        }

        v36 = *(a2 + 32);
        v37 = *(a2 + 40);

        outlined consume of _ShapeStyle_Shape.Result(v36, v37);
        *(a2 + 32) = v32;
        v25 = 3;
      }

      *(a2 + 40) = v25;
    }

    else
    {
      v26 = a1;
      if (v12 > 0)
      {
        v27 = *(a2 + 56);
        v39 = *(a2 + 48);
        v40 = v27;
        v28 = *(*a1 + 168);

        v29 = v28(v12, &v39);

        type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for ColorBox<Color.OpacityColor>, lazy protocol witness table accessor for type Color.OpacityColor and conformance Color.OpacityColor, &type metadata for Color.OpacityColor, type metadata accessor for ColorBox);
        v26 = swift_allocObject();
        *(v26 + 16) = a1;
        *(v26 + 24) = v29;
      }

      v30 = *(a2 + 32);
      v31 = *(a2 + 40);

      outlined consume of _ShapeStyle_Shape.Result(v30, v31);
      *(a2 + 32) = v26;
      *(a2 + 40) = 0;
    }
  }
}

void closure #1 in NSAttributedString.replacingLineBreakModes(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, id a5, void **a6, void *a7)
{
  outlined init with copy of Any?(a1, v19);
  if (v20)
  {
    type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSParagraphStyle, 0x1E69DB7D0);
    if (swift_dynamicCast())
    {
      if ([v18 lineBreakMode] == a5)
      {
LABEL_11:

        return;
      }

      [v18 mutableCopy];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSMutableParagraphStyle, 0x1E69DB7C8);
      swift_dynamicCast();
      [v18 setLineBreakMode_];
      v12 = *a6;
      if (*a6)
      {
        goto LABEL_8;
      }

      [a7 mutableCopy];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSMutableAttributedString, 0x1E696AD40);
      v13 = swift_dynamicCast();
      v14 = v18;
      if (!v13)
      {
        v14 = 0;
      }

      v15 = *a6;
      *a6 = v14;

      v12 = *a6;
      if (*a6)
      {
LABEL_8:
        v16 = one-time initialization token for kitParagraphStyle;
        v17 = v12;
        if (v16 != -1)
        {
          swift_once();
        }

        [v17 addAttribute:static NSAttributedStringKey.kitParagraphStyle value:v18 range:{a2, a3}];

        goto LABEL_11;
      }
    }
  }

  else
  {
    outlined destroy of Any?(v19);
  }
}

double static _TextRendererViewModifier._makeViewInputs(modifier:inputs:)(int *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v41 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  v32 = a3;
  v33 = a4;
  LODWORD(v40[0]) = v7;
  v8 = type metadata accessor for _TextRendererViewModifier(255, a3, a4, a4);
  type metadata accessor for _GraphValue(0, v8, v9, v10);
  _GraphValue.subscript.getter(partial apply for closure #1 in static _TextRendererViewModifier._makeViewInputs(modifier:inputs:), a3, &v28);
  v11 = a2[1];
  v37 = *a2;
  v38 = v11;
  v13 = *a2;
  v12 = a2[1];
  v39 = a2[2];
  v14 = v38;
  v34 = v13;
  v35 = v12;
  v36 = a2[2];
  v15 = *(a4 + 8);
  v16 = *(v15 + 48);
  outlined init with copy of _GraphInputs(&v37, v40);

  v16(&v28, &v34, a3, v15);
  v40[0] = v34;
  v40[1] = v35;
  v40[2] = v36;
  outlined destroy of _GraphInputs(v40);
  v17 = v28;
  swift_beginAccess();
  v27[0] = _TextRendererViewModifier.MakeTextRenderer.init(renderer:environment:)(v17, *(v14 + 16));
  v27[1] = v18;
  TextRenderer = type metadata accessor for _TextRendererViewModifier.MakeTextRenderer(0, a3, a4, v19);
  v30 = TextRenderer;
  swift_getWitnessTable(protocol conformance descriptor for _TextRendererViewModifier<A>.MakeTextRenderer, TextRenderer);
  v31 = v21;
  type metadata accessor for Attribute<TextRendererBoxBase>(0, &lazy cache variable for type metadata for Attribute<TextRendererBoxBase>, v22, type metadata accessor for TextRendererBoxBase, MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v27, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_10, v29, TextRenderer, MEMORY[0x1E69E73E0], v23, MEMORY[0x1E69E7410], v24);

  v25 = AGCreateWeakAttribute();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA17TextRendererInputV_Tt2g5(a2, v25);

  return result;
}

uint64_t ResolvedTextContainer.append<A>(_:in:with:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *a2;
  v12 = *(a2 + 8);
  v14 = *a3;
  v20[0] = *a2;
  v20[1] = v12;
  v19 = v14;
  if (v12)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE015TextSizeVariantI033_22A2F77020526CCA53FF38DE37184183LLVG_Tt1g5(v13, &v18);

    v15 = v18;
  }

  else
  {
    v16 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE015TextSizeVariantS033_22A2F77020526CCA53FF38DE37184183LLVG_Tt0g5(v13);
    if (v16)
    {
      v15 = v16[9];
    }

    else
    {
      v15 = 0;
    }
  }

  return (*(a6 + 64))(a1, v20, &v19, v15 == 0, a5, a7, a4, a6);
}

void _NSTextLayoutManagerRequiresCTLine(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    [v1 setRequiresCTLineRef:1];
  }
}

void ResolvedStyledText.TextLayoutManager.LayoutManager.init(layoutManager:original:)(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = [objc_allocWithZone(MEMORY[0x1E69DB808]) init];
  if (a2)
  {
    v7 = a2;
    v8 = a1;
    v9 = MEMORY[0x193AC38C0]();
    [v6 setAttributedString_];
    [v8 replaceTextContentManager_];

    objc_autoreleasePoolPop(v9);
  }

  *a3 = v6;
  *(a3 + 8) = a1;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 64) = 0;
  *(a3 + 72) = 0;
  *(a3 + 56) = 4;
}

uint64_t assignWithCopy for ScaledMetric(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  outlined copy of Environment<ButtonSizing>.Content(*a2, v7);
  v8 = *a1;
  v9 = *(a1 + 8);
  *a1 = v6;
  *(a1 + 8) = v7;
  outlined consume of Environment<ButtonSizing>.Content(v8, v9);
  v10 = a1 & 0xFFFFFFFFFFFFFFF8;
  v11 = a2 & 0xFFFFFFFFFFFFFFF8;
  v12 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  LOBYTE(v6) = *(v11 + 24);
  outlined copy of Environment<ButtonSizing>.Content(v12, v6);
  v13 = *((a1 & 0xFFFFFFFFFFFFFFF8) + 16);
  v14 = *((a1 & 0xFFFFFFFFFFFFFFF8) + 24);
  *(v10 + 16) = v12;
  *(v10 + 24) = v6;
  v15 = outlined consume of Environment<ButtonSizing>.Content(v13, v14);
  v16 = *(*(a3 + 16) - 8);
  v17 = v16 + 24;
  v18 = *(v16 + 80);
  v19 = (v18 + 25 + (a1 & 0xFFFFFFFFFFFFFFF8)) & ~v18;
  v20 = (v18 + 25 + v11) & ~v18;
  (*(v16 + 24))(v19, v20, v15);
  *(*(v17 + 40) + v19) = *(*(v17 + 40) + v20);
  return a1;
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA17TextRendererInputV_Tt2g5(uint64_t *a1, uint64_t a2)
{
  v8 = a2;
  v4 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for TextRendererInput);
  v5 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17TextRendererInputV_Tt0B5(v4, v7);
  if (!v5 || (v7 = *(v5 + 72), (off_1ED520520(&v8, &v7) & 1) == 0))
  {
    v6 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<TextRendererInput>, &type metadata for TextRendererInput, &protocol witness table for TextRendererInput, type metadata accessor for TypedElement);
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for TextRendererInput, 0, v6);
  }
}

void EnvironmentValues.imageScale.getter(char *a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA010ImageScaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v3, a1);
  }

  else
  {
    v4 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA010ImageScaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(*v1);
    if (v4)
    {
      v5 = *(v4 + 72);
    }

    else
    {
      v5 = 1;
    }

    *a1 = v5;
  }
}

void NSAttributedString.replacingLineBreakModes(_:)(uint64_t a1)
{
  v10 = 0;
  if (one-time initialization token for kitParagraphStyle != -1)
  {
    swift_once();
  }

  v3 = static NSAttributedStringKey.kitParagraphStyle;
  v4 = [v1 length];
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = &v10;
  v5[4] = v1;
  v6 = swift_allocObject();
  *(v6 + 16) = partial apply for closure #1 in NSAttributedString.replacingLineBreakModes(_:);
  *(v6 + 24) = v5;
  aBlock[4] = thunk for @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()partial apply;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  aBlock[3] = &block_descriptor_13_1;
  v7 = _Block_copy(aBlock);
  v8 = v1;

  [v8 enumerateAttribute:v3 inRange:0 options:v4 usingBlock:{0x100000, v7}];
  _Block_release(v7);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  else
  {
    if (!v10)
    {
      v8;
    }
  }
}

uint64_t sub_18D2D2948()
{

  return swift_deallocObject();
}

id _TextContainer(int a1)
{
  v1 = off_1E723FCC8;
  if (!a1)
  {
    v1 = 0x1E69DB800;
  }

  v2 = objc_alloc_init(*v1);

  return v2;
}

void type metadata accessor for Attribute<TextRendererBoxBase>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = a4(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void Text.Layout.Line.subscript.getter(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = *v2;
  v11 = v10;
  if (v6 == 1 && (v12 = _NSTextLineFragmentGetCTLine(v10), v11, (v11 = v12) == 0))
  {
    __break(1u);
  }

  else
  {

    *a2 = v11;
    *(a2 + 8) = a1;
    *(a2 + 16) = v7;
    *(a2 + 24) = v8;
    *(a2 + 32) = v9;
    *(a2 + 40) = v5;
  }
}

void ResolvedStyledText.TextLayoutManager.drawingMargins.getter()
{
  ResolvedStyledText.maxFontMetrics.getter(v1);
  swift_beginAccess();
  ResolvedStyledText.lineHeightScalingAdjustment(lineHeightMultiple:maximumLineHeight:minimumLineHeight:)(v0[8], v0[9], v0[10]);
}

void (*protocol witness for Collection.subscript.read in conformance Text.Layout.Line(uint64_t *a1, uint64_t *a2))(id **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  *a1 = v4;
  Text.Layout.Line.subscript.getter(*a2, v4);
  return protocol witness for Collection.subscript.read in conformance Text.Layout.Line;
}

void ResolvedStyledText.TextLayoutManager.draw(in:with:applyingMarginOffsets:containsResolvable:context:renderer:)(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, double a6, double a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v13 = a1;
  v20 = MEMORY[0x193AC38C0](a1, a8, a9);
  if (a10)
  {
    *&v154 = v10;
    v21 = *(*a10 + 104);

    v22 = v21(&v154, a6, a7);
    v24 = v23;
    a6 = v25;
    a7 = v26;
  }

  else
  {
    v22 = 0.0;
    v24 = 0.0;
  }

  swift_beginAccess();
  v27 = *(v10 + 152);
  v145 = *(v10 + 136);
  v28.i64[1] = *(&v145 + 1);
  *&v146 = v27;
  LOBYTE(aBlock) = *(v10 + 43);
  *v28.i64 = a6;
  TextShape.resolve(in:layoutDirection:)(&aBlock, &v154, v28, *&a7);
  v125 = v154;
  v29 = v155;
  v30 = v156;
  ResolvedStyledText.TextLayoutManager.prepareLayoutManager(in:with:applyingMarginOffsets:)(v13 & 1, &v145, a6, a7);
  v160 = v151;
  v161 = v152;
  v162 = v153;
  v156 = v147;
  v157 = v148;
  v158 = v149;
  v159 = v150;
  v154 = v145;
  v155 = v146;
  if (_sSo7CGPointV_7SwiftUI18ResolvedStyledTextC0F13LayoutManagerC7Metrics33_B6B30FF60BE9B7CF80B161CEF951DAD7LLVtSgWOg(&v154) == 1)
  {
LABEL_54:
    objc_autoreleasePoolPop(v20);
    return;
  }

  v128 = a10;
  v31 = v154;
  v32 = objc_opt_self();
  v33 = [v32 current];
  if (v33 && (v34 = v33, v35 = [v33 CGContext], v34, v35) && (v36 = MEMORY[0x193AC3360](v35, 0, 0), v35, v36))
  {
    v120 = v30;
    v37 = RBDrawingStateGetDisplayList();
    if (v37)
    {
      v38 = v37;
      v39 = [v37 CGStyleHandler];
      if (v39)
      {
        v40 = v39;
        v41 = v38;
        v42 = swift_allocObject();
        *(v42 + 16) = v40;
        v123 = v42;
        v124 = _sSo14RBDrawingStateaSiIeyByy_ABSiIegyy_TRTA_0;
      }

      else
      {
        v41 = v38;
        v123 = 0;
        v124 = 0;
      }

      v67 = *(v11 + 272);
      if (*(v67 + 16))
      {
        v68 = *(v11 + 43);
        v69 = *(v11 + 44);
        v70 = swift_allocObject();
        *(v70 + 16) = v67;
        *(v70 + 24) = v69;
        *(v70 + 25) = v68;
        *&v136 = partial apply for closure #1 in ResolvedStyledText.cgStyleHandler.getter;
        *(&v136 + 1) = v70;
        *&aBlock = MEMORY[0x1E69E9820];
        *(&aBlock + 1) = 1107296256;
        *&v135 = thunk for @escaping @callee_guaranteed (@unowned RBDrawingState, @unowned Int) -> ();
        *(&v135 + 1) = &block_descriptor_75_0;
        v71 = _Block_copy(&aBlock);
        v72 = v41;
        v43 = v41;
      }

      else
      {
        v43 = v41;
        v73 = v41;
        v71 = 0;
      }

      v30 = v120;
      [v43 setCGStyleHandler_];
      _Block_release(v71);
    }

    else
    {
      v123 = 0;
      v124 = 0;
      v43 = 0;
    }
  }

  else
  {
    v123 = 0;
    v124 = 0;
    v43 = 0;
  }

  v44 = [v32 current];
  if (v44)
  {
    v45 = v44;
    v46 = [v44 CGContext];

    if (v46)
    {
      CGContextSaveGState(v46);
      if (*(v11 + 97) == 1)
      {
        v163.origin.x = a2;
        v163.origin.y = a3;
        v163.size.width = a4;
        v163.size.height = a5;
        Width = CGRectGetWidth(v163);
        CGContextTranslateCTM(v46, Width, 0.0);
        CGContextRotateCTM(v46, 1.57079633);
      }

      v48 = a10;
      if (!a10)
      {
        v24 = 0.0;
        if (*(*(v11 + 408) + 16))
        {
          v22 = 0.0;
        }

        else
        {
          v50 = *(v11 + 352);
          v49 = *(v11 + 360);
          v51 = *(v11 + 368);
          v52 = *(v11 + 376);
          v53 = *(v11 + 384);
          v54 = *(v11 + 392);
          v55 = *(v11 + 400);
          if (v54 < 0)
          {
            outlined consume of ResolvedTextSuffix(*(v11 + 352), v49, v51, *(v11 + 376), v53, v54, *(v11 + 400));
            outlined consume of ResolvedTextSuffix(0, 0, 0, 0, 0, 0x8000000000000000, 0);
            v22 = 0.0;
            if ((*(v11 + 260) & 0x80) == 0)
            {
              v74 = v43;
              LOBYTE(v143) = 1;
              *&aBlock = 0;
              BYTE8(aBlock) = 1;
              v135 = 0u;
              v136 = 0u;
              v137 = 0u;
              LOBYTE(v138) = 1;
              v75 = *(&v157 + 1);
              v130 = v125;
              v131 = v29;
              v132 = v30;
              ResolvedStyledText.TextLayoutManager.layout(with:in:at:shape:)(&aBlock, *&v155, *(&v155 + 1), *(&v157 + 1), v156 | (BYTE1(v156) << 8), &v130);
              outlined destroy of (CGPoint, ResolvedStyledText.TextLayoutManager.Metrics)?(&v145);
              v76 = *(v11 + 216);
              swift_beginAccess();
              ResolvedStyledText.TextLayoutManager.LayoutManager.layoutManager(for:original:)(v76, v75);
              v78 = v77;
              swift_endAccess();
              v79 = swift_allocObject();
              *(v79 + 16) = v31;
              *(v79 + 32) = v46;
              v80 = swift_allocObject();
              v81 = partial apply for closure #3 in ResolvedStyledText.TextLayoutManager.drawImplementation(in:with:applyingMarginOffsets:containsResolvable:context:renderer:);
              *(v80 + 16) = partial apply for closure #3 in ResolvedStyledText.TextLayoutManager.drawImplementation(in:with:applyingMarginOffsets:containsResolvable:context:renderer:);
              *(v80 + 24) = v79;
              v132 = thunk for @callee_guaranteed (@guaranteed NSTextLayoutFragment) -> (@unowned Bool)partial apply;
              v133 = v80;
              *&v130 = MEMORY[0x1E69E9820];
              *(&v130 + 1) = 1107296256;
              *&v131 = thunk for @escaping @callee_guaranteed (@guaranteed NSTextLayoutFragment) -> (@unowned Bool);
              *(&v131 + 1) = &block_descriptor_69;
              v82 = _Block_copy(&v130);
              v83 = v46;

              v84 = [v78 enumerateTextLayoutFragmentsFromLocation:0 options:0 usingBlock:v82];

              swift_unknownObjectRelease();
              _Block_release(v82);
              LOBYTE(v82) = swift_isEscapingClosureAtFileLocation();

              if ((v82 & 1) == 0)
              {
                v43 = v74;
                v86 = v123;
                v85 = v124;
LABEL_47:
                CGContextRestoreGState(v46);

                if (v43)
                {
                  if (v85)
                  {
                    v132 = v85;
                    v133 = v86;
                    *&v130 = MEMORY[0x1E69E9820];
                    *(&v130 + 1) = 1107296256;
                    *&v131 = thunk for @escaping @callee_guaranteed (@unowned RBDrawingState, @unowned Int) -> ();
                    *(&v131 + 1) = &block_descriptor_59_0;
                    v116 = _Block_copy(&v130);
                  }

                  else
                  {
                    v116 = 0;
                  }

                  [v43 setCGStyleHandler_];

                  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v85, v86);
                  _Block_release(v116);
                }

                else
                {
                  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v85, v86);
                }

                outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v81, v79);
                goto LABEL_54;
              }

LABEL_56:
              __break(1u);
              goto LABEL_57;
            }
          }

          else
          {
            v56 = *(v11 + 352);
            v57 = *(v11 + 360);
            v117 = v11;
            v118 = v20;
            v58 = v46;
            v59 = *(v11 + 368);
            v60 = v43;
            v61 = *(v11 + 384);
            v62 = *(v11 + 392);
            outlined copy of ResolvedTextSuffix(v56, v49, v51, v52, v53, v54, v55);
            v63 = v57;
            v64 = v59;
            v46 = v58;
            v48 = 0;
            v65 = v61;
            v43 = v60;
            v66 = v62;
            v11 = v117;
            v20 = v118;
            outlined consume of ResolvedTextSuffix(v50, v63, v64, v52, v65, v66, v55);
            outlined consume of ResolvedTextSuffix(0, 0, 0, 0, 0, 0x8000000000000000, 0);
            v22 = 0.0;
          }
        }
      }

      v87 = *&v31 + v22;
      v88 = *(&v31 + 1) + v24;
      v89 = v161;
      if (v161)
      {
        v90 = BYTE8(v161);
        v91 = v162;
        if (v87 != 0.0 || v88 != 0.0)
        {
          v127 = v43;
          v92 = *(v161 + 16);
          if (!v92)
          {
            outlined destroy of (CGPoint, ResolvedStyledText.TextLayoutManager.Metrics)?(&v145);
            v89 = MEMORY[0x1E69E7CC0];
            v43 = v127;
            if (v48)
            {
              goto LABEL_43;
            }

            goto LABEL_45;
          }

          v122 = BYTE8(v161);
          v126 = v162;
          v119 = v20;
          v121 = v46;
          v140 = v151;
          v141 = v152;
          v142 = v153;
          v136 = v147;
          v137 = v148;
          v138 = v149;
          v139 = v150;
          aBlock = v145;
          v135 = v146;
          outlined init with copy of (CGPoint, ResolvedStyledText.TextLayoutManager.Metrics)(&aBlock, &v130);
          *&v130 = MEMORY[0x1E69E7CC0];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v92, 0);
          v93 = v89 + 9;
          v89 = v130;
          do
          {
            v95 = *(v93 - 5);
            v94 = *(v93 - 4);
            v96 = *(v93 - 24);
            v97 = *(v93 - 2);
            v98 = *(v93 - 1);
            v99 = *v93;
            outlined copy of Text.Layout.Line.Line(v95, v94);
            *&v130 = v89;
            v101 = v89[2];
            v100 = v89[3];
            if (v101 >= v100 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v100 > 1), v101 + 1, 1);
              v89 = v130;
            }

            v93 += 12;
            v89[2] = v101 + 1;
            v102 = &v89[6 * v101];
            v102[4] = v95;
            v102[5] = v94;
            *(v102 + 48) = v96;
            *(v102 + 7) = v87 + v97;
            *(v102 + 8) = v88 + v98;
            *(v102 + 18) = v99;
            --v92;
          }

          while (v92);
          outlined destroy of (CGPoint, ResolvedStyledText.TextLayoutManager.Metrics)?(&v145);
          outlined destroy of (CGPoint, ResolvedStyledText.TextLayoutManager.Metrics)?(&v145);
          v20 = v119;
          v43 = v127;
          v48 = v128;
          v46 = v121;
          v91 = v126;
          v90 = v122;
        }

        if (v48)
        {
          goto LABEL_43;
        }

LABEL_45:
        EnvironmentValues.init()(&v130);
        v115 = v130;
        goto LABEL_46;
      }

      v103 = v43;
      LOBYTE(v143) = 1;
      *&aBlock = 0;
      BYTE8(aBlock) = 1;
      v135 = 0u;
      v136 = 0u;
      v137 = 0u;
      LOBYTE(v138) = 1;
      v104 = *(&v157 + 1);
      v130 = v125;
      v131 = v29;
      v132 = v30;
      ResolvedStyledText.TextLayoutManager.layout(with:in:at:shape:)(&aBlock, *&v155, *(&v155 + 1), *(&v157 + 1), v156 | (BYTE1(v156) << 8), &v130);
      *&v143 = MEMORY[0x1E69E7CC0];
      v144 = 0;
      v105 = *(v11 + 216);
      swift_beginAccess();
      ResolvedStyledText.TextLayoutManager.LayoutManager.layoutManager(for:original:)(v105, v104);
      v107 = v106;
      swift_endAccess();
      v108 = *(v11 + 260);
      LODWORD(v105) = (v108 >> 3) & 0x10;
      v109 = *(v11 + 256) & ((v108 & 2) >> 1);
      v110 = swift_allocObject();
      *(v110 + 16) = v109;
      *(v110 + 24) = v87;
      *(v110 + 32) = v88;
      *(v110 + 40) = &v143;
      *(v110 + 48) = v105;
      *(v110 + 56) = &v144;
      v111 = swift_allocObject();
      *(v111 + 16) = closure #1 in ResolvedStyledText.TextLayoutManager.collectTextLayout(origin:scale:)partial apply;
      *(v111 + 24) = v110;
      v132 = thunk for @callee_guaranteed (@guaranteed NSTextLayoutFragment) -> (@unowned Bool)partial apply;
      v133 = v111;
      *&v130 = MEMORY[0x1E69E9820];
      *(&v130 + 1) = 1107296256;
      *&v131 = thunk for @escaping @callee_guaranteed (@guaranteed NSTextLayoutFragment) -> (@unowned Bool);
      *(&v131 + 1) = &block_descriptor_56;
      v112 = _Block_copy(&v130);

      v113 = [v107 enumerateTextLayoutFragmentsFromLocation:0 options:0 usingBlock:v112];
      swift_unknownObjectRelease();

      _Block_release(v112);
      LOBYTE(v112) = swift_isEscapingClosureAtFileLocation();

      if ((v112 & 1) == 0)
      {
        v89 = v143;
        v114 = v144;
        v91 = *(v143 + 16);

        outlined destroy of (CGPoint, ResolvedStyledText.TextLayoutManager.Metrics)?(&v145);
        v90 = v114;
        v43 = v103;
        v48 = v128;
        if (v128)
        {
LABEL_43:
          v130 = *(v48 + 16);
          v129 = v130;

          v115 = v129;
LABEL_46:
          v143 = v115;

          specialized static GraphicsContext.renderingTo(cgContext:environment:deviceScale:content:)(v46, &v143, 0, 1, v48, v89, v90 & 1, v91);

          swift_bridgeObjectRelease_n();

          v81 = 0;
          v79 = 0;
          v86 = v123;
          v85 = v124;
          goto LABEL_47;
        }

        goto LABEL_45;
      }

      __break(1u);
      goto LABEL_56;
    }
  }

LABEL_57:
  __break(1u);
}

uint64_t sub_18D2D396C()
{

  return swift_deallocObject();
}

uint64_t sub_18D2D39A4()
{

  return swift_deallocObject();
}

uint64_t sub_18D2D39DC()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

__n128 ResolvedStyledText.TextLayoutManager.prepareLayoutManager(in:with:applyingMarginOffsets:)@<Q0>(char a1@<W0>, uint64_t a2@<X8>, double a3@<D4>, double a4@<D5>)
{
  if (*(v4 + 216))
  {
    swift_beginAccess();
    ResolvedStyledText.TextLayoutManager.Cache.find(measuredSize:)(v79, a3, a4);
    v9 = a4;
    v10 = a3;
    if (v80 << 8 != 512)
    {
      v11 = *v79;
      v12 = *&v79[1];
      swift_beginAccess();
      if (*(v4 + 97))
      {
        if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
        {
          v9 = a4;
        }

        else
        {
          v9 = v12;
        }

        v10 = a3;
      }

      else
      {
        if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
        {
          v10 = a3;
        }

        else
        {
          v10 = v11;
        }

        v9 = a4;
      }
    }

    swift_beginAccess();
    v13 = *(v4 + 97);
    if (*(v4 + 97))
    {
      v14 = v10;
    }

    else
    {
      v14 = v9;
    }

    if (*(v4 + 97))
    {
      v15 = v9;
    }

    else
    {
      v15 = v10;
    }

    v16 = *(v4 + 48);
    if (v16 >= 1.0)
    {
      ResolvedStyledText.TextLayoutManager.computeMetrics(scale:requestedSize:minorAxisIsFlexible:)(v13 ^ 1, 0, &v60, 1.0, v15, v14);
      goto LABEL_37;
    }

    v51 = v9;
    if (v16 > COERCE_DOUBLE(1))
    {
      v17 = *(v4 + 48);
    }

    else
    {
      v17 = COERCE_DOUBLE(1);
    }

    ResolvedStyledText.TextLayoutManager.computeMetrics(scale:requestedSize:minorAxisIsFlexible:)(v13 ^ 1, 0, &v68, 1.0, v15, INFINITY);
    v77 = *v72;
    *v78 = *&v72[16];
    *&v78[16] = *&v72[32];
    *&v78[32] = *&v72[48];
    v73 = v68;
    v74 = v69;
    v75 = v70;
    v76 = v71;
    outlined destroy of ResolvedStyledText.TextLayoutManager.Metrics(&v73);
    if (v78[9])
    {
      goto LABEL_24;
    }

    v22 = v75.n128_f64[0];
    if (v74.n128_u8[0])
    {
      v23 = v74.n128_f64[1];
    }

    else
    {
      v23 = v75.n128_f64[0];
    }

    if (!v74.n128_u8[0])
    {
      v22 = v74.n128_f64[1];
    }

    if (v23 > v15 || v22 > v14)
    {
LABEL_24:
      ResolvedStyledText.TextLayoutManager.computeMetrics(scale:requestedSize:minorAxisIsFlexible:)(v13 ^ 1, 0, &v68, v17, v15, INFINITY);
      outlined destroy of ResolvedStyledText.TextLayoutManager.Metrics(&v68);
      if ((v72[25] & 1) == 0)
      {
        v36 = v70.n128_f64[0];
        if (v69.n128_u8[0])
        {
          v37 = v69.n128_f64[1];
        }

        else
        {
          v37 = v70.n128_f64[0];
        }

        if (!v69.n128_u8[0])
        {
          v36 = v69.n128_f64[1];
        }

        if (v37 <= v15 && v36 <= v14)
        {
          v50 = a4;
          v38 = 1.0;
          v39 = v17;
          do
          {
            ResolvedStyledText.TextLayoutManager.computeMetrics(scale:requestedSize:minorAxisIsFlexible:)(v13 ^ 1, 0, &v60, v38 + (v38 - v39) * -0.5, v15, INFINITY);
            v56 = v64;
            v57 = v65;
            v58 = v66;
            v59 = v67;
            v52 = v60;
            v53 = v61;
            v54 = v62;
            v55 = v63;
            outlined destroy of ResolvedStyledText.TextLayoutManager.Metrics(&v52);
            if (BYTE9(v57))
            {
              v38 = v38 + (v38 - v39) * -0.5;
            }

            else
            {
              v40 = v53.n128_f64[1];
              if (v53.n128_u8[0])
              {
                v41 = v53.n128_f64[1];
              }

              else
              {
                v41 = v54.n128_f64[0];
              }

              if (v53.n128_u8[0])
              {
                v40 = v54.n128_f64[0];
              }

              v42 = v40 > v14;
              if (v40 > v14)
              {
                v43 = v17;
              }

              else
              {
                v43 = v38 + (v38 - v39) * -0.5;
              }

              if (v42)
              {
                v44 = v39;
              }

              else
              {
                v44 = v38 + (v38 - v39) * -0.5;
              }

              if (v42)
              {
                v45 = v38 + (v38 - v39) * -0.5;
              }

              else
              {
                v45 = v38;
              }

              if (v41 > v15)
              {
                v38 = v38 + (v38 - v39) * -0.5;
              }

              else
              {
                v17 = v43;
                v39 = v44;
                v38 = v45;
              }
            }
          }

          while (v38 - v39 >= 0.01);
          ResolvedStyledText.TextLayoutManager.computeMetrics(scale:requestedSize:minorAxisIsFlexible:)(v13 ^ 1, 0, &v60, v17, v15, v14);
          a4 = v50;
          goto LABEL_36;
        }
      }

      v18 = v13 ^ 1;
      v19 = v17;
      v20 = v15;
      v21 = v14;
    }

    else
    {
      v19 = 1.0;
      v18 = v13 ^ 1;
      v20 = v15;
      v21 = v14;
    }

    ResolvedStyledText.TextLayoutManager.computeMetrics(scale:requestedSize:minorAxisIsFlexible:)(v18, 0, &v60, v19, v20, v21);
LABEL_36:
    v9 = v51;
LABEL_37:
    v56 = v64;
    v57 = v65;
    v58 = v66;
    v59 = v67;
    v52 = v60;
    v53 = v61;
    v54 = v62;
    v55 = v63;
    if (ResolvedStyledText.TextLayoutManager.minorAxisIsFlexible.getter())
    {
      ResolvedStyledText.TextLayoutManager.computeMetrics(scale:requestedSize:minorAxisIsFlexible:)(v13 ^ 1, 1u, &v68, v54.n128_f64[1], v15, v14);
      outlined destroy of ResolvedStyledText.TextLayoutManager.Metrics(&v52);
    }

    else
    {
      *v72 = v56;
      *&v72[16] = v57;
      *&v72[32] = v58;
      *&v72[48] = v59;
      v68 = v52;
      v69 = v53;
      v70 = v54;
      v71 = v55;
    }

    v24 = *v72;
    v25 = 0.0;
    v26 = *v72 + 0.0;
    if (a1)
    {
      v27 = *(v4 + 97);
      ResolvedStyledText.TextLayoutManager.drawingMargins.getter();
      v29 = v28;
      v31 = v30;
      ResolvedStyledText.TextLayoutManager.drawingMargins.getter();
      if (v27)
      {
        v25 = v29 + 0.0;
        v26 = v26 + v33;
      }

      else
      {
        v25 = v31 + 0.0;
        v26 = v26 + v32;
      }
    }

    v34 = *(v4 + 42);
    if (*(v4 + 97))
    {
      if (!*(v4 + 42))
      {
        v35 = 0.0;
        goto LABEL_83;
      }

      v35 = v9 - a4;
      if (v34 != 1)
      {
        goto LABEL_83;
      }

LABEL_51:
      v35 = v35 * 0.5;
LABEL_83:
      v74 = v68;
      v75 = v69;
      v76 = v70;
      v77 = v71;
      *&v78[8] = *&v72[8];
      *&v78[24] = *&v72[24];
      *&v78[40] = *&v72[40];
      v73.n128_f64[0] = v25 - v35;
      v73.n128_f64[1] = v26;
      *v78 = v24;
      _ViewInputs.base.modify();
      goto LABEL_84;
    }

    if (*(v4 + 42))
    {
      if (v34 == 1)
      {
        v35 = v10 - a3;
        goto LABEL_51;
      }

      v35 = 0.0;
      if (*(v4 + 43))
      {
        goto LABEL_83;
      }
    }

    else
    {
      v35 = 0.0;
      if ((*(v4 + 43) & 1) == 0)
      {
        goto LABEL_83;
      }
    }

    v35 = v10 - a3;
    goto LABEL_83;
  }

  _sSo7CGPointV_7SwiftUI18ResolvedStyledTextC0F13LayoutManagerC7Metrics33_B6B30FF60BE9B7CF80B161CEF951DAD7LLVtSgWOi0_(&v73);
LABEL_84:
  v46 = *&v78[32];
  *(a2 + 96) = *&v78[16];
  *(a2 + 112) = v46;
  *(a2 + 128) = *&v78[48];
  v47 = v76;
  *(a2 + 32) = v75;
  *(a2 + 48) = v47;
  v48 = *v78;
  *(a2 + 64) = v77;
  *(a2 + 80) = v48;
  result = v74;
  *a2 = v73;
  *(a2 + 16) = result;
  return result;
}

void ResolvedStyledText.TextLayoutManager.Cache.find(measuredSize:)(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v4 = *(*v3 + 16);
  v5 = 0uLL;
  if (v4)
  {
    v6 = *v3 + 64;
    while (1)
    {
      v7 = *(v6 - 16);
      if (*&v7 == a2 && *(v6 - 8) == a3)
      {
        break;
      }

      v6 += 88;
      if (!--v4)
      {
        goto LABEL_8;
      }
    }

    v5 = *(v6 - 32);
    v10 = *v6;
    v11 = *(v6 + 16);
    v12 = *(v6 + 32);
    v9 = *(v6 + 48);
  }

  else
  {
LABEL_8:
    v9 = 512;
    v7 = 0uLL;
    v10 = 0uLL;
    v11 = 0uLL;
    v12 = 0uLL;
  }

  *a1 = v5;
  *(a1 + 16) = v7;
  *(a1 + 32) = v10;
  *(a1 + 48) = v11;
  *(a1 + 64) = v12;
  *(a1 + 80) = v9;
}

void protocol witness for Collection.subscript.read in conformance Text.Layout(void ***a1)
{
  v1 = *a1;
  outlined consume of Text.Layout.Line.Line(**a1, (*a1)[1]);

  free(v1);
}

void GraphicsContext.draw(_:foregroundColor:options:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, int a5, uint64_t a6, __n128 a7)
{
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  if ((a5 & 0x40) == 0)
  {
    v15 = *(a6 + 48);
    v16 = *(a6 + 52);
    v17 = *(a6 + 56);
    v30 = *(a6 + 24);
    v31 = v30;
    v32 = 0;
    v33 = __PAIR64__(v16, v15);
    v34 = v17;
    v35 = GraphicsContext.userToDeviceScale.getter(a6, a7);
    v36 = Text.Layout.Run.drawingOptions.getter() | a5;
    v27[0] = v9;
    v27[1] = v10;
    v27[2] = v11;
    v27[3] = v12;
    v28 = v13;
    v29 = v14;
    GlyphContext.drawRun(_:range:foregroundColor:)(v27, 0, 0, v20, a2, a3, a4 & 1);
    v21 = v30;
    v22 = v31;
    v23 = v32;
    if (v32)
    {
      RBDrawingStateEndCGContext();
    }

    if (v21 != v22)
    {
      RBDrawingStateDestroy();
    }
  }

  if ((a5 & 0x20) == 0)
  {
    v30 = v9;
    v31 = v10;
    v32 = v11;
    v33 = v12;
    LODWORD(v34) = v13;
    v35 = v14;

    v24 = v9;
    GraphicsContext.userToDeviceScale.getter(a6, v25);
    Text.Layout.Decorations.init(run:scale:)(&v30, v27);
    v30 = v27[0];
    GraphicsContext.draw(_:)(&v30, a6);
  }
}

BOOL closure #1 in ResolvedStyledText.TextLayoutManager.collectTextLayout(origin:scale:)(BOOL *a1, char a2, char **a3, int a4, BOOL *a5, double a6, double a7)
{
  v13 = a1;
  v14 = [a1 state];
  if (v14 == 3)
  {
    if (a2)
    {
      type metadata accessor for TextLayoutFragmentRenderer();
      v15 = swift_allocObject();
      *(v15 + 16) = v13;
      v16 = v13;
    }

    else
    {
      v15 = 0;
    }

    [v13 layoutFragmentFrame];
    v18 = v17;
    v20 = v19;
    v21 = [v13 textLineFragments];
    type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSTextLineFragment, 0x1E69DB830);
    v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v50 = v13;
    if (v22 >> 62)
    {
      v23 = __CocoaSet.count.getter();
      if (!v23)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v23)
      {
        goto LABEL_19;
      }
    }

    if (v23 < 1)
    {
      __break(1u);
      goto LABEL_30;
    }

    v24 = 0;
    v25 = v18 + a6;
    v26 = v20 + a7;
    do
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x193AC03C0](v24, v22);
      }

      else
      {
        v27 = *(v22 + 8 * v24 + 32);
      }

      v28 = v27;

      v29 = v28;
      [v29 typographicBounds];
      v31 = v30;
      v33 = v32;
      [v29 glyphOrigin];
      v35 = v34;
      v37 = v36;
      v38 = *a3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a3 = v38;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v38 + 2) + 1, 1, v38);
        *a3 = v38;
      }

      v41 = *(v38 + 2);
      v40 = *(v38 + 3);
      if (v41 >= v40 >> 1)
      {
        *a3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1, v38);
      }

      ++v24;

      v42 = *a3;
      *(v42 + 2) = v41 + 1;
      v43 = &v42[48 * v41];
      *(v43 + 4) = v29;
      *(v43 + 5) = v15;
      v43[48] = 1;
      *(v43 + 7) = v25 + v31 + v35;
      *(v43 + 8) = v26 + v33 + v37;
      *(v43 + 18) = a4;
    }

    while (v23 != v24);
LABEL_19:

    v13 = a5;
    if (*a5)
    {

      v44 = 1;
      v14 = 3;
LABEL_27:
      *v13 = v44;
      return v14 == 3;
    }

    v45 = [v50 truncatedRanges];
    v7 = 3;
    if (!v45)
    {

      v44 = 0;
      goto LABEL_26;
    }

    v46 = v45;
    type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSTextRange, 0x1E69DB848);
    v47 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!(v47 >> 62))
    {
      v48 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_24:

      v44 = v48 != 0;
LABEL_26:
      v14 = v7;
      goto LABEL_27;
    }

LABEL_30:
    v48 = __CocoaSet.count.getter();
    goto LABEL_24;
  }

  return v14 == 3;
}

uint64_t outlined destroy of (CGPoint, ResolvedStyledText.TextLayoutManager.Metrics)?(uint64_t a1)
{
  type metadata accessor for (CGPoint, ResolvedStyledText.TextLayoutManager.Metrics)?(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for (CGPoint, ResolvedStyledText.TextLayoutManager.Metrics)?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (CGPoint, ResolvedStyledText.TextLayoutManager.Metrics)?)
  {
    type metadata accessor for (CGPoint, ResolvedStyledText.TextLayoutManager.Metrics)(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for (CGPoint, ResolvedStyledText.TextLayoutManager.Metrics)?);
    }
  }
}

void Text.Layout.Run.subscript.getter(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  if (one-time initialization token for customAttributes != -1)
  {
    swift_once();
  }

  v6 = static NSAttributedStringKey.customAttributes;
  v7 = CTLineGetRunAtIndex();
  v8 = _CTRunGetAttributeValueForKey(v7, v6);

  if (v8)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v16 = v14;
  v17 = v15;
  if (*(&v15 + 1))
  {
    if (swift_dynamicCast())
    {
      *&v16 = v14;
      Text.CustomAttributes.subscript.getter(a1, a2, a3, v9);

      return;
    }
  }

  else
  {
    outlined destroy of Any?(&v16);
  }

  if (one-time initialization token for customAttachment != -1)
  {
    swift_once();
  }

  v10 = static NSAttributedStringKey.customAttachment;
  v11 = CTLineGetRunAtIndex();
  v12 = _CTRunGetAttributeValueForKey(v11, v10);

  if (v12)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v16 = v14;
  v17 = v15;
  if (*(&v15 + 1))
  {
    type metadata accessor for AnyCustomTextAttachment();
    if (swift_dynamicCast())
    {
      (*(*v14 + 104))(&v16);
      Text.CustomAttributes.subscript.getter(a1, a2, a3, v13);

      return;
    }
  }

  else
  {
    outlined destroy of Any?(&v16);
  }

  (*(*(a1 - 8) + 56))(a3, 1, 1, a1);
}

uint64_t getEnumTagSinglePayload for ResolvedStyledText.TextLayoutManager.Metrics(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 120))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 96);
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

void specialized static GraphicsContext.renderingTo(cgContext:environment:deviceScale:content:)(CGContext *a1, uint64_t *a2, uint64_t a3, char a4, uint64_t a5, void *a6, char a7, uint64_t a8)
{
  v60 = *MEMORY[0x1E69E9840];
  v16 = *a2;
  v15 = a2[1];
  v53 = 0;
  v54 = 1.0;
  v17 = MEMORY[0x193AC3360](a1, &v54, &v53);
  if (v17)
  {
    v18 = v17;
    type metadata accessor for GraphicsContext.Storage();
    v19 = swift_allocObject();
    *(v19 + 32) = xmmword_18DD85500;
    *(v19 + 48) = 1065353216;
    *(v19 + 56) = 0x7FF8000000000000;
    v20 = RBDrawingStateGetDisplayList();
    v55 = v16;
    v56 = v15;
    type metadata accessor for GraphicsContext.Storage.Shared();
    swift_allocObject();

    *(v19 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v20, &v55);
    *(v19 + 24) = v18;
    *(v19 + 64) = 0;
    v52 = v19;
    v21 = v54;
    if (v54 == 1.0)
    {
      v22 = 0;
    }

    else
    {
      GraphicsContext.copyOnWrite()();
      v19 = v52;
      *(v52 + 48) = v21;
      v22 = *(v19 + 52);
    }

    v26 = v53;
    if (v22 != v53)
    {
      GraphicsContext.copyOnWrite()();
      v19 = v52;
      *(v52 + 52) = v26;
    }

    if (a5)
    {
      v27 = *(*a5 + 120);

      v29 = v27(v28);
      if (v30 != 0.0 || v29 != 0.0)
      {
        GraphicsContext.copyOnWrite()();
        RBDrawingStateTranslateCTM();
      }

      v55 = a6;
      LOBYTE(v56) = a7 & 1;
      v57 = a8;
      (*(*a5 + 96))(&v55, &v52);
    }

    else
    {
      v31 = a6[2];
      if (v31)
      {

        v32 = a6 + 5;
        do
        {
          v33 = *(v32 + 8);
          v34 = *(v32 + 8);
          v36 = *(v32 - 1);
          v35 = *v32;
          v55 = v36;
          v56 = v35;
          LOBYTE(v57) = v34;
          v58 = *(v32 + 1);
          v59 = v33;
          outlined copy of Text.Layout.Line.Line(v36, v35);
          GraphicsContext.draw(_:options:)(&v55, 0, v19, v37);
          outlined consume of Text.Layout.Line.Line(v36, v35);
          v32 += 6;
          --v31;
        }

        while (v31);
      }

      else
      {
      }
    }
  }

  else
  {
    v23 = [objc_allocWithZone(MEMORY[0x1E69C70A8]) init];
    [v23 setProfile_];
    [v23 setDefaultColorSpace_];
    ClipBoundingBox = CGContextGetClipBoundingBox(a1);
    [v23 setContentRect_];
    if (a4)
    {
      if (v15)
      {

        v24 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA012DisplayScaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v16);

        v25 = v24;
      }

      else
      {
        v51 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA012DisplayScaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v16);
        if (v51)
        {
          v25 = v51[9];
        }

        else
        {
          v25 = 1.0;
        }
      }
    }

    else
    {
      v25 = *&a3;
    }

    [v23 setDeviceScale_];
    type metadata accessor for GraphicsContext.Storage();
    v38 = swift_allocObject();
    *(v38 + 32) = xmmword_18DD85500;
    *(v38 + 48) = 1065353216;
    *(v38 + 56) = 0x7FF8000000000000;
    v55 = v16;
    v56 = v15;
    type metadata accessor for GraphicsContext.Storage.Shared();
    swift_allocObject();

    v39 = v23;

    *(v38 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v39, &v55);
    *(v38 + 24) = RBDisplayListGetState();
    *(v38 + 64) = 0;
    v52 = v38;
    if (a5)
    {
      v40 = *(*a5 + 120);

      v42 = v40(v41);
      if (v43 != 0.0 || v42 != 0.0)
      {
        GraphicsContext.copyOnWrite()();
        RBDrawingStateTranslateCTM();
      }

      v55 = a6;
      LOBYTE(v56) = a7 & 1;
      v57 = a8;
      (*(*a5 + 96))(&v55, &v52);
    }

    else
    {
      v44 = a6[2];
      if (v44)
      {

        v45 = a6 + 5;
        do
        {
          v46 = *(v45 + 8);
          v47 = *(v45 + 8);
          v49 = *(v45 - 1);
          v48 = *v45;
          v55 = v49;
          v56 = v48;
          LOBYTE(v57) = v47;
          v58 = *(v45 + 1);
          v59 = v46;
          outlined copy of Text.Layout.Line.Line(v49, v48);
          GraphicsContext.draw(_:options:)(&v55, 0, v38, v50);
          outlined consume of Text.Layout.Line.Line(v49, v48);
          v45 += 6;
          --v44;
        }

        while (v44);
      }

      else
      {
      }
    }

    [v39 renderInContext:a1 options:0];
  }
}

void Text.Layout.Decorations.init(run:scale:)(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v7 = *(a1 + 8);
  v8 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v8 < v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = a2;
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v3 = *a1;
  v11 = CTLineGetRunAtIndex();
  specialized Text.Layout.TypographicBounds.init(run:range:)(v11, 0, v42);

  v12 = v9 + v42[0];
  v41 = MEMORY[0x1E69E7CC0];
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  v37 = 0u;
  v13 = v9 + v42[0] + v42[2];
  v36[0] = 0;
  v36[1] = 0;
  v14 = swift_allocObject();
  *(v14 + 16) = &v37;
  *(v14 + 24) = &v41;
  *(v14 + 32) = v36;
  *(v14 + 40) = v7;
  *(v14 + 48) = v8;
  *(v14 + 56) = v12;
  *(v14 + 64) = 0;
  *(v14 + 72) = v13;
  *(v14 + 80) = 768;
  v7 = swift_allocObject();
  *(v7 + 16) = closure #1 in Text.Layout.Decorations.init(line:origin:scale:runs:flags:typographicBounds:)partial apply;
  *(v7 + 24) = v14;
  *&v34 = thunk for @callee_guaranteed (@unowned CTLineDecorationElementType, @unowned OpaquePointer) -> ()partial apply;
  *(&v34 + 1) = v7;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v33 = thunk for @escaping @callee_guaranteed (@unowned CTLineDecorationElementType, @unowned OpaquePointer) -> ();
  *(&v33 + 1) = &block_descriptor_68;
  v15 = _Block_copy(&aBlock);
  v4 = *(&v34 + 1);

  aBlock = 0x3FF0000000000000uLL;
  *&v33 = 0;
  *(&v33 + 1) = 0xBFF0000000000000;
  *&v34 = v9;
  *(&v34 + 1) = v10;
  CTLineDecorationApplyWithBlock();
  _Block_release(v15);
  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 16) + 1, 1, v7);
    v41 = v7;
    goto LABEL_6;
  }

  v30 = v5;
  v4 = *(&v39 + 1);
  if (!*(&v39 + 1))
  {

    v19 = v41;
    goto LABEL_10;
  }

  LODWORD(v5) = DWORD2(v37);
  v8 = v38;
  v6 = v37;
  v25 = DWORD1(v37);
  v26 = HIDWORD(*(&v37 + 1));
  v27 = *(&v38 + 1);
  v7 = v41;
  aBlock = v37;
  v33 = v38;
  v28 = v39;
  v29 = v40;
  v34 = v39;
  v35 = v40;
  outlined init with copy of Text.Layout.Decorations.Segment(&aBlock, v31);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v41 = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_6:
  v18 = *(v7 + 16);
  v17 = *(v7 + 24);
  if (v18 >= v17 >> 1)
  {
    v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v7);
  }

  v19 = v41;
  *(v41 + 2) = v18 + 1;
  v20 = &v19[56 * v18];
  *(v20 + 8) = v6;
  *(v20 + 9) = v25;
  *(v20 + 10) = v5;
  *(v20 + 11) = v26;
  *(v20 + 6) = v8;
  *(v20 + 7) = v27;
  *(v20 + 8) = v28;
  *(v20 + 9) = v4;
  *(v20 + 10) = v29;
  v41 = v19;
LABEL_10:
  v21 = v37;
  v22 = v38;
  v23 = v39;
  v24 = v40;

  outlined consume of Text.Layout.Decorations.Segment?(v21, *(&v21 + 1), v22, *(&v22 + 1), v23, *(&v23 + 1), v24);

  *v30 = v19;
}

uint64_t TextRendererBox.draw(layout:in:)(uint64_t *a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(a1 + 8);
  v5 = a1[2];
  v7 = *a1;
  v8 = v4;
  v9 = v5;
  return (*(*(v3 + 136) + 16))(&v7, a2, *(v3 + 128));
}

uint64_t initializeBufferWithCopyOfBuffer for Text.Layout(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = a2[2];

  return a1;
}

void (*protocol witness for Collection.subscript.read in conformance Text.Layout(void (**a1)(void ***a1), unint64_t *a2))(void ***a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x2CuLL);
  }

  v6 = result;
  *a1 = result;
  v7 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v7 < *(*v2 + 16))
  {
    v8 = *v2 + 48 * v7;
    v9 = *(v8 + 32);
    v10 = *(v8 + 40);
    v11 = *(v8 + 48);
    v12 = *(v8 + 72);
    v13 = *(v8 + 56);
    *v6 = v9;
    *(v6 + 1) = v10;
    *(v6 + 16) = v11;
    *(v6 + 24) = v13;
    *(v6 + 10) = v12;
    outlined copy of Text.Layout.Line.Line(v9, v10);
    return protocol witness for Collection.subscript.read in conformance Text.Layout;
  }

  __break(1u);
  return result;
}

uint64_t initializeWithCopy for Text.Layout.Line(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = *(a2 + 16);
  outlined copy of Text.Layout.Line.Line(*a2, v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = *(a2 + 3);
  *(a1 + 40) = *(a2 + 10);
  return a1;
}

id outlined copy of Text.Layout.Line.Line(void *a1, uint64_t a2)
{

  return a1;
}

double outlined consume of Text.Layout.Line.Line(void *a1, uint64_t a2)
{

  return result;
}

void *protocol witness for Collection.formIndex(after:) in conformance Text.Layout(void *result)
{
  if (*result >= *(*v1 + 16))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

void protocol witness for Collection.endIndex.getter in conformance Text.Layout.Line(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *v1;
  v5 = v4;
  if (v3 != 1 || (RunCount = _NSTextLineFragmentGetCTLine(v4), v5, (v5 = RunCount) != 0))
  {
    RunCount = CTLineGetRunCount();
  }

  *a1 = RunCount;
}

uint64_t _NSTextLineFragmentGetCTLine(void *a1)
{
  v1 = a1;

  return [v1 lineRef];
}

double sub_18D2D5560(id *a1)
{

  return result;
}

void GlyphContext.drawAttachment(_:cgContext:)(float64x2_t *a1, CGContext *a2)
{
  v3 = a1[1];
  v23[0] = *a1;
  v23[1] = v3;
  v24 = a1[2];
  if (one-time initialization token for kitAttachment != -1)
  {
    swift_once();
  }

  v4 = static NSAttributedStringKey.kitAttachment;
  v5 = CTLineGetRunAtIndex();
  v6 = _CTRunGetAttributeValueForKey(v5, v4);

  if (v6)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  v17 = v19;
  v18 = v20;
  if (*(&v20 + 1))
  {
    outlined init with take of Any(&v17, &v21);
    outlined init with copy of Any(&v21, &v17);
    type metadata accessor for SwiftUITextAttachment();
    if (swift_dynamicCast())
    {
      v7 = v19;
      outlined init with copy of Text.Layout.Run(v23, &v17);
      EnvironmentValues.init()(&v17);
      v19 = v17;
      specialized static GraphicsContext.renderingTo(cgContext:environment:deviceScale:content:)(a2, &v19, 0, 1, v7, v23[0].f64);
      sub_18D36CCC8(v23);

LABEL_13:

      __swift_destroy_boxed_opaque_existential_1(&v21);
      return;
    }

    outlined init with copy of Any(&v21, &v17);
    type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSTextAttachment, 0x1E69DB7F0);
    if (swift_dynamicCast())
    {
      v8 = v19;
      v9 = *&v24.f64[1];
      v25 = v24.f64[1];
      if (*&v24.f64[1])
      {
        outlined init with copy of Text.Layout.Run(v23, &v17);
        outlined init with copy of AnyTextLayoutRenderer?(&v25, &v17, v10);
        v7 = v8;
        EnvironmentValues.init()(&v17);
        v19 = v17;
        specialized static GraphicsContext.renderingTo(cgContext:environment:deviceScale:content:)(a2, &v19, 0, 1, v9, v7, v23[0].f64);
        sub_18D36CCC8(v23);

        outlined destroy of AnyTextLayoutRenderer?(&v25, v11, v12);
        goto LABEL_13;
      }

      __swift_destroy_boxed_opaque_existential_1(&v21);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(&v21);
    }
  }

  else
  {
    outlined destroy of Any?(&v17);
  }

  if (one-time initialization token for customAttachment != -1)
  {
    swift_once();
  }

  v13 = static NSAttributedStringKey.customAttachment;
  v14 = CTLineGetRunAtIndex();
  v15 = _CTRunGetAttributeValueForKey(v14, v13);

  if (v15)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
  }

  v17 = v21;
  v18 = v22;
  if (*(&v22 + 1))
  {
    type metadata accessor for AnyCustomTextAttachment();
    if (swift_dynamicCast())
    {
      v16 = v21;
      outlined init with copy of Text.Layout.Run(v23, &v17);

      EnvironmentValues.init()(&v17);
      v21 = v17;
      specialized static GraphicsContext.renderingTo(cgContext:environment:deviceScale:content:)(a2, &v21, 0, 1, v16, v23);
      sub_18D36CCC8(v23);
    }
  }

  else
  {
    outlined destroy of Any?(&v17);
  }
}

void GlyphContext.drawRun(_:range:foregroundColor:)(uint64_t a1, CFIndex a2, CFIndex a3, __n128 a4, uint64_t a5, uint64_t a6, char a7)
{
  v13 = *a1;
  v12 = *(a1 + 8);
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = GlyphContext.currentContext()(a4);
  if ((*(v7 + 48) & 8) == 0)
  {
    v37 = a7;
    v19 = a5;
    v20 = a6;
    v21 = v13;
    v22 = v12;
    v23 = a3;
    v24 = CTLineGetRunAtIndex();
    _CGContextSetTextRunRange(v18, v24, a2, v23);

    a3 = v23;
    v12 = v22;
    v13 = v21;
    a6 = v20;
    a5 = v19;
    a7 = v37;
  }

  transform.a = v13;
  transform.b = v12;
  transform.c = v14;
  transform.d = v15;
  LODWORD(transform.tx) = v16;
  transform.ty = v17;
  GlyphContext.drawAttachment(_:cgContext:)(&transform, v18);
  CGContextSaveGState(v18);
  transform.a = 1.0;
  transform.b = 0.0;
  transform.c = 0.0;
  transform.d = -1.0;
  transform.tx = v14;
  transform.ty = v15;
  CGContextConcatCTM(v18, &transform);
  if (a7)
  {
    isa = CTLineGetRunAtIndex();
    v40.location = a2;
    v40.length = a3;
    CTRunDraw(isa, v18, v40);
  }

  else
  {
    v26 = a6;
    type metadata accessor for Attribute<TextRendererBoxBase>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(NSAttributedStringKey, CGColorRef)>, 255, type metadata accessor for (NSAttributedStringKey, CGColorRef), MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18DDA6EB0;
    v28 = *MEMORY[0x1E69DB650];
    *(inited + 32) = *MEMORY[0x1E69DB650];
    v29 = one-time initialization token for cache;
    v30 = v28;
    if (v29 != -1)
    {
      swift_once();
    }

    v32.n128_u32[0] = HIDWORD(a5);
    v31.n128_u32[0] = a5;
    v34.n128_u32[0] = HIDWORD(v26);
    v33.n128_u32[0] = v26;
    specialized ObjectCache.subscript.getter(v31, v32, v33, v34);
    *(inited + 40) = v35;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_So10CGColorRefaTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of (NSAttributedStringKey, CGColorRef)(inited + 32, type metadata accessor for (NSAttributedStringKey, CGColorRef));
    type metadata accessor for NSAttributedStringKey(0);
    type metadata accessor for CGColorRef(0);
    _sSo21NSAttributedStringKeyaABSHSCWlTm_2(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, 255, type metadata accessor for NSAttributedStringKey, protocol conformance descriptor for NSAttributedStringKey);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v36 = CTLineGetRunAtIndex();
    CTRunDrawWithAttributeOverrides();
  }

  CGContextRestoreGState(v18);
}

void protocol witness for Collection.subscript.read in conformance Text.Layout.Line(id **a1)
{
  v1 = *a1;

  free(v1);
}

uint64_t initializeWithCopy for Text.Layout.Run(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v5 = v3;

  return a1;
}

void protocol witness for Collection.formIndex(after:) in conformance Text.Layout.Line(uint64_t *a1)
{
  v3 = *a1;
  v4 = *(v1 + 16);
  v5 = *v1;
  v6 = v5;
  if (v4 != 1 || (RunCount = _NSTextLineFragmentGetCTLine(v5), v6, (v6 = RunCount) != 0))
  {
    RunCount = CTLineGetRunCount();
  }

  if (v3 < 0 || v3 >= RunCount)
  {
    __break(1u);
  }

  else
  {
    *a1 = v3 + 1;
  }
}

CFDictionaryRef _CTRunGetAttributeValueForKey(const __CTRun *a1, const void *a2)
{
  Attributes = CTRunGetAttributes(a1);
  if (Attributes)
  {
    Attributes = CFDictionaryGetValue(Attributes, a2);
  }

  return Attributes;
}

void GraphicsContext.draw(_:options:)(__n128 *a1, int a2, uint64_t a3)
{
  v3 = a1->n128_u64[1];
  v4 = a1[2].n128_u32[0];
  v5 = a1[2].n128_u64[1];
  v6[0] = a1->n128_u64[0];
  v6[1] = v3;
  v7 = a1[1];
  v8 = v4;
  v9 = v5;
  GraphicsContext.draw(_:foregroundColor:options:)(v6, 0, 0, 1, a2, a3, v7);
}

uint64_t Text.Layout.Run.drawingOptions.getter()
{
  v1 = *(v0 + 32);
  if ((v1 & 0x10) != 0)
  {
    v2 = MEMORY[0x193ABEC20](0xD00000000000001DLL, 0x800000018DD7A720);
    v3 = CTLineGetRunAtIndex();
    v4 = _CTRunGetAttributeValueForKey(v3, v2);

    if (v4)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v6 = 0u;
      v7 = 0u;
    }

    v8[0] = v6;
    v8[1] = v7;

    if (*(&v7 + 1))
    {
      outlined init with take of Any(v8, v9);
      outlined init with copy of Any(v9, v8);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1(v9);
        if (v6 == 1)
        {
          return v1 | 4;
        }
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(v9);
      }
    }

    else
    {
      outlined destroy of Any?(v8);
    }
  }

  return v1;
}

void _CGContextSetTextRunRange(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8[3] = *MEMORY[0x1E69E9840];
  if (a3 | a4)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithLong:a2];
    v8[1] = v5;
    v6 = [MEMORY[0x1E696AD98] numberWithLong:a4];
    v8[2] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

    CGContextGetDelegate();
    CGContextGetRenderingState();
    CGContextGetGState();
    CGContextDelegateOperation();
  }

  else
  {
    CGContextGetDelegate();
    CGContextGetRenderingState();
    CGContextGetGState();

    CGContextDelegateOperation();
  }
}

void specialized Text.Layout.TypographicBounds.init(run:range:)(const __CTRun *a1@<X0>, CFRange a2@<X2:X1>, CGFloat *a3@<X8>)
{
  length = a2.length;
  location = a2.location;
  v17 = *MEMORY[0x1E69E9840];
  buffer.x = 0.0;
  buffer.y = 0.0;
  descent = 0.0;
  ascent = 0.0;
  leading = 0.0;
  v12 = 0uLL;
  a2.length = 1;
  CTRunGetPositions(a1, a2, &buffer);
  v18.location = location;
  v18.length = 1;
  CTRunGetBaseAdvancesAndOrigins(a1, v18, 0, &v12);
  buffer = vsubq_f64(buffer, v12);
  v19.location = location;
  v19.length = length;
  TypographicBounds = CTRunGetTypographicBounds(a1, v19, &ascent, &descent, &leading);
  v8 = ascent;
  v9 = fabs(descent);
  v10 = -buffer.y;
  v11 = leading;
  *a3 = buffer.x;
  a3[1] = v10;
  a3[2] = TypographicBounds;
  a3[3] = v8;
  a3[4] = v9;
  a3[5] = v11;
}

double outlined consume of Text.Layout.Decorations.Segment?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a6)
  {
  }

  return result;
}

void GraphicsContext.draw(_:)(uint64_t *a1, double *a2)
{
  v68 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v42 = *(*a1 + 16);
  if (!v42)
  {
    goto LABEL_54;
  }

  v41 = v2 + 32;

  type metadata accessor for RangeSet<Text.Layout.CharacterIndex>(0, &lazy cache variable for type metadata for ColorBox<ResolvedColorProvider>, lazy protocol witness table accessor for type ResolvedColorProvider and conformance ResolvedColorProvider, &type metadata for ResolvedColorProvider, type metadata accessor for ColorBox);
  v40 = v2;
  v3 = 0;
  do
  {
    v4 = (v41 + 56 * v3);
    v5 = *v4;
    v6 = v4[1];
    v7 = v4[2];
    v52 = *(v4 + 6);
    v50 = v6;
    v51 = v7;
    v49 = v5;
    if (v3 == v42)
    {
      goto LABEL_58;
    }

    v8 = swift_allocObject();
    *(v8 + 16) = v49;
    *(v8 + 32) = 2143289344;
    v10 = *(&v51 + 1);
    v9 = v52;
    v46 = *(v52 + 16);
    if (v46)
    {
      v43 = v3;
      v11 = v50;
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v65 = 0u;
      outlined init with copy of Text.Layout.Decorations.Segment(&v49, &v57);
      outlined init with copy of Text.Layout.Decorations.Segment(&v49, &v57);
      type metadata accessor for Path.PathBox();
      v12 = 0;
      v44 = v9;
      v13 = (v9 + 48);
      while (1)
      {
        if (v46 == v12)
        {
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
        }

        v47 = *v13;
        v48 = *(v13 - 1);
        v14 = swift_allocObject();
        v15 = v63;
        *(v14 + 56) = v62;
        *(v14 + 72) = v15;
        v16 = v65;
        *(v14 + 88) = v64;
        *(v14 + 104) = v16;
        v17 = v61;
        *(v14 + 24) = v60;
        *(v14 + 40) = v17;
        *(v14 + 16) = 2;
        RBPathStorageInit();
        v18 = *(v14 + 16);

        if (v18 == 2 || (Path.PathBox.prepareBuffer()(), *(v14 + 16) == 2))
        {
        }

        else
        {

          Path.PathBox.prepareBuffer()();
        }

        v57 = v48;
        MEMORY[0x193AC35E0](v14 + 24, 0, &v57, 0);

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v19 = v14;
        }

        else
        {
          v20 = swift_allocObject();
          v19 = v20;
          v21 = v63;
          *(v20 + 56) = v62;
          *(v20 + 72) = v21;
          v22 = v65;
          *(v20 + 88) = v64;
          *(v20 + 104) = v22;
          v23 = v61;
          *(v20 + 24) = v60;
          *(v20 + 40) = v23;
          v24 = *(v14 + 16);
          *(v20 + 16) = v24;
          if (v24)
          {
            if (v24 == 1)
            {
              *(v20 + 24) = RBPathRetain();
              *(v19 + 32) = v25;
            }

            else
            {
              RBPathStorageInit();
            }
          }

          else
          {
            v26 = *(v14 + 24);
            if (!v26)
            {
              goto LABEL_61;
            }

            *(v20 + 24) = v26;
            v27 = v26;
          }
        }

        v28 = *(v19 + 16);
        swift_retain_n();
        if (v28 != 2)
        {
          Path.PathBox.prepareBuffer()();
        }

        v57 = v47;
        MEMORY[0x193AC35E0](v19 + 24, 1, &v57, 0);

        if (*(v19 + 16))
        {
          if (*(v19 + 16) == 1)
          {

            v9 = v44;
          }

          else
          {
            v29 = one-time initialization token for bufferCallbacks;

            if (v29 != -1)
            {
              swift_once();
            }
          }
        }

        else
        {
          if (!*(v19 + 24))
          {
            goto LABEL_59;
          }
        }

        IsEmpty = RBPathIsEmpty();

        if (IsEmpty)
        {

          v31 = 0;
          v32 = 6;
          goto LABEL_46;
        }

        if (*(v19 + 16))
        {
          if (*(v19 + 16) != 1)
          {
            v33 = one-time initialization token for bufferCallbacks;

            if (v33 != -1)
            {
              swift_once();
            }

            goto LABEL_38;
          }
        }

        else if (!*(v19 + 24))
        {
          goto LABEL_62;
        }

LABEL_38:
        RBPathRetain();

        v31 = swift_allocObject();
        v34 = v63;
        *(v31 + 56) = v62;
        *(v31 + 72) = v34;
        v35 = v65;
        *(v31 + 88) = v64;
        *(v31 + 104) = v35;
        v36 = v61;
        *(v31 + 24) = v60;
        *(v31 + 40) = v36;
        *(v31 + 16) = 2;
        RBPathStorageInit();
        *&v57 = v11;
        *(&v57 + 1) = 0x4024000000000000;
        v58 = v48;
        v37 = *(v10 + 16);
        v53 = 0;
        *&v54 = v37;
        *(&v54 + 1) = v10 + 32;
        MEMORY[0x193AC35E0](v31 + 24, 19, &v57, &v53);

        if (*(v19 + 16))
        {
          if (*(v19 + 16) != 1 && one-time initialization token for bufferCallbacks != -1)
          {
            swift_once();
          }
        }

        else if (!*(v19 + 24))
        {
          goto LABEL_60;
        }

        RBPathStorageAppendPath();

        MEMORY[0x193AC35E0](v31 + 24, 16, 0, 0);
        RBPathRelease();
        v32 = 5;
        v9 = v44;
LABEL_46:
        ++v12;

        *&v66[0] = v31;
        memset(&v66[1], 0, 24);
        v67 = v32;
        *&v57 = v8;
        v59 = 1;
        v53 = 256;
        v54 = 0u;
        v55 = 0u;
        v56 = 0;
        outlined copy of Path.Storage(v31, 0, 0, 0, v32);

        GraphicsContext.draw(_:with:style:)(v66, &v57, &v53, a2);
        outlined consume of Path.Storage(v31, 0, 0, 0, v32);
        outlined consume of Path.Storage(v31, 0, 0, 0, v32);

        v38 = *(v9 + 16);
        if (v12 == v38)
        {

          outlined destroy of Text.Layout.Decorations.Segment(&v49);
          v2 = v40;
          v3 = v43;
          goto LABEL_51;
        }

        v13 += 2;
        if (v12 >= v38)
        {
          goto LABEL_57;
        }
      }
    }

    outlined init with copy of Text.Layout.Decorations.Segment(&v49, &v60);

LABEL_51:
    ++v3;

    v39 = *(v2 + 16);
    if (v3 == v39)
    {
      goto LABEL_55;
    }
  }

  while (v3 < v39);
  __break(1u);
LABEL_54:

LABEL_55:
}

void protocol witness for static FontDefinition.resolveFontInfo(_:) in conformance DefaultFontDefinition(const __CTFont *a1@<X0>, uint64_t a2@<X8>)
{
  Size = CTFontGetSize(a1);
  CTFontGetWeight();
  *a2 = Size;
  *(a2 + 8) = v4;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
}

uint64_t ResolvedStyledText.TextLayoutManager.deinit()
{
  v1 = *(v0 + 128);
  v8[6] = *(v0 + 112);
  v8[7] = v1;
  v8[8] = *(v0 + 144);
  v9 = *(v0 + 160);
  v2 = *(v0 + 64);
  v8[2] = *(v0 + 48);
  v8[3] = v2;
  v3 = *(v0 + 96);
  v8[4] = *(v0 + 80);
  v8[5] = v3;
  v4 = *(v0 + 32);
  v8[0] = *(v0 + 16);
  v8[1] = v4;
  outlined destroy of TextLayoutProperties(v8);

  outlined consume of ResolvedTextSuffix(*(v0 + 352), *(v0 + 360), *(v0 + 368), *(v0 + 376), *(v0 + 384), *(v0 + 392), *(v0 + 400));

  v5 = *(v0 + 496);
  v6 = *(v0 + 520);

  return v0;
}

uint64_t ResolvedStyledText.TextLayoutManager.__deallocating_deinit()
{
  ResolvedStyledText.TextLayoutManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t _AnyResolvedPaint.isEqual(to:)(uint64_t a1)
{
  result = swift_dynamicCastClass();
  if (result)
  {

    v2 = dispatch thunk of static Equatable.== infix(_:_:)();

    return v2 & 1;
  }

  return result;
}

BOOL specialized static LinearGradient.AbsolutePaint.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v22 = *(a1 + 12);
  v3 = *(a1 + 16);
  v5 = *(a1 + 24);
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v23 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a2 + 8);
  v9 = *(a2 + 12);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  v14 = *(a2 + 40);
  v13 = *(a2 + 48);
  v15 = *(a2 + 56);
  v16 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI22ResolvedGradientVectorV4Stop026_3CA72A515D037D62EA3FD1FE1M4F3CBLLV_Tt1g5(*a1, *a2);
  result = 0;
  if ((v16 & 1) != 0 && v2 == v8)
  {
    if (v3)
    {
      if (v5 == v11)
      {
        v18 = v10;
      }

      else
      {
        v18 = 0;
      }

      if (v18 != 1 || v4 != v12 || v6 != v14 || v23 != v13)
      {
        return 0;
      }

      return v7 == v15;
    }

    result = 0;
    if ((v10 & 1) == 0 && v22 == v9 && v5 == v11 && v4 == v12 && v6 == v14 && v23 == v13)
    {
      return v7 == v15;
    }
  }

  return result;
}

uint64_t initializeWithCopy for DisplayList.InterpolatorLayer.Contents(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 4);
  *(a1 + 12) = *(a2 + 3);
  *(a1 + 16) = *(a2 + 1);
  v3 = a2[5];
  *(a1 + 32) = a2[4];
  *(a1 + 40) = v3;
  *(a1 + 48) = *(a2 + 12);
  *(a1 + 52) = *(a2 + 52);

  swift_unknownObjectRetain();
  return a1;
}

id ContentTransition.rbTransition.getter()
{
  v1 = *v0;
  v34 = *(v0 + 8) | (*(v0 + 12) << 32);
  v2 = *(v0 + 14);
  if (!*(v0 + 13))
  {
    if (one-time initialization token for namedTransitions != -1)
    {
      swift_once();
    }

    os_unfair_lock_lock(&static ContentTransition.namedTransitions);
    v21 = off_1ED527450;
    if (v2)
    {
      v22 = 0x10000000000;
    }

    else
    {
      v22 = 0;
    }

    v23 = v22 & 0xFFFFFF0000000000 | v34 & 0xFFFFFFFFFFLL;
    if (*(off_1ED527450 + 2) && (v24 = specialized __RawDictionaryStorage.find<A>(_:)(v1, v23), (v25 & 1) != 0))
    {
      v3 = *(v21[7] + 8 * v24);
      os_unfair_lock_unlock(&static ContentTransition.namedTransitions);
      if (v3)
      {
        return v3;
      }
    }

    else
    {
      os_unfair_lock_unlock(&static ContentTransition.namedTransitions);
    }

    v29 = ContentTransition.NamedTransition.makeRBTransition()();
    [v29 setReplaceable_];
    os_unfair_lock_lock(&static ContentTransition.namedTransitions);
    v3 = v29;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = off_1ED527450;
    off_1ED527450 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v3, v1, v23, isUniquelyReferenced_nonNull_native);
    off_1ED527450 = v35;
    os_unfair_lock_unlock(&static ContentTransition.namedTransitions);
    return v3;
  }

  if (*(v0 + 13) == 1)
  {
    v32 = *(v0 + 14);
    v3 = [objc_allocWithZone(MEMORY[0x1E69C7118]) init];
    [v3 setMethod_];
    v4 = *(v1 + 16);
    if (v4)
    {
      v5 = (v1 + 64);
      v33 = v3;
      do
      {
        v7 = *(v5 - 8);
        if ((v34 & 0x100000000) != 0)
        {
          v8 = v7 - 7;
          if (v7 - 7) <= 5 && ((0x33u >> v8))
          {
            v7 = dword_18DE11E78[v8];
          }
        }

        v9 = *(v5 - 7);
        v10 = *(v5 - 24);
        v11 = *(v5 - 5);
        v12 = *(v5 - 16);
        v14 = *(v5 - 3);
        v13 = *(v5 - 2);
        v16 = *(v5 - 1);
        v15 = *v5;
        v17 = [objc_allocWithZone(MEMORY[0x1E69C7120]) init];
        [v17 setType_];
        if (v10)
        {
          if (v10 == 1)
          {
            [v17 setIntegerArgumentValue:v9 atIndex:0];
          }

          if (v12)
          {
LABEL_14:
            v19 = v12 == 1;
            v3 = v33;
            if (v19)
            {
              [v17 setIntegerArgumentValue:v11 atIndex:1];
            }

            goto LABEL_19;
          }
        }

        else
        {
          LODWORD(v18) = v9;
          [v17 setArgumentValue:0 atIndex:v18];
          if (v12)
          {
            goto LABEL_14;
          }
        }

        LODWORD(v18) = v11;
        [v17 setArgumentValue:1 atIndex:v18];
        v3 = v33;
LABEL_19:
        [v17 setEvents_];
        if (v15)
        {
          [v17 setFlags_];
        }

        v5 += 9;
        LODWORD(v20) = v14;
        [v17 setBeginTime_];
        LODWORD(v6) = v13;
        [v17 setDuration_];
        [v3 addEffect_];

        --v4;
      }

      while (v4);
    }

    [v3 setReplaceable_];
  }

  else
  {
    v26 = [objc_allocWithZone(MEMORY[0x1E69C7120]) init];
    [v26 setType_];
    if ((v1 & 0x100000000) != 0)
    {
      v27 = v1;
    }

    else
    {
      v27 = v1 | 0x10;
    }

    [v26 setIntegerArgumentValue:v27 atIndex:0];
    LODWORD(v28) = 1.0;
    [v26 setArgumentValue:1 atIndex:v28];
    v3 = [objc_allocWithZone(MEMORY[0x1E69C7118]) init];
    [v3 setMethod_];
    [v3 addEffect_];
  }

  return v3;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(unint64_t a1, unint64_t a2)
{
  Hasher.init(_seed:)();
  v4 = (a1 >> 38) & 3;
  if (v4)
  {
    if (v4 == 1)
    {
      MEMORY[0x193AC11A0](6);
      ContentTransition.NumericTextConfiguration.hash(into:)();
    }

    else
    {
      if (a1 <= 0x8000000001)
      {
        v5 = (a1 ^ 0x8000000000 | a2 & 0xFFFFFF) != 0;
      }

      else if (a1 ^ 0x8000000002 | a2 & 0xFFFFFF)
      {
        if (a1 ^ 0x8000000003 | a2 & 0xFFFFFF)
        {
          v5 = 4;
        }

        else
        {
          v5 = 3;
        }
      }

      else
      {
        v5 = 2;
      }

      MEMORY[0x193AC11A0](v5);
    }
  }

  else
  {
    MEMORY[0x193AC11A0](5);
    Hasher._combine(_:)(a1 & 1);
  }

  if ((a2 & 0xFF000000) == 0x2000000)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x193AC11A0]((a2 >> 24) & 1);
  }

  if ((a2 & 0xFF00000000) == 0x300000000)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x193AC11A0](BYTE4(a2));
  }

  Hasher._combine(_:)(BYTE5(a2) & 1);
  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2 & 0x1FFFFFFFFFFLL, v6);
}

{
  v4 = HIDWORD(a1);
  v5 = HIDWORD(a2);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v5);
  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v6);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = v3 + 64;
  v6 = -1 << *(v3 + 32);
  result = a3 & ~v6;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v8 = ~v6;
    v9 = *(v3 + 48);
    v10 = a1 & 0xC000000000;
    v11 = a1 != 0x8000000004;
    v12 = a1 != 0x8000000003;
    v13 = a1 != 0x8000000002;
    v14 = a1 != 0x8000000001;
    if ((a2 & 0xFFFFFF) != 0)
    {
      v11 = 1;
      v12 = 1;
      v13 = 1;
      v14 = 1;
      v15 = 1;
    }

    else
    {
      v15 = a1 != 0x8000000000;
    }

    v16 = a1 & 0xFF0000000000;
    if (v10 != 0x8000000000)
    {
      v11 = 1;
    }

    v27 = v11;
    v17 = v10 != 0x8000000000 || v12;
    v18 = v10 != 0x8000000000 || v13;
    v19 = v10 != 0x8000000000 || v14;
    if (v10 != 0x8000000000)
    {
      v15 = 1;
    }

    do
    {
      v20 = v9 + 16 * result;
      v21 = *v20;
      v22 = *(v20 + 11);
      v23 = *(v20 + 12);
      v24 = (*v20 >> 38) & 3;
      if (v24)
      {
        v25 = *(v20 + 8) | (*(v20 + 10) << 16);
        if (v24 == 1)
        {
          if (v10 != 0x4000000000)
          {
            goto LABEL_21;
          }

          if ((v21 & 0x100000000) != 0)
          {
            if ((a1 & 0x100000000) == 0 || *&v21 != *&a1)
            {
              goto LABEL_21;
            }
          }

          else if (a1 & 0x100000000) != 0 || ((v21 ^ a1))
          {
            goto LABEL_21;
          }

          v26 = BYTE2(v25);
          if ((v21 & 0xFF0000000000) == 0x20000000000)
          {
            if (v16 != 0x20000000000)
            {
              goto LABEL_21;
            }
          }

          else if (v16 == 0x20000000000 || ((v21 ^ a1) & 0x10000000000) != 0)
          {
            goto LABEL_21;
          }

          if (BYTE6(v21) != BYTE6(a1) || HIBYTE(v21) != HIBYTE(a1) || *(v20 + 8) != a2 || HIBYTE(*(v20 + 8)) != BYTE1(a2) || v26 != BYTE2(a2))
          {
            goto LABEL_21;
          }
        }

        else if (v21 <= 0x8000000001)
        {
          if (v21 ^ 0x8000000000 | *&v25 & 0xFFFFFFLL)
          {
            if (v19)
            {
              goto LABEL_21;
            }
          }

          else if (v15)
          {
            goto LABEL_21;
          }
        }

        else if (v21 ^ 0x8000000002 | *&v25 & 0xFFFFFFLL)
        {
          if (v21 ^ 0x8000000003 | *&v25 & 0xFFFFFFLL)
          {
            if (v27)
            {
              goto LABEL_21;
            }
          }

          else if (v17)
          {
            goto LABEL_21;
          }
        }

        else if (v18)
        {
          goto LABEL_21;
        }
      }

      else if (v10 || ((v21 ^ a1) & 1) != 0)
      {
        goto LABEL_21;
      }

      if (v22 == 2)
      {
        if (BYTE3(a2) != 2)
        {
          goto LABEL_21;
        }
      }

      else if (BYTE3(a2) == 2 || ((a2 >> 24) & 1) != (v22 & 1))
      {
        goto LABEL_21;
      }

      if (v23 == 3)
      {
        if (BYTE4(a2) == 3)
        {
          goto LABEL_20;
        }
      }

      else if (BYTE4(a2) != 3 && v23 == BYTE4(a2))
      {
LABEL_20:
        if ((((a2 >> 40) & 1 ^ *(v20 + 13)) & 1) == 0)
        {
          return result;
        }
      }

LABEL_21:
      result = (result + 1) & v8;
    }

    while (((*(v5 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void Animation.Function.apply(to:)(void *a1, double a2, double a3, double a4, double a5, double a6)
{
  v7 = v6;
  v9 = *v6;
  v8 = v6[1];
  v10 = v7[2];
  v11 = v7[3];
  v12 = v7[4];
  v13 = *(v7 + 40);
  if (v13 <= 4)
  {
    v14 = v9;
    if (v13 <= 1)
    {
      v15 = sel_addPreset_duration_;
    }

    else
    {
      if (v13 != 2)
      {
        if (v13 == 3)
        {
          v15 = sel_addPreset_duration_;
          goto LABEL_22;
        }

        a3 = v8;
        a4 = v10;
        a5 = v11;
        a6 = v12;
        v15 = sel_addBezierDuration_controlPoint1_controlPoint2_;
LABEL_17:

        goto LABEL_19;
      }

      v15 = sel_addPreset_duration_;
    }

LABEL_22:

LABEL_19:
    [a1 v15];
    return;
  }

  if (v13 > 6)
  {
    if (v13 == 7)
    {
      v16 = *(*&v9 + 16);
      v17 = *(*&v9 + 56);
      v18 = *(*&v9 + 64);
      v19 = sel_addDelay_;
    }

    else
    {
      if (v13 != 8)
      {
        v17 = *(*&v9 + 64);
        v18 = *(*&v9 + 72);
        v50 = *(*&v9 + 48);
        v51 = *(*&v9 + 32);
        v20 = a1;
        [a1 addRepeatCount:*(*&v9 + 24) autoreverses:*(*&v9 + 16)];
        goto LABEL_21;
      }

      v16 = *(*&v9 + 16);
      v17 = *(*&v9 + 56);
      v18 = *(*&v9 + 64);
      v19 = sel_addSpeed_;
    }

    v51 = *(*&v9 + 24);
    v20 = a1;
    [a1 v19];
LABEL_21:
    v54 = v51;
    v55 = v50;
    v56 = v17;
    v57 = v18;
    Animation.Function.apply(to:)(v20, *&v51, *&v50, v21, v22, v23);
    return;
  }

  if (v13 == 5)
  {
    v14 = v9;
    a3 = v8;
    a4 = v10;
    a5 = v11;
    a6 = v12;
    v15 = sel_addSpringDuration_mass_stiffness_damping_initialVelocity_;
    goto LABEL_17;
  }

  v25 = MEMORY[0x1E69E7CC0];
  v54 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  LOWORD(v55) = 0;
  *&v26 = 0;
  while (1)
  {
    v52 = v26;
    *&v27 = COERCE_DOUBLE((*&v9)(&v54));
    if (v28)
    {
      break;
    }

    v29 = *&v27;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v25 + 2) + 1, 1, v25);
    }

    v31 = *(v25 + 2);
    v30 = *(v25 + 3);
    v26 = v52;
    if (v31 >= v30 >> 1)
    {
      v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v25);
      v26 = v52;
      v25 = v33;
    }

    *&v32.f64[0] = v26;
    v32.f64[1] = v29;
    *(v25 + 2) = v31 + 1;
    *&v25[8 * v31 + 32] = vcvt_f32_f64(v32);
    *&v26 = *&v26 + 0.1;
    if (*&v26 >= 10.0)
    {
      goto LABEL_34;
    }
  }

  *&v26 = v52;
LABEL_34:
  v53 = *&v26;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v25 + 2) + 1, 1, v25);
  }

  v35 = *(v25 + 2);
  v34 = *(v25 + 3);
  v36 = v53;
  if (v35 >= v34 >> 1)
  {
    v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v25);
    v36 = v53;
    v25 = v49;
  }

  v37 = v36;
  *(v25 + 2) = v35 + 1;
  v38 = &v25[8 * v35 + 32];
  *v38 = v37;
  *(v38 + 4) = 1065353216;
  v39 = 1.0 / v36;
  if (v35 >= 4)
  {
    v41 = (v35 + 1) & 3;
    if (!v41)
    {
      v41 = 4;
    }

    v40 = v35 + 1 - v41;
    v42 = v40;
    v43 = (v25 + 32);
    v44 = (v25 + 32);
    do
    {
      v45 = vld2q_f32(v44);
      v44 += 8;
      v46 = vmulq_n_f32(v45, v39);
      *v43 = v46.f32[0];
      v43[2] = v46.f32[1];
      v43[4] = v46.f32[2];
      v43[6] = v46.f32[3];
      v43 = v44;
      v42 -= 4;
    }

    while (v42);
  }

  else
  {
    v40 = 0;
  }

  v47 = v35 - v40 + 1;
  v48 = 8 * v40 + 32;
  do
  {
    *&v25[v48] = *&v25[v48] * v39;
    v48 += 8;
    --v47;
  }

  while (v47);

  [a1 addSampledFunctionWithDuration:v35 + 1 count:v25 + 32 values:v53];
}

Swift::Void __swiftcall DisplayList.InterpolatorLayer.updateInterpolators(contentsScale:maxDuration:)(Swift::Float contentsScale, Swift::Double maxDuration)
{
  if (*(v2 + 83) != 1)
  {
    return;
  }

  v3 = v2;
  *(v2 + 83) = 0;
  v125[0] = 0;
  v4 = *(v2 + 56);
  v5 = *(v4 + 2);
  if (!v5)
  {
    goto LABEL_139;
  }

  v113 = 0;
  v115 = 0;
  v7 = 0;
  v8 = 0;
  v9 = contentsScale;
  v10 = MEMORY[0x1E69E7CA0];
  v112 = v2;
  do
  {
    while (1)
    {
      if (v7 < 0)
      {
        __break(1u);
LABEL_144:
        __break(1u);
LABEL_145:
        __break(1u);
LABEL_146:
        __break(1u);
LABEL_147:
        __break(1u);
LABEL_148:
        __break(1u);
LABEL_149:
        __break(1u);
LABEL_150:
        __break(1u);
LABEL_151:
        __break(1u);
LABEL_152:
        __break(1u);
LABEL_153:
        __break(1u);
LABEL_154:
        __break(1u);
LABEL_155:
        __break(1u);
LABEL_156:
        __break(1u);
LABEL_157:
        __break(1u);
LABEL_158:
        __break(1u);
LABEL_159:
        __break(1u);
LABEL_160:
        __break(1u);
LABEL_161:
        __break(1u);
LABEL_162:
        __break(1u);
LABEL_163:
        __break(1u);
LABEL_164:
        __break(1u);
LABEL_165:
        __break(1u);
        return;
      }

      if (v7 >= *(v4 + 2))
      {
        goto LABEL_144;
      }

      v11 = 112 * v7;
      if (v4[112 * v7 + 136] <= 1u)
      {
        if (v4[112 * v7 + 136])
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
          }

          if (v7 >= *(v4 + 2))
          {
            goto LABEL_156;
          }

          v13 = &v4[v11];
          v4[v11 + 136] = 2;
          *(v3 + 56) = v4;
LABEL_24:
          swift_beginAccess();
          if (static CoreTesting.isRunning)
          {
            goto LABEL_27;
          }

          *(v13 + 15) = *(v3 + 64);
        }

        else
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
          }

          if (v7 >= *(v4 + 2))
          {
            goto LABEL_157;
          }

          v12 = &v4[v11];
          v12[136] = 1;
          *(v12 + 15) = *(v3 + 64);
        }

        *(v3 + 56) = v4;
        goto LABEL_27;
      }

      if (v4[112 * v7 + 136] == 2)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
        }

        if (v7 >= *(v4 + 2))
        {
          goto LABEL_155;
        }

        v13 = &v4[v11];
        v4[v11 + 136] = 3;
        *(v3 + 56) = v4;
        if (*(v3 + 64) - *&v4[v11 + 120] > 0.0333333333)
        {
          goto LABEL_24;
        }
      }

LABEL_27:
      v14 = *(v4 + 2);
      if (v7 >= v14)
      {
        goto LABEL_145;
      }

      v15 = &v4[v11];
      v16 = *&v4[v11 + 128];
      if (v16 >= 0.0 && v16 <= *(v3 + 64) - *(v15 + 15))
      {
        DisplayList.InterpolatorLayer.remove(prefix:)(v7);
        goto LABEL_5;
      }

      if (v7)
      {
        if (!v8)
        {
          v8 = [objc_allocWithZone(MEMORY[0x1E69C70A8]) init];
          v125[0] = v8;
          v14 = *(v4 + 2);
        }

        if (v7 > v14)
        {
          goto LABEL_150;
        }

        v17 = *(v15 + 1);
        if (*(v3 + 64) - v17 < 0.0)
        {
          v18 = 0.0;
        }

        else
        {
          v18 = *(v3 + 64) - v17;
        }

        v19 = *(v15 - 3);
        if (!v19)
        {
          goto LABEL_162;
        }

        if (!v8)
        {
          goto LABEL_161;
        }

        State = RBDisplayListGetState();
        *&v21 = v18;
        [v19 drawInState:State by:v21];
        v116 = [v8 moveContents];
        goto LABEL_50;
      }

      v22 = *(v3 + 64);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if (!*(v4 + 2))
        {
          goto LABEL_152;
        }
      }

      else
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
        if (!*(v4 + 2))
        {
          goto LABEL_152;
        }
      }

      v23 = &v4[v11 + 32];
      v116 = *&v4[v11 + 64];
      if (v116 && v22 < *&v4[v11 + 72])
      {
        goto LABEL_50;
      }

      if (!v8)
      {
        v69 = [objc_allocWithZone(MEMORY[0x1E69C70A8]) init];
        v125[0] = v69;
        if (!v69)
        {
          goto LABEL_165;
        }

        v8 = v69;
        [v69 setDeviceScale_];
        v24 = *(v3 + 72);
        if (v24)
        {
          goto LABEL_46;
        }

LABEL_93:
        LOBYTE(v118) = 3;
        type metadata accessor for DisplayList.GraphicsRenderer();
        swift_allocObject();
        v24 = DisplayList.GraphicsRenderer.init(platformViewMode:)(&v118);
        *(v3 + 72) = v24;
        goto LABEL_46;
      }

      v24 = *(v3 + 72);
      if (!v24)
      {
        goto LABEL_93;
      }

LABEL_46:
      v25 = v5;
      if (v4[v11 + 84] != 1)
      {
        isa = Float._bridgeToObjectiveC()().super.super.isa;
        [v8 setValue:isa forAttribute:0];
      }

      v27 = v8;
      v28 = *(v24 + 64);
      *(v24 + 72) = v22;
      *(v24 + 80) = 0x7FF0000000000000;

      v29 = *(v24 + 48);
      v30 = *(v24 + 56);
      closure #1 in DisplayList.InterpolatorLayer.Contents.render(at:renderer:storage:contentsScale:)(v125, v23, (v3 + 72));
      swift_beginAccess();

      v31 = MEMORY[0x1E69E7CC8];
      *(v24 + 16) = MEMORY[0x1E69E7CC8];

      swift_beginAccess();
      v32 = *(v24 + 32);
      *(v24 + 32) = v31;
      *(v24 + 40) = v31;
      *(v24 + 16) = v32;
      swift_endAccess();
      *(v24 + 48) = v29;
      *(v24 + 56) = v30;
      *(v24 + 64) = v28;

      *(v23 + 40) = *(v24 + 80);
      v33 = [v27 moveContents];
      swift_unknownObjectRelease();
      v116 = v33;
      *(v23 + 32) = v33;
      if (!*(v4 + 2))
      {
        goto LABEL_153;
      }

      v8 = v27;
      v115 = 1;
      v5 = v25;
      v10 = MEMORY[0x1E69E7CA0];
      v11 = 112 * v7;
LABEL_50:
      v34 = *(v3 + 64);
      v114 = v5;
      if (v7 < v5 - 1)
      {
        break;
      }

      v40 = *(v3 + 32);
      if (!v40 || v34 >= *(v3 + 40))
      {
        if (v8)
        {
          swift_unknownObjectRetain();
          v41 = *(v3 + 72);
          if (v41)
          {
            goto LABEL_64;
          }
        }

        else
        {
          v62 = objc_allocWithZone(MEMORY[0x1E69C70A8]);
          swift_unknownObjectRetain();
          v63 = [v62 init];
          v125[0] = v63;
          if (!v63)
          {
            goto LABEL_163;
          }

          v8 = v63;
          [v63 setDeviceScale_];
          v41 = *(v3 + 72);
          if (v41)
          {
LABEL_64:
            if (*(v3 + 52))
            {
              goto LABEL_66;
            }

            goto LABEL_65;
          }
        }

        type metadata accessor for DisplayList.GraphicsRenderer();
        v64 = swift_allocObject();
        v41 = v64;
        v65 = MEMORY[0x1E69E7CC8];
        *(v64 + 16) = MEMORY[0x1E69E7CC8];
        *(v64 + 24) = v65;
        *(v64 + 32) = v65;
        *(v64 + 40) = v65;
        *(v64 + 48) = 0;
        *(v64 + 56) = 0;
        *(v64 + 72) = xmmword_18DDAB910;
        *(v64 + 88) = 0;
        *(v64 + 96) = 0;
        *(v64 + 104) = MEMORY[0x1E69E7CC0];
        *(v64 + 112) = 3;
        v66 = __CFADD__(lastIdentity, 1);
        v67 = ++lastIdentity;
        if (v66)
        {
          v81 = 0;
          v80 = 1;
        }

        else
        {
          v80 = 0;
          *(v64 + 48) = v67;
          v81 = 1;
        }

        *(v64 + 52) = v80;
        *(v64 + 64) = v81;
        *(v3 + 72) = v64;
        if (*(v3 + 52))
        {
LABEL_66:
          v43 = *(v41 + 48);
          v44 = *(v41 + 56);
          v45 = *(v41 + 64);
          *(v41 + 72) = v34;
          *(v41 + 80) = 0x7FF0000000000000;
          v118 = 0uLL;
          swift_beginAccess();
          if (static ViewGraphHost.isDefaultEnvironmentConfigured != 1)
          {
            v57 = one-time initialization token for shared;

            v49 = v8;
            v58 = v8;
            if (v57 != -1)
            {
              swift_once();
            }

            swift_beginAccess();
            v59 = *((*MEMORY[0x1E69E7D40] & *static CoreGlue2.shared) + 0x68);
            v60 = static CoreGlue2.shared;
            v59(&v118);

            v61 = *(&v118 + 1);
            v48 = v118;
            goto LABEL_111;
          }

          v46 = one-time initialization token for _defaultEnvironment;

          v47 = v8;
          if (v46 != -1)
          {
            swift_once();
          }

          v48 = static ViewGraphHost._defaultEnvironment;
          if (static ViewGraphHost._defaultEnvironment)
          {
            v49 = v8;
            if (!*(static ViewGraphHost._defaultEnvironment + 64))
            {
              v61 = 0;
              v48 = 0;
LABEL_111:
              type metadata accessor for GraphicsContext.Storage();
              v82 = swift_allocObject();
              *(v82 + 32) = xmmword_18DD85500;
              *(v82 + 48) = 1065353216;
              *(v82 + 56) = 0x7FF8000000000000;
              *&v118 = v48;
              *(&v118 + 1) = v61;
              type metadata accessor for GraphicsContext.Storage.Shared();
              swift_allocObject();
              v83 = v49;
              *(v82 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v83, &v118);
              *(v82 + 24) = RBDisplayListGetState();
              *(v82 + 64) = 0;

              *&v117[0] = v82;
              if (*(v3 + 16) != 0.0 || *(v3 + 24) != 0.0)
              {
                GraphicsContext.copyOnWrite()();
                RBDrawingStateTranslateCTM();
              }

              v84 = *(v3 + 8);
              v85 = *(v3 + 12);
              *&v118 = *v3;
              WORD4(v118) = v84;
              HIDWORD(v118) = v85;

              DisplayList.GraphicsRenderer.render(list:in:)(&v118, v117);

              swift_beginAccess();

              v86 = MEMORY[0x1E69E7CC8];
              *(v41 + 16) = MEMORY[0x1E69E7CC8];

              v115 = 1;
              swift_beginAccess();
              v87 = *(v41 + 32);
              *(v41 + 32) = v86;
              *(v41 + 40) = v86;
              *(v41 + 16) = v87;
              swift_endAccess();
              *(v41 + 48) = v43;
              *(v41 + 56) = v44;
              *(v41 + 64) = v45;

              *(v3 + 40) = *(v41 + 80);
              v88 = [v83 moveContents];
              swift_unknownObjectRelease();
              *(v3 + 32) = v88;
              v40 = v88;
              v8 = v49;
              v11 = 112 * v7;
              v10 = MEMORY[0x1E69E7CA0];
              goto LABEL_115;
            }
          }

          else
          {
            v49 = v8;
          }

          v61 = 0;
          goto LABEL_111;
        }

LABEL_65:
        v42 = Float._bridgeToObjectiveC()().super.super.isa;
        [v8 setValue:v42 forAttribute:0];

        goto LABEL_66;
      }

      swift_unknownObjectRetain();
      if ((v115 & 1) == 0)
      {
        v37 = *(v4 + 2);
        goto LABEL_96;
      }

      v115 = 1;
LABEL_115:
      if (v7 >= *(v4 + 2))
      {
        goto LABEL_146;
      }

      v89 = *MEMORY[0x1E69C7150];
      v90 = *&v4[v11 + 104];
      *(&v119 + 1) = type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for RBAnimation, 0x1E69C7098);
      *&v118 = v90;
      outlined init with take of Any(&v118, v117);
      swift_unknownObjectRetain();
      v91 = v90;
      v92 = MEMORY[0x1E69E7CC8];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v124 = v92;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v117, v89, isUniquelyReferenced_nonNull_native);
      if (v7 >= *(v4 + 2))
      {
        goto LABEL_147;
      }

      v94 = v124;
      v95 = *MEMORY[0x1E69C7158];
      v96 = *&v4[v11 + 96];
      if (v96)
      {
        *(&v119 + 1) = type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for RBTransition, 0x1E69C7118);
        *&v118 = v96;
        outlined init with take of Any(&v118, v117);
        v97 = v95;
        v98 = v96;
        v99 = swift_isUniquelyReferenced_nonNull_native();
        v124 = v94;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v117, v97, v99);
      }

      else
      {
        v100 = v95;
        v101 = specialized __RawDictionaryStorage.find<A>(_:)(v100);
        if (v102)
        {
          v103 = v101;
          v104 = swift_isUniquelyReferenced_nonNull_native();
          *&v117[0] = v94;
          if ((v104 & 1) == 0)
          {
            specialized _NativeDictionary.copy()();
            v94 = *&v117[0];
          }

          outlined init with take of Any((*(v94 + 56) + 32 * v103), &v118);
          specialized _NativeDictionary._delete(at:)();
        }

        else
        {
          v118 = 0u;
          v119 = 0u;
        }

        _sypSgWOhTm_0(&v118, &lazy cache variable for type metadata for Any?, v10 + 8);
      }

      type metadata accessor for RBDisplayListInterpolatorOptionKey(0);
      lazy protocol witness table accessor for type RBDisplayListInterpolatorOptionKey and conformance RBDisplayListInterpolatorOptionKey();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v105 = Dictionary._bridgeToObjectiveC()().super.isa;

      v106 = [objc_opt_self() newInterpolatorWithFrom:v116 to:v40 options:v105];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      v107 = v106;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
      }

      if (v7 >= *(v4 + 2))
      {
        goto LABEL_148;
      }

      v108 = &v4[v11];
      v109 = *&v4[v11 + 88];
      *&v4[v11 + 88] = v107;

      [v107 activeDuration];
      if (v7 >= *(v4 + 2))
      {
        goto LABEL_149;
      }

      if (v110 > maxDuration)
      {
        v110 = maxDuration;
      }

      *(v108 + 16) = v110;
      v3 = v112;
      *(v112 + 56) = v4;
      if (*(v108 + 16) > v34 - *(v108 + 15))
      {

        if (v113)
        {
          goto LABEL_133;
        }

        goto LABEL_102;
      }

      DisplayList.InterpolatorLayer.remove(prefix:)(v7);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
LABEL_5:
      v7 = 0;
      v4 = *(v3 + 56);
      v5 = *(v4 + 2);
      if (v5 <= 0)
      {
        goto LABEL_138;
      }
    }

    swift_unknownObjectRetain();
    v35 = v8;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
    }

    v36 = v7 + 1;
    v37 = *(v4 + 2);
    if (v7 + 1 >= v37)
    {
      goto LABEL_151;
    }

    v38 = &v4[112 * v36];
    v39 = (v38 + 32);
    v40 = *(v38 + 8);
    if (!v40 || v34 >= *(v38 + 9))
    {
      if (v35)
      {
        v50 = *(v3 + 72);
        if (v50)
        {
LABEL_74:
          if (*(v39 + 52) != 1)
          {
            v51 = Float._bridgeToObjectiveC()().super.super.isa;
            [v35 setValue:v51 forAttribute:0];
          }

          v52 = *(v50 + 64);
          *(v50 + 72) = v34;
          *(v50 + 80) = 0x7FF0000000000000;

          v53 = *(v50 + 48);
          v54 = *(v50 + 56);
          closure #1 in DisplayList.InterpolatorLayer.Contents.render(at:renderer:storage:contentsScale:)(v125, v39, (v3 + 72));
          swift_beginAccess();

          v55 = MEMORY[0x1E69E7CC8];
          *(v50 + 16) = MEMORY[0x1E69E7CC8];

          swift_beginAccess();
          v56 = *(v50 + 32);
          *(v50 + 32) = v55;
          *(v50 + 40) = v55;
          *(v50 + 16) = v56;
          swift_endAccess();
          *(v50 + 48) = v53;
          *(v50 + 56) = v54;
          *(v50 + 64) = v52;

          *(v39 + 40) = *(v50 + 80);
          v40 = [v35 moveContents];
          swift_unknownObjectRelease();
          *(v39 + 32) = v40;
          if (v36 >= *(v4 + 2))
          {
            goto LABEL_154;
          }

          v115 = 1;
          v10 = MEMORY[0x1E69E7CA0];
          v8 = v35;
          goto LABEL_78;
        }
      }

      else
      {
        v68 = [objc_allocWithZone(MEMORY[0x1E69C70A8]) init];
        v125[0] = v68;
        if (!v68)
        {
          goto LABEL_164;
        }

        v35 = v68;
        [v68 setDeviceScale_];
        v50 = *(v3 + 72);
        if (v50)
        {
          goto LABEL_74;
        }
      }

      LOBYTE(v118) = 3;
      type metadata accessor for DisplayList.GraphicsRenderer();
      swift_allocObject();
      v50 = DisplayList.GraphicsRenderer.init(platformViewMode:)(&v118);
      *(v3 + 72) = v50;
      goto LABEL_74;
    }

    if (v115)
    {
      v115 = 1;
      v8 = v35;
LABEL_78:
      v11 = 112 * v7;
      goto LABEL_115;
    }

    v8 = v35;
    v11 = 112 * v7;
LABEL_96:
    if (v7 >= v37)
    {
      goto LABEL_159;
    }

    v70 = *&v4[v11 + 88];
    if (!v70)
    {
      v115 = 0;
      goto LABEL_115;
    }

    swift_unknownObjectRetain();
    v71 = v70;
    [v71 copy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();

    type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for RBDisplayListInterpolator, 0x1E69C70B0);
    swift_dynamicCast();
    v72 = *&v117[0];
    [v72 setFrom_];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
    }

    if (v7 >= *(v4 + 2))
    {
      goto LABEL_160;
    }

    v73 = *&v4[v11 + 88];
    *&v4[v11 + 88] = v72;

    v115 = 0;
    *(v3 + 56) = v4;
    if (v113)
    {
LABEL_133:
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v79 = 1;
      goto LABEL_134;
    }

LABEL_102:
    if (v7 >= *(v4 + 2))
    {
      goto LABEL_158;
    }

    v74 = *&v4[v11 + 32];
    v75 = *&v4[v11 + 64];
    v119 = *&v4[v11 + 48];
    v120 = v75;
    v118 = v74;
    v76 = *&v4[v11 + 80];
    v77 = *&v4[v11 + 96];
    v78 = *&v4[v11 + 112];
    *(v123 + 9) = *&v4[v11 + 121];
    v122 = v77;
    v123[0] = v78;
    v121 = v76;
    outlined init with copy of DisplayList.InterpolatorLayer.Removed(&v118, v117);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    outlined destroy of DisplayList.InterpolatorLayer.Removed(&v118);
    v79 = *(&v120 + 1) < INFINITY;
    if (*(&v120 + 1) > INFINITY)
    {
      v79 = 1;
    }

LABEL_134:
    v113 = v79;
    ++v7;
    v5 = v114;
  }

  while (v7 < v114);
LABEL_138:

  if (v113)
  {
    return;
  }

LABEL_139:
  v111 = *(v3 + 40);
  if (v111 >= INFINITY && v111 <= INFINITY)
  {

    *(v3 + 72) = 0;
  }
}

void closure #1 in DisplayList.InterpolatorLayer.Contents.render(at:renderer:storage:contentsScale:)(id *a1, uint64_t a2, uint64_t *a3)
{
  if (!*a1)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  v5 = *a1;
  EnvironmentValues.init()(&v13);
  v6 = v13;
  v7 = v14;
  type metadata accessor for GraphicsContext.Storage();
  v8 = swift_allocObject();
  *(v8 + 32) = xmmword_18DD85500;
  *(v8 + 48) = 1065353216;
  *(v8 + 56) = 0x7FF8000000000000;
  v12[0] = v6;
  v12[1] = v7;
  type metadata accessor for GraphicsContext.Storage.Shared();
  swift_allocObject();
  v9 = v5;
  *(v8 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v9, v12);
  *(v8 + 24) = RBDisplayListGetState();
  *(v8 + 64) = 0;

  v12[0] = v8;
  if (*(a2 + 16) != 0.0 || *(a2 + 24) != 0.0)
  {
    GraphicsContext.copyOnWrite()();
    RBDrawingStateTranslateCTM();
  }

  if (!*a3)
  {
    goto LABEL_10;
  }

  v10 = *(a2 + 8);
  v11 = *(a2 + 12);
  v13 = *a2;
  LOWORD(v14) = v10;
  HIDWORD(v14) = v11;

  DisplayList.GraphicsRenderer.render(list:in:)(&v13, v12);
}

void type metadata accessor for _DictionaryStorage<RBDisplayListInterpolatorOptionKey, Any>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<RBDisplayListInterpolatorOptionKey, Any>)
  {
    type metadata accessor for RBDisplayListInterpolatorOptionKey(255);
    lazy protocol witness table accessor for type AGWeakAttribute and conformance AGWeakAttribute(&lazy protocol witness table cache variable for type RBDisplayListInterpolatorOptionKey and conformance RBDisplayListInterpolatorOptionKey, type metadata accessor for RBDisplayListInterpolatorOptionKey, protocol conformance descriptor for RBDisplayListInterpolatorOptionKey);
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<RBDisplayListInterpolatorOptionKey, Any>);
    }
  }
}

void lazy protocol witness table accessor for type RBDisplayListInterpolatorOptionKey and conformance RBDisplayListInterpolatorOptionKey()
{
  if (!lazy protocol witness table cache variable for type RBDisplayListInterpolatorOptionKey and conformance RBDisplayListInterpolatorOptionKey)
  {
    type metadata accessor for RBDisplayListInterpolatorOptionKey(255);
    swift_getWitnessTable(protocol conformance descriptor for RBDisplayListInterpolatorOptionKey, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type RBDisplayListInterpolatorOptionKey and conformance RBDisplayListInterpolatorOptionKey);
  }
}

void DisplayList.InterpolatorLayer.remove(prefix:)(uint64_t a1)
{
  if (a1 < 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v5 = a1;
  v4 = a1 + 1;
  if (__OFADD__(a1, 1))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v1 = v2;
  v3 = (v2 + 56);
  v6 = *(v2 + 7);
  if (*(v6 + 16) < v4)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v4 < 0)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
    goto LABEL_12;
  }

  for (i = 32; ; i += 112)
  {
    v8 = *(v6 + i + 48);
    v9 = *(v6 + i + 64);
    v10 = *(v6 + i + 89);
    v20[0] = *(v6 + i + 80);
    v11 = *(v6 + i + 16);
    v12 = *(v6 + i + 32);
    v19[0] = *(v6 + i);
    v19[1] = v11;
    *(v20 + 9) = v10;
    v19[3] = v8;
    v19[4] = v9;
    v19[2] = v12;
    if (*&v20[0])
    {
      v13 = *(**&v20[0] + 96);
      outlined init with copy of DisplayList.InterpolatorLayer.Removed(v19, &v18);

      v13(v14);
      outlined destroy of DisplayList.InterpolatorLayer.Removed(v19);
    }

    if (!v5)
    {
      break;
    }

    --v5;
  }

  specialized Array.replaceSubrange<A>(_:with:)(0, v4);
  v2 = *v3;
  v4 = *(*v3 + 2);
  if (!v4)
  {
    goto LABEL_16;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_12:
  v15 = 0;
  v16 = 88;
  do
  {
    if (v15 >= *(v2 + 2))
    {
      __break(1u);
      goto LABEL_18;
    }

    ++v15;
    v17 = *&v2[v16];
    *&v2[v16] = 0;

    v16 += 112;
  }

  while (v4 != v15);
  *v3 = v2;
LABEL_16:
  v1[83] = 1;
}

double destroy for DisplayList.InterpolatorLayer.Removed(id *a1)
{

  swift_unknownObjectRelease();

  return result;
}

void DisplayList.InterpolatorLayer.updateOutput(list:frame:contentOffset:version:rasterizationOptions:)(uint64_t a1, uint64_t *a2, int *a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v10 = *(v9 + 7);
  v11 = *(v10 + 16);
  if (!v11)
  {
    return;
  }

  v84 = *a2;
  v17 = *(a3 + 4);
  v18 = *(a3 + 5);
  v81 = *a3;
  v82 = a3[2];
  v83 = *(a3 + 12);
  v19 = *v9;
  v20 = *(v9 + 4);
  v79 = *(v9 + 3);
  v22 = v9[2];
  v21 = v9[3];
  v23 = v9[8];
  v24 = *(v9 + 82);

  if (v11 == 1)
  {
    if (!*(v10 + 16))
    {
LABEL_26:
      __break(1u);
      return;
    }

    v25 = *(v10 + 88);
    if (!v25 || [v25 onlyFades])
    {
      v26 = *(v10 + 32);
      v27 = *(v10 + 40);
      v28 = *(v10 + 44);
      *&v88 = MEMORY[0x1E69E7CC0];
      *&v92 = v26;
      WORD4(v92) = v27;
      HIDWORD(v92) = v28;

      specialized DisplayList.forEachIdentity(_:)(&v92, &v88);
      if (*(v88 + 16))
      {
        specialized MutableCollection<>.sort(by:)(&v88);
        *&v92 = v19;
        WORD4(v92) = v20;
        HIDWORD(v92) = v79;
        v29 = specialized DisplayList.forEachIdentity(_:)(&v92, &v88);

        if ((v29 & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      else
      {
      }

      [*(v10 + 104) evaluateAtTime_];
      v66 = COERCE_UNSIGNED_INT(1.0 - *&v65);
      v67 = *(v10 + 32);
      v68 = *(v10 + 40) | (*(v10 + 44) << 32) | 0x40000000;
      v69 = *(v10 + 48) - v22 + a8;
      v70 = *(v10 + 56) - v21 + a9;
      v71 = v65;
      v72 = v20 | (v79 << 32) | 0x40000000;
      _ss23_ContiguousArrayStorageCy7SwiftUI11DisplayListV4ItemVGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<DisplayList.Item>, &type metadata for DisplayList.Item, MEMORY[0x1E69E6F90]);
      v73 = swift_allocObject();
      *&v88 = v69;
      *(&v88 + 1) = v70;
      *&v89 = a6;
      *(&v89 + 1) = a7;
      *&v90 = v84;
      *(&v90 + 1) = v66;
      *v91 = 0x400000000;
      *&v91[8] = v67;
      v74 = v90;
      v75 = *v91;
      v76 = v88;
      *(v73 + 48) = v89;
      *(v73 + 64) = v74;
      *&v91[16] = v68;
      *&v91[24] = 0;
      *(v73 + 80) = v75;
      *(v73 + 92) = *&v91[12];
      *(v73 + 16) = xmmword_18DDAB4C0;
      *(v73 + 32) = v76;
      *(v73 + 112) = a8;
      *(v73 + 120) = a9;
      *(v73 + 128) = a6;
      *(v73 + 136) = a7;
      *(v73 + 144) = v84;
      *(v73 + 152) = v71;
      *(v73 + 160) = 0x400000000;
      *(v73 + 168) = v19;
      *(v73 + 176) = v72;
      *(v73 + 184) = 0;

      outlined init with copy of DisplayList.Item(&v88, &v92);
      DisplayList.init(_:)(v73, &v85);
      *&v92 = v69;
      *(&v92 + 1) = v70;
      *&v93 = a6;
      *(&v93 + 1) = a7;
      *&v94 = v84;
      *(&v94 + 1) = v66;
      v95 = 0x400000000;
      *v96 = v67;
      *&v96[8] = v68;
      *&v96[16] = 0;
      outlined destroy of DisplayList.Item(&v92);
      v77 = v86;
      v78 = v87;
      *a1 = v85;
      *(a1 + 8) = v77;
      *(a1 + 12) = v78;
      return;
    }
  }

LABEL_8:
  if (v11 > *(v10 + 16))
  {
    __break(1u);
    goto LABEL_26;
  }

  v30 = v10 + 112 * v11;
  v31 = *(v30 - 24);
  if (v31)
  {
    v32 = v17;
    v80 = v21;
    v33 = v24;
    v34 = v23 - *(v30 + 8);
    if (v34 < 0.0)
    {
      v35 = 0.0;
    }

    else
    {
      v35 = v23 - *(v30 + 8);
    }

    v36 = v31;
    *&v37 = v35;
    [v36 boundingRectWithProgress_];
    x = v97.origin.x;
    y = v97.origin.y;
    width = v97.size.width;
    height = v97.size.height;
    IsNull = CGRectIsNull(v97);
    v43 = 0.0;
    v44 = 0.0;
    v45 = 0.0;
    v46 = 0.0;
    if (!IsNull)
    {
      v43 = x;
      v44 = y;
      v45 = width;
      v46 = height;
    }

    v98 = CGRectIntegral(*&v43);
    v47 = v98.origin.x;
    v48 = v98.origin.y;
    v49 = v98.size.width;
    v50 = v98.size.height;
    *&v98.origin.x = v35;
    v51 = [v36 copyContentsWithProgress_];
    v52 = swift_allocObject();
    *(v52 + 16) = v51;
    *(v52 + 24) = v47;
    *(v52 + 32) = v48;
    *(v52 + 40) = v81;
    *(v52 + 44) = v32;
    *(v52 + 45) = v18;
    *(v52 + 48) = v82 | 0x100;
    *(v52 + 52) = v83;
    if (v84)
    {
      v53 = (2 * (((33 * WORD1(v84)) ^ v84) & 0x7FFFLL)) | 1;
    }

    else
    {
      v53 = 0;
    }

    v54 = v52 | 0xC000000000000000;
    v55 = a8 - v22 + v47;
    v56 = a9 - v80 + v48;
    _ss23_ContiguousArrayStorageCy7SwiftUI11DisplayListV4ItemVGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<DisplayList.Item>, &type metadata for DisplayList.Item, MEMORY[0x1E69E6F90]);
    v57 = swift_allocObject();
    *&v92 = v55;
    *(&v92 + 1) = v56;
    *&v93 = v49;
    *(&v93 + 1) = v50;
    *&v94 = v84;
    *(&v94 + 1) = v54;
    v95 = v53;
    *v96 = 0;
    v58 = v94;
    v59 = v92;
    v57[3] = v93;
    v57[4] = v58;
    *&v96[16] = 0;
    *&v96[8] = 0;
    v57[5] = v53;
    *(v57 + 92) = *&v96[4];
    v57[1] = xmmword_18DDA6EB0;
    v57[2] = v59;
    swift_unknownObjectRetain();
    outlined init with copy of DisplayList.Item(&v92, &v88);
    DisplayList.init(_:)(v57, &v88);
    v61 = WORD4(v88);
    v62 = HIDWORD(v88);
    *a1 = v88;
    *(a1 + 8) = v61;
    *(a1 + 12) = v62;
    if (v33)
    {
      *&v60 = v35;
      [v36 maxAbsoluteVelocityWithProgress_];
      v64 = v63;
      specialized static GraphHost.currentHost.getter();
      type metadata accessor for ViewGraph();
      swift_dynamicCastClassUnconditional();
      swift_beginAccess();
      ViewGraph.NextUpdate.maxVelocity(_:)(v64);
      swift_endAccess();
      swift_unknownObjectRelease();

      *&v88 = v55;
      *(&v88 + 1) = v56;
      *&v89 = v49;
      *(&v89 + 1) = v50;
      *&v90 = v84;
      *(&v90 + 1) = v54;
      *&v91[16] = 0;
      *v91 = v53;
      *&v91[24] = 0;
      outlined destroy of DisplayList.Item(&v88);
    }

    else
    {
      *&v88 = v55;
      *(&v88 + 1) = a9 - v80 + v48;
      *&v89 = v49;
      *(&v89 + 1) = v50;
      *&v90 = v84;
      *(&v90 + 1) = v54;
      *&v91[16] = 0;
      *v91 = v53;
      *&v91[24] = 0;
      outlined destroy of DisplayList.Item(&v88);

      swift_unknownObjectRelease();
    }
  }

  else
  {
    *a1 = MEMORY[0x1E69E7CC0];
    *(a1 + 8) = 0;
    *(a1 + 12) = 0;
  }
}

uint64_t sub_18D2D99AC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

double destroy for DisplayList.InterpolatorLayer(void *a1)
{

  swift_unknownObjectRelease();

  return result;
}

double closure #1 in AnyTransition.animation(_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA018DisablesAnimationsS033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0g5(*a1);
  if (!v5 || *(v5 + 72) != 1)
  {
    goto LABEL_11;
  }

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
  if (byte_1ED53C51C != 1)
  {
    if (static Semantics.forced >= v6)
    {
      return result;
    }

    goto LABEL_11;
  }

  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
LABEL_11:

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a1, a3);
  }

  return result;
}

double key path getter for _ValueTransactionModifier.transform : <A>_ValueTransactionModifier<A>@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v6 = (a1 + *(type metadata accessor for _ValueTransactionModifier(0, *(a2 + a3 - 16), *(a2 + a3 - 8), a4) + 36));
  v8 = *v6;
  v7 = v6[1];
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  *a5 = partial apply for specialized closure #1 in StatefulRule<>.update<A>(modify:create:);
  a5[1] = v9;

  return result;
}

uint64_t sub_18D2D9C14()
{

  return swift_deallocObject();
}

uint64_t AnimationBox.shouldMerge<A>(previous:value:time:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v13 = *v6;
  v14 = *(*v6 + 160);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](a1);
  v18 = &v20 - v17;
  (*(v15 + 16))(&v20 - v17, v6 + *(v13 + 176), v14, v16);
  LOBYTE(a5) = (*(*(v13 + 168) + 32))(a1, a2, a3, a4, a5, v14, a6);
  (*(v15 + 8))(v18, v14);
  return a5 & 1;
}

uint64_t FluidSpringAnimation.shouldMerge<A>(previous:value:time:context:)(uint64_t a1, uint64_t a2, double *a3, uint64_t a4, uint64_t a5, double a6)
{
  v12 = type metadata accessor for Optional();
  v49 = *(v12 - 8);
  v50 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v54 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v48 - v15;
  v17 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v51 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v48 - v21;
  v24 = type metadata accessor for SpringState(0, a4, a5, v23);
  v55 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v48 - v25;
  v27 = *v57;
  v53 = type metadata accessor for AnimationContext(0, a4, a5, v28);
  AnimationContext.springState.getter(v53, v29, v30, v31);
  v32 = *a3;
  v33 = *(a3 + 1);
  v34 = *(a3 + 16);
  v57 = a3;
  v35 = *(a3 + 17);
  v59[0] = v32;
  v59[1] = v33;
  v60 = v34;
  v61 = v35;

  v36 = a2;
  v56 = a1;
  v52 = a5;
  Animation.velocity<A>(value:time:context:)(a2, v59, a1, a4, a5);

  v37 = *(v17 + 48);
  v38 = v37(v16, 1, a4);
  v58 = v24;
  if (v38 == 1)
  {
    (*(v17 + 16))(v22, &v26[*(v24 + 36)], a4);
    if (v37(v16, 1, a4) != 1)
    {
      (*(v49 + 8))(v16, v50);
    }
  }

  else
  {
    (*(v17 + 32))(v22, v16, a4);
  }

  v39 = *(v17 + 40);
  v39(&v26[v58[9]], v22, a4);
  v40 = v54;
  Animation.animate<A>(value:time:context:)(v36, v57, v56, a4, v52, v54, a6);
  if (v37(v40, 1, a4) == 1)
  {
    v41 = v51;
    (*(v17 + 16))();
    if (v37(v40, 1, a4) != 1)
    {
      (*(v49 + 8))(v40, v50);
    }
  }

  else
  {
    v41 = v51;
    (*(v17 + 32))(v51, v40, a4);
  }

  v39(v26, v41, a4);
  v42 = v58;
  *&v26[v58[11]] = a6;
  *&v26[v42[12]] = a6;
  type metadata accessor for InternalAnimationBox<FluidSpringAnimation>(0, &lazy cache variable for type metadata for AnimationBox<FluidSpringAnimation>, lazy protocol witness table accessor for type FluidSpringAnimation and conformance FluidSpringAnimation, type metadata accessor for AnimationBox);
  v43 = swift_dynamicCastClass();
  if (v43)
  {
    v46 = *(v43 + 16);
    if (v27 != v46)
    {
      *&v26[v42[14]] = v46 - v27;
      *&v26[v42[13]] = a6;
    }
  }

  specialized AnimationContext.springState.setter(v26, v53, v44, v45);
  (*(v55 + 8))(v26, v42);
  return 1;
}

uint64_t _s7SwiftUI21MaterialBackdropProxyV14removeObserveryyAA0cdG0_pFyAC7Storage33_DEF3755CDC6B87C0368876C9F497EC3DLLC4DataVzYuYTXEfU_(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  v3 = *(v2 + 16);
  if (v3)
  {
    v5 = 0;
    v6 = v2 + 32;
    while (v5 < *(v2 + 16))
    {
      outlined init with copy of MaterialBackdropProxy.Observer(v6, v8);
      Strong = swift_unknownObjectWeakLoadStrong();
      result = outlined destroy of weak GestureGraphDelegate?(v8);
      if (Strong)
      {
        result = swift_unknownObjectRelease();
        if (Strong == a2)
        {
          specialized Array.remove(at:)(v5, v8);
          return outlined destroy of weak GestureGraphDelegate?(v8);
        }
      }

      ++v5;
      v6 += 16;
      if (v3 == v5)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

double specialized SDFLayer.backdropLayer(_:didChangeLuma:)(double result)
{
  v2 = result;
  *&result = roundf(v2 * 32.0) * 0.03125;
  if (*(v1 + OBJC_IVAR____TtC7SwiftUI8SDFLayer_currentLuminance) != *&result)
  {
    *(v1 + OBJC_IVAR____TtC7SwiftUI8SDFLayer_currentLuminance) = LODWORD(result);
    v3 = *(v1 + OBJC_IVAR____TtC7SwiftUI8SDFLayer_backdropObserver);
    if (v3)
    {
      v4 = LODWORD(result);
      v5 = *(*v3 + 80);

      v5(v4);
    }
  }

  return result;
}

uint64_t _s7SwiftUI23UserDefaultKeyedFeaturePAAE9isEnabledSbvgZAA18LogForEachSlowPath33_1A3DD35AB7F6976908CD7AF959F34D1FLLV_Ttg5()
{
  swift_beginAccess();
  v0 = static LogForEachSlowPath.cachedValue;
  if (static LogForEachSlowPath.cachedValue == 2)
  {
    if (one-time initialization token for defaults != -1)
    {
      swift_once();
    }

    v1 = static LogForEachSlowPath.defaults;
    v2 = MEMORY[0x193ABEC20](0xD000000000000012, 0x800000018DD771D0);
    v3 = [v1 objectForKey_];

    if (v3)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      _sypSgWOhTm_1(v6, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_0);
      v4 = MEMORY[0x193ABEC20](0xD000000000000012, 0x800000018DD771D0);
      v0 = [v1 BOOLForKey_];

      static LogForEachSlowPath.cachedValue = v0;
    }

    else
    {
      memset(v6, 0, sizeof(v6));
      _sypSgWOhTm_1(v6, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_0);
      v0 = 0;
      static LogForEachSlowPath.cachedValue = 0;
    }
  }

  return v0 & 1;
}

id one-time initialization function for defaults()
{
  if (one-time initialization token for swiftUI != -1)
  {
    swift_once();
  }

  v0 = static NSUserDefaults.swiftUI;
  if (static NSUserDefaults.swiftUI)
  {
    v1 = static NSUserDefaults.swiftUI;
  }

  else
  {
    v1 = [objc_opt_self() standardUserDefaults];
    v0 = 0;
  }

  static LogForEachSlowPath.defaults = v1;

  return v0;
}

uint64_t MakeSection.value.getter@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = AGGraphGetCurrentAttribute();
  v7 = *MEMORY[0x1E698D3F8];
  if (result == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    v9 = HIDWORD(a2);
    v10 = *(a1 + 16);
    v11 = MEMORY[0x1E69E7CC0];
    if (v10)
    {
      v22 = HIDWORD(a2);
      v23 = a2;
      v26 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
      type metadata accessor for ViewList();
      v11 = v26;
      v12 = (a1 + 32);
      do
      {
        v13 = *v12++;
        Value = AGGraphGetValue();
        outlined init with copy of AnyTrackedValue(Value, &v24);
        *&v25[24] = v13;
        v26 = v11;
        v16 = *(v11 + 16);
        v15 = *(v11 + 24);
        if (v16 >= v15 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
          v11 = v26;
        }

        *(v11 + 16) = v16 + 1;
        v17 = (v11 + 48 * v16);
        v18 = v24;
        v19 = *v25;
        *(v17 + 60) = *&v25[12];
        v17[2] = v18;
        v17[3] = v19;
        --v10;
      }

      while (v10);
      LOBYTE(a2) = v23;
      LODWORD(v9) = v22;
    }

    if (v7 == v9)
    {
      v20 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v20 = *AGGraphGetValue();
    }

    a3[3] = &type metadata for _ViewList_Section;
    lazy protocol witness table accessor for type _ViewList_Section and conformance _ViewList_Section();
    a3[4] = v21;
    result = swift_allocObject();
    *a3 = result;
    *(result + 16) = v8;
    *(result + 24) = v11;
    *(result + 32) = v20;
    *(result + 40) = a2 & 1;
  }

  return result;
}

uint64_t sub_18D2DAA54()
{

  return swift_deallocObject();
}

uint64_t CountViews.MakeDynamicContent.value.getter@<X0>(uint64_t a2@<X1>, char *a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(char *, uint64_t, uint64_t)@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>)
{
  v15 = a2;
  if (*AGGraphGetValue() < 1)
  {
    v18 = 1;
  }

  else
  {
    v17.n128_f64[0] = CountViews.CountHelper.value.getter(v15, a3, a4 & 1, a5, a6, a7, a8, a9);
    v18 = 0;
  }

  v19 = *(*(a6 - 8) + 56);

  return v19(a9, v18, 1, a6, v17);
}

void type metadata accessor for FontBox<Font.SystemProvider>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for FontBox<Font.SystemProvider>)
  {
    lazy protocol witness table accessor for type Font.SystemProvider and conformance Font.SystemProvider();
    v4 = type metadata accessor for FontBox(a1, &type metadata for Font.SystemProvider, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for FontBox<Font.SystemProvider>);
    }
  }
}

uint64_t one-time initialization function for list()
{
  type metadata accessor for FontBox<Font.SystemProvider>(0);
  result = swift_allocObject();
  *(result + 16) = 0x4034000000000000;
  *(result + 24) = 0x3FD3333333333333;
  *(result + 32) = 0;
  *(result + 33) = 3588;
  *(result + 40) = 0;
  *(result + 48) = 1;
  static SystemStyleMetrics.list = result;
  byte_1EAB0F2A0 = 1;
  qword_1EAB0F2A8 = 0;
  return result;
}

BOOL specialized static Text.Suffix.Storage.== infix(_:_:)(unint64_t *a1, int64x2_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *a2;
  v7 = a2[1];
  v23[0] = *a1;
  v23[1] = v3;
  v23[2] = v5;
  v23[3] = v4;
  v24 = v6;
  v25 = v7;
  if (!(v5 >> 62))
  {
    v8 = v7.i64[0];
    if (!(v7.i64[0] >> 62))
    {
      v9 = v7.i64[1];
      if ((v5 & 1) == 0)
      {
        if ((v7.i8[0] & 1) == 0)
        {
          v11 = v6.i64[1];
          v10 = v6.i64[0];
          if (__PAIR128__(v3, v2) == *&v6)
          {
LABEL_29:
            outlined copy of Text.Suffix.Storage(v2, v3, v8, v9);
            outlined copy of Text.Suffix.Storage(v2, v3, v5, v4);
            goto LABEL_31;
          }

          goto LABEL_30;
        }

        goto LABEL_24;
      }

      goto LABEL_10;
    }

LABEL_22:
    v16 = v6.i64[1];
    v15 = v6.i64[0];
    v17 = v7.i64[1];
    v8 = v7.i64[0];
LABEL_25:
    outlined copy of Text.Suffix.Storage(v15, v16, v8, v17);
    outlined copy of Text.Suffix.Storage(v2, v3, v5, v4);
    goto LABEL_26;
  }

  if (v5 >> 62 == 1)
  {
    v8 = v7.i64[0];
    if (v7.i64[0] >> 62 == 1)
    {
      v9 = v7.i64[1];
      if ((v5 & 1) == 0)
      {
        if ((v7.i8[0] & 1) == 0)
        {
          v11 = v6.i64[1];
          v10 = v6.i64[0];
          if (__PAIR128__(v3, v2) == *&v6)
          {
            goto LABEL_29;
          }

LABEL_30:
          v19 = v8;
          v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
          outlined copy of Text.Suffix.Storage(v10, v11, v19, v9);
          outlined copy of Text.Suffix.Storage(v2, v3, v5, v4);
          if (v20)
          {
LABEL_31:
            _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI4TextV8ModifierO_Tt1g5(v4, v9);
            v22 = v21;
            outlined destroy of ResolvedOptionalTextFilter(v23, type metadata accessor for (Text.Suffix.Storage, Text.Suffix.Storage));
            return (v22 & 1) != 0;
          }

LABEL_26:
          outlined destroy of ResolvedOptionalTextFilter(v23, type metadata accessor for (Text.Suffix.Storage, Text.Suffix.Storage));
          return 0;
        }

        goto LABEL_24;
      }

LABEL_10:
      if (v8)
      {
        v12 = v6.i64[0];
        v13 = *(*v2 + 96);
        outlined copy of Text.Suffix.Storage(v6.i64[0], v6.i64[1], v8, v9);
        v14 = outlined copy of Text.Suffix.Storage(v2, v3, v5, v4);
        if (v13(v12, v14))
        {
          goto LABEL_31;
        }

        goto LABEL_26;
      }

LABEL_24:
      v16 = v6.i64[1];
      v15 = v6.i64[0];
      v17 = v9;
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  if (v5 != 0x8000000000000000 || v4 | v3 | v2)
  {
    if (v7.i64[0] >> 62 != 2 || (vaddvq_s32(vbicq_s8(xmmword_18DDA9F30, vuzp1q_s32(vceqq_s64(v6, xmmword_18DD85500), vceqq_s64(v7, xmmword_18DD85510)))) & 0xF) != 0)
    {
      goto LABEL_22;
    }
  }

  else if (v7.i64[0] >> 62 != 2 || v7.i64[0] != 0x8000000000000000 || v6.i64[1] | v6.i64[0] | v7.i64[1])
  {
    goto LABEL_22;
  }

  outlined destroy of ResolvedOptionalTextFilter(v23, type metadata accessor for (Text.Suffix.Storage, Text.Suffix.Storage));
  return 1;
}

uint64_t outlined destroy of ResolvedOptionalTextFilter(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for (Text.Suffix.Storage, Text.Suffix.Storage)()
{
  if (!lazy cache variable for type metadata for (Text.Suffix.Storage, Text.Suffix.Storage))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Text.Suffix.Storage, Text.Suffix.Storage));
    }
  }
}

uint64_t _s7SwiftUI19ViewTraitCollectionVy5ValueQzxmcAA01_cD3KeyRzluisAA011IsSectioneddG0V_Tt0g5(char a1)
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

        type metadata accessor for ViewTraitCollection.AnyTrait<LeafContentType.TraitKey>(0, &lazy cache variable for type metadata for ViewTraitCollection.AnyTrait<IsSectionedTraitKey>, &type metadata for IsSectionedTraitKey, &protocol witness table for IsSectionedTraitKey, type metadata accessor for ViewTraitCollection.AnyTrait);
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

  while (v10 != &type metadata for IsSectionedTraitKey);
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

uint64_t sub_18D2DB268(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)(0, &lazy cache variable for type metadata for (Locale.Language, TypesettingLanguage.Flags), MEMORY[0x1E6969720], &type metadata for TypesettingLanguage.Flags);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t partial apply for specialized closure #1 in Attribute.subscript.getter@<X0>(void *a2@<X8>)
{
  result = swift_getAtKeyPath();
  *a2 = v4;
  return result;
}

double outlined consume of Text.Suffix.Storage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0x8000000000000000) == 0)
  {
    outlined consume of Text.Storage(a1, a2, a3 & 1);
  }

  return result;
}

uint64_t _s7SwiftUI19ViewTraitCollectionVy5ValueQzxmcAA01_cD3KeyRzluisAA05DepthdG0V_Tt0g5(uint64_t a1)
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

        type metadata accessor for ViewTraitCollection.AnyTrait<LeafContentType.TraitKey>(0, &lazy cache variable for type metadata for ViewTraitCollection.AnyTrait<DepthTraitKey>, &type metadata for DepthTraitKey, &protocol witness table for DepthTraitKey, type metadata accessor for ViewTraitCollection.AnyTrait);
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

  while (v10 != &type metadata for DepthTraitKey);
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
    result = (*(v13 + 24))(&v22, MEMORY[0x1E69E6530], v12, v13);
LABEL_13:
    *v2 = v5;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t static _TagTraitWritingModifier._makeViewList(modifier:inputs:body:)(int *a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v32 = *MEMORY[0x1E69E9840];
  v10 = *a1;
  outlined init with copy of _ViewListInputs(a2, v30);
  v11 = *(a2 + 64);
  v25[0] = v10;
  v25[1] = v11;
  v27 = type metadata accessor for _TagTraitWritingModifier.AddTrait(0, a5, a6, v12);
  swift_getWitnessTable(protocol conformance descriptor for _TagTraitWritingModifier<A>.AddTrait, v27);
  v28 = v13;
  type metadata accessor for Attribute<ViewTraitCollection>();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v25, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_16, v26, v27, MEMORY[0x1E69E73E0], v14, MEMORY[0x1E69E7410], v15);
  v31 = v24;
  v17 = type metadata accessor for TagValueTraitKey(0, a5, a6, v16);
  swift_getWitnessTable(protocol conformance descriptor for TagValueTraitKey<A>, v17);
  _ViewListInputs.addTraitKey<A>(_:)(v17, v17);
  v18 = type metadata accessor for Optional();
  v29 = a6;
  swift_getWitnessTable(MEMORY[0x1E69E7C78], v18, &v29);
  v21 = type metadata accessor for TagValueTraitKey(0, v18, v19, v20);
  swift_getWitnessTable(protocol conformance descriptor for TagValueTraitKey<A>, v21);
  v22 = _ViewListInputs.addTraitKey<A>(_:)(v21, v21);
  a3(v22, v30);
  return outlined destroy of _ViewListInputs(v30);
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance _TagTraitWritingModifier<A>.AddTrait(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for _TagTraitWritingModifier<A>.AddTrait, a1);

  return static AsyncAttribute.flags.getter();
}

uint64_t _TagTraitWritingModifier.AddTrait.value.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v48 = a4;
  v7 = type metadata accessor for Optional();
  v51 = a3;
  swift_getWitnessTable(MEMORY[0x1E69E7C78], v7, &v51);
  v46 = v8;
  v47 = v7;
  v10 = type metadata accessor for TagValueTraitKey.Value(0, v7, v8, v9);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v45 = &v40 - v11;
  v13 = type metadata accessor for TagValueTraitKey.Value(0, a2, a3, v12);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v40 - v14;
  v17 = type metadata accessor for _TagTraitWritingModifier(0, a2, a3, v16);
  v43 = *(v17 - 8);
  v44 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v40 - v18;
  v20 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a1;
  _TagTraitWritingModifier.AddTrait.traits.getter(a1, &v49);
  v25 = v49;
  if (!v49)
  {
    v25 = MEMORY[0x1E69E7CC0];
  }

  v50 = v25;
  _TagTraitWritingModifier.AddTrait.modifier.getter(a2, a3, v24, v19);
  (*(v20 + 32))(v23, v19, a2);
  v41 = *(v20 + 16);
  v41(v15, v23, a2);
  v40 = *(v20 + 56);
  v40(v15, 0, 1, a2);
  v27 = type metadata accessor for TagValueTraitKey(0, a2, a3, v26);
  swift_getWitnessTable(protocol conformance descriptor for TagValueTraitKey<A>, v27);
  ViewTraitCollection.subscript.setter(v15, v27, v27, v28);
  v29 = 1;
  _TagTraitWritingModifier.AddTrait.modifier.getter(a2, a3, v30, v19);
  v31 = v19[*(v44 + 36)];
  v32 = v19;
  v33 = v45;
  (*(v43 + 8))(v32);
  if (v31 == 1)
  {
    v41(v33, v23, a2);
    v40(v33, 0, 1, a2);
    v29 = 0;
  }

  v34 = v47;
  v35 = swift_checkMetadataState();
  (*(*(v35 - 8) + 56))(v33, v29, 1, v35);
  v37 = type metadata accessor for TagValueTraitKey(0, v34, v46, v36);
  swift_getWitnessTable(protocol conformance descriptor for TagValueTraitKey<A>, v37);
  ViewTraitCollection.subscript.setter(v33, v37, v37, v38);
  result = (*(v20 + 8))(v23, a2);
  *v48 = v50;
  return result;
}

uint64_t _TagTraitWritingModifier.AddTrait.modifier.getter@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = type metadata accessor for _TagTraitWritingModifier(0, a2, a3, a4);
  Value = AGGraphGetValue();
  v8 = *(*(v6 - 8) + 16);

  return v8(a5, Value, v6);
}

double SectionAccumulator.formResult(from:listAttribute:)(void *a1, unint64_t a2)
{
  v3 = v2;
  _s7SwiftUI8ViewList_pSgWOhTm_0(v3 + 112, &lazy cache variable for type metadata for ViewList?, &lazy cache variable for type metadata for ViewList, &protocol descriptor for ViewList);
  outlined init with copy of AnyTrackedValue(a1, v3 + 112);
  specialized static Update.begin()();
  v17 = 0;
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v16 = 2;
  v13 = 0;
  v14 = 0;
  v12[2] = v3;
  (*(v7 + 64))(&v17, &v16, a2 | ((HIDWORD(a2) & 1) << 32), &v13, partial apply for closure #1 in SectionAccumulator.formResult(from:listAttribute:), v12, v6, v7);
  if (*(v3 + 104) < *(v3 + 184))
  {
    SectionAccumulator.appendImplicitSection()();
  }

  if (!*(*(v3 + 160) + 16))
  {
    if (*(v3 + 184) < 1)
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      type metadata accessor for _ContiguousArrayStorage<LayoutProxyAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<SectionAccumulator.Item>, &type metadata for SectionAccumulator.Item);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_18DDA6EB0;
      outlined init with copy of SectionAccumulator.RowIDAccumulator(v3, &v13);
      v9 = v15;
      outlined destroy of SectionAccumulator.RowIDAccumulator(&v13);
      if (one-time initialization token for _lock != -1)
      {
        swift_once();
      }

      v10 = static Update._lock;
      _MovableLockLock(static Update._lock);
      specialized static Update.begin()();
      closure #1 in static SectionAccumulator.Item.implicitSentinel(_:contentSubgraph:accumulationStrategy:)(a1, 0, v9, v8 + 32);
      static Update.end()();
      _MovableLockUnlock(v10);
    }

    *(v3 + 160) = v8;
  }

  static Update.end()();
  _s7SwiftUI8ViewList_pSgWOhTm_0(v3 + 112, &lazy cache variable for type metadata for ViewList?, &lazy cache variable for type metadata for ViewList, &protocol descriptor for ViewList);
  result = 0.0;
  *(v3 + 112) = 0u;
  *(v3 + 128) = 0u;
  *(v3 + 144) = 0;
  return result;
}

void type metadata accessor for ViewList?(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = type metadata accessor for AnyTrackedValue(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t SectionAccumulator.apply(start:style:node:transform:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v153 = a1;
  v6 = v182;
  v7 = &v163;
  v195 = *MEMORY[0x1E69E9840];
  v8 = *a2;
  v9 = *a4;
  LODWORD(v154) = *(a4 + 8);
  outlined init with copy of _ViewList_Node(a3, &v189);
  if (v194 > 1u)
  {
    if (v194 == 2)
    {
      v21 = 0;
      v22 = v189.n128_u64[0];
      v23 = *(v189.n128_u64[0] + 16);
      v7 = v189.n128_u64[0] + 32;
      while (1)
      {
        if (v21 == v23)
        {
          v21 = v23;
          memset(v182, 0, 44);
        }

        else
        {
          if ((v21 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_102:
            __break(1u);
            goto LABEL_103;
          }

          if (v21 >= *(v22 + 16))
          {
            goto LABEL_102;
          }

          outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v7 + 48 * v21++, v182);
        }

        *(v164 + 12) = *&v182[28];
        v164[0] = *&v182[16];
        v163 = *v182;
        if (!*&v182[24])
        {
          break;
        }

        v24 = DWORD2(v164[1]);
        v178 = v8;
        outlined init with take of _ViewList_Elements(&v163, v182);
        *&v182[40] = v24;
        v182[44] = 0;
        v182[93] = 0;
        v158.n128_u64[0] = v9;
        v158.n128_u8[8] = v154;
        v4 = SectionAccumulator.apply(start:style:node:transform:)(v153, &v178, v182, &v158);
        outlined destroy of _ViewList_Node(v182);
        if ((v4 & 1) == 0)
        {

          v20 = 0;
          return v20 & 1;
        }
      }

      goto LABEL_99;
    }

    v7 = v189.n128_u32[0];
    v29 = v189.n128_u64[1];
    v11 = v190;
    v30 = BYTE8(v190);
    if (*(v4 + 104) < *(v4 + 184))
    {
      SectionAccumulator.appendImplicitSection()();
    }

    *v182 = v7;
    *&v182[8] = v29;
    *&v182[16] = v11;
    v182[24] = v30;
    *&v163 = 2;
    v4 = v182;
    v31 = _ViewList_Section.count(style:)(&v163);
    if (v31 >= 1)
    {
      v153 = v31;
      if (*(v29 + 16) >= 2uLL)
      {
        outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v29 + 80, v182);
        outlined init with take of _ViewList_Elements(v182, &v163);
        v32 = *(&v164[0] + 1);
        v33 = *&v164[1];
        __swift_project_boxed_opaque_existential_1(&v163, *(&v164[0] + 1));
        v146 = ViewList.count.getter(v32, v33);
        __swift_destroy_boxed_opaque_existential_1(&v163);
        if ((*(v5 + 176) & 1) != 0 && *(v5 + 168))
        {
          *v182 = v9;
          v182[8] = v154;
          _ViewList_TemporarySublistTransform.wrapSubgraphs(into:)((v5 + 168));
        }

        *(&v159 + 1) = &type metadata for _ViewList_Section;
        lazy protocol witness table accessor for type _ViewList_Section and conformance _ViewList_Section();
        *&v160 = v34;
        v35 = swift_allocObject();
        v158.n128_u64[0] = v35;
        *(v35 + 16) = v7;
        *(v35 + 24) = v29;
        *(v35 + 32) = v11;
        *(v35 + 40) = v30;
        v36 = *(v5 + 152);
        v150 = v36;
        v151 = v7;
        if (v154)
        {
          v4 = *v9;
          v7 = *(v9 + 8);
          v37 = v36;

          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();
        }

        else
        {
          v163 = MEMORY[0x1E69E7CC0];
          if (v9)
          {
            v60 = v36;
            outlined init with copy of _ViewList_TemporarySublistTransform.ItemNode(v9, v182);
            v61 = v5;
            v62 = *&v182[48];
            v63 = *&v182[56] & ~(*&v182[56] >> 63);
            swift_bridgeObjectRetain_n();
            swift_bridgeObjectRetain_n();
            v64 = v60;
            *&v163 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v63, 0, MEMORY[0x1E69E7CC0]);
            outlined destroy of _AnyAnimatableData(v182);
            *(&v163 + 1) = v62;
            v5 = v61;
            do
            {
              outlined init with copy of AnyTrackedValue(v9 + 8, v182);
              LOBYTE(v178) = 0;
              v65 = *&v182[24];
              v66 = *&v182[32];
              v67 = __swift_project_boxed_opaque_existential_1(v182, *&v182[24]);
              specialized _ViewList_SublistTransform.push(_:flags:)(v67, &v178, &v163, v65, v66);
              __swift_destroy_boxed_opaque_existential_1(v182);
              v9 = *v9;
            }

            while (v9);
          }

          else
          {
            v73 = v36;
            swift_bridgeObjectRetain_n();
            swift_bridgeObjectRetain_n();
          }

          specialized MutableCollection<>.reverse()();
          v7 = *(&v163 + 1);
          v4 = v163;
        }

        if (*(v29 + 16) >= 2uLL)
        {
          v147 = v7;
          v148 = v4;
          v154 = v11;
          outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v29 + 80, v182);
          outlined init with take of _ViewList_Elements(v182, &v178);
          outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v29 + 80, v182);
          v7 = *&v182[40];
          __swift_destroy_boxed_opaque_existential_1(v182);
          outlined init with copy of SectionAccumulator.RowIDAccumulator(v5, v182);
          v74 = v182[97];
          outlined destroy of SectionAccumulator.RowIDAccumulator(v182);
          v149 = v30;
          if (v74)
          {
            v75 = v5;
            outlined init with copy of AnyTrackedValue(&v178, &v175);
            *v182 = _ss15ContiguousArrayV12arrayLiteralAByxGxd_tcfC7SwiftUI29AbstractHomogeneousCollectionC_Tt0g5(MEMORY[0x1E69E7CC0]);
            memset(&v182[8], 0, 89);
            v76 = v176;
            v77 = v177;
            __swift_project_boxed_opaque_existential_1(&v175, v176);
            (*(v77 + 48))(v182, v76, v77);
            outlined init with copy of HeterogeneousViewIDsAccumulator(v182, &v163);
            HeterogeneousViewIDsAccumulator.finalize()(&v172);
            outlined destroy of HeterogeneousViewIDsAccumulator(v182);
            v4 = *(&v172 + 1);
            v78 = v172;
            v7 = v173;
            v79 = v174;
            __swift_destroy_boxed_opaque_existential_1(&v175);
            type metadata accessor for _ContiguousArrayStorage<LayoutProxyAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<SectionAccumulator.RowIDs.Chunk>, &type metadata for SectionAccumulator.RowIDs.Chunk);
            v80 = swift_allocObject();
            v9 = v80;
            *(v80 + 16) = xmmword_18DDA6EB0;
            v81 = *(v4 + 16);
            if (v81)
            {
              v81 = *(v4 + 4 * v81 + 28);
            }

            *(v80 + 32) = v78;
            *(v80 + 40) = v4;
            *(v80 + 48) = v7;
            *(v80 + 56) = v79;
            *(v80 + 64) = 3;
            *(v80 + 72) = v81;
            *(v80 + 80) = 0;
          }

          else
          {
            type metadata accessor for _ContiguousArrayStorage<LayoutProxyAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<SectionAccumulator.RowIDs.Chunk>, &type metadata for SectionAccumulator.RowIDs.Chunk);
            v9 = swift_allocObject();
            *(v9 + 16) = xmmword_18DDA6EB0;
            outlined init with copy of AnyTrackedValue(&v178, v182);
            v82 = *&v182[24];
            v83 = *&v182[32];
            __swift_project_boxed_opaque_existential_1(v182, *&v182[24]);
            v84 = (*(v83 + 40))(v82, v83);
            if (v84)
            {
              v4 = v84;
              v75 = v5;
              v7 = MEMORY[0x1E69E7CC0];
              v85 = v146;
              if (*(MEMORY[0x1E69E7CC0] + 16))
              {
                type metadata accessor for _ViewList_ID._Views<SectionAccumulator.TransformedIDs>(0);
                v86 = swift_allocObject();
                v87 = 0;
                *(v86 + 24) = v4;
                *(v86 + 32) = v7;
                *(v86 + 40) = 0;
                *(v86 + 16) = 1;
                v4 = v86;
              }

              else
              {

                v87 = 0;
              }
            }

            else
            {
              v75 = v5;
              *&v172 = 0;
              v85 = v146;
              v157 = v146;
              v88 = MEMORY[0x1E69E7CC0];
              v156 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v157 & ~(v157 >> 63), 0, MEMORY[0x1E69E7CC0]);
              v163 = v88;
              v89 = *&v182[24];
              v145 = *&v182[32];
              v90 = __swift_project_boxed_opaque_existential_1(v182, *&v182[24]);
              *&v175 = &v163;
              v87 = 1;
              BYTE8(v175) = 1;
              MEMORY[0x1EEE9AC00](v90);
              v143 = &v156;
              v144 = &v157;
              v155 = 0;
              ViewList.applyIDs(from:listAttribute:transform:to:)(&v172, v7, &v175, closure #1 in closure #1 in SectionAccumulator.RowIDs.Chunk.init(list:listAttribute:transform:start:count:lowerBound:)partial apply, v142, v89, v145);

              v4 = v156;
            }

            *(v9 + 32) = v4;
            *(v9 + 40) = 0;
            *(v9 + 48) = 0;
            *(v9 + 56) = 0;
            *(v9 + 64) = v87;
            *(v9 + 72) = v85;
            *(v9 + 80) = 0;
            __swift_destroy_boxed_opaque_existential_1(v182);
          }

          __swift_destroy_boxed_opaque_existential_1(&v178);
          if (*(v29 + 16))
          {
            outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v29 + 32, v182);
            outlined init with take of _ViewList_Elements(v182, &v163);
            v101 = *(&v164[0] + 1);
            v102 = *&v164[1];
            v103 = __swift_project_boxed_opaque_existential_1(&v163, *(&v164[0] + 1));
            v104 = v101;
            v4 = v103;
            v146 = ViewList.count.getter(v104, v102);
            if (*(v29 + 16) >= 3uLL)
            {
              outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v29 + 128, v182);
              outlined init with take of _ViewList_Elements(v182, &v178);
              v105 = v180;
              v106 = v181;
              __swift_project_boxed_opaque_existential_1(&v178, v180);
              v107 = ViewList.count.getter(v105, v106);
              v152 = v75;
              v7 = (v75 + 24);
              v108 = v75[24];
              type metadata accessor for _ContiguousArrayStorage<LayoutProxyAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ViewTraitCollection>, &type metadata for ViewTraitCollection);
              v109 = swift_allocObject();
              *(v109 + 16) = xmmword_18DDA6EB0;
              v110 = v154;
              *(v109 + 32) = v154;
              *v182 = v108;

              specialized Array.append<A>(contentsOf:)(v109);

              v111 = *v182;
              v182[0] = 0;
              outlined init with take of _ViewList_Elements(&v158, &v182[8]);
              *&v182[48] = v150;
              *&v182[56] = v151;
              *&v182[64] = v29;
              *&v182[72] = v110;
              v182[80] = v149;
              *&v182[88] = v148;
              *&v182[96] = v147;
              v183 = v9;
              v184 = v146;
              v185 = v107;
              v186 = v151;
              v187 = 0;
              v188 = v111;
              __swift_destroy_boxed_opaque_existential_1(&v178);
              __swift_destroy_boxed_opaque_existential_1(&v163);
              outlined init with copy of SectionAccumulator.Item(v182, &v163);
              v4 = *(v7 - 32);
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                goto LABEL_79;
              }

              goto LABEL_108;
            }

            goto LABEL_107;
          }

          goto LABEL_106;
        }

        goto LABEL_105;
      }

      goto LABEL_104;
    }

    *(v5 + 104) = *(v5 + 184);
    v46 = *(v5 + 160);
    v47 = v5;
    v5 = *(v46 + 2);
    if (!v5)
    {
      v70 = *(v47 + 192);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v70 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v70 + 2) + 1, 1, v70);
      }

      v72 = *(v70 + 2);
      v71 = *(v70 + 3);
      if (v72 >= v71 >> 1)
      {
        v70 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v71 > 1), v72 + 1, 1, v70);
      }

      *(v70 + 2) = v72 + 1;
      *&v70[8 * v72 + 32] = v11;

      *(v47 + 192) = v70;
      goto LABEL_99;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_36:
      if (v5 > *(v46 + 2))
      {
        __break(1u);
      }

      else
      {
        v48 = v46 + 152 * v5;
        v49 = *(v48 + 3);
        v5 = (v48 + 24);
        v30 = v49;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v5 = v49;
        if (isUniquelyReferenced_nonNull_native)
        {
LABEL_38:
          v52 = *(v30 + 2);
          v51 = *(v30 + 3);
          if (v52 >= v51 >> 1)
          {
            v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1, v30);
            *v5 = v30;
          }

          *(v30 + 2) = v52 + 1;
          *&v30[8 * v52 + 32] = v11;

          *(v47 + 160) = v46;
          goto LABEL_99;
        }
      }

      v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v30 + 2) + 1, 1, v30);
      *v5 = v30;
      goto LABEL_38;
    }

LABEL_112:
    v46 = specialized _ArrayBuffer._consumeAndCreateNew()(v46);
    goto LABEL_36;
  }

  if (v194)
  {
    v160 = v191;
    v161 = v192;
    v162[0] = *v193;
    *(v162 + 13) = *&v193[13];
    v158 = v189;
    v159 = v190;
    *v182 = v9;
    v182[8] = v154;
    _ViewList_TemporarySublistTransform.apply(sublist:)(&v158, v189);
    v9 = v158.n128_i64[1];
    v4 = SectionAccumulator.RowIDAccumulator.count.getter();
    outlined init with copy of SectionAccumulator.RowIDAccumulator(v5, v182);
    if ((v182[97] & 1) == 0)
    {
      v6 = v5;
      v38 = *v182;
      v7 = *(&v159 + 1);
      v39 = v159;

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_29;
      }

      goto LABEL_110;
    }

    v165 = *&v182[48];
    v166 = *&v182[64];
    v167 = *&v182[80];
    LOBYTE(v168) = v182[96];
    v163 = *v182;
    v164[0] = *&v182[16];
    v164[1] = *&v182[32];
    v4 = &v158;
    _ViewList_Sublist.appendViewIDs(into:)(&v163);
    outlined destroy of _ViewList_Sublist(&v158);
    outlined destroy of SectionAccumulator.RowIDAccumulator(v5);
    v25 = v165;
    v26 = v167;
    *(v5 + 64) = v166;
    *(v5 + 80) = v26;
    v27 = v164[0];
    v28 = v164[1];
    *v5 = v163;
    *(v5 + 16) = v27;
    *(v5 + 96) = v168;
    *(v5 + 32) = v28;
    *(v5 + 48) = v25;
    *(v5 + 97) = 1;
    while (1)
    {
      v43 = *(v5 + 184);
      v44 = __OFADD__(v43, v9);
      v45 = v43 + v9;
      if (!v44)
      {
        *(v5 + 184) = v45;
        goto LABEL_99;
      }

LABEL_103:
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
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 16) + 1, 1, v4);
LABEL_79:
      v113 = *(v4 + 16);
      v112 = *(v4 + 24);
      v38 = (v113 + 1);
      if (v113 >= v112 >> 1)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v112 > 1), v113 + 1, 1, v4);
      }

      *(v4 + 16) = v38;
      v114 = v4 + 152 * v113;
      v115 = v164[0];
      *(v114 + 32) = v163;
      *(v114 + 48) = v115;
      v116 = v164[1];
      v117 = v165;
      v118 = v167;
      *(v114 + 96) = v166;
      *(v114 + 112) = v118;
      *(v114 + 64) = v116;
      *(v114 + 80) = v117;
      v119 = v168;
      v120 = v169;
      v121 = v170;
      *(v114 + 176) = v171;
      *(v114 + 144) = v120;
      *(v114 + 160) = v121;
      *(v114 + 128) = v119;
      v39 = v152;
      v152[20] = v4;
      v122 = swift_isUniquelyReferenced_nonNull_native();
      v4 = v39[24];
      if (v122)
      {
        v123 = *(v4 + 16);
        v4 = v7;
        specialized Array.replaceSubrange<A>(_:with:)(0, v123);
        outlined destroy of SectionAccumulator.Item(v182);
      }

      else
      {
        v38 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI19ViewTraitCollectionV_Tt1g5(0, *(v4 + 24) >> 1);
        outlined destroy of SectionAccumulator.Item(v182);

        *v7 = v38;
      }

      v124 = v39[23];
      v44 = __OFADD__(v124, v153);
      v125 = v153 + v124;
      if (!v44)
      {
        break;
      }

      __break(1u);
LABEL_110:
      v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v38 + 2) + 1, 1, v38);
LABEL_29:
      v41 = *(v38 + 2);
      v40 = *(v38 + 3);
      if (v41 >= v40 >> 1)
      {
        v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1, v38);
      }

      outlined destroy of _ViewList_Sublist(&v158);
      *(v38 + 2) = v41 + 1;
      v42 = &v38[56 * v41];
      *(v42 + 4) = v39;
      *(v42 + 5) = v7;
      *(v42 + 6) = v9;
      *(v42 + 7) = 0;
      v42[64] = 2;
      *(v42 + 9) = v9;
      *(v42 + 10) = v4;
      v5 = v6;
      outlined destroy of SectionAccumulator.RowIDAccumulator(v6);
      *v6 = v38;
      *(v6 + 97) = 0;
    }

    v39[23] = v125;
    v39[13] = v125;
    goto LABEL_99;
  }

  v10 = DWORD2(v191);
  v11 = BYTE12(v191);
  outlined init with take of _ViewList_Elements(&v189, &v158);
  v12 = *(&v159 + 1);
  v13 = v160;
  __swift_project_boxed_opaque_existential_1(&v158, *(&v159 + 1));
  (*(v13 + 32))(v182, v12, v13);
  if (*v182)
  {
    v14 = specialized Set.contains(_:)(&type metadata for IsSectionedTraitKey, *v182);

    if (!v14)
    {
      v53 = *(&v159 + 1);
      v54 = v160;
      __swift_project_boxed_opaque_existential_1(&v158, *(&v159 + 1));
      v47 = ViewList.count.getter(v53, v54);
      v55 = SectionAccumulator.RowIDAccumulator.count.getter();
      outlined init with copy of SectionAccumulator.RowIDAccumulator(v5, v182);
      if (v182[97])
      {
        v165 = *&v182[48];
        v166 = *&v182[64];
        v167 = *&v182[80];
        v163 = *v182;
        LOBYTE(v168) = v182[96];
        v164[0] = *&v182[16];
        v164[1] = *&v182[32];
        *&v175 = 0;
        *(&v175 + 1) = MEMORY[0x1E69E7CC0];
        v178 = v9;
        LOBYTE(v179) = v154;
        _ViewList_TemporarySublistTransform.bindID(_:)(&v175);
        v30 = *(&v175 + 1);
        v172 = v175;

        v56 = _ViewList_ID.Canonical.init(id:)(&v172, &v178);
        if (v179)
        {
          v154 = v47;
          (*(*v179 + 104))(&v178, v56);
          v57 = v180;
          v58 = v181;
          v59 = __swift_project_boxed_opaque_existential_1(&v178, v180);
          if (*(v30 + 2))
          {
            v11 = v30[52];
          }

          else
          {
            v11 = 0;
          }

          MEMORY[0x1EEE9AC00](v130);
          v143 = &v158;
          v46 = &v163;
          HeterogeneousViewIDsAccumulator.withExplicitID<A>(_:isUnary:body:)(v59, v11, partial apply for closure #1 in SectionAccumulator.apply(start:style:node:transform:), v142, v57, v58);

          __swift_destroy_boxed_opaque_existential_1(&v178);
          v47 = v154;
        }

        else
        {

          v126 = *(&v159 + 1);
          v30 = v160;
          v46 = __swift_project_boxed_opaque_existential_1(&v158, *(&v159 + 1));
          (*(v30 + 6))(&v163, v126, v30);
        }

        outlined destroy of SectionAccumulator.RowIDAccumulator(v5);
        v131 = v165;
        v132 = v167;
        *(v5 + 64) = v166;
        *(v5 + 80) = v132;
        v133 = v164[0];
        v134 = v164[1];
        *v5 = v163;
        *(v5 + 16) = v133;
        *(v5 + 96) = v168;
        *(v5 + 32) = v134;
        *(v5 + 48) = v131;
        *(v5 + 97) = 1;
      }

      else
      {
        v30 = *v182;
        outlined init with copy of AnyTrackedValue(&v158, &v178);
        v151 = v55;
        v152 = v5;
        v150 = v10;
        v149 = v11;
        if (v154)
        {
          v11 = v47;
          v69 = *v9;
          v68 = *(v9 + 8);
        }

        else
        {
          v175 = MEMORY[0x1E69E7CC0];
          v11 = v47;
          if (v9)
          {
            outlined init with copy of _ViewList_TemporarySublistTransform.ItemNode(v9, &v163);
            v91 = v165;
            *&v175 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(&v165 + 1) & ~(*(&v165 + 1) >> 63), 0, MEMORY[0x1E69E7CC0]);
            outlined destroy of _AnyAnimatableData(&v163);
            *(&v175 + 1) = v91;
            do
            {
              outlined init with copy of AnyTrackedValue(v9 + 8, &v163);
              LOBYTE(v172) = 0;
              v92 = *(&v164[0] + 1);
              v93 = *&v164[1];
              v94 = __swift_project_boxed_opaque_existential_1(&v163, *(&v164[0] + 1));
              specialized _ViewList_SublistTransform.push(_:flags:)(v94, &v172, &v175, v92, v93);
              __swift_destroy_boxed_opaque_existential_1(&v163);
              v9 = *v9;
            }

            while (v9);
          }

          specialized MutableCollection<>.reverse()();
          v68 = *(&v175 + 1);
          v69 = v175;
        }

        v95 = *v153;
        v96 = v180;
        v97 = v181;
        __swift_project_boxed_opaque_existential_1(&v178, v180);
        v98 = (*(v97 + 40))(v96, v97);
        if (v98)
        {
          v46 = v98;
          if (*(v69 + 16))
          {
            type metadata accessor for _ViewList_ID._Views<SectionAccumulator.TransformedIDs>(0);
            v99 = swift_allocObject();
            v100 = 0;
            *(v99 + 24) = v46;
            *(v99 + 32) = v69;
            *(v99 + 40) = v68;
            *(v99 + 16) = 1;
            v46 = v99;
          }

          else
          {

            v100 = 0;
          }
        }

        else
        {
          *&v172 = v95;
          v157 = v11;
          v156 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11 & ~(v11 >> 63), 0, MEMORY[0x1E69E7CC0]);
          *&v163 = v69;
          *(&v163 + 1) = v68;
          v127 = v180;
          v128 = v181;
          v129 = __swift_project_boxed_opaque_existential_1(&v178, v180);
          *&v175 = &v163;
          v100 = 1;
          BYTE8(v175) = 1;
          MEMORY[0x1EEE9AC00](v129);
          v143 = &v156;
          v144 = &v157;
          v155 = v149;
          ViewList.applyIDs(from:listAttribute:transform:to:)(&v172, v150 | (v149 << 32), &v175, closure #1 in closure #1 in SectionAccumulator.RowIDs.Chunk.init(list:listAttribute:transform:start:count:lowerBound:)partial apply, v142, v127, v128);

          v46 = v156;
        }

        __swift_destroy_boxed_opaque_existential_1(&v178);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v30 + 2) + 1, 1, v30);
        }

        v47 = v11;
        v136 = *(v30 + 2);
        v135 = *(v30 + 3);
        if (v136 >= v135 >> 1)
        {
          v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v135 > 1), v136 + 1, 1, v30);
        }

        *(v30 + 2) = v136 + 1;
        v137 = &v30[56 * v136];
        *(v137 + 4) = v46;
        *(v137 + 5) = 0;
        *(v137 + 6) = 0;
        *(v137 + 7) = 0;
        v137[64] = v100;
        v138 = v151;
        v5 = v152;
        *(v137 + 9) = v11;
        *(v137 + 10) = v138;
        outlined destroy of SectionAccumulator.RowIDAccumulator(v5);
        *v5 = v30;
        *(v5 + 97) = 0;
      }

      v139 = *(v5 + 184);
      v44 = __OFADD__(v139, v47);
      v140 = v139 + v47;
      if (!v44)
      {
        *(v5 + 184) = v140;
        __swift_destroy_boxed_opaque_existential_1(&v158);
LABEL_99:
        v20 = 1;
        return v20 & 1;
      }

      __break(1u);
      goto LABEL_112;
    }
  }

  v15 = v160;
  v16 = __swift_project_boxed_opaque_existential_1(&v158, *(&v159 + 1));
  *&v163 = v8;
  *v182 = v9;
  v182[8] = v154;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v143 = v18;
  v19 = *(v15 + 64);
  LOBYTE(v178) = v11;
  v20 = v19(v153, &v163, v10 | (v11 << 32), v182, partial apply for closure #2 in SectionAccumulator.apply(start:style:node:transform:), v17);
  __swift_destroy_boxed_opaque_existential_1(&v158);
  return v20 & 1;
}

uint64_t sub_18D2DD524()
{

  return swift_deallocObject();
}

uint64_t LocationBox.get()(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v9 - v5;
  v7 = *(v2 + 184);
  swift_beginAccess();
  (*(v4 + 16))(v6, v1 + v7, v3);
  (*(*(v2 + 176) + 48))(v3);
  return (*(v4 + 8))(v6, v3);
}

double destroy for SectionAccumulator.RowIDAccumulator(uint64_t *a1)
{
  v2 = *(a1 + 97);
  if (v2 >= 2)
  {
    v2 = *a1 + 2;
  }

  if (v2 == 1)
  {

    if (a1[5])
    {
      __swift_destroy_boxed_opaque_existential_1(a1 + 2);
    }

    if (a1[10])
    {

      __swift_destroy_boxed_opaque_existential_1(a1 + 7);
    }
  }

  else
  {
  }

  return result;
}

uint64_t protocol witness for ViewList.applyNodes(from:style:list:transform:to:) in conformance _ViewList_Section(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t *, uint64_t *, uint64_t *))
{
  v8 = *a4;
  v9 = *(a4 + 8);
  v10 = *v5;
  v11 = *(v5 + 1);
  v12 = *(v5 + 2);
  v13 = *(v5 + 24);
  v21 = *a2;
  LODWORD(v18[0]) = v10;
  v18[1] = v11;
  v18[2] = v12;
  v19 = v13;
  v20 = 3;
  v16 = v8;
  v17 = v9;

  v14 = a5(a1, &v21, v18, &v16);
  outlined destroy of _ViewList_Node(v18);
  return v14 & 1;
}

Swift::Int __swiftcall _ViewList_Section.count(style:)(Swift::Int style)
{
  v2 = *style;
  v3 = *(v1 + 8);
  if (*(v1 + 24) == 1)
  {
    if (*(v3 + 16))
    {
      outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v3 + 32, v21, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
      outlined init with take of AnyTrackedValue(v21, v22);
      v4 = v23;
      v5 = v24;
      __swift_project_boxed_opaque_existential_1(v22, v23);
      v6 = v2 & 0xFFFFFFFFFFFFFFFELL;
      if ((v2 & 0xFFFFFFFFFFFFFFFELL) != 2)
      {
        ++v6;
      }

      *&v21[0] = v6;
      v7 = (*(v5 + 16))(v21, v4, v5);
      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_21;
  }

  if (*(v3 + 16) < 2uLL)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v3 + 80, v21, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
  outlined init with take of AnyTrackedValue(v21, v22);
  v8 = v23;
  v9 = v24;
  __swift_project_boxed_opaque_existential_1(v22, v23);
  *&v21[0] = v2;
  v10 = (*(v9 + 16))(v21, v8, v9);
  style = __swift_destroy_boxed_opaque_existential_1(v22);
  v11 = v2 >> 1;
  if (v2 >> 1 == 1)
  {
    goto LABEL_31;
  }

  if (v2 < 2)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v12 = v10 % v11;
  if (!(v10 % v11))
  {
    goto LABEL_31;
  }

  v13 = __OFSUB__(v11, v12);
  v14 = v11 - v12;
  if (v13)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v13 = __OFADD__(v10, v14);
  v10 += v14;
  if (!v13)
  {
LABEL_31:
    if (*(v3 + 16))
    {
      outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v3 + 32, v21, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
      outlined init with take of AnyTrackedValue(v21, v22);
      v15 = v23;
      v16 = v24;
      __swift_project_boxed_opaque_existential_1(v22, v23);
      if (v11 == 1)
      {
        v17 = v2 & 0xFFFFFFFFFFFFFFFELL;
      }

      else
      {
        v17 = (v2 & 0xFFFFFFFFFFFFFFFELL) + 1;
      }

      *&v21[0] = v17;
      style = (*(v16 + 16))(v21, v15, v16);
      v18 = v10 + style;
      if (!__OFADD__(v10, style))
      {
        style = __swift_destroy_boxed_opaque_existential_1(v22);
        if (*(v3 + 16) >= 3uLL)
        {
          outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v3 + 128, v21, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
          outlined init with take of AnyTrackedValue(v21, v22);
          v19 = v23;
          v20 = v24;
          __swift_project_boxed_opaque_existential_1(v22, v23);
          *&v21[0] = v17;
          style = (*(v20 + 16))(v21, v19, v20);
          v7 = v18 + style;
          if (!__OFADD__(v18, style))
          {
LABEL_19:
            __swift_destroy_boxed_opaque_existential_1(v22);
            return v7;
          }

          goto LABEL_25;
        }

LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

LABEL_28:
  __break(1u);
  return style;
}

uint64_t ProjectedLocation.get()(void *a1)
{
  v2 = a1[4];
  v3 = a1[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v10 - v7;
  (*(v2 + 48))(v3, v2, v6);
  (*(a1[5] + 32))(v8, a1[3]);
  return (*(v5 + 8))(v8, AssociatedTypeWitness);
}

void specialized MutableCollection<>.reverse()()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (!v2)
  {
    return;
  }

  v3 = v2 - 1;
  if (v2 == 1)
  {
    return;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_17:
    v1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
  }

  v4 = v1 + 4;
  v2 = &v1[5 * v2 - 1];
  v5 = 1;
  while (1)
  {
    if (v5 - 1 == v3)
    {
      goto LABEL_6;
    }

    v7 = v1[2];
    if (v5 - 1 >= v7)
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    outlined init with copy of AnyTrackedValue(v4, v9);
    if (v3 >= v7)
    {
      goto LABEL_16;
    }

    __swift_assign_boxed_opaque_existential_1(v4, v2, v8);
    if (v3 >= v1[2])
    {
      break;
    }

    __swift_destroy_boxed_opaque_existential_1(v2);
    outlined init with take of AnyTrackedValue(v9, v2);
LABEL_6:
    --v3;
    v2 -= 40;
    v4 += 5;
    if (v5++ >= v3)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_13:
  *v0 = v1;
}

{
  v1 = *v0;
  v2 = *(*v0 + 2);
  if (!v2)
  {
    return;
  }

  v3 = v2 - 1;
  if (v2 == 1)
  {
    return;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_17:
    v1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
  }

  v2 = &v1[16 * v2 + 24];
  v4 = (v1 + 40);
  v5 = 1;
  while (1)
  {
    if (v5 - 1 == v3)
    {
      goto LABEL_6;
    }

    v7 = *(v1 + 2);
    if (v5 - 1 >= v7)
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    if (v3 >= v7)
    {
      goto LABEL_16;
    }

    v8 = *(v4 - 1);
    v9 = *v4;
    v10 = *v2;
    *(v4 - 1) = *(v2 - 8);
    *v4 = v10;
    v11 = *(v1 + 2);

    if (v3 >= v11)
    {
      break;
    }

    *(v2 - 8) = v8;
    *v2 = v9;

LABEL_6:
    --v3;
    v2 -= 16;
    v4 += 2;
    if (v5++ >= v3)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_13:
  *v0 = v1;
}

{
  v1 = *v0;
  v2 = *(*v0 + 2);
  if (v2)
  {
    v3 = v2 - 1;
    if (v2 != 1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
LABEL_14:
        v1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
      }

      v4 = (32 * v2) | 0x10;
      v5 = 1;
      v6 = 48;
      do
      {
        if (v5 - 1 != v3)
        {
          v8 = *(v1 + 2);
          if (v5 - 1 >= v8)
          {
            __break(1u);
LABEL_13:
            __break(1u);
            goto LABEL_14;
          }

          if (v3 >= v8)
          {
            goto LABEL_13;
          }

          v9 = &v1[v6];
          v10 = &v1[v4];
          v11 = *&v1[v6 - 16];
          *(v9 - 1) = *&v1[v4 - 16];
          *(v10 - 1) = v11;
          v12 = *&v1[v6];
          *v9 = *&v1[v4];
          *v10 = v12;
        }

        --v3;
        v4 -= 32;
        v6 += 32;
      }

      while (v5++ < v3);
      *v0 = v1;
    }
  }
}

{
  v1 = *v0;
  if (*v0 >> 62)
  {
    goto LABEL_27;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
    v3 = v2 - 1;
    while (!__OFSUB__(v2, 1))
    {
      if (v3 < 1)
      {
        return;
      }

      v4 = 0;
      v5 = v2 + 0x7FFFFFFFFFFFFFFFLL;
      while (1)
      {
        v6 = v2 - 1;
        if ((v1 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x193AC03C0](v4, v1);
          v9 = MEMORY[0x193AC03C0](v2 - 1, v1);
          goto LABEL_10;
        }

        v7 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v4 >= v7)
        {
          break;
        }

        if (v6 >= v7)
        {
          goto LABEL_25;
        }

        v8 = *(v1 + 8 * v4 + 32);
        v9 = *(v1 + 8 * v2 + 24);

LABEL_10:
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
          v10 = (v1 >> 62) & 1;
        }

        else
        {
          LODWORD(v10) = 0;
        }

        v11 = v1 & 0xFFFFFFFFFFFFFF8;
        *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20) = v9;

        if ((v1 & 0x8000000000000000) != 0 || v10)
        {
          v1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
          v11 = v1 & 0xFFFFFFFFFFFFFF8;
        }

        if (v6 >= *(v11 + 16))
        {
          goto LABEL_24;
        }

        *(v11 + 8 * v2 + 24) = v8;

        *v0 = v1;
        if (v5 == v4)
        {
          goto LABEL_26;
        }

        ++v4;
        v12 = v2 - 2;
        --v2;
        if (v4 >= v12)
        {
          return;
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
      if (!__CocoaSet.count.getter())
      {
        return;
      }

      v2 = __CocoaSet.count.getter();
      v3 = v2 - 1;
    }

    __break(1u);
  }
}

void type metadata accessor for EnvironmentPropertyKey<TextScaleKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t storeEnumTagSinglePayload for PlatformNamedImageRepresentableContext(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA014DefaultPaddingF033_47C1BD8C61550BB60F4F3D12F752D53DLLVG_Tt2g5(void *a1)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultPaddingKey>, &type metadata for DefaultPaddingKey, &protocol witness table for DefaultPaddingKey, type metadata accessor for EnvironmentPropertyKey);
  BloomFilter.init(hashValue:)(v2);
  v3 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA014DefaultPaddingV033_47C1BD8C61550BB60F4F3D12F752D53DLLVG_Tt0B5(a1, v5);
  if (v3)
  {
    return v3[9];
  }

  else
  {
    return 16.0;
  }
}

void key path getter for EnvironmentValues.defaultPadding : EnvironmentValues(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  if (a1[1])
  {

    v4 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA014DefaultPaddingI033_47C1BD8C61550BB60F4F3D12F752D53DLLVG_Tt1g5(v3);
    v6 = v5;
    v8 = v7;
    v10 = v9;
  }

  else
  {
    v4 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA014DefaultPaddingF033_47C1BD8C61550BB60F4F3D12F752D53DLLVG_Tt2g5(*a1);
    v6 = v11;
    v8 = v12;
    v10 = v13;
  }

  *a2 = v4;
  *(a2 + 1) = v6;
  *(a2 + 2) = v8;
  *(a2 + 3) = v10;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA014DefaultPaddingV033_47C1BD8C61550BB60F4F3D12F752D53DLLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA014DefaultPaddingV033_47C1BD8C61550BB60F4F3D12F752D53DLLVG_Tt0B5(result[3], a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultPaddingKey>, &type metadata for DefaultPaddingKey, &protocol witness table for DefaultPaddingKey, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void type metadata accessor for _ContiguousArrayStorage<Range<Int>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<Range<Int>>)
  {
    type metadata accessor for Range<Int>(255, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ContiguousArrayStorage<Range<Int>>);
    }
  }
}

uint64_t iterateRange #1 <A, B><A1, B1><A2>(from:length:in:) in CollectionChanges.formChanges<A, B>(from:to:)@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t a3@<X7>, char *a4@<X8>, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v43 = a2;
  v41 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v39 = *(TupleTypeMetadata2 - 8);
  v40 = TupleTypeMetadata2;
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v37 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v38 = &v36 - v13;
  v14 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v36 - v20;
  v22 = v14[2];
  v22(&v36 - v20, a1, AssociatedTypeWitness, v19);
  v42 = a3;
  dispatch thunk of Collection.endIndex.getter();
  Collection.formIndex(_:offsetBy:limitedBy:)();
  v43 = v14[1];
  v43(v17, AssociatedTypeWitness);
  (v22)(v17, a1, AssociatedTypeWitness);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v25 = v14[4];
    v36 = v14 + 4;
    v26 = v38;
    v25(v38, v21, AssociatedTypeWitness);
    v27 = v40;
    v25(&v26[*(v40 + 48)], v17, AssociatedTypeWitness);
    v28 = v39;
    v29 = *(v39 + 16);
    v42 = AssociatedConformanceWitness;
    v30 = v37;
    v29(v37, v26, v27);
    v31 = *(v27 + 48);
    v32 = v41;
    v25(v41, v30, AssociatedTypeWitness);
    v33 = v43;
    v43(&v30[v31], AssociatedTypeWitness);
    (*(v28 + 32))(v30, v26, v27);
    v34 = *(v27 + 48);
    v35 = type metadata accessor for Range();
    v25(&v32[*(v35 + 36)], &v30[v34], AssociatedTypeWitness);
    return (v33)(v30, AssociatedTypeWitness);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void CollectionChanges.Projection.init(kind:changes:)(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v24 = a5;
  v14 = *a1;
  v41 = a2;
  v31 = a3;
  v32 = a4;
  v33 = a5;
  v34 = a6;
  v35 = a7;
  v36 = v14;

  v37 = a3;
  v38 = a4;
  v39 = a6;
  v40 = a7;
  type metadata accessor for CollectionChanges.Element(255, &v37);
  v15 = type metadata accessor for Array();
  swift_getWitnessTable(MEMORY[0x1E69E6340], v15);
  Collection.firstIndex(where:)();
  v23 = &v21;
  v22 = v37;
  HIDWORD(v21) = v38;
  v41 = a2;
  v25 = a3;
  v26 = a4;
  v27 = v24;
  v28 = a6;
  v29 = a7;
  v30 = v14;
  swift_getWitnessTable(MEMORY[0x1E69E6310], v15);
  BidirectionalCollection.lastIndex(where:)();

  v16 = v37;
  if (v38)
  {
    v16 = -1;
  }

  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    v19 = HIDWORD(v21) == 0;
    *a8 = v14;
    v20 = v22;
    if (!v19)
    {
      v20 = 0;
    }

    *(a8 + 8) = a2;
    *(a8 + 16) = v20;
    *(a8 + 24) = v18;
  }
}

BOOL partial apply for closure #1 in CollectionChanges.Projection.init(kind:changes:)()
{
  return partial apply for closure #2 in CollectionChanges.Projection.init(kind:changes:)();
}

{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  v5[0] = *(v0 + 16);
  v5[1] = v2;
  v3 = type metadata accessor for CollectionChanges.Element(0, v5);
  CollectionChanges.Element.kind.getter(v3, v5);
  return LOBYTE(v5[0]) == v1;
}

uint64_t CollectionChanges.Element.kind.getter@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(a1 - 1);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    *a2 = 0;
    return (*(v4 + 8))(v7, a1);
  }

  if (EnumCaseMultiPayload == 1)
  {
    *a2 = 1;
    return (*(v4 + 8))(v7, a1);
  }

  v10 = type metadata accessor for Range();
  v11 = type metadata accessor for Range();
  v12 = *(swift_getTupleTypeMetadata2() + 48);
  *a2 = 2;
  (*(*(v11 - 8) + 8))(&v7[v12], v11);
  return (*(*(v10 - 8) + 8))(v7, v10);
}

uint64_t getEnumTagSinglePayload for _ViewList_View(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

double destroy for SectionAccumulator(uint64_t *a1)
{
  if (*(a1 + 97))
  {

    if (a1[5])
    {
      __swift_destroy_boxed_opaque_existential_1(a1 + 2);
    }

    if (a1[10])
    {
      __swift_destroy_boxed_opaque_existential_1(a1 + 7);
    }
  }

  else
  {
  }

  if (a1[17])
  {
    __swift_destroy_boxed_opaque_existential_1(a1 + 14);
  }

  return result;
}

void CoreInteractionRepresentableFeatureBuffer.append<A>(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v8 = type metadata accessor for CoreInteractionRepresentableFeatureBuffer._VTable(0, a2, a4, a5);

  UnsafeHeterogeneousBuffer.append<A>(_:vtable:)(a1, v8, a2, a3);
}

uint64_t static FunctionalLocation.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v19 = *MEMORY[0x1E69E9840];
  v14[0] = a1;
  v14[1] = a2;
  v14[2] = a3;
  v14[3] = a4;
  v13[0] = a5;
  v13[1] = a6;
  v13[2] = a7;
  v13[3] = a8;
  v9 = type metadata accessor for FunctionalLocation.Functions(0, a9, a3, a4);
  v16 = v9;
  v17 = v13;
  v18 = 3;

  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v14, closure #1 in compareValues<A>(_:_:options:)partial apply, v15, v9, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], v10);

  return v12;
}

uint64_t initializeWithCopy for CoreInteractionEffect(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t outlined copy of BodyInputElement?(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return outlined copy of BodyInputElement(a1, a2);
  }

  return a1;
}

uint64_t closure #1 in static ViewModifierContentProvider.providerMakeView(view:inputs:)(uint64_t a1, __int128 *a2, uint64_t *a3, void (*a4)(uint64_t, _OWORD *))
{
  v5 = a2[1];
  v23 = *a2;
  v24 = v5;
  v25 = a2[2];
  v6 = *a3;
  BloomFilter.init(hashValue:)(&type metadata for ViewListOptionsInput);
  v7 = *&v12[0];
  outlined init with copy of _GraphInputs(&v23, v12);
  v8 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA04ViewS12OptionsInputV_Tt0B5(v6, v7);
  if (v8)
  {
    v9 = *(v8 + 72);
  }

  else
  {
    v9 = 0;
  }

  v15 = *MEMORY[0x1E698D3F8];
  v16 = MEMORY[0x1E69E7CD0];
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v10 = swift_weakInit();
  v20 = 0;
  v21 = 0;
  v22 = -1;
  v12[0] = v23;
  v12[1] = v24;
  v12[2] = v25;
  v13 = 0;
  v14 = v9;
  a4(v10, v12);
  return outlined destroy of _ViewListInputs(v12);
}

void lazy protocol witness table accessor for type ContentShapeKinds and conformance ContentShapeKinds()
{
  if (!lazy protocol witness table cache variable for type ContentShapeKinds and conformance ContentShapeKinds)
  {
    swift_getWitnessTable(protocol conformance descriptor for ContentShapeKinds, &type metadata for ContentShapeKinds, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ContentShapeKinds and conformance ContentShapeKinds);
  }
}

{
  if (!lazy protocol witness table cache variable for type ContentShapeKinds and conformance ContentShapeKinds)
  {
    swift_getWitnessTable(protocol conformance descriptor for ContentShapeKinds, &type metadata for ContentShapeKinds, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ContentShapeKinds and conformance ContentShapeKinds);
  }
}

{
  if (!lazy protocol witness table cache variable for type ContentShapeKinds and conformance ContentShapeKinds)
  {
    swift_getWitnessTable(protocol conformance descriptor for ContentShapeKinds, &type metadata for ContentShapeKinds, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ContentShapeKinds and conformance ContentShapeKinds);
  }
}

{
  if (!lazy protocol witness table cache variable for type ContentShapeKinds and conformance ContentShapeKinds)
  {
    swift_getWitnessTable(protocol conformance descriptor for ContentShapeKinds, &type metadata for ContentShapeKinds, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ContentShapeKinds and conformance ContentShapeKinds);
  }
}

uint64_t assignWithCopy for _PreferenceWritingModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 24))(a1, a2, AssociatedTypeWitness);
  return a1;
}

BOOL protocol witness for SetAlgebra.insert(_:) in conformance CoreViewRepresentableLayoutOptions(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *a2 & *v2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t static CoreInteractionRepresentableFeatureBuffer._VTable.modifyViewOutputs<A>(elt:inputs:outputs:proxy:)(uint64_t *a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1;
  v11 = *(a2 + 48);
  v16[2] = *(a2 + 32);
  v16[3] = v11;
  v16[4] = *(a2 + 64);
  v17 = *(a2 + 80);
  v12 = *(a2 + 16);
  v16[0] = *a2;
  v16[1] = v12;
  v13 = *a4;
  v18 = v10;
  v14 = *(v6 + 128);
  _UnsafeHeterogeneousBuffer_Element.body<A>(as:)();
  LODWORD(v18) = v13;
  return (*(*(v6 + 136) + 16))(v16, a3, &v18, a5, a6, v14);
}

void _ShapeSet.init(shapes:smoothness:)(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = *(a1 + 16);
  if (v6)
  {
    v15 = MEMORY[0x1E69E7CC0];
    v7 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
    v8 = 32;
    v9 = v15;
    do
    {
      v10 = *(a1 + v8);
      v11 = (*(*v10 + 128))(v7);
      v13 = *(v15 + 16);
      v12 = *(v15 + 24);

      if (v13 >= v12 >> 1)
      {
        v7 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
      }

      *(v15 + 16) = v13 + 1;
      v14 = v15 + 32 * v13;
      *(v14 + 32) = v10;
      *(v14 + 40) = v11;
      *(v14 + 48) = 0;
      *(v14 + 56) = 0;
      *(v14 + 60) = 0;
      v8 += 8;
      --v6;
    }

    while (v6);
  }

  else
  {

    v9 = MEMORY[0x1E69E7CC0];
  }

  *a2 = v9;
  *(a2 + 8) = a3;
}

uint64_t CoreInteractionRepresentableFeatureBuffer.Element.modifyViewOutputs<A>(inputs:outputs:proxy:)(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 48);
  v13[2] = *(a1 + 32);
  v13[3] = v6;
  v13[4] = *(a1 + 64);
  v14 = *(a1 + 80);
  v7 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v7;
  v8 = *a3;
  v9 = *v5;
  v10 = **v5;
  v15 = v9;
  v12 = v8;
  return (*(v10 + 120))(&v15, v13, a2, &v12, a4, a5);
}

uint64_t View.materialEffect(_:in:)(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *a1;
  View.modifier<A>(_:)();

  outlined copy of Material.ID(v2, v3);

  return outlined consume of Material.ID(v5, v3);
}

uint64_t static ProjectedLocation.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    v12[0] = a3;
    v12[1] = a4;
    v12[2] = a5;
    v12[3] = a6;
    type metadata accessor for ProjectedLocation(0, v12);
    v10 = dispatch thunk of static Equatable.== infix(_:_:)();
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t static ZipLocation.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = type metadata accessor for AnyLocation(0, a5, a3, a4);
  v10 = type metadata accessor for AnyLocation(0, a6, v8, v9);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for AnyLocation<A>, v7, a4, a3, a2, a1);
  swift_getWitnessTable(protocol conformance descriptor for AnyLocation<A>, v10, WitnessTable);
  return == infix<A, B>(_:_:)() & 1;
}

uint64_t static ObjectLocation.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 != a5)
  {
    return 0;
  }

  type metadata accessor for AnyKeyPath();
  return MEMORY[0x193AC0030](a2, a6) & 1;
}

uint64_t specialized Collection.count.getter(uint64_t result)
{
  v1 = HIDWORD(result);
  if (result < 0 == result < 0)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      return HIDWORD(result) - result;
    }

    goto LABEL_14;
  }

  if (result >= 0)
  {
    v2 = result;
  }

  else
  {
    v2 = -result;
  }

  if (result < 0)
  {
    LODWORD(v1) = -HIDWORD(result);
  }

  v3 = __CFADD__(v2, v1);
  v4 = (v2 + v1);
  if (v3)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (result < 0)
  {
    return v4;
  }

  else
  {
    return -v4;
  }
}

{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result + 56 * v1;
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  v5 = __OFADD__(v3, v4);
  v6 = v3 + v4;
  if (v5)
  {
    goto LABEL_9;
  }

  v7 = *(result + 80);
  if (v6 < v7)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  result = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
    goto LABEL_8;
  }

  return result;
}

void type metadata accessor for ClosedRange<CGFloat>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void type metadata accessor for _ContiguousArrayStorage<TypedCanonicalViewID<Nil>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<TypedCanonicalViewID<Nil>>)
  {
    type metadata accessor for ClosedRange<CGFloat>(255, &lazy cache variable for type metadata for TypedCanonicalViewID<Nil>, lazy protocol witness table accessor for type Nil and conformance Nil, &type metadata for Nil, type metadata accessor for TypedCanonicalViewID);
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ContiguousArrayStorage<TypedCanonicalViewID<Nil>>);
    }
  }
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, uint64_t (*a5)(void))
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    a5(0);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 25;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 3);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[8 * v9])
    {
      memmove(v14, v15, 8 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 8 * v9);
  }

  return v11;
}

{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    a5(0);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 56);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  v15 = 56 * v9;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v11;
}