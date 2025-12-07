uint64_t *protocol witness for BidirectionalCollection.formIndex(before:) in conformance Text.Layout.RunSlice(uint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if (v2 >= *(v1 + 48) && v2 < *(v1 + 56))
  {
    *result = v2;
    return result;
  }

  __break(1u);
  return result;
}

void (*protocol witness for Collection.subscript.read in conformance Text.Layout.RunSlice(uint64_t *a1, void (**a2)(id **a1)))(id **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x80uLL);
  }

  v5 = v4;
  *a1 = v4;
  result = *a2;
  if (*a2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else
  {
    Text.Layout.RunSlice.subscript.getter(result, result + 1, v5);
    return protocol witness for Collection.subscript.read in conformance Text.Layout.RunSlice;
  }

  return result;
}

void protocol witness for Collection.subscript.read in conformance Text.Layout.RunSlice(id **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  *(v1 + 4) = **a1;
  *(v1 + 5) = v2;
  v3 = *(v1 + 3);
  *(v1 + 6) = *(v1 + 2);
  *(v1 + 7) = v3;
  sub_18D36CCC8(v1 + 8);

  free(v1);
}

__n128 protocol witness for Collection.indices.getter in conformance Text.Layout.RunSlice@<Q0>(__n128 *a1@<X8>)
{
  result = v1[3];
  *a1 = result;
  return result;
}

void *protocol witness for RandomAccessCollection.index(_:offsetBy:) in conformance Text.Layout.RunSlice@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else if (v4 >= *(v3 + 48) && *(v3 + 56) >= v4)
  {
    *a3 = v4;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t *protocol witness for RandomAccessCollection.distance(from:to:) in conformance Text.Layout.RunSlice(uint64_t *result, uint64_t *a2)
{
  v3 = *result;
  v4 = *a2;
  v5 = *(v2 + 48);
  v6 = *(v2 + 56);
  if (v6 < *a2 || v4 < v5 || v3 < v5 || v6 < v3)
  {
    __break(1u);
    goto LABEL_14;
  }

  result = (v4 - v3);
  if (__OFSUB__(v4, v3))
  {
LABEL_14:
    __break(1u);
  }

  return result;
}

uint64_t *protocol witness for Collection.index(after:) in conformance Text.Layout.RunSlice@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  v4 = *(v2 + 56);
  if (*result >= *(v2 + 48))
  {
    v6 = __OFSUB__(v3, v4);
    v5 = v3 - v4 < 0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  if (v5 != v6)
  {
    *a2 = v3 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *protocol witness for Collection.formIndex(after:) in conformance Text.Layout.RunSlice(uint64_t *result)
{
  v2 = *result;
  v3 = *(v1 + 56);
  if (*result >= *(v1 + 48))
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 != v5)
  {
    *result = v2 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id *protocol witness for Sequence.makeIterator() in conformance Text.Layout.RunSlice@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v10[0] = v3;
  v10[1] = v4;
  v5 = v1[3];
  v11 = v1[2];
  v6 = v11;
  v12 = v5;
  v7 = v5;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  *(a1 + 48) = v5;
  v13[2] = v6;
  v13[3] = v5;
  v13[0] = v3;
  v13[1] = v4;
  outlined init with copy of Text.Layout.RunSlice(v10, &v9);
  result = sub_18D36CCC8(v13);
  *(a1 + 64) = v7;
  return result;
}

uint64_t protocol witness for Collection.count.getter in conformance Text.Layout.RunSlice()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  result = v2 - v1;
  if (v2 < v1)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (__OFSUB__(v2, v1))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

void *protocol witness for Sequence._copyToContiguousArray() in conformance Text.Layout.RunSlice()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(v0);
  v2 = *(v0 + 16);
  v5[0] = *v0;
  v5[1] = v2;
  v3 = *(v0 + 48);
  v5[2] = *(v0 + 32);
  v5[3] = v3;
  sub_18D36CCC8(v5);
  return v1;
}

BOOL static Text.Layout.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI4TextV6LayoutV4LineV_Tt1g5(*a1, *a2);
  v7 = ((v2 ^ v4) & 1) == 0 && v3 == v5;
  return (v6 & 1) != 0 && v7;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance Text.Layout(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI4TextV6LayoutV4LineV_Tt1g5(*a1, *a2);
  v7 = ((v2 ^ v4) & 1) == 0 && v3 == v5;
  return (v6 & 1) != 0 && v7;
}

void *protocol witness for BidirectionalCollection.index(before:) in conformance Text.Layout@<X0>(void *result@<X0>, unint64_t *a2@<X8>)
{
  v3 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if (v3 < *(*v2 + 16))
  {
    *a2 = v3;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t *protocol witness for BidirectionalCollection.formIndex(before:) in conformance Text.Layout(unint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if (v2 < *(*v1 + 16))
  {
    *result = v2;
    return result;
  }

  __break(1u);
  return result;
}

void protocol witness for Collection.subscript.getter in conformance Text.Layout(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (*a1 < 0 || (v4 = a1[1], v5 = *v2, *(*v2 + 16) < v4))
  {
    __break(1u);
  }

  else
  {
    v6 = *(v2 + 8);
    v7 = v2[2];
    *(a2 + 8) = v4;
    *(a2 + 16) = v5;
    *(a2 + 24) = v6;
    *(a2 + 32) = v7;
    *a2 = v3;
  }
}

void protocol witness for Collection.indices.getter in conformance Text.Layout(void *a1@<X8>)
{
  v2 = *(*v1 + 16);
  *a1 = 0;
  a1[1] = v2;
}

void *protocol witness for RandomAccessCollection.index(_:offsetBy:) in conformance Text.Layout@<X0>(void *result@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else if (v4 <= *(*v3 + 16))
  {
    *a3 = v4;
    return result;
  }

  __break(1u);
  return result;
}

void *protocol witness for Collection.index(after:) in conformance Text.Layout@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (*result >= *(*v2 + 16))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *protocol witness for Sequence._copyToContiguousArray() in conformance Text.Layout()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(v0);

  return v1;
}

void TextLayoutFragmentRenderer.draw(attachment:rect:attributes:range:in:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v18 = *a5;
  c = RBDrawingStateBeginCGContext();
  v19 = *(v18 + 52);
  if (v19)
  {
    CGContextSetBlendMode(c, v19);
  }

  v23.origin.x = a6;
  v23.origin.y = a7;
  v23.size.width = a8;
  v23.size.height = a9;
  Height = CGRectGetHeight(v23);
  _NSTextAttachmentDraw(a1, a2, a3, a4, *(v9 + 16), c, a6, Height + a7, a8, a9);
  RBDrawingStateEndCGContext();
}

id TextLayoutFragmentRenderer.lineFragment(for:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = [v5 rangeInElement];
  v7 = NSTextRange.textRange.getter();
  v9 = v8;
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    v12 = __OFADD__(v7, a1);
    v13 = &v7[a1];
    if (v12)
    {
      __break(1u);
    }

    else
    {
      v12 = __OFADD__(v9, a2);
      v14 = v9 + a2;
      if (!v12)
      {
        v15 = [objc_allocWithZone(MEMORY[0x1E69DB790]) initWithRange_];
        v16 = [v15 location];
        v17 = [v5 textLineFragmentForTextLocation:v16 isUpstreamAffinity:0];

        return v17;
      }
    }

    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

double Text.LayoutKey.AnchoredLayout.layout.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;

  return result;
}

void Text.LayoutKey.AnchoredLayout.layout.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a1[2];

  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
}

void *Text.Layout.Decorations.Segment.init(info:color:)@<X0>(void *result@<X0>, uint64_t a2@<X8>, float a3@<S0>, float a4@<S1>, float a5@<S2>, float a6@<S3>)
{
  *a2 = a3;
  *(a2 + 4) = a4;
  *(a2 + 8) = a5;
  *(a2 + 12) = a6;
  *(a2 + 16) = result[3];
  v7 = result[7];
  v8 = result[8];
  v9 = __OFADD__(v7, v8);
  v10 = v7 + v8;
  if (v9)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v10 < v7)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  *(a2 + 24) = v7;
  *(a2 + 32) = v10;
  v11 = result[10];
  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v13 = result[9];
    v14 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC12CoreGraphics7CGFloatV_Tt1g5(result[10], 0);
    result = memcpy(v14 + 4, v13, 8 * v11);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  *(a2 + 40) = v14;
  *(a2 + 48) = v12;
  return result;
}

unint64_t Text.Layout.Decorations.Segment.subscript.getter@<X0>(unint64_t result@<X0>, _OWORD *a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(v2 + 48);
    if (*(v3 + 16) > result)
    {
      v4 = v3 + 32 * result;
      v5 = *(v4 + 48);
      *a2 = *(v4 + 32);
      a2[1] = v5;
      return result;
    }
  }

  __break(1u);
  return result;
}

void *protocol witness for BidirectionalCollection.index(before:) in conformance Text.Layout.Decorations.Segment@<X0>(void *result@<X0>, unint64_t *a2@<X8>)
{
  v3 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if (v3 < *(*(v2 + 48) + 16))
  {
    *a2 = v3;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t *protocol witness for BidirectionalCollection.formIndex(before:) in conformance Text.Layout.Decorations.Segment(unint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if (v2 < *(*(v1 + 48) + 16))
  {
    *result = v2;
    return result;
  }

  __break(1u);
  return result;
}

void (*protocol witness for Collection.subscript.read in conformance Text.Layout.Decorations.Segment(void (*result)(), unint64_t *a2))()
{
  v3 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = *(v2 + 48);
    if (v3 < *(v4 + 16))
    {
      v5 = v4 + 32 * v3;
      v6 = *(v5 + 48);
      *result = *(v5 + 32);
      *(result + 1) = v6;
      return _ViewInputs.base.modify;
    }
  }

  __break(1u);
  return result;
}

uint64_t *protocol witness for Collection.subscript.getter in conformance Text.Layout.Decorations.Segment@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  if (*result < 0 || (v4 = result[1], *(*(v2 + 48) + 16) < v4))
  {
    __break(1u);
  }

  else
  {
    v5 = *(v2 + 16);
    v9[0] = *v2;
    v9[1] = v5;
    v10 = *(v2 + 32);
    v6 = v10;
    v11 = *(v2 + 48);
    v7 = v11;
    *(a2 + 16) = v9[0];
    *(a2 + 32) = v5;
    *(a2 + 48) = v6;
    *(a2 + 64) = v7;
    *a2 = v3;
    *(a2 + 8) = v4;
    return outlined init with copy of Text.Layout.Decorations.Segment(v9, v8);
  }

  return result;
}

void protocol witness for Collection.indices.getter in conformance Text.Layout.Decorations.Segment(void *a1@<X8>)
{
  v2 = *(*(v1 + 48) + 16);
  *a1 = 0;
  a1[1] = v2;
}

void *protocol witness for RandomAccessCollection.index(_:offsetBy:) in conformance Text.Layout.Decorations.Segment@<X0>(void *result@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else if (v4 <= *(*(v3 + 48) + 16))
  {
    *a3 = v4;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t *protocol witness for RandomAccessCollection.distance(from:to:) in conformance Text.Layout.Decorations.Segment(unint64_t *result, unint64_t *a2)
{
  v3 = *a2;
  v4 = *(*(v2 + 48) + 16);
  if (*result <= v4 && v3 <= v4)
  {
    return (v3 - *result);
  }

  __break(1u);
  return result;
}

void *protocol witness for Collection.index(after:) in conformance Text.Layout.Decorations.Segment@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (*result >= *(*(v2 + 48) + 16))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *protocol witness for Collection.formIndex(after:) in conformance Text.Layout.Decorations.Segment(void *result)
{
  if (*result >= *(*(v1 + 48) + 16))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

uint64_t protocol witness for Sequence.makeIterator() in conformance Text.Layout.Decorations.Segment@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v9[0] = v3;
  v9[1] = v4;
  v10 = v1[2];
  v5 = v10;
  v11 = *(v1 + 6);
  v6 = v11;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  v13 = v6;
  v12[1] = v4;
  v12[2] = v5;
  v12[0] = v3;
  outlined init with copy of Text.Layout.Decorations.Segment(v9, v8);
  result = outlined destroy of Text.Layout.Decorations.Segment(v12);
  *(a1 + 56) = 0;
  return result;
}

void *protocol witness for Sequence._copyToContiguousArray() in conformance Text.Layout.Decorations.Segment()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(v0);
  v2 = *(v0 + 16);
  v4[0] = *v0;
  v4[1] = v2;
  v4[2] = *(v0 + 32);
  v5 = *(v0 + 48);
  outlined destroy of Text.Layout.Decorations.Segment(v4);
  return v1;
}

void Text.Layout.Decorations.init(line:scale:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  v7 = *a1;
  v6 = *(a1 + 8);
  v8 = *(a1 + 16);
  v33 = *(a1 + 24);
  v9 = *(a1 + 40);
  outlined copy of Text.Layout.Line.Line(*a1, v6);

  if (v8)
  {
    v10 = _NSTextLineFragmentGetCTLine(v7);
  }

  else
  {
    v10 = v7;
  }

  v44[1] = v7;
  v44[2] = v6;
  v45 = v8;
  v46 = v33;
  v47 = v9;
  Text.Layout.Line.typographicBounds.getter(&v48);
  if (v8)
  {
    v11 = v7;
    v12 = _NSTextLineFragmentGetCTLine(v11);

    if (!v12)
    {
      outlined consume of Text.Layout.Line.Line(v7, v6);
      RunCount = 0;
      goto LABEL_9;
    }
  }

  else
  {
    outlined copy of Text.Layout.Line.Line(v7, v6);

    v12 = v7;
  }

  v14 = v12;
  RunCount = CTLineGetRunCount();
  outlined consume of Text.Layout.Line.Line(v7, v6);

  if (RunCount < 0)
  {
    __break(1u);
    goto LABEL_20;
  }

LABEL_9:
  v15 = v48;
  v16 = MEMORY[0x1E69E7CC0];
  v44[0] = MEMORY[0x1E69E7CC0];
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  v40 = 0u;
  v39[0] = 0;
  v39[1] = 0;
  v32 = a2;
  if (!v10)
  {
    v24 = 0;
    v14 = 0;
    goto LABEL_18;
  }

  v14 = swift_allocObject();
  *(v14 + 2) = &v40;
  *(v14 + 3) = v44;
  *(v14 + 4) = v39;
  *(v14 + 5) = 0;
  *(v14 + 6) = RunCount;
  *(v14 + 7) = 0;
  *(v14 + 64) = 1;
  *(v14 + 9) = 0;
  *(v14 + 40) = 769;
  v6 = swift_allocObject();
  *(v6 + 16) = closure #1 in Text.Layout.Decorations.init(line:origin:scale:runs:flags:typographicBounds:)partial apply;
  *(v6 + 24) = v14;
  *&v37.f64[0] = thunk for @callee_guaranteed (@unowned CTLineDecorationElementType, @unowned OpaquePointer) -> ()partial apply;
  *&v37.f64[1] = v6;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v36 = thunk for @escaping @callee_guaranteed (@unowned CTLineDecorationElementType, @unowned OpaquePointer) -> ();
  *(&v36 + 1) = &block_descriptor_80;
  v17 = _Block_copy(&aBlock);

  aBlock = 0x3FF0000000000000uLL;
  *&v36 = 0;
  *(&v36 + 1) = 0xBFF0000000000000;
  v37 = v15;
  CTLineDecorationApplyWithBlock();
  _Block_release(v17);
  LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

  if ((v17 & 1) == 0)
  {
    v9 = *(&v42 + 1);
    if (!*(&v42 + 1))
    {

      v24 = closure #1 in Text.Layout.Decorations.init(line:origin:scale:runs:flags:typographicBounds:)partial apply;
      v16 = v44[0];
      goto LABEL_18;
    }

    *&v33 = v10;
    v10 = *(&v41 + 1);
    RunCount = v42;
    v18 = v43;
    v4 = DWORD2(v40);
    v3 = v41;
    LODWORD(a2) = v40;
    v29 = DWORD1(v40);
    v19 = HIDWORD(*(&v40 + 1));
    v6 = v44[0];
    aBlock = v40;
    v36 = v41;
    v37 = v42;
    v38 = v43;
    outlined init with copy of Text.Layout.Decorations.Segment(&aBlock, v34);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44[0] = v6;
    v30 = v19;
    v31 = v18;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_13;
    }

    goto LABEL_21;
  }

LABEL_20:
  __break(1u);
LABEL_21:
  v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 16) + 1, 1, v6);
  v44[0] = v6;
LABEL_13:
  v22 = *(v6 + 16);
  v21 = *(v6 + 24);
  if (v22 >= v21 >> 1)
  {
    v44[0] = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v6);
  }

  v16 = v44[0];
  *(v44[0] + 16) = v22 + 1;
  v23 = v16 + 56 * v22;
  *(v23 + 32) = a2;
  *(v23 + 36) = v29;
  *(v23 + 40) = v4;
  *(v23 + 44) = v30;
  *(v23 + 48) = v3;
  *(v23 + 56) = v10;
  *(v23 + 64) = RunCount;
  *(v23 + 72) = v9;
  *(v23 + 80) = v31;
  v44[0] = v16;
  v24 = closure #1 in Text.Layout.Decorations.init(line:origin:scale:runs:flags:typographicBounds:)partial apply;
LABEL_18:
  v25 = v40;
  v26 = v41;
  v27 = v42;
  v28 = v43;

  outlined consume of Text.Layout.Decorations.Segment?(v25, *(&v25 + 1), v26, *(&v26 + 1), v27, *(&v27 + 1), v28);

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v24, v14);
  *v32 = v16;
}

void Text.Layout.Decorations.init(slice:scale:)(_OWORD *a1@<X0>, char **a2@<X8>)
{
  v5 = &v49;
  v6 = a1[1];
  v54[0] = *a1;
  v54[1] = v6;
  v7 = a1[3];
  v54[2] = a1[2];
  v54[3] = v7;
  v9 = *(&v54[0] + 1);
  v8 = *&v54[0];
  v10 = v6;
  v12 = *(&v7 + 1);
  v11 = v7;
  outlined init with copy of Text.Layout.RunSlice(v54, &v49);
  v13 = CTLineGetRunAtIndex();
  GlyphCount = CTRunGetGlyphCount(v13);

  if (GlyphCount < 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  GlyphCount = CTLineGetRunAtIndex();
  v15 = CTRunGetGlyphCount(GlyphCount);

  if (v15 < 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v11)
  {
    v16 = 2;
  }

  else
  {
    v16 = 3;
  }

  if (v12 == v15)
  {
    GlyphCount = v16;
  }

  else
  {
    GlyphCount = v11 == 0;
  }

  v17 = v9 + 1;
  if (__OFADD__(v9, 1))
  {
    goto LABEL_25;
  }

  if (v17 < v9)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v8 = v8;
  if (v11 == v12)
  {
    sub_18D36CCC8(v54);
    v18 = 0.0;
    v19 = 0.0;
    goto LABEL_15;
  }

  v20 = CTLineGetRunAtIndex();
  if (!__OFSUB__(v12, v11))
  {
    v21 = v20;
    v22.location = v11;
    v22.length = v12 - v11;
    specialized Text.Layout.TypographicBounds.init(run:range:)(v20, v22, v53);

    sub_18D36CCC8(v54);
    v19 = v53[2];
    v18 = *&v10 + v53[0];
LABEL_15:
    v47[1] = 0;
    v48 = MEMORY[0x1E69E7CC0];
    v52 = 0;
    v50 = 0u;
    v51 = 0u;
    v49 = 0u;
    v23 = v18 + v19;
    v47[0] = 0;
    v24 = swift_allocObject();
    *(v24 + 16) = &v49;
    *(v24 + 24) = &v48;
    *(v24 + 32) = v47;
    *(v24 + 40) = v9;
    *(v24 + 48) = v17;
    *(v24 + 56) = v18;
    *(v24 + 64) = 0;
    *(v24 + 72) = v23;
    *(v24 + 80) = 0;
    *(v24 + 81) = GlyphCount;
    v9 = swift_allocObject();
    *(v9 + 16) = partial apply for closure #1 in Text.Layout.Decorations.init(line:origin:scale:runs:flags:typographicBounds:);
    *(v9 + 24) = v24;
    *&v45 = partial apply for thunk for @callee_guaranteed (@unowned CTLineDecorationElementType, @unowned OpaquePointer) -> ();
    *(&v45 + 1) = v9;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v44 = thunk for @escaping @callee_guaranteed (@unowned CTLineDecorationElementType, @unowned OpaquePointer) -> ();
    *(&v44 + 1) = &block_descriptor_57;
    v25 = _Block_copy(&aBlock);
    GlyphCount = *(&v45 + 1);

    aBlock = 0x3FF0000000000000uLL;
    *&v44 = 0;
    *(&v44 + 1) = 0xBFF0000000000000;
    v45 = v10;
    CTLineDecorationApplyWithBlock();
    _Block_release(v25);
    LOBYTE(v25) = swift_isEscapingClosureAtFileLocation();

    if ((v25 & 1) == 0)
    {
      GlyphCount = *(&v51 + 1);
      if (!*(&v51 + 1))
      {
        sub_18D36CCC8(v54);

        v31 = v48;
LABEL_22:
        v33 = v49;
        v34 = v50;
        v35 = v51;
        v36 = v52;

        outlined consume of Text.Layout.Decorations.Segment?(v33, *(&v33 + 1), v34, *(&v34 + 1), v35, *(&v35 + 1), v36);

        *a2 = v31;
        return;
      }

      v41 = a2;
      v12 = *(&v50 + 1);
      v26 = v51;
      v27 = v52;
      LODWORD(a2) = DWORD2(v49);
      v3 = v50;
      v9 = v48;
      LODWORD(v5) = v49;
      v37 = DWORD1(v49);
      v38 = HIDWORD(*(&v49 + 1));
      aBlock = v49;
      v44 = v50;
      v45 = v51;
      v46 = v52;
      outlined init with copy of Text.Layout.Decorations.Segment(&aBlock, v42);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48 = v9;
      v39 = v26;
      v40 = v27;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_18:
        v30 = *(v9 + 16);
        v29 = *(v9 + 24);
        if (v30 >= v29 >> 1)
        {
          v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v9);
        }

        sub_18D36CCC8(v54);

        v31 = v48;
        *(v48 + 2) = v30 + 1;
        v32 = &v31[56 * v30];
        *(v32 + 8) = v5;
        *(v32 + 9) = v37;
        *(v32 + 10) = a2;
        *(v32 + 11) = v38;
        *(v32 + 6) = v3;
        *(v32 + 7) = v12;
        *(v32 + 8) = v39;
        *(v32 + 9) = GlyphCount;
        *(v32 + 10) = v40;
        v48 = v31;
        a2 = v41;
        goto LABEL_22;
      }

LABEL_28:
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 16) + 1, 1, v9);
      v48 = v9;
      goto LABEL_18;
    }

LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  __break(1u);
}

void closure #1 in Text.Layout.Decorations.init(line:origin:scale:runs:flags:typographicBounds:)(int a1, uint64_t a2, unint64_t *a3, char **a4, char **a5, char *a6, char *a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, char a17, double a18, char a19, char a20)
{
  v22 = a6;
  v23 = a5;
  if (a1 == 1)
  {
    Fragment = CTLineDecorationGetFragment();
    if (*(Fragment + 8) == *(Fragment + 24))
    {
      v39 = *(Fragment + 16);
      v40 = v39 >= *Fragment ? *(Fragment + 24) : *(Fragment + 8);
      v41 = v39 >= *Fragment ? *(Fragment + 16) : *Fragment;
      v42 = v39 >= *Fragment ? *(Fragment + 8) : *(Fragment + 24);
      v43 = v39 >= *Fragment ? *Fragment : *(Fragment + 16);
      if (a17 & 1) != 0 || (a19)
      {
        goto LABEL_71;
      }

      if (((a20 & 1) == 0 || *v23 != v22) && v43 < *&a8)
      {
        v43 = *&a8;
      }

      if (((a20 & 2) == 0 || v23[1] != a7) && v41 >= a18)
      {
        v41 = a18;
      }

      if (v43 < v41)
      {
LABEL_71:
        if (a3[5])
        {
          v44 = a3[6];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          a3[6] = v44;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v44 + 2) + 1, 1, v44);
            a3[6] = v44;
          }

          v47 = *(v44 + 2);
          v46 = *(v44 + 3);
          if (v47 >= v46 >> 1)
          {
            v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1, v44);
            a3[6] = v44;
          }

          *(v44 + 2) = v47 + 1;
          v48 = &v44[32 * v47];
          *(v48 + 4) = v43;
          *(v48 + 5) = v42;
          *(v48 + 6) = v41;
          *(v48 + 7) = v40;
        }
      }
    }

    return;
  }

  if (a1)
  {
    v49 = a3[3];
    v50 = a3[4];
    v51 = a3[5];
    if (v51)
    {
      v52 = a3[6];
      v54 = a3[1];
      v53 = a3[2];
      v55 = *a3;
      v102 = HIDWORD(*a3);
      v56 = *a4;
      *&v109 = *a3;
      *(&v109 + 1) = v54;
      v105 = v53;
      v107 = v52;
      *&v110 = v53;
      *(&v110 + 1) = v49;
      *&v111 = v50;
      *(&v111 + 1) = v51;
      v112 = v52;
      outlined init with copy of Text.Layout.Decorations.Segment(&v109, v108);
      v57 = swift_isUniquelyReferenced_nonNull_native();
      *a4 = v56;
      if ((v57 & 1) == 0)
      {
        v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v56 + 2) + 1, 1, v56);
        *a4 = v56;
      }

      v59 = *(v56 + 2);
      v58 = *(v56 + 3);
      if (v59 >= v58 >> 1)
      {
        v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v58 > 1), v59 + 1, 1, v56);
        *a4 = v56;
      }

      *(v56 + 2) = v59 + 1;
      v60 = &v56[56 * v59];
      *(v60 + 8) = v55;
      *(v60 + 9) = v102;
      *(v60 + 5) = v54;
      *(v60 + 6) = v105;
      *(v60 + 7) = v49;
      *(v60 + 8) = v50;
      *(v60 + 9) = v51;
      *(v60 + 10) = v107;
      v49 = a3[3];
      v50 = a3[4];
      v61 = a3[5];
    }

    else
    {
      v61 = 0;
    }

    v80 = *a3;
    v81 = a3[1];
    v82 = a3[2];
    v85 = a3[6];
    *(a3 + 1) = 0u;
    *(a3 + 2) = 0u;
    *a3 = 0u;
    a3[6] = 0;
    v83 = v49;
    v84 = v50;
    goto LABEL_58;
  }

  v26 = a3[3];
  v27 = a3[4];
  v28 = a3[5];
  if (!v28)
  {
    v36 = 0;
    goto LABEL_45;
  }

  v103 = a6;
  v104 = a5;
  v29 = a3[6];
  v20 = a3[1];
  v30 = a3[2];
  v23 = *a3;
  v98 = HIDWORD(*a3);
  v99 = HIDWORD(v20);
  v22 = *a4;
  *&v109 = *a3;
  *(&v109 + 1) = v20;
  v100 = v30;
  v101 = v29;
  *&v110 = v30;
  *(&v110 + 1) = v26;
  *&v111 = v27;
  *(&v111 + 1) = v28;
  v112 = v29;
  outlined init with copy of Text.Layout.Decorations.Segment(&v109, v108);
  v31 = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v22;
  v106 = a7;
  if ((v31 & 1) == 0)
  {
    goto LABEL_68;
  }

  while (1)
  {
    v33 = *(v22 + 2);
    v32 = *(v22 + 3);
    v34 = v33 + 1;
    if (v33 >= v32 >> 1)
    {
      v97 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v22);
      v34 = v33 + 1;
      v22 = v97;
      *a4 = v97;
    }

    *(v22 + 2) = v34;
    v35 = &v22[56 * v33];
    *(v35 + 8) = v23;
    *(v35 + 9) = v98;
    *(v35 + 10) = v20;
    *(v35 + 11) = v99;
    *(v35 + 6) = v100;
    *(v35 + 7) = v26;
    *(v35 + 8) = v27;
    *(v35 + 9) = v28;
    *(v35 + 10) = v101;
    v26 = a3[3];
    v27 = a3[4];
    v36 = a3[5];
    v23 = v104;
    a7 = v106;
    v22 = v103;
LABEL_45:
    v62 = *a3;
    v63 = a3[1];
    v64 = a3[2];
    v65 = a3[6];
    *(a3 + 1) = 0u;
    *(a3 + 2) = 0u;
    *a3 = 0u;
    a3[6] = 0;
    outlined consume of Text.Layout.Decorations.Segment?(v62, v63, v64, v26, v27, v36, v65);
    Segment = CTLineDecorationGetSegment();
    v67 = *(Segment + 56);
    v68 = *(Segment + 64);
    v69 = __OFADD__(v67, v68);
    v70 = (v67 + v68);
    if (v69)
    {
      __break(1u);
      goto LABEL_67;
    }

    if (v70 >= v67)
    {
      break;
    }

LABEL_67:
    __break(1u);
LABEL_68:
    v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 2) + 1, 1, v22);
    *a4 = v22;
  }

  *v23 = v67;
  v23[1] = v70;
  if (v70 > v22 && v67 < a7 && v22 != a7 && v67 != v70)
  {
    v71 = Segment;
    v72 = CTLineDecorationGetSegmentColor();
    v73 = 1.0;
    v74 = 0.0;
    if (!v72)
    {
      goto LABEL_54;
    }

    v75 = v72;
    v76 = CFGetTypeID(v72);
    if (v76 == CFNullGetTypeID())
    {
      swift_unknownObjectRelease();
LABEL_54:
      v77 = 0.0;
      v78 = 0.0;
    }

    else
    {
      if (v76 == CGColorGetTypeID())
      {
        type metadata accessor for CGColorRef(0);
        swift_unknownObjectRetain();
        v87 = swift_dynamicCastUnknownClassUnconditional();
        v88 = specialized Color.Resolved.init(failableCGColor:)(v87);
        v90 = v89;
        v92 = v91;
        swift_unknownObjectRelease();
        v77 = 0.0;
        v78 = 0.0;
        v73 = 0.0;
        if (v92)
        {
          goto LABEL_55;
        }

        v77 = *(&v88 + 1);
        v74 = *&v88;
        v78 = *&v90;
        v93 = HIDWORD(v90);
      }

      else
      {
        v94 = specialized Color.Resolved.init(platformColor:)(v75);
        v77 = 0.0;
        v78 = 0.0;
        if (v96)
        {
          goto LABEL_55;
        }

        v77 = *(&v94 + 1);
        v74 = *&v94;
        v78 = *&v95;
        v93 = HIDWORD(v95);
      }

      v73 = *&v93;
    }

LABEL_55:
    Text.Layout.Decorations.Segment.init(info:color:)(v71, &v109, v74, v77, v78, v73);
    v79 = v112;
    v80 = *a3;
    v81 = a3[1];
    v82 = a3[2];
    v83 = a3[3];
    v84 = a3[4];
    v61 = a3[5];
    v85 = a3[6];
    v86 = v110;
    *a3 = v109;
    *(a3 + 1) = v86;
    *(a3 + 2) = v111;
    a3[6] = v79;
LABEL_58:
    outlined consume of Text.Layout.Decorations.Segment?(v80, v81, v82, v83, v84, v61, v85);
  }
}

unint64_t Text.Layout.Decorations.subscript.getter@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(*v2 + 16) > result)
  {
    v3 = *v2 + 56 * result;
    v4 = *(v3 + 32);
    v5 = *(v3 + 48);
    v6 = *(v3 + 64);
    v10 = *(v3 + 80);
    v9[1] = v5;
    v9[2] = v6;
    v9[0] = v4;
    v7 = *(v3 + 48);
    *a2 = *(v3 + 32);
    *(a2 + 16) = v7;
    *(a2 + 32) = *(v3 + 64);
    *(a2 + 48) = *(v3 + 80);
    return outlined init with copy of Text.Layout.Decorations.Segment(v9, v8);
  }

  __break(1u);
  return result;
}

void (*protocol witness for Collection.subscript.read in conformance Text.Layout.Decorations(void (**a1)(uint64_t *a1), unint64_t *a2))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0xA8uLL);
  }

  *a1 = result;
  v6 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v6 < *(*v2 + 16))
  {
    v7 = *v2 + 56 * v6;
    v8 = *(v7 + 32);
    v9 = *(v7 + 48);
    v10 = *(v7 + 64);
    *(result + 6) = *(v7 + 80);
    *(result + 1) = v9;
    *(result + 2) = v10;
    *result = v8;
    v11 = *(v7 + 32);
    v12 = *(v7 + 48);
    v13 = *(v7 + 64);
    *(result + 13) = *(v7 + 80);
    *(result + 88) = v13;
    *(result + 72) = v12;
    *(result + 56) = v11;
    outlined init with copy of Text.Layout.Decorations.Segment(result, result + 112);
    return protocol witness for Collection.subscript.read in conformance Text.Layout.Decorations;
  }

  __break(1u);
  return result;
}

void protocol witness for Collection.subscript.read in conformance Text.Layout.Decorations(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  *(v1 + 112) = *(*a1 + 56);
  *(v1 + 128) = v2;
  *(v1 + 144) = *(v1 + 88);
  *(v1 + 160) = *(v1 + 104);
  outlined destroy of Text.Layout.Decorations.Segment(v1 + 112);

  free(v1);
}

void protocol witness for Collection.subscript.getter in conformance Text.Layout.Decorations(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1 < 0 || (v4 = a1[1], v5 = *v2, *(*v2 + 16) < v4))
  {
    __break(1u);
  }

  else
  {
    a2[1] = v4;
    a2[2] = v5;
    *a2 = v3;
  }
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance Text.Layout.Decorations()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(v0);

  return v1;
}

unint64_t Text.Layout.Cluster.subscript.getter@<X0>(unint64_t result@<X0>, _OWORD *a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(v2 + 16);
    if (*(v3 + 16) > result)
    {
      v4 = (v3 + (result << 6));
      v5 = v4[2];
      v6 = v4[3];
      v7 = v4[5];
      v11[2] = v4[4];
      v11[3] = v7;
      v11[0] = v5;
      v11[1] = v6;
      v8 = v4[3];
      *a2 = v4[2];
      a2[1] = v8;
      v9 = v4[5];
      a2[2] = v4[4];
      a2[3] = v9;
      return outlined init with copy of Text.Layout.RunSlice(v11, &v10);
    }
  }

  __break(1u);
  return result;
}

void *static Text.Layout.Cluster.== infix(_:_:)(void *result, void *a2)
{
  if (__OFSUB__(*a2, *result))
  {
    __break(1u);
  }

  else
  {
    if (*a2 != *result)
    {
      return 0;
    }

    v2 = result[1];
    v3 = a2[1];
    if (!__OFSUB__(v3, v2))
    {
      if (v3 == v2)
      {
        return _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI4TextV6LayoutV8RunSliceV_Tt1g5(result[2], a2[2]);
      }

      return 0;
    }
  }

  __break(1u);
  return result;
}

void *protocol witness for static Equatable.== infix(_:_:) in conformance Text.Layout.Cluster(void *result, void *a2)
{
  if (__OFSUB__(*a2, *result))
  {
    __break(1u);
  }

  else
  {
    if (*a2 != *result)
    {
      return 0;
    }

    v2 = result[1];
    v3 = a2[1];
    if (!__OFSUB__(v3, v2))
    {
      if (v3 == v2)
      {
        return _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI4TextV6LayoutV8RunSliceV_Tt1g5(result[2], a2[2]);
      }

      return 0;
    }
  }

  __break(1u);
  return result;
}

void *protocol witness for BidirectionalCollection.index(before:) in conformance Text.Layout.Cluster@<X0>(void *result@<X0>, unint64_t *a2@<X8>)
{
  v3 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if (v3 < *(*(v2 + 16) + 16))
  {
    *a2 = v3;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t *protocol witness for BidirectionalCollection.formIndex(before:) in conformance Text.Layout.Cluster(unint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if (v2 < *(*(v1 + 16) + 16))
  {
    *result = v2;
    return result;
  }

  __break(1u);
  return result;
}

void protocol witness for Collection.subscript.getter in conformance Text.Layout.Cluster(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (*a1 < 0 || (v4 = a1[1], v5 = *(v2 + 16), *(v5 + 16) < v4))
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = *v2;
    *(a2 + 32) = v5;
    *a2 = v3;
    *(a2 + 8) = v4;
  }
}

void protocol witness for Collection.indices.getter in conformance Text.Layout.Cluster(void *a1@<X8>)
{
  v2 = *(*(v1 + 16) + 16);
  *a1 = 0;
  a1[1] = v2;
}

void *protocol witness for RandomAccessCollection.index(_:offsetBy:) in conformance Text.Layout.Cluster@<X0>(void *result@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else if (v4 <= *(*(v3 + 16) + 16))
  {
    *a3 = v4;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t *protocol witness for RandomAccessCollection.distance(from:to:) in conformance Text.Layout.Cluster(unint64_t *result, unint64_t *a2)
{
  v3 = *a2;
  v4 = *(*(v2 + 16) + 16);
  if (*result <= v4 && v3 <= v4)
  {
    return (v3 - *result);
  }

  __break(1u);
  return result;
}

void *protocol witness for Collection.index(after:) in conformance Text.Layout.Cluster@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (*result >= *(*(v2 + 16) + 16))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *protocol witness for Sequence._copyToContiguousArray() in conformance Text.Layout.Cluster()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(v0);

  return v1;
}

void GraphicsContext.draw(_:foregroundColor:options:)(__n128 *a1, uint64_t a2, uint64_t a3, char a4, int a5, uint64_t a6)
{
  v8 = a1[1];
  v39 = *a1;
  v40 = v8;
  v9 = a1[2];
  v10 = a1[3];
  v41 = v9;
  v42 = v10;
  if ((a5 & 0x40) == 0)
  {
    v14 = *(a6 + 48);
    v15 = *(a6 + 52);
    v16 = *(a6 + 56);
    v23 = *(a6 + 24);
    v24 = v23;
    v25 = 0;
    v26 = v14;
    v27 = v15;
    v28 = v16;
    v29 = GraphicsContext.userToDeviceScale.getter(a6, v9);
    v17 = v39;
    v18 = v40;
    v19 = v41.n128_u32[0];
    v20 = v41.n128_u64[1];
    v35 = v39;
    v36 = v40;
    v37 = v41.n128_u32[0];
    v38 = v41.n128_u64[1];
    outlined init with copy of Text.Layout.RunSlice(&v39, &v31);
    v30 = Text.Layout.Run.drawingOptions.getter() | a5;
    v31 = v17;
    v32 = v18;
    v33.n128_u32[0] = v19;
    v33.n128_u64[1] = v20;
    if (__OFSUB__(v42.n128_u64[1], v42.n128_u64[0]))
    {
      __break(1u);
      return;
    }

    GlyphContext.drawRun(_:range:foregroundColor:)(&v31, v42.n128_i64[0], v42.n128_u64[1] - v42.n128_u64[0], v21, a2, a3, a4 & 1);

    if (v23 != v24)
    {
      RBDrawingStateDestroy();
    }
  }

  if ((a5 & 0x20) == 0)
  {
    v31 = v39;
    v32 = v40;
    v33 = v41;
    v34 = v42;
    outlined init with copy of Text.Layout.RunSlice(&v39, &v23);
    GraphicsContext.userToDeviceScale.getter(a6, v22);
    Text.Layout.Decorations.init(slice:scale:)(&v31, &v23);
    *&v31 = v23;
    GraphicsContext.draw(_:)(&v31, a6);
  }
}

void GraphicsContext.setTextMetadata(of:)(void *a1)
{
  v2 = CTLineGetRunAtIndex();
  GraphicsContext.copyOnWrite()();
  _RBDrawingStateSetTextRunRange(*(*v1 + 24), v2, 0, 0);
}

{
  v2 = a1[6];
  v3 = a1[7];
  v4 = CTLineGetRunAtIndex();
  v5 = __OFSUB__(v3, v2);
  v6 = v3 - v2;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    v7 = v4;
    GraphicsContext.copyOnWrite()();
    _RBDrawingStateSetTextRunRange(*(*v1 + 24), v7, v2, v6);
  }
}

uint64_t one-time initialization function for suffixNamespace()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v4 = UUID.uuid.getter();
  v6 = v5;
  result = (*(v1 + 8))(v3, v0);
  static GlyphContext.suffixNamespace = v4;
  unk_1EAB0E530 = v6;
  return result;
}

char *NSTextRange.textRange.getter()
{
  v1 = v0;
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    result = [v2 range];
    v5 = __OFADD__(result, v4);
    v6 = &result[v4];
    if (v5)
    {
      __break(1u);
    }

    else if (v6 >= result)
    {
      return result;
    }

    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  v7 = [objc_msgSend(v0 location)];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v7)
  {
    goto LABEL_6;
  }

  v15 = [v0 location];
  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (!v16)
  {
LABEL_12:
    swift_unknownObjectRelease();
LABEL_6:
    _sypSgMaTm_9(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Any>, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_18DDA6EB0;
    _StringGuts.grow(_:)(38);

    _StringGuts.grow(_:)(55);
    MEMORY[0x193ABEDD0](0xD000000000000035, 0x800000018DD7E860);
    v9 = [v1 description];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    MEMORY[0x193ABEDD0](v10, v12);

    MEMORY[0x193ABEDD0](2108704, 0xE300000000000000);
    v13 = StaticString.description.getter();
    MEMORY[0x193ABEDD0](v13);

    MEMORY[0x193ABEDD0](58, 0xE100000000000000);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x193ABEDD0](v14);

    MEMORY[0x193ABEDD0](0xD00000000000001CLL, 0x800000018DD77470);
    *(v8 + 56) = MEMORY[0x1E69E6158];
    *(v8 + 32) = 0;
    *(v8 + 40) = 0xE000000000000000;
    print(_:separator:terminator:)();

    return 0;
  }

  v17 = [v16 range];
  v1 = v18;
  result = swift_unknownObjectRelease();
  if (__OFADD__(v17, v1))
  {
    goto LABEL_15;
  }

  result = v17;
  if (&v1[v17] < v17)
  {
    __break(1u);
    goto LABEL_12;
  }

  return result;
}

BOOL specialized static Text.Layout.Run.== infix(_:_:)(uint64_t a1, double *a2)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v5 = a2[2];
  v4 = a2[3];
  v6 = CTLineGetRunAtIndex();
  v7 = CTLineGetRunAtIndex();

  return v6 == v7 && v3 == v5 && v2 == v4;
}

uint64_t specialized static Text.Layout.Line.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  if (*a1 == *a2)
  {
    v4 = *(a2 + 16);
  }

  else
  {
    v4 = 0;
  }

  if (*(a1 + 16))
  {
    return v4;
  }

  else
  {
    return (*a1 == *a2) & ~*(a2 + 16);
  }
}

BOOL specialized static Text.Layout.RunSlice.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *a2;
  v9 = *(a2 + 16);
  v8 = *(a2 + 24);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);

  v12 = v2;

  v13 = v7;
  v14 = CTLineGetRunAtIndex();
  v15 = CTLineGetRunAtIndex();

  result = 0;
  if (v14 == v15 && v4 == v9 && v3 == v8)
  {
    return v5 == v10 && v6 == v11;
  }

  return result;
}

void type metadata accessor for RangeSet<Int><>.IndexSequence(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, void, unint64_t))
{
  if (!*a2)
  {
    lazy protocol witness table accessor for type Int and conformance Int();
    v7 = a3(a1, MEMORY[0x1E69E6530], MEMORY[0x1E69E6570], v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t outlined destroy of RangeSet<Int><>.IndexSequence.Iterator(uint64_t a1)
{
  type metadata accessor for RangeSet<Int><>.IndexSequence(0, &lazy cache variable for type metadata for RangeSet<Int><>.IndexSequence.Iterator, type metadata accessor for RangeSet<>.IndexSequence.Iterator);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for RangeSet<Int>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void))
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

void lazy protocol witness table accessor for type Slice<Text.Layout.Line> and conformance <> Slice<A>()
{
  if (!lazy protocol witness table cache variable for type Slice<Text.Layout.Line> and conformance <> Slice<A>)
  {
    v6[3] = v0;
    v6[4] = v1;
    type metadata accessor for RangeSet<Text.Layout.CharacterIndex>(255, &lazy cache variable for type metadata for Slice<Text.Layout.Line>, lazy protocol witness table accessor for type Text.Layout.Line and conformance Text.Layout.Line, &type metadata for Text.Layout.Line, MEMORY[0x1E69E74D0]);
    v3 = v2;
    lazy protocol witness table accessor for type Text.Layout.Line and conformance Text.Layout.Line();
    v6[0] = v4;
    swift_getWitnessTable(MEMORY[0x1E69E74F0], v3, v6);
    atomic_store(v5, &lazy protocol witness table cache variable for type Slice<Text.Layout.Line> and conformance <> Slice<A>);
  }
}

{
  if (!lazy protocol witness table cache variable for type Slice<Text.Layout.Line> and conformance <> Slice<A>)
  {
    v6[3] = v0;
    v6[4] = v1;
    type metadata accessor for RangeSet<Text.Layout.CharacterIndex>(255, &lazy cache variable for type metadata for Slice<Text.Layout.Line>, lazy protocol witness table accessor for type Text.Layout.Line and conformance Text.Layout.Line, &type metadata for Text.Layout.Line, MEMORY[0x1E69E74D0]);
    v3 = v2;
    lazy protocol witness table accessor for type Text.Layout.Line and conformance Text.Layout.Line();
    v6[0] = v4;
    swift_getWitnessTable(MEMORY[0x1E69E74D8], v3, v6);
    atomic_store(v5, &lazy protocol witness table cache variable for type Slice<Text.Layout.Line> and conformance <> Slice<A>);
  }
}

void lazy protocol witness table accessor for type Slice<Text.Layout.Line> and conformance Slice<A>()
{
  if (!lazy protocol witness table cache variable for type Slice<Text.Layout.Line> and conformance Slice<A>)
  {
    type metadata accessor for RangeSet<Text.Layout.CharacterIndex>(255, &lazy cache variable for type metadata for Slice<Text.Layout.Line>, lazy protocol witness table accessor for type Text.Layout.Line and conformance Text.Layout.Line, &type metadata for Text.Layout.Line, MEMORY[0x1E69E74D0]);
    swift_getWitnessTable(MEMORY[0x1E69E74F8], v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type Slice<Text.Layout.Line> and conformance Slice<A>);
  }
}

void lazy protocol witness table accessor for type IndexingIterator<Text.Layout.Line> and conformance IndexingIterator<A>()
{
  if (!lazy protocol witness table cache variable for type IndexingIterator<Text.Layout.Line> and conformance IndexingIterator<A>)
  {
    type metadata accessor for RangeSet<Text.Layout.CharacterIndex>(255, &lazy cache variable for type metadata for IndexingIterator<Text.Layout.Line>, lazy protocol witness table accessor for type Text.Layout.Line and conformance Text.Layout.Line, &type metadata for Text.Layout.Line, MEMORY[0x1E69E6CF0]);
    swift_getWitnessTable(MEMORY[0x1E69E6CF8], v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type IndexingIterator<Text.Layout.Line> and conformance IndexingIterator<A>);
  }
}

void lazy protocol witness table accessor for type Text.Layout.Run and conformance Text.Layout.Run()
{
  if (!lazy protocol witness table cache variable for type Text.Layout.Run and conformance Text.Layout.Run)
  {
    swift_getWitnessTable(protocol conformance descriptor for Text.Layout.Run, &type metadata for Text.Layout.Run, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Text.Layout.Run and conformance Text.Layout.Run);
  }
}

{
  if (!lazy protocol witness table cache variable for type Text.Layout.Run and conformance Text.Layout.Run)
  {
    swift_getWitnessTable(protocol conformance descriptor for Text.Layout.Run, &type metadata for Text.Layout.Run, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Text.Layout.Run and conformance Text.Layout.Run);
  }
}

{
  if (!lazy protocol witness table cache variable for type Text.Layout.Run and conformance Text.Layout.Run)
  {
    swift_getWitnessTable(protocol conformance descriptor for Text.Layout.Run, &type metadata for Text.Layout.Run, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Text.Layout.Run and conformance Text.Layout.Run);
  }
}

void lazy protocol witness table accessor for type IndexingIterator<Text.Layout.Run> and conformance IndexingIterator<A>()
{
  if (!lazy protocol witness table cache variable for type IndexingIterator<Text.Layout.Run> and conformance IndexingIterator<A>)
  {
    type metadata accessor for RangeSet<Text.Layout.CharacterIndex>(255, &lazy cache variable for type metadata for IndexingIterator<Text.Layout.Run>, lazy protocol witness table accessor for type Text.Layout.Run and conformance Text.Layout.Run, &type metadata for Text.Layout.Run, MEMORY[0x1E69E6CF0]);
    swift_getWitnessTable(MEMORY[0x1E69E6CF8], v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type IndexingIterator<Text.Layout.Run> and conformance IndexingIterator<A>);
  }
}

void lazy protocol witness table accessor for type IndexingIterator<Text.Layout.RunSlice> and conformance IndexingIterator<A>()
{
  if (!lazy protocol witness table cache variable for type IndexingIterator<Text.Layout.RunSlice> and conformance IndexingIterator<A>)
  {
    type metadata accessor for RangeSet<Text.Layout.CharacterIndex>(255, &lazy cache variable for type metadata for IndexingIterator<Text.Layout.RunSlice>, lazy protocol witness table accessor for type Text.Layout.RunSlice and conformance Text.Layout.RunSlice, &type metadata for Text.Layout.RunSlice, MEMORY[0x1E69E6CF0]);
    swift_getWitnessTable(MEMORY[0x1E69E6CF8], v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type IndexingIterator<Text.Layout.RunSlice> and conformance IndexingIterator<A>);
  }
}

void lazy protocol witness table accessor for type Slice<Text.Layout> and conformance <> Slice<A>()
{
  if (!lazy protocol witness table cache variable for type Slice<Text.Layout> and conformance <> Slice<A>)
  {
    v6[3] = v0;
    v6[4] = v1;
    type metadata accessor for RangeSet<Text.Layout.CharacterIndex>(255, &lazy cache variable for type metadata for Slice<Text.Layout>, lazy protocol witness table accessor for type Text.Layout and conformance Text.Layout, &type metadata for Text.Layout, MEMORY[0x1E69E74D0]);
    v3 = v2;
    lazy protocol witness table accessor for type Text.Layout and conformance Text.Layout();
    v6[0] = v4;
    swift_getWitnessTable(MEMORY[0x1E69E74F0], v3, v6);
    atomic_store(v5, &lazy protocol witness table cache variable for type Slice<Text.Layout> and conformance <> Slice<A>);
  }
}

{
  if (!lazy protocol witness table cache variable for type Slice<Text.Layout> and conformance <> Slice<A>)
  {
    v6[3] = v0;
    v6[4] = v1;
    type metadata accessor for RangeSet<Text.Layout.CharacterIndex>(255, &lazy cache variable for type metadata for Slice<Text.Layout>, lazy protocol witness table accessor for type Text.Layout and conformance Text.Layout, &type metadata for Text.Layout, MEMORY[0x1E69E74D0]);
    v3 = v2;
    lazy protocol witness table accessor for type Text.Layout and conformance Text.Layout();
    v6[0] = v4;
    swift_getWitnessTable(MEMORY[0x1E69E74D8], v3, v6);
    atomic_store(v5, &lazy protocol witness table cache variable for type Slice<Text.Layout> and conformance <> Slice<A>);
  }
}

void lazy protocol witness table accessor for type Slice<Text.Layout> and conformance Slice<A>()
{
  if (!lazy protocol witness table cache variable for type Slice<Text.Layout> and conformance Slice<A>)
  {
    type metadata accessor for RangeSet<Text.Layout.CharacterIndex>(255, &lazy cache variable for type metadata for Slice<Text.Layout>, lazy protocol witness table accessor for type Text.Layout and conformance Text.Layout, &type metadata for Text.Layout, MEMORY[0x1E69E74D0]);
    swift_getWitnessTable(MEMORY[0x1E69E74F8], v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type Slice<Text.Layout> and conformance Slice<A>);
  }
}

void lazy protocol witness table accessor for type IndexingIterator<Text.Layout> and conformance IndexingIterator<A>()
{
  if (!lazy protocol witness table cache variable for type IndexingIterator<Text.Layout> and conformance IndexingIterator<A>)
  {
    type metadata accessor for RangeSet<Text.Layout.CharacterIndex>(255, &lazy cache variable for type metadata for IndexingIterator<Text.Layout>, lazy protocol witness table accessor for type Text.Layout and conformance Text.Layout, &type metadata for Text.Layout, MEMORY[0x1E69E6CF0]);
    swift_getWitnessTable(MEMORY[0x1E69E6CF8], v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type IndexingIterator<Text.Layout> and conformance IndexingIterator<A>);
  }
}

void lazy protocol witness table accessor for type Text.Layout.DrawingOptions and conformance Text.Layout.DrawingOptions()
{
  if (!lazy protocol witness table cache variable for type Text.Layout.DrawingOptions and conformance Text.Layout.DrawingOptions)
  {
    swift_getWitnessTable(protocol conformance descriptor for Text.Layout.DrawingOptions, &type metadata for Text.Layout.DrawingOptions, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Text.Layout.DrawingOptions and conformance Text.Layout.DrawingOptions);
  }
}

{
  if (!lazy protocol witness table cache variable for type Text.Layout.DrawingOptions and conformance Text.Layout.DrawingOptions)
  {
    swift_getWitnessTable(protocol conformance descriptor for Text.Layout.DrawingOptions, &type metadata for Text.Layout.DrawingOptions, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Text.Layout.DrawingOptions and conformance Text.Layout.DrawingOptions);
  }
}

{
  if (!lazy protocol witness table cache variable for type Text.Layout.DrawingOptions and conformance Text.Layout.DrawingOptions)
  {
    swift_getWitnessTable(protocol conformance descriptor for Text.Layout.DrawingOptions, &type metadata for Text.Layout.DrawingOptions, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Text.Layout.DrawingOptions and conformance Text.Layout.DrawingOptions);
  }
}

{
  if (!lazy protocol witness table cache variable for type Text.Layout.DrawingOptions and conformance Text.Layout.DrawingOptions)
  {
    swift_getWitnessTable(protocol conformance descriptor for Text.Layout.DrawingOptions, &type metadata for Text.Layout.DrawingOptions, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Text.Layout.DrawingOptions and conformance Text.Layout.DrawingOptions);
  }
}

void lazy protocol witness table accessor for type Slice<Text.Layout.Decorations.Segment> and conformance <> Slice<A>()
{
  if (!lazy protocol witness table cache variable for type Slice<Text.Layout.Decorations.Segment> and conformance <> Slice<A>)
  {
    v6[3] = v0;
    v6[4] = v1;
    type metadata accessor for RangeSet<Text.Layout.CharacterIndex>(255, &lazy cache variable for type metadata for Slice<Text.Layout.Decorations.Segment>, lazy protocol witness table accessor for type Text.Layout.Decorations.Segment and conformance Text.Layout.Decorations.Segment, &type metadata for Text.Layout.Decorations.Segment, MEMORY[0x1E69E74D0]);
    v3 = v2;
    lazy protocol witness table accessor for type Text.Layout.Decorations.Segment and conformance Text.Layout.Decorations.Segment();
    v6[0] = v4;
    swift_getWitnessTable(MEMORY[0x1E69E74F0], v3, v6);
    atomic_store(v5, &lazy protocol witness table cache variable for type Slice<Text.Layout.Decorations.Segment> and conformance <> Slice<A>);
  }
}

{
  if (!lazy protocol witness table cache variable for type Slice<Text.Layout.Decorations.Segment> and conformance <> Slice<A>)
  {
    v6[3] = v0;
    v6[4] = v1;
    type metadata accessor for RangeSet<Text.Layout.CharacterIndex>(255, &lazy cache variable for type metadata for Slice<Text.Layout.Decorations.Segment>, lazy protocol witness table accessor for type Text.Layout.Decorations.Segment and conformance Text.Layout.Decorations.Segment, &type metadata for Text.Layout.Decorations.Segment, MEMORY[0x1E69E74D0]);
    v3 = v2;
    lazy protocol witness table accessor for type Text.Layout.Decorations.Segment and conformance Text.Layout.Decorations.Segment();
    v6[0] = v4;
    swift_getWitnessTable(MEMORY[0x1E69E74D8], v3, v6);
    atomic_store(v5, &lazy protocol witness table cache variable for type Slice<Text.Layout.Decorations.Segment> and conformance <> Slice<A>);
  }
}

void lazy protocol witness table accessor for type Slice<Text.Layout.Decorations.Segment> and conformance Slice<A>()
{
  if (!lazy protocol witness table cache variable for type Slice<Text.Layout.Decorations.Segment> and conformance Slice<A>)
  {
    type metadata accessor for RangeSet<Text.Layout.CharacterIndex>(255, &lazy cache variable for type metadata for Slice<Text.Layout.Decorations.Segment>, lazy protocol witness table accessor for type Text.Layout.Decorations.Segment and conformance Text.Layout.Decorations.Segment, &type metadata for Text.Layout.Decorations.Segment, MEMORY[0x1E69E74D0]);
    swift_getWitnessTable(MEMORY[0x1E69E74F8], v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type Slice<Text.Layout.Decorations.Segment> and conformance Slice<A>);
  }
}

void lazy protocol witness table accessor for type IndexingIterator<Text.Layout.Decorations.Segment> and conformance IndexingIterator<A>()
{
  if (!lazy protocol witness table cache variable for type IndexingIterator<Text.Layout.Decorations.Segment> and conformance IndexingIterator<A>)
  {
    type metadata accessor for RangeSet<Text.Layout.CharacterIndex>(255, &lazy cache variable for type metadata for IndexingIterator<Text.Layout.Decorations.Segment>, lazy protocol witness table accessor for type Text.Layout.Decorations.Segment and conformance Text.Layout.Decorations.Segment, &type metadata for Text.Layout.Decorations.Segment, MEMORY[0x1E69E6CF0]);
    swift_getWitnessTable(MEMORY[0x1E69E6CF8], v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type IndexingIterator<Text.Layout.Decorations.Segment> and conformance IndexingIterator<A>);
  }
}

void lazy protocol witness table accessor for type Text.Layout.Decorations and conformance Text.Layout.Decorations()
{
  if (!lazy protocol witness table cache variable for type Text.Layout.Decorations and conformance Text.Layout.Decorations)
  {
    swift_getWitnessTable(protocol conformance descriptor for Text.Layout.Decorations, &type metadata for Text.Layout.Decorations, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Text.Layout.Decorations and conformance Text.Layout.Decorations);
  }
}

{
  if (!lazy protocol witness table cache variable for type Text.Layout.Decorations and conformance Text.Layout.Decorations)
  {
    swift_getWitnessTable(protocol conformance descriptor for Text.Layout.Decorations, &type metadata for Text.Layout.Decorations, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Text.Layout.Decorations and conformance Text.Layout.Decorations);
  }
}

{
  if (!lazy protocol witness table cache variable for type Text.Layout.Decorations and conformance Text.Layout.Decorations)
  {
    swift_getWitnessTable(protocol conformance descriptor for Text.Layout.Decorations, &type metadata for Text.Layout.Decorations, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Text.Layout.Decorations and conformance Text.Layout.Decorations);
  }
}

{
  if (!lazy protocol witness table cache variable for type Text.Layout.Decorations and conformance Text.Layout.Decorations)
  {
    swift_getWitnessTable(protocol conformance descriptor for Text.Layout.Decorations, &type metadata for Text.Layout.Decorations, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Text.Layout.Decorations and conformance Text.Layout.Decorations);
  }
}

void lazy protocol witness table accessor for type Slice<Text.Layout.Decorations> and conformance <> Slice<A>()
{
  if (!lazy protocol witness table cache variable for type Slice<Text.Layout.Decorations> and conformance <> Slice<A>)
  {
    v6[3] = v0;
    v6[4] = v1;
    type metadata accessor for RangeSet<Text.Layout.CharacterIndex>(255, &lazy cache variable for type metadata for Slice<Text.Layout.Decorations>, lazy protocol witness table accessor for type Text.Layout.Decorations and conformance Text.Layout.Decorations, &type metadata for Text.Layout.Decorations, MEMORY[0x1E69E74D0]);
    v3 = v2;
    lazy protocol witness table accessor for type Text.Layout.Decorations and conformance Text.Layout.Decorations();
    v6[0] = v4;
    swift_getWitnessTable(MEMORY[0x1E69E74F0], v3, v6);
    atomic_store(v5, &lazy protocol witness table cache variable for type Slice<Text.Layout.Decorations> and conformance <> Slice<A>);
  }
}

{
  if (!lazy protocol witness table cache variable for type Slice<Text.Layout.Decorations> and conformance <> Slice<A>)
  {
    v6[3] = v0;
    v6[4] = v1;
    type metadata accessor for RangeSet<Text.Layout.CharacterIndex>(255, &lazy cache variable for type metadata for Slice<Text.Layout.Decorations>, lazy protocol witness table accessor for type Text.Layout.Decorations and conformance Text.Layout.Decorations, &type metadata for Text.Layout.Decorations, MEMORY[0x1E69E74D0]);
    v3 = v2;
    lazy protocol witness table accessor for type Text.Layout.Decorations and conformance Text.Layout.Decorations();
    v6[0] = v4;
    swift_getWitnessTable(MEMORY[0x1E69E74D8], v3, v6);
    atomic_store(v5, &lazy protocol witness table cache variable for type Slice<Text.Layout.Decorations> and conformance <> Slice<A>);
  }
}

void lazy protocol witness table accessor for type Slice<Text.Layout.Decorations> and conformance Slice<A>()
{
  if (!lazy protocol witness table cache variable for type Slice<Text.Layout.Decorations> and conformance Slice<A>)
  {
    type metadata accessor for RangeSet<Text.Layout.CharacterIndex>(255, &lazy cache variable for type metadata for Slice<Text.Layout.Decorations>, lazy protocol witness table accessor for type Text.Layout.Decorations and conformance Text.Layout.Decorations, &type metadata for Text.Layout.Decorations, MEMORY[0x1E69E74D0]);
    swift_getWitnessTable(MEMORY[0x1E69E74F8], v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type Slice<Text.Layout.Decorations> and conformance Slice<A>);
  }
}

void lazy protocol witness table accessor for type IndexingIterator<Text.Layout.Decorations> and conformance IndexingIterator<A>()
{
  if (!lazy protocol witness table cache variable for type IndexingIterator<Text.Layout.Decorations> and conformance IndexingIterator<A>)
  {
    type metadata accessor for RangeSet<Text.Layout.CharacterIndex>(255, &lazy cache variable for type metadata for IndexingIterator<Text.Layout.Decorations>, lazy protocol witness table accessor for type Text.Layout.Decorations and conformance Text.Layout.Decorations, &type metadata for Text.Layout.Decorations, MEMORY[0x1E69E6CF0]);
    swift_getWitnessTable(MEMORY[0x1E69E6CF8], v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type IndexingIterator<Text.Layout.Decorations> and conformance IndexingIterator<A>);
  }
}

void lazy protocol witness table accessor for type Text.Layout.Cluster and conformance Text.Layout.Cluster()
{
  if (!lazy protocol witness table cache variable for type Text.Layout.Cluster and conformance Text.Layout.Cluster)
  {
    swift_getWitnessTable(protocol conformance descriptor for Text.Layout.Cluster, &type metadata for Text.Layout.Cluster, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Text.Layout.Cluster and conformance Text.Layout.Cluster);
  }
}

{
  if (!lazy protocol witness table cache variable for type Text.Layout.Cluster and conformance Text.Layout.Cluster)
  {
    swift_getWitnessTable(protocol conformance descriptor for Text.Layout.Cluster, &type metadata for Text.Layout.Cluster, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Text.Layout.Cluster and conformance Text.Layout.Cluster);
  }
}

{
  if (!lazy protocol witness table cache variable for type Text.Layout.Cluster and conformance Text.Layout.Cluster)
  {
    swift_getWitnessTable(protocol conformance descriptor for Text.Layout.Cluster, &type metadata for Text.Layout.Cluster, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Text.Layout.Cluster and conformance Text.Layout.Cluster);
  }
}

{
  if (!lazy protocol witness table cache variable for type Text.Layout.Cluster and conformance Text.Layout.Cluster)
  {
    swift_getWitnessTable(protocol conformance descriptor for Text.Layout.Cluster, &type metadata for Text.Layout.Cluster, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Text.Layout.Cluster and conformance Text.Layout.Cluster);
  }
}

void lazy protocol witness table accessor for type Slice<Text.Layout.Cluster> and conformance <> Slice<A>()
{
  if (!lazy protocol witness table cache variable for type Slice<Text.Layout.Cluster> and conformance <> Slice<A>)
  {
    v6[3] = v0;
    v6[4] = v1;
    type metadata accessor for RangeSet<Text.Layout.CharacterIndex>(255, &lazy cache variable for type metadata for Slice<Text.Layout.Cluster>, lazy protocol witness table accessor for type Text.Layout.Cluster and conformance Text.Layout.Cluster, &type metadata for Text.Layout.Cluster, MEMORY[0x1E69E74D0]);
    v3 = v2;
    lazy protocol witness table accessor for type Text.Layout.Cluster and conformance Text.Layout.Cluster();
    v6[0] = v4;
    swift_getWitnessTable(MEMORY[0x1E69E74F0], v3, v6);
    atomic_store(v5, &lazy protocol witness table cache variable for type Slice<Text.Layout.Cluster> and conformance <> Slice<A>);
  }
}

{
  if (!lazy protocol witness table cache variable for type Slice<Text.Layout.Cluster> and conformance <> Slice<A>)
  {
    v6[3] = v0;
    v6[4] = v1;
    type metadata accessor for RangeSet<Text.Layout.CharacterIndex>(255, &lazy cache variable for type metadata for Slice<Text.Layout.Cluster>, lazy protocol witness table accessor for type Text.Layout.Cluster and conformance Text.Layout.Cluster, &type metadata for Text.Layout.Cluster, MEMORY[0x1E69E74D0]);
    v3 = v2;
    lazy protocol witness table accessor for type Text.Layout.Cluster and conformance Text.Layout.Cluster();
    v6[0] = v4;
    swift_getWitnessTable(MEMORY[0x1E69E74D8], v3, v6);
    atomic_store(v5, &lazy protocol witness table cache variable for type Slice<Text.Layout.Cluster> and conformance <> Slice<A>);
  }
}

void lazy protocol witness table accessor for type Slice<Text.Layout.Cluster> and conformance Slice<A>()
{
  if (!lazy protocol witness table cache variable for type Slice<Text.Layout.Cluster> and conformance Slice<A>)
  {
    type metadata accessor for RangeSet<Text.Layout.CharacterIndex>(255, &lazy cache variable for type metadata for Slice<Text.Layout.Cluster>, lazy protocol witness table accessor for type Text.Layout.Cluster and conformance Text.Layout.Cluster, &type metadata for Text.Layout.Cluster, MEMORY[0x1E69E74D0]);
    swift_getWitnessTable(MEMORY[0x1E69E74F8], v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type Slice<Text.Layout.Cluster> and conformance Slice<A>);
  }
}

void lazy protocol witness table accessor for type IndexingIterator<Text.Layout.Cluster> and conformance IndexingIterator<A>()
{
  if (!lazy protocol witness table cache variable for type IndexingIterator<Text.Layout.Cluster> and conformance IndexingIterator<A>)
  {
    type metadata accessor for RangeSet<Text.Layout.CharacterIndex>(255, &lazy cache variable for type metadata for IndexingIterator<Text.Layout.Cluster>, lazy protocol witness table accessor for type Text.Layout.Cluster and conformance Text.Layout.Cluster, &type metadata for Text.Layout.Cluster, MEMORY[0x1E69E6CF0]);
    swift_getWitnessTable(MEMORY[0x1E69E6CF8], v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type IndexingIterator<Text.Layout.Cluster> and conformance IndexingIterator<A>);
  }
}

uint64_t assignWithCopy for Text.Layout(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = a2[2];
  return a1;
}

uint64_t assignWithTake for Text.Layout(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t assignWithCopy for Text.Layout.Line(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  outlined copy of Text.Layout.Line.Line(*a2, v5);
  v7 = *a1;
  v8 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  outlined consume of Text.Layout.Line.Line(v7, v8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t assignWithTake for Text.Layout.Line(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *a1;
  v6 = *(a1 + 8);
  *a1 = *a2;
  *(a1 + 16) = v4;
  outlined consume of Text.Layout.Line.Line(v5, v6);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t assignWithCopy for Text.Layout.Run(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t assignWithTake for Text.Layout.Run(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t assignWithCopy for Text.Layout.RunSlice(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t assignWithTake for Text.Layout.RunSlice(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t *assignWithCopy for Text.LayoutKey.AnchoredLayout(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  *(a1 + 16) = *(a2 + 16);
  a1[3] = a2[3];
  return a1;
}

uint64_t assignWithTake for Text.LayoutKey.AnchoredLayout(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

double destroy for Text.Layout.Decorations.Segment()
{

  return result;
}

uint64_t initializeWithCopy for Text.Layout.Decorations.Segment(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v3 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v3;

  return a1;
}

uint64_t assignWithCopy for Text.Layout.Decorations.Segment(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);

  return a1;
}

uint64_t assignWithTake for Text.Layout.Decorations.Segment(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t getEnumTagSinglePayload for Text.Layout.Decorations.Segment(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Text.Layout.Decorations.Segment(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t initializeBufferWithCopyOfBuffer for Text.Layout.Line.Line(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of Text.Layout.Line.Line(*a2, v4);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for Text.Layout.Line.Line(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of Text.Layout.Line.Line(*a2, v4);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  outlined consume of Text.Layout.Line.Line(v6, v7);
  return a1;
}

uint64_t assignWithTake for Text.Layout.Line.Line(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  *(a1 + 16) = v3;
  outlined consume of Text.Layout.Line.Line(v4, v5);
  return a1;
}

uint64_t specialized TextRenderer.sizeThatFits(proposal:text:)(uint64_t result, char a2, uint64_t a3, char a4, uint64_t *a5)
{
  if ((a2 & 1) != 0 || (result & 0x7FFFFFFFFFFFFFFFLL) != 0 || (a4 & 1) != 0 || (a3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v12 = v5;
    v13 = v6;
    v7 = *a5;
    v8 = result;
    v9 = a2 & 1;
    v10 = a3;
    v11 = a4 & 1;
    return (*(*v7 + 232))(&v8);
  }

  return result;
}

double outlined consume of Text.Layout.Run?(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
  }

  return result;
}

uint64_t outlined init with copy of Text.Layout.Run(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  *a2 = *a1;
  *(a2 + 8) = v4;
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 40) = *(a1 + 40);
  v5 = v3;

  return a2;
}

uint64_t outlined init with copy of AnyTextLayoutRenderer?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Attribute<TextRendererBoxBase>(0, &lazy cache variable for type metadata for AnyTextLayoutRenderer?, a3, type metadata accessor for AnyTextLayoutRenderer, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of AnyTextLayoutRenderer?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Attribute<TextRendererBoxBase>(0, &lazy cache variable for type metadata for AnyTextLayoutRenderer?, a3, type metadata accessor for AnyTextLayoutRenderer, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void type metadata accessor for (NSAttributedStringKey, CGColorRef)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (NSAttributedStringKey, CGColorRef))
  {
    type metadata accessor for NSAttributedStringKey(255);
    type metadata accessor for CGColorRef(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (NSAttributedStringKey, CGColorRef));
    }
  }
}

char *specialized TextRenderer_V2Box.init(_:in:)(uint64_t a1)
{
  v2 = MEMORY[0x1EEE9AC00](a1);
  v4 = &v11 - v3;
  v6 = *v5;
  v7 = v5[1];
  (*(v8 + 16))(&v11 - v3, v9, v2);
  (*(*(*(*v1 + 128) - 8) + 32))(&v1[*(*v1 + 144)], v4);
  *(v1 + 2) = v6;
  *(v1 + 3) = v7;
  return v1;
}

double _ss8RangeSetV7SwiftUIEyAByxGqd__cSTRd__SnyxG7ElementRtd__lufC10Foundation16AttributedStringV5IndexV_SaySnyALGGTt1g5(uint64_t a1, double a2)
{
  type metadata accessor for Range<AttributedString.Index>(0, a2);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  _sSny10Foundation16AttributedStringV5IndexVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0], v5);
  MEMORY[0x1EEE9AC00](v8);
  type metadata accessor for AttributedString.Index();
  _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_0(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8], MEMORY[0x1E69687F0]);
  RangeSet.init()();
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);
    do
    {
      outlined init with copy of Range<AttributedString.Index>(v10, v7, type metadata accessor for Range<AttributedString.Index>);
      RangeSet.init(_:)();
      RangeSet.formUnion(_:)();
      v10 += v11;
      --v9;
    }

    while (v9);
  }

  return result;
}

double _ss8RangeSetV7SwiftUIEyAByxGqd__cSTRd__SnyxG7ElementRtd__lufCSS5IndexV_SaySnyAIGGTt1g5(uint64_t a1)
{
  type metadata accessor for RangeSet<String.Index>();
  MEMORY[0x1EEE9AC00](v2);
  RangeSet.init()();
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 32;
    do
    {
      RangeSet.init(_:)();
      RangeSet.formUnion(_:)();
      v4 += 16;
      --v3;
    }

    while (v3);
  }

  return result;
}

void _s10Foundation16AttributedStringV7SwiftUIE9transform8updating4bodyys8RangeSetVyAC5IndexVGz_yACz_SnyAKGtxYKXEtxYKs5ErrorRzlF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28 = a6;
  v7 = v6;
  v32 = a3;
  v31 = a2;
  v11 = *(a4 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v33 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<AttributedString.Index>(0, v12);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RangeSet<AttributedString.Index>.Ranges(0, v16);
  v20 = MEMORY[0x1EEE9AC00](v19);
  _sSny10Foundation16AttributedStringV5IndexVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0], v20);
  v29 = v21;
  v30 = a1;
  RangeSet.ranges.getter();
  _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_0(&lazy protocol witness table cache variable for type RangeSet<AttributedString.Index>.Ranges and conformance RangeSet<A>.Ranges, type metadata accessor for RangeSet<AttributedString.Index>.Ranges, MEMORY[0x1E69E7BB8]);
  v34 = dispatch thunk of Sequence._copyToContiguousArray()();
  v22 = *(v34 + 16);
  if (v22)
  {
    v27 = v11;
    v23 = 0;
    while (v23 < *(v34 + 16))
    {
      v24 = outlined init with copy of Range<AttributedString.Index>(v34 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v23, v18, type metadata accessor for Range<AttributedString.Index>);
      MEMORY[0x1EEE9AC00](v24);
      *(&v27 - 6) = a4;
      *(&v27 - 5) = a5;
      v25 = v32;
      *(&v27 - 4) = v31;
      *(&v27 - 3) = v25;
      *(&v27 - 2) = v18;
      _s10Foundation16AttributedStringV9transform8updating4bodyySaySnyAC5IndexVGGz_yACzxYKXEtxYKs5ErrorRzlF();
      if (v7)
      {
        (*(v27 + 32))(v28, v33, a4);
        _sSny10Foundation16AttributedStringV5IndexVGWOhTm_0(v18, type metadata accessor for Range<AttributedString.Index>);

        return;
      }

      v7 = 0;
      ++v23;
      _sSny10Foundation16AttributedStringV5IndexVGWOhTm_0(v18, type metadata accessor for Range<AttributedString.Index>);
      if (v22 == v23)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
    v26 = (*(*(v29 - 8) + 8))(v30);
    _ss8RangeSetV7SwiftUIEyAByxGqd__cSTRd__SnyxG7ElementRtd__lufC10Foundation16AttributedStringV5IndexV_SaySnyALGGTt1g5(v34, v26);
  }
}

void _sSny10Foundation16AttributedStringV5IndexVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), double a4)
{
  if (!*a2)
  {
    v7 = type metadata accessor for AttributedString.Index();
    _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_0(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8], MEMORY[0x1E69687F0]);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  if (!*a1)
  {
    v5 = a2(255);
    swift_getWitnessTable(a3, v5);
    atomic_store(v6, a1);
  }
}

uint64_t _s10Foundation16AttributedStringV7SwiftUIE9transform8updating4bodyys8RangeSetVyAC5IndexVGz_yACz_SnyAKGtxYKXEtxYKs5ErrorRzlFyACzxYKXEfU_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(a5 - 8);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v14(v11);
  if (v7)
  {
    return (*(v10 + 32))(a7, v13, a5);
  }

  return result;
}

uint64_t _s10Foundation16AttributedStringV7SwiftUIE9transform8updating4bodyyAC5IndexVz_yACzxYKXEtxYKs5ErrorRzlF(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v56 = a4;
  v53 = a5;
  v51 = a2;
  v52 = a3;
  v45 = *(a4 - 8);
  v46 = a6;
  v7 = MEMORY[0x1EEE9AC00](a1);
  v54 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index)(0, v7);
  v50 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v47 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v42 - v12;
  v14 = type metadata accessor for AttributedString.Index();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v42 - v20;
  type metadata accessor for Range<AttributedString.Index>(0, v19);
  v49 = v22;
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v42 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v15 + 16);
  v26(v21, a1, v14, v23);
  v43 = v26;
  v44 = a1;
  (v26)(v17, a1, v14);
  _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_0(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8], MEMORY[0x1E69687F0]);
  v48 = v17;
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v42 = v15 + 16;
    v28 = *(v15 + 32);
    v28(v13, v21, v14);
    v29 = v13;
    v30 = v47;
    v57 = v25;
    v31 = v15;
    v32 = v50;
    v28((v29 + *(v50 + 48)), v48, v14);
    outlined init with copy of Range<AttributedString.Index>(v29, v30, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
    v33 = *(v32 + 48);
    v28(v57, v30, v14);
    v34 = *(v31 + 8);
    v35 = v34(v30 + v33, v14);
    outlined init with take of (lower: AttributedString.Index, upper: AttributedString.Index)(v29, v30, v35);
    v36 = *(v32 + 48);
    v37 = v57;
    v28(&v57[*(v49 + 36)], (v30 + v36), v14);
    v34(v30, v14);
    v39 = v55;
    v38 = v56;
    v40 = v54;
    _s10Foundation16AttributedStringV9transform8updating4bodyySnyAC5IndexVGz_yACzxYKXEtxYKs5ErrorRzlF();
    if (v39)
    {
      _sSny10Foundation16AttributedStringV5IndexVGWOhTm_0(v37, type metadata accessor for Range<AttributedString.Index>);
      return (*(v45 + 32))(v46, v40, v38);
    }

    else
    {
      v41 = v44;
      v34(v44, v14);
      v43(v41, v37, v14);
      return _sSny10Foundation16AttributedStringV5IndexVGWOhTm_0(v37, type metadata accessor for Range<AttributedString.Index>);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t outlined init with copy of Range<AttributedString.Index>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of (lower: AttributedString.Index, upper: AttributedString.Index)(uint64_t a1, uint64_t a2, double a3)
{
  type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index)(0, a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t AttributedString.replaceSubrange<A>(_:with:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index)(0, a5);
  v44 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v43 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v42 = &v41 - v12;
  v51 = type metadata accessor for AttributedString.UTF8View();
  v48 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v41 - v16;
  v18 = type metadata accessor for AttributedString.Index();
  v46 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v52 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v45 = &v41 - v22;
  type metadata accessor for Range<AttributedString.Index>(0, v21);
  v24 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v41 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Range<AttributedString.Index>(a1, v26, type metadata accessor for Range<AttributedString.Index>);
  v49 = a3;
  v50 = a4;
  v53 = a3;
  v54 = a4;
  v55 = v26;
  v56 = a2;
  v47 = a2;
  _s10Foundation16AttributedStringV9transform8updating4bodyySnyAC5IndexVGz_yACzxYKXEtxYKs5ErrorRzlF();
  _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_0(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8], MEMORY[0x1E69687F8]);
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    return _sSny10Foundation16AttributedStringV5IndexVGWOhTm_0(v26, type metadata accessor for Range<AttributedString.Index>);
  }

  v27 = *(v24 + 36);
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    return _sSny10Foundation16AttributedStringV5IndexVGWOhTm_0(v26, type metadata accessor for Range<AttributedString.Index>);
  }

  AttributedString.utf8.getter();
  dispatch thunk of AttributedStringProtocol.utf8.getter();
  v28 = AttributedString.UTF8View.count.getter();
  v29 = *(v48 + 8);
  v30 = v14;
  v31 = v51;
  result = v29(v30, v51);
  if (__OFSUB__(0, v28))
  {
    __break(1u);
  }

  else
  {
    v33 = v45;
    AttributedString.UTF8View.index(_:offsetBy:)();
    v29(v17, v31);
    v34 = v46;
    (*(v46 + 16))(v52, &a1[v27], v18);
    _sSny10Foundation16AttributedStringV5IndexVGWOhTm_0(a1, type metadata accessor for Range<AttributedString.Index>);
    _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_0(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8], MEMORY[0x1E69687F0]);
    result = dispatch thunk of static Comparable.<= infix(_:_:)();
    if (result)
    {
      v35 = *(v34 + 32);
      v51 = v27;
      v36 = v42;
      v35(v42, v33, v18);
      v37 = v44;
      v35((v36 + *(v44 + 48)), v52, v18);
      v38 = v43;
      outlined init with copy of Range<AttributedString.Index>(v36, v43, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
      v52 = *(v37 + 48);
      v35(a1, v38, v18);
      v39 = *(v34 + 8);
      v40 = v39(&v52[v38], v18);
      outlined init with take of (lower: AttributedString.Index, upper: AttributedString.Index)(v36, v38, v40);
      v35(&a1[v51], (v38 + *(v37 + 48)), v18);
      v39(v38, v18);
      return _sSny10Foundation16AttributedStringV5IndexVGWOhTm_0(v26, type metadata accessor for Range<AttributedString.Index>);
    }
  }

  __break(1u);
  return result;
}

uint64_t partial apply for closure #1 in AttributedString.replaceSubrange<A>(_:with:)(double a1)
{
  type metadata accessor for Range<AttributedString.Index>(0, a1);
  _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_0(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>, MEMORY[0x1E69E66D8]);
  return AttributedString.replaceSubrange<A, B>(_:with:)();
}

uint64_t Sequence<>.joined<A>(separator:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v21 = a5;
  v22 = a6;
  v20 = a1;
  v23 = a7;
  v10 = type metadata accessor for AttributedString();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for EnumeratedSequence();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v20 - v17;
  MEMORY[0x193ABEF60](a2, a4, v16);
  AttributedString.init()();
  v24 = a2;
  v25 = a3;
  v26 = a4;
  v27 = v21;
  v28 = v22;
  v29 = v20;
  swift_getWitnessTable(MEMORY[0x1E69E6E60], v14);
  Sequence.reduce<A>(_:_:)();
  (*(v11 + 8))(v13, v10);
  return (*(v15 + 8))(v18, v14);
}

uint64_t closure #1 in Sequence<>.joined<A>(separator:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X4>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v26[4] = a9;
  v26[5] = a8;
  v26[1] = a5;
  v26[2] = a7;
  v26[0] = a3;
  v26[3] = a1;
  v10 = type metadata accessor for AttributedString();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v17 = (v26 - v16);
  v18 = *(AssociatedTypeWitness - 8);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = v26 - v21;
  (*(v23 + 16))(v17, a2, TupleTypeMetadata2, v20);
  v24 = *v17;
  (*(v18 + 32))(v22, v17 + *(TupleTypeMetadata2 + 48), AssociatedTypeWitness);
  static AttributedString.+ infix<A>(_:_:)();
  if (v24 >= 1)
  {
    static AttributedString.+ infix<A>(_:_:)();
    (*(v11 + 8))(v13, v10);
  }

  return (*(v18 + 8))(v22, AssociatedTypeWitness);
}

Swift::Void __swiftcall AttributedString.CStringCache.invalidate()()
{
  v1 = *v0;
  if (*v0)
  {
    v3 = *v0;
    *v0 = 0;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      specialized ContiguousArray.replaceSubrange<A>(_:with:)(0, *(v1 + 16), specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
      *v0 = v3;
    }

    else
    {
      v2 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs4Int8V_Tt1g5(0, *(v1 + 24) >> 1);

      *v0 = v2;
    }
  }

  else
  {
    *v0 = MEMORY[0x1E69E7CC0];
  }
}

uint64_t AttributedString.CStringCache.buffer<A>(for:maxLength:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v46 = type metadata accessor for AttributedString.Index();
  v43 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v45 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AttributedString.UTF8View();
  v42 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v39 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IndexingIterator<AttributedString.UTF8View>(0, v10);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AttributedString.CharacterView();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a1;
  v41 = a3;
  dispatch thunk of AttributedStringProtocol.characters.getter();
  v19 = AttributedString.CharacterView._count.getter();
  (*(v16 + 8))(v18, v15);
  if (v19 > a2)
  {
    return 0;
  }

  v20 = v44;
  v21 = *v44;
  if (!*v44)
  {
    return 0;
  }

  v48 = *v44;
  if (*(v21 + 16))
  {
  }

  else
  {
    *v44 = 0;
    v23 = v39;
    dispatch thunk of AttributedStringProtocol.utf8.getter();
    v24 = v42;
    (*(v42 + 16))(v14, v23, v9);
    _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_0(&lazy protocol witness table cache variable for type AttributedString.UTF8View and conformance AttributedString.UTF8View, MEMORY[0x1E6968800], MEMORY[0x1E6968808]);
    dispatch thunk of Collection.startIndex.getter();
    (*(v24 + 8))(v23, v9);
    v25 = (v43 + 8);
    while (1)
    {
      v26 = v45;
      dispatch thunk of Collection.endIndex.getter();
      _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_0(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8], MEMORY[0x1E69687F8]);
      v27 = v46;
      v28 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v25)(v26, v27);
      if (v28)
      {
        break;
      }

      v29 = dispatch thunk of Collection.subscript.read();
      v31 = *v30;
      v29(v47, 0);
      dispatch thunk of Collection.formIndex(after:)();
      if (v31 < 0)
      {
        _sSny10Foundation16AttributedStringV5IndexVGWOhTm_0(v14, type metadata accessor for IndexingIterator<AttributedString.UTF8View>);

        return 0;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48 = v21;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v21 + 16) + 1, 1);
        v21 = v48;
      }

      v34 = *(v21 + 16);
      v33 = *(v21 + 24);
      if (v34 >= v33 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1);
        v21 = v48;
      }

      *(v21 + 16) = v34 + 1;
      *(v21 + v34 + 32) = v31;
    }

    _sSny10Foundation16AttributedStringV5IndexVGWOhTm_0(v14, type metadata accessor for IndexingIterator<AttributedString.UTF8View>);
    v35 = swift_isUniquelyReferenced_nonNull_native();
    v48 = v21;
    if ((v35 & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v21 + 16) + 1, 1);
      v21 = v48;
    }

    v20 = v44;
    v37 = *(v21 + 16);
    v36 = *(v21 + 24);
    if (v37 >= v36 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1);
      v21 = v48;
    }

    *(v21 + 16) = v37 + 1;
    *(v21 + v37 + 32) = 0;
  }

  *v20 = v21;

  return v21 + 32;
}

Swift::Void __swiftcall AttributedString.UTF16Cache.invalidate()()
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *v0;
  if (isUniquelyReferenced_nonNull_native)
  {
    specialized ContiguousArray.replaceSubrange<A>(_:with:)(0, *(v2 + 16), specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
  }

  else
  {
    if (*(v2 + 24) >= 2uLL)
    {
      type metadata accessor for _ContiguousArrayStorage<UInt16>();
      v3 = swift_allocObject();
      v4 = _swift_stdlib_malloc_size(v3);
      v3[2] = 0;
      v3[3] = (v4 - 32 + ((v4 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
    }

    else
    {
      v3 = MEMORY[0x1E69E7CC0];
    }

    *v0 = v3;
  }
}

uint64_t AttributedString.UTF16Cache.buffer<A>(for:maxLength:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, double a5)
{
  v6 = v5;
  i = a2;
  v42 = type metadata accessor for AttributedString.Index();
  v39 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v41 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AttributedString.UTF16View();
  v38 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v36 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IndexingIterator<AttributedString.UTF16View>(0, v10);
  v35 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AttributedString.CharacterView();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a1;
  dispatch thunk of AttributedStringProtocol.characters.getter();
  v19 = AttributedString.CharacterView._count.getter();
  (*(v16 + 8))(v18, v15);
  result = 0;
  if (v19 <= i)
  {
    v21 = *v6;
    if (!*(*v6 + 16))
    {
      v22 = v36;
      dispatch thunk of AttributedStringProtocol.utf16.getter();
      v23 = v38;
      (*(v38 + 16))(v14, v22, v9);
      _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_0(&lazy protocol witness table cache variable for type AttributedString.UTF16View and conformance AttributedString.UTF16View, MEMORY[0x1E6968810], MEMORY[0x1E6968818]);
      dispatch thunk of Collection.startIndex.getter();
      (*(v23 + 8))(v22, v9);
      v24 = (v39 + 8);
      for (i = v6; ; *i = v21)
      {
        v25 = v41;
        dispatch thunk of Collection.endIndex.getter();
        _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_0(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8], MEMORY[0x1E69687F8]);
        v26 = v42;
        v27 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*v24)(v25, v26);
        if (v27)
        {
          break;
        }

        v28 = dispatch thunk of Collection.subscript.read();
        v30 = *v29;
        v28(v43, 0);
        dispatch thunk of Collection.formIndex(after:)();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v6 = v21;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v21 + 16) + 1, 1);
          v21 = *v6;
        }

        v33 = *(v21 + 16);
        v32 = *(v21 + 24);
        if (v33 >= v32 >> 1)
        {
          v34 = i;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1);
          v21 = *v34;
        }

        *(v21 + 16) = v33 + 1;
        *(v21 + 2 * v33 + 32) = v30;
        v6 = i;
      }

      _sSny10Foundation16AttributedStringV5IndexVGWOhTm_0(v14, type metadata accessor for IndexingIterator<AttributedString.UTF16View>);
    }

    return v21 + 32;
  }

  return result;
}

void type metadata accessor for IndexingIterator<AttributedString.UTF8View>(uint64_t a1, double a2)
{
  if (!lazy cache variable for type metadata for IndexingIterator<AttributedString.UTF8View>)
  {
    type metadata accessor for AttributedString.UTF8View();
    _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_0(&lazy protocol witness table cache variable for type AttributedString.UTF8View and conformance AttributedString.UTF8View, MEMORY[0x1E6968800], MEMORY[0x1E6968808]);
    v2 = type metadata accessor for IndexingIterator();
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for IndexingIterator<AttributedString.UTF8View>);
    }
  }
}

uint64_t _sSny10Foundation16AttributedStringV5IndexVGWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for _ContiguousArrayStorage<UInt16>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<UInt16>)
  {
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<UInt16>);
    }
  }
}

uint64_t specialized ContiguousArray.replaceSubrange<A>(_:with:)(uint64_t result, uint64_t a2, void (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_16:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    a3();
  }

  return a4(v8, a2, 0);
}

void type metadata accessor for IndexingIterator<AttributedString.UTF16View>(uint64_t a1, double a2)
{
  if (!lazy cache variable for type metadata for IndexingIterator<AttributedString.UTF16View>)
  {
    type metadata accessor for AttributedString.UTF16View();
    _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_0(&lazy protocol witness table cache variable for type AttributedString.UTF16View and conformance AttributedString.UTF16View, MEMORY[0x1E6968810], MEMORY[0x1E6968818]);
    v2 = type metadata accessor for IndexingIterator();
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for IndexingIterator<AttributedString.UTF16View>);
    }
  }
}

void type metadata accessor for RangeSet<String.Index>()
{
  if (!lazy cache variable for type metadata for RangeSet<String.Index>)
  {
    v0 = type metadata accessor for RangeSet();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for RangeSet<String.Index>);
    }
  }
}

uint64_t Text.italic()(uint64_t a1, uint64_t a2, char a3, char *a4)
{
  outlined copy of Text.Storage(a1, a2, a3 & 1);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    a4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a4 + 2) + 1, 1, a4);
  }

  v7 = *(a4 + 2);
  v6 = *(a4 + 3);
  if (v7 >= v6 >> 1)
  {
    a4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, a4);
  }

  *(a4 + 2) = v7 + 1;
  v8 = &a4[16 * v7];
  *(v8 + 4) = 0;
  v8[40] = -32;
  return a1;
}

uint64_t Text.fontWidth(_:)(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, char *a5)
{
  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  type metadata accessor for TextWidthModifier();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = v9;
  outlined copy of Text.Storage(a2, a3, a4 & 1);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    a5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a5 + 2) + 1, 1, a5);
  }

  v13 = *(a5 + 2);
  v12 = *(a5 + 3);
  if (v13 >= v12 >> 1)
  {
    a5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, a5);
  }

  *(a5 + 2) = v13 + 1;
  v14 = &a5[16 * v13];
  *(v14 + 4) = v11;
  v14[40] = -64;
  return a2;
}

uint64_t Text.monospaced(_:)(char a1, uint64_t a2, uint64_t a3, char a4, char *a5, uint64_t (*a6)(void))
{
  a6(0);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  outlined copy of Text.Storage(a2, a3, a4 & 1);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    a5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a5 + 2) + 1, 1, a5);
  }

  v13 = *(a5 + 2);
  v12 = *(a5 + 3);
  if (v13 >= v12 >> 1)
  {
    a5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, a5);
  }

  *(a5 + 2) = v13 + 1;
  v14 = &a5[16 * v13];
  *(v14 + 4) = v11;
  v14[40] = -64;
  return a2;
}

uint64_t Text.strikethrough(_:color:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char *a6, uint64_t (*a7)(void, __n128), __n128 a8)
{
  if (a1)
  {

    v14 = 1;
  }

  else
  {
    v14 = 0;
    a2 = 1;
  }

  (a7)(0);
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = a2;
  outlined copy of Text.Storage(a3, a4, a5 & 1);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    a6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a6 + 2) + 1, 1, a6);
  }

  v17 = *(a6 + 2);
  v16 = *(a6 + 3);
  if (v17 >= v16 >> 1)
  {
    a6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, a6);
  }

  *(a6 + 2) = v17 + 1;
  v18 = &a6[16 * v17];
  *(v18 + 4) = v15;
  v18[40] = -64;
  return a3;
}

uint64_t Text.strikethrough(_:pattern:color:)(char a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char *a7, uint64_t (*a8)(void, __n128), __n128 a9)
{
  if (a1)
  {
    v15 = *a2 | 1;
  }

  else
  {
    v15 = 0;
    a3 = 1;
  }

  (a8)(0);
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = a3;
  outlined copy of Text.Storage(a4, a5, a6 & 1);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    a7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a7 + 2) + 1, 1, a7);
  }

  v18 = *(a7 + 2);
  v17 = *(a7 + 3);
  if (v18 >= v17 >> 1)
  {
    a7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, a7);
  }

  *(a7 + 2) = v18 + 1;
  v19 = &a7[16 * v18];
  *(v19 + 4) = v16;
  v19[40] = -64;
  return a4;
}

uint64_t Text.fontDesign(_:)(char *a1, uint64_t a2, uint64_t a3, char a4, char *a5, uint64_t (*a6)(void))
{
  v10 = *a1;
  a6(0);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  outlined copy of Text.Storage(a2, a3, a4 & 1);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    a5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a5 + 2) + 1, 1, a5);
  }

  v13 = *(a5 + 2);
  v12 = *(a5 + 3);
  if (v13 >= v12 >> 1)
  {
    a5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, a5);
  }

  *(a5 + 2) = v13 + 1;
  v14 = &a5[16 * v13];
  *(v14 + 4) = v11;
  v14[40] = -64;
  return a2;
}

uint64_t Text.monospacedDigit()(uint64_t a1, uint64_t a2, char a3, char *a4, uint64_t (*a5)(void))
{
  a5(0);
  v9 = swift_allocObject();
  outlined copy of Text.Storage(a1, a2, a3 & 1);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    a4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a4 + 2) + 1, 1, a4);
  }

  v11 = *(a4 + 2);
  v10 = *(a4 + 3);
  if (v11 >= v10 >> 1)
  {
    a4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, a4);
  }

  *(a4 + 2) = v11 + 1;
  v12 = &a4[16 * v11];
  *(v12 + 4) = v9;
  v12[40] = -64;
  return a1;
}

uint64_t specialized Text.isCollapsible()(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = (a1 + 40);
  while (1)
  {
    v3 = *v2;
    v2 += 16;
    if ((v3 & 0xE0) == 0xC0)
    {
      type metadata accessor for CollapsibleTextModifier();
      if (swift_dynamicCastClass())
      {
        break;
      }
    }

    if (!--v1)
    {
      return 0;
    }
  }

  return 1;
}

void EnvironmentValues.textScale.getter(char *a1@<X8>)
{
  v2 = *v1;
  if (v1[1])
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA09TextScaleI0VG_Tt1g5(v2, a1);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA09TextScaleF0VG_Tt2g5(v2, a1);
  }
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance Text.Scale.Storage.CodingKeys()
{
  if (*v0)
  {
    return 0x7261646E6F636573;
  }

  else
  {
    return 0x746C7561666564;
  }
}

void protocol witness for CodingKey.init(stringValue:) in conformance Text.Scale.Storage.CodingKeys(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746C7561666564 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x7261646E6F636573 && a2 == 0xE900000000000079)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Text.Scale.Storage.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Text.Scale.Storage.CodingKeys and conformance Text.Scale.Storage.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Text.Scale.Storage.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Text.Scale.Storage.CodingKeys and conformance Text.Scale.Storage.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Text.Scale.Storage.DefaultCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Text.Scale.Storage.DefaultCodingKeys and conformance Text.Scale.Storage.DefaultCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Text.Scale.Storage.DefaultCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Text.Scale.Storage.DefaultCodingKeys and conformance Text.Scale.Storage.DefaultCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Text.Scale.Storage.SecondaryCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Text.Scale.Storage.SecondaryCodingKeys and conformance Text.Scale.Storage.SecondaryCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Text.Scale.Storage.SecondaryCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Text.Scale.Storage.SecondaryCodingKeys and conformance Text.Scale.Storage.SecondaryCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Text.Scale.Storage.encode(to:)(void *a1)
{
  v3 = MEMORY[0x1E69E6F58];
  type metadata accessor for KeyedEncodingContainer<Text.Scale.Storage.SecondaryCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Text.Scale.Storage.SecondaryCodingKeys>, lazy protocol witness table accessor for type Text.Scale.Storage.SecondaryCodingKeys and conformance Text.Scale.Storage.SecondaryCodingKeys, &unk_1F00996A0, MEMORY[0x1E69E6F58]);
  v24 = *(v4 - 8);
  v25 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v23 = &v19 - v5;
  type metadata accessor for KeyedEncodingContainer<Text.Scale.Storage.SecondaryCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Text.Scale.Storage.DefaultCodingKeys>, lazy protocol witness table accessor for type Text.Scale.Storage.DefaultCodingKeys and conformance Text.Scale.Storage.DefaultCodingKeys, &unk_1F0099680, v3);
  v21 = *(v6 - 8);
  v22 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v20 = &v19 - v7;
  type metadata accessor for KeyedEncodingContainer<Text.Scale.Storage.SecondaryCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Text.Scale.Storage.CodingKeys>, lazy protocol witness table accessor for type Text.Scale.Storage.CodingKeys and conformance Text.Scale.Storage.CodingKeys, &unk_1F0099660, v3);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v19 - v11;
  v13 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Text.Scale.Storage.CodingKeys and conformance Text.Scale.Storage.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = (v10 + 8);
  if (v13)
  {
    v27 = 1;
    lazy protocol witness table accessor for type Text.Scale.Storage.SecondaryCodingKeys and conformance Text.Scale.Storage.SecondaryCodingKeys();
    v15 = v23;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v17 = v24;
    v16 = v25;
  }

  else
  {
    v26 = 0;
    lazy protocol witness table accessor for type Text.Scale.Storage.DefaultCodingKeys and conformance Text.Scale.Storage.DefaultCodingKeys();
    v15 = v20;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v17 = v21;
    v16 = v22;
  }

  (*(v17 + 8))(v15, v16);
  return (*v14)(v12, v9);
}

void lazy protocol witness table accessor for type Text.Scale.Storage.SecondaryCodingKeys and conformance Text.Scale.Storage.SecondaryCodingKeys()
{
  if (!lazy protocol witness table cache variable for type Text.Scale.Storage.SecondaryCodingKeys and conformance Text.Scale.Storage.SecondaryCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Text.Scale.Storage.SecondaryCodingKeys, &unk_1F00996A0, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Text.Scale.Storage.SecondaryCodingKeys and conformance Text.Scale.Storage.SecondaryCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Text.Scale.Storage.SecondaryCodingKeys and conformance Text.Scale.Storage.SecondaryCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Text.Scale.Storage.SecondaryCodingKeys, &unk_1F00996A0, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Text.Scale.Storage.SecondaryCodingKeys and conformance Text.Scale.Storage.SecondaryCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Text.Scale.Storage.SecondaryCodingKeys and conformance Text.Scale.Storage.SecondaryCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Text.Scale.Storage.SecondaryCodingKeys, &unk_1F00996A0, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Text.Scale.Storage.SecondaryCodingKeys and conformance Text.Scale.Storage.SecondaryCodingKeys);
  }
}

void lazy protocol witness table accessor for type Text.Scale.Storage.DefaultCodingKeys and conformance Text.Scale.Storage.DefaultCodingKeys()
{
  if (!lazy protocol witness table cache variable for type Text.Scale.Storage.DefaultCodingKeys and conformance Text.Scale.Storage.DefaultCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Text.Scale.Storage.DefaultCodingKeys, &unk_1F0099680, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Text.Scale.Storage.DefaultCodingKeys and conformance Text.Scale.Storage.DefaultCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Text.Scale.Storage.DefaultCodingKeys and conformance Text.Scale.Storage.DefaultCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Text.Scale.Storage.DefaultCodingKeys, &unk_1F0099680, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Text.Scale.Storage.DefaultCodingKeys and conformance Text.Scale.Storage.DefaultCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Text.Scale.Storage.DefaultCodingKeys and conformance Text.Scale.Storage.DefaultCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Text.Scale.Storage.DefaultCodingKeys, &unk_1F0099680, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Text.Scale.Storage.DefaultCodingKeys and conformance Text.Scale.Storage.DefaultCodingKeys);
  }
}

void lazy protocol witness table accessor for type Text.Scale.Storage.CodingKeys and conformance Text.Scale.Storage.CodingKeys()
{
  if (!lazy protocol witness table cache variable for type Text.Scale.Storage.CodingKeys and conformance Text.Scale.Storage.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Text.Scale.Storage.CodingKeys, &unk_1F0099660, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Text.Scale.Storage.CodingKeys and conformance Text.Scale.Storage.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Text.Scale.Storage.CodingKeys and conformance Text.Scale.Storage.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Text.Scale.Storage.CodingKeys, &unk_1F0099660, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Text.Scale.Storage.CodingKeys and conformance Text.Scale.Storage.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Text.Scale.Storage.CodingKeys and conformance Text.Scale.Storage.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Text.Scale.Storage.CodingKeys, &unk_1F0099660, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Text.Scale.Storage.CodingKeys and conformance Text.Scale.Storage.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Text.Scale.Storage.CodingKeys and conformance Text.Scale.Storage.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Text.Scale.Storage.CodingKeys, &unk_1F0099660, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Text.Scale.Storage.CodingKeys and conformance Text.Scale.Storage.CodingKeys);
  }
}

uint64_t Text.Scale.Storage.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v33 = a2;
  v3 = MEMORY[0x1E69E6F48];
  type metadata accessor for KeyedEncodingContainer<Text.Scale.Storage.SecondaryCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Text.Scale.Storage.SecondaryCodingKeys>, lazy protocol witness table accessor for type Text.Scale.Storage.SecondaryCodingKeys and conformance Text.Scale.Storage.SecondaryCodingKeys, &unk_1F00996A0, MEMORY[0x1E69E6F48]);
  v29 = v4;
  v32 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v31 = &v27 - v5;
  type metadata accessor for KeyedEncodingContainer<Text.Scale.Storage.SecondaryCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Text.Scale.Storage.DefaultCodingKeys>, lazy protocol witness table accessor for type Text.Scale.Storage.DefaultCodingKeys and conformance Text.Scale.Storage.DefaultCodingKeys, &unk_1F0099680, v3);
  v7 = v6;
  v28 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - v8;
  type metadata accessor for KeyedEncodingContainer<Text.Scale.Storage.SecondaryCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Text.Scale.Storage.CodingKeys>, lazy protocol witness table accessor for type Text.Scale.Storage.CodingKeys and conformance Text.Scale.Storage.CodingKeys, &unk_1F0099660, v3);
  v11 = v10;
  v30 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Text.Scale.Storage.CodingKeys and conformance Text.Scale.Storage.CodingKeys();
  v14 = v34;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v14)
  {
    goto LABEL_7;
  }

  v27 = v7;
  v15 = v31;
  v16 = v32;
  v34 = a1;
  v17 = v30;
  v18 = v33;
  v19 = KeyedDecodingContainer.allKeys.getter();
  v20 = (2 * *(v19 + 16)) | 1;
  v35 = v19;
  v36 = v19 + 32;
  v37 = 0;
  v38 = v20;
  v21 = specialized Collection<>.popFirst()();
  if (v21 == 2 || v37 != v38 >> 1)
  {
    v22 = type metadata accessor for DecodingError();
    swift_allocError();
    v24 = v23;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
    *v24 = &type metadata for Text.Scale.Storage;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
    swift_willThrow();
    (*(v17 + 8))(v13, v11);
    swift_unknownObjectRelease();
    a1 = v34;
LABEL_7:
    v25 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v25);
  }

  v39 = v21;
  if (v21)
  {
    v40 = 1;
    lazy protocol witness table accessor for type Text.Scale.Storage.SecondaryCodingKeys and conformance Text.Scale.Storage.SecondaryCodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v16 + 8))(v15, v29);
  }

  else
  {
    v40 = 0;
    lazy protocol witness table accessor for type Text.Scale.Storage.DefaultCodingKeys and conformance Text.Scale.Storage.DefaultCodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v28 + 8))(v9, v27);
  }

  (*(v17 + 8))(v13, v11);
  swift_unknownObjectRelease();
  *v18 = v39 & 1;
  v25 = v34;
  return __swift_destroy_boxed_opaque_existential_1(v25);
}

void type metadata accessor for KeyedEncodingContainer<Text.Scale.Storage.SecondaryCodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void Text.Scale.init(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a1 && v5 == a2)
  {

    v8 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
}

uint64_t TextScaleModifier.isEqual(to:)(uint64_t a1)
{
  type metadata accessor for TextScaleModifier();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = *(v2 + 17) ^ *(v1 + 17) ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

double View.textScale(_:isEnabled:)(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v5 = *a1;
  KeyPath = swift_getKeyPath();
  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  *(v7 + 17) = v5;
  View.transformEnvironment<A>(_:transform:)(KeyPath, partial apply for closure #1 in View.textScale(_:isEnabled:), v7, a3);

  return result;
}

void key path getter for EnvironmentValues.textScale : EnvironmentValues(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  if (a1[1])
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA09TextScaleI0VG_Tt1g5(v3, &v4);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA09TextScaleF0VG_Tt2g5(*a1, &v4);
  }

  *a2 = v4;
}

double key path setter for EnvironmentValues.textScale : EnvironmentValues(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *a1;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA09TextScaleF0VG_Tt2B5(a2, v4);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA09TextScaleK0VG_Ttg5(v3, *a2);
  }

  return result;
}

_BYTE *partial apply for closure #1 in View.textScale(_:isEnabled:)(_BYTE *result)
{
  if (*(v1 + 16) == 1)
  {
    *result = *(v1 + 17);
  }

  return result;
}

void type metadata accessor for _EnvironmentKeyTransformModifier<Text.Scale?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<Text.Scale?>)
  {
    type metadata accessor for Text.Scale?();
    v5 = type metadata accessor for _EnvironmentKeyTransformModifier(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<Text.Scale?>);
    }
  }
}

void type metadata accessor for Text.Scale?()
{
  if (!lazy cache variable for type metadata for Text.Scale?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Text.Scale?);
    }
  }
}

double static _Glass.identity.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 1;
  *a1 = xmmword_18DDAA050;
  *(a1 + 16) = 5;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  return result;
}

uint64_t static PlatformGlassDefinition.for (system:)(_BYTE *a1)
{
  if (*a1 == 1)
  {
    v1 = &static PlatformGlassDefinition.appKit;
  }

  else
  {
    v1 = &static PlatformGlassDefinition.uiKit;
  }

  swift_beginAccess();
  return *v1;
}

uint64_t static PlatformGlassInteractionDefinition.for (system:)(_BYTE *a1)
{
  if (*a1 == 1)
  {
    v1 = &static PlatformGlassInteractionDefinition.appKit;
  }

  else
  {
    v1 = &static PlatformGlassInteractionDefinition.uiKit;
  }

  swift_beginAccess();
  return *v1;
}

void __swiftcall PlatformGlassInteractionState.active(_:)(SwiftUI::PlatformGlassInteractionState *__return_ptr retstr, Swift::Bool a2)
{
  v3 = v2[1];
  retstr->scale = *v2;
  retstr->translation = v3;
  retstr->isActive = a2;
}

Swift::Void __swiftcall PlatformGlassInteractionProxy.updateState(_:)(SwiftUI::PlatformGlassInteractionState *a1)
{
  translation = a1->translation;
  scale = a1->scale;
  isActive = a1->isActive;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(v1 + 8);
    v6 = _threadTransactionID();
    v11 = v5;
    v12 = 0;
    v14 = translation;
    v13 = scale;
    v15 = isActive;
    specialized GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)(0, v6, &v11, 1, 0);
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = *(v4 + 208);
      ObjectType = swift_getObjectType();
      (*(v7 + 24))(ObjectType, v7, 0.0);
      swift_unknownObjectRelease();
    }
  }
}

double static _Glass.clear.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 2;
  *a1 = xmmword_18DDCAA10;
  *(a1 + 16) = 5;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  return result;
}

double _Glass.interactive(_:)@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v3 = *(v2 + 8);
  v5 = *(v2 + 16);
  v7 = *(v2 + 24);
  v6 = *(v2 + 32);
  v8 = *(v2 + 40);
  *a2 = *v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = v5;
  *(a2 + 40) = v8;
  *(a2 + 24) = v7;
  *(a2 + 32) = v6 & 0xFFFFFFFFFFFFFFFELL | a1 & 1;
  outlined copy of _Glass.Variant.Role(v4, v3);

  return result;
}

double static _Glass.Variant.identity.getter@<D0>(_OWORD *a1@<X8>)
{
  *&result = 1;
  *a1 = xmmword_18DDAA050;
  return result;
}

uint64_t _Glass.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[3];
  v4 = v0[4];
  v12 = 0;
  v13 = 0xE000000000000000;

  MEMORY[0x193ABEDD0](0x287373616C475FLL, 0xE700000000000000);
  v8 = v1;
  v9 = v2;
  outlined copy of _Glass.Variant.Role(v1, v2);
  _Glass.Variant.ID.init(_:)(&v8, &v10);
  v5 = v10;
  LOBYTE(v1) = v11;
  v8 = v10;
  LOBYTE(v9) = v11;
  _print_unlocked<A, B>(_:_:)();
  outlined consume of _Glass.Variant.ID(v5, v1);
  if (v3)
  {
    v8 = 8236;
    v9 = 0xE200000000000000;
    v6 = (*(*v3 + 160))();
    MEMORY[0x193ABEDD0](v6);

    MEMORY[0x193ABEDD0](v8, v9);
  }

  if (v4)
  {
    v8 = 0;
    v9 = 0xE000000000000000;
    MEMORY[0x193ABEDD0](8236, 0xE200000000000000);
    v10 = v4;
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x193ABEDD0](v8, v9);
  }

  MEMORY[0x193ABEDD0](41, 0xE100000000000000);
  return v12;
}

double static _Glass.Variant.regular.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_18DDCAA00;
  return result;
}

double static _Glass.Variant.clear.getter@<D0>(_OWORD *a1@<X8>)
{
  *&result = 2;
  *a1 = xmmword_18DDCAA10;
  return result;
}

uint64_t static _Glass.Variant.explicit(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = v3 | (*(a1 + 12) << 32) | 0x40000000;
  *a2 = *a1;
  a2[1] = v4;
  return outlined copy of Material.ID(v2, v3);
}

void _Glass.mix(with:by:)(__int128 *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v7 = *a1;
  v8 = *v3;
  v6 = swift_allocObject();
  *(v6 + 16) = v8;
  *(v6 + 32) = v7;
  *(v6 + 48) = a3;
  *a2 = v6;
  *(a2 + 8) = 0;
  *(a2 + 16) = 5;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  outlined copy of _Glass.Variant.Role(v7, DWORD2(v7));

  outlined copy of _Glass.Variant.Role(v8, DWORD2(v8));
}

void static _Glass.Variant.mix(_:)(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = swift_allocObject();
  v8[2] = v3;
  v8[3] = v4;
  v8[4] = v5;
  v8[5] = v6;
  v8[6] = v7;
  *a2 = v8;
  a2[1] = 0;
  outlined copy of _Glass.Variant.Role(v3, v4);

  outlined copy of _Glass.Variant.Role(v5, v6);
}

void _Glass.Variant.Mix.from.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  outlined consume of _Glass.Variant.Role(*v1, v1[1]);
  *v1 = v2;
  v1[1] = v3;
}

void _Glass.Variant.Mix.to.getter(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  a1[1] = v3;
  outlined copy of _Glass.Variant.Role(v2, v3);
}

void _Glass.Variant.Mix.to.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  outlined consume of _Glass.Variant.Role(*(v1 + 16), *(v1 + 24));
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
}

void _Glass.Variant.mix.getter(uint64_t *a1@<X8>)
{
  if ((v1[11] & 0xC0) != 0)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 4294967292;
  }

  else
  {
    v8 = *v1;
    v3 = *(*v1 + 16);
    v7 = v8[3];
    v4 = v8[4];
    v5 = v8[5];
    v6 = v8[6];
    outlined copy of _Glass.Variant.Role(v3, v7);
    outlined copy of _Glass.Variant.Role(v4, v5);
  }

  *a1 = v3;
  a1[1] = v7;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
}

uint64_t _Glass.ID.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  _Glass.Variant.ID.hash(into:)(a1);
  if (!v3)
  {
    Hasher._combine(_:)(0);
    if (v4 == 5)
    {
      goto LABEL_3;
    }

LABEL_5:
    Hasher._combine(_:)(1u);
    MEMORY[0x193AC11A0](v4);
    goto LABEL_6;
  }

  Hasher._combine(_:)(1u);
  (*(*v3 + 152))(a1);
  if (v4 != 5)
  {
    goto LABEL_5;
  }

LABEL_3:
  Hasher._combine(_:)(0);
LABEL_6:
  MEMORY[0x193AC11A0](v5);
  return MEMORY[0x193AC11A0](v6);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance _Glass.ID()
{
  v1 = *(v0 + 8);
  v2 = v0[2];
  v3 = *(v0 + 24);
  v4 = v0[4];
  v5 = *(v0 + 40);
  v8 = *v0;
  v9 = v1;
  v10 = v2;
  v11 = v3;
  v12 = v4;
  v13 = v5;
  Hasher.init(_seed:)();
  _Glass.ID.hash(into:)(v7);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance _Glass.ID(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = v1[2];
  v4 = *(v1 + 24);
  v5 = v1[4];
  v6 = *(v1 + 40);
  v9 = *v1;
  v10 = v2;
  v11 = v3;
  v12 = v4;
  v13 = v5;
  v14 = v6;
  Hasher.init(_seed:)();
  _Glass.ID.hash(into:)(v8);
  return Hasher._finalize()();
}

uint64_t _Glass.Variant.ID.MixID.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 32);
  _Glass.Variant.ID.hash(into:)(a1);
  _Glass.Variant.ID.hash(into:)(a1);
  v4 = 0.0;
  if (v3 != 0.0)
  {
    v4 = v3;
  }

  return MEMORY[0x193AC11E0](*&v4);
}

void _Glass.Variant.ID.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  if (v4 >> 6)
  {
    if (v4 >> 6 == 1)
    {
      MEMORY[0x193AC11A0](4);
      Material.ID.hash(into:)(a1);
    }

    else
    {
      if (v3 | v4 ^ 0x80)
      {
        if (*(v1 + 8) == 128 && v3 == 1)
        {
          v12 = 1;
        }

        else
        {
          v12 = 2;
        }
      }

      else
      {
        v12 = 0;
      }

      MEMORY[0x193AC11A0](v12);
    }
  }

  else
  {
    v5 = *(v3 + 16);
    v6 = *(v3 + 32);
    v7 = *(v3 + 48);
    v8 = *(v3 + 24);
    v9 = *(v3 + 40);
    MEMORY[0x193AC11A0](3);
    outlined copy of _Glass.Variant.ID(v5, v8);
    outlined copy of _Glass.Variant.ID(v6, v9);
    _Glass.Variant.ID.hash(into:)(a1);
    _Glass.Variant.ID.hash(into:)(a1);
    v10 = 0.0;
    if (v7 != 0.0)
    {
      v10 = v7;
    }

    MEMORY[0x193AC11E0](*&v10);
    outlined consume of _Glass.Variant.ID(v5, v8);

    outlined consume of _Glass.Variant.ID(v6, v9);
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance _Glass.Variant.ID.MixID()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6[9] = *v0;
  v7 = v1;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  Hasher.init(_seed:)();
  _Glass.Variant.ID.MixID.hash(into:)(v6);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance _Glass.Variant.ID.MixID(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v7[9] = *v1;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  v11 = v5;
  Hasher.init(_seed:)();
  _Glass.Variant.ID.MixID.hash(into:)(v7);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance _Glass.Variant.ID()
{
  v1 = *(v0 + 8);
  v4 = *v0;
  v5 = v1;
  Hasher.init(_seed:)();
  _Glass.Variant.ID.hash(into:)(v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance _Glass.Variant.ID(uint64_t a1)
{
  v2 = *(v1 + 8);
  v5 = *v1;
  v6 = v2;
  Hasher.init(_seed:)();
  _Glass.Variant.ID.hash(into:)(v4);
  return Hasher._finalize()();
}

Swift::Int _Glass.Diffusion.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

void EnvironmentValues.glassFrost.getter(char *a1@<X8>)
{
  v2 = *v1;
  if (v1[1])
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I11_glassFrost33_0BFB0E96643D8B89AA134FA2D1387AC4LLVG_Tt1g5(v2, a1);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F11_glassFrost33_0BFB0E96643D8B89AA134FA2D1387AC4LLVG_Tt2g5(v2, a1);
  }
}

void key path getter for EnvironmentValues.glassFrost : EnvironmentValues(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  if (a1[1])
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I11_glassFrost33_0BFB0E96643D8B89AA134FA2D1387AC4LLVG_Tt1g5(v3, &v4);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F11_glassFrost33_0BFB0E96643D8B89AA134FA2D1387AC4LLVG_Tt2g5(*a1, &v4);
  }

  *a2 = v4;
}

double key path setter for EnvironmentValues.glassFrost : EnvironmentValues(unsigned __int8 *a1, Swift::UInt *a2)
{
  v3 = *a2;
  v4 = *a1;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F11_glassFrost33_0BFB0E96643D8B89AA134FA2D1387AC4LLVG_Tt2B5(a2, v4);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE02__K11_glassFrost33_0BFB0E96643D8B89AA134FA2D1387AC4LLVG_Ttg5(v3, *a2);
  }

  return result;
}

double EnvironmentValues.glassFrost.setter(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *a1;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F11_glassFrost33_0BFB0E96643D8B89AA134FA2D1387AC4LLVG_Tt2B5(v2, v4);

  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE02__K11_glassFrost33_0BFB0E96643D8B89AA134FA2D1387AC4LLVG_Ttg5(v3, *v2);
  }

  return result;
}

void (*EnvironmentValues.glassFrost.modify(char **a1))(uint64_t *a1)
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
  *(v3 + 16) = v1;
  v5 = *v1;
  *(v3 + 24) = *v1;
  v6 = *(v1 + 8);
  *(v3 + 32) = v6;
  if (v6)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I11_glassFrost33_0BFB0E96643D8B89AA134FA2D1387AC4LLVG_Tt1g5(v5, (v4 + 40));
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<HoverEffectContextKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_glassFrost>, &type metadata for EnvironmentValues.__Key_glassFrost, &protocol witness table for EnvironmentValues.__Key_glassFrost);
    BloomFilter.init(hashValue:)(v7);
    v8 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE02__V11_glassFrost33_0BFB0E96643D8B89AA134FA2D1387AC4LLVG_Tt0B5(v5, v11);
    if (v8)
    {
      v9 = *(v8 + 72);
    }

    else
    {
      v9 = 0;
    }

    *(v4 + 40) = v9;
  }

  return EnvironmentValues.glassFrost.modify;
}

void EnvironmentValues.glassFrost.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  swift_retain_n();
  v3 = *(v1 + 32);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F11_glassFrost33_0BFB0E96643D8B89AA134FA2D1387AC4LLVG_Tt2B5(*(v1 + 16), v2);

  if (v3)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE02__K11_glassFrost33_0BFB0E96643D8B89AA134FA2D1387AC4LLVG_Ttg5(*(v1 + 24), **(v1 + 16));
  }

  free(v1);
}

void EnvironmentValues.glassDiffusion.getter(char *a1@<X8>)
{
  v2 = *v1;
  if (v1[1])
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I15_glassDiffusion33_0BFB0E96643D8B89AA134FA2D1387AC4LLVG_Tt1g5(v2, a1);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F15_glassDiffusion33_0BFB0E96643D8B89AA134FA2D1387AC4LLVG_Tt2g5(v2, a1);
  }
}

void key path getter for EnvironmentValues.glassDiffusion : EnvironmentValues(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  if (a1[1])
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I15_glassDiffusion33_0BFB0E96643D8B89AA134FA2D1387AC4LLVG_Tt1g5(v3, &v4);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F15_glassDiffusion33_0BFB0E96643D8B89AA134FA2D1387AC4LLVG_Tt2g5(*a1, &v4);
  }

  *a2 = v4;
}

double key path setter for EnvironmentValues.glassDiffusion : EnvironmentValues(char *a1, Swift::UInt *a2)
{
  v3 = *a1;
  v4 = *a2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F15_glassDiffusion33_0BFB0E96643D8B89AA134FA2D1387AC4LLVG_Tt2B5(a2, v3);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE02__K15_glassDiffusion33_0BFB0E96643D8B89AA134FA2D1387AC4LLVG_Ttg5(v4, *a2);
  }

  return result;
}

double EnvironmentValues.glassDiffusion.setter(char *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *v2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F15_glassDiffusion33_0BFB0E96643D8B89AA134FA2D1387AC4LLVG_Tt2B5(v2, v3);

  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE02__K15_glassDiffusion33_0BFB0E96643D8B89AA134FA2D1387AC4LLVG_Ttg5(v4, *v2);
  }

  return result;
}

void (*EnvironmentValues.glassDiffusion.modify(char **a1))(uint64_t *a1)
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
  *(v3 + 16) = v1;
  v5 = *v1;
  *(v3 + 24) = *v1;
  v6 = *(v1 + 8);
  *(v3 + 32) = v6;
  if (v6)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I15_glassDiffusion33_0BFB0E96643D8B89AA134FA2D1387AC4LLVG_Tt1g5(v5, (v4 + 40));
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<HoverEffectContextKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_glassDiffusion>, &type metadata for EnvironmentValues.__Key_glassDiffusion, &protocol witness table for EnvironmentValues.__Key_glassDiffusion);
    BloomFilter.init(hashValue:)(v7);
    v8 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE02__V15_glassDiffusion33_0BFB0E96643D8B89AA134FA2D1387AC4LLVG_Tt0B5(v5, v11);
    if (v8)
    {
      v9 = *(v8 + 72);
    }

    else
    {
      v9 = 0;
    }

    *(v4 + 40) = v9;
  }

  return EnvironmentValues.glassDiffusion.modify;
}

void EnvironmentValues.glassDiffusion.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  swift_retain_n();
  v3 = *(v1 + 32);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F15_glassDiffusion33_0BFB0E96643D8B89AA134FA2D1387AC4LLVG_Tt2B5(*(v1 + 16), v2);

  if (v3)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE02__K15_glassDiffusion33_0BFB0E96643D8B89AA134FA2D1387AC4LLVG_Ttg5(*(v1 + 24), **(v1 + 16));
  }

  free(v1);
}

Swift::Int _Glass.ContentEffect.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

uint64_t _Glass.Variant.ID.debugDescription.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (!(v2 >> 6))
  {
    v3 = *(v1 + 16);
    v4 = *(v1 + 32);
    v5 = *(v1 + 24);
    v6 = *(v1 + 40);
    outlined copy of _Glass.Variant.ID(v3, v5);
    outlined copy of _Glass.Variant.ID(v4, v6);
    _StringGuts.grow(_:)(32);
    MEMORY[0x193ABEDD0](0x6D6F72662878696DLL, 0xEA0000000000203ALL);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x193ABEDD0](0x203A6F74202CLL, 0xE600000000000000);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x193ABEDD0](0x746E756F6D61202CLL, 0xEA0000000000203ALL);
    v7 = Double.description.getter();
    MEMORY[0x193ABEDD0](v7);

    outlined consume of _Glass.Variant.ID(v3, v5);
    outlined consume of _Glass.Variant.ID(v4, v6);
    return 0;
  }

  if (v2 >> 6 == 1)
  {
    MEMORY[0x193ABEDD0](0x746963696C707865, 0xE900000000000028);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x193ABEDD0](41, 0xE100000000000000);
    return 0;
  }

  v9 = *(v0 + 8) == 128 && v1 == 1;
  v10 = 0x797469746E656469;
  if (!v9)
  {
    v10 = 0x7261656C63;
  }

  if (v1 | v2 ^ 0x80)
  {
    return v10;
  }

  else
  {
    return 0x72616C75676572;
  }
}

uint64_t _Glass.Options.debugDescription.getter(char a1)
{
  if (a1)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v3 = *(v1 + 2);
    v2 = *(v1 + 3);
    if (v3 >= v2 >> 1)
    {
      v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v2 > 1), v3 + 1, 1, v1);
    }

    *(v1 + 2) = v3 + 1;
    v4 = &v1[16 * v3];
    *(v4 + 4) = 0xD000000000000017;
    *(v4 + 5) = 0x800000018DD7E8E0;
  }

  v5 = MEMORY[0x193ABF200]();

  return v5;
}

uint64_t _Glass.ID.debugDescription.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);

  MEMORY[0x193ABEDD0](0x44497373616C475FLL, 0xE900000000000028);
  v3 = _print_unlocked<A, B>(_:_:)();
  if (v1)
  {
    v4 = (*(*v1 + 160))(v3);
    MEMORY[0x193ABEDD0](v4);

    MEMORY[0x193ABEDD0](8236, 0xE200000000000000);
  }

  if (v2)
  {
    MEMORY[0x193ABEDD0](8236, 0xE200000000000000);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x193ABEDD0](0, 0xE000000000000000);
  }

  MEMORY[0x193ABEDD0](41, 0xE100000000000000);
  return 0;
}

uint64_t _Glass.Resolved.material.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 12);
  *a1 = *v1;
  v4 = *(v1 + 8);
  *(a1 + 8) = v4;
  *(a1 + 12) = v3;
  return outlined copy of Material.ID(v2, v4);
}

uint64_t _Glass.Resolved.material.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 3);
  result = outlined consume of Material.ID(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 12) = v4;
  return result;
}

uint64_t _Glass.Resolved.init(material:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  v3 = *(result + 12);
  *a2 = *result;
  *(a2 + 8) = v2;
  *(a2 + 12) = v3;
  return result;
}

void static PlatformGlassDefinition.setDefinition(_:system:)(uint64_t a1, _BYTE *a2)
{
  if (*a2 == 1)
  {
    v3 = &static PlatformGlassDefinition.appKit;
  }

  else
  {
    if (*a2)
    {
      return;
    }

    v3 = &static PlatformGlassDefinition.uiKit;
  }

  swift_beginAccess();
  if (!*v3)
  {
    *v3 = a1;
  }
}

void static PlatformGlassInteractionDefinition.setDefinition(_:system:)(uint64_t a1, _BYTE *a2)
{
  if (*a2 == 1)
  {
    v3 = &static PlatformGlassInteractionDefinition.appKit;
  }

  else
  {
    if (*a2)
    {
      return;
    }

    v3 = &static PlatformGlassInteractionDefinition.uiKit;
  }

  swift_beginAccess();
  if (!*v3)
  {
    *v3 = a1;
  }
}

void __swiftcall PlatformGlassInteractionState.init(scale:translation:)(SwiftUI::PlatformGlassInteractionState *__return_ptr retstr, CGSize scale, CGSize translation)
{
  v3 = scale.width != 1.0;
  if (scale.height != 1.0)
  {
    v3 = 1;
  }

  if (translation.width != 0.0)
  {
    v3 = 1;
  }

  retstr->scale.width = scale.width;
  retstr->scale.height = scale.height;
  if (translation.height != 0.0)
  {
    v3 = 1;
  }

  retstr->translation.width = translation.width;
  retstr->translation.height = translation.height;
  retstr->isActive = v3;
}

void PlatformGlassInteractionState.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  CGSize.hash(into:)(v1, v2);
  CGSize.hash(into:)(v3, v4);
  Hasher._combine(_:)(v5);
}

Swift::Int PlatformGlassInteractionState.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  Hasher.init(_seed:)();
  CGSize.hash(into:)(v1, v2);
  CGSize.hash(into:)(v3, v4);
  Hasher._combine(_:)(v5);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PlatformGlassInteractionState()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  Hasher.init(_seed:)();
  CGSize.hash(into:)(v1, v2);
  CGSize.hash(into:)(v3, v4);
  Hasher._combine(_:)(v5);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance PlatformGlassInteractionState()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  CGSize.hash(into:)(v1, v2);
  CGSize.hash(into:)(v3, v4);
  Hasher._combine(_:)(v5);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PlatformGlassInteractionState(uint64_t a1)
{
  Hasher.init(_seed:)();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  CGSize.hash(into:)(*v1, *(v1 + 8));
  CGSize.hash(into:)(v2, v3);
  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

Swift::Void __swiftcall PlatformGlassInteractionProxy.beginHidingGlass()()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(v0 + 16);
    v4 = _threadTransactionID();
    specialized GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)(0, v4, v3, 256, 1, 0);
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v2 + 208);
      ObjectType = swift_getObjectType();
      (*(v5 + 24))(ObjectType, v5, 0.0);
      swift_unknownObjectRelease();
    }
  }
}

Swift::Void __swiftcall PlatformGlassInteractionProxy.endHidingGlass()()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(v0 + 16);
    v4 = _threadTransactionID();
    specialized GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)(0, v4, v3, 0, 1, 0);
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v2 + 208);
      ObjectType = swift_getObjectType();
      (*(v5 + 24))(ObjectType, v5, 0.0);
      swift_unknownObjectRelease();
    }
  }
}

void PlatformGlassInteractionContext.glass.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = a1[3];
  v6 = a1[4];
  v7 = *(a1 + 40);
  outlined consume of _Glass.Variant.Role(*v1, *(v1 + 8));

  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  *(v1 + 24) = v5;
  *(v1 + 32) = v6;
  *(v1 + 40) = v7;
}

double PlatformGlassInteractionContext.fromGlass.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  v6 = *(v1 + 80);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = *(v1 + 88);
  return outlined copy of _Glass?(v2, v3, v4, v5);
}

__n128 PlatformGlassInteractionContext.fromGlass.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  outlined consume of _Glass?(*(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72));
  result = *a1;
  v6 = *(a1 + 16);
  *(v1 + 48) = *a1;
  *(v1 + 64) = v6;
  *(v1 + 80) = v3;
  *(v1 + 88) = v4;
  return result;
}

double PlatformGlassInteractionContext.toGlass.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 96);
  v3 = *(v1 + 104);
  v4 = *(v1 + 112);
  v5 = *(v1 + 120);
  v6 = *(v1 + 128);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = *(v1 + 136);
  return outlined copy of _Glass?(v2, v3, v4, v5);
}

__n128 PlatformGlassInteractionContext.toGlass.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  outlined consume of _Glass?(*(v1 + 96), *(v1 + 104), *(v1 + 112), *(v1 + 120));
  result = *a1;
  v6 = *(a1 + 16);
  *(v1 + 96) = *a1;
  *(v1 + 112) = v6;
  *(v1 + 128) = v3;
  *(v1 + 136) = v4;
  return result;
}

void PlatformGlassInteractionContext.cornerRadii.setter(double a1, double a2, double a3, double a4)
{
  v4[18] = a1;
  v4[19] = a2;
  v4[20] = a3;
  v4[21] = a4;
}

uint64_t specialized static _Glass.Variant.Mix.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  v15 = *a1;
  v16 = v2;
  v13 = v6;
  v14 = v7;
  outlined copy of _Glass.Variant.Role(v15, v2);
  outlined copy of _Glass.Variant.Role(v6, v7);
  LOBYTE(v6) = specialized static _Glass.Variant.== infix(_:_:)(&v15, &v13);
  outlined consume of _Glass.Variant.Role(v13, v14);
  outlined consume of _Glass.Variant.Role(v15, v16);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v15 = v3;
  v16 = v4;
  v13 = v8;
  v14 = v9;
  outlined copy of _Glass.Variant.Role(v3, v4);
  outlined copy of _Glass.Variant.Role(v8, v9);
  v11 = specialized static _Glass.Variant.== infix(_:_:)(&v15, &v13);
  outlined consume of _Glass.Variant.Role(v13, v14);
  outlined consume of _Glass.Variant.Role(v15, v16);
  return v11 & (v5 == v10);
}

BOOL specialized static _Glass.ID.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *a2;
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a1 + 8);
  v12 = *(a2 + 8);
  v19 = *a1;
  v20 = v11;
  v17 = v6;
  v18 = v12;
  outlined copy of _Glass.Variant.ID(v19, v11);
  outlined copy of _Glass.Variant.ID(v6, v12);
  LOBYTE(v6) = specialized static _Glass.Variant.ID.== infix(_:_:)(&v19, &v17);
  outlined consume of _Glass.Variant.ID(v17, v18);
  outlined consume of _Glass.Variant.ID(v19, v20);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  if (!v2)
  {
    if (!v7)
    {
      goto LABEL_6;
    }

    return 0;
  }

  if (!v7)
  {
    return 0;
  }

  if (v2 != v7)
  {
    v13 = *(*v2 + 88);

    v15 = v13(v14);

    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_6:
  if (v3 == 5)
  {
    result = 0;
    if (v8 != 5)
    {
      return result;
    }

    goto LABEL_14;
  }

  result = 0;
  if (v8 != 5 && v3 == v8)
  {
LABEL_14:
    if (v4 == v9)
    {
      return v5 == v10;
    }
  }

  return result;
}

uint64_t outlined assign with take of PlatformGlassInteractionProxy(uint64_t a1, uint64_t a2)
{
  swift_weakTakeAssign();
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

void lazy protocol witness table accessor for type _Glass.Diffusion and conformance _Glass.Diffusion()
{
  if (!lazy protocol witness table cache variable for type _Glass.Diffusion and conformance _Glass.Diffusion)
  {
    swift_getWitnessTable(protocol conformance descriptor for _Glass.Diffusion, &type metadata for _Glass.Diffusion, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _Glass.Diffusion and conformance _Glass.Diffusion);
  }
}

void lazy protocol witness table accessor for type _Glass.ContentEffect and conformance _Glass.ContentEffect()
{
  if (!lazy protocol witness table cache variable for type _Glass.ContentEffect and conformance _Glass.ContentEffect)
  {
    swift_getWitnessTable(protocol conformance descriptor for _Glass.ContentEffect, &type metadata for _Glass.ContentEffect, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _Glass.ContentEffect and conformance _Glass.ContentEffect);
  }
}

void lazy protocol witness table accessor for type _Glass.Options and conformance _Glass.Options()
{
  if (!lazy protocol witness table cache variable for type _Glass.Options and conformance _Glass.Options)
  {
    swift_getWitnessTable(protocol conformance descriptor for _Glass.Options, &type metadata for _Glass.Options, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _Glass.Options and conformance _Glass.Options);
  }
}

{
  if (!lazy protocol witness table cache variable for type _Glass.Options and conformance _Glass.Options)
  {
    swift_getWitnessTable(protocol conformance descriptor for _Glass.Options, &type metadata for _Glass.Options, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _Glass.Options and conformance _Glass.Options);
  }
}

{
  if (!lazy protocol witness table cache variable for type _Glass.Options and conformance _Glass.Options)
  {
    swift_getWitnessTable(protocol conformance descriptor for _Glass.Options, &type metadata for _Glass.Options, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _Glass.Options and conformance _Glass.Options);
  }
}

{
  if (!lazy protocol witness table cache variable for type _Glass.Options and conformance _Glass.Options)
  {
    swift_getWitnessTable(protocol conformance descriptor for _Glass.Options, &type metadata for _Glass.Options, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _Glass.Options and conformance _Glass.Options);
  }
}

void lazy protocol witness table accessor for type PlatformGlassInteractionState and conformance PlatformGlassInteractionState()
{
  if (!lazy protocol witness table cache variable for type PlatformGlassInteractionState and conformance PlatformGlassInteractionState)
  {
    swift_getWitnessTable(protocol conformance descriptor for PlatformGlassInteractionState, &type metadata for PlatformGlassInteractionState, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type PlatformGlassInteractionState and conformance PlatformGlassInteractionState);
  }
}

void destroy for _Glass.Variant.Mix(uint64_t *a1)
{
  outlined consume of _Glass.Variant.Role(*a1, a1[1]);
  v2 = a1[2];
  v3 = a1[3];

  outlined consume of _Glass.Variant.Role(v2, v3);
}

uint64_t initializeWithCopy for _Glass.Variant.Mix(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  outlined copy of _Glass.Variant.Role(*a2, v5);
  v8 = *(a2 + 1);
  outlined copy of _Glass.Variant.Role(a2[2], a2[3]);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  *a1 = v6;
  *(a1 + 16) = v8;
  *(a1 + 32) = a2[4];
  return a1;
}

uint64_t *assignWithCopy for _Glass.Variant.Mix(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  outlined copy of _Glass.Variant.Role(*a2, v5);
  v6 = *a1;
  v7 = a1[1];
  *a1 = v4;
  a1[1] = v5;
  outlined consume of _Glass.Variant.Role(v6, v7);
  v8 = a2[2];
  v9 = a2[3];
  outlined copy of _Glass.Variant.Role(v8, v9);
  v10 = a1[2];
  v11 = a1[3];
  a1[2] = v8;
  a1[3] = v9;
  outlined consume of _Glass.Variant.Role(v10, v11);
  a1[4] = a2[4];
  return a1;
}

uint64_t *assignWithTake for _Glass.Variant.Mix(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  *a1 = *a2;
  outlined consume of _Glass.Variant.Role(v4, v5);
  v6 = a1[2];
  v7 = a1[3];
  *(a1 + 1) = *(a2 + 16);
  outlined consume of _Glass.Variant.Role(v6, v7);
  a1[4] = *(a2 + 32);
  return a1;
}

uint64_t storeEnumTagSinglePayload for _Glass.Variant.Mix(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFFFFFD)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 1073741822;
    if (a3 >= 0x3FFFFFFE)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFFFFFE)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (-a2 & 0x3FFFFFFC) - (a2 << 30);
    }
  }

  return result;
}

_DWORD *assignWithCopy for PlatformGlassInteractionProxy(uint64_t a1, _DWORD *a2)
{
  result = swift_weakCopyAssign();
  result[2] = a2[2];
  result[3] = a2[3];
  result[4] = a2[4];
  result[5] = a2[5];
  return result;
}

__n128 assignWithTake for PlatformGlassInteractionProxy(uint64_t a1, uint64_t a2)
{
  v3 = swift_weakTakeAssign();
  result = *(a2 + 8);
  *(v3 + 8) = result;
  return result;
}

uint64_t initializeWithCopy for PlatformGlassInteractionContext(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of _Glass.Variant.Role(*a2, v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = *(a2 + 16);
  v6 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v6;
  *(a1 + 40) = *(a2 + 40);
  v7 = *(a2 + 72);

  if (v7 == 1)
  {
    v8 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v8;
    *(a1 + 73) = *(a2 + 73);
  }

  else
  {
    v9 = *(a2 + 48);
    v10 = *(a2 + 56);
    outlined copy of _Glass.Variant.Role(v9, v10);
    *(a1 + 48) = v9;
    *(a1 + 56) = v10;
    *(a1 + 64) = *(a2 + 64);
    v11 = *(a2 + 80);
    *(a1 + 72) = v7;
    *(a1 + 80) = v11;
    *(a1 + 88) = *(a2 + 88);
  }

  v12 = *(a2 + 120);
  if (v12 == 1)
  {
    v13 = *(a2 + 112);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 112) = v13;
    *(a1 + 121) = *(a2 + 121);
  }

  else
  {
    v14 = *(a2 + 96);
    v15 = *(a2 + 104);
    outlined copy of _Glass.Variant.Role(v14, v15);
    *(a1 + 96) = v14;
    *(a1 + 104) = v15;
    *(a1 + 112) = *(a2 + 112);
    v16 = *(a2 + 128);
    *(a1 + 120) = v12;
    *(a1 + 128) = v16;
    *(a1 + 136) = *(a2 + 136);
  }

  v17 = *(a2 + 160);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = v17;
  swift_weakCopyInit();
  *(a1 + 184) = *(a2 + 184);
  return a1;
}

uint64_t assignWithCopy for PlatformGlassInteractionContext(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of _Glass.Variant.Role(*a2, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of _Glass.Variant.Role(v6, v7);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v8 = *(a2 + 72);
  if (*(a1 + 72) == 1)
  {
    if (v8 == 1)
    {
      v9 = *(a2 + 48);
      v10 = *(a2 + 64);
      *(a1 + 73) = *(a2 + 73);
      *(a1 + 48) = v9;
      *(a1 + 64) = v10;
    }

    else
    {
      v13 = *(a2 + 48);
      v14 = *(a2 + 56);
      outlined copy of _Glass.Variant.Role(v13, v14);
      *(a1 + 48) = v13;
      *(a1 + 56) = v14;
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 88) = *(a2 + 88);
    }
  }

  else if (v8 == 1)
  {
    outlined destroy of _Glass(a1 + 48);
    v11 = *(a2 + 73);
    v12 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v12;
    *(a1 + 73) = v11;
  }

  else
  {
    v15 = *(a2 + 48);
    v16 = *(a2 + 56);
    outlined copy of _Glass.Variant.Role(v15, v16);
    v17 = *(a1 + 48);
    v18 = *(a1 + 56);
    *(a1 + 48) = v15;
    *(a1 + 56) = v16;
    outlined consume of _Glass.Variant.Role(v17, v18);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 72) = *(a2 + 72);

    *(a1 + 80) = *(a2 + 80);
    *(a1 + 88) = *(a2 + 88);
  }

  v19 = *(a2 + 120);
  if (*(a1 + 120) == 1)
  {
    if (v19 == 1)
    {
      v20 = *(a2 + 96);
      v21 = *(a2 + 112);
      *(a1 + 121) = *(a2 + 121);
      *(a1 + 96) = v20;
      *(a1 + 112) = v21;
    }

    else
    {
      v24 = *(a2 + 96);
      v25 = *(a2 + 104);
      outlined copy of _Glass.Variant.Role(v24, v25);
      *(a1 + 96) = v24;
      *(a1 + 104) = v25;
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 120) = *(a2 + 120);
      *(a1 + 128) = *(a2 + 128);
      *(a1 + 136) = *(a2 + 136);
    }
  }

  else if (v19 == 1)
  {
    outlined destroy of _Glass(a1 + 96);
    v22 = *(a2 + 121);
    v23 = *(a2 + 112);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 112) = v23;
    *(a1 + 121) = v22;
  }

  else
  {
    v26 = *(a2 + 96);
    v27 = *(a2 + 104);
    outlined copy of _Glass.Variant.Role(v26, v27);
    v28 = *(a1 + 96);
    v29 = *(a1 + 104);
    *(a1 + 96) = v26;
    *(a1 + 104) = v27;
    outlined consume of _Glass.Variant.Role(v28, v29);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 120) = *(a2 + 120);

    *(a1 + 128) = *(a2 + 128);
    *(a1 + 136) = *(a2 + 136);
  }

  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);
  swift_weakCopyAssign();
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 188) = *(a2 + 188);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 196) = *(a2 + 196);
  return a1;
}

_OWORD *initializeWithTake for PlatformGlassInteractionContext(_OWORD *a1, _OWORD *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  *(a1 + 25) = *(a2 + 25);
  v5 = a2[4];
  a1[3] = a2[3];
  a1[4] = v5;
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 121) = *(a2 + 121);
  v6 = a2[7];
  a1[6] = a2[6];
  a1[7] = v6;
  v7 = a2[10];
  a1[9] = a2[9];
  a1[10] = v7;
  swift_weakTakeInit();
  *(a1 + 184) = *(a2 + 184);
  return a1;
}

uint64_t assignWithTake for PlatformGlassInteractionContext(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  outlined consume of _Glass.Variant.Role(v4, v5);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  if (*(a1 + 72) == 1)
  {
    goto LABEL_4;
  }

  v6 = *(a2 + 72);
  if (v6 == 1)
  {
    outlined destroy of _Glass(a1 + 48);
LABEL_4:
    v7 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v7;
    *(a1 + 73) = *(a2 + 73);
    goto LABEL_6;
  }

  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  *(a1 + 48) = *(a2 + 48);
  outlined consume of _Glass.Variant.Role(v8, v9);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v6;

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
LABEL_6:
  if (*(a1 + 120) != 1)
  {
    v10 = *(a2 + 120);
    if (v10 != 1)
    {
      v12 = *(a1 + 96);
      v13 = *(a1 + 104);
      *(a1 + 96) = *(a2 + 96);
      outlined consume of _Glass.Variant.Role(v12, v13);
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 120) = v10;

      *(a1 + 128) = *(a2 + 128);
      *(a1 + 136) = *(a2 + 136);
      goto LABEL_11;
    }

    outlined destroy of _Glass(a1 + 96);
  }

  v11 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v11;
  *(a1 + 121) = *(a2 + 121);
LABEL_11:
  v14 = *(a2 + 160);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = v14;
  swift_weakTakeAssign();
  *(a1 + 184) = *(a2 + 184);
  return a1;
}

uint64_t getEnumTagSinglePayload for PlatformGlassInteractionContext(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 200))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t storeEnumTagSinglePayload for PlatformGlassInteractionContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 200) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 200) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t *assignWithCopy for _Glass.Variant(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  outlined copy of _Glass.Variant.Role(*a2, v4);
  v5 = *a1;
  v6 = a1[1];
  *a1 = v3;
  a1[1] = v4;
  outlined consume of _Glass.Variant.Role(v5, v6);
  return a1;
}

uint64_t getEnumTagSinglePayload for _Glass.Variant(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x3FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 1073741822);
  }

  if (((*(a1 + 8) & 0x3FFFFFFC | (*(a1 + 8) >> 30)) ^ 0x3FFFFFFFu) >= 0x3FFFFFFD)
  {
    v3 = -1;
  }

  else
  {
    v3 = (*(a1 + 8) & 0x3FFFFFFC | (*(a1 + 8) >> 30)) ^ 0x3FFFFFFF;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for _Glass.Variant(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFFFFFD)
  {
    *result = a2 - 1073741822;
    *(result + 8) = 0;
    if (a3 >= 0x3FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (-a2 & 0x3FFFFFFC) - (a2 << 30);
    }
  }

  return result;
}

uint64_t getEnumTag for _Glass.Variant.Role(_DWORD *a1)
{
  v1 = a1[2];
  if (v1 >= 0)
  {
    return v1 >> 30;
  }

  else
  {
    return (*a1 + 2);
  }
}

void *destructiveInjectEnumTag for _Glass.Variant.Role(void *result, unsigned int a2)
{
  if (a2 < 2)
  {
    result[1] = result[1] & 0xFFFFFFFF00000003 | (a2 << 30);
  }

  else
  {
    *result = a2 - 2;
    result[1] = 0x80000000;
  }

  return result;
}

uint64_t assignWithCopy for _Glass.Variant.ID(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  outlined copy of _Glass.Variant.ID(*a2, v4);
  v5 = *a1;
  *a1 = v3;
  v6 = *(a1 + 8);
  *(a1 + 8) = v4;
  outlined consume of _Glass.Variant.ID(v5, v6);
  return a1;
}

uint64_t assignWithTake for _Glass.Variant.ID(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *a1;
  *a1 = *a2;
  v5 = *(a1 + 8);
  *(a1 + 8) = v3;
  outlined consume of _Glass.Variant.ID(v4, v5);
  return a1;
}

uint64_t getEnumTagSinglePayload for _Glass.Variant.ID(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3E && *(a1 + 9))
  {
    return (*a1 + 62);
  }

  v3 = (*(a1 + 8) & 0x3C | (*(a1 + 8) >> 6)) ^ 0x3F;
  if (v3 >= 0x3D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for _Glass.Variant.ID(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3D)
  {
    *(result + 8) = 0;
    *result = a2 - 62;
    if (a3 >= 0x3E)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3E)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t getEnumTag for _Glass.Variant.ID(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t destructiveInjectEnumTag for _Glass.Variant.ID(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    *(result + 8) = *(result + 8) & 3 | (a2 << 6);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0x80;
  }

  return result;
}

void lazy protocol witness table accessor for type _Glass.Variant.ID and conformance _Glass.Variant.ID()
{
  if (!lazy protocol witness table cache variable for type _Glass.Variant.ID and conformance _Glass.Variant.ID)
  {
    swift_getWitnessTable(protocol conformance descriptor for _Glass.Variant.ID, &type metadata for _Glass.Variant.ID, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _Glass.Variant.ID and conformance _Glass.Variant.ID);
  }
}

void lazy protocol witness table accessor for type _Glass.Frost.Role and conformance _Glass.Frost.Role()
{
  if (!lazy protocol witness table cache variable for type _Glass.Frost.Role and conformance _Glass.Frost.Role)
  {
    swift_getWitnessTable(protocol conformance descriptor for _Glass.Frost.Role, &type metadata for _Glass.Frost.Role, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _Glass.Frost.Role and conformance _Glass.Frost.Role);
  }
}

void lazy protocol witness table accessor for type _Glass.Diffusion.Role and conformance _Glass.Diffusion.Role()
{
  if (!lazy protocol witness table cache variable for type _Glass.Diffusion.Role and conformance _Glass.Diffusion.Role)
  {
    swift_getWitnessTable(protocol conformance descriptor for _Glass.Diffusion.Role, &type metadata for _Glass.Diffusion.Role, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _Glass.Diffusion.Role and conformance _Glass.Diffusion.Role);
  }
}

void lazy protocol witness table accessor for type _Glass.ContentEffect.Storage and conformance _Glass.ContentEffect.Storage()
{
  if (!lazy protocol witness table cache variable for type _Glass.ContentEffect.Storage and conformance _Glass.ContentEffect.Storage)
  {
    swift_getWitnessTable(protocol conformance descriptor for _Glass.ContentEffect.Storage, &type metadata for _Glass.ContentEffect.Storage, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _Glass.ContentEffect.Storage and conformance _Glass.ContentEffect.Storage);
  }
}

void lazy protocol witness table accessor for type _Glass.InteractionState.Role and conformance _Glass.InteractionState.Role()
{
  if (!lazy protocol witness table cache variable for type _Glass.InteractionState.Role and conformance _Glass.InteractionState.Role)
  {
    swift_getWitnessTable(protocol conformance descriptor for _Glass.InteractionState.Role, &type metadata for _Glass.InteractionState.Role, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _Glass.InteractionState.Role and conformance _Glass.InteractionState.Role);
  }
}

uint64_t specialized static _Glass.Variant.ID.MixID.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *a2;
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a1 + 8);
  v10 = *(a2 + 8);
  v15 = *a1;
  v16 = v9;
  v13 = v5;
  v14 = v10;
  outlined copy of _Glass.Variant.ID(v15, v9);
  outlined copy of _Glass.Variant.ID(v5, v10);
  LOBYTE(v5) = specialized static _Glass.Variant.ID.== infix(_:_:)(&v15, &v13);
  outlined consume of _Glass.Variant.ID(v13, v14);
  outlined consume of _Glass.Variant.ID(v15, v16);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v15 = v2;
  v16 = v3;
  v13 = v6;
  v14 = v7;
  outlined copy of _Glass.Variant.ID(v2, v3);
  outlined copy of _Glass.Variant.ID(v6, v7);
  v11 = specialized static _Glass.Variant.ID.== infix(_:_:)(&v15, &v13);
  outlined consume of _Glass.Variant.ID(v13, v14);
  outlined consume of _Glass.Variant.ID(v15, v16);
  return v11 & (v4 == v8);
}

uint64_t assignWithCopy for _Glass.ID(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of _Glass.Variant.ID(*a2, v5);
  v6 = *a1;
  *a1 = v4;
  v7 = *(a1 + 8);
  *(a1 + 8) = v5;
  outlined consume of _Glass.Variant.ID(v6, v7);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t assignWithTake for _Glass.ID(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *a1;
  *a1 = *a2;
  v6 = *(a1 + 8);
  *(a1 + 8) = v4;
  outlined consume of _Glass.Variant.ID(v5, v6);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t getEnumTagSinglePayload for _Glass.ID(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 41))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for _Glass.ID(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

void destroy for _Glass.Variant.ID.MixID(uint64_t a1)
{
  outlined consume of _Glass.Variant.ID(*a1, *(a1 + 8));
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);

  outlined consume of _Glass.Variant.ID(v2, v3);
}

uint64_t initializeWithCopy for _Glass.Variant.ID.MixID(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of _Glass.Variant.ID(*a2, v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  outlined copy of _Glass.Variant.ID(v6, v7);
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t assignWithCopy for _Glass.Variant.ID.MixID(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of _Glass.Variant.ID(*a2, v5);
  v6 = *a1;
  *a1 = v4;
  v7 = *(a1 + 8);
  *(a1 + 8) = v5;
  outlined consume of _Glass.Variant.ID(v6, v7);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  outlined copy of _Glass.Variant.ID(v8, v9);
  v10 = *(a1 + 16);
  *(a1 + 16) = v8;
  v11 = *(a1 + 24);
  *(a1 + 24) = v9;
  outlined consume of _Glass.Variant.ID(v10, v11);
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t assignWithTake for _Glass.Variant.ID.MixID(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *a1;
  *a1 = *a2;
  v6 = *(a1 + 8);
  *(a1 + 8) = v4;
  outlined consume of _Glass.Variant.ID(v5, v6);
  v7 = *(a2 + 24);
  v8 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  v9 = *(a1 + 24);
  *(a1 + 24) = v7;
  outlined consume of _Glass.Variant.ID(v8, v9);
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t getEnumTagSinglePayload for _Glass.Variant.ID.MixID(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3E && *(a1 + 40))
  {
    return (*a1 + 62);
  }

  v3 = (*(a1 + 8) & 0x3C | (*(a1 + 8) >> 6)) ^ 0x3F;
  if (v3 >= 0x3D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for _Glass.Variant.ID.MixID(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3D)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 62;
    if (a3 >= 0x3E)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3E)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    }
  }

  return result;
}

void lazy protocol witness table accessor for type _Glass.Variant.ID.MixID and conformance _Glass.Variant.ID.MixID()
{
  if (!lazy protocol witness table cache variable for type _Glass.Variant.ID.MixID and conformance _Glass.Variant.ID.MixID)
  {
    swift_getWitnessTable(protocol conformance descriptor for _Glass.Variant.ID.MixID, &type metadata for _Glass.Variant.ID.MixID, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _Glass.Variant.ID.MixID and conformance _Glass.Variant.ID.MixID);
  }
}

void lazy protocol witness table accessor for type _Glass.ID and conformance _Glass.ID()
{
  if (!lazy protocol witness table cache variable for type _Glass.ID and conformance _Glass.ID)
  {
    swift_getWitnessTable(protocol conformance descriptor for _Glass.ID, &type metadata for _Glass.ID, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _Glass.ID and conformance _Glass.ID);
  }
}

Swift::Int CAHostingLayerEvent.MouseButton.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

double *closure #1 in static CAHostingLayerEvent.mousePressed(button:location:instant:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v8 = (a1 + *(type metadata accessor for CAHostingLayerEvent.Context(0) + 20));
  v9 = *v8;
  v10 = *(*v8 + 16);
  if (v10)
  {
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v12)
    {
      v13 = *(*(v9 + 56) + 8 * v11);
      ContinuousClock.Instant.duration(to:)();
      v14 = Duration.components.getter();
      v16 = v15 / 1.0e18 + v14;
      result = swift_allocObject();
      result[2] = v16;
      result[3] = 0.0;
      *(result + 4) = a2;
      *(result + 40) = 3;
      result[6] = 0.0;
      result[7] = 0.0;
      result[8] = a4;
      result[9] = a5;
      result[10] = 0.0;
      v10 = &protocol witness table for MouseEvent;
      v18 = &type metadata for MouseEvent;
      goto LABEL_7;
    }

    v18 = 0;
    v10 = 0;
  }

  else
  {
    v18 = 0;
  }

  result = 0;
  v13 = 0;
LABEL_7:
  v35[0] = v13;
  v35[1] = result;
  v35[2] = 0;
  v35[3] = 0;
  v35[4] = v18;
  v35[5] = v10;
  v19 = v8[1];
  v20 = v19 + 1;
  if (__OFADD__(v19, 1))
  {
    __break(1u);
  }

  else
  {
    v8[1] = v20;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v33[0] = *v8;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v20, a2, isUniquelyReferenced_nonNull_native);
    *v8 = *&v33[0];
    specialized Set._Variant.insert(_:)(v33, a2);
    ContinuousClock.Instant.duration(to:)();
    v22 = Duration.components.getter();
    v24 = v23 / 1.0e18 + v22;
    *&v34 = &type metadata for MouseEvent;
    *(&v34 + 1) = &protocol witness table for MouseEvent;
    v25 = swift_allocObject();
    *(v25 + 16) = v24;
    *(v25 + 24) = 0;
    *(v25 + 32) = a2;
    *(v25 + 40) = 0;
    *(v25 + 48) = 0;
    *(v25 + 56) = 0;
    *(v25 + 64) = a4;
    *(v25 + 72) = a5;
    *(v25 + 80) = 0;
    *&v33[0] = v20;
    *(&v33[0] + 1) = v25;
    outlined init with copy of CAHostingLayerEvent.Resolved?(v35, v30);
    if (v31)
    {
      v32[0] = v30[0];
      v32[1] = v30[1];
      v32[2] = v31;
      type metadata accessor for _ContiguousArrayStorage<CAHostingLayerEvent.Resolved>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CAHostingLayerEvent.Resolved>, MEMORY[0x1E69E6F90]);
      v26 = swift_allocObject();
      v26[1] = xmmword_18DDAB4C0;
      outlined init with copy of CAHostingLayerEvent.Resolved(v32, (v26 + 2));
      outlined init with copy of CAHostingLayerEvent.Resolved(v33, (v26 + 5));
      outlined destroy of CAHostingLayerEvent.Resolved(v32);
      outlined destroy of CAHostingLayerEvent.Resolved(v33);
    }

    else
    {
      outlined destroy of CAHostingLayerEvent.Resolved?(v30);
      type metadata accessor for _ContiguousArrayStorage<CAHostingLayerEvent.Resolved>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CAHostingLayerEvent.Resolved>, MEMORY[0x1E69E6F90]);
      v26 = swift_allocObject();
      v27 = v33[0];
      v28 = v33[1];
      v26[1] = xmmword_18DDA6EB0;
      v26[2] = v27;
      v29 = v34;
      v26[3] = v28;
      v26[4] = v29;
    }

    outlined destroy of CAHostingLayerEvent.Resolved?(v35);
    return v26;
  }

  return result;
}

uint64_t static CAHostingLayerEvent.mousePressed(button:location:instant:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, void *a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v13 = type metadata accessor for ContinuousClock.Instant();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v17 = *a1;
  (*(v14 + 16))(&v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v13, v16);
  v18 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  result = (*(v14 + 32))(v19 + v18, &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
  v21 = (v19 + ((v15 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v21 = a6;
  v21[1] = a7;
  *a5 = a4;
  a5[1] = v19;
  return result;
}

uint64_t closure #1 in static CAHostingLayerEvent.mouseLifted(button:location:instant:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v8 = (a1 + *(type metadata accessor for CAHostingLayerEvent.Context(0) + 20));
  v9 = *v8;
  if (!*(*v8 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v10 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v11 & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v12 = *(*(v9 + 56) + 8 * v10);
  ContinuousClock.Instant.duration(to:)();
  v13 = Duration.components.getter();
  v15 = v14 / 1.0e18 + v13;
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = 0;
  *(v16 + 32) = a2;
  *(v16 + 40) = 2;
  *(v16 + 48) = 0;
  *(v16 + 56) = 0;
  *(v16 + 64) = a4;
  *(v16 + 72) = a5;
  *(v16 + 80) = 0;
  type metadata accessor for _ContiguousArrayStorage<CAHostingLayerEvent.Resolved>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CAHostingLayerEvent.Resolved>, MEMORY[0x1E69E6F90]);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_18DDA6EB0;
  *(v17 + 32) = v12;
  *(v17 + 40) = v16;
  *(v17 + 64) = &type metadata for MouseEvent;
  *(v17 + 72) = &protocol witness table for MouseEvent;
  specialized Dictionary._Variant.removeValue(forKey:)(a2, xmmword_18DDA6EB0);
  specialized Set._Variant.remove(_:)(a2, &v19);
  return v17;
}

uint64_t partial apply for closure #1 in static CAHostingLayerEvent.mousePressed(button:location:instant:)(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, unint64_t, __n128, __n128))
{
  v4 = *(type metadata accessor for ContinuousClock.Instant() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v2 + 16);
  v7 = (v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8.n128_u64[0] = *v7;
  v9.n128_u64[0] = v7[1];

  return a2(a1, v6, v2 + v5, v8, v9);
}

uint64_t static CAHostingLayerEvent.mouseDragged(location:instant:)@<X0>(uint64_t a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>, double a3@<D0>, double a4@<D1>)
{
  v8 = type metadata accessor for ContinuousClock.Instant();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  (*(v9 + 16))(&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8, v11);
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = swift_allocObject();
  result = (*(v9 + 32))(v13 + v12, &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  v15 = (v13 + ((v10 + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v15 = a3;
  v15[1] = a4;
  *a2 = partial apply for closure #1 in static CAHostingLayerEvent.mouseDragged(location:instant:);
  a2[1] = v13;
  return result;
}

uint64_t closure #1 in static CAHostingLayerEvent.mouseDragged(location:instant:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = *(a1 + *(type metadata accessor for CAHostingLayerEvent.Context(0) + 20) + 16);
  v12[2] = a1;
  v12[3] = a2;
  *&v12[4] = a3;
  *&v12[5] = a4;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy7SwiftUI19CAHostingLayerEventV11MouseButtonVG_AH8ResolvedVs5NeverOTg5(partial apply for closure #1 in closure #1 in static CAHostingLayerEvent.mouseDragged(location:instant:), v12, v8);
  v10 = v9;

  return v10;
}

uint64_t partial apply for closure #1 in static CAHostingLayerEvent.mouseDragged(location:instant:)(uint64_t a1)
{
  v3 = *(type metadata accessor for ContinuousClock.Instant() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  return closure #1 in static CAHostingLayerEvent.mouseDragged(location:instant:)(a1, v1 + v4, v6, v7);
}

uint64_t initializeWithCopy for CAHostingLayerEvent.Resolved(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 32);
  *(a1 + 32) = v3;
  (**(v3 - 8))(a1 + 8, a2 + 8);
  return a1;
}

void *assignWithCopy for CAHostingLayerEvent.Resolved(void *a1, void *a2, __n128 a3)
{
  *a1 = *a2;
  __swift_assign_boxed_opaque_existential_1(a1 + 1, a2 + 1, a3);
  return a1;
}

uint64_t assignWithTake for CAHostingLayerEvent.Resolved(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  __swift_destroy_boxed_opaque_existential_1((a1 + 8));
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t *initializeBufferWithCopyOfBuffer for CAHostingLayerEvent.Context(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v12 = *a2;
    *a1 = *a2;
    a1 = (v12 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for ContinuousClock.Instant();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = *(a3 + 20);
    v9 = (a1 + v8);
    v10 = (a2 + v8);
    v11 = v10[1];
    *v9 = *v10;
    v9[1] = v11;
    v9[2] = v10[2];
  }

  return a1;
}

double destroy for CAHostingLayerEvent.Context(uint64_t a1)
{
  v2 = type metadata accessor for ContinuousClock.Instant();
  (*(*(v2 - 8) + 8))(a1, v2);

  return result;
}

uint64_t initializeWithCopy for CAHostingLayerEvent.Context(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ContinuousClock.Instant();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  v10 = v9[1];
  *v8 = *v9;
  v8[1] = v10;
  v8[2] = v9[2];

  return a1;
}

uint64_t assignWithCopy for CAHostingLayerEvent.Context(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ContinuousClock.Instant();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = a1 + v7;
  v9 = (a2 + v7);
  *(a1 + v7) = *v9;

  *(v8 + 8) = v9[1];
  *(v8 + 16) = v9[2];

  return a1;
}

uint64_t initializeWithTake for CAHostingLayerEvent.Context(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ContinuousClock.Instant();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = a1 + v7;
  v9 = a2 + v7;
  *v8 = *v9;
  *(v8 + 16) = *(v9 + 16);
  return a1;
}

uint64_t assignWithTake for CAHostingLayerEvent.Context(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ContinuousClock.Instant();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = a1 + v7;
  v9 = (a2 + v7);
  *(a1 + v7) = *v9;

  v10 = v9[2];
  *(v8 + 8) = v9[1];
  *(v8 + 16) = v10;

  return a1;
}

uint64_t type metadata accessor for CAHostingLayerEvent.Context(uint64_t a1)
{
  result = type metadata singleton initialization cache for CAHostingLayerEvent.Context;
  if (!type metadata singleton initialization cache for CAHostingLayerEvent.Context)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for CAHostingLayerEvent.Context(uint64_t a1)
{
  result = type metadata accessor for ContinuousClock.Instant();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t closure #1 in closure #1 in static CAHostingLayerEvent.mouseDragged(location:instant:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v11 = type metadata accessor for ContinuousClock.Instant();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  result = type metadata accessor for CAHostingLayerEvent.Context(0);
  v17 = *(a2 + *(result + 20));
  if (*(v17 + 16))
  {
    result = specialized __RawDictionaryStorage.find<A>(_:)(v15);
    if (v18)
    {
      v19 = *(*(v17 + 56) + 8 * result);
      (*(v12 + 16))(v14, a2, v11);
      ContinuousClock.Instant.duration(to:)();
      (*(v12 + 8))(v14, v11);
      v20 = Duration.components.getter();
      v22 = v21 / 1.0e18 + v20;
      a4[4] = &type metadata for MouseEvent;
      a4[5] = &protocol witness table for MouseEvent;
      result = swift_allocObject();
      *(result + 16) = v22;
      *(result + 24) = 0;
      *(result + 32) = v15;
      *(result + 40) = 1;
      *(result + 48) = 0;
      *(result + 56) = 0;
      *(result + 64) = a5;
      *(result + 72) = a6;
      *(result + 80) = 0;
      *a4 = v19;
      a4[1] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t outlined init with copy of CAHostingLayerEvent.Resolved?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for _ContiguousArrayStorage<CAHostingLayerEvent.Resolved>(0, &lazy cache variable for type metadata for CAHostingLayerEvent.Resolved?, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for _ContiguousArrayStorage<CAHostingLayerEvent.Resolved>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for CAHostingLayerEvent.Resolved);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t outlined destroy of CAHostingLayerEvent.Resolved?(uint64_t a1)
{
  type metadata accessor for _ContiguousArrayStorage<CAHostingLayerEvent.Resolved>(0, &lazy cache variable for type metadata for CAHostingLayerEvent.Resolved?, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *initializeBufferWithCopyOfBuffer for MouseTracker(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = a2[2];

  return a1;
}

uint64_t *assignWithCopy for MouseTracker(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  a1[2] = a2[2];

  return a1;
}

void *assignWithTake for MouseTracker(void *a1, void *a2)
{
  *a1 = *a2;

  v4 = a2[2];
  a1[1] = a2[1];
  a1[2] = v4;

  return a1;
}

unint64_t _s7SwiftUI18PreferencesOutputsV20makePreferenceWriter6inputs3key5valueyAA0C6InputsV_xm14AttributeGraph0L0Vy5ValueQzGyXKtAA0F3KeyRzlFAA13PlatformItemsV0O033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt0B5(uint64_t a1, uint64_t a2, unsigned int (*a3)(void))
{
  result = PreferenceKeys._index(of:)(&type metadata for PlatformItems.Key);
  v6 = *(a1 + 16);
  if (result != v6)
  {
    if (result >= v6)
    {
      __break(1u);
    }

    else if (*(a1 + 16 * result + 32) == &type metadata for PlatformItems.Key)
    {
      v7 = a3();

      return PreferencesOutputs.subscript.setter(v7, &type metadata for PlatformItems.Key, &protocol witness table for PlatformItems.Key);
    }
  }

  return result;
}

unint64_t _ViewOutputs.multiPlatformItemAttr.getter()
{
  result = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA13PlatformItemsV0I033_391C8788DFD73AA8AB21B496A57C73FFLLV_TtB5(*v0);
  if ((result & 0x100000000) != 0)
  {
    return *MEMORY[0x1E698D3F8];
  }

  else
  {
    return result;
  }
}

uint64_t (*specialized MutableCollection<>.subscript.modify(uint64_t (**a1)(), uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x48uLL);
  }

  v8 = result;
  *a1 = result;
  *(result + 7) = a3;
  *(result + 8) = v3;
  *(result + 6) = a2;
  v9 = *(v3 + 24);
  if (v9 < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (a2 < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v9 >= a3)
  {
    v11 = *(v3 + 8);
    v10 = *(v3 + 16);
    *(v8 + 16) = *v3;
    *(v8 + 3) = v11;
    *(v8 + 4) = v10;
    *(v8 + 5) = v9;
    *v8 = a2;
    *(v8 + 1) = a3;

    return MutableCollection<>.subscript.modifyspecialized ;
  }

LABEL_10:
  __break(1u);
  return result;
}

void MutableCollection<>.subscript.modifyspecialized (uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 56);
  v4 = *(*a1 + 64);
  v5 = *(*a1 + 48);
  if (a2)
  {
    v6 = v2[16];
    v8 = *(v2 + 3);
    v7 = *(v2 + 4);
    v9 = *(v2 + 5);
    v10 = *v2;
    v11 = v6;
    v12 = v8;
    v13 = v7;
    v14 = v9;

    specialized _writeBackMutableSlice<A, B>(_:bounds:slice:)(v4, v5, v3, &v10);
  }

  else
  {
    specialized _writeBackMutableSlice<A, B>(_:bounds:slice:)(*(*a1 + 64), v5, v3, v2);
  }

  free(v2);
}

void (*specialized MutableCollection<>.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x2C0uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[86] = v3;
  v7[85] = a3;
  v7[84] = a2;
  result = *(v3 + 16);
  v8[87] = result;
  if (a2 < 0 || *(result + 2) < a3)
  {
    __break(1u);
  }

  else
  {
    v10 = *(v3 + 8);
    v8[81] = *v3;
    *(v8 + 164) = v10;
    v8[83] = result;
    v8[79] = a2;
    v8[80] = a3;

    return MutableCollection<>.subscript.modifyspecialized ;
  }

  return result;
}

void MutableCollection<>.subscript.modifyspecialized (uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 696);
  v4 = *(*a1 + 680);
  if (a2)
  {
    if (*(v3 + 2) < v4)
    {
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    v5 = v2[79];
    v6 = v2[80];
    v7 = v2[83];
    v32 = *a1;
    v8 = v2[84];

    if (v8 != v4)
    {
      v15 = v3;
      if (v5 <= v6)
      {
        v16 = v6;
      }

      else
      {
        v16 = v5;
      }

      v31 = v16;
      v17 = 632 * v8 + 32;
      v18 = v7 + 632 * v5 + 32;
      v9 = v5;
      while (v6 != v9)
      {
        if (v31 == v9)
        {
          goto LABEL_47;
        }

        if (v5 < 0)
        {
          goto LABEL_49;
        }

        if (v9 >= *(v7 + 16))
        {
          goto LABEL_51;
        }

        v3 = v15;
        outlined init with copy of PlatformItem(v18, v32);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
        }

        if (v8 >= *(v3 + 2))
        {
          goto LABEL_53;
        }

        v19 = v5;
        v20 = v7;
        v21 = v6;
        v22 = *(v32 + 688);
        v4 = *(v32 + 680);
        outlined assign with take of PlatformItem(v32, &v3[v17]);
        ++v8;
        v15 = v3;
        *(v22 + 16) = v3;
        v6 = v21;
        v7 = v20;
        v5 = v19;
        ++v9;
        v17 += 632;
        v18 += 632;
        if (v8 == v4)
        {
          goto LABEL_5;
        }
      }

      goto LABEL_57;
    }

    v9 = v5;
LABEL_5:

    v2 = v32;
    if (v9 == v6)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  if (*(v3 + 2) < v4)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v10 = v2[84];
  v11 = v2[79];
  v12 = v2[80];
  v13 = v11 == v12;
  v14 = v10 == v4 || v11 == v12;
  if (!v14)
  {
    if (v11 <= v12)
    {
      v23 = v2[80];
    }

    else
    {
      v23 = v2[79];
    }

    v33 = v23;
    v24 = 632 * v10 + 32;
    v25 = v12 - 1;
    v26 = 632 * v11 + 32;
    v27 = v2[79];
    while (v33 != v27)
    {
      if (v11 < 0)
      {
        goto LABEL_48;
      }

      v28 = v2[83];
      if (v27 >= *(v28 + 16))
      {
        goto LABEL_50;
      }

      outlined init with copy of PlatformItem(v28 + v26, v2);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
      }

      if (v10 >= *(v3 + 2))
      {
        goto LABEL_52;
      }

      v29 = v2[86];
      v30 = v2[85];
      outlined assign with take of PlatformItem(v2, &v3[v24]);
      *(v29 + 16) = v3;
      ++v10;
      v13 = v25 == v27;
      if (v10 != v30)
      {
        v24 += 632;
        v26 += 632;
        v14 = v25 == v27++;
        if (!v14)
        {
          continue;
        }
      }

      if (v10 == v30)
      {
        goto LABEL_14;
      }

      goto LABEL_45;
    }

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
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (v10 != v4)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

LABEL_14:
  if (!v13)
  {
LABEL_56:
    __break(1u);
LABEL_57:

    __break(1u);
    return;
  }

LABEL_15:

  free(v2);
}

uint64_t _ViewOutputs.unaryPlatformItemAttr.getter()
{
  if ((_s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA13PlatformItemsV0I033_391C8788DFD73AA8AB21B496A57C73FFLLV_TtB5(*v0) & 0x100000000) != 0)
  {
    return *MEMORY[0x1E698D3F8];
  }

  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type _ViewOutputs.FirstItem and conformance _ViewOutputs.FirstItem();
  return Attribute.init<A>(body:value:flags:update:)();
}

void *static PlatformItems.empty(features:)@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  *(a2 + 16) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t PlatformItems.matches(_:)(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(v1 + 8);
  if (v3 == -1 || v3 != v2)
  {
    return 0;
  }

  v6 = *(v1 + 16);
  v7 = *(a1 + 16);
  v8 = *a1;
  v14[1] = *v1;
  v15 = v2;
  v16 = v6;
  PlatformItems.id.getter(v14);
  v9 = v14[0];
  v11[1] = v8;
  v12 = v2;
  v13 = v7;
  PlatformItems.id.getter(v11);
  v10 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14AttributeGraph0B0Vy7SwiftUI11TransactionVG_Tt1g5(v9, v11[0]);

  return v10 & 1;
}

Swift::Void __swiftcall _ViewInputs.addPlatformItemKey()()
{
  PreferenceKeys.add(_:)(&type metadata for PlatformItems.Key, &protocol witness table for PlatformItems.Key);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE018TextRepresentationF033_03CAEBF34B5290A85C0CA97765182271LLV_Tt2g5(v0, &type metadata for PlatformItemsTextRepresentable, &protocol witness table for PlatformItemsTextRepresentable);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE019ImageRepresentationF033_9FE4F19E3F2D6B2A0FD05C040386BBC3LLV_Tt2g5(v0, &type metadata for PlatformItemsImageRepresentable, &protocol witness table for PlatformItemsImageRepresentable);
}

double _ViewInputs.platformItemsFeatures.setter(uint64_t *a1, void (*a2)(uint64_t, uint64_t, uint64_t *))
{
  v4 = *a1;

  a2(v2, v4, &v6);

  return result;
}

double _ViewInputs.requestsPlatformItems.setter(char a1)
{

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA11_ViewInputsVAAE021RequestsPlatformItemsF033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt2g5(v1, a1);

  return result;
}

__n128 static PlatformItem.empty.getter@<Q0>(uint64_t a1@<X8>)
{
  _s7SwiftUI12PlatformItemV14PrimaryContentVSgWOi0_(&v10);
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 320) = 1;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 552) = 0u;
  *(a1 + 568) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 609) = 0u;
  v2 = MEMORY[0x1E69E7CC0];
  *(a1 + 304) = xmmword_18DD85500;
  *a1 = &outlined read-only object #0 of static PlatformItem.empty.getter;
  *(a1 + 8) = v2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 28) = 0;
  v25[12] = v22;
  v25[13] = v23;
  v25[14] = v24;
  v25[8] = v18;
  v25[9] = v19;
  v25[10] = v20;
  v25[11] = v21;
  v25[4] = v14;
  v25[5] = v15;
  v25[6] = v16;
  v25[7] = v17;
  v25[0] = v10;
  v25[1] = v11;
  v25[2] = v12;
  v25[3] = v13;
  outlined destroy of PlatformItem.PrimaryContent?(v25, &lazy cache variable for type metadata for PlatformItem.PrimaryContent?, &type metadata for PlatformItem.PrimaryContent);
  v3 = v23;
  *(a1 + 224) = v22;
  *(a1 + 240) = v3;
  *(a1 + 256) = v24;
  v4 = v19;
  *(a1 + 160) = v18;
  *(a1 + 176) = v4;
  v5 = v21;
  *(a1 + 192) = v20;
  *(a1 + 208) = v5;
  v6 = v15;
  *(a1 + 96) = v14;
  *(a1 + 112) = v6;
  v7 = v17;
  *(a1 + 128) = v16;
  *(a1 + 144) = v7;
  v8 = v11;
  *(a1 + 32) = v10;
  *(a1 + 48) = v8;
  result = v13;
  *(a1 + 64) = v12;
  *(a1 + 80) = result;
  return result;
}

uint64_t PlatformItem.matches(_:)(uint64_t a1)
{
  v2 = *(v1 + 28);
  if (v2 == -1 || v2 != *(a1 + 28))
  {
    return 0;
  }

  else
  {
    return _sSasSQRzlE2eeoiySbSayxG_ABtFZ14AttributeGraph0B0Vy7SwiftUI11TransactionVG_Tt1g5(*v1, *a1);
  }
}

void PlatformItems.id.getter(char **a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v3 + 16);
  if (!v4)
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_19:
    *a1 = v6;
    return;
  }

  v5 = v3 + 32;
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    outlined init with copy of PlatformItem(v5, v17);
    v7 = v17[0];

    outlined destroy of PlatformItem(v17);
    v8 = *(v7 + 16);
    v9 = *(v6 + 2);
    v10 = v9 + v8;
    if (__OFADD__(v9, v8))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v10 <= *(v6 + 3) >> 1)
    {
      if (*(v7 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v9 <= v10)
      {
        v12 = v9 + v8;
      }

      else
      {
        v12 = v9;
      }

      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v12, 1, v6);
      if (*(v7 + 16))
      {
LABEL_14:
        v13 = *(v6 + 2);
        if ((*(v6 + 3) >> 1) - v13 < v8)
        {
          goto LABEL_22;
        }

        memcpy(&v6[4 * v13 + 32], (v7 + 32), 4 * v8);

        if (v8)
        {
          v14 = *(v6 + 2);
          v15 = __OFADD__(v14, v8);
          v16 = v14 + v8;
          if (v15)
          {
            goto LABEL_23;
          }

          *(v6 + 2) = v16;
        }

        goto LABEL_4;
      }
    }

    if (v8)
    {
      goto LABEL_21;
    }

LABEL_4:
    v5 += 632;
    if (!--v4)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
}

Swift::Void __swiftcall PlatformItem.ID.merge(_:)(SwiftUI::PlatformItem::ID a1)
{

  specialized Array.append<A>(contentsOf:)(v1);
}

void PlatformItems.merge(_:)(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(v1 + 8);
  if (v3 != -1 && v2 != 0)
  {
    if (v3)
    {
      v5 = v2 == -1;
    }

    else
    {
      v5 = 1;
    }

    if (!v5)
    {
      v2 = merge32(_:_:)(v3, v2);
    }

    *(v1 + 8) = v2;
  }

  specialized Array.append<A>(contentsOf:)(v6);
}

void static PlatformItems.empty.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = MEMORY[0x1E69E7CC0];
}

Swift::Int __swiftcall PlatformItems.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall PlatformItems.index(before:)(Swift::Int before)
{
  v1 = __OFSUB__(before, 1);
  result = before - 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

unint64_t PlatformItems.subscript.getter@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(v2 + 16);
    if (*(v3 + 16) > result)
    {
      return outlined init with copy of PlatformItem(v3 + 632 * result + 32, a2);
    }
  }

  __break(1u);
  return result;
}

uint64_t key path getter for PlatformItems.subscript(_:) : PlatformItems@<X0>(uint64_t result@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = *(result + 16);
    if (v3 < *(v4 + 16))
    {
      return outlined init with copy of PlatformItem(v4 + 632 * v3 + 32, a3);
    }
  }

  __break(1u);
  return result;
}

uint64_t key path setter for PlatformItems.subscript(_:) : PlatformItems(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = *a3;
  outlined init with copy of PlatformItem(a1, v7);
  v5 = *(a2 + 16);
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
  v5 = result;
  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v4 < *(v5 + 16))
  {
    result = outlined assign with take of PlatformItem(v7, v5 + 632 * v4 + 32);
    *(a2 + 16) = v5;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t PlatformItems.subscript.setter(uint64_t a1, unint64_t a2)
{
  v5 = *(v2 + 16);
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
  v5 = result;
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(v5 + 16) > a2)
  {
    result = outlined assign with take of PlatformItem(a1, v5 + 632 * a2 + 32);
    *(v2 + 16) = v5;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t (*PlatformItems.subscript.modify(uint64_t (**a1)(), unint64_t a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x508uLL);
  }

  *a1 = result;
  *(result + 159) = v2;
  *(result + 158) = a2;
  v6 = *(v2 + 16);
  *(result + 160) = v6;
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v6 + 16) > a2)
  {
    outlined init with copy of PlatformItem(v6 + 632 * a2 + 32, result);
    return PlatformItems.subscript.modify;
  }

  __break(1u);
  return result;
}

void PlatformItems.subscript.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    outlined init with copy of PlatformItem(*a1, (v2 + 79));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4 = v2[160];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v2[160]);
    }

    v5 = v2[158];
    if (*(v4 + 2) > v5)
    {
      v6 = v2[159];
      outlined assign with take of PlatformItem((v2 + 79), &v4[632 * v5 + 32]);
      *(v6 + 16) = v4;
      outlined destroy of PlatformItem(v2);
      goto LABEL_9;
    }

    __break(1u);
    goto LABEL_13;
  }

  v7 = swift_isUniquelyReferenced_nonNull_native();
  v4 = v2[160];
  if ((v7 & 1) == 0)
  {
LABEL_13:
    v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
  }

  v8 = v2[158];
  if (*(v4 + 2) <= v8)
  {
    __break(1u);
    return;
  }

  v9 = v2[159];
  outlined assign with take of PlatformItem(v2, &v4[632 * v8 + 32]);
  *(v9 + 16) = v4;
LABEL_9:

  free(v2);
}

uint64_t protocol witness for MutableCollection.subscript.setter in conformance PlatformItems(uint64_t a1, unint64_t *a2)
{
  v4 = *a2;
  v5 = *(v2 + 16);
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
  v5 = result;
  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v4 < *(v5 + 16))
  {
    result = outlined assign with take of PlatformItem(a1, v5 + 632 * v4 + 32);
    *(v2 + 16) = v5;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t (*protocol witness for MutableCollection.subscript.modify in conformance PlatformItems(uint64_t (***a1)(), unint64_t *a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  *(v4 + 32) = PlatformItems.subscript.modify(v4, *a2);
  return protocol witness for MutableCollection.subscript.modify in conformance ArrayWith2Inline<A>;
}

double protocol witness for MutableCollection.subscript.setter in conformance PlatformItems(unint64_t *a1, unint64_t *a2)
{
  specialized _writeBackMutableSlice<A, B>(_:bounds:slice:)(v2, *a2, a2[1], a1);

  return result;
}

void (*protocol witness for MutableCollection.subscript.modify in conformance PlatformItems(void *a1, uint64_t *a2))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = specialized MutableCollection<>.subscript.modify(v4, *a2, a2[1]);
  return protocol witness for Animatable.animatableData.modify in conformance LinearGradient.AbsolutePaint;
}

uint64_t (*protocol witness for MutableCollection.partition(by:) in conformance PlatformItems@<X0>(uint64_t *a1@<X8>, uint64_t (*a2)(_BYTE *)@<X0>))(_BYTE *)
{
  result = specialized MutableCollection<>._partitionImpl(by:)(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance PlatformItems(uint64_t (**a1)(), unint64_t *a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x271uLL);
  }

  *a1 = result;
  v6 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v7 = *(v2 + 16);
    if (v6 < *(v7 + 16))
    {
      outlined init with copy of PlatformItem(v7 + 632 * v6 + 32, result);
      return protocol witness for Collection.subscript.read in conformance PlatformItems;
    }
  }

  __break(1u);
  return result;
}

void protocol witness for Collection.subscript.read in conformance PlatformItems(uint64_t *a1)
{
  v1 = *a1;
  outlined destroy of PlatformItem(*a1);

  free(v1);
}

void protocol witness for Collection.subscript.getter in conformance PlatformItems(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (*a1 < 0 || (v4 = a1[1], v5 = v2[2], *(v5 + 16) < v4))
  {
    __break(1u);
  }

  else
  {
    v6 = *v2;
    v7 = *(v2 + 2);
    *(a2 + 8) = v4;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
    *(a2 + 32) = v5;
    *a2 = v3;
  }
}

void protocol witness for Sequence.makeIterator() in conformance PlatformItems(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = 0;
}

void *protocol witness for Sequence._copyToContiguousArray() in conformance PlatformItems()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(v0);

  return v1;
}

uint64_t PlatformItem.ID.init(id:)@<X0>(int *a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1[1])
  {
    result = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v4 = *a1;
    type metadata accessor for PlatformItem.PrimaryContent?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ViewIdentity>, &type metadata for ViewIdentity, MEMORY[0x1E69E6F90]);
    result = swift_allocObject();
    *(result + 16) = xmmword_18DDA6EB0;
    *(result + 32) = v4;
  }

  *a2 = result;
  return result;
}

void PlatformItem.ID.hash(into:)()
{
  v1 = *v0;
  MEMORY[0x193AC11A0](*(*v0 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v4 = *v3++;
      Hasher._combine(_:)(v4);
      --v2;
    }

    while (v2);
  }
}

Swift::Int PlatformItem.ID.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v4 = *v3++;
      Hasher._combine(_:)(v4);
      --v2;
    }

    while (v2);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PlatformItem.ID(uint64_t a1)
{
  Hasher.init(_seed:)();
  PlatformItem.ID.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int PlatformItem.StaticKind.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

double PlatformItem.id.getter@<D0>(uint64_t *a1@<X8>)
{
  *a1 = *v1;

  return result;
}

void PlatformItem.id.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
}

uint64_t PlatformItem.content.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[13];
  v3 = v1[15];
  v35 = v1[14];
  v36 = v3;
  v4 = v1[15];
  v37 = v1[16];
  v5 = v1[9];
  v6 = v1[11];
  v31 = v1[10];
  v7 = v31;
  v32 = v6;
  v8 = v1[11];
  v9 = v1[13];
  v33 = v1[12];
  v10 = v33;
  v34 = v9;
  v11 = v1[5];
  v12 = v1[7];
  v27 = v1[6];
  v13 = v27;
  v28 = v12;
  v14 = v1[7];
  v15 = v1[9];
  v29 = v1[8];
  v16 = v29;
  v30 = v15;
  v17 = v1[3];
  v24[0] = v1[2];
  v24[1] = v17;
  v18 = v1[5];
  v20 = v1[2];
  v19 = v1[3];
  v25 = v1[4];
  v21 = v25;
  v26 = v18;
  a1[12] = v35;
  a1[13] = v4;
  a1[14] = v1[16];
  a1[8] = v7;
  a1[9] = v8;
  a1[10] = v10;
  a1[11] = v2;
  a1[4] = v13;
  a1[5] = v14;
  a1[6] = v16;
  a1[7] = v5;
  *a1 = v20;
  a1[1] = v19;
  a1[2] = v21;
  a1[3] = v11;
  return outlined init with copy of PlatformItem.PrimaryContent?(v24, &v23, &lazy cache variable for type metadata for PlatformItem.PrimaryContent?, &type metadata for PlatformItem.PrimaryContent);
}

__n128 PlatformItem.content.setter(uint64_t a1)
{
  v3 = v1[15];
  v17[12] = v1[14];
  v17[13] = v3;
  v17[14] = v1[16];
  v4 = v1[11];
  v17[8] = v1[10];
  v17[9] = v4;
  v5 = v1[13];
  v17[10] = v1[12];
  v17[11] = v5;
  v6 = v1[7];
  v17[4] = v1[6];
  v17[5] = v6;
  v7 = v1[9];
  v17[6] = v1[8];
  v17[7] = v7;
  v8 = v1[3];
  v17[0] = v1[2];
  v17[1] = v8;
  v9 = v1[5];
  v17[2] = v1[4];
  v17[3] = v9;
  outlined destroy of PlatformItem.PrimaryContent?(v17, &lazy cache variable for type metadata for PlatformItem.PrimaryContent?, &type metadata for PlatformItem.PrimaryContent);
  v10 = *(a1 + 208);
  v1[14] = *(a1 + 192);
  v1[15] = v10;
  v1[16] = *(a1 + 224);
  v11 = *(a1 + 144);
  v1[10] = *(a1 + 128);
  v1[11] = v11;
  v12 = *(a1 + 176);
  v1[12] = *(a1 + 160);
  v1[13] = v12;
  v13 = *(a1 + 80);
  v1[6] = *(a1 + 64);
  v1[7] = v13;
  v14 = *(a1 + 112);
  v1[8] = *(a1 + 96);
  v1[9] = v14;
  v15 = *(a1 + 16);
  v1[2] = *a1;
  v1[3] = v15;
  result = *(a1 + 48);
  v1[4] = *(a1 + 32);
  v1[5] = result;
  return result;
}

double PlatformItem.geometry.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 272);

  return result;
}

void PlatformItem.geometry.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 272) = v2;
}

double PlatformItem.selection.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = v1[35];
  v3 = v1[36];
  v4 = v1[37];
  v5 = v1[38];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return outlined copy of PlatformItem.SelectionContent?(v2, v3, v4, v5);
}

__n128 PlatformItem.selection.setter(uint64_t a1)
{
  outlined consume of PlatformItem.SelectionContent?(v1[35], v1[36], v1[37], v1[38]);
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 35) = *a1;
  *(v1 + 37) = v4;
  return result;
}

void PlatformItem.children.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 320);
  *a1 = *(v1 + 312);
  *(a1 + 8) = v2;
}

uint64_t PlatformItem.children.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 312) = *result;
  *(v1 + 320) = v2;
  return result;
}

__n128 PlatformItem.init(id:kind:features:system:seed:content:)@<Q0>(uint64_t *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t *a3@<X2>, char *a4@<X3>, int *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v9 = *a1;
  v10 = *a2;
  v11 = *a3;
  v12 = *a4;
  v13 = *a5;
  _s7SwiftUI12PlatformItemV14PrimaryContentVSgWOi0_(v23);
  *(a7 + 272) = 0u;
  *(a7 + 288) = 0u;
  *(a7 + 304) = xmmword_18DD85500;
  *(a7 + 320) = 1;
  *(a7 + 328) = 0u;
  *(a7 + 344) = 0u;
  *(a7 + 360) = 0u;
  *(a7 + 376) = 0u;
  *(a7 + 392) = 0u;
  *(a7 + 408) = 0u;
  *(a7 + 424) = 0u;
  *(a7 + 440) = 0u;
  *(a7 + 456) = 0u;
  *(a7 + 472) = 0u;
  *(a7 + 488) = 0u;
  *(a7 + 504) = 0u;
  *(a7 + 520) = 0u;
  *(a7 + 536) = 0u;
  *(a7 + 552) = 0u;
  *(a7 + 568) = 0u;
  *(a7 + 584) = 0u;
  *(a7 + 600) = 0u;
  *(a7 + 609) = 0u;
  *a7 = v9;
  if (v10 == 3)
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    type metadata accessor for PlatformItem.PrimaryContent?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<PlatformItem.StaticKind>, &type metadata for PlatformItem.StaticKind, MEMORY[0x1E69E6F90]);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_18DDA6EB0;
    *(v14 + 32) = v10;
  }

  *(a7 + 8) = v14;
  *(a7 + 16) = v11;
  *(a7 + 24) = v12;
  *(a7 + 28) = v13;
  v22[12] = v23[12];
  v22[13] = v23[13];
  v22[14] = v23[14];
  v22[8] = v23[8];
  v22[9] = v23[9];
  v22[10] = v23[10];
  v22[11] = v23[11];
  v22[4] = v23[4];
  v22[5] = v23[5];
  v22[6] = v23[6];
  v22[7] = v23[7];
  v22[0] = v23[0];
  v22[1] = v23[1];
  v22[2] = v23[2];
  v22[3] = v23[3];
  outlined destroy of PlatformItem.PrimaryContent?(v22, &lazy cache variable for type metadata for PlatformItem.PrimaryContent?, &type metadata for PlatformItem.PrimaryContent);
  v15 = *(a6 + 208);
  *(a7 + 224) = *(a6 + 192);
  *(a7 + 240) = v15;
  *(a7 + 256) = *(a6 + 224);
  v16 = *(a6 + 144);
  *(a7 + 160) = *(a6 + 128);
  *(a7 + 176) = v16;
  v17 = *(a6 + 176);
  *(a7 + 192) = *(a6 + 160);
  *(a7 + 208) = v17;
  v18 = *(a6 + 80);
  *(a7 + 96) = *(a6 + 64);
  *(a7 + 112) = v18;
  v19 = *(a6 + 112);
  *(a7 + 128) = *(a6 + 96);
  *(a7 + 144) = v19;
  v20 = *(a6 + 16);
  *(a7 + 32) = *a6;
  *(a7 + 48) = v20;
  result = *(a6 + 48);
  *(a7 + 64) = *(a6 + 32);
  *(a7 + 80) = result;
  return result;
}

BOOL PlatformItem.hasContent.getter()
{
  v1 = *(v0 + 240);
  *&v18[176] = *(v0 + 224);
  *&v18[192] = v1;
  v19 = *(v0 + 256);
  v2 = *(v0 + 176);
  *&v18[112] = *(v0 + 160);
  *&v18[128] = v2;
  v3 = *(v0 + 208);
  *&v18[144] = *(v0 + 192);
  *&v18[160] = v3;
  v4 = *(v0 + 112);
  *&v18[48] = *(v0 + 96);
  *&v18[64] = v4;
  v5 = *(v0 + 144);
  *&v18[80] = *(v0 + 128);
  *&v18[96] = v5;
  v6 = *(v0 + 48);
  v17 = *(v0 + 32);
  *v18 = v6;
  v7 = *(v0 + 80);
  *&v18[16] = *(v0 + 64);
  *&v18[32] = v7;
  if (_s7SwiftUI12PlatformItemV14PrimaryContentVSgWOg(&v17) == 1)
  {
    return 0;
  }

  v9 = *(v0 + 16);
  if ((v9 & 2) == 0)
  {
    if ((v9 & 4) == 0)
    {
      if ((v9 & 0x20) == 0)
      {
        if ((v9 & 0x40) == 0)
        {
          if ((v9 & 0x80) == 0)
          {
            if ((v9 & 0x100) == 0)
            {
              v10 = 1;
              goto LABEL_36;
            }

            goto LABEL_35;
          }

          goto LABEL_33;
        }

        goto LABEL_29;
      }

LABEL_23:
      v11 = *(v0 + 272);
      if ((v9 & 0x40) == 0)
      {
        v10 = v11 != 0;
        if ((v9 & 0x80) == 0)
        {
          goto LABEL_30;
        }

        goto LABEL_32;
      }

      if (!v11)
      {
        return 0;
      }

LABEL_29:
      v10 = *(v0 + 304) != 1;
      if ((v9 & 0x80) == 0)
      {
        goto LABEL_30;
      }

LABEL_32:
      if (!v10)
      {
        return 0;
      }

      goto LABEL_33;
    }

LABEL_13:
    v14[8] = *&v18[136];
    v14[9] = *&v18[152];
    v15[0] = *&v18[168];
    *(v15 + 11) = *&v18[179];
    v14[4] = *&v18[72];
    v14[5] = *&v18[88];
    v14[6] = *&v18[104];
    v14[7] = *&v18[120];
    v14[0] = *&v18[8];
    v14[1] = *&v18[24];
    v14[2] = *&v18[40];
    v14[3] = *&v18[56];
    if (_s7SwiftUI5ImageVAAE8ResolvedVSgWOg(v14) == 1)
    {
      if ((v9 & 0x20) == 0)
      {
        if ((v9 & 0x40) != 0)
        {
          return 0;
        }

        v10 = 0;
        result = 0;
        if ((v9 & 0x80) != 0)
        {
          return result;
        }

LABEL_30:
        if ((v9 & 0x100) != 0)
        {
          goto LABEL_34;
        }

        goto LABEL_36;
      }

LABEL_26:
      v10 = 0;
      result = 0;
      if ((v9 & 0xC0) != 0)
      {
        return result;
      }

      goto LABEL_30;
    }

    goto LABEL_18;
  }

  if (!v17)
  {
    goto LABEL_26;
  }

  if ((v9 & 4) != 0)
  {
    goto LABEL_13;
  }

LABEL_18:
  if ((v9 & 0x20) != 0)
  {
    goto LABEL_23;
  }

  if ((v9 & 0x40) != 0)
  {
    goto LABEL_29;
  }

  if ((v9 & 0x80) != 0)
  {
LABEL_33:
    v10 = *(&v17 + 1) != 0;
    if ((v9 & 0x100) == 0)
    {
      goto LABEL_36;
    }

LABEL_34:
    if (v10)
    {
LABEL_35:
      v10 = *v18 != 0;
      goto LABEL_36;
    }

    return 0;
  }

  v10 = 1;
  if ((v9 & 0x100) != 0)
  {
    goto LABEL_34;
  }

LABEL_36:
  v12 = (v9 & 0x200) == 0 && v10;
  if ((v9 & 0x200) != 0 && v10)
  {
    v12 = *(v0 + 320) ^ 1;
  }

  result = ((v9 & 0x400) == 0) & v12;
  if (v9 & 0x400) != 0 && (v12)
  {
    outlined init with copy of PlatformItem.PrimaryContent?(v0 + 328, v14, &lazy cache variable for type metadata for PlatformItem.AccessibilityContent?, &type metadata for PlatformItem.AccessibilityContent);
    v13 = v16 != 0;
    outlined destroy of PlatformItem.PrimaryContent?(v14, &lazy cache variable for type metadata for PlatformItem.AccessibilityContent?, &type metadata for PlatformItem.AccessibilityContent);
    return v13;
  }

  return result;
}

void *PlatformItem.merge(_:)(uint64_t a1)
{
  v2 = v1;

  specialized Array.append<A>(contentsOf:)(v4);

  specialized Array.append<A>(contentsOf:)(v5);
  v6 = *(a1 + 28);
  v7 = *(v1 + 28);
  if (v7 != -1 && v6 != 0)
  {
    if (v7 && v6 != -1)
    {
      v6 = merge32(_:_:)(v7, v6);
    }

    *(v1 + 28) = v6;
  }

  v9 = *(a1 + 208);
  v10 = *(a1 + 240);
  v115 = *(a1 + 224);
  v116 = v10;
  v11 = *(a1 + 240);
  v117 = *(a1 + 256);
  v12 = *(a1 + 144);
  v13 = *(a1 + 176);
  v111 = *(a1 + 160);
  v112 = v13;
  v15 = *(a1 + 176);
  v14 = *(a1 + 192);
  v16 = v14;
  v114 = *(a1 + 208);
  v113 = v14;
  v17 = *(a1 + 80);
  v18 = *(a1 + 112);
  v107 = *(a1 + 96);
  v108 = v18;
  v20 = *(a1 + 112);
  v19 = *(a1 + 128);
  v21 = v19;
  v110 = *(a1 + 144);
  v109 = v19;
  v22 = *(a1 + 48);
  v103 = *(a1 + 32);
  v104 = v22;
  v23 = *(a1 + 64);
  v25 = *(a1 + 32);
  v24 = *(a1 + 48);
  v106 = *(a1 + 80);
  v105 = v23;
  v130 = v115;
  v131 = v11;
  v132 = *(a1 + 256);
  v126 = v111;
  v127 = v15;
  v129 = v9;
  v128 = v16;
  v122 = v107;
  v123 = v20;
  v125 = v12;
  v124 = v21;
  v118 = v25;
  v119 = v24;
  v121 = v17;
  v120 = v23;
  if (_s7SwiftUI12PlatformItemV14PrimaryContentVSgWOg(&v118) == 1)
  {
LABEL_12:
    v47 = *(a1 + 272);
    if (!v47)
    {
      goto LABEL_19;
    }

    goto LABEL_13;
  }

  v26 = *(v1 + 240);
  __src[12] = *(v1 + 224);
  __src[13] = v26;
  __src[14] = *(v1 + 256);
  v27 = *(v1 + 176);
  __src[8] = *(v1 + 160);
  __src[9] = v27;
  v28 = *(v1 + 208);
  __src[10] = *(v1 + 192);
  __src[11] = v28;
  v29 = *(v1 + 112);
  __src[4] = *(v1 + 96);
  __src[5] = v29;
  v30 = *(v1 + 144);
  __src[6] = *(v1 + 128);
  __src[7] = v30;
  v31 = *(v1 + 48);
  __src[0] = *(v1 + 32);
  __src[1] = v31;
  v32 = *(v1 + 80);
  __src[2] = *(v1 + 64);
  __src[3] = v32;
  if (_s7SwiftUI12PlatformItemV14PrimaryContentVSgWOg(__src) == 1)
  {
    v82 = v130;
    v83 = v131;
    v84 = v132;
    v78 = v126;
    v79 = v127;
    v80 = v128;
    v81 = v129;
    v74 = v122;
    v75 = v123;
    v76 = v124;
    v77 = v125;
    v70 = v118;
    v71 = v119;
    v72 = v120;
    v73 = v121;
    _ViewInputs.base.modify();
    v33 = *(v1 + 240);
    v97 = *(v1 + 224);
    v98 = v33;
    v99 = *(v1 + 256);
    v34 = *(v1 + 176);
    v93 = *(v1 + 160);
    v94 = v34;
    v35 = *(v1 + 208);
    v95 = *(v1 + 192);
    v96 = v35;
    v36 = *(v1 + 112);
    v89 = *(v1 + 96);
    v90 = v36;
    v37 = *(v1 + 144);
    v91 = *(v1 + 128);
    v92 = v37;
    v38 = *(v1 + 48);
    v85 = *(v1 + 32);
    v86 = v38;
    v39 = *(v1 + 80);
    v87 = *(v1 + 64);
    v88 = v39;
    __dst[12] = v115;
    __dst[13] = v116;
    __dst[14] = v117;
    __dst[8] = v111;
    __dst[9] = v112;
    __dst[11] = v114;
    __dst[10] = v113;
    __dst[4] = v107;
    __dst[5] = v108;
    __dst[7] = v110;
    __dst[6] = v109;
    __dst[0] = v103;
    __dst[1] = v104;
    __dst[3] = v106;
    __dst[2] = v105;
    outlined init with copy of PlatformItem.PrimaryContent(__dst, &v69);
    outlined destroy of PlatformItem.PrimaryContent?(&v85, &lazy cache variable for type metadata for PlatformItem.PrimaryContent?, &type metadata for PlatformItem.PrimaryContent);
    v40 = v83;
    *(v1 + 224) = v82;
    *(v1 + 240) = v40;
    *(v1 + 256) = v84;
    v41 = v79;
    *(v1 + 160) = v78;
    *(v1 + 176) = v41;
    v42 = v81;
    *(v1 + 192) = v80;
    *(v1 + 208) = v42;
    v43 = v75;
    *(v1 + 96) = v74;
    *(v1 + 112) = v43;
    v44 = v77;
    *(v1 + 128) = v76;
    *(v1 + 144) = v44;
    v45 = v71;
    *(v1 + 32) = v70;
    *(v1 + 48) = v45;
    v46 = v73;
    *(v1 + 64) = v72;
    *(v1 + 80) = v46;
    goto LABEL_12;
  }

  v97 = v130;
  v98 = v131;
  v99 = v132;
  v93 = v126;
  v94 = v127;
  v95 = v128;
  v96 = v129;
  v89 = v122;
  v90 = v123;
  v91 = v124;
  v92 = v125;
  v85 = v118;
  v86 = v119;
  v87 = v120;
  v88 = v121;
  *&v70 = *(v1 + 16);
  v49 = *(v1 + 240);
  __dst[12] = *(v1 + 224);
  __dst[13] = v49;
  __dst[14] = *(v1 + 256);
  v50 = *(v1 + 176);
  __dst[8] = *(v1 + 160);
  __dst[9] = v50;
  v51 = *(v1 + 192);
  __dst[11] = *(v1 + 208);
  __dst[10] = v51;
  v52 = *(v1 + 112);
  __dst[4] = *(v1 + 96);
  __dst[5] = v52;
  v53 = *(v1 + 128);
  __dst[7] = *(v1 + 144);
  __dst[6] = v53;
  v54 = *(v1 + 48);
  __dst[0] = *(v1 + 32);
  __dst[1] = v54;
  v55 = *(v1 + 64);
  __dst[3] = *(v1 + 80);
  __dst[2] = v55;
  result = _s7SwiftUI12PlatformItemV14PrimaryContentVSgWOg(__dst);
  if (result == 1)
  {
LABEL_42:
    __break(1u);
    return result;
  }

  PlatformItem.PrimaryContent.merge(_:features:)(&v85, &v70);
  v47 = *(a1 + 272);
  if (v47)
  {
LABEL_13:
    v48 = *(v1 + 272);

    if (v48)
    {
      specialized Array.append<A>(contentsOf:)(v47);
    }

    else
    {

      *(v2 + 272) = v47;
    }
  }

LABEL_19:
  v57 = *(a1 + 304);
  if (v57 != 1)
  {
    v59 = *(a1 + 288);
    v58 = *(a1 + 296);
    v60 = *(a1 + 280);
    if (*(v2 + 304) != 1)
    {
      *&__src[0] = *(a1 + 280);
      *(&__src[0] + 1) = v59;
      *&__src[1] = v58;
      *(&__src[1] + 1) = v57;
      PlatformItem.SelectionContent.merge(_:)(__src);
      if (*(a1 + 320))
      {
        goto LABEL_30;
      }

      goto LABEL_23;
    }

    v61 = *(v2 + 280);
    v62 = *(v2 + 288);
    v63 = *(v2 + 296);
    swift_unknownObjectRetain();
    outlined consume of PlatformItem.SelectionContent?(v61, v62, v63, 1);
    *(v2 + 280) = v60;
    *(v2 + 288) = v59;
    *(v2 + 296) = v58;
    *(v2 + 304) = v57;
  }

  if (*(a1 + 320))
  {
    goto LABEL_30;
  }

LABEL_23:
  v64 = *(a1 + 312);
  if (*(v2 + 320) == 1)
  {
    *(v2 + 312) = v64;
    *(v2 + 320) = 0;
  }

  else
  {
    Attribute = AGWeakAttributeGetAttribute();
    if (Attribute == *MEMORY[0x1E698D3F8] && AGWeakAttributeGetAttribute() != Attribute)
    {
      *(v2 + 312) = v64;
    }
  }

LABEL_30:
  outlined init with copy of PlatformItem.PrimaryContent?(a1 + 328, __src, &lazy cache variable for type metadata for PlatformItem.AccessibilityContent?, &type metadata for PlatformItem.AccessibilityContent);
  if (!*(&__src[17] + 1))
  {
    return outlined destroy of PlatformItem.PrimaryContent?(__src, &lazy cache variable for type metadata for PlatformItem.AccessibilityContent?, &type metadata for PlatformItem.AccessibilityContent);
  }

  memcpy(__dst, __src, 0x129uLL);
  outlined init with copy of PlatformItem.PrimaryContent?(v2 + 328, __src, &lazy cache variable for type metadata for PlatformItem.AccessibilityContent?, &type metadata for PlatformItem.AccessibilityContent);
  v66 = *(&__src[17] + 1);
  result = outlined destroy of PlatformItem.PrimaryContent?(__src, &lazy cache variable for type metadata for PlatformItem.AccessibilityContent?, &type metadata for PlatformItem.AccessibilityContent);
  if (!v66)
  {
    outlined destroy of PlatformItem.PrimaryContent?(v2 + 328, &lazy cache variable for type metadata for PlatformItem.AccessibilityContent?, &type metadata for PlatformItem.AccessibilityContent);
    return memcpy((v2 + 328), __dst, 0x129uLL);
  }

  if (!*(v2 + 608))
  {
    __break(1u);
    goto LABEL_42;
  }

  if (*(v2 + 624) == 1)
  {
    v67 = &static PlatformItemsDefinition.appKit;
  }

  else
  {
    v67 = &static PlatformItemsDefinition.uiKit;
  }

  swift_beginAccess();
  v68 = *v67;
  if (!v68)
  {
    return outlined destroy of PlatformItem.AccessibilityContent(__dst);
  }

  outlined init with copy of AccessibilityProperties(v2 + 328, __src);
  outlined init with copy of AccessibilityProperties(__dst, &__src[18]);
  outlined init with copy of AccessibilityProperties(v2 + 328, v101);
  (*(v68 + 96))(__src);
  outlined destroy of PlatformItem.AccessibilityContent(__dst);
  outlined destroy of AccessibilityProperties(v2 + 328);
  outlined init with copy of AccessibilityProperties(v101, v2 + 328);
  return outlined destroy of PlatformItemsDefinition.CombineAccessibilityProperties(__src);
}

id PlatformItem.PrimaryContent.merge(_:features:)(uint64_t a1, void *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v31 = *(a1 + 16);
  if (*a1)
  {
    v6 = v2;
    if (!*v2 || ((v6 = (v2 + 8), !*(v2 + 8)) ? (v7 = (*a2 & 0x80) == 0) : (v7 = 1), !v7))
    {
      *v6 = v4;
      v8 = v4;
    }
  }

  v9 = *(v2 + 168);
  v39[8] = *(v2 + 152);
  v39[9] = v9;
  v40[0] = *(v2 + 184);
  *(v40 + 11) = *(v2 + 195);
  v10 = *(v2 + 104);
  v39[4] = *(v2 + 88);
  v39[5] = v10;
  v11 = *(v2 + 136);
  v39[6] = *(v2 + 120);
  v39[7] = v11;
  v12 = *(v2 + 40);
  v39[0] = *(v2 + 24);
  v39[1] = v12;
  v13 = *(v2 + 72);
  v39[2] = *(v2 + 56);
  v39[3] = v13;
  if (_s7SwiftUI5ImageVAAE8ResolvedVSgWOg(v39) == 1)
  {
    v14 = *(a1 + 168);
    v37[8] = *(a1 + 152);
    v37[9] = v14;
    v38[0] = *(a1 + 184);
    *(v38 + 11) = *(a1 + 195);
    v15 = *(a1 + 104);
    v37[4] = *(a1 + 88);
    v37[5] = v15;
    v16 = *(a1 + 136);
    v37[6] = *(a1 + 120);
    v37[7] = v16;
    v17 = *(a1 + 40);
    v37[0] = *(a1 + 24);
    v37[1] = v17;
    v18 = *(a1 + 72);
    v37[2] = *(a1 + 56);
    v37[3] = v18;
    if (_s7SwiftUI5ImageVAAE8ResolvedVSgWOg(v37) != 1)
    {
      v19 = *(v2 + 168);
      v33[8] = *(v2 + 152);
      v33[9] = v19;
      v34[0] = *(v2 + 184);
      *(v34 + 11) = *(v2 + 195);
      v20 = *(v2 + 104);
      v33[4] = *(v2 + 88);
      v33[5] = v20;
      v21 = *(v2 + 136);
      v33[6] = *(v2 + 120);
      v33[7] = v21;
      v22 = *(v2 + 40);
      v33[0] = *(v2 + 24);
      v33[1] = v22;
      v23 = *(v2 + 72);
      v33[2] = *(v2 + 56);
      v33[3] = v23;
      v24 = *(a1 + 168);
      v35[8] = *(a1 + 152);
      v35[9] = v24;
      v36[0] = *(a1 + 184);
      *(v36 + 11) = *(a1 + 195);
      v25 = *(a1 + 104);
      v35[4] = *(a1 + 88);
      v35[5] = v25;
      v26 = *(a1 + 136);
      v35[6] = *(a1 + 120);
      v35[7] = v26;
      v27 = *(a1 + 40);
      v35[0] = *(a1 + 24);
      v35[1] = v27;
      v28 = *(a1 + 72);
      v35[2] = *(a1 + 56);
      v35[3] = v28;
      outlined init with copy of Image.Resolved(v35, v32);
      outlined destroy of PlatformItem.PrimaryContent?(v33, &lazy cache variable for type metadata for Image.Resolved?, &type metadata for Image.Resolved);
      *(v2 + 152) = *(a1 + 152);
      *(v2 + 168) = *(a1 + 168);
      *(v2 + 184) = *(a1 + 184);
      *(v2 + 195) = *(a1 + 195);
      *(v2 + 88) = *(a1 + 88);
      *(v2 + 104) = *(a1 + 104);
      *(v2 + 120) = *(a1 + 120);
      *(v2 + 136) = *(a1 + 136);
      *(v2 + 24) = *(a1 + 24);
      *(v2 + 40) = *(a1 + 40);
      *(v2 + 56) = *(a1 + 56);
      *(v2 + 72) = *(a1 + 72);
    }
  }

  if (!*(v2 + 8) && v5)
  {
    *(v2 + 8) = v5;
    v29 = v5;
  }

  result = v31;
  if (!*(v2 + 16) && v31)
  {
    *(v2 + 16) = v31;

    return v31;
  }

  return result;
}

void PlatformItem.GeometryContent.merge(_:)(void *a1)
{

  specialized Array.append<A>(contentsOf:)(v1);
}

double PlatformItem.SelectionContent.merge(_:)(unsigned int *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v7 = *(a1 + 2);
  v6 = *(a1 + 3);
  Attribute = AGWeakAttributeGetAttribute();
  v9 = *MEMORY[0x1E698D3F8];
  if (Attribute == *MEMORY[0x1E698D3F8] && AGWeakAttributeGetAttribute() != Attribute)
  {
    *v1 = v2;
    *(v1 + 4) = v3;
  }

  if (AGWeakAttributeGetAttribute() == v9 && AGWeakAttributeGetAttribute() != v9)
  {
    *(v1 + 8) = v4;
    *(v1 + 12) = v5;
  }

  if (*(v1 + 16))
  {
    if (*(v1 + 24))
    {
      return result;
    }
  }

  else
  {
    *(v1 + 16) = v7;
    if (*(v1 + 24))
    {
      return result;
    }
  }

  *(v1 + 24) = v6;

  swift_unknownObjectRetain();
  return result;
}

uint64_t PlatformItem.ChildrenContent.merge(_:)(unsigned int *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = AGWeakAttributeGetAttribute();
  if (result == *MEMORY[0x1E698D3F8])
  {
    v5 = result;
    result = AGWeakAttributeGetAttribute();
    if (result != v5)
    {
      *v1 = v2;
      v1[1] = v3;
    }
  }

  return result;
}

void PlatformItem.AccessibilityContent.merge(_:)(uint64_t a1)
{
  v2 = v1;
  if (*(v1 + 296) == 1)
  {
    v4 = &static PlatformItemsDefinition.appKit;
  }

  else
  {
    v4 = &static PlatformItemsDefinition.uiKit;
  }

  swift_beginAccess();
  v5 = *v4;
  if (v5)
  {
    outlined init with copy of AccessibilityProperties(v2, v6);
    outlined init with copy of AccessibilityProperties(a1, &v7);
    outlined init with copy of AccessibilityProperties(v2, v8);
    (*(v5 + 96))(v6);
    outlined destroy of AccessibilityProperties(v2);
    outlined init with copy of AccessibilityProperties(v8, v2);
    outlined destroy of PlatformItemsDefinition.CombineAccessibilityProperties(v6);
  }
}

uint64_t PlatformItem.coreMakePlatformImage()()
{
  v1 = *(v0 + 240);
  *&v58[176] = *(v0 + 224);
  *&v58[192] = v1;
  v59 = *(v0 + 256);
  v2 = *(v0 + 176);
  *&v58[112] = *(v0 + 160);
  *&v58[128] = v2;
  v3 = *(v0 + 192);
  *&v58[160] = *(v0 + 208);
  *&v58[144] = v3;
  v4 = *(v0 + 112);
  *&v58[48] = *(v0 + 96);
  *&v58[64] = v4;
  v5 = *(v0 + 128);
  *&v58[96] = *(v0 + 144);
  *&v58[80] = v5;
  v6 = *(v0 + 48);
  v57 = *(v0 + 32);
  *v58 = v6;
  v7 = *(v0 + 64);
  *&v58[32] = *(v0 + 80);
  *&v58[16] = v7;
  if (_s7SwiftUI12PlatformItemV14PrimaryContentVSgWOg(&v57) == 1)
  {
    return 0;
  }

  v54 = *&v58[136];
  v55 = *&v58[152];
  v56[0] = *&v58[168];
  *(v56 + 11) = *&v58[179];
  v50 = *&v58[72];
  v51 = *&v58[88];
  v52 = *&v58[104];
  v53 = *&v58[120];
  v46 = *&v58[8];
  v47 = *&v58[24];
  v48 = *&v58[40];
  v49 = *&v58[56];
  if (_s7SwiftUI5ImageVAAE8ResolvedVSgWOg(&v46) == 1)
  {
    return 0;
  }

  v8 = *(v0 + 24) == 1 ? &static PlatformItemsDefinition.appKit : &static PlatformItemsDefinition.uiKit;
  swift_beginAccess();
  v9 = *v8;
  if (!v9)
  {
    return 0;
  }

  v10 = *(v0 + 208);
  v11 = *(v0 + 240);
  v42 = *(v0 + 224);
  v43 = v11;
  v12 = *(v0 + 240);
  v44 = *(v0 + 256);
  v13 = *(v0 + 144);
  v14 = *(v0 + 176);
  v38 = *(v0 + 160);
  v39 = v14;
  v15 = *(v0 + 176);
  v16 = *(v0 + 208);
  v40 = *(v0 + 192);
  v41 = v16;
  v17 = *(v0 + 80);
  v18 = *(v0 + 112);
  v34 = *(v0 + 96);
  v35 = v18;
  v19 = *(v0 + 112);
  v20 = *(v0 + 144);
  v36 = *(v0 + 128);
  v37 = v20;
  v21 = *(v0 + 48);
  v31[0] = *(v0 + 32);
  v31[1] = v21;
  v22 = *(v0 + 80);
  v24 = *(v0 + 32);
  v23 = *(v0 + 48);
  v32 = *(v0 + 64);
  v33 = v22;
  __src[8] = v54;
  __src[9] = v55;
  __src[10] = v56[0];
  *(&__src[10] + 11) = *(v56 + 11);
  __src[4] = v50;
  __src[5] = v51;
  __src[6] = v52;
  __src[7] = v53;
  __src[0] = v46;
  __src[1] = v47;
  __src[2] = v48;
  __src[3] = v49;
  __src[23] = v10;
  __src[24] = v42;
  v25 = *(v0 + 256);
  __src[25] = v12;
  __src[26] = v25;
  __src[19] = v13;
  __src[20] = v38;
  __src[21] = v15;
  __src[22] = v40;
  __src[15] = v17;
  __src[16] = v34;
  __src[17] = v19;
  __src[18] = v36;
  __src[12] = v24;
  __src[13] = v23;
  __src[14] = v32;
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(__src, __dst, sizeof(__src));
  v26 = *(v9 + 104);
  outlined init with copy of PlatformItem.PrimaryContent?(&v58[8], v29, &lazy cache variable for type metadata for Image.Resolved?, &type metadata for Image.Resolved);
  outlined init with copy of PlatformItem.PrimaryContent?(v31, v29, &lazy cache variable for type metadata for PlatformItem.PrimaryContent?, &type metadata for PlatformItem.PrimaryContent);
  v27 = v26(__src);
  outlined destroy of PlatformItemsDefinition.MakePlatformImage(__dst);
  return v27;
}

id PlatformItem.PrimaryContent.text.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void *PlatformItem.PrimaryContent.secondaryText.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

void *PlatformItem.PrimaryContent.iconText.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t PlatformItem.PrimaryContent.image.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 168);
  v14[8] = *(v1 + 152);
  v14[9] = v2;
  v15[0] = *(v1 + 184);
  *(v15 + 11) = *(v1 + 195);
  v3 = *(v1 + 104);
  v14[4] = *(v1 + 88);
  v14[5] = v3;
  v4 = *(v1 + 136);
  v14[6] = *(v1 + 120);
  v14[7] = v4;
  v5 = *(v1 + 40);
  v14[0] = *(v1 + 24);
  v14[1] = v5;
  v6 = *(v1 + 72);
  v14[2] = *(v1 + 56);
  v14[3] = v6;
  v7 = *(v1 + 168);
  a1[8] = *(v1 + 152);
  a1[9] = v7;
  a1[10] = *(v1 + 184);
  *(a1 + 171) = *(v1 + 195);
  v8 = *(v1 + 104);
  a1[4] = *(v1 + 88);
  a1[5] = v8;
  v9 = *(v1 + 136);
  a1[6] = *(v1 + 120);
  a1[7] = v9;
  v10 = *(v1 + 40);
  *a1 = *(v1 + 24);
  a1[1] = v10;
  v11 = *(v1 + 72);
  a1[2] = *(v1 + 56);
  a1[3] = v11;
  return outlined init with copy of PlatformItem.PrimaryContent?(v14, &v13, &lazy cache variable for type metadata for Image.Resolved?, &type metadata for Image.Resolved);
}

__n128 PlatformItem.PrimaryContent.image.setter(uint64_t a1)
{
  v3 = *(v1 + 168);
  v14[8] = *(v1 + 152);
  v14[9] = v3;
  v15[0] = *(v1 + 184);
  *(v15 + 11) = *(v1 + 195);
  v4 = *(v1 + 104);
  v14[4] = *(v1 + 88);
  v14[5] = v4;
  v5 = *(v1 + 136);
  v14[6] = *(v1 + 120);
  v14[7] = v5;
  v6 = *(v1 + 40);
  v14[0] = *(v1 + 24);
  v14[1] = v6;
  v7 = *(v1 + 72);
  v14[2] = *(v1 + 56);
  v14[3] = v7;
  outlined destroy of PlatformItem.PrimaryContent?(v14, &lazy cache variable for type metadata for Image.Resolved?, &type metadata for Image.Resolved);
  v8 = *(a1 + 144);
  *(v1 + 152) = *(a1 + 128);
  *(v1 + 168) = v8;
  *(v1 + 184) = *(a1 + 160);
  *(v1 + 195) = *(a1 + 171);
  v9 = *(a1 + 80);
  *(v1 + 88) = *(a1 + 64);
  *(v1 + 104) = v9;
  v10 = *(a1 + 112);
  *(v1 + 120) = *(a1 + 96);
  *(v1 + 136) = v10;
  v11 = *(a1 + 16);
  *(v1 + 24) = *a1;
  *(v1 + 40) = v11;
  result = *(a1 + 32);
  v13 = *(a1 + 48);
  *(v1 + 56) = result;
  *(v1 + 72) = v13;
  return result;
}

id static PlatformItem.PrimaryContent.text(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  _s7SwiftUI5ImageVAAE8ResolvedVSgWOi0_(v10);
  v3 = v10[9];
  *(a2 + 152) = v10[8];
  *(a2 + 168) = v3;
  *(a2 + 184) = v11[0];
  *(a2 + 195) = *(v11 + 11);
  v4 = v10[5];
  *(a2 + 88) = v10[4];
  *(a2 + 104) = v4;
  v5 = v10[7];
  *(a2 + 120) = v10[6];
  *(a2 + 136) = v5;
  v6 = v10[1];
  *(a2 + 24) = v10[0];
  *(a2 + 40) = v6;
  v7 = v10[3];
  *(a2 + 56) = v10[2];
  *(a2 + 72) = v7;
  *(a2 + 216) = 0;
  *(a2 + 224) = 0;
  *(a2 + 232) = 0;
  *a2 = a1;

  return a1;
}

double static PlatformItem.PrimaryContent.image(_:shapeStyle:)@<D0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1[9];
  v35 = a1[8];
  v36 = v5;
  v37[0] = a1[10];
  *(v37 + 11) = *(a1 + 171);
  v6 = a1[5];
  v31 = a1[4];
  v32 = v6;
  v7 = a1[7];
  v33 = a1[6];
  v34 = v7;
  v8 = a1[1];
  v27 = *a1;
  v28 = v8;
  v9 = a1[3];
  v29 = a1[2];
  v30 = v9;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  _s7SwiftUI5ImageVAAE8ResolvedVSgWOi0_(v38);
  v10 = v38[9];
  *(a3 + 152) = v38[8];
  *(a3 + 168) = v10;
  *(a3 + 184) = v39[0];
  *(a3 + 195) = *(v39 + 11);
  v11 = v38[5];
  *(a3 + 88) = v38[4];
  *(a3 + 104) = v11;
  v12 = v38[7];
  *(a3 + 120) = v38[6];
  *(a3 + 136) = v12;
  v13 = v38[1];
  *(a3 + 24) = v38[0];
  *(a3 + 40) = v13;
  v14 = v38[3];
  *(a3 + 56) = v38[2];
  *(a3 + 72) = v14;
  *(a3 + 216) = 0;
  v48 = v35;
  v49 = v36;
  v50[0] = v37[0];
  *(v50 + 11) = *(v37 + 11);
  v44 = v31;
  v45 = v32;
  v46 = v33;
  v47 = v34;
  v40 = v27;
  v41 = v28;
  v42 = v29;
  v43 = v30;
  _ViewInputs.base.modify();
  v15 = *(a3 + 168);
  v51[8] = *(a3 + 152);
  v51[9] = v15;
  v52[0] = *(a3 + 184);
  *(v52 + 11) = *(a3 + 195);
  v16 = *(a3 + 104);
  v51[4] = *(a3 + 88);
  v51[5] = v16;
  v17 = *(a3 + 136);
  v51[6] = *(a3 + 120);
  v51[7] = v17;
  v18 = *(a3 + 40);
  v51[0] = *(a3 + 24);
  v51[1] = v18;
  v19 = *(a3 + 72);
  v51[2] = *(a3 + 56);
  v51[3] = v19;
  outlined init with copy of Image.Resolved(&v27, &v26);
  outlined destroy of PlatformItem.PrimaryContent?(v51, &lazy cache variable for type metadata for Image.Resolved?, &type metadata for Image.Resolved);
  v20 = v49;
  *(a3 + 152) = v48;
  *(a3 + 168) = v20;
  *(a3 + 184) = v50[0];
  *(a3 + 195) = *(v50 + 11);
  v21 = v45;
  *(a3 + 88) = v44;
  *(a3 + 104) = v21;
  v22 = v47;
  *(a3 + 120) = v46;
  *(a3 + 136) = v22;
  v23 = v41;
  *(a3 + 24) = v40;
  *(a3 + 40) = v23;
  v24 = v43;
  *(a3 + 56) = v42;
  *(a3 + 72) = v24;
  *(a3 + 224) = 1;
  *(a3 + 232) = a2;

  return result;
}

double static PlatformItem.PrimaryContent.shape(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  _s7SwiftUI5ImageVAAE8ResolvedVSgWOi0_(v10);
  v4 = v10[9];
  *(a2 + 152) = v10[8];
  *(a2 + 168) = v4;
  *(a2 + 184) = v11[0];
  *(a2 + 195) = *(v11 + 11);
  v5 = v10[5];
  *(a2 + 88) = v10[4];
  *(a2 + 104) = v5;
  v6 = v10[7];
  *(a2 + 120) = v10[6];
  *(a2 + 136) = v6;
  v7 = v10[1];
  *(a2 + 24) = v10[0];
  *(a2 + 40) = v7;
  v8 = v10[3];
  *(a2 + 56) = v10[2];
  *(a2 + 72) = v8;
  *(a2 + 224) = 0;
  *(a2 + 232) = 0;
  *(a2 + 216) = a1;

  return result;
}

double PlatformItem.SelectionContent.auxiliaryContent.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 24);
  swift_unknownObjectRetain();
  return result;
}

uint64_t PlatformItem.SelectionContent.auxiliaryContent.setter(uint64_t *a1)
{
  v2 = *a1;
  result = swift_unknownObjectRelease();
  *(v1 + 24) = v2;
  return result;
}

BOOL PlatformItem.SelectionContent.isSelectable.getter()
{
  AGGraphClearUpdate();
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v0 = static Update._lock;
  _MovableLockLock(static Update._lock);
  specialized static Update.begin()();
  type metadata accessor for (())?(0, &lazy cache variable for type metadata for (())?, type metadata accessor for (), MEMORY[0x1E69E6720]);
  v1 = AGGraphGetWeakValue() != 0;
  static Update.end()();
  _MovableLockUnlock(v0);
  AGGraphSetUpdate();
  return v1;
}

Swift::Void __swiftcall PlatformItem.SelectionContent.select()()
{
  AGGraphClearUpdate();
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v0 = static Update._lock;
  _MovableLockLock(static Update._lock);
  specialized static Update.begin()();
  type metadata accessor for (())?(0, &lazy cache variable for type metadata for (())?, type metadata accessor for (), MEMORY[0x1E69E6720]);
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    v2 = *WeakValue;
    if (*WeakValue)
    {
      v3 = *(WeakValue + 8);

      v2(v4);
      outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v2, v3);
    }
  }

  static Update.end()();
  _MovableLockUnlock(v0);

  AGGraphSetUpdate();
}

Swift::Void __swiftcall PlatformItem.SelectionContent.deselect()()
{
  AGGraphClearUpdate();
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v0 = static Update._lock;
  _MovableLockLock(static Update._lock);
  specialized static Update.begin()();
  type metadata accessor for (())?(0, &lazy cache variable for type metadata for (())?, type metadata accessor for (), MEMORY[0x1E69E6720]);
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    v2 = *WeakValue;
    if (*WeakValue)
    {
      v3 = *(WeakValue + 8);

      v2(v4);
      outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v2, v3);
    }
  }

  static Update.end()();
  _MovableLockUnlock(v0);

  AGGraphSetUpdate();
}

double static PlatformItem.SelectionContent.selection(onSelect:onDeselect:options:auxiliaryContent:)@<D0>(uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v6 = *a3;
  v7 = *a4;
  v8 = AGCreateWeakAttribute();
  v9 = v8;
  v10 = HIDWORD(v8);
  v11 = AGCreateWeakAttribute();
  *a5 = v9;
  *(a5 + 4) = v10;
  *(a5 + 8) = v11;
  *(a5 + 16) = v6;
  *(a5 + 24) = v7;

  swift_unknownObjectRetain();
  return result;
}

uint64_t PlatformItem.ChildrenContent.makeChildren()@<X0>(uint64_t a1@<X8>)
{
  AGGraphClearUpdate();
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    v3 = *WeakValue;
    v4 = *(WeakValue + 8);
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v5 = MEMORY[0x1E69E7CC0];
  }

  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;

  return AGGraphSetUpdate();
}

uint64_t static PlatformItem.ChildrenContent.children(_:)@<X0>(uint64_t *a2@<X8>)
{
  result = AGCreateWeakAttribute();
  *a2 = result;
  return result;
}

uint64_t PlatformItem.AccessibilityContent.environment.getter@<X0>(uint64_t *a1@<X8>)
{
  AGGraphClearUpdate();
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v2 = static Update._lock;
  _MovableLockLock(static Update._lock);
  specialized static Update.begin()();
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    v5 = *WeakValue;
    v4 = WeakValue[1];
    *a1 = v5;
    a1[1] = v4;
  }

  else
  {
    EnvironmentValues.init()(a1);
  }

  static Update.end()();
  _MovableLockUnlock(v2);

  return AGGraphSetUpdate();
}

uint64_t static PlatformItem.AccessibilityContent.accessibility(properties:environment:system:)@<X0>(uint64_t a1@<X0>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a3;
  outlined init with copy of AccessibilityProperties(a1, v10);
  outlined init with copy of AccessibilityProperties(v10, a4);
  v6 = AGCreateWeakAttribute();
  v7 = v6;
  v8 = HIDWORD(v6);
  result = outlined destroy of AccessibilityProperties(v10);
  *(a4 + 288) = v7;
  *(a4 + 292) = v8;
  *(a4 + 296) = v5;
  return result;
}

uint64_t static UnaryPlatformItemsModifier.updateItems(modifier:items:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 16);
  v5 = *(v4 + 2);
  if (v5)
  {
    v9 = result;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_11:
      v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
    }

    v10 = 0;
    v11 = *(a4 + 16);
    v12 = (v4 + 32);
    do
    {
      if (v10 >= *(v4 + 2))
      {
        __break(1u);
LABEL_10:
        __break(1u);
        goto LABEL_11;
      }

      outlined init with copy of PlatformItem(v12, v13);
      v11(v9, v13, a3, a4);
      if (v10 >= *(v4 + 2))
      {
        goto LABEL_10;
      }

      ++v10;
      result = outlined assign with take of PlatformItem(v13, v12);
      v12 += 632;
    }

    while (v5 != v10);
    *(a2 + 16) = v4;
  }

  return result;
}